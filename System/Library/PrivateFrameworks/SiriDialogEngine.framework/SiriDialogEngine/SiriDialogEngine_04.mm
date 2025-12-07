uint64_t sub_222D3428C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

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

uint64_t sub_222D342E0(char a1)
{
  if (a1)
  {
    return 0x506C616974696E69;
  }

  else
  {
    return 0x7265646E6567;
  }
}

uint64_t sub_222D34344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D3428C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D34374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D342E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D343A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D3428C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D343D0(uint64_t a1)
{
  v2 = sub_222D34634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3440C(uint64_t a1)
{
  v2 = sub_222D34634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogPronoun.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t DialogPronoun.__deallocating_deinit()
{
  DialogPronoun.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D344AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C558, &qword_222D57440);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D34634();
  sub_222D531AC();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v29 = v3[3];
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v28 = 0;
  sub_222CE3060(v29, v11, v12, v13);
  v17 = sub_222CF2084(v14, v15, v16);
  OUTLINED_FUNCTION_6_2(v17, v18, v19, &type metadata for SpeakableString);
  sub_222CE2920(v29, v30, v31, v32);
  if (!v2)
  {
    v20 = v3[8];
    v21 = v3[9];
    v22 = v3[10];
    v29 = v3[7];
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v28 = 1;
    sub_222CE3060(v29, v20, v21, v22);
    OUTLINED_FUNCTION_6_2(v23, v24, v25, &type metadata for SpeakableString);
    sub_222CE2920(v29, v30, v31, v32);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D34634()
{
  result = qword_27D03C560;
  if (!qword_27D03C560)
  {
    result = swift_getWitnessTable(byte_222D57624, &type metadata for DialogPronoun.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C560);
  }

  return result;
}

uint64_t DialogPronoun.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogPronoun.init(from:)(a1);
  return v2;
}

uint64_t DialogPronoun.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C568, &qword_222D57448);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D34634();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPronoun();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 56) = v11;
    *(v1 + 72) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D34908(uint64_t a1)
{
  *(a1 + 8) = sub_222D34970(&qword_27D03C170, protocol conformance descriptor for DialogPronoun);
  result = sub_222D34970(qword_280D3C778, protocol conformance descriptor for DialogPronoun);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D34970(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogPronoun();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D349B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogPronoun.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D34E68()
{
  result = qword_27D03C570;
  if (!qword_27D03C570)
  {
    result = swift_getWitnessTable(byte_222D575FC, &type metadata for DialogPronoun.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C570);
  }

  return result;
}

unint64_t sub_222D34EC0()
{
  result = qword_27D03C578;
  if (!qword_27D03C578)
  {
    result = swift_getWitnessTable(aMN_0, &type metadata for DialogPronoun.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C578);
  }

  return result;
}

unint64_t sub_222D34F18()
{
  result = qword_27D03C580;
  if (!qword_27D03C580)
  {
    result = swift_getWitnessTable("}6N_", &type metadata for DialogPronoun.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C580);
  }

  return result;
}

uint64_t sub_222D34FEC()
{
  type metadata accessor for DialogWeight();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogWeight.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t DialogWeight.Builder.__deallocating_deinit()
{
  sub_222CE2920(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D35108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {
    v7 = 0x676E697274536F74;
    v8 = 0xE800000000000000;
    goto LABEL_19;
  }

  v9 = 0xEB00000000646574;
  v10 = 0x6169766572626261;
  v11 = a1 == 0x6169766572626261 && a2 == 0xEB00000000646574;
  if (v11 || (OUTLINED_FUNCTION_1_1(0x6169766572626261) & 1) != 0)
  {
    goto LABEL_17;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x6D69786F72707061;
  v12 = a1 == 0x6D69786F72707061 && a2 == 0xEB00000000657461;
  if (v12 || (OUTLINED_FUNCTION_1_1(0x6D69786F72707061) & 1) != 0)
  {
    goto LABEL_17;
  }

  v9 = 0x8000000222D5ACF0;
  v14 = a1 == 0xD000000000000012 && 0x8000000222D5ACF0 == a2;
  if (v14 || (OUTLINED_FUNCTION_1_1(0xD000000000000012) & 1) != 0)
  {
    v7 = 0xD000000000000012;
    goto LABEL_18;
  }

  v9 = 0x8000000222D5AD10;
  v10 = 0xD000000000000013;
  v15 = a1 == 0xD000000000000013 && 0x8000000222D5AD10 == a2;
  if (v15 || (OUTLINED_FUNCTION_1_1(0xD000000000000013) & 1) != 0)
  {
LABEL_17:
    v7 = v10;
LABEL_18:
    v8 = v9;
LABEL_19:
    sub_222CFA400(v7, v8);
    if (v17)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v13 = swift_allocObject();
      *a3 = v13;
      v13[2] = v16;
      v13[3] = v17;
      v13[4] = v18;
      v13[5] = v19;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  sub_222D1C028(a1, a2, a3);
}

uint64_t DialogWeight.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogWeight.init(from:)(a1);
}

uint64_t DialogWeight.init(from:)(void *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogWeight.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_222D35544@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_222D35584(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

double DialogStringPair.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double DialogStringPair.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t sub_222D3561C()
{
  type metadata accessor for DialogStringPair();
  v0 = swift_allocObject();

  DialogStringPair.init(builder:)(v1);
  return v0;
}

uint64_t DialogStringPair.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogStringPair.init(builder:)(a1);
  return v2;
}

uint64_t *DialogStringPair.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);
  return v0;
}

uint64_t DialogStringPair.Builder.__deallocating_deinit()
{
  DialogStringPair.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *DialogStringPair.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  sub_222CE3060(v3, v4, v5, v6);
  sub_222CE3060(v7, v8, v9, v10);

  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  return v1;
}

double sub_222D3581C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (!v6 && (sub_222D5305C() & 1) == 0)
  {
    v14 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v14 || (sub_222D5305C() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D35944(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

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

uint64_t sub_222D35998(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_222D359EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D35944(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D35A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D35998(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D35A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D35944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D35A78(uint64_t a1)
{
  v2 = sub_222D35CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D35AB4(uint64_t a1)
{
  v2 = sub_222D35CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogStringPair.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t DialogStringPair.__deallocating_deinit()
{
  DialogStringPair.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D35B54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C588, &qword_222D576D0);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D35CDC();
  sub_222D531AC();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v29 = v3[3];
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v28 = 0;
  sub_222CE3060(v29, v11, v12, v13);
  v17 = sub_222CF2084(v14, v15, v16);
  OUTLINED_FUNCTION_6_2(v17, v18, v19, &type metadata for SpeakableString);
  sub_222CE2920(v29, v30, v31, v32);
  if (!v2)
  {
    v20 = v3[8];
    v21 = v3[9];
    v22 = v3[10];
    v29 = v3[7];
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v28 = 1;
    sub_222CE3060(v29, v20, v21, v22);
    OUTLINED_FUNCTION_6_2(v23, v24, v25, &type metadata for SpeakableString);
    sub_222CE2920(v29, v30, v31, v32);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D35CDC()
{
  result = qword_27D03C590;
  if (!qword_27D03C590)
  {
    result = swift_getWitnessTable("m=N_ĉ", &type metadata for DialogStringPair.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C590);
  }

  return result;
}

uint64_t DialogStringPair.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogStringPair.init(from:)(a1);
  return v2;
}

uint64_t DialogStringPair.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C598, &qword_222D576D8);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D35CDC();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogStringPair();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 56) = v11;
    *(v1 + 72) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D35FC0(uint64_t a1)
{
  *(a1 + 8) = sub_222D36028(&qword_27D03C5A0, protocol conformance descriptor for DialogStringPair);
  result = sub_222D36028(&qword_27D03C5A8, protocol conformance descriptor for DialogStringPair);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D36028(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogStringPair();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D36068@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogStringPair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D3650C()
{
  result = qword_27D03C5B0;
  if (!qword_27D03C5B0)
  {
    result = swift_getWitnessTable(a5N, &type metadata for DialogStringPair.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5B0);
  }

  return result;
}

unint64_t sub_222D36564()
{
  result = qword_27D03C5B8;
  if (!qword_27D03C5B8)
  {
    result = swift_getWitnessTable(byte_222D577CC, &type metadata for DialogStringPair.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5B8);
  }

  return result;
}

unint64_t sub_222D365BC()
{
  result = qword_27D03C5C0;
  if (!qword_27D03C5C0)
  {
    result = swift_getWitnessTable(byte_222D577F4, &type metadata for DialogStringPair.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5C0);
  }

  return result;
}

uint64_t sub_222D36690()
{
  type metadata accessor for DialogPercent();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogPercent.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t DialogPercent.Builder.__deallocating_deinit()
{
  sub_222CE2920(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D367AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49(0x676E697274536F74, 0xE800000000000000) & 1) != 0)
  {
    v7 = 0x676E697274536F74;
    v8 = 0xE800000000000000;
    goto LABEL_14;
  }

  v9 = 0x8000000222D5C780;
  v10 = a1 == 0xD000000000000011 && 0x8000000222D5C780 == a2;
  if (v10 || (OUTLINED_FUNCTION_49(0xD000000000000011, 0x8000000222D5C780) & 1) != 0)
  {
    v7 = 0xD000000000000011;
LABEL_13:
    v8 = v9;
LABEL_14:
    sub_222CFA468(v7, v8);
    if (v14)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v11 = swift_allocObject();
      *a3 = v11;
      v11[2] = v13;
      v11[3] = v14;
      v11[4] = v15;
      v11[5] = v16;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  v9 = 0xED00007368746E65;
  v12 = a1 == 0x546F54646E756F72 && a2 == 0xED00007368746E65;
  if (v12 || (OUTLINED_FUNCTION_49(0x546F54646E756F72, 0xED00007368746E65) & 1) != 0)
  {
    v7 = 0x546F54646E756F72;
    goto LABEL_13;
  }

  sub_222D1C028(a1, a2, a3);
}

uint64_t DialogPercent.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogPercent.init(from:)(a1);
}

uint64_t DialogPercent.init(from:)(void *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogPercent.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static SirikitDeviceState.current()()
{
  type metadata accessor for SirikitDeviceState();
  sub_222D5249C();
  return SirikitDeviceState.__allocating_init(from:)(v1);
}

uint64_t SirikitDeviceState.__allocating_init(from:with:)(void *a1, uint64_t a2)
{
  sub_222CE3120(a1, v9);
  v4 = OUTLINED_FUNCTION_1_17(0, v9, a2);
  sub_222CDD130(v9, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v6 = v5(v4);
  sub_222D5246C();
  OUTLINED_FUNCTION_3_6();
  (*(v7 + 8))(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:)(uint64_t a1)
{
  sub_222D5246C();
  OUTLINED_FUNCTION_3_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_17();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_222D5245C();
  OUTLINED_FUNCTION_1_17(a1, v10, v1);
  v5 = OUTLINED_FUNCTION_5_13();
  v6(v5);
  sub_222CDD130(v10, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v8 = v7(v2);

  return v8;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_222CE3120(a2, v11);
  v6 = OUTLINED_FUNCTION_1_17(a1, v11, a3);
  sub_222CDD130(v11, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v8 = v7(v6);

  sub_222D5246C();
  OUTLINED_FUNCTION_3_6();
  (*(v9 + 8))(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:companionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_222CE6C78(a1, a2, a3, 2, a4, a5);

  OUTLINED_FUNCTION_2_17();
  v9 = v8(v7);

  sub_222D5246C();
  OUTLINED_FUNCTION_3_6();
  (*(v10 + 8))(a3);
  sub_222CDD130(a2, &qword_27D03C438, &unk_222D56DE0);
  return v9;
}

__n128 sub_222D36FDC(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 22), a2);
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v8 = a1[1];
  *(v2 + 11) = *a1;
  *(v2 + 12) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

__n128 sub_222D3705C(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 26), a2);
  v4 = v2[26];
  v5 = v2[27];
  v6 = v2[28];
  v7 = v2[29];
  v8 = a1[1];
  *(v2 + 13) = *a1;
  *(v2 + 14) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

__n128 sub_222D37120(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 34), a2);
  v4 = v2[34];
  v5 = v2[35];
  v6 = v2[36];
  v7 = v2[37];
  v8 = a1[1];
  *(v2 + 17) = *a1;
  *(v2 + 18) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

__n128 sub_222D371A0(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 38), a2);
  v4 = v2[38];
  v5 = v2[39];
  v6 = v2[40];
  v7 = v2[41];
  v8 = a1[1];
  *(v2 + 19) = *a1;
  *(v2 + 20) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

__n128 sub_222D37264(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 42), a2);
  v4 = v2[42];
  v5 = v2[43];
  v6 = v2[44];
  v7 = v2[45];
  v8 = a1[1];
  *(v2 + 21) = *a1;
  *(v2 + 22) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

double sub_222D372EC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_222D3732C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

__n128 sub_222D373BC(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 46), a2);
  v4 = v2[46];
  v5 = v2[47];
  v6 = v2[48];
  v7 = v2[49];
  v8 = a1[1];
  *(v2 + 23) = *a1;
  *(v2 + 24) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

uint64_t DialogLocationAddress.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  bzero((v0 + 16), 0x180uLL);
  return v0;
}

void sub_222D374A8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 22), v5);
  v1[22] = v0;
  v1[23] = v2;
  v1[24] = v3;
  v1[25] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37500()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 22), v5);
  v1[22] = v2;
  v1[23] = v0;
  v1[24] = v3;
  v1[25] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37574()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 26), v5);
  v1[26] = v0;
  v1[27] = v2;
  v1[28] = v3;
  v1[29] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D375CC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 26), v5);
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = v3;
  v1[29] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37640()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 34), v5);
  v1[34] = v0;
  v1[35] = v2;
  v1[36] = v3;
  v1[37] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37698()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 34), v5);
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = v3;
  v1[37] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D3770C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 38), v5);
  v1[38] = v0;
  v1[39] = v2;
  v1[40] = v3;
  v1[41] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37764()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 38), v5);
  v1[38] = v2;
  v1[39] = v0;
  v1[40] = v3;
  v1[41] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D377D8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 42), v5);
  v1[42] = v0;
  v1[43] = v2;
  v1[44] = v3;
  v1[45] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37830()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 42), v5);
  v1[42] = v2;
  v1[43] = v0;
  v1[44] = v3;
  v1[45] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D378A4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_67((v1 + 46), v5);
  v1[46] = v0;
  v1[47] = v2;
  v1[48] = v3;
  v1[49] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D378FC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67((v1 + 46), v5);
  v1[46] = v2;
  v1[47] = v0;
  v1[48] = v3;
  v1[49] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D37970()
{
  type metadata accessor for DialogLocationAddress();
  v0 = swift_allocObject();

  DialogLocationAddress.init(builder:)(v1);
  return v0;
}

uint64_t DialogLocationAddress.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_22_7();
  v2 = swift_allocObject();
  DialogLocationAddress.init(builder:)(a1);
  return v2;
}

uint64_t *DialogLocationAddress.Builder.deinit()
{
  sub_222CE2920(v0[2], v0[3], v0[4], v0[5]);
  sub_222CE2920(v0[6], v0[7], v0[8], v0[9]);
  sub_222CE2920(v0[10], v0[11], v0[12], v0[13]);
  sub_222CE2920(v0[14], v0[15], v0[16], v0[17]);
  sub_222CE2920(v0[18], v0[19], v0[20], v0[21]);
  sub_222CE2920(v0[22], v0[23], v0[24], v0[25]);
  sub_222CE2920(v0[26], v0[27], v0[28], v0[29]);
  sub_222CE2920(v0[30], v0[31], v0[32], v0[33]);
  sub_222CE2920(v0[34], v0[35], v0[36], v0[37]);
  sub_222CE2920(v0[38], v0[39], v0[40], v0[41]);
  sub_222CE2920(v0[42], v0[43], v0[44], v0[45]);
  sub_222CE2920(v0[46], v0[47], v0[48], v0[49]);
  return v0;
}

uint64_t DialogLocationAddress.Builder.__deallocating_deinit()
{
  DialogLocationAddress.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 400, 7);
}

void *DialogLocationAddress.init(builder:)(void *a1)
{
  v1[2] = 0;
  OUTLINED_FUNCTION_25((a1 + 2), v63);
  v50 = a1[3];
  v51 = a1[2];
  v48 = a1[5];
  v49 = a1[4];
  v1[3] = v51;
  v1[4] = v50;
  v1[5] = v49;
  v1[6] = v48;
  OUTLINED_FUNCTION_25((a1 + 6), v62);
  v46 = a1[7];
  v47 = a1[6];
  v44 = a1[9];
  v45 = a1[8];
  v1[7] = v47;
  v1[8] = v46;
  v1[9] = v45;
  v1[10] = v44;
  OUTLINED_FUNCTION_25((a1 + 10), v61);
  v42 = a1[11];
  v43 = a1[10];
  v40 = a1[13];
  v41 = a1[12];
  v1[11] = v43;
  v1[12] = v42;
  v1[13] = v41;
  v1[14] = v40;
  OUTLINED_FUNCTION_25((a1 + 14), v60);
  v38 = a1[15];
  v39 = a1[14];
  v36 = a1[17];
  v37 = a1[16];
  v1[15] = v39;
  v1[16] = v38;
  v1[17] = v37;
  v1[18] = v36;
  OUTLINED_FUNCTION_25((a1 + 18), v59);
  v34 = a1[19];
  v35 = a1[18];
  v32 = a1[21];
  v33 = a1[20];
  v1[19] = v35;
  v1[20] = v34;
  v1[21] = v33;
  v1[22] = v32;
  OUTLINED_FUNCTION_25((a1 + 22), v58);
  v30 = a1[23];
  v31 = a1[22];
  v28 = a1[25];
  v29 = a1[24];
  v1[23] = v31;
  v1[24] = v30;
  v1[25] = v29;
  v1[26] = v28;
  OUTLINED_FUNCTION_25((a1 + 26), v57);
  v26 = a1[27];
  v27 = a1[26];
  v24 = a1[29];
  v25 = a1[28];
  v1[27] = v27;
  v1[28] = v26;
  v1[29] = v25;
  v1[30] = v24;
  OUTLINED_FUNCTION_25((a1 + 30), v56);
  v22 = a1[31];
  v23 = a1[30];
  v20 = a1[33];
  v21 = a1[32];
  v1[31] = v23;
  v1[32] = v22;
  v1[33] = v21;
  v1[34] = v20;
  OUTLINED_FUNCTION_25((a1 + 34), v55);
  v18 = a1[35];
  v19 = a1[34];
  v16 = a1[37];
  v17 = a1[36];
  v1[35] = v19;
  v1[36] = v18;
  v1[37] = v17;
  v1[38] = v16;
  OUTLINED_FUNCTION_25((a1 + 38), v54);
  v14 = a1[39];
  v15 = a1[38];
  v12 = a1[41];
  v13 = a1[40];
  v1[39] = v15;
  v1[40] = v14;
  v1[41] = v13;
  v1[42] = v12;
  OUTLINED_FUNCTION_25((a1 + 42), v53);
  v3 = a1[42];
  v4 = a1[43];
  v5 = a1[44];
  v6 = a1[45];
  v1[43] = v3;
  v1[44] = v4;
  v1[45] = v5;
  v1[46] = v6;
  OUTLINED_FUNCTION_25((a1 + 46), v52);
  v7 = a1[46];
  v8 = a1[47];
  v9 = a1[48];
  v10 = a1[49];
  sub_222CE3060(v51, v50, v49, v48);
  sub_222CE3060(v47, v46, v45, v44);
  sub_222CE3060(v43, v42, v41, v40);
  sub_222CE3060(v39, v38, v37, v36);
  sub_222CE3060(v35, v34, v33, v32);
  sub_222CE3060(v31, v30, v29, v28);
  sub_222CE3060(v27, v26, v25, v24);
  sub_222CE3060(v23, v22, v21, v20);
  sub_222CE3060(v19, v18, v17, v16);
  sub_222CE3060(v15, v14, v13, v12);
  sub_222CE3060(v3, v4, v5, v6);
  sub_222CE3060(v7, v8, v9, v10);

  v1[47] = v7;
  v1[48] = v8;
  v1[49] = v9;
  v1[50] = v10;
  return v1;
}

double sub_222D37E30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (!v5 && (OUTLINED_FUNCTION_49(1701667182, 0xE400000000000000) & 1) == 0)
  {
    v14 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v14 || (OUTLINED_FUNCTION_49(0x7972746E756F63, 0xE700000000000000) & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v15 = OUTLINED_FUNCTION_26_5();
      v17 = a1 == v15 && a2 == v16;
      if (v17 || (OUTLINED_FUNCTION_49(v15, v16) & 1) != 0)
      {
        v8 = v3[12];
        if (v8)
        {
          v10 = v3[13];
          v9 = v3[14];
          v11 = v3[11];
          goto LABEL_8;
        }
      }

      else
      {
        v18 = a1 == 0xD000000000000012 && 0x8000000222D59CB0 == a2;
        if (v18 || (OUTLINED_FUNCTION_49(0xD000000000000012, 0x8000000222D59CB0) & 1) != 0)
        {
          v8 = v3[16];
          if (v8)
          {
            v10 = v3[17];
            v9 = v3[18];
            v11 = v3[15];
            goto LABEL_8;
          }
        }

        else
        {
          v19 = a1 == 0xD000000000000016 && 0x8000000222D59CD0 == a2;
          if (v19 || (OUTLINED_FUNCTION_49(0xD000000000000016, 0x8000000222D59CD0) & 1) != 0)
          {
            v8 = v3[20];
            if (v8)
            {
              v10 = v3[21];
              v9 = v3[22];
              v11 = v3[19];
              goto LABEL_8;
            }
          }

          else
          {
            v20 = a1 == 0xD000000000000015 && 0x8000000222D59CF0 == a2;
            if (v20 || (OUTLINED_FUNCTION_49(0xD000000000000015, 0x8000000222D59CF0) & 1) != 0)
            {
              v8 = v3[24];
              if (v8)
              {
                v10 = v3[25];
                v9 = v3[26];
                v11 = v3[23];
                goto LABEL_8;
              }
            }

            else
            {
              v21 = OUTLINED_FUNCTION_25_5();
              v23 = a1 == v21 && a2 == v22;
              if (v23 || (OUTLINED_FUNCTION_49(v21, v22) & 1) != 0)
              {
                v8 = v3[28];
                if (v8)
                {
                  v10 = v3[29];
                  v9 = v3[30];
                  v11 = v3[27];
                  goto LABEL_8;
                }
              }

              else
              {
                v24 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                if (v24 || (OUTLINED_FUNCTION_49(0x7974696C61636F6CLL, 0xE800000000000000) & 1) != 0)
                {
                  v8 = v3[32];
                  if (v8)
                  {
                    v10 = v3[33];
                    v9 = v3[34];
                    v11 = v3[31];
                    goto LABEL_8;
                  }
                }

                else
                {
                  v25 = a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000;
                  if (v25 || (OUTLINED_FUNCTION_49(0x65646F4374736F70, 0xE800000000000000) & 1) != 0)
                  {
                    v8 = v3[36];
                    if (v8)
                    {
                      v10 = v3[37];
                      v9 = v3[38];
                      v11 = v3[35];
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v26 = OUTLINED_FUNCTION_24_6();
                    v28 = a1 == v26 && a2 == v27;
                    if (v28 || (OUTLINED_FUNCTION_49(v26, v27) & 1) != 0)
                    {
                      v8 = v3[40];
                      if (v8)
                      {
                        v10 = v3[41];
                        v9 = v3[42];
                        v11 = v3[39];
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v29 = OUTLINED_FUNCTION_23_7();
                      v31 = a1 == v29 && a2 == v30;
                      if (v31 || (OUTLINED_FUNCTION_49(v29, v30) & 1) != 0)
                      {
                        v8 = v3[44];
                        if (v8)
                        {
                          v10 = v3[45];
                          v9 = v3[46];
                          v11 = v3[43];
                          goto LABEL_8;
                        }
                      }

                      else
                      {
                        v32 = a1 == 0xD000000000000010 && 0x8000000222D59D40 == a2;
                        if (v32 || (OUTLINED_FUNCTION_49(0xD000000000000010, 0x8000000222D59D40) & 1) != 0)
                        {
                          v8 = v3[48];
                          if (v8)
                          {
                            v10 = v3[49];
                            v9 = v3[50];
                            v11 = v3[47];
                            goto LABEL_8;
                          }
                        }

                        else
                        {
                          v33 = a1 == 0x467972746E756F63 && a2 == 0xEF65646F436D6F72;
                          if (v33 || (OUTLINED_FUNCTION_49(0x467972746E756F63, 0xEF65646F436D6F72) & 1) != 0)
                          {
                            sub_222CF9FA8();
                            if (v36)
                            {
                              *(a3 + 24) = &type metadata for SpeakableString;
                              v34 = swift_allocObject();
                              *a3 = v34;
                              v34[2] = v35;
                              v34[3] = v36;
                              v34[4] = v37;
                              v34[5] = v38;
                              return result;
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

LABEL_95:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_95;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

unint64_t sub_222D38234(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222D38288(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = OUTLINED_FUNCTION_26_5();
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = OUTLINED_FUNCTION_25_5();
      break;
    case 7:
      result = 0x7974696C61636F6CLL;
      break;
    case 8:
      result = 0x65646F4374736F70;
      break;
    case 9:
      result = OUTLINED_FUNCTION_24_6();
      break;
    case 10:
      result = OUTLINED_FUNCTION_23_7();
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D38408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D38234(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D38438@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D38288(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D38480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D38280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D384B4(uint64_t a1)
{
  v2 = sub_222D3895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D384F0(uint64_t a1)
{
  v2 = sub_222D3895C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogLocationAddress.deinit()
{
  sub_222CE2920(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_222CE2920(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_222CE2920(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_222CE2920(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_222CE2920(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_222CE2920(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  sub_222CE2920(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  sub_222CE2920(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272));
  sub_222CE2920(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));
  sub_222CE2920(*(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_222CE2920(*(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368));
  sub_222CE2920(*(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400));
  return v0;
}

uint64_t DialogLocationAddress.__deallocating_deinit()
{
  DialogLocationAddress.deinit();
  v0 = OUTLINED_FUNCTION_22_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D38608(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5D0, &qword_222D57960);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v99 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3895C();
  sub_222D531AC();
  v11 = OUTLINED_FUNCTION_24_0(v3[3], v3[4], v3[5], v3[6]);
  v100 = 0;
  sub_222CE3060(v11, v12, v13, v14);
  v18 = sub_222CF2084(v15, v16, v17);
  OUTLINED_FUNCTION_3_8(v18, v19, v20, &type metadata for SpeakableString);
  if (!v2)
  {
    OUTLINED_FUNCTION_26();
    v21 = OUTLINED_FUNCTION_24_0(v3[7], v3[8], v3[9], v3[10]);
    v100 = 1;
    sub_222CE3060(v21, v22, v23, v24);
    OUTLINED_FUNCTION_3_8(v25, v26, v27, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v28 = OUTLINED_FUNCTION_24_0(v3[11], v3[12], v3[13], v3[14]);
    v100 = 2;
    sub_222CE3060(v28, v29, v30, v31);
    OUTLINED_FUNCTION_3_8(v32, v33, v34, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v35 = OUTLINED_FUNCTION_24_0(v3[15], v3[16], v3[17], v3[18]);
    v100 = 3;
    sub_222CE3060(v35, v36, v37, v38);
    OUTLINED_FUNCTION_3_8(v39, v40, v41, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v42 = OUTLINED_FUNCTION_24_0(v3[19], v3[20], v3[21], v3[22]);
    v100 = 4;
    sub_222CE3060(v42, v43, v44, v45);
    OUTLINED_FUNCTION_3_8(v46, v47, v48, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v49 = OUTLINED_FUNCTION_24_0(v3[23], v3[24], v3[25], v3[26]);
    v100 = 5;
    sub_222CE3060(v49, v50, v51, v52);
    OUTLINED_FUNCTION_3_8(v53, v54, v55, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v56 = OUTLINED_FUNCTION_24_0(v3[27], v3[28], v3[29], v3[30]);
    v100 = 6;
    sub_222CE3060(v56, v57, v58, v59);
    OUTLINED_FUNCTION_3_8(v60, v61, v62, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v63 = OUTLINED_FUNCTION_24_0(v3[31], v3[32], v3[33], v3[34]);
    v100 = 7;
    sub_222CE3060(v63, v64, v65, v66);
    OUTLINED_FUNCTION_3_8(v67, v68, v69, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v70 = OUTLINED_FUNCTION_24_0(v3[35], v3[36], v3[37], v3[38]);
    v100 = 8;
    sub_222CE3060(v70, v71, v72, v73);
    OUTLINED_FUNCTION_3_8(v74, v75, v76, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v78 = OUTLINED_FUNCTION_24_0(v3[39], v3[40], v3[41], v3[42]);
    v100 = 9;
    sub_222CE3060(v78, v79, v80, v81);
    OUTLINED_FUNCTION_3_8(v82, v83, v84, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v85 = OUTLINED_FUNCTION_24_0(v3[43], v3[44], v3[45], v3[46]);
    v100 = 10;
    sub_222CE3060(v85, v86, v87, v88);
    OUTLINED_FUNCTION_3_8(v89, v90, v91, &type metadata for SpeakableString);
    OUTLINED_FUNCTION_26();
    v92 = OUTLINED_FUNCTION_24_0(v3[47], v3[48], v3[49], v3[50]);
    v100 = 11;
    sub_222CE3060(v92, v93, v94, v95);
    OUTLINED_FUNCTION_3_8(v96, v97, v98, &type metadata for SpeakableString);
  }

  OUTLINED_FUNCTION_26();
  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D3895C()
{
  result = qword_27D03C5D8;
  if (!qword_27D03C5D8)
  {
    result = swift_getWitnessTable(aN_1, &type metadata for DialogLocationAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5D8);
  }

  return result;
}

uint64_t DialogLocationAddress.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_22_7();
  v2 = swift_allocObject();
  DialogLocationAddress.init(from:)(a1);
  return v2;
}

uint64_t DialogLocationAddress.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5E0, &qword_222D57968);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3895C();
  v5 = sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogLocationAddress();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 24) = v11;
    *(v1 + 40) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 56) = v11;
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 88) = v11;
    *(v1 + 104) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 120) = v11;
    *(v1 + 136) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 152) = v11;
    *(v1 + 168) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 184) = v11;
    *(v1 + 200) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 216) = v11;
    *(v1 + 232) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 248) = v11;
    *(v1 + 264) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 280) = v11;
    *(v1 + 296) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 312) = v11;
    *(v1 + 328) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 344) = v11;
    *(v1 + 360) = v12;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    v9 = OUTLINED_FUNCTION_4_7();
    v10(v9);
    *(v1 + 376) = v11;
    *(v1 + 392) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D390A0(uint64_t a1)
{
  *(a1 + 8) = sub_222D39108(&qword_27D03C5E8, protocol conformance descriptor for DialogLocationAddress);
  result = sub_222D39108(&qword_27D03BE68, "%$N_ȉ");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D39108(unint64_t *a1, const char *a2, ...)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogLocationAddress();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D39148@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogLocationAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogLocationAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D39F38()
{
  result = qword_27D03C5F0;
  if (!qword_27D03C5F0)
  {
    result = swift_getWitnessTable(byte_222D57BF4, &type metadata for DialogLocationAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5F0);
  }

  return result;
}

unint64_t sub_222D39F90()
{
  result = qword_27D03C5F8;
  if (!qword_27D03C5F8)
  {
    result = swift_getWitnessTable("u4N_", &type metadata for DialogLocationAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C5F8);
  }

  return result;
}

unint64_t sub_222D39FE8()
{
  result = qword_27D03C600;
  if (!qword_27D03C600)
  {
    result = swift_getWitnessTable(byte_222D57B54, &type metadata for DialogLocationAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C600);
  }

  return result;
}

double DialogTimeZone.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

double DialogTimeZone.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t sub_222D3A094()
{
  type metadata accessor for DialogTimeZone();
  v0 = swift_allocObject();

  DialogTimeZone.init(builder:)(v1);
  return v0;
}

uint64_t DialogTimeZone.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogTimeZone.init(builder:)(a1);
  return v2;
}

uint64_t DialogTimeZone.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2, v3, v4);
  return v0;
}

uint64_t DialogTimeZone.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2, v3, v4);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void DialogTimeZone.timeZone.getter(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_222CE3060(v2, v3, v4, v5);
}

uint64_t DialogTimeZone.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_222CE3060(v4, v5, v6, v7);

  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  return v1;
}

void sub_222D3A274(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_49(1935893875, 0xE400000000000000) & 1) != 0)
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v8 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
  }

  else
  {
    v9 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v9 || (OUTLINED_FUNCTION_49(0x656E6F5A656D6974, 0xE800000000000000) & 1) != 0)
    {
      v10 = *(v3 + 48);
      if (!v10)
      {
        goto LABEL_7;
      }

      v12 = *(v3 + 56);
      v11 = *(v3 + 64);
      v13 = *(v3 + 40);
      *(a3 + 24) = &type metadata for SpeakableString;
      v14 = swift_allocObject();
      *a3 = v14;
      v14[2] = v13;
      v14[3] = v10;
      v14[4] = v12;
      v14[5] = v11;
    }

    else
    {
      v15 = a1 == 0x685374616D726F66 && a2 == 0xEB0000000074726FLL;
      if (!v15 && (OUTLINED_FUNCTION_49(0x685374616D726F66, 0xEB0000000074726FLL) & 1) == 0)
      {
        v17 = a1 == 0x6F4C74616D726F66 && a2 == 0xEA0000000000676ELL;
        if (!v17 && (OUTLINED_FUNCTION_49(0x6F4C74616D726F66, 0xEA0000000000676ELL) & 1) == 0)
        {
          v18 = a1 == 0xD000000000000012 && 0x8000000222D5C8C0 == a2;
          if (!v18 && (OUTLINED_FUNCTION_49(0xD000000000000012, 0x8000000222D5C8C0) & 1) == 0)
          {
            v19 = a1 == 0xD000000000000011 && 0x8000000222D5C8E0 == a2;
            if (!v19 && (OUTLINED_FUNCTION_49(0xD000000000000011, 0x8000000222D5C8E0) & 1) == 0)
            {
              goto LABEL_7;
            }
          }
        }
      }

      sub_222CFD850();
      if (!v21)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = &type metadata for SpeakableString;
      v16 = swift_allocObject();
      *a3 = v16;
      v16[2] = v20;
      v16[3] = v21;
      v16[4] = v22;
      v16[5] = v23;
    }
  }
}

uint64_t sub_222D3A568(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

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

uint64_t sub_222D3A5BC(char a1)
{
  if (a1)
  {
    return 0x656E6F5A656D6974;
  }

  else
  {
    return 1935893875;
  }
}

uint64_t sub_222D3A610@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D3A568(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D3A640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D3A5BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D3A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D3A568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D3A69C(uint64_t a1)
{
  v2 = sub_222D3A8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3A6D8(uint64_t a1)
{
  v2 = sub_222D3A8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogTimeZone.__deallocating_deinit()
{
  DialogTimeZone.deinit();
  v0 = OUTLINED_FUNCTION_2_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D3A76C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C608, &qword_222D57C70);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3A8F8();
  sub_222D531AC();
  LOBYTE(v19) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v11 = v3[6];
    v12 = v3[7];
    v13 = v3[8];
    v19 = v3[5];
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v18[15] = 1;
    sub_222CE3060(v19, v11, v12, v13);
    sub_222CF2084(v14, v15, v16);
    sub_222D52FBC();
    sub_222CE2920(v19, v20, v21, v22);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_222D3A8F8()
{
  result = qword_27D03C610;
  if (!qword_27D03C610)
  {
    result = swift_getWitnessTable(byte_222D57E54, &type metadata for DialogTimeZone.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C610);
  }

  return result;
}

uint64_t DialogTimeZone.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogTimeZone.init(from:)(a1);
  return v2;
}

uint64_t DialogTimeZone.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C618, &qword_222D57C78);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3A8F8();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogTimeZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v10 = sub_222D52EFC();
    *(v1 + 24) = v10;
    *(v1 + 32) = v11 & 1;
    v16 = 1;
    sub_222D0099C(v10, v11, v12);
    sub_222D52F1C();
    (*(v6 + 8))(v9, v4);
    v14 = v15[1];
    *(v1 + 40) = v15[0];
    *(v1 + 56) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D3ABD4(uint64_t a1)
{
  *(a1 + 8) = sub_222D3AC3C(&qword_27D03C620, protocol conformance descriptor for DialogTimeZone);
  result = sub_222D3AC3C(&qword_27D03BE60, protocol conformance descriptor for DialogTimeZone);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D3AC3C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogTimeZone();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3AC7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogTimeZone.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D3B1A4()
{
  result = qword_27D03C628;
  if (!qword_27D03C628)
  {
    result = swift_getWitnessTable(byte_222D57E2C, &type metadata for DialogTimeZone.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C628);
  }

  return result;
}

unint64_t sub_222D3B1FC()
{
  result = qword_27D03C630;
  if (!qword_27D03C630)
  {
    result = swift_getWitnessTable(a2n, &type metadata for DialogTimeZone.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C630);
  }

  return result;
}

unint64_t sub_222D3B254()
{
  result = qword_27D03C638;
  if (!qword_27D03C638)
  {
    result = swift_getWitnessTable(aMN_1, &type metadata for DialogTimeZone.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C638);
  }

  return result;
}

uint64_t sub_222D3B2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    for (i = a1 + 32; ; i += 32)
    {
      sub_222CE4EC0(i, v43);
      sub_222CE4EC0(v43, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE8, &qword_222D53BE0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_222CE2D34(&v33, &v40);
      v6 = v41;
      v5 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, v41);
      v7 = (*(v5 + 24))(v6, v5);
      *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      *&v33 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
        v3 = v28;
      }

      v8 = *(v3 + 16);
      v1 = v8 + 1;
      if (v8 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_10();
        v3 = v29;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      *(v3 + 16) = v1;
      sub_222CE0BC0(&v33, (v3 + 32 * v8 + 32));
      __swift_destroy_boxed_opaque_existential_1Tm(&v40);
LABEL_20:
      if (!--v2)
      {
        return v3;
      }
    }

    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_222D3B520(&v33);
    sub_222CE4EC0(v43, &v40);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
    if (OUTLINED_FUNCTION_4_18(v9, v10, v11, v12, v13, v14, v15, v16, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40))
    {
      v17 = sub_222D3B2A8(v33);
    }

    else
    {
      sub_222CE4EC0(v43, &v40);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      if (!OUTLINED_FUNCTION_4_18(v18, v19, v20, v21, v22, v23, v24, v25, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40))
      {
        sub_222CE4EC0(v43, &v40);
        goto LABEL_15;
      }

      v17 = sub_222CEE42C(v33);
    }

    v26 = v17;

    v41 = v1;
    *&v40 = v26;
LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_15();
      v3 = v30;
    }

    v27 = *(v3 + 16);
    v1 = v27 + 1;
    if (v27 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_7_10();
      v3 = v31;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    *(v3 + 16) = v1;
    sub_222CE0BC0(&v40, (v3 + 32 * v27 + 32));
    goto LABEL_20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_222D3B520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE0, &qword_222D53BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D3B588(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_6();
}

void sub_222D3B5CC()
{
  OUTLINED_FUNCTION_19_7();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C670, &qword_222D58040);
    v2 = OUTLINED_FUNCTION_10_9();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_21_6();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  v10 = 40;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_222D3DDD0(*(v0 + 48) + v12 * v10, __src);
    sub_222CE4EC0(*(v0 + 56) + 32 * v12, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v35 = __src[0];
    v36 = *&__src[1];
    sub_222CE0BC0(&__dst[5], &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDA8, &unk_222D55070);
    swift_dynamicCast();
    v39 = v37;
    v40 = v38;
    sub_222D52D8C();
    OUTLINED_FUNCTION_14_6();
    if (((v15 << v14) & ~*(v8 + 8 * v13)) == 0)
    {
      OUTLINED_FUNCTION_8_11();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_7_11();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_17();
LABEL_18:
    OUTLINED_FUNCTION_6_16();
    *(v8 + v20) |= v21;
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_9_11(v22, v23, v24, v25, v26, v27, v28, v29, v30, v35, v31, v36);
    v34 = (v33 + 32 * v32);
    *v34 = v39;
    v34[1] = v40;
    OUTLINED_FUNCTION_12_5();
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t CATValidatorStatus.hashValue.getter()
{
  v1 = *v0;
  sub_222D5313C();
  MEMORY[0x223DCBC20](v1);
  return sub_222D5315C();
}

uint64_t CATValidatorEntry.text.setter()
{
  OUTLINED_FUNCTION_115();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CATValidatorEntry.formattedText.setter()
{
  OUTLINED_FUNCTION_115();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CATValidatorResult.errors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CATValidatorResult.warnings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CATValidatorResult.catId.setter()
{
  OUTLINED_FUNCTION_115();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t CATValidatorResult.locale.setter()
{
  OUTLINED_FUNCTION_115();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void static CATValidator.validate(bundle:catId:locale:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a2;
  v50 = a4;
  v11 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  sub_222D33854(a1, &selRef_resourcePath);
  if (v20)
  {
    v46 = a3;
    v47 = a5;
    v48 = v6;
    v21 = [objc_allocWithZone(MEMORY[0x277D052A8]) init];
    sub_222D520BC();
    sub_222D520DC();
    v22 = *(v13 + 8);
    v22(v17, v11);
    v23 = sub_222D520FC();
    v25 = v24;
    v26 = v11;
    v27 = v21;
    v22(v19, v26);
    sub_222D3DA0C(v23, v25, v21);
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v28 = qword_280D3DB80;
    v29 = sub_222D52C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_222D53970;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v34 = sub_222CDDCB0(v30, v32, v33);
    v35 = v49;
    v37 = v46;
    v36 = v47;
    *(v30 + 32) = v49;
    *(v30 + 40) = v37;
    *(v30 + 96) = v31;
    *(v30 + 104) = v34;
    v38 = v50;
    *(v30 + 64) = v34;
    *(v30 + 72) = v38;
    *(v30 + 80) = v36;

    sub_222D5280C("CATValidator: Validating CAT with ID [%@] for locale [%@]", 57, 2, &dword_222CDA000, v28, v29, v30);

    v39 = sub_222D3DA70(v35, v37, v38, v36, v27);
    if (v39)
    {
      v40 = v39;

      sub_222D3BF48(v40, v35, v37, v38, v36, &v51);

      v41 = v53;
      v42 = v54;
      v43 = v55;
      v56 = 0;
      *a6 = v51;
      *(a6 + 8) = v52;
      *(a6 + 24) = v41;
      *(a6 + 40) = v42;
      *(a6 + 48) = v43;
      *(a6 + 56) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CATResultProvider();
    v44 = sub_222D0B314(0xD00000000000001FLL, 0x8000000222D5C960, 0x6C616E7265746E69, 0xEE00726F7272652DLL);
    LOBYTE(v51) = 1;
    *a6 = v44;
    *(a6 + 56) = 1;
  }
}

uint64_t sub_222D3BF48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_222D3D614(a1, &v56);
  v41 = v56;
  v44 = a3;

  result = sub_222D3D9B0(a1, &selRef_errors);
  if (!result)
  {
    goto LABEL_32;
  }

  v11 = result;
  result = sub_222D28280(result);
  v39 = a4;
  v40 = a5;
  v45 = a1;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = 0;
    v47 = v11 & 0xC000000000000001;
    v55 = MEMORY[0x277D84F90];
    v49 = result;
    v51 = v11;
    do
    {
      if (v47)
      {
        v13 = MEMORY[0x223DCB8A0](v12, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_222D3D760(v13, &v56);
      v15 = v56;
      v16 = v57;
      v17 = v58;
      v18 = v59;
      v20 = v60;
      v19 = v61;
      v53 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222D285DC();
        v55 = v23;
      }

      v21 = *(v55 + 16);
      if (v21 >= *(v55 + 24) >> 1)
      {
        sub_222D285DC();
        v55 = v24;
      }

      ++v12;

      *(v55 + 16) = v21 + 1;
      v22 = (v55 + 56 * v21);
      v22[4] = v15;
      v22[5] = v16;
      v22[6] = v17;
      v22[7] = v18;
      v22[8] = v20;
      v22[9] = v19;
      v11 = v51;
      v22[10] = v53;
    }

    while (v49 != v12);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  result = sub_222D3D9B0(v45, &selRef_warnings);
  if (result)
  {
    v25 = result;
    result = sub_222D28280(result);
    if (!result)
    {
      v27 = MEMORY[0x277D84F90];
LABEL_29:

      *a6 = v41;
      *(a6 + 8) = v55;
      *(a6 + 16) = v27;
      *(a6 + 24) = a2;
      *(a6 + 32) = v44;
      *(a6 + 40) = v39;
      *(a6 + 48) = v40;
      return result;
    }

    if (result >= 1)
    {
      v26 = 0;
      v46 = v25 & 0xC000000000000001;
      v27 = MEMORY[0x277D84F90];
      v48 = result;
      v50 = v25;
      do
      {
        if (v46)
        {
          v28 = MEMORY[0x223DCB8A0](v26, v25);
        }

        else
        {
          v28 = *(v25 + 8 * v26 + 32);
        }

        v29 = v28;
        sub_222D3D760(v28, &v56);
        v30 = v57;
        v32 = v58;
        v31 = v59;
        v33 = v60;
        v34 = v61;
        v52 = v62;
        v54 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_222D285DC();
          v27 = v37;
        }

        v35 = *(v27 + 16);
        if (v35 >= *(v27 + 24) >> 1)
        {
          sub_222D285DC();
          v27 = v38;
        }

        ++v26;

        *(v27 + 16) = v35 + 1;
        v36 = (v27 + 56 * v35);
        v36[4] = v54;
        v36[5] = v30;
        v36[6] = v32;
        v36[7] = v31;
        v36[8] = v33;
        v36[9] = v34;
        v36[10] = v52;
        v25 = v50;
      }

      while (v48 != v26);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t *static CATValidator.validateAll(templateDir:catIdExceptions:)(unint64_t **a1, uint64_t a2)
{
  v140 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v3 - 8);
  v149 = &v128[-v4];
  v136 = sub_222D5209C();
  OUTLINED_FUNCTION_113();
  v135 = v5;
  MEMORY[0x28223BE20](v6);
  v150 = &v128[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v138 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v151 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v128[-v13];
  v15 = sub_222D520EC();
  v17 = v16;
  if (qword_280D3DB78 != -1)
  {
LABEL_75:
    OUTLINED_FUNCTION_0(&qword_280D3DB78);
  }

  v18 = qword_280D3DB80;
  v19 = sub_222D52C1C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v157 = xmmword_222D53980;
  *(v21 + 16) = xmmword_222D53980;
  *(v21 + 56) = MEMORY[0x277D837D0];
  v24 = sub_222CDDCB0(v21, v22, v23);
  *(v21 + 64) = v24;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;

  sub_222D5280C("CATValidator: Validating all CATs under templateDir [%@]", 56, 2, &dword_222CDA000, v18, v19, v21);

  v131 = a1;
  sub_222D520DC();
  v25 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C640, &qword_222D57EB0);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_2_19(v26);
  v27 = *MEMORY[0x277CBE8A8];
  *(v28 + 32) = *MEMORY[0x277CBE8A8];
  v29 = v27;
  v137 = v14;
  v30 = sub_222D52C0C();

  v141 = v8;
  if (v30)
  {
    v133 = v17;
    v132 = v30;
    sub_222D52BFC();
    v134 = 0;
    v144 = 0;
    v148 = (v138 + 32);
    v147 = v138 + 8;
    v145 = xmmword_222D53970;
    v146 = MEMORY[0x277D84F90];
    v156 = v18;
    v154 = v20;
    v155 = v24;
    v152 = v15;
    v31 = v149;
    OUTLINED_FUNCTION_13_7();
    while (1)
    {
      while (1)
      {
        sub_222D5208C();
        if (!v167)
        {
          (*(v135 + 8))(v150, v136);

          a1 = v137;
          if (!v134)
          {

            v17 = v133;
            goto LABEL_65;
          }

          v14 = v146;
          v148 = *(v146 + 16);
          if (!v148)
          {
            goto LABEL_67;
          }

          v96 = 0;
          v147 = v146 + 32;
          do
          {
            if (v96 >= v14[2])
            {
              goto LABEL_72;
            }

            v152 = v96;
            v97 = (v147 + 56 * v96);
            v99 = v97[1];
            v98 = v97[2];
            v100 = v97[5];
            v15 = v97[6];
            v101 = v97[3];
            v102 = v97[4];

            v153 = v98;

            v103 = sub_222D52C1C();
            v104 = swift_allocObject();
            *(v104 + 16) = v145;
            v105 = MEMORY[0x277D837D0];
            *(v104 + 56) = MEMORY[0x277D837D0];
            *(v104 + 64) = v24;
            *(v104 + 32) = v101;
            *(v104 + 40) = v102;
            *(v104 + 96) = v105;
            *(v104 + 104) = v24;
            *(v104 + 72) = v100;
            *(v104 + 80) = v15;

            sub_222D5280C("*** Validation errors for %@ (%@):", 34, 2, &dword_222CDA000, v18, v103, v104);

            v106 = v99[2];
            if (v106)
            {
              v149 = v15;
              v150 = v102;

              v151 = v99;
              v107 = v99 + 5;
              v108 = v155;
              do
              {
                v109 = v107[1];
                v110 = v107[2];

                v111 = sub_222D52C3C();
                v112 = OUTLINED_FUNCTION_3_0(v154);
                OUTLINED_FUNCTION_2_19(v112);
                v113[7] = MEMORY[0x277D837D0];
                v113[8] = v108;
                v113[4] = v109;
                v113[5] = v110;
                v18 = v156;

                sub_222D5280C("%@", 2, 2, &dword_222CDA000, v18, v111, v112);

                v107 += 7;
                --v106;
              }

              while (v106);

              v15 = v149;
            }

            v17 = *(v153 + 16);
            a1 = v154;
            v8 = "%@";
            if (v17)
            {
              v114 = v153 + 40;
              do
              {
                v115 = *(v114 + 8);
                v116 = *(v114 + 16);

                v117 = sub_222D52C4C();
                v15 = OUTLINED_FUNCTION_3_0(a1);
                OUTLINED_FUNCTION_2_19(v15);
                v118 = v155;
                v119[7] = MEMORY[0x277D837D0];
                v119[8] = v118;
                v119[4] = v115;
                v119[5] = v116;
                v18 = v156;

                sub_222D5280C("%@", 2, 2, &dword_222CDA000, v18, v117, v15);

                v114 += 56;
                --v17;
              }

              while (v17);
            }

            v96 = (v152->n128_u64 + 1);

            v24 = v155;
            v14 = v146;
          }

          while (v96 != v148);
          v8 = v141;
          goto LABEL_66;
        }

        if (swift_dynamicCast())
        {
          break;
        }

        __swift_storeEnumTagSinglePayload(v31, 1, 1, v8);
        sub_222D1A39C(v31);
      }

      __swift_storeEnumTagSinglePayload(v31, 0, 1, v8);
      (*v148)(v151, v31, v8);
      v32 = (sub_222D520AC() + 16);
      if (*v32)
      {
        v33 = &v32[2 * *v32];
        v34 = *v33;
        v35 = v33[1];
      }

      else
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      if ((sub_222D52AAC() & 1) != 0 || (sub_222D52AAC()) && (sub_222D52A9C() & 1) == 0)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_0_21();
      v37(v36, v8);
LABEL_41:
      v31 = v149;
    }

    v158 = v34;
    v143 = v35;
    v159 = v35;
    OUTLINED_FUNCTION_18_8();
    sub_222CE0BD0(v38, v39, v40);
    v41 = sub_222D52D3C();
    if (v41[2])
    {
      v14 = v41[4];
      v8 = v41[5];
    }

    else
    {
      v14 = 0;
      v8 = 0xE000000000000000;
    }

    a1 = v151;
    v42 = sub_222D520AC();
    if (!v42[2])
    {
      goto LABEL_73;
    }

    a1 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222D3DAE8();
      a1 = v93;
    }

    v43 = a1[2];
    if (!v43)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v139 = v14;
    v142 = v8;
    a1[2] = (v43 - 1);

    v166 = a1;
    a1 = &v166;
    sub_222D3D3EC();
    v44 = 0;
    v153 = v166[2];
    v45 = v166;
    v8 = (v166 + 5);
    v14 = MEMORY[0x277D84F90];
    while (v153 != v44)
    {
      if (v44 >= v45[2])
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v46 = *(v8 - 1);
      v47 = *v8;
      v48 = v46 == v17 && v47 == 0xE600000000000000;
      if (v48 || (sub_222D5305C() & 1) != 0)
      {
        break;
      }

      v158 = v46;
      v159 = v47;
      OUTLINED_FUNCTION_18_8();
      a1 = &v158;
      v49 = sub_222D52D3C();
      if (!*(v49 + 16))
      {
        goto LABEL_70;
      }

      v15 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222D3DAE8();
        v15 = v55;
      }

      v50 = v15[1].n128_u64[0];
      if (!v50)
      {
        goto LABEL_71;
      }

      v15[1].n128_u64[0] = v50 - 1;

      v158 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
      sub_222D3DAFC();
      a1 = sub_222D528DC();
      v52 = v51;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222D28358();
        v14 = v56;
      }

      v17 = v14[2];
      v53 = v14[3];
      if (v17 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_22_8(v53);
        sub_222D28358();
        v14 = v57;
      }

      v14[2] = v17 + 1;
      v54 = &v14[2 * v17];
      v54[4] = a1;
      v54[5] = v52;
      v8 += 16;
      ++v44;
      v15 = v152;
      OUTLINED_FUNCTION_13_7();
    }

    v165 = v14;
    sub_222D3D3EC();
    v158 = v165;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
    sub_222D3DAFC();
    v58 = sub_222D528DC();
    v60 = v59;

    v158 = v58;
    v159 = v60;
    MEMORY[0x28223BE20](v61);
    *&v128[-16] = &v158;
    v62 = v144;
    result = sub_222D3D900(sub_222CE9D68, &v128[-32], v140);
    v144 = v62;
    if (result)
    {

      v64 = OUTLINED_FUNCTION_0_21();
      v8 = v141;
      v65(v64, v141);

      v20 = v154;
LABEL_40:
      v24 = v155;
      goto LABEL_41;
    }

    v153 = v58;
    v20 = v154;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
    }

    else
    {
      ++v134;
      v66 = [objc_allocWithZone(MEMORY[0x277D052A8]) init];
      v130 = v66;
      v67 = sub_222D520FC();
      sub_222D3DA0C(v67, v68, v66);
      v129 = sub_222D52C1C();
      v69 = swift_allocObject();
      *(v69 + 16) = v145;
      v70 = MEMORY[0x277D837D0];
      v71 = v155;
      *(v69 + 56) = MEMORY[0x277D837D0];
      *(v69 + 64) = v71;
      *(v69 + 32) = v153;
      *(v69 + 40) = v60;
      *(v69 + 96) = v70;
      *(v69 + 104) = v71;
      v72 = v139;
      v73 = v142;
      *(v69 + 72) = v139;
      *(v69 + 80) = v73;

      sub_222D5280C("CATValidator: Validating CAT with ID [%@] for locale [%@]", 57, 2, &dword_222CDA000, v18, v129, v69);

      result = sub_222D3DA70(v153, v60, v72, v73, v130);
      if (result)
      {
        v74 = result;

        sub_222D3BF48(v74, v153, v60, v72, v73, &v158);

        v75 = v158;
        v76 = v159;
        v77 = v160;
        v78 = v162;
        v79 = v164;
        if (v158)
        {
          v80 = v161;
          v81 = v163;
          v82 = v146;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v81;
          v143 = v80;
          v17 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222D286B8();
            v82 = v94;
          }

          v146 = v82;
          v85 = *(v82 + 16);
          v84 = *(v82 + 24);
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_22_8(v84);
            sub_222D286B8();
            v146 = v95;
          }

          v86 = OUTLINED_FUNCTION_0_21();
          v87 = v141;
          v88(v86, v141);
          v89 = v146;
          *(v146 + 16) = v85 + 1;
          v90 = v89 + 56 * v85;
          *(v90 + 32) = v75;
          v8 = v87;
          *(v90 + 40) = v17;
          *(v90 + 48) = v77;
          *(v90 + 56) = v143;
          *(v90 + 64) = v78;
          *(v90 + 72) = v153;
          *(v90 + 80) = v79;
          v18 = v156;
          v20 = v154;
          v15 = v152;
          OUTLINED_FUNCTION_13_7();
        }

        else
        {
          v91 = OUTLINED_FUNCTION_0_21();
          v8 = v141;
          v92(v91, v141);
        }

        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_65:
    v120 = sub_222D52C1C();
    v121 = OUTLINED_FUNCTION_3_0(v20);
    OUTLINED_FUNCTION_2_19(v121);
    v122[7] = MEMORY[0x277D837D0];
    v122[8] = v24;
    v122[4] = v15;
    v122[5] = v17;

    sub_222D5280C("CATValidator: No CATs found under templateDir [%@]", 50, 2, &dword_222CDA000, v18, v120, v121);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C018, &qword_222D54A60);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_2_19(inited);
    inited[2].n128_u64[0] = sub_222D5292C();
    inited[2].n128_u64[1] = v124;
    v158 = 0;
    v159 = 0xE000000000000000;
    sub_222D52DBC();

    v158 = 0xD000000000000021;
    v159 = 0x8000000222D5CA40;
    MEMORY[0x223DCB4F0](v15, v17);

    MEMORY[0x223DCB4F0](93, 0xE100000000000000);
    v125 = v159;
    inited[3].n128_u64[0] = v158;
    inited[3].n128_u64[1] = v125;
    sub_222D528BC();
    v126 = sub_222CDFAEC();

    v127 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v8 = v141;
    v14 = sub_222D3D850(0xD00000000000001FLL, 0x8000000222D5A270, 0, v126);
LABEL_66:
    a1 = v137;
LABEL_67:
    (*(v138 + 8))(a1, v8);
    return v14;
  }

  return result;
}

void sub_222D3D3EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_222D3DAE8();
        v1 = v12;
      }

      v2 = v1 + 16 * v2 + 24;
      v4 = (v1 + 40);
      v5 = 1;
      do
      {
        if (v5 - 1 != v3)
        {
          v6 = *(v1 + 16);
          if (v5 - 1 >= v6)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v6)
          {
            goto LABEL_14;
          }

          v7 = *(v4 - 1);
          v8 = *v4;
          v9 = *v2;
          *(v4 - 1) = *(v2 - 8);
          *v4 = v9;
          v10 = *(v1 + 16);

          if (v3 >= v10)
          {
            goto LABEL_15;
          }

          *(v2 - 8) = v7;
          *v2 = v8;
        }

        --v3;
        v2 -= 16;
        v4 += 2;
      }

      while (v5++ < v3);
      *v0 = v1;
    }
  }
}

unint64_t *static CATValidator.validateAll(bundle:catIdExceptions:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v11 = result;
    sub_222D5292C();

    sub_222D520BC();

    v12 = static CATValidator.validateAll(templateDir:catIdExceptions:)(v9, a2);
    (*(v6 + 8))(v9, v4);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D3D614@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = sub_222D33854(a1, &selRef_status);
  if (v4)
  {
    v5 = sub_222D5298C();
    v7 = v6;

    v8 = v5 == 0x64696C6176 && v7 == 0xE500000000000000;
    if (v8 || (sub_222D5305C() & 1) != 0)
    {

      v9 = 0;
    }

    else
    {
      v10 = v5 == 0x64696C61766E69 && v7 == 0xE700000000000000;
      if (v10 || (sub_222D5305C() & 1) != 0)
      {

        v9 = 1;
      }

      else if (v5 == 0x73676E696E726177 && v7 == 0xE800000000000000)
      {

        v9 = 2;
      }

      else
      {
        v12 = sub_222D5305C();

        if (v12)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_222D3D760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_222D33854(a1, &selRef_text);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = v5;
  result = sub_222D33854(a1, &selRef_textWithLineNumber);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = v8;
  result = [a1 lineNumber];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v12 = [result integerValue];

  result = sub_222D33854(a1, &selRef_filename);
  if (v13)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v12;
    a2[5] = result;
    a2[6] = v13;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_222D3D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_222D528FC();

  if (a4)
  {
    v8 = sub_222D5288C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

BOOL sub_222D3D900(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_222D3D9B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_222D3DD8C();
  v4 = sub_222D52B3C();

  return v4;
}

void sub_222D3DA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D528FC();

  [a3 setTemplateDir_];
}

id sub_222D3DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_222D528FC();
  v7 = sub_222D528FC();
  v8 = [a5 validateFile:v6 locale:v7];

  return v8;
}

unint64_t sub_222D3DAFC()
{
  result = qword_27D03C648;
  if (!qword_27D03C648)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C2B0, &qword_222D560C0);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27D03C648);
  }

  return result;
}

unint64_t sub_222D3DB64()
{
  result = qword_27D03C650;
  if (!qword_27D03C650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATValidatorStatus, &type metadata for CATValidatorStatus, v0, v1);
    atomic_store(result, &qword_27D03C650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CATValidatorStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222D3DCB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222D3DCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222D3DD8C()
{
  result = qword_27D03C660;
  if (!qword_27D03C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D03C660);
  }

  return result;
}

uint64_t CATWrapperSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CATWrapperSimple.init(templateDir:options:globals:)(a1, a2, a3);
  return v6;
}

uint64_t CATWrapperSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = swift_allocObject();
  CATWrapperSimple.init(useResponseMode:options:)(v3, a2);
  return v4;
}

void CATWrapperSimple.init(useResponseMode:options:)(char a1, uint64_t *a2)
{
  sub_222D5210C();
  OUTLINED_FUNCTION_3_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = objc_opt_self();
  OUTLINED_FUNCTION_96();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = [v12 bundleTemplateDir_];

  if (v15)
  {
    sub_222D5292C();

    sub_222D520BC();

    (*(v7 + 32))(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir, v10, v3);
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_options) = v11;
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_mockGlobals) = 0;
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_useResponseMode) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_222D3E09C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_0_22(v1);

  return sub_222CDD920();
}

uint64_t sub_222D3E130()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_2_20();
  v3 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;

  OUTLINED_FUNCTION_10_10();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_222D3E218()
{
  OUTLINED_FUNCTION_4_20();
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xEE0065646F6D206CLL;
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x6562616C206E6920;
  }

  sub_222CED828(v1, v10, v9, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  (*(v4 + 8))(v1, v0);

  v11 = *(v2 + 8);

  return v11();
}

uint64_t CATWrapperSimple.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir;
  sub_222D5210C();
  OUTLINED_FUNCTION_3_6();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CATWrapperSimple(uint64_t a1)
{
  result = qword_280D3BDB0;
  if (!qword_280D3BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D3E3E4(uint64_t a1)
{
  result = sub_222D5210C();
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

uint64_t dispatch thunk of CATWrapperSimple.execute(catId:parameters:)()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_96();
  v5 = (*(v1 + 128) + **(v1 + 128));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_0_22(v2);

  return v5(v3);
}

uint64_t sub_222D3E674()
{
  type metadata accessor for DialogLength();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogLength.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t DialogLength.Builder.__deallocating_deinit()
{
  sub_222CE2920(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D3E790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0x676E697274536F74;
  v5 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v5 || (OUTLINED_FUNCTION_4_21() & 1) != 0)
  {
LABEL_6:
    v8 = v4;
    v9 = 0xE800000000000000;
    goto LABEL_19;
  }

  v10 = 0xEB00000000646574;
  v11 = 0x6169766572626261;
  v12 = a1 == 0x6169766572626261 && a2 == 0xEB00000000646574;
  if (v12 || (OUTLINED_FUNCTION_1_1(0x6169766572626261) & 1) != 0)
  {
    goto LABEL_17;
  }

  v10 = 0xEB00000000657461;
  v11 = 0x6D69786F72707061;
  v13 = a1 == 0x6D69786F72707061 && a2 == 0xEB00000000657461;
  if (v13 || (OUTLINED_FUNCTION_1_1(0x6D69786F72707061) & 1) != 0)
  {
    goto LABEL_17;
  }

  v10 = 0x8000000222D5ACF0;
  v15 = a1 == 0xD000000000000012 && 0x8000000222D5ACF0 == a2;
  if (v15 || (OUTLINED_FUNCTION_1_1(0xD000000000000012) & 1) != 0)
  {
    v8 = 0xD000000000000012;
    goto LABEL_18;
  }

  v10 = 0x8000000222D5AD10;
  v11 = 0xD000000000000013;
  v16 = a1 == 0xD000000000000013 && 0x8000000222D5AD10 == a2;
  if (v16 || (OUTLINED_FUNCTION_1_1(0xD000000000000013) & 1) != 0)
  {
LABEL_17:
    v8 = v11;
LABEL_18:
    v9 = v10;
LABEL_19:
    sub_222CFA3CC(v8, v9);
    if (v19)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v14 = swift_allocObject();
      *a3 = v14;
      v14[2] = v18;
      v14[3] = v19;
      v14[4] = v20;
      v14[5] = v21;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  v4 = 0x63696C6F626D7973;
  v17 = a1 == 0x63696C6F626D7973 && a2 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_4_21() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_222D1C028(a1, a2, a3);
}

uint64_t DialogLength.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogLength.init(from:)(a1);
}

uint64_t DialogLength.init(from:)(void *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogLength.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_222D3EE4C()
{
  result = qword_280D3B170;
  if (!qword_280D3B170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATOption, &type metadata for CATOption, v0, v1);
    atomic_store(result, &qword_280D3B170);
  }

  return result;
}

unint64_t sub_222D3EEA4()
{
  result = qword_280D3B168;
  if (!qword_280D3B168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATOption, &type metadata for CATOption, v0, v1);
    atomic_store(result, &qword_280D3B168);
  }

  return result;
}

unint64_t sub_222D3EF04()
{
  result = qword_280D3B178[0];
  if (!qword_280D3B178[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATOption, &type metadata for CATOption, v0, v1);
    atomic_store(result, qword_280D3B178);
  }

  return result;
}

unint64_t sub_222D3EF5C()
{
  result = qword_280D3B160;
  if (!qword_280D3B160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATOption, &type metadata for CATOption, v0, v1);
    atomic_store(result, &qword_280D3B160);
  }

  return result;
}

uint64_t sub_222D3EFE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_222D3F018@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriDialogEngine::CATOption sub_222D3F0D4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = CATOption.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_222D3F114@<X0>(uint64_t *a1@<X8>)
{
  result = CATOption.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CATOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_222D3F1A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DialogMultiLevelItem.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t DialogMultiLevelItem.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222D3F240()
{
  type metadata accessor for DialogMultiLevelItem();
  v0 = swift_allocObject();

  DialogMultiLevelItem.init(builder:)(v1, v2);
  return v0;
}

uint64_t DialogMultiLevelItem.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogMultiLevelItem.init(builder:)(a1, v3);
  return v2;
}

uint64_t DialogMultiLevelItem.Builder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t DialogMultiLevelItem.init(builder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_8(a1 + 16, a2);
  v4 = *(a1 + 16);

  *(v2 + 24) = v4;
  return v2;
}

double sub_222D3F3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x657449646C696863 && a2 == 0xEA0000000000736DLL;
  if (v5 || (sub_222D5305C() & 1) != 0)
  {
    v6 = *(v3 + 24);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
    *a3 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

BOOL sub_222D3F45C(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  return v2 != 0;
}

BOOL sub_222D3F4B0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D3F45C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_222D3F520@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D3F45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D3F54C(uint64_t a1)
{
  v2 = sub_222D3F7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3F588(uint64_t a1)
{
  v2 = sub_222D3F7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogMultiLevelItem.__deallocating_deinit()
{
  DialogMultiLevelItem.deinit();
  v0 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D3F618(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C688, &qword_222D582F8);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3F7A4();
  sub_222D531AC();
  v11[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
  sub_222D3FA30(&qword_27D03C698, &qword_27D03C6A0, protocol conformance descriptor for DialogMultiLevelItem, MEMORY[0x277D83948]);
  sub_222D5300C();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_222D3F7A4()
{
  result = qword_27D03C690;
  if (!qword_27D03C690)
  {
    result = swift_getWitnessTable(aU1n, &type metadata for DialogMultiLevelItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C690);
  }

  return result;
}

uint64_t DialogMultiLevelItem.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogMultiLevelItem.init(from:)(a1);
  return v2;
}

uint64_t DialogMultiLevelItem.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6A8, &qword_222D58300);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3F7A4();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogMultiLevelItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
    sub_222D3FA30(&qword_27D03C6B0, &qword_27D03C6B8, protocol conformance descriptor for DialogMultiLevelItem, MEMORY[0x277D83978]);
    sub_222D52F6C();
    (*(v6 + 8))(v9, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D3FA30(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C680, &qword_222D582F0);
    v10 = sub_222D3FAB8(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3FAB8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogMultiLevelItem();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3FB64(uint64_t a1)
{
  *(a1 + 8) = sub_222D3FAB8(&qword_27D03C6B8, protocol conformance descriptor for DialogMultiLevelItem);
  result = sub_222D3FAB8(&qword_27D03C6A0, protocol conformance descriptor for DialogMultiLevelItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D3FBCC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogMultiLevelItem.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D3FF68()
{
  result = qword_27D03C6C0;
  if (!qword_27D03C6C0)
  {
    result = swift_getWitnessTable(byte_222D584AC, &type metadata for DialogMultiLevelItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C6C0);
  }

  return result;
}

unint64_t sub_222D3FFC0()
{
  result = qword_27D03C6C8;
  if (!qword_27D03C6C8)
  {
    result = swift_getWitnessTable(byte_222D583E4, &type metadata for DialogMultiLevelItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C6C8);
  }

  return result;
}

unint64_t sub_222D40018()
{
  result = qword_27D03C6D0;
  if (!qword_27D03C6D0)
  {
    result = swift_getWitnessTable(byte_222D5840C, &type metadata for DialogMultiLevelItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C6D0);
  }

  return result;
}

uint64_t sub_222D400EC(uint64_t a1)
{
  type metadata accessor for DialogTemperature();
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();

  return DialogConvertibleMeasurement.init(builder:)(v1);
}

uint64_t DialogTemperature.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogConvertibleMeasurement.init(builder:)(a1);
}

uint64_t DialogTemperature.Builder.__deallocating_deinit()
{
  v0 = DialogConvertibleMeasurement.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_222D401D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49(0x676E697274536F74, 0xE800000000000000) & 1) != 0)
  {
    v7 = 0x676E697274536F74;
    v8 = 0xE800000000000000;
    goto LABEL_7;
  }

  v10 = a1 == 0x6B6F7053676E6F6CLL && a2 == 0xEA00000000006E65;
  if (v10 || (OUTLINED_FUNCTION_49(0x6B6F7053676E6F6CLL, 0xEA00000000006E65) & 1) != 0)
  {
    v7 = 0x6B6F7053676E6F6CLL;
    v8 = 0xEA00000000006E65;
    goto LABEL_7;
  }

  v11 = 0xEC0000006E656B6FLL;
  v12 = 0x70536D756964656DLL;
  v13 = a1 == 0x70536D756964656DLL && a2 == 0xEC0000006E656B6FLL;
  if (v13 || (OUTLINED_FUNCTION_49(0x70536D756964656DLL, 0xEC0000006E656B6FLL) & 1) != 0 || ((v11 = 0xEB000000006E656BLL, v12 = 0x6F705374726F6873, a1 == 0x6F705374726F6873) ? (v14 = a2 == 0xEB000000006E656BLL) : (v14 = 0), v14 || (OUTLINED_FUNCTION_49(0x6F705374726F6873, 0xEB000000006E656BLL) & 1) != 0))
  {
    v7 = v12;
    v8 = v11;
LABEL_7:
    sub_222CFAC68(v7, v8);
    if (v19)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v9 = swift_allocObject();
      *a3 = v9;
      v9[2] = v18;
      v9[3] = v19;
      v9[4] = v20;
      v9[5] = v21;
      return;
    }

LABEL_33:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = a1 == 0xD000000000000014 && 0x8000000222D5CC40 == a2;
  if (v15 || (OUTLINED_FUNCTION_49(0xD000000000000014, 0x8000000222D5CC40) & 1) != 0)
  {
    sub_222CFAC9C();
    if (v16)
    {
      v17 = v16;
      *(a3 + 24) = type metadata accessor for DialogPreciseTemperature();
      *a3 = v17;
      return;
    }

    goto LABEL_33;
  }

  sub_222D409D0(a1, a2, a3);
}

uint64_t DialogTemperature.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogTemperature.init(from:)(a1);
}

uint64_t DialogTemperature.init(from:)(void *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogConvertibleMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogTemperature.__deallocating_deinit()
{
  DialogConvertibleMeasurement.deinit();
  OUTLINED_FUNCTION_5_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double DialogConvertibleMeasurement.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t DialogConvertibleMeasurement.Builder.init(value:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t *DialogConvertibleMeasurement.Builder.deinit()
{
  sub_222CE2920(v0[4], v0[5], v0[6], v0[7]);
  sub_222CE2920(v0[8], v0[9], v0[10], v0[11]);
  return v0;
}

void sub_222D40718(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8((v2 + 4), a1);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D4075C(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 4), a2);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = a1[1];
  *(v2 + 2) = *a1;
  *(v2 + 3) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

void sub_222D407A0(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8((v2 + 8), a1);
  v4 = v2[8];
  v5 = v2[9];
  v6 = v2[10];
  v7 = v2[11];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_222CE3060(v4, v5, v6, v7);
}

__n128 sub_222D407E4(_OWORD *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_67((v2 + 8), a2);
  v4 = v2[8];
  v5 = v2[9];
  v6 = v2[10];
  v7 = v2[11];
  v8 = a1[1];
  *(v2 + 4) = *a1;
  *(v2 + 5) = v8;
  sub_222CE2920(v4, v5, v6, v7);
  return result;
}

void sub_222D40828()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67((v0 + 4), v6);
  v0[4] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D40884()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67((v1 + 4), v5);
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D408FC()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67((v0 + 8), v6);
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[11] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D40958()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v6)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67((v1 + 8), v5);
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = v3;
  v1[11] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D409D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x65756C6176;
  v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_49(0x65756C6176, 0xE500000000000000), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
  }

  else
  {
    result = 0x7374696E75;
    v10 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
    if (v10 || (result = OUTLINED_FUNCTION_49(0x7374696E75, 0xE500000000000000), (result & 1) != 0))
    {
      v11 = *(v3 + 48);
      if (!v11)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 56);
      v12 = *(v3 + 64);
      v14 = *(v3 + 40);
    }

    else
    {
      result = 0x6E5574757074756FLL;
      if (a1 != 0x6E5574757074756FLL || a2 != 0xEB00000000737469)
      {
        result = OUTLINED_FUNCTION_49(0x6E5574757074756FLL, 0xEB00000000737469);
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v11 = *(v3 + 80);
      if (!v11)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 88);
      v12 = *(v3 + 96);
      v14 = *(v3 + 72);
    }

    *(a3 + 24) = &type metadata for SpeakableString;
    v15 = swift_allocObject();
    *a3 = v15;
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v12;
  }

  return result;
}

uint64_t DialogConvertibleMeasurement.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  swift_beginAccess();
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  *(v1 + 96) = v11;
  OUTLINED_FUNCTION_96();
  v19 = (v12 + 160);
  v20 = *(v12 + 160);
  sub_222CE3060(v4, v5, v6, v7);
  sub_222CE3060(v8, v9, v10, v11);
  if ((v20() & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6D8, &qword_222D58588);
    v14 = sub_222D5297C();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_222CDDCB0(v14, v15, v17);
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_222D5280C("Building an instance of %s without all required inputs", v19);
  }

  return v1;
}

uint64_t DialogConvertibleMeasurement.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6E0, &qword_222D58590);
  OUTLINED_FUNCTION_113();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D40F54();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogConvertibleMeasurement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v11) = 0;
    v5 = sub_222D52EFC();
    *(v1 + 24) = v5;
    *(v1 + 32) = v6 & 1;
    sub_222D0099C(v5, v6, v7);
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    *(v1 + 40) = v11;
    *(v1 + 56) = v12;
    OUTLINED_FUNCTION_3(&type metadata for SpeakableString);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    *(v1 + 72) = v11;
    *(v1 + 88) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_222D40F54()
{
  result = qword_27D03C6E8;
  if (!qword_27D03C6E8)
  {
    result = swift_getWitnessTable(byte_222D5879C, &type metadata for DialogConvertibleMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C6E8);
  }

  return result;
}

uint64_t DialogConvertibleMeasurement.deinit()
{
  sub_222CE2920(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_222CE2920(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t sub_222D41044(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6F0, &qword_222D58598);
  OUTLINED_FUNCTION_113();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D40F54();
  sub_222D531AC();
  LOBYTE(v29) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v11 = v3[6];
    v12 = v3[7];
    v13 = v3[8];
    v29 = v3[5];
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v28 = 1;
    sub_222CE3060(v29, v11, v12, v13);
    v17 = sub_222CF2084(v14, v15, v16);
    OUTLINED_FUNCTION_3_8(v17, v18, v19, &type metadata for SpeakableString);
    sub_222CE2920(v29, v30, v31, v32);
    v20 = v3[10];
    v21 = v3[11];
    v22 = v3[12];
    v29 = v3[9];
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v28 = 2;
    sub_222CE3060(v29, v20, v21, v22);
    OUTLINED_FUNCTION_3_8(v23, v24, v25, &type metadata for SpeakableString);
    sub_222CE2920(v29, v30, v31, v32);
  }

  return (*(v7 + 8))(v10, v5);
}

double sub_222D411F8@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_222D41238(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_222CE3060(v10[0], v6, v7, v8);
  return a5(v10);
}

double DialogConvertibleMeasurement.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t DialogConvertibleMeasurement.Builder.__allocating_init(value:)(double a1)
{
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.Builder.init(value:)(a1);
  return v2;
}

uint64_t sub_222D41310()
{
  type metadata accessor for DialogConvertibleMeasurement();
  v0 = swift_allocObject();

  DialogConvertibleMeasurement.init(builder:)(v1);
  return v0;
}

uint64_t DialogConvertibleMeasurement.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.init(builder:)(a1);
  return v2;
}

uint64_t DialogConvertibleMeasurement.Builder.__deallocating_deinit()
{
  DialogConvertibleMeasurement.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_222D41400(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222D4144C(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x7374696E75;
  }

  return 0x6E5574757074756FLL;
}

unint64_t sub_222D414C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D41400(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D414F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D4144C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_222D4152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D41400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D41554(uint64_t a1)
{
  v2 = sub_222D40F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D41590(uint64_t a1)
{
  v2 = sub_222D40F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogConvertibleMeasurement.__deallocating_deinit()
{
  DialogConvertibleMeasurement.deinit();
  v0 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogConvertibleMeasurement.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.init(from:)(a1);
  return v2;
}

uint64_t sub_222D4169C(uint64_t a1)
{
  *(a1 + 8) = sub_222D41704(&qword_27D03C6F8, protocol conformance descriptor for DialogConvertibleMeasurement);
  result = sub_222D41704(&qword_27D03BEA0, protocol conformance descriptor for DialogConvertibleMeasurement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D41704(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DialogConvertibleMeasurement();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D41744@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogConvertibleMeasurement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D41D00()
{
  result = qword_27D03C700;
  if (!qword_27D03C700)
  {
    result = swift_getWitnessTable(aU, &type metadata for DialogConvertibleMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C700);
  }

  return result;
}

unint64_t sub_222D41D58()
{
  result = qword_27D03C708;
  if (!qword_27D03C708)
  {
    result = swift_getWitnessTable(byte_222D586AC, &type metadata for DialogConvertibleMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C708);
  }

  return result;
}

unint64_t sub_222D41DB0()
{
  result = qword_27D03C710;
  if (!qword_27D03C710)
  {
    result = swift_getWitnessTable(byte_222D586D4, &type metadata for DialogConvertibleMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C710);
  }

  return result;
}

double sub_222D41E38@<D0>(_OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC16SiriDialogEngine17CATCallbackParams_params);
  if (v5)
  {
    v6 = v5;
    v7 = sub_222D528FC();
    v8 = [v6 objectForKey_];

    if (v8)
    {
      sub_222D52D6C();

      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    result = *&v10;
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id CATCallbackParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CATCallbackParams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CATCallbackParams();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CATType.getCATProperty<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a1;
  v78 = a2;
  v80 = a5;
  v6 = sub_222D52CBC();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v76 = &v72 - v8;
  v79 = a4;
  Description = a4[-1].Description;
  MEMORY[0x28223BE20](v7);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - v11;
  v13 = OUTLINED_FUNCTION_110();
  v14 = sub_222D45774(v13);
  v15 = (v14 + 40);
  v16 = -*(v14 + 16);
  v17 = -1;
  do
  {
    if (v16 + v17 == -1)
    {

      if (qword_280D3DB78 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

    if (++v17 >= *(v14 + 16))
    {
      __break(1u);
LABEL_25:
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
LABEL_12:
      sub_222D52C2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_222D53980;
      swift_getDynamicType();
      v42 = OUTLINED_FUNCTION_110();
      v44 = v43(v42);
      v46 = v45;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_222CDDCB0(v44, v45, v47);
      *(v41 + 32) = v44;
      *(v41 + 40) = v46;
      sub_222D5280C("getCATProperty() invoked for a type not inherited from a dialog type: %s", v72);

      OUTLINED_FUNCTION_42_1();

      return __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    }

    v18 = v15 + 2;
    v19 = *(v15 - 1);
    v20 = *v15;
    v21 = (*(*v15 + 40))(v19, *v15);
    v15 = v18;
  }

  while ((v21 & 1) == 0);

  v22 = (*(v20 + 32))(v19, v20);
  v24 = v23;
  v25 = OUTLINED_FUNCTION_110();
  v27 = v26(v25);
  if (!v27)
  {
    v27 = [objc_allocWithZone(type metadata accessor for CATGlobals(0)) init];
  }

  v28 = v27;
  type metadata accessor for CATEvaluator();
  v29 = OUTLINED_FUNCTION_110();
  v31 = v30(v29);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  *&v81 = v31;
  sub_222D5210C();
  OUTLINED_FUNCTION_42_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  static CATEvaluator.evaluate(templateDir:typeName:propName:parameters:globals:)(v12, v22, v24, v77, v78, &v81, v28, &v84);

  sub_222CDC53C(v12, &qword_27D03BE40, &unk_222D54A70);
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  if (!v86)
  {

    sub_222CDC53C(&v84, &qword_27D03BDA8, &unk_222D55070);
    OUTLINED_FUNCTION_42_1();
    return __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }

  sub_222CE0BC0(&v84, v87);
  sub_222CE4EC0(v87, &v84);
  v36 = MEMORY[0x277D837D0];
  v37 = swift_dynamicCast();
  v38 = v79;
  if (v37)
  {
    v39 = *(&v81 + 1);
    v40 = v76;
    if (v79 == &type metadata for SpeakableString)
    {
      v70 = v81;
      SpeakableString.init(serializedValue:)(*(&v39 - 1));

      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      v81 = v84;
      v82 = v85;
      v83 = v86;
      v71 = v80;
      v49 = swift_dynamicCast() ^ 1;
      v48 = v71;
      v50 = 1;
      v51 = &type metadata for SpeakableString;
      return __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    }
  }

  else
  {
    v40 = v76;
  }

  sub_222CE4EC0(v87, &v84);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v87);

    __swift_storeEnumTagSinglePayload(v40, 0, 1, v38);
    v53 = v72;
    v54 = Description[4];
    v55 = OUTLINED_FUNCTION_45();
    v54(v55);
    v56 = v80;
    (v54)(v80, v53, v38);
    v48 = v56;
    v49 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_42_1();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v38);
    (*(v74 + 8))(v40, v75);
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280D3DB78);
    }

    v60 = qword_280D3DB80;
    v61 = sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_222D53970;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    v63 = sub_222D52E3C();
    v64 = v84;
    *(v62 + 56) = v36;
    v67 = sub_222CDDCB0(v63, v65, v66);
    *(v62 + 64) = v67;
    *(v62 + 32) = v64;
    v68 = sub_222D531DC();
    *(v62 + 96) = v36;
    *(v62 + 104) = v67;
    *(v62 + 72) = v68;
    *(v62 + 80) = v69;
    sub_222D5280C("CAT.evaluate() returned unexpected value: %@ for type %@", 56, 2, &dword_222CDA000, v60, v61, v62);

    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    v48 = v80;
    v49 = 1;
  }

  v50 = 1;
  v51 = v38;
  return __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
}

uint64_t sub_222D42830@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *result;
  v3 = *(result + 8);
  switch(*(result + 32))
  {
    case 1:
      v16 = *(result + 16);
      v15 = *(result + 24);
      a2[3] = &type metadata for SpeakableString;
      v17 = swift_allocObject();
      *a2 = v17;
      v17[2] = v4;
      v17[3] = v3;
      v17[4] = v16;
      v17[5] = v15;

      goto LABEL_13;
    case 2:
      a2[3] = MEMORY[0x277D839F8];
      *a2 = v4;
      break;
    case 3:
      v11 = sub_222D51F2C();
      OUTLINED_FUNCTION_24_7(v11);
      sub_222D51F1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
      OUTLINED_FUNCTION_0_23();
      sub_222D459C8(v12, v13, v14, MEMORY[0x277D83508]);
      sub_222D51F0C();

      v18 = objc_opt_self();
      OUTLINED_FUNCTION_45();
      v19 = sub_222D5212C();
      *&v32[0] = 0;
      v20 = [v18 JSONObjectWithData:v19 options:0 error:v32];

      if (v20)
      {
        v21 = *&v32[0];
        sub_222D52D6C();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
        if (swift_dynamicCast())
        {
          v22 = OUTLINED_FUNCTION_45();
          sub_222CE6210(v22, v23);
          v24 = *&v34[0];
        }

        else
        {
          v24 = sub_222D528BC();
          v29 = OUTLINED_FUNCTION_45();
          sub_222CE6210(v29, v30);
        }
      }

      else
      {
        v25 = *&v32[0];
        v26 = sub_222D5207C();

        swift_willThrow();
        v27 = OUTLINED_FUNCTION_45();
        sub_222CE6210(v27, v28);
        v24 = sub_222D528BC();
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      a2[3] = result;
      *a2 = v24;
      break;
    case 4:
      v5 = *(v4 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v5)
      {
        v31 = MEMORY[0x277D84F90];
        sub_222D271EC(0, v5, 0);
        v6 = v31;
        v7 = (v4 + 64);
        do
        {
          v8 = *v7;
          v32[0] = *(v7 - 2);
          v32[1] = *(v7 - 1);
          v33 = v8;
          sub_222D42830(v32, v34);
          v10 = *(v31 + 16);
          v9 = *(v31 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_222D271EC((v9 > 1), v10 + 1, 1);
          }

          *(v31 + 16) = v10 + 1;
          sub_222CE0BC0(v34, (v31 + 32 * v10 + 32));
          v7 += 40;
          --v5;
        }

        while (v5);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
      a2[3] = result;
      *a2 = v6;
      break;
    case 5:
      a2[3] = MEMORY[0x277D839B0];
      *a2 = v4 & 1;
      break;
    case 6:
      a2[3] = MEMORY[0x277D837D0];
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      break;
    default:
      a2[3] = MEMORY[0x277D837D0];
      *a2 = v4;
      a2[1] = v3;
LABEL_13:

      break;
  }

  return result;
}

uint64_t CATValue.description.getter()
{
  v1 = *v0;
  result = 0;
  switch(*(v0 + 32))
  {
    case 1:

      result = sub_222D5297C();
      break;
    case 2:
      result = sub_222D52BDC();
      break;
    case 3:
      result = sub_222D528AC();
      break;
    case 4:
      result = MEMORY[0x223DCB620](*v0, &type metadata for CATValue);
      break;
    case 5:
      if (v1)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
    case 6:
      return result;
    default:

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_222D42D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222CE0BD0(a1, a2, a3);
  v3 = sub_222D52D3C();
  v4 = sub_222D3B588(v3);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = *(v3 + 16);

    if (v8 == 2)
    {
      v9 = sub_222CF62F8(1, v7, v6);
      MEMORY[0x223DCB480](v9);
    }
  }

  return OUTLINED_FUNCTION_6();
}

void sub_222D42E48()
{
  OUTLINED_FUNCTION_29_5();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v2, v5 = v1, (OUTLINED_FUNCTION_7_12(1819242306, 0xE400000000000000) & 1) != 0) || ((v6 = OUTLINED_FUNCTION_2_22() & 0xFFFFFFFFFFFFLL | 0x422E000000000000, v5 == v6) ? (v8 = v4 == v7) : (v8 = 0), v8 || (OUTLINED_FUNCTION_7_12(v6, v7) & 1) != 0))
  {
    v9 = 0;
    goto LABEL_12;
  }

  v10 = v5 == 0x656C62756F44 && v4 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_7_12(0x656C62756F44, 0xE600000000000000) & 1) != 0 || ((v11 = OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000, v5 == v11) ? (v13 = v4 == v12) : (v13 = 0), v13 || (OUTLINED_FUNCTION_7_12(v11, v12) & 1) != 0))
  {
    v9 = 1;
    goto LABEL_12;
  }

  v14 = v5 == 7630409 && v4 == 0xE300000000000000;
  if (v14 || (OUTLINED_FUNCTION_7_12(7630409, 0xE300000000000000) & 1) != 0)
  {
    v9 = 2;
    goto LABEL_12;
  }

  v15 = v5 == 0x676E69727453 && v4 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_7_12(0x676E69727453, 0xE600000000000000) & 1) != 0 || ((v16 = OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x532E000000000000, v5 == v16) ? (v18 = v4 == v17) : (v18 = 0), v18 || (OUTLINED_FUNCTION_7_12(v16, v17) & 1) != 0))
  {
    v9 = 3;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_105();
  v20 = v5 == 0xD000000000000010 && v19 == v4;
  if (v20 || (OUTLINED_FUNCTION_7_12(0xD000000000000010, v19) & 1) != 0)
  {
    v9 = 4;
    goto LABEL_12;
  }

  v21 = v5 == 1702125892 && v4 == 0xE400000000000000;
  if (v21 || (OUTLINED_FUNCTION_7_12(1702125892, 0xE400000000000000) & 1) != 0 || ((OUTLINED_FUNCTION_27_5(), v5 == 0x432E676F6C616964) ? (v23 = v4 == v22) : (v23 = 0), v23 || (OUTLINED_FUNCTION_7_12(0x432E676F6C616964, v22) & 1) != 0))
  {
    v9 = 6;
    goto LABEL_12;
  }

  v24 = OUTLINED_FUNCTION_17_6();
  v26 = v5 == v24 && v4 == v25;
  if (v26 || (OUTLINED_FUNCTION_7_12(v24, v25) & 1) != 0)
  {
    v9 = 7;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_105();
  if (v5 == 0xD000000000000014 && v27 == v4)
  {
LABEL_77:
    v9 = 8;
    goto LABEL_12;
  }

  v29 = OUTLINED_FUNCTION_7_12(0xD000000000000014, v27);
  v31 = v5 == 0x432E676F6C616964 && v4 == 0xEF79636E65727275;
  v9 = 8;
  if ((v29 & 1) == 0 && !v31)
  {
    if (OUTLINED_FUNCTION_7_12(0x432E676F6C616964, 0xEF79636E65727275))
    {
      goto LABEL_77;
    }

    v32 = OUTLINED_FUNCTION_19_8();
    v34 = v5 == v32 && v4 == v33;
    if (v34 || (OUTLINED_FUNCTION_7_12(v32, v33) & 1) != 0 || ((v35 = OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x502E000000000000, v5 == v35) ? (v37 = v4 == v36) : (v37 = 0), v37 || (OUTLINED_FUNCTION_7_12(v35, v36) & 1) != 0))
    {
      v9 = 9;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v39 = v5 == 0xD000000000000019 && v38 == v4;
    if (v39 || (OUTLINED_FUNCTION_7_12(0xD000000000000019, v38) & 1) != 0 || ((v40 = OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x4C2E000000000000, v5 == v40) ? (v42 = v4 == v41) : (v42 = 0), v42 || (OUTLINED_FUNCTION_7_12(v40, v41) & 1) != 0))
    {
      v9 = 10;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v44 = v5 == 0xD000000000000017 && v43 == v4;
    if (v44 || (OUTLINED_FUNCTION_7_12(0xD000000000000017, v43) & 1) != 0 || ((v45 = OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x572E000000000000, v5 == v45) ? (v47 = v4 == v46) : (v47 = 0), v47 || (OUTLINED_FUNCTION_7_12(v45, v46) & 1) != 0))
    {
      v9 = 11;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v49 = v5 == 0xD00000000000001ELL && v48 == v4;
    if (v49 || (OUTLINED_FUNCTION_7_12(0xD00000000000001ELL, v48) & 1) != 0 || ((OUTLINED_FUNCTION_105(), v5 == 0xD000000000000012) ? (v51 = v50 == v4) : (v51 = 0), v51 || (OUTLINED_FUNCTION_7_12(0xD000000000000012, v50) & 1) != 0))
    {
      v9 = 12;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    if (v5 == 0xD000000000000018 && v52 == v4)
    {
LABEL_135:
      v9 = 13;
      goto LABEL_12;
    }

    v54 = OUTLINED_FUNCTION_7_12(0xD000000000000018, v52);
    v56 = v5 == 0x532E676F6C616964 && v4 == 0xEC00000064656570;
    v9 = 13;
    if ((v54 & 1) == 0 && !v56)
    {
      v57 = OUTLINED_FUNCTION_2_22();
      if (OUTLINED_FUNCTION_7_12(v57 & 0xFFFFFFFFFFFFLL | 0x532E000000000000, v58))
      {
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_105();
      v60 = v5 == 0xD00000000000001BLL && v59 == v4;
      if (v60 || (OUTLINED_FUNCTION_7_12(0xD00000000000001BLL, v59) & 1) != 0 || ((v61 = OUTLINED_FUNCTION_2_22() & 0xFFFFFFFFFFFFLL | 0x442E000000000000, v5 == v61) ? (v63 = v4 == v62) : (v63 = 0), v63))
      {
        v9 = 14;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_7_12(v61, v62);
        v9 = 16;
        if (v64)
        {
          v9 = 14;
        }
      }
    }
  }

LABEL_12:
  *v0 = v9;
}

void sub_222D432E0()
{
  switch(*v0)
  {
    case 0:
      return;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
      OUTLINED_FUNCTION_2_22();
      break;
    case 6:
    case 7:
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_27_5();
      break;
    case 9:
    case 0xALL:
    case 0xBLL:
      OUTLINED_FUNCTION_1_21();
      break;
    case 0xCLL:
      OUTLINED_FUNCTION_105();
      break;
    default:
      v1 = *(*v0 + 16);
      if (v1 != 16)
      {
        sub_222D45868(v1);
        sub_222D432E0();
        MEMORY[0x223DCB4F0](23899, 0xE200000000000000);
        sub_222D45898(v1);
      }

      break;
  }
}

uint64_t sub_222D434C4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_5();
  v6 = v6 && v5 == 0xE400000000000000;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_49(1819242306, 0xE400000000000000) & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v7 == 0x656C62756F44 && a2 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_49(0x656C62756F44, 0xE600000000000000) & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      v11 = v7 == 0x676E69727453 && a2 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_49(0x676E69727453, 0xE600000000000000) & 1) != 0)
      {

        v9 = 3;
      }

      else
      {
        OUTLINED_FUNCTION_105();
        v13 = v7 == 0xD000000000000010 && v12 == a2;
        if (v13 || (OUTLINED_FUNCTION_49(0xD000000000000010, v12) & 1) != 0)
        {

          v9 = 4;
        }

        else
        {
          v14 = v7 == 0x6D6563616C504C43 && a2 == 0xEB000000006B7261;
          if (v14 || (OUTLINED_FUNCTION_49(0x6D6563616C504C43, 0xEB000000006B7261) & 1) != 0)
          {

            v9 = 5;
          }

          else
          {
            v15 = v7 == 1702125892 && a2 == 0xE400000000000000;
            if (v15 || (OUTLINED_FUNCTION_49(1702125892, 0xE400000000000000) & 1) != 0)
            {

              v9 = 6;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_17_6();
              v18 = v7 == v16 && a2 == v17;
              if (v18 || (OUTLINED_FUNCTION_49(v16, v17) & 1) != 0)
              {

                v9 = 7;
              }

              else
              {
                OUTLINED_FUNCTION_105();
                v20 = v7 == 0xD000000000000014 && v19 == a2;
                if (v20 || (OUTLINED_FUNCTION_49(0xD000000000000014, v19) & 1) != 0)
                {

                  v9 = 8;
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_19_8();
                  v23 = v7 == v21 && a2 == v22;
                  if (v23 || (OUTLINED_FUNCTION_49(v21, v22) & 1) != 0)
                  {

                    v9 = 9;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_105();
                    v25 = v7 == 0xD000000000000019 && v24 == a2;
                    if (v25 || (OUTLINED_FUNCTION_49(0xD000000000000019, v24) & 1) != 0)
                    {

                      v9 = 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_105();
                      v27 = v7 == 0xD000000000000017 && v26 == a2;
                      if (v27 || (OUTLINED_FUNCTION_49(0xD000000000000017, v26) & 1) != 0)
                      {

                        v9 = 11;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_105();
                        v29 = v7 == 0xD00000000000001ELL && v28 == a2;
                        if (v29 || (OUTLINED_FUNCTION_49(0xD00000000000001ELL, v28) & 1) != 0)
                        {

                          v9 = 12;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_105();
                          v31 = v7 == 0xD000000000000018 && v30 == a2;
                          if (v31 || (OUTLINED_FUNCTION_49(0xD000000000000018, v30) & 1) != 0)
                          {

                            v9 = 13;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_105();
                            v33 = v7 == 0xD00000000000001BLL && v32 == a2;
                            if (v33 || (OUTLINED_FUNCTION_49(0xD00000000000001BLL, v32) & 1) != 0)
                            {

                              v9 = 14;
                            }

                            else
                            {
                              v34 = v7 == 5001813 && a2 == 0xE300000000000000;
                              if (v34 || (OUTLINED_FUNCTION_49(5001813, 0xE300000000000000) & 1) != 0)
                              {

                                v9 = 15;
                              }

                              else
                              {
                                sub_222D45C98();
                                sub_222D45CEC();
                                if (sub_222D528CC())
                                {
                                  v38 = swift_allocObject();
                                  sub_222D42D74(v7, a2, v35);
                                  v37 = v36;

                                  if (v37)
                                  {
                                    OUTLINED_FUNCTION_45();
                                    sub_222D42E48();
                                  }

                                  else
                                  {
                                    *(v38 + 16) = 16;
                                  }

                                  v9 = v38;
                                }

                                else
                                {

                                  v9 = 16;
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

  *v2 = v9;
  return result;
}

BOOL static NLGParameterType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_37;
      }

      sub_222D45878(0);
      v4 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_37;
      }

      sub_222D45878(1uLL);
      sub_222D45878(1uLL);
      return v3;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_37;
      }

      sub_222D45878(2uLL);
      v4 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_37;
      }

      sub_222D45878(3uLL);
      v4 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_37;
      }

      sub_222D45878(4uLL);
      v4 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_37;
      }

      sub_222D45878(5uLL);
      v4 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_37;
      }

      sub_222D45878(6uLL);
      v4 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_37;
      }

      sub_222D45878(7uLL);
      v4 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_37;
      }

      sub_222D45878(8uLL);
      v4 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_37;
      }

      sub_222D45878(9uLL);
      v4 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xAuLL);
      v4 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xBuLL);
      v4 = 11;
      goto LABEL_34;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xCuLL);
      v4 = 12;
      goto LABEL_34;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xDuLL);
      v4 = 13;
      goto LABEL_34;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xEuLL);
      v4 = 14;
      goto LABEL_34;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xFuLL);
      v4 = 15;
      goto LABEL_34;
    default:
      if (v3 >= 0x10)
      {
        v6 = *(v2 + 16);
        v7 = *(v3 + 16);
        if (v6 == 16)
        {
          OUTLINED_FUNCTION_25_6();
          sub_222D45888(0x10uLL);
          if (v7 == 16)
          {
            sub_222D45888(0x10uLL);
            sub_222D45898(0x10uLL);
            sub_222D45878(v2);
            v4 = v3;
LABEL_34:
            sub_222D45878(v4);
            return 1;
          }

          sub_222D45888(v7);
        }

        else
        {
          v10 = *(v2 + 16);
          if (v7 != 16)
          {
            v9 = v7;
            OUTLINED_FUNCTION_25_6();
            sub_222D45888(v6);
            sub_222D45888(v7);
            sub_222D45888(v6);
            v8 = static NLGParameterType.== infix(_:_:)(&v10, &v9);
            sub_222D45878(v7);
            sub_222D45878(v6);
            sub_222D45898(v6);
            sub_222D45878(v2);
            sub_222D45878(v3);
            return v8;
          }

          OUTLINED_FUNCTION_25_6();
          sub_222D45888(v6);
          sub_222D45888(0x10uLL);
          sub_222D45888(v6);
          sub_222D45878(v6);
        }

        sub_222D45898(v6);
        sub_222D45898(v7);
        goto LABEL_38;
      }

LABEL_37:
      OUTLINED_FUNCTION_25_6();
LABEL_38:
      sub_222D45878(v2);
      sub_222D45878(v3);
      return 0;
  }
}

uint64_t static CATValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v74[0] = *a1;
  v74[1] = v3;
  v74[2] = v5;
  v74[3] = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v78 = v10;
  v79 = v9;
  v80 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {

        goto LABEL_35;
      }

      if (v2 != v7 || v3 != v8)
      {
        OUTLINED_FUNCTION_11_7();
        if ((sub_222D5305C() & 1) == 0)
        {
          v70 = OUTLINED_FUNCTION_5_17();
          sub_222D24948(v70, v71, v72, v73, 1);
          v57 = OUTLINED_FUNCTION_3_19();
          v61 = 1;
          goto LABEL_37;
        }
      }

      if (v5 == v10 && v4 == v9)
      {
        v48 = 1;
        sub_222D24948(v7, v8, v5, v4, 1);
        v66 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v66, v67, v68, v69, 1);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      }

      else
      {
        v47 = sub_222D5305C();
        v48 = 1;
        v49 = OUTLINED_FUNCTION_5_17();
        sub_222D24948(v49, v50, v51, v52, 1);
        v53 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v53, v54, v55, v56, 1);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
        if ((v47 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      return v48 & 1;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_36;
      }

      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      if (*&v2 != *&v7)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_35;
      }

      v34 = OUTLINED_FUNCTION_5_17();
      sub_222D24948(v34, v35, v36, v37, 3);
      v38 = OUTLINED_FUNCTION_3_19();
      sub_222D24948(v38, v39, v40, v41, 3);
      v42 = OUTLINED_FUNCTION_6();
      v33 = sub_222D43F54(v42, v43);
      goto LABEL_15;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_35;
      }

      v23 = OUTLINED_FUNCTION_5_17();
      sub_222D24948(v23, v24, v25, v26, 4);
      v27 = OUTLINED_FUNCTION_3_19();
      sub_222D24948(v27, v28, v29, v30, 4);
      v31 = OUTLINED_FUNCTION_6();
      v33 = sub_222D448C0(v31, v32);
LABEL_15:
      v44 = v33;
      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      return v44 & 1;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_36;
      }

      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      v48 = v7 ^ v2 ^ 1;
      return v48 & 1;
    case 6:
      if (v11 == 6 && !(v8 | v7 | v10 | v9))
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    default:
      if (v11)
      {
LABEL_35:

LABEL_36:
        v57 = OUTLINED_FUNCTION_5_17();
        v61 = v11;
LABEL_37:
        sub_222D24948(v57, v58, v59, v60, v61);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
LABEL_38:
        v48 = 0;
      }

      else
      {
        if (v2 != v7 || v3 != v8)
        {
          v13 = sub_222D5305C();
          v14 = OUTLINED_FUNCTION_5_17();
          sub_222D24948(v14, v15, v16, v17, 0);
          v18 = OUTLINED_FUNCTION_3_19();
          sub_222D24948(v18, v19, v20, v21, 0);
          sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
          return v13 & 1;
        }

        sub_222D24948(v2, v3, v10, v9, 0);
        v62 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v62, v63, v64, v65, 0);
LABEL_41:
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
LABEL_42:
        v48 = 1;
      }

      return v48 & 1;
  }
}

BOOL sub_222D43F54(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v72 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v73 = (v4 + 63) >> 6;
  v74 = a1;
  while (2)
  {
    if (v6)
    {
      v7 = __clz(__rbit64(v6));
      v76 = (v6 - 1) & v6;
      goto LABEL_13;
    }

    v8 = v3;
    do
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_67:

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        return 0;
      }

      if (v3 >= v73)
      {
        return 1;
      }

      v9 = *(v72 + 8 * v3);
      ++v8;
    }

    while (!v9);
    v7 = __clz(__rbit64(v9));
    v76 = (v9 - 1) & v9;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(a1 + 56) + 40 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);

    v20 = v16;
    v21 = v16;
    v22 = v18;
    v23 = v18;
    v24 = v17;
    sub_222D24948(v15, v21, v23, v17, v19);
    v25 = v13 == 0;
    if (!v13)
    {
      return v25;
    }

    v26 = sub_222CE1050(v12, v13);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v56 = v15;
      v57 = v20;
      v58 = v22;
      v59 = v24;
      goto LABEL_63;
    }

    v29 = *(v2 + 56) + 40 * v26;
    v30 = *v29;
    v31 = *(v29 + 8);
    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    v34 = *(v29 + 32);
    v77[0] = *v29;
    v77[1] = v31;
    v77[2] = v33;
    v77[3] = v32;
    v78 = v34;
    v79 = v15;
    v80 = v20;
    v81 = v22;
    v82 = v24;
    v83 = v19;
    v35 = v20;
    v36 = v22;
    v37 = v24;
    switch(v34)
    {
      case 1:
        if (v19 != 1)
        {
          v60 = v33;
          v62 = v32;
          sub_222D24948(v30, v31, v33, v32, 1);

          goto LABEL_61;
        }

        if (v30 != v15 || v31 != v20)
        {
          v52 = v32;
          v53 = v33;
          v54 = sub_222D5305C();
          v33 = v53;
          v32 = v52;
          v36 = v22;
          v37 = v24;
          if ((v54 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        if (v33 != v36 || v32 != v37)
        {
          v39 = sub_222D5305C();

          goto LABEL_42;
        }

        goto LABEL_52;
      case 2:
        if (v19 != 2)
        {
          goto LABEL_62;
        }

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        a1 = v74;
        v2 = a2;
        v6 = v76;
        v25 = 0;
        if (*&v30 != *&v15)
        {
          return v25;
        }

        continue;
      case 3:
        v40 = v30;
        v41 = v31;
        if (v19 == 3)
        {
          v49 = v32;
          v50 = v33;
          sub_222D24948(v30, v31, v33, v32, 3);
          sub_222D24948(v30, v31, v50, v49, 3);
          sub_222D24948(v15, v20, v22, v24, 3);
          v71 = sub_222D43F54(v30, v15);
          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          sub_222D249C4(v30, v31, v50, v49, 3);
          v44 = v15;
          v45 = v20;
          v46 = v22;
          v47 = v24;
          v48 = 3;
LABEL_29:
          sub_222D249C4(v44, v45, v46, v47, v48);
          a1 = v74;
          v2 = a2;
          v6 = v76;
          v25 = 0;
          if ((v71 & 1) == 0)
          {
            return v25;
          }

          continue;
        }

        v60 = v33;
        v61 = v33;
        v62 = v32;
        v63 = v32;
        v64 = 3;
LABEL_58:
        sub_222D24948(v40, v41, v61, v63, v64);
LABEL_61:

        v37 = v24;
        v36 = v22;
        v35 = v20;
        v32 = v62;
        v33 = v60;
LABEL_62:
        v65 = v36;
        v66 = v37;
        v67 = v35;
        v68 = v32;
        v69 = v33;
        sub_222D24948(v15, v35, v36, v37, v19);
        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v30, v31, v69, v68, v34);
        v56 = v15;
        v57 = v67;
        v58 = v65;
        v59 = v66;
LABEL_63:
        sub_222D249C4(v56, v57, v58, v59, v19);
        return 0;
      case 4:
        v40 = v30;
        v41 = v31;
        if (v19 != 4)
        {
          v60 = v33;
          v61 = v33;
          v62 = v32;
          v63 = v32;
          v64 = 4;
          goto LABEL_58;
        }

        v42 = v32;
        v43 = v33;
        sub_222D24948(v30, v31, v33, v32, 4);
        sub_222D24948(v30, v31, v43, v42, 4);
        sub_222D24948(v15, v20, v22, v24, 4);
        v71 = sub_222D448C0(v30, v15);
        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v30, v31, v43, v42, 4);
        v44 = v15;
        v45 = v20;
        v46 = v22;
        v47 = v24;
        v48 = 4;
        goto LABEL_29;
      case 5:
        if (v19 != 5)
        {
          goto LABEL_62;
        }

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        a1 = v74;
        v2 = a2;
        v6 = v76;
        v25 = 0;
        if ((v30 ^ v15))
        {
          return v25;
        }

        continue;
      case 6:
        if (v19 != 6)
        {
          goto LABEL_62;
        }

        if (!(v20 | v15 | v22 | v24))
        {
          goto LABEL_53;
        }

        LOBYTE(v19) = 6;
        goto LABEL_62;
      default:
        if (v19)
        {
          v60 = v33;
          v62 = v32;
          sub_222D24948(v30, v31, v33, v32, 0);
          goto LABEL_61;
        }

        if (v30 == v15 && v31 == v20)
        {
LABEL_52:

LABEL_53:
          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          a1 = v74;
          v2 = a2;
          v6 = v76;
        }

        else
        {
          v39 = sub_222D5305C();
LABEL_42:

          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          a1 = v74;
          v2 = a2;
          v6 = v76;
          v25 = 0;
          if ((v39 & 1) == 0)
          {
            return v25;
          }
        }

        continue;
    }
  }
}

uint64_t sub_222D445CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v31 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v32 = (v4 + 63) >> 6;
  v33 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v8 = (v6 - 1) & v6;
LABEL_13:
    v11 = v7 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(result + 56) + (v11 << 6));
    v16 = *(v15 + 4);
    v17 = *(v15 + 3);
    v38 = *(v15 + 8);
    v18 = *(v15 + 6);
    v34 = *(v15 + 1);
    v35 = *(v15 + 5);
    v19 = *(v15 + 7);
    v20 = *v15;
    v36 = v13 == 0;

    if (!v13)
    {
      return 1;
    }

    v37 = v8;
    v21 = sub_222CE1050(v14, v13);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_46;
    }

    v24 = (*(a2 + 56) + (v21 << 6));
    v25 = *v24;
    v26 = *(v24 + 6);
    v27 = *(v24 + 7);
    if (v25 == 2)
    {
      if (v20 != 2)
      {
        goto LABEL_46;
      }
    }

    else if (v20 == 2 || ((v25 ^ v20) & 1) != 0)
    {
      goto LABEL_46;
    }

    if (v24[16])
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((v16 & 1) != 0 || *(v24 + 1) != v34)
    {
      goto LABEL_46;
    }

    if (v24[32])
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((v38 & 1) != 0 || *(v24 + 3) != v17)
    {
      goto LABEL_46;
    }

    if (v26)
    {
      if (!v18)
      {
        goto LABEL_47;
      }

      v28 = *(v24 + 5) == v35 && v26 == v18;
      if (!v28 && (sub_222D5305C() & 1) == 0)
      {
LABEL_46:

LABEL_47:

        return 0;
      }
    }

    else if (v18)
    {
      goto LABEL_46;
    }

    if (v27)
    {
      if (!v19)
      {
        goto LABEL_46;
      }

      v29 = sub_222D445CC(v27, v19);

      swift_bridgeObjectRelease_n();
      result = v33;
      v6 = v37;
      v30 = v36;
      if ((v29 & 1) == 0)
      {
        return v30;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_46;
      }

      result = v33;
      v6 = v37;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v32)
    {
      return 1;
    }

    v10 = *(v31 + 8 * v3);
    ++v9;
    if (v10)
    {
      v7 = __clz(__rbit64(v10));
      v8 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222D448C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (2)
  {
    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v10 = *v4;
    v4 += 5;
    v9 = v10;
    v11 = *(v3 - 4);
    v12 = *(v3 - 3);
    v14 = *(v3 - 2);
    v13 = *(v3 - 1);
    v16 = *v3;
    v3 += 5;
    v15 = v16;
    v64[0] = v6;
    v64[1] = v5;
    v64[2] = v8;
    v64[3] = v7;
    v65 = v9;
    v66 = v11;
    v67 = v12;
    v68 = v14;
    v69 = v13;
    v70 = v16;
    switch(v9)
    {
      case 1:
        if (v15 != 1)
        {
          v50 = v5;
          v62 = v8;
          v51 = v7;
          sub_222D24948(v6, v5, v8, v7, 1);
          v44 = v50;

          v46 = v51;
          goto LABEL_51;
        }

        if (v6 != v11 || v5 != v12)
        {
          v35 = v5;
          v63 = v8;
          v58 = v7;
          v36 = sub_222D5305C();
          v5 = v35;
          v8 = v63;
          v7 = v58;
          if ((v36 & 1) == 0)
          {
            sub_222D24948(v11, v12, v14, v13, 1);
            sub_222D24948(v6, v35, v63, v58, 1);
            sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
            return 0;
          }
        }

        v61 = v5;
        if (v8 != v14 || v7 != v13)
        {
          v38 = v8;
          v39 = v7;
          v55 = sub_222D5305C();
          sub_222D24948(v11, v12, v14, v13, 1);
          v20 = v6;
          v21 = v61;
          v22 = v38;
          v23 = v39;
          v24 = 1;
          goto LABEL_31;
        }

        v41 = v8;
        v17 = v7;
        sub_222D24948(v11, v12, v8, v7, 1);
        v40 = v61;
        goto LABEL_42;
      case 2:
        if (v15 != 2)
        {
          goto LABEL_52;
        }

        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        if (*&v6 != *&v11)
        {
          return 0;
        }

        goto LABEL_44;
      case 3:
        v62 = v8;
        if (v15 != 3)
        {
          v43 = v6;
          v44 = v5;
          v45 = v8;
          v46 = v7;
          v47 = v7;
          v48 = 3;
          goto LABEL_48;
        }

        v32 = v5;
        v57 = v7;
        v60 = v5;
        v33 = v7;
        sub_222D24948(v11, v12, v14, v13, 3);
        sub_222D24948(v6, v32, v62, v33, 3);
        sub_222D24948(v11, v12, v14, v13, 3);
        sub_222D24948(v6, v60, v62, v57, 3);
        v55 = sub_222D43F54(v6, v11);
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v11, v12, v14, v13, 3);
        v27 = v6;
        v28 = v60;
        v29 = v62;
        v30 = v57;
        v31 = 3;
        goto LABEL_19;
      case 4:
        v62 = v8;
        if (v15 == 4)
        {
          v25 = v5;
          v56 = v7;
          v59 = v5;
          v26 = v7;
          sub_222D24948(v11, v12, v14, v13, 4);
          sub_222D24948(v6, v25, v62, v26, 4);
          sub_222D24948(v11, v12, v14, v13, 4);
          sub_222D24948(v6, v59, v62, v56, 4);
          v55 = sub_222D448C0(v6, v11);
          sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
          sub_222D249C4(v11, v12, v14, v13, 4);
          v27 = v6;
          v28 = v59;
          v29 = v62;
          v30 = v56;
          v31 = 4;
LABEL_19:
          sub_222D249C4(v27, v28, v29, v30, v31);
LABEL_32:
          if ((v55 & 1) == 0)
          {
            return 0;
          }

LABEL_44:
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        v43 = v6;
        v44 = v5;
        v45 = v8;
        v46 = v7;
        v47 = v7;
        v48 = 4;
LABEL_48:
        sub_222D24948(v43, v5, v45, v47, v48);
LABEL_51:

        v7 = v46;
        v8 = v62;
        v5 = v44;
LABEL_52:
        v52 = v5;
        v53 = v8;
        v54 = v7;
        sub_222D24948(v11, v12, v14, v13, v15);
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v6, v52, v53, v54, v9);
        return 0;
      case 5:
        if (v15 != 5)
        {
          goto LABEL_52;
        }

        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        if ((v11 ^ v6))
        {
          return 0;
        }

        goto LABEL_44;
      case 6:
        if (v15 != 6)
        {
          goto LABEL_52;
        }

        if (!(v12 | v11 | v14 | v13))
        {
          goto LABEL_43;
        }

        LOBYTE(v15) = 6;
        goto LABEL_52;
      default:
        v62 = v8;
        if (v15)
        {
          v49 = v5;
          v46 = v7;
          sub_222D24948(v6, v5, v8, v7, 0);
          v44 = v49;
          goto LABEL_51;
        }

        v17 = v7;
        if (v6 != v11 || v5 != v12)
        {
          v19 = v5;
          v55 = sub_222D5305C();
          sub_222D24948(v11, v12, v14, v13, 0);
          v20 = v6;
          v21 = v19;
          v22 = v62;
          v23 = v17;
          v24 = 0;
LABEL_31:
          sub_222D24948(v20, v21, v22, v23, v24);
          sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
          goto LABEL_32;
        }

        v40 = v5;
        sub_222D24948(v6, v5, v14, v13, 0);
        v41 = v62;
LABEL_42:
        sub_222D24948(v6, v40, v41, v17, v9);
LABEL_43:
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        goto LABEL_44;
    }
  }
}

uint64_t CATValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D5317C();
  if (!v2)
  {
    v5 = v13[4];
    v6 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
    OUTLINED_FUNCTION_4_22();
    sub_222D459C8(v8, v9, v10, MEMORY[0x277D83528]);
    sub_222D5309C();
    OUTLINED_FUNCTION_10_11();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    *a2 = v12;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = 3;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CATValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_222D5319C();
  switch(v6)
  {
    case 1:
      v20 = OUTLINED_FUNCTION_18_9(v7, v8, v9, v10, v11, v12, v13, v14, v26, v2, v3, v4, v5, v31, v32, v33, v34);
      sub_222CF2084(v20, v21, v22);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_18_9(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_26_6();
      sub_222D530DC();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    case 3:
      OUTLINED_FUNCTION_18_9(v7, v8, v9, v10, v11, v12, v13, v14, v26, v2, v28, v29, v30, v31, v32, v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
      OUTLINED_FUNCTION_0_23();
      sub_222D459C8(v17, v18, v19, MEMORY[0x277D83508]);
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_18_9(v7, v8, v9, v10, v11, v12, v13, v14, v26, v2, v28, v29, v30, v31, v32, v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C740, &qword_222D58860);
      OUTLINED_FUNCTION_0_23();
      sub_222D458FC(v15, v16, MEMORY[0x277D83948]);
LABEL_8:
      sub_222D530EC();
      break;
    case 5:
      OUTLINED_FUNCTION_6_17();
      __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      sub_222D530CC();
      break;
    case 6:
      OUTLINED_FUNCTION_18_9(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_26_6();
      sub_222D530FC();
      break;
    default:
      __swift_mutable_project_boxed_opaque_existential_1(&v31, v34);
      sub_222D530BC();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v31);
}

uint64_t Dictionary<>.toCATDictionary.getter(uint64_t a1)
{
  v1 = sub_222D51F2C();
  OUTLINED_FUNCTION_24_7(v1);
  sub_222D51F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
  OUTLINED_FUNCTION_0_23();
  sub_222D459C8(v2, v3, v4, MEMORY[0x277D83508]);
  sub_222D51F0C();
  OUTLINED_FUNCTION_32_4();
  objc_opt_self();
  OUTLINED_FUNCTION_12_6();
  v6 = sub_222D5212C();
  v13 = OUTLINED_FUNCTION_31_5(v6, sel_JSONObjectWithData_options_error_, v7, v8, v9, v10, v11, v12, v28, v29, v31);

  if (v13)
  {
    v14 = 0;
    sub_222D52D6C();
    swift_unknownObjectRelease();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
    v16 = MEMORY[0x277D84F70];
    if (OUTLINED_FUNCTION_30_5(v15, v17, v18, v15, v19))
    {
      v20 = OUTLINED_FUNCTION_112();
      sub_222CE6210(v20, v21);
      return v30;
    }

    else
    {
      sub_222D528BC();
      v26 = OUTLINED_FUNCTION_12_6();
      sub_222CE6210(v26, v27);
    }
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_21_7();
    v23 = sub_222D5207C();

    v16 = v23;
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_112();
    sub_222CE6210(v24, v25);
    sub_222D528BC();
  }

  return v16;
}

uint64_t CATType.toCATValues.getter()
{
  v0 = sub_222D51F2C();
  OUTLINED_FUNCTION_24_7(v0);
  sub_222D51F1C();
  OUTLINED_FUNCTION_11_7();
  sub_222D51F0C();

  v1 = sub_222D51EFC();
  OUTLINED_FUNCTION_24_7(v1);
  sub_222D51EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
  OUTLINED_FUNCTION_4_22();
  sub_222D459C8(v2, v3, v4, MEMORY[0x277D83528]);
  sub_222D51EDC();
  v5 = OUTLINED_FUNCTION_11_7();
  sub_222CE6210(v5, v6);

  return v8;
}

uint64_t sub_222D45774(uint64_t a1)
{
  DynamicType = swift_getDynamicType();
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for CATType);
    if (!v3)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222D28284();
      v2 = v10;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      sub_222D28284();
      v2 = v11;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    if (!dynamic_cast_existential_0_class_conditional(v5, v5))
    {
      break;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!class_getSuperclass(ObjCClassFromMetadata))
    {
      break;
    }

    DynamicType = swift_getObjCClassMetadata();
  }

  return v2;
}

unint64_t sub_222D45868(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_222D45878(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

unint64_t sub_222D45888(unint64_t result)
{
  if (result != 16)
  {
    return sub_222D45868(result);
  }

  return result;
}

unint64_t sub_222D45898(unint64_t result)
{
  if (result != 16)
  {
    return sub_222D45878(result);
  }

  return result;
}

unint64_t sub_222D458A8()
{
  result = qword_27D03C738;
  if (!qword_27D03C738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATValue, &type metadata for CATValue, v0, v1);
    atomic_store(result, &qword_27D03C738);
  }

  return result;
}

uint64_t sub_222D458FC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C740, &qword_222D58860);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D45974()
{
  result = qword_27D03C758;
  if (!qword_27D03C758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CATValue, &type metadata for CATValue, v0, v1);
    atomic_store(result, &qword_27D03C758);
  }

  return result;
}

uint64_t sub_222D459C8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C728, &qword_222D58858);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriDialogEngine16NLGParameterTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222D45A64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D45AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_222D45B14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222D45B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 33))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222D45B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_222D45BE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_222D45C98()
{
  result = qword_27D03C768;
  if (!qword_27D03C768)
  {
    result = swift_getWitnessTable(MEMORY[0x277D837E8], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27D03C768);
  }

  return result;
}

unint64_t sub_222D45CEC()
{
  result = qword_27D03C770;
  if (!qword_27D03C770)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85438], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27D03C770);
  }

  return result;
}

uint64_t sub_222D45D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C658, &qword_222D58030);
  v33 = v4;
  result = sub_222D52E9C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_222D45FF4(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
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
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_222CE0BC0(v22, v34);
    }

    else
    {
      sub_222CE4EC0(v22, v34);
    }

    sub_222D5313C();
    sub_222D529DC();
    result = sub_222D5315C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_222CE0BC0(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_222D45FF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222D58840;
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

void StructuredParameter.init(from:)()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C788, &qword_222D58AF0);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222D46594();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    OUTLINED_FUNCTION_6_18();
    v6 = sub_222D52EDC();
    v8 = v7;
    if (!v7)
    {
      LOBYTE(v29[0]) = 1;
      OUTLINED_FUNCTION_6_18();
      v6 = sub_222D52F4C();
      v8 = v10;
    }

    v43 = v6;
    LOBYTE(v28[0]) = 3;
    v9 = sub_222D52F4C();
    sub_222D434C4(v9, v11);
    v24 = v29[0];
    if (v29[0] == 16)
    {
      v27 = 0xEC00000065707974;
      v22 = 0x5F6E776F6E6B6E75;
    }

    else
    {
      sub_222D432E0();
      v22 = v12;
      v27 = v13;
    }

    OUTLINED_FUNCTION_6_18();
    v21 = sub_222D52F4C();
    v26 = v14;
    LOBYTE(v29[0]) = 5;
    OUTLINED_FUNCTION_6_18();
    v23 = sub_222D52F5C() & 1;
    LOBYTE(v28[0]) = 2;
    sub_222D47374();
    sub_222D52F6C();
    sub_222D51EFC();
    swift_allocObject();
    sub_222D51EEC();
    sub_222D458A8();
    sub_222D51EDC();
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    sub_222D45898(v24);

    OUTLINED_FUNCTION_15_8();
    v25 = v37;
    v20 = v38;
    v19 = v39;
    v18 = v40;
    v17 = v41;
    v28[0] = v43;
    v28[1] = v8;
    v28[2] = v37;
    v28[3] = v38;
    v28[4] = v39;
    v28[5] = v40;
    LOBYTE(v28[6]) = v41;
    *(&v28[6] + 1) = *v42;
    HIDWORD(v28[6]) = *&v42[3];
    v28[7] = v22;
    v28[8] = v27;
    v28[9] = v21;
    v28[10] = v26;
    LOBYTE(v28[11]) = v23;
    memcpy(v4, v28, 0x59uLL);
    sub_222D2792C(v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v29[0] = v43;
    v29[1] = v8;
    v29[2] = v25;
    v29[3] = v20;
    v29[4] = v19;
    v29[5] = v18;
    v30 = v17;
    *v31 = *v42;
    *&v31[3] = *&v42[3];
    v32 = v22;
    v33 = v27;
    v34 = v21;
    v35 = v26;
    v36 = v23;
    sub_222D27964(v29);
  }

  OUTLINED_FUNCTION_20();
}

unint64_t sub_222D46594()
{
  result = qword_27D03C790;
  if (!qword_27D03C790)
  {
    result = swift_getWitnessTable(aIN_0, &type metadata for StructuredParameterCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C790);
  }

  return result;
}

void StructuredParameter.encode(to:)()
{
  OUTLINED_FUNCTION_19_4();
  v40 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7A0, &qword_222D58AF8);
  OUTLINED_FUNCTION_113();
  v6 = v5;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = *(v0 + 24);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v32 = *(v0 + 16);
  v33 = v12;
  v34 = v11;
  v31 = *(v0 + 48);
  v13 = *(v0 + 64);
  v39 = *(v0 + 56);
  v37 = v10;
  v38 = v13;
  v14 = *(v0 + 72);
  v35 = *(v0 + 80);
  v36 = v14;
  v46 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_222D46594();
  sub_222D531AC();
  LOBYTE(v41) = 0;
  v15 = v40;
  sub_222D52FDC();
  if (v15)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v17 = v35;
    v16 = v36;
    v18 = v37;
    LOBYTE(v41) = 3;
    sub_222D52FDC();
    v40 = v6;
    if (v17)
    {
      v41 = v16;
      v42 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
      OUTLINED_FUNCTION_0_24();
      sub_222D474A0(v19);
      OUTLINED_FUNCTION_2_23();
    }

    v20 = v18;
    v21 = v33;
    if (v46 == 2)
    {
      v22 = v32;
      v23 = v34;
    }

    else
    {
      LOBYTE(v41) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
      OUTLINED_FUNCTION_0_24();
      sub_222D47700(v24);
      OUTLINED_FUNCTION_2_23();
      v23 = v34;
      v22 = v32;
    }

    sub_222D51F2C();
    swift_allocObject();
    sub_222D51F1C();
    v41 = v22;
    v42 = v20;
    v43 = v21;
    v44 = v23;
    v45 = v31;
    sub_222D24948(v22, v20, v21, v23, v31);
    sub_222D45974();
    v25 = sub_222D51F0C();
    v27 = v26;
    sub_222D249C4(v41, v42, v43, v44, v45);

    v41 = v25;
    v42 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7A8, &qword_222D58B00);
    sub_222D473C8();
    OUTLINED_FUNCTION_2_23();
    v28 = OUTLINED_FUNCTION_11_8();
    v29(v28);
    sub_222D27918(v25, v27);
  }

  OUTLINED_FUNCTION_20();
}

void SiriResponseManifest.__allocating_init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_19_4();
  v53 = v10;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7D8, &unk_222D58B18);
  OUTLINED_FUNCTION_113();
  v51 = v13;
  v52 = v14;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = sub_222D5210C();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  swift_allocObject();
  v22 = sub_222D26260(0, 0, 0, &v62, 0, 0, v20, 2, 0);
  v23 = v12[3];
  v54 = v12;
  v24 = v12;
  v25 = v17;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_222D474FC();
  v26 = v53;
  sub_222D5318C();
  if (v26)
  {
  }

  else
  {
    v53 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7E8, &qword_222D58B28);
    v61[31] = 0;
    sub_222D47550();
    v27 = v51;
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    OUTLINED_FUNCTION_16_0(v22 + 16, v61);
    *(v22 + 16) = a10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C308, &qword_222D58B30);
    v60 = 2;
    sub_222D47628();
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    v50 = v20;
    v48 = v63;
    v49 = v62;
    v46 = v65;
    v47 = v64;
    OUTLINED_FUNCTION_16_0(v22 + 24, &v58);
    v28 = *(v22 + 24);
    v29 = *(v22 + 40);
    v30 = *(v22 + 72);
    v59[2] = *(v22 + 56);
    v59[3] = v30;
    v59[0] = v28;
    v59[1] = v29;
    v31 = v49;
    *(v22 + 40) = v48;
    *(v22 + 24) = v31;
    v32 = v47;
    *(v22 + 72) = v46;
    *(v22 + 56) = v32;
    sub_222CDC53C(v59, &qword_27D03C308, &qword_222D58B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
    LOBYTE(v55[0]) = 3;
    OUTLINED_FUNCTION_4_23();
    sub_222D474A0(v33);
    v34 = v27;
    sub_222D52F6C();
    v35 = v57[0];
    v36 = v57[1];
    OUTLINED_FUNCTION_16_0(v22 + 88, v57);
    *(v22 + 88) = v35;
    *(v22 + 96) = v36;

    v56 = 4;
    v37 = v34;
    sub_222D52F6C();
    v40 = v52;
    v41 = v53;
    v42 = v50;
    if (v55[1])
    {
      sub_222D520BC();

      v38 = v42;
      v39 = 0;
    }

    else
    {
      v38 = v50;
      v39 = 1;
    }

    __swift_storeEnumTagSinglePayload(v38, v39, 1, v41);
    v43 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
    swift_beginAccess();
    sub_222D27804(v42, v22 + v43);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
    v56 = 6;
    OUTLINED_FUNCTION_4_23();
    sub_222D47700(v44);
    OUTLINED_FUNCTION_8_12();
    sub_222D52F6C();
    LOBYTE(v43) = v55[0];
    (*(v40 + 8))(v25, v37);
    v45 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
    OUTLINED_FUNCTION_16_0(v22 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking, v55);
    *(v22 + v45) = v43;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  OUTLINED_FUNCTION_20();
}

void SiriResponseManifest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_4();
  a22 = v25;
  a23 = v26;
  v27 = v24;
  v28 = v23;
  v30 = v29;
  sub_222D5210C();
  OUTLINED_FUNCTION_113();
  v58 = v32;
  v59 = v31;
  MEMORY[0x28223BE20](v31);
  v57 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v34);
  v36 = &v57 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C820, &qword_222D58B38);
  OUTLINED_FUNCTION_113();
  v60 = v37;
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v38);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_222D474FC();
  sub_222D531AC();
  OUTLINED_FUNCTION_25(v28 + 16, &v65);
  if (*(v28 + 16))
  {
    *&v63[0] = *(v28 + 16);
    LOBYTE(v62[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C838, &unk_222D58B40);
    sub_222D47834();
    OUTLINED_FUNCTION_5_18(v63, v62);
    v27 = v24;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_25(v28 + 24, &v64);
  if (*(v28 + 32))
  {
    v39 = *(v28 + 40);
    v63[0] = *(v28 + 24);
    v63[1] = v39;
    v40 = *(v28 + 72);
    v63[2] = *(v28 + 56);
    v63[3] = v40;
    v41 = *(v28 + 40);
    v62[0] = *(v28 + 24);
    v62[1] = v41;
    v42 = *(v28 + 72);
    v62[2] = *(v28 + 56);
    v62[3] = v42;
    a13 = 2;
    sub_222CDD5C0(v63, v61, &qword_27D03C308, &qword_222D58B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C308, &qword_222D58B30);
    sub_222D4775C();
    OUTLINED_FUNCTION_5_18(v62, &a13);
    v27 = v24;
    if (v24)
    {
      OUTLINED_FUNCTION_13_8();
      sub_222CDC53C(v61, &qword_27D03C308, &qword_222D58B30);
LABEL_17:
      v55 = OUTLINED_FUNCTION_12_7();
      v56(v55);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_13_8();
    sub_222CDC53C(v61, &qword_27D03C308, &qword_222D58B30);
  }

  OUTLINED_FUNCTION_25(v28 + 88, v63);
  v43 = *(v28 + 96);
  if (v43)
  {
    *&v62[0] = *(v28 + 88);
    *(&v62[0] + 1) = v43;
    v61[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C448, &unk_222D56E00);
    OUTLINED_FUNCTION_0_24();
    sub_222D474A0(v44);
    OUTLINED_FUNCTION_5_18(v62, v61);
    v27 = v24;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  v45 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir;
  OUTLINED_FUNCTION_25(v28 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_catTemplateDir, v62);
  sub_222CDD5C0(v28 + v45, v36, &qword_27D03BE40, &unk_222D54A70);
  v46 = v59;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v59);
  sub_222CDC53C(v36, &qword_27D03BE40, &unk_222D54A70);
  if (EnumTagSinglePayload == 1)
  {
LABEL_15:
    v53 = OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking;
    OUTLINED_FUNCTION_25(v28 + OBJC_IVAR____TtC16SiriDialogEngine20SiriResponseManifest_listenAfterSpeaking, v61);
    if (*(v28 + v53) != 2)
    {
      a13 = *(v28 + v53);
      a12 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C7C0, &unk_222D58B08);
      OUTLINED_FUNCTION_0_24();
      sub_222D47700(v54);
      OUTLINED_FUNCTION_5_18(&a13, &a12);
    }

    goto LABEL_17;
  }

  if (!__swift_getEnumTagSinglePayload(v28 + v45, 1, v46))
  {
    v48 = v58;
    v49 = v28 + v45;
    v50 = v57;
    (*(v58 + 16))(v57, v49, v46);
    sub_222D520FC();
    (*(v48 + 8))(v50, v59);
  }

  v61[0] = 4;
  sub_222D52FDC();
  if (!v27)
  {

    goto LABEL_15;
  }

  v51 = OUTLINED_FUNCTION_12_7();
  v52(v51);

LABEL_18:
  OUTLINED_FUNCTION_20();
}

unint64_t sub_222D47374()
{
  result = qword_27D03C798;
  if (!qword_27D03C798)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27D03C798);
  }

  return result;
}

unint64_t sub_222D473C8()
{
  result = qword_27D03C7B0;
  if (!qword_27D03C7B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7A8, &qword_222D58B00);
    v4[0] = sub_222D4744C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D03C7B0);
  }

  return result;
}

unint64_t sub_222D4744C()
{
  result = qword_27D03C7B8;
  if (!qword_27D03C7B8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27D03C7B8);
  }

  return result;
}

uint64_t sub_222D474A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C448, &unk_222D56E00);
    result = OUTLINED_FUNCTION_14_8(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D474FC()
{
  result = qword_27D03C7E0;
  if (!qword_27D03C7E0)
  {
    result = swift_getWitnessTable(byte_222D58D70, &type metadata for ResponseManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27D03C7E0);
  }

  return result;
}

unint64_t sub_222D47550()
{
  result = qword_27D03C7F0;
  if (!qword_27D03C7F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7E8, &qword_222D58B28);
    v4[0] = sub_222D475D4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27D03C7F0);
  }

  return result;
}

unint64_t sub_222D475D4()
{
  result = qword_27D03C7F8;
  if (!qword_27D03C7F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StructuredParameter, &type metadata for StructuredParameter, v0, v1);
    atomic_store(result, &qword_27D03C7F8);
  }

  return result;
}

unint64_t sub_222D47628()
{
  result = qword_27D03C800;
  if (!qword_27D03C800)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C308, &qword_222D58B30);
    v4[0] = sub_222D476AC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27D03C800);
  }

  return result;
}

unint64_t sub_222D476AC()
{
  result = qword_27D03C808;
  if (!qword_27D03C808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseManifestDialog, &type metadata for ResponseManifestDialog, v0, v1);
    atomic_store(result, &qword_27D03C808);
  }

  return result;
}

uint64_t sub_222D47700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7C0, &unk_222D58B08);
    result = OUTLINED_FUNCTION_14_8(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D4775C()
{
  result = qword_27D03C828;
  if (!qword_27D03C828)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C308, &qword_222D58B30);
    v4[0] = sub_222D477E0();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D03C828);
  }

  return result;
}

unint64_t sub_222D477E0()
{
  result = qword_27D03C830;
  if (!qword_27D03C830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResponseManifestDialog, &type metadata for ResponseManifestDialog, v0, v1);
    atomic_store(result, &qword_27D03C830);
  }

  return result;
}

unint64_t sub_222D47834()
{
  result = qword_27D03C840;
  if (!qword_27D03C840)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C838, &unk_222D58B40);
    v4[0] = sub_222D478B8();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D03C840);
  }

  return result;
}

unint64_t sub_222D478B8()
{
  result = qword_27D03C848;
  if (!qword_27D03C848)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C7E8, &qword_222D58B28);
    v4[0] = sub_222D4793C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27D03C848);
  }

  return result;
}

unint64_t sub_222D4793C()
{
  result = qword_27D03C850;
  if (!qword_27D03C850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StructuredParameter, &type metadata for StructuredParameter, v0, v1);
    atomic_store(result, &qword_27D03C850);
  }

  return result;
}

unint64_t sub_222D47990(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_222D479E4(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x656D614E6C6F6F74;
      break;
    case 2:
      result = 0x676F6C616964;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D47AD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_222D52ECC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222D47B20(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65756C6176;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x74696E61666F7270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222D47BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D47990(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_222D47C14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_222D479E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D47C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D479DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D47C90(uint64_t a1)
{
  v2 = sub_222D474FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D47CCC(uint64_t a1)
{
  v2 = sub_222D474FC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_222D47D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222D47AD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_222D47D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D47B20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D47D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D47B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D47DC4(uint64_t a1)
{
  v2 = sub_222D46594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D47E00(uint64_t a1)
{
  v2 = sub_222D46594();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall SiriResponseManifest.asJSONString()()
{
  v0 = sub_222D5296C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_222D51F2C();
  swift_allocObject();
  sub_222D51F1C();
  sub_222D47F98();
  v1 = sub_222D51F0C();
  v3 = v2;

  sub_222D5295C();
  v4 = sub_222D5294C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_222CE6210(v1, v3);
  }

  else
  {
    sub_222CE6210(v1, v3);
    v7 = 0xE200000000000000;
    v6 = 32123;
  }

  v8 = v6;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_222D47F98()
{
  result = qword_27D03C858;
  if (!qword_27D03C858)
  {
    v3 = type metadata accessor for SiriResponseManifest(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SiriResponseManifest, v3, v0, v1);
    atomic_store(result, &qword_27D03C858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseManifestCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseManifestCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredParameterCodingKeys(unsigned __int8 *a1, unsigned int a2)
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