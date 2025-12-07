uint64_t sub_270417AE8(char a1)
{
  result = 0x42676E6964646170;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x54676E6964646170;
      break;
    case 2:
      result = 0x4C676E6964646170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270417B94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1800, &qword_2705E7AC0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_270418060();
  sub_2705D84C4();
  v14 = *v3;
  v15 = *(v3 + 8);
  v13 = 0;
  sub_2703E9140();
  OUTLINED_FUNCTION_3_20();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v13 = 1;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[4];
    v15 = *(v3 + 40);
    v13 = 2;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[6];
    v15 = *(v3 + 56);
    v13 = 3;
    OUTLINED_FUNCTION_3_20();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_270417D4C()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D17F0, &qword_2705E7AB8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_270418060();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_2703E9098();
    OUTLINED_FUNCTION_1_24(&unk_2880520D0);
    OUTLINED_FUNCTION_1_24(&unk_2880520D0);
    OUTLINED_FUNCTION_1_24(&unk_2880520D0);
    OUTLINED_FUNCTION_1_24(&unk_2880520D0);
    (*(v8 + 8))(v1, v6);
    __swift_destroy_boxed_opaque_existential_1(v3);
    *v5 = v10;
    *(v5 + 8) = v11;
    *(v5 + 16) = v10;
    *(v5 + 24) = v11;
    *(v5 + 32) = v10;
    *(v5 + 40) = v11;
    *(v5 + 48) = v10;
    *(v5 + 56) = v11;
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270417F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270417970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270417F84(uint64_t a1)
{
  v2 = sub_270418060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270417FC0(uint64_t a1)
{
  v2 = sub_270418060();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_270417FFC@<D0>(_OWORD *a1@<X8>)
{
  sub_270417D4C();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = *v6;
    result = *&v6[9];
    *(a1 + 41) = *&v6[9];
  }

  return result;
}

unint64_t sub_270418060()
{
  result = qword_2807D17F8;
  if (!qword_2807D17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D17F8);
  }

  return result;
}

unint64_t sub_2704180B4()
{
  result = qword_2807D1820;
  if (!qword_2807D1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1820);
  }

  return result;
}

unint64_t sub_270418108()
{
  result = qword_2807D1828;
  if (!qword_2807D1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1828);
  }

  return result;
}

unint64_t sub_27041815C()
{
  result = qword_2807D1830;
  if (!qword_2807D1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElementPadding.Measurement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27041827CLL);
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

_BYTE *sub_2704182C8(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270418364);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElementPadding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270418468);
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

unint64_t sub_2704184A4()
{
  result = qword_2807D1850;
  if (!qword_2807D1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1850);
  }

  return result;
}

unint64_t sub_2704184FC()
{
  result = qword_2807D1858;
  if (!qword_2807D1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1858);
  }

  return result;
}

unint64_t sub_270418554()
{
  result = qword_2807D1860;
  if (!qword_2807D1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1860);
  }

  return result;
}

unint64_t sub_2704185AC()
{
  result = qword_2807D1868;
  if (!qword_2807D1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1868);
  }

  return result;
}

unint64_t sub_270418604()
{
  result = qword_2807D1870;
  if (!qword_2807D1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1870);
  }

  return result;
}

unint64_t sub_27041865C()
{
  result = qword_2807D1878;
  if (!qword_2807D1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1878);
  }

  return result;
}

unint64_t sub_2704186B4()
{
  result = qword_2807D1880;
  if (!qword_2807D1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1880);
  }

  return result;
}

unint64_t sub_27041870C()
{
  result = qword_2807D1888;
  if (!qword_2807D1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1888);
  }

  return result;
}

unint64_t sub_270418764()
{
  result = qword_2807D1890;
  if (!qword_2807D1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1890);
  }

  return result;
}

unint64_t sub_2704187BC()
{
  result = qword_2807D1898;
  if (!qword_2807D1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1898);
  }

  return result;
}

unint64_t sub_270418814()
{
  result = qword_2807D18A0;
  if (!qword_2807D18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D18A0);
  }

  return result;
}

unint64_t sub_27041886C()
{
  result = qword_2807D18A8;
  if (!qword_2807D18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D18A8);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_24(uint64_t a1)
{

  return sub_2705D7F44();
}

void *OUTLINED_FUNCTION_2_18(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_2705D8024();
}

void *OUTLINED_FUNCTION_4_19()
{

  return sub_2705D8184();
}

void *OUTLINED_FUNCTION_5_21()
{

  return sub_2705D8454();
}

void *OUTLINED_FUNCTION_8_15(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

void *OUTLINED_FUNCTION_10_13()
{

  return sub_2705D84B4();
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D8204();
}

uint64_t sub_270418A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_2705D4944();
  v4 = OUTLINED_FUNCTION_1_25(v3, &v63);
  v51 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18E0, &qword_2705E8100);
  OUTLINED_FUNCTION_1_25(v7, &v60);
  v46[2] = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18E8, &qword_2705E8108);
  OUTLINED_FUNCTION_1_25(v12, &v61 + 8);
  v46[4] = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v54 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18F0, &qword_2705E8110);
  OUTLINED_FUNCTION_1_25(v16, &v62);
  v49 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v55 = v46 - v19;
  v53 = *v1;
  v56 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18F8, &qword_2705E8118);
  v21 = sub_2705D6914();
  v22 = sub_27041A274();
  sub_2705D59A4();
  v61 = *(v1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1908, &qword_2705E8120);
  sub_2705D5E74();
  v23 = v59;
  OUTLINED_FUNCTION_14_14();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_10_14(v24);
  OUTLINED_FUNCTION_17_8();
  v57 = v20;
  v58 = v21;
  v59 = v22;
  OUTLINED_FUNCTION_9_11();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v46[1];
  sub_2705D5A14();

  OUTLINED_FUNCTION_15_11();
  v27 = v11;
  v28 = v26;
  v29(v27, v26);
  v61 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D1910, &unk_2705E8128);
  sub_2705D5E74();
  v30 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D5010, &qword_2705E8138);
  sub_2705D68B4();
  OUTLINED_FUNCTION_14_14();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_10_14(v31);
  OUTLINED_FUNCTION_17_8();
  v57 = v28;
  v58 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_5_22();
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v46[3];
  v34 = v54;
  sub_2705D5A24();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_11();
  v35(v34, v33);
  v61 = *(v2 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1920, &qword_2705E8140);
  sub_2705D5E74();
  v36 = v59;
  sub_2705D68B4();
  v37 = v47;
  sub_2705D4934();
  OUTLINED_FUNCTION_14_14();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_10_14(v38);
  OUTLINED_FUNCTION_14_14();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_10_14(v39);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_17_8();
  v57 = v33;
  v58 = v32;
  OUTLINED_FUNCTION_4_20();
  swift_getOpaqueTypeConformance2();
  v40 = v48;
  v41 = v37;
  v42 = v55;
  sub_2705D5A04();

  OUTLINED_FUNCTION_15_11();
  v43(v41, v52);
  OUTLINED_FUNCTION_15_11();
  return v44(v42, v40);
}

uint64_t sub_270419050@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490, &qword_2705E0140);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v30 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x80uLL);
  sub_27041A2E8(a1, &v37);
  sub_2705D6914();
  sub_2705D6A14();
  v37 = sub_27041A36C;
  v38 = v14;
  v15 = *(v4 + 16);
  v34 = v13;
  v15(v13, v11, v3);
  sub_27041A3A4();
  sub_2705D69E4();
  v16 = *(v4 + 8);
  v4 += 8;
  v17 = v11;
  v16(v11, v3);

  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x80uLL);
  sub_27041A2E8(a1, &v37);
  v19 = v33;
  sub_2705D6A14();
  v37 = sub_27041A3F8;
  v38 = v18;
  v32 = v17;
  v15(v17, v19, v3);
  sub_27041A430();
  sub_2705D69E4();
  v16(v19, v3);
  v31 = v16;

  v20 = swift_allocObject();
  memcpy((v20 + 16), a1, 0x80uLL);
  sub_27041A2E8(a1, &v37);
  v21 = v35;
  sub_2705D6A14();
  v37 = sub_27041A530;
  v38 = v20;
  v15(v19, v21, v3);
  sub_27041A568();
  sub_2705D69E4();
  v16(v21, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930, &unk_2705E13F0);
  v22 = *(v4 + 64);
  v23 = (*(v4 + 72) + 32) & ~*(v4 + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2705E10F0;
  v25 = v24 + v23;
  v26 = v34;
  v15(v25, v34, v3);
  v27 = v32;
  v15((v25 + v22), v32, v3);
  v15((v25 + 2 * v22), v19, v3);
  sub_2703D3E64(v24);
  swift_setDeallocating();
  sub_2704890E4();
  v28 = v31;
  v31(v19, v3);
  v28(v27, v3);
  return (v28)(v26, v3);
}

uint64_t sub_2704194A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = sub_2705D78A4();
  v7[8] = sub_2705D7894();

  return MEMORY[0x2822009F8](sub_270419528, 0, 0);
}

uint64_t sub_270419528()
{
  OUTLINED_FUNCTION_2_2();
  *(v0 + 72) = sub_2705D7894();
  sub_2705D7844();
  OUTLINED_FUNCTION_11_14();
  v1 = OUTLINED_FUNCTION_3_21();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_2704195A4()
{
  OUTLINED_FUNCTION_9_14();
  v1 = OUTLINED_FUNCTION_2_19();
  sub_270419654(v1, v2, v3, v4);
  if (v0)
  {
    OUTLINED_FUNCTION_19_2();
  }

  else
  {
    sub_2705D7844();
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_19_2();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_270419654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1930, &qword_2705E8150);
  sub_2705D5E64();
  v8 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D1910, &unk_2705E8128);
  return sub_2705D5E64();
}

uint64_t sub_27041973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = sub_2705D78A4();
  v7[8] = sub_2705D7894();

  return MEMORY[0x2822009F8](sub_2704197C0, 0, 0);
}

uint64_t sub_2704197C0()
{
  OUTLINED_FUNCTION_2_2();
  *(v0 + 72) = sub_2705D7894();
  sub_2705D7844();
  OUTLINED_FUNCTION_11_14();
  v1 = OUTLINED_FUNCTION_3_21();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_27041983C()
{
  OUTLINED_FUNCTION_9_14();
  v1 = OUTLINED_FUNCTION_2_19();
  sub_270419948(v1, v2, v3, v4);
  if (v0)
  {
    OUTLINED_FUNCTION_19_2();
  }

  else
  {
    sub_2705D7844();
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_19_2();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_2704198EC()
{
  OUTLINED_FUNCTION_2_2();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270419948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D1938, &qword_2705E8158);
  sub_2705D5E64();
  v8 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1908, &qword_2705E8120);
  return sub_2705D5E64();
}

uint64_t sub_270419A30(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2705D78A4();
  sub_27041A2E8(a4, v19);

  v14 = a1;
  v15 = sub_2705D7894();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  memcpy(v16 + 4, a4, 0x80uLL);
  v16[20] = a2;
  v16[21] = a3;
  v16[22] = v14;
  sub_270482728();
}

uint64_t sub_270419B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = sub_2705D78A4();
  v7[8] = sub_2705D7894();

  return MEMORY[0x2822009F8](sub_270419BFC, 0, 0);
}

uint64_t sub_270419BFC()
{
  OUTLINED_FUNCTION_2_2();
  *(v0 + 72) = sub_2705D7894();
  sub_2705D7844();
  OUTLINED_FUNCTION_11_14();
  v1 = OUTLINED_FUNCTION_3_21();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_270419C78()
{
  OUTLINED_FUNCTION_9_14();
  v1 = OUTLINED_FUNCTION_2_19();
  sub_270419D28(v1, v2, v3, v4);
  if (v0)
  {
    OUTLINED_FUNCTION_19_2();
  }

  else
  {
    sub_2705D7844();
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_19_2();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_270419D28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1928, &qword_2705E8148);
  sub_2705D5E64();
  v8 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1920, &qword_2705E8140);
  return sub_2705D5E64();
}

uint64_t sub_270419E10(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D1938, &qword_2705E8158);
  result = sub_2705D5E54();
  if (v6)
  {
    *&v8 = a1;
    BYTE8(v8) = a2 & 1;
    v6(&v8);
    return sub_2703B8280(v6, v7);
  }

  return result;
}

uint64_t sub_270419EA4(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *(a3 + 24);
  v9 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1930, &qword_2705E8150);
  result = sub_2705D5E54();
  if (v6)
  {
    *&v8 = a1;
    BYTE8(v8) = a2 & 1;
    v6(&v8);
    return sub_2703B8280(v6, v7);
  }

  return result;
}

uint64_t sub_270419F38(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1928, &qword_2705E8148);
  result = sub_2705D5E54();
  if (v6)
  {
    *&v8 = a1;
    BYTE8(v8) = a3 & 1;
    v6(&v8);
    return sub_2703B8280(v6, v7);
  }

  return result;
}

__n128 sub_270419FCC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18B0, &qword_2705E7F80);
  sub_2705D5E44();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18B8, &qword_2705E7F88);
  OUTLINED_FUNCTION_8_16(v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18C0, &qword_2705E7F90);
  OUTLINED_FUNCTION_8_16(v11, v12, v13, v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18C8, &qword_2705E7F98);
  OUTLINED_FUNCTION_8_16(v18, v19, v20, v21, v22, v23, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18D0, &qword_2705E7FA0);
  OUTLINED_FUNCTION_8_16(v25, v26, v27, v28, v29, v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D18D8, &qword_2705E7FA8);
  OUTLINED_FUNCTION_8_16(v32, v33, v34, v35, v36, v37, v38);
  result = v40;
  *a2 = a1;
  *(a2 + 24) = v40;
  *(a2 + 8) = v40;
  *(a2 + 40) = v41;
  *(a2 + 48) = v40;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  *(a2 + 88) = v40;
  *(a2 + 104) = v40;
  *(a2 + 120) = v41;
  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lys6ResultOySo09AMSDialogA0Cs5Error_pGytIsegnr_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27041A14C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_27041A18C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27041A274()
{
  result = qword_2807D1900;
  if (!qword_2807D1900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D18F8, &qword_2705E8118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1900);
  }

  return result;
}

unint64_t sub_27041A3A4()
{
  result = qword_2807D1948;
  if (!qword_2807D1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1948);
  }

  return result;
}

unint64_t sub_27041A430()
{
  result = qword_2807D1950;
  if (!qword_2807D1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1950);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 120))
  {
  }

  OUTLINED_FUNCTION_14_14();

  return swift_deallocObject();
}

unint64_t sub_27041A568()
{
  result = qword_2807D1958;
  if (!qword_2807D1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1958);
  }

  return result;
}

uint64_t sub_27041A5C0()
{
  OUTLINED_FUNCTION_7_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_22(v1);

  return sub_270419B78(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27041A660()
{

  return swift_deallocObject();
}

uint64_t sub_27041A69C()
{
  OUTLINED_FUNCTION_7_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_22(v1);

  return sub_27041973C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27041A73C()
{
  OUTLINED_FUNCTION_2_2();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27041A8F4()
{
  OUTLINED_FUNCTION_7_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_22(v1);

  return sub_2704194A4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27041A9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D18F0, &qword_2705E8110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D18E8, &qword_2705E8108);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D18E0, &qword_2705E8100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D18F8, &qword_2705E8118);
  sub_2705D6914();
  sub_27041A274();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_18_6(v0, v1, v2);
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_18_6(v3, v4, v5);
  OUTLINED_FUNCTION_4_20();
  v11 = OUTLINED_FUNCTION_18_6(v6, v7, v8);
  return OUTLINED_FUNCTION_18_6(v11, MEMORY[0x277CEE838], v9);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_2705D5E44();
}

uint64_t OUTLINED_FUNCTION_9_14()
{
}

void *OUTLINED_FUNCTION_10_14(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_27041A2E8(v0, v1 - 240);
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27041AC7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000270613B60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27041AD18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D19A8, &qword_2705E83A8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_27041B878();
  OUTLINED_FUNCTION_8_17(&type metadata for EngagementRequest.ClientData.CodingKeys, v13, v12);
  v15[0] = a2;
  v15[1] = a3;
  sub_27041B920();
  sub_2705D8084();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_27041AE4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1990, &qword_2705E83A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_22();
  v4 = sub_27041B878();
  OUTLINED_FUNCTION_1_26(&type metadata for EngagementRequest.ClientData.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_27041B8CC();
    OUTLINED_FUNCTION_5_23(&unk_2880528D0);
    v6 = OUTLINED_FUNCTION_2_20();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_7_14();
}

uint64_t sub_27041AF60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x654D6769666E6F63 && a2 == 0xEF64496567617373)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27041B004(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D19E0, &qword_2705E8550);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_27041BA9C();
  OUTLINED_FUNCTION_8_17(&type metadata for EngagementRequest.InternalImpressionTracker.CodingKeys, v10, v9);
  sub_2705D8034();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_27041B124(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D19D0, &qword_2705E8548);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_22();
  v5 = sub_27041BA9C();
  OUTLINED_FUNCTION_1_26(&type metadata for EngagementRequest.InternalImpressionTracker.CodingKeys, v6, v5);
  if (!v2)
  {
    v1 = sub_2705D7F54();
    v7 = OUTLINED_FUNCTION_2_20();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_27041B240(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6144746E65696C63 && a2 == 0xEA00000000006174)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27041B2DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1960, &qword_2705E8200);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_22();
  v4 = sub_27041B6A4();
  OUTLINED_FUNCTION_1_26(&type metadata for EngagementRequest.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_27041B6F8();
    OUTLINED_FUNCTION_5_23(&unk_2880527C0);
    v6 = OUTLINED_FUNCTION_2_20();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_7_14();
}

uint64_t sub_27041B3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27041AC7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27041B420(uint64_t a1)
{
  v2 = sub_27041B878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27041B45C(uint64_t a1)
{
  v2 = sub_27041B878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27041B498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27041AE4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_27041B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27041AF60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27041B510(uint64_t a1)
{
  v2 = sub_27041BA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27041B54C(uint64_t a1)
{
  v2 = sub_27041BA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27041B588@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27041B124(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_27041B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27041B240(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27041B600(uint64_t a1)
{
  v2 = sub_27041B6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27041B63C(uint64_t a1)
{
  v2 = sub_27041B6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27041B678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27041B2DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_27041B6A4()
{
  result = qword_2807D1968;
  if (!qword_2807D1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1968);
  }

  return result;
}

unint64_t sub_27041B6F8()
{
  result = qword_2807D1970;
  if (!qword_2807D1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1970);
  }

  return result;
}

unint64_t sub_27041B774()
{
  result = qword_2807D1978;
  if (!qword_2807D1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1978);
  }

  return result;
}

unint64_t sub_27041B7CC()
{
  result = qword_2807D1980;
  if (!qword_2807D1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1980);
  }

  return result;
}

unint64_t sub_27041B824()
{
  result = qword_2807D1988;
  if (!qword_2807D1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1988);
  }

  return result;
}

unint64_t sub_27041B878()
{
  result = qword_2807D1998;
  if (!qword_2807D1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1998);
  }

  return result;
}

unint64_t sub_27041B8CC()
{
  result = qword_2807D19A0;
  if (!qword_2807D19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19A0);
  }

  return result;
}

unint64_t sub_27041B920()
{
  result = qword_2807D19B0;
  if (!qword_2807D19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19B0);
  }

  return result;
}

unint64_t sub_27041B998()
{
  result = qword_2807D19B8;
  if (!qword_2807D19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19B8);
  }

  return result;
}

unint64_t sub_27041B9F0()
{
  result = qword_2807D19C0;
  if (!qword_2807D19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19C0);
  }

  return result;
}

unint64_t sub_27041BA48()
{
  result = qword_2807D19C8;
  if (!qword_2807D19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19C8);
  }

  return result;
}

unint64_t sub_27041BA9C()
{
  result = qword_2807D19D8;
  if (!qword_2807D19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19D8);
  }

  return result;
}

_BYTE *sub_27041BAF0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27041BB8CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27041BBC8()
{
  result = qword_2807D19E8;
  if (!qword_2807D19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19E8);
  }

  return result;
}

unint64_t sub_27041BC20()
{
  result = qword_2807D19F0;
  if (!qword_2807D19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19F0);
  }

  return result;
}

unint64_t sub_27041BC78()
{
  result = qword_2807D19F8;
  if (!qword_2807D19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D19F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D8484();
}

uint64_t OUTLINED_FUNCTION_5_23(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D84C4();
}

uint64_t sub_27041BDA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_27041BE3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EngagementTaskAction(uint64_t a1)
{
  result = qword_2807D1A00;
  if (!qword_2807D1A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27041BF08(uint64_t a1)
{
  result = sub_27041BFA4();
  if (v2 <= 0x3F)
  {
    result = sub_2703BD854();
    if (v3 <= 0x3F)
    {
      result = sub_2705D6774();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_27041BFA4()
{
  result = qword_2807D1A10;
  if (!qword_2807D1A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D1A10);
  }

  return result;
}

unint64_t sub_27041BFFC()
{
  result = qword_2807CECE8;
  if (!qword_2807CECE8)
  {
    type metadata accessor for EngagementTaskAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECE8);
  }

  return result;
}

uint64_t sub_27041C054(void *a1, uint64_t a2, void (*a3)(void, void, void))
{
  v5 = sub_2705D6784();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*a1, a1[1], a1[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038, &unk_2705E0130);
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  return sub_2705D70C4();
}

uint64_t static EntryPointMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_2705D8134() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_2705D8134() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_27041C20C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6E694C6E616C70 && a2 == 0xEB00000000676E69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_27041C2D8(char a1)
{
  if (a1)
  {
    return 0x6B6E694C6E616C70;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_27041C318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27041C20C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27041C340(uint64_t a1)
{
  v2 = sub_27041C528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27041C37C(uint64_t a1)
{
  v2 = sub_27041C528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EntryPointMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A18, &qword_2705E8730);
  OUTLINED_FUNCTION_0();
  v12 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27041C528();
  sub_2705D84C4();
  v14 = 0;
  sub_2705D7FF4();
  if (!v2)
  {
    v13 = 1;
    sub_2705D7FF4();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_27041C528()
{
  result = qword_2807D1A20;
  if (!qword_2807D1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A20);
  }

  return result;
}

uint64_t EntryPointMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_2705D83D4();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_2705D83D4();
  }

  sub_2705D83D4();
  sub_2705D7634();
  if (!v2)
  {
    return sub_2705D83D4();
  }

LABEL_3:
  sub_2705D83D4();

  return sub_2705D7634();
}

uint64_t EntryPointMetadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2705D83B4();
  sub_2705D83D4();
  if (v1)
  {
    sub_2705D7634();
  }

  sub_2705D83D4();
  if (v2)
  {
    sub_2705D7634();
  }

  return sub_2705D8414();
}

uint64_t EntryPointMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A28, &qword_2705E8738);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27041C528();
  sub_2705D8484();
  if (!v2)
  {
    v22 = 0;
    v12 = sub_2705D7F04();
    v14 = v13;
    v21 = 1;
    v15 = sub_2705D7F04();
    v17 = v16;
    v18 = *(v7 + 8);
    v20 = v15;
    v18(v10, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v20;
    a2[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27041C8DC(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2705D83B4();
  EntryPointMetadata.hash(into:)(v4);
  return sub_2705D8414();
}

unint64_t sub_27041C928()
{
  result = qword_2807D1A30;
  if (!qword_2807D1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A30);
  }

  return result;
}

uint64_t sub_27041C9AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_27041CA00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntryPointMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27041CB30);
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

unint64_t sub_27041CB6C()
{
  result = qword_2807D1A38;
  if (!qword_2807D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A38);
  }

  return result;
}

unint64_t sub_27041CBC4()
{
  result = qword_2807D1A40;
  if (!qword_2807D1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A40);
  }

  return result;
}

unint64_t sub_27041CC1C()
{
  result = qword_2807D1A48;
  if (!qword_2807D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A48);
  }

  return result;
}

const void *sub_27041CC70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_27041DE98(*(a1 + 16), 0);
  v4 = sub_27041E07C(&v6, v3 + 32, v2, a1);
  sub_2703B5C38(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_27041CD00()
{
  sub_27041E334();
  sub_2705D5264();
  return v1;
}

uint64_t sub_27041CD78(uint64_t a1)
{
  v3 = sub_2705D6524();
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = 0x8000000270613BD0;
    v8 = (a1 + 48);
    v31 = xmmword_2705E10F0;
    v33 = v1;
    do
    {
      v38 = v7;
      v9 = *(v8 - 1);
      v34 = *(v8 - 2);
      v36 = v8;
      v10 = *v8;
      v11 = qword_2807CE820;
      v12 = v9;

      if (v11 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v37 = qword_28081C4E0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
      v13 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v13);
      v35 = *(v14 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = v31;
      v42 = type metadata accessor for EventBus();
      v40 = v1;

      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        v18 = sub_2705D7564();
        v20 = v19;

        v21 = v6;
        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_10_15();
        MetatypeMetadata = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_8_18(MetatypeMetadata);
        sub_2703B2934(v39, &unk_2807D4890, &qword_2705E2880);
        sub_2705D6504();
        v23 = MEMORY[0x277D837D0];
        v39[3] = MEMORY[0x277D837D0];
        v39[0] = v18;
        v39[1] = v20;
        sub_2705D64E4();
        OUTLINED_FUNCTION_9_15(v39);
      }

      else
      {
        v21 = v6;
        sub_2705D6514();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_10_15();
        v24 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_8_18(v24);
        OUTLINED_FUNCTION_9_15(v39);
        v23 = MEMORY[0x277D837D0];
      }

      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v40);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_2705D7D04();

      v40 = 0xD000000000000013;
      v41 = v32;
      v25 = v12;

      v26 = v34;
      MEMORY[0x2743A3A90](v34, v25);

      v42 = v23;
      sub_2705D6544();
      OUTLINED_FUNCTION_9_15(&v40);

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A80, &qword_2705E89C0);
      v28 = MEMORY[0x2743A3BF0](v10, v27);
      v30 = v29;

      v42 = v23;
      v40 = v28;
      v41 = v30;
      sub_2705D6544();
      OUTLINED_FUNCTION_9_15(&v40);
      sub_27047CF60(v15);

      v1 = v33;
      sub_27041D184(v26, v25, v10);

      result = swift_bridgeObjectRelease_n();
      v8 = v36 + 3;
      v7 = v38 - 1;
      v6 = v21;
    }

    while (v38 != 1);
  }

  return result;
}

uint64_t sub_27041D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 112);

  v8 = sub_2703D5150(a1, a2, v7);

  if (!v8)
  {
    v60[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A60, &qword_2705E89B8);
    swift_allocObject();
    v9 = sub_2705D4C64();
    swift_beginAccess();
    swift_retain_n();
    swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = *(v4 + 112);
    sub_2703BC20C(v9, a1, a2);
    *(v4 + 112) = *&v59[0];
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A80, &qword_2705E89C0);
  v10 = sub_2705D7494();
  sub_2705D4C54();
  v11 = v60[0];
  v58 = *(v60[0] + 16);
  if (v58)
  {
    v12 = 0;
    v13 = v60[0] + 32;
    while (v12 < *(v11 + 16))
    {
      sub_2703B4E54(v13, v60);
      __swift_project_boxed_opaque_existential_1(v60, v61);
      swift_getDynamicType();
      OUTLINED_FUNCTION_7_15();
      v15 = v14();
      v17 = v16;
      sub_2703B4E54(v60, v59);
      swift_isUniquelyReferenced_nonNull_native();
      sub_2703D7318(v15, v17);
      OUTLINED_FUNCTION_6_19();
      if (v20)
      {
        goto LABEL_28;
      }

      v21 = v18;
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A88, &qword_2705E89C8);
      if (sub_2705D7E04())
      {
        v23 = sub_2703D7318(v15, v17);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_32;
        }

        v21 = v23;
      }

      if (v22)
      {

        OUTLINED_FUNCTION_4_21();
        v27 = (v25 + v21 * v26);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_2703B291C(v59, v27);
        __swift_destroy_boxed_opaque_existential_1(v60);
      }

      else
      {
        OUTLINED_FUNCTION_3_23(v10 + 8 * (v21 >> 6));
        v29 = (v28 + 16 * v21);
        *v29 = v15;
        v29[1] = v17;
        OUTLINED_FUNCTION_4_21();
        sub_2703B291C(v59, v30 + v21 * v31);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v32 = *(v10 + 16);
        v20 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v20)
        {
          goto LABEL_30;
        }

        *(v10 + 16) = v33;
      }

      ++v12;
      v13 += 40;
      if (v58 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_15:

    v34 = *(a3 + 16);
    if (!v34)
    {
LABEL_26:

      v60[0] = sub_27041CC70(v55);
      sub_2705D4C44();
    }

    v35 = a3 + 32;
    while (1)
    {
      sub_2703B4E54(v35, v60);
      __swift_project_boxed_opaque_existential_1(v60, v61);
      swift_getDynamicType();
      OUTLINED_FUNCTION_7_15();
      v37 = v36();
      v39 = v38;
      sub_2703B4E54(v60, v59);
      swift_isUniquelyReferenced_nonNull_native();
      sub_2703D7318(v37, v39);
      OUTLINED_FUNCTION_6_19();
      if (v20)
      {
        break;
      }

      v42 = v40;
      v43 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A88, &qword_2705E89C8);
      if (sub_2705D7E04())
      {
        v44 = sub_2703D7318(v37, v39);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_32;
        }

        v42 = v44;
      }

      if (v43)
      {

        OUTLINED_FUNCTION_4_21();
        v48 = (v46 + v42 * v47);
        __swift_destroy_boxed_opaque_existential_1(v48);
        sub_2703B291C(v59, v48);
        __swift_destroy_boxed_opaque_existential_1(v60);
      }

      else
      {
        OUTLINED_FUNCTION_3_23(v10 + 8 * (v42 >> 6));
        v50 = (v49 + 16 * v42);
        *v50 = v37;
        v50[1] = v39;
        OUTLINED_FUNCTION_4_21();
        sub_2703B291C(v59, v51 + v42 * v52);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v53 = *(v10 + 16);
        v20 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v20)
        {
          goto LABEL_31;
        }

        *(v10 + 16) = v54;
      }

      v35 += 40;
      if (!--v34)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_2705D82D4();
  __break(1u);
  return result;
}

uint64_t sub_27041D65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a2;
  v40 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A50, &qword_2705E89A8);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A58, &qword_2705E89B0);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = v37 - v10;
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_2807CE820 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0, &unk_2705E5590);
  v12 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v12);
  v14 = *(v13 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2705E6EB0;
  v49 = type metadata accessor for EventBus();
  v48[0] = v4;

  v16 = AMSLogKey();
  v17 = MEMORY[0x277D837D0];
  if (v16)
  {
    v18 = v16;
    v37[0] = sub_2705D7564();
    v37[1] = v14;
    v19 = a1;
    v21 = v20;

    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v46[0] = DynamicType;
    sub_2705D64E4();
    sub_2703B2934(v46, &unk_2807D4890, &qword_2705E2880);
    sub_2705D6504();
    MetatypeMetadata = v17;
    v46[0] = v37[0];
    v46[1] = v21;
    a1 = v19;
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v23 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v46[0] = v23;
  }

  sub_2705D64E4();
  sub_2703B2934(v46, &unk_2807D4890, &qword_2705E2880);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  v46[0] = v4;
  sub_2705D7DF4();
  v49 = v17;
  sub_2705D6544();
  sub_2703B2934(v48, &unk_2807D4890, &qword_2705E2880);
  sub_27047CF60(v15);

  swift_beginAccess();
  v24 = *(v4 + 112);

  v25 = sub_2703D5150(a1, v44, v24);

  if (v25)
  {
  }

  else
  {
    v46[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A60, &qword_2705E89B8);
    swift_allocObject();
    v26 = sub_2705D4C64();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v5 + 112);
    sub_2703BC20C(v26, a1, v44);
    *(v5 + 112) = v45;
    swift_endAccess();
  }

  v27 = *(v5 + 112);

  v28 = sub_2703D5150(a1, v44, v27);

  if (v28)
  {
    v46[0] = v28;
    sub_2703B29A0();
    v30 = sub_2705D7B04();
    v45 = v30;
    v31 = sub_2705D7AE4();
    v32 = v38;
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A60, &qword_2705E89B8);
    sub_2703AFBC8(&qword_2807D1A68, &qword_2807D1A60, &qword_2705E89B8, MEMORY[0x277CBCE48]);
    sub_27041DDDC();
    v33 = v39;
    sub_2705D4CC4();
    sub_2703B2934(v32, &qword_2807D1A50, &qword_2705E89A8);

    v34 = swift_allocObject();
    v35 = v43;
    *(v34 + 16) = v40;
    *(v34 + 24) = v35;
    sub_2703AFBC8(&qword_2807D1A78, &qword_2807D1A58, &qword_2705E89B0, MEMORY[0x277CBCD60]);

    v36 = v42;
    sub_2705D4CD4();

    (*(v41 + 8))(v33, v36);
    swift_beginAccess();
    sub_2705D4C14();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_27041DD28()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_27041DD58()
{
  sub_27041DD28();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_27041DDDC()
{
  result = qword_2807D1A70;
  if (!qword_2807D1A70)
  {
    sub_2703B29A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1A70);
  }

  return result;
}

uint64_t sub_27041DE34()
{

  return swift_deallocObject();
}

const void *sub_27041DE98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A90, &unk_2705E89D0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_2_21(v4 - 32);
  return v3;
}

const void *sub_27041DF14(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1AA0, &qword_2705E89E0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_2_21(v4 - 32);
  return v3;
}

size_t sub_27041DF90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1A98, &unk_2705F8E80);
  v3 = sub_2705D40D4();
  OUTLINED_FUNCTION_1_1(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v8);
  if (v5)
  {
    if (result - v7 != 0x8000000000000000 || v5 != -1)
    {
      OUTLINED_FUNCTION_2_21(result - v7);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_27041E07C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_2703B4E54(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_2703B291C(v17, v18);
      result = sub_2703B291C(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_27041E1D4(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27041E334()
{
  result = qword_2807D1AA8;
  if (!qword_2807D1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1)
{

  return sub_2703B2934(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_10_15()
{
  __swift_project_boxed_opaque_existential_1((v0 - 112), *(v0 - 88));

  return swift_getDynamicType();
}

uint64_t sub_27041E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6774();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_27041E558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2705D6774();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ExitAction(uint64_t a1)
{
  result = qword_2807D1AB0;
  if (!qword_2807D1AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27041E650(uint64_t a1)
{
  sub_2705D6774();
  if (v1 <= 0x3F)
  {
    sub_2703F16A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27041E6D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_27041E7FC(char a1)
{
  if (!a1)
  {
    return 0x654D6E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x4173736563637573;
  }

  return 0x416572756C696166;
}

uint64_t sub_27041E878(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1AD0, &qword_2705E8AC8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27041EF88();
  sub_2705D84C4();
  v18 = 0;
  sub_2705D6774();
  sub_27041F16C(&qword_2807D0768, MEMORY[0x277D21C90]);
  sub_2705D8084();
  if (!v2)
  {
    v11 = type metadata accessor for ExitAction(0);
    v12 = *(v11 + 20);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703F34FC(&qword_2807CFE98, &qword_2807CFEA0, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    OUTLINED_FUNCTION_2_22(v3 + v12);
    v13 = *(v11 + 24);
    v16 = 2;
    OUTLINED_FUNCTION_2_22(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_27041EA84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1AC0, &qword_2705E8AC0);
  OUTLINED_FUNCTION_0();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ExitAction(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 28)];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_27041F044(&v26, v13, &unk_2807CF480, &unk_2705DC040);
  v14 = &v12[*(v10 + 32)];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_27041F044(&v26, v14, &unk_2807CF480, &unk_2705DC040);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27041EF88();
  v15 = v25;
  sub_2705D8484();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_27041EFDC(v13);
    return sub_27041EFDC(v14);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_27041F16C(&qword_2807D0750, MEMORY[0x277D21C98]);
    sub_2705D7FA4();
    v16 = *(v21 + 32);
    v25 = v3;
    v16(v12, v23, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    v29 = 1;
    v23 = sub_2703F34FC(&qword_2807CFE48, &qword_2807CFE50, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_2705D7FA4();
    sub_27041F044(&v26, v13, &qword_2807CF2D8, &unk_2705DF6E0);
    v29 = 2;
    sub_2705D7FA4();
    v17 = OUTLINED_FUNCTION_1_27();
    v18(v17);
    sub_27041F044(&v26, v14, &qword_2807CF2D8, &unk_2705DF6E0);
    sub_27041F0AC(v12, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_27041F110(v12);
  }
}

uint64_t sub_27041EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27041E6D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27041EEE0(uint64_t a1)
{
  v2 = sub_27041EF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27041EF1C(uint64_t a1)
{
  v2 = sub_27041EF88();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27041EF88()
{
  result = qword_2807D1AC8;
  if (!qword_2807D1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AC8);
  }

  return result;
}

uint64_t sub_27041EFDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27041F044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_27041F0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExitAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27041F110(uint64_t a1)
{
  v2 = type metadata accessor for ExitAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27041F16C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2705D6774();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExitAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27041F27CLL);
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

unint64_t sub_27041F2B8()
{
  result = qword_2807D1AD8;
  if (!qword_2807D1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AD8);
  }

  return result;
}

unint64_t sub_27041F310()
{
  result = qword_2807D1AE0;
  if (!qword_2807D1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AE0);
  }

  return result;
}

unint64_t sub_27041F368()
{
  result = qword_2807D1AE8;
  if (!qword_2807D1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return sub_2705D8084();
}

unint64_t sub_27041F400(uint64_t a1)
{
  result = sub_27041F428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27041F428()
{
  result = qword_2807D1AF0;
  if (!qword_2807D1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AF0);
  }

  return result;
}

unint64_t sub_27041F480()
{
  result = qword_2807CECC8;
  if (!qword_2807CECC8)
  {
    type metadata accessor for ExitAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECC8);
  }

  return result;
}

uint64_t sub_27041F4D8()
{
  OUTLINED_FUNCTION_2_2();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v0[12] = v5;
  sub_2705D78A4();
  v0[17] = sub_2705D7894();
  v7 = sub_2705D7844();
  v0[18] = v7;
  v0[19] = v6;

  return MEMORY[0x2822009F8](sub_27041F574, v7, v6);
}

uint64_t sub_27041F574()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  v6 = sub_2704E1B94(&unk_2705E8C98, v5);
  v0[20] = v6;
  v7 = type metadata accessor for ExitAction(0);
  sub_2703F6EE0(v4 + *(v7 + 20), (v0 + 2));
  sub_2703F6EE0(v4 + *(v7 + 24), (v0 + 7));
  sub_2703C7A3C(v6, (v0 + 2), (v0 + 7), v3);
  v0[21] = v8;
  sub_27041FC70((v0 + 7));
  sub_27041FC70((v0 + 2));
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_27041F6C4;
  v10 = v0[12];

  return MEMORY[0x282180668](v10);
}

uint64_t sub_27041F6C4()
{
  OUTLINED_FUNCTION_2_2();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;
  v2[23] = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_27041F83C;
  }

  else
  {

    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_27041F7D4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_27041F7D4()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_27041F83C()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_27041F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27041F94C, 0, 0);
}

uint64_t sub_27041F94C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  sub_2705D78A4();

  v6 = sub_2705D7894();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v2;
  sub_270482728();

  v9 = *MEMORY[0x277D21CA8];
  v10 = sub_2705D6784();
  (*(*(v10 - 8) + 104))(v3, v9, v10);

  OUTLINED_FUNCTION_1_4();

  return v11();
}

uint64_t sub_27041FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2705D78A4();
  v5[4] = sub_2705D7894();
  v7 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_27041FB2C, v7, v6);
}

uint64_t sub_27041FB2C()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_27041FB98()
{

  return swift_deallocObject();
}

uint64_t sub_27041FBD0()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_24(v3);

  return sub_27041F8AC(v4, v5, v2);
}

uint64_t sub_27041FC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF480, &unk_2705DC040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27041FCD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27041FD18()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_24(v5);

  return sub_27041FA94(v6, v7, v2, v4, v3);
}

unint64_t sub_27041FE40()
{
  result = qword_2807D1AF8;
  if (!qword_2807D1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1AF8);
  }

  return result;
}

void *sub_27041FE94(uint64_t a1)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v6;
  v8 = sub_2705D53C4();
  v39[0] = 1;
  v9 = type metadata accessor for FlatPlatterComponentModel(0);
  v10 = *(v9 + 32);
  memcpy(v42, (v5 + v10), sizeof(v42));
  memcpy(&__src[7], (v5 + v10), 0x280uLL);
  sub_27042030C(v42, v40);
  LOBYTE(v10) = sub_2705D56B4();
  sub_2705D4D34();
  OUTLINED_FUNCTION_13_4();
  __src[648] = 0;
  v43[0] = v8;
  v43[1] = 0;
  v44 = 1;
  memcpy(v45, __src, 0x287uLL);
  v45[647] = v10;
  v46 = v1;
  v47 = v2;
  v48 = v3;
  v49 = v4;
  v50 = 0;
  v11 = v5 + *(v9 + 28);
  if (*(v11 + 8))
  {
    OUTLINED_FUNCTION_1_28();
    sub_270420344(v39);
    memcpy(__dst, v39, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B10, &qword_2705E8D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B18, &qword_2705E8D98);
    sub_270420350();
    sub_2704203DC();
    sub_2705D5434();
  }

  else
  {
    v12 = *v11;
    v13 = sub_2705D56E4();
    sub_2705D4D34();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_1_28();
    __dst[0] = 0;
    memcpy(v31, v39, 0x2C8uLL);
    LOBYTE(v31[89]) = v13;
    v31[90] = v12;
    v31[91] = v2;
    v31[92] = v3;
    v31[93] = v4;
    LOBYTE(v31[94]) = 0;
    memcpy(v32, v39, 0x2C8uLL);
    v32[712] = v13;
    v33 = v12;
    v34 = v2;
    v35 = v3;
    v36 = v4;
    v37 = 0;
    v14 = sub_2703CAAEC(v43, v40, &qword_2807D1B18, &qword_2705E8D98);
    OUTLINED_FUNCTION_2_23(v14, v15, v16, v17, v18, v19, v20, v21, v31[0]);
    sub_2703B2934(v32, &qword_2807D1B10, &qword_2705E8D90);
    memcpy(v39, v31, 0x2F1uLL);
    sub_270420480(v39);
    v22 = memcpy(__dst, v39, sizeof(__dst));
    OUTLINED_FUNCTION_2_23(v22, v23, v24, v25, v26, v27, v28, v29, v31[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B10, &qword_2705E8D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B18, &qword_2705E8D98);
    sub_270420350();
    sub_2704203DC();
    sub_2705D5434();
    sub_2703B2934(v43, &qword_2807D1B18, &qword_2705E8D98);
    sub_2703B2934(v31, &qword_2807D1B10, &qword_2705E8D90);
  }

  return memcpy(v7, v40, 0x2F2uLL);
}

unint64_t sub_2704201C4()
{
  result = qword_2807D1B00;
  if (!qword_2807D1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1B00);
  }

  return result;
}

uint64_t sub_2704202C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_270420350()
{
  result = qword_2807D1B20;
  if (!qword_2807D1B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1B10, &qword_2705E8D90);
    sub_2704203DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1B20);
  }

  return result;
}

unint64_t sub_2704203DC()
{
  result = qword_2807D1B28;
  if (!qword_2807D1B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1B18, &qword_2705E8D98);
    sub_270421518(&qword_2807D1B30, &qword_2807D1B38, &qword_2705E8DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1B28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit10AssetModelVSg(uint64_t a1)
{
  v1 = *(a1 + 49);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit16PlatterCellModelV18InteractionMetricsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x11)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_2704204B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 640))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 81);
      v4 = -2 - v3;
      if ((-2 - v3) < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_270420510(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 632) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 640) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 640) = 0;
    }

    if (a2)
    {
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 80) = ~a2 << 8;
      bzero((a1 + 88), 0x128uLL);
    }
  }
}

unint64_t sub_270420638()
{
  result = qword_2807D1B40;
  if (!qword_2807D1B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1B48, qword_2705E9878);
    sub_270420350();
    sub_2704203DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1B40);
  }

  return result;
}

uint64_t sub_2704206E0@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x280uLL);
  *a1 = sub_2705D53C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B50, &qword_2705E98D0);
  return sub_27042074C(__dst, a1 + *(v3 + 44));
}

uint64_t sub_27042074C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B58, &qword_2705E98D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  *v9 = sub_2705D52B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B60, &qword_2705E98E0);
  sub_270420A28(a1, &v9[*(v10 + 44)]);
  if (a1[62])
  {
    v11 = a1[64];
    v36 = a1[63];
    v37 = v11;
    sub_2703C2F54();

    v12 = sub_2705D5944();
    v14 = v13;
    v16 = v15;
    sub_2705D5894();
    v34 = a2;
    v17 = sub_2705D5914();
    v35 = v7;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_2703CEDB0(v12, v14, v16 & 1);

    v36 = sub_2705D5D84();
    v23 = sub_2705D58F4();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v18;
    v7 = v35;
    sub_2703CEDB0(v30, v20, v22 & 1);

    v31 = v27 & 1;
    a2 = v34;
    sub_2703CED5C(v23, v25, v31);
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v31 = 0;
    v29 = 0;
  }

  sub_2703CAAEC(v9, v7, &qword_2807D1B58, &qword_2705E98D8);
  sub_2703CAAEC(v7, a2, &qword_2807D1B58, &qword_2705E98D8);
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B68, &qword_2705E98E8) + 48));
  sub_2703CED18(v23, v25, v31, v29);
  sub_2703CED6C(v23, v25, v31, v29);
  *v32 = v23;
  v32[1] = v25;
  v32[2] = v31;
  v32[3] = v29;
  sub_2703B2934(v9, &qword_2807D1B58, &qword_2705E98D8);
  sub_2703CED6C(v23, v25, v31, v29);
  return sub_2703B2934(v7, &qword_2807D1B58, &qword_2705E98D8);
}

uint64_t sub_270420A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B70, &qword_2705E98F0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B78, &qword_2705E98F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v62 = sub_2705D53D4();
  LOBYTE(v68[0]) = 1;
  sub_270420FCC(a1, v66);
  memcpy(v69, v66, sizeof(v69));
  memcpy(__dst, v66, 0x60uLL);
  sub_2703CAAEC(v69, v65, &qword_2807D1B80, &qword_2705E9900);
  sub_2703B2934(__dst, &qword_2807D1B80, &qword_2705E9900);
  memcpy(&v67[7], v69, 0x60uLL);
  v16 = v68[0];
  if (a1[57])
  {
    v58 = v9;
    v59 = LOBYTE(v68[0]);
    v60 = v4;
    v61 = a2;
    v17 = a1[59];
    v66[0] = a1[58];
    v66[1] = v17;
    sub_2703C2F54();

    v18 = sub_2705D5944();
    v20 = v19;
    v22 = v21;
    sub_2705D5754();
    v23 = sub_2705D5914();
    v56 = v24;
    v57 = v23;
    v26 = v25;
    v55 = v27;

    sub_2703CEDB0(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    v53 = sub_2705D5CF4();
    LOBYTE(v66[0]) = v26 & 1;
    LOBYTE(v65[0]) = 0;
    v52 = sub_2705D56C4();
    sub_2705D4D34();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v50 = LOBYTE(v66[0]);
    v51 = LOBYTE(v65[0]);
    v63 = 0;
    sub_2705D60A4();
    sub_2705D5094(v68);
    memcpy(&v64[7], v68, 0x70uLL);
    v49 = swift_getKeyPath();
    if (qword_2807CE790 != -1)
    {
      swift_once();
    }

    v36 = qword_2807CFC70;
    v37 = v60;
    v38 = &v7[*(v60 + 36)];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B98, &qword_2705E9978);
    v40 = *(v39 + 52);
    v41 = *MEMORY[0x277CE0118];
    v42 = sub_2705D5344();
    (*(*(v42 - 8) + 104))(v38 + v40, v41, v42);
    *v38 = v36;
    *(v38 + *(v39 + 56)) = 256;
    v43 = v56;
    *v7 = v57;
    *(v7 + 1) = v43;
    v7[16] = v50;
    v44 = KeyPath;
    *(v7 + 3) = v55;
    *(v7 + 4) = v44;
    *(v7 + 5) = 1;
    v7[48] = v51;
    *(v7 + 7) = v53;
    v7[64] = v52;
    *(v7 + 9) = v29;
    *(v7 + 10) = v31;
    *(v7 + 11) = v33;
    *(v7 + 12) = v35;
    v7[104] = 0;
    memcpy(v7 + 105, v64, 0x77uLL);
    *(v7 + 28) = v49;
    *(v7 + 29) = 0x3FE3333333333333;
    v45 = v58;
    sub_270421478(v7, v58);
    sub_270421478(v45, v15);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v37);

    a2 = v61;
    v16 = v59;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v4);
  }

  sub_2703CAAEC(v15, v13, &qword_2807D1B78, &qword_2705E98F8);
  v46 = v62;
  v65[0] = v62;
  v65[1] = 0;
  LOBYTE(v65[2]) = v16;
  memcpy(&v65[2] + 1, v67, 0x67uLL);
  memcpy(a2, v65, 0x78uLL);
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B88, &qword_2705E9908);
  sub_2703CAAEC(v13, a2 + *(v47 + 64), &qword_2807D1B78, &qword_2705E98F8);
  sub_2703CAAEC(v65, v66, &qword_2807D1B90, &qword_2705E9910);
  sub_2703B2934(v15, &qword_2807D1B78, &qword_2705E98F8);
  sub_2703B2934(v13, &qword_2807D1B78, &qword_2705E98F8);
  v66[0] = v46;
  v66[1] = 0;
  LOBYTE(v66[2]) = v16;
  memcpy(&v66[2] + 1, v67, 0x67uLL);
  return sub_2703B2934(v66, &qword_2807D1B90, &qword_2705E9910);
}

uint64_t sub_270420FCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[73];
  if (!a1[77])
  {
    v18 = 0;
    v20 = 0;
    v25 = 0;
    v24 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v40 = 0;
    v39 = 0;
    v58 = 0u;
    v59 = 0u;
    *&v61 = 0;
    *&v60 = 0;
    goto LABEL_6;
  }

  *(&v58 + 1) = a1[79];
  v45 = v3;
  sub_2703C2F54();

  v4 = sub_2705D5944();
  v6 = v5;
  v8 = v7;
  sub_2705D5874();
  v9 = sub_2705D5914();
  v11 = v10;
  v13 = v12;

  sub_2703CEDB0(v4, v6, v8 & 1);

  sub_2705D57C4();
  v14 = sub_2705D58E4();
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_2703CEDB0(v9, v11, v13 & 1);

  *&v58 = sub_2705D5D54();
  v18 = sub_2705D58F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2703CEDB0(v14, v16, v4 & 1);

  v25 = v22 & 1;
  sub_2703CED5C(v18, v20, v22 & 1);

  if (!v45)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2703C2F54();

  v26 = sub_2705D5944();
  v28 = v27;
  v30 = v29;
  sub_2705D58B4();
  v46 = v24;
  v47 = v20;
  v31 = sub_2705D5914();
  v33 = v32;
  v48 = v18;
  v35 = v34;
  v44 = v25;
  v37 = v36;

  sub_2703CEDB0(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v39 = sub_2705D5D54();
  LOBYTE(v28) = v35 & 1;
  v18 = v48;
  LOBYTE(v57[0]) = v28;
  LOBYTE(v53) = 0;
  sub_2703CED5C(v31, v33, v28);
  *&v58 = v31;
  *(&v58 + 1) = v33;
  v24 = v46;
  v20 = v47;
  LOBYTE(v59) = v28;
  *(&v59 + 1) = v37;
  *&v60 = KeyPath;
  LOBYTE(v61) = 0;
  v25 = v44;

  v40 = 2;
LABEL_6:
  *(&v60 + 1) = v40;
  *(&v61 + 1) = v39;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v58;
  v54 = v59;
  v55 = v60;
  v56 = v61;
  sub_2703CED18(v18, v20, v25, v24);
  sub_2703CAAEC(&v53, v57, &qword_2807D1BA0, &qword_2705E9980);
  sub_2703CED6C(v18, v20, v25, v24);
  sub_2703B2934(&v58, &qword_2807D1BA0, &qword_2705E9980);
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  v41 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v41;
  v42 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v42;
  v57[2] = v51;
  v57[3] = v52;
  v57[0] = v49;
  v57[1] = v50;
  sub_2703B2934(v57, &qword_2807D1BA0, &qword_2705E9980);
  return sub_2703CED6C(v18, v20, v25, v24);
}

uint64_t sub_270421388@<X0>(uint64_t a1@<X8>)
{
  result = sub_2705D5224();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2704213BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_2705D5224();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_270421478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1B70, &qword_2705E98F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270421518(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *OUTLINED_FUNCTION_1_28()
{

  return memcpy(&STACK[0x8E8], &STACK[0x13E8], 0x2C1uLL);
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2703CAAEC(&a9, &STACK[0xBE0], v9, v10);
}

uint64_t sub_2704215C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270421668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlatPlatterComponentModel(uint64_t a1)
{
  result = qword_2807D1BB8;
  if (!qword_2807D1BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270421740(uint64_t a1)
{
  sub_2703C1B58(319);
  if (v1 <= 0x3F)
  {
    sub_2703D0264(319, &qword_2807CF198, &qword_2807D65D0, &unk_2705DC050, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2703D0264(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
      if (v3 <= 0x3F)
      {
        sub_2703D02C8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_270421854@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for FlatPlatterComponentModel(0);
  sub_2703CAAEC(v1 + *(v6 + 24), v5, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703C1E5C(v5, a1);
}

uint64_t sub_270421954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2704219A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2704219F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_270421A78(uint64_t a1)
{
  sub_270421B30();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for MessageViewStyle.ViewStyle(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_270421B30()
{
  if (!qword_2807D1BE0)
  {
    v0 = type metadata accessor for MessageViewStyle.ViewStyle(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2807D1BE0);
    }
  }
}

void sub_270421B78(void *a1@<X8>)
{
  CGSizeMake();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_270421BA8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_270421C90()
{
  OUTLINED_FUNCTION_10_1();
  v44 = v2;
  v4 = v3;
  v41 = v5;
  v43 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v42 = v10 - v9;
  v11 = OUTLINED_FUNCTION_77();
  type metadata accessor for MessageViewStyle.ViewStyle(v11);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  v16 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_14_15();
  v20 = type metadata accessor for FlowAction.Destination(0);
  v21 = sub_2704698DC();
  if (v0)
  {
    (*(v7 + 8))(v44, v43);
    (*(v18 + 8))(v4, v16);
  }

  else
  {
    v38 = v1;
    v39 = v18;
    v40 = v4;
    if (v21 == 0x566567617373656DLL && v22 == 0xEB00000000776569)
    {

      v26 = v7;
      v25 = v15;
    }

    else
    {
      v37 = v21;
      v24 = v22;
      if ((sub_2705D8134() & 1) == 0)
      {
        v31 = sub_2705D7184();
        OUTLINED_FUNCTION_3_25();
        v34 = sub_27042441C(v32, v33, MEMORY[0x277D22550]);
        OUTLINED_FUNCTION_21_6(v31, v34);
        *v35 = v37;
        v35[1] = v24;
        v35[2] = v20;
        OUTLINED_FUNCTION_4_4();
        (*(v36 + 104))();
        swift_willThrow();
        (*(v7 + 8))(v44, v43);
        (*(v39 + 8))(v40, v16);
        goto LABEL_12;
      }

      v25 = v15;

      v26 = v7;
    }

    sub_2705D6494();
    (*(v26 + 16))(v42, v44, v43);
    MEMORY[0x2743A38C0](v42);
    OUTLINED_FUNCTION_4_22();
    sub_27042441C(v27, v28, &unk_27060BB30);
    sub_2705D6414();

    (*(v26 + 8))(v44, v43);
    v29 = *(v18 + 8);
    v29(v40, v16);
    v29(v38, v16);
    OUTLINED_FUNCTION_6_20();
    sub_270424484(v25, v41, v30);
  }

LABEL_12:
  OUTLINED_FUNCTION_11_3();
}

BOOL sub_270422180(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D7EB4();

  return v2 != 0;
}

BOOL sub_2704221E8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270422180(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_27042221C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704221C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_270422248@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270422180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270422274(uint64_t a1)
{
  v2 = sub_2704246A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704222B0(uint64_t a1)
{
  v2 = sub_2704246A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704222EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_1();
  v62 = v26;
  v27 = type metadata accessor for MessageViewStyle(0);
  v28 = OUTLINED_FUNCTION_23_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v64 = v30 - v29;
  v31 = OUTLINED_FUNCTION_77();
  v32 = type metadata accessor for MessageViewStyle.ViewStyle(v31);
  v33 = OUTLINED_FUNCTION_23_0(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_0();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98, &unk_2705DAB30);
  OUTLINED_FUNCTION_0();
  v63 = v38;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  v41 = &v57 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C48, &unk_2705E9BE0);
  OUTLINED_FUNCTION_0();
  v43 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_15();
  v45 = sub_2705D7F54();
  if (!v24)
  {
    v60 = v25;
    v61 = v37;
    v58 = v41;
    v59 = v43;
    v57 = v36;
    v47 = v64;
    if (v45 == 0x74616E6974736564 && v46 == 0xEB000000006E6F69)
    {
    }

    else
    {
      v49 = sub_2705D8134();

      if ((v49 & 1) == 0)
      {
        v50 = sub_2705D7D84();
        OUTLINED_FUNCTION_21_6(v50, MEMORY[0x277D841A0]);
        sub_270424644();
        sub_2705D7D34();
        swift_willThrow();
        goto LABEL_12;
      }
    }

    sub_2704246A8();
    v51 = v61;
    sub_2705D7ED4();
    v52 = v58;
    sub_2704DEF34();
    sub_270545E28();
    (*(v63 + 8))(v52, v51);
    v53 = OUTLINED_FUNCTION_24_7();
    v54(v53);
    v55 = v57;
    sub_27042458C(v47, v57, type metadata accessor for MessageViewStyle.ViewStyle);
    sub_2704245EC(v47, type metadata accessor for MessageViewStyle);
    OUTLINED_FUNCTION_6_20();
    sub_270424484(v55, v62, v56);
  }

LABEL_12:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_27042266C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x566567617373656DLL && a2 == 0xEB00000000776569)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270422708(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_270422790()
{
  OUTLINED_FUNCTION_10_1();
  v20 = v0;
  v3 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C30, &qword_2705E9BC8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for FlowAction.Destination(0);
  v10 = OUTLINED_FUNCTION_23_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_14_15();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C38, &unk_2705E9BD0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704244E4();
  sub_2705D84C4();
  sub_27042458C(v20, v1, type metadata accessor for FlowAction.Destination);
  sub_270424538();
  sub_2705D7FE4();
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  OUTLINED_FUNCTION_4_22();
  sub_27042441C(v17, v18, &unk_27060BB58);
  v19 = v21;
  sub_2705D8084();
  sub_2704245EC(v1, type metadata accessor for MessageViewStyle.ViewStyle);
  (*(v5 + 8))(v8, v19);
  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_11_3();
}

void sub_270422A04()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v30 = v4;
  v31 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C10, &qword_2705E9BB0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C18, &unk_2705E9BB8);
  OUTLINED_FUNCTION_0();
  v32 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_15();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704244E4();
  sub_2705D8484();
  if (v0)
  {
    goto LABEL_9;
  }

  v13 = sub_2705D7FB4();
  sub_27042C9F0(v13, 0);
  if (v14 == v15 >> 1)
  {
    v16 = v10;
    goto LABEL_8;
  }

  if (v14 < (v15 >> 1))
  {
    sub_27042C9E4(v14 + 1);
    v18 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    if (v18 == v20 >> 1)
    {
      sub_270424538();
      sub_2705D7ED4();
      type metadata accessor for MessageViewStyle.ViewStyle(0);
      OUTLINED_FUNCTION_4_22();
      sub_27042441C(v25, v26, &unk_27060BB30);
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v27 = OUTLINED_FUNCTION_23_5();
      v28(v27);
      (*(v32 + 8))(v1, v10);
      OUTLINED_FUNCTION_7_16();
      sub_270424484(v8, v30, v29);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_11_3();
      return;
    }

    v16 = v10;
LABEL_8:
    v21 = sub_2705D7D84();
    OUTLINED_FUNCTION_21_6(v21, MEMORY[0x277D841A0]);
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v23 = v31;
    sub_2705D7EE4();
    sub_2705D7D44();
    OUTLINED_FUNCTION_4_4();
    (*(v24 + 104))(v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v32 + 8))(v1, v16);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_270422E48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

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

uint64_t sub_270422FA8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x654D6E6F69746361;
      break;
    case 2:
      result = 0x74616E6974736564;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27042304C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1CE0, &qword_2705EA170);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270424E9C();
  sub_2705D84C4();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v22 = 0;
  sub_270424F98();
  OUTLINED_FUNCTION_20_5();
  if (!v2)
  {
    v12 = type metadata accessor for FlowAction(0);
    LOBYTE(v23) = 1;
    sub_2705D6774();
    OUTLINED_FUNCTION_11_15();
    sub_27042441C(v13, v14, MEMORY[0x277D21C90]);
    OUTLINED_FUNCTION_13_11();
    LOBYTE(v23) = 2;
    type metadata accessor for FlowAction.Destination(0);
    OUTLINED_FUNCTION_9_16();
    sub_27042441C(v15, v16, &unk_2705E9AB0);
    OUTLINED_FUNCTION_13_11();
    v17 = (v3 + *(v12 + 28));
    v19 = *v17;
    v18 = v17[1];
    v23 = v19;
    v24 = v18;
    v22 = 3;
    sub_270424FEC();
    OUTLINED_FUNCTION_20_5();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_27042324C()
{
  OUTLINED_FUNCTION_10_1();
  v40 = v0;
  v3 = v2;
  v34[0] = v4;
  v34[1] = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v35 = v7 - v6;
  OUTLINED_FUNCTION_77();
  v8 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1CC0, &qword_2705EA168);
  OUTLINED_FUNCTION_0();
  v36 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v18 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_14_15();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_270424E9C();
  v38 = v17;
  v20 = v40;
  sub_2705D8484();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v21 = v37;
    sub_270424EF0();
    OUTLINED_FUNCTION_19_3(&type metadata for FlowAction.ID);
    v22 = v42;
    *v1 = v41;
    *(v1 + 1) = v22;
    v40 = v22;
    LOBYTE(v41) = 1;
    OUTLINED_FUNCTION_11_15();
    sub_27042441C(v23, v24, MEMORY[0x277D21C98]);
    sub_2705D7FA4();
    (*(v21 + 32))(&v1[*(v18 + 20)], v13, v8);
    LOBYTE(v41) = 2;
    OUTLINED_FUNCTION_9_16();
    sub_27042441C(v25, v26, &unk_2705E9AD8);
    v27 = v35;
    sub_2705D7FA4();
    OUTLINED_FUNCTION_7_16();
    sub_270424484(v27, &v1[v28], v29);
    sub_270424F44();
    OUTLINED_FUNCTION_19_3(MEMORY[0x277D22150]);
    (*(v36 + 8))(v38, v39);
    v31 = v42;
    v32 = &v1[*(v18 + 28)];
    *v32 = v41;
    *(v32 + 1) = v31;
    OUTLINED_FUNCTION_10_16();
    sub_27042458C(v1, v34[0], v33);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_8_19();
    sub_2704245EC(v1, v30);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270423674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27042266C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704236A0(uint64_t a1)
{
  v2 = sub_2704244E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704236DC(uint64_t a1)
{
  v2 = sub_2704244E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27042371C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270422708(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270423748(uint64_t a1)
{
  v2 = sub_270424538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270423784(uint64_t a1)
{
  v2 = sub_270424538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270423808(uint64_t a1)
{
  result = sub_27042441C(&qword_2807D1BE8, type metadata accessor for FlowAction.Destination, &unk_2705E9A80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270423868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270422E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270423890(uint64_t a1)
{
  v2 = sub_270424E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704238CC(uint64_t a1)
{
  v2 = sub_270424E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270423940(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_2704239B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2705D6774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_270423A24()
{
  OUTLINED_FUNCTION_10_1();
  v97 = v0;
  v99 = v1;
  v3 = v2;
  v92 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1BF8, &unk_2705E9B90);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v94 = &v85 - v7;
  v8 = OUTLINED_FUNCTION_77();
  v93 = type metadata accessor for FlowAction.Destination(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v91 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2C8, &unk_2705E48F0);
  OUTLINED_FUNCTION_23_0(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v95 = (&v85 - v14);
  OUTLINED_FUNCTION_77();
  v98 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v85 - v21;
  v23 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v96 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v28 = (v27 - v26);
  v29 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  v33 = (v32 - v31);
  v34 = v97;
  v35 = sub_2704698DC();
  if (v34)
  {
    (*(v16 + 8))(v3, v98);
    sub_2705D6654();
    OUTLINED_FUNCTION_14();
    (*(v37 + 8))(v99);
    goto LABEL_11;
  }

  v87 = v20;
  v88 = v28;
  v89 = 0;
  v90 = v36;
  v97 = v23;
  *v33 = v35;
  v33[1] = v36;
  sub_2705D6494();
  v38 = sub_2705D6444();
  v39 = v3;
  v40 = v98;
  if ((v38 & 1) == 0)
  {
    v86 = v3;
    v41 = v95;
    sub_270424214(v22, v99, MEMORY[0x277D21C78], MEMORY[0x277D21C88], v95);
    v42 = v97;
    if (__swift_getEnumTagSinglePayload(v41, 1, v97) != 1)
    {
      v55 = *(v16 + 8);
      v54 = v16 + 8;
      v56 = v22;
      v57 = v55;
      v55(v56, v40);
      v58 = v40;
      v59 = *(v96 + 32);
      v60 = v88;
      v59(v88, v41, v42);
      v61 = v29[5];
      v95 = v33;
      v59((v33 + v61), v60, v42);
      v62 = v86;
      v63 = v89;
      v64 = sub_2703C087C(0x61746E6573657270, 0xEC0000006E6F6974, v29);
      if (v63)
      {
        v57(v62, v58);
        v51 = 0;
        v50 = 1;
        v52 = v99;
        v33 = v95;
      }

      else
      {
        v88 = v57;
        v89 = v54;
        v66 = v95;
        v67 = (v95 + v29[7]);
        *v67 = v64;
        v67[1] = v65;
        v68 = v62;
        sub_2705D6494();
        v52 = v99;
        v33 = v66;
        if ((sub_2705D6444() & 1) == 0)
        {
          v69 = v94;
          sub_270424214(v87, v99, sub_2703C1ECC, type metadata accessor for FlowAction.Destination, v94);
          if (__swift_getEnumTagSinglePayload(v69, 1, v93) != 1)
          {
            v78 = v98;
            v79 = v88;
            v88(v86, v98);
            v79(v87, v78);
            v80 = v69;
            v81 = v91;
            sub_270424484(v80, v91, type metadata accessor for FlowAction.Destination);
            sub_270424484(v81, v33 + v29[6], type metadata accessor for FlowAction.Destination);
            OUTLINED_FUNCTION_10_16();
            sub_27042458C(v33, v92, v82);
            sub_2705D6654();
            OUTLINED_FUNCTION_14();
            (*(v83 + 8))(v99);
            OUTLINED_FUNCTION_8_19();
            sub_2704245EC(v33, v84);
            goto LABEL_11;
          }

          sub_2703C2EFC(v69, &qword_2807D1BF8, &unk_2705E9B90);
          v68 = v86;
        }

        v70 = sub_2705D7184();
        OUTLINED_FUNCTION_3_25();
        v73 = sub_27042441C(v71, v72, MEMORY[0x277D22550]);
        OUTLINED_FUNCTION_21_6(v70, v73);
        *v74 = 0x74616E6974736564;
        v74[1] = 0xEB000000006E6F69;
        v74[2] = v29;
        OUTLINED_FUNCTION_4_4();
        (*(v75 + 104))();
        swift_willThrow();
        v76 = v98;
        v77 = v88;
        v88(v68, v98);
        v77(v87, v76);
        v50 = 1;
        v51 = 1;
      }

      goto LABEL_7;
    }

    sub_2703C2EFC(v41, &qword_2807CF2C8, &unk_2705E48F0);
    v39 = v86;
  }

  v43 = sub_2705D7184();
  OUTLINED_FUNCTION_3_25();
  v46 = sub_27042441C(v44, v45, MEMORY[0x277D22550]);
  OUTLINED_FUNCTION_21_6(v43, v46);
  strcpy(v47, "actionMetrics");
  *(v47 + 7) = -4864;
  *(v47 + 2) = v29;
  OUTLINED_FUNCTION_4_4();
  (*(v48 + 104))();
  swift_willThrow();
  v49 = *(v16 + 8);
  v49(v39, v40);
  v49(v22, v40);
  v50 = 0;
  v51 = 0;
  v52 = v99;
LABEL_7:
  sub_2705D6654();
  OUTLINED_FUNCTION_14();
  (*(v53 + 8))(v52);

  if (v50)
  {
    (*(v96 + 8))(v33 + v29[5], v97);
  }

  if (v51)
  {
  }

LABEL_11:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270424214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_14_15();
  sub_2705D6484();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16, a1);
  (*(v13 + 16))(v5, a2, v11);
  a3(v18, v5);
  v20 = a4(0);
  return __swift_storeEnumTagSinglePayload(a5, 0, 1, v20);
}

uint64_t sub_2704243C4(uint64_t a1)
{
  result = sub_27042441C(&qword_2807D1BF0, type metadata accessor for FlowAction, &unk_2705E9B44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27042441C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_270424484(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2704244E4()
{
  result = qword_2807D1C20;
  if (!qword_2807D1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C20);
  }

  return result;
}

unint64_t sub_270424538()
{
  result = qword_2807D1C28;
  if (!qword_2807D1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C28);
  }

  return result;
}

uint64_t sub_27042458C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2704245EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_270424644()
{
  result = qword_2807CEAA0;
  if (!qword_2807CEAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CEA98, &unk_2705DAB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CEAA0);
  }

  return result;
}

unint64_t sub_2704246A8()
{
  result = qword_2807D1C50;
  if (!qword_2807D1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C50);
  }

  return result;
}

_BYTE *sub_270424720(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704247BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270424808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = a1 + *(a3 + 20);
    }

    else
    {
      type metadata accessor for FlowAction.Destination(0);
      v11 = *(a3 + 24);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
      v10 = a1 + v11;
    }

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_270424900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2705D6774();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = v5 + *(a4 + 20);
    }

    else
    {
      type metadata accessor for FlowAction.Destination(0);
      v11 = *(a4 + 24);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
      v10 = v5 + v11;
    }

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2704249E0(uint64_t a1)
{
  result = sub_2705D6774();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FlowAction.Destination(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_270424A90()
{
  result = qword_2807D1C68;
  if (!qword_2807D1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C68);
  }

  return result;
}

unint64_t sub_270424AE8()
{
  result = qword_2807D1C70;
  if (!qword_2807D1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C70);
  }

  return result;
}

unint64_t sub_270424B40()
{
  result = qword_2807D1C78;
  if (!qword_2807D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C78);
  }

  return result;
}

unint64_t sub_270424B98()
{
  result = qword_2807D1C80;
  if (!qword_2807D1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C80);
  }

  return result;
}

unint64_t sub_270424BF0()
{
  result = qword_2807D1C88;
  if (!qword_2807D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C88);
  }

  return result;
}

unint64_t sub_270424C48()
{
  result = qword_2807D1C90;
  if (!qword_2807D1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C90);
  }

  return result;
}

unint64_t sub_270424CA0()
{
  result = qword_2807D1C98;
  if (!qword_2807D1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1C98);
  }

  return result;
}

unint64_t sub_270424CF8()
{
  result = qword_2807D1CA0;
  if (!qword_2807D1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CA0);
  }

  return result;
}

unint64_t sub_270424D50()
{
  result = qword_2807D1CA8;
  if (!qword_2807D1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CA8);
  }

  return result;
}

unint64_t sub_270424DA8()
{
  result = qword_2807D1CB0;
  if (!qword_2807D1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CB0);
  }

  return result;
}

unint64_t sub_270424E00()
{
  result = qword_2807D1CB8;
  if (!qword_2807D1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CB8);
  }

  return result;
}

unint64_t sub_270424E9C()
{
  result = qword_2807D1CC8;
  if (!qword_2807D1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CC8);
  }

  return result;
}

unint64_t sub_270424EF0()
{
  result = qword_2807D1CD0;
  if (!qword_2807D1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CD0);
  }

  return result;
}

unint64_t sub_270424F44()
{
  result = qword_2807D1CD8;
  if (!qword_2807D1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CD8);
  }

  return result;
}

unint64_t sub_270424F98()
{
  result = qword_2807D1CE8;
  if (!qword_2807D1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CE8);
  }

  return result;
}

unint64_t sub_270424FEC()
{
  result = qword_2807D1CF0;
  if (!qword_2807D1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CF0);
  }

  return result;
}

unint64_t sub_270425040()
{
  result = qword_2807D1CF8;
  if (!qword_2807D1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1CF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270425160);
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

unint64_t sub_27042519C()
{
  result = qword_2807D1D00;
  if (!qword_2807D1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D00);
  }

  return result;
}

unint64_t sub_2704251F4()
{
  result = qword_2807D1D08;
  if (!qword_2807D1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D08);
  }

  return result;
}

unint64_t sub_27042524C()
{
  result = qword_2807D1D10;
  if (!qword_2807D1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_27042543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_1();
  v150 = v26;
  v151 = v25;
  v27 = OUTLINED_FUNCTION_21_3();
  v28 = type metadata accessor for FlowAction.Destination(v27);
  v29 = OUTLINED_FUNCTION_23_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27_5();
  v142 = v30 - v31;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v32);
  v144 = &v134 - v33;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v34);
  v146 = &v134 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98, &unk_2705DAB30);
  OUTLINED_FUNCTION_0();
  v149 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_27_5();
  v143 = v39 - v40;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v41);
  v145 = &v134 - v42;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v43);
  v148 = &v134 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1FF8, &qword_2705EAC20);
  OUTLINED_FUNCTION_0();
  v147 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27_5();
  v50 = v48 - v49;
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v134 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v134 - v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2000, &qword_2705EAC28);
  OUTLINED_FUNCTION_0();
  v58 = v57;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_30_1();
  sub_27042BA68();
  v60 = v151;
  sub_2705D7ED4();
  if (!v60)
  {
    v138 = v56;
    v139 = v36;
    v135 = v50;
    v136 = v54;
    v140 = v24;
    v137 = v45;
    v151 = v58;
    v61 = v150;
    v62 = sub_2705D7F54();
    v141 = 0;
    v64 = v62;
    v65 = v63;
    v66 = v62 == 0x7373696D736964 && v63 == 0xE700000000000000;
    if (v66 || (OUTLINED_FUNCTION_24_8(0x7373696D736964, 0xE700000000000000) & 1) != 0)
    {
      goto LABEL_7;
    }

    v73 = v64 == 1953069157 && v65 == 0xE400000000000000;
    if (v73 || (OUTLINED_FUNCTION_24_8(1953069157, 0xE400000000000000) & 1) != 0)
    {
      goto LABEL_7;
    }

    if (v64 == 1752397168 && v65 == 0xE400000000000000)
    {

      v76 = v139;
      v77 = v149;
      goto LABEL_23;
    }

    v75 = OUTLINED_FUNCTION_24_8(1752397168, 0xE400000000000000);
    v76 = v139;
    v77 = v149;
    if (v75)
    {

LABEL_23:
      sub_27042BABC();
      v78 = v141;
      sub_2705D7ED4();
      v79 = v148;
      if (v78)
      {
        v80 = OUTLINED_FUNCTION_12_13();
        v81(v80);
        goto LABEL_9;
      }

      sub_2704DEF78();
      sub_2704222EC(v79, v83, v84, v85, v86, v87, v88, v89, v134, v135, SBYTE4(v135), SBYTE5(v135), SBYTE6(v135), SHIBYTE(v135), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      (*(v77 + 8))(v79, v76);
      v90 = OUTLINED_FUNCTION_17_9();
      v91(v90, v137);
      v92 = OUTLINED_FUNCTION_12_13();
      v93(v92);
      OUTLINED_FUNCTION_0_24();
      v94 = v146;
      goto LABEL_32;
    }

    v82 = v64 == 7368560 && v65 == 0xE300000000000000;
    if (v82 || (OUTLINED_FUNCTION_24_8(7368560, 0xE300000000000000) & 1) != 0)
    {
LABEL_7:
      v67 = OUTLINED_FUNCTION_3_26();
      v68(v67);

      v69 = v61;
LABEL_8:
      type metadata accessor for FlowActionModel.FlowType(0);
      swift_storeEnumTagMultiPayload();
      v70 = type metadata accessor for FlowActionModel(0);
      v71 = v69 + *(v70 + 20);
      *v71 = 0;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      *(v71 + 24) = -2;
      v72 = v69 + *(v70 + 24);
      *v72 = 0;
      *(v72 + 8) = 0;
      *(v72 + 16) = 0;
      *(v72 + 24) = -2;
      OUTLINED_FUNCTION_51_0();
      *v71 = 0;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      *(v71 + 24) = -2;
      sub_2703AFC10(*v72, *(v72 + 8), *(v72 + 16), *(v72 + 24));
      *v72 = 0;
      *(v72 + 8) = 0;
      *(v72 + 16) = 0;
      *(v72 + 24) = -2;
      goto LABEL_9;
    }

    if (v64 == 0x746E6573657270 && v65 == 0xE700000000000000)
    {

      v97 = v137;
    }

    else
    {
      v96 = OUTLINED_FUNCTION_24_8(0x746E6573657270, 0xE700000000000000);
      v97 = v137;
      if ((v96 & 1) == 0)
      {
        if (v64 == 0x6563616C706572 && v65 == 0xE700000000000000)
        {
        }

        else
        {
          v101 = OUTLINED_FUNCTION_24_8(0x6563616C706572, 0xE700000000000000);

          if ((v101 & 1) == 0)
          {
            sub_2705D7D84();
            swift_allocError();
            v103 = v102;
            sub_2705D7EE4();
            sub_2705D7D44();
            OUTLINED_FUNCTION_38_2();
            (*(v104 + 104))(v103);
            swift_willThrow();
            v105 = OUTLINED_FUNCTION_3_26();
            v106(v105);
            goto LABEL_9;
          }
        }

        sub_27042BABC();
        v107 = v141;
        sub_2705D7ED4();
        if (!v107)
        {
          sub_2704DEF78();
          sub_2704222EC(v143, v121, v122, v123, v124, v125, v126, v127, v134, v135, SBYTE4(v135), SBYTE5(v135), SBYTE6(v135), SHIBYTE(v135), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
          v128 = OUTLINED_FUNCTION_57();
          v129(v128);
          v130 = OUTLINED_FUNCTION_55();
          v131(v130);
          v132 = OUTLINED_FUNCTION_3_26();
          v133(v132);
          OUTLINED_FUNCTION_0_24();
          v94 = v142;
          goto LABEL_32;
        }

LABEL_50:
        v108 = OUTLINED_FUNCTION_3_26();
        v109(v108);
        goto LABEL_9;
      }
    }

    sub_27042BABC();
    v98 = v141;
    sub_2705D7ED4();
    v99 = v145;
    if (!v98)
    {
      sub_2704DEF78();
      sub_2704222EC(v99, v110, v111, v112, v113, v114, v115, v116, v134, v135, SBYTE4(v135), SBYTE5(v135), SBYTE6(v135), SHIBYTE(v135), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
      (*(v149 + 8))(v99, v76);
      v117 = OUTLINED_FUNCTION_54_0();
      v118(v117, v97);
      v119 = OUTLINED_FUNCTION_3_26();
      v120(v119);
      OUTLINED_FUNCTION_0_24();
      v94 = v144;
LABEL_32:
      v69 = v61;
      sub_27042B5F4(v94, v61);
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

void sub_270425D94()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_62_0(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1FC8, &qword_2705EABF8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = type metadata accessor for FlowActionModel.ReplaceFlowOptions(0);
  v7 = OUTLINED_FUNCTION_23_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = v0[4];
  OUTLINED_FUNCTION_23_2(v0, v0[3]);
  v12 = sub_27042B9C0();
  OUTLINED_FUNCTION_49_1(&type metadata for FlowActionModel.ReplaceFlowOptions.CodingKeys, v13, v12);
  if (!v1)
  {
    OUTLINED_FUNCTION_2_24();
    sub_27042A53C(v14, v15, &unk_2705E9AD8);
    OUTLINED_FUNCTION_33_3();
    v16 = OUTLINED_FUNCTION_23();
    v17(v16, v4);
    OUTLINED_FUNCTION_0_24();
    sub_27042B5F4(v11, v10);
    sub_27042B5F4(v10, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270425F58(uint64_t a1)
{
  v2 = sub_27042B9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270425F94(uint64_t a1)
{
  v2 = sub_27042B9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27042602C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2704260A8()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_1();
  v11 = OUTLINED_FUNCTION_23_2(v4, v4[3]);
  v2(v11);
  sub_2705D84C4();
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_2_24();
  sub_27042A53C(v12, v13, &unk_2705E9AB0);
  OUTLINED_FUNCTION_39_2();
  sub_2705D8084();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_11_3();
}

void sub_2704261E4()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_62_0(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1FE0, &qword_2705EAC08);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = type metadata accessor for FlowActionModel.PushFlowOptions(0);
  v7 = OUTLINED_FUNCTION_23_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = v0[4];
  OUTLINED_FUNCTION_23_2(v0, v0[3]);
  v12 = sub_27042BA14();
  OUTLINED_FUNCTION_49_1(&type metadata for FlowActionModel.PushFlowOptions.CodingKeys, v13, v12);
  if (!v1)
  {
    OUTLINED_FUNCTION_2_24();
    sub_27042A53C(v14, v15, &unk_2705E9AD8);
    OUTLINED_FUNCTION_33_3();
    v16 = OUTLINED_FUNCTION_23();
    v17(v16, v4);
    OUTLINED_FUNCTION_0_24();
    sub_27042B5F4(v11, v10);
    sub_27042B5F4(v10, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704263A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27042602C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704263D0(uint64_t a1)
{
  v2 = sub_27042BA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27042640C(uint64_t a1)
{
  v2 = sub_27042BA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704264A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_270426570(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_2704265A8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1FB8, &qword_2705EABF0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_0();
  v6 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_23_2(v6, v7);
  v8 = sub_27042B848();
  OUTLINED_FUNCTION_59_0(&type metadata for FlowActionModel.PresentFlowOptions.CodingKeys, v9, v8);
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_2_24();
  sub_27042A53C(v10, v11, &unk_2705E9AB0);
  OUTLINED_FUNCTION_39_2();
  sub_2705D8084();
  if (!v0)
  {
    type metadata accessor for FlowActionModel.PresentFlowOptions(0);
    sub_27042B8F0();
    sub_2705D8084();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_270426730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_1();
  v26 = v25;
  v41 = v27;
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26();
  v43 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1FA0, &qword_2705EABE8);
  OUTLINED_FUNCTION_0();
  v42 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29_3();
  v32 = type metadata accessor for FlowActionModel.PresentFlowOptions(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_23_2(v26, v26[3]);
  sub_27042B848();
  sub_2705D8484();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_24();
    sub_27042A53C(v37, v38, &unk_2705E9AD8);
    sub_2705D7FA4();
    OUTLINED_FUNCTION_0_24();
    sub_27042B5F4(v43, v36);
    sub_27042B89C();
    OUTLINED_FUNCTION_11_16();
    sub_2705D7FA4();
    v39 = OUTLINED_FUNCTION_54_0();
    v40(v39, v42);
    *(v36 + *(v32 + 20)) = a13;
    sub_27042B598(v36, v41);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_27042A584(v36, type metadata accessor for FlowActionModel.PresentFlowOptions);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704269DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704264A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270426A04(uint64_t a1)
{
  v2 = sub_27042B848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426A40(uint64_t a1)
{
  v2 = sub_27042B848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646574746966 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1836216166 && a2 == 0xE400000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701273968 && a2 == 0xE400000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657263536C6C7566 && a2 == 0xEA00000000006E65)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

          if (v10)
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

uint64_t sub_270426C74(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x646574746966;
      break;
    case 2:
      result = 1836216166;
      break;
    case 3:
      result = 1701273968;
      break;
    case 4:
      result = 0x657263536C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270426D18(uint64_t a1)
{
  v2 = sub_270427614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426D54(uint64_t a1)
{
  v2 = sub_270427614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270426AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270426DC0(uint64_t a1)
{
  v2 = sub_270427470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426DFC(uint64_t a1)
{
  v2 = sub_270427470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426E38(uint64_t a1)
{
  v2 = sub_2704275C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426E74(uint64_t a1)
{
  v2 = sub_2704275C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426EB0(uint64_t a1)
{
  v2 = sub_27042756C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426EEC(uint64_t a1)
{
  v2 = sub_27042756C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426F28(uint64_t a1)
{
  v2 = sub_2704274C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426F64(uint64_t a1)
{
  v2 = sub_2704274C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270426FA0(uint64_t a1)
{
  v2 = sub_270427518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270426FDC(uint64_t a1)
{
  v2 = sub_270427518();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlowActionModel.PresentType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_10_1();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D18, &qword_2705EA280);
  OUTLINED_FUNCTION_0();
  v60 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_0();
  v59 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D20, &qword_2705EA288);
  OUTLINED_FUNCTION_0();
  v58 = v33;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  v57 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D28, &qword_2705EA290);
  OUTLINED_FUNCTION_0();
  v56 = v36;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_0();
  v55 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D30, &qword_2705EA298);
  OUTLINED_FUNCTION_0();
  v54 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v53 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D38, &qword_2705EA2A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13_3();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D40, &qword_2705EA2A8);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_29_3();
  v47 = *v26;
  OUTLINED_FUNCTION_23_2(v29, v29[3]);
  sub_270427470();
  sub_2705D84C4();
  v48 = (v45 + 8);
  switch(v47)
  {
    case 1:
      sub_2704275C0();
      v51 = v53;
      OUTLINED_FUNCTION_11_16();
      sub_2705D7FE4();
      v52 = v54;
      goto LABEL_7;
    case 2:
      sub_27042756C();
      v51 = v55;
      OUTLINED_FUNCTION_11_16();
      sub_2705D7FE4();
      v52 = v56;
      goto LABEL_7;
    case 3:
      sub_270427518();
      v51 = v57;
      OUTLINED_FUNCTION_11_16();
      sub_2705D7FE4();
      v52 = v58;
      goto LABEL_7;
    case 4:
      sub_2704274C4();
      v51 = v59;
      OUTLINED_FUNCTION_11_16();
      sub_2705D7FE4();
      v52 = v60;
LABEL_7:
      v50 = *(v52 + 8);
      v49 = v51;
      break;
    default:
      sub_270427614();
      OUTLINED_FUNCTION_11_16();
      sub_2705D7FE4();
      v49 = OUTLINED_FUNCTION_23();
      break;
  }

  v50(v49);
  (*v48)(v27, v43);
  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_270427470()
{
  result = qword_2807D1D48;
  if (!qword_2807D1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D48);
  }

  return result;
}

unint64_t sub_2704274C4()
{
  result = qword_2807D1D50;
  if (!qword_2807D1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D50);
  }

  return result;
}

unint64_t sub_270427518()
{
  result = qword_2807D1D58;
  if (!qword_2807D1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D58);
  }

  return result;
}

unint64_t sub_27042756C()
{
  result = qword_2807D1D60;
  if (!qword_2807D1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D60);
  }

  return result;
}

unint64_t sub_2704275C0()
{
  result = qword_2807D1D68;
  if (!qword_2807D1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D68);
  }

  return result;
}

unint64_t sub_270427614()
{
  result = qword_2807D1D70;
  if (!qword_2807D1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1D70);
  }

  return result;
}

uint64_t FlowActionModel.PresentType.hashValue.getter()
{
  v1 = *v0;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v1);
  return sub_2705D8414();
}

void FlowActionModel.PresentType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_10_1();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v85 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D78, &qword_2705EA2B0);
  OUTLINED_FUNCTION_0();
  v82 = v34;
  v83 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v87 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D80, &qword_2705EA2B8);
  OUTLINED_FUNCTION_0();
  v80 = v38;
  v81 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v86 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D88, &qword_2705EA2C0);
  OUTLINED_FUNCTION_0();
  v78 = v43;
  v79 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17_0();
  v84 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D90, &qword_2705EA2C8);
  OUTLINED_FUNCTION_0();
  v76 = v47;
  v77 = v46;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_3();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1D98, &qword_2705EA2D0);
  OUTLINED_FUNCTION_0();
  v75 = v50;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_31_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1DA0, &unk_2705EA2D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_2(v32, v32[3]);
  sub_270427470();
  sub_2705D8484();
  if (v26)
  {
    goto LABEL_8;
  }

  v74 = v49;
  v53 = v86;
  v54 = sub_2705D7FB4();
  sub_27042A4AC(v54, 0);
  if (v57 == v58 >> 1)
  {
    goto LABEL_7;
  }

  if (v57 >= (v58 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270427D18);
  }

  v73 = *(v56 + v57);
  sub_27042B944(v57 + 1, v58 >> 1, v55, v56, v57, v58);
  v60 = v59;
  v62 = v61;
  swift_unknownObjectRelease();
  if (v60 != v62 >> 1)
  {
LABEL_7:
    sub_2705D7D84();
    swift_allocError();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v64 = &type metadata for FlowActionModel.PresentType;
    v65 = sub_2705D7EE4();
    OUTLINED_FUNCTION_49(v65);
    OUTLINED_FUNCTION_38_2();
    (*(v66 + 104))(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = OUTLINED_FUNCTION_45_1();
    v68(v67);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v32);
    goto LABEL_9;
  }

  switch(v73)
  {
    case 1:
      a13 = 1;
      sub_2704275C0();
      v53 = v28;
      OUTLINED_FUNCTION_15_12(&type metadata for FlowActionModel.PresentType.FittedCodingKeys, &a13);
      swift_unknownObjectRelease();
      v70 = v76;
      v69 = v77;
      goto LABEL_14;
    case 2:
      a14 = 2;
      sub_27042756C();
      v53 = v84;
      OUTLINED_FUNCTION_15_12(&type metadata for FlowActionModel.PresentType.FormCodingKeys, &a14);
      swift_unknownObjectRelease();
      v70 = v78;
      v69 = v79;
      goto LABEL_14;
    case 3:
      a15 = 3;
      sub_270427518();
      OUTLINED_FUNCTION_15_12(&type metadata for FlowActionModel.PresentType.PageCodingKeys, &a15);
      swift_unknownObjectRelease();
      v69 = v80;
      v70 = v81;
LABEL_14:
      (*(v70 + 8))(v53, v69);
      break;
    case 4:
      a16 = 4;
      sub_2704274C4();
      sub_2705D7ED4();
      swift_unknownObjectRelease();
      (*(v83 + 8))(v87, v82);
      break;
    default:
      a12 = 0;
      sub_270427614();
      OUTLINED_FUNCTION_15_12(&type metadata for FlowActionModel.PresentType.AutomaticCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v75 + 8))(v27, v74);
      break;
  }

  v71 = OUTLINED_FUNCTION_45_1();
  v72(v71);
  *v85 = v73;
  __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270427D2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953069157 && a2 == 0xE400000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1752397168 && a2 == 0xE400000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7368560 && a2 == 0xE300000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E6573657270 && a2 == 0xE700000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

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

uint64_t sub_270427F1C(char a1)
{
  result = 0x7373696D736964;
  switch(a1)
  {
    case 1:
      result = 1953069157;
      break;
    case 2:
      result = 1752397168;
      break;
    case 3:
      result = 7368560;
      break;
    case 4:
      result = 0x746E6573657270;
      break;
    case 5:
      result = 0x6563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270427FE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_270428058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_10_1();
  v116 = v27;
  v117 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1EC8, &qword_2705EAB78);
  OUTLINED_FUNCTION_0();
  v112 = v31;
  v113 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  v111 = v33;
  v109 = type metadata accessor for FlowActionModel.ReplaceFlowOptions(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_26();
  v110 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1ED0, &qword_2705EAB80);
  OUTLINED_FUNCTION_0();
  v107 = v37;
  v108 = v36;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_0();
  v106 = v39;
  v104 = type metadata accessor for FlowActionModel.PresentFlowOptions(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26();
  v105 = v41;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1ED8, &qword_2705EAB88);
  OUTLINED_FUNCTION_0();
  v100 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_0();
  v98 = v44;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1EE0, &qword_2705EAB90);
  OUTLINED_FUNCTION_0();
  v101 = v45;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17_0();
  v99 = v47;
  v96 = type metadata accessor for FlowActionModel.PushFlowOptions(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_26();
  v97 = v49;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1EE8, &qword_2705EAB98);
  OUTLINED_FUNCTION_0();
  v94[1] = v50;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_30_1();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1EF0, &qword_2705EABA0);
  OUTLINED_FUNCTION_0();
  v94[0] = v53;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  v56 = v94 - v55;
  v57 = type metadata accessor for FlowActionModel.FlowType(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4_0();
  v61 = v60 - v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1EF8, &qword_2705EABA8);
  OUTLINED_FUNCTION_0();
  v114 = v63;
  v115 = v62;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_23_2(v29, v29[3]);
  sub_27042B544();
  sub_2705D84C4();
  sub_27042B598(v117, v61);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = v61;
      v66 = v105;
      sub_27042B5F4(v85, v105);
      sub_27042B6A4();
      OUTLINED_FUNCTION_23_6(&type metadata for FlowActionModel.FlowType.PresentCodingKeys);
      OUTLINED_FUNCTION_18_7();
      sub_27042A53C(v86, v87, &unk_2705EA8A4);
      v88 = v108;
      sub_2705D8084();
      v89 = OUTLINED_FUNCTION_14_16();
      v90(v89, v88);
      v72 = type metadata accessor for FlowActionModel.PresentFlowOptions;
      goto LABEL_7;
    case 2u:
      v76 = v61;
      v66 = v110;
      sub_27042B5F4(v76, v110);
      sub_27042B650();
      OUTLINED_FUNCTION_23_6(&type metadata for FlowActionModel.FlowType.ReplaceCodingKeys);
      OUTLINED_FUNCTION_19_4();
      sub_27042A53C(v77, v78, &unk_2705EA554);
      v79 = v113;
      sub_2705D8084();
      v80 = OUTLINED_FUNCTION_14_16();
      v81(v80, v79);
      v72 = type metadata accessor for FlowActionModel.ReplaceFlowOptions;
      goto LABEL_7;
    case 3u:
      sub_27042B7F4();
      OUTLINED_FUNCTION_23_6(&type metadata for FlowActionModel.FlowType.DismissCodingKeys);
      (*(v94[0] + 8))(v56, v52);
      v82 = OUTLINED_FUNCTION_17_9();
      v84 = v57;
      goto LABEL_10;
    case 4u:
      sub_27042B7A0();
      OUTLINED_FUNCTION_60_0(&type metadata for FlowActionModel.FlowType.ExitCodingKeys);
      v73 = OUTLINED_FUNCTION_14_16();
      v75 = v95;
      goto LABEL_9;
    case 5u:
      sub_27042B6F8();
      v93 = v98;
      OUTLINED_FUNCTION_60_0(&type metadata for FlowActionModel.FlowType.PopCodingKeys);
      v74 = *(v100 + 8);
      v73 = v93;
      v75 = v102;
LABEL_9:
      v74(v73, v75);
      v82 = OUTLINED_FUNCTION_17_9();
      v84 = v52;
LABEL_10:
      v83(v82, v84);
      break;
    default:
      v65 = v61;
      v66 = v97;
      sub_27042B5F4(v65, v97);
      sub_27042B74C();
      OUTLINED_FUNCTION_23_6(&type metadata for FlowActionModel.FlowType.PushCodingKeys);
      OUTLINED_FUNCTION_21_7();
      sub_27042A53C(v67, v68, &unk_2705EA504);
      v69 = v103;
      sub_2705D8084();
      v70 = OUTLINED_FUNCTION_14_16();
      v71(v70, v69);
      v72 = type metadata accessor for FlowActionModel.PushFlowOptions;
LABEL_7:
      sub_27042A584(v66, v72);
      v91 = OUTLINED_FUNCTION_17_9();
      v92(v91, v57);
      break;
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_270428878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_10_1();
  a25 = v27;
  a26 = v28;
  v144 = v26;
  v30 = v29;
  v136 = v31;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F50, &qword_2705EABB0);
  OUTLINED_FUNCTION_0();
  v138 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  v137 = v34;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F58, &qword_2705EABB8);
  OUTLINED_FUNCTION_0();
  v130 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  v135 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F60, &qword_2705EABC0);
  OUTLINED_FUNCTION_0();
  v125 = v39;
  v126 = v38;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  v133 = v41;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F68, &qword_2705EABC8);
  OUTLINED_FUNCTION_0();
  v129 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_0();
  v134 = v44;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F70, &qword_2705EABD0);
  OUTLINED_FUNCTION_0();
  v124 = v45;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17_0();
  v132 = v47;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F78, &qword_2705EABD8);
  OUTLINED_FUNCTION_0();
  v122 = v48;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17_0();
  v131 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1F80, &qword_2705EABE0);
  OUTLINED_FUNCTION_0();
  v139 = v52;
  v140 = v51;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_30_1();
  v54 = type metadata accessor for FlowActionModel.FlowType(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_27_5();
  v58 = v56 - v57;
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v120 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = v120 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = v120 - v66;
  v68 = v30[3];
  v143 = v30;
  OUTLINED_FUNCTION_23_2(v30, v68);
  sub_27042B544();
  v69 = v144;
  sub_2705D8484();
  if (v69)
  {
    goto LABEL_10;
  }

  v120[2] = v65;
  v120[3] = v62;
  v120[4] = v58;
  v70 = v141;
  v144 = v54;
  v121 = v67;
  v71 = sub_2705D7FB4();
  sub_27042A4AC(v71, 0);
  if (v74 == v75 >> 1)
  {
    v76 = v144;
LABEL_9:
    sub_2705D7D84();
    swift_allocError();
    v85 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v85 = v76;
    v86 = sub_2705D7EE4();
    OUTLINED_FUNCTION_49(v86);
    OUTLINED_FUNCTION_38_2();
    (*(v87 + 104))(v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    v88 = OUTLINED_FUNCTION_4_23();
    v89(v88);
LABEL_10:
    v90 = v143;
    goto LABEL_11;
  }

  v120[1] = 0;
  if (v74 >= (v75 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2704292B8);
  }

  v120[0] = *(v73 + v74);
  sub_27042B944(v74 + 1, v75 >> 1, v72, v73, v74, v75);
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  if (v78 != v80 >> 1)
  {
    v76 = v144;
    goto LABEL_9;
  }

  switch(v120[0])
  {
    case 1:
      a12 = 1;
      sub_27042B7A0();
      v102 = v132;
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.ExitCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v124 + 8))(v102, v70);
      v103 = OUTLINED_FUNCTION_4_23();
      v104(v103);
      OUTLINED_FUNCTION_25_5();
      goto LABEL_16;
    case 2:
      a13 = 2;
      sub_27042B74C();
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.PushCodingKeys, &a13);
      type metadata accessor for FlowActionModel.PushFlowOptions(0);
      OUTLINED_FUNCTION_21_7();
      sub_27042A53C(v95, v96, &unk_2705EA52C);
      v97 = OUTLINED_FUNCTION_41_2();
      v98 = v127;
      OUTLINED_FUNCTION_61_0(v97);
      swift_unknownObjectRelease();
      v111 = OUTLINED_FUNCTION_23();
      v112(v111, v98);
      v113 = OUTLINED_FUNCTION_12_13();
      v114(v113);
      goto LABEL_18;
    case 3:
      a14 = 3;
      sub_27042B6F8();
      v99 = v133;
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.PopCodingKeys, &a14);
      swift_unknownObjectRelease();
      (*(v125 + 8))(v99, v126);
      v100 = OUTLINED_FUNCTION_4_23();
      v101(v100);
      OUTLINED_FUNCTION_25_5();
      goto LABEL_16;
    case 4:
      a15 = 4;
      sub_27042B6A4();
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.PresentCodingKeys, &a15);
      type metadata accessor for FlowActionModel.PresentFlowOptions(0);
      OUTLINED_FUNCTION_18_7();
      sub_27042A53C(v91, v92, &unk_2705EA8CC);
      v93 = OUTLINED_FUNCTION_41_2();
      v94 = v128;
      OUTLINED_FUNCTION_61_0(v93);
      swift_unknownObjectRelease();
      v107 = OUTLINED_FUNCTION_23();
      v108(v107, v94);
      v109 = OUTLINED_FUNCTION_12_13();
      v110(v109);
      goto LABEL_18;
    case 5:
      a16 = 5;
      sub_27042B650();
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.ReplaceCodingKeys, &a16);
      type metadata accessor for FlowActionModel.ReplaceFlowOptions(0);
      OUTLINED_FUNCTION_19_4();
      sub_27042A53C(v105, v106, &unk_2705EA57C);
      OUTLINED_FUNCTION_41_2();
      sub_2705D7FA4();
      swift_unknownObjectRelease();
      v115 = OUTLINED_FUNCTION_14_7();
      v116(v115);
      v117 = OUTLINED_FUNCTION_4_23();
      v118(v117);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_20();
      v80 = v121;
      sub_27042B5F4(v70, v121);
      break;
    default:
      a11 = 0;
      sub_27042B7F4();
      v81 = v131;
      OUTLINED_FUNCTION_13_12(&type metadata for FlowActionModel.FlowType.DismissCodingKeys, &a11);
      swift_unknownObjectRelease();
      (*(v122 + 8))(v81, v123);
      v82 = OUTLINED_FUNCTION_4_23();
      v83(v82);
      OUTLINED_FUNCTION_25_5();
LABEL_16:
      swift_storeEnumTagMultiPayload();
      break;
  }

  v119 = v143;
  OUTLINED_FUNCTION_8_20();
  sub_27042B5F4(v80, v136);
  v90 = v119;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v90);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270429314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270427D2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27042933C(uint64_t a1)
{
  v2 = sub_27042B544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429378(uint64_t a1)
{
  v2 = sub_27042B544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704293B4(uint64_t a1)
{
  v2 = sub_27042B7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704293F0(uint64_t a1)
{
  v2 = sub_27042B7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27042942C(uint64_t a1)
{
  v2 = sub_27042B7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429468(uint64_t a1)
{
  v2 = sub_27042B7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704294A4(uint64_t a1)
{
  v2 = sub_27042B6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704294E0(uint64_t a1)
{
  v2 = sub_27042B6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270429520(uint64_t a1)
{
  v2 = sub_27042B6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27042955C(uint64_t a1)
{
  v2 = sub_27042B6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270429598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270427FE0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704295C4(uint64_t a1)
{
  v2 = sub_27042B74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429600(uint64_t a1)
{
  v2 = sub_27042B74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27042963C(uint64_t a1)
{
  v2 = sub_27042B650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429678(uint64_t a1)
{
  v2 = sub_27042B650();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_2704296E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D7EB4();

  return v2 != 0;
}

BOOL sub_27042973C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D7EB4();

  return v2 != 0;
}

uint64_t sub_270429784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954776F6C66 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2704298A4(char a1)
{
  if (!a1)
  {
    return 0x65707954776F6C66;
  }

  if (a1 == 1)
  {
    return 0x4173736563637573;
  }

  return 0x416572756C696166;
}

BOOL sub_270429920@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2704296E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_270429954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27042972C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_270429980@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704296E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704299AC(uint64_t a1)
{
  v2 = sub_27042BA68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704299E8(uint64_t a1)
{
  v2 = sub_27042BA68();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_270429A30@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27042973C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_270429A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270425D74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_270429A8C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27042973C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270429AB8(uint64_t a1)
{
  v2 = sub_27042BABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429AF4(uint64_t a1)
{
  v2 = sub_27042BABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270429B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270429784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270429B60(uint64_t a1)
{
  v2 = sub_27042A4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270429B9C(uint64_t a1)
{
  v2 = sub_27042A4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlowActionModel.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1DA8, &qword_2705EA2E8);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31_0();
  v6 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_23_2(v6, v7);
  v8 = sub_27042A4E8();
  OUTLINED_FUNCTION_59_0(&type metadata for FlowActionModel.CodingKeys, v9, v8);
  type metadata accessor for FlowActionModel.FlowType(0);
  OUTLINED_FUNCTION_20_6();
  sub_27042A53C(v10, v11, &unk_2705EA91C);
  OUTLINED_FUNCTION_39_2();
  sub_2705D8084();
  if (!v0)
  {
    v12 = type metadata accessor for FlowActionModel(0);
    v13 = OUTLINED_FUNCTION_30_5(*(v12 + 20));
    sub_2703B4AA0(v13, v14, v15, v16);
    sub_2703C38C8();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_58_0();
    v17 = OUTLINED_FUNCTION_30_5(*(v12 + 24));
    sub_2703B4AA0(v17, v18, v19, v20);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_58_0();
  }

  return (*(v4 + 8))(v1, v2);
}

void FlowActionModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_1();
  v25 = v24;
  v44 = v26;
  type metadata accessor for FlowActionModel.FlowType(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26();
  v45 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1DC0, &qword_2705EA2F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_29_3();
  v30 = type metadata accessor for FlowActionModel(0);
  v31 = OUTLINED_FUNCTION_23_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_0();
  v34 = v33 - v32;
  v36 = v33 - v32 + *(v35 + 28);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = -2;
  v37 = v33 - v32 + *(v35 + 32);
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = -2;
  v38 = OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_23_2(v38, v39);
  sub_27042A4E8();
  sub_2705D8484();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_51_0();
    sub_2703AFC10(*v37, *(v37 + 8), *(v37 + 16), *(v37 + 24));
  }

  else
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_20_6();
    sub_27042A53C(v40, v41, &unk_2705EA8F4);
    sub_2705D7FA4();
    OUTLINED_FUNCTION_8_20();
    sub_27042B5F4(v45, v34);
    sub_2703C3EB0();
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_51_0();
    *v36 = v46;
    *(v36 + 16) = v47;
    *(v36 + 24) = v48;
    OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_40_3();
    v43(v42);
    sub_2703AFC10(*v37, *(v37 + 8), *(v37 + 16), *(v37 + 24));
    *v37 = v46;
    *(v37 + 16) = v47;
    *(v37 + 24) = v48;
    sub_27042B598(v34, v44);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_27042A584(v34, type metadata accessor for FlowActionModel);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_27042A108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v27 = *(a2 + 8);
  v28 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  type metadata accessor for FlowActionModel.FlowType(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for FlowActionModel(0);
  v12 = a4 + *(v11 + 20);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = -2;
  v13 = a4 + *(v11 + 24);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = -2;
  v25 = *(v12 + 8);
  v26 = *v12;
  v24 = *(v12 + 16);
  v23 = *(v12 + 24);
  sub_2703B4AA0(v5, v6, v7, v9);
  sub_2703B4AA0(v28, v27, v8, v10);
  OUTLINED_FUNCTION_47_0(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  sub_2703AFC10(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
  *v13 = v28;
  *(v13 + 8) = v27;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
}

void static FlowActionModel.presentModel(presentationType:route:data:successAction:failureAction:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v11 = *a4;
  v10 = a4[1];
  v50 = a5[1];
  v51 = *a5;
  v12 = a5[2];
  v53 = a6[1];
  v54 = *a6;
  v52 = a6[2];
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = v11;
  *(a7 + 24) = v10;
  v13 = *(a4 + 16);
  *(a7 + 32) = v13;
  v14 = *(a5 + 24);
  v49 = *(a6 + 24);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  swift_storeEnumTagMultiPayload();
  *(a7 + *(type metadata accessor for FlowActionModel.PresentFlowOptions(0) + 20)) = v9;
  type metadata accessor for FlowActionModel.FlowType(0);
  swift_storeEnumTagMultiPayload();
  v15 = (a7 + *(type metadata accessor for FlowActionModel(0) + 20));
  OUTLINED_FUNCTION_46_2();
  v17 = a7 + v16;
  v19 = OUTLINED_FUNCTION_22_6(v18);
  sub_2703AE9E8(v19, v20, v13);

  v22 = v50;
  v21 = v51;
  v23 = OUTLINED_FUNCTION_14_7();
  sub_2703B4AA0(v23, v24, v12, v14);
  OUTLINED_FUNCTION_63(v54, v53, v25, v26, v27, v28, v29, v30, v39, v42, v44, v46, v48, v49, v50, v51, v52);
  OUTLINED_FUNCTION_47_0(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v43, v45, v47);
  *v15 = v21;
  v15[1] = v22;
  OUTLINED_FUNCTION_50_0();
  *v17 = v54;
  *(v17 + 8) = v53;
  *(v17 + 16) = a3;
  *(v17 + 24) = v11;
}

void sub_27042A380(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a7@<X8>)
{
  v10 = *a3;
  v9 = a3[1];
  v47 = *(a4 + 8);
  v48 = *a4;
  v11 = *(a4 + 16);
  v50 = a5[1];
  v51 = *a5;
  v49 = a5[2];
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v10;
  *(a7 + 24) = v9;
  v12 = *(a3 + 16);
  *(a7 + 32) = v12;
  v13 = *(a4 + 24);
  v46 = *(a5 + 24);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowActionModel.FlowType(0);
  swift_storeEnumTagMultiPayload();
  v14 = (a7 + *(type metadata accessor for FlowActionModel(0) + 20));
  OUTLINED_FUNCTION_46_2();
  v16 = a7 + v15;
  v18 = OUTLINED_FUNCTION_22_6(v17);
  sub_2703AE9E8(v18, v19, v12);

  v21 = v47;
  v20 = v48;
  sub_2703B4AA0(v48, v47, v11, v13);
  OUTLINED_FUNCTION_63(v51, v50, v22, v23, v24, v25, v26, v27, v36, v39, v41, v43, v45, v46, v47, v48, v49);
  OUTLINED_FUNCTION_47_0(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v40, v42, v44);
  *v14 = v20;
  v14[1] = v21;
  OUTLINED_FUNCTION_50_0();
  *v16 = v51;
  *(v16 + 8) = v50;
  *(v16 + 16) = a2;
  *(v16 + 24) = v10;
}

void sub_27042A4AC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_9_17();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_27042A4E8()
{
  result = qword_2807D1DB0;
  if (!qword_2807D1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1DB0);
  }

  return result;
}

uint64_t sub_27042A53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27042A584(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27042A600()
{
  result = qword_2807D1DD0;
  if (!qword_2807D1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1DD0);
  }

  return result;
}

uint64_t sub_27042A668()
{
  v3 = OUTLINED_FUNCTION_53();
  v4 = type metadata accessor for FlowActionModel.FlowType(v3);
  if (*(*(v4 - 8) + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v4);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20) + 24);
    if (v6 >= 0xFE)
    {
      v7 = 254;
    }

    else
    {
      v7 = *(v0 + *(v2 + 20) + 24);
    }

    v8 = (v7 ^ 0xFF) - 1;
    if (v6 <= 0x11)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

uint64_t sub_27042A72C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_21_3();
  result = type metadata accessor for FlowActionModel.FlowType(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_26_5();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = -2 - a2;
  }

  return result;
}

void sub_27042A7CC(uint64_t a1)
{
  type metadata accessor for FlowActionModel.FlowType(319);
  if (v1 <= 0x3F)
  {
    sub_27042A850();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27042A850()
{
  if (!qword_2807D1DE8)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D1DE8);
    }
  }
}

uint64_t sub_27042A8C4()
{
  v3 = OUTLINED_FUNCTION_53();
  v4 = type metadata accessor for FlowAction.Destination(v3);
  OUTLINED_FUNCTION_23_0(v4);
  if (*(v5 + 84) == v1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);

    return __swift_getEnumTagSinglePayload(v0, v1, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 5)
    {
      return v8 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_27042A984(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_21_3();
  v9 = type metadata accessor for FlowAction.Destination(v8);
  result = OUTLINED_FUNCTION_23_0(v9);
  if (*(v11 + 84) == a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
    v12 = OUTLINED_FUNCTION_26_5();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_27042AA2C(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27042AB6CLL);
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

_BYTE *sub_27042ABA8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27042AC74);
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

void sub_27042ACFC(uint64_t a1)
{
  sub_27042ADF8(319, &qword_2807D1E10, type metadata accessor for FlowActionModel.PushFlowOptions);
  if (v1 <= 0x3F)
  {
    sub_27042ADF8(319, &qword_2807D1E18, type metadata accessor for FlowActionModel.PresentFlowOptions);
    if (v2 <= 0x3F)
    {
      sub_27042ADF8(319, &qword_2807D1E20, type metadata accessor for FlowActionModel.ReplaceFlowOptions);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_27042ADF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_27042AE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27042AEE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728, &qword_2705E9A50);
  v0 = OUTLINED_FUNCTION_26_5();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_27042AF58(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_27042AFC8()
{
  result = qword_2807D1E48;
  if (!qword_2807D1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E48);
  }

  return result;
}

unint64_t sub_27042B020()
{
  result = qword_2807D1E50;
  if (!qword_2807D1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E50);
  }

  return result;
}

unint64_t sub_27042B078()
{
  result = qword_2807D1E58;
  if (!qword_2807D1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E58);
  }

  return result;
}

unint64_t sub_27042B0D0()
{
  result = qword_2807D1E60;
  if (!qword_2807D1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E60);
  }

  return result;
}

unint64_t sub_27042B128()
{
  result = qword_2807D1E68;
  if (!qword_2807D1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E68);
  }

  return result;
}

unint64_t sub_27042B180()
{
  result = qword_2807D1E70;
  if (!qword_2807D1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E70);
  }

  return result;
}

unint64_t sub_27042B1D8()
{
  result = qword_2807D1E78;
  if (!qword_2807D1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E78);
  }

  return result;
}

unint64_t sub_27042B230()
{
  result = qword_2807D1E80;
  if (!qword_2807D1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E80);
  }

  return result;
}

unint64_t sub_27042B288()
{
  result = qword_2807D1E88;
  if (!qword_2807D1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E88);
  }

  return result;
}

unint64_t sub_27042B2E0()
{
  result = qword_2807D1E90;
  if (!qword_2807D1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E90);
  }

  return result;
}

unint64_t sub_27042B338()
{
  result = qword_2807D1E98;
  if (!qword_2807D1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1E98);
  }

  return result;
}

unint64_t sub_27042B390()
{
  result = qword_2807D1EA0;
  if (!qword_2807D1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1EA0);
  }

  return result;
}

unint64_t sub_27042B3E8()
{
  result = qword_2807D1EA8;
  if (!qword_2807D1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1EA8);
  }

  return result;
}

unint64_t sub_27042B440()
{
  result = qword_2807D1EB0;
  if (!qword_2807D1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1EB0);
  }

  return result;
}

unint64_t sub_27042B498()
{
  result = qword_2807D1EB8;
  if (!qword_2807D1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1EB8);
  }

  return result;
}

unint64_t sub_27042B4F0()
{
  result = qword_2807D1EC0;
  if (!qword_2807D1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1EC0);
  }

  return result;
}

unint64_t sub_27042B544()
{
  result = qword_2807D1F00;
  if (!qword_2807D1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F00);
  }

  return result;
}

uint64_t sub_27042B598(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_27042B5F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_27042B650()
{
  result = qword_2807D1F08;
  if (!qword_2807D1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F08);
  }

  return result;
}

unint64_t sub_27042B6A4()
{
  result = qword_2807D1F18;
  if (!qword_2807D1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F18);
  }

  return result;
}

unint64_t sub_27042B6F8()
{
  result = qword_2807D1F28;
  if (!qword_2807D1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F28);
  }

  return result;
}

unint64_t sub_27042B74C()
{
  result = qword_2807D1F30;
  if (!qword_2807D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F30);
  }

  return result;
}

unint64_t sub_27042B7A0()
{
  result = qword_2807D1F40;
  if (!qword_2807D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F40);
  }

  return result;
}

unint64_t sub_27042B7F4()
{
  result = qword_2807D1F48;
  if (!qword_2807D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1F48);
  }

  return result;
}

unint64_t sub_27042B848()
{
  result = qword_2807D1FA8;
  if (!qword_2807D1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1FA8);
  }

  return result;
}

unint64_t sub_27042B89C()
{
  result = qword_2807D1FB0;
  if (!qword_2807D1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1FB0);
  }

  return result;
}

unint64_t sub_27042B8F0()
{
  result = qword_2807D1FC0;
  if (!qword_2807D1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1FC0);
  }

  return result;
}

uint64_t sub_27042B944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_27042B9C0()
{
  result = qword_2807D1FD0;
  if (!qword_2807D1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1FD0);
  }

  return result;
}

unint64_t sub_27042BA14()
{
  result = qword_2807D1FE8;
  if (!qword_2807D1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D1FE8);
  }

  return result;
}

unint64_t sub_27042BA68()
{
  result = qword_2807D2008;
  if (!qword_2807D2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2008);
  }

  return result;
}

unint64_t sub_27042BABC()
{
  result = qword_2807D2010;
  if (!qword_2807D2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowActionModel.PresentFlowOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27042BC20);
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

_BYTE *storeEnumTagSinglePayload for FlowActionModel.FlowType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27042BD24);
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

_BYTE *sub_27042BDAC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27042BE48);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27042BE84()
{
  result = qword_2807D2018;
  if (!qword_2807D2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2018);
  }

  return result;
}

unint64_t sub_27042BEDC()
{
  result = qword_2807D2020;
  if (!qword_2807D2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2020);
  }

  return result;
}

unint64_t sub_27042BF34()
{
  result = qword_2807D2028;
  if (!qword_2807D2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2028);
  }

  return result;
}

unint64_t sub_27042BF8C()
{
  result = qword_2807D2030;
  if (!qword_2807D2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2030);
  }

  return result;
}

unint64_t sub_27042BFE4()
{
  result = qword_2807D2038;
  if (!qword_2807D2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2038);
  }

  return result;
}

unint64_t sub_27042C03C()
{
  result = qword_2807D2040;
  if (!qword_2807D2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2040);
  }

  return result;
}

unint64_t sub_27042C094()
{
  result = qword_2807D2048;
  if (!qword_2807D2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2048);
  }

  return result;
}

unint64_t sub_27042C0EC()
{
  result = qword_2807D2050;
  if (!qword_2807D2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2050);
  }

  return result;
}

unint64_t sub_27042C144()
{
  result = qword_2807D2058;
  if (!qword_2807D2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2058);
  }

  return result;
}

unint64_t sub_27042C19C()
{
  result = qword_2807D2060;
  if (!qword_2807D2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2060);
  }

  return result;
}

unint64_t sub_27042C1F4()
{
  result = qword_2807D2068;
  if (!qword_2807D2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2068);
  }

  return result;
}

unint64_t sub_27042C24C()
{
  result = qword_2807D2070;
  if (!qword_2807D2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2070);
  }

  return result;
}

unint64_t sub_27042C2A4()
{
  result = qword_2807D2078;
  if (!qword_2807D2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2078);
  }

  return result;
}

unint64_t sub_27042C2FC()
{
  result = qword_2807D2080;
  if (!qword_2807D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2080);
  }

  return result;
}

unint64_t sub_27042C354()
{
  result = qword_2807D2088;
  if (!qword_2807D2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2088);
  }

  return result;
}

unint64_t sub_27042C3AC()
{
  result = qword_2807D2090;
  if (!qword_2807D2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2090);
  }

  return result;
}

unint64_t sub_27042C404()
{
  result = qword_2807D2098;
  if (!qword_2807D2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2098);
  }

  return result;
}

unint64_t sub_27042C45C()
{
  result = qword_2807D20A0;
  if (!qword_2807D20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20A0);
  }

  return result;
}

unint64_t sub_27042C4B4()
{
  result = qword_2807D20A8;
  if (!qword_2807D20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20A8);
  }

  return result;
}

unint64_t sub_27042C50C()
{
  result = qword_2807D20B0;
  if (!qword_2807D20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20B0);
  }

  return result;
}

unint64_t sub_27042C564()
{
  result = qword_2807D20B8;
  if (!qword_2807D20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20B8);
  }

  return result;
}

unint64_t sub_27042C5BC()
{
  result = qword_2807D20C0;
  if (!qword_2807D20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20C0);
  }

  return result;
}

unint64_t sub_27042C614()
{
  result = qword_2807D20C8;
  if (!qword_2807D20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20C8);
  }

  return result;
}

unint64_t sub_27042C66C()
{
  result = qword_2807D20D0;
  if (!qword_2807D20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20D0);
  }

  return result;
}

unint64_t sub_27042C6C4()
{
  result = qword_2807D20D8;
  if (!qword_2807D20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20D8);
  }

  return result;
}

unint64_t sub_27042C71C()
{
  result = qword_2807D20E0;
  if (!qword_2807D20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20E0);
  }

  return result;
}

unint64_t sub_27042C774()
{
  result = qword_2807D20E8;
  if (!qword_2807D20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20E8);
  }

  return result;
}

unint64_t sub_27042C7CC()
{
  result = qword_2807D20F0;
  if (!qword_2807D20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20F0);
  }

  return result;
}

unint64_t sub_27042C824()
{
  result = qword_2807D20F8;
  if (!qword_2807D20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D20F8);
  }

  return result;
}

unint64_t sub_27042C87C()
{
  result = qword_2807D2100;
  if (!qword_2807D2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2100);
  }

  return result;
}

unint64_t sub_27042C8D4()
{
  result = qword_2807D2108;
  if (!qword_2807D2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2108);
  }

  return result;
}

unint64_t sub_27042C92C()
{
  result = qword_2807D2110;
  if (!qword_2807D2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2110);
  }

  return result;
}

unint64_t sub_27042C984()
{
  result = qword_2807D2118;
  if (!qword_2807D2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2118);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_22_6@<X0>(char a1@<W8>)
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1)
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1, uint64_t a2)
{

  return sub_2705D8134();
}