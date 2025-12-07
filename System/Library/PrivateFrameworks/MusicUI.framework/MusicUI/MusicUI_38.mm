uint64_t sub_216A5B698(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A18, &qword_21703A8E8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_14_39(a2, a2[3]);
  sub_216A5C8F8();
  sub_21700F974();
  sub_217006224();
  OUTLINED_FUNCTION_3_81();
  sub_216A5C94C(v9, v10, MEMORY[0x277CC95F8]);
  sub_21700F704();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216A5B7EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000002170872C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5B88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5B7EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5B8B8(uint64_t a1)
{
  v2 = sub_216A5C8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5B8F4(uint64_t a1)
{
  v2 = sub_216A5C8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5B96C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A38, &qword_21703A900);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67_0();
  v7 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_39(v7, v8);
  sub_216A5C994();
  sub_21700F964();
  if (!v1)
  {
    sub_21700F614();
    (*(v5 + 8))(v2, v3);
  }

  return OUTLINED_FUNCTION_90();
}

void sub_216A5BA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A30, &qword_21703A8F8);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_14_39(v23, v23[3]);
  sub_216A5C994();
  sub_21700F974();
  sub_21700F6D4();
  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5BBAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000002170872E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5BBAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5BC78(uint64_t a1)
{
  v2 = sub_216A5C994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5BCB4(uint64_t a1)
{
  v2 = sub_216A5C994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5BCF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216A5B96C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_216A5BD90()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_2();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  sub_21700F964();
  if (!v0)
  {
    v12 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = OUTLINED_FUNCTION_4_70(&qword_280E2A208);
    OUTLINED_FUNCTION_9_52(v14, v15, v16, v17, v14);
    (*(v10 + 8))(v1, v8);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A5BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a10 = v20;
  v26 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v24();
  sub_21700F974();
  sub_21700F734();
  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5C03C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000217087300 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5C0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5C03C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5C108(uint64_t a1)
{
  v2 = sub_216A5C9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5C144(uint64_t a1)
{
  v2 = sub_216A5C9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216A5C180(_BYTE *a1@<X8>)
{
  sub_216A5BD90();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

unint64_t sub_216A5C228()
{
  result = qword_280E46608;
  if (!qword_280E46608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46608);
  }

  return result;
}

unint64_t sub_216A5C27C()
{
  result = qword_280E46650;
  if (!qword_280E46650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46650);
  }

  return result;
}

unint64_t sub_216A5C2D0()
{
  result = qword_280E46670;
  if (!qword_280E46670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46670);
  }

  return result;
}

unint64_t sub_216A5C324()
{
  result = qword_280E466B0;
  if (!qword_280E466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466B0);
  }

  return result;
}

unint64_t sub_216A5C378()
{
  result = qword_280E46610;
  if (!qword_280E46610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46610);
  }

  return result;
}

unint64_t sub_216A5C3CC()
{
  result = qword_280E46630;
  if (!qword_280E46630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46630);
  }

  return result;
}

unint64_t sub_216A5C420()
{
  result = qword_280E46690;
  if (!qword_280E46690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46690);
  }

  return result;
}

unint64_t sub_216A5C508()
{
  result = qword_280E46668;
  if (!qword_280E46668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46668);
  }

  return result;
}

unint64_t sub_216A5C55C()
{
  result = qword_280E29DD8;
  if (!qword_280E29DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFBB8, &qword_21703A8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29DD8);
  }

  return result;
}

unint64_t sub_216A5C5D8()
{
  result = qword_280E46688;
  if (!qword_280E46688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46688);
  }

  return result;
}

uint64_t sub_216A5C62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A5C69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A5C704()
{
  result = qword_280E466C8;
  if (!qword_280E466C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466C8);
  }

  return result;
}

uint64_t sub_216A5C758(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_216A5C7D4()
{
  result = qword_280E2A240;
  if (!qword_280E2A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF6F8, &qword_21703A8D0);
    sub_216A5C94C(&unk_280E2A250, MEMORY[0x277D21BD0], &protocol conformance descriptor for NetResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A240);
  }

  return result;
}

uint64_t sub_216A5C888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A5C8F8()
{
  result = qword_280E46628;
  if (!qword_280E46628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46628);
  }

  return result;
}

uint64_t sub_216A5C94C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A5C994()
{
  result = qword_280E46648;
  if (!qword_280E46648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46648);
  }

  return result;
}

unint64_t sub_216A5C9E8()
{
  result = qword_280E466A8;
  if (!qword_280E466A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466A8);
  }

  return result;
}

uint64_t sub_216A5CA8C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_10_4();
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

  return *a1;
}

_BYTE *sub_216A5CAD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A5CB88()
{
  result = qword_27CAC0A50;
  if (!qword_27CAC0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A50);
  }

  return result;
}

unint64_t sub_216A5CBE0()
{
  result = qword_27CAC0A58;
  if (!qword_27CAC0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A58);
  }

  return result;
}

unint64_t sub_216A5CC38()
{
  result = qword_27CAC0A60;
  if (!qword_27CAC0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A60);
  }

  return result;
}

unint64_t sub_216A5CC90()
{
  result = qword_27CAC0A68;
  if (!qword_27CAC0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A68);
  }

  return result;
}

unint64_t sub_216A5CCE8()
{
  result = qword_27CAC0A70;
  if (!qword_27CAC0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A70);
  }

  return result;
}

unint64_t sub_216A5CD40()
{
  result = qword_27CAC0A78;
  if (!qword_27CAC0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0A78);
  }

  return result;
}

unint64_t sub_216A5CD98()
{
  result = qword_280E46698;
  if (!qword_280E46698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46698);
  }

  return result;
}

unint64_t sub_216A5CDF0()
{
  result = qword_280E466A0;
  if (!qword_280E466A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466A0);
  }

  return result;
}

unint64_t sub_216A5CE48()
{
  result = qword_280E46638;
  if (!qword_280E46638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46638);
  }

  return result;
}

unint64_t sub_216A5CEA0()
{
  result = qword_280E46640;
  if (!qword_280E46640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46640);
  }

  return result;
}

unint64_t sub_216A5CEF8()
{
  result = qword_280E46618;
  if (!qword_280E46618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46618);
  }

  return result;
}

unint64_t sub_216A5CF50()
{
  result = qword_280E46620;
  if (!qword_280E46620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46620);
  }

  return result;
}

unint64_t sub_216A5CFA8()
{
  result = qword_280E466B8;
  if (!qword_280E466B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466B8);
  }

  return result;
}

unint64_t sub_216A5D000()
{
  result = qword_280E466C0;
  if (!qword_280E466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E466C0);
  }

  return result;
}

unint64_t sub_216A5D058()
{
  result = qword_280E46678;
  if (!qword_280E46678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46678);
  }

  return result;
}

unint64_t sub_216A5D0B0()
{
  result = qword_280E46680;
  if (!qword_280E46680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46680);
  }

  return result;
}

unint64_t sub_216A5D108()
{
  result = qword_280E46658;
  if (!qword_280E46658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46658);
  }

  return result;
}

unint64_t sub_216A5D160()
{
  result = qword_280E46660;
  if (!qword_280E46660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46660);
  }

  return result;
}

void sub_216A5D1D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = v9;
  v12 = v1;
  v2 = type metadata accessor for InternalBootstrap(319, &v10);
  if (v4 <= 0x3F)
  {
    v13 = 0;
    v10 = v2;
    type metadata accessor for PresentationStack(255, v9, v1, v3);
    swift_getWitnessTable();
    v5 = sub_2170086B4();
    if (v6 <= 0x3F)
    {
      v14 = 0;
      *&v11 = v5;
      sub_216A5D30C(319);
      if (v8 <= 0x3F)
      {
        v15 = 0;
        *(&v11 + 1) = v7;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A5D30C(uint64_t a1)
{
  if (!qword_27CAC0B08)
  {
    sub_217008034();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC0B08);
    }
  }
}

uint64_t sub_216A5D3A8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = type metadata accessor for PresentationItem.Destination(0, *(*v2 + 504), *(*v2 + 512), a1);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  (*(v7 + 16))(&v17 - v10, v2 + *(v4 + 520), v5, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    result = (*(v7 + 8))(v11, v5);
    v13 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    v12 = *v11;
    v13 = *(v11 + 2);
    v17 = *(v11 + 24);
    v18 = v12;

    v16 = v17;
    v15 = v18;
  }

  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_216A5D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for PresentationItem.Destination(0, *(*v4 + 504), *(*v4 + 512), a4);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v8 + 16))(&v15 - v11, v4 + *(v5 + 520), v6, v10);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v8 + 8))(v12, v6);
    return 0;
  }

  else
  {
    v13 = *(v12 + 5);
  }

  return v13;
}

uint64_t sub_216A5D658@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  *a3 = a1;
  v5 = v4 + 11;
  v6 = v4 + 13;
  v13 = v4[12];
  v12 = v4[10];
  a3[1] = sub_216A5D728(a2);
  a3[2] = v7;
  *&v9 = v12;
  *&v8 = v13;
  *(&v9 + 1) = *v5;
  *(&v8 + 1) = *v6;
  v14[0] = v9;
  v14[1] = v8;
  v10 = *(type metadata accessor for PresentationSourceModifier(0, v14) + 56);
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18, &qword_21703B030);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216A5D728(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_105();
  swift_getWitnessTable();

  return sub_217008684();
}

uint64_t sub_216A5D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PresentationStack(0, *(a1 + 24), *(a1 + 40), a4);
  OUTLINED_FUNCTION_1_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_42();

  return MEMORY[0x282130E30](v4, v5, v6, v7);
}

uint64_t sub_216A5D7FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v161 = a1;
  v176 = a3;
  v186 = sub_217008034();
  OUTLINED_FUNCTION_1();
  v175 = v4;
  MEMORY[0x28223BE20](v5);
  v174 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = *(a2 - 1);
  v190 = *(v197 + 64);
  MEMORY[0x28223BE20](v7);
  v177 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v192 = &v142 - v10;
  OUTLINED_FUNCTION_6_55();
  swift_getWitnessTable();
  v11 = sub_2170097A4();
  v12 = a2[5];
  v13 = a2[3];
  v193 = v13;
  v14 = v12;
  v191 = v12;
  v16 = type metadata accessor for PresentationItem(255, v13, v12, v15);
  v187 = a2;
  *&v17 = a2[4];
  *&v18 = a2[2];
  *(&v18 + 1) = v13;
  *(&v17 + 1) = v14;
  v198 = v18;
  v199 = v17;
  *v210 = v17;
  v209 = v18;
  v19 = type metadata accessor for PresentationView(255, &v209);
  OUTLINED_FUNCTION_7_31();
  v20 = v11;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_82();
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_125();
  v23 = swift_getWitnessTable();
  *&v209 = v20;
  v24 = v20;
  v189 = v20;
  *(&v209 + 1) = v16;
  *v210 = v19;
  v25 = v19;
  *&v210[8] = WitnessTable;
  v26 = WitnessTable;
  v155 = WitnessTable;
  *&v210[16] = v22;
  v211 = v23;
  v27 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v164 = *(OpaqueTypeMetadata2 - 8);
  v188 = OpaqueTypeMetadata2 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v179 = v30;
  *&v209 = v24;
  *(&v209 + 1) = v16;
  *v210 = v25;
  *&v210[8] = v26;
  *&v210[16] = v22;
  v211 = v27;
  v31 = OUTLINED_FUNCTION_16_36();
  *&v209 = OpaqueTypeMetadata2;
  v32 = OpaqueTypeMetadata2;
  v158 = OpaqueTypeMetadata2;
  *(&v209 + 1) = v16;
  *v210 = v25;
  v33 = v25;
  *&v210[8] = v31;
  v34 = v31;
  v156 = v31;
  *&v210[16] = v22;
  v178 = v22;
  v211 = v27;
  v35 = v27;
  v36 = swift_getOpaqueTypeMetadata2();
  v160 = *(v36 - 8);
  v162 = v36 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  v182 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  v195 = v39;
  *&v209 = v32;
  *(&v209 + 1) = v16;
  *v210 = v33;
  *&v210[8] = v34;
  *&v210[16] = v22;
  v40 = v35;
  v211 = v35;
  v41 = OUTLINED_FUNCTION_16_36();
  v42 = sub_2167B2E14();
  v43 = sub_2167C4D74();
  *&v209 = v36;
  *(&v209 + 1) = MEMORY[0x277D837D0];
  *v210 = v33;
  v44 = v33;
  *&v210[8] = v39;
  *&v210[16] = v16;
  v211 = v41;
  v212 = v42;
  v213 = v40;
  v45 = v40;
  v214 = v43;
  v46 = swift_getOpaqueTypeMetadata2();
  v152 = *(v46 - 8);
  v153 = v46 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v185 = v48;
  v163 = v36;
  *&v209 = v36;
  *(&v209 + 1) = MEMORY[0x277D837D0];
  v49 = v44;
  *v210 = v44;
  v50 = v195;
  *&v210[8] = v195;
  *&v210[16] = v16;
  v159 = v41;
  v211 = v41;
  v212 = v42;
  v213 = v45;
  v214 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v209 = v46;
  *(&v209 + 1) = MEMORY[0x277D837D0];
  *v210 = v49;
  v52 = v49;
  v150 = v16;
  v151 = v49;
  *&v210[8] = v50;
  *&v210[16] = v16;
  v211 = OpaqueTypeConformance2;
  v212 = v42;
  v213 = v45;
  v196 = v45;
  v214 = v43;
  v53 = swift_getOpaqueTypeMetadata2();
  v147 = *(v53 - 8);
  v148 = v53 - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  v170 = v46;
  v171 = v55;
  *&v209 = v46;
  *(&v209 + 1) = MEMORY[0x277D837D0];
  *v210 = v52;
  *&v210[8] = v195;
  *&v210[16] = v16;
  v165 = OpaqueTypeConformance2;
  v211 = OpaqueTypeConformance2;
  v183 = v43;
  v184 = v42;
  v212 = v42;
  v213 = v45;
  v214 = v43;
  v56 = OUTLINED_FUNCTION_16_36();
  v57 = sub_216A5F1E0();
  v173 = v53;
  *&v209 = v53;
  *(&v209 + 1) = v186;
  v169 = v56;
  *v210 = v56;
  v167 = v57;
  *&v210[8] = v57;
  v172 = swift_getOpaqueTypeMetadata2();
  v143 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v166 = &v142 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v168 = &v142 - v60;
  v61 = v187;
  v62 = v194;
  sub_216A5D798(v187, v63, v64, v65);
  v202 = v198;
  v203 = v199;
  swift_getKeyPath();
  type metadata accessor for PresentationStack(255, v193, v191, v66);
  OUTLINED_FUNCTION_1_105();
  v149 = swift_getWitnessTable();
  sub_2170086A4();

  v144 = *(&v209 + 1);
  v145 = v209;
  v146 = *v210;
  v67 = v197;
  v68 = *(v197 + 16);
  v191 = v197 + 16;
  v193 = v68;
  v215 = v209;
  v216 = *v210;
  v69 = v192;
  v68(v192, v62, v61);
  v70 = *(v67 + 80);
  v71 = (v70 + 48) & ~v70;
  v180 = &v190[v71];
  v181 = v70;
  v72 = swift_allocObject();
  v73 = *(v67 + 32);
  v154 = v164;
  v157 = v160;
  v160 = v152;
  v162 = v147;
  v74 = v143;
  v75 = v199;
  *(v72 + 16) = v198;
  *(v72 + 32) = v75;
  v164 = v74;
  v76 = v187;
  v190 = v73;
  (v73)(v72 + v71, v69, v187);
  v197 = v67 + 32;
  v77 = v177;
  v78 = OUTLINED_FUNCTION_19_33();
  v79(v78);
  v80 = swift_allocObject();
  v81 = OUTLINED_FUNCTION_21_35(v80);
  (v73)(v82 + v71, v77, v76, v81);
  swift_checkMetadataState();
  v189 = swift_checkMetadataState();
  v188 = swift_checkMetadataState();
  OUTLINED_FUNCTION_14_40();
  v142 = v155;
  sub_21700A9F4();

  sub_216A5D798(v76, v83, v84, v85);
  v200 = v198;
  v201 = v199;
  swift_getKeyPath();
  sub_2170086A4();

  v152 = *(&v209 + 1);
  v153 = v209;
  v155 = *v210;
  v215 = v209;
  v216 = *v210;
  v86 = v192;
  v87 = OUTLINED_FUNCTION_19_33();
  v88(v87);
  v89 = swift_allocObject();
  v90 = OUTLINED_FUNCTION_21_35(v89);
  (v190)(v91 + v71, v86, v76, v90);
  v92 = v177;
  v193(v177, v62, v76);
  v93 = swift_allocObject();
  v94 = OUTLINED_FUNCTION_21_35(v93);
  v161 = (v70 + 48) & ~v70;
  (v190)(v95 + v161, v92, v76, v94);
  OUTLINED_FUNCTION_14_40();
  v146 = v156;
  v96 = v158;
  v97 = v179;
  sub_21700A5C4();

  (*(v154 + 8))(v97, v96);

  v98 = sub_216AF4554();

  if (!v98 || (sub_216A5D3A8(v99, &v215), , !v216) || (v101 = *(&v215 + 1), v100 = v215, v218 = v216, sub_2166997CC(&v218, &qword_27CAB6BA0, qword_217037400), v219 = v217, sub_2166997CC(&v219, &qword_27CABAA40, &unk_217014260), !v101))
  {

    v100 = 0;
    v101 = 0xE000000000000000;
  }

  *&v209 = v100;
  *(&v209 + 1) = v101;
  sub_216A5E98C(v76, &unk_282925658, &unk_282925680, sub_216A5F450, sub_216A5F510);

  v102 = sub_216AF4554();

  v204 = v102;
  MEMORY[0x28223BE20](v103);
  MEMORY[0x28223BE20](v104);
  v149 = v183;
  v148 = v196;
  v147 = v184;
  v146 = v159;
  v145 = v189;
  v144 = v195;
  v143 = v188;
  v142 = MEMORY[0x277D837D0];
  v105 = v163;
  v106 = v182;
  sub_21700A9A4();

  (*(v157 + 8))(v106, v105);

  v107 = sub_216AF457C();

  if (!v107 || (sub_216A5D3A8(v108, &v209), , !*v210) || (v110 = *(&v209 + 1), v109 = v209, v220 = *v210, sub_2166997CC(&v220, &qword_27CAB6BA0, qword_217037400), v221 = *&v210[8], sub_2166997CC(&v221, &qword_27CABAA40, &unk_217014260), !v110))
  {

    v109 = 0;
    v110 = 0xE000000000000000;
  }

  v179 = v110;
  v204 = v109;
  v205 = v110;
  v111 = v187;
  v112 = v194;
  sub_216A5E98C(v187, &unk_282925608, &unk_282925630, sub_216A5F420, sub_216A5F438);
  LODWORD(v182) = sub_216A5EB74();

  v113 = sub_216AF457C();

  v208 = v113;
  MEMORY[0x28223BE20](v114);
  MEMORY[0x28223BE20](v115);
  v149 = *(&v199 + 1);
  v148 = v183;
  v147 = v196;
  v146 = v184;
  v145 = v165;
  v144 = v189;
  v143 = v195;
  v142 = v188;
  v116 = v170;
  v117 = v171;
  v118 = v185;
  sub_21700A6C4();

  v119 = (*(v160 + 8))(v118, v116);
  v120 = v174;
  sub_216C0C9BC(v119, v121, v122, v123, v124, v125, v126, v127, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v128 = v192;
  v193(v192, v112, v111);
  v129 = swift_allocObject();
  v130 = OUTLINED_FUNCTION_21_35(v129);
  (v190)(v131 + v161, v128, v111, v130);
  v132 = v173;
  v133 = v186;
  v134 = v169;
  v135 = v167;
  OUTLINED_FUNCTION_10_4();
  v136 = v166;
  sub_21700AB14();

  (*(v175 + 8))(v120, v133);
  (*(v162 + 8))(v117, v132);
  v204 = v132;
  v205 = v133;
  v206 = v134;
  v207 = v135;
  OUTLINED_FUNCTION_0_12();
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v168;
  v139 = v172;
  sub_2166C24DC(v136, v172, v137);
  v140 = *(v164 + 8);
  v140(v136, v139);
  sub_2166C24DC(v138, v139, v137);
  return (v140)(v138, v139);
}

uint64_t sub_216A5E930()
{
  v0 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier(v0, v1);

  sub_216AF4764();
}

uint64_t sub_216A5E98C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v32 = v10;
  v33 = v12;
  v12(v11, v9);
  sub_21700EA34();
  v13 = sub_21700EA24();
  v14 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  v17 = a1[2];
  v30 = a1[3];
  v18 = v30;
  v31 = v17;
  *(v15 + 4) = v17;
  *(v15 + 5) = v18;
  v19 = a1[5];
  v29 = a1[4];
  *(v15 + 6) = v29;
  *(v15 + 7) = v19;
  v28 = *(v7 + 32);
  v28(&v15[v14], v11, a1);
  v33(v11, v34, a1);
  v20 = sub_21700EA24();
  v21 = swift_allocObject();
  *(v21 + 2) = v20;
  v23 = v30;
  v22 = v31;
  *(v21 + 3) = MEMORY[0x277D85700];
  *(v21 + 4) = v22;
  v24 = v28;
  v25 = v29;
  *(v21 + 5) = v23;
  *(v21 + 6) = v25;
  *(v21 + 7) = v19;
  v24(&v21[v14], v11, a1);
  sub_21700B0F4();
  return v38;
}

uint64_t sub_216A5EB74()
{

  v0 = sub_216AF457C();

  if (v0 && (sub_216A5D3A8(v1, v11), , v12))
  {
    v3 = v11[0];
    v2 = v11[1];
    v18 = v12;
    sub_2166997CC(&v18, &qword_27CAB6BA0, qword_217037400);
    v19 = v13;
    sub_2166997CC(&v19, &qword_27CABAA40, &unk_217014260);
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = sub_216AF457C();

  if (v4)
  {
    sub_216A5D3A8(v5, &v14);

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v4 = v17;
      v20 = v14;
      sub_21700DF14();
      sub_2166997CC(&v20, &qword_27CABAA40, &unk_217014260);
      v21 = v6;
      sub_2166997CC(&v21, &qword_27CAB6BA0, qword_217037400);
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_216E1A4B8(v3, v2);

  if (v8)
  {
    v9 = sub_216E1A4B8(v7, v4);

    if (v9)
    {
      return 2;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_216A5ED18()
{
  nullsub_1();
  v0 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationView(v0, v1);
  OUTLINED_FUNCTION_0_125();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v2, v3, v4);

  OUTLINED_FUNCTION_42();
  sub_2166C24DC(v5, v6, v7);
}

uint64_t sub_216A5EE0C@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  result = sub_216A5D3A8(a1, &v15);
  v4 = v16;
  if (!v16)
  {
    v13 = 0;
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v18[1] = v15;
  v18[0] = v17;
  sub_216A2841C(v18, v14);
  OUTLINED_FUNCTION_42();
  sub_2166997CC(v5, v6, v7);
  v14[0] = v4;
  sub_2166997CC(v14, &qword_27CAB6BA0, qword_217037400);
  OUTLINED_FUNCTION_42();
  result = sub_2166997CC(v8, v9, v10);
  v11 = *(&v18[0] + 1);
  if (!*(&v18[0] + 1))
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = MEMORY[0x277D84F90];
  v13 = *&v18[0];
LABEL_7:
  *a2 = v13;
  a2[1] = v11;
  a2[2] = 0;
  a2[3] = v12;
  return result;
}

uint64_t sub_216A5EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_217008034();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v13 = type metadata accessor for PresentationSourceModifier(0, &v22);
  sub_216C0C9BC(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  sub_216841E38(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_216A5F000@<X0>(uint64_t (*a1)(uint64_t)@<X7>, BOOL *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier(v4, v5);

  v7 = a1(v6);

  if (v7)
  {
  }

  *a2 = v7 != 0;
  return result;
}

_BYTE *sub_216A5F084(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  if ((*result & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_8_52();
    type metadata accessor for PresentationSourceModifier(v10, v11);

    a9(0);

    sub_216AF4764();
  }

  return result;
}

uint64_t sub_216A5F114(uint64_t a1)
{
  v2 = sub_217008034();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_217008DB4();
}

unint64_t sub_216A5F1E0()
{
  result = qword_27CAC0B10;
  if (!qword_27CAC0B10)
  {
    sub_217008034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B10);
  }

  return result;
}

uint64_t sub_216A5F240(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v7[0] = v1[2];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  OUTLINED_FUNCTION_7_59(a1, v7);
  OUTLINED_FUNCTION_10_50(*(v5 + 80));
  return sub_216A5E930();
}

uint64_t sub_216A5F2B4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v6[0] = v1[2];
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  OUTLINED_FUNCTION_7_59(a1, v6);
  return sub_216A5ED18();
}

uint64_t sub_216A5F3A0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v12[0] = v1[2];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  OUTLINED_FUNCTION_7_59(a1, v12);
  v6 = OUTLINED_FUNCTION_10_50(*(v5 + 80));

  return sub_216A5EEE4(v6, v7, v8, v9, v10);
}

uint64_t sub_216A5F468@<X0>(uint64_t (*a1)(uint64_t)@<X0>, BOOL *a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v9[0] = v2[4];
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  OUTLINED_FUNCTION_7_59(a1, v9);
  return sub_216A5F000(a1, a2);
}

_BYTE *sub_216A5F528(_BYTE *a1, void (*a2)(void))
{
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v11[0] = v2[4];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  OUTLINED_FUNCTION_7_59(a1, v11);
  return sub_216A5F084(a1, v2[2], v2[3], v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

uint64_t sub_216A5F5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Content(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  if (v8)
  {
    v9 = v1[3];
    if (v9)
    {

      v10 = v8;

      sub_216A5F848(v7, v10, v9, v6);
      v20[3] = sub_217006FE4();
      v20[4] = sub_216A65CBC(&qword_27CABDBF8, MEMORY[0x277D2AB38], MEMORY[0x277D2AB28]);
      __swift_allocate_boxed_opaque_existential_1(v20);
      sub_216CCB8F0();
      v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B28, &qword_21703B128) + 36));
      sub_2167B7D58(v20, (v11 + 2));
      type metadata accessor for MusicEntityAnnotationWrapper();
      sub_216A65CBC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
      *v11 = sub_217008CF4();
      v11[1] = v12;
      sub_216A65B20(v6, a1, type metadata accessor for Content);
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    type metadata accessor for SocialGraphController(0);
    OUTLINED_FUNCTION_2_86();
    sub_216A65CBC(v16, v17, &unk_217070E24);

    v18 = v8;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator(0);
    OUTLINED_FUNCTION_3_83();
    sub_216A65CBC(v14, v15, &unk_21705D6E8);
  }

  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216A5F848@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30, &qword_21703B130);
  sub_21700AEA4();
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  v9 = type metadata accessor for Content(0);
  v10 = *(v9 + 32);
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + *(v9 + 36);
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;

  v12 = a2;

  sub_216A5FBB0();
  if (v13)
  {
    v8 = sub_216F0706C();
  }

  *(a4 + 24) = v8;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_216A5F998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for UserSocialProfileCoordinator(0);
  OUTLINED_FUNCTION_3_83();
  sub_216A65CBC(v4, v5, &unk_21705D6E8);
  v6 = sub_217008CF4();
  v8 = v7;
  type metadata accessor for SocialGraphController(0);
  OUTLINED_FUNCTION_2_86();
  sub_216A65CBC(v9, v10, &unk_217070E24);
  result = sub_217008CF4();
  *a2 = a1;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = result;
  a2[4] = v12;
  return result;
}

double sub_216A5FA58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_216A5F998(*a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_216A5FAE8(uint64_t a1)
{
  result = sub_216A5FB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216A5FB10()
{
  result = qword_280E2EDC0[0];
  if (!qword_280E2EDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2EDC0);
  }

  return result;
}

uint64_t type metadata accessor for Content(uint64_t a1)
{
  result = qword_27CAC0B38;
  if (!qword_27CAC0B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A5FBB0()
{
  v0 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_216DE9EC8();
  sub_2166A6F60(&v3[*(v1 + 60)], v6, &qword_27CAB6A00, &unk_217016B60);
  sub_216A65F50(v3, type metadata accessor for SocialProfileHorizontalLockup);
  v7 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB6A00, &unk_217016B60);
    return 0;
  }

  else
  {
    v8 = *(v6 + 3);
    sub_21700DF14();
    sub_216A65F50(v6, type metadata accessor for ContentDescriptor);
  }

  return v8;
}

uint64_t sub_216A5FD30@<X0>(uint64_t *a1@<X8>)
{
  v145 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v145);
  v146 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_21700D704();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_21700D284();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v144);
  v142 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v143 = &v121 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v121 - v13;
  v134 = sub_217005EF4();
  v129 = *(v134 - 1);
  MEMORY[0x28223BE20](v134);
  v125 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = &v121 - v16;
  v17 = sub_217006FE4();
  v150 = *(v17 - 8);
  v151 = v17;
  MEMORY[0x28223BE20](v17);
  v149 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v157 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v23 - 8);
  v156 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v132 = &v121 - v26;
  MEMORY[0x28223BE20](v27);
  v148 = &v121 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v121 - v30;
  v32 = type metadata accessor for SocialProfileHorizontalLockup(0);
  MEMORY[0x28223BE20](v32);
  v141 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v121 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v121 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v121 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v121 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v121 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8, &unk_217051AD0);
  MEMORY[0x28223BE20](v49 - 8);
  v153 = &v121 - v50;
  v152 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v152);
  v155 = &v121 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v128 = &v121 - v53;
  MEMORY[0x28223BE20](v54);
  v154 = &v121 - v55;
  sub_216A5FBB0();
  if (!v56)
  {
    goto LABEL_23;
  }

  v147 = a1;

  sub_216DE9EC8();
  sub_2166A6F60(&v48[v32[13]], v31, &qword_27CAB6A00, &unk_217016B60);
  sub_216A65F50(v48, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  sub_2166A6F60(&v45[v32[12]], v157, &qword_27CAB6D60, &qword_217014E40);
  sub_216A65F50(v45, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  v57 = &v42[v32[8]];
  v58 = *(v57 + 1);
  v124 = *v57;
  sub_21700DF14();
  sub_216A65F50(v42, type metadata accessor for SocialProfileHorizontalLockup);
  sub_216DE9EC8();
  v59 = &v39[v32[7]];
  v60 = *(v59 + 1);
  v123 = *v59;
  sub_21700DF14();
  sub_216A65F50(v39, type metadata accessor for SocialProfileHorizontalLockup);
  v61 = v149;
  sub_216CCB8F0();
  v62 = sub_217006FD4();
  (*(v150 + 8))(v61, v151);
  sub_216DE9EC8();
  v63 = v36[v32[10]];
  sub_216A65F50(v36, type metadata accessor for SocialProfileHorizontalLockup);
  v64 = v148;
  sub_2166A6F60(v31, v148, &qword_27CAB6A00, &unk_217016B60);
  v151 = type metadata accessor for ContentDescriptor(0);
  v65 = v31;
  if (__swift_getEnumTagSinglePayload(v64, 1, v151) == 1)
  {

    sub_216697664(v157, &qword_27CAB6D60, &qword_217014E40);
    sub_216697664(v31, &qword_27CAB6A00, &unk_217016B60);
    sub_216697664(v64, &qword_27CAB6A00, &unk_217016B60);
    v66 = 1;
    a1 = v147;
    v68 = v152;
    v67 = v153;
    goto LABEL_21;
  }

  v69 = *(v64 + 24);
  v70 = *(v64 + 32);
  sub_21700DF14();
  sub_216A65F50(v64, type metadata accessor for ContentDescriptor);
  v68 = v152;
  if (!v70)
  {

    sub_216697664(v157, &qword_27CAB6D60, &qword_217014E40);
    sub_216697664(v65, &qword_27CAB6A00, &unk_217016B60);
    v66 = 1;
    a1 = v147;
LABEL_14:
    v67 = v153;
    goto LABEL_21;
  }

  v121 = v69;
  v149 = v65;
  v150 = v58;
  v148 = v60;
  v71 = v132;
  sub_2166A6F60(v65, v132, &qword_27CAB6A00, &unk_217016B60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v151);
  a1 = v147;
  v73 = v157;
  v122 = v62;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v71, &qword_27CAB6A00, &unk_217016B60);
    v74 = v133;
    v75 = v134;
    __swift_storeEnumTagSinglePayload(v133, 1, 1, v134);
  }

  else
  {
    v74 = v133;
    sub_2166A6F60(v71 + *(v151 + 24), v133, &qword_27CABA820, &unk_217018CE0);
    sub_216A65F50(v71, type metadata accessor for ContentDescriptor);
    v75 = v134;
    if (__swift_getEnumTagSinglePayload(v74, 1, v134) != 1)
    {
      LODWORD(v132) = v63;
      v81 = *(v129 + 32);
      v82 = v126;
      v81(v126, v74, v75);
      v83 = v128;
      v81(&v128[v68[8]], v82, v75);
      goto LABEL_17;
    }
  }

  sub_216697664(v74, &qword_27CABA820, &unk_217018CE0);
  v76 = v150;
  if (!v150)
  {

    sub_216697664(v73, &qword_27CAB6D60, &qword_217014E40);
    v78 = &qword_27CAB6A00;
    v79 = &unk_217016B60;
    v80 = v149;
    goto LABEL_13;
  }

  LODWORD(v132) = v63;
  *&v160[0] = 0;
  *(&v160[0] + 1) = 0xE000000000000000;
  sub_21700DF14();
  sub_21700F3B4();

  *&v160[0] = 0xD000000000000020;
  *(&v160[0] + 1) = 0x8000000217087320;
  MEMORY[0x21CE9F490](v124, v76);

  v77 = v127;
  sub_217005ED4();

  if (__swift_getEnumTagSinglePayload(v77, 1, v75) == 1)
  {

    sub_216697664(v157, &qword_27CAB6D60, &qword_217014E40);
    sub_216697664(v149, &qword_27CAB6A00, &unk_217016B60);
    v78 = &qword_27CABA820;
    v79 = &unk_217018CE0;
    v80 = v77;
LABEL_13:
    sub_216697664(v80, v78, v79);
    v66 = 1;
    goto LABEL_14;
  }

  v134 = v32;
  v84 = *(v129 + 32);
  v85 = v125;
  v84(v125, v77, v75);
  v83 = v128;
  v84(&v128[v68[8]], v85, v75);
  v32 = v134;
LABEL_17:
  v86 = sub_21700BA64();
  v88 = v87;
  sub_216697664(v149, &qword_27CAB6A00, &unk_217016B60);
  v89 = (v83 + v68[5]);
  *v89 = v86;
  v89[1] = v88;
  v90 = v130;
  sub_2166DDCC0(v157, v130, &qword_27CAB6D60, &qword_217014E40);
  v91 = type metadata accessor for Artwork(0);
  v92 = __swift_getEnumTagSinglePayload(v90, 1, v91);
  v93 = v122;
  if (v92 == 1)
  {
    sub_216697664(v90, &qword_27CAB6D60, &qword_217014E40);
    v94 = sub_21700C4B4();
    v95 = v131;
    v96 = v131;
    v97 = 1;
  }

  else
  {
    v98 = sub_21700C4B4();
    v95 = v131;
    (*(*(v98 - 8) + 16))(v131, v90, v98);
    sub_216A65F50(v90, type metadata accessor for Artwork);
    v96 = v95;
    v97 = 0;
    v94 = v98;
  }

  __swift_storeEnumTagSinglePayload(v96, v97, 1, v94);
  v67 = v153;
  v99 = v150;
  sub_2166DDCC0(v95, v83, &qword_27CABF770, &unk_21701A670);
  v100 = (v83 + v68[6]);
  *v100 = v124;
  v100[1] = v99;
  v101 = (v83 + v68[7]);
  v102 = v148;
  *v101 = v123;
  v101[1] = v102;
  *(v83 + v68[10]) = v93 & 1;
  *(v83 + v68[9]) = v132;
  sub_216A65B20(v83, v67, type metadata accessor for SocialProfileDescriptor);
  v66 = 0;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v67, v66, 1, v68);
  if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
  {
    sub_216697664(v67, &qword_27CABEEE8, &unk_217051AD0);
LABEL_23:
    v103 = 1;
    goto LABEL_30;
  }

  v104 = v67;
  v105 = v154;
  sub_216A65B20(v104, v154, type metadata accessor for SocialProfileDescriptor);
  sub_216A65EF8(v105, v155, type metadata accessor for SocialProfileDescriptor);
  __swift_storeEnumTagSinglePayload(v156, 1, 1, v151);
  v161 = 0;
  memset(v160, 0, sizeof(v160));
  v106 = v141;
  sub_216DE9EC8();
  sub_2166A6F60(v106 + v32[6], &v158, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A65F50(v106, type metadata accessor for SocialProfileHorizontalLockup);
  v107 = v159;
  if (v159)
  {
    __swift_project_boxed_opaque_existential_1(&v158, v159);
    v108 = v135;
    sub_21700CE54();
    v109 = v137;
    sub_21700D274();
    v107 = sub_21700D6C4();
    v111 = v110;
    (*(v139 + 8))(v109, v140);
    (*(v136 + 8))(v108, v138);
    __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  }

  else
  {
    sub_216697664(&v158, &qword_27CAB6DB0, &qword_217016C00);
    v111 = 0;
  }

  v112 = v146;
  swift_storeEnumTagMultiPayload();
  v113 = v156;
  v114 = v142;
  sub_2166A6F60(v156, v142, &qword_27CAB6A00, &unk_217016B60);
  v115 = v144;
  sub_216A65EF8(v112, v114 + *(v144 + 20), type metadata accessor for MenuContext);
  v116 = (v114 + v115[6]);
  *v116 = 0;
  v116[1] = 0;
  *(v114 + v115[7]) = 0;
  sub_2166A6F60(v160, v114 + v115[8], &qword_27CAB6DB0, &qword_217016C00);
  if (!v111)
  {
    v107 = 0;
    v111 = 0xE000000000000000;
  }

  sub_216A65F50(v112, type metadata accessor for MenuContext);
  sub_216697664(v160, &qword_27CAB6DB0, &qword_217016C00);
  sub_216697664(v113, &qword_27CAB6A00, &unk_217016B60);
  v117 = (v114 + v115[9]);
  *v117 = v107;
  v117[1] = v111;
  v118 = v143;
  sub_216A65B20(v114, v143, type metadata accessor for MenuConfiguration);
  a1 = v147;
  sub_216AF71EC(v155, v118, v147);
  sub_216A65F50(v154, type metadata accessor for SocialProfileDescriptor);
  v103 = 0;
LABEL_30:
  v119 = type metadata accessor for SocialProfileContextMenu(0);
  return __swift_storeEnumTagSinglePayload(a1, v103, 1, v119);
}

uint64_t sub_216A60F44@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_2170087F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C20, &qword_21703B340);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CE0, &qword_21703B448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0, &qword_217031488);
  sub_216A65FA8();
  sub_2169C31CC();
  sub_217009F04();
  sub_2170087E4();
  sub_2166D9530(&qword_27CAC0C28, &qword_27CAC0C20, &qword_21703B340, MEMORY[0x277CDE5B0]);
  sub_216A65CBC(&qword_27CAC0C30, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  sub_21700ABD4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_216A611CC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v5 = sub_21700AD14();
  v6 = swift_getKeyPath();
  if (qword_27CAB5C58 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  result = *&v10;
  *(a1 + 72) = v10;
  return result;
}

uint64_t sub_216A612D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00, &unk_21703B490);
  MEMORY[0x28223BE20](v139);
  v116 = (&v115 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08, &unk_21703E030);
  MEMORY[0x28223BE20](v4 - 8);
  v141 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v140 = &v115 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v115 - v11;
  v121 = sub_21700C444();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v115 - v14;
  v130 = sub_217007474();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v117 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = &v115 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v123 = &v115 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7690, &qword_21703B4A0);
  MEMORY[0x28223BE20](v125);
  v134 = &v115 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D10, &qword_21703B4A8);
  MEMORY[0x28223BE20](v132);
  v136 = &v115 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D18, &unk_21703B4B0);
  MEMORY[0x28223BE20](v135);
  v138 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v115 - v24;
  MEMORY[0x28223BE20](v25);
  v137 = &v115 - v26;
  v27 = type metadata accessor for SocialProfileHorizontalLockup(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v115 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v115 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v115 - v40;
  v122 = *a1;
  sub_216DE9EC8();
  v131 = v27;
  sub_2166A6F60(&v32[*(v27 + 48)], v41, &qword_27CAB6D60, &qword_217014E40);
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  sub_2166A6F60(v41, v38, &qword_27CAB6D60, &qword_217014E40);
  v42 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v42) == 1)
  {
    sub_216697664(v38, &qword_27CAB6D60, &qword_217014E40);
    v43 = sub_21700C4B4();
    v44 = v15;
    v45 = 1;
  }

  else
  {
    v46 = sub_21700C4B4();
    (*(*(v46 - 8) + 16))(v15, v38, v46);
    sub_216A65F50(v38, type metadata accessor for Artwork);
    v44 = v15;
    v45 = 0;
    v43 = v46;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
  v47 = v117;
  sub_217007434();
  v127 = v41;
  sub_2166A6F60(v41, v35, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v42);
  v49 = v121;
  v50 = v120;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v35, &qword_27CAB6D60, &qword_217014E40);
    v51 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v49);
    v52 = v118;
    sub_21700C404();
    v53 = __swift_getEnumTagSinglePayload(v51, 1, v49);
    v54 = v131;
    v55 = v130;
    if (v53 != 1)
    {
      sub_216697664(v51, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v56 = &v35[*(v42 + 20)];
    v57 = v119;
    (*(v120 + 16))(v119, v56, v121);
    sub_216A65F50(v35, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v49);
    v52 = v118;
    (*(v50 + 32))(v118, v57, v49);
    v54 = v131;
    v55 = v130;
  }

  sub_2170073E4();
  (*(v50 + 8))(v52, v49);
  v58 = *(v128 + 8);
  v58(v47, v55);
  sub_216DE9EC8();
  v59 = v124;
  sub_2166A6F60(&v29[v54[13]], v124, &qword_27CAB6A00, &unk_217016B60);
  sub_216A65F50(v29, type metadata accessor for SocialProfileHorizontalLockup);
  v60 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    sub_216697664(v59, &qword_27CAB6A00, &unk_217016B60);
    v61 = 23;
  }

  else
  {
    v61 = *v59;
    sub_216A65F50(v59, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v144[0]) = v61;
  sub_216DE9EC8();
  v62 = *&v32[v54[7]];
  sub_21700DF14();
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  v63 = sub_216E41068(v144, v62);
  v65 = v64;
  v66 = swift_allocObject();
  *(v66 + 16) = v63;
  *(v66 + 24) = v65;
  sub_2167C505C();
  v67 = v123;
  v68 = v143;
  sub_2170073F4();

  v58(v68, v55);
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v69 = qword_280E73AA0;
  v70 = byte_280E73AA8;
  v71 = qword_280E73AB0;
  v72 = v134;
  (*(v126 + 32))(v134, v67, v129);
  *(v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8, &qword_217062680) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v74 = v72 + *(v125 + 36);
  *v74 = v69;
  *(v74 + 8) = v70;
  *(v74 + 16) = v71;
  *(v74 + 24) = KeyPath;
  *(v74 + 32) = 0;

  LOBYTE(v71) = sub_217009CD4();
  sub_217007F24();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v136;
  sub_2166DDCC0(v72, v136, &qword_27CAB7690, &qword_21703B4A0);
  v84 = v83 + *(v132 + 36);
  *v84 = v71;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  LOBYTE(v71) = sub_217009CE4();
  sub_217007F24();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v83;
  v94 = v133;
  sub_2166DDCC0(v93, v133, &qword_27CAC0D10, &qword_21703B4A8);
  v95 = v94 + *(v135 + 36);
  *v95 = v71;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  v96 = v137;
  sub_2166DDCC0(v94, v137, &qword_27CAC0D18, &unk_21703B4B0);
  sub_216DE9EC8();
  LODWORD(v71) = v32[v54[9]];
  sub_216A65F50(v32, type metadata accessor for SocialProfileHorizontalLockup);
  if (v71 == 1)
  {
    v97 = sub_21700B3B4();
    v98 = v116;
    *v116 = v97;
    *(v98 + 8) = v99;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28, &unk_21703E050);
    sub_216A621B0((v98 + *(v100 + 44)));
    sub_21700B3B4();
    sub_2170083C4();
    v101 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30, &unk_21703B500) + 36));
    v102 = v144[1];
    *v101 = v144[0];
    v101[1] = v102;
    v101[2] = v144[2];
    v103 = sub_217009C84();
    v104 = v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38, &unk_21703E060) + 36);
    *v104 = v103;
    *(v104 + 8) = 0x403E000000000000;
    *(v104 + 16) = 0;
    *(v104 + 24) = 0;
    *(v104 + 32) = 0x4024000000000000;
    *(v104 + 40) = 0;
    sub_21700ACC4();
    v105 = sub_21700AD04();

    v106 = v139;
    v107 = v140;
    v108 = v98 + *(v139 + 36);
    *v108 = v105;
    *(v108 + 8) = xmmword_21703B0A0;
    *(v108 + 24) = 0x4000000000000000;
    sub_2166DDCC0(v98, v107, &qword_27CAC0D00, &unk_21703B490);
    v109 = 0;
  }

  else
  {
    v109 = 1;
    v106 = v139;
    v107 = v140;
  }

  __swift_storeEnumTagSinglePayload(v107, v109, 1, v106);
  v110 = v138;
  sub_2166A6F60(v96, v138, &qword_27CAC0D18, &unk_21703B4B0);
  v111 = v141;
  sub_2166A6F60(v107, v141, &qword_27CAC0D08, &unk_21703E030);
  v112 = v142;
  sub_2166A6F60(v110, v142, &qword_27CAC0D18, &unk_21703B4B0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D20, &unk_21703B4F0);
  sub_2166A6F60(v111, v112 + *(v113 + 48), &qword_27CAC0D08, &unk_21703E030);
  sub_216697664(v107, &qword_27CAC0D08, &unk_21703E030);
  sub_216697664(v96, &qword_27CAC0D18, &unk_21703B4B0);
  sub_216697664(v127, &qword_27CAB6D60, &qword_217014E40);
  sub_216697664(v111, &qword_27CAC0D08, &unk_21703E030);
  return sub_216697664(v110, &qword_27CAC0D18, &unk_21703B4B0);
}

uint64_t sub_216A621B0@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248, &qword_21703E070);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v12 = sub_21700ADB4();
  v13 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_217009DF4();
  sub_216697664(v3, &qword_27CAB81D0, &unk_21701AFF0);
  v15 = swift_getKeyPath();
  v27 = v12;
  v28 = v15;
  v29 = v14;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
  sub_2167E947C();
  sub_21700A304();

  v16 = sub_21700ACE4();
  v17 = swift_getKeyPath();
  v18 = &v10[*(v5 + 44)];
  *v18 = v17;
  v18[1] = v16;
  sub_2166A6F60(v10, v7, &qword_27CAB8248, &qword_21703E070);
  v20 = v25;
  v19 = v26;
  *v26 = KeyPath;
  v19[1] = v20;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40, &qword_21703B510);
  sub_2166A6F60(v7, v21 + *(v22 + 48), &qword_27CAB8248, &qword_21703E070);

  sub_216697664(v10, &qword_27CAB8248, &qword_21703E070);
  sub_216697664(v7, &qword_27CAB8248, &qword_21703E070);
}

uint64_t sub_216A62468@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = type metadata accessor for Content(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B88, &unk_21703B290);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  *v8 = sub_2170091A4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BC8, &unk_21703B2C0);
  sub_216A62824(v2, &v8[*(v9 + 44)]);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BA0, &qword_21703B2A0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BC0, &unk_21703B2B0);
  sub_217008C54();
  *v10 = 0;
  v11 = &v8[*(v6 + 36)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v13 = sub_217008B34();
  v14 = __swift_project_value_buffer(v13, qword_280E73A88);
  v15 = sub_216A65EF8(v14, v11, MEMORY[0x277CDFBC8]);
  *(v11 + *(v12 + 36)) = 0;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  sub_216A65EF8(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_216A65B20(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Content);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0, &qword_217031488);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A6589C();
  sub_2169C31CC();
  sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  sub_21700A394();

  return sub_216697664(v8, &qword_27CAC0B88, &unk_21703B290);
}

uint64_t sub_216A62824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BD0, &qword_21703B2D0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v78 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BD8, &qword_21703B2D8);
  MEMORY[0x28223BE20](v87);
  v85 = &v78 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE0, &qword_21703B2E0);
  MEMORY[0x28223BE20](v90);
  v6 = &v78 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE8, &qword_21703B2E8);
  MEMORY[0x28223BE20](v92);
  v83 = &v78 - v7;
  v8 = type metadata accessor for SocialProfileHorizontalLockup(0);
  MEMORY[0x28223BE20](v8);
  v80 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BF0, &qword_21703B2F0);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BF8, &qword_21703B2F8);
  MEMORY[0x28223BE20](v21 - 8);
  v94 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v78 - v24);
  *v25 = sub_21700B3D4();
  v25[1] = v26;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C00, &unk_21703B300) + 44);
  v93 = v25;
  sub_216A612D4(a1, v25 + v27);
  v91 = sub_2170093C4();
  v102 = 1;
  sub_216A63284(v99);
  memcpy(v103, v99, sizeof(v103));
  memcpy(__dst, v99, 0x80uLL);
  sub_2166A6F60(v103, v98, &qword_27CAC0C08, &qword_217051930);
  sub_216697664(__dst, &qword_27CAC0C08, &qword_217051930);
  memcpy(&v101[7], v103, 0x80uLL);
  v88 = v102;
  KeyPath = swift_getKeyPath();
  sub_216DE9EC8();
  v28 = v15[*(v8 + 40)];
  sub_216A65F50(v15, type metadata accessor for SocialProfileHorizontalLockup);
  v97 = v20;
  if (v28 != 1)
  {
    goto LABEL_19;
  }

  v79 = v6;
  sub_216DE9EC8();
  v29 = &v12[*(v8 + 32)];
  v31 = *v29;
  v30 = *(v29 + 1);
  sub_21700DF14();
  sub_216A65F50(v12, type metadata accessor for SocialProfileHorizontalLockup);
  v86 = a1;
  v32 = a1[1];
  v33 = *&v32[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v34 = *(v33 + 16);
  v35 = v32;
  os_unfair_lock_lock(v34);
  v36 = *&v35[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v37 = *(v33 + 16);
  v38 = v36;
  os_unfair_lock_unlock(v37);

  if (!v36)
  {
    v20 = v97;
    v6 = v79;
    a1 = v86;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v39 = sub_2167DEA8C(v38);
  if (!v30)
  {
    v20 = v97;
    v6 = v79;
    a1 = v86;
    if (!v40)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v40)
  {
    v20 = v97;
    v6 = v79;
LABEL_16:

    goto LABEL_17;
  }

  v41 = v31 == v39 && v30 == v40;
  v6 = v79;
  if (v41)
  {

    v20 = v97;
    a1 = v86;
    goto LABEL_19;
  }

  v42 = sub_21700F7D4();

  v20 = v97;
  a1 = v86;
  if (v42)
  {
LABEL_19:
    v46 = a1[1];
    if (v46[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] != 1)
    {
      v63 = 1;
      v64 = v84;
      v43 = v85;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v43, v63, 1, v64);
      v44 = &qword_27CAC0BD8;
      v45 = &qword_21703B2D8;
      sub_2166A6F60(v43, v6, &qword_27CAC0BD8, &qword_21703B2D8);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(&qword_27CAC0C10, &qword_27CAC0BE8, &qword_21703B2E8, &unk_217057EF0);
      sub_216A65B78();
      goto LABEL_41;
    }

    v86 = a1;
    sub_216DE9EC8();
    v47 = v15[*(v8 + 40)];
    sub_216A65F50(v15, type metadata accessor for SocialProfileHorizontalLockup);
    if (v47 != 1)
    {
      goto LABEL_39;
    }

    v48 = v6;
    v49 = v80;
    sub_216DE9EC8();
    v50 = (v49 + *(v8 + 32));
    v52 = *v50;
    v51 = v50[1];
    sub_21700DF14();
    sub_216A65F50(v49, type metadata accessor for SocialProfileHorizontalLockup);
    v53 = *&v46[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v54 = *(v53 + 16);
    v55 = v46;
    os_unfair_lock_lock(v54);
    v56 = *&v55[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v57 = *(v53 + 16);
    v58 = v56;
    os_unfair_lock_unlock(v57);

    if (v56)
    {
      v59 = sub_2167DEA8C(v58);
      if (v51)
      {
        v6 = v48;
        if (v60)
        {
          v61 = v52 == v59 && v51 == v60;
          v20 = v97;
          if (v61)
          {
          }

          else
          {
            v62 = sub_21700F7D4();

            if ((v62 & 1) == 0)
            {
              v63 = 1;
              v43 = v85;
LABEL_37:
              v64 = v84;
              goto LABEL_40;
            }
          }

LABEL_39:
          v65 = v81;
          sub_216A60F44(v81);
          v64 = v84;
          v43 = v85;
          (*(v82 + 32))(v85, v65, v84);
          v63 = 0;
          goto LABEL_40;
        }

        v20 = v97;
      }

      else
      {
        v20 = v97;
        v6 = v48;
        if (!v60)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v20 = v97;
      v6 = v48;
      if (!v51)
      {
        goto LABEL_39;
      }
    }

    v43 = v85;

    v63 = 1;
    goto LABEL_37;
  }

LABEL_17:
  v43 = v83;
  sub_216A63548(v83);
  v44 = &qword_27CAC0BE8;
  v45 = &qword_21703B2E8;
  sub_2166A6F60(v43, v6, &qword_27CAC0BE8, &qword_21703B2E8);
  swift_storeEnumTagMultiPayload();
  sub_2166D9530(&qword_27CAC0C10, &qword_27CAC0BE8, &qword_21703B2E8, &unk_217057EF0);
  sub_216A65B78();
LABEL_41:
  sub_217009554();
  sub_216697664(v43, v44, v45);
  v66 = v93;
  v67 = v94;
  sub_2166A6F60(v93, v94, &qword_27CAC0BF8, &qword_21703B2F8);
  v68 = v20;
  v69 = v95;
  sub_2166A6F60(v68, v95, &qword_27CAC0BF0, &qword_21703B2F0);
  v70 = v96;
  sub_2166A6F60(v67, v96, &qword_27CAC0BF8, &qword_21703B2F8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C38, &qword_21703B348);
  v72 = v71[12];
  v73 = v91;
  v98[0] = v91;
  v98[1] = 0;
  v74 = v88;
  LOBYTE(v98[2]) = v88;
  memcpy(&v98[2] + 1, v101, 0x87uLL);
  v75 = KeyPath;
  v98[19] = KeyPath;
  v98[20] = 1;
  LOBYTE(v98[21]) = 0;
  memcpy((v70 + v72), v98, 0xA9uLL);
  v76 = v70 + v71[16];
  *v76 = 0x4024000000000000;
  *(v76 + 8) = 0;
  sub_2166A6F60(v69, v70 + v71[20], &qword_27CAC0BF0, &qword_21703B2F0);
  sub_2166A6F60(v98, v99, &qword_27CAC0C40, &unk_21703B350);
  sub_216697664(v97, &qword_27CAC0BF0, &qword_21703B2F0);
  sub_216697664(v66, &qword_27CAC0BF8, &qword_21703B2F8);
  sub_216697664(v69, &qword_27CAC0BF0, &qword_21703B2F0);
  v99[0] = v73;
  v99[1] = 0;
  LOBYTE(v99[2]) = v74;
  memcpy(&v99[2] + 1, v101, 0x87uLL);
  v99[19] = v75;
  v99[20] = 1;
  v100 = 0;
  sub_216697664(v99, &qword_27CAC0C40, &unk_21703B350);
  return sub_216697664(v67, &qword_27CAC0BF8, &qword_21703B2F8);
}

uint64_t sub_216A63284@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_216DE9EC8();
  v8 = &v7[*(v2 + 36)];
  v9 = *v8;
  *(&v31 + 1) = *(v8 + 1);
  v10 = *(&v31 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  *&v31 = v11;
  v12 = MEMORY[0x277D84F90];
  if (v10)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  v29 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v14 = sub_217009E54();
  v15 = swift_getKeyPath();
  sub_216DE9EC8();
  v16 = &v4[*(v2 + 40)];
  v17 = *v16;
  v18 = v16[1];
  sub_21700DF14();
  sub_216A65F50(v4, type metadata accessor for SocialProfileHorizontalLockup);
  v19 = sub_216F073C4(v17, v18);
  v21 = v20;

  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  if (!v21)
  {
    v12 = 0;
  }

  v23 = sub_21700AD34();
  v24 = swift_getKeyPath();
  v25 = sub_217009E64();
  v26 = swift_getKeyPath();
  v34 = v31;
  *&v35 = 0;
  *(&v35 + 1) = v32;
  *&v36 = KeyPath;
  *(&v36 + 1) = v29;
  *&v37 = v15;
  *(&v37 + 1) = v14;
  v33[0] = v31;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  *&v38 = v22;
  *(&v38 + 1) = v21;
  *&v39 = 0;
  *(&v39 + 1) = v12;
  *&v40 = v24;
  *(&v40 + 1) = v23;
  *&v41 = v26;
  *(&v41 + 1) = v25;
  v33[6] = v40;
  v33[7] = v41;
  v33[4] = v38;
  v33[5] = v39;
  memcpy(v28, v33, 0x80uLL);
  v42[0] = v22;
  v42[1] = v21;
  v42[2] = 0;
  v42[3] = v12;
  v42[4] = v24;
  v42[5] = v23;
  v42[6] = v26;
  v42[7] = v25;
  sub_2166A6F60(&v34, &v43, &qword_27CAB7E88, &unk_217018BF0);
  sub_2166A6F60(&v38, &v43, &qword_27CAB7E88, &unk_217018BF0);
  sub_216697664(v42, &qword_27CAB7E88, &unk_217018BF0);
  v43 = v31;
  v44 = 0;
  v45 = v32;
  v46 = KeyPath;
  v47 = v29;
  v48 = v15;
  v49 = v14;
  return sub_216697664(&v43, &qword_27CAB7E88, &unk_217018BF0);
}

uint64_t sub_216A63548@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_217006FE4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCB8F0();
  v10 = *(v1 + 32);
  v19 = *(v1 + 24);
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AED4();
  v11 = v17[1];
  v12 = v17[2];
  v13 = v18;
  sub_216A65EF8(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_216A65B20(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Content);
  return sub_216A652BC(v9, v11, v12, v13, sub_216A65D04, v15, a1);
}

uint64_t sub_216A63720@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for SocialProfileHorizontalLockup(0);
  MEMORY[0x28223BE20](v1);
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - v21;
  sub_216DE9EC8();
  sub_2166A6F60(&v10[v1[12]], v13, &qword_27CAB6D60, &qword_217014E40);
  sub_216A65F50(v10, type metadata accessor for SocialProfileHorizontalLockup);
  v23 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_216697664(v13, &qword_27CAB6D60, &qword_217014E40);
    v24 = sub_21700C4B4();
    v25 = v16;
    v26 = 1;
    v55 = v24;
  }

  else
  {
    v27 = sub_21700C4B4();
    (*(*(v27 - 8) + 16))(v16, v13, v27);
    sub_216A65F50(v13, type metadata accessor for Artwork);
    v25 = v16;
    v26 = 0;
    v55 = v27;
    v24 = v27;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  sub_216DE9EC8();
  v28 = &v7[v1[7]];
  v29 = *v28;
  v30 = *(v28 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  sub_21700C404();
  sub_2166DDCC0(v16, v19, &qword_27CABF770, &unk_21701A670);
  v31 = &v19[v17[5]];
  *v31 = v29;
  *(v31 + 1) = v30;
  *&v19[v17[6]] = 0x3FF0000000000000;
  *&v19[v17[7]] = 0x4024000000000000;
  v19[v17[8]] = 1;
  sub_216DE9EC8();
  v32 = &v7[v1[7]];
  v34 = *v32;
  v33 = *(v32 + 1);
  sub_21700DF14();
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  v35 = v56;
  sub_216DE9EC8();
  v36 = (v35 + v1[8]);
  v37 = *v36;
  v38 = v36[1];
  sub_21700DF14();
  sub_216A65F50(v35, type metadata accessor for SocialProfileHorizontalLockup);
  v39 = sub_216F073C4(v37, v38);
  v41 = v40;

  sub_216A65B20(v19, v22, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
  v42 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v43 = &v22[v42[5]];
  *v43 = v34;
  *(v43 + 1) = v33;
  v44 = &v22[v42[6]];
  *v44 = v39;
  v44[1] = v41;
  v45 = &v22[v42[7]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v22[v42[8]] = 1;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v42);
  v46 = v57;
  sub_216DE9EC8();
  sub_2166A6F60(v46 + v1[6], v59, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A65F50(v46, type metadata accessor for SocialProfileHorizontalLockup);
  LOBYTE(v46) = v60 != 0;
  sub_216697664(v59, &qword_27CAB6DB0, &qword_217016C00);
  v47 = v58;
  sub_2166DDCC0(v22, v58, &qword_27CAB7528, qword_2170171C0);
  v48 = type metadata accessor for ContextMenuPreview(0);
  *(v47 + v48[5]) = v46;
  v49 = v47 + v48[6];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v50 = v48[7];
  sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v47 + v50, 1, 1, v55);
  v51 = v48[8];
  v52 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(v47 + v51, 1, 1, v52);
}

uint64_t sub_216A63CB8()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9EC8();
  sub_2166A6F60(&v7[*(v5 + 32)], &v25, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A65F50(v7, type metadata accessor for SocialProfileHorizontalLockup);
  if (v27)
  {
    sub_2166A0F18(&v25, v29);
    type metadata accessor for Content(0);
    sub_216C0C534(&v21);
    if (v23)
    {
      sub_2166A0F18(&v21, &v25);
      v8 = __swift_project_boxed_opaque_existential_1(&v25, v27);
      sub_216C0C548(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, *(&v21 + 1), v22, v23, v24, v25, *(&v25 + 1), v26, v27, v28, v29[0]);
      sub_217007544();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v17 = &qword_27CAB7310;
    v18 = &unk_2170170F0;
    v19 = &v21;
  }

  else
  {
    v17 = &qword_27CAB6DB0;
    v18 = &qword_217016C00;
    v19 = &v25;
  }

  return sub_216697664(v19, v17, v18);
}

uint64_t sub_216A63EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for Content(0);
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B60, &qword_21703B268);
  MEMORY[0x28223BE20](v5);
  v7 = (&v46 - v6);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B68, &qword_21703B270);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v46 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B70, &qword_21703B278);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B78, &unk_21703B280);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v46 - v11;
  v13 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9EC8();
  sub_2166A6F60(&v16[*(v14 + 32)], &v54, &qword_27CAB6DB0, &qword_217016C00);
  sub_216A65F50(v16, type metadata accessor for SocialProfileHorizontalLockup);
  if (v56)
  {
    sub_2166A0F18(&v54, v59);
    sub_2167B7D58(v59, v7);
    v17 = v5[11];
    v18 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v7 + v17, 1, 1, v18);
    sub_216A65EF8(a1, &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Content);
    v19 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v20 = swift_allocObject();
    sub_216A65B20(&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Content);
    v21 = v5[12];
    *(v7 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v22 = v7 + v5[13];
    *v22 = swift_getKeyPath();
    v22[40] = 0;
    v7[5] = sub_216A65A38;
    v7[6] = v20;
    v7[7] = 0;
    v7[8] = 0;
    v23 = v47;
    sub_216E3170C();
    sub_216697664(v7, &qword_27CAC0B60, &qword_21703B268);
    v24 = v48;
    v25 = v52;
    (*(v48 + 16))(v50, v23, v52);
    swift_storeEnumTagMultiPayload();
    v26 = type metadata accessor for ActionButtonStyle(255);
    v27 = sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60, &qword_21703B268, &unk_21702C8E0);
    v28 = sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    *&v54 = v5;
    *(&v54 + 1) = v26;
    v55 = v27;
    v56 = v28;
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88, &unk_21703B290);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0, &qword_217031488);
    v31 = type metadata accessor for ContextMenuPreview(255);
    v32 = sub_216A6589C();
    v33 = sub_2169C31CC();
    v34 = sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    *&v54 = v29;
    *(&v54 + 1) = v30;
    v55 = v31;
    v56 = v32;
    v57 = v33;
    v58 = v34;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    (*(v24 + 8))(v23, v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  else
  {
    sub_216697664(&v54, &qword_27CAB6DB0, &qword_217016C00);
    sub_216A62468(v12);
    v36 = v51;
    (*(v10 + 16))(v50, v12, v51);
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for ActionButtonStyle(255);
    v38 = sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60, &qword_21703B268, &unk_21702C8E0);
    v39 = sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    *&v54 = v5;
    *(&v54 + 1) = v37;
    v55 = v38;
    v56 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88, &unk_21703B290);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0, &qword_217031488);
    v42 = type metadata accessor for ContextMenuPreview(255);
    v43 = sub_216A6589C();
    v44 = sub_2169C31CC();
    v45 = sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    *&v54 = v40;
    *(&v54 + 1) = v41;
    v55 = v42;
    v56 = v43;
    v57 = v44;
    v58 = v45;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v10 + 8))(v12, v36);
  }
}

uint64_t sub_216A646C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0, &qword_217018C00);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50, &unk_217051950);
  MEMORY[0x28223BE20](v44);
  v10 = &v43 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58, &unk_21703B360);
  MEMORY[0x28223BE20](v45);
  v12 = &v43 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C60, &unk_217051940);
  MEMORY[0x28223BE20](v48);
  v14 = &v43 - v13;
  LOBYTE(v13) = *(a3 + 24);
  v49 = a3;
  v15 = *(a3 + 32);
  LOBYTE(__src[0]) = v13;
  *(&__src[0] + 1) = v15;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  if (LOBYTE(v51[0]) == 6)
  {
LABEL_5:
    v16 = sub_21700ACF4();
    goto LABEL_7;
  }

  if (LOBYTE(v51[0]) != 2)
  {
    if (!LOBYTE(v51[0]))
    {
      v16 = sub_21700AC54();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v16 = sub_21700AD34();
LABEL_7:
  v17 = v16;
  if (a2)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = 0;
  }

  if (a2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  KeyPath = swift_getKeyPath();
  v21 = sub_217009E94();
  v22 = swift_getKeyPath();
  *&__src[0] = v19;
  *(&__src[0] + 1) = a2;
  *&__src[1] = 0;
  *(&__src[1] + 1) = v18;
  *&__src[2] = KeyPath;
  *(&__src[2] + 1) = v17;
  *&__src[3] = v22;
  *(&__src[3] + 1) = v21;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  sub_2167D95A8();
  sub_21700A304();
  *v51 = __src[0];
  *&v51[2] = __src[1];
  *&v51[4] = __src[2];
  *&v51[6] = __src[3];
  sub_216697664(v51, &qword_27CAB7E88, &unk_217018BF0);
  v23 = sub_217009C74();
  sub_217007F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v46 + 32))(v10, v8, v47);
  v32 = &v10[*(v44 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  sub_2166DDCC0(v10, v12, &qword_27CAC0C50, &unk_217051950);
  v33 = &v12[*(v45 + 36)];
  v34 = *&v51[11];
  *v33 = *&v51[9];
  *(v33 + 1) = v34;
  *(v33 + 2) = *&v51[13];
  sub_21700B3B4();
  sub_217008BB4();
  sub_2166DDCC0(v12, v14, &qword_27CAC0C58, &unk_21703B360);
  memcpy(&v14[*(v48 + 36)], __src, 0x70uLL);
  v35 = sub_21700B3B4();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C68, &qword_21703B3D8);
  v39 = v50;
  v40 = v50 + *(v38 + 36);
  sub_216A64BD8(v49, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C70, &qword_21703B3E0) + 36));
  *v41 = v35;
  v41[1] = v37;
  return sub_2166DDCC0(v14, v39, &qword_27CAC0C60, &unk_217051940);
}

uint64_t sub_216A64BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_217008B44();
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C78, &qword_21703B3E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C80, &qword_21703B3F0);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C88, &qword_21703B3F8);
  MEMORY[0x28223BE20](v11);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C90, &qword_21703B400);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98, &unk_21703B408);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  v21 = *(a1 + 32);
  LOBYTE(v72) = *(a1 + 24);
  *(&v72 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  v22 = v69;
  if (v69 == 6)
  {
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_217009294();
    (*(*(v24 - 8) + 104))(v20, v23, v24);
    v25 = sub_21700AC54();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
    *&v20[*(v26 + 52)] = v25;
    *&v20[*(v26 + 56)] = 256;
    sub_21700B3B4();
    sub_2170083C4();
    v27 = &v20[*(v18 + 36)];
    v28 = v73;
    *v27 = v72;
    *(v27 + 1) = v28;
    *(v27 + 2) = v74;
    v29 = &qword_27CAC0C98;
    v30 = &unk_21703B408;
    sub_2166A6F60(v20, v17, &qword_27CAC0C98, &unk_21703B408);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v31 = v20;
  }

  else
  {
    v64 = v18;
    v32 = *(v3 + 20);
    v33 = *MEMORY[0x277CE0128];
    v34 = sub_217009294();
    (*(*(v34 - 8) + 104))(&v5[v32], v33, v34);
    __asm { FMOV            V0.2D, #20.0 }

    *v5 = _Q0;
    if (v22 == 2)
    {
      v41 = sub_21700AD34();
    }

    else
    {
      if (v22)
      {
        v40 = sub_21700ACD4();
      }

      else
      {
        v40 = sub_21700AC54();
      }

      v41 = v40;
    }

    v42 = v17;
    sub_2170081E4();
    sub_216A65EF8(v5, v8, MEMORY[0x277CDFC08]);
    v43 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CB8, &qword_21703B418) + 36)];
    v44 = v70;
    *v43 = v69;
    *(v43 + 1) = v44;
    *(v43 + 4) = v71;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC0, &qword_21703B420);
    *&v8[*(v45 + 52)] = v41;
    *&v8[*(v45 + 56)] = 256;
    v46 = sub_21700B3B4();
    v48 = v47;
    sub_216A65F50(v5, MEMORY[0x277CDFC08]);
    v49 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CC8, &qword_21703B428) + 36)];
    *v49 = v46;
    v49[1] = v48;
    if ((v22 | 2) == 2)
    {
      v50 = sub_21700ACD4();
    }

    else
    {
      v50 = sub_21700AC54();
    }

    v51 = v50;
    v52 = v66;
    sub_216A65EF8(v8, v66, MEMORY[0x277CDFC08]);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98, &qword_21703B430);
    *(v52 + *(v53 + 52)) = v51;
    *(v52 + *(v53 + 56)) = 256;
    v54 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD0, &qword_21703B438) + 36);
    sub_2166A6F60(v8, v54, &qword_27CAC0C78, &qword_21703B3E8);
    v55 = sub_21700B3B4();
    v57 = v56;
    sub_216697664(v8, &qword_27CAC0C78, &qword_21703B3E8);
    v58 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CD8, &qword_21703B440) + 36));
    *v58 = v55;
    v58[1] = v57;
    sub_21700B3B4();
    sub_2170083C4();
    v59 = v65;
    sub_2166DDCC0(v52, v65, &qword_27CAC0C80, &qword_21703B3F0);
    v60 = (v59 + *(v11 + 36));
    v61 = v73;
    *v60 = v72;
    v60[1] = v61;
    v60[2] = v74;
    v29 = &qword_27CAC0C88;
    v30 = &qword_21703B3F8;
    v62 = v67;
    sub_2166DDCC0(v59, v67, &qword_27CAC0C88, &qword_21703B3F8);
    sub_2166A6F60(v62, v42, &qword_27CAC0C88, &qword_21703B3F8);
    swift_storeEnumTagMultiPayload();
    sub_216A65D88();
    sub_216A65E40();
    sub_217009554();
    v31 = v62;
  }

  return sub_216697664(v31, v29, v30);
}

uint64_t sub_216A652BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216A65CBC(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  *(a7 + 64) = sub_217008CF4();
  *(a7 + 72) = v14;
  type metadata accessor for SocialGraphController(0);
  sub_216A65CBC(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  *(a7 + 80) = sub_217008CF4();
  *(a7 + 88) = v15;
  *(a7 + 96) = swift_getKeyPath();
  *(a7 + 136) = 0;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BE8, &qword_21703B2E8) + 60);
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  sub_217007C94();
  *a7 = sub_217006F84();
  *(a7 + 8) = v17;
  v18 = sub_217006FD4();
  v19 = sub_217006FE4();
  result = (*(*(v19 - 8) + 8))(a1, v19);
  *(a7 + 16) = v18 & 1;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  return result;
}

uint64_t sub_216A654B8(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 32.0;
  if ((result & 1) == 0)
  {
    v2 = 28.0;
  }

  qword_27CAC0B20 = *&v2;
  return result;
}

void sub_216A65514(uint64_t a1)
{
  sub_216A65650(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UserSocialProfileCoordinator(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SocialGraphController(319);
      if (v3 <= 0x3F)
      {
        sub_21687FB2C(319, &qword_280E2A5C0, &qword_27CAC0B30, &qword_21703B130, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            sub_21687FB2C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
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

void sub_216A65650(uint64_t a1)
{
  if (!qword_27CAC0B48)
  {
    v4[0] = type metadata accessor for SocialProfileHorizontalLockup(255);
    v4[1] = sub_216A65CBC(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup, &unk_217034930);
    v4[2] = &off_28293B640;
    v4[3] = sub_216A65CBC(&qword_280E310C8, type metadata accessor for SocialProfileHorizontalLockup, &unk_21702C0E0);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CAC0B48);
    }
  }
}

uint64_t sub_216A6572C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_216A6576C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216A657C4()
{
  result = qword_27CAC0B50;
  if (!qword_27CAC0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B28, &qword_21703B128);
    sub_216A65CBC(&qword_27CAC0B58, type metadata accessor for Content, &unk_21703B214);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B50);
  }

  return result;
}

unint64_t sub_216A6589C()
{
  result = qword_27CAC0B90;
  if (!qword_27CAC0B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88, &unk_21703B290);
    sub_216A65954();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B90);
  }

  return result;
}

unint64_t sub_216A65954()
{
  result = qword_27CAC0B98;
  if (!qword_27CAC0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0BA0, &qword_21703B2A0);
    sub_2166D9530(&qword_27CAC0BA8, &qword_27CAC0BB0, &qword_21703B2A8, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_27CAC0BB8, &qword_27CAC0BC0, &unk_21703B2B0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0B98);
  }

  return result;
}

uint64_t sub_216A65A38@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Content(0);
  OUTLINED_FUNCTION_36(v2);
  return sub_216A62468(a1);
}

uint64_t sub_216A65AC4()
{
  v0 = type metadata accessor for Content(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_216A63CB8();
}

uint64_t sub_216A65B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216A65B78()
{
  result = qword_27CAC0C18;
  if (!qword_27CAC0C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0BD8, &qword_21703B2D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C20, &qword_21703B340);
    sub_2170087F4();
    sub_2166D9530(&qword_27CAC0C28, &qword_27CAC0C20, &qword_21703B340, MEMORY[0x277CDE5B0]);
    sub_216A65CBC(&qword_27CAC0C30, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0C18);
  }

  return result;
}

uint64_t sub_216A65CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A65D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Content(0);
  OUTLINED_FUNCTION_36(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_216A646C8(a1, a2, v9, a3);
}

unint64_t sub_216A65D88()
{
  result = qword_27CAC0CA0;
  if (!qword_27CAC0CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C88, &qword_21703B3F8);
    sub_2166D9530(&qword_27CAC0CA8, &qword_27CAC0C80, &qword_21703B3F0, MEMORY[0x277CDF6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CA0);
  }

  return result;
}

unint64_t sub_216A65E40()
{
  result = qword_27CAC0CB0;
  if (!qword_27CAC0CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C98, &unk_21703B408);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780, &unk_217029530, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CB0);
  }

  return result;
}

uint64_t sub_216A65EF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216A65F50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216A65FA8()
{
  result = qword_27CAC0CE8;
  if (!qword_27CAC0CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0CE0, &qword_21703B448);
    sub_216A66034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CE8);
  }

  return result;
}

unint64_t sub_216A66034()
{
  result = qword_27CAC0CF0;
  if (!qword_27CAC0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0CF8, &unk_21703B450);
    sub_2167E947C();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0CF0);
  }

  return result;
}

unint64_t sub_216A660EC()
{
  result = qword_27CAC0D48;
  if (!qword_27CAC0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D50, &qword_21703B518);
    sub_216A66170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D48);
  }

  return result;
}

unint64_t sub_216A66170()
{
  result = qword_27CAC0D58;
  if (!qword_27CAC0D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D60, qword_21703B520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B60, &qword_21703B268);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_27CAC0B80, &qword_27CAC0B60, &qword_21703B268, &unk_21702C8E0);
    sub_216A65CBC(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B88, &unk_21703B290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0, &qword_217031488);
    type metadata accessor for ContextMenuPreview(255);
    sub_216A6589C();
    sub_2169C31CC();
    sub_216A65CBC(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D58);
  }

  return result;
}

uint64_t sub_216A663C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v121 = v5;
  MEMORY[0x28223BE20](v6);
  v119 = &v104 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v117 = v8;
  MEMORY[0x28223BE20](v9);
  v116 = &v104 - v10;
  v113 = type metadata accessor for PresentAlertAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v115 = v13 - v12;
  v123 = _s6ActionVMa(0);
  OUTLINED_FUNCTION_1();
  v125 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  v21 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v124 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = sub_21700D284();
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  type metadata accessor for UserSocialProfileCoordinator(0);
  v31 = type metadata accessor for ObjectGraph(0);
  v120 = a2;
  v111 = v31;
  sub_21700E094();
  v32 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  v33 = sub_21700E244();
  v34 = (a1 + *(type metadata accessor for PromptSuggestedHandleAction(0) + 20));
  v35 = v34[1];
  v36 = MEMORY[0x277D21CB8];
  v126 = v33;
  v122 = v4;
  v110 = v21;
  if (v35)
  {
    v37 = *v34;
    sub_21700DF14();
    v107 = sub_216983738(366);
    v104 = v38;
    sub_21700D234();
    v39 = swift_allocObject();
    v39[2] = v32;
    v39[3] = v37;
    v108 = v37;
    v39[4] = v35;
    v39[5] = v33;
    v133 = sub_21700D2C4();
    v134 = v36;
    __swift_allocate_boxed_opaque_existential_1(&v132);
    sub_21700DF14();
    v105 = v32;
    v40 = v32;

    v106 = v30;
    sub_21700D2B4();
    sub_217006214();
    v41 = sub_2170061F4();
    v43 = v42;
    v44 = *(v124 + 8);
    v44(v26, v21);
    v128 = v41;
    v129 = v43;
    v130 = v107;
    v131 = v104;
    sub_2167ADC3C(&v128, v20);
    v45 = v123;
    v46 = *(v123 + 20);
    v47 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(&v20[v46], 1, 1, v47);
    sub_217006214();
    v48 = sub_2170061F4();
    v50 = v49;
    v44(v26, v21);
    v51 = &v20[*(v45 + 24)];
    *v51 = v48;
    v51[1] = v50;
    OUTLINED_FUNCTION_2_87();
    v52 = v109;
    sub_216A670CC(v20, v109, v53);
    sub_21693843C(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = v54;
    v57 = *(v54 + 16);
    v56 = *(v54 + 24);
    if (v57 >= v56 >> 1)
    {
      OUTLINED_FUNCTION_7_60(v56);
      v55 = v103;
    }

    OUTLINED_FUNCTION_3_84();
    sub_21681622C(v52, v58 + v59 * v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2167C6E08();
    *(inited + 32) = v108;
    *(inited + 40) = v35;
    v108 = sub_216983808(7, inited);
    v107 = v61;
    OUTLINED_FUNCTION_1_106();
    sub_2167D57C8(v20, v62);
    sub_2167ADC98(&v128);
    v33 = v126;
    v32 = v105;
    v63 = MEMORY[0x277D21CB8];
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v55 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D21CB8];
  }

  v64 = sub_216983738(344);
  v66 = v65;
  sub_21700D234();
  v67 = swift_allocObject();
  *(v67 + 16) = v32;
  *(v67 + 24) = v33;
  v133 = sub_21700D2C4();
  v134 = v63;
  __swift_allocate_boxed_opaque_existential_1(&v132);
  v109 = v32;

  sub_21700D2B4();
  sub_217006214();
  v68 = sub_2170061F4();
  v70 = v69;
  v71 = *(v124 + 8);
  v72 = v110;
  v71(v26, v110);
  v128 = v68;
  v129 = v70;
  v130 = v64;
  v131 = v66;
  v73 = v114;
  sub_2167ADC3C(&v128, v114);
  v74 = v123;
  v75 = *(v123 + 20);
  v76 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v73 + v75, 1, 1, v76);
  sub_217006214();
  v77 = sub_2170061F4();
  v79 = v78;
  v71(v26, v72);
  v80 = (v73 + *(v74 + 24));
  *v80 = v77;
  v80[1] = v79;
  OUTLINED_FUNCTION_2_87();
  v81 = v112;
  sub_216A670CC(v73, v112, v82);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21693843C(0, *(v55 + 16) + 1, 1, v55);
    v55 = v101;
  }

  v83 = v122;
  v85 = *(v55 + 16);
  v84 = *(v55 + 24);
  if (v85 >= v84 >> 1)
  {
    OUTLINED_FUNCTION_7_60(v84);
    v55 = v102;
  }

  OUTLINED_FUNCTION_3_84();
  sub_21681622C(v81, v86 + v87 * v85);
  v88 = sub_216983738(368);
  sub_216933384(v88, v89, v55, v108, v107, v135);
  v90 = v115;
  sub_21700D234();
  v91 = v113;
  v92 = v90 + *(v113 + 20);
  v93 = v135[1];
  *v92 = v135[0];
  *(v92 + 16) = v93;
  *(v92 + 32) = v136;
  v94 = v116;
  v95 = v118;
  sub_21700E094();
  v127[3] = v91;
  v127[4] = sub_216A67084(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
  sub_216A670CC(v90, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
  v97 = v121;
  v98 = v119;
  (*(v121 + 104))(v119, *MEMORY[0x277D21E18], v83);
  sub_21700D5E4();

  (*(v97 + 8))(v98, v83);
  (*(v117 + 8))(v94, v95);
  sub_2167D57C8(v90, type metadata accessor for PresentAlertAction);
  OUTLINED_FUNCTION_1_106();
  sub_2167D57C8(v73, v99);
  sub_2167ADC98(&v128);
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  return v126;
}

uint64_t sub_216A66D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[7] = MEMORY[0x277D837D0];
  v10[4] = a2;
  v10[5] = a3;
  swift_beginAccess();
  sub_21700DF14();
  sub_2166EF928();
  swift_endAccess();
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  sub_21700E224();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_216A66F08(uint64_t a1)
{
  v1 = sub_21700D2A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(&v6[32], 0, 32);
  swift_beginAccess();
  sub_2166EF928();
  swift_endAccess();
  (*(v2 + 104))(v4, *MEMORY[0x277D21CA0], v1);
  sub_21700E224();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_216A67084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A670CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A671A4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v43 = v3;
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - v5;
  v6 = type metadata accessor for PresentSheetAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v45 = v11;
  MEMORY[0x28223BE20](v12);
  v41 = &v39 - v13;
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = type metadata accessor for CollaborationAction(0);
  v29 = a1;
  sub_216A676B0(a1 + *(v28 + 20), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_216A67720(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    sub_216A67788();
    swift_allocError();
    return sub_21700E1E4();
  }

  else
  {
    (*(v23 + 32))(v27, v20, v21);
    (*(v23 + 16))(v17, v27, v21);
    v40 = v17;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ObjectGraph(0);
    v31 = v41;
    v32 = v42;
    sub_21700E094();
    sub_2169152B0(v17, v10 + *(v6 + 20), type metadata accessor for MusicAppDestination);
    type metadata accessor for ModalActionModelDestinations.Destination(0);
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v33 + 16))(v10, v29);
    v48[3] = v6;
    v48[4] = sub_216A677DC(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    sub_2169152B0(v10, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    v36 = v43;
    v35 = v44;
    v37 = v46;
    (*(v43 + 104))(v44, *MEMORY[0x277D21E18], v46);
    v30 = sub_21700D5E4();
    (*(v36 + 8))(v35, v37);
    sub_216915310(v10, type metadata accessor for PresentSheetAction);
    (*(v45 + 8))(v31, v32);
    sub_216915310(v40, type metadata accessor for MusicAppDestination);
    (*(v23 + 8))(v27, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  return v30;
}

uint64_t sub_216A676B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A67720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216A67788()
{
  result = qword_27CAC0D70;
  if (!qword_27CAC0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D70);
  }

  return result;
}

uint64_t sub_216A677DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CollaborationActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A678D4()
{
  result = qword_27CAC0D78;
  if (!qword_27CAC0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0D78);
  }

  return result;
}

uint64_t sub_216A67994@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D80, &qword_21703B7A0);
  OUTLINED_FUNCTION_1();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - v5;
  v6 = sub_217009684();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D88, &qword_21703B7A8);
  OUTLINED_FUNCTION_1();
  v34 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D90, &qword_21703B7B0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  type metadata accessor for ShareMusicItemAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D98, &qword_21703B7B8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  sub_216A67E1C(v16);
  if (OUTLINED_FUNCTION_7_61() == 1)
  {
    sub_2166997CC(v16, &qword_27CAC0D90, &qword_21703B7B0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v2);
    v26 = OUTLINED_FUNCTION_5_65(&qword_27CAC0DA0, &qword_27CAC0D88, &qword_21703B7A8);
    v39 = v8;
    v40 = v26;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_33();
    sub_2167272C8(v22);
  }

  else
  {
    sub_216A6978C(v16, v19, type metadata accessor for ShareMusicItemAction);
    v27 = sub_217009634();
    MEMORY[0x28223BE20](v27);
    *(&v33 - 2) = v1;
    *(&v33 - 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0DB0, &unk_21703B7C0);
    sub_216A69558();
    sub_217008B94();
    v28 = OUTLINED_FUNCTION_5_65(&qword_27CAC0DA0, &qword_27CAC0D88, &qword_21703B7A8);
    v29 = v35;
    MEMORY[0x21CE9A570](v12, v8, v28);
    v30 = v36;
    (*(v36 + 16))(v22, v29, v2);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v2);
    v39 = v8;
    v40 = v28;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_33();
    sub_2167272C8(v22);
    (*(v30 + 8))(v29, v2);
    (*(v34 + 8))(v12, v8);
    sub_216A69A2C(v19, type metadata accessor for ShareMusicItemAction);
  }

  v31 = sub_216A6945C();
  MEMORY[0x21CE9A570](v25, v37, v31);
  return sub_2167272C8(v25);
}

uint64_t sub_216A67E1C@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = sub_21700CFB4();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21700D704();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v78 - v6;
  v7 = sub_21700D284();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for ShareURLDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v95 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v94 = &v78 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = sub_217005EF4();
  v97 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v96 = &v78 - v32;
  v33 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  sub_216788294(v1 + v33[5], &v101);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v82 = v30;
  v34 = *(&v100[0] + 1);
  v83 = *&v100[0];
  sub_216681B04(v1 + v33[7], v27, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {

    sub_2166997CC(v27, &qword_27CABA820, &unk_217018CE0);
LABEL_4:
    v35 = type metadata accessor for ShareMusicItemAction(0);
    v36 = v98;
    v37 = 1;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v81 = v34;
  v38 = *(v97 + 32);
  v80 = v97 + 32;
  v79 = v38;
  v38(v96, v27, v28);
  sub_216681B04(v1 + v33[8], v14, &qword_27CAB6D60, &qword_217014E40);
  v39 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v39) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB6D60, &qword_217014E40);
    v40 = sub_21700C4B4();
    v41 = v17;
    v42 = 1;
  }

  else
  {
    v43 = sub_21700C4B4();
    (*(*(v43 - 8) + 16))(v17, v14, v43);
    sub_216A69A2C(v14, type metadata accessor for Artwork);
    v41 = v17;
    v42 = 0;
    v40 = v43;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  v44 = v85;
  sub_216681B04(v1 + v33[12], v11, &qword_27CAB6A00, &unk_217016B60);
  v45 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v45) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6A00, &unk_217016B60);
    v46 = 23;
  }

  else
  {
    v46 = *v11;
    sub_216A69A2C(v11, type metadata accessor for ContentDescriptor);
  }

  v47 = (v1 + v33[6]);
  v49 = *v47;
  v48 = v47[1];
  v50 = v97;
  v51 = v95;
  (*(v97 + 16))(v95 + v18[7], v96, v28);
  sub_216A699BC(v17, v51);
  *(v51 + v18[5]) = v46;
  v52 = (v51 + v18[6]);
  *v52 = v49;
  v52[1] = v48;
  v53 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v28);
  sub_21700DF14();
  sub_21700D6F4();
  v54 = MEMORY[0x277D837D0];
  v102 = MEMORY[0x277D837D0];
  *&v101 = 0x6572616873;
  *(&v101 + 1) = 0xE500000000000000;
  sub_2166EF9C4(&v101, v100);
  v55 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v99 = v55;
  sub_2166EF9D4();
  v56 = v99;
  sub_216681B04(v53, v22, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
  {
    sub_2166997CC(v22, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v57 = v82;
    v79(v82, v22, v28);
    v58 = sub_217005DE4();
    v102 = v54;
    *&v101 = v58;
    *(&v101 + 1) = v59;
    sub_2166EF9C4(&v101, v100);
    swift_isUniquelyReferenced_nonNull_native();
    v99 = v56;
    sub_2166EF9D4();
    v56 = v99;
    (*(v50 + 8))(v57, v28);
  }

  v60 = v81;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v61 = sub_21700CF84();
  v62 = __swift_project_value_buffer(v61, qword_280E73DB0);
  v63 = v87;
  MEMORY[0x21CE9DD70](v83, v60, 0x6E6F74747562, 0xE600000000000000, v56, v62);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v64 = v89;
  v65 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_217013DA0;
  v67 = v66 + v65;
  v68 = v90;
  (*(v64 + 16))(v67, v63, v90);
  v69 = v86;
  v70 = v44;
  v71 = v88;
  (*(v86 + 16))(v84, v44, v88);
  v72 = v91;
  sub_21700D244();
  (*(v64 + 8))(v63, v68);
  (*(v69 + 8))(v70, v71);
  sub_2166997CC(v94, &qword_27CABA820, &unk_217018CE0);
  (*(v97 + 8))(v96, v28);
  v73 = type metadata accessor for ShareMusicItemAction(0);
  v74 = *(v73 + 20);
  v75 = v98;
  sub_216A6978C(v95, v98 + v74, type metadata accessor for ShareURLDescriptor);
  v76 = type metadata accessor for ShareableMusicItem(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v75 + v74, 0, 1, v76);
  __swift_storeEnumTagSinglePayload(v75 + *(v73 + 24), 1, 1, v28);
  (*(v92 + 32))(v75, v72, v93);
  v36 = v75;
  v37 = 0;
  v35 = v73;
  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
}

uint64_t sub_216A688F4(uint64_t a1, uint64_t a2)
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0DC8, &unk_21703B7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF158, &qword_217031BC0);
  sub_216A69688();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160, &unk_217031BC8);
  sub_2166D9530(&qword_27CABF168, &qword_27CABF160, &unk_217031BC8, &unk_217048B78);
  swift_getOpaqueTypeConformance2();
  return sub_21700B324();
}

uint64_t sub_216A68A64(uint64_t a1)
{
  v3 = sub_21700D8E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = type metadata accessor for ShareMusicItemAction(0);
  v12[4] = sub_216A698B4(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction, &unk_217035FF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_216A6972C(a1, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  v8 = *(type metadata accessor for CuratorDetailHeaderComponentModel(0) + 20);
  v11[3] = MEMORY[0x277D84030];
  v11[0] = swift_allocObject();
  sub_216788294(v1 + v8, v11[0] + 16);
  memset(v10, 0, sizeof(v10));
  sub_21700D854();
  sub_2166997CC(v10, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v11, &unk_27CABF7A0, &unk_217014D20);
  sub_216A69688();
  sub_21700A204();
  (*(v4 + 8))(v6, v3);
  return sub_216A69968(v12);
}

uint64_t sub_216A68C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_21700D8E4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratorToolbarContent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for ShareMusicItemAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_216A6972C(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareMusicItemAction);
  sub_216A6972C(v2, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CuratorToolbarContent);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_216A6978C(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for ShareMusicItemAction);
  sub_216A6978C(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CuratorToolbarContent);
  v21[4] = sub_216A697EC;
  v21[5] = v15;
  v16 = *(type metadata accessor for CuratorDetailHeaderComponentModel(0) + 20);
  v21[3] = MEMORY[0x277D84030];
  v21[0] = swift_allocObject();
  sub_216788294(v2 + v16, v21[0] + 16);
  memset(v20, 0, sizeof(v20));
  sub_21700D854();
  sub_2166997CC(v20, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v21, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF160, &unk_217031BC8);
  sub_2166D9530(&qword_27CABF168, &qword_27CABF160, &unk_217031BC8, &unk_217048B78);
  sub_21700A204();
  (*(v4 + 8))(v6, v19);
}

uint64_t sub_216A68FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CuratorToolbarContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  a3[3] = type metadata accessor for ShareMusicItemAction(0);
  a3[4] = sub_216A698B4(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction, &unk_217035FF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_216A6972C(a1, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF170, &qword_217031BD8);
  v11 = v10[11];
  v12 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a3 + v11, 1, 1, v12);
  sub_216A6972C(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CuratorToolbarContent);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_216A6978C(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CuratorToolbarContent);
  v15 = v10[12];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v10[13];
  result = swift_getKeyPath();
  *v16 = result;
  v16[40] = 0;
  a3[5] = sub_216A698FC;
  a3[6] = v14;
  a3[7] = 0;
  a3[8] = 0;
  return result;
}

uint64_t sub_216A69224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  sub_216681B04(a1 + *(v10 + 48), v6, &qword_27CAB6A00, &unk_217016B60);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_2166997CC(v6, &qword_27CAB6A00, &unk_217016B60);
    v12 = 9;
  }

  else
  {
    v12 = *v6;
    sub_216A69A2C(v6, type metadata accessor for ContentDescriptor);
  }

  *v9 = v12;
  swift_storeEnumTagMultiPayload();
  sub_216A6978C(v9, a2, type metadata accessor for MenuActionType);
  v13 = type metadata accessor for ContextMenuItem(0);
  *(a2 + v13[5]) = 0;
  *(a2 + v13[6]) = 0;
  v14 = v13[7];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216A6945C()
{
  result = qword_27CAC0DA8;
  if (!qword_27CAC0DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D98, &qword_21703B7B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0D88, &qword_21703B7A8);
    sub_2166D9530(&qword_27CAC0DA0, &qword_27CAC0D88, &qword_21703B7A8, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DA8);
  }

  return result;
}

unint64_t sub_216A69558()
{
  result = qword_27CAC0DB8;
  if (!qword_27CAC0DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0DB0, &unk_21703B7C0);
    sub_216A69688();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160, &unk_217031BC8);
    sub_2166D9530(&qword_27CABF168, &qword_27CABF160, &unk_217031BC8, &unk_217048B78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DB8);
  }

  return result;
}

unint64_t sub_216A69688()
{
  result = qword_27CAC0DC0;
  if (!qword_27CAC0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DC0);
  }

  return result;
}

uint64_t sub_216A6972C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A6978C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A697EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ShareMusicItemAction(0);
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_36(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_216A68FFC(v1 + v5, v10, a1);
}

uint64_t sub_216A698B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A698FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CuratorToolbarContent(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216A69224(v5, a1);
}

uint64_t sub_216A699BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A69A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A69A80(uint64_t a1)
{
  sub_2166B0B84();
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21680D428(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216A69BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v45 = v10[2];
  v11 = v45;
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v15 = sub_217009F14();
  OUTLINED_FUNCTION_1();
  v33 = v16;
  MEMORY[0x28223BE20](v17);
  v31 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v32 = &v29 - v21;
  (*(v6 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v20);
  v22 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v11;
  *(v23 + 3) = v12;
  *(v23 + 4) = v13;
  *(v23 + 5) = v14;
  (*(v6 + 32))(&v23[v22], &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v30;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v30;
  v24 = v31;
  sub_217009EF4();
  OUTLINED_FUNCTION_0_126();
  WitnessTable = swift_getWitnessTable();
  v26 = v32;
  sub_2166C24DC(v24, v15, WitnessTable);
  v27 = *(v33 + 8);
  v27(v24, v15);
  sub_2166C24DC(v26, v15, WitnessTable);
  return (v27)(v26, v15);
}

void sub_216A69E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v7[0] = a3;
    v7[1] = a4;
    v7[2] = a5;
    v7[3] = a6;
    v6 = type metadata accessor for MenuButton(0, v7);
    sub_216A69EC0(v6);
  }
}

void sub_216A69EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2170075A4();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21700CFB4();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217005EF4();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21700D704();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = sub_21700D284();
  MEMORY[0x28223BE20](v21 - 8);
  v64 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21700CE94();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_216C0C534(&v77);
  if (v78)
  {
    v60 = v24;
    v62 = v4;
    sub_2167B8EF0(&v77, v80);
    v59 = *v2;
    v61 = v2;
    v25 = v2[1];
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v8);
    sub_21700D6F4();
    v78 = MEMORY[0x277D837D0];
    *&v77 = 0x68536E6F69746361;
    *(&v77 + 1) = 0xEB00000000746565;
    sub_2166EF9C4(&v77, v76);
    v26 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v26;
    sub_2166EF9D4();
    v27 = v75;
    sub_2167DE934(v20, v17);
    v28 = v14;
    if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
    {
      sub_2166997CC(v17, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v33 = v25;
      v34 = v63;
      (*(v63 + 32))(v10, v17, v8);
      v35 = sub_217005DE4();
      v78 = MEMORY[0x277D837D0];
      *&v77 = v35;
      *(&v77 + 1) = v36;
      sub_2166EF9C4(&v77, v76);
      swift_isUniquelyReferenced_nonNull_native();
      v75 = v27;
      sub_2166EF9D4();
      v27 = v75;
      (*(v34 + 8))(v10, v8);
      v25 = v33;
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v37 = sub_21700CF84();
    v38 = __swift_project_value_buffer(v37, qword_280E73DB0);
    v39 = v70;
    MEMORY[0x21CE9DD70](v59, v25, 0x6E6F74747562, 0xE600000000000000, v27, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_217013DA0;
    v42 = v41 + v40;
    v43 = v71;
    (*(v6 + 16))(v42, v39, v71);
    v44 = v68;
    v45 = v69;
    (*(v68 + 16))(v65, v28, v69);
    sub_21700D244();
    (*(v6 + 8))(v39, v43);
    (*(v44 + 8))(v28, v45);
    sub_2166997CC(v20, &qword_27CABA820, &unk_217018CE0);
    v46 = v60;
    sub_21700CE84();
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v47 = v67;
    v78 = v67;
    v79 = MEMORY[0x277D21B60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
    v49 = v66;
    v50 = (*(v66 + 16))(boxed_opaque_existential_1, v46, v47);
    v51 = v72;
    sub_216C0C548(v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    sub_217007544();
    (*(v74 + 8))(v51, v62);
    (*(v49 + 8))(v46, v47);
    __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
  }

  else
  {
    sub_2166997CC(&v77, &qword_27CAB7310, &unk_2170170F0);
    if (qword_27CAB5C60 != -1)
    {
      swift_once();
    }

    v29 = sub_217007CA4();
    __swift_project_value_buffer(v29, qword_27CAC0DD0);
    v30 = sub_217007C84();
    v31 = sub_21700ED84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_216679000, v30, v31, "Attempted to report metrics without performAction available on environment", v32, 2u);
      MEMORY[0x21CEA1440](v32, -1, -1);
    }
  }
}

uint64_t sub_216A6A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(v11);
  sub_2166C24DC(v9, a3, a5);
  v15 = *(v7 + 8);
  v15(v9, a3);
  sub_2166C24DC(v13, a3, a5);
  return (v15)(v13, a3);
}

uint64_t sub_216A6A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v13 + 32))(v10);
  sub_2166C24DC(v8, a2, a4);
  v14 = *(v6 + 8);
  v14(v8, a2);
  sub_2166C24DC(v12, a2, a4);
  return (v14)(v12, a2);
}

void sub_216A6A9C0(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for MenuButton(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_216A69E78(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_216A6AAB4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0DD0);
  __swift_project_value_buffer(v0, qword_27CAC0DD0);
  return sub_217007C94();
}

uint64_t sub_216A6AC0C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_216A6ACA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216A6ADC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216A6AE9C()
{
  result = qword_27CAC0DE8;
  if (!qword_27CAC0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DE8);
  }

  return result;
}

unint64_t sub_216A6AEF4()
{
  result = qword_27CAC0DF0;
  if (!qword_27CAC0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0DF0);
  }

  return result;
}

uint64_t sub_216A6AF78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v59 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v55 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  sub_21700D7A4();
  OUTLINED_FUNCTION_1_84();
  sub_21700CE04();
  v18 = *(v55 + 16);
  v53 = v4;
  v48 = v55 + 16;
  v49 = v18;
  v18(v8, v56, v4);
  v50 = v8;
  sub_21700D734();
  v54 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v51 = v11 + 8;
  v52 = v9;
  v22(v14, v9);
  if (v21)
  {
    v23 = type metadata accessor for SongDetailListHeaderLockup(0);
    v57 = v19;
    v58 = v21;
    v47 = v22;
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_1_84();
    sub_21700CE04();
    v24 = v49;
    v25 = v50;
    v26 = v53;
    v49(v50, v56, v53);
    sub_216A6B5D0(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_3_85();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v24(v25, v56, v26);
    v27 = v23;
    sub_216A6B5D0(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v28 = v59;
    OUTLINED_FUNCTION_3_85();
    v29 = v54;
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v32 = v31;
    v33 = v52;
    v34 = v47;
    v47(v17, v52);
    v35 = (v28 + *(v27 + 24));
    *v35 = v30;
    v35[1] = v32;
    sub_21700CE04();
    v36 = sub_21700CDB4();
    v38 = v37;
    v34(v17, v33);
    v39 = (v28 + *(v27 + 28));
    *v39 = v36;
    v39[1] = v38;
    sub_21700CE04();
    v40 = v56;
    sub_21700D2E4();
    v34(v17, v33);
    sub_21700CE04();
    sub_21700D2E4();
    (*(v55 + 8))(v40, v53);
    v34(v29, v33);
    return (v34)(v17, v33);
  }

  else
  {
    v42 = sub_21700E2E4();
    sub_216A6B5D0(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v44 = v43;
    v45 = type metadata accessor for SongDetailListHeaderLockup(0);
    *v44 = 25705;
    v44[1] = 0xE200000000000000;
    v44[2] = v45;
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v55 + 8))(v56, v53);
    v22(v54, v52);
    return sub_2167B0250(v59);
  }
}

uint64_t sub_216A6B5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ArtistDetailPageIntent(uint64_t a1)
{
  result = qword_27CAC0E00;
  if (!qword_27CAC0E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A6B6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for ArtistDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216A6BA64(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for ArtistDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A6BC38(uint64_t a1)
{
  result = sub_2166CE54C(&qword_27CAC0E10, type metadata accessor for ArtistDetailPageIntent, &unk_21703BBE4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A6BCD8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE54C(&qword_27CAC0E10, type metadata accessor for ArtistDetailPageIntent, &unk_21703BBE4);
  result = sub_2166CE54C(&qword_27CAC0E18, type metadata accessor for ArtistDetailPageIntent, &unk_21703BBC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DismissArtistFavoritingTooltipAction(uint64_t a1)
{
  result = qword_280E2E190;
  if (!qword_280E2E190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A6BDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t type metadata accessor for UnifiedMessagesRequestAction(uint64_t a1)
{
  result = qword_280E31D08;
  if (!qword_280E31D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A6C0C4(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D654C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216A6C150@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v72[4] = *MEMORY[0x277D85DE8];
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v61 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = v55 - v14;
  MEMORY[0x28223BE20](v15);
  v16 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v64 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UnifiedMessagesRequestAction(0);
  v22 = *(v21 + 24);
  v65 = sub_21700E384();
  v63 = a3;
  *(a3 + v22) = v65;
  sub_21700CE04();
  v23 = v4;
  v24 = v69;
  (*(v6 + 16))(v9, v69, v23);
  v25 = v66;
  sub_21700D224();
  if (v25)
  {
    (*(v6 + 8))(v24, v23);
    (*(v68 + 8))(v70, v67);
  }

  v27 = v61;
  v57 = v22;
  v58 = v16;
  v66 = v21;
  v59 = v6;
  v60 = v23;
  v28 = v63;
  (*(v64 + 32))(v63, v20, v16);
  v29 = v62;
  v30 = v70;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = v68 + 8;
  v35 = *(v68 + 8);
  v36 = v29;
  v37 = v67;
  v35(v36, v67);
  if (!v33)
  {
    v56 = 0;
    v41 = v28;
    v42 = sub_21700E2E4();
    sub_216A6C8E0(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v43 = 0x6E656D6563616C70;
    v44 = v66;
    v43[1] = 0xE900000000000074;
    v43[2] = v44;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    goto LABEL_7;
  }

  v62 = v35;
  v38 = (v28 + *(v66 + 20));
  *v38 = v31;
  v38[1] = v33;
  sub_2170058C4();
  swift_allocObject();
  v39 = sub_2170058B4();
  sub_21700CE04();
  sub_216A6C8E0(&qword_280E2A2B8, MEMORY[0x277D21B10], MEMORY[0x277D21B18]);
  v40 = sub_2170058A4();
  v46 = v45;
  v55[1] = v39;
  v56 = v33;
  v47 = v40;
  v68 = v34;
  v35 = v62;
  (v62)(v27, v37);
  v48 = objc_opt_self();
  v49 = sub_217005F94();
  v72[0] = 0;
  v50 = [v48 JSONObjectWithData:v49 options:0 error:v72];

  if (!v50)
  {
    v53 = v72[0];
    sub_217005D34();

    swift_willThrow();
    sub_21677A524(v47, v46);

    v41 = v63;
LABEL_7:
    (*(v59 + 8))(v69, v60);
    v35(v30, v37);
    (*(v64 + 8))(v41, v58);
    if (v56)
    {
    }
  }

  v51 = v72[0];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  if (swift_dynamicCast())
  {
    v52 = v71;
  }

  else
  {
    v52 = sub_21700E384();
  }

  sub_21677A524(v47, v46);

  v54 = v57;
  (*(v59 + 8))(v69, v60);
  v35(v30, v37);

  *(v63 + v54) = v52;
  return result;
}

uint64_t sub_216A6C8E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_216A6C950(uint64_t a1)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  type metadata accessor for LibraryAlbumDataSource(0);
  swift_allocObject();
  return sub_2168AF18C(v5);
}

uint64_t sub_216A6CA54@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v25[0] = a2;
  v25[1] = a4;
  v4 = sub_217006624();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E20, &qword_21703BF28);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E28, &qword_21703BF30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  *v19 = sub_2170093C4();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E30, &qword_21703BF38);
  sub_216A6CCC4(&v19[*(v20 + 44)]);
  v21 = sub_21700ACD4();
  v22 = sub_217009C84();
  v23 = &v19[*(v16 + 36)];
  *v23 = v21;
  v23[8] = v22;
  sub_216A6CFA4();
  sub_21700A2A4();
  sub_216697664(v19, &qword_27CAC0E28, &qword_21703BF30);
  (*(v6 + 104))(v9, *MEMORY[0x277D26AA8], v4);
  sub_217006494();
  (*(v6 + 8))(v9, v4);
  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_216A6CCC4@<X0>(uint64_t *a4@<X8>)
{
  v16 = type metadata accessor for ContainerDetailTrackListFooterView(0);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for LibraryAlbumDataSource(0);
  sub_216A6EA10(&qword_27CAC0E50, type metadata accessor for LibraryAlbumDataSource, &unk_2170236FC);
  sub_2170081B4();
  v17 = sub_2168B02FC();

  sub_2170081B4();
  v10 = sub_2168B0624();

  v11 = 0;
  if (v10)
  {
    sub_2170081B4();
    v11 = sub_2168B03F0();
  }

  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v12 = &v9[*(v16 + 20)];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  sub_216A6E958(v9, v6, type metadata accessor for ContainerDetailTrackListFooterView);
  *a4 = v17;
  a4[1] = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E58, &qword_21703BFC0);
  sub_216A6E958(v6, a4 + *(v13 + 64), type metadata accessor for ContainerDetailTrackListFooterView);
  v14 = a4 + *(v13 + 80);
  *v14 = 0;
  v14[8] = 1;
  sub_21700DF14();

  sub_216A6E9B8(v9, type metadata accessor for ContainerDetailTrackListFooterView);
  sub_216A6E9B8(v6, type metadata accessor for ContainerDetailTrackListFooterView);
}

unint64_t sub_216A6CFA4()
{
  result = qword_27CAC0E38;
  if (!qword_27CAC0E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E28, &qword_21703BF30);
    sub_2166D9530(&qword_27CAC0E40, &qword_27CAC0E48, &unk_21703BF40, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E38);
  }

  return result;
}

uint64_t sub_216A6D0B4(uint64_t a1)
{
  v1 = sub_217009714();
  MEMORY[0x28223BE20](v1);
  sub_2170093B4();
  sub_216A6EA10(&qword_280E2A8F0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E60, &qword_21703C048);
  sub_216A6E6AC();
  return sub_217008014();
}

uint64_t sub_216A6D1EC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E90, &unk_21703C068);
  MEMORY[0x28223BE20](v1);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB430, &qword_2170236B0);
  sub_2166D9530(&qword_27CAC0E98, &qword_27CABB430, &qword_2170236B0, MEMORY[0x277D83980]);
  sub_2170075C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E78, &unk_21703C050);
  sub_2166D9530(&qword_27CAC0EA0, &qword_27CAC0E90, &unk_21703C068, MEMORY[0x277D7EC38]);
  sub_216A6E730();
  return sub_21700B154();
}

uint64_t sub_216A6D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC58, &qword_21702C508);
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-v11];
  sub_216A6E958(a2, &v14[-v11], type metadata accessor for LibraryAlbumDataSource.HeaderType);
  *&v12[*(v10 + 56)] = a3;
  v15 = v12;
  v16 = a1;
  sub_21700DF14();
  sub_216A6D98C(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E88, &qword_21703C060);
  sub_216A6E7F4();
  sub_2166D9530(&qword_27CAC0E80, &qword_27CAC0E88, &qword_21703C060, &unk_21701D0D8);
  sub_21700B194();
  return sub_216697664(v12, &qword_27CABB538, &unk_2170239A0);
}

uint64_t sub_216A6D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  sub_216681B04(a1, v17 - v8, &qword_27CABB538, &unk_2170239A0);
  v10 = *&v9[*(v7 + 56)];
  *(a3 + 32) = &type metadata for StaticGridLayout;
  *(a3 + 40) = &off_282933558;
  v11 = swift_allocObject();
  *(a3 + 8) = v11;
  *(v11 + 16) = 1;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 32;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21700F3B4();

  v18 = 0xD000000000000010;
  v19 = 0x80000002170873E0;
  v17[1] = a2;
  v12 = sub_21700F784();
  MEMORY[0x21CE9F490](v12);

  v13 = v18;
  v14 = v19;
  *a3 = v10;
  *(a3 + 144) = swift_getKeyPath();
  *(a3 + 152) = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0E88, &qword_21703C060) + 92);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 3;
  *(a3 + 72) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = sub_216A6D790;
  *(a3 + 80) = v13;
  *(a3 + 88) = v14;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  return sub_216A6E9B8(v9, type metadata accessor for LibraryAlbumDataSource.HeaderType);
}

uint64_t sub_216A6D790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C2F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2168C032C();
  v9 = sub_21700C2A4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  type metadata accessor for PlaybackPresenter(0);
  sub_216A6EA10(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);

  *(a2 + 8) = sub_217008CF4();
  *(a2 + 16) = v12;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  type metadata accessor for AlbumTrackLockupView(0);
  v16 = 0x4036000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v16 = 0x4050400000000000;
  sub_2170082B4();
  *a2 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EB0, &qword_21703C230);
  v14 = (a2 + *(result + 52));
  *v14 = v9;
  v14[1] = v11;
  return result;
}

uint64_t sub_216A6D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA0, &qword_21702C528);
  MEMORY[0x28223BE20](v62);
  v56 = (&v53 - v3);
  v4 = type metadata accessor for DefaultSectionHeader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA8, &unk_21702C530);
  MEMORY[0x28223BE20](v64);
  v65 = &v53 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB0, &qword_21703C0A0);
  MEMORY[0x28223BE20](v59);
  v60 = &v53 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC68, &qword_21702C510);
  MEMORY[0x28223BE20](v63);
  v61 = &v53 - v8;
  v54 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v54);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0);
  MEMORY[0x28223BE20](v55);
  v12 = &v53 - v11;
  v13 = type metadata accessor for ComposerHeaderLockupView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78, &qword_21702C518);
  MEMORY[0x28223BE20](v58);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for ComposerSectionHeader(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A6E958(a1, v26, type metadata accessor for LibraryAlbumDataSource.HeaderType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_21695EE54();
      return sub_217009554();
    }

    v28 = v57;
    sub_216A6E888(v26, v57, type metadata accessor for DefaultSectionHeader);
    v29 = sub_2170091A4();
    v30 = v56;
    *v56 = v29;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC8, &unk_21702C550);
    sub_216A6E304(v28, v30 + *(v31 + 44));
    sub_216681B04(v30, v60, &qword_27CABDCA0, &qword_21702C528);
    swift_storeEnumTagMultiPayload();
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0, &qword_21702C528, MEMORY[0x277CE1138]);
    v32 = v61;
    sub_217009554();
    sub_216681B04(v32, v65, &qword_27CABDC68, &qword_21702C510);
    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    sub_216697664(v32, &qword_27CABDC68, &qword_21702C510);
    sub_216697664(v30, &qword_27CABDCA0, &qword_21702C528);
    v33 = type metadata accessor for DefaultSectionHeader;
    v34 = v28;
  }

  else
  {
    v57 = v17;
    v35 = v20;
    sub_216A6E888(v26, v23, type metadata accessor for ComposerSectionHeader);
    v36 = v23;
    sub_216A6E958(v23, v15, type metadata accessor for ComposerSectionHeader);
    v15[*(v13 + 20)] = 0;
    sub_216681B04(a1, v12, &qword_27CABB538, &unk_2170239A0);
    v37 = *&v12[*(v55 + 48)];
    v38 = v15;
    v39 = v12;
    if (sub_2166BF3C8(v37))
    {
      sub_216C746F0();
      v40 = v35;
      v41 = v57;
      if ((v37 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA0220](0, v37);
      }

      else
      {
      }

      v42 = v10;
      v43 = v54;

      sub_2168ABD3C();

      sub_216681B04(v42 + *(v43 + 92), &v67, &qword_27CAB6DB0, &qword_217016C00);
      sub_216A6E9B8(v42, type metadata accessor for AlbumTrackLockup);
      sub_216A6E9B8(v39, type metadata accessor for LibraryAlbumDataSource.HeaderType);
      v44 = v36;
    }

    else
    {

      sub_216A6E9B8(v12, type metadata accessor for LibraryAlbumDataSource.HeaderType);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
      v40 = v35;
      v44 = v36;
      v41 = v57;
    }

    v46 = v41 + *(v58 + 36);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC90, &qword_21702C520);
    sub_217008AC4();
    v48 = v68;
    *v46 = v67;
    *(v46 + 16) = v48;
    *(v46 + 32) = v69;
    *(v46 + 40) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0;
    v49 = (v46 + v47[11]);
    *v49 = 0;
    v49[1] = 0;
    v50 = v47[12];
    *(v46 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v51 = v46 + v47[13];
    *v51 = swift_getKeyPath();
    *(v51 + 40) = 0;
    sub_216A6E888(v38, v41, type metadata accessor for ComposerHeaderLockupView);
    sub_216A6E8E8(v41, v40);
    sub_216681B04(v40, v60, &qword_27CABDC78, &qword_21702C518);
    swift_storeEnumTagMultiPayload();
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0, &qword_21702C528, MEMORY[0x277CE1138]);
    v52 = v61;
    sub_217009554();
    sub_216681B04(v52, v65, &qword_27CABDC68, &qword_21702C510);
    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    sub_216697664(v52, &qword_27CABDC68, &qword_21702C510);
    sub_216697664(v40, &qword_27CABDC78, &qword_21702C518);
    v33 = type metadata accessor for ComposerSectionHeader;
    v34 = v44;
  }

  return sub_216A6E9B8(v34, v33);
}

uint64_t sub_216A6E304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultSectionHeaderView(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_21700B3B4();
  sub_2170083C4();
  v11 = v27;
  v12 = v29;
  v13 = v31;
  v25 = v32;
  v35 = 1;
  v34 = v28;
  v33 = v30;
  sub_216A6E958(a1, v10, type metadata accessor for DefaultSectionHeader);
  v14 = v5[7];
  *&v10[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v15 = &v10[v5[8]];
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 0;
  v16 = v5[9];
  *&v10[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v17 = v5[10];
  *&v10[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0, &unk_21703C1D0);
  swift_storeEnumTagMultiPayload();
  v26 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v26 = 0x402A000000000000;
  sub_2170082B4();
  v26 = 0x4038000000000000;
  sub_2170082B4();
  LOBYTE(v17) = v35;
  v18 = v34;
  v19 = v33;
  sub_216A6E958(v10, v7, type metadata accessor for DefaultSectionHeaderView);
  *a2 = 0;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v19;
  v20 = v25;
  *(a2 + 48) = v13;
  *(a2 + 56) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD8, &qword_21702C690);
  sub_216A6E958(v7, a2 + *(v21 + 48), type metadata accessor for DefaultSectionHeaderView);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_216A6E9B8(v10, type metadata accessor for DefaultSectionHeaderView);
  return sub_216A6E9B8(v7, type metadata accessor for DefaultSectionHeaderView);
}

uint64_t sub_216A6E618(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EA8, &qword_21703C098) + 48);
  v3 = *&v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0) + 48)];

  return sub_216A6D390(v1, v2, v3);
}

unint64_t sub_216A6E6AC()
{
  result = qword_27CAC0E68;
  if (!qword_27CAC0E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E60, &qword_21703C048);
    sub_216A6E730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E68);
  }

  return result;
}

unint64_t sub_216A6E730()
{
  result = qword_27CAC0E70;
  if (!qword_27CAC0E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0E78, &unk_21703C050);
    sub_216A6E7F4();
    sub_2166D9530(&qword_27CAC0E80, &qword_27CAC0E88, &qword_21703C060, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0E70);
  }

  return result;
}

unint64_t sub_216A6E7F4()
{
  result = qword_27CABDC50;
  if (!qword_27CABDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC58, &qword_21702C508);
    sub_21695EE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC50);
  }

  return result;
}

uint64_t sub_216A6E888(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216A6E8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78, &qword_21702C518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A6E958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A6E9B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216A6EA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A6EA84()
{
  v1 = v0;
  v2 = sub_21700D8E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0EC8, &qword_21703C2D8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = (v24 - v8);
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  (*(v11 + 16))(v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0ED0, &qword_21703C2E0);
  v13 = v12[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v13, 1, 1, v14);
  v15 = v12[12];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v12[13];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[5] = sub_216A6EDA8;
  v9[6] = 0;
  KeyPath = swift_getKeyPath();
  v18 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0ED8, &qword_21703C380) + 36);
  *v18 = KeyPath;
  v18[8] = 0;
  v19 = sub_21700AC54();
  v20 = sub_21700B3B4();
  v21 = v9 + *(v6 + 36);
  *v21 = v19;
  *(v21 + 4) = 256;
  *(v21 + 2) = v20;
  *(v21 + 3) = v22;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v25[3] = MEMORY[0x277D84030];
  v25[0] = swift_allocObject();
  sub_21700D314();
  memset(v24, 0, sizeof(v24));
  sub_21700D854();
  sub_216697664(v24, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v25, &unk_27CABF7A0, &unk_217014D20);
  sub_216A6F0F4();
  sub_21700A204();
  (*(v3 + 8))(v5, v2);
  return sub_216728A50(v9);
}

uint64_t sub_216A6EDA8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_217008844();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F08, &qword_21703C390);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F10, &qword_21703C398);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - v8);
  v26 = sub_21700ADB4();
  v25 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  sub_217009D54();
  sub_217009DC4();
  v11 = sub_217009E34();

  v12 = swift_getKeyPath();
  v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F18, &unk_21703C400) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v15 = *MEMORY[0x277CE1048];
  v16 = sub_21700ADF4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  v17 = v25;
  *v9 = v26;
  v9[1] = KeyPath;
  v9[2] = v17;
  v9[3] = v12;
  v9[4] = v11;
  v18 = swift_getKeyPath();
  v19 = (v9 + *(v7 + 44));
  *v19 = v18;
  v19[1] = 0x3FE0000000000000;
  sub_21700B3B4();
  sub_2170083C4();
  sub_216A6F2E4(v9, v5);
  v20 = v28;
  v21 = &v5[*(v27 + 36)];
  v22 = v32;
  *v21 = v31;
  *(v21 + 1) = v22;
  *(v21 + 2) = v33;
  v23 = v29;
  (*(v20 + 104))(v3, *MEMORY[0x277CDF9E8], v29);
  sub_216A6F354();
  sub_21700A5A4();
  (*(v20 + 8))(v3, v23);
  return sub_216697664(v5, &qword_27CAC0F08, &qword_21703C390);
}

unint64_t sub_216A6F0F4()
{
  result = qword_27CAC0EE0;
  if (!qword_27CAC0EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0EC8, &qword_21703C2D8);
    sub_216A6F1AC();
    sub_2166D9530(&qword_27CAC0EF8, &qword_27CAC0F00, &qword_21703C388, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0EE0);
  }

  return result;
}

unint64_t sub_216A6F1AC()
{
  result = qword_27CAC0EE8;
  if (!qword_27CAC0EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0ED8, &qword_21703C380);
    sub_2166D9530(&qword_27CAC0EF0, &qword_27CAC0ED0, &qword_21703C2E0, &unk_21702C8E0);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0EE8);
  }

  return result;
}

uint64_t sub_216A6F2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F10, &qword_21703C398);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A6F354()
{
  result = qword_27CAC0F20;
  if (!qword_27CAC0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F08, &qword_21703C390);
    sub_216A6F3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F20);
  }

  return result;
}

unint64_t sub_216A6F3E0()
{
  result = qword_27CAC0F28;
  if (!qword_27CAC0F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F10, &qword_21703C398);
    sub_216A6F498();
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F28);
  }

  return result;
}

unint64_t sub_216A6F498()
{
  result = qword_27CAC0F30;
  if (!qword_27CAC0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F18, &unk_21703C400);
    sub_216A6F550();
    sub_2166D9530(&qword_280E2A710, &qword_27CAB7820, &qword_21701A450, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F30);
  }

  return result;
}

unint64_t sub_216A6F550()
{
  result = qword_27CAC0F38;
  if (!qword_27CAC0F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F40, &qword_21703C470);
    sub_216A6F608();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F38);
  }

  return result;
}

unint64_t sub_216A6F608()
{
  result = qword_27CAC0F48;
  if (!qword_27CAC0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0F50, qword_21703C478);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0F48);
  }

  return result;
}

id sub_216A6F6C0(void *a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21700F494();
    v7 = (a2 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_21700DF14();
      sub_21700DCD4();

      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v7 += 2;
      --v4;
    }

    while (v4);
    v5 = v13;
  }

  sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA8, &qword_21703C528);
  v12[0] = v5;
  sub_21700DF14();
  v9 = a1;
  result = sub_2166F1E10(v12, a1);
  if (result)
  {
    v11 = result;

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_216A6F814(objc_class *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = result;
  LOBYTE(v18) = *v1;
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v18) = v1[2];
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v18) = v1[1];
  sub_21700DD04();
  sub_21700F0B4();
  LOBYTE(v18) = v1[3];
  sub_21700DD04();
  sub_21700F0B4();
  v9 = type metadata accessor for JSUserSocialProfile(0);
  sub_2166A6E54(&v1[v9[8]], v5, &qword_27CAB6D60, &qword_217014E40);
  v10 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_216697664(v5, &qword_27CAB6D60, &qword_217014E40);
    if ([v6 valueWithUndefinedInContext_])
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v11.super.isa = a1;
  sub_216C7D280(v11);
  sub_216A72FCC(v5, type metadata accessor for Artwork);
LABEL_6:
  sub_21700F0B4();
  v12 = &v1[v9[10]];
  v13 = v12[1];
  if (v13)
  {
    v18 = *v12;
    v19 = v13;
    sub_21700DF14();
    sub_21700DD04();

    goto LABEL_9;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_9:
  sub_21700F0B4();
  v14 = &v1[v9[9]];
  v15 = v14[1];
  if (v15)
  {
    v18 = *v14;
    v19 = v15;
    sub_21700DF14();
    sub_21700DD04();

    goto LABEL_12;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  sub_21700F0B4();
  if ((v1[v9[11] + 8] & 1) == 0)
  {
LABEL_15:
    Int.makeValue(in:)(a1);
    goto LABEL_16;
  }

  if (![v6 valueWithUndefinedInContext_])
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  sub_21700F0B4();
  v17 = *&v1[v9[12]];
  if (v17)
  {
    sub_216A6F6C0(a1, v17, v16);
LABEL_19:
    sub_21700F0B4();
    LOBYTE(v18) = v1[v9[13]];
    sub_21700DD04();
    sub_21700F0B4();
    LOBYTE(v18) = v1[v9[14]];
    sub_21700DD04();
    sub_21700F0B4();
    return v8;
  }

  result = [v6 valueWithUndefinedInContext_];
  if (result)
  {
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t (*sub_216A6FD0C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_216A72B80;
}

uint64_t sub_216A6FD70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88, &unk_21703C4F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_21700CCA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
  swift_beginAccess();
  sub_2166A6E54(v0 + v11, v3, &qword_27CAC0F88, &unk_21703C4F8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_216697664(v3, &qword_27CAC0F88, &unk_21703C4F8);
  }

  v13 = *(v5 + 32);
  v13(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v13((v15 + v14), v7, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v16 = v0;
  sub_216A72074(sub_216A729F4, v15);

  return (*(v5 + 8))(v10, v4);
}

uint64_t (*sub_216A6FFD4(void *a1))(void *a1)
{
  v1 = sub_216A6FD0C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_216856F1C;
}

char *sub_216A7009C(objc_class *a1, uint64_t a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v58 = type metadata accessor for JSUserSocialProfile(0);
  MEMORY[0x28223BE20](v58);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v8 = *(a2 + OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_userSocialProfileCoordinator);
  v9 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
  v10 = *&v8[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v11 = *(v10 + 16);
  v12 = v8;
  os_unfair_lock_lock(v11);
  v13 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile;
  v14 = *&v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v15 = *(v10 + 16);
  v16 = v14;
  os_unfair_lock_unlock(v15);

  if (!v14)
  {
    v20 = [objc_opt_self() valueWithNullInContext_];
    if (v20)
    {
      return v20;
    }

    __break(1u);
    goto LABEL_6;
  }

  v55 = v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
  v54 = [v16 isVerified];
  v56 = v16;
  v53 = [v16 isPrivate];
  v52 = v12[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isCollaborationAllowed];
  v17 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
  swift_beginAccess();
  v57 = v5;
  sub_2166A6E54(&v12[v17], v5, &qword_27CAB6D60, &qword_217014E40);
  v18 = *&v8[v9];
  v19 = *(v18 + 16);
  v20 = v12;
  os_unfair_lock_lock(v19);
  v21 = *&v12[v13];
  v22 = *(v18 + 16);
  v23 = v21;
  os_unfair_lock_unlock(v22);

  if (!v21)
  {
LABEL_6:
    v50 = 0;
    v51 = 0;
    goto LABEL_7;
  }

  v24 = sub_2167DEA8C(v23);
  v50 = v25;
  v51 = v24;
LABEL_7:
  v26 = *&v8[v9];
  v27 = *(v26 + 16);
  v28 = v20;
  os_unfair_lock_lock(v27);
  v29 = *&v12[v13];
  v30 = *(v26 + 16);
  v31 = v29;
  os_unfair_lock_unlock(v30);

  if (v29)
  {
    v32 = sub_216A72AB8(v31);
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = sub_216CAD29C(v32);
  swift_beginAccess();
  v37 = sub_21700DF14();
  v38 = sub_216AB4158(v37);
  v39 = v28[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isContactCheckAllowed];
  v40 = v28[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isDiscoverableByContact];
  v41 = v54;
  *v7 = v55;
  v7[1] = v41;
  v42 = v52;
  v7[2] = v53;
  v7[3] = v42;
  v43 = v58;
  sub_216A72F5C(v57, &v7[*(v58 + 32)]);
  v44 = &v7[v43[9]];
  v45 = v50;
  *v44 = v51;
  *(v44 + 1) = v45;
  v46 = &v7[v43[10]];
  *v46 = v33;
  *(v46 + 1) = v35;
  v47 = &v7[v43[11]];
  *v47 = v36;
  v47[8] = 0;
  *&v7[v43[12]] = v38;
  v7[v43[13]] = v39;
  v7[v43[14]] = v40;
  v20 = sub_216A6F814(v60);

  sub_216A72FCC(v7, type metadata accessor for JSUserSocialProfile);
  return v20;
}

uint64_t sub_216A70470(uint64_t a1)
{
  sub_216685F4C(0, &qword_280E29AF8, 0x277CD4640);
  v1 = sub_21700F124();
  v2 = sub_21700F134();

  return v2;
}

char *sub_216A704E4(void *a1, char *a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0, &unk_21703C518);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_21700E314();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_21700D904();
  v16 = MEMORY[0x21CE9E710]();
  if (!v16)
  {
    v19 = "cialProfileCoordinator";
    sub_21700E0D4();
    sub_216A72BF8(&qword_27CABE188, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
    return v19;
  }

  v17 = v16;
  v25 = v5;
  v18 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2166A6E54(&a2[v18], v8, &qword_27CAC0FA0, &unk_21703C518);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v12 = v15;
LABEL_8:
    v19 = sub_21700E304();

    (*(v10 + 8))(v12, v9);
    return v19;
  }

  sub_216697664(v8, &qword_27CAC0FA0, &unk_21703C518);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v17;
  v20 = v26;
  v21 = a2;

  v22 = v27;
  sub_21700E2F4();
  if (!v22)
  {
    v23 = v25;
    (*(v10 + 16))(v25, v12, v9);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v9);
    swift_beginAccess();
    sub_2168BB274(v23, &a2[v18], &qword_27CAC0FA0, &unk_21703C518);
    swift_endAccess();
    goto LABEL_8;
  }

  return v19;
}

uint64_t sub_216A708A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v47 = a5;
  v42 = a3;
  v45 = a2;
  v7 = sub_21700CCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v48 = &v36 - v11;
  v49 = sub_21700CE24();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2166B8854(1);
  sub_21700CE14();
  v14 = *(v8 + 16);
  v41 = v14;
  v37 = v7;
  v14(v12, v45, v7);
  v15 = v44;
  v14(v44, a3, v7);
  v16 = *(v8 + 80);
  v17 = (v16 + 24) & ~v16;
  v43 = v17 + v9;
  v40 = v17;
  v18 = (v17 + v9 + v16) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v20 = *(v8 + 32);
  v39 = v20;
  v21 = v19 + v17;
  v22 = v37;
  v20(v21, v48, v37);
  v20(v19 + v18, v15, v22);
  v23 = v38;
  v24 = sub_216A70F88(v38, sub_216A72C5C, v19);
  v44 = v25;
  v45 = v24;
  v26 = a4;

  v27 = *(v51 + 8);
  v51 += 8;
  v27(v23, v49);
  sub_21700CE14();
  v28 = v48;
  v41(v48, v42, v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v39(v29 + v40, v28, v22);
  v30 = sub_216A710EC(v23, sub_216A72CE4, v29);
  v32 = v31;
  v33 = v26;

  v27(v23, v49);
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  v50[3] = sub_21700D904();
  v50[4] = MEMORY[0x277D22078];
  v50[0] = v47;

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

void sub_216A70CB8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88, &unk_21703C4F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0, &unk_21703C518);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v14 = *a1;
  v15 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  v16 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2168BB274(v13, a2 + v16, &qword_27CAC0FA0, &unk_21703C518);
  swift_endAccess();
  switch(v14)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_217013DA0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 32) = 0xD00000000000001BLL;
      *(v20 + 40) = 0x80000002170875A0;
      goto LABEL_5;
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_217013DA0;
      *(v17 + 56) = MEMORY[0x277D84F78] + 8;
LABEL_5:
      v21 = sub_21700CC94();

      if (!v4)
      {
      }

      break;
    default:
      v18 = sub_21700CCA4();
      (*(*(v18 - 8) + 16))(v10, a3, v18);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v18);
      v19 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
      swift_beginAccess();
      sub_2168BB274(v10, a2 + v19, &qword_27CAC0F88, &unk_21703C4F8);
      swift_endAccess();
      break;
  }
}

uint64_t (*sub_216A70F88(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72EA0;
}

uint64_t (*sub_216A710EC(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72B30;
}

uint64_t (*sub_216A71250(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21700CE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  return sub_216A72B30;
}

void sub_216A713B4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0, &unk_21703C518);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  swift_beginAccess();
  sub_2168BB274(v6, a2 + v8, &qword_27CAC0FA0, &unk_21703C518);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  v10 = v14[1];
  v11 = v15;
  *(v9 + 56) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  v13 = sub_21700CC94();

  if (!v2)
  {
  }
}

uint64_t sub_216A715C4(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FA0, &unk_21703C518);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_21700E314();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingIsCloudAndMediaAccountIdenticalFetch;
  swift_beginAccess();
  sub_2166A6E54(a2 + v15, v7, &qword_27CAC0FA0, &unk_21703C518);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CAC0FA0, &unk_21703C518);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 16) = v23;
    v18 = v17;
    v19 = v24;
    sub_21700E2F4();
    if (v19)
    {
      return a2;
    }

    v20 = v22;
    (*(v9 + 16))(v22, v11, v8);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
    swift_beginAccess();
    sub_2168BB274(v20, a2 + v15, &qword_27CAC0FA0, &unk_21703C518);
    swift_endAccess();
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v11 = v14;
  }

  a2 = sub_21700E304();
  (*(v9 + 8))(v11, v8);
  return a2;
}

void sub_216A718A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];
  v8 = *MEMORY[0x277CED1A0];
  v9 = [v7 accountForService_];
  if (!v9)
  {
LABEL_11:
    v25 = sub_21700CC94();

    if (!v4)
    {
    }

    return;
  }

  v10 = v9;
  v47 = a4;
  v11 = *MEMORY[0x277CED1C0];
  v12 = [v7 accountForService_];
  if (!v12)
  {

    goto LABEL_11;
  }

  v48 = v12;
  v13 = [v7 altDSIDForAccount:v10 service:v8];
  if (v13)
  {
    v14 = v13;
    v45 = sub_21700E514();
    v16 = v15;

    v17 = [v7 altDSIDForAccount:v48 service:v11];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21700E514();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_217013DA0;
      if (v45 == v19 && v16 == v21)
      {
        v24 = 1;
      }

      else
      {
        v24 = sub_21700F7D4();
      }

      v38 = [objc_opt_self() valueWithBool:v24 & 1 inContext:v47];
      if (v38)
      {
        v39 = v38;

        *(v22 + 56) = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
        *(v22 + 32) = v39;
        v40 = sub_21700CC94();
        if (v4)
        {

          return;
        }

        v41 = v40;

LABEL_32:

        return;
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v26 = [v7 DSIDForAccount:v10 service:{v8, v45}];
  if (v26)
  {
    v27 = v26;
    v46 = sub_21700E514();
    v29 = v28;

    v30 = [v7 DSIDForAccount:v48 service:v11];
    if (v30)
    {
      v31 = v30;
      v32 = sub_21700E514();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_217013DA0;
      if (v46 == v32 && v29 == v34)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_21700F7D4();
      }

      v43 = [objc_opt_self() valueWithBool:v37 & 1 inContext:v47];
      if (v43)
      {
        v44 = v43;

        *(v35 + 56) = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
        *(v35 + 32) = v44;
        v41 = sub_21700CC94();

        if (v4)
        {
          return;
        }

        goto LABEL_32;
      }

LABEL_35:
      __break(1u);
      return;
    }
  }

  v42 = sub_21700CC94();

  if (!v4)
  {
  }
}

uint64_t sub_216A71D80()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0F58);
  __swift_project_value_buffer(v0, qword_27CAC0F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F98, &unk_21703C508);
  sub_21700E5B4();
  return sub_217007C94();
}

id (*sub_216A71E2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_216A72B78;
}

id sub_216A71E90(void *a1)
{
  v1 = [a1 self];

  return v1;
}

uint64_t sub_216A71EC4@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = sub_216A71E2C(*a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_216A72B48;
  a2[1] = result;
  return result;
}

uint64_t sub_216A71F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F88, &unk_21703C4F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0, qword_21702DD90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217013DA0;
  *(v8 + 56) = MEMORY[0x277D84F78] + 8;
  v9 = sub_21700CC84();

  if (!v3)
  {

    v11 = sub_21700CCA4();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
    v12 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
    swift_beginAccess();
    sub_2168BB274(v7, a3 + v12, &qword_27CAC0F88, &unk_21703C4F8);
    return swift_endAccess();
  }

  return result;
}

void sub_216A72074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA0, &qword_217039220);
  sub_21700D4B4();
  v7 = v16[0];
  if (v16[0] >= 2uLL)
  {
    sub_216E4F1A8();
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    *(swift_allocObject() + 16) = ObjectType;
    v13 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    v14 = v3;

    v15 = sub_21700EE84();
    v16[3] = v13;
    v16[4] = MEMORY[0x277D225C0];
    v16[0] = v15;
    sub_21700E1C4();

    sub_216A59A7C(v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    if (qword_27CAB5C68 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CAC0F58);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_216679000, v9, v10, "Failed to dispatch block onto JS Thread. Stack manager is not available.", v11, 2u);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }
  }
}

uint64_t sub_216A722A0(char a1, uint64_t (*a2)(char *, double))
{
  v4 = sub_21700CE24();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = a1;
  return a2(&v7, v5);
}

uint64_t sub_216A725A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21700CE24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE14();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = sub_216A71250(v9, sub_216A72A8C, v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  sub_21700E104();
}

void sub_216A72734(void *a1)
{
  if (qword_27CAB5C68 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC0F58);
  v3 = a1;
  oslog = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_21700F884();
    v9 = sub_2166A85FC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_216679000, oslog, v4, "Failed to dispatch block onto JS Thread %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_216A729F4()
{
  v2 = OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return sub_216A71F28(v1, v0 + v7, *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_216A72AB8(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_216A72B48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_216A72BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216A72C5C()
{
  v2 = OUTLINED_FUNCTION_4_71();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  sub_216A70CB8(v1, *(v0 + 16), v0 + ((v7 + 24) & ~v7), v0 + ((*(v6 + 64) + v7 + ((v7 + 24) & ~v7)) & ~v7));
}

uint64_t sub_216A72D48(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_21700CE24();
  OUTLINED_FUNCTION_2(v2);
  v3 = OUTLINED_FUNCTION_3_86();

  return a2(v3);
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = sub_21700CE24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216A72EA0()
{
  v0 = sub_21700CE24();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_3_86();

  return sub_216A72B28(v1, v2);
}

uint64_t sub_216A72F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A72FCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216A7304C(uint64_t a1)
{
  sub_2166EED8C(319, &qword_280E2BF20, type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_216688560(319, &qword_280E29DA0, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_2166CF478(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216A73178@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - v6;
  v58 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  v23 = OUTLINED_FUNCTION_36(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  v26 = a1;
  sub_21700CE04();
  sub_21700CCB4();
  v27 = *(v12 + 8);
  v27(v21, v10);
  v28 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
  {
    sub_2166997CC(v25, &qword_27CAB7D20, &qword_217018700);
LABEL_7:
    v30 = 0xE800000000000000;
    v31 = v26;
    v35 = 0x73746E65746E6F63;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  v29 = sub_21700D3D4();
  (*(*(v28 - 8) + 8))(v25, v28);
  if (!v29)
  {
    goto LABEL_7;
  }

  v54 = v29;
  v30 = 0xEB00000000687361;
  v31 = v26;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v27(v18, v10);
  if (v34)
  {
    v52 = v32;
    v53 = v34;
    v30 = 0xEE00657461446E6FLL;
    v35 = 0x6974617269707865;
    sub_21700CE04();
    v36 = v59;
    sub_21700CD54();
    v27(v15, v10);
    v37 = v58;
    if (__swift_getEnumTagSinglePayload(v36, 1, v58) != 1)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v44 + 8))(v60);
      v27(v31, v10);
      v45 = v36;
      v46 = v55;
      v47 = *(v56 + 32);
      v47(v55, v45, v37);
      v48 = type metadata accessor for SocialBadgingMap(0);
      v49 = v57;
      *(v57 + *(v48 + 24)) = v54;
      v50 = v53;
      *v49 = v52;
      v49[1] = v50;
      return (v47)(v49 + *(v48 + 20), v46, v37);
    }

    sub_2166997CC(v36, &qword_27CAB74E8, &qword_217030A40);
  }

  else
  {

    v35 = 0x486E6F6973726576;
  }

LABEL_8:
  v38 = sub_21700E2E4();
  sub_2167B1EA4();
  swift_allocError();
  v40 = v39;
  v41 = type metadata accessor for SocialBadgingMap(0);
  *v40 = v35;
  v40[1] = v30;
  v40[2] = v41;
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D22530], v38);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v42 + 8))(v60);
  return (v27)(v31, v10);
}

uint64_t sub_216A73704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v2 + *(type metadata accessor for SocialBadgingMap(0) + 24));
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2166AF66C(v5, v3);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  sub_21700DF14();
  v10 = sub_216A73848(a2, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_5:
    sub_216A73A2C(v10, v12, v14, v16);
    v18 = v17;
LABEL_14:
    swift_unknownObjectRelease();
    return v18;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v21 != (v16 >> 1) - v14)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v18)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  return v18;
}

uint64_t sub_216A73848(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_216A73F58(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_216A73E00(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_216A738DC(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_21700F5A4();

    return v10;
  }

  v4 = sub_2166BF3C8(a2);
  v5 = sub_216A73F58(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_216A73DA8(0, a2);
  sub_216A73DA8(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_216A73F14();
    sub_21700DF14();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_21700F3E4();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    sub_21700DF14();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_216A73A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_216A73AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_216AB8C70(*(a1 + 16), 0, a3, a4, a5);
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_36(Friends);
  sub_216ABD618();
  v9 = v8;
  sub_21700DF14();
  sub_216687978(v11);
  if (v9 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_216A73BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_216AB8BD0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_21700C4B4();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_216A73CCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_216A73F14();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_216A73DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_21700F2B4();
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

void sub_216A73E00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_21700DF14();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_216A73E6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_21700C4B4();
    OUTLINED_FUNCTION_36(v5);
    sub_21700DF14();
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_216A73F14()
{
  result = qword_280E29D90;
  if (!qword_280E29D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D90);
  }

  return result;
}

uint64_t sub_216A73F58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_216A73FA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v49 = a3;
  v56 = a2;
  v6 = sub_21700CB64();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CBE4();
  OUTLINED_FUNCTION_1();
  v52 = v10;
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v50 = v11;
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v47 = v22;
  MEMORY[0x28223BE20](v23);
  v48 = &v46 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v28 = sub_21700E064();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  *a4 = a1;
  v34 = a1;
  sub_21700E054();
  v35 = sub_21700E044();
  v37 = v36;
  (*(v30 + 8))(v33, v28);
  sub_216A7486C(v35, v37, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_21669987C(v17, &qword_27CABA820, &unk_217018CE0);
    type metadata accessor for Platform();
    if (sub_2166AF4DC(v49 & 1))
    {
      if (qword_27CAB5C88 != -1)
      {
        swift_once();
      }

      v38 = &qword_27CAC0FD8;
    }

    else
    {
      if (qword_280E3E760 != -1)
      {
        swift_once();
      }

      v38 = &qword_280E3E768;
    }

    v44 = *v38;
    v59 = sub_21700CAF4();
    v60 = sub_216A75710(&qword_280E2A348, MEMORY[0x277D219C8], MEMORY[0x277D219C0]);
    __swift_allocate_boxed_opaque_existential_1(v58);
    swift_unknownObjectRetain();
    sub_21700CB04();
  }

  else
  {
    (*(v20 + 32))(v27, v17, v18);
    v39 = v48;
    sub_216A74ADC(v27, v48);
    v41 = v51;
    v40 = v52;
    v42 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x277D21A70], v53);
    v59 = sub_21700CAD4();
    v60 = sub_216A75710(&qword_27CAC0FF0, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
    __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v20 + 16))(v47, v39, v18);
    (*(v40 + 16))(v50, v41, v42);
    sub_21700CAE4();
    (*(v40 + 8))(v41, v42);
    v43 = *(v20 + 8);
    v43(v39, v18);
    v43(v27, v18);
  }

  sub_21700CB54();
  sub_21700CB84();
  swift_allocObject();
  sub_21700CB74();
  sub_2167B7D58(v58, v57);
  type metadata accessor for SourceBundleLoader(0);
  sub_21700CB34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

id sub_216A745B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700DFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v9 currentProcess];
  v11 = [v8 ams:v10 configurationWithProcessInfo:a1 bag:?];

  swift_unknownObjectRetain();
  sub_21700DF74();
  v12 = [v9 currentProcess];
  sub_216A74738(a2, v7, v12);

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_216A74738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v4 setAnisetteType_];
  [v4 setMescalType_];
  [v4 setAccount_];
  [v4 setRequestEncoding_];
  [v4 setDialogOptions_];
  [v4 setClientInfo_];
  [v4 setDisableResponseDecoding_];
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  [v4 setUrlKnownToBeTrusted_];
  return v4;
}

uint64_t sub_216A7486C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_217005EF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2166AF3EC();
  if (!v13)
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    goto LABEL_11;
  }

  sub_216A75260(v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
LABEL_11:
    sub_21669987C(v8, &qword_27CABA820, &unk_217018CE0);
    goto LABEL_12;
  }

  v14 = *(v10 + 32);
  v14(v12, v8, v9);
  v15 = sub_216784490();
  if (v16)
  {
    if (v15 == a1 && v16 == a2)
    {
    }

    else
    {
      v22 = sub_21700F7D4();

      if ((v22 & 1) == 0)
      {
        sub_216784500(0, 0);
        sub_216784404(0, 0);
        (*(v10 + 8))(v12, v9);
LABEL_12:
        v18 = 1;
        return __swift_storeEnumTagSinglePayload(a3, v18, 1, v9);
      }
    }
  }

  sub_216784490();
  if (v19)
  {
  }

  else
  {
    sub_21700DF14();
    sub_216784500(a1, a2);
  }

  v14(a3, v12, v9);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v18, 1, v9);
}

uint64_t sub_216A74ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_217005DD4() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
      return sub_217005E34();
    }
  }

  v8 = sub_217005EF4();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_216A74BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_217005DD4() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
      return sub_217005E34();
    }
  }

  v8 = sub_217005EF4();
  return (*(*(v8 - 8) + 16))(a2, a1, v8);
}

uint64_t sub_216A74CB0()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v2 + 312) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A74DBC()
{
  v2 = v0[36];
  v1 = v0[37];
  v13 = v0[34];
  v14 = v0[35];
  v12 = v0[31];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  sub_2166A8544();
  sub_21677A524(v2, v1);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  sub_21669987C(v3, &qword_27CAB94C8, &qword_2170506D0);
  v14(v13, v12);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216A74F24()
{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  sub_21677A524(v0[36], v0[37]);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_21669987C(v1, &qword_27CAB94C8, &qword_2170506D0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v8 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[31];
  sub_216A756BC();
  swift_allocError();
  *v12 = v8;
  swift_willThrow();
  v10(v9, v11);
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t sub_216A75094()
{
  sub_21669987C(*(v0 + 80), &qword_27CAB94C8, &qword_2170506D0);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A7512C()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_14_41();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A751A0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0FC0);
  __swift_project_value_buffer(v0, qword_27CAC0FC0);
  return sub_217007C94();
}

uint64_t sub_216A75220()
{
  result = sub_21700E4D4();
  qword_280E3E768 = result;
  return result;
}

uint64_t sub_216A75260@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_217005DC4();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_217005EF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v34 = v4;
    v35 = a3;
    v33 = v13;
    v22 = *(v13 + 32);
    v22(v20, v11, v12);
    if (sub_217005DA4() & 1) != 0 && (sub_21700E6E4())
    {
      v23 = [objc_opt_self() defaultManager];
      v24 = [v23 URLsForDirectory:9 inDomains:1];

      v25 = sub_21700E824();
      sub_216CE0C14(v25);

      if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
      {
        v22(v17, v8, v12);
        v27 = v36;
        sub_217005E44();
        v39 = sub_217005DB4();
        v40 = v28;
        v30 = v37;
        v29 = v38;
        v31 = v34;
        (*(v38 + 104))(v37, *MEMORY[0x277CC91D8], v34);
        sub_2167B2E14();
        a3 = v35;
        sub_217005EE4();
        (*(v29 + 8))(v30, v31);

        v32 = *(v33 + 8);
        v32(v27, v12);
        v32(v17, v12);
        v32(v20, v12);
        goto LABEL_8;
      }

      sub_21669987C(v8, &qword_27CABA820, &unk_217018CE0);
    }

    a3 = v35;
    v22(v35, v20, v12);
LABEL_8:
    v21 = 0;
    return __swift_storeEnumTagSinglePayload(a3, v21, 1, v12);
  }

  sub_21669987C(v11, &qword_27CABA820, &unk_217018CE0);
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(a3, v21, 1, v12);
}

unint64_t sub_216A756BC()
{
  result = qword_27CAC0FE0;
  if (!qword_27CAC0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0FE0);
  }

  return result;
}

uint64_t sub_216A75710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A75790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  OUTLINED_FUNCTION_17_2(v0 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription, v38);
  v35 = v19;
  sub_216681B64(v0 + v19, v9, &qword_27CAB8EF8, &qword_217024050);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_21669987C(v9, &qword_27CAB8EF8, &qword_217024050);
  }

  else
  {
    (*(v11 + 32))(v18, v9, v10);

    sub_21700CC24();

    (*(v11 + 8))(v18, v10);
  }

  v20 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription;
  OUTLINED_FUNCTION_17_2(v0 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription, v37);
  sub_216681B64(v0 + v20, v6, &qword_27CAB8EF8, &qword_217024050);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_21669987C(v6, &qword_27CAB8EF8, &qword_217024050);
  }

  else
  {
    (*(v11 + 32))(v15, v6, v10);

    sub_21700CC24();

    (*(v11 + 8))(v15, v10);
  }

  v21 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription;
  OUTLINED_FUNCTION_17_2(v0 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription, v36);
  sub_216681B64(v0 + v21, v3, &qword_27CAB8EF8, &qword_217024050);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_21669987C(v3, &qword_27CAB8EF8, &qword_217024050);
  }

  else
  {
    v22 = v34;
    (*(v11 + 32))(v34, v3, v10);

    sub_21700CC24();

    (*(v11 + 8))(v22, v10);
  }

  OUTLINED_FUNCTION_42();
  sub_21669987C(v23, v24, v25);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v26, v27, v28);
  OUTLINED_FUNCTION_42();
  sub_21669987C(v29, v30, v31);

  return v0;
}

uint64_t sub_216A75C1C()
{
  sub_216A75790();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_216A75CEC()
{
  result = qword_27CAC0FF8;
  if (!qword_27CAC0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0FF8);
  }

  return result;
}

uint64_t sub_216A75D40()
{
  OUTLINED_FUNCTION_93();
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v2;
  v2[27] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_216A7602C;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v7 = sub_216A75ECC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216A75ECC()
{
  OUTLINED_FUNCTION_93();
  v4 = OUTLINED_FUNCTION_7_63();
  v5(v4);
  (*(v3 + 8))(v0, v2);
  sub_21669987C(v1, &qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_12_43();

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A75F9C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_11_46();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A7602C()
{
  OUTLINED_FUNCTION_93();
  v5 = OUTLINED_FUNCTION_7_63();
  v6(v5);
  (*(v4 + 8))(v0, v2);
  sub_21669987C(v1, &qword_27CAB89C0, &qword_21701AB00);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_11_46();

  OUTLINED_FUNCTION_3();

  return v7();
}

unint64_t sub_216A76104()
{
  result = qword_280E36D98;
  if (!qword_280E36D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36D98);
  }

  return result;
}

uint64_t type metadata accessor for CreateStationAction(uint64_t a1)
{
  result = qword_280E3E220;
  if (!qword_280E3E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A761CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for CreateStationAction(0) + 20);
  v22 = type metadata accessor for ContentDescriptor(0);
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    v38 = OUTLINED_FUNCTION_2_88();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

uint64_t sub_216A765E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A76694(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v49 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v15, v3);
  if (!v18)
  {
    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_89();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_217013DA0;
    *(v28 + 32) = OUTLINED_FUNCTION_1_109();
    *v29 = 1684957547;
    v29[1] = 0xE400000000000000;
    v29[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v30 = *(*(v18 - 8) + 104);
    v30(v29, *MEMORY[0x277D22530], v18);
    *v27 = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v27[1] = v28;
    v19 = v3;
    v3 = v47;
    v30(v27, *MEMORY[0x277D22538], v18);
    v22 = v49;
LABEL_12:
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v38 + 8))(v48);
    v19(v22, v3);
    return v18;
  }

  v20 = v16 == 1852403562 && v18 == 0xE400000000000000;
  if (!v20 && (sub_21700F7D4() & 1) == 0)
  {
    v40 = v16 == 0x676E69646E6570 && v18 == 0xE700000000000000;
    v22 = v49;
    if (!v40 && (sub_21700F7D4() & 1) == 0)
    {
      v45 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      *v46 = v16;
      v46[1] = v18;
      v46[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
      (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22520], v45);
      goto LABEL_12;
    }

    v21 = 0xEA00000000006C72;

    sub_21700CE04();
    v18 = sub_21700CDB4();
    v42 = v41;
    v19(v9, v3);
    if (v42)
    {
      goto LABEL_8;
    }

    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_89();
    v32 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    v44 = OUTLINED_FUNCTION_1_109();
    v36 = v35;
    *(v33 + 32) = v44;
    *v35 = 0x5565766F72707061;
    goto LABEL_11;
  }

  v21 = 0xE90000000000006CLL;

  v22 = v49;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v24 = v23;
  v19(v12, v3);
  if (!v24)
  {
    v18 = sub_21700E2E4();
    sub_2167B1EA4();
    OUTLINED_FUNCTION_6_56();
    OUTLINED_FUNCTION_2_89();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_217013DA0;
    v34 = OUTLINED_FUNCTION_6_56();
    v36 = v35;
    *(v33 + 32) = v34;
    *v35 = 0x7255657469766E69;
LABEL_11:
    v35[1] = v21;
    v35[2] = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v37 = *(*(v18 - 8) + 104);
    v37(v36, *MEMORY[0x277D22530], v18);
    *v32 = &type metadata for PerformPlaylistCollaborationRequestAction.PlaylistCollaborationRequest;
    v32[1] = v33;
    v19 = v3;
    v3 = v47;
    v22 = v49;
    v37(v32, *MEMORY[0x277D22538], v18);
    goto LABEL_12;
  }

LABEL_8:
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v25 + 8))(v48);
  v19(v22, v3);
  return v18;
}

uint64_t sub_216A76C50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216A76694(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

uint64_t sub_216A76C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v52 = v11 - v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  v55 = &v51 - v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v59 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v51 = v21 - v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v54 = &v51 - v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v56 = v27;
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v30 = *(v9 + 16);
  v62 = v7;
  v31 = v7;
  v32 = v30;
  v30(v17, a2, v31);
  v33 = v58;
  sub_21700D224();
  if (v33)
  {
    (*(v9 + 8))(a2, v62);
    return (*(v19 + 8))(a1, v59);
  }

  else
  {
    v58 = v19;
    (*(v56 + 32))(v60, v29, v57);
    v35 = v54;
    sub_21700CE04();
    v36 = v55;
    v32(v55, a2, v62);
    v37 = sub_216A76694(v35, v36);
    v39 = v38;
    v41 = v40;
    v55 = type metadata accessor for PerformPlaylistCollaborationRequestAction(0);
    v42 = v60 + *(v55 + 20);
    *v42 = v37;
    *(v42 + 8) = v39;
    *(v42 + 16) = v41 & 1;
    v43 = v51;
    sub_21700CE04();
    v44 = v52;
    v32(v52, a2, v62);
    ContentDescriptor.init(deserializing:using:)(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, SWORD2(v52), SBYTE6(v52), SHIBYTE(v52), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    (*(v9 + 8))(a2, v62);
    (*(v58 + 8))(a1, v59);
    return sub_2168ED900(v53, v60 + *(v55 + 24));
  }
}

uint64_t type metadata accessor for GoToTVShowViewModel(uint64_t a1)
{
  result = qword_280E3DF60;
  if (!qword_280E3DF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A771D0(uint64_t a1)
{
  result = sub_217007324();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObjectGraph(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216A77258()
{
  result = qword_27CAC5960;
  if (!qword_27CAC5960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB78F8, &qword_217017B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5960);
  }

  return result;
}

uint64_t sub_216A772BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1008, &unk_21703C988);
  v2[4] = swift_task_alloc();
  v3 = sub_21700B804();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_217007324();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A77410, 0, 0);
}

uint64_t sub_216A77410()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = xmmword_21701D820;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1010, &qword_21703C998);
  *(v4 + 32) = sub_21700B6A4();
  (*(v2 + 104))(v1, *MEMORY[0x277CD7CF8], v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = MEMORY[0x277D2AD78];
  v7 = sub_216A77BE8(&qword_27CAC1018, MEMORY[0x277D2AD78], MEMORY[0x277D2AD68]);
  v8 = sub_216A77BE8(&qword_27CAC1020, v6, MEMORY[0x277D2AD58]);
  v9 = sub_216A77BE8(&qword_27CAC1028, v6, MEMORY[0x277D2AD90]);
  *v5 = v0;
  v5[1] = sub_216A775D8;
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return MEMORY[0x282124810](v10, v4, v11, v12, v7, v8, v9);
}

uint64_t sub_216A775D8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_216A778E4;
  }

  else
  {
    v5 = sub_216A7776C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216A7776C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  sub_2170072E4();
  (*(v2 + 8))(v1, v3);
  v5 = sub_217007264();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21669987C(v0[4], &qword_27CAC1008, &unk_21703C988);
    sub_216A77C30();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v5 - 8) + 32))(v0[2], v0[4], v5);
  }

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216A778E4()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A77964()
{
  v1 = v0;
  v2 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217007254();
  if (!v6)
  {
    v5 = sub_217007214();
  }

  v7 = v5;
  v8 = v6;
  LOBYTE(v23[0]) = 1;
  v9 = *(v2 + 24);
  v10 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
  *v4 = 22;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 11) = v7;
  *(v4 + 12) = v8;
  *(v4 + 13) = 0;
  v4[112] = 1;
  v11 = type metadata accessor for TVShowDetailPageIntent(0);
  v24 = v11;
  v25 = sub_216A77BE8(&qword_27CAC1000, type metadata accessor for TVShowDetailPageIntent, &unk_21703D498);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_21695BC04(v4, boxed_opaque_existential_1);
  v13 = *(v11 + 20);
  v14 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v13, 1, 1, v14);
  sub_2168466D8(v23, &v20);
  v15 = *(v1 + *(type metadata accessor for GoToTVShowViewModel(0) + 20));
  v26 = 0u;
  v27 = 0u;
  LOWORD(v28) = 1;

  sub_216CCC700(&v20, v15, &v26, 0, 0, v16, v17, v18, v20, v21, v22, v23[0], v23[1], v23[2], v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29);
  sub_2168F3F20(v4);
  return sub_21669987C(v23, &qword_27CAB6AB8, &unk_217013E10);
}

uint64_t sub_216A77B4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2167AF644;

  return sub_216A772BC(a1);
}

uint64_t sub_216A77BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216A77C30()
{
  result = qword_27CAC1030;
  if (!qword_27CAC1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1030);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GoToTVShowViewModel.GoToTVShowError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216A77D34()
{
  result = qword_27CAC1038;
  if (!qword_27CAC1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC1038);
  }

  return result;
}

void sub_216A77DD0(uint64_t a1)
{
  sub_2166D7D5C(319);
  if (v1 <= 0x3F)
  {
    sub_216A7FAA4(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21680D428(319);
      if (v3 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
        if (v4 <= 0x3F)
        {
          sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A77F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1048, &qword_21703CBD0);
  OUTLINED_FUNCTION_1();
  v113 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v110 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1050, &qword_21703CBD8);
  OUTLINED_FUNCTION_1();
  v114 = v7;
  v115 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v112 = v9;
  v111 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v109 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(v95 - v14);
  v108 = v15;
  MEMORY[0x28223BE20](v16);
  v119 = v95 - v17;
  v18 = type metadata accessor for SuperHeroLockupView(0);
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SuperHeroLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v24 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1058, &qword_21703CBE0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v28 = v95 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1060, &qword_21703CBE8);
  OUTLINED_FUNCTION_1();
  v97 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1068, &qword_21703CBF0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1070, &qword_21703CBF8);
  OUTLINED_FUNCTION_1();
  v102 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1078, &qword_21703CC00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v118 = v39;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1080, &qword_21703CC08);
  OUTLINED_FUNCTION_1();
  v106 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v43 = *v1;
  sub_216DE9208();
  sub_216683A80(&v24[*(v21 + 24)], &v120, &qword_27CAB6DB0, &qword_217016C00);
  OUTLINED_FUNCTION_5_66();
  v100 = v43;
  if (v121)
  {
    sub_2166A0F18(&v120, &v122);
  }

  else
  {
    sub_216DE9208();
    sub_216683A80(&v24[*(v21 + 92)], &v122, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_5_66();
    if (v121)
    {
      sub_216699778(&v120, &qword_27CAB6DB0);
    }
  }

  v44 = v25[11];
  v45 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v28[v44], 1, 1, v45);
  OUTLINED_FUNCTION_2_90();
  sub_216A7E918(v2, v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_3_89(v47);
  v48 = v25[12];
  *&v28[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v49 = &v28[v25[13]];
  *v49 = swift_getKeyPath();
  v49[40] = 0;
  v50 = v124;
  v51 = v123;
  *v28 = v122;
  *(v28 + 1) = v51;
  *(v28 + 4) = v50;
  *(v28 + 5) = sub_216A7E8B4;
  *(v28 + 6) = v47;
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  sub_216E31728();
  sub_216699778(v28, &qword_27CAC1058);
  v52 = v99;
  v53 = v99 + *(v32 + 36);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v55 = sub_217008B34();
  v56 = __swift_project_value_buffer(v55, qword_280E73A88);
  sub_216A7E918(v56, v53, MEMORY[0x277CDFBC8]);
  *(v53 + *(v54 + 36)) = 0;
  v57 = OUTLINED_FUNCTION_13_39();
  v59 = v58(v57);
  v98 = v95;
  MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v60);
  v95[1] = v2;
  OUTLINED_FUNCTION_2_90();
  sub_216A7E918(v61, v20, v62);
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_3_89(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216A7E9D8();
  sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  sub_2166D7E84(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v64 = v101;
  sub_21700A394();

  sub_216699778(v52, &qword_27CAC1068);
  v65 = v111;
  *(&v123 + 1) = v111;
  v124 = sub_2166D7E84(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v122);
  sub_216CCB698();
  v66 = v104;
  v67 = (v118 + *(v104 + 36));
  sub_2167B7D58(&v122, (v67 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D7E84(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v67 = sub_217008CF4();
  v67[1] = v68;
  v69 = OUTLINED_FUNCTION_13_39();
  v70(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  v71 = v119;
  v72 = sub_216CCB698();
  v103 = v95;
  MEMORY[0x28223BE20](v72);
  v73 = v109;
  v74 = *(v109 + 16);
  v75 = OUTLINED_FUNCTION_16_38(&v125);
  v74(v75);
  LODWORD(v100) = (*(v73 + 88))(v64, v65) != *MEMORY[0x277D2A410];
  v76 = *(v73 + 8);
  v101 = (v73 + 8);
  v102 = v76;
  v76(v64, v65);
  *(&v123 + 1) = v65;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v122);
  (v74)(boxed_opaque_existential_1Tm, v71, v65);
  v78 = OUTLINED_FUNCTION_16_38(&v126);
  v74(v78);
  v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v80 = swift_allocObject();
  v81 = (*(v73 + 32))(v80 + v79, v64, v65);
  MEMORY[0x28223BE20](v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000, &unk_21701F600);
  *&v94 = sub_216A7EB58();
  *(&v94 + 1) = sub_216A7FEBC(&qword_280E2AE70, &qword_27CABA000, &unk_21701F600, sub_21686AFD8);
  v83 = v110;
  v84 = v118;
  sub_21700AA24();

  sub_216699778(&v122, &unk_27CABF7A0);
  *&v122 = v66;
  *(&v122 + 1) = v82;
  v123 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v112;
  v87 = v116;
  sub_21700A724();
  (*(v113 + 8))(v83, v87);
  *&v122 = v87;
  *(&v122 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v88 = v105;
  v89 = v115;
  sub_21700A8D4();
  (*(v114 + 8))(v86, v89);
  v102(v119, v65);
  sub_216699778(v84, &qword_27CAC1078);
  KeyPath = swift_getKeyPath();
  v91 = v117;
  (*(v106 + 32))(v117, v88, v107);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1088, &qword_21703CC48);
  v93 = v91 + *(result + 36);
  *v93 = KeyPath;
  *(v93 + 8) = 0;
  return result;
}