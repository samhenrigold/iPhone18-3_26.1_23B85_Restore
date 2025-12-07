unint64_t sub_270443AF0()
{
  result = qword_2807D2780;
  if (!qword_2807D2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2780);
  }

  return result;
}

unint64_t sub_270443B48()
{
  result = qword_2807D2788;
  if (!qword_2807D2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2788);
  }

  return result;
}

unint64_t sub_270443BA0()
{
  result = qword_2807D2790;
  if (!qword_2807D2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2790);
  }

  return result;
}

unint64_t sub_270443BF8()
{
  result = qword_2807D2798;
  if (!qword_2807D2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2798);
  }

  return result;
}

unint64_t sub_270443C50()
{
  result = qword_2807D27A0;
  if (!qword_2807D27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27A0);
  }

  return result;
}

unint64_t sub_270443CA8()
{
  result = qword_2807D27A8;
  if (!qword_2807D27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27A8);
  }

  return result;
}

unint64_t sub_270443D00()
{
  result = qword_2807D27B0;
  if (!qword_2807D27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27B0);
  }

  return result;
}

unint64_t sub_270443D58()
{
  result = qword_2807D27B8;
  if (!qword_2807D27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27B8);
  }

  return result;
}

unint64_t sub_270443DB0()
{
  result = qword_2807D27C0;
  if (!qword_2807D27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27C0);
  }

  return result;
}

unint64_t sub_270443E08()
{
  result = qword_2807D27C8;
  if (!qword_2807D27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27C8);
  }

  return result;
}

unint64_t sub_270443E60()
{
  result = qword_2807D27D0;
  if (!qword_2807D27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27D0);
  }

  return result;
}

unint64_t sub_270443F18()
{
  result = qword_2807D27D8;
  if (!qword_2807D27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27D8);
  }

  return result;
}

uint64_t sub_27044404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HorizontalStackComponentModel(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_87(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_270444100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HorizontalStackComponentModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2704441A8(uint64_t a1)
{
  type metadata accessor for HorizontalStackComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_27044422C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27044422C(uint64_t a1)
{
  if (!qword_2807D27F0)
  {
    type metadata accessor for HorizontalStackState(255);
    v1 = sub_2705D5E84();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D27F0);
    }
  }
}

unint64_t sub_2704442E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_270444368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_2704443C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalStackComponentModelView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27044442C(double a1)
{
  v2 = type metadata accessor for HorizontalStackComponentModelView(0);
  OUTLINED_FUNCTION_23_0(v2);

  return sub_270443718(a1);
}

uint64_t sub_2704444A0()
{

  return swift_deallocObject();
}

unint64_t sub_2704444D8()
{
  result = qword_2807D2828;
  if (!qword_2807D2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2808, &qword_2705EE8C0);
    sub_270414D3C();
    sub_2704148A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2828);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for HorizontalStackComponentModelView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);

  if (*(v2 + 30))
  {
  }

  if (*(v2 + 41))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 38);
  }

  v3 = *(type metadata accessor for HorizontalStackComponentModel(0) + 52);
  v4 = sub_2705D6A54();
  if (!__swift_getEnumTagSinglePayload(&v2[v3], 1, v4))
  {
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  return swift_deallocObject();
}

uint64_t sub_270444740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HorizontalStackComponentModelView(0);
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_270442B68(a1, v7, a2);
}

uint64_t sub_2704447C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_2704447FC()
{
  result = qword_2807D2888;
  if (!qword_2807D2888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2880, &qword_2705EE988);
    sub_270444888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2888);
  }

  return result;
}

unint64_t sub_270444888()
{
  result = qword_2807D2890;
  if (!qword_2807D2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2898, &qword_2705EE990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2890);
  }

  return result;
}

unint64_t sub_270444910()
{
  result = qword_2807D28A8;
  if (!qword_2807D28A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2810, &qword_2705EE8C8);
    sub_2704444D8();
    sub_2704148A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28A8);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_26(uint64_t a1)
{

  return sub_2705D7F44();
}

unint64_t OUTLINED_FUNCTION_14_18(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_2705D7FA4();
}

__n128 OUTLINED_FUNCTION_24_10@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(v1 + 16) = *(v1 + 96);
  *(v1 + 32) = v2;
  result = *(v1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t a1, uint64_t a2)
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t sub_270444B78(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D28C0, &qword_2705EEA90);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270444EBC();
  sub_2705D84C4();
  sub_2705D8034();
  return (*(v5 + 8))(v8, v3);
}

void *sub_270444CAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D28B0, &qword_2705EEA88);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270444EBC();
  sub_2705D8484();
  if (!v1)
  {
    v9 = sub_2705D7F54();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_270444DFC(uint64_t a1)
{
  v2 = sub_270444EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270444E38(uint64_t a1)
{
  v2 = sub_270444EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_270444E74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270444CAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_270444EBC()
{
  result = qword_2807D28B8;
  if (!qword_2807D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IconImageModel.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x270444FACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270444FE8()
{
  result = qword_2807D28C8;
  if (!qword_2807D28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28C8);
  }

  return result;
}

unint64_t sub_270445040()
{
  result = qword_2807D28D0;
  if (!qword_2807D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28D0);
  }

  return result;
}

unint64_t sub_270445098()
{
  result = qword_2807D28D8[0];
  if (!qword_2807D28D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D28D8);
  }

  return result;
}

uint64_t sub_2704450EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27044516C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2704452FC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x270445548);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_270445590()
{
  sub_2705D83B4();
  sub_270445588(v1);
  return sub_2705D8414();
}

uint64_t sub_2704455D8(uint64_t a1)
{
  sub_2705D83B4();
  sub_270445588(v2);
  return sub_2705D8414();
}

uint64_t sub_270445614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a1 == *a2 && a1[1] == v6;
  if (!v7 && (sub_2705D8134() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IdentifiableWrapper(0, a3, v5, v6);
  return sub_2705D7514() & 1;
}

uint64_t sub_270445700(uint64_t a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = sub_2705D6734();
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2704457E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = sub_2705D6734();
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_2704458D8(uint64_t a1)
{
  sub_2704459D4();
  if (v1 <= 0x3F)
  {
    sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328, qword_2705DF710);
    if (v2 <= 0x3F)
    {
      sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80);
      if (v3 <= 0x3F)
      {
        sub_2705D6734();
        if (v4 <= 0x3F)
        {
          sub_270445A50();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2704459D4()
{
  if (!qword_2807D2970)
  {
    v0 = sub_2705D6924();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2970);
    }
  }
}

void sub_270445A50()
{
  if (!qword_2807D2978)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2978);
    }
  }
}

uint64_t sub_270445AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0, &qword_2705EC580);
  swift_getKeyPath();
  sub_2703E2A50(&unk_2807D13D8);
  sub_2705D45F4();

  swift_beginAccess();
  return *(v0 + 40);
}

__n128 sub_270445B8C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1348, &unk_2705EF650);
  swift_getKeyPath();
  sub_2703E2A50(&unk_2807D1350);
  sub_2705D45F4();

  swift_beginAccess();
  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double sub_270445C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_270449D74(a1, a2, type metadata accessor for ImageComponentModel);
  v3 = a2 + *(type metadata accessor for ImageComponentView(0) + 20);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  result = *&v5;
  *v3 = v5;
  *(v3 + 16) = v6;
  return result;
}

uint64_t sub_270445D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58[7] = a1;
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1440, &qword_2705EF6D0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_5();
  v58[1] = v4 - v5;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v6);
  v58[0] = v58 - v7;
  v8 = type metadata accessor for ImageComponentView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v58[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B58, &qword_2705EF6D8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_5();
  v58[2] = v13 - v14;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v15);
  v58[4] = v58 - v16;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v17);
  v58[5] = v58 - v18;
  sub_270449D74(v2, v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageComponentView);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_27044A418(v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_270449D74(v2, v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageComponentView);
  v21 = swift_allocObject();
  sub_27044A418(v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19);
  v22 = sub_2705D60A4();
  v24 = v23;
  v25 = sub_2705D5CD4();
  v26 = sub_2705D60A4();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_27044A71C;
  *(v29 + 24) = v21;
  v73[0] = sub_27044A47C;
  v73[1] = v20;
  v73[2] = v25;
  v73[3] = sub_270412C5C;
  v73[4] = v29;
  v73[5] = v26;
  v73[6] = v28;
  v73[7] = v22;
  v73[8] = v24;
  v74[0] = sub_27044A47C;
  v74[1] = v20;
  v74[2] = v25;
  v74[3] = sub_270412C5C;
  v74[4] = v29;
  v74[5] = v26;
  v74[6] = v28;
  v74[7] = v22;
  v74[8] = v24;
  sub_2703FC5C0(v73, v69, &qword_2807D1538, &unk_2705EF6E0);
  sub_2703C2EFC(v74, &qword_2807D1538, &unk_2705EF6E0);
  v30 = v2 + *(v9 + 28);
  v31 = *(v30 + 16);
  v69[0] = *v30;
  *&v69[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60, &unk_2706028A0);
  sub_2705D5E54();
  v32 = v68[1] != 0.0 && v68[0] != 0.0;
  v58[10] = v2;
  sub_2705330B4(v32, sub_27044A7CC, v67);
  sub_2703C2EFC(v73, &qword_2807D1538, &unk_2705EF6E0);
  memcpy(v72, v67, 0xB9uLL);
  v33 = type metadata accessor for ImageComponentModel(0);
  v34 = (v2 + *(v33 + 52));
  *(v71 + 9) = *(v34 + 41);
  v35 = v34[1];
  v70[0] = *v34;
  v70[1] = v35;
  v71[0] = v34[2];
  sub_270475A90(v70);
  sub_2703C2EFC(v72, &qword_2807D1518, &unk_2705EF6F0);
  memcpy(v69, v68, 0x17BuLL);
  v36 = (v2 + *(v33 + 56));
  v37 = v36[1];
  v62 = *v36;
  v63 = v37;
  v38 = v36[3];
  v64 = v36[2];
  v65 = v38;
  v66[0] = v62;
  v66[1] = v37;
  v66[3] = v38;
  v66[2] = v64;
  if (v62)
  {
    sub_2703E2A94(v66, v61);
    v60[0] = v62;
    v60[1] = v63;
    v60[2] = v64;
    v60[3] = v65;
    sub_270444564(v60, &v59);
    sub_2704066BC(v61);
    sub_270413B14();
    sub_2705029A0();
    OUTLINED_FUNCTION_16_10();
    sub_2703C2EFC(v39, v40, v41);
    sub_2705029A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1450, &qword_2705E7658);
    sub_2704133A0();
    sub_2705413F8();
    sub_2703C2EFC(&v62, &qword_2807CFE38, &qword_2705E2990);
    OUTLINED_FUNCTION_16_10();
    sub_2703C2EFC(v42, v43, v44);
    OUTLINED_FUNCTION_16_10();
  }

  else
  {
    memcpy(v60, v68, 0x17BuLL);
    sub_2703FC5C0(v69, v61, &qword_2807D1450, &qword_2705E7658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1450, &qword_2705E7658);
    sub_270413B14();
    sub_2704133A0();
    sub_2705414A8();
    memcpy(v61, v60, 0x17BuLL);
    v45 = v61;
    v46 = &qword_2807D1450;
    v47 = &qword_2705E7658;
  }

  sub_2703C2EFC(v45, v46, v47);
  sub_27044A7D4();
  sub_2705029A0();
  OUTLINED_FUNCTION_16_10();
  sub_2703C2EFC(v48, v49, v50);
  sub_2703C2EFC(v69, &qword_2807D1450, &qword_2705E7658);
  sub_2705029A0();
  OUTLINED_FUNCTION_16_10();
  sub_2703C2EFC(v51, v52, v53);
  sub_2705029A0();
  OUTLINED_FUNCTION_16_10();
  return sub_2703C2EFC(v54, v55, v56);
}

void *sub_270446364@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0, &unk_2705EF750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __src - v5;
  *v6 = sub_2705D53C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C8, &unk_2705ECC00);
  type metadata accessor for ImageComponentModel(0);
  v7 = a1 + *(type metadata accessor for ImageComponentView(0) + 20);
  v8 = *(v7 + 16);
  __src[0] = *v7;
  *&__src[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60, &unk_2706028A0);
  sub_2705D5E54();
  sub_2705D6714();
  sub_2705D60A4();
  sub_2705D5094(__src);
  sub_2703FC3D4(v6, a2, &qword_2807D23C0, &unk_2705EF750);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23D0, &unk_2705EF760);
  return memcpy((a2 + *(v9 + 36)), __src, 0x70uLL);
}

void sub_270446518(uint64_t a1, double a2, double a3)
{
  type metadata accessor for ImageComponentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60, &unk_2706028A0);
  sub_2705D5E54();
  v5 = vabdd_f64(v8, a3);
  if (vabdd_f64(v7, a2) > 1.0 || v5 > 1.0)
  {
    type metadata accessor for ImageComponentModel(0);
    sub_2705D6704();
    sub_27054CE74();
    sub_2705D5E64();
  }
}

uint64_t sub_270446624@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = (a2 + *(type metadata accessor for ImageComponentView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60, &unk_2706028A0);
  sub_2705D5E54();
  __srca[0] = v6;
  __srca[1] = v7;
  __srca[2] = v8;
  sub_2705D5E54();
  sub_2705D60A4();
  sub_2705D5094(__srca);
  memcpy(a3, __dst, 0x48uLL);
  memcpy((a3 + 72), __srca, 0x70uLL);
  return sub_2703FC5C0(__dst, &v10, &qword_2807D1538, &unk_2705EF6E0);
}

uint64_t sub_2704467BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165487465656873 && a2 == 0xEB00000000726564;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613E30 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6B72616D64726F77 && a2 == 0xE800000000000000)
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

unint64_t sub_270446928(char a1)
{
  result = 0x6165487465656873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6C676E6174636572;
      break;
    case 3:
      result = 0x6B72616D64726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704469CC(void *a1, uint64_t a2)
{
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A20, &qword_2705EEED0);
  OUTLINED_FUNCTION_0();
  v38 = v5;
  v39 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A28, &qword_2705EEED8);
  OUTLINED_FUNCTION_0();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A30, &qword_2705EEEE0);
  OUTLINED_FUNCTION_0();
  v32 = v13;
  v33 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A38, &qword_2705EEEE8);
  OUTLINED_FUNCTION_0();
  v31 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A40, &qword_2705EEEF0);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704485A0();
  sub_2705D84C4();
  switch(v40)
  {
    case 1:
      v42 = 1;
      sub_27044934C();
      OUTLINED_FUNCTION_14_19(&type metadata for AssetViewComponentModel.Style.SheetBannerHeaderCodingKeys);
      (*(v32 + 8))(v2, v33);
      break;
    case 2:
      v43 = 2;
      sub_2704492F8();
      v26 = v34;
      OUTLINED_FUNCTION_14_19(&type metadata for AssetViewComponentModel.Style.RectangleCodingKeys);
      v28 = v35;
      v27 = v36;
      goto LABEL_5;
    case 3:
      v44 = 3;
      sub_2704492A4();
      v26 = v37;
      OUTLINED_FUNCTION_14_19(&type metadata for AssetViewComponentModel.Style.WordmarkCodingKeys);
      v28 = v38;
      v27 = v39;
LABEL_5:
      (*(v28 + 8))(v26, v27);
      break;
    default:
      v41 = 0;
      sub_2704493A0();
      OUTLINED_FUNCTION_14_19(&type metadata for AssetViewComponentModel.Style.SheetHeaderCodingKeys);
      (*(v31 + 8))(v19, v15);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

uint64_t sub_270446D9C(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29D0, &qword_2705EEEA0);
  OUTLINED_FUNCTION_0();
  v60 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v62 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29D8, &qword_2705EEEA8);
  OUTLINED_FUNCTION_0();
  v57 = v7;
  v58 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v59 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29E0, &qword_2705EEEB0);
  OUTLINED_FUNCTION_0();
  v55 = v11;
  v56 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29E8, &qword_2705EEEB8);
  OUTLINED_FUNCTION_0();
  v54 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29F0, &unk_2705EEEC0);
  OUTLINED_FUNCTION_0();
  v61 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704485A0();
  v23 = v64;
  sub_2705D8484();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v13;
  v52 = v17;
  v53 = v1;
  v24 = v62;
  v25 = v63;
  v64 = a1;
  v26 = v22;
  v27 = sub_2705D7FB4();
  sub_27042C9F0(v27, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270447380);
  }

  v31 = *(v28 + v29);
  sub_27042C9E4(v29 + 1);
  v33 = v32;
  v35 = v34;
  swift_unknownObjectRelease();
  if (v33 != v35 >> 1)
  {
LABEL_8:
    v41 = sub_2705D7D84();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v43 = &type metadata for AssetViewComponentModel.Style;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v26, v18);
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v31;
  v37 = v31;
  v39 = v60;
  v38 = v61;
  switch(v37)
  {
    case 1:
      v66 = 1;
      sub_27044934C();
      v45 = v53;
      OUTLINED_FUNCTION_25_3(&type metadata for AssetViewComponentModel.Style.SheetBannerHeaderCodingKeys, &v66);
      swift_unknownObjectRelease();
      v47 = v55;
      v46 = v56;
      goto LABEL_18;
    case 2:
      v67[0] = 2;
      sub_2704492F8();
      v45 = v59;
      OUTLINED_FUNCTION_25_3(&type metadata for AssetViewComponentModel.Style.RectangleCodingKeys, v67);
      swift_unknownObjectRelease();
      v47 = v57;
      v46 = v58;
LABEL_18:
      (*(v47 + 8))(v45, v46);
      goto LABEL_19;
    case 3:
      v67[1] = 3;
      sub_2704492A4();
      v48 = v50;
      sub_2705D7ED4();
      if (v48)
      {
        (*(v38 + 8))(v26, v18);
        swift_unknownObjectRelease();
        a1 = v64;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v39 + 8))(v24, v25);
LABEL_19:
      (*(v38 + 8))(v26, v18);
      __swift_destroy_boxed_opaque_existential_1(v64);
      result = v36;
      break;
    default:
      v65 = 0;
      sub_2704493A0();
      v40 = v52;
      OUTLINED_FUNCTION_25_3(&type metadata for AssetViewComponentModel.Style.SheetHeaderCodingKeys, &v65);
      swift_unknownObjectRelease();
      (*(v54 + 8))(v40, v51);
      goto LABEL_19;
  }

  return result;
}

double sub_270447390()
{
  v1 = sub_2703FC5C0(v0, &v13, &qword_2807D2990, &qword_2705EEE80);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

double sub_2704473D8()
{
  v1 = sub_2703FC5C0(v0 + 40, &v13, &qword_2807CF2D8, &unk_2705DF6E0);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_270447428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704467BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270447450(uint64_t a1)
{
  v2 = sub_2704485A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044748C(uint64_t a1)
{
  v2 = sub_2704485A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704474C8(uint64_t a1)
{
  v2 = sub_2704492F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270447504(uint64_t a1)
{
  v2 = sub_2704492F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270447540(uint64_t a1)
{
  v2 = sub_27044934C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044757C(uint64_t a1)
{
  v2 = sub_27044934C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704475B8(uint64_t a1)
{
  v2 = sub_2704493A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704475F4(uint64_t a1)
{
  v2 = sub_2704493A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270447630(uint64_t a1)
{
  v2 = sub_2704492A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044766C(uint64_t a1)
{
  v2 = sub_2704492A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704476A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270446D9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704476F4()
{
  result = qword_2807D2980;
  if (!qword_2807D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2980);
  }

  return result;
}

uint64_t sub_270447748@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for AssetViewComponentModel(0);
  sub_2703FC5C0(v1 + *(v6 + 24), v5, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703FC3D4(v5, a1, &qword_2807CF190, &unk_2705DEE80);
}

uint64_t sub_270447808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

unint64_t sub_2704479A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x656C797473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270447A40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29B8, &qword_2705EEE98);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270448404();
  sub_2705D84C4();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2990, &qword_2705EEE80);
  sub_2703E2A50(&unk_2807D29C0);
  sub_2705D8084();
  if (!v2)
  {
    v16[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_25_2(v3 + 40);
    v11 = type metadata accessor for AssetViewComponentModel(0);
    v12 = v11[6];
    v16[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    sub_2703E1004();
    OUTLINED_FUNCTION_25_2(v3 + v12);
    v13 = v11[7];
    v16[12] = 3;
    sub_2705D6734();
    OUTLINED_FUNCTION_0_28();
    sub_270448458(v14);
    OUTLINED_FUNCTION_25_2(v3 + v13);
    v16[11] = *(v3 + v11[8]);
    v16[10] = 4;
    sub_27044854C();
    sub_2705D8024();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_270447D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2998, &unk_2705EEE88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for AssetViewComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  *(v14 - v13 + 40) = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v30 = v14 - v13 + 40;
  sub_2703F92B0(&v32, v30, &unk_2807CF480, &unk_2705DC040);
  v31 = v11;
  v16 = *(v11 + 24);
  v17 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270448404();
  sub_2705D8484();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703C2EFC(v30, &qword_2807CF2D8, &unk_2705DF6E0);
    return sub_2703C2EFC(v15 + v16, &qword_2807CF130, &unk_2705DEE50);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    v35 = 0;
    sub_2703E2A50(&unk_2807D29A8);
    sub_2705D7FA4();
    v20 = v33;
    *v15 = v32;
    *(v15 + 16) = v20;
    *(v15 + 32) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    v35 = 1;
    sub_2703E0F80(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F92B0(&v32, v30, &qword_2807CF2D8, &unk_2705DF6E0);
    LOBYTE(v32) = 2;
    sub_2703E0C88();
    sub_2705D7FA4();
    sub_2703F92B0(v2, v15 + v16, &qword_2807CF130, &unk_2705DEE50);
    LOBYTE(v32) = 3;
    OUTLINED_FUNCTION_0_28();
    sub_270448458(v21);
    sub_2705D7FA4();
    (*(v27 + 32))(v15 + *(v31 + 28), v8, v28);
    v35 = 4;
    sub_27044849C();
    sub_2705D7F44();
    v22 = *(v31 + 32);
    v23 = OUTLINED_FUNCTION_3_29();
    v24(v23);
    *(v15 + v22) = v32;
    sub_270449D74(v15, a2, type metadata accessor for AssetViewComponentModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2704484F0(v15);
  }
}

uint64_t sub_2704482E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270447808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270448308(uint64_t a1)
{
  v2 = sub_270448404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270448344(uint64_t a1)
{
  v2 = sub_270448404();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270448404()
{
  result = qword_2807D29A0;
  if (!qword_2807D29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29A0);
  }

  return result;
}

unint64_t sub_270448458(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27044849C()
{
  result = qword_2807D29B0;
  if (!qword_2807D29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29B0);
  }

  return result;
}

uint64_t sub_2704484F0(uint64_t a1)
{
  v2 = type metadata accessor for AssetViewComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27044854C()
{
  result = qword_2807D29C8;
  if (!qword_2807D29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29C8);
  }

  return result;
}

unint64_t sub_2704485A0()
{
  result = qword_2807D29F8;
  if (!qword_2807D29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29F8);
  }

  return result;
}

uint64_t sub_2704485F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v112 = a4;
  v96 = sub_2705D66C4();
  OUTLINED_FUNCTION_0();
  v94 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_5();
  v93 = v8 - v9;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v10);
  v92 = &v90 - v11;
  v102 = sub_2705D66D4();
  OUTLINED_FUNCTION_0();
  v97 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v95 = v15 - v14;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AC8, &qword_2705EF5D8);
  OUTLINED_FUNCTION_0();
  v99 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v98 = v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD0, &qword_2705EF5E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v101 = v20;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8, &qword_2705EF5E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v103 = v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AE0, &qword_2705EF5F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v110 = v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AE8, &qword_2705EF5F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_0();
  v106 = v26;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AF0, &unk_2705EF600);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v107 = v28;
  v29 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27_5();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v91 = &v90 - v37;
  OUTLINED_FUNCTION_24_6();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v90 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v90 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v90 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v90 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v90 - v51;
  v53 = type metadata accessor for AssetViewComponentModel(0);
  switch(*(a1 + *(v53 + 32)))
  {
    case 1:
      v79 = *(v31 + 16);
      v79(v44, a1 + *(v53 + 28), v29);
      if (!a2)
      {
        goto LABEL_9;
      }

      sub_270408F58();
      sub_270445AB0();

      sub_270408F58();

      sub_270445AB0();

      sub_2705D6714();
      v80 = *(v31 + 8);
      v80(v44, v29);
      v79(v106, v47, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      v82 = sub_270448458(v81);
      OUTLINED_FUNCTION_15_15(v82);
      OUTLINED_FUNCTION_21_9();
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      v83 = sub_270449EA4();
      OUTLINED_FUNCTION_22_7(v83);
      sub_2703C2EFC(v44, &qword_2807D2AF0, &unk_2705EF600);
      result = (v80)(v47, v29);
      break;
    case 2:
      sub_2705D6714();
      v84 = v31;
      (*(v31 + 16))(v101, v41, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      v86 = sub_270448458(v85);
      OUTLINED_FUNCTION_5_28();
      v88 = sub_270448458(v87);
      v113 = v29;
      v114 = v102;
      v115 = v86;
      v116 = v88;
      OUTLINED_FUNCTION_6_24();
      v89 = v103;
      sub_2705D5434();
      sub_270449FD8(v89, v110);
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      sub_2705D5434();
      sub_27044A03C(v89);
      return (*(v84 + 8))(v41, v29);
    case 3:
      v60 = v31;
      v61 = *(v31 + 16);
      v62 = v29;
      v61(v35, a1 + *(v53 + 28), v29);
      if (!a2)
      {
        goto LABEL_9;
      }

      sub_270408F58();

      sub_270445AB0();

      v63 = v91;
      sub_2705D6714();
      v64 = *(v60 + 8);
      v65 = v64(v35, v62);
      v66 = v93;
      MEMORY[0x2743A2AD0](v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B10, &qword_2706107D0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_2705EEC90;
      type metadata accessor for ActionResultHandler();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v67 + 32) = [objc_opt_self() bundleForClass_];
      v113 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B18, &qword_2705EF610);
      sub_2703E2A50(&unk_2807D2B20);
      sub_2705D66A4();

      (*(v94 + 8))(v66, v96);
      v69 = v95;
      sub_2705D66E4();
      OUTLINED_FUNCTION_0_28();
      v71 = sub_270448458(v70);
      OUTLINED_FUNCTION_5_28();
      v73 = sub_270448458(v72);
      v74 = v98;
      v75 = v102;
      sub_2705D59F4();
      (*(v97 + 8))(v69, v75);
      v64(v63, v62);
      v76 = v99;
      v77 = v104;
      (*(v99 + 16))(v101, v74, v104);
      swift_storeEnumTagMultiPayload();
      v113 = v62;
      v114 = v75;
      v115 = v71;
      v116 = v73;
      OUTLINED_FUNCTION_6_24();
      v78 = v103;
      sub_2705D5434();
      sub_270449FD8(v78, v110);
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      sub_2705D5434();
      sub_27044A03C(v78);
      result = (*(v76 + 8))(v74, v77);
      break;
    default:
      v54 = *(v31 + 16);
      v54(v50, a1 + *(v53 + 28), v29);
      if (!a2)
      {
LABEL_9:
        type metadata accessor for DynamicSheetElementDimensionCache(0);
        sub_270448458(&qword_2807CFD50);
        sub_2705D50A4();
        __break(1u);
        JUMPOUT(0x270449280);
      }

      sub_270408F58();
      sub_270445AB0();

      sub_270408F58();

      sub_270445AB0();

      sub_2705D6714();
      v55 = *(v31 + 8);
      v55(v50, v29);
      v54(v106, v52, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      v57 = sub_270448458(v56);
      OUTLINED_FUNCTION_15_15(v57);
      OUTLINED_FUNCTION_21_9();
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      v58 = sub_270449EA4();
      OUTLINED_FUNCTION_22_7(v58);
      sub_2703C2EFC(v31 + 16, &qword_2807D2AF0, &unk_2705EF600);
      result = (v55)(v52, v29);
      break;
  }

  return result;
}

unint64_t sub_2704492A4()
{
  result = qword_2807D2A00;
  if (!qword_2807D2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A00);
  }

  return result;
}

unint64_t sub_2704492F8()
{
  result = qword_2807D2A08;
  if (!qword_2807D2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A08);
  }

  return result;
}

unint64_t sub_27044934C()
{
  result = qword_2807D2A10;
  if (!qword_2807D2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A10);
  }

  return result;
}

unint64_t sub_2704493A0()
{
  result = qword_2807D2A18;
  if (!qword_2807D2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A18);
  }

  return result;
}

_BYTE *sub_2704493F8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704494C4);
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

_BYTE *storeEnumTagSinglePayload for AssetViewComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270449608);
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

unint64_t sub_270449644()
{
  result = qword_2807D2A48;
  if (!qword_2807D2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A48);
  }

  return result;
}

unint64_t sub_27044969C()
{
  result = qword_2807D2A50;
  if (!qword_2807D2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A50);
  }

  return result;
}

unint64_t sub_2704496F4()
{
  result = qword_2807D2A58;
  if (!qword_2807D2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A58);
  }

  return result;
}

unint64_t sub_27044974C()
{
  result = qword_2807D2A60;
  if (!qword_2807D2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A60);
  }

  return result;
}

unint64_t sub_2704497A4()
{
  result = qword_2807D2A68;
  if (!qword_2807D2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A68);
  }

  return result;
}

unint64_t sub_2704497FC()
{
  result = qword_2807D2A70;
  if (!qword_2807D2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A70);
  }

  return result;
}

unint64_t sub_270449854()
{
  result = qword_2807D2A78;
  if (!qword_2807D2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A78);
  }

  return result;
}

unint64_t sub_2704498AC()
{
  result = qword_2807D2A80;
  if (!qword_2807D2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A80);
  }

  return result;
}

unint64_t sub_270449904()
{
  result = qword_2807D2A88;
  if (!qword_2807D2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A88);
  }

  return result;
}

unint64_t sub_27044995C()
{
  result = qword_2807D2A90;
  if (!qword_2807D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A90);
  }

  return result;
}

unint64_t sub_2704499B4()
{
  result = qword_2807D2A98;
  if (!qword_2807D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A98);
  }

  return result;
}

unint64_t sub_270449A0C()
{
  result = qword_2807D2AA0;
  if (!qword_2807D2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AA0);
  }

  return result;
}

unint64_t sub_270449A64()
{
  result = qword_2807D2AA8;
  if (!qword_2807D2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AA8);
  }

  return result;
}

unint64_t sub_270449ABC()
{
  result = qword_2807D2AB0;
  if (!qword_2807D2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AB0);
  }

  return result;
}

unint64_t sub_270449BB8()
{
  result = qword_2807D2AB8;
  if (!qword_2807D2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AB8);
  }

  return result;
}

unint64_t sub_270449C74()
{
  result = qword_2807D2AC0;
  if (!qword_2807D2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AC0);
  }

  return result;
}

uint64_t sub_270449D74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

unint64_t sub_270449DF0()
{
  result = qword_2807D2AF8;
  if (!qword_2807D2AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2AF0, &unk_2705EF600);
    sub_270448458(&qword_2807D0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AF8);
  }

  return result;
}

unint64_t sub_270449EA4()
{
  result = qword_2807D2B00;
  if (!qword_2807D2B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2AD8, &qword_2705EF5E8);
    sub_270448458(&qword_2807D0B00);
    sub_2705D6734();
    sub_2705D66D4();
    sub_270448458(&unk_2807D2B08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B00);
  }

  return result;
}

uint64_t sub_270449FD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8, &qword_2705EF5E8);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_10_10();
  v4(v3);
  return a2;
}

uint64_t sub_27044A03C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8, &qword_2705EF5E8);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27044A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageComponentModel(0);
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 16);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_27044A19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ImageComponentModel(0);
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }
}

void sub_27044A244(uint64_t a1)
{
  type metadata accessor for ImageComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_27044A2C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27044A2C8(uint64_t a1)
{
  if (!qword_2807D2B38)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_2705D5E84();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D2B38);
    }
  }
}

unint64_t sub_27044A36C()
{
  result = qword_2807D2B48;
  if (!qword_2807D2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2B50, &qword_2705EF678);
    sub_270449DF0();
    sub_270449EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B48);
  }

  return result;
}

uint64_t sub_27044A418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_27044A47C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageComponentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_270446364(v4, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for ImageComponentView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = type metadata accessor for ImageComponentModel(0);
  v4 = v3[5];
  v5 = sub_2705D6734();
  OUTLINED_FUNCTION_14();
  v7 = *(v6 + 8);
  v7(&v2[v4], v5);
  v7(&v2[v3[6]], v5);
  v8 = v3[7];
  if (!__swift_getEnumTagSinglePayload(&v2[v8], 1, v5))
  {
    v7(&v2[v8], v5);
  }

  v9 = v3[8];
  if (!__swift_getEnumTagSinglePayload(&v2[v9], 1, v5))
  {
    v7(&v2[v9], v5);
  }

  v10 = v3[9];
  v11 = sub_2705D6A54();
  if (!__swift_getEnumTagSinglePayload(&v2[v10], 1, v11))
  {
    (*(*(v11 - 8) + 8))(&v2[v10], v11);
  }

  v12 = &v2[v3[10]];
  if (*(v12 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  if (*&v2[v3[14]])
  {
  }

  return swift_deallocObject();
}

void sub_27044A71C(double a1, double a2)
{
  v5 = *(type metadata accessor for ImageComponentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_270446518(v6, a1, a2);
}

uint64_t sub_27044A794()
{

  return swift_deallocObject();
}

unint64_t sub_27044A7D4()
{
  result = qword_2807D2B68;
  if (!qword_2807D2B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2B58, &qword_2705EF6D8);
    sub_270413B14();
    sub_2704133A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t a1)
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_15_15(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  v5 = *(v3 - 160);

  return sub_2703FC5C0(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{

  return sub_2705D5434();
}

uint64_t sub_27044A9AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C48, &qword_2705EF9F8);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C50, &unk_2705EFA00);
  OUTLINED_FUNCTION_23_0(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C58, &qword_2706077E0);
  OUTLINED_FUNCTION_23_0(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_2();
  v15 = sub_2705D5E14();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (v2)
  {

    sub_2703C2EFC(v3, &qword_2807D2C50, &unk_2705EFA00);
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    if (sub_2705D8194())
    {
      sub_2703C2EFC(v3, &qword_2807D2C50, &unk_2705EFA00);
      OUTLINED_FUNCTION_3_14();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
    }

    else
    {
      sub_2703B4E54(a1, v29);
      sub_27044B540(v29, v8);
      (*(*(v15 - 8) + 32))(v12, v8, v15);
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
      sub_2703E0DCC(v12, v3, &qword_2807D2C50, &unk_2705EFA00);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  sub_2703CF590(v3, v31, &qword_2807D2C58, &qword_2706077E0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2703C2EFC(v3, &qword_2807D2C58, &qword_2706077E0);
}

uint64_t sub_27044AC6C()
{
  OUTLINED_FUNCTION_7_18();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20(v4, v5, v6, v7, v8, v9, v10);
  if (v1)
  {

    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_23_7(v16);
    if (v12)
    {
      v11 = 0;
    }

    else
    {
      sub_2703B4E54(v0, v14);
      sub_27044BB54(v14, &v15);
      v11 = v15;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  *v2 = v11;
  *(v2 + 8) = v12 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AD68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  OUTLINED_FUNCTION_7_18();
  v7 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_29_6(v7, v8, v9, v10, v11);
  if (v3)
  {

    v12 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    if (sub_2705D8194())
    {
      v12 = 0;
    }

    else
    {
      sub_2703B4E54(v2, v14);
      a2(&v16, v14);
      v12 = v16;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  *v4 = v12;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AE94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  OUTLINED_FUNCTION_7_18();
  v7 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_29_6(v7, v8, v9, v10, v11);
  if (v3)
  {

    v12 = 0;
    v13 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v13 = sub_2705D8194();
    if (v13)
    {
      v12 = 0;
    }

    else
    {
      sub_2703B4E54(v2, v15);
      a2(&v17, v15);
      v12 = v17;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  *v4 = v12;
  *(v4 + 8) = v13 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AF88()
{
  OUTLINED_FUNCTION_7_18();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20(v4, v5, v6, v7, v8, v9, v10);
  if (v1)
  {

    v11 = 0;
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_23_7(v17);
    if (v13)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      sub_2703B4E54(v0, v15);
      sub_27044CBD0(v15, v16);
      v11 = v16[0];
      v12 = v16[1];
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  *v2 = v11;
  *(v2 + 8) = v12;
  *(v2 + 16) = v13 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044B060()
{
  OUTLINED_FUNCTION_7_18();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20(v4, v5, v6, v7, v8, v9, v10);
  if (v1)
  {

    v11 = 3;
  }

  else
  {
    if (OUTLINED_FUNCTION_23_7(v15))
    {
      v11 = 3;
    }

    else
    {
      sub_2703B4E54(v0, v13);
      sub_27044CFEC(v13, &v14);
      v11 = v14;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  *v2 = v11;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044B120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE0F78], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BB8, &qword_2705EF810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BC0, &qword_2705EF818);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE0F78];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      if (v22[0])
      {
        __swift_destroy_boxed_opaque_existential_1(&v23);
        *a2 = v18;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BB8, &qword_2705EF810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BC0, &qword_2705EF818);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_11:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044B540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C50, &unk_2705EFA00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_2705D5E14();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C48, &qword_2705EF9F8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v14 = sub_2703D50F8(v8, qword_28081C468);
  if (!v14)
  {
    v18 = sub_2705D7D84();
    swift_allocError();
    v20 = v19;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_2705D7D04();

    v38 = 0xD000000000000011;
    v39 = 0x8000000270613660;
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C60, &qword_2705EFA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C68, &qword_2705EFA18);
    v21 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v21);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84168], v18);
LABEL_10:
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v15;
  sub_2703B4E54(a1, v37);
  v40 = v16;
  v41 = v17;
  __swift_allocate_boxed_opaque_existential_1Tm(&v38);
  sub_2705D79E4();
  if (!v2)
  {
    v32 = a2;
    v33 = 0;
    v36 = a1;
    v22 = v40;
    v34 = v41;
    __swift_project_boxed_opaque_existential_1(&v38, v40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v35 = &v31;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v17 + 32))(v22, v34);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      v24 = *(v42 + 32);
      v24(v10, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v24(v13, v10, v8);
      sub_2703CF3E8(v13, v32, &qword_2807D2C48, &qword_2705EF9F8);
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2703C2EFC(v7, &qword_2807D2C50, &unk_2705EFA00);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v26 = sub_2705D7D84();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v28 = v8;
    v29 = v36;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_2705D8434();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_2705D7D04();

    v38 = 0xD000000000000020;
    v39 = 0x80000002706136A0;
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C60, &qword_2705EFA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C68, &qword_2705EFA18);
    v30 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v30);
    a1 = v29;

    sub_2705D7D44();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    goto LABEL_10;
  }

  __swift_deallocate_boxed_opaque_existential_2(&v38);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044BB54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE09E0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v24 = 0xD000000000000011;
    v25 = 0x8000000270613660;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C28, &qword_2705EF9D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C30, &qword_2705EF9E0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v23);
  v26 = v7;
  v27 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v24);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22[1] = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE09E0];
    if (swift_dynamicCast())
    {
      v18 = v23[0];
      __swift_destroy_boxed_opaque_existential_1(&v24);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v24);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2705D7D04();

    v24 = 0xD000000000000020;
    v25 = 0x80000002706136A0;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C28, &qword_2705EF9D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C30, &qword_2705EF9E0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v24);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044BF78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE0AE0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C18, &qword_2705EF9C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C20, &qword_2705EF9D0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE0AE0];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      if (v22[0])
      {
        __swift_destroy_boxed_opaque_existential_1(&v23);
        *a2 = v18;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C18, &qword_2705EF9C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C20, &qword_2705EF9D0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_11:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044C398@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE00B0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C38, &qword_2705EF9E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C40, &qword_2705EF9F0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE00B0];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C38, &qword_2705EF9E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C40, &qword_2705EF9F0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044C7B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE02E8], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B88, &qword_2705EF7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B90, &unk_2705EF7F0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE02E8];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B88, &qword_2705EF7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B90, &unk_2705EF7F0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044CBD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE1378], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v24 = 0xD000000000000011;
    v25 = 0x8000000270613660;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C70, &qword_2705EFA20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C78, &qword_2705EFA28);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v23);
  v26 = v7;
  v27 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v24);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v28 = v23;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE1378];
    if (swift_dynamicCast())
    {
      v19 = v23[0];
      v18 = v23[1];
      __swift_destroy_boxed_opaque_existential_1(&v24);
      *a2 = v19;
      a2[1] = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v24);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2705D7D04();

    v24 = 0xD000000000000020;
    v25 = 0x80000002706136A0;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C70, &qword_2705EFA20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C78, &qword_2705EFA28);
    v21 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v21);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v24);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044CFEC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CDF720], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C08, &qword_2705EF9B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C10, &qword_2705EF9C0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CDF720];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C08, &qword_2705EF9B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C10, &qword_2705EF9C0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044D408@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for ImageComponentModel(0);
  sub_2703CF590(v1 + *(v6 + 36), v2, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703CF3E8(v2, a1, &qword_2807CF190, &unk_2705DEE80);
}

double sub_27044D4BC()
{
  v1 = type metadata accessor for ImageComponentModel(0);
  v2 = sub_2703CF590(v0 + *(v1 + 40), &v14, &qword_2807CF2D8, &unk_2705DF6E0);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v11, v14, v15).n128_u64[0];
  return result;
}

uint64_t sub_27044D510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x777472416B726164 && a2 == 0xEB000000006B726FLL;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747241746867696CLL && a2 == 0xEC0000006B726F77;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000270613E50 == a2;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x8000000270613E70 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
                    if (v14 || (sub_2705D8134() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x79616C7265646E75 && a2 == 0xE800000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_2705D8134();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_27044D878(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x777472416B726164;
      break;
    case 2:
      result = 0x747241746867696CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6575676573;
      break;
    case 7:
      result = 0x6E656D6E67696C61;
      break;
    case 8:
      result = 0x69617274736E6F63;
      break;
    case 9:
      result = 0x676E6964646170;
      break;
    case 10:
      result = 0x79616C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27044D9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27044D510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27044DA20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27044D870();
  *a1 = result;
  return result;
}

uint64_t sub_27044DA48(uint64_t a1)
{
  v2 = sub_27044FA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044DA84(uint64_t a1)
{
  v2 = sub_27044FA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27044DAC8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848, &qword_2705E56A8);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_11();
  v169 = v6;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50();
  v173 = v8;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  v168 = v10;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50();
  v171 = v12;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v167 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  v16 = OUTLINED_FUNCTION_23_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_11();
  v172 = v17;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_50();
  v178 = v19;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  v184 = v21;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  v187 = v23;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50();
  v170 = v25;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_50();
  v177 = v27;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50();
  v183 = v29;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50();
  v186 = v31;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50();
  v182 = v33;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v185 = v35;
  OUTLINED_FUNCTION_77();
  v36 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v190 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_11();
  v176 = v39;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50();
  v181 = v41;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_50();
  v175 = v43;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_50();
  v180 = v45;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_50();
  v174 = v47;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_58();
  v179 = v49;
  OUTLINED_FUNCTION_77();
  v50 = sub_2705D6E94();
  v51 = OUTLINED_FUNCTION_23_0(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4_0();
  v194 = (v53 - v52);
  OUTLINED_FUNCTION_77();
  v54 = sub_2705D7134();
  v55 = OUTLINED_FUNCTION_23_0(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4_0();
  v193 = v57 - v56;
  OUTLINED_FUNCTION_77();
  v192 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4_0();
  v63 = v62 - v61;
  v64 = sub_2705D6594();
  OUTLINED_FUNCTION_0();
  v66 = v65;
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v166 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v166 - v71;
  memcpy(v200, a1, sizeof(v200));
  v73 = type metadata accessor for ImageComponentModel(0);
  v189 = v73[7];
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v36);
  v188 = v73[8];
  OUTLINED_FUNCTION_3_14();
  v195 = v36;
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v36);
  sub_2705D6A54();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = a2 + v73[10];
  memset(v201, 0, 40);
  *v84 = 0u;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 0;
  sub_2703E0DCC(v201, v84, &unk_2807CF480, &unk_2705DC040);
  v85 = a2 + v73[11];
  *v85 = 0;
  *(v85 + 8) = 1;
  v86 = a2 + v73[12];
  *v86 = xmmword_2705EF770;
  *(v86 + 16) = xmmword_2705EF780;
  *(v86 + 32) = 0;
  v87 = (a2 + v73[13]);
  *v87 = xmmword_2705EB940;
  v87[1] = 0u;
  v87[2] = 0u;
  *(v87 + 41) = 0u;
  v191 = v73;
  v88 = (a2 + v73[14]);
  v88[2] = 0u;
  v88[3] = 0u;
  *v88 = 0u;
  v88[1] = 0u;
  sub_2705D45B4();
  sub_2705D45A4();
  (*(v59 + 8))(v63, v192);
  v89 = v194;
  OUTLINED_FUNCTION_34_5();
  sub_2705D6E84();
  sub_2705D7124();
  sub_2705D6584();
  (*(v66 + 16))(v70, v72, v64);
  sub_270450360(&qword_2807CF180);
  sub_2705D7CF4();
  (*(v66 + 8))(v72, v64);
  memcpy(v201, v200, 0x160uLL);
  v90 = sub_2703BB658(v201);
  v91 = v195;
  switch(v90)
  {
    case 1:
      v135 = *sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v136 = v187;
      v194 = v135;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_6_25(v136);
      if (v105)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      v137 = v191;
      v138 = *(v190 + 32);
      v139 = OUTLINED_FUNCTION_9_21(v191[6]);
      v138(v139);

      v140 = v184;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v140);
      if (v105)
      {
        goto LABEL_27;
      }

      sub_2705D66F4();
      v141 = OUTLINED_FUNCTION_9_21(v137[5]);
      v138(v141);

      v142 = v178;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v142);
      if (v105)
      {
        goto LABEL_29;
      }

      v143 = v173;
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v91);
      sub_2703E0DCC(v143, a2 + v189, &qword_2807D0848, &qword_2705E56A8);

      v147 = v172;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v147);
      if (v105)
      {
        goto LABEL_31;
      }

      sub_270416A6C(v200);
      v117 = v169;
      goto LABEL_18;
    case 2:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v118 = v185;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_6_25(v118);
      if (v105)
      {
        goto LABEL_23;
      }

      v119 = v179;
      sub_2705D66F4();
      v120 = v191;
      v121 = *(v190 + 32);
      v121(a2 + v191[6], v119, v91);

      v122 = v182;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v122);
      if (v105)
      {
        goto LABEL_26;
      }

      sub_270416A6C(v200);
      sub_2705D66F4();
      v123 = OUTLINED_FUNCTION_9_21(v120[5]);
      return (v121)(v123);
    case 3:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_35_3();
      v125 = v124;
      type metadata accessor for CGColor(0);
      v127 = v126;
      OUTLINED_FUNCTION_11_20();
      v129 = sub_270450360(v128);

      v130 = sub_2705D7494();
      v131 = OUTLINED_FUNCTION_3_30(v130);
      v197 = &type metadata for CoreMediaArtworkSource;
      v132 = sub_270436F8C();
      v198 = v132;
      v196[0] = v131;
      sub_2705D6744();

      v187 = v125;
      v192 = v127;
      v190 = v129;
      v133 = sub_2705D7494();
      v134 = OUTLINED_FUNCTION_3_30(v133);
      v194 = v132;
      v198 = v132;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v134;
      v193 = a2;
      sub_2705D6744();
      memcpy(v199, v89 + 22, 0xB0uLL);
      if (sub_270436F74(v199) == 1)
      {
        return sub_270416A6C(v200);
      }

      sub_2703CF590((v89 + 22), v196, &qword_2807D22D0, &unk_2705EC740);
      sub_270416A6C(v200);

      v153 = sub_2705D7494();
      v154 = OUTLINED_FUNCTION_3_30(v153);
      v198 = v194;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v154;
      v155 = v167;
      sub_2705D6744();
      OUTLINED_FUNCTION_8_9();
      v156 = v195;
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v195);
      v160 = v193;
      sub_2703E0DCC(v155, v193 + v189, &qword_2807D0848, &qword_2705E56A8);

      v161 = sub_2705D7494();
      v162 = OUTLINED_FUNCTION_3_30(v161);
      sub_2703C2EFC((v89 + 22), &qword_2807D22D0, &unk_2705EC740);
      v198 = v194;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v162;
      sub_2705D6744();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v156);
      v151 = v160 + v188;
      v152 = v155;
      return sub_2703E0DCC(v152, v151, &qword_2807D0848, &qword_2705E56A8);
    case 4:
      v103 = *sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v104 = v186;
      v194 = v103;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_21_10(v104);
      if (v105)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
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
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      v106 = v191;
      v107 = *(v190 + 32);
      v108 = OUTLINED_FUNCTION_9_21(v191[6]);
      v107(v108);

      v109 = v183;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v109);
      if (v105)
      {
        goto LABEL_25;
      }

      sub_2705D66F4();
      v110 = OUTLINED_FUNCTION_9_21(v106[5]);
      v107(v110);

      v111 = v177;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v111);
      if (v105)
      {
        goto LABEL_28;
      }

      v112 = v171;
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v91);
      sub_2703E0DCC(v112, a2 + v189, &qword_2807D0848, &qword_2705E56A8);

      v116 = v170;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v116);
      if (v105)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x27044E94CLL);
      }

      sub_270416A6C(v200);
      v117 = v168;
LABEL_18:
      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v91);
      v151 = a2 + v188;
      v152 = v117;
      return sub_2703E0DCC(v152, v151, &qword_2807D0848, &qword_2705E56A8);
    default:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_35_3();
      type metadata accessor for CGColor(0);
      OUTLINED_FUNCTION_11_20();
      sub_270450360(v92);

      v93 = OUTLINED_FUNCTION_36_4();
      v94 = OUTLINED_FUNCTION_3_30(v93);
      v199[3] = &type metadata for CoreMediaArtworkSource;
      v95 = sub_270436F8C();
      v199[4] = v95;
      v199[0] = v94;
      sub_2705D6744();
      v96 = v89[18];
      v97 = v89[19];
      v99 = *(v89 + 20);
      v98 = *(v89 + 21);

      v100 = OUTLINED_FUNCTION_36_4();
      v101 = sub_27047D104(v99, v98, v100, v97, v96);
      sub_270416A6C(v200);
      v199[4] = v95;
      v199[3] = &type metadata for CoreMediaArtworkSource;
      v199[0] = v101;
      return sub_2705D6744();
  }
}

uint64_t sub_27044E960(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B98, &unk_2705EF800);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27044FA04();
  sub_2705D84C4();
  LOBYTE(v31[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140, &qword_2705DEE60);
  sub_2703E2A50(&qword_2807CFE90);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v10 = type metadata accessor for ImageComponentModel(0);
  sub_2705D6734();
  OUTLINED_FUNCTION_13_14();
  sub_270450360(v11);
  OUTLINED_FUNCTION_1_31();
  sub_2705D8084();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8084();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8024();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  sub_2703E1004();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  LOBYTE(v31[0]) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
  sub_2703E0F80(&qword_2807CFE98);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v12 = (v4 + v10[11]);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *&v31[0] = v13;
  BYTE8(v31[0]) = v12;
  LOBYTE(v27) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BA0, &qword_27060AC50);
  sub_2703E2A50(&unk_2807D2BA8);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v14 = v4 + v10[12];
  v15 = *(v14 + 32);
  v16 = *(v14 + 16);
  v32[2] = *v14;
  v32[3] = v16;
  v33 = v15;
  v36 = 8;
  sub_27044FB6C();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v17 = (v4 + v10[13]);
  v18 = v17[1];
  v31[4] = *v17;
  v31[5] = v18;
  v32[0] = v17[2];
  *(v32 + 9) = *(v17 + 41);
  v35 = 9;
  sub_2703E10C0();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v19 = (v4 + v10[14]);
  v20 = v19[1];
  v31[0] = *v19;
  v31[1] = v20;
  v21 = v19[3];
  v23 = *v19;
  v22 = v19[1];
  v31[2] = v19[2];
  v31[3] = v21;
  v27 = v23;
  v28 = v22;
  v24 = v19[3];
  v29 = v19[2];
  v30 = v24;
  v34 = 10;
  sub_2703CF590(v31, v26, &qword_2807CFE38, &qword_2705E2990);
  sub_2703E1114();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  sub_2703C2EFC(v26, &qword_2807CFE38, &qword_2705E2990);
  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_27044EE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v100 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848, &qword_2705E56A8);
  v6 = OUTLINED_FUNCTION_23_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_11();
  v101 = v7;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v102 = v9;
  OUTLINED_FUNCTION_77();
  v10 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v115 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_11();
  v103 = v13;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B70, &qword_2705EF7E0);
  OUTLINED_FUNCTION_0();
  v104 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = type metadata accessor for ImageComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  v26 = (v25 - v24);
  v109 = *(v27 + 28);
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  v113 = v22[8];
  OUTLINED_FUNCTION_3_14();
  v107 = v10;
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v10);
  v34 = v22[9];
  sub_2705D6A54();
  v111 = v34;
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = &v26[v22[10]];
  *&v124 = 0;
  v122 = 0u;
  v123 = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  v110 = v39;
  sub_2703E0DCC(&v122, v39, &unk_2807CF480, &unk_2705DC040);
  v40 = &v26[v22[11]];
  *v40 = 0;
  v40[8] = 1;
  v114 = v22;
  v41 = v22[14];
  v108 = v26;
  v42 = &v26[v41];
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v105 = v42;
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27044FA04();
  v43 = v112;
  sub_2705D8484();
  if (v43)
  {
    v112 = v43;
    v44 = 0;
    LODWORD(v45) = 0;
    v46 = 0;
    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
    goto LABEL_4;
  }

  v97 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140, &qword_2705DEE60);
  LOBYTE(v120[0]) = 0;
  sub_2703E2A50(&qword_2807CFE40);
  sub_2705D7FA4();
  v55 = v123;
  v56 = v108;
  *v108 = v122;
  *(v56 + 1) = v55;
  *(v56 + 4) = v124;
  LOBYTE(v122) = 1;
  OUTLINED_FUNCTION_13_14();
  sub_270450360(v57);
  v48 = v107;
  sub_2705D7FA4();
  v58 = *(v115 + 32);
  v58(&v56[v114[5]], v16, v48);
  LOBYTE(v122) = 2;
  v95 = v21;
  v96 = v17;
  sub_2705D7FA4();
  v59 = v114;
  v58(&v56[v114[6]], v103, v48);
  LOBYTE(v122) = 3;
  v60 = v102;
  v45 = v95;
  sub_2705D7F44();
  v47 = v56;
  v49 = v59;
  v61 = v60;
  v62 = v109;
  sub_2703E0DCC(v61, &v47[v109], &qword_2807D0848, &qword_2705E56A8);
  LOBYTE(v122) = 4;
  v63 = v101;
  sub_2705D7F44();
  v50 = v115;
  sub_2703E0DCC(v63, &v47[v113], &qword_2807D0848, &qword_2705E56A8);
  LOBYTE(v122) = 5;
  sub_2703E0C88();
  v64 = v100;
  sub_2705D7FA4();
  sub_2703E0DCC(v64, &v47[v111], &qword_2807CF130, &unk_2705DEE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
  LOBYTE(v120[0]) = 6;
  sub_2703E0F80(&qword_2807CFE48);
  sub_2705D7FA4();
  v112 = 0;
  sub_2703E0DCC(&v122, v110, &qword_2807CF2D8, &unk_2705DF6E0);
  LOBYTE(v116) = 7;
  v65 = sub_2705D7FC4();
  v66 = v104;
  if (v65)
  {
    v67 = v112;
    v68 = sub_2705D7FD4();
    v112 = v67;
    if (v67)
    {
      v69 = *(v66 + 8);
      v46 = v66 + 8;
      v69(v45, v96);
      v44 = 1;
      OUTLINED_FUNCTION_30_7();
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(v106);
      if (!v44)
      {
        v62 = v109;
        if (v45)
        {
LABEL_7:
          v51 = *(v50 + 8);
          v51(&v47[v49[5]], v48);
          if ((v46 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_10:
        if (!v46)
        {
LABEL_13:
          sub_2703C2EFC(&v47[v62], &qword_2807D0848, &qword_2705E56A8);
          sub_2703C2EFC(&v47[v113], &qword_2807D0848, &qword_2705E56A8);
          sub_2703C2EFC(&v47[v111], &qword_2807CF130, &unk_2705DEE50);
          sub_2703C2EFC(v110, &qword_2807CF2D8, &unk_2705DF6E0);
          v52 = v105[1];
          v122 = *v105;
          v123 = v52;
          v53 = v105[3];
          v124 = v105[2];
          v125 = v53;
          return sub_2703C2EFC(&v122, &qword_2807CFE38, &qword_2705E2990);
        }

        v51 = *(v50 + 8);
LABEL_12:
        v51(&v47[v49[6]], v48);
        goto LABEL_13;
      }

      goto LABEL_5;
    }

    v70 = v96;
    if (v68)
    {
      v71 = 0;
      v72 = 1;
      BYTE8(v120[0]) = 1;
      *&v120[0] = 0;
    }

    else
    {
      v73 = v112;
      sub_2705D7EF4();
      v112 = v73;
      OUTLINED_FUNCTION_12_17();
      v74 = v112;
      sub_27044AE94(&v122, v75);
      v112 = v74;
      if (v74)
      {

        v71 = 0;
        v112 = 0;
        *&v120[0] = 0;
        v72 = 1;
        BYTE8(v120[0]) = 1;
      }

      else
      {
        v71 = *&v120[0];
        v72 = BYTE8(v120[0]);
      }
    }

    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
    v62 = v109;
    v66 = v104;
  }

  else
  {
    v70 = v96;
    v71 = 0;
    *&v120[0] = 0;
    v72 = 1;
    BYTE8(v120[0]) = 1;
  }

  v76 = v97;
  *v97 = v71;
  *(v76 + 8) = v72;
  LOBYTE(v120[0]) = 8;
  sub_27044FA58();
  v77 = v112;
  sub_2705D7FA4();
  v112 = v77;
  if (v77 || (v78 = &v47[v49[12]], v79 = v124, v80 = v123, *v78 = v122, *(v78 + 1) = v80, *(v78 + 4) = v79, v127 = 9, sub_2703E0E1C(), v81 = v112, sub_2705D7F44(), (v112 = v81) != 0))
  {
    v82 = *(v66 + 8);
    v46 = v66 + 8;
    v82(v45, v70);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_30_7();
LABEL_6:
    sub_2703C2EFC(v47, &qword_2807CF140, &qword_2705DEE60);
    if (v45)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v83 = &v47[v49[13]];
  v84 = v120[5];
  *v83 = v120[4];
  *(v83 + 1) = v84;
  *(v83 + 2) = v121[0];
  *(v83 + 41) = *(v121 + 9);
  v126 = 10;
  sub_2703E0ED4();
  v46 = v70;
  v85 = v112;
  sub_2705D7F44();
  v112 = v85;
  if (v85)
  {
    OUTLINED_FUNCTION_19_5();
    v86(v45, v70);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_30_7();
    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
LABEL_5:
    v62 = v109;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_19_5();
  v87(v45, v70);
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v119 = v125;
  v88 = v105;
  v89 = v105[1];
  v120[0] = *v105;
  v120[1] = v89;
  v90 = v105[3];
  v120[2] = v105[2];
  v120[3] = v90;
  sub_2703C2EFC(v120, &qword_2807CFE38, &qword_2705E2990);
  v91 = v117;
  *v88 = v116;
  v88[1] = v91;
  v92 = v119;
  v88[2] = v118;
  v88[3] = v92;
  v93 = v108;
  sub_27044FAAC(v108, v98);
  __swift_destroy_boxed_opaque_existential_1(v106);
  return sub_27044FB10(v93);
}

uint64_t type metadata accessor for ImageComponentModel(uint64_t a1)
{
  result = qword_2807D2BC8;
  if (!qword_2807D2BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27044FA04()
{
  result = qword_2807D2B78;
  if (!qword_2807D2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B78);
  }

  return result;
}

unint64_t sub_27044FA58()
{
  result = qword_2807D2B80;
  if (!qword_2807D2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B80);
  }

  return result;
}

uint64_t sub_27044FAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27044FB10(uint64_t a1)
{
  v2 = type metadata accessor for ImageComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27044FB6C()
{
  result = qword_2807D2BB0;
  if (!qword_2807D2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ImageComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x27044FD14);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27044FD60(uint64_t a1, uint64_t a2, int *a3)
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
    sub_2705D6734();
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848, &qword_2705E56A8);
      OUTLINED_FUNCTION_46_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_27044FE94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_2705D6734();
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848, &qword_2705E56A8);
      OUTLINED_FUNCTION_46_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_27044FFB0(uint64_t a1)
{
  sub_2703C1B58(319);
  if (v1 <= 0x3F)
  {
    sub_2705D6734();
    if (v2 <= 0x3F)
    {
      sub_270450168(319);
      if (v3 <= 0x3F)
      {
        sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80);
        if (v4 <= 0x3F)
        {
          sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328, qword_2705DF710);
          if (v5 <= 0x3F)
          {
            sub_2704501C0(319, &qword_2807D2BE0, MEMORY[0x277CE02E8], type metadata accessor for CodableOptionalByProxy);
            if (v6 <= 0x3F)
            {
              sub_2704501C0(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_2704501C0(319, &qword_2807CFE18, &unk_28805D3D0, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_270450168(uint64_t a1)
{
  if (!qword_2807D2BD8)
  {
    sub_2705D6734();
    v1 = sub_2705D7C14();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D2BD8);
    }
  }
}

void sub_2704501C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_270450214()
{
  result = qword_2807D2BE8;
  if (!qword_2807D2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BE8);
  }

  return result;
}

unint64_t sub_2704502B4()
{
  result = qword_2807D2BF8;
  if (!qword_2807D2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BF8);
  }

  return result;
}

unint64_t sub_27045030C()
{
  result = qword_2807D2C00;
  if (!qword_2807D2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2C00);
  }

  return result;
}

unint64_t sub_270450360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1)
{

  return sub_27047D104(v1, v2, a1, v5, v4);
}

void *OUTLINED_FUNCTION_14_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_2705D8454();
}

uint64_t OUTLINED_FUNCTION_23_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2705D8194();
}

void *OUTLINED_FUNCTION_28_6()
{

  return memcpy((v0 + 416), (v0 + 768), 0x160uLL);
}

void *OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_2705D8454();
}

void OUTLINED_FUNCTION_35_3()
{

  type metadata accessor for AMSMediaArtworkColorKind(0);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_2705D7494();
}

uint64_t sub_2704505AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 657))
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

uint64_t sub_2704505EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 648) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 656) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 657) = 1;
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

    *(result + 657) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2704506EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6954656C62627562 && a2 == 0xE900000000000070)
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

uint64_t sub_2704507B8(char a1)
{
  if (a1)
  {
    return 0x6954656C62627562;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

void sub_2704507F0()
{
  OUTLINED_FUNCTION_10_1();
  v22 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D30, &qword_2705F07E0);
  OUTLINED_FUNCTION_0();
  v20 = v5;
  v21 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D38, &qword_2705F07E8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D40, &unk_2705F07F0);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v19 - v16;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27045391C();
  sub_2705D84C4();
  v18 = (v14 + 8);
  if (v22)
  {
    sub_270453970();
    sub_2705D7FE4();
    (*(v20 + 8))(v8, v21);
  }

  else
  {
    sub_2704539C4();
    sub_2705D7FE4();
    (*(v10 + 8))(v0, v19);
  }

  (*v18)(v17, v12);
  OUTLINED_FUNCTION_11_3();
}

void sub_270450A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_1();
  a22 = v25;
  a23 = v26;
  v65 = v23;
  v28 = v27;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D00, &qword_2705F07C0);
  OUTLINED_FUNCTION_0();
  v62 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D08, &qword_2705F07C8);
  OUTLINED_FUNCTION_0();
  v61 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D10, &unk_2705F07D0);
  OUTLINED_FUNCTION_0();
  v63 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  v40 = &v58 - v39;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_27045391C();
  v41 = v65;
  sub_2705D8484();
  if (v41)
  {
    goto LABEL_8;
  }

  v59 = v33;
  v60 = v24;
  v65 = v28;
  v42 = v64;
  v43 = sub_2705D7FB4();
  sub_27042C9F0(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_7:
    v52 = sub_2705D7D84();
    swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v54 = &type metadata for InlineMessageModel.Style;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v40, v36);
    v28 = v65;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v58 = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    sub_27042C9E4(v45 + 1);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    if (v49 == v51 >> 1)
    {
      if (v47)
      {
        LODWORD(v61) = v47;
        a13 = 1;
        sub_270453970();
        OUTLINED_FUNCTION_12_8(&type metadata for InlineMessageModel.Style.BubbleTipCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v62 + 8))(v32, v42);
      }

      else
      {
        a12 = 0;
        sub_2704539C4();
        v55 = v60;
        OUTLINED_FUNCTION_12_8(&type metadata for InlineMessageModel.Style.BannerCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v55, v59);
      }

      v56 = OUTLINED_FUNCTION_4_15();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_270450ED0(uint64_t a1)
{
  v2 = sub_2704539C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270450F0C(uint64_t a1)
{
  v2 = sub_2704539C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270450F48(uint64_t a1)
{
  v2 = sub_270453970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270450F84(uint64_t a1)
{
  v2 = sub_270453970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270450FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704506EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270450FF0(uint64_t a1)
{
  v2 = sub_27045391C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27045102C(uint64_t a1)
{
  v2 = sub_27045391C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704510B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74634165736F6C63 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x41746C7561666564 && a2 == 0xED00006E6F697463;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x8000000270613E90 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2705D8134();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_27045138C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E61726165707061;
      break;
    case 2:
      result = 0x7465737361;
      break;
    case 3:
      result = 0x74634165736F6C63;
      break;
    case 4:
      result = 0x41746C7561666564;
      break;
    case 5:
      v3 = 1819898995;
      goto LABEL_8;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      v3 = 1819568500;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2704514B8()
{
  OUTLINED_FUNCTION_10_1();
  v47 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2CB0, &unk_2705F05C0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *v0;
  memcpy(v56, v0 + 1, sizeof(v56));
  memcpy(v57, v0 + 20, 0x160uLL);
  v11 = v0[64];
  v45 = v0[65];
  v46 = v11;
  v44 = v0[66];
  v58 = *(v0 + 536);
  v12 = v0[69];
  v40 = v0[68];
  v41 = v12;
  v43 = v0[70];
  v42 = *(v0 + 568);
  v39 = *(v0 + 569);
  v13 = v0[72];
  v14 = v0[73];
  v37 = v0[74];
  v38 = v14;
  v15 = v0[75];
  v35 = v13;
  v36 = v15;
  v16 = v0[76];
  v33 = v0[77];
  v34 = v16;
  v17 = v0[78];
  v31 = v0[79];
  v32 = v17;
  v18 = v0[80];
  v29 = v0[81];
  v30 = v18;
  HIDWORD(v28) = *(v0 + 656);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704522F0();

  v19 = v4;
  sub_2705D84C4();
  v53[0] = v10;
  v52[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C90, &qword_2705F05B8);
  sub_270452454(&qword_2807D2CB8, sub_2703B1858, MEMORY[0x277D83948]);
  v20 = v47;
  sub_2705D8084();
  if (v20)
  {
  }

  else
  {
    v22 = v45;
    v21 = v46;

    memcpy(v55, v56, sizeof(v55));
    sub_2703BFA60(v56, v53);
    sub_2704524CC();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    memcpy(v54, v55, sizeof(v54));
    sub_2703BFABC(v54);
    memcpy(v53, v57, sizeof(v53));
    sub_2703C2E9C(v57, v52, &qword_2807D2478, &qword_2705F05B0);
    sub_2703BAED8();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    memcpy(v52, v53, sizeof(v52));
    sub_2703C2EFC(v52, &qword_2807D2478, &qword_2705F05B0);
    v48 = v21;
    v49 = v22;
    v23 = v44;
    v50 = v44;
    LOBYTE(v51) = v58;

    sub_2703AE9E8(v22, v23, v58);
    sub_2703C38C8();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v24 = v49;
    v25 = v50;
    v47 = v4;
    v26 = v51;

    v27 = v26;
    v19 = v47;
    sub_2703AE980(v24, v25, v27);
    v48 = v40;
    v49 = v41;
    v50 = v43;
    LOBYTE(v51) = v42;
    sub_2703B4AA0(v40, v41, v43, v42);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703AFC10(v48, v49, v50, v51);
    LOBYTE(v48) = v39;
    sub_270452520();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v48 = v35;
    v49 = v38;
    v50 = v37;
    v51 = v36;
    sub_2703C3A18(v35, v38, v37, v36);
    sub_2703C3970();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703C3A5C(v48, v49, v50, v51);
    v48 = v34;
    v49 = v33;
    v50 = v32;
    v51 = v31;
    sub_2703C3A18(v34, v33, v32, v31);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703C3A5C(v48, v49, v50, v51);
    v48 = v30;
    v49 = v29;
    LOBYTE(v50) = BYTE4(v28);
    sub_2703AE9E8(v30, v29, SBYTE4(v28));
    sub_2703C39C4();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703AE980(v48, v49, v50);
  }

  (*(v6 + 8))(v9, v19);
  OUTLINED_FUNCTION_11_3();
}

void sub_270451A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_1();
  v13 = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C80, &qword_2705F05A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_3();
  sub_2704522D0(v101);
  memcpy(v99, v101, sizeof(v99));
  v17 = v13[3];
  v49 = v13;
  __swift_project_boxed_opaque_existential_1(v13, v17);
  sub_2704522F0();
  sub_2705D8484();
  if (v10)
  {
    OUTLINED_FUNCTION_3_31();
    __swift_destroy_boxed_opaque_existential_1(v13);

    memcpy(v67, v99, 0x160uLL);
    sub_2703C2EFC(v67, &qword_2807D2478, &qword_2705F05B0);
    sub_2703AFC10(v58, v60, v11, 254);
    sub_2703C3A5C(v50, v52, v54, v56);
    sub_2703C3A5C(v17, v62, v64, a10);
    v18 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v18, v19, 255);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C90, &qword_2705F05B8);
    sub_270452454(&qword_2807D2C98, sub_2703B1804, MEMORY[0x277D83978]);
    sub_2705D7FA4();
    v44 = v67[0];
    v94[359] = 1;
    sub_270452344();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7FA4();
    memcpy(v100, v95, sizeof(v100));
    v93[359] = 2;
    sub_2703BAE84();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7F44();
    memcpy(v92, v94, sizeof(v92));
    memcpy(v93, v99, 0x160uLL);
    sub_2703C2EFC(v93, &qword_2807D2478, &qword_2705F05B0);
    memcpy(v99, v92, sizeof(v99));
    sub_2703C3EB0();
    OUTLINED_FUNCTION_4_26();
    sub_2705D7FA4();
    v45 = v67[1];
    v46 = v67[2];
    v47 = v67[0];
    v48 = v67[3];
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v59 = v67[0];
    v61 = v67[1];
    v43 = v67[2];
    v20 = v67[3];
    v21 = OUTLINED_FUNCTION_6_26();
    sub_2703AFC10(v21, v22, v23, 254);
    sub_270452398();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7FA4();
    v24 = v67[0];
    sub_2703C3F58();
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v51 = v67[0];
    v53 = v67[1];
    v55 = v67[2];
    v57 = v67[3];
    v25 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v25, v26, v27, v28);
    LOBYTE(v66[0]) = 7;
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v29 = v67[0];
    v63 = v67[1];
    v65 = v67[2];
    v102 = v67[3];
    v30 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v30, v31, v32, v33);
    v88 = 8;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7F44();
    v34 = OUTLINED_FUNCTION_7_19();
    v35(v34);
    v36 = v89;
    v37 = v90;
    v41 = v90;
    v42 = v89;
    v40 = v91;
    v38 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v38, v39, 255);
    v66[0] = v44;
    memcpy(&v66[1], v100, 0x98uLL);
    memcpy(&v66[20], v92, 0x160uLL);
    v66[64] = v47;
    v66[65] = v45;
    v66[66] = v46;
    LOBYTE(v66[67]) = v48;
    v66[68] = v59;
    v66[69] = v61;
    v66[70] = v43;
    LOBYTE(v66[71]) = v20;
    BYTE1(v66[71]) = v24;
    v66[72] = v51;
    v66[73] = v53;
    v66[74] = v55;
    v66[75] = v57;
    v66[76] = v29;
    v66[77] = v63;
    v66[78] = v65;
    v66[79] = v102;
    v66[80] = v36;
    v66[81] = v37;
    LOBYTE(v66[82]) = v40;
    memcpy(v15, v66, 0x291uLL);
    sub_2704523EC(v66, v67);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v67[0] = v44;
    memcpy(&v67[1], v100, 0x98uLL);
    memcpy(&v67[20], v92, 0x160uLL);
    v67[64] = v47;
    v67[65] = v45;
    v67[66] = v46;
    v68 = v48;
    *v69 = *v98;
    *&v69[3] = *&v98[3];
    v70 = v59;
    v71 = v61;
    v72 = v43;
    v73 = v20;
    v74 = v24;
    v75 = v96;
    v76 = v97;
    v77 = v51;
    v78 = v53;
    v79 = v55;
    v80 = v57;
    v81 = v29;
    v82 = v63;
    v83 = v65;
    v84 = v102;
    v85 = v42;
    v86 = v41;
    v87 = v40;
    sub_270452424(v67);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704521D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704510B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270452200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270451384();
  *a1 = result;
  return result;
}

uint64_t sub_270452228(uint64_t a1)
{
  v2 = sub_2704522F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270452264(uint64_t a1)
{
  v2 = sub_2704522F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704522D0(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0xFFFFFFFF00;
  bzero((a1 + 56), 0x128uLL);
}

unint64_t sub_2704522F0()
{
  result = qword_2807D2C88;
  if (!qword_2807D2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2C88);
  }

  return result;
}

unint64_t sub_270452344()
{
  result = qword_2807D2CA0;
  if (!qword_2807D2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CA0);
  }

  return result;
}

unint64_t sub_270452398()
{
  result = qword_2807D2CA8;
  if (!qword_2807D2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CA8);
  }

  return result;
}

uint64_t sub_270452454(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2C90, &qword_2705F05B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704524CC()
{
  result = qword_2807D2CC0;
  if (!qword_2807D2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CC0);
  }

  return result;
}

unint64_t sub_270452520()
{
  result = qword_2807D2CC8;
  if (!qword_2807D2CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CC8);
  }

  return result;
}

void *sub_270452574(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v164 - v5;
  v7 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_11();
  v174 = v11;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v12);
  v173 = &v164 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2CD0, &unk_2705F05D0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v177 = &v164 - v15;
  v175 = type metadata accessor for FlowActionModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  v176 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = _s6ActionVMa(0);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_11();
  v172 = v21;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  *&v178 = v23;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50();
  v194 = v25;
  OUTLINED_FUNCTION_24_6();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v164 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_50();
  v171 = v30;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_50();
  v192 = v32;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_50();
  v193 = v34;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v35);
  v37 = &v164 - v36;
  sub_2704522D0(v226);
  memcpy(v207, v226, sizeof(v207));
  *&v180 = type metadata accessor for MessagingUIRequest(0);
  v38 = *(v1 + *(v180 + 36)) - 3;
  if (v38 < 6 && ((0x33u >> v38) & 1) != 0)
  {
    v167 = v6;
    v168 = v7;
    v165 = v9;
    v166 = v3;
    v170 = (0x22u >> v38) & 1;
    v169 = v1;
    v39 = *v1;
    v40 = *v1 == 0;
    *&v179 = MEMORY[0x277D84F90];
    if (v40)
    {
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      v41 = v39;
    }

    v42 = *(v41 + 16);
    result = swift_bridgeObjectRetain_n();
    v44 = 0;
    v45 = v195;
    while (v42 != v44)
    {
      if (v44 >= *(v41 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }

      v46 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v47 = *(v19 + 72);
      OUTLINED_FUNCTION_1_32();
      sub_270453544(v48, v37, v49);
      if (v37[v45[10]] == 2)
      {
        OUTLINED_FUNCTION_0_29();
        result = sub_2704535A4(v37, v50);
        ++v44;
      }

      else
      {
        sub_2704534E0(v37, v192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v179;
        *v203 = v179;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2704ADCFC(0, *(v179 + 16) + 1, 1);
          v45 = v195;
          v52 = *v203;
        }

        v54 = *(v52 + 16);
        v53 = *(v52 + 24);
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v190 = *(v52 + 16);
          v191 = v54 + 1;
          sub_2704ADCFC((v53 > 1), v54 + 1, 1);
          v54 = v190;
          v55 = v191;
          v45 = v195;
          v52 = *v203;
        }

        ++v44;
        *(v52 + 16) = v55;
        *&v179 = v52;
        result = sub_2704534E0(v192, v52 + v46 + v54 * v47);
      }
    }

    v69 = *(v179 + 16);
    if (v69)
    {
      v70 = v179 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v71 = *(v19 + 72);
      v192 = MEMORY[0x277D84F90];
      *&v182 = v71;
      *&v183 = v19;
      *&v181 = v29;
      *&v184 = v41;
      do
      {
        v72 = v193;
        sub_270453544(v70, v193, _s6ActionVMa);
        sub_270453544(v72, v29, _s6ActionVMa);
        v73 = v194;
        sub_270453544(v29, v194, _s6ActionVMa);
        sub_2703AE190(v73, v203);
        OUTLINED_FUNCTION_0_29();
        sub_2704535A4(v72, v74);
        v75 = v203[24];
        if (v203[24] == 254)
        {
          OUTLINED_FUNCTION_0_29();
          sub_2704535A4(v29, v76);
        }

        else
        {
          v77 = v71;
          v78 = *v203;
          v79 = *&v203[8];
          v80 = *&v203[16];
          v81 = &v29[v195[11]];
          v82 = *(v81 + 1);
          if (v82)
          {
            v190 = *&v203[8];
            v191 = *v203;
            v188 = *v81;
            v83 = &v29[v195[8]];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = v83[16];
            swift_bridgeObjectRetain_n();
            v186 = v84;
            LODWORD(v185) = v86;
            sub_2703AE9E8(v85, v84, v86);
            OUTLINED_FUNCTION_0_29();
            sub_2704535A4(v29, v87);
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v189 = v80;
            v187 = v85;
            if ((v88 & 1) == 0)
            {
              sub_27049949C();
              v192 = v99;
            }

            v41 = v184;
            v89 = v191;
            v90 = *(v192 + 16);
            v91 = v190;
            if (v90 >= *(v192 + 24) >> 1)
            {
              sub_27049949C();
              v91 = v190;
              v89 = v191;
              v192 = v100;
            }

            v29 = v181;
            v92 = v192;
            *(v192 + 16) = v90 + 1;
            v93 = v92 + 120 * v90;
            *(v93 + 32) = v89;
            *(v93 + 40) = v91;
            *(v93 + 48) = v189;
            *(v93 + 56) = v75;
            *(v93 + 57) = 1;
            v94 = v200[1];
            *(v93 + 58) = v200[0];
            *(v93 + 62) = v94;
            v96 = v187;
            v95 = v188;
            *(v93 + 64) = v188;
            *(v93 + 72) = v82;
            *(v93 + 80) = v95;
            *(v93 + 88) = v82;
            v97 = v186;
            *(v93 + 96) = v96;
            *(v93 + 104) = v97;
            *(v93 + 112) = v185;
            LODWORD(v97) = *v203;
            *(v93 + 116) = *&v203[3];
            *(v93 + 113) = v97;
            *(v93 + 136) = 0u;
            *(v93 + 120) = 0u;
            v71 = v182;
          }

          else
          {
            OUTLINED_FUNCTION_0_29();
            sub_2704535A4(v29, v98);
            sub_2703AFC10(v78, v79, v80, v75);
            v71 = v77;
            v41 = v184;
          }
        }

        v70 += v71;
        --v69;
      }

      while (v69);
    }

    else
    {

      v192 = MEMORY[0x277D84F90];
    }

    v101 = 0;
    v102 = *(v41 + 16);
    v103 = v169;
    for (i = v178; ; result = sub_2704535A4(i, v107))
    {
      if (v102 == v101)
      {

LABEL_38:
        v114 = v167;
        v113 = v168;
        type metadata accessor for FlowActionModel.FlowType(0);
        v115 = v176;
        swift_storeEnumTagMultiPayload();
        v116 = v175;
        v117 = v115 + *(v175 + 20);
        *v117 = 0;
        *(v117 + 8) = 0;
        *(v117 + 16) = 0;
        *(v117 + 24) = -2;
        v118 = v115 + *(v116 + 24);
        *v118 = 0;
        *(v118 + 8) = 0;
        *(v118 + 16) = 0;
        *(v118 + 24) = -2;
        sub_2703AFC10(*v117, *(v117 + 8), *(v117 + 16), *(v117 + 24));
        *v117 = 0;
        *(v117 + 8) = 0;
        *(v117 + 16) = 0;
        *(v117 + 24) = -2;
        sub_2703AFC10(*v118, *(v118 + 8), *(v118 + 16), *(v118 + 24));
        *v118 = 0;
        *(v118 + 8) = 0;
        *(v118 + 16) = 0;
        *(v118 + 24) = -2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8, &qword_2705DA640);
        v119 = swift_allocBox();
        sub_270453544(v115, v120, type metadata accessor for FlowActionModel);
        v193 = v119 | 0x4000000000000000;
        sub_2704535A4(v115, type metadata accessor for FlowActionModel);
        v190 = 0;
        v191 = 0;
        v112 = 255;
        goto LABEL_40;
      }

      if (v101 >= *(v41 + 16))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_1_32();
      sub_270453544(v105, i, v106);
      if (*(i + v195[10]) == 2)
      {
        break;
      }

      ++v101;
      OUTLINED_FUNCTION_0_29();
    }

    v108 = v171;
    sub_2704534E0(i, v171);
    OUTLINED_FUNCTION_1_32();
    v109 = v194;
    sub_270453544(v108, v194, v110);
    sub_2703AE190(v109, v203);
    OUTLINED_FUNCTION_0_29();
    sub_2704535A4(v108, v111);
    v112 = v203[24];
    if (v203[24] == 254)
    {
      goto LABEL_38;
    }

    v190 = *&v203[8];
    v191 = *&v203[16];
    v193 = *v203;
    v114 = v167;
    v113 = v168;
LABEL_40:
    v121 = v180;
    v122 = v177;
    sub_2703C2E9C(v103 + *(v180 + 24), v177, &qword_2807D2CD0, &unk_2705F05D0);
    if (__swift_getEnumTagSinglePayload(v122, 1, v195) == 1)
    {
      sub_2703C2EFC(v122, &qword_2807D2CD0, &unk_2705F05D0);
      v194 = 0;
      v195 = 0;
      v177 = 0;
      LODWORD(v189) = 254;
    }

    else
    {
      v123 = v122;
      v124 = v172;
      sub_2704534E0(v123, v172);
      OUTLINED_FUNCTION_1_32();
      v125 = v194;
      sub_270453544(v124, v194, v126);
      sub_2703AE190(v125, v203);
      OUTLINED_FUNCTION_0_29();
      sub_2704535A4(v124, v127);
      v177 = *&v203[8];
      v194 = *&v203[16];
      v195 = *v203;
      LODWORD(v189) = v203[24];
      v128 = OUTLINED_FUNCTION_6_26();
      sub_2703AFC10(v128, v129, v130, 254);
    }

    sub_2703C2E9C(v103 + v121[7], v114, &unk_2807D4280, &unk_2705E4700);
    if (__swift_getEnumTagSinglePayload(v114, 1, v113) == 1)
    {
      sub_2703C2EFC(v114, &unk_2807D4280, &unk_2705E4700);
    }

    else
    {
      v131 = v165;
      v132 = v173;
      (*(v165 + 32))(v173, v114, v113);
      v133 = v174;
      (*(v131 + 16))(v174, v132, v113);
      sub_2703BAF2C(v133, v196);
      (*(v131 + 8))(v132, v113);
      v121 = v180;
      OUTLINED_FUNCTION_23_8(v203);
      sub_2703C2EFC(v203, &qword_2807D2478, &qword_2705F05B0);
      memcpy(v207, v196, sizeof(v207));
    }

    v134 = (v103 + v121[10]);
    v135 = v134[1];
    if (v135)
    {
      v136 = *v134;
      swift_bridgeObjectRetain_n();
      v137 = OUTLINED_FUNCTION_5_29();
      sub_2703C3A5C(v137, v138, v139, v140);
    }

    else
    {
      v136 = 0;
    }

    v141 = (v103 + v121[11]);
    v142 = v141[1];
    if (v142)
    {
      v143 = *v141;
      swift_bridgeObjectRetain_n();
      v144 = OUTLINED_FUNCTION_5_29();
      sub_2703C3A5C(v144, v145, v146, v147);
    }

    else
    {
      v143 = 0;
    }

    v148 = v103 + v121[12];
    v149 = *v148;
    v150 = *(v148 + 16);
    v187 = *(v148 + 8);
    v188 = v149;
    LODWORD(v186) = v150;
    sub_2703AE9E8(v149, v187, v150);
    v151 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v151, v152, 255);
    sub_2703BF150(v170, v209);
    memcpy(v201, v103 + 1, sizeof(v201));
    memcpy(v202, v103 + 1, sizeof(v202));
    v153 = sub_2704535FC(v202);
    v175 = v136;
    v176 = v135;
    v173 = v143;
    v174 = v142;
    if (v153 == 1)
    {
      v184 = v215;
      v185 = v216;
      v182 = v213;
      v183 = v214;
      v154 = v212;
      v155 = v211;
      v156 = v210;
      v180 = v209[2];
      v181 = v209[3];
      v179 = v209[1];
      v157 = v209[0];
    }

    else
    {
      memcpy(v225, v202, sizeof(v225));
      memcpy(v203, v201, 0x98uLL);
      sub_2703BFA60(v203, v200);
      sub_270453F94(v225, v217);
      sub_2703C2EFC(v201, &qword_2807D2CD8, &qword_2705F05E0);
      sub_2703BFABC(v209);
      v184 = v223;
      v185 = v224;
      v182 = v221;
      v183 = v222;
      v154 = v220;
      v155 = v219;
      v156 = v218;
      v180 = v217[2];
      v181 = v217[3];
      v179 = v217[1];
      v157 = v217[0];
    }

    v178 = v157;
    v198 = v154;
    OUTLINED_FUNCTION_13_15();
    LODWORD(v172) = v198;
    *&v199[24] = v179;
    *&v199[8] = v178;
    *&v199[56] = v181;
    *&v199[40] = v180;
    *v199 = v192;
    *&v199[72] = v156;
    *&v199[80] = v155;
    v199[88] = v198;
    *&v199[89] = *v208;
    *&v199[92] = *&v208[3];
    *&v199[112] = v183;
    *&v199[96] = v182;
    *&v199[144] = v185;
    *&v199[128] = v184;
    OUTLINED_FUNCTION_23_8(&v199[160]);
    *&v199[512] = v193;
    *&v199[520] = v190;
    *&v199[528] = v191;
    v199[536] = v112;
    *&v199[537] = *v206;
    *&v199[540] = *&v206[3];
    *&v199[544] = v195;
    v158 = v177;
    *&v199[552] = v177;
    *&v199[560] = v194;
    v199[568] = v189;
    LODWORD(v171) = v112;
    v159 = v170;
    v199[569] = v170;
    *&v199[570] = v204;
    *&v199[574] = v205;
    v160 = v175;
    v161 = v176;
    *&v199[576] = v175;
    *&v199[584] = v176;
    *&v199[592] = v175;
    *&v199[600] = v176;
    v163 = v173;
    v162 = v174;
    *&v199[608] = v173;
    *&v199[616] = v174;
    *&v199[624] = v173;
    *&v199[632] = v174;
    *&v199[640] = v188;
    *&v199[648] = v187;
    v199[656] = v186;
    memcpy(v200, v199, 0x291uLL);
    CGSizeMake();
    memcpy(v166, v200, 0x291uLL);
    *&v203[8] = v178;
    *&v203[24] = v179;
    *&v203[40] = v180;
    *&v203[56] = v181;
    *v203 = v192;
    *&v203[72] = v156;
    *&v203[80] = v155;
    v203[88] = v172;
    *&v203[89] = *v208;
    *&v203[92] = *&v208[3];
    *&v203[96] = v182;
    *&v203[112] = v183;
    *&v203[128] = v184;
    *&v203[144] = v185;
    OUTLINED_FUNCTION_23_8(&v203[160]);
    *&v203[512] = v193;
    *&v203[520] = v190;
    *&v203[528] = v191;
    v203[536] = v171;
    *&v203[537] = *v206;
    *&v203[540] = *&v206[3];
    *&v203[544] = v195;
    *&v203[552] = v158;
    *&v203[560] = v194;
    v203[568] = v189;
    v203[569] = v159;
    *&v203[570] = v204;
    *&v203[574] = v205;
    *&v203[576] = v160;
    *&v203[584] = v161;
    *&v203[592] = v160;
    *&v203[600] = v161;
    *&v203[608] = v163;
    *&v203[616] = v162;
    *&v203[624] = v163;
    *&v203[632] = v162;
    *&v203[640] = v188;
    *&v203[648] = v187;
    v203[656] = v186;
    sub_2704523EC(v199, &v197);
    return sub_270452424(v203);
  }

  else
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_23_8(v200);
    sub_2703C2EFC(v200, &qword_2807D2478, &qword_2705F05B0);
    v56 = OUTLINED_FUNCTION_6_26();
    sub_2703AFC10(v56, v57, v58, 254);
    v59 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v59, v60, v61, v62);
    v63 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v63, v64, v65, v66);
    v67 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v67, v68, 255);
    sub_2704534D8(v203);
    return memcpy(v3, v203, 0x291uLL);
  }
}

uint64_t sub_2704534E0(uint64_t a1, uint64_t a2)
{
  v4 = _s6ActionVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270453544(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2704535A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2704535FC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for InlineMessageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InlineMessageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x270453774);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704537C0()
{
  result = qword_2807D2CE0;
  if (!qword_2807D2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CE0);
  }

  return result;
}

unint64_t sub_270453818()
{
  result = qword_2807D2CE8;
  if (!qword_2807D2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CE8);
  }

  return result;
}

unint64_t sub_270453870()
{
  result = qword_2807D2CF0;
  if (!qword_2807D2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CF0);
  }

  return result;
}

unint64_t sub_2704538C8()
{
  result = qword_2807D2CF8;
  if (!qword_2807D2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CF8);
  }

  return result;
}

unint64_t sub_27045391C()
{
  result = qword_2807D2D18;
  if (!qword_2807D2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D18);
  }

  return result;
}

unint64_t sub_270453970()
{
  result = qword_2807D2D20;
  if (!qword_2807D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D20);
  }

  return result;
}

unint64_t sub_2704539C4()
{
  result = qword_2807D2D28;
  if (!qword_2807D2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D28);
  }

  return result;
}

_BYTE *sub_270453A1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270453AE8);
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

unint64_t sub_270453B44()
{
  result = qword_2807D2D48;
  if (!qword_2807D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D48);
  }

  return result;
}

unint64_t sub_270453B9C()
{
  result = qword_2807D2D50;
  if (!qword_2807D2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D50);
  }

  return result;
}

unint64_t sub_270453BF4()
{
  result = qword_2807D2D58;
  if (!qword_2807D2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D58);
  }

  return result;
}

unint64_t sub_270453C4C()
{
  result = qword_2807D2D60;
  if (!qword_2807D2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D60);
  }

  return result;
}

unint64_t sub_270453CA4()
{
  result = qword_2807D2D68;
  if (!qword_2807D2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D68);
  }

  return result;
}

unint64_t sub_270453CFC()
{
  result = qword_2807D2D70;
  if (!qword_2807D2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D70);
  }

  return result;
}

unint64_t sub_270453D54()
{
  result = qword_2807D2D78;
  if (!qword_2807D2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D78);
  }

  return result;
}

void OUTLINED_FUNCTION_3_31()
{
  *(v1 - 72) = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return sub_2704535A4(v0, type metadata accessor for MessagingUIRequest);
}

void *OUTLINED_FUNCTION_23_8(void *a1)
{

  return memcpy(a1, (v1 + 3656), 0x160uLL);
}

uint64_t sub_270453EBC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 152))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_270453F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_270453F94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v3;
  v67 = *(v3 + 80);
  v66[0] = *(v3 + 81);
  *(v66 + 3) = *(v3 + 84);
  v6 = *a1;
  if (!*a1)
  {

    v6 = v5;
  }

  v51 = v6;
  v7 = *(v3 + 8);
  sub_2703BFA60(v3, v55);

  v8 = a1[1];
  if (!v8)
  {

    v8 = v7;
  }

  v50 = v8;
  v9 = *(v3 + 16);

  v10 = a1[2];
  if (!v10)
  {

    v10 = v9;
  }

  v49 = v10;
  v11 = *(v3 + 24);

  v12 = a1[3];
  if (!v12)
  {

    v12 = v11;
  }

  v48 = v12;
  v13 = *(v3 + 32);

  v14 = a1[4];
  if (!v14)
  {

    v14 = v13;
  }

  v47 = v14;
  v15 = *(v3 + 40);

  v16 = a1[5];
  if (!v16)
  {

    v16 = v15;
  }

  v46 = v16;
  v17 = *(v3 + 48);

  v18 = a1[6];
  if (!v18)
  {

    v18 = v17;
  }

  v45 = v18;
  v19 = *(v3 + 56);

  v20 = a1[7];
  if (!v20)
  {

    v20 = v19;
  }

  v44 = v20;
  v21 = *(v3 + 64);

  v22 = a1[8];
  if (!v22)
  {

    v22 = v21;
  }

  v43 = v22;

  if (*(a1 + 80) == 1)
  {
    v23 = *(v3 + 80);
    v24 = v3;
  }

  else
  {
    v23 = 0;
    v24 = a1;
  }

  v42 = *(v24 + 72);
  v25 = *(v3 + 88);
  v67 = v23;
  v26 = a1[11];
  if (!v26)
  {

    v26 = v25;
  }

  v41 = v26;
  v28 = *(v3 + 96);
  v27 = *(v3 + 104);

  if (a1[13])
  {
    v28 = a1[12];
    v29 = a1[13];
  }

  else
  {

    v29 = v27;
  }

  v30 = *(v3 + 112);

  v31 = a1[14];
  if (!v31)
  {

    v31 = v30;
  }

  v32 = *(v3 + 120);

  v33 = a1[15];
  if (!v33)
  {

    v33 = v32;
  }

  v34 = *(v3 + 128);

  v35 = a1[16];
  if (!v35)
  {

    v35 = v34;
  }

  v36 = *(v3 + 136);

  v37 = a1[17];
  if (!v37)
  {

    v37 = v36;
  }

  v38 = *(v3 + 144);

  v39 = a1[18];
  if (!v39)
  {

    v39 = v38;
  }

  __src[0] = v51;
  __src[1] = v50;
  __src[2] = v49;
  __src[3] = v48;
  __src[4] = v47;
  __src[5] = v46;
  __src[6] = v45;
  __src[7] = v44;
  __src[8] = v43;
  __src[9] = v42;
  *(&__src[10] + 1) = v66[0];
  HIDWORD(__src[10]) = *(v66 + 3);
  LOBYTE(__src[10]) = v67;
  __src[11] = v41;
  __src[12] = v28;
  __src[13] = v29;
  __src[14] = v31;
  __src[15] = v33;
  __src[16] = v35;
  __src[17] = v37;
  __src[18] = v39;
  v55[0] = v51;
  v55[1] = v50;
  v55[2] = v49;
  v55[3] = v48;
  v55[4] = v47;
  v55[5] = v46;
  v55[6] = v45;
  v55[7] = v44;
  v55[8] = v43;
  v55[9] = v42;
  v56 = v67;
  *v57 = v66[0];
  *&v57[3] = *(v66 + 3);
  v58 = v41;
  v59 = v28;
  v60 = v29;
  v61 = v31;
  v62 = v33;
  v63 = v35;
  v64 = v37;
  v65 = v39;
  sub_2703BFA60(__src, v53);
  sub_2703BFABC(v55);
  return memcpy(a2, __src, 0x98uLL);
}

uint64_t sub_2704543E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000270613EB0 == a2;
  if (v4 || (OUTLINED_FUNCTION_5_30(0xD000000000000014, 0x8000000270613EB0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x8000000270613ED0 == a2;
    if (v6 || (OUTLINED_FUNCTION_5_30(0xD00000000000001ELL, 0x8000000270613ED0) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000027 && 0x8000000270613EF0 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_30(0xD000000000000027, 0x8000000270613EF0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x8000000270613F20 == a2;
        if (v8 || (OUTLINED_FUNCTION_5_30(0xD00000000000001DLL, 0x8000000270613F20) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x8000000270613F40 == a2;
          if (v9 || (OUTLINED_FUNCTION_5_30(0xD000000000000013, 0x8000000270613F40) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000270613F60 == a2;
            if (v10 || (OUTLINED_FUNCTION_5_30(0xD00000000000001CLL, 0x8000000270613F60) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = OUTLINED_FUNCTION_17_11();
              v13 = a1 == v11 && a2 == v12;
              if (v13 || (OUTLINED_FUNCTION_5_30(v11, v12) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0xD000000000000011 && 0x8000000270613F80 == a2;
                if (v14 || (OUTLINED_FUNCTION_5_30(0xD000000000000011, 0x8000000270613F80) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0xD000000000000010 && 0x8000000270613FA0 == a2;
                  if (v15 || (OUTLINED_FUNCTION_5_30(0xD000000000000010, 0x8000000270613FA0) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = a1 == 0xD000000000000016 && 0x8000000270613FC0 == a2;
                    if (v16 || (OUTLINED_FUNCTION_5_30(0xD000000000000016, 0x8000000270613FC0) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = a1 == 0x6E69546567616D69 && a2 == 0xEE00726F6C6F4374;
                      if (v17 || (OUTLINED_FUNCTION_5_30(0x6E69546567616D69, 0xEE00726F6C6F4374) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v18 = a1 == 0xD00000000000001DLL && 0x8000000270613FE0 == a2;
                        if (v18 || (OUTLINED_FUNCTION_5_30(0xD00000000000001DLL, 0x8000000270613FE0) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v19 = a1 == 0x656C746974627573 && a2 == 0xEC000000746E6F46;
                          if (v19 || (OUTLINED_FUNCTION_5_30(0x656C746974627573, 0xEC000000746E6F46) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v20 = a1 == 0x656C746974627573 && a2 == 0xED0000726F6C6F43;
                            if (v20 || (OUTLINED_FUNCTION_5_30(0x656C746974627573, 0xED0000726F6C6F43) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v21 = a1 == 0x6F74617261706573 && a2 == 0xEE00726F6C6F4372;
                              if (v21 || (OUTLINED_FUNCTION_5_30(0x6F74617261706573, 0xEE00726F6C6F4372) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v22 = a1 == 0x6E6F46656C746974 && a2 == 0xE900000000000074;
                                if (v22 || (OUTLINED_FUNCTION_5_30(0x6E6F46656C746974, 0xE900000000000074) & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6C6F43656C746974 && a2 == 0xEA0000000000726FLL)
                                {

                                  return 16;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_5_30(0x6C6F43656C746974, 0xEA0000000000726FLL);
                                  OUTLINED_FUNCTION_26_8();
                                  if (a1)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
    }
  }
}

uint64_t sub_270454804(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_17_11();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_25_9();
      result = v9 + 1;
      break;
    case 2:
      OUTLINED_FUNCTION_25_9();
      result = v7 + 10;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_25_9();
      result = v5 - 10;
      break;
    case 5:
      OUTLINED_FUNCTION_25_9();
      result = v10 - 1;
      break;
    case 6:
      return result;
    case 7:
      OUTLINED_FUNCTION_25_9();
      result = v8 - 12;
      break;
    case 8:
      OUTLINED_FUNCTION_25_9();
      result = v11 - 13;
      break;
    case 9:
      OUTLINED_FUNCTION_25_9();
      result = v6 - 7;
      break;
    case 10:
      result = 0x6E69546567616D69;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 13:
      result = 0x656C746974627573;
      break;
    case 14:
      result = 0x6F74617261706573;
      break;
    case 15:
      result = 0x6E6F46656C746974;
      break;
    case 16:
      result = 0x6C6F43656C746974;
      break;
    default:
      OUTLINED_FUNCTION_25_9();
      result = v4 - 9;
      break;
  }

  return result;
}

uint64_t sub_270454A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704543E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270454AC8(uint64_t a1)
{
  v2 = sub_270455434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270454B04(uint64_t a1)
{
  v2 = sub_270455434();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_270454B40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D80, &qword_2705F0B88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v80 = 1;
  v9 = a1[3];
  v10 = a1[4];
  v54 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_270455434();
  sub_2705D8484();
  v12 = v2;
  if (v2)
  {
    v81 = v2;
    OUTLINED_FUNCTION_0_30();
    OUTLINED_FUNCTION_24_11();
    v55 = 0;
    v56 = 0;
    v14 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v54);
    v61 = v14;
    v62 = v56;
    v63 = v55;
    v64 = v10;
    v65 = v12;
    v66 = v3;
    v67 = v11;
    v68 = v5;
    v69 = v8;
    v70 = v9;
    OUTLINED_FUNCTION_15_16(v80);
    v71 = v53;
    v72 = v58;
    v73 = v57;
    v74 = v52;
    v75 = v51;
    v76 = v50;
    v77 = v49;
    v78 = 0;
    return sub_2703BFABC(&v61);
  }

  v13 = v48;
  LOBYTE(v59[0]) = 0;
  sub_270455488();
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v47 = v61;
  LOBYTE(v59[0]) = 1;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v16 = v61;
  LOBYTE(v59[0]) = 2;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v56 = v16;
  v17 = v61;
  LOBYTE(v59[0]) = 3;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v55 = v17;
  v46 = v61;
  LOBYTE(v59[0]) = 4;
  v18 = sub_2704554DC();
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v45 = v61;
  LOBYTE(v59[0]) = 5;
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v49 = v18;
  v44 = v61;
  LOBYTE(v59[0]) = 6;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v43 = v61;
  LOBYTE(v59[0]) = 7;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v42 = v61;
  LOBYTE(v59[0]) = 8;
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v41 = v61;
  LOBYTE(v61) = 9;
  v40 = sub_2705D7F34();
  v80 = v19 & 1;
  LOBYTE(v59[0]) = 10;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v81 = 0;
  v53 = v61;
  LOBYTE(v61) = 11;
  v20 = sub_2705D7F04();
  v57 = v21;
  v58 = v20;
  v81 = 0;
  LOBYTE(v59[0]) = 12;
  OUTLINED_FUNCTION_7_20();
  v22 = v81;
  sub_2705D7F44();
  v81 = v22;
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_6_27();
    v24(v23);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
LABEL_10:
    v10 = v46;
    v14 = v47;
    v3 = v44;
    v12 = v45;
    v5 = v42;
    v11 = v43;
    v9 = v40;
    v8 = v41;
    goto LABEL_4;
  }

  v52 = v61;
  LOBYTE(v59[0]) = 13;
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_19_6();
  v81 = 0;
  v51 = v61;
  LOBYTE(v59[0]) = 14;
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_19_6();
  v81 = 0;
  v50 = v61;
  LOBYTE(v59[0]) = 15;
  OUTLINED_FUNCTION_7_20();
  v25 = v81;
  sub_2705D7F44();
  v81 = v25;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_6_27();
    v27(v26);
    v49 = 0;
    goto LABEL_10;
  }

  v49 = v61;
  LOBYTE(v61) = 16;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_19_6();
  v28 = OUTLINED_FUNCTION_6_27();
  v29(v28);
  v81 = 0;
  v38 = v60;
  v59[0] = v47;
  v59[1] = v56;
  v59[2] = v55;
  v59[3] = v46;
  v59[4] = v45;
  v59[5] = v44;
  v59[6] = v43;
  v59[7] = v42;
  v59[8] = v41;
  v59[9] = v40;
  v39 = v80;
  LOBYTE(v59[10]) = v80;
  *(&v59[10] + 1) = *v79;
  HIDWORD(v59[10]) = *&v79[3];
  v31 = v52;
  v30 = v53;
  v32 = v57;
  v33 = v58;
  v59[11] = v53;
  v59[12] = v58;
  v59[13] = v57;
  v59[14] = v52;
  v35 = v50;
  v34 = v51;
  v59[15] = v51;
  v59[16] = v50;
  v36 = v49;
  v59[17] = v49;
  v59[18] = v60;
  sub_2703BFA60(v59, &v61);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v61 = v47;
  v62 = v56;
  v63 = v55;
  v64 = v46;
  v65 = v45;
  v66 = v44;
  v67 = v43;
  v68 = v42;
  v69 = v41;
  v70 = v40;
  OUTLINED_FUNCTION_15_16(v39);
  v71 = v30;
  v72 = v33;
  v73 = v32;
  v74 = v31;
  v75 = v34;
  v76 = v35;
  v77 = v36;
  v78 = v38;
  sub_2703BFABC(&v61);
  return memcpy(v13, v59, 0x98uLL);
}

uint64_t sub_2704552A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_18_8();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_5_30(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x67696557746E6F66 && a2 == 0xEA00000000007468;
    if (v8 || (OUTLINED_FUNCTION_5_30(0x67696557746E6F66, 0xEA00000000007468) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000270614000 == a2)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_30(0xD000000000000010, 0x8000000270614000);
      OUTLINED_FUNCTION_26_8();
      if (a1)
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

uint64_t sub_270455388(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  if (a1 == 1)
  {
    return 0x67696557746E6F66;
  }

  return 0xD000000000000010;
}

void *sub_2704553E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270454B40(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x98uLL);
  }

  return result;
}

unint64_t sub_270455434()
{
  result = qword_2807D2D88;
  if (!qword_2807D2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D88);
  }

  return result;
}

unint64_t sub_270455488()
{
  result = qword_2807D2D90;
  if (!qword_2807D2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D90);
  }

  return result;
}

unint64_t sub_2704554DC()
{
  result = qword_2807D2D98;
  if (!qword_2807D2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D98);
  }

  return result;
}

uint64_t sub_270455548(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2704555D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x27045569CLL);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704556D4()
{
  result = qword_2807D2DA0;
  if (!qword_2807D2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DA0);
  }

  return result;
}

uint64_t sub_270455730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704552A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270455764(uint64_t a1)
{
  v2 = sub_2704577E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704557A0(uint64_t a1)
{
  v2 = sub_2704577E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2704557DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0, &qword_2705F0D60);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  v5 = sub_2705D58D4();
  OUTLINED_FUNCTION_0();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DE8, &qword_2705F0D68);
  OUTLINED_FUNCTION_0();
  v37 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704577E8();
  v16 = v39;
  sub_2705D8484();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v39 = v9;
    v36 = v4;
    v18 = v37;
    v17 = v38;
    v19 = v5;
    v44 = 0;
    sub_27045783C();
    OUTLINED_FUNCTION_18();
    sub_2705D7FA4();
    sub_270455C40(v45, v39);
    v42 = 1;
    sub_270457890();
    OUTLINED_FUNCTION_18();
    sub_2705D7F44();
    v20 = v18;
    v21 = v19;
    if (v43 == 9)
    {
      v35 = 0;
    }

    else
    {
      sub_270455CBC(v43);
      v35 = v22;
    }

    v40 = 2;
    sub_2704578E4();
    OUTLINED_FUNCTION_18();
    sub_2705D7F44();
    v34 = v14;
    v24 = MEMORY[0x277CE0990];
    v33 = a1;
    switch(v41)
    {
      case 1:
        v24 = MEMORY[0x277CE09A0];
        goto LABEL_13;
      case 2:
        v24 = MEMORY[0x277CE0988];
        goto LABEL_13;
      case 3:
        v24 = MEMORY[0x277CE0980];
        goto LABEL_13;
      case 4:
        v25 = sub_2705D5794();
        v26 = v36;
        v27 = v36;
        v28 = 1;
        goto LABEL_14;
      default:
LABEL_13:
        v29 = *v24;
        v30 = sub_2705D5794();
        v26 = v36;
        (*(*(v30 - 8) + 104))(v36, v29, v30);
        v27 = v26;
        v28 = 0;
        v25 = v30;
        v21 = v19;
LABEL_14:
        __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);
        v31 = v39;
        v15 = sub_2705D5854();
        sub_2703BF9F8(v26);
        (*(v17 + 8))(v31, v21);
        (*(v20 + 8))(v34, v10);
        __swift_destroy_boxed_opaque_existential_1(v33);
        break;
    }
  }

  return v15;
}

uint64_t sub_270455C40@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D58D4();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279E047F0 + a1);

  return v5(a2, v6, v4);
}

void sub_270455CBC(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      sub_2705D57D4();
      break;
    case 2:
      sub_2705D5804();
      break;
    case 3:
      sub_2705D5824();
      break;
    case 4:
      sub_2705D5814();
      break;
    case 5:
      sub_2705D5834();
      break;
    case 6:
      sub_2705D57C4();
      break;
    case 7:
      sub_2705D57F4();
      break;
    case 8:
      sub_2705D57E4();
      break;
    default:
      sub_2705D57A4();
      break;
  }
}

uint64_t sub_270455D28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_9();
  sub_2705D8454();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    OUTLINED_FUNCTION_23_9();
    sub_2705D8144();
    v5 = sub_2705D75E4();
    v7 = v6;

    v8 = v5 == 0x746974656772616CLL && v7 == 0xEA0000000000656CLL;
    if (v8 || (OUTLINED_FUNCTION_10_20(0x746974656772616CLL, 0xEA0000000000656CLL) & 1) != 0)
    {

      v1 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v1;
    }

    v9 = v5 == 0x31656C746974 && v7 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_10_20(0x31656C746974, 0xE600000000000000) & 1) != 0)
    {

      v1 = 1;
      goto LABEL_12;
    }

    v10 = v5 == 0x32656C746974 && v7 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_10_20(0x32656C746974, 0xE600000000000000) & 1) != 0)
    {

      v1 = 2;
      goto LABEL_12;
    }

    v11 = v5 == 0x33656C746974 && v7 == 0xE600000000000000;
    if (v11 || (OUTLINED_FUNCTION_10_20(0x33656C746974, 0xE600000000000000) & 1) != 0)
    {

      v1 = 3;
      goto LABEL_12;
    }

    v12 = v5 == 0x656E696C64616568 && v7 == 0xE800000000000000;
    if (v12 || (OUTLINED_FUNCTION_10_20(0x656E696C64616568, 0xE800000000000000) & 1) != 0)
    {

      v1 = 4;
      goto LABEL_12;
    }

    v13 = OUTLINED_FUNCTION_20_8();
    v15 = v5 == v13 && v7 == v14;
    if (v15 || (OUTLINED_FUNCTION_10_20(v13, v14) & 1) != 0)
    {

      v1 = 5;
      goto LABEL_12;
    }

    v16 = v5 == 2036625250 && v7 == 0xE400000000000000;
    if (v16 || (OUTLINED_FUNCTION_10_20(2036625250, 0xE400000000000000) & 1) != 0)
    {

      v1 = 6;
      goto LABEL_12;
    }

    v17 = v5 == 0x74756F6C6C6163 && v7 == 0xE700000000000000;
    if (v17 || (OUTLINED_FUNCTION_10_20(0x74756F6C6C6163, 0xE700000000000000) & 1) != 0)
    {

      v1 = 7;
      goto LABEL_12;
    }

    v18 = v5 == 0x65746F6E746F6F66 && v7 == 0xE800000000000000;
    if (v18 || (OUTLINED_FUNCTION_10_20(0x65746F6E746F6F66, 0xE800000000000000) & 1) != 0)
    {

      v1 = 8;
      goto LABEL_12;
    }

    v19 = v5 == 0x316E6F6974706163 && v7 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_10_20(0x316E6F6974706163, 0xE800000000000000) & 1) != 0)
    {

      v1 = 9;
      goto LABEL_12;
    }

    v20 = v5 == 0x326E6F6974706163 && v7 == 0xE800000000000000;
    if (v20 || (OUTLINED_FUNCTION_10_20(0x326E6F6974706163, 0xE800000000000000) & 1) != 0)
    {

      v1 = 10;
      goto LABEL_12;
    }

    v21 = sub_2705D7D84();
    swift_allocError();
    v23 = v22;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v24[0] = 0xD00000000000001DLL;
    v24[1] = 0x8000000270614020;
    v1 = v24;
    MEMORY[0x2743A3A90](v5, v7);

    sub_2705D7D44();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84168], v21);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_270456164()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704561A4(char a1)
{
  result = 0x746974656772616CLL;
  switch(a1)
  {
    case 1:
      result = 0x31656C746974;
      break;
    case 2:
      result = 0x32656C746974;
      break;
    case 3:
      result = 0x33656C746974;
      break;
    case 4:
      result = 0x656E696C64616568;
      break;
    case 5:
      result = OUTLINED_FUNCTION_20_8();
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x74756F6C6C6163;
      break;
    case 8:
      result = 0x65746F6E746F6F66;
      break;
    case 9:
      result = 0x316E6F6974706163;
      break;
    case 10:
      result = 0x326E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704562EC()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27045632C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F72;
      break;
    case 2:
      result = 0x6669726573;
      break;
    case 3:
      result = 0x636170736F6E6F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704563E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456164();
  *a1 = result;
  return result;
}

uint64_t sub_270456410()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704561A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270456438@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270455D28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_270456488@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704562EC();
  *a1 = result;
  return result;
}

uint64_t sub_2704564B8()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27045632C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_270456540()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270456580(char a1)
{
  result = 0x67696C6172746C75;
  switch(a1)
  {
    case 1:
      result = 1852401780;
      break;
    case 2:
      result = 0x746867696CLL;
      break;
    case 3:
      result = 0x72616C75676572;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 0x646C6F62696D6573;
      break;
    case 6:
      result = 1684828002;
      break;
    case 7:
      result = 0x7976616568;
      break;
    case 8:
      result = 0x6B63616C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270456684()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2704566CC(char a1)
{
  if (a1)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t sub_270456700(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30(1701869940, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30(1701667182, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F43746867696CLL && a2 == 0xEA0000000000726FLL;
      if (v7 || (OUTLINED_FUNCTION_5_30(0x6C6F43746867696CLL, 0xEA0000000000726FLL) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F6C6F436B726164 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_5_30(0x6F6C6F436B726164, 0xE900000000000072);
        OUTLINED_FUNCTION_26_8();
        if (a1)
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

uint64_t sub_270456838(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C6F43746867696CLL;
      break;
    case 3:
      result = 0x6F6C6F436B726164;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704568E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456540();
  *a1 = result;
  return result;
}

uint64_t sub_270456914()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_270456580(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_27045699C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2704557DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2704569EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456684();
  *a1 = result;
  return result;
}

uint64_t sub_270456A1C()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704566CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270456AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270456700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270456AD4(uint64_t a1)
{
  v2 = sub_270457698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270456B10(uint64_t a1)
{
  v2 = sub_270457698();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_270456B4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DB8, &qword_2705F0D50);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270457698();
  sub_2705D8484();
  if (!v1)
  {
    sub_2704576EC();
    OUTLINED_FUNCTION_18();
    sub_2705D7FA4();
    if (v12)
    {
      sub_270455488();
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      v6 = OUTLINED_FUNCTION_13_16();
      v7(v6);
      v4 = v11;
    }

    else
    {
      sub_270457740();
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      v4 = sub_27045704C(v10);
      v8 = OUTLINED_FUNCTION_13_16();
      v9(v8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void *sub_270456D88(void *a1)
{
  v3 = sub_2705D5C34();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DD8, &qword_2705F0D58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270457794();
  sub_2705D8484();
  if (!v1)
  {
    v14 = v5;
    v15 = v3;
    v11 = v16;
    v20 = 0;
    sub_2705D7F74();
    v19 = 1;
    sub_2705D7F74();
    v18 = 2;
    sub_2705D7F74();
    v17 = 3;
    sub_2705D7F24();
    (*(v11 + 104))(v14, *MEMORY[0x277CE0EE0], v15);
    v10 = sub_2705D5D94();
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_27045704C(uint64_t a1)
{
  switch(a1)
  {
    case 1:

      return sub_2705D5CB4();
    case 2:

      return sub_2705D5C54();
    case 3:

      return MEMORY[0x282133458]();
    case 4:

      return sub_2705D5CD4();
    case 5:

      return MEMORY[0x282133408]();
    case 6:

      return sub_2705D5C74();
    case 7:

      return MEMORY[0x282133478]();
    case 8:

      return MEMORY[0x282133490]();
    case 9:

      return MEMORY[0x282133428]();
    case 10:

      return sub_2705D5D14();
    case 11:

      return MEMORY[0x282133430]();
    case 12:

      return MEMORY[0x2821334A8]();
    case 13:

      return sub_2705D5C44();
    case 14:

      return MEMORY[0x282133438]();
    case 15:

      return sub_2705D5CF4();
    case 16:

      return sub_2705D5D34();
    case 17:

      return sub_2705D5D54();
    case 18:

      return sub_2705D5D84();
    case 19:
      if (qword_2807CE7A8 != -1)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    case 20:
      v2 = [objc_opt_self() quaternaryLabelColor];
      goto LABEL_61;
    case 21:
      v2 = [objc_opt_self() separatorColor];
      goto LABEL_61;
    case 22:
      v2 = [objc_opt_self() opaqueSeparatorColor];
LABEL_61:
      v3 = v2;

      result = sub_2705D5C14();
      break;
    default:
      if (qword_2807CE790 != -1)
      {
LABEL_66:
        swift_once();
      }

LABEL_65:

      break;
  }

  return result;
}

uint64_t sub_270457380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30(6579570, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30(0x6E65657267, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_30(1702194274, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_5_30(0x6168706C61, 0xE500000000000000);
        OUTLINED_FUNCTION_26_8();
        if (a1)
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

uint64_t sub_270457498(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_14_21();
      break;
    case 3:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270457510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270457380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270457544(uint64_t a1)
{
  v2 = sub_270457794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270457580(uint64_t a1)
{
  v2 = sub_270457794();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2704575BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270456B4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704575EC()
{
  result = qword_2807D2DA8;
  if (!qword_2807D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DA8);
  }

  return result;
}

unint64_t sub_270457644()
{
  result = qword_2807D2DB0;
  if (!qword_2807D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DB0);
  }

  return result;
}

unint64_t sub_270457698()
{
  result = qword_2807D2DC0;
  if (!qword_2807D2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DC0);
  }

  return result;
}

unint64_t sub_2704576EC()
{
  result = qword_2807D2DC8;
  if (!qword_2807D2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DC8);
  }

  return result;
}

unint64_t sub_270457740()
{
  result = qword_2807D2DD0;
  if (!qword_2807D2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DD0);
  }

  return result;
}

unint64_t sub_270457794()
{
  result = qword_2807D2DE0;
  if (!qword_2807D2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DE0);
  }

  return result;
}

unint64_t sub_2704577E8()
{
  result = qword_2807D2DF0;
  if (!qword_2807D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DF0);
  }

  return result;
}

unint64_t sub_27045783C()
{
  result = qword_2807D2DF8;
  if (!qword_2807D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DF8);
  }

  return result;
}

unint64_t sub_270457890()
{
  result = qword_2807D2E00;
  if (!qword_2807D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E00);
  }

  return result;
}

unint64_t sub_2704578E4()
{
  result = qword_2807D2E08;
  if (!qword_2807D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E08);
  }

  return result;
}

_BYTE *sub_270457948(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x270457A14);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270457A48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x270457B14);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270457B48(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270457C14);
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

uint64_t getEnumTagSinglePayload for InlineMessageAppearance.ColorDecoder.ColorIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}