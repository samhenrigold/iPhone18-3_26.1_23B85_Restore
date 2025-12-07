uint64_t sub_1BF91FCEC(uint64_t a1)
{
  v2 = sub_1BF8BFD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91FD28(uint64_t a1)
{
  v2 = sub_1BF8BFD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.Intent.toV1Representation()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriSuggestions.Intent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_11();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_24_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF8C14B0();
      type metadata accessor for SiriSuggestions.AppIntent(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = v1[2];
        if (v12)
        {
          v13 = v1[1];
        }

        else
        {
          v13 = 0;
          v12 = 0xE000000000000000;
        }

        *a1 = *v1;
        *(a1 + 8) = v13;
        *(a1 + 16) = v12;
        v15 = 1;
        goto LABEL_11;
      }

      sub_1BF920AE4(v1, type metadata accessor for SiriSuggestions.AppIntent);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v15 = -1;
LABEL_11:
    *(a1 + 24) = v15;
    return sub_1BF920AE4(v10, type metadata accessor for SiriSuggestions.Intent);
  }

  OUTLINED_FUNCTION_23_7();
  sub_1BF8C14B0();
  v14 = *v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v14;
  *(a1 + 24) = 0;
  return sub_1BF920AE4(v10, type metadata accessor for SiriSuggestions.Intent);
}

void static SiriSuggestions.Intent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_65_0();
  v0 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v1 = OUTLINED_FUNCTION_72(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v34 = v3 - v2;
  v4 = OUTLINED_FUNCTION_55_2();
  type metadata accessor for SiriSuggestions.Intent(v4);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_11();
  v8 = (v6 - v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v33 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D0, &unk_1BF9BF230);
  OUTLINED_FUNCTION_72(v15);
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = (&v33 + *(v17 + 56) - v18);
  sub_1BF8C14B0();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1BF8C14B0();
      OUTLINED_FUNCTION_23_7();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_4_12();
        v22 = v34;
        sub_1BF920B90();
        static SiriSuggestions.AppIntent.== infix(_:_:)();
        sub_1BF920AE4(v22, type metadata accessor for SiriSuggestions.AppIntent);
        v23 = OUTLINED_FUNCTION_59_3();
        sub_1BF920AE4(v23, v24);
LABEL_13:
        sub_1BF920AE4(v19, type metadata accessor for SiriSuggestions.Intent);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_2_15();
      sub_1BF920AE4(v12, v31);
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      sub_1BF8C14B0();
      v26 = v8[1];
      v41[0] = *v8;
      v41[1] = v26;
      v42[0] = v8[2];
      *(v42 + 9) = *(v8 + 41);
      OUTLINED_FUNCTION_23_7();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v27 = v20[1];
        v39[0] = *v20;
        v39[1] = v27;
        v29 = *v20;
        v28 = v20[1];
        v40[0] = v20[2];
        *(v40 + 9) = *(v20 + 41);
        v30 = v8[1];
        v37[0] = *v8;
        v37[1] = v30;
        v38[0] = v8[2];
        *(v38 + 9) = *(v8 + 41);
        v35[0] = v29;
        v35[1] = v28;
        v36[0] = v20[2];
        *(v36 + 9) = *(v20 + 41);
        static Action.== infix(_:_:)(v37, v35);
        sub_1BF8D768C(v39);
        sub_1BF8D768C(v41);
        goto LABEL_13;
      }

      sub_1BF8D768C(v41);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_12();
    sub_1BF8C14B0();
    v25 = *v14;
    OUTLINED_FUNCTION_23_7();
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = *v20;
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      sub_1BF9B50B8();

      goto LABEL_13;
    }
  }

  sub_1BF8DFBF0(v19, &qword_1EBDE96D0, &unk_1BF9BF230);
LABEL_14:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9202A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t IntentParameterWrapped.init(parameter:)@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static IntentParameterWrapped.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1 || (v3 = *a2) == 0)
  {
    v5 = 1;
    return v5 & 1;
  }

  ObjectType = swift_getObjectType();
  *&v8 = v2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  sub_1BF90AE78(&v8, &v10);
  __swift_destroy_boxed_opaque_existential_1(&v8);
  if (!v11)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BF8DFBF0(&v10, &qword_1EBDE9210, &qword_1BF9BD040);
LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  sub_1BF8C2C9C(&v10, v12);
  v7[3] = swift_getObjectType();
  v7[0] = v3;
  swift_unknownObjectRetain();
  sub_1BF90AE78(v7, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!ObjectType)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BF8DFBF0(&v8, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_9;
  }

  sub_1BF8C2C9C(&v8, &v10);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1BF90AB90();
  v5 = v4;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v5 & 1;
}

uint64_t IntentParameterWrapped.getRoot()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96E0, &qword_1BF9BF250);
  *a1 = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1BF92054C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6150746E65746E69 && a2 == 0xEF726574656D6172)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9205F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF92054C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF920620(uint64_t a1)
{
  v2 = sub_1BF920CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF92065C(uint64_t a1)
{
  v2 = sub_1BF920CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentParameterWrapped.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96E8, &qword_1BF9BF258);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_28(v22, v22[3]);
  sub_1BF920CE4();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  sub_1BF920C90();
  sub_1BF9B55E8();
  swift_unknownObjectRelease();
  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_37();
}

void IntentParameterWrapped.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F0, &qword_1BF9BF260);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_28(v13, v13[3]);
  sub_1BF920CE4();
  sub_1BF9B5868();
  if (!v10)
  {
    sub_1BF920BE8();
    sub_1BF9B5508();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF92094C()
{
  result = qword_1EBDE9668;
  if (!qword_1EBDE9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9668);
  }

  return result;
}

uint64_t sub_1BF9209A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BF9209E8()
{
  result = qword_1EBDE9680;
  if (!qword_1EBDE9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9680);
  }

  return result;
}

unint64_t sub_1BF920A3C()
{
  result = qword_1EBDE9688;
  if (!qword_1EBDE9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9688);
  }

  return result;
}

unint64_t sub_1BF920A90()
{
  result = qword_1EBDE96A0;
  if (!qword_1EBDE96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE96A0);
  }

  return result;
}

uint64_t sub_1BF920AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BF920B3C()
{
  result = qword_1EDBF0958;
  if (!qword_1EDBF0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0958);
  }

  return result;
}

uint64_t sub_1BF920B90()
{
  OUTLINED_FUNCTION_34_3();
  v1(0);
  OUTLINED_FUNCTION_13();
  v2 = OUTLINED_FUNCTION_43();
  v3(v2);
  return v0;
}

unint64_t sub_1BF920BE8()
{
  result = qword_1EDBF32C0;
  if (!qword_1EDBF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32C0);
  }

  return result;
}

unint64_t sub_1BF920C3C()
{
  result = qword_1EDBF4138;
  if (!qword_1EDBF4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4138);
  }

  return result;
}

unint64_t sub_1BF920C90()
{
  result = qword_1EDBF49B0;
  if (!qword_1EDBF49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49B0);
  }

  return result;
}

unint64_t sub_1BF920CE4()
{
  result = qword_1EDBF4808;
  if (!qword_1EDBF4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4808);
  }

  return result;
}

uint64_t sub_1BF920D38(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1BF920D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentParameterWrapped.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF920EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF920FA8()
{
  result = qword_1EBDE9700;
  if (!qword_1EBDE9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9700);
  }

  return result;
}

unint64_t sub_1BF921000()
{
  result = qword_1EBDE9708;
  if (!qword_1EBDE9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9708);
  }

  return result;
}

unint64_t sub_1BF921058()
{
  result = qword_1EBDE9710;
  if (!qword_1EBDE9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9710);
  }

  return result;
}

unint64_t sub_1BF9210B0()
{
  result = qword_1EBDE9718;
  if (!qword_1EBDE9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9718);
  }

  return result;
}

unint64_t sub_1BF921108()
{
  result = qword_1EDBF47F8;
  if (!qword_1EDBF47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47F8);
  }

  return result;
}

unint64_t sub_1BF921160()
{
  result = qword_1EDBF4800;
  if (!qword_1EDBF4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4800);
  }

  return result;
}

unint64_t sub_1BF9211B8()
{
  result = qword_1EDBF4D08;
  if (!qword_1EDBF4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4D08);
  }

  return result;
}

unint64_t sub_1BF921210()
{
  result = qword_1EDBF4D10;
  if (!qword_1EDBF4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4D10);
  }

  return result;
}

unint64_t sub_1BF921268()
{
  result = qword_1EBDE9720;
  if (!qword_1EBDE9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9720);
  }

  return result;
}

unint64_t sub_1BF9212C0()
{
  result = qword_1EBDE9728;
  if (!qword_1EBDE9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9728);
  }

  return result;
}

unint64_t sub_1BF921314()
{
  result = qword_1EBDE9738;
  if (!qword_1EBDE9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9738);
  }

  return result;
}

uint64_t sub_1BF921368()
{
  OUTLINED_FUNCTION_34_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1BF9213C0()
{
  OUTLINED_FUNCTION_34_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1BF921418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9780, &qword_1BF9BF9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF921650(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_53_3(a1, a2) + 32);
  OUTLINED_FUNCTION_11();
  (*v3)(v2);
  return v2;
}

_BYTE *_s9AppIntentO18TransportAppIntentV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF921784()
{
  result = qword_1EBDE97C0;
  if (!qword_1EBDE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97C0);
  }

  return result;
}

unint64_t sub_1BF9217DC()
{
  result = qword_1EBDE97C8;
  if (!qword_1EBDE97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97C8);
  }

  return result;
}

unint64_t sub_1BF921834()
{
  result = qword_1EBDE97D0;
  if (!qword_1EBDE97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  v5 = (*(v0 + 48) + 16 * v3);
  *v5 = v1;
  v5[1] = v2;
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

double SimpleRNG.init(seed:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (HIDWORD(a1))
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v5 = sub_1BF9B47C8();
    __swift_project_value_buffer(v5, qword_1EDBF5570);
    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5028();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;
      _os_log_impl(&dword_1BF8B8000, v6, v7, "Truncating seed to avoid overflow: %llu -> %llu", v8, 0x16u);
      MEMORY[0x1BFB5F320](v8, -1, -1);
    }
  }

  *a2 = v4;
  *&result = 1103515245;
  *(a2 + 8) = xmmword_1BF9BFAE0;
  *(a2 + 24) = 12345;
  return result;
}

Swift::UInt64 __swiftcall SimpleRNG.next()()
{
  v1 = v0[1];
  if (!is_mul_ok(v1, *v0))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1 * *v0;
  v3 = v0[3];
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v0[2];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v5 % v6;
  *v0 = v7;
  if (is_mul_ok(v7, 0x1FB3C4B80uLL))
  {
    return 8510000000 * v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t UUIDtoSeed(_:)()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = sub_1BF9B4AF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF9B44E8();
  sub_1BF9B4AE8();
  v4 = sub_1BF9B4AB8();
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    return 505911505;
  }

  v8 = MEMORY[0x1BFB5D760](v4, v6);
  if (v8 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  if (v8 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v7 = 0;
  v10 = 0;
  v31 = v4 >> 32;
  v32 = v4;
  v29 = v4 >> 8;
  v30 = BYTE6(v6);
  v27 = v4 >> 24;
  v28 = v4 >> 16;
  v25 = v4 >> 40;
  v26 = HIDWORD(v4);
  v23 = HIBYTE(v4);
  v24 = HIWORD(v4);
  v21 = v6 >> 16;
  v22 = v6 >> 8;
  v20 = v6 >> 24;
  while (v9 != v10)
  {
    switch(v6 >> 62)
    {
      case 1uLL:
        if (v10 < v32 || v10 >= v31)
        {
          goto LABEL_31;
        }

        v17 = sub_1BF9B42E8();
        if (!v17)
        {
          goto LABEL_37;
        }

        v13 = v17;
        v18 = sub_1BF9B4318();
        v15 = v10 - v18;
        if (!__OFSUB__(v10, v18))
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      case 2uLL:
        if (v10 < *(v4 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v10 >= *(v4 + 24))
        {
          goto LABEL_32;
        }

        v12 = sub_1BF9B42E8();
        if (!v12)
        {
          goto LABEL_38;
        }

        v13 = v12;
        v14 = sub_1BF9B4318();
        v15 = v10 - v14;
        if (__OFSUB__(v10, v14))
        {
          goto LABEL_34;
        }

LABEL_25:
        v11 = *(v13 + v15);
LABEL_26:
        v7 = (v7 << 8) | v11;
        ++v10;
        break;
      case 3uLL:
        goto LABEL_36;
      default:
        if (v10 >= v30)
        {
          goto LABEL_30;
        }

        v33[0] = v4;
        v33[1] = v29;
        v33[2] = v28;
        v33[3] = v27;
        v33[4] = v26;
        v33[5] = v25;
        v33[6] = v24;
        v33[7] = v23;
        v33[8] = v6;
        v33[9] = v22;
        v33[10] = v21;
        v33[11] = v20;
        v33[12] = BYTE4(v6);
        v33[13] = BYTE5(v6);
        v11 = v33[v10];
        goto LABEL_26;
    }
  }

  sub_1BF921E14(v4, v6);
  return v7;
}

uint64_t sub_1BF921E14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF8F9F3C(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF921E38@<X0>(uint64_t a3@<X8>)
{
  sub_1BF904C28();
  v4 = sub_1BF9B5168();
  v5 = v4;
  v6 = v4[2];
  if (v6 && (v4[4] == 0x7070416E69 ? (v7 = v4[5] == 0xE500000000000000) : (v7 = 0), v7 || (sub_1BF9B56D8() & 1) != 0))
  {
    if (v6 == 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v8 = v5[6];
      v11 = v5[7];

      if (v6 <= 2)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = v5[8];
        v10 = v5[9];
      }
    }

    *a3 = v8;
    *(a3 + 8) = v11;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = 0;
  }

  else
  {

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
  }

  return result;
}

void DeliveryVehicle.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_13();
  sub_1BF9B5848();
  if (v2)
  {
    goto LABEL_4;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_2_13();
  v5 = sub_1BF9B5688();
  v7 = v6;

  DeliveryVehicle.init(rawValue:)(v5, v7, v11);
  v8 = v12;
  if (v12 != 255)
  {
    v9 = v11[1];
    v10 = v11[0];

    __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v10;
    *(a2 + 16) = v9;
    *(a2 + 32) = v8;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __break(1u);
}

uint64_t DeliveryVehicle.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_1BF9B5878();
  DeliveryVehicle.rawValue.getter(v1, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF9B5698();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t DeliveryVehicle.deliveryVehicleType.getter(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    return 0x7070416E69;
  }

  v3 = *v2;
  if (*(v2 + 32) == 1)
  {
    result = OUTLINED_FUNCTION_7_9();
    if (v5 >= 2u)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v6 = v2[1];
    v7 = v2[2] | v2[3];
    if (v7 | v3 | v6)
    {
      v8 = v7 | v6;
      if (v3 == 1 && v8 == 0)
      {
        return 0xD000000000000010;
      }

      else if (v3 != 2 || v8)
      {
        if (v3 != 3 || v8)
        {
          result = 0xD000000000000010;
          if (v3 == 4 && !v8)
          {
            return 0xD000000000000014;
          }
        }

        else
        {
          return OUTLINED_FUNCTION_8_7();
        }
      }

      else
      {
        return OUTLINED_FUNCTION_6_10();
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  return result;
}

uint64_t SiriHintsMode.description.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x746E694869726973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E694869726973;
  }
}

void static DeliveryVehicle.siriHints.getter()
{
  v0 = static DeliveryVehicle.allCases.getter();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = v0 - 8 + 40 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    ++v1;
    v5 = (v4 + 40);
    v6 = *(v4 + 72);
    v4 += 40;
    if (v6 == 1)
    {
      v10 = v5[1];
      v11 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8BDCF8(0, *(v3 + 16) + 1, 1);
      }

      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BF8BDCF8(v7 > 1, v8 + 1, 1);
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 40 * v8;
      *(v9 + 32) = v11;
      *(v9 + 48) = v10;
      *(v9 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

Swift::String __swiftcall DeliveryVehicle.getComponentName(suggestionId:)(Swift::String suggestionId)
{
  object = suggestionId._object;
  countAndFlagsBits = suggestionId._countAndFlagsBits;
  OUTLINED_FUNCTION_4_13();
  v9 = DeliveryVehicle.deliveryVehicleType.getter(v3, v4);
  v10 = v5;
  MEMORY[0x1BFB5DE90](35, 0xE100000000000000);
  MEMORY[0x1BFB5DE90](countAndFlagsBits, object);
  v6 = v9;
  v7 = v10;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1BF922530@<X0>(uint64_t *a1@<X8>)
{
  result = static DeliveryVehicle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF922558@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = DeliveryVehicle.rawValue.getter(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BF922580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BF8CA80C(v5, v7) & 1;
}

void DeliveryVehicle.defaultObjective.getter(char *a1@<X8>)
{
  if (*(v1 + 32) == 2 && (*v1 == 4 ? (v2 = (*(v1 + 16) | *(v1 + 24) | *(v1 + 8)) == 0) : (v2 = 0), v2))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t sub_1BF92261C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F7073 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF922728(char a1)
{
  if (!a1)
  {
    return 0x79616C70736964;
  }

  if (a1 == 1)
  {
    return 0x6E656B6F7073;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1BF922784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF92261C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9227AC(uint64_t a1)
{
  v2 = sub_1BF923300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9227E8(uint64_t a1)
{
  v2 = sub_1BF923300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF922824(uint64_t a1)
{
  v2 = sub_1BF9233FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF922860(uint64_t a1)
{
  v2 = sub_1BF9233FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF92289C(uint64_t a1)
{
  v2 = sub_1BF9233A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9228D8(uint64_t a1)
{
  v2 = sub_1BF9233A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF922914(uint64_t a1)
{
  v2 = sub_1BF923354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF922950(uint64_t a1)
{
  v2 = sub_1BF923354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriHintsMode.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97D8, &qword_1BF9BFB78);
  OUTLINED_FUNCTION_1();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97E0, &qword_1BF9BFB80);
  OUTLINED_FUNCTION_1();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97E8, &qword_1BF9BFB88);
  OUTLINED_FUNCTION_1();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97F0, &qword_1BF9BFB90);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF923300();
  sub_1BF9B5898();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_1BF9233A8();
      v15 = v29;
      OUTLINED_FUNCTION_3_13(&type metadata for SiriHintsMode.SpokenCodingKeys, &v36);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_1BF923354();
      v15 = v32;
      OUTLINED_FUNCTION_3_13(&type metadata for SiriHintsMode.UnknownCodingKeys, &v37);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1BF9233FC();
    OUTLINED_FUNCTION_3_13(&type metadata for SiriHintsMode.DisplayCodingKeys, &v35);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

uint64_t SiriHintsMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t SiriHintsMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9818, &qword_1BF9BFB98);
  OUTLINED_FUNCTION_1();
  v56 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9820, &qword_1BF9BFBA0);
  OUTLINED_FUNCTION_1();
  v53 = v7;
  v54 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9828, &qword_1BF9BFBA8);
  OUTLINED_FUNCTION_1();
  v52 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9830, &unk_1BF9BFBB0);
  OUTLINED_FUNCTION_1();
  v57 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF923300();
  v21 = v60;
  sub_1BF9B5868();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v11;
  v50 = v15;
  v51 = v10;
  v23 = v58;
  v22 = v59;
  v60 = a1;
  sub_1BF9B5568();
  result = sub_1BF8D21BC();
  if (v26 == v27 >> 1)
  {
    goto LABEL_9;
  }

  v48 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v28) = *(v25 + v26);
    sub_1BF8D21AC();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v56;
    if (!v33)
    {
LABEL_9:
      v39 = sub_1BF9B5308();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400);
      *v41 = &type metadata for SiriHintsMode;
      sub_1BF9B54B8();
      sub_1BF9B52F8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v20, v16);
      a1 = v60;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v62[0] = 1;
        sub_1BF9233A8();
        v35 = v51;
        OUTLINED_FUNCTION_11_11(&type metadata for SiriHintsMode.SpokenCodingKeys, v62);
        v36 = v55;
        v37 = v16;
        v38 = v57;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v35, v54);
        (*(v38 + 8))(v20, v37);
      }

      else
      {
        LODWORD(v54) = v28;
        v62[1] = 2;
        sub_1BF923354();
        v43 = v48;
        sub_1BF9B54A8();
        v36 = v55;
        v28 = v16;
        v44 = v57;
        if (v43)
        {
          (*(v57 + 8))(v20, v28);
          swift_unknownObjectRelease();
          a1 = v60;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v34 + 8))(v23, v22);
        (*(v44 + 8))(v20, v28);
        LOBYTE(v28) = v54;
      }
    }

    else
    {
      v61 = 0;
      sub_1BF9233FC();
      v42 = v50;
      OUTLINED_FUNCTION_11_11(&type metadata for SiriHintsMode.DisplayCodingKeys, &v61);
      swift_unknownObjectRelease();
      (*(v52 + 8))(v42, v49);
      v45 = OUTLINED_FUNCTION_10_9();
      v46(v45);
      v36 = v55;
    }

    *v36 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

unint64_t sub_1BF923300()
{
  result = qword_1EBDE97F8;
  if (!qword_1EBDE97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97F8);
  }

  return result;
}

unint64_t sub_1BF923354()
{
  result = qword_1EBDE9800;
  if (!qword_1EBDE9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9800);
  }

  return result;
}

unint64_t sub_1BF9233A8()
{
  result = qword_1EBDE9808;
  if (!qword_1EBDE9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9808);
  }

  return result;
}

unint64_t sub_1BF9233FC()
{
  result = qword_1EBDE9810;
  if (!qword_1EBDE9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9810);
  }

  return result;
}

unint64_t sub_1BF923454()
{
  result = qword_1EDBF4C40[0];
  if (!qword_1EDBF4C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4C40);
  }

  return result;
}

unint64_t sub_1BF9234DC()
{
  result = qword_1EBDE9848;
  if (!qword_1EBDE9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9848);
  }

  return result;
}

uint64_t sub_1BF923560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF9235A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *sub_1BF9235E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9236F4()
{
  result = qword_1EBDE9860;
  if (!qword_1EBDE9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9860);
  }

  return result;
}

unint64_t sub_1BF92374C()
{
  result = qword_1EBDE9868;
  if (!qword_1EBDE9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9868);
  }

  return result;
}

unint64_t sub_1BF9237A4()
{
  result = qword_1EBDE9870;
  if (!qword_1EBDE9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9870);
  }

  return result;
}

unint64_t sub_1BF9237FC()
{
  result = qword_1EBDE9878;
  if (!qword_1EBDE9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9878);
  }

  return result;
}

unint64_t sub_1BF923854()
{
  result = qword_1EBDE9880;
  if (!qword_1EBDE9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9880);
  }

  return result;
}

unint64_t sub_1BF9238AC()
{
  result = qword_1EBDE9888;
  if (!qword_1EBDE9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9888);
  }

  return result;
}

unint64_t sub_1BF923904()
{
  result = qword_1EBDE9890;
  if (!qword_1EBDE9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9890);
  }

  return result;
}

unint64_t sub_1BF92395C()
{
  result = qword_1EBDE9898;
  if (!qword_1EBDE9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9898);
  }

  return result;
}

unint64_t sub_1BF9239B4()
{
  result = qword_1EBDE98A0;
  if (!qword_1EBDE98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE98A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1, uint64_t a2)
{

  return sub_1BF9B54A8();
}

void sub_1BF923A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v1, 0);
    v3 = v31;
    v4 = sub_1BF93194C(v2);
    v7 = v4;
    v8 = 0;
    v30 = v2 + 56;
    v25 = v2 + 64;
    v26 = v2;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v9 = v7 >> 6;
        if ((*(v30 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_26;
        }

        v29 = v6;
        v27 = v8;
        v28 = v5;
        v4 = DeliveryVehicle.rawValue.getter(v4, v5);
        v10 = v4;
        v12 = v11;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BF8D01C0(v13 > 1, v14 + 1, 1);
        }

        *(v3 + 16) = v14 + 1;
        v15 = v3 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        if (v29)
        {
          goto LABEL_30;
        }

        v2 = v26;
        v16 = 1 << *(v26 + 32);
        if (v7 >= v16)
        {
          goto LABEL_27;
        }

        v17 = *(v30 + 8 * v9);
        if ((v17 & (1 << v7)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v26 + 36) != v28)
        {
          goto LABEL_29;
        }

        v18 = v17 & (-2 << (v7 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v3;
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (v25 + 8 * v9);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              v4 = sub_1BF90E758(v7, v28, 0);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          v4 = sub_1BF90E758(v7, v28, 0);
LABEL_19:
          v3 = v19;
        }

        v8 = v27 + 1;
        if (v27 + 1 == v1)
        {
          return;
        }

        v6 = 0;
        v5 = *(v26 + 36);
        v7 = v16;
        if (v16 < 0)
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
  }
}

int64_t sub_1BF923CD0(uint64_t a1)
{
  v40 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v39 = v6 - v5;
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v7, 0);
    v11 = sub_1BF93194C(a1);
    result = v44;
    v12 = 0;
    v13 = a1 + 56;
    v34 = a1 + 64;
    v35 = v7;
    v36 = v3;
    v37 = a1;
    v38 = a1 + 56;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v43 = v10;
        v41 = v12;
        v42 = v9;
        v15 = result;
        (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v11, v40);
        v16 = sub_1BF9B4538();
        v18 = v17;
        (*(v3 + 8))(v39, v40);
        result = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1BF8D01C0(v19 > 1, v20 + 1, 1);
          result = v15;
        }

        *(result + 16) = v20 + 1;
        v21 = result + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 = v38;
        if (v43)
        {
          goto LABEL_29;
        }

        v3 = v36;
        a1 = v37;
        v22 = 1 << *(v37 + 32);
        if (v11 >= v22)
        {
          goto LABEL_26;
        }

        v23 = *(v38 + 8 * v14);
        if ((v23 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v37 + 36) != v42)
        {
          goto LABEL_28;
        }

        v24 = v23 & (-2 << (v11 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v25 = v35;
        }

        else
        {
          v26 = v14 << 6;
          v27 = v14 + 1;
          v25 = v35;
          v28 = (v34 + 8 * v14);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              v31 = OUTLINED_FUNCTION_3_14();
              sub_1BF90E758(v31, v32, 0);
              result = v22;
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          v33 = result;
          sub_1BF90E758(v11, v42, 0);
          result = v33;
        }

LABEL_19:
        v12 = v41 + 1;
        if (v41 + 1 == v25)
        {
          return result;
        }

        v10 = 0;
        v9 = *(v37 + 36);
        v11 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

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
  }

  return result;
}

void sub_1BF923FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v29 = *(a1 + 16);
    sub_1BF8D01C0(0, v1, 0);
    v5 = sub_1BF93194C(a1);
    v6 = v29;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_33;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_34;
        }

        ++v7;
        v10 = v5 & 0x3F;
        v11 = 0xE600000000000000;
        v12 = 0x656E6F685069;
        switch(*(*(a1 + 48) + v5))
        {
          case 1:
            v11 = 0xE90000000000006FLL;
            v12 = 0x72506E6F69736976;
            break;
          case 2:
            v11 = 0xE400000000000000;
            v12 = 1684099177;
            break;
          case 3:
            v11 = 0xE700000000000000;
            v12 = 0x79616C50726163;
            break;
          case 4:
            v11 = 0xE500000000000000;
            v12 = 0x6863746177;
            break;
          case 5:
            v11 = 0xE700000000000000;
            v12 = 0x5654656C707061;
            break;
          case 6:
            v11 = 0xE700000000000000;
            v12 = 0x646F70656D6F68;
            break;
          case 7:
            v11 = 0xE300000000000000;
            v12 = 6513005;
            break;
          case 8:
            v11 = 0xE300000000000000;
            v12 = 6582128;
            break;
          default:
            break;
        }

        v14 = *(v30 + 16);
        v13 = *(v30 + 24);
        if (v14 >= v13 >> 1)
        {
          v27 = v3;
          v28 = v7;
          v26 = v4;
          sub_1BF8D01C0(v13 > 1, v14 + 1, 1);
          v10 = v5 & 0x3F;
          v4 = v26;
          v3 = v27;
          v7 = v28;
          v8 = a1 + 56;
          v6 = v29;
        }

        *(v30 + 16) = v14 + 1;
        v15 = v30 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;
        if (v4)
        {
          goto LABEL_38;
        }

        v16 = 1 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_35;
        }

        v17 = *(v8 + 8 * v9);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_36;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_37;
        }

        v18 = v17 & (-2 << v10);
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (a1 + 64 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              v24 = v7;
              sub_1BF90E758(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v29;
              v7 = v24;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_28;
            }
          }

          v25 = v7;
          sub_1BF90E758(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v29;
          v7 = v25;
        }

LABEL_28:
        if (v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
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
  }
}

uint64_t sub_1BF92433C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v9 = OUTLINED_FUNCTION_16_7();
  sub_1BF8D0200(v9, v10, v11);
  v6 = v19;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;

    a1(&v18, &v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v18;
    v19 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1BF8D0200(v14 > 1, v15 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF924460(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0648(0, v5, 0);
  v6 = v21;
  for (i = a3 + 32; ; i += 40)
  {
    a1(&v18, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v9 = v18;
    v10 = v19;
    v11 = v20;
    v21 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = v19;
      sub_1BF8D0648(v12 > 1, v13 + 1, 1);
      v10 = v15;
      v6 = v21;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 24 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 48) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF92457C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v9 = OUTLINED_FUNCTION_16_7();
  sub_1BF8D0668(v9, v10, v11);
  v6 = v17;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v16, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v17 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1BF8D0668(v13 > 1, v14 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v14 + 1;
    sub_1BF8C2C9C(v16, v6 + 40 * v14 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF924688(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v8 = OUTLINED_FUNCTION_16_7();
  sub_1BF8D01C0(v8, v9, v10);
  v6 = v20;
  for (i = a3 + 32; ; i += 32)
  {
    a1(v19, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v19[0];
    v12 = v19[1];
    v20 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1BF8D01C0(v14 > 1, v15 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1BF924788(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1 & 0xFF00;
  v5 = BYTE1(a1) - 2;
  v6 = a1;
  v19 = a1 & 0xFE;
  if (a1)
  {
    v7 = 0x6E61747369737361;
  }

  else
  {
    v7 = 1919251317;
  }

  v18 = v7;
  if (a1)
  {
    v8 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if ((a1 >> 8))
  {
    v9 = 0x6465707974;
  }

  else
  {
    v9 = 0x6563696F76;
  }

  while (2)
  {
    if (v2)
    {
      v10 = *v3;
      switch(v10 >> 8)
      {
        case 2u:
          if (v4 != 512)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 3u:
          if (v4 != 768)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 4u:
          if (v4 != 1024)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 5u:
          if (v4 != 1280)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 6u:
          if (v4 != 1536)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        default:
          if (v5 < 5)
          {
            goto LABEL_48;
          }

          if (*v3 == 2)
          {
            if (v6 != 2)
            {
              goto LABEL_48;
            }
          }

          else if (*v3 == 3)
          {
            if (v6 != 3)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v19 == 2)
            {
LABEL_48:
              ++v3;
              --v2;
              continue;
            }

            if (v10)
            {
              v11 = 0x6E61747369737361;
            }

            else
            {
              v11 = 1919251317;
            }

            if (v10)
            {
              v12 = 0xE900000000000074;
            }

            else
            {
              v12 = 0xE400000000000000;
            }

            if (v11 == v18 && v12 == v8)
            {
            }

            else
            {
              v17 = sub_1BF9B56D8();

              if ((v17 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          if ((v10 >> 8))
          {
            v14 = 0x6465707974;
          }

          else
          {
            v14 = 0x6563696F76;
          }

          if (v14 == v9)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v15 = sub_1BF9B56D8();
            swift_bridgeObjectRelease_n();
            if ((v15 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          break;
      }
    }

    return v2 != 0;
  }
}

uint64_t sub_1BF924A04(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7553646E416E6172;
    }

    else
    {
      v4 = 0x6146646E416E6172;
    }
  }

  else
  {
    v4 = 0x7552746F6E646964;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924AAC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6568744F776F6873;
    }

    else
    {
      v4 = 1701736302;
    }
  }

  else
  {
    v4 = 0x6F6853746F6E6F64;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924B44(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }
  }

  else
  {
    v4 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924BF0(uint64_t a1)
{
  OUTLINED_FUNCTION_12_10(a1);
  AppBundleIdentifier.rawValue.getter();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924C4C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    v4 = 0x6E61747369737361;
  }

  else
  {
    v4 = 1919251317;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924CB8(uint64_t a1)
{
  OUTLINED_FUNCTION_12_10(a1);
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924D1C(uint64_t a1)
{
  sub_1BF9B57A8();
  OUTLINED_FUNCTION_11_4();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF924D78(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    v4 = 0x656C7069746C756DLL;
  }

  else
  {
    v4 = 0x656C676E6973;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924DE4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    v4 = 0x64656B636F6C6E75;
  }

  else
  {
    v4 = 0x64656B636F6CLL;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924E68(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    v4 = 0x66654472656E776FLL;
  }

  else
  {
    v4 = 0x6E65746E49707061;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924F04(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_10(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x5869726973;
    }

    else
    {
      v4 = 0x6E65746E49707061;
    }
  }

  else
  {
    v4 = 0xD00000000000001CLL;
  }

  OUTLINED_FUNCTION_17_10(v2, v4, v3);

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1BF9B57A8();
  a3(v6, a2);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF925014@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_1BF8C2E64(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 56 * result;

    return sub_1BF932508(v7, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 1;
    a4[5] = 0;
    a4[6] = 0;
    a4[4] = 0;
  }

  return result;
}

double sub_1BF925088@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BF8C2E64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1BF8C187C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF9250EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BF9B2AE4(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF92513C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BF9B2B50(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF925194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BF8C2E64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1BF9251EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BF8C2E64(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1BF92523C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, void *a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1BF9B2C5C(a3), (v6 & 1) != 0))
  {
    sub_1BF8D2004(*(a1 + 56) + 40 * v5, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1BF925294@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1BF9B2AA0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1BF8C187C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

BOOL sub_1BF925314(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

uint64_t sub_1BF925374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v3, 0);
    v7 = a1 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      v8 = sub_1BF9B4B08();
      v10 = v9;

      MEMORY[0x1BFB5DE90](v8, v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BF8D01C0(v11 > 1, v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = a2;
      *(v13 + 40) = a3;
      v7 += 16;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  v14 = sub_1BF9B4A78();

  return v14;
}

void sub_1BF9254F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_32_4();
  a29 = v30;
  a30 = v34;
  v35 = *(v31 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = v33;
    v38 = v32;
    v39 = v31;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v35, 0);
    v36 = a18;
    v40 = v39 + 32;
    do
    {
      sub_1BF8C187C(v40, &a14);
      sub_1BF8C187C(&a14, &a10);
      v41 = sub_1BF9B4B08();
      v43 = v42;
      a10 = v38;
      a11 = v37;

      MEMORY[0x1BFB5DE90](v41, v43);

      v44 = a10;
      v45 = a11;
      __swift_destroy_boxed_opaque_existential_1(&a14);
      a18 = v36;
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      if (v47 >= v46 >> 1)
      {
        v49 = OUTLINED_FUNCTION_11_3(v46);
        sub_1BF8D01C0(v49, v47 + 1, 1);
        v36 = a18;
      }

      *(v36 + 16) = v47 + 1;
      v48 = v36 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v40 += 32;
      --v35;
    }

    while (v35);
  }

  a14 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();

  OUTLINED_FUNCTION_31_6();
}

BOOL sub_1BF925658(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = a2;
    v4 = sub_1BF8C0DC8(*(a2 + 40));
    v42 = ~(-1 << *(v2 + 32));
    v43 = v2 + 56;
    v41 = v2;
    while (1)
    {
      v5 = v4 & v42;
      v6 = (1 << (v4 & v42)) & *(v43 + (((v4 & v42) >> 3) & 0xFFFFFFFFFFFFFF8));
      v44 = v6 != 0;
      if (!v6)
      {
        return v44;
      }

      v7 = *(v2 + 48) + 40 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v47 = v10;
      v48 = v8;
      v46 = v11;
      v45 = *(v7 + 32);
      if (v12 == 2)
      {
        if (v10 | v8 | v9 | v11)
        {
          v15 = v10 | v8 | v11;
          if (v9 == 1 && v15 == 0)
          {
            sub_1BF8C0D00(1, 0, 0, 0, 2);
            v13 = 0xD000000000000010;
            v14 = 0x80000001BF9CBC20;
          }

          else if (v9 == 2 && v15 == 0)
          {
            sub_1BF8C0D00(2, 0, 0, 0, 2);
            v13 = 0x696669746F4E736FLL;
            v14 = 0xEE006E6F69746163;
          }

          else if (v9 == 3 && v15 == 0)
          {
            sub_1BF8C0D00(3, 0, 0, 0, 2);
            v14 = 0xE800000000000000;
            v13 = 0x706C654869726973;
          }

          else if (v9 == 4 && v15 == 0)
          {
            sub_1BF8C0D00(4, 0, 0, 0, 2);
            v13 = 0xD000000000000014;
            v14 = 0x80000001BF9CBC00;
          }

          else
          {
            sub_1BF8C0D00(5, 0, 0, 0, 2);
            v13 = 0xD000000000000010;
            v14 = 0x80000001BF9CBBE0;
          }
        }

        else
        {
          sub_1BF8C0D00(0, 0, 0, 0, 2);
          v13 = 0xD000000000000010;
          v14 = 0x80000001BF9CBC40;
        }
      }

      else if (v12 == 1)
      {
        sub_1BF8C0D00(v9, v8, v10, v11, 1);
        if (v9)
        {
          if (v9 == 1)
          {
            v13 = 0x746E694869726973;
            v14 = 0xEF6E656B6F705373;
          }

          else
          {
            v14 = 0xE700000000000000;
            v13 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v13 = 0x746E694869726973;
          v14 = 0xE900000000000073;
        }
      }

      else
      {
        sub_1BF8C0D00(v9, v8, v10, v11, 0);
        MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
        MEMORY[0x1BFB5DE90](v9, v8);
        if (v11)
        {
          MEMORY[0x1BFB5DE90](v10, v11);
          v11 = 95;
          v20 = 0xE100000000000000;
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        MEMORY[0x1BFB5DE90](v11, v20);

        v13 = 0x7070416E69;
        v14 = 0xE500000000000000;
      }

      v21 = *a1;
      v23 = a1[2];
      v22 = a1[3];
      if (!*(a1 + 32))
      {
        break;
      }

      if (*(a1 + 32) == 1)
      {
        v24 = *a1;
        v25 = v48;
        v26 = v45;
        if (*a1)
        {
          if (v24 == 1)
          {
            v27 = 0x746E694869726973;
          }

          else
          {
            v27 = 0x6E776F6E6B6E75;
          }

          if (v24 == 1)
          {
            v28 = 0xEF6E656B6F705373;
          }

          else
          {
            v28 = 0xE700000000000000;
          }
        }

        else
        {
          v27 = 0x746E694869726973;
          v28 = 0xE900000000000073;
        }
      }

      else
      {
        v32 = a1[1];
        if (!(v22 | v23 | v21 | v32))
        {
          v27 = 0xD000000000000010;
          v28 = 0x80000001BF9CBC40;
LABEL_60:
          v25 = v48;
          v26 = v45;
          goto LABEL_61;
        }

        v33 = v22 | v23 | v32;
        v25 = v48;
        v26 = v45;
        if (v21 != 1 || (v27 = 0xD000000000000010, v28 = 0x80000001BF9CBC20, v33))
        {
          if (v21 != 2 || (v27 = 0x696669746F4E736FLL, v28 = 0xEE006E6F69746163, v33))
          {
            if (v21 != 3 || v33)
            {
              v36 = v33 == 0;
              v37 = v21 == 4;
              v38 = !v37 || !v36;
              if (v37 && v36)
              {
                v27 = 0xD000000000000014;
              }

              else
              {
                v27 = 0xD000000000000010;
              }

              v39 = "actionWillExecute";
              if (!v38)
              {
                v39 = "siriAutoComplete";
              }

              v28 = v39 | 0x8000000000000000;
            }

            else
            {
              v28 = 0xE800000000000000;
              v27 = 0x706C654869726973;
            }
          }
        }
      }

LABEL_61:
      if (v13 == v27 && v14 == v28)
      {
        sub_1BF8C0CB8(v9, v25, v47, v46, v26);

        return 1;
      }

      v35 = sub_1BF9B56D8();
      sub_1BF8C0CB8(v9, v25, v47, v46, v26);

      v4 = v5 + 1;
      if (v35)
      {
        return v44;
      }
    }

    v29 = a1[1];
    MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
    MEMORY[0x1BFB5DE90](v21, v29);
    if (v22)
    {
      MEMORY[0x1BFB5DE90](v23, v22);
      v31 = 95;
      v30 = 0xE100000000000000;
    }

    else
    {
      v31 = 0;
      v30 = 0xE000000000000000;
    }

    MEMORY[0x1BFB5DE90](v31, v30);

    v27 = 0x7070416E69;
    v28 = 0xE500000000000000;
    v2 = v41;
    goto LABEL_60;
  }

  return 0;
}

BOOL sub_1BF925D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DeliveryVehiclePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(a1, a2, a3);
  DeliveryVehiclePrerequisite.description.getter();
  return v3;
}

uint64_t sub_1BF925DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = a4(a1, a2, a3);
  a5();
  return v6 & 1;
}

uint64_t Prerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 32);
  v11 = *a2;
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v10 = v5;
  v7 = (*(a5 + 32))(a1, &v11, v9);
  sub_1BF9B5668();
  return v7 & 1;
}

uint64_t NoOpPrerequisite.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NoOpPrerequisite.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t UnionPrerequisite.description.getter()
{
  v18 = 0x203A6E6F696E55;
  v19 = 0xE700000000000000;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v2, 0);
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_1BF8D2004(v4, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v5 = sub_1BF9B5668();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v17 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = OUTLINED_FUNCTION_11_3(v8);
        sub_1BF8D01C0(v11, v9 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v12 = MEMORY[0x1BFB5E030](v3, MEMORY[0x1E69E6158]);
  v14 = v13;

  MEMORY[0x1BFB5DE90](v12, v14);

  return v18;
}

uint64_t UnionPrerequisite.__allocating_init(prerequisites:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF9261A4(void *a1, uint64_t a2, __int16 a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a3;
  return (*(v6 + 24))(a2, &v8, v5, v6) & 1;
}

uint64_t sub_1BF926268(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

BOOL UnionPrerequisite.isValid(environment:invocationType:deliveryVehicle:)(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v3 = UnionPrerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)();

  return v3;
}

BOOL UnionPrerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)()
{
  v0 = OUTLINED_FUNCTION_15_12();
  v3 = sub_1BF924460(v0, v1, v2);
  v4 = v3;
  v5 = *(v3 + 16) + 1;
  v6 = 32;
  v7 = 0x646573736170;
  while (--v5)
  {
    v8 = *(v3 + v6);
    v6 += 24;
    if ((v8 & 1) == 0)
    {
      v7 = 0x64656C696166;
      break;
    }
  }

  OUTLINED_FUNCTION_13_7();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](v7, 0xE600000000000000);

  MEMORY[0x1BFB5DE90](0xD000000000000010, 0x80000001BF9CBC60);
  v9 = *(v4 + 16);
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0(0, v9, 0);
    v10 = (v4 + 48);
    v11 = v24;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      if (*(v10 - 16))
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (*(v10 - 16))
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x1BFB5DE90](v14, v15);

      MEMORY[0x1BFB5DE90](8224, 0xE200000000000000);

      MEMORY[0x1BFB5DE90](v13, v12);

      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_11_3(v16);
        sub_1BF8D01C0(v19, v17 + 1, 1);
      }

      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      v10 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1BF925374(v11, 0, 0xE000000000000000);
  v22 = v21;

  MEMORY[0x1BFB5DE90](v20, v22);

  return v5 == 0;
}

uint64_t sub_1BF9265CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v17 = a3;
  v11 = *(a4 + 16);
  v15[0] = *a4;
  v15[1] = v11;
  v16 = *(a4 + 32);
  result = (*(v10 + 40))(a2, &v17, v15, v9, v10);
  *a5 = result & 1;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14;
  return result;
}

uint64_t UnionPrerequisite.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t LocalePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x736564756C636E49, 0xEB00000000203D20);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0xD000000000000024, 0x80000001BF9CBC80);
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  (*(v1 + 128))(ObjectType, v1);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](2112041, 0xE300000000000000);
  sub_1BF923CD0(*(v0 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v3 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v3);

  return v5;
}

uint64_t LocalePrerequisite.__allocating_init(locales:includes:userDefaultsProvider:)()
{
  OUTLINED_FUNCTION_104();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v0;
  return result;
}

uint64_t LocalePrerequisite.init(locales:includes:userDefaultsProvider:)()
{
  OUTLINED_FUNCTION_104();
  ObjectType = swift_getObjectType();

  return sub_1BF931BF4(v4, v3, v2, v1, ObjectType, v0);
}

void LocalePrerequisite.isValid(environment:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v3 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v8 - v7;
  v10 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  if ((*(v10 + 128))(ObjectType, v10))
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v12 = sub_1BF9B47C8();
    __swift_project_value_buffer(v12, qword_1EDBF5570);
    sub_1BF8D2004(v2, v30);
    v13 = sub_1BF9B47A8();
    v14 = sub_1BF9B5028();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_35_4();
      v29 = v16;
      *v15 = 136315138;
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v18 + 80))(v17, v18);
      v19 = sub_1BF9B4538();
      v21 = v20;
      (*(v5 + 8))(v9, v3);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v22 = sub_1BF8DE810(v19, v21, &v29);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1BF8B8000, v13, v14, "disabling LocalePrerequisite check. Returning suggestion IS VALID for current locale %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    sub_1BF923CD0(*(v0 + 16));
    v23 = v2[3];
    v24 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v23);
    (*(v24 + 80))(v23, v24);
    v25 = sub_1BF9B4538();
    v27 = v26;
    v28 = (*(v5 + 8))(v9, v3);
    v30[0] = v25;
    v30[1] = v27;
    MEMORY[0x1EEE9AC00](v28);
    OUTLINED_FUNCTION_23_8();
    sub_1BF90626C();
  }

  OUTLINED_FUNCTION_64();
}

uint64_t LocalePrerequisite.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocalePrerequisite.__deallocating_deinit()
{
  LocalePrerequisite.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t NetworkPrerequisite.isValid(environment:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_3_14();
  v3(v2, v1);
  return v5;
}

uint64_t DevicePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();

  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0x76654420726F6620, 0xEE00203A73656369);
  sub_1BF923FE8(*(v0 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v1);

  return 0x736564756C636E49;
}

void DevicePrerequisite.init(devices:includes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_32_4();
  v32 = v31;
  v34 = v33;
  if (*(v33 + 16))
  {
    sub_1BF9B57A8();

    sub_1BF9B4B48();
    sub_1BF9B57E8();
    v35 = v34 + 56;
    OUTLINED_FUNCTION_21_8();
    v38 = v37 & ~v36;
    if ((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v36;
      while (2)
      {
        switch(*(*(v34 + 48) + v38))
        {
          case 1:
          case 2:
          case 7:
          case 8:
            goto LABEL_9;
          case 3:
            OUTLINED_FUNCTION_20_8();
            goto LABEL_9;
          case 4:
            OUTLINED_FUNCTION_25_5();
            goto LABEL_9;
          case 5:
            OUTLINED_FUNCTION_18_7();
            goto LABEL_9;
          case 6:
            OUTLINED_FUNCTION_19_10();
LABEL_9:
            v40 = sub_1BF9B56D8();

            if (v40)
            {
              goto LABEL_12;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v35 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_11;
            }

            continue;
          default:

LABEL_12:

            sub_1BF9B57A8();
            sub_1BF9B4B48();
            sub_1BF9B57E8();
            OUTLINED_FUNCTION_21_8();
            v43 = v42 & ~v41;
            if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
            {
              goto LABEL_21;
            }

            v44 = ~v41;
            break;
        }

        break;
      }

      while (1)
      {
        switch(*(*(v34 + 48) + v43))
        {
          case 1:
            goto LABEL_11;
          case 3:
            OUTLINED_FUNCTION_20_8();
            break;
          case 4:
            OUTLINED_FUNCTION_25_5();
            break;
          case 5:
            OUTLINED_FUNCTION_18_7();
            break;
          case 6:
            OUTLINED_FUNCTION_19_10();
            break;
          default:
            break;
        }

        v45 = sub_1BF9B56D8();

        if (v45)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
LABEL_21:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1BF92D5AC(1, v43, isUniquelyReferenced_nonNull_native);
          break;
        }
      }
    }

    else
    {
LABEL_11:
    }
  }

  *(v30 + 16) = v34;
  *(v30 + 24) = v32 & 1;
  OUTLINED_FUNCTION_31_6();
}

uint64_t DevicePrerequisite.isValid(environment:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_22_0();
  v4(v3);
  OUTLINED_FUNCTION_8_8();
  v8 = sub_1BF9274D8(v5, v6, v7, sub_1BF92AAA0);
  v9 = *(sub_1BF9307FC(*(v1 + 16), v8) + 16);

  return ((v9 == 0) ^ *(v2 + 24)) & 1;
}

uint64_t sub_1BF9274D8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v13 = MEMORY[0x1BFB5E290](v7, a3, v8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      a4(&v12, *(a1 + v10++));
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return a3;
}

uint64_t sub_1BF927580(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF9323B0();
  v8 = MEMORY[0x1BFB5E290](v2, &type metadata for InvocationType, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1BF92B010(&v7, *(a1 + v5));
      v5 += 2;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return v2;
}

void sub_1BF927614()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v2 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  v11 = *(v1 + 16);
  v12 = sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v20[1] = MEMORY[0x1BFB5E290](v11, v2, v12);
  v13 = *(v1 + 16);
  if (v13)
  {
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v20[0] = v1;
    v18 = v1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v8, v18, v2);
      sub_1BF92BA24(v10, v8);
      (*(v14 - 8))(v10, v2);
      v18 += v19;
      --v13;
    }

    while (v13);
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  OUTLINED_FUNCTION_64();
}

void sub_1BF9277BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF9322AC();
  v4 = 0;
  v10 = MEMORY[0x1BFB5E290](v2, &type metadata for DeliveryVehicle, v3);
  v5 = *(a1 + 16);
  for (i = 32; ; i += 40)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(a1 + i + 16);
    v11[0] = *(a1 + i);
    v11[1] = v7;
    v12 = *(a1 + i + 32);
    ++v4;
    sub_1BF932300(v11, v8);
    sub_1BF92B360(v8, v11);
    sub_1BF8C0CB8(v8[0], v8[1], v8[2], v8[3], v9);
  }

  __break(1u);
}

uint64_t sub_1BF927890(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF932404();
  v9 = MEMORY[0x1BFB5E290](v2, &type metadata for SignalLookupKey, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_1BF932458(v5, v7);
      sub_1BF92BCF4(v8, v7);
      sub_1BF9324B4(v8);
      v5 += 120;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return v2;
}

uint64_t DevicePrerequisite.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_14_6();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1BF927AFC()
{
  if (qword_1EDBF3B08 != -1)
  {
    swift_once();
  }

  byte_1EDC03418 = byte_1EDBF3B10;
  result = dbl_1EDBF3B18[0];
  unk_1EDC03420 = *dbl_1EDBF3B18;
  return result;
}

void sub_1BF927B94()
{
  OUTLINED_FUNCTION_65_0();
  v6 = v5;
  OUTLINED_FUNCTION_26_7();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v6(v4, v13, v2, v1, v0, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_64();
}

uint64_t InvocationTypePrerequisite.__allocating_init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, char *a5, __int128 *a6)
{
  v9 = a3;
  v12 = swift_allocObject();
  InvocationTypePrerequisite.init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(a1, a2, v9, a4, a5, a6);
  return v12;
}

uint64_t InvocationTypePrerequisite.init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(uint64_t a1, __int128 *a2, char a3, __int128 *a4, char *a5, __int128 *a6)
{
  v10 = *a5;
  v11 = *(a5 + 1);
  v12 = *(a5 + 2);
  *(v6 + 56) = a1;
  sub_1BF8C2C9C(a2, v6 + 64);
  *(v6 + 104) = a3;
  sub_1BF8C2C9C(a4, v6 + 112);
  *(v6 + 152) = v10;
  *(v6 + 160) = v11;
  *(v6 + 168) = v12;
  sub_1BF8C2C9C(a6, v6 + 16);
  return v6;
}

unint64_t InvocationTypePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_30_5();
  sub_1BF9B5288();

  v1 = MEMORY[0x1BFB5E030](*(v0 + 56), &type metadata for VersionedInvocation);
  MEMORY[0x1BFB5DE90](v1);

  return 0xD000000000000018;
}

uint64_t InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  if ((*(v6 + 112))(v5, v6))
  {
    goto LABEL_14;
  }

  v7 = v2[11];
  v8 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = sub_1BF92513C(v4, v9);
  LOBYTE(v8) = v11;

  if (v8)
  {
    OUTLINED_FUNCTION_2_16();
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD000000000000032, 0x80000001BF9CBCF0);
LABEL_13:
    v29 = InvocationType.description.getter();
    MEMORY[0x1BFB5DE90](v29);

LABEL_14:
    v28 = 1;
    return v28 & 1;
  }

  if (v10 < 1)
  {
    OUTLINED_FUNCTION_2_16();
    sub_1BF9B5288();

    v31[0] = 0xD00000000000002CLL;
    v31[1] = 0x80000001BF9CBD30;
    goto LABEL_13;
  }

  if (AFIsInternalInstall())
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v12 = sub_1BF9B47C8();
    __swift_project_value_buffer(v12, qword_1EDBF5570);
    v13 = sub_1BF9B47A8();
    v14 = sub_1BF9B5038();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_35_4();
      v31[0] = v16;
      *v15 = 136315394;
      v17 = InvocationType.description.getter();
      v19 = sub_1BF8DE810(v17, v18, v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v10;
      _os_log_impl(&dword_1BF8B8000, v13, v14, "Observation for: %s reduced from %ld to 1", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    v10 = 1;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 72))(v20, v21);
  LOWORD(v31[0]) = v4;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = OUTLINED_FUNCTION_3_14();
  v26 = v25(v24, v23);
  sub_1BF928200(v22, v31, v26, v10);
  v28 = v27;

  return v28 & 1;
}

uint64_t InvocationTypePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v2 = InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(a1, &v4);

  return v2 & 1;
}

uint64_t InvocationTypePrerequisite.isValid(environment:invocationType:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v2 = InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(a1, &v4);

  return v2 & 1;
}

void sub_1BF928200(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = *a2;
  v8 = *(v4 + 56);
  v9 = *(v8 + 16);
  for (i = (v8 + 40); ; i += 2)
  {
    if (v9 == v6)
    {
      OUTLINED_FUNCTION_13_7();
      sub_1BF9B5288();

      v63 = 0xD00000000000002CLL;
      *&v64 = 0x80000001BF9CC230;
      LOWORD(v65) = v7;
      v14 = InvocationType.description.getter();
      MEMORY[0x1BFB5DE90](v14);
LABEL_7:

      return;
    }

    if (v6 >= *(v8 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v11 = *(i - 1);
    v12 = *i;

    swift_bridgeObjectRetain_n();
    v13 = sub_1BF924788(v7, v11);

    if (v13)
    {
      break;
    }

    ++v6;
  }

  if (!v12)
  {

LABEL_18:

    OUTLINED_FUNCTION_5_11();
    return;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v59 = *(v12 + 16);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

  v63 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0628(0, v15, 0);
  v16 = v63;
  v17 = (a1 + 32);
  do
  {
    v18 = *v17++;
    v19 = byte_1BF9C0742[v18];
    v63 = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      v22 = OUTLINED_FUNCTION_11_3(v20);
      sub_1BF8D0628(v22, v21 + 1, 1);
      v16 = v63;
    }

    *(v16 + 16) = v21 + 1;
    *(v16 + v21 + 32) = v19;
    --v15;
  }

  while (v15);
  v23 = sub_1BF9274D8(v16, sub_1BF932578, &type metadata for SuggestionsOSType, sub_1BF92AD98);
  v24 = 0;
  v25 = v23 + 56;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = v59;
  do
  {
    if (*(v23 + 16))
    {
      v28 = (v12 + 32 + 24 * v24);
      v29 = *v28;
      v61 = *(v28 + 8);
      sub_1BF9B57A8();
      v62 = v26;
      switch(v29)
      {
        case 5:
          OUTLINED_FUNCTION_11_4();
          break;
        default:
          break;
      }

      sub_1BF9B4B48();

      sub_1BF9B57E8();
      OUTLINED_FUNCTION_21_8();
      v32 = v31 & ~v30;
      if ((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v30;
        while (1)
        {
          v34 = 0xE300000000000000;
          v35 = 5459817;
          switch(*(*(v23 + 48) + v32))
          {
            case 1:
              v34 = 0xE500000000000000;
              v35 = 0x534F63616DLL;
              break;
            case 2:
              v34 = 0xE400000000000000;
              v35 = 1397716596;
              break;
            case 3:
              v34 = 0xE700000000000000;
              v35 = 0x534F6863746177;
              break;
            case 4:
              v34 = 0xE800000000000000;
              v35 = 0x534F6E6F69736976;
              break;
            case 5:
              v34 = 0xE700000000000000;
              v35 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          v36 = 0xE300000000000000;
          v37 = 5459817;
          switch(v29)
          {
            case 1:
              v36 = 0xE500000000000000;
              v37 = 0x534F63616DLL;
              break;
            case 2:
              v36 = 0xE400000000000000;
              v37 = 1397716596;
              break;
            case 3:
              v36 = 0xE700000000000000;
              v37 = 0x534F6863746177;
              break;
            case 4:
              v36 = 0xE800000000000000;
              v37 = 0x534F6E6F69736976;
              break;
            case 5:
              v36 = 0xE700000000000000;
              v37 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          if (v35 == v37 && v34 == v36)
          {
            break;
          }

          v39 = sub_1BF9B56D8();

          if (v39)
          {
            goto LABEL_45;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            v27 = v59;
            goto LABEL_43;
          }
        }

LABEL_45:
        v26 = v62;
        v65 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF8D0608(0, *(v62 + 16) + 1, 1);
          v26 = v65;
        }

        v27 = v59;
        v41 = *(v26 + 16);
        v40 = *(v26 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_11_3(v40);
          sub_1BF8D0608(v43, v41 + 1, 1);
          v26 = v65;
        }

        *(v26 + 16) = v41 + 1;
        v42 = v26 + 24 * v41;
        *(v42 + 32) = v29;
        *(v42 + 40) = v61;
      }

      else
      {
LABEL_43:
        v26 = v62;
      }
    }

    ++v24;
  }

  while (v24 != v27);
  v44 = *(v26 + 16);
  if (!v44)
  {

    OUTLINED_FUNCTION_13_7();
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD000000000000032, 0x80000001BF9CC1B0);
    sub_1BF932578();
    v52 = sub_1BF9B4F78();
    v54 = v53;

    MEMORY[0x1BFB5DE90](v52, v54);

    MEMORY[0x1BFB5DE90](544106784, 0xE400000000000000);
    v55 = MEMORY[0x1BFB5E030](v12, &type metadata for SuggestionsOSInfo);
    v57 = v56;

    MEMORY[0x1BFB5DE90](v55, v57);
    goto LABEL_7;
  }

  v45 = sub_1BF928970(a3);
  if (sub_1BF928E90(v45, a4))
  {
    v46 = (v26 + 40);
    v47 = -v44;
    v48 = -1;
    do
    {
      if (v47 + v48 == -1)
      {
        break;
      }

      if (++v48 >= *(v26 + 16))
      {
        goto LABEL_64;
      }

      v49 = (v46 + 24);
      v50 = *v46;
      LOBYTE(v63) = *(v46 - 8);
      v64 = v50;
      v51 = sub_1BF928FA0(&v63, a4, v45);
      v46 = v49;
    }

    while (v51);
  }

  else
  {
  }
}

uint64_t *sub_1BF928970(uint64_t a1)
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F0, &unk_1BF9C0710);
  sub_1BF932578();
  v69 = sub_1BF9B4988();
  v3 = a1 + 64;
  OUTLINED_FUNCTION_1_2();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v66 = a1;

  v64 = a1 + 64;
  while (v6)
  {
LABEL_7:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v2 << 6);
    v12 = (*(v66 + 48) + 24 * v11);
    v13 = *v12;
    v15 = *(v12 + 1);
    v14 = *(v12 + 2);
    v16 = *(*(v66 + 56) + 8 * v11);
    v17 = v69;
    if (*(v69 + 16) && (sub_1BF9B2AE4(*v12), (v18 & 1) != 0))
    {
      v20 = sub_1BF9294F4(v68, v13);
      v21 = *v19;
      if (*v19)
      {
        v22 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v22 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {

          sub_1BF8DDE10();
          *v22 = v39;

          v21 = *v22;
        }

        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v24);
          sub_1BF8DDE10();
          v21 = v40;
          *v22 = v40;
        }

        *(v21 + 16) = v25 + 1;
        v26 = (*v22 + 24 * v25);
        v26[4] = v15;
        v26[5] = v14;
        v26[6] = v16;
        (v20)(v68, 0);
        v3 = v64;
      }

      else
      {
        (v20)(v68, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B30, &unk_1BF9B8650);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BF9B6370;
      *(v27 + 32) = v15;
      *(v27 + 40) = v14;
      *(v27 + 48) = v16;
      swift_isUniquelyReferenced_nonNull_native();
      v68[0] = v17;
      v28 = sub_1BF9B2AE4(v13);
      if (__OFADD__(v17[2], (v29 & 1) == 0))
      {
        goto LABEL_44;
      }

      v30 = v28;
      v31 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
      if (sub_1BF9B53A8())
      {
        v32 = sub_1BF9B2AE4(v13);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_47;
        }

        v30 = v32;
      }

      v34 = v68[0];
      if (v31)
      {
        *(v68[0][7] + 8 * v30) = v27;
      }

      else
      {
        OUTLINED_FUNCTION_27_2(&v68[0][v30 >> 6]);
        *(v35 + v30) = v13;
        *(v34[7] + 8 * v30) = v27;
        v36 = v34[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_46;
        }

        v34[2] = v38;
      }

      v69 = v34;
      v3 = v64;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }

  v41 = v69;
  v42 = v69 + 64;
  OUTLINED_FUNCTION_1_2();
  v45 = v44 & v43;
  v47 = (v46 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v48 = 0;
  v65 = v42;
  v67 = v41;
  v63 = v47;
  if (v45)
  {
    goto LABEL_30;
  }

LABEL_26:
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      return v41;
    }

    v45 = *(v42 + 8 * v49);
    ++v48;
    if (v45)
    {
      v48 = v49;
LABEL_30:
      while (1)
      {
        v50 = __clz(__rbit64(v45)) | (v48 << 6);
        v51 = *(v67[6] + v50);
        v68[0] = *(v67[7] + 8 * v50);
        swift_bridgeObjectRetain_n();
        sub_1BF929D74(v68);
        v52 = v68[0];
        swift_isUniquelyReferenced_nonNull_native();
        v68[0] = v41;
        v53 = sub_1BF9B2AE4(v51);
        if (__OFADD__(v41[2], (v54 & 1) == 0))
        {
          goto LABEL_43;
        }

        v55 = v53;
        v56 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
        if (sub_1BF9B53A8())
        {
          v57 = sub_1BF9B2AE4(v51);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_47;
          }

          v55 = v57;
        }

        v41 = v68[0];
        if (v56)
        {
          *(v68[0][7] + 8 * v55) = v52;
        }

        else
        {
          OUTLINED_FUNCTION_27_2(&v68[0][v55 >> 6]);
          *(v59 + v55) = v51;
          *(v41[7] + 8 * v55) = v52;
          v60 = v41[2];
          v37 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v37)
          {
            goto LABEL_45;
          }

          v41[2] = v61;
        }

        v45 &= v45 - 1;

        v42 = v65;
        v47 = v63;
        if (!v45)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_1BF9B5758();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1BF928E90(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 104) == 1)
  {
    v9[0] = *(v2 + 152);
    v10 = *(v2 + 160);
    v3 = sub_1BF928FA0(v9, a2, a1);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v4 = sub_1BF9B47C8();
    __swift_project_value_buffer(v4, qword_1EDBF5570);
    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5038();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1BF8B8000, v5, v6, "generalizedEngagementObserved is %{BOOL}d", v7, 8u);
      OUTLINED_FUNCTION_87();
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

BOOL sub_1BF928FA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = sub_1BF9250EC(*a1, a3);
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + 48);
    v11 = -*(v8 + 16);
    v12 = -1;
    do
    {
      if (v11 + v12 == -1)
      {

        goto LABEL_18;
      }

      if (++v12 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v13 = v10 + 3;
      v14 = *v10;
      v37 = v7;
      v38 = v6;
      *v36 = *(v10 - 1);
      v15 = static SuggestionsOSVersion.< infix(_:_:)();
      v10 = v13;
    }

    while ((v15 & 1) != 0);

    v16 = v3[17];
    v17 = v3[18];
    __swift_project_boxed_opaque_existential_1(v3 + 14, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = sub_1BF92930C(v14, v18, a2 * 86400.0);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v20 = sub_1BF9B47C8();
    __swift_project_value_buffer(v20, qword_1EDBF5570);
    v21 = sub_1BF9B47A8();
    v22 = sub_1BF9B5038();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v23 = 136315394;
      LOBYTE(v37) = v5;
      v38 = v7;
      v39 = v6;
      v24 = SuggestionsOSInfo.description.getter();
      sub_1BF8DE810(v24, v25, v36);
      OUTLINED_FUNCTION_3_14();

      *(v23 + 4) = &v37;
      *(v23 + 12) = 2080;
      if (v19)
      {
        v26 = 0x646573736170;
      }

      else
      {
        v26 = 0x7373617020746F6ELL;
      }

      if (v19)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xEA00000000006465;
      }

      sub_1BF8DE810(v26, v27, v36);
      OUTLINED_FUNCTION_3_14();

      *(v23 + 14) = &v37;
      _os_log_impl(&dword_1BF8B8000, v21, v22, "for %s - enough observation duration has %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }
  }

  else
  {
LABEL_18:
    if (qword_1EDBF5568 != -1)
    {
LABEL_24:
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v28 = sub_1BF9B47C8();
    __swift_project_value_buffer(v28, qword_1EDBF5570);
    v29 = sub_1BF9B47A8();
    v30 = sub_1BF9B5038();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_35_4();
      v36[0] = v32;
      *v31 = 136315138;
      LOBYTE(v37) = v5;
      v38 = v7;
      v39 = v6;
      v33 = SuggestionsOSInfo.description.getter();
      sub_1BF8DE810(v33, v34, v36);
      OUTLINED_FUNCTION_3_14();

      *(v31 + 4) = &v37;
      _os_log_impl(&dword_1BF8B8000, v29, v30, "No recorded time for required OS for determining observation %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    return 0;
  }

  return v19;
}

BOOL sub_1BF92930C(double a1, double a2, double a3)
{
  v4 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_1BF9B4468();
  sub_1BF9B4468();
  sub_1BF9B4488();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v10, v4);
  v15(v12, v4);
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
  }

  v16 = sub_1BF9B47C8();
  __swift_project_value_buffer(v16, qword_1EDBF5570);
  v17 = sub_1BF9B47A8();
  v18 = sub_1BF9B5038();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = v14;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a3;
    _os_log_impl(&dword_1BF8B8000, v17, v18, "observed duration from install date to now: %f. Required minimum duration: %f", v19, 0x16u);
    OUTLINED_FUNCTION_87();
  }

  return v14 >= a3;
}

uint64_t (*sub_1BF9294F4(uint64_t **a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1BF931640(v4, a2);
  return sub_1BF929558;
}

void sub_1BF929558(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *InvocationTypePrerequisite.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t InvocationTypePrerequisite.__deallocating_deinit()
{
  InvocationTypePrerequisite.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t DeliveryVehiclePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0xD000000000000013, 0x80000001BF9CBDA0);
  sub_1BF923A68(*(v0 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v1);

  return v3;
}

uint64_t DeliveryVehiclePrerequisite.__allocating_init(deliveryVehicles:includes:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_14_6();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DeliveryVehiclePrerequisite.init(deliveryVehicles:includes:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_67();
}

BOOL DeliveryVehiclePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_14(a1, a2, a3);
  v4 = *(v3 + 24);
  return ((v4 ^ sub_1BF925658(v6, *(v3 + 16))) & 1) == 0;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.description.getter()
{
  OUTLINED_FUNCTION_30_5();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000036, 0x80000001BF9CBDC0);
  MEMORY[0x1BFB5DE90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB5DE90](0xD000000000000035, 0x80000001BF9CBE00);
  return v2;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.__allocating_init(suggestionId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.init(suggestionId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_67();
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.isValid(environment:)(uint64_t a1)
{
  v2 = v1;
  sub_1BF8D2004(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98A8, &qword_1BF9C0288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98B0, &qword_1BF9C0290);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1BF931C08(&v21);
    goto LABEL_9;
  }

  v3 = *(&v22 + 1);
  v4 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(v4 + 8))(v19, *(v1 + 16), *(v1 + 24), v3, v4);
  v5 = v19[1];
  v6 = v19[2];
  v7 = v19[3];
  v8 = v19[4];
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (!v5)
  {
LABEL_9:
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0(&qword_1EDBF5568);
    }

    v13 = sub_1BF9B47C8();
    __swift_project_value_buffer(v13, qword_1EDBF5570);
    OUTLINED_FUNCTION_3_14();

    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5038();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_35_4();
      v19[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1BF8DE810(*(v2 + 16), *(v2 + 24), v19);
      _os_log_impl(&dword_1BF8B8000, v14, v15, "suggestion - %s has onlyEnableFromConfig set but config file is missing - considering the pre-requisite not met", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    goto LABEL_14;
  }

  v9 = OUTLINED_FUNCTION_22_0();
  sub_1BF931C70(v9, v10, v6, v7, v8);
  if (v6 == 3)
  {
LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = sub_1BF9B56D8();

  if (v11)
  {
LABEL_17:
    v12 = 1;
    return v12 & 1;
  }

  if (v6 != 2)
  {
LABEL_16:

    goto LABEL_17;
  }

  v12 = sub_1BF9B56D8();

  return v12 & 1;
}

uint64_t sub_1BF929D74(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BF95DCD4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BF929DE0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF929DE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9900, &qword_1BF9C0728);
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF92A0C4(v7, v8, a1, v4);
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
    return sub_1BF929EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF929EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = *a4 + 24 * a3 - 24;
    v5 = result - a3;
    while (2)
    {
      v21 = v4;
      v22 = a3;
      v20 = v5;
      while (1)
      {
        v24 = sub_1BF9B5668();
        v26 = v6;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v7 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v7);

        v9 = v24;
        v8 = v26;
        v25 = sub_1BF9B5668();
        v27 = v10;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v11 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v11);

        if (v9 == v25 && v8 == v27)
        {
          break;
        }

        v13 = sub_1BF9B56D8();

        if (v13)
        {
          if (!v23)
          {
            __break(1u);
            return result;
          }

          v14 = *(v4 + 24);
          v15 = *(v4 + 32);
          v16 = *(v4 + 40);
          v17 = *(v4 + 16);
          *(v4 + 24) = *v4;
          *(v4 + 40) = v17;
          *v4 = v14;
          *(v4 + 8) = v15;
          *(v4 + 16) = v16;
          v4 -= 24;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v22 + 1;
      v4 = v21 + 24;
      v5 = v20 - 1;
      if (v22 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF92A0C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x1E69E7CC0];
LABEL_99:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v87 = i;
      v88 = (i + 16);
      for (i = *(i + 16); i >= 2; *v88 = i)
      {
        if (!*a3)
        {
          goto LABEL_137;
        }

        v89 = (v87 + 16 * i);
        v90 = *v89;
        v91 = &v88[2 * i];
        v92 = *(v91 + 1);
        sub_1BF92A8DC((*a3 + 24 * *v89), (*a3 + 24 * *v91), *a3 + 24 * v92, v112);
        if (v103)
        {
          break;
        }

        if (v92 < v90)
        {
          goto LABEL_125;
        }

        if (i - 2 >= *v88)
        {
          goto LABEL_126;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v88 - i;
        if (*v88 < i)
        {
          goto LABEL_127;
        }

        i = *v88 - 1;
        sub_1BF95E3AC(v91 + 16, v93, v91);
      }

LABEL_109:

      return;
    }

LABEL_134:
    i = sub_1BF95B0FC(i);
    goto LABEL_101;
  }

  v5 = 0;
  i = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v98 = v5;
    if (v5 + 1 < v4)
    {
      v95 = i;
      v9 = 24 * v5;
      v10 = *a3 + 24 * v5 + 32;
      LODWORD(v112) = static SuggestionsOSVersion.< infix(_:_:)();
      v106 = v4;
      while (v8 + 1 < v4)
      {
        *&v108 = sub_1BF9B5668();
        *(&v108 + 1) = v11;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v12 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v12);

        v13 = v108;
        *&v108 = sub_1BF9B5668();
        v110 = v14;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v15 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v15);

        if (v13 == v108 && *(&v13 + 1) == v110)
        {

          if (v112)
          {
            v4 = v8 + 1;
            i = v95;
            v7 = v98;
            goto LABEL_17;
          }
        }

        else
        {
          v17 = sub_1BF9B56D8();

          if ((v112 ^ v17))
          {
            v4 = v8 + 1;
            break;
          }
        }

        v10 += 24;
        v4 = v106;
        ++v8;
      }

      i = v95;
      v7 = v98;
      if ((v112 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_17:
      if (v4 < v7)
      {
        goto LABEL_131;
      }

      if (v7 <= v8)
      {
        v18 = 0;
        v19 = 24 * v4;
        v20 = v7;
        do
        {
          if (v20 != v4 + v18 - 1)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v22 = (v21 + v9);
            v23 = v21 + v19;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v9 += 24;
        }

        while (v20 < v4 + v18);
      }

LABEL_24:
      v8 = v4;
    }

    v27 = a3[1];
    if (v8 < v27)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_130;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v8 < v7)
    {
      goto LABEL_129;
    }

    v105 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF8DCF6C();
      i = v85;
    }

    v43 = *(i + 16);
    v44 = v43 + 1;
    v45 = v98;
    if (v43 >= *(i + 24) >> 1)
    {
      sub_1BF8DCF6C();
      v45 = v98;
      i = v86;
    }

    *(i + 16) = v44;
    v46 = i + 32;
    v47 = (i + 32 + 16 * v43);
    *v47 = v45;
    v47[1] = v8;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    if (v43)
    {
      while (1)
      {
        v48 = v44 - 1;
        v49 = (v46 + 16 * (v44 - 1));
        v50 = (i + 16 * v44);
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v51 = *(i + 32);
          v52 = *(i + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_67:
          if (v54)
          {
            goto LABEL_116;
          }

          v66 = *v50;
          v65 = v50[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_119;
          }

          v70 = v49[1];
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_124;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v44 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v44 < 2)
        {
          goto LABEL_118;
        }

        v73 = *v50;
        v72 = v50[1];
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_82:
        if (v69)
        {
          goto LABEL_121;
        }

        v75 = *v49;
        v74 = v49[1];
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_123;
        }

        if (v76 < v68)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v48 - 1 >= v44)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v80 = i;
        i = v46 + 16 * (v48 - 1);
        v81 = *i;
        v82 = v46 + 16 * v48;
        v83 = *(v82 + 8);
        sub_1BF92A8DC((*a3 + 24 * *i), (*a3 + 24 * *v82), *a3 + 24 * v83, v112);
        if (v103)
        {
          goto LABEL_109;
        }

        if (v83 < v81)
        {
          goto LABEL_111;
        }

        v84 = *(v80 + 16);
        if (v48 > v84)
        {
          goto LABEL_112;
        }

        *i = v81;
        *(i + 8) = v83;
        if (v48 >= v84)
        {
          goto LABEL_113;
        }

        v44 = v84 - 1;
        sub_1BF95E3AC((v82 + 16), v84 - 1 - v48, (v46 + 16 * v48));
        i = v80;
        *(v80 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_96;
        }
      }

      v55 = v46 + 16 * v44;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_114;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_115;
      }

      v62 = v50[1];
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_117;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_120;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = v49[1];
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v79)
        {
          v48 = v44 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v4 = a3[1];
    v5 = v105;
    if (v105 >= v4)
    {
      goto LABEL_99;
    }
  }

  v28 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_132;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v7)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v8 == v28)
  {
    goto LABEL_47;
  }

  v96 = i;
  v107 = *a3;
  v29 = *a3 + 24 * v8 - 24;
  v30 = v7 - v8;
  v99 = v28;
LABEL_34:
  v104 = v8;
  v100 = v30;
  v101 = v29;
  while (1)
  {
    v112 = *(v29 + 8);
    *&v109 = sub_1BF9B5668();
    *(&v109 + 1) = v31;
    MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
    v32 = sub_1BF9B5668();
    MEMORY[0x1BFB5DE90](v32);

    v33 = v109;
    *&v109 = sub_1BF9B5668();
    v111 = v34;
    MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
    v35 = sub_1BF9B5668();
    MEMORY[0x1BFB5DE90](v35);

    if (v33 == v109 && *(&v33 + 1) == v111)
    {

LABEL_45:
      ++v8;
      v29 = v101 + 24;
      v30 = v100 - 1;
      if (v104 + 1 == v99)
      {
        v8 = v99;
        i = v96;
        v7 = v98;
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    v37 = sub_1BF9B56D8();

    if ((v37 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (!v107)
    {
      break;
    }

    v38 = *(v29 + 24);
    v39 = *(v29 + 32);
    v40 = *(v29 + 40);
    v41 = *(v29 + 16);
    *(v29 + 24) = *v29;
    *(v29 + 40) = v41;
    *v29 = v38;
    *(v29 + 8) = v39;
    *(v29 + 16) = v40;
    v29 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_1BF92A8DC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF958EB4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((static SuggestionsOSVersion.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1BF958EB4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = static SuggestionsOSVersion.< infix(_:_:)();
    v18 = (v5 + 24);
    if (v17)
    {
      v13 = v18 == v6;
      v6 -= 24;
      if (!v13)
      {
        v20 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v20;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v18)
    {
      v19 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v19;
    }

    v10 -= 24;
  }

LABEL_28:
  v21 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_1BF92AAA0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BF9B57A8();
  sub_1BF8CD2C0(v19, a2);
  v6 = sub_1BF9B57E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xE600000000000000;
      v11 = 0x656E6F685069;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v11 = 0x72506E6F69736976;
          v10 = 0xE90000000000006FLL;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1684099177;
          break;
        case 3:
          v10 = 0xE700000000000000;
          v11 = 0x79616C50726163;
          break;
        case 4:
          v10 = 0xE500000000000000;
          v11 = 0x6863746177;
          break;
        case 5:
          v10 = 0xE700000000000000;
          v11 = 0x5654656C707061;
          break;
        case 6:
          v10 = 0xE700000000000000;
          v11 = 0x646F70656D6F68;
          break;
        case 7:
          v10 = 0xE300000000000000;
          v11 = 6513005;
          break;
        case 8:
          v10 = 0xE300000000000000;
          v11 = 6582128;
          break;
        default:
          break;
      }

      v12 = 0xE600000000000000;
      v13 = 0x656E6F685069;
      switch(a2)
      {
        case 1:
          v13 = 0x72506E6F69736976;
          v12 = 0xE90000000000006FLL;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1684099177;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x79616C50726163;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v13 = 0x6863746177;
          break;
        case 5:
          v12 = 0xE700000000000000;
          v13 = 0x5654656C707061;
          break;
        case 6:
          v12 = 0xE700000000000000;
          v13 = 0x646F70656D6F68;
          break;
        case 7:
          v12 = 0xE300000000000000;
          v13 = 6513005;
          break;
        case 8:
          v12 = 0xE300000000000000;
          v13 = 6582128;
          break;
        default:
          break;
      }

      if (v11 == v13 && v10 == v12)
      {
        break;
      }

      v15 = sub_1BF9B56D8();

      if (v15)
      {
        goto LABEL_29;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;
    sub_1BF92D5AC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BF92AD98(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1BF9B57A8();
  sub_1BF8CD538(v20, a2, v6);
  v7 = sub_1BF9B57E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE300000000000000;
      v12 = 5459817;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x534F63616DLL;
          break;
        case 2:
          v11 = 0xE400000000000000;
          v12 = 1397716596;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x534F6863746177;
          break;
        case 4:
          v11 = 0xE800000000000000;
          v12 = 0x534F6E6F69736976;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v12 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v13 = 0xE300000000000000;
      v14 = 5459817;
      switch(a2)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x534F63616DLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1397716596;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x534F6863746177;
          break;
        case 4:
          v13 = 0xE800000000000000;
          v14 = 0x534F6E6F69736976;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        break;
      }

      v16 = sub_1BF9B56D8();

      if (v16)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v3;
    sub_1BF92D900(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v20[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BF92B010(_WORD *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  v33 = a2;
  sub_1BF9B57A8();
  InvocationType.hash(into:)(v32);
  v6 = sub_1BF9B57E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v3;
    sub_1BF92DBD4(v4, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v32[0];
    result = 1;
    goto LABEL_51;
  }

  v9 = ~v7;
  v10 = BYTE1(v4) - 2;
  v11 = v4;
  if (v4)
  {
    v12 = 0x6E61747369737361;
  }

  else
  {
    v12 = 1919251317;
  }

  v27 = v12;
  v13 = 0xE400000000000000;
  if (v4)
  {
    v13 = 0xE900000000000074;
  }

  v28 = v13;
  if ((v4 >> 8))
  {
    v14 = 0x6465707974;
  }

  else
  {
    v14 = 0x6563696F76;
  }

  while (2)
  {
    v15 = *(*(v5 + 48) + 2 * v8);
    switch(v15 >> 8)
    {
      case 2u:
        if ((v4 & 0xFF00) != 0x200)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      case 3u:
        if ((v4 & 0xFF00) == 0x300)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 4u:
        if ((v4 & 0xFF00) == 0x400)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 5u:
        if ((v4 & 0xFF00) == 0x500)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 6u:
        if ((v4 & 0xFF00) == 0x600)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      default:
        if (v10 < 5)
        {
          goto LABEL_47;
        }

        if (*(*(v5 + 48) + 2 * v8) == 2)
        {
          if (v11 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (*(*(v5 + 48) + 2 * v8) == 3)
        {
          if (v11 == 3)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if ((v4 & 0xFE) == 2)
        {
          goto LABEL_47;
        }

        v26 = v10;
        v29 = v11;
        if (v15)
        {
          v16 = 0x6E61747369737361;
        }

        else
        {
          v16 = 1919251317;
        }

        if (v15)
        {
          v17 = 0xE900000000000074;
        }

        else
        {
          v17 = 0xE400000000000000;
        }

        if (v16 != v27 || v17 != v28)
        {
          v25 = sub_1BF9B56D8();

          v11 = v29;
          v10 = v26;
          if (v25)
          {
            goto LABEL_42;
          }

LABEL_47:
          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

        v11 = v29;
        v10 = v26;
LABEL_42:
        if ((v15 >> 8))
        {
          v19 = 0x6465707974;
        }

        else
        {
          v19 = 0x6563696F76;
        }

        if (v19 != v14)
        {
          v30 = v11;
          v20 = v3;
          v21 = v10;
          v22 = sub_1BF9B56D8();
          swift_bridgeObjectRelease_n();
          v10 = v21;
          v3 = v20;
          v11 = v30;
          if (v22)
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        swift_bridgeObjectRelease_n();
LABEL_50:
        result = 0;
        LOWORD(v4) = *(*(v5 + 48) + 2 * v8);
LABEL_51:
        *a1 = v4;
        return result;
    }
  }
}

BOOL sub_1BF92B360(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = sub_1BF8C0DC8(*(*v2 + 40));
  v55 = ~(-1 << *(v4 + 32));
  v56 = v4 + 56;
  v53 = v4;
  while (1)
  {
    v6 = v5 & v55;
    v7 = *(v56 + (((v5 & v55) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = (1 << (v5 & v55)) & v7;
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v51;
      sub_1BF932300(a2, &v61);
      sub_1BF92DF64(a2, v6, isUniquelyReferenced_nonNull_native);
      *v51 = v63;
      v43 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v43;
      *(a1 + 32) = *(a2 + 32);
      return v8 == 0;
    }

    v54 = (1 << (v5 & v55)) & v7;
    v9 = *(v4 + 48) + 40 * v6;
    v11 = *v9;
    v10 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = *(v9 + 32);
    v59 = v13;
    v60 = v10;
    v58 = v12;
    v57 = *(v9 + 32);
    if (v14 == 2)
    {
      if (v13 | v10 | v11 | v12)
      {
        v17 = v13 | v10 | v12;
        if (v11 == 1 && v17 == 0)
        {
          sub_1BF8C0D00(1, 0, 0, 0, 2);
          v15 = 0xD000000000000010;
          v16 = 0x80000001BF9CBC20;
        }

        else if (v11 == 2 && v17 == 0)
        {
          sub_1BF8C0D00(2, 0, 0, 0, 2);
          v15 = 0x696669746F4E736FLL;
          v16 = 0xEE006E6F69746163;
        }

        else if (v11 == 3 && v17 == 0)
        {
          sub_1BF8C0D00(3, 0, 0, 0, 2);
          v16 = 0xE800000000000000;
          v15 = 0x706C654869726973;
        }

        else if (v11 == 4 && v17 == 0)
        {
          sub_1BF8C0D00(4, 0, 0, 0, 2);
          v15 = 0xD000000000000014;
          v16 = 0x80000001BF9CBC00;
        }

        else
        {
          sub_1BF8C0D00(5, 0, 0, 0, 2);
          v15 = 0xD000000000000010;
          v16 = 0x80000001BF9CBBE0;
        }
      }

      else
      {
        sub_1BF8C0D00(0, 0, 0, 0, 2);
        v15 = 0xD000000000000010;
        v16 = 0x80000001BF9CBC40;
      }
    }

    else if (v14 == 1)
    {
      sub_1BF8C0D00(v11, v10, v13, v12, 1);
      if (v11)
      {
        if (v11 == 1)
        {
          v15 = 0x746E694869726973;
          v16 = 0xEF6E656B6F705373;
        }

        else
        {
          v16 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v15 = 0x746E694869726973;
        v16 = 0xE900000000000073;
      }
    }

    else
    {
      sub_1BF8C0D00(v11, v10, v13, v12, 0);
      MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
      MEMORY[0x1BFB5DE90](v11, v10);
      if (v12)
      {
        MEMORY[0x1BFB5DE90](v13, v12);
        v23 = 95;
        v22 = 0xE100000000000000;
      }

      else
      {
        v23 = 0;
        v22 = 0xE000000000000000;
      }

      v61 = 0x7070416E69;
      v62 = 0xE500000000000000;

      MEMORY[0x1BFB5DE90](v23, v22);

      v15 = 0x7070416E69;
      v16 = 0xE500000000000000;
    }

    v24 = *a2;
    v25 = a2[2];
    v26 = a2[3];
    if (!*(a2 + 32))
    {
      v32 = a2[1];
      MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
      MEMORY[0x1BFB5DE90](v24, v32);
      if (v26)
      {
        MEMORY[0x1BFB5DE90](v25, v26);
        v26 = 95;
        v33 = 0xE100000000000000;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      v61 = 0x7070416E69;
      v62 = 0xE500000000000000;

      MEMORY[0x1BFB5DE90](v26, v33);

      v30 = 0x7070416E69;
      v31 = 0xE500000000000000;
      v4 = v53;
      goto LABEL_59;
    }

    if (*(a2 + 32) == 1)
    {
      v27 = *a2;
      v29 = v59;
      v28 = v60;
      if (*a2)
      {
        if (v27 == 1)
        {
          v30 = 0x746E694869726973;
        }

        else
        {
          v30 = 0x6E776F6E6B6E75;
        }

        if (v27 == 1)
        {
          v31 = 0xEF6E656B6F705373;
        }

        else
        {
          v31 = 0xE700000000000000;
        }
      }

      else
      {
        v30 = 0x746E694869726973;
        v31 = 0xE900000000000073;
      }

      goto LABEL_60;
    }

    v34 = a2[1];
    if (!(v26 | v25 | v24 | v34))
    {
      v30 = 0xD000000000000010;
      v31 = 0x80000001BF9CBC40;
LABEL_59:
      v29 = v59;
      v28 = v60;
      goto LABEL_60;
    }

    v35 = v26 | v25 | v34;
    v29 = v59;
    v28 = v60;
    if (v24 != 1 || (v30 = 0xD000000000000010, v31 = 0x80000001BF9CBC20, v35))
    {
      if (v24 != 2 || (v30 = 0x696669746F4E736FLL, v31 = 0xEE006E6F69746163, v35))
      {
        if (v24 != 3 || v35)
        {
          v38 = v35 == 0;
          v39 = v24 == 4;
          v40 = !v39 || !v38;
          if (v39 && v38)
          {
            v30 = 0xD000000000000014;
          }

          else
          {
            v30 = 0xD000000000000010;
          }

          v41 = "actionWillExecute";
          if (!v40)
          {
            v41 = "siriAutoComplete";
          }

          v31 = v41 | 0x8000000000000000;
        }

        else
        {
          v31 = 0xE800000000000000;
          v30 = 0x706C654869726973;
        }
      }
    }

LABEL_60:
    if (v15 == v30 && v16 == v31)
    {
      break;
    }

    v37 = sub_1BF9B56D8();
    sub_1BF8C0CB8(v11, v28, v29, v58, v57);

    if (v37)
    {
      goto LABEL_75;
    }

    v5 = v6 + 1;
  }

  sub_1BF8C0CB8(v11, v28, v29, v58, v57);

LABEL_75:
  sub_1BF93235C(a2);
  v44 = *(v4 + 48) + 40 * v6;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  *a1 = *v44;
  *(a1 + 8) = v46;
  *(a1 + 16) = v47;
  *(a1 + 24) = v48;
  v49 = *(v44 + 32);
  *(a1 + 32) = v49;
  sub_1BF8C0D00(v45, v46, v47, v48, v49);
  v8 = v54;
  return v8 == 0;
}

BOOL sub_1BF92BA24(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1BF9B4558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v27 = a2;
  v9 = sub_1BF9B4A48();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1BF92E600(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_1BF932264(&qword_1EDBF3F68, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v15 = sub_1BF9B4A88();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_1BF92BCF4(void *a1, void *a2)
{
  v4 = *v2;
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BF9B4A58();
  v5 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v5);
  v6 = sub_1BF9B57E8();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF932458(a2, __src);
    v33[0] = *v27;
    sub_1BF92E894(__src, v8, isUniquelyReferenced_nonNull_native);
    *v27 = v33[0];
    memcpy(a1, a2, 0x78uLL);
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    sub_1BF932458(*(v4 + 48) + 120 * v8, __src);
    v10 = v31;
    v11 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v12 = (*(v11 + 40))(v10, v11);
    v14 = v13;
    v15 = a2[13];
    v16 = a2[14];
    __swift_project_boxed_opaque_existential_1(a2 + 10, v15);
    if (v12 == (*(v16 + 40))(v15, v16) && v14 == v17)
    {
      break;
    }

    v19 = sub_1BF9B56D8();

    if (v19)
    {
      goto LABEL_10;
    }

    sub_1BF9324B4(__src);
LABEL_11:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_10:
  v20 = __src[8];
  v21 = a2[3];
  v22 = __swift_project_boxed_opaque_existential_1(a2, v21);
  v33[3] = v21;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v33);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v22, v21);
  v24 = v20(v33);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1BF9324B4(__src);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BF9324B4(a2);
  sub_1BF932458(*(v4 + 48) + 120 * v8, a1);
  return 0;
}

void sub_1BF92BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_32_4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B57E8();
  OUTLINED_FUNCTION_21_8();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (sub_1BF9B56D8() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_1BF92EB9C(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  OUTLINED_FUNCTION_31_6();
}

uint64_t sub_1BF92C104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1BF95D270(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF92C430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9908, &qword_1BF9C0730);
  result = sub_1BF9B5248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1BF95D270(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF92C71C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  result = sub_1BF9B5248();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
LABEL_6:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v27 = 1 << *(v3 + 32);
        if (v27 >= 64)
        {
          sub_1BF95D270(0, (v27 + 63) >> 6, v3 + 56);
        }

        else
        {
          *v7 = -1 << v27;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_41;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_12:
        v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
        sub_1BF9B57A8();
        switch(v16 >> 8)
        {
          case 2u:
            v17 = 0;
            goto LABEL_18;
          case 3u:
            v17 = 1;
            goto LABEL_18;
          case 4u:
            v17 = 2;
            goto LABEL_18;
          case 5u:
            v17 = 4;
            goto LABEL_18;
          case 6u:
            v17 = 5;
LABEL_18:
            MEMORY[0x1BFB5EAC0](v17);
            goto LABEL_19;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v16 == 2)
            {
              v26 = 0;
              goto LABEL_34;
            }

            if (v16 == 3)
            {
              v26 = 1;
LABEL_34:
              MEMORY[0x1BFB5EAC0](v26);
              goto LABEL_36;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_36:
            sub_1BF9B4B48();

LABEL_19:
            result = sub_1BF9B57E8();
            v18 = -1 << *(v5 + 32);
            v19 = result & ~v18;
            v20 = v19 >> 6;
            if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) != 0)
            {
              v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v22 = 0;
              v23 = (63 - v18) >> 6;
              do
              {
                if (++v20 == v23 && (v22 & 1) != 0)
                {
                  goto LABEL_43;
                }

                v24 = v20 == v23;
                if (v20 == v23)
                {
                  v20 = 0;
                }

                v22 |= v24;
                v25 = *(v12 + 8 * v20);
              }

              while (v25 == -1);
              v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            }

            *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            *(*(v5 + 48) + 2 * v21) = v16;
            ++*(v5 + 16);
            if (v10)
            {
              goto LABEL_6;
            }

            break;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_41:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF92CA88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  result = sub_1BF9B5248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:
    v36 = v5;

    *v2 = v36;
    return result;
  }

  v37 = v1;
  v38 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v5;
      sub_1BF95D270(0, (v34 + 63) >> 6, v7);
      v5 = v35;
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v5;
    v23 = sub_1BF9B57A8();
    DeliveryVehicle.rawValue.getter(v23, v24);
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v5 = v22;
    v25 = -1 << *(v22 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v22 + 48) + 40 * v28;
    *v33 = v18;
    *(v33 + 8) = v17;
    *(v33 + 16) = v20;
    *(v33 + 24) = v19;
    *(v33 + 32) = v21;
    ++*(v22 + 16);
    v3 = v38;
    v10 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v12 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF92CD5C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1BF9B4558();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  result = sub_1BF9B5248();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
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
  v34 = v3 + 32;
  v14 = result + 56;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1BF95D270(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
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
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    result = sub_1BF9B4A48();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BF92D0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  result = sub_1BF9B5248();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1BF92D494(__dst, v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      memcpy(__dst, (*(v3 + 48) + 120 * (v12 | (v6 << 6))), sizeof(__dst));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      sub_1BF95D270(0, (v15 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF92D238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  result = sub_1BF9B5248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1BF95D270(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1BF9B57A8();
    sub_1BF9B4B48();
    result = sub_1BF9B57E8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1BF92D494(void *a1, uint64_t a2)
{
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B4A58();
  v4 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v4);
  sub_1BF9B57E8();
  v5 = sub_1BF9B51F8();
  *(a2 + 56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  result = memcpy((*(a2 + 48) + 120 * v5), a1, 0x78uLL);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BF92D5AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_1BF92C104(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1BF92ED04(&qword_1EBDE9910, &qword_1BF9C0738);
      goto LABEL_34;
    }

    sub_1BF92F5DC(v7 + 1);
  }

  v9 = *v3;
  sub_1BF9B57A8();
  sub_1BF8CD2C0(v22, v6);
  result = sub_1BF9B57E8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE600000000000000;
      v13 = 0x656E6F685069;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v13 = 0x72506E6F69736976;
          v12 = 0xE90000000000006FLL;
          break;
        case 2:
          v12 = 0xE400000000000000;
          v13 = 1684099177;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x79616C50726163;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v13 = 0x6863746177;
          break;
        case 5:
          v12 = 0xE700000000000000;
          v13 = 0x5654656C707061;
          break;
        case 6:
          v12 = 0xE700000000000000;
          v13 = 0x646F70656D6F68;
          break;
        case 7:
          v12 = 0xE300000000000000;
          v13 = 6513005;
          break;
        case 8:
          v12 = 0xE300000000000000;
          v13 = 6582128;
          break;
        default:
          break;
      }

      v14 = 0xE600000000000000;
      v15 = 0x656E6F685069;
      switch(v6)
      {
        case 1:
          v15 = 0x72506E6F69736976;
          v14 = 0xE90000000000006FLL;
          break;
        case 2:
          v14 = 0xE400000000000000;
          v15 = 1684099177;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x79616C50726163;
          break;
        case 4:
          v14 = 0xE500000000000000;
          v15 = 0x6863746177;
          break;
        case 5:
          v14 = 0xE700000000000000;
          v15 = 0x5654656C707061;
          break;
        case 6:
          v14 = 0xE700000000000000;
          v15 = 0x646F70656D6F68;
          break;
        case 7:
          v14 = 0xE300000000000000;
          v15 = 6513005;
          break;
        case 8:
          v14 = 0xE300000000000000;
          v15 = 6582128;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
        goto LABEL_37;
      }

      v17 = sub_1BF9B56D8();

      if (v17)
      {
        goto LABEL_38;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_37:

LABEL_38:
  result = sub_1BF9B5748();
  __break(1u);
  return result;
}

uint64_t sub_1BF92D900(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1BF92C430(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1BF92ED04(&qword_1EBDE9908, &qword_1BF9C0730);
      goto LABEL_28;
    }

    sub_1BF92F8D8(v7 + 1);
  }

  v9 = *v3;
  sub_1BF9B57A8();
  sub_1BF8CD538(v23, v6, v10);
  result = sub_1BF9B57E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE300000000000000;
      v14 = 5459817;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x534F63616DLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1397716596;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x534F6863746177;
          break;
        case 4:
          v13 = 0xE800000000000000;
          v14 = 0x534F6E6F69736976;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v15 = 0xE300000000000000;
      v16 = 5459817;
      switch(v6)
      {
        case 1:
          v15 = 0xE500000000000000;
          v16 = 0x534F63616DLL;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1397716596;
          break;
        case 3:
          v15 = 0xE700000000000000;
          v16 = 0x534F6863746177;
          break;
        case 4:
          v15 = 0xE800000000000000;
          v16 = 0x534F6E6F69736976;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_31;
      }

      v18 = sub_1BF9B56D8();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1BF9B5748();
  __break(1u);
  return result;
}

uint64_t sub_1BF92DBD4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92C71C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1BF92EE34();
        goto LABEL_55;
      }

      sub_1BF92FB94(v7 + 1);
    }

    v9 = *v3;
    v31 = v6;
    sub_1BF9B57A8();
    InvocationType.hash(into:)(v30);
    result = sub_1BF9B57E8();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      if (v6)
      {
        v12 = 0x6E61747369737361;
      }

      else
      {
        v12 = 1919251317;
      }

      v28 = v12;
      v13 = 0xE400000000000000;
      if (v6)
      {
        v13 = 0xE900000000000074;
      }

      v29 = v13;
      if ((v6 >> 8))
      {
        v14 = 0x6465707974;
      }

      else
      {
        v14 = 0x6563696F76;
      }

      while (1)
      {
        v15 = *(*(v9 + 48) + 2 * a2);
        switch(v15 >> 8)
        {
          case 2u:
            if ((v6 & 0xFF00) == 0x200)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 3u:
            if ((v6 & 0xFF00) == 0x300)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 4u:
            if ((v6 & 0xFF00) == 0x400)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 5u:
            if ((v6 & 0xFF00) == 0x500)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 6u:
            if ((v6 & 0xFF00) == 0x600)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          default:
            if (BYTE1(v6) - 2 < 5)
            {
              goto LABEL_54;
            }

            if (*(*(v9 + 48) + 2 * a2) == 2)
            {
              if (v6 != 2)
              {
                goto LABEL_54;
              }
            }

            else if (*(*(v9 + 48) + 2 * a2) == 3)
            {
              if (v6 != 3)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if ((v6 & 0xFE) == 2)
              {
                goto LABEL_54;
              }

              v27 = v14;
              if (v15)
              {
                v16 = 0x6E61747369737361;
              }

              else
              {
                v16 = 1919251317;
              }

              if (v15)
              {
                v17 = 0xE900000000000074;
              }

              else
              {
                v17 = 0xE400000000000000;
              }

              if (v16 == v28 && v17 == v29)
              {

                v14 = v27;
              }

              else
              {
                v26 = sub_1BF9B56D8();

                v14 = v27;
                if ((v26 & 1) == 0)
                {
                  goto LABEL_54;
                }
              }
            }

            if ((v15 >> 8))
            {
              v19 = 0x6465707974;
            }

            else
            {
              v19 = 0x6563696F76;
            }

            if (v19 == v14)
            {
              goto LABEL_58;
            }

            v20 = v14;
            v21 = sub_1BF9B56D8();
            result = swift_bridgeObjectRelease_n();
            v14 = v20;
            if (v21)
            {
              goto LABEL_59;
            }

LABEL_54:
            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
        }
      }
    }
  }

LABEL_55:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 2 * a2) = v6;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_58:
    swift_bridgeObjectRelease_n();
LABEL_59:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

void sub_1BF92DF64(uint64_t *result, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92CA88(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      sub_1BF92FED0(v7 + 1);
LABEL_8:
      v46 = v3;
      v9 = *v3;
      v10 = sub_1BF8C0DC8(*(*v3 + 40));
      v47 = v9;
      v48 = ~(-1 << *(v9 + 32));
      v49 = v9 + 56;
      while (1)
      {
        a2 = v10 & v48;
        if (((*(v49 + (((v10 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v48)) & 1) == 0)
        {
          break;
        }

        v11 = *(v47 + 48) + 40 * a2;
        v4 = *v11;
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v5 = *(v11 + 24);
        v14 = *(v11 + 32);
        v52 = v13;
        v53 = v12;
        v51 = *(v11 + 32);
        if (v14 == 2)
        {
          if (v13 | v12 | v4 | v5)
          {
            v17 = v13 | v12 | v5;
            if (v4 == 1 && v17 == 0)
            {
              sub_1BF8C0D00(1, 0, 0, 0, 2);
              v15 = 0xD000000000000010;
              v16 = 0x80000001BF9CBC20;
            }

            else if (v4 == 2 && v17 == 0)
            {
              sub_1BF8C0D00(2, 0, 0, 0, 2);
              v15 = 0x696669746F4E736FLL;
              v16 = 0xEE006E6F69746163;
            }

            else if (v4 == 3 && v17 == 0)
            {
              sub_1BF8C0D00(3, 0, 0, 0, 2);
              v16 = 0xE800000000000000;
              v15 = 0x706C654869726973;
            }

            else if (v4 == 4 && v17 == 0)
            {
              sub_1BF8C0D00(4, 0, 0, 0, 2);
              v15 = 0xD000000000000014;
              v16 = 0x80000001BF9CBC00;
            }

            else
            {
              sub_1BF8C0D00(5, 0, 0, 0, 2);
              v15 = 0xD000000000000010;
              v16 = 0x80000001BF9CBBE0;
            }
          }

          else
          {
            sub_1BF8C0D00(0, 0, 0, 0, 2);
            v15 = 0xD000000000000010;
            v16 = 0x80000001BF9CBC40;
          }
        }

        else if (v14 == 1)
        {
          sub_1BF8C0D00(v4, v12, v13, v5, 1);
          if (v4)
          {
            if (v4 == 1)
            {
              v15 = 0x746E694869726973;
              v16 = 0xEF6E656B6F705373;
            }

            else
            {
              v16 = 0xE700000000000000;
              v15 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v15 = 0x746E694869726973;
            v16 = 0xE900000000000073;
          }
        }

        else
        {
          sub_1BF8C0D00(v4, v12, v13, v5, 0);
          MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
          MEMORY[0x1BFB5DE90](v4, v12);
          if (v5)
          {
            MEMORY[0x1BFB5DE90](v13, v5);
            v23 = 95;
            v22 = 0xE100000000000000;
          }

          else
          {
            v23 = 0;
            v22 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v23, v22);

          v15 = 0x7070416E69;
          v16 = 0xE500000000000000;
        }

        v24 = *result;
        v25 = result[2];
        v26 = result[3];
        if (*(result + 32))
        {
          if (*(result + 32) == 1)
          {
            v27 = *result;
            if (*result)
            {
              if (v27 == 1)
              {
                v28 = 0x746E694869726973;
              }

              else
              {
                v28 = 0x6E776F6E6B6E75;
              }

              if (v27 == 1)
              {
                v29 = 0xEF6E656B6F705373;
              }

              else
              {
                v29 = 0xE700000000000000;
              }
            }

            else
            {
              v28 = 0x746E694869726973;
              v29 = 0xE900000000000073;
            }
          }

          else
          {
            v32 = result[1];
            if (v26 | v25 | v24 | v32)
            {
              v33 = v26 | v25 | v32;
              if (v24 != 1 || (v28 = 0xD000000000000010, v29 = 0x80000001BF9CBC20, v33))
              {
                if (v24 != 2 || (v28 = 0x696669746F4E736FLL, v29 = 0xEE006E6F69746163, v33))
                {
                  if (v24 != 3 || v33)
                  {
                    v36 = v33 == 0;
                    v37 = v24 == 4;
                    v38 = !v37 || !v36;
                    if (v37 && v36)
                    {
                      v28 = 0xD000000000000014;
                    }

                    else
                    {
                      v28 = 0xD000000000000010;
                    }

                    v39 = "actionWillExecute";
                    if (!v38)
                    {
                      v39 = "siriAutoComplete";
                    }

                    v29 = v39 | 0x8000000000000000;
                  }

                  else
                  {
                    v29 = 0xE800000000000000;
                    v28 = 0x706C654869726973;
                  }
                }
              }
            }

            else
            {
              v28 = 0xD000000000000010;
              v29 = 0x80000001BF9CBC40;
            }
          }
        }

        else
        {
          v30 = result[1];
          MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
          MEMORY[0x1BFB5DE90](v24, v30);
          if (v26)
          {
            MEMORY[0x1BFB5DE90](v25, v26);
            v26 = 95;
            v31 = 0xE100000000000000;
          }

          else
          {
            v31 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v26, v31);

          v28 = 0x7070416E69;
          v29 = 0xE500000000000000;
        }

        if (v15 == v28 && v16 == v29)
        {
          goto LABEL_83;
        }

        v35 = sub_1BF9B56D8();
        sub_1BF8C0CB8(v4, v53, v52, v5, v51);

        if (v35)
        {
          goto LABEL_84;
        }

        v10 = a2 + 1;
      }

      v3 = v46;
      goto LABEL_80;
    }

    sub_1BF92EF74();
  }

LABEL_80:
  v40 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v41 = *(v40 + 48) + 40 * a2;
  v42 = *(result + 1);
  *v41 = *result;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(result + 32);
  v43 = *(v40 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_83:
    sub_1BF8C0CB8(v4, v53, v52, v5, v51);

LABEL_84:
    sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v45;
  }
}

uint64_t sub_1BF92E600(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1BF9B4558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92CD5C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1BF93016C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      v13 = sub_1BF9B4A48();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1BF932264(&qword_1EDBF3F68, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v15 = sub_1BF9B4A88();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1BF92F0E0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_1BF92E894(void *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92D0B8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1BF92F314();
        goto LABEL_19;
      }

      sub_1BF930488(v6 + 1);
    }

    v8 = *v3;
    sub_1BF9B57A8();
    __swift_project_boxed_opaque_existential_1(__src + 10, __src[13]);
    sub_1BF9B4A58();
    sub_1BF9B57A8();
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    sub_1BF9B4A58();
    v9 = sub_1BF9B57E8();
    MEMORY[0x1BFB5EAC0](v9);
    v10 = sub_1BF9B57E8();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        sub_1BF932458(*(v8 + 48) + 120 * a2, v34);
        v13 = v37;
        v14 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v15 = (*(v14 + 40))(v13, v14);
        v17 = v16;
        v18 = __src[13];
        v19 = __src[14];
        __swift_project_boxed_opaque_existential_1(__src + 10, v18);
        if (v15 == (*(v19 + 40))(v18, v19) && v17 == v20)
        {
          break;
        }

        v22 = sub_1BF9B56D8();

        if (v22)
        {
          goto LABEL_17;
        }

        sub_1BF9324B4(v34);
LABEL_18:
        a2 = (a2 + 1) & v12;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_17:
      v23 = v35;
      v24 = __src[3];
      v25 = __swift_project_boxed_opaque_existential_1(__src, v24);
      v39[3] = v24;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v39);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1Tm, v25, v24);
      v27 = v23(v39);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_1BF9324B4(v34);
      if (v27)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v28 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v28 + 48) + 120 * a2), __src, 0x78uLL);
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_22:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

unint64_t sub_1BF92EB9C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BF92D238(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BF9305C8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1BF9B57A8();
      sub_1BF9B4B48();
      result = sub_1BF9B57E8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1BF9B56D8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BF92F484();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1BF92ED04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BF9B5238();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

  return result;
}

void *sub_1BF92EE34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  v2 = *v0;
  v3 = sub_1BF9B5238();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1BF92EF74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  v2 = *v0;
  v3 = sub_1BF9B5238();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + 8 * v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        sub_1BF8C0D00(v19, v20, v21, v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1BF92F0E0()
{
  v1 = v0;
  v2 = sub_1BF9B4558();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  v6 = *v0;
  v7 = sub_1BF9B5238();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1BF92F314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  v2 = *v0;
  v3 = sub_1BF9B5238();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 120 * (v14 | (v8 << 6));
        sub_1BF932458(*(v2 + 48) + v17, __src);
        result = memcpy((*(v4 + 48) + v17), __src, 0x78uLL);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF92F484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  v2 = *v0;
  v3 = sub_1BF9B5238();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}