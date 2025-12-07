void sub_237A000A0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = *(*(v3 + 88) + 16);
  if (v15)
  {
    v27 = a1;
    v16 = sub_237C08C2C();
    sub_2379F5634();
    sub_237A0030C(v3, v26);
    v17 = sub_237C08CFC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v25 = v11;
      v19 = v5;
      v20 = v7;
      v21 = v18;
      *v18 = 134218240;
      *(v18 + 4) = v15;
      *(v18 + 12) = 2048;
      *(v18 + 14) = *(v3 + 16);
      sub_237A00344(v3);
      _os_log_impl(&dword_2379D3000, v17, v16, "Writing AnnotatedFeatureStore with %ld elements and %ld blobs", v21, 0x16u);
      v22 = v21;
      v7 = v20;
      v5 = v19;
      v11 = v25;
      MEMORY[0x2383DD950](v22, -1, -1);
    }

    else
    {
      sub_237A00344(v3);
    }

    sub_237A5BED8(v27, 1);
    if (!v2)
    {
      OUTLINED_FUNCTION_2_9();
      sub_237C05A2C();
      sub_237A00374(v14);
      v23 = *(v7 + 8);
      v23(v14, v5);
      OUTLINED_FUNCTION_3_8();
      sub_237C05A2C();
      sub_237C05B9C();
      v23(v11, v5);
    }
  }
}

uint64_t sub_237A00374(uint64_t a1)
{
  v3 = v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v31 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = v31 - v8;
  v10 = *(v1 + 88);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v31[0] = v2;
    v31[1] = a1;
    v42 = MEMORY[0x277D84F90];
    sub_237AC8D34();
    v13 = v42;
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v34 = *(v14 + 56);
    v35 = v15;
    v36 = v14;
    v32 = (v14 - 8);
    v33 = (v5 + 8);
    do
    {
      v17 = v13;
      v18 = v37;
      v35(v9, v16, v37);
      v19 = v38;
      sub_237C06C7C();
      v20 = v39;
      v21 = sub_237C082AC();
      (*v33)(v19, v20);
      sub_237C06C4C();
      (*v32)(v9, v18);
      v13 = v17;
      v22 = v40;
      v23 = v41;
      v42 = v17;
      v24 = *(v17 + 16);
      if (v24 >= *(v13 + 24) >> 1)
      {
        sub_237AC8D34();
        v13 = v42;
      }

      *(v13 + 16) = v24 + 1;
      v25 = (v13 + 24 * v24);
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = v23;
      v16 += v34;
      --v11;
    }

    while (v11);
    v12 = v13;
    v3 = v31[0];
  }

  sub_237C057FC();
  swift_allocObject();
  sub_237C057EC();
  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE78, &qword_237C0C1F8);
  sub_237A00F3C(&qword_27DE9AE80, sub_237A00E3C, MEMORY[0x277D83948]);
  v26 = sub_237C057DC();
  if (v3)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;

    sub_237C05B9C();
    sub_2379E86D4(v28, v29);
  }
}

uint64_t sub_237A00704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5365727574616566 && a2 == 0xEC00000065706168;
  if (v4 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_237C0929C();

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

uint64_t sub_237A00818(char a1)
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](a1 & 1);
  return sub_237C0940C();
}

uint64_t sub_237A0086C(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x5365727574616566;
  }
}

uint64_t sub_237A008CC(uint64_t a1)
{
  v2 = *v1;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v2);
  return sub_237C0940C();
}

uint64_t sub_237A00918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237A00704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A00960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237A007D8();
  *a1 = result;
  return result;
}

uint64_t sub_237A00988(uint64_t a1)
{
  v2 = sub_237A011C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237A009C4(uint64_t a1)
{
  v2 = sub_237A011C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237A00A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEB8, &qword_237C0C298);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A011C0();
  sub_237C0949C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  sub_237A01214(&qword_27DE9AED0, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  sub_237C0921C();
  if (!v4)
  {
    v13 = 1;
    sub_237C091EC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_237A00BC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AED8, &qword_237C0C2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_237A011C0();
  sub_237C0946C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    v9[7] = 0;
    sub_237A01214(&qword_27DE9AEE0, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_237C091BC();
    v7 = v10;
    v9[6] = 1;
    sub_237C0918C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237A00DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A00BC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_237A00E3C()
{
  result = qword_27DE9AE88;
  if (!qword_27DE9AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AE88);
  }

  return result;
}

char *sub_237A00E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_237C0581C();
  v9 = result;
  if (result)
  {
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_237C0582C();
  result = sub_237A2B708(v9, a4, &v10);
  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_237A00F3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE78, &qword_237C0C1F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A00FB4()
{
  result = qword_27DE9AE98;
  if (!qword_27DE9AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AE98);
  }

  return result;
}

unint64_t sub_237A01064()
{
  result = qword_27DE9AEA0;
  if (!qword_27DE9AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEA0);
  }

  return result;
}

unint64_t sub_237A010B8()
{
  result = qword_27DE9AEB0;
  if (!qword_27DE9AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEA8, &unk_237C0C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEB0);
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

uint64_t sub_237A01130(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237A01170(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_237A011C0()
{
  result = qword_27DE9AEC0;
  if (!qword_27DE9AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEC0);
  }

  return result;
}

uint64_t sub_237A01214(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A0134CLL);
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

unint64_t sub_237A01388()
{
  result = qword_27DE9AEE8;
  if (!qword_27DE9AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEE8);
  }

  return result;
}

unint64_t sub_237A013E0()
{
  result = qword_27DE9AEF0;
  if (!qword_27DE9AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEF0);
  }

  return result;
}

unint64_t sub_237A01438()
{
  result = qword_27DE9AEF8;
  if (!qword_27DE9AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEF8);
  }

  return result;
}

uint64_t sub_237A01548(uint64_t a1)
{
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();

  return sub_237A01878();
}

uint64_t sub_237A01584(uint64_t a1, uint64_t a2)
{
  MLDataTable.size.getter();
  OUTLINED_FUNCTION_6_6();

  return sub_237A018D0();
}

uint64_t sub_237A015E8(uint64_t a1)
{
  v1 = sub_237A2E9F4();
  OUTLINED_FUNCTION_0_7(v1);
  OUTLINED_FUNCTION_6_6();
  return sub_237A01960();
}

void MLDataTable.columnNames.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = MEMORY[0x2383DDAC0](0);
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CMLSequence();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = 1;
      *a1 = v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = *v1;

    sub_237B6C208(a1);

    sub_2379DBC9C(v6, 0);
  }
}

uint64_t MLDataTable.ColumnNames.subscript.getter(uint64_t a1)
{
  sub_237A2E9C8(a1);
  v1 = sub_237A2DE60();

  return v1;
}

uint64_t sub_237A01818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_5_4();
  result = v6();
  if (v4 < 0 || result < v4)
  {
    __break(1u);
  }

  else
  {
    result = a3();
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3 - v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A01878()
{
  OUTLINED_FUNCTION_5_4();
  result = sub_237A2E9F4();
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A018D0()
{
  OUTLINED_FUNCTION_5_4();
  result = MLDataTable.size.getter();
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    result = MLDataTable.size.getter();
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A01960()
{
  OUTLINED_FUNCTION_5_4();
  v2 = sub_237A2E9F4();
  result = OUTLINED_FUNCTION_0_7(v2);
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_237A2E9F4();
    result = OUTLINED_FUNCTION_0_7(v4);
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A019C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237A93590();
  *a2 = result;
  return result;
}

uint64_t sub_237A019F0(uint64_t *a1)
{
  result = sub_237A93590();
  *a1 = result;
  return result;
}

uint64_t sub_237A01A20@<X0>(uint64_t *a3@<X8>)
{
  result = sub_237A93594();
  *a3 = result;
  return result;
}

uint64_t sub_237A01A78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MLDataTable.ColumnNames.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_237A01AA0(uint64_t *a1, uint64_t *a2))()
{
  v3 = MLDataTable.ColumnNames.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v4;
  *a1 = v3;
  return sub_237A01AEC;
}

uint64_t sub_237A01B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A93578();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A01B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_237A8FFA8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_237A01BE0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237B70944();
  *a2 = result;
  return result;
}

uint64_t sub_237A01C10(uint64_t *a1)
{
  result = sub_237B70944();
  *a1 = result;
  return result;
}

uint64_t sub_237A01C98(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = sub_237A2E9F4();
    if (v3 == OUTLINED_FUNCTION_0_7(v4))
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      sub_237A2E9C8(v3);
      v5 = sub_237A2DE60();
      v6 = v7;

      v8 = sub_237A2E9F4();
      v9 = OUTLINED_FUNCTION_0_7(v8);
      if (v3 < 0 || v3 >= v9)
      {
        goto LABEL_28;
      }

      ++v3;
    }

    v10 = sub_237A2E9F4();
    if (v2 == OUTLINED_FUNCTION_0_7(v10))
    {
      if (v6)
      {
LABEL_20:
      }

      else
      {
        v13 = 0;
LABEL_22:

        if (!v13)
        {
          return 1;
        }
      }

      return 0;
    }

    sub_237A2E9C8(v2);
    v11 = sub_237A2DE60();
    v13 = v12;

    v14 = sub_237A2E9F4();
    if (v2 >= OUTLINED_FUNCTION_0_7(v14))
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_22;
    }

    if (!v13)
    {
      goto LABEL_20;
    }

    if (v5 == v11 && v6 == v13)
    {
    }

    else
    {
      v16 = sub_237C0929C();

      if ((v16 & 1) == 0)
      {

        return 0;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  OUTLINED_FUNCTION_2_10();
  swift_unexpectedError();
  __break(1u);

  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_1_6();
  v18 = sub_237C0924C();
  MEMORY[0x2383DC360](v18);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  OUTLINED_FUNCTION_4_8();
  result = OUTLINED_FUNCTION_7_5("Fatal error");
  __break(1u);
  return result;
}

uint64_t sub_237A01F48(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v7 = *(a2 + 32 + 8 * v3);
LABEL_7:
    result = v2 == v5;
    if (v2 == v5)
    {
      v9 = 0;
      v10 = v5;
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_20;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * v2);
    }

    if (v3 == v4)
    {
      return result;
    }

    v11 = v2 != v5 && v7 == v9;
    v2 = v10;
    v3 = v8;
    if (!v11)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t MLDataTable.ColumnNames.description.getter(uint64_t a1)
{
  v1 = sub_237A2E9F4();
  OUTLINED_FUNCTION_0_7(v1);
  OUTLINED_FUNCTION_6_6();
  v2 = sub_237A01960();
  if (v2 < 0)
  {
    __break(1u);
    OUTLINED_FUNCTION_2_10();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = MEMORY[0x277D84F90];
    if (v2)
    {
      v13 = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v5 = 0;
      v4 = v13;
      do
      {
        sub_237A2E9C8(v5);
        v6 = sub_237A2DE60();
        v8 = v7;

        v9 = *(v13 + 16);
        if (v9 >= *(v13 + 24) >> 1)
        {
          sub_237AC8A74();
        }

        ++v5;
        *(v13 + 16) = v9 + 1;
        v10 = v13 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      while (v3 != v5);
    }

    v11 = MEMORY[0x2383DC4F0](v4, MEMORY[0x277D837D0]);

    return v11;
  }

  return result;
}

unint64_t MLDataTable.ColumnNames.playgroundDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MLDataTable.ColumnNames.description.getter(a1);
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_237A02218(v3, v5, 0);
  result = sub_237A022C0();
  a2[3] = result;
  *a2 = v7;
  return result;
}

id sub_237A02218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_237C086BC();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_237A028A4();
    v6 = sub_237C0855C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

unint64_t sub_237A022C0()
{
  result = qword_27DE9AA20;
  if (!qword_27DE9AA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AA20);
  }

  return result;
}

unint64_t sub_237A02308()
{
  result = qword_27DE9AF00;
  if (!qword_27DE9AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF00);
  }

  return result;
}

unint64_t sub_237A02390()
{
  result = qword_27DE9AF18;
  if (!qword_27DE9AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF18);
  }

  return result;
}

unint64_t sub_237A0242C()
{
  result = qword_27DE9AF30;
  if (!qword_27DE9AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF30);
  }

  return result;
}

unint64_t sub_237A02484()
{
  result = qword_27DE9AF38;
  if (!qword_27DE9AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF38);
  }

  return result;
}

uint64_t sub_237A02554(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF28, &qword_237C0C3C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A025D0()
{
  result = qword_27DE9AF50;
  if (!qword_27DE9AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF50);
  }

  return result;
}

uint64_t sub_237A02664(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

uint64_t _s11ColumnNamesVwet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t _s11ColumnNamesVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_237A028A4()
{
  result = qword_27DE9A950;
  if (!qword_27DE9A950)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A950);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return sub_237A01818(0, a1, sub_237A2E9F4);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1)
{

  return sub_237C090DC();
}

uint64_t sub_237A029EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for MLHandActionClassifier.DataSource(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237A02A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  v9 = type metadata accessor for MLHandActionClassifier.DataSource(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t _s20PersistentParametersVMa(uint64_t a1)
{
  result = qword_27DE9AF78;
  if (!qword_27DE9AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A02B84(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A02C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v223[4] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF90, &qword_237C0C720);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v184 = v7;
  v8 = OUTLINED_FUNCTION_41_0();
  v186 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v180 = v11 - v10;
  OUTLINED_FUNCTION_41_0();
  v192 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v190 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v191 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF98, &qword_237C0C728);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v185 = v18;
  v19 = OUTLINED_FUNCTION_41_0();
  v187 = type metadata accessor for MLHandActionClassifier.DataSource(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v181 = (v22 - v21);
  OUTLINED_FUNCTION_41_0();
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v182 = v24;
  v183 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v188 = (v26 - v25);
  OUTLINED_FUNCTION_41_0();
  v194 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v35);
  v37 = v162 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = v162 - v39;
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237C05A2C();
  v41 = v193;
  v42 = sub_237C05B1C();
  v193 = v41;
  if (v41)
  {
    v44 = *(v28 + 8);
    v45 = v194;
    v44(a1, v194);
    v44(v37, v45);
    return (v44)(v40, v45);
  }

  v175 = v32;
  v176 = v2;
  v177 = v3;
  v178 = v40;
  v179 = a1;
  v48 = v28 + 8;
  v47 = *(v28 + 8);
  v49 = v42;
  v50 = v43;
  v51 = v194;
  v47(v37, v194);
  v52 = objc_opt_self();
  v53 = sub_237C05B6C();
  *&v199 = 0;
  v54 = [v52 propertyListWithData:v53 options:0 format:0 error:&v199];

  v55 = v199;
  if (!v54)
  {
    v71 = v55;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v49, v50);
    v72 = OUTLINED_FUNCTION_36_2();
    (v47)(v72);
    return (v47)(v178, v51);
  }

  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v223, &v199);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8AF0();
    v73 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v74 = 0xD000000000000037;
    v74[1] = 0x8000000237C17D40;
    OUTLINED_FUNCTION_52(v73, v74);
    OUTLINED_FUNCTION_40_2();
    v75 = OUTLINED_FUNCTION_36_2();
    (v47)(v75);
    __swift_destroy_boxed_opaque_existential_1(v223);
    return (v47)(v178, v51);
  }

  v173 = v56;
  v174 = v47;
  v57 = v221;
  sub_237AC9A74(v221, &v199, 0x69735F6863746162, 0xEA0000000000657ALL);
  if (!v201)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  v171 = v221;
  sub_237AC9A74(v57, &v199, 0x726574695F78616DLL, 0xEE00736E6F697461);
  if (!v201)
  {
LABEL_22:

    sub_2379D9054(&v199, &qword_27DE9A998, &unk_237C0C100);
LABEL_24:
    sub_2379E8AF0();
    v76 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v77 = 0xD00000000000003FLL;
    v77[1] = 0x8000000237C17F60;
    OUTLINED_FUNCTION_52(v76, v77);
    OUTLINED_FUNCTION_40_2();
    v69 = OUTLINED_FUNCTION_36_2();
    v68 = v174;
    goto LABEL_25;
  }

  v172 = v57;
  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v170 = v221;
  OUTLINED_FUNCTION_60_1(0x6D6172665F6D756ELL, 0xEA00000000007365, &v199);
  if (!v201)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v169 = v221;
  OUTLINED_FUNCTION_60_1(0xD000000000000014, 0x8000000237C17EA0, &v199);
  if (!v201)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v168 = v221;
  OUTLINED_FUNCTION_60_1(0x7246746567726174, 0xEF65746152656D61, &v199);
  if (!v201)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v58 = _s20PersistentParametersVMa(0);
  v59 = v58[6];
  v60 = v58[7];
  v167 = v58;
  v61 = v58[8];
  v62 = v189;
  *(v189 + v59) = v171;
  v63 = v221;
  *(v62 + v60) = v170;
  *(v62 + v61) = v169;
  OUTLINED_FUNCTION_19_5();
  sub_237C05A2C();
  sub_237AC9A74(v172, &v221, 0x676E696E69617274, 0xE800000000000000);
  v166 = v28;
  if (!v222)
  {
    sub_2379D9054(&v221, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v78 = v193;
    v79 = *(v28 + 16);
    v80 = v176;
    v81 = v177;
    v165 = v79;
    v79(v176, v177, v51);
    LOBYTE(v199) = 1;
    *(&v199 + 1) = *v198;
    DWORD1(v199) = *&v198[3];
    *(&v199 + 1) = 44;
    v200 = 0xE100000000000000;
    v201 = 0;
    v202 = 0xE000000000000000;
    v203 = 92;
    v204 = 0xE100000000000000;
    v205 = 1;
    *v206 = *v197;
    *&v206[3] = *&v197[3];
    v207 = 34;
    v208 = 0xE100000000000000;
    v209 = 1;
    *v210 = *v196;
    *&v210[3] = *&v196[3];
    v211 = &unk_284ABEBF0;
    v212 = 10;
    v213 = 0xE100000000000000;
    v214 = 0;
    v215 = 0;
    v216 = 1;
    *v217 = *v195;
    *&v217[3] = *&v195[3];
    v218 = 0;
    v82 = v78;
    MLDataTable.init(contentsOf:options:)(v80, &v199, &v219);
    v83 = v174;
    if (v82)
    {
      OUTLINED_FUNCTION_40_2();

      v84 = OUTLINED_FUNCTION_36_2();
      v83(v84);
      (v83)(v81, v51);
      __swift_destroy_boxed_opaque_existential_1(v223);
      return (v83)(v178, v51);
    }

    v193 = 0;
    v164 = v48;
    *&v199 = v219;
    BYTE8(v199) = v220;
    sub_237A70ED4(&v199, v188);
    v85 = sub_237C05D8C();
    v86 = *(v85 + 16);
    if (v86)
    {
      OUTLINED_FUNCTION_39_1(MEMORY[0x277D84F90]);
      v87 = v199;
      v88 = *(v190 + 16);
      v89 = *(v190 + 80);
      v163 = v85;
      v90 = v85 + ((v89 + 32) & ~v89);
      v170 = *(v190 + 72);
      v171 = v88;
      v176 = v190 + 16;
      v169 = (v190 + 8);
      v92 = v191;
      v91 = v192;
      do
      {
        (v171)(v92, v90, v91);
        v93 = sub_237C0600C();
        v91 = v192;
        v185 = v93;
        v181 = v94;
        (*v169)(v92, v192);
        *&v199 = v87;
        v95 = *(v87 + 16);
        v96 = v95 + 1;
        if (v95 >= *(v87 + 24) >> 1)
        {
          sub_237AC8A74();
          v96 = v95 + 1;
          v91 = v192;
          v87 = v199;
        }

        *(v87 + 16) = v96;
        v97 = v87 + 16 * v95;
        v98 = v181;
        *(v97 + 32) = v185;
        *(v97 + 40) = v98;
        v90 += v170;
        --v86;
        v92 = v191;
      }

      while (v86);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    *&v199 = 0x7472617473;
    *(&v199 + 1) = 0xE500000000000000;
    MEMORY[0x28223BE20](v99);
    OUTLINED_FUNCTION_32_0();
    v103 = v193;
    v105 = sub_237AC1CCC(sub_237A06CFC, v104, v87);
    v163 = v103;

    if (v105)
    {
      v106 = 0x7472617473;
    }

    else
    {
      v106 = 0;
    }

    if (v105)
    {
      v107 = 0xE500000000000000;
    }

    else
    {
      v107 = 0;
    }

    v169 = v107;
    v170 = v106;
    v108 = sub_237C05D8C();
    v109 = *(v108 + 16);
    if (v109)
    {
      OUTLINED_FUNCTION_39_1(MEMORY[0x277D84F90]);
      v110 = v199;
      v181 = *(v190 + 16);
      v111 = *(v190 + 80);
      v162[1] = v108;
      v112 = v108 + ((v111 + 32) & ~v111);
      v176 = *(v190 + 72);
      v171 = (v190 + 8);
      v113 = v192;
      v190 += 16;
      do
      {
        v114 = v191;
        v181(v191, v112, v113);
        v115 = sub_237C0600C();
        v113 = v192;
        v193 = v115;
        v185 = v116;
        (*v171)(v114, v192);
        *&v199 = v110;
        v117 = *(v110 + 16);
        v118 = v117 + 1;
        if (v117 >= *(v110 + 24) >> 1)
        {
          sub_237AC8A74();
          v118 = v117 + 1;
          v113 = v192;
          v110 = v199;
        }

        *(v110 + 16) = v118;
        v119 = v110 + 16 * v117;
        v120 = v185;
        *(v119 + 32) = v193;
        *(v119 + 40) = v120;
        v112 += v176;
        --v109;
      }

      while (v109);
      v121 = v110;
    }

    else
    {

      v121 = MEMORY[0x277D84F90];
    }

    *&v199 = 6581861;
    *(&v199 + 1) = 0xE300000000000000;
    MEMORY[0x28223BE20](v122);
    OUTLINED_FUNCTION_32_0();
    v123 = v163;
    v125 = sub_237AC1CCC(sub_237A06D78, v124, v121);
    v193 = v123;

    if (v125)
    {
      v126 = 6581861;
    }

    else
    {
      v126 = 0;
    }

    if (v125)
    {
      v127 = 0xE300000000000000;
    }

    else
    {
      v127 = 0;
    }

    v191 = v127;
    v192 = v126;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
    v129 = v188;
    v102 = v189;
    v130 = (v189 + v128[12]);
    v181 = (v189 + v128[16]);
    v185 = (v189 + v128[20]);
    v190 = v189 + v128[24];
    v131 = v182;
    v132 = v183;
    (*(v182 + 16))(v189, v188, v183);
    *v130 = 0x7461506F65646976;
    v130[1] = 0xE900000000000068;
    (*(v131 + 8))(v129, v132);
    OUTLINED_FUNCTION_51_1();
    v134 = v181;
    *v181 = v133 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    v134[1] = 0xE500000000000000;
    v135 = v169;
    v136 = v185;
    *v185 = v170;
    v136[1] = v135;
    v137 = v191;
    v138 = v190;
    *v190 = v192;
    *(v138 + 8) = v137;
    swift_storeEnumTagMultiPayload();
    goto LABEL_58;
  }

  v165 = *(v28 + 16);
  v165(v175, v177, v51);
  v64 = v185;
  sub_237A03E00();
  if (__swift_getEnumTagSinglePayload(v64, 1, v187) == 1)
  {

    sub_2379D9054(v64, &qword_27DE9AF98, &qword_237C0C728);
    sub_2379E8AF0();
    v65 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v66 = 0xD000000000000035;
    v66[1] = 0x8000000237C18010;
    OUTLINED_FUNCTION_52(v65, v66);
    OUTLINED_FUNCTION_40_2();
    v67 = OUTLINED_FUNCTION_36_2();
    v68 = v174;
    (v174)(v67);
    v69 = v177;
    v70 = v51;
LABEL_25:
    v68(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(v223);
    return (v68)(v178, v51);
  }

  v164 = v48;
  v100 = v181;
  sub_237A06D1C(v64, v181);
  v101 = v100;
  v102 = v189;
  sub_237A06D1C(v101, v189);
LABEL_58:
  v139 = OUTLINED_FUNCTION_49_0();
  sub_237AC9A74(v172, &v199, v139, 0xEA00000000006E6FLL);
  if (!v201)
  {
    sub_2379D9054(&v199, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_63:
    v145 = v167;
    swift_storeEnumTagMultiPayload();
LABEL_64:
    v146 = v145[9];
    *(v102 + v145[10]) = v168;
    *(v102 + v146) = v63;
    v147 = OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_60_1(v147, v149 | v148, &v199);

    if (v201)
    {
      OUTLINED_FUNCTION_6_7();
      if (swift_dynamicCast())
      {
        sub_237A050F0(v221, &v199);
        if (v199 != 1)
        {
          OUTLINED_FUNCTION_40_2();
          v150 = v194;
          v151 = v174;
          v174(v179, v194);
          v151(v177, v150);
          __swift_destroy_boxed_opaque_existential_1(v223);
          return (v151)(v178, v150);
        }
      }
    }

    else
    {
      sub_2379D9054(&v199, &qword_27DE9A998, &unk_237C0C100);
    }

    v141 = "is missing training parameters.";
    LODWORD(v193) = 1;
    v143 = v178;
    v144 = v179;
    v142 = 0xD00000000000002DLL;
    goto LABEL_70;
  }

  v165(v175, v178, v194);
  v140 = v184;
  sub_237A04BE0();
  if (__swift_getEnumTagSinglePayload(v140, 1, v186) != 1)
  {
    v161 = v180;
    sub_237A06D1C(v184, v180);
    v145 = v167;
    v102 = v189;
    sub_237A06D1C(v161, v189 + v167[5]);
    goto LABEL_64;
  }

  sub_2379D9054(v184, &qword_27DE9AF90, &qword_237C0C720);
  LODWORD(v193) = 0;
  v141 = "ion Classification algorithm.";
  v142 = 0xD000000000000037;
  v143 = v178;
  v144 = v179;
LABEL_70:
  v152 = v141 | 0x8000000000000000;
  sub_2379E8AF0();
  v153 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v154 = v142;
  v154[1] = v152;
  OUTLINED_FUNCTION_52(v153, v154);
  OUTLINED_FUNCTION_40_2();
  v155 = v194;
  v156 = v174;
  v174(v144, v194);
  v156(v177, v155);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v156(v143, v155);
  OUTLINED_FUNCTION_5_5();
  v157 = v189;
  result = sub_237A06C48(v189, v158);
  if (v193)
  {
    OUTLINED_FUNCTION_13_2();
    return sub_237A06C48(v157 + v159, v160);
  }

  return result;
}

void sub_237A03E00()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v133 - v14;
  v16 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  if (!*(v3 + 16))
  {
    goto LABEL_22;
  }

  v21 = sub_237ACAC78(1684957547, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v21, &v150);
  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_22;
  }

  v145 = v5;
  v5 = v155;
  v23 = v156;
  v24 = v155 == 0x726F746365726964 && v156 == 0xE900000000000079;
  if (v24 || (OUTLINED_FUNCTION_24_4(0x726F746365726964, 0xE900000000000079) & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();
    v5 = v145;
    if (!v151)
    {
      v35 = OUTLINED_FUNCTION_2_11();
      v36(v35);
LABEL_37:

LABEL_38:
      sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
      sub_237AC9A74(v3, &v150, 0x697461746F6E6E61, 0xEF656C69665F6E6FLL);
      if (v151)
      {
        OUTLINED_FUNCTION_8_5();
        if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
        {
          v46 = OUTLINED_FUNCTION_2_11();
          v47(v46);
LABEL_40:

          goto LABEL_23;
        }

        v5 = 0xEC0000006E6D756CLL;
        v25 = v156;
        v144 = v155;
        OUTLINED_FUNCTION_16_3(0x5F6F65646976);
        if (!v151)
        {
          v55 = OUTLINED_FUNCTION_2_11();
          v56(v55);

LABEL_61:

LABEL_62:

          goto LABEL_63;
        }

        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v143 = v25;
          v26 = v156;
          v142 = v155;
          v27 = OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_16_3(v27 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);
          if (v151)
          {
            v141 = v26;
            OUTLINED_FUNCTION_8_5();
            OUTLINED_FUNCTION_26_3();
            OUTLINED_FUNCTION_25_3();
            if (v28)
            {
              v140 = v155;
              v139 = v156;
              OUTLINED_FUNCTION_10_4("start_time_column");
              if (v151)
              {
                OUTLINED_FUNCTION_8_5();
                OUTLINED_FUNCTION_26_3();
                OUTLINED_FUNCTION_21_5();
                v138 = v30;
                if (v24)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v29;
                }

                v137 = v31;
              }

              else
              {
                sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
                v138 = 0;
                v137 = 0;
              }

              OUTLINED_FUNCTION_23_4();

              if (v151)
              {
                OUTLINED_FUNCTION_8_5();
                OUTLINED_FUNCTION_26_3();
                OUTLINED_FUNCTION_21_5();
                v136 = v92;
                if (v24)
                {
                  v93 = 0;
                }

                else
                {
                  v93 = v91;
                }

                v135 = v93;
              }

              else
              {
                sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
                v136 = 0;
                v135 = 0;
              }

              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
              v133 = v94[12];
              v5 = (v20 + v94[16]);
              v95 = (v20 + v94[20]);
              v96 = (v20 + v94[24]);
              v134 = (v20 + v94[28]);
              sub_237C059BC();

              sub_237C059BC();

              v97 = OUTLINED_FUNCTION_2_11();
              v98(v97);
              v99 = v141;
              *v5 = v142;
              v5[1] = v99;
              v100 = v139;
              *v95 = v140;
              v95[1] = v100;
              v101 = v137;
              *v96 = v138;
              v96[1] = v101;
              v102 = v134;
              v103 = v135;
              *v134 = v136;
              v102[1] = v103;
              OUTLINED_FUNCTION_107();
              goto LABEL_87;
            }

            v72 = OUTLINED_FUNCTION_2_11();
            v73(v72);

            goto LABEL_40;
          }

          v70 = OUTLINED_FUNCTION_2_11();
          v71(v70);

          goto LABEL_61;
        }

        v57 = OUTLINED_FUNCTION_2_11();
        v58(v57);

        goto LABEL_52;
      }

      v44 = OUTLINED_FUNCTION_2_11();
      v45(v44);

      goto LABEL_37;
    }

LABEL_22:
    v32 = OUTLINED_FUNCTION_2_11();
    v33(v32);
LABEL_23:

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_2();
  v39 = v5 == (v38 | 2) && v37 == v23;
  if (v39 || (OUTLINED_FUNCTION_24_4(v38 + 2, v37) & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();

    if (!v151)
    {
      v48 = OUTLINED_FUNCTION_2_11();
      v49(v48);
LABEL_63:
      sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_25_3();
    if (v40)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  v50 = OUTLINED_FUNCTION_48_1() | 0x5F64656C00000000;
  v52 = v5 == v50 && v23 == v51;
  if (v52 || (OUTLINED_FUNCTION_24_4(v50, v51) & 1) != 0)
  {

    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_22_4();

    if (!v151)
    {
      v59 = OUTLINED_FUNCTION_2_11();
      v60(v59);
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
LABEL_34:
      sub_237C059BC();

      v41 = OUTLINED_FUNCTION_2_11();
      v42(v41);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
LABEL_35:
      v43 = OUTLINED_FUNCTION_12_5();
      sub_237A06D1C(v43, v5);
      v34 = 0;
      goto LABEL_25;
    }

LABEL_49:
    v53 = OUTLINED_FUNCTION_2_11();
    v54(v53);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_2();
  v62 = v5 == 0xD000000000000016 && v61 == v23;
  if (!v62 && (OUTLINED_FUNCTION_24_4(0xD000000000000016, v61) & 1) == 0)
  {
    OUTLINED_FUNCTION_21_2();
    if (v5 == (v86 + 1) && v85 == v23)
    {
    }

    else
    {
      v88 = OUTLINED_FUNCTION_24_4(v86 + 1, v85);

      if ((v88 & 1) == 0)
      {
        v89 = OUTLINED_FUNCTION_2_11();
        v90(v89);
        goto LABEL_52;
      }
    }

    (*(v8 + 16))(v12, v1, v6);
    LOBYTE(v150) = 1;
    *(&v150 + 1) = v147;
    OUTLINED_FUNCTION_11_4(1);
    v152 = v154;
    OUTLINED_FUNCTION_56_1(v104);
    *v153 = *(v105 + 154);
    *&v153[3] = *(v105 + 157);
    OUTLINED_FUNCTION_33_1(v106);
    *(v107 + 129) = *(v107 + 147);
    OUTLINED_FUNCTION_52_1(*(v107 + 150));
    MLDataTable.init(contentsOf:options:)(v12, v108, v109);
    v5 = 0xEC0000006E6D756CLL;
    v110 = v155;
    v111 = v156;
    OUTLINED_FUNCTION_16_3(0x5F6F65646976);
    if (!v151)
    {
      v120 = OUTLINED_FUNCTION_2_11();
      v121(v120);
      OUTLINED_FUNCTION_62_0();
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v112 = v156;
      v144 = v155;
      v113 = OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_16_3(v113 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);
      if (!v151)
      {
        v124 = OUTLINED_FUNCTION_2_11();
        v125(v124);
        OUTLINED_FUNCTION_62_0();

        goto LABEL_62;
      }

      OUTLINED_FUNCTION_8_5();
      if (OUTLINED_FUNCTION_26_3())
      {
        v143 = v155;
        v142 = v156;
        OUTLINED_FUNCTION_10_4("start_time_column");
        if (v151)
        {
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_21_5();
          v141 = v115;
          if (v24)
          {
            v5 = 0;
          }

          else
          {
            v5 = v114;
          }
        }

        else
        {
          sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
          v141 = 0;
          v5 = 0;
        }

        OUTLINED_FUNCTION_23_4();

        v128 = OUTLINED_FUNCTION_2_11();
        v129(v128);
        if (v151)
        {
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_21_5();
          if (v24)
          {
            v131 = 0;
          }
        }

        else
        {
          sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
          v130 = 0;
          v131 = 0;
        }

        LOBYTE(v155) = v111;
        *v20 = v110;
        *(v20 + 8) = v111;
        *(v20 + 16) = v144;
        *(v20 + 24) = v112;
        v132 = v142;
        *(v20 + 32) = v143;
        *(v20 + 40) = v132;
        *(v20 + 48) = v141;
        *(v20 + 56) = v5;
        *(v20 + 64) = v130;
        *(v20 + 72) = v131;
        OUTLINED_FUNCTION_107();
        goto LABEL_87;
      }

      v126 = OUTLINED_FUNCTION_2_11();
      v127(v126);
      OUTLINED_FUNCTION_62_0();
    }

    else
    {
      v122 = OUTLINED_FUNCTION_2_11();
      v123(v122);
      OUTLINED_FUNCTION_62_0();
    }

LABEL_52:

LABEL_64:
    OUTLINED_FUNCTION_25_3();
    goto LABEL_25;
  }

  (*(v8 + 16))(v15, v1, v6);
  LOBYTE(v150) = 1;
  *(&v150 + 1) = v154;
  OUTLINED_FUNCTION_11_4(1);
  v152 = *(v63 + 154);
  OUTLINED_FUNCTION_56_1(v64);
  *v153 = *(v65 + 147);
  *&v153[3] = *(v65 + 150);
  OUTLINED_FUNCTION_33_1(v66);
  *(v67 + 129) = *v149;
  OUTLINED_FUNCTION_52_1(*&v149[3]);
  MLDataTable.init(contentsOf:options:)(v15, v68, v69);
  v147 = v155;
  v148 = v156;
  OUTLINED_FUNCTION_50_0();
  sub_237ACECE8(&v147, v74, v75);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_10_4("session_id_column");
  if (!v151)
  {
LABEL_100:

    v116 = OUTLINED_FUNCTION_2_11();
    v117(v116);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8_5();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_102;
  }

  v77 = v155;
  v76 = v156;
  v78 = OUTLINED_FUNCTION_48_1();
  sub_237AC9A74(v3, &v150, v78 | 0x6F635F6C00000000, 0xEC0000006E6D756CLL);
  if (!v151)
  {

    goto LABEL_100;
  }

  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {

LABEL_102:

    v118 = OUTLINED_FUNCTION_2_11();
    v119(v118);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_24;
  }

  v5 = v155;
  v79 = v156;
  sub_237AC9A74(v3, &v150, 0x5F65727574616566, 0xEE006E6D756C6F63);

  v80 = OUTLINED_FUNCTION_2_11();
  v81(v80);
  if (v151)
  {
    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v82 = v155;
      v83 = v156;
      v84 = v148;
      v146 = v148;
      *v20 = v147;
      *(v20 + 8) = v84;
      *(v20 + 16) = v77;
      *(v20 + 24) = v76;
      *(v20 + 32) = v5;
      *(v20 + 40) = v79;
      *(v20 + 48) = v82;
      *(v20 + 56) = v83;
      OUTLINED_FUNCTION_107();
LABEL_87:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_25_3();
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();

    sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
  }

  OUTLINED_FUNCTION_25_3();
LABEL_24:
  v34 = 1;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v5, v34, 1, v16);
  OUTLINED_FUNCTION_150();
}

void sub_237A04BE0()
{
  OUTLINED_FUNCTION_153();
  v55 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF98, &qword_237C0C728);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_237AC9A74(v2, &v58, 1684957547, 0xE400000000000000);
  if (!v61)
  {
    sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v53 = v4;
  v54 = v21;
  v27 = v56;
  v26 = v57;
  v28 = v56 == 1701736302 && v57 == 0xE400000000000000;
  if (!v28 && (OUTLINED_FUNCTION_38_0(1701736302, 0xE400000000000000) & 1) == 0)
  {
    v34 = v27 == 0x756F735F61746164 && v26 == 0xEB00000000656372;
    if (v34 || (OUTLINED_FUNCTION_38_0(0x756F735F61746164, 0xEB00000000656372) & 1) != 0)
    {

      v35 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(v2, v37, v35, v36);

      v4 = v53;
      v21 = v54;
      if (!v61)
      {
        v39 = OUTLINED_FUNCTION_9_4();
        v40(v39);
        sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if (OUTLINED_FUNCTION_26_3())
      {
        v38 = v55;
        (*(v7 + 16))(v11, v55, v5);
        sub_237A03E00();
        (*(v7 + 8))(v38, v5);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
        {
          sub_2379D9054(v15, &qword_27DE9AF98, &qword_237C0C728);
          v31 = 1;
          v21 = v54;
          goto LABEL_15;
        }

        sub_237A06D1C(v15, v20);
        sub_237A06D1C(v20, v25);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v27 == 0x74696C7073 && v26 == 0xE500000000000000)
    {
    }

    else
    {
      v42 = OUTLINED_FUNCTION_38_0(0x74696C7073, 0xE500000000000000);

      if ((v42 & 1) == 0)
      {

        v4 = v53;
        v21 = v54;
        goto LABEL_13;
      }
    }

    v43 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(v2, v45, v43, v44);

    v21 = v54;
    if (!v61)
    {
      v50 = OUTLINED_FUNCTION_9_4();
      v51(v50);
      sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
      v31 = 1;
      v4 = v53;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    v46 = OUTLINED_FUNCTION_26_3();
    v4 = v53;
    if (v46)
    {
      sub_237A283AC(v56, &v58);
      v47 = OUTLINED_FUNCTION_9_4();
      v48(v47);
      if ((v60 & 1) == 0)
      {
        v49 = v59;
        *v25 = v58;
        *(v25 + 16) = v49;
        *(v25 + 17) = HIBYTE(v49) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v31 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v32 = OUTLINED_FUNCTION_9_4();
    v33(v32);
    goto LABEL_14;
  }

  v29 = OUTLINED_FUNCTION_9_4();
  v30(v29);
  v4 = v53;
LABEL_9:
  v21 = v54;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_237A06D1C(v25, v4);
  v31 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v31, 1, v21);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A050F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = OUTLINED_FUNCTION_47_1(), v5 = sub_237ACAC78(v4, 0xE90000000000006DLL), (v6 & 1) != 0))
  {
    sub_2379FED88(*(a1 + 56) + 32 * v5, v13);

    result = OUTLINED_FUNCTION_26_3();
    if (result)
    {
      if (v11 == 7234407 && v12 == 0xE300000000000000)
      {

        v10 = 0;
        goto LABEL_12;
      }

      v9 = sub_237C0929C();

      v10 = 0;
      if (v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v10 = 1;
LABEL_12:
  *a2 = v10;
  return result;
}

void sub_237A051E4(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v84 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v65 = v6 - v5;
  v7 = OUTLINED_FUNCTION_41_0();
  v70 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v69 = v10 - v9;
  OUTLINED_FUNCTION_41_0();
  v78 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v76 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v66 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v64 - v18;
  v19 = OUTLINED_FUNCTION_41_0();
  v81 = type metadata accessor for MLHandActionClassifier.ModelParameters(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v72 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6B0;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  sub_237A05910();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v80 = v29;
  *(inited + 48) = v28;
  *(inited + 72) = v29;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v30 = _s20PersistentParametersVMa(0);
  v68 = v30[5];
  sub_237A06CA0(v2 + v68, v25);
  v31 = *(v2 + v30[6]);
  v79 = *(v2 + v30[7]);
  v32 = v30[9];
  v33 = *(v2 + v30[8]);
  v67 = v30[10];
  v34 = *(v2 + v67);
  v73 = v2;
  v35 = *(v2 + v32);
  *&v25[*(v81 + 32)] = v34;
  v36 = sub_237A06100();
  sub_237A06C48(v25, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v36;
  v37 = v80;
  *(inited + 120) = v80;
  *(inited + 128) = 0x69735F6863746162;
  v38 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 144) = v31;
  *(inited + 168) = v38;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 192) = v33;
  *(inited + 216) = v38;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 240) = v79;
  *(inited + 264) = v38;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = 0x8000000237C17EA0;
  *(inited + 288) = v34;
  *(inited + 312) = v38;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  *(inited + 336) = sub_237A063C4();
  *(inited + 360) = v37;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = MEMORY[0x277D839F8];
  *(inited + 384) = v35;
  OUTLINED_FUNCTION_43_1();
  sub_237C085AC();
  v39 = objc_opt_self();
  OUTLINED_FUNCTION_43_1();
  v40 = sub_237C0855C();

  v82 = 0;
  v41 = [v39 dataWithPropertyList:v40 format:200 options:0 error:&v82];

  v42 = v82;
  if (v41)
  {
    sub_237C05B7C();

    OUTLINED_FUNCTION_21_2();
    v43 = v74;
    sub_237C05A2C();
    v44 = v75;
    sub_237C05B9C();
    if (v44)
    {
      (*(v76 + 8))(v43, v78);
LABEL_4:
      v45 = OUTLINED_FUNCTION_55_1();
      sub_2379E86D4(v45, v46);
      return;
    }

    v48 = v43;
    v49 = v78;
    v80 = *(v76 + 8);
    v80(v48, v78);
    sub_237A06458();
    v50 = v83;
    if (v83 != 255)
    {
      v79 = v82;
      v83 &= 1u;
      v51 = v71;
      OUTLINED_FUNCTION_19_5();
      sub_237C05A2C();
      MLDataTable.write(to:)(v51);
      v80(v51, v49);
      sub_2379DBC84(v79, v50);
    }

    v53 = v72;
    v52 = v73;
    sub_237A06CA0(v73 + v68, v72);
    *(v53 + *(v81 + 32)) = *(v52 + v67);
    sub_237A06CA0(v53, v69);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = OUTLINED_FUNCTION_12_5();
      v55 = v65;
      sub_237A06D1C(v54, v65);
      sub_237A06458();
      OUTLINED_FUNCTION_5_5();
      sub_237A06C48(v55, v56);
      v57 = v82;
      v58 = v83;
    }

    else
    {
      v57 = 0;
      v58 = 255;
    }

    OUTLINED_FUNCTION_13_2();
    sub_237A06C48(v72, v59);
    if (v58 == 255)
    {
      goto LABEL_4;
    }

    v82 = v57;
    v83 = v58 & 1;
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_49_0();
    v61 = v60;
    sub_237C05A2C();
    MLDataTable.write(to:)(v61);
    v80(v61, v78);
    v62 = OUTLINED_FUNCTION_55_1();
    sub_2379E86D4(v62, v63);
    sub_2379DBC84(v57, v58);
  }

  else
  {
    v47 = v42;
    sub_237C0593C();

    swift_willThrow();
  }
}

void sub_237A05910()
{
  OUTLINED_FUNCTION_153();
  v2 = v0;
  v3 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_3_3();
  type metadata accessor for MLHandActionClassifier.DataSource(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_14_2();
  sub_237A06CA0(v2, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = OUTLINED_FUNCTION_31_1();
      v71(v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v61 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v60 = MEMORY[0x277D837D0];
      v61[3].n128_u64[0] = 0xD000000000000013;
      v61[3].n128_u64[1] = 0x8000000237C17F40;
      goto LABEL_11;
    case 2u:
      v57 = OUTLINED_FUNCTION_31_1();
      v58(v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v60 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_51_1();
      v61[3].n128_u64[0] = v63 | 0x5F64656C00000000;
      v61[3].n128_u64[1] = 0xED000073656C6966;
LABEL_11:
      v61[4].n128_u64[1] = v60;
      v61[5].n128_u64[0] = 1752457584;
      v61[5].n128_u64[1] = v62;
      v72 = sub_237C05A9C();
      inited[7].n128_u64[1] = v60;
      inited[6].n128_u64[0] = v72;
      inited[6].n128_u64[1] = v73;
      sub_237C085AC();
      (*(v5 + 8))(v9, v3);
      break;
    case 3u:
      v64 = *(v18 + 16);
      v65 = *(v18 + 24);
      v66 = *(v18 + 32);
      v67 = *(v18 + 40);
      v68 = *(v18 + 48);
      v69 = *(v18 + 56);
      sub_2379DBC9C(*v18, *(v18 + 8));
      goto LABEL_13;
    case 4u:
      v48 = *v18;
      v49 = *(v18 + 8);
      v50 = *(v18 + 16);
      v51 = *(v18 + 24);
      v53 = *(v18 + 32);
      v52 = *(v18 + 40);
      v54 = *(v18 + 48);
      v55 = *(v18 + 56);
      v56 = *(v18 + 72);
      v105 = *(v18 + 64);
      sub_2379DBC9C(v48, v49);
      goto LABEL_15;
    case 5u:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v75 = (v18 + v74[12]);
      v64 = *v75;
      v65 = v75[1];
      v76 = (v18 + v74[16]);
      v66 = *v76;
      v67 = v76[1];
      v77 = (v18 + v74[20]);
      v68 = *v77;
      v69 = v77[1];
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v78 + 8))(v18);
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v79 = swift_initStackObject();
      v80 = OUTLINED_FUNCTION_0_8(v79, xmmword_237C0BC00);
      v81 = MEMORY[0x277D837D0];
      v80[3].n128_u64[0] = 0xD000000000000016;
      v80[3].n128_u64[1] = 0x8000000237C17F00;
      v80[4].n128_u64[1] = v81;
      v80[5].n128_u64[0] = 0xD000000000000011;
      v80[5].n128_u64[1] = 0x8000000237C17F20;
      v80[6].n128_u64[0] = v64;
      v80[6].n128_u64[1] = v65;
      OUTLINED_FUNCTION_51_1();
      *(v83 + 120) = v84;
      *(v83 + 128) = v82 | 0x6F635F6C00000000;
      *(v83 + 136) = 0xEC0000006E6D756CLL;
      *(v83 + 144) = v66;
      *(v83 + 152) = v67;
      *(v83 + 168) = v84;
      strcpy((v83 + 176), "feature_column");
      *(v83 + 216) = v84;
      *(v83 + 191) = -18;
      *(v83 + 192) = v68;
      *(v83 + 200) = v69;
      sub_237C085AC();
      break;
    case 6u:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v86 = (v18 + v85[12]);
      v50 = *v86;
      v51 = v86[1];
      v87 = (v18 + v85[16]);
      v53 = *v87;
      v52 = v87[1];
      v88 = (v18 + v85[20]);
      v54 = *v88;
      v55 = v88[1];
      v89 = (v18 + v85[24]);
      v56 = v89[1];
      v105 = *v89;
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v90 + 8))(v18);
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v91 = swift_initStackObject();
      v92 = OUTLINED_FUNCTION_0_8(v91, xmmword_237C0B680);
      v93 = MEMORY[0x277D837D0];
      v92[3].n128_u64[0] = 0xD000000000000012;
      v92[3].n128_u64[1] = 0x8000000237C17EC0;
      OUTLINED_FUNCTION_53_1();
      *(v94 + 72) = v93;
      *(v94 + 80) = v95;
      *(v94 + 88) = 0xEC0000006E6D756CLL;
      *(v94 + 96) = v50;
      *(v94 + 104) = v51;
      *(v94 + 120) = v93;
      strcpy((v94 + 128), "label_column");
      *(v94 + 168) = v93;
      *(v94 + 141) = 0;
      *(v94 + 142) = -5120;
      *(v94 + 144) = v53;
      *(v94 + 152) = v52;
      v96 = sub_237C085AC();
      if (v55)
      {
        v110 = v93;
        v108 = v54;
        v109 = v55;
        OUTLINED_FUNCTION_27_2();
        v106 = v96;
        sub_237B40B6C(v107, 0xD000000000000011, 0x8000000237C17EE0);
      }

      if (v56)
      {
        v110 = v93;
        v108 = v105;
        v109 = v56;
        v97 = OUTLINED_FUNCTION_27_2();
        OUTLINED_FUNCTION_18_5(v97);
      }

      break;
    default:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v20 = v19[12];
      v21 = (v18 + v19[16]);
      v22 = *v21;
      v101 = v21[1];
      v102 = v22;
      v23 = (v18 + v19[20]);
      v24 = *v23;
      v103 = v23[1];
      v104 = v24;
      v25 = (v18 + v19[24]);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v18 + v19[28]);
      v30 = *v28;
      v29 = v28[1];
      v99 = v26;
      v100 = v30;
      v105 = v29;
      v31 = *(v5 + 32);
      v32 = OUTLINED_FUNCTION_55_1();
      v31(v32);
      (v31)(v12, v18 + v20, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v33 = swift_allocObject();
      v34 = OUTLINED_FUNCTION_0_8(v33, xmmword_237C0C6C0);
      v35 = MEMORY[0x277D837D0];
      v34[3].n128_u64[0] = 0x726F746365726964;
      v34[3].n128_u64[1] = 0xE900000000000079;
      v34[4].n128_u64[1] = v35;
      v34[5].n128_u64[0] = 1752457584;
      v34[5].n128_u64[1] = v36;
      v33[6].n128_u64[0] = sub_237C05A9C();
      v33[6].n128_u64[1] = v37;
      v33[7].n128_u64[1] = v35;
      v33[8].n128_u64[0] = 0x697461746F6E6E61;
      v33[8].n128_u64[1] = 0xEF656C69665F6E6FLL;
      v33[10].n128_u64[1] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33[9]);
      (*(v5 + 16))(boxed_opaque_existential_0, v12, v3);
      OUTLINED_FUNCTION_53_1();
      v33[11].n128_u64[0] = v39;
      v33[11].n128_u64[1] = 0xEC0000006E6D756CLL;
      v40 = v101;
      v33[12].n128_u64[0] = v102;
      v33[12].n128_u64[1] = v40;
      OUTLINED_FUNCTION_51_1();
      v33[13].n128_u64[1] = v35;
      v33[14].n128_u64[0] = v41 | 0x6F635F6C00000000;
      v33[16].n128_u64[1] = v35;
      v42 = v103;
      v43 = v104;
      v33[14].n128_u64[1] = v44;
      v33[15].n128_u64[0] = v43;
      v33[15].n128_u64[1] = v42;
      v45 = sub_237C085AC();
      if (v27)
      {
        v110 = v35;
        v108 = v99;
        v109 = v27;
        OUTLINED_FUNCTION_27_2();
        v106 = v45;
        sub_237B40B6C(v107, 0xD000000000000011, 0x8000000237C17EE0);
      }

      if (v105)
      {
        v110 = v35;
        v108 = v100;
        v109 = v105;
        v46 = OUTLINED_FUNCTION_27_2();
        OUTLINED_FUNCTION_18_5(v46);
      }

      v47 = *(v5 + 8);
      v47(v12, v3);
      v47(v1, v3);
      break;
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A06100()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_237A06CA0(v1, v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v19 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
    OUTLINED_FUNCTION_34_0(v19, 0x74696C7073);
    v20 = sub_237A28200();
    inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    inited[6].n128_u64[0] = v20;
    return sub_237C085AC();
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v21 = swift_initStackObject();
    v22 = OUTLINED_FUNCTION_0_8(v21, xmmword_237C0B660);
    v22[4].n128_u64[1] = MEMORY[0x277D837D0];
    v22[3].n128_u64[0] = 1701736302;
    v22[3].n128_u64[1] = v23;
    return sub_237C085AC();
  }

  sub_237A06D1C(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v12 = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_0_8(v12, xmmword_237C0B670);
  OUTLINED_FUNCTION_34_0(v13, 0x756F735F61746164);
  sub_237A05910();
  v15 = v14;
  v12[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v12[6].n128_u64[0] = v15;
  v16 = sub_237C085AC();
  OUTLINED_FUNCTION_5_5();
  sub_237A06C48(v6, v17);
  return v16;
}

uint64_t sub_237A063C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v1 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x687469726F676C61;
  *(inited + 40) = 0xE90000000000006DLL;
  *(inited + 72) = v1;
  *(inited + 48) = 7234407;
  *(inited + 56) = 0xE300000000000000;
  return sub_237C085AC();
}

void sub_237A06458()
{
  OUTLINED_FUNCTION_153();
  v4 = v0;
  v85 = 0;
  v86 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v80 = v7;
  v81 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v78 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v79 = v12;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v82 = v14;
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_3();
  v84 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_44_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v74 - v28;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_14_2();
  sub_237A06CA0(v4, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_237C05ADC();
      OUTLINED_FUNCTION_4();
      (*(v34 + 8))(v33);
      goto LABEL_12;
    case 3u:
      v42 = *v33;
      v43 = *(v33 + 8);

      v89 = v42;
      v90 = v43;
      sub_2379DBCF4(v42, v43);
      OUTLINED_FUNCTION_50_0();
      v44 = v85;
      sub_237ACECE8(&v89, v45, 0xE900000000000073);
      if (v44)
      {
      }

      sub_2379DBC9C(v42, v43);
      goto LABEL_16;
    case 4u:
      v35 = *v33;
      v36 = *(v33 + 8);

      v37 = v86;
      *v86 = v35;
      *(v37 + 8) = v36;
      goto LABEL_22;
    case 5u:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v47 = (v33 + *(v46 + 80));
      v48 = *v47;
      v49 = v47[1];
      v50 = v20;
      v51 = v48;
      v77 = v50;
      v52 = v84;
      (*(v50 + 32))(v29, v33, v84);
      v53 = v49;
      sub_237C05DFC();
      v54 = sub_237C05FFC();
      v55 = *(v82 + 8);
      v55(v1, v83);
      if (v54 == MEMORY[0x277D837D0])
      {
        v75 = v55;
        v63 = v78;
        sub_237C05DEC();
        v64 = v79;
        v76 = v51;
        v58 = v85;
        sub_237B62FE0(v79);
        if (v58)
        {
          v56 = v76;

          (*(v80 + 8))(v63, v81);
          __swift_storeEnumTagSinglePayload(v64, 1, 1, v83);
          sub_2379D9054(v64, &qword_27DE9AF88, &unk_237C0C700);
          v58 = 0;
        }

        else
        {
          (*(v80 + 8))(v63, v81);
          v67 = v83;
          __swift_storeEnumTagSinglePayload(v64, 0, 1, v83);
          v68 = v82;
          (*(v82 + 32))(v17, v64, v67);
          (*(v68 + 16))(v1, v17, v67);

          v56 = v76;
          sub_237C05E0C();
          v75(v17, v67);
        }

        v57 = v86;
        v52 = v84;
        v53 = v49;
      }

      else
      {
        v56 = v51;
        v58 = v85;
        v57 = v86;
      }

      (*(v77 + 16))(v3, v29, v52);
      sub_237A70684(v3, 0, &v87);
      if (v58)
      {

        v69 = OUTLINED_FUNCTION_30_3();
        v70(v69);
        *v57 = 0;
        *(v57 + 8) = -1;
      }

      else
      {
        v89 = v87;
        v90 = v88;
        sub_237ACECE8(&v89, v56, v53);
        v71 = OUTLINED_FUNCTION_30_3();
        v72(v71);

        v73 = v90;
        *v57 = v89;
        *(v57 + 8) = v73;
      }

      goto LABEL_22;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v59 = v20;
      v60 = v84;
      (*(v20 + 32))(v2, v33, v84);
      (*(v20 + 16))(v24, v2, v60);
      v61 = v85;
      sub_237A70684(v24, 0, &v89);
      if (v61)
      {

        (*(v59 + 8))(v2, v60);
LABEL_12:
        v62 = v86;
        *v86 = 0;
        *(v62 + 8) = -1;
      }

      else
      {
        (*(v59 + 8))(v2, v60);
LABEL_16:
        v65 = v90;
        v66 = v86;
        *v86 = v89;
        *(v66 + 8) = v65;
      }

LABEL_22:
      OUTLINED_FUNCTION_150();
      return;
    default:
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370) + 48);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v39 = sub_237C05ADC();
      OUTLINED_FUNCTION_4();
      v41 = *(v40 + 8);
      v41(v33 + v38, v39);
      v41(v33, v39);
      goto LABEL_12;
  }
}

uint64_t sub_237A06C48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237A06CA0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237A06D1C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

__n128 *OUTLINED_FUNCTION_0_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957547;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

double OUTLINED_FUNCTION_10_4@<D0>(uint64_t a1@<X8>)
{

  return sub_237AC9A74(v1, (v2 - 272), 0xD000000000000011, (a1 - 32) | 0x8000000000000000);
}

void OUTLINED_FUNCTION_11_4(char a1@<W8>)
{
  *(v2 - 268) = v1;
  *(v2 - 264) = 44;
  *(v2 - 256) = 0xE100000000000000;
  *(v2 - 248) = 0;
  *(v2 - 240) = 0xE000000000000000;
  *(v2 - 232) = 92;
  *(v2 - 224) = 0xE100000000000000;
  *(v2 - 216) = a1;
}

void OUTLINED_FUNCTION_15_4()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 288);

  sub_2379DBC9C(v2, v3);
}

double OUTLINED_FUNCTION_16_3(uint64_t a1)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0x6F63000000000000;

  return sub_237AC9A74(v1, (v3 - 272), v5, v2);
}

_OWORD *OUTLINED_FUNCTION_18_5(uint64_t a1)
{
  *(v1 + 544) = v2;

  return sub_237B40B6C(v1 + 552, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL);
}

double OUTLINED_FUNCTION_22_4()
{

  return sub_237AC9A74(v0, (v1 - 272), 1752457584, 0xE400000000000000);
}

double OUTLINED_FUNCTION_23_4()
{

  return sub_237AC9A74(v0, (v1 - 272), 0x656D69745F646E65, 0xEF6E6D756C6F635FLL);
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  sub_2379DAD24((v0 + 584), (v0 + 552));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_2()
{
}

void OUTLINED_FUNCTION_33_1(char a1@<W8>)
{
  *(v3 - 184) = v1;
  *(v3 - 176) = 10;
  *(v3 - 168) = v2;
  *(v3 - 160) = 0;
  *(v3 - 152) = 0;
  *(v3 - 144) = a1;
}

void *OUTLINED_FUNCTION_34_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[6] = a2;
  result[7] = v3;
  result[9] = v4;
  result[10] = 1635017060;
  result[11] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

void OUTLINED_FUNCTION_39_1(uint64_t a1@<X8>)
{
  *(v1 + 304) = a1;

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_2379E86D4(v0, v1);
}

void OUTLINED_FUNCTION_56_1(char a1@<W8>)
{
  *(v3 - 212) = v1;
  *(v3 - 208) = 34;
  *(v3 - 200) = v2;
  *(v3 - 192) = a1;
}

double OUTLINED_FUNCTION_60_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 88);

  return sub_237AC9A74(v5, a3, a1, a2);
}

void OUTLINED_FUNCTION_62_0()
{

  sub_2379DBC9C(v1, v0);
}

uint64_t type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9AFA0;
  if (!qword_27DE9AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A07268@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A074CC(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x237A074BCLL);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237A074CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A07530(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A074CC(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

uint64_t sub_237A079CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237A07A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  v9 = type metadata accessor for MLHandPoseClassifier.DataSource(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v11 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t _s20PersistentParametersVMa_0(uint64_t a1)
{
  result = qword_27DE9AFB0;
  if (!qword_27DE9AFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A07B64(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A07C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v161[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC0, &qword_237C0C780);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v124 = v6;
  v7 = OUTLINED_FUNCTION_41_0();
  v127 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v123 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC8, &qword_237C0C788);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  v126 = v13;
  v14 = OUTLINED_FUNCTION_41_0();
  v129 = type metadata accessor for MLHandPoseClassifier.DataSource(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v125 = v17 - v16;
  OUTLINED_FUNCTION_41_0();
  v132 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v128 = v21 - v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v130 = &v109 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v109 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v109 - v32;
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237C05A2C();
  v34 = sub_237C05B1C();
  if (v2)
  {
    v36 = v132;
    v37 = *(v19 + 8);
    v37(a1, v132);
    v37(v30, v36);
    return (v37)(v33, v36);
  }

  v39 = v34;
  v40 = v35;
  v121 = v33;
  v122 = a1;
  v115 = v27;
  v116 = 0;
  v114 = v19;
  v43 = *(v19 + 8);
  v41 = v19 + 8;
  v42 = v43;
  v44 = v132;
  v43(v30, v132);
  v45 = objc_opt_self();
  v46 = sub_237C05B6C();
  *&v137 = 0;
  v47 = [v45 propertyListWithData:v46 options:0 format:0 error:&v137];

  v48 = v137;
  if (!v47)
  {
    v71 = v48;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v39, v40);
    v42(v122, v44);
    return (v42)(v121, v44);
  }

  v118 = v39;
  v119 = v40;
  v120 = v41;
  v117 = v42;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v161, &v137);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8AF0();
    v72 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v73 = 0xD000000000000037;
    v73[1] = 0x8000000237C17D40;
    OUTLINED_FUNCTION_23_3(v72, v73);
    swift_willThrow();
    sub_2379E86D4(v118, v119);
    v74 = v122;
LABEL_20:
    v77 = v117;
    v117(v74, v44);
    __swift_destroy_boxed_opaque_existential_1(v161);
    return v77(v121, v44);
  }

  v50 = v159;
  sub_237AC9A74(v159, &v137, 0x69735F6863746162, 0xEA0000000000657ALL);
  v51 = 0xD00000000000002BLL;
  v52 = v122;
  if (!v139)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v53 = v159;
  sub_237AC9A74(v50, &v137, 0x726574695F78616DLL, 0xEE00736E6F697461);
  if (!v139)
  {
LABEL_17:

    sub_2379D9054(&v137, &qword_27DE9A998, &unk_237C0C100);
LABEL_19:
    sub_2379E8AF0();
    v75 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v76 = 0xD00000000000003FLL;
    v76[1] = 0x8000000237C17F60;
    OUTLINED_FUNCTION_23_3(v75, v76);
    swift_willThrow();
    sub_2379E86D4(v118, v119);
    v74 = v52;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v54 = v159;
  sub_237AC9A74(v50, &v137, 0xD000000000000014, 0x8000000237C17EA0);
  if (!v139)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v112 = v49;
  v55 = _s20PersistentParametersVMa_0(0);
  v56 = *(v55 + 24);
  v57 = *(v55 + 28);
  v110 = v159;
  v111 = v55;
  v58 = v54;
  v59 = v50;
  v60 = v131;
  *(v131 + v56) = v53;
  *(v60 + v57) = v58;
  v61 = v115;
  OUTLINED_FUNCTION_19_5();
  sub_237C05A2C();
  v113 = v59;
  sub_237AC9A74(v59, &v159, 0x676E696E69617274, 0xE800000000000000);
  if (v160)
  {
    v62 = swift_dynamicCast();
    v63 = v114;
    v64 = v130;
    if (v62)
    {
      v65 = OUTLINED_FUNCTION_32_1();
      v130 = v66;
      (v66)(v65);
      v67 = v126;
      sub_237A088D0();
      if (__swift_getEnumTagSinglePayload(v67, 1, v129) == 1)
      {

        sub_2379D9054(v67, &qword_27DE9AFC8, &qword_237C0C788);
        sub_2379E8AF0();
        v68 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v69 = 0xD000000000000035;
        v69[1] = 0x8000000237C18010;
        OUTLINED_FUNCTION_23_3(v68, v69);
        swift_willThrow();
        sub_2379E86D4(v118, v119);
        v70 = v117;
        v117(v122, v61);
        v70(v59, v61);
        __swift_destroy_boxed_opaque_existential_1(v161);
        return (v70)(v121, v61);
      }

      v86 = v67;
      v87 = v125;
      sub_237A0B204(v86, v125);
      sub_237A0B204(v87, v60);
      v51 = 0xD00000000000002BLL;
      goto LABEL_26;
    }
  }

  else
  {
    sub_2379D9054(&v159, &qword_27DE9A998, &unk_237C0C100);
    v63 = v114;
    v64 = v130;
  }

  v78 = *(v63 + 16);
  v79 = OUTLINED_FUNCTION_32_1();
  (v78)(v79);
  LOBYTE(v137) = 1;
  *(&v137 + 1) = *v136;
  DWORD1(v137) = *&v136[3];
  *(&v137 + 1) = 44;
  v138 = 0xE100000000000000;
  v139 = 0;
  v140 = 0xE000000000000000;
  v141 = 92;
  v142 = 0xE100000000000000;
  v143 = 1;
  *v144 = *v135;
  *&v144[3] = *&v135[3];
  v145 = 34;
  v146 = 0xE100000000000000;
  v147 = 1;
  *v148 = *v134;
  *&v148[3] = *&v134[3];
  v149 = &unk_284ABEBF0;
  v150 = 10;
  v151 = 0xE100000000000000;
  v152 = 0;
  v153 = 0;
  v154 = 1;
  *v155 = *v133;
  *&v155[3] = *&v133[3];
  v156 = 0;
  v80 = v116;
  MLDataTable.init(contentsOf:options:)(v64, &v137, &v157);
  v81 = v121;
  v116 = v80;
  if (v80)
  {
    sub_2379E86D4(v118, v119);

    v82 = v81;
    v83 = v117;
    v117(v122, v61);
    v83(v59, v61);
    __swift_destroy_boxed_opaque_existential_1(v161);
    return (v83)(v82, v61);
  }

  v130 = v78;
  v84 = v158;
  *v60 = v157;
  *(v60 + 8) = v84;
  *(v60 + 16) = 0x7461506567616D69;
  *(v60 + 24) = 0xE900000000000068;
  OUTLINED_FUNCTION_51_1();
  *(v60 + 32) = v85 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
  *(v60 + 40) = 0xE500000000000000;
  swift_storeEnumTagMultiPayload();
LABEL_26:
  v88 = OUTLINED_FUNCTION_49_0();
  sub_237AC9A74(v113, &v137, v88, 0xEA00000000006E6FLL);
  v89 = v111;
  if (!v139)
  {
    sub_2379D9054(&v137, &qword_27DE9A998, &unk_237C0C100);
    v91 = v117;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_7_6();
  v90 = swift_dynamicCast();
  v91 = v117;
  if ((v90 & 1) == 0)
  {
LABEL_31:
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  (v130)(v128, v121, v44);
  v92 = v124;
  sub_237A09478();
  if (__swift_getEnumTagSinglePayload(v92, 1, v127) == 1)
  {

    sub_2379D9054(v92, &qword_27DE9AFC0, &qword_237C0C780);
    v93 = 0;
    v94 = "ion Classification algorithm.";
    v51 = 0xD000000000000037;
LABEL_37:
    v99 = v121;
    goto LABEL_39;
  }

  v107 = v92;
  v108 = v123;
  sub_237A0B204(v107, v123);
  v89 = v111;
  sub_237A0B204(v108, v60 + *(v111 + 20));
LABEL_32:
  *(v60 + *(v89 + 32)) = v110;
  v95 = OUTLINED_FUNCTION_47_1();
  sub_237AC9A74(v113, &v137, v95, v97 | v96);

  if (!v139)
  {
    sub_2379D9054(&v137, &qword_27DE9A998, &unk_237C0C100);
    v94 = "labeled_image_data";
    v93 = 1;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_7_6();
  v98 = swift_dynamicCast();
  v99 = v121;
  if (v98)
  {
    sub_237A050F0(v159, &v137);
    if (v137 != 1)
    {
      sub_2379E86D4(v118, v119);
      v91(v122, v44);
      v91(v115, v44);
      __swift_destroy_boxed_opaque_existential_1(v161);
      return (v91)(v99, v44);
    }

    v94 = "labeled_image_data";
    v93 = 1;
  }

  else
  {
    v94 = "labeled_image_data";
    v93 = 1;
  }

LABEL_39:
  v100 = v94 | 0x8000000000000000;
  sub_2379E8AF0();
  v101 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v102 = v51;
  v102[1] = v100;
  OUTLINED_FUNCTION_23_3(v101, v102);
  swift_willThrow();
  sub_2379E86D4(v118, v119);
  v91(v122, v44);
  v91(v115, v44);
  __swift_destroy_boxed_opaque_existential_1(v161);
  v91(v99, v44);
  OUTLINED_FUNCTION_5_6();
  v103 = v131;
  result = sub_237A0B150(v131, v104);
  if (v93)
  {
    OUTLINED_FUNCTION_12_6();
    return sub_237A0B150(v103 + v105, v106);
  }

  return result;
}

void sub_237A088D0()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v110 - v14;
  v16 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  if (!*(v3 + 16))
  {
    goto LABEL_19;
  }

  v21 = sub_237ACAC78(1684957547, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v21, &v121);
  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_19;
  }

  v116 = v5;
  v5 = v126;
  v23 = v127;
  v24 = v126 == 0x726F746365726964 && v127 == 0xE900000000000079;
  if (v24 || (OUTLINED_FUNCTION_24_4(0x726F746365726964, 0xE900000000000079) & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();
    v5 = v116;
    if (!v122)
    {
      v38 = OUTLINED_FUNCTION_2_11();
      v39(v38);
LABEL_34:

LABEL_35:
      sub_2379D9054(&v121, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
      sub_237AC9A74(v3, &v121, 0x697461746F6E6E61, 0xEF656C69665F6E6FLL);
      if (v122)
      {
        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v5 = 0xEC0000006E6D756CLL;
          v25 = v127;
          v115 = v126;
          OUTLINED_FUNCTION_16_3(0x5F6567616D69);
          if (v122)
          {
            OUTLINED_FUNCTION_8_5();
            if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
            {
LABEL_58:
              v70 = OUTLINED_FUNCTION_2_11();
              v71(v70);

LABEL_59:

              goto LABEL_60;
            }

            v114 = v25;
            v26 = v127;
            v113 = v126;
            v27 = OUTLINED_FUNCTION_48_1();
            OUTLINED_FUNCTION_16_3(v27 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);

            if (v122)
            {
              v112 = v26;
              OUTLINED_FUNCTION_8_5();
              if (OUTLINED_FUNCTION_26_3())
              {
                v28 = v126;
                v111 = v127;
                v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
                v110 = v29[12];
                v5 = (v20 + v29[16]);
                v30 = (v20 + v29[20]);
                sub_237C059BC();

                sub_237C059BC();

                v31 = OUTLINED_FUNCTION_2_11();
                v32(v31);
                v33 = v112;
                *v5 = v113;
                v5[1] = v33;
                v34 = v111;
                *v30 = v28;
                v30[1] = v34;
                OUTLINED_FUNCTION_107();
LABEL_18:
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_25_3();
LABEL_32:
                OUTLINED_FUNCTION_13_3();
                sub_237A0B204(v20, v5);
                v37 = 0;
                goto LABEL_22;
              }

              goto LABEL_58;
            }
          }

          v68 = OUTLINED_FUNCTION_2_11();
          v69(v68);

          goto LABEL_56;
        }

        v48 = OUTLINED_FUNCTION_2_11();
        v49(v48);

        goto LABEL_20;
      }

      v46 = OUTLINED_FUNCTION_2_11();
      v47(v46);

      goto LABEL_34;
    }

LABEL_19:
    v35 = OUTLINED_FUNCTION_2_11();
    v36(v35);
LABEL_20:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_21_2();
  v42 = v5 == (v41 | 1) && v40 == v23;
  if (v42 || (OUTLINED_FUNCTION_24_4(v41 + 1, v40) & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();

    if (!v122)
    {
      v50 = OUTLINED_FUNCTION_2_11();
      v51(v50);
LABEL_57:
      sub_2379D9054(&v121, &qword_27DE9A998, &unk_237C0C100);
LABEL_60:
      OUTLINED_FUNCTION_25_3();
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_25_3();
    if (v43)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v52 = OUTLINED_FUNCTION_48_1() | 0x5F64656C00000000;
  v54 = v5 == v52 && v23 == v53;
  if (v54 || (OUTLINED_FUNCTION_24_4(v52, v53) & 1) != 0)
  {

    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_22_4();

    if (!v122)
    {
      v57 = OUTLINED_FUNCTION_2_11();
      v58(v57);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
LABEL_31:
      sub_237C059BC();

      v44 = OUTLINED_FUNCTION_2_11();
      v45(v44);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

LABEL_45:
    v55 = OUTLINED_FUNCTION_2_11();
    v56(v55);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_21_2();
  v60 = v5 == 0xD000000000000016 && v59 == v23;
  if (!v60 && (OUTLINED_FUNCTION_24_4(0xD000000000000016, v59) & 1) == 0)
  {
    OUTLINED_FUNCTION_21_2();
    if (v5 == 0xD000000000000012 && v83 == v23)
    {
    }

    else
    {
      v85 = OUTLINED_FUNCTION_24_4(0xD000000000000012, v83);

      if ((v85 & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_2_11();
        v87(v86);
        goto LABEL_59;
      }
    }

    (*(v8 + 16))(v12, v1, v6);
    LOBYTE(v121) = 1;
    *(&v121 + 1) = v118;
    OUTLINED_FUNCTION_11_4(1);
    v123 = v125;
    OUTLINED_FUNCTION_56_1(v88);
    *v124 = *(v89 + 154);
    *&v124[3] = *(v89 + 157);
    OUTLINED_FUNCTION_33_1(v90);
    *(v91 + 129) = *(v91 + 147);
    OUTLINED_FUNCTION_52_1(*(v91 + 150));
    MLDataTable.init(contentsOf:options:)(v12, v92, v93);
    v5 = 0xEC0000006E6D756CLL;
    v94 = v126;
    v95 = v127;
    OUTLINED_FUNCTION_16_3(0x5F6567616D69);
    if (v122)
    {
      OUTLINED_FUNCTION_8_5();
      if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
      {
        v108 = OUTLINED_FUNCTION_2_11();
        v109(v108);
        OUTLINED_FUNCTION_62_0();
        goto LABEL_59;
      }

      v96 = v127;
      v115 = v126;
      v97 = OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_16_3(v97 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);

      v98 = OUTLINED_FUNCTION_2_11();
      v99(v98);
      if (v122)
      {
        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v100 = v126;
          v101 = v127;
          *v20 = v94;
          *(v20 + 8) = v95;
          *(v20 + 16) = v115;
          *(v20 + 24) = v96;
          *(v20 + 32) = v100;
          *(v20 + 40) = v101;
          OUTLINED_FUNCTION_107();
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_62_0();
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_62_0();
    }

    else
    {
      v106 = OUTLINED_FUNCTION_2_11();
      v107(v106);
      OUTLINED_FUNCTION_62_0();
    }

LABEL_56:

    goto LABEL_57;
  }

  (*(v8 + 16))(v15, v1, v6);
  LOBYTE(v121) = 1;
  *(&v121 + 1) = v125;
  OUTLINED_FUNCTION_11_4(1);
  v123 = *(v61 + 154);
  OUTLINED_FUNCTION_56_1(v62);
  *v124 = *(v63 + 147);
  *&v124[3] = *(v63 + 150);
  OUTLINED_FUNCTION_33_1(v64);
  *(v65 + 129) = *v120;
  OUTLINED_FUNCTION_52_1(*&v120[3]);
  MLDataTable.init(contentsOf:options:)(v15, v66, v67);
  v118 = v126;
  v119 = v127;
  OUTLINED_FUNCTION_50_0();
  sub_2379E0CC4(&v118, v72, v73);
  OUTLINED_FUNCTION_25_3();
  sub_237AC9A74(v3, &v121, 0xD000000000000011, 0x8000000237C17F20);
  if (!v122)
  {
LABEL_83:

    v102 = OUTLINED_FUNCTION_2_11();
    v103(v102);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_8_5();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v75 = v126;
  v74 = v127;
  v76 = OUTLINED_FUNCTION_48_1();
  sub_237AC9A74(v3, &v121, v76 | 0x6F635F6C00000000, 0xEC0000006E6D756CLL);
  if (!v122)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {

LABEL_85:

    v104 = OUTLINED_FUNCTION_2_11();
    v105(v104);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_21;
  }

  v5 = v126;
  v77 = v127;
  sub_237AC9A74(v3, &v121, 0x5F65727574616566, 0xEE006E6D756C6F63);

  v78 = OUTLINED_FUNCTION_2_11();
  v79(v78);
  if (v122)
  {
    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v80 = v126;
      v81 = v127;
      v82 = v119;
      v117 = v119;
      *v20 = v118;
      *(v20 + 8) = v82;
      *(v20 + 16) = v75;
      *(v20 + 24) = v74;
      *(v20 + 32) = v5;
      *(v20 + 40) = v77;
      *(v20 + 48) = v80;
      *(v20 + 56) = v81;
      OUTLINED_FUNCTION_107();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();

    sub_2379D9054(&v121, &qword_27DE9A998, &unk_237C0C100);
  }

  OUTLINED_FUNCTION_25_3();
LABEL_21:
  v37 = 1;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v5, v37, 1, v16);
  OUTLINED_FUNCTION_150();
}

void sub_237A09478()
{
  OUTLINED_FUNCTION_153();
  v55 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC8, &qword_237C0C788);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_237AC9A74(v2, &v58, 1684957547, 0xE400000000000000);
  if (!v61)
  {
    sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v53 = v4;
  v54 = v21;
  v27 = v56;
  v26 = v57;
  v28 = v56 == 1701736302 && v57 == 0xE400000000000000;
  if (!v28 && (OUTLINED_FUNCTION_38_0(1701736302, 0xE400000000000000) & 1) == 0)
  {
    v34 = v27 == 0x756F735F61746164 && v26 == 0xEB00000000656372;
    if (v34 || (OUTLINED_FUNCTION_38_0(0x756F735F61746164, 0xEB00000000656372) & 1) != 0)
    {

      v35 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(v2, v37, v35, v36);

      v4 = v53;
      v21 = v54;
      if (!v61)
      {
        v39 = OUTLINED_FUNCTION_9_4();
        v40(v39);
        sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if (OUTLINED_FUNCTION_26_3())
      {
        v38 = v55;
        (*(v7 + 16))(v11, v55, v5);
        sub_237A088D0();
        (*(v7 + 8))(v38, v5);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
        {
          sub_2379D9054(v15, &qword_27DE9AFC8, &qword_237C0C788);
          v31 = 1;
          v21 = v54;
          goto LABEL_15;
        }

        sub_237A0B204(v15, v20);
        sub_237A0B204(v20, v25);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v27 == 0x74696C7073 && v26 == 0xE500000000000000)
    {
    }

    else
    {
      v42 = OUTLINED_FUNCTION_38_0(0x74696C7073, 0xE500000000000000);

      if ((v42 & 1) == 0)
      {

        v4 = v53;
        v21 = v54;
        goto LABEL_13;
      }
    }

    v43 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(v2, v45, v43, v44);

    v21 = v54;
    if (!v61)
    {
      v50 = OUTLINED_FUNCTION_9_4();
      v51(v50);
      sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
      v31 = 1;
      v4 = v53;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    v46 = OUTLINED_FUNCTION_26_3();
    v4 = v53;
    if (v46)
    {
      sub_237A283AC(v56, &v58);
      v47 = OUTLINED_FUNCTION_9_4();
      v48(v47);
      if ((v60 & 1) == 0)
      {
        v49 = v59;
        *v25 = v58;
        *(v25 + 16) = v49;
        *(v25 + 17) = HIBYTE(v49) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v31 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v32 = OUTLINED_FUNCTION_9_4();
    v33(v32);
    goto LABEL_14;
  }

  v29 = OUTLINED_FUNCTION_9_4();
  v30(v29);
  v4 = v53;
LABEL_9:
  v21 = v54;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_237A0B204(v25, v4);
  v31 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v31, 1, v21);
  OUTLINED_FUNCTION_150();
}

void sub_237A09988(uint64_t a1)
{
  v74 = a1;
  v80 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v63[0] = v5 - v4;
  v6 = OUTLINED_FUNCTION_41_0();
  v68 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v67 = v9 - v8;
  OUTLINED_FUNCTION_41_0();
  v75 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v77 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v63[1] = v12 - v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v69 = v63 - v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v72 = v63 - v17;
  v18 = OUTLINED_FUNCTION_41_0();
  v19 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v70 = v21 - v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v25 = v63 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C750;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  sub_237A0A040();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(inited + 48) = v28;
  *(inited + 72) = v29;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v30 = _s20PersistentParametersVMa_0(0);
  v65 = v30[5];
  sub_237A0B1A8(v1 + v65, v25);
  v31 = *(v1 + v30[6]);
  v76 = *(v1 + v30[7]);
  v32 = v30[8];
  v71 = v1;
  v64 = v32;
  v33 = *(v1 + v32);
  v66 = v19;
  *&v25[*(v19 + 28)] = v33;
  v34 = sub_237A0A6B4();
  sub_237A0B150(v25, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v34;
  *(inited + 120) = v29;
  *(inited + 128) = 0x69735F6863746162;
  v35 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 144) = v31;
  *(inited + 168) = v35;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 192) = v76;
  *(inited + 216) = v35;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x8000000237C17EA0;
  *(inited + 240) = v33;
  *(inited + 264) = v35;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  v36 = sub_237A063C4();
  *(inited + 312) = v29;
  *(inited + 288) = v36;
  OUTLINED_FUNCTION_48_2();
  sub_237C085AC();
  v37 = objc_opt_self();
  OUTLINED_FUNCTION_48_2();
  v38 = sub_237C0855C();

  v78 = 0;
  v39 = [v37 dataWithPropertyList:v38 format:200 options:0 error:&v78];

  v40 = v78;
  if (v39)
  {
    v41 = sub_237C05B7C();
    v43 = v42;

    OUTLINED_FUNCTION_21_2();
    v44 = v72;
    sub_237C05A2C();
    v45 = v73;
    sub_237C05B9C();
    if (v45)
    {
      (*(v77 + 8))(v44, v75);
LABEL_4:
      sub_2379E86D4(v41, v43);
      return;
    }

    v47 = *(v77 + 8);
    v48 = v75;
    v77 += 8;
    v47(v44, v75);
    sub_237A0A978();
    v49 = v79;
    if (v79 != 255)
    {
      v76 = v47;
      v73 = v78;
      v79 &= 1u;
      v50 = v69;
      OUTLINED_FUNCTION_19_5();
      sub_237C05A2C();
      MLDataTable.write(to:)(v50);
      v51 = v50;
      v47 = v76;
      v76(v51, v48);
      sub_2379DBC84(v73, v49);
    }

    v53 = v70;
    v52 = v71;
    sub_237A0B1A8(v71 + v65, v70);
    v54 = *(v52 + v64);
    v55 = v67;
    *(v53 + *(v66 + 28)) = v54;
    sub_237A0B1A8(v53, v55);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_13_3();
      v56 = v63[0];
      sub_237A0B204(v55, v63[0]);
      sub_237A0A978();
      OUTLINED_FUNCTION_5_6();
      sub_237A0B150(v56, v57);
      v58 = v78;
      v59 = v79;
    }

    else
    {
      v58 = 0;
      v59 = 255;
    }

    OUTLINED_FUNCTION_12_6();
    sub_237A0B150(v70, v60);
    if (v59 == 255)
    {
      goto LABEL_4;
    }

    v78 = v58;
    v79 = v59 & 1;
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_49_0();
    v62 = v61;
    sub_237C05A2C();
    MLDataTable.write(to:)(v62);
    v47(v62, v75);
    sub_2379E86D4(v41, v43);
    sub_2379DBC84(v58, v59);
  }

  else
  {
    v46 = v40;
    sub_237C0593C();

    swift_willThrow();
  }
}

void sub_237A0A040()
{
  OUTLINED_FUNCTION_153();
  v0 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - v8;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_11_5();
  sub_237A0B1A8(v14, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = OUTLINED_FUNCTION_25_4();
      v52(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      OUTLINED_FUNCTION_80();
      v43 = MEMORY[0x277D837D0];
      v44[6] = 0xD000000000000013;
      v44[7] = v53;
      goto LABEL_7;
    case 2u:
      v40 = OUTLINED_FUNCTION_25_4();
      v41(v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v43 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_51_1();
      v44[6] = v46 | 0x5F64656C00000000;
      v44[7] = 0xED000073656C6966;
LABEL_7:
      v44[9] = v43;
      v44[10] = 1752457584;
      v44[11] = v45;
      v54 = sub_237C05A9C();
      inited[7].n128_u64[1] = v43;
      inited[6].n128_u64[0] = v54;
      inited[6].n128_u64[1] = v55;
      sub_237C085AC();
      (*(v2 + 8))(v9, v0);
      break;
    case 3u:
      v9 = *(v13 + 16);
      v6 = *(v13 + 24);
      v47 = *(v13 + 32);
      v48 = *(v13 + 40);
      v49 = *(v13 + 48);
      v50 = *(v13 + 56);
      sub_2379DBC9C(*v13, *(v13 + 8));
      goto LABEL_9;
    case 4u:
      v9 = *(v13 + 16);
      v6 = *(v13 + 24);
      v38 = *(v13 + 32);
      v39 = *(v13 + 40);
      sub_2379DBC9C(*v13, *(v13 + 8));
      goto LABEL_11;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      OUTLINED_FUNCTION_31_2();
      v47 = *v56;
      v48 = v56[1];
      v58 = (v13 + *(v57 + 80));
      v49 = *v58;
      v50 = v58[1];
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v59 + 8))(v13);
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v60 = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(v60, xmmword_237C0BC00);
      OUTLINED_FUNCTION_80();
      *(v61 + 48) = 0xD000000000000016;
      *(v61 + 56) = v62;
      OUTLINED_FUNCTION_80();
      v63[9] = v64;
      v63[10] = v65;
      v63[11] = v66;
      v63[12] = v9;
      v63[13] = v6;
      OUTLINED_FUNCTION_51_1();
      *(v68 + 120) = v69;
      *(v68 + 128) = v67 | 0x6F635F6C00000000;
      *(v68 + 136) = 0xEC0000006E6D756CLL;
      *(v68 + 144) = v47;
      *(v68 + 152) = v48;
      *(v68 + 168) = v69;
      strcpy((v68 + 176), "feature_column");
      *(v68 + 216) = v69;
      *(v68 + 191) = -18;
      *(v68 + 192) = v49;
      *(v68 + 200) = v50;
      goto LABEL_12;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      OUTLINED_FUNCTION_31_2();
      v38 = *v70;
      v39 = v70[1];
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v71 + 8))(v13);
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v72 = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(v72, xmmword_237C0B680);
      OUTLINED_FUNCTION_80();
      *(v73 + 48) = 0xD000000000000012;
      *(v73 + 56) = v74;
      OUTLINED_FUNCTION_40_3();
      *(v75 + 72) = v76;
      *(v75 + 80) = v77;
      *(v75 + 88) = 0xEC0000006E6D756CLL;
      *(v75 + 96) = v9;
      *(v75 + 104) = v6;
      *(v75 + 120) = v76;
      strcpy((v75 + 128), "label_column");
      *(v75 + 168) = v76;
      *(v75 + 141) = 0;
      *(v75 + 142) = -5120;
      *(v75 + 144) = v38;
      *(v75 + 152) = v39;
LABEL_12:
      sub_237C085AC();
      break;
    default:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v16 = v15[12];
      v17 = (v13 + v15[16]);
      v19 = *v17;
      v18 = v17[1];
      v20 = (v13 + v15[20]);
      v22 = *v20;
      v21 = v20[1];
      v80 = v22;
      v78 = v18;
      v79 = v21;
      v23 = *(v2 + 32);
      v24 = OUTLINED_FUNCTION_25_4();
      v23(v24);
      (v23)(v6, v13 + v16, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v25 = swift_initStackObject();
      v26 = OUTLINED_FUNCTION_0_8(v25, xmmword_237C0C6C0);
      v27 = MEMORY[0x277D837D0];
      v26[3].n128_u64[0] = 0x726F746365726964;
      v26[3].n128_u64[1] = 0xE900000000000079;
      v26[4].n128_u64[1] = v27;
      v26[5].n128_u64[0] = 1752457584;
      v26[5].n128_u64[1] = v28;
      v25[6].n128_u64[0] = sub_237C05A9C();
      v25[6].n128_u64[1] = v29;
      v25[7].n128_u64[1] = v27;
      v25[8].n128_u64[0] = 0x697461746F6E6E61;
      v25[8].n128_u64[1] = 0xEF656C69665F6E6FLL;
      v25[10].n128_u64[1] = v0;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25[9]);
      (*(v2 + 16))(boxed_opaque_existential_0, v6, v0);
      OUTLINED_FUNCTION_40_3();
      v25[11].n128_u64[0] = v31;
      v25[11].n128_u64[1] = 0xEC0000006E6D756CLL;
      v32 = v78;
      v25[12].n128_u64[0] = v19;
      v25[12].n128_u64[1] = v32;
      OUTLINED_FUNCTION_51_1();
      v25[13].n128_u64[1] = v27;
      v25[14].n128_u64[0] = v33 | 0x6F635F6C00000000;
      v25[16].n128_u64[1] = v27;
      v34 = v79;
      v35 = v80;
      v25[14].n128_u64[1] = v36;
      v25[15].n128_u64[0] = v35;
      v25[15].n128_u64[1] = v34;
      sub_237C085AC();
      v37 = *(v2 + 8);
      v37(v6, v0);
      v37(v9, v0);
      break;
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A0A6B4()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_237A0B1A8(v1, v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v19 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
    OUTLINED_FUNCTION_34_0(v19, 0x74696C7073);
    v20 = sub_237A28200();
    inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    inited[6].n128_u64[0] = v20;
    return sub_237C085AC();
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v21 = swift_initStackObject();
    v22 = OUTLINED_FUNCTION_0_8(v21, xmmword_237C0B660);
    v22[4].n128_u64[1] = MEMORY[0x277D837D0];
    v22[3].n128_u64[0] = 1701736302;
    v22[3].n128_u64[1] = v23;
    return sub_237C085AC();
  }

  sub_237A0B204(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v12 = swift_initStackObject();
  v13 = OUTLINED_FUNCTION_0_8(v12, xmmword_237C0B670);
  OUTLINED_FUNCTION_34_0(v13, 0x756F735F61746164);
  sub_237A0A040();
  v15 = v14;
  v12[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v12[6].n128_u64[0] = v15;
  v16 = sub_237C085AC();
  OUTLINED_FUNCTION_5_6();
  sub_237A0B150(v6, v17);
  return v16;
}

void sub_237A0A978()
{
  OUTLINED_FUNCTION_153();
  v87 = 0;
  v88 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v82 = v2;
  v83 = v1;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23();
  v80 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v81 = v7;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v84 = v9;
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  v86 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  v35 = OUTLINED_FUNCTION_11_5();
  sub_237A0B1A8(v35, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_237C05ADC();
      OUTLINED_FUNCTION_4();
      (*(v36 + 8))(v34);
      goto LABEL_12;
    case 3u:
      v44 = *v34;
      v45 = *(v34 + 8);

      v91 = v44;
      v92 = v45;
      sub_2379DBCF4(v44, v45);
      OUTLINED_FUNCTION_50_0();
      v46 = v87;
      sub_2379E0CC4(&v91, v47, 0xE900000000000073);
      if (v46)
      {
      }

      sub_2379DBC9C(v44, v45);
      goto LABEL_16;
    case 4u:
      v37 = *v34;
      v38 = *(v34 + 8);

      v39 = v88;
      *v88 = v37;
      *(v39 + 8) = v38;
      goto LABEL_22;
    case 5u:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v49 = (v34 + *(v48 + 80));
      v50 = *v49;
      v51 = v49[1];
      v52 = v17;
      v53 = v50;
      v79 = v52;
      v54 = v86;
      (*(v52 + 32))(v30, v34, v86);
      v55 = v51;
      sub_237C05DFC();
      v56 = sub_237C05FFC();
      v57 = *(v84 + 8);
      v57(v15, v85);
      if (v56 == MEMORY[0x277D837D0])
      {
        v77 = v57;
        v65 = v80;
        sub_237C05DEC();
        v66 = v81;
        v78 = v53;
        v60 = v87;
        sub_237B62FE0(v81);
        if (v60)
        {
          v58 = v78;

          (*(v82 + 8))(v65, v83);
          __swift_storeEnumTagSinglePayload(v66, 1, 1, v85);
          sub_2379D9054(v66, &qword_27DE9AF88, &unk_237C0C700);
          v60 = 0;
        }

        else
        {
          (*(v82 + 8))(v65, v83);
          v69 = v85;
          __swift_storeEnumTagSinglePayload(v66, 0, 1, v85);
          v70 = v84;
          (*(v84 + 32))(v12, v66, v69);
          (*(v70 + 16))(v15, v12, v69);

          v58 = v78;
          sub_237C05E0C();
          v77(v12, v69);
        }

        v59 = v88;
        v54 = v86;
        v55 = v51;
      }

      else
      {
        v58 = v53;
        v60 = v87;
        v59 = v88;
      }

      (*(v79 + 16))(v27, v30, v54);
      sub_237A70684(v27, 0, &v89);
      if (v60)
      {

        v71 = OUTLINED_FUNCTION_30_3();
        v72(v71);
        *v59 = 0;
        *(v59 + 8) = -1;
      }

      else
      {
        v91 = v89;
        v92 = v90;
        sub_2379E0CC4(&v91, v58, v55);
        v73 = OUTLINED_FUNCTION_30_3();
        v74(v73);

        v75 = v92;
        *v59 = v91;
        *(v59 + 8) = v75;
      }

      goto LABEL_22;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v61 = v17;
      v62 = v86;
      (*(v17 + 32))(v24, v34, v86);
      (*(v17 + 16))(v21, v24, v62);
      v63 = v87;
      sub_237A70684(v21, 0, &v91);
      if (v63)
      {

        (*(v61 + 8))(v24, v62);
LABEL_12:
        v64 = v88;
        *v88 = 0;
        *(v64 + 8) = -1;
      }

      else
      {
        (*(v61 + 8))(v24, v62);
LABEL_16:
        v67 = v92;
        v68 = v88;
        *v88 = v91;
        *(v68 + 8) = v67;
      }

LABEL_22:
      OUTLINED_FUNCTION_150();
      return;
    default:
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0) + 48);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_29_2();
      v41 = sub_237C05ADC();
      OUTLINED_FUNCTION_4();
      v43 = *(v42 + 8);
      v43(v34 + v40, v41);
      v43(v34, v41);
      goto LABEL_12;
  }
}

uint64_t sub_237A0B150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237A0B1A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237A0B204(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237A61074(a1);
    return sub_237A0B634(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A0B414@<X0>(uint64_t a1@<X8>)
{
  result = MLDecisionTreeRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A0B458(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A0B690(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A0B634(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A0B690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A0B73C;
}

void sub_237A0B73C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237A0B7D0(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A0BA6C(a1, v4);
  return MLDecisionTreeRegressor.ModelParameters.validation.setter(v4);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A0B690(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLDecisionTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A0B9AC;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A0B9AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A0BA6C((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A0B690(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A0B634(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A0B690(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_237A0BA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  sub_237A0BA6C(a1, v15 - v14);
  v19[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  sub_237A0B690(v16, boxed_opaque_existential_0);
  sub_237A0B634(a1);
  return sub_2379DAE54(v19, a4);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v9);
}

uint64_t sub_237A0BCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFD0, &qword_237C0C870);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  sub_237C0718C();
  *(a3 + 40) = v22;
  sub_237C0716C();
  *(a3 + 48) = v23;
  *(a3 + 56) = sub_237C070AC();
  v29 = a2;
  sub_2379D8FF4(a2, v13, &qword_27DE9A9A0, &qword_237C0BF60);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v13, v6);
    (*(v7 + 16))(v16, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v10, v6);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v24, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2379D9054(v16, &qword_27DE9AFD0, &qword_237C0C870);
    }
  }

  else
  {
    sub_237A0B690(v16, v21);
  }

  v30[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  sub_237A0B690(v21, boxed_opaque_existential_0);
  sub_2379D9054(v29, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v26 + 8))(a1);
  return sub_2379DAE54(v30, a3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.description.getter()
{
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  sub_237C08EDC();
  v1 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_3_10(v1, v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  v3 = MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C16E40);
  OUTLINED_FUNCTION_3_10(v3, v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  strcpy(v7, "Random Seed: ");
  HIWORD(v7[1]) = -4864;
  v5 = sub_237C0924C();
  MEMORY[0x2383DC360](v5);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v7[0], v7[1]);

  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLDecisionTreeRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237A0C2A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_237A0C2F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, ...)
{

  return sub_237C08A8C();
}

void __swiftcall MLModelMetadata.init(author:shortDescription:license:version:additional:)(CreateML::MLModelMetadata *__return_ptr retstr, Swift::String author, Swift::String shortDescription, Swift::String_optional license, Swift::String version, Swift::OpaquePointer_optional additional)
{
  retstr->author = author;
  retstr->shortDescription = shortDescription;
  retstr->license = license;
  retstr->version = version;
  retstr->additional.value._rawValue = additional.value._rawValue;
}

uint64_t MLModelMetadata.author.setter()
{
  OUTLINED_FUNCTION_5_4();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MLModelMetadata.shortDescription.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MLModelMetadata.license.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MLModelMetadata.version.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MLModelMetadata.additional.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_237A0C604(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237A0C644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237A0C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C06D3C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A0C754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06D3C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressor(uint64_t a1)
{
  result = qword_27DE9AFD8;
  if (!qword_27DE9AFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A0C820(uint64_t a1)
{
  sub_2379FC328();
  if (v1 <= 0x3F)
  {
    sub_237A0C8CC(319);
    if (v2 <= 0x3F)
    {
      sub_237C06D3C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A0C8CC(uint64_t a1)
{
  if (!qword_27DE9AFE8)
  {
    v2 = sub_237A0C928();
    v4 = type metadata accessor for FeatureVectorizer(a1, MEMORY[0x277D83A90], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27DE9AFE8);
    }
  }
}

unint64_t sub_237A0C928()
{
  result = qword_27DE9AFF0;
  if (!qword_27DE9AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AFF0);
  }

  return result;
}

BOOL sub_237A0C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_237C093CC();
  sub_237C0878C();
  v6 = sub_237C0940C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_237C0929C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_237A0CAB0()
{
  OUTLINED_FUNCTION_74();
  v99 = v2;
  v100 = v3;
  v95 = v4;
  v6 = v5;
  v92 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v96 = v10;
  v101 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v97 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v94 = v14 - v13;
  v89 = sub_237C0701C();
  OUTLINED_FUNCTION_0();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v93 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v88 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v90 = &v77 - v22;
  v23 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v102 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  OUTLINED_FUNCTION_0();
  v98 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  v38 = v0[3];
  v39 = v0[4];
  v40 = v0[5];
  v103[2] = v6;
  v41 = sub_2379E22EC(sub_237A20D00, v103, v38);
  if (v1)
  {
    goto LABEL_8;
  }

  v87 = v28;
  v84 = v34;
  v85 = v29;
  v86 = v0;
  v42 = v41;

  OUTLINED_FUNCTION_4_9();
  sub_237A0D328(v6, 0, v42, v39, v40, v43, v44, v45, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v80 = v39;
  v82 = v42;
  v83 = v40;
  v46 = v87;
  v47 = v86[1];
  v78 = *v86;
  v79 = v47;
  sub_237C05DFC();
  sub_237B6301C();
  v49 = v48;
  v50 = *(v102 + 8);
  v102 += 8;
  v77 = v50;
  v50(v46, v23);
  v81 = v49;
  if (v49)
  {
    v51 = v96;
    sub_2379D8FF4(v95, v96, &qword_27DE9A9A0, &qword_237C0BF60);
    v52 = v101;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v101);
    v54 = v97;
    v55 = v98;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379D9054(v51, &qword_27DE9A9A0, &qword_237C0BF60);
      type metadata accessor for TreeRegressor(0);
      v56 = v93;
      sub_237C06D1C();
      (*(v55 + 8))(v37, v85);

      v61 = v56;
      v63 = v91;
      v62 = v92;
      v64 = v89;
      v65 = v90;
LABEL_7:
      v73 = *(v63 + 32);
      v73(v65, v61, v64);
      v74 = type metadata accessor for TreeRegressorModel(0);
      v73(&v62[*(v74 + 24)], v65, v64);
      v75 = v79;
      *v62 = v78;
      *(v62 + 1) = v75;
      v76 = v80;
      *(v62 + 2) = v82;
      *(v62 + 3) = v76;
      *(v62 + 4) = v83;

LABEL_8:
      OUTLINED_FUNCTION_73();
      return;
    }

    v95 = v37;
    v57 = v94;
    (*(v97 + 32))(v94, v51, v52);
    OUTLINED_FUNCTION_4_9();
    sub_237A0D328(v57, 0, v82, v80, v83, v58, v59, v60, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    v66 = v87;
    sub_237C05DFC();
    sub_237B6301C();
    v68 = v67;
    v77(v66, v23);
    if (v68)
    {
      type metadata accessor for TreeRegressor(0);
      v69 = v84;
      sub_237C06D0C();
      v63 = v91;
      v62 = v92;
      v64 = v89;
      v65 = v90;

      v70 = v69;
      v71 = v85;
      v72 = *(v98 + 8);
      v72(v70, v85);
      (*(v54 + 8))(v94, v101);
      v72(v95, v71);
      v61 = v88;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237A0D1F4()
{

  OUTLINED_FUNCTION_37_2();

  return sub_237C05FCC();
}

uint64_t sub_237A0D24C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B260, &qword_237C0CB18);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);

  *v2 = v5;
  v2[1] = v7;
  return result;
}

void sub_237A0D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v21 = v20;
  v23 = v22;
  v42 = v24;
  v25 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = *(v23 + 16);
  v33 = MEMORY[0x277D84F90];
  v43 = v23;
  if (v32)
  {
    v40 = v27;
    v41 = v25;
    sub_237AC8A74();
    v34 = (v23 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);

      if (v38 >= v37 >> 1)
      {
        sub_237AC8A74();
      }

      *(v33 + 16) = v38 + 1;
      v39 = v33 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v36;
      v34 += 4;
      --v32;
    }

    while (v32);
    v27 = v40;
    v25 = v41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B048, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83970]);
  sub_237C05D9C();

  v21(v43, v42 & 1);
  (*(v27 + 8))(v31, v25);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A0D520(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B020, &qword_237C10E50);
  sub_237A0DF54();
  result = sub_237C06CAC();
  if (!v2)
  {
    type metadata accessor for TreeRegressorModel(0);
    v4 = OUTLINED_FUNCTION_34_1();
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_237C0701C();
    OUTLINED_FUNCTION_39_2();
    sub_237A0E004(v6, v7, MEMORY[0x277CC5078]);
    return sub_237C06CAC();
  }

  return result;
}

void sub_237A0D63C()
{
  OUTLINED_FUNCTION_74();
  v16 = v2;
  v17 = v0;
  v4 = v3;
  v5 = sub_237C0701C();
  OUTLINED_FUNCTION_0();
  v15 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v21 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B008, &qword_237C0C9B8);
  __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
  sub_2379D9224(&qword_27DE9B010, &qword_27DE9B008, &qword_237C0C9B8, &unk_237C130B8);
  sub_237C06C9C();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    OUTLINED_FUNCTION_39_2();
    sub_237A0E004(v10, v11, MEMORY[0x277CC5080]);
    sub_237C06C9C();
    v13 = *v0;
    v12 = v17[1];
    v14 = type metadata accessor for TreeRegressorModel(0);
    (*(v15 + 32))(&v16[*(v14 + 24)], v21, v5);
    *v16 = v13;
    *(v16 + 1) = v12;
    *(v16 + 2) = v18;
    *(v16 + 3) = v19;
    *(v16 + 4) = v20;
  }

  OUTLINED_FUNCTION_73();
}

void (*sub_237A0D840(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B260, &qword_237C0CB18);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = *(v1 + 8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

void sub_237A0D94C(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  if (a2)
  {
    (v5[2])((*a1)[3], v3, v6);
    v8 = sub_237C05FBC();
    v10 = v9;
    v11 = v5[1];
    v11(v4, v6);

    *v7 = v8;
    v7[1] = v10;
    v11(v3, v6);
  }

  else
  {
    v12 = sub_237C05FBC();
    v14 = v13;
    (v5[1])(v3, v6);

    *v7 = v12;
    v7[1] = v14;
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_237A0DA68()
{
  sub_237A0CAB0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237A0DB6C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for TreeRegressor(0);
  type metadata accessor for TreeRegressorModel(0);

  result = sub_237C06CFC();
  *a1 = v4;
  a1[1] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_237A0DE5C()
{
  sub_237A0DBD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_237A0DF54()
{
  result = qword_27DE9B028;
  if (!qword_27DE9B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B020, &qword_237C10E50);
    sub_2379D9224(&qword_27DE9B030, &qword_27DE9B008, &qword_237C0C9B8, &unk_237C13090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B028);
  }

  return result;
}

uint64_t sub_237A0E004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237A0E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v33 = a3;
  v36 = sub_237C0602C();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
  MEMORY[0x28223BE20](v32);
  v10 = (&v31 - v9);
  v38 = v3;
  v11 = sub_237C05D3C();

  sub_237A0E884(v11, a1, v4, v10);
  v12 = 0;
  v13 = 0;
  v37 = a1;
  v39 = *(a1 + 16);
  v40 = v10;
  v35 = (v6 + 8);
  while (2)
  {
    if (v39 == v13)
    {
      v26 = *(v32 + 44);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
      (*(*(v27 - 8) + 16))(v33, v10 + v26, v27);
      return sub_2379D9054(v10, &qword_27DE9B050, &qword_237C0C9C0);
    }

    v14 = *(v37 + v12 + 48);
    v15 = *(v37 + v12 + 56);

    sub_237A1E09C(v14, v15);
    sub_237C05DFC();
    if (v13 >= *(*v10 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      JUMPOUT(0x237A0E44CLL);
    }

    v16 = v10[1];
    if (v13 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v17 = *v10 + v12;
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v16 + 8 * v13;
    v21 = *(v20 + 32);
    switch(v19)
    {
      case 4:
        v34 = *(v17 + 40);

        sub_237A1E09C(v18, 4);
        v25 = v41;
        sub_237A0FEBC(v8, v18, v21);
        v41 = v25;
        if (!v25)
        {
          goto LABEL_14;
        }

        v28 = v18;
        v29 = 4;
        goto LABEL_19;
      case 5:
        v34 = *(v17 + 40);

        sub_237A1E09C(v18, 5);
        v23 = v41;
        sub_237A11974();
        v41 = v23;
        if (!v23)
        {
LABEL_14:

          sub_237A1E0B0(v18, v19);
          v10 = v40;
LABEL_15:

          sub_237A1E0B0(v14, v15);
          (*v35)(v8, v36);
          v12 += 32;
          ++v13;
          continue;
        }

        v28 = v18;
        v29 = 5;
LABEL_19:
        sub_237A1E0B0(v28, v29);
        v10 = v40;
LABEL_20:

        sub_237A1E0B0(v14, v15);
        (*v35)(v8, v36);
        return sub_2379D9054(v10, &qword_27DE9B050, &qword_237C0C9C0);
      case 6:
        v24 = *(v20 + 32);
        if (v18)
        {
          v10 = v40;
          v22 = v41;
          sub_237A11F5C(v8, v24);
        }

        else
        {
          v10 = v40;
          v22 = v41;
          sub_237A0ED14(v8, v24);
        }

        goto LABEL_7;
      default:
        v10 = v40;
        v22 = v41;
        sub_237A13104(v8, *(v17 + 48), *(v20 + 32));
LABEL_7:
        v41 = v22;
        if (v22)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
    }
  }
}

uint64_t sub_237A0E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v33 = a3;
  v36 = sub_237C0602C();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
  MEMORY[0x28223BE20](v32);
  v10 = (&v31 - v9);
  v38 = v3;
  v11 = sub_237C05D3C();

  sub_237A0EACC(v11, a1, v4, v10);
  v12 = 0;
  v13 = 0;
  v37 = a1;
  v39 = *(a1 + 16);
  v40 = v10;
  v35 = (v6 + 8);
  while (2)
  {
    if (v39 == v13)
    {
      v26 = *(v32 + 44);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
      (*(*(v27 - 8) + 16))(v33, v10 + v26, v27);
      return sub_2379D9054(v10, &qword_27DE9B218, &qword_237C0CAF0);
    }

    v14 = *(v37 + v12 + 48);
    v15 = *(v37 + v12 + 56);

    sub_237A1E09C(v14, v15);
    sub_237C05DFC();
    if (v13 >= *(*v10 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      JUMPOUT(0x237A0E868);
    }

    v16 = v10[1];
    if (v13 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v17 = *v10 + v12;
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    v20 = v16 + 8 * v13;
    v21 = *(v20 + 32);
    switch(v19)
    {
      case 4:
        v34 = *(v17 + 40);

        sub_237A1E09C(v18, 4);
        v25 = v41;
        sub_237A10C18(v8, v18, v21);
        v41 = v25;
        if (!v25)
        {
          goto LABEL_14;
        }

        v28 = v18;
        v29 = 4;
        goto LABEL_19;
      case 5:
        v34 = *(v17 + 40);

        sub_237A1E09C(v18, 5);
        v23 = v41;
        sub_237A11974();
        v41 = v23;
        if (!v23)
        {
LABEL_14:

          sub_237A1E0B0(v18, v19);
          v10 = v40;
LABEL_15:

          sub_237A1E0B0(v14, v15);
          (*v35)(v8, v36);
          v12 += 32;
          ++v13;
          continue;
        }

        v28 = v18;
        v29 = 5;
LABEL_19:
        sub_237A1E0B0(v28, v29);
        v10 = v40;
LABEL_20:

        sub_237A1E0B0(v14, v15);
        (*v35)(v8, v36);
        return sub_2379D9054(v10, &qword_27DE9B218, &qword_237C0CAF0);
      case 6:
        v24 = *(v20 + 32);
        if (v18)
        {
          v10 = v40;
          v22 = v41;
          sub_237A12830(v8, v24);
        }

        else
        {
          v10 = v40;
          v22 = v41;
          sub_237A0F5E8(v8, v24);
        }

        goto LABEL_7;
      default:
        v10 = v40;
        v22 = v41;
        sub_237A13B6C(v8, *(v17 + 48), *(v20 + 32));
LABEL_7:
        v41 = v22;
        if (v22)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
    }
  }
}

uint64_t sub_237A0E884@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  *a4 = a2;
  *(a4 + 16) = a3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v26 = result;

    v8 = 0;
    v9 = (a2 + 56);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *(v9 - 1);
      v12 = *v9;

      sub_237A1E09C(v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0EB4(0, *(v10 + 16) + 1, 1, v10);
        v10 = v17;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_237BC0EB4(v13 > 1, v14 + 1, 1, v10);
        v10 = v18;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v8;
      v15 = sub_237B98FFC(v11, v12);

      result = sub_237A1E0B0(v11, v12);
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 += 32;
      --v6;
    }

    while (v6);

    *(a4 + 8) = v10;
    if (a3)
    {
      v19 = v8;
      v4 = v26;
      goto LABEL_13;
    }

    v20 = 0;
    v19 = v8;
    v4 = v26;
  }

  else
  {
    *(a4 + 8) = MEMORY[0x277D84F90];
    if (a3)
    {
      v19 = 0;
LABEL_13:
      if (__OFADD__(v19, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }
  }

  LODWORD(v27[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
  sub_237A0C928();
  result = sub_237C06A8C();
  if (!v20)
  {
    return result;
  }

  if (v4 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v21 = 0;
    do
    {
      v22 = v21 + 1;
      v23 = sub_237A1F7FC(v27, v21, v19);
      *v24 = 1065353216;
      result = v23(v27, 0);
      v21 = v22;
    }

    while (v4 != v22);
  }

  return result;
}

uint64_t sub_237A0EACC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  *a4 = a2;
  *(a4 + 16) = a3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v26 = result;

    v8 = 0;
    v9 = (a2 + 56);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *(v9 - 1);
      v12 = *v9;

      sub_237A1E09C(v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0EB4(0, *(v10 + 16) + 1, 1, v10);
        v10 = v17;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_237BC0EB4(v13 > 1, v14 + 1, 1, v10);
        v10 = v18;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v8;
      v15 = sub_237B98FFC(v11, v12);

      result = sub_237A1E0B0(v11, v12);
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 += 32;
      --v6;
    }

    while (v6);

    *(a4 + 8) = v10;
    if (a3)
    {
      v19 = v8;
      v4 = v26;
      goto LABEL_13;
    }

    v20 = 0;
    v19 = v8;
    v4 = v26;
  }

  else
  {
    *(a4 + 8) = MEMORY[0x277D84F90];
    if (a3)
    {
      v19 = 0;
LABEL_13:
      if (__OFADD__(v19, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }
  }

  v27[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
  sub_237A20BBC();
  result = sub_237C06A8C();
  if (!v20)
  {
    return result;
  }

  if (v4 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v21 = 0;
    do
    {
      v22 = v21 + 1;
      v23 = sub_237A1F930(v27, v21, v19);
      *v24 = 0x3FF0000000000000;
      result = v23(v27, 0);
      v21 = v22;
    }

    while (v4 != v22);
  }

  return result;
}

uint64_t sub_237A0ED14(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v65 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A147D8(v23, v70, &qword_27DE9AB98);
    return (*(v21 + 8))(v23, v20);
  }

  v25 = v69;
  v26 = v70;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A145D4(v19, v26);
    return (*(v25 + 8))(v19, v17);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14680(v16, v26);
    return (*(v68 + 8))(v16, v14);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v65;
    sub_237C05FEC();
    sub_237A1472C(v27, v26);
    v28 = v66;
    v29 = v67;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v62;
    sub_237C05FEC();
    sub_237A147D8(v27, v26, &qword_27DE9B070);
    v29 = v63;
    v28 = v64;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v59;
    sub_237C05FEC();
    sub_237A14B24(v27, v26, v30, v31, v32, v33, v34, v35, v49);
    v29 = v60;
    v28 = v61;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v56;
    sub_237C05FEC();
    sub_237A14BD0(v27, v26);
    v29 = v57;
    v28 = v58;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v53;
    sub_237C05FEC();
    sub_237A14C78(v36, v26);
    return (*(v54 + 8))(v36, v55);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v37 = v50;
      sub_237C05FEC();
      sub_237A14F24(v37, v26, v38, v39, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      return (*(v51 + 8))(v37, v52);
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C180A0);
      v44 = sub_237C0600C();
      MEMORY[0x2383DC360](v44);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v45 = sub_237C094DC();
      MEMORY[0x2383DC360](v45);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v46 = v71;
      v47 = v72;
      sub_2379E8AF0();
      swift_allocError();
      *v48 = v46;
      *(v48 + 8) = v47;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      *(v48 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A0F5E8(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v65 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14A80(v23, v70, &qword_27DE9AB98);
    return (*(v21 + 8))(v23, v20);
  }

  v25 = v69;
  v26 = v70;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A1487C(v19, v26);
    return (*(v25 + 8))(v19, v17);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14928(v16, v26);
    return (*(v68 + 8))(v16, v14);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v65;
    sub_237C05FEC();
    sub_237A149D4(v27, v26);
    v28 = v66;
    v29 = v67;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v62;
    sub_237C05FEC();
    sub_237A14A80(v27, v26, &qword_27DE9B070);
    v29 = v63;
    v28 = v64;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v59;
    sub_237C05FEC();
    sub_237A14D24(v27, v26, v30, v31, v32, v33, v34, v35, v49);
    v29 = v60;
    v28 = v61;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v56;
    sub_237C05FEC();
    sub_237A14DD0(v27, v26);
    v29 = v57;
    v28 = v58;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v53;
    sub_237C05FEC();
    sub_237A14E7C(v36, v26);
    return (*(v54 + 8))(v36, v55);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v37 = v50;
      sub_237C05FEC();
      sub_237A14FF0(v37, v26, v38, v39, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      return (*(v51 + 8))(v37, v52);
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C180A0);
      v44 = sub_237C0600C();
      MEMORY[0x2383DC360](v44);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v45 = sub_237C094DC();
      MEMORY[0x2383DC360](v45);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v46 = v71;
      v47 = v72;
      sub_2379E8AF0();
      swift_allocError();
      *v48 = v46;
      *(v48 + 8) = v47;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      *(v48 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A0FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a2;
  v116 = a3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v102 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v100 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v103 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v5 = &v100 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v100 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v111 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v100 - v13);
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v14 = v113;
    v110 = v11;
    v104 = v8;
    v17 = v106;
    v16 = v109;
    v111 = v9;
    v105 = v6;
    v101 = v5;
    sub_237C05FFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    if (swift_dynamicCastMetatype())
    {
      v27 = v110;
      sub_237C05FEC();
      v28 = v111;
      result = sub_237C05F1C();
      if (result < 0)
      {
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v29 = result;
      v30 = v112;
      if (result)
      {
        v16 = 0;
        v115 = *(v107 + 16);
        v113 = v107 + 32;
        v109 = result;
        while (1)
        {
          sub_237C05F9C();
          v31 = v117 ? v117 : MEMORY[0x277D84F90];
          v32 = sub_237B42F98(v31);
          if (v115)
          {
            break;
          }

LABEL_46:
          if (++v16 == v29)
          {
            return (*(v30 + 8))(v27, v28);
          }
        }

        v17 = 0;
        v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0) + 44);
        while (1)
        {
          v33 = &v17[v116];
          if (__OFADD__(v116, v17))
          {
            break;
          }

          if (*(v32 + 16))
          {
            v34 = v16;
            v35 = (v113 + 16 * v17);
            v36 = *v35;
            v37 = v35[1];
            sub_237C093CC();

            sub_237C0878C();
            v38 = sub_237C0940C();
            v39 = ~(-1 << *(v32 + 32));
            while (1)
            {
              v40 = v38 & v39;
              if (((*(v32 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
              {
                break;
              }

              v41 = (*(v32 + 48) + 16 * v40);
              v42 = 1.0;
              if (*v41 != v36 || v41[1] != v37)
              {
                v44 = sub_237C0929C();
                v38 = v40 + 1;
                if ((v44 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            v42 = 0.0;
LABEL_42:

            v16 = v34;
          }

          else
          {
            v42 = 0.0;
          }

          ++v17;
          v45 = sub_237A1F7FC(&v117, v16, v33);
          *v46 = v42;
          v45(&v117, 0);
          if (v17 == v115)
          {

            v28 = v111;
            v30 = v112;
            v29 = v109;
            v27 = v110;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_84:
        sub_237C05FFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
        if (swift_dynamicCastMetatype())
        {
          sub_237C05FEC();
          v78 = v16;
          result = sub_237C05F1C();
          if (result < 0)
          {
LABEL_109:
            __break(1u);
            return result;
          }

          v79 = result;
          if (!result)
          {
            return (*(v102 + 8))(v17, v78);
          }

          v80 = 0;
          v81 = *(v107 + 16);
          v114 = (v107 + 40);
          v115 = v81;
          v113 = result;
          while (1)
          {
            sub_237C05F9C();
            v82 = v117;
            if (!v117)
            {
              v82 = sub_237C085AC();
            }

            if (v115)
            {
              break;
            }

LABEL_99:
            if (++v80 == v79)
            {
              return (*(v102 + 8))(v17, v78);
            }
          }

          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
          v83 = 0;
          v84 = v114;
          while (1)
          {
            v85 = v116 + v83;
            if (__OFADD__(v116, v83))
            {
              break;
            }

            v86 = 0.0;
            if (*(v82 + 16))
            {
              v87 = *(v84 - 1);
              v88 = *v84;

              v89 = sub_237ACAC78(v87, v88);
              v91 = v90;

              if (v91)
              {
                v86 = *(*(v82 + 56) + 8 * v89);
              }
            }

            ++v83;
            v92 = sub_237A1F7FC(&v117, v80, v85);
            *v93 = v86;
            result = v92(&v117, 0);
            v84 += 2;
            if (v115 == v83)
            {

              v78 = v109;
              v17 = v106;
              v79 = v113;
              goto LABEL_99;
            }
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C181F0);
        v94 = sub_237C0600C();
        MEMORY[0x2383DC360](v94);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        sub_237C05FFC();
        v95 = sub_237C094DC();
        MEMORY[0x2383DC360](v95);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v96 = v117;
        v97 = v118;
        sub_2379E8AF0();
        v98 = swift_allocError();
        *v99 = v96;
        *(v99 + 8) = v97;
        *(v99 + 16) = 0u;
        *(v99 + 32) = 0u;
        *(v99 + 48) = 0;
        v108 = v98;
        return swift_willThrow();
      }
    }

    else
    {
      sub_237C05FFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_66;
      }

      v27 = v104;
      sub_237C05FEC();
      v28 = v105;
      result = sub_237C05F1C();
      if (result < 0)
      {
        goto LABEL_107;
      }

      v47 = result;
      v30 = v114;
      if (result)
      {
        v48 = 0;
        v115 = *(v107 + 16);
        v112 = result;
        v113 = v107 + 40;
        while (1)
        {
          sub_237C05F9C();
          v49 = v117;
          if (!v117)
          {
            v49 = sub_237C085AC();
          }

          if (v115)
          {
            break;
          }

LABEL_63:
          if (++v48 == v47)
          {
            return (*(v30 + 8))(v27, v28);
          }
        }

        v50 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v51 = v113;
        while (1)
        {
          v52 = v116 + v50;
          if (__OFADD__(v116, v50))
          {
            break;
          }

          v53 = 0.0;
          if (*(v49 + 16))
          {
            v55 = *(v51 - 1);
            v54 = *v51;

            v56 = sub_237ACAC78(v55, v54);
            v58 = v57;

            if (v58)
            {
              v53 = *(*(v49 + 56) + 8 * v56);
            }
          }

          ++v50;
          v59 = sub_237A1F7FC(&v117, v48, v52);
          *v60 = v53;
          v59(&v117, 0);
          v51 += 2;
          if (v115 == v50)
          {

            v28 = v105;
            v30 = v114;
            v27 = v104;
            v47 = v112;
            goto LABEL_63;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    return (*(v30 + 8))(v27, v28);
  }

  sub_237C05FEC();
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v114 = v14;
  v115 = v12;
  if (!result)
  {
    return (*(v111 + 8))(v114, v115);
  }

  v16 = 0;
  v17 = *(v107 + 16);
  v112 = v107 + 40;
  v113 = result;
  while (!v17)
  {
LABEL_19:
    if (++v16 == v113)
    {
      return (*(v111 + 8))(v114, v115);
    }
  }

  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
  v19 = v112;
  while (1)
  {
    v20 = &v18[v116];
    if (__OFADD__(v116, v18))
    {
      break;
    }

    v21 = *(v19 - 1);
    v14 = *v19;

    sub_237C05F9C();
    if (v118)
    {
      if (v21 == v117 && v118 == v14)
      {

        v24 = 1.0;
        goto LABEL_18;
      }

      v23 = sub_237C0929C();

      v24 = 1.0;
      if (v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v24 = 0.0;
LABEL_18:
    ++v18;
    v25 = sub_237A1F7FC(&v117, v16, v20);
    *v26 = v24;
    v25(&v117, 0);
    v19 += 2;
    if (v17 == v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_66:
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_84;
  }

  v61 = v101;
  sub_237C05FEC();
  v62 = v14;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v63 = result;
  if (result)
  {
    v64 = 0;
    v65 = *(v107 + 16);
    v114 = (v107 + 40);
    v115 = v65;
    v112 = result;
    while (1)
    {
      sub_237C05F9C();
      v66 = v117;
      if (!v117)
      {
        v66 = sub_237C085AC();
      }

      if (v115)
      {
        break;
      }

LABEL_81:
      ++v64;
      v62 = v113;
      if (v64 == v63)
      {
        return (*(v103 + 8))(v61, v62);
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v67 = 0;
    v68 = v114;
    while (1)
    {
      v69 = v116 + v67;
      if (__OFADD__(v116, v67))
      {
        break;
      }

      v70 = 0;
      if (*(v66 + 16))
      {
        v71 = *(v68 - 1);
        v72 = *v68;

        v73 = sub_237ACAC78(v71, v72);
        v75 = v74;

        if (v75)
        {
          v70 = *(*(v66 + 56) + 4 * v73);
        }
      }

      ++v67;
      v76 = sub_237A1F7FC(&v117, v64, v69);
      *v77 = v70;
      result = v76(&v117, 0);
      v68 += 2;
      if (v115 == v67)
      {

        v61 = v101;
        v63 = v112;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  return (*(v103 + 8))(v61, v62);
}

uint64_t sub_237A10C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a2;
  v116 = a3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v102 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v100 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v103 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v5 = &v100 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v100 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v111 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v100 - v13);
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v14 = v113;
    v110 = v11;
    v104 = v8;
    v17 = v106;
    v16 = v109;
    v111 = v9;
    v105 = v6;
    v101 = v5;
    sub_237C05FFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    if (swift_dynamicCastMetatype())
    {
      v27 = v110;
      sub_237C05FEC();
      v28 = v111;
      result = sub_237C05F1C();
      if (result < 0)
      {
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v29 = result;
      v30 = v112;
      if (result)
      {
        v16 = 0;
        v115 = *(v107 + 16);
        v113 = v107 + 32;
        v109 = result;
        while (1)
        {
          sub_237C05F9C();
          v31 = v117 ? v117 : MEMORY[0x277D84F90];
          v32 = sub_237B42F98(v31);
          if (v115)
          {
            break;
          }

LABEL_46:
          if (++v16 == v29)
          {
            return (*(v30 + 8))(v27, v28);
          }
        }

        v17 = 0;
        v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0) + 44);
        while (1)
        {
          v33 = &v17[v116];
          if (__OFADD__(v116, v17))
          {
            break;
          }

          if (*(v32 + 16))
          {
            v34 = v16;
            v35 = (v113 + 16 * v17);
            v36 = *v35;
            v37 = v35[1];
            sub_237C093CC();

            sub_237C0878C();
            v38 = sub_237C0940C();
            v39 = ~(-1 << *(v32 + 32));
            while (1)
            {
              v40 = v38 & v39;
              if (((*(v32 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
              {
                break;
              }

              v41 = (*(v32 + 48) + 16 * v40);
              v42 = 1.0;
              if (*v41 != v36 || v41[1] != v37)
              {
                v44 = sub_237C0929C();
                v38 = v40 + 1;
                if ((v44 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            v42 = 0.0;
LABEL_42:

            v16 = v34;
          }

          else
          {
            v42 = 0.0;
          }

          ++v17;
          v45 = sub_237A1F930(&v117, v16, v33);
          *v46 = v42;
          v45(&v117, 0);
          if (v17 == v115)
          {

            v28 = v111;
            v30 = v112;
            v29 = v109;
            v27 = v110;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_84:
        sub_237C05FFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
        if (swift_dynamicCastMetatype())
        {
          sub_237C05FEC();
          v78 = v16;
          result = sub_237C05F1C();
          if (result < 0)
          {
LABEL_109:
            __break(1u);
            return result;
          }

          v79 = result;
          if (!result)
          {
            return (*(v102 + 8))(v17, v78);
          }

          v80 = 0;
          v81 = *(v107 + 16);
          v114 = (v107 + 40);
          v115 = v81;
          v113 = result;
          while (1)
          {
            sub_237C05F9C();
            v82 = v117;
            if (!v117)
            {
              v82 = sub_237C085AC();
            }

            if (v115)
            {
              break;
            }

LABEL_99:
            if (++v80 == v79)
            {
              return (*(v102 + 8))(v17, v78);
            }
          }

          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
          v83 = 0;
          v84 = v114;
          while (1)
          {
            v85 = v116 + v83;
            if (__OFADD__(v116, v83))
            {
              break;
            }

            v86 = 0.0;
            if (*(v82 + 16))
            {
              v87 = *(v84 - 1);
              v88 = *v84;

              v89 = sub_237ACAC78(v87, v88);
              v91 = v90;

              if (v91)
              {
                v86 = *(*(v82 + 56) + 8 * v89);
              }
            }

            ++v83;
            v92 = sub_237A1F930(&v117, v80, v85);
            *v93 = v86;
            result = v92(&v117, 0);
            v84 += 2;
            if (v115 == v83)
            {

              v78 = v109;
              v17 = v106;
              v79 = v113;
              goto LABEL_99;
            }
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        v117 = 0;
        v118 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C181F0);
        v94 = sub_237C0600C();
        MEMORY[0x2383DC360](v94);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        sub_237C05FFC();
        v95 = sub_237C094DC();
        MEMORY[0x2383DC360](v95);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v96 = v117;
        v97 = v118;
        sub_2379E8AF0();
        v98 = swift_allocError();
        *v99 = v96;
        *(v99 + 8) = v97;
        *(v99 + 16) = 0u;
        *(v99 + 32) = 0u;
        *(v99 + 48) = 0;
        v108 = v98;
        return swift_willThrow();
      }
    }

    else
    {
      sub_237C05FFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_66;
      }

      v27 = v104;
      sub_237C05FEC();
      v28 = v105;
      result = sub_237C05F1C();
      if (result < 0)
      {
        goto LABEL_107;
      }

      v47 = result;
      v30 = v114;
      if (result)
      {
        v48 = 0;
        v115 = *(v107 + 16);
        v112 = result;
        v113 = v107 + 40;
        while (1)
        {
          sub_237C05F9C();
          v49 = v117;
          if (!v117)
          {
            v49 = sub_237C085AC();
          }

          if (v115)
          {
            break;
          }

LABEL_63:
          if (++v48 == v47)
          {
            return (*(v30 + 8))(v27, v28);
          }
        }

        v50 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v51 = v113;
        while (1)
        {
          v52 = v116 + v50;
          if (__OFADD__(v116, v50))
          {
            break;
          }

          v53 = 0;
          if (*(v49 + 16))
          {
            v55 = *(v51 - 1);
            v54 = *v51;

            v56 = sub_237ACAC78(v55, v54);
            v58 = v57;

            if (v58)
            {
              v53 = *(*(v49 + 56) + 8 * v56);
            }
          }

          ++v50;
          v59 = sub_237A1F930(&v117, v48, v52);
          *v60 = v53;
          v59(&v117, 0);
          v51 += 2;
          if (v115 == v50)
          {

            v28 = v105;
            v30 = v114;
            v27 = v104;
            v47 = v112;
            goto LABEL_63;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    return (*(v30 + 8))(v27, v28);
  }

  sub_237C05FEC();
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v114 = v14;
  v115 = v12;
  if (!result)
  {
    return (*(v111 + 8))(v114, v115);
  }

  v16 = 0;
  v17 = *(v107 + 16);
  v112 = v107 + 40;
  v113 = result;
  while (!v17)
  {
LABEL_19:
    if (++v16 == v113)
    {
      return (*(v111 + 8))(v114, v115);
    }
  }

  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
  v19 = v112;
  while (1)
  {
    v20 = &v18[v116];
    if (__OFADD__(v116, v18))
    {
      break;
    }

    v21 = *(v19 - 1);
    v14 = *v19;

    sub_237C05F9C();
    if (v118)
    {
      if (v21 == v117 && v118 == v14)
      {

        v24 = 1.0;
        goto LABEL_18;
      }

      v23 = sub_237C0929C();

      v24 = 1.0;
      if (v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v24 = 0.0;
LABEL_18:
    ++v18;
    v25 = sub_237A1F930(&v117, v16, v20);
    *v26 = v24;
    v25(&v117, 0);
    v19 += 2;
    if (v17 == v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_66:
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_84;
  }

  v61 = v101;
  sub_237C05FEC();
  v62 = v14;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v63 = result;
  if (result)
  {
    v64 = 0;
    v65 = *(v107 + 16);
    v114 = (v107 + 40);
    v115 = v65;
    v112 = result;
    while (1)
    {
      sub_237C05F9C();
      v66 = v117;
      if (!v117)
      {
        v66 = sub_237C085AC();
      }

      if (v115)
      {
        break;
      }

LABEL_81:
      ++v64;
      v62 = v113;
      if (v64 == v63)
      {
        return (*(v103 + 8))(v61, v62);
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v67 = 0;
    v68 = v114;
    while (1)
    {
      v69 = v116 + v67;
      if (__OFADD__(v116, v67))
      {
        break;
      }

      v70 = 0.0;
      if (*(v66 + 16))
      {
        v71 = *(v68 - 1);
        v72 = *v68;

        v73 = sub_237ACAC78(v71, v72);
        v75 = v74;

        if (v75)
        {
          v70 = *(*(v66 + 56) + 4 * v73);
        }
      }

      ++v67;
      v76 = sub_237A1F930(&v117, v64, v69);
      *v77 = v70;
      result = v76(&v117, 0);
      v68 += 2;
      if (v115 == v67)
      {

        v61 = v101;
        v63 = v112;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  return (*(v103 + 8))(v61, v62);
}

void sub_237A11974()
{
  OUTLINED_FUNCTION_74();
  v94 = v0;
  v95 = v1;
  v96 = v2;
  v93 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  OUTLINED_FUNCTION_0();
  v82 = v5;
  v83 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v81 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  OUTLINED_FUNCTION_0();
  v85 = v8;
  v86 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v84 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  OUTLINED_FUNCTION_0();
  v88 = v13;
  v89 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v87 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  OUTLINED_FUNCTION_0();
  v90 = v17;
  v91 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  OUTLINED_FUNCTION_0();
  v92 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A19470(v31, v93, v96, v95, v32, v33, v34, v35, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    (*(v28 + 8))(v31, v26);
  }

  else
  {
    v36 = v92;
    v37 = v95;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B180, &unk_237C152B0);
    if (OUTLINED_FUNCTION_51_2(v38))
    {
      OUTLINED_FUNCTION_70_0();
      sub_237C05FEC();
      OUTLINED_FUNCTION_45_0();
      sub_237A195BC(v39, v40, v41, v37, v42, v43, v44, v45, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      (*(v36 + 8))(v25, v21);
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B188, &qword_237C0CA58);
      if (OUTLINED_FUNCTION_51_2(v46))
      {
        OUTLINED_FUNCTION_70_0();
        sub_237C05FEC();
        OUTLINED_FUNCTION_45_0();
        sub_237A19708(v47, v48, v49, v37, v50, v51, v52, v53, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
        (*(v90 + 8))(v20, v91);
      }

      else
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
        v55 = v37;
        if (OUTLINED_FUNCTION_51_2(v54))
        {
          v56 = v87;
          OUTLINED_FUNCTION_70_0();
          sub_237C05FEC();
          OUTLINED_FUNCTION_45_0();
          sub_237A19854(v57, v58, v59, v55, v60, v61, v62, v63, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
          (*(v88 + 8))(v56, v89);
        }

        else
        {
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
          if (OUTLINED_FUNCTION_51_2(v64))
          {
            v65 = v84;
            OUTLINED_FUNCTION_70_0();
            sub_237C05FEC();
            OUTLINED_FUNCTION_48_3();
            OUTLINED_FUNCTION_45_0();
            sub_237A199A0(v66, v67, v68, v37, v69, v70, v71, v72, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
            (*(v86 + 8))(v65, v85);
          }

          else
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
            if (OUTLINED_FUNCTION_51_2(v73))
            {
              v74 = v81;
              OUTLINED_FUNCTION_70_0();
              sub_237C05FEC();
              sub_237A19AEC(v74);
              (*(v82 + 8))(v74, v83);
            }

            else
            {
              v97 = 0;
              v98 = 0xE000000000000000;
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C18220);
              v75 = sub_237C0600C();
              MEMORY[0x2383DC360](v75);

              OUTLINED_FUNCTION_61_1();
              sub_237C05FFC();
              v76 = sub_237C094DC();
              MEMORY[0x2383DC360](v76);

              MEMORY[0x2383DC360](46, 0xE100000000000000);
              v77 = v97;
              v78 = v98;
              sub_2379E8AF0();
              v79 = swift_allocError();
              *v80 = v77;
              v80[1] = v78;
              OUTLINED_FUNCTION_52(v79, v80);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A11F5C(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v65 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A147D8(v23, v70, &qword_27DE9AB98);
    return (*(v21 + 8))(v23, v20);
  }

  v25 = v69;
  v26 = v70;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A145D4(v19, v26);
    return (*(v25 + 8))(v19, v17);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14680(v16, v26);
    return (*(v68 + 8))(v16, v14);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v65;
    sub_237C05FEC();
    sub_237A1472C(v27, v26);
    v28 = v66;
    v29 = v67;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v62;
    sub_237C05FEC();
    sub_237A147D8(v27, v26, &qword_27DE9B070);
    v29 = v63;
    v28 = v64;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v59;
    sub_237C05FEC();
    sub_237A14B24(v27, v26, v30, v31, v32, v33, v34, v35, v49);
    v29 = v60;
    v28 = v61;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v56;
    sub_237C05FEC();
    sub_237A14BD0(v27, v26);
    v29 = v57;
    v28 = v58;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v53;
    sub_237C05FEC();
    sub_237A14C78(v36, v26);
    return (*(v54 + 8))(v36, v55);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v37 = v50;
      sub_237C05FEC();
      sub_237A14F24(v37, v26, v38, v39, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      return (*(v51 + 8))(v37, v52);
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000002CLL, 0x8000000237C180D0);
      v44 = sub_237C0600C();
      MEMORY[0x2383DC360](v44);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v45 = sub_237C094DC();
      MEMORY[0x2383DC360](v45);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v46 = v71;
      v47 = v72;
      sub_2379E8AF0();
      swift_allocError();
      *v48 = v46;
      *(v48 + 8) = v47;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      *(v48 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A12830(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v65 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14A80(v23, v70, &qword_27DE9AB98);
    return (*(v21 + 8))(v23, v20);
  }

  v25 = v69;
  v26 = v70;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A1487C(v19, v26);
    return (*(v25 + 8))(v19, v17);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14928(v16, v26);
    return (*(v68 + 8))(v16, v14);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v65;
    sub_237C05FEC();
    sub_237A149D4(v27, v26);
    v28 = v66;
    v29 = v67;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v62;
    sub_237C05FEC();
    sub_237A14A80(v27, v26, &qword_27DE9B070);
    v29 = v63;
    v28 = v64;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v59;
    sub_237C05FEC();
    sub_237A14D24(v27, v26, v30, v31, v32, v33, v34, v35, v49);
    v29 = v60;
    v28 = v61;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = v56;
    sub_237C05FEC();
    sub_237A14DD0(v27, v26);
    v29 = v57;
    v28 = v58;
    return (*(v29 + 8))(v27, v28);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v53;
    sub_237C05FEC();
    sub_237A14E7C(v36, v26);
    return (*(v54 + 8))(v36, v55);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v37 = v50;
      sub_237C05FEC();
      sub_237A14FF0(v37, v26, v38, v39, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      return (*(v51 + 8))(v37, v52);
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000002CLL, 0x8000000237C180D0);
      v44 = sub_237C0600C();
      MEMORY[0x2383DC360](v44);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v45 = sub_237C094DC();
      MEMORY[0x2383DC360](v45);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v46 = v71;
      v47 = v72;
      sub_2379E8AF0();
      swift_allocError();
      *v48 = v46;
      *(v48 + 8) = v47;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      *(v48 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A13104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14);
  v62 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  v67 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v46 - v24;
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A150C0(v25, v68, v71);
    return (*(v23 + 8))(v25, v22);
  }

  v27 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D8, &qword_237C0CA00);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A156C0(v21, v68, v71);
    return (*(v27 + 8))(v21, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A159C0(v18, v68, v71);
    v29 = v65;
    v28 = v66;
    return (*(v29 + 8))(v18, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  if (swift_dynamicCastMetatype())
  {
    v30 = v62;
    sub_237C05FEC();
    sub_237A15CBC(v30, v68, v71);
    return (*(v63 + 8))(v30, v64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
    if (swift_dynamicCastMetatype())
    {
      v18 = v59;
      sub_237C05FEC();
      sub_237A168B8(v18, v68, v71);
      v29 = v60;
      v28 = v61;
      return (*(v29 + 8))(v18, v28);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
    v31 = swift_dynamicCastMetatype();
    v32 = v71;
    v33 = v68;
    if (v31)
    {
      v34 = v56;
      sub_237C05FEC();
      sub_237A173A8(v34, v33, v32);
      return (*(v58 + 8))(v34, v57);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
      if (swift_dynamicCastMetatype())
      {
        v35 = v53;
        sub_237C05FEC();
        sub_237A17920(v35, v33, v32);
        return (*(v54 + 8))(v35, v55);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
        if (swift_dynamicCastMetatype())
        {
          v36 = v50;
          sub_237C05FEC();
          sub_237A17E94(v36, v33, v32);
          return (*(v51 + 8))(v36, v52);
        }

        else
        {
          sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
          if (swift_dynamicCastMetatype())
          {
            v37 = v47;
            sub_237C05FEC();
            v38 = v32;
            v39 = v46;
            v40 = v49;
            sub_237C05F6C();
            sub_237A17E94(v39, v33, v38);
            (*(v51 + 8))(v39, v52);
            return (*(v48 + 8))(v37, v40);
          }

          else
          {
            v69 = 0;
            v70 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000031, 0x8000000237C18100);
            v41 = sub_237C0600C();
            MEMORY[0x2383DC360](v41);

            MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
            sub_237C05FFC();
            v42 = sub_237C094DC();
            MEMORY[0x2383DC360](v42);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            v43 = v69;
            v44 = v70;
            sub_2379E8AF0();
            swift_allocError();
            *v45 = v43;
            *(v45 + 8) = v44;
            *(v45 + 16) = 0u;
            *(v45 + 32) = 0u;
            *(v45 + 48) = 0;
            return swift_willThrow();
          }
        }
      }
    }
  }
}

uint64_t sub_237A13B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14);
  v62 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  v67 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v46 - v24;
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A153C0(v25, v68, v71);
    return (*(v23 + 8))(v25, v22);
  }

  v27 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D8, &qword_237C0CA00);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A15FBC(v21, v68, v71);
    return (*(v27 + 8))(v21, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A162BC(v18, v68, v71);
    v29 = v65;
    v28 = v66;
    return (*(v29 + 8))(v18, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  if (swift_dynamicCastMetatype())
  {
    v30 = v62;
    sub_237C05FEC();
    sub_237A165BC(v30, v68, v71);
    return (*(v63 + 8))(v30, v64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
    if (swift_dynamicCastMetatype())
    {
      v18 = v59;
      sub_237C05FEC();
      sub_237A16E30(v18, v68, v71);
      v29 = v60;
      v28 = v61;
      return (*(v29 + 8))(v18, v28);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
    v31 = swift_dynamicCastMetatype();
    v32 = v71;
    v33 = v68;
    if (v31)
    {
      v34 = v56;
      sub_237C05FEC();
      sub_237A1840C(v34, v33, v32);
      return (*(v58 + 8))(v34, v57);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
      if (swift_dynamicCastMetatype())
      {
        v35 = v53;
        sub_237C05FEC();
        sub_237A18984(v35, v33, v32);
        return (*(v54 + 8))(v35, v55);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
        if (swift_dynamicCastMetatype())
        {
          v36 = v50;
          sub_237C05FEC();
          sub_237A18EFC(v36, v33, v32);
          return (*(v51 + 8))(v36, v52);
        }

        else
        {
          sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
          if (swift_dynamicCastMetatype())
          {
            v37 = v47;
            sub_237C05FEC();
            v38 = v32;
            v39 = v46;
            v40 = v49;
            sub_237C05F6C();
            sub_237A18EFC(v39, v33, v38);
            (*(v51 + 8))(v39, v52);
            return (*(v48 + 8))(v37, v40);
          }

          else
          {
            v69 = 0;
            v70 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000031, 0x8000000237C18100);
            v41 = sub_237C0600C();
            MEMORY[0x2383DC360](v41);

            MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
            sub_237C05FFC();
            v42 = sub_237C094DC();
            MEMORY[0x2383DC360](v42);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            v43 = v69;
            v44 = v70;
            sub_2379E8AF0();
            swift_allocError();
            *v45 = v43;
            *(v45 + 8) = v44;
            *(v45 + 16) = 0u;
            *(v45 + 32) = 0u;
            *(v45 + 48) = 0;
            return swift_willThrow();
          }
        }
      }
    }
  }
}

uint64_t sub_237A150C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 8 * v9);
      v12 = sub_237A1F7FC(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A153C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 8 * v9);
      v12 = sub_237A1F930(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A156C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v26 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v28;
      if (!v28)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v27 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v28 = 0;
        v29 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v30 = a2;
        v19 = sub_237C0924C();
        MEMORY[0x2383DC360](v19);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v20 = sub_237C05F0C();
        MEMORY[0x2383DC360](v20);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v30 = v8;
        v21 = sub_237C0924C();
        MEMORY[0x2383DC360](v21);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v30 = v6;
        v22 = sub_237C0924C();
        MEMORY[0x2383DC360](v22);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v23 = v28;
        v24 = v29;
        sub_2379E8AF0();
        swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0u;
        *(v25 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v26)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      _H0 = *(v27 + 32 + 2 * v9);
      __asm { FCVT            S8, H0 }

      v17 = sub_237A1F7FC(&v28, v6, a3 + v9);
      *v18 = _S8;
      result = v17(&v28, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A159C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 4 * v9);
      v12 = sub_237A1F7FC(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A15CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 8 * v9);
      v12 = sub_237A1F7FC(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}