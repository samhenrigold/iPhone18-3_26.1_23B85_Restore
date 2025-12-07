uint64_t type metadata accessor for OnboardingState(uint64_t a1)
{
  result = qword_2810E1FE0;
  if (!qword_2810E1FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B64284C(uint64_t a1)
{
  sub_24B6428D8();
  if (v1 <= 0x3F)
  {
    sub_24B642930(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6428D8()
{
  if (!qword_2810E1D00)
  {
    v0 = sub_24B696908();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E1D00);
    }
  }
}

void sub_24B642930(uint64_t a1)
{
  if (!qword_2810E1D78[0])
  {
    type metadata accessor for OnboardingModality(255);
    v1 = sub_24B696938();
    if (!v2)
    {
      atomic_store(v1, qword_2810E1D78);
    }
  }
}

uint64_t sub_24B64299C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OnboardingArtwork(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_24B695648();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t type metadata accessor for OnboardingArtwork(uint64_t a1)
{
  result = qword_2810E1E78;
  if (!qword_2810E1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OnboardingModality(uint64_t a1)
{
  result = qword_2810E1DC0;
  if (!qword_2810E1DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B642C0C(uint64_t a1)
{
  type metadata accessor for OnboardingArtwork(319);
  if (v1 <= 0x3F)
  {
    sub_24B642DE8(319);
    if (v2 <= 0x3F)
    {
      sub_24B642F0C(319);
      if (v3 <= 0x3F)
      {
        sub_24B695648();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B642CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B696938();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B642D2C(uint64_t a1)
{
  sub_24B642CD8(319, &qword_2810E2020, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_24B642CD8(319, &qword_2810E2038, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B642DE8(uint64_t a1)
{
  if (!qword_2810E1FF0)
  {
    sub_24B695728();
    sub_24B642E7C(&qword_2810E2008, MEMORY[0x277D09E00], MEMORY[0x277D09E20]);
    v1 = sub_24B695798();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E1FF0);
    }
  }
}

uint64_t sub_24B642E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B642EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B642F0C(uint64_t a1)
{
  if (!qword_2810E1E48[0])
  {
    type metadata accessor for OnboardingArtwork(255);
    v1 = sub_24B696938();
    if (!v2)
    {
      atomic_store(v1, qword_2810E1E48);
    }
  }
}

uint64_t type metadata accessor for OnboardingDetail(uint64_t a1)
{
  result = qword_2810E1F30;
  if (!qword_2810E1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B642FB0(uint64_t a1)
{
  sub_24B6430C4(319, qword_2810E1E48, type metadata accessor for OnboardingArtwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24B642DE8(319);
    if (v2 <= 0x3F)
    {
      sub_24B6430C4(319, &qword_2810E1D10, type metadata accessor for OnboardingModality, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24B643128();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B6430C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B643128()
{
  if (!qword_2810E1D18[0])
  {
    v0 = sub_24B696938();
    if (!v1)
    {
      atomic_store(v0, qword_2810E1D18);
    }
  }
}

uint64_t sub_24B64318C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OnboardingArtwork(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v17 = sub_24B695648();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[10];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t OnboardingState.init(selectedModalityIdentifiers:presentedModality:isPresentingModalityPickerDismissalConfirmationAlert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = type metadata accessor for OnboardingState(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for OnboardingModality(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  result = sub_24B643408(a2, &a4[v9]);
  a4[*(v8 + 24)] = a3;
  return result;
}

uint64_t sub_24B643408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B643478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B643580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B643694()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B6436D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v9 = sub_24B695708();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B6437DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v7 = sub_24B695708();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B6438CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  type metadata accessor for OnboardingModality(255);
  type metadata accessor for TVOnboardingModalityCardButton(255, v2, v1, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v7 = MEMORY[0x277CE14C0];
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  sub_24B64E3F8();
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, v8, v1, v4);
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v6 = MEMORY[0x277CDF028];
  sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  sub_24B64E44C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  sub_24B64E530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  sub_24B6959A8();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24B64E750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D4B0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B64E810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618, v7);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4E8, &unk_24B697620);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4F0, &unk_24B69A260);
  sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260, v6);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6446D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v31 = *(*v5 + 80);
  v6 = (v31 + 32) & ~v31;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for OnboardingModality(0);
  v33 = *(*(v8 - 1) + 64);
  v30 = *(*(v8 - 1) + 80);
  sub_24B654DC8(*(v4 + v6), *(v4 + v6 + 8));

  v9 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v10 = sub_24B695708();
  (*(*(v10 - 8) + 8))(v4 + v6 + v9, v10);
  v34 = v4;
  v32 = (v6 + v7 + v30) & ~v30;
  v11 = v4 + v32;
  v12 = sub_24B695718();
  v13 = *(v12 - 8);
  v29 = *(v13 + 48);
  if (!v29(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = swift_checkMetadataState();
  v15 = *(v14 + 20);
  v16 = sub_24B695658();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v11 + v15, 1, v16))
  {
    (*(v17 + 8))(v11 + v15, v16);
  }

  v19 = v11 + v8[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24B695728();
    (*(*(v20 - 8) + 8))(v19, v20);
  }

  else
  {
  }

  v21 = v11 + v8[6];
  if (!(*(*(v14 - 8) + 48))(v21, 1, v14))
  {
    if (!v29(v21, 1, v12))
    {
      (*(v13 + 8))(v21, v12);
    }

    v22 = *(v14 + 20);
    if (!v18(v21 + v22, 1, v16))
    {
      (*(v17 + 8))(v21 + v22, v16);
    }
  }

  v23 = v11 + v8[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_24B695728();
    (*(*(v24 - 8) + 8))(v23, v24);
  }

  else
  {
  }

  v25 = v8[10];
  v26 = sub_24B695648();
  v27 = *(*(v26 - 8) + 8);
  v27(v11 + v25, v26);
  v27(v11 + v8[11], v26);

  return MEMORY[0x2821FE8E8](v34, v32 + v33, v31 | v30 | 7);
}

uint64_t sub_24B644BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695B18();
  *a1 = result;
  return result;
}

uint64_t sub_24B644C50()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B644C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;
  sub_24B654DC8(*(v4 + v7), *(v4 + v7 + 8));

  v10 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v11 = sub_24B695708();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return MEMORY[0x2821FE8E8](v4, v8 + 16, v6 | 7);
}

uint64_t sub_24B644E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v39 = *(*v5 + 80);
  v6 = (v39 + 32) & ~v39;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for OnboardingModality(0);
  v38 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v38) & ~v38;
  v36 = *(*(v8 - 1) + 64);
  v10 = sub_24B6956B8();
  v41 = *(v10 - 8);
  v42 = v10;
  v35 = *(v41 + 80);
  v40 = *(v41 + 64);
  v11 = (v4 + v6);
  sub_24B654DC8(*v11, v11[1]);

  v12 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v13 = sub_24B695708();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v43 = v4;
  v37 = v9;
  v14 = v4 + v9;
  v15 = sub_24B695718();
  v16 = *(v15 - 8);
  v34 = *(v16 + 48);
  if (!v34(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v33 = v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 + 20);
  v19 = sub_24B695658();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (!v21(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v22 = v14 + v8[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B695728();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else
  {
  }

  v24 = v14 + v8[6];
  if (!(*(*(v17 - 8) + 48))(v24, 1, v17))
  {
    if (!v34(v24, 1, v15))
    {
      (*(v33 + 8))(v24, v15);
    }

    v25 = *(v17 + 20);
    if (!v21(v24 + v25, 1, v19))
    {
      (*(v20 + 8))(v24 + v25, v19);
    }
  }

  v26 = v14 + v8[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_24B695728();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  else
  {
  }

  v28 = (((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 16) & ~v35;

  v29 = v8[10];
  v30 = sub_24B695648();
  v31 = *(*(v30 - 8) + 8);
  v31(v14 + v29, v30);
  v31(v14 + v8[11], v30);

  (*(v41 + 8))(v43 + v28, v42);

  return MEMORY[0x2821FE8E8](v43, v28 + v40, v39 | v38 | v35 | 7);
}

uint64_t sub_24B6453C0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B645410()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B645448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B645480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B695708();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B645570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v7 = sub_24B695708();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B64565C(void *a1)
{
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6459C8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B645A18()
{
  v1 = type metadata accessor for OnboardingModality(0);
  v25 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);

  v24 = (v25 + 64) & ~v25;
  v2 = v0 + v24;
  v3 = sub_24B695718();
  v4 = *(v3 - 8);
  v22 = *(v4 + 48);
  if (!v22(v0 + v24, 1, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  v20 = v4;
  v5 = type metadata accessor for OnboardingArtwork(0);
  v6 = *(v5 + 20);
  v7 = sub_24B695658();
  v8 = *(v7 - 8);
  v21 = *(v8 + 48);
  if (!v21(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v19 = v8;
  v9 = v2 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B695728();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  v11 = v2 + v1[6];
  if (!(*(*(v5 - 8) + 48))(v11, 1, v5))
  {
    if (!v22(v11, 1, v3))
    {
      (*(v20 + 8))(v11, v3);
    }

    v12 = *(v5 + 20);
    if (!v21(v11 + v12, 1, v7))
    {
      (*(v19 + 8))(v11 + v12, v7);
    }
  }

  v13 = v2 + v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24B695728();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  else
  {
  }

  v15 = v1[10];
  v16 = sub_24B695648();
  v17 = *(*(v16 - 8) + 8);
  v17(v2 + v15, v16);
  v17(v2 + v1[11], v16);

  return MEMORY[0x2821FE8E8](v0, v24 + v23, v25 | 7);
}

uint64_t sub_24B645E10(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OnboardingModality(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_24B645EBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OnboardingModality(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B645F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnboardingModalityCardButton(0, *(v4 + 16), *(v4 + 24), a4);
  v28 = *(*(v5 - 8) + 80);
  v26 = *(*(v5 - 8) + 64);
  v27 = (v28 + 32) & ~v28;
  v29 = v4;

  v6 = v4 + v27 + *(v5 + 48);
  v7 = sub_24B695718();
  v8 = *(v7 - 8);
  v25 = *(v8 + 48);
  if (!v25(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = type metadata accessor for OnboardingArtwork(0);
  v10 = *(v9 + 20);
  v11 = sub_24B695658();
  v12 = *(v11 - 8);
  v24 = *(v12 + 48);
  if (!v24(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = type metadata accessor for OnboardingModality(0);
  v14 = v6 + v13[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24B695728();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  else
  {
  }

  v16 = v6 + v13[6];
  if (!(*(*(v9 - 8) + 48))(v16, 1, v9))
  {
    if (!v25(v16, 1, v7))
    {
      (*(v8 + 8))(v16, v7);
    }

    v17 = *(v9 + 20);
    if (!v24(v16 + v17, 1, v11))
    {
      (*(v12 + 8))(v16 + v17, v11);
    }
  }

  v18 = v6 + v13[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24B695728();
    (*(*(v19 - 8) + 8))(v18, v19);
  }

  else
  {
  }

  v20 = v13[10];
  v21 = sub_24B695648();
  v22 = *(*(v21 - 8) + 8);
  v22(v6 + v20, v21);
  v22(v6 + v13[11], v21);

  return MEMORY[0x2821FE8E8](v29, v27 + v26, v28 | 7);
}

uint64_t sub_24B646384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695A58();
  *a1 = result;
  return result;
}

uint64_t sub_24B6463DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC88, &qword_24B698660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B646474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695A98();
  *a1 = result;
  return result;
}

uint64_t sub_24B6464C8(uint64_t *a1)
{
  sub_24B695DA8();
  sub_24B6959A8();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF0, &qword_24B698610);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF8, &qword_24B698618);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC00, &qword_24B698620);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC08, &qword_24B698628);
  sub_24B6959A8();
  sub_24B66B7C4(&qword_27F02DC10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = MEMORY[0x277CDFC88];
  sub_24B65C890(&qword_27F02DC18, &qword_27F02DBF0, &qword_24B698610, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC20, &qword_27F02DBF8, &qword_24B698618, v1);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC28, &qword_27F02DC00, &qword_24B698620, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC30, &qword_27F02DC08, &qword_24B698628, v1);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6468BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OnboardingModality(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_24B646968(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OnboardingModality(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B646A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695AB8();
  *a1 = result;
  return result;
}

uint64_t sub_24B646A64@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B695AF8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B646AC8(void *a1)
{
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  sub_24B6959A8();
  sub_24B695988();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964A8();
  sub_24B695CD8();
  swift_getWitnessTable();
  sub_24B66F8DC(&qword_27F02DF50, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B646E60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B695698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B646FEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B695698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24B6471B0()
{
  v1 = 0x546E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x7461507865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974696C61646F6DLL;
  }
}

uint64_t sub_24B647218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B676ED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B647248()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B647280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B695708();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B647370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v7 = sub_24B695708();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B64745C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, v2, v1, v3);
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v4 = MEMORY[0x277D83980];
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v6 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v4);
  sub_24B64E3F8();
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6965B8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B695958();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B64E810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618, v6);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6480C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695AD8();
  *a1 = result & 1;
  return result;
}

char *sub_24B648128@<X0>(char **a1@<X8>)
{
  result = sub_24B65F544();
  *a1 = result;
  return result;
}

uint64_t sub_24B648154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  v9 = sub_24B695938();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  v15 = (v4 + v7);
  sub_24B654DC8(*v15, v15[1]);
  v16 = v5[11];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v17 = sub_24B695708();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  (*(v10 + 8))(v4 + v12, v9);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v14 | 7);
}

uint64_t sub_24B648310()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B648348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;
  sub_24B654DC8(*(v4 + v7), *(v4 + v7 + 8));
  v10 = v5[11];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v11 = sub_24B695708();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return MEMORY[0x2821FE8E8](v4, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v6 | 7);
}

uint64_t sub_24B6484A0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for OnboardingModalityPickerState(0);
  *a2 = *(*(a1 + *(result + 28)) + 16) > 4uLL;
  return result;
}

uint64_t sub_24B6484E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v39 = *(*v5 + 80);
  v6 = (v39 + 33) & ~v39;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for OnboardingModality(0);
  v38 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v38) & ~v38;
  v36 = *(*(v8 - 1) + 64);
  v10 = sub_24B6956B8();
  v41 = *(v10 - 8);
  v42 = v10;
  v35 = *(v41 + 80);
  v40 = *(v41 + 64);
  v11 = (v4 + v6);
  sub_24B654DC8(*v11, v11[1]);
  v12 = v5[11];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v13 = sub_24B695708();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v37 = v9;
  v14 = v4 + v9;
  v15 = sub_24B695718();
  v16 = *(v15 - 8);
  v34 = *(v16 + 48);
  if (!v34(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v32 = v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 + 20);
  v19 = sub_24B695658();
  v20 = *(v19 - 8);
  v33 = *(v20 + 48);
  if (!v33(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v14 + v8[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24B695728();
    (*(*(v22 - 8) + 8))(v21, v22);
  }

  else
  {
  }

  v23 = v14 + v8[6];
  if (!(*(*(v17 - 8) + 48))(v23, 1, v17))
  {
    if (!v34(v23, 1, v15))
    {
      (*(v32 + 8))(v23, v15);
    }

    v24 = *(v17 + 20);
    if (!v33(v23 + v24, 1, v19))
    {
      (*(v20 + 8))(v23 + v24, v19);
    }
  }

  v25 = v14 + v8[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_24B695728();
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  else
  {
  }

  v27 = (((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 16) & ~v35;

  v28 = v8[10];
  v29 = sub_24B695648();
  v30 = *(*(v29 - 8) + 8);
  v30(v14 + v28, v29);
  v30(v14 + v8[11], v29);

  (*(v41 + 8))(v4 + v27, v42);

  return MEMORY[0x2821FE8E8](v4, v27 + v40, v39 | v38 | v35 | 7);
}

uint64_t sub_24B648A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v39 = *(*v5 + 80);
  v6 = (v39 + 32) & ~v39;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for OnboardingModality(0);
  v38 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v38) & ~v38;
  v36 = *(*(v8 - 1) + 64);
  v10 = sub_24B6956B8();
  v41 = *(v10 - 8);
  v42 = v10;
  v35 = *(v41 + 80);
  v40 = *(v41 + 64);
  v11 = (v4 + v6);
  sub_24B654DC8(*v11, v11[1]);
  v12 = v5[11];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v13 = sub_24B695708();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v37 = v9;
  v14 = v4 + v9;
  v15 = sub_24B695718();
  v16 = *(v15 - 8);
  v34 = *(v16 + 48);
  if (!v34(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v32 = v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 + 20);
  v19 = sub_24B695658();
  v20 = *(v19 - 8);
  v33 = *(v20 + 48);
  if (!v33(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v14 + v8[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24B695728();
    (*(*(v22 - 8) + 8))(v21, v22);
  }

  else
  {
  }

  v23 = v14 + v8[6];
  if (!(*(*(v17 - 8) + 48))(v23, 1, v17))
  {
    if (!v34(v23, 1, v15))
    {
      (*(v32 + 8))(v23, v15);
    }

    v24 = *(v17 + 20);
    if (!v33(v23 + v24, 1, v19))
    {
      (*(v20 + 8))(v23 + v24, v19);
    }
  }

  v25 = v14 + v8[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_24B695728();
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  else
  {
  }

  v27 = (((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 16) & ~v35;

  v28 = v8[10];
  v29 = sub_24B695648();
  v30 = *(*(v29 - 8) + 8);
  v30(v14 + v28, v29);
  v30(v14 + v8[11], v29);

  (*(v41 + 8))(v4 + v27, v42);

  return MEMORY[0x2821FE8E8](v4, v27 + v40, v39 | v38 | v35 | 7);
}

uint64_t sub_24B648FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B649028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B6490A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B649160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B649278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B64939C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B64954C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B64956C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27F02D2E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F02D2E0);
    }
  }
}

__n128 OnboardingModalityDetailLayout.bodyContentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 OnboardingModalityDetailLayout.init(headerAspectRatio:bodyContentMargins:titleToSubtitleSpacing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v6;
  *(a2 + 48) = a5;
  return result;
}

uint64_t sub_24B649614()
{
  v1 = *v0;
  sub_24B696AF8();
  MEMORY[0x24C246C70](v1);
  return sub_24B696B38();
}

uint64_t sub_24B64965C(uint64_t a1)
{
  v2 = *v1;
  sub_24B696AF8();
  MEMORY[0x24C246C70](v2);
  return sub_24B696B38();
}

unint64_t sub_24B6496A0()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24B6496F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B649EF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B649728(uint64_t a1)
{
  v2 = sub_24B649A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B649764(uint64_t a1)
{
  v2 = sub_24B649A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityDetailLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D2E8, &qword_24B697100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v10;
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B649A38();
  sub_24B696B58();
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v17 = 0;
  type metadata accessor for CGSize();
  sub_24B649DD0(&qword_27F02D2F8, MEMORY[0x277CBF288]);
  sub_24B696AB8();
  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    sub_24B649A8C();
    sub_24B696AB8();
    *&v15 = v11;
    v17 = 2;
    sub_24B649AE0();
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

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

unint64_t sub_24B649A38()
{
  result = qword_27F02D2F0;
  if (!qword_27F02D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D2F0);
  }

  return result;
}

unint64_t sub_24B649A8C()
{
  result = qword_27F02D300;
  if (!qword_27F02D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D300);
  }

  return result;
}

unint64_t sub_24B649AE0()
{
  result = qword_27F02D308;
  if (!qword_27F02D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D308);
  }

  return result;
}

uint64_t OnboardingModalityDetailLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D310, &qword_24B697108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B649A38();
  sub_24B696B48();
  if (!v2)
  {
    type metadata accessor for CGSize();
    v17 = 0;
    sub_24B649DD0(&qword_27F02D318, MEMORY[0x277CBF2A0]);
    sub_24B696A38();
    v9 = v15;
    v17 = 1;
    sub_24B649E14();
    sub_24B696A38();
    v13 = v16;
    v14 = v15;
    v17 = 2;
    sub_24B649E68();
    sub_24B696A38();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    v12 = v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_24B649DD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B649E14()
{
  result = qword_27F02D320;
  if (!qword_27F02D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D320);
  }

  return result;
}

unint64_t sub_24B649E68()
{
  result = qword_27F02D328;
  if (!qword_27F02D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D328);
  }

  return result;
}

uint64_t sub_24B649EF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B69B160 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B180 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B69B1A0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B696AD8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s17FitnessOnboarding0B20ModalityDetailLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
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

uint64_t sub_24B64A098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B64A0B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingModalityDetailLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityDetailLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B64A264()
{
  result = qword_27F02D330;
  if (!qword_27F02D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D330);
  }

  return result;
}

unint64_t sub_24B64A2BC()
{
  result = qword_27F02D338;
  if (!qword_27F02D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D338);
  }

  return result;
}

unint64_t sub_24B64A314()
{
  result = qword_27F02D340;
  if (!qword_27F02D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D340);
  }

  return result;
}

uint64_t sub_24B64A3E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OnboardingArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B64A4AC(a1, a3, &qword_27F02D348, &unk_24B697310);
  v5 = type metadata accessor for OnboardingArtwork(0);
  return sub_24B64A4AC(a2, a3 + *(v5 + 20), &qword_27F02D350, &unk_24B69A7E0);
}

uint64_t sub_24B64A4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B64A514()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_24B64A564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B64A658(uint64_t a1)
{
  v2 = sub_24B64A8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B64A694(uint64_t a1)
{
  v2 = sub_24B64A8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D358, &qword_24B697320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B64A8D0();
  sub_24B696B58();
  v8[15] = 0;
  sub_24B695718();
  sub_24B64BB8C(&qword_2810E2030, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_24B696A78();
  if (!v1)
  {
    type metadata accessor for OnboardingArtwork(0);
    v8[14] = 1;
    sub_24B695658();
    sub_24B64BB8C(&qword_2810E2048, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B696A78();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B64A8D0()
{
  result = qword_2810E1EA0[0];
  if (!qword_2810E1EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E1EA0);
  }

  return result;
}

uint64_t OnboardingArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D360, &qword_24B697328);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for OnboardingArtwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B64A8D0();
  sub_24B696B48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_24B695718();
  v26 = 0;
  sub_24B64BB8C(&qword_27F02D368, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_24B6969F8();
  sub_24B64A4AC(v16, v14, &qword_27F02D348, &unk_24B697310);
  sub_24B695658();
  v25 = 1;
  sub_24B64BB8C(&qword_27F02D370, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24B6969F8();
  (*(v15 + 8))(v10, v17);
  sub_24B64A4AC(v6, v14 + *(v20 + 20), &qword_27F02D350, &unk_24B69A7E0);
  sub_24B64ACD4(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B64AD38(v14);
}

uint64_t sub_24B64ACD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B64AD38(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OnboardingArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B695658();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24B695718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_24B64A3E0(v2, &v20 - v13, &qword_27F02D348, &unk_24B697310);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_24B696B18();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_24B696B18();
    sub_24B64BB8C(&qword_27F02D378, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_24B6967D8();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for OnboardingArtwork(0);
  sub_24B64A3E0(v2 + *(v15 + 20), v7, &qword_27F02D350, &unk_24B69A7E0);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_24B696B18();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_24B696B18();
  sub_24B64BB8C(&qword_27F02D380, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24B6967D8();
  return (*(v17 + 8))(v19, v16);
}

uint64_t OnboardingArtwork.hashValue.getter()
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)(v1);
  return sub_24B696B38();
}

uint64_t sub_24B64B1B0()
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)(v1);
  return sub_24B696B38();
}

uint64_t sub_24B64B1F4(uint64_t a1)
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)(v2);
  return sub_24B696B38();
}

BOOL _s17FitnessOnboarding0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B695658();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D398, &qword_24B698080);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_24B695718();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A0, &unk_24B697530);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = *(v17 + 56);
  v42 = a1;
  sub_24B64A3E0(a1, &v38 - v18, &qword_27F02D348, &unk_24B697310);
  v43 = a2;
  sub_24B64A3E0(a2, &v19[v20], &qword_27F02D348, &unk_24B697310);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_24B64A3E0(v19, v15, &qword_27F02D348, &unk_24B697310);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v19[v20], v9);
      sub_24B64BB8C(&qword_2810E2028, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_24B6967E8();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_24B64BB2C(v19, &qword_27F02D348, &unk_24B697310);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27F02D3A0;
    v23 = &unk_24B697530;
    v24 = v19;
LABEL_14:
    sub_24B64BB2C(v24, v22, v23);
    return 0;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_24B64BB2C(v19, &qword_27F02D348, &unk_24B697310);
LABEL_8:
  v27 = *(type metadata accessor for OnboardingArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_24B64A3E0(v42 + v27, v41, &qword_27F02D350, &unk_24B69A7E0);
  sub_24B64A3E0(v43 + v27, v28 + v29, &qword_27F02D350, &unk_24B69A7E0);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_24B64BB2C(v28, &qword_27F02D350, &unk_24B69A7E0);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_24B64A3E0(v28, v39, &qword_27F02D350, &unk_24B69A7E0);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27F02D398;
    v23 = &qword_24B698080;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_24B64BB8C(&qword_2810E2040, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_24B6967E8();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_24B64BB2C(v28, &qword_27F02D350, &unk_24B69A7E0);
  return (v36 & 1) != 0;
}

uint64_t getEnumTagSinglePayload for OnboardingArtwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingArtwork.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B64BA28()
{
  result = qword_27F02D390;
  if (!qword_27F02D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D390);
  }

  return result;
}

unint64_t sub_24B64BA80()
{
  result = qword_2810E1E90;
  if (!qword_2810E1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E1E90);
  }

  return result;
}

unint64_t sub_24B64BAD8()
{
  result = qword_2810E1E98;
  if (!qword_2810E1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E1E98);
  }

  return result;
}

uint64_t sub_24B64BB2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B64BB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B64BC0C(char a1)
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](a1 & 1);
  return sub_24B696B38();
}

uint64_t sub_24B64BC54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D598, "dU");
  v5 = sub_24B65C890(&qword_27F02D5A0, &qword_27F02D598, "dU", MEMORY[0x277D04410]);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B64BCF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D638, &qword_24B6977C0);
  sub_24B695828();
  return v1;
}

uint64_t sub_24B64BDB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D638, &qword_24B6977C0);
  sub_24B695848();
  return v1;
}

uint64_t sub_24B64BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, *(a1 + 16), *(a1 + 24), a4);
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695878();
  sub_24B695848();
  return v5;
}

uint64_t sub_24B64BED0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3D0, &qword_24B697598);
  sub_24B696428();
  return v3;
}

uint64_t sub_24B64BF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D640, &qword_24B6977C8);
  sub_24B696438();
  return v1;
}

uint64_t sub_24B64C004(uint64_t a1)
{
  sub_24B696AF8();
  sub_24B64BBE4(v3, *v1);
  return sub_24B696B38();
}

uint64_t sub_24B64C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  return sub_24B6956E8();
}

uint64_t sub_24B64C0CC(uint64_t a1)
{
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  sub_24B695708();
  sub_24B6956F8();
  return v2;
}

uint64_t sub_24B64C154(uint64_t a1)
{
  v3 = sub_24B695698();
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B696868();
  MEMORY[0x28223BE20](v5 - 8);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B696848();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v25 - v16;
  v25[1] = a1;
  v26 = v1;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B6966D8();
  sub_24B689A78(v17);
  sub_24B64BB2C(v10, &qword_27F02D658, &unk_24B6977E0);
  (*(v12 + 8))(v14, v11);
  v18 = type metadata accessor for OnboardingDetail(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_24B64BB2C(v17, &qword_27F02D668, &qword_24B6977F0);
LABEL_5:
    sub_24B6967F8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    goto LABEL_6;
  }

  v19 = *&v17[*(v18 + 28) + 8];

  sub_24B65B688(v17, type metadata accessor for OnboardingDetail);
  if (!v19)
  {
    goto LABEL_5;
  }

  sub_24B696838();
  sub_24B696828();
  sub_24B696818();

  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
LABEL_6:
  v23 = v21;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  return sub_24B696878();
}

uint64_t TVOnboardingModalityPickerView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24B695868();
  *(a7 + 24) = v20;
  *(a7 + 40) = v21;
  *(a7 + 56) = v22;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(0, a5, a6, v14);
  swift_getWitnessTable();
  sub_24B695868();
  *(a7 + 64) = v20;
  *(a7 + 72) = *(&v20 + 1);
  *(a7 + 80) = v21;
  *(a7 + 88) = sub_24B64BED0(0, 0);
  *(a7 + 96) = v15;
  *(a7 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a7 = sub_24B64C754;
  *(a7 + 8) = v17;
  *(a7 + 16) = 0;
  type metadata accessor for TVOnboardingModalityPickerView(0, a5, a6, v18);
  return sub_24B64C04C(a3, a4, a5);
}

uint64_t TVOnboardingModalityPickerView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v192 = a2;
  v190 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v188 = v3;
  v189 = v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v191 = v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v183 = v161 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3B0, &qword_24B697578);
  MEMORY[0x28223BE20](v8 - 8);
  v187 = v161 - v9;
  v10 = sub_24B695648();
  v185 = *(v10 - 8);
  v186 = v10;
  MEMORY[0x28223BE20](v10);
  v184 = v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B695698();
  MEMORY[0x28223BE20](v12 - 8);
  v182 = v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B696868();
  MEMORY[0x28223BE20](v14 - 8);
  v180 = v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  v177 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v196 = type metadata accessor for OnboardingModality(255);
  v181 = a1;
  v16 = *(a1 + 24);
  v198 = *(a1 + 16);
  v199 = v16;
  v18 = type metadata accessor for TVOnboardingModalityCardButton(255, v198, v16, v17);
  WitnessTable = swift_getWitnessTable();
  v211 = v18;
  v212 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v211 = v18;
  v212 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v174 = MEMORY[0x277D84F48];
  v23 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v211 = OpaqueTypeMetadata2;
  v178 = v23;
  v179 = v21;
  v212 = v21;
  v213 = OpaqueTypeConformance2;
  v214 = v23;
  v24 = v23;
  v173 = MEMORY[0x277CDEEB0];
  v25 = swift_getOpaqueTypeMetadata2();
  v211 = OpaqueTypeMetadata2;
  v212 = v21;
  v213 = OpaqueTypeConformance2;
  v214 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v211 = v25;
  v212 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v211 = v25;
  v212 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v195 = MEMORY[0x277CE14C0];
  v31 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  v211 = v30;
  v212 = v31;
  v194 = MEMORY[0x277D09D28];
  v32 = swift_getOpaqueTypeConformance2();
  v211 = v27;
  v212 = v28;
  v213 = v29;
  v214 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v34 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v211 = v27;
  v212 = v28;
  v213 = v29;
  v214 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v211 = v196;
  v212 = v33;
  v213 = v34;
  v214 = v35;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v36 = sub_24B6964E8();
  v175 = MEMORY[0x277CE1198];
  v37 = swift_getWitnessTable();
  v211 = v36;
  v212 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  v40 = sub_24B64E3F8();
  v211 = v177;
  v212 = &type metadata for OnboardingModalityPickerSectionType;
  v213 = v38;
  v214 = v39;
  v215 = v40;
  sub_24B696538();
  v211 = v36;
  v212 = v37;
  v232 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  v171 = MEMORY[0x277CE1138];
  swift_getWitnessTable();
  v41 = sub_24B695888();
  v42 = swift_getWitnessTable();
  v211 = v41;
  v212 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v211 = v41;
  v212 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v211 = v43;
  v212 = v44;
  swift_getOpaqueTypeMetadata2();
  v172 = sub_24B6959A8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, v198, v199, v46);
  v47 = sub_24B696938();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v177 = MEMORY[0x277CDF028];
  v51 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v52 = sub_24B64E44C();
  v211 = v49;
  v212 = MEMORY[0x277CE1350];
  v213 = v50;
  v214 = v51;
  v215 = MEMORY[0x277CE1340];
  v216 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v211 = v48;
  v212 = v53;
  v176 = MEMORY[0x277D09E70];
  v54 = swift_getOpaqueTypeConformance2();
  v231 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v211 = v45;
  v212 = v47;
  v213 = v54;
  v214 = v55;
  swift_getOpaqueTypeMetadata2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v58 = sub_24B64E530();
  v211 = v57;
  v212 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v211 = v56;
  v212 = v47;
  v213 = v59;
  v214 = v55;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v60 = sub_24B6959A8();
  v61 = swift_getWitnessTable();
  v62 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v229 = v61;
  v230 = v62;
  v63 = swift_getWitnessTable();
  v64 = sub_24B64E750();
  v211 = v60;
  v212 = &type metadata for TVServicesButtonStyle;
  v213 = v63;
  v214 = v64;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  v65 = sub_24B6959A8();
  v227 = swift_getWitnessTable();
  v228 = MEMORY[0x277CDFC60];
  v66 = swift_getWitnessTable();
  v211 = v65;
  v212 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v211 = v65;
  v212 = v66;
  v68 = swift_getOpaqueTypeConformance2();
  v211 = v67;
  v212 = v47;
  v213 = v68;
  v214 = v55;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  sub_24B696938();
  v225 = v199;
  v226 = MEMORY[0x277CE0880];
  v224 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  v69 = sub_24B6959A8();
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v222 = v70;
  v223 = v71;
  v72 = swift_getWitnessTable();
  v211 = v69;
  v73 = v178;
  v74 = v179;
  v212 = v179;
  v213 = v72;
  v214 = v178;
  v75 = swift_getOpaqueTypeMetadata2();
  v211 = v69;
  v212 = v74;
  v213 = v72;
  v214 = v73;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_24B64E7A4(&qword_27F02D4B0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v211 = v75;
  v212 = v74;
  v213 = v76;
  v214 = v77;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  v161[1] = sub_24B695C78();
  v78 = sub_24B6963E8();
  v163 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v193 = v161 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  v211 = v75;
  v212 = v74;
  v213 = v76;
  v214 = v77;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v220 = v81;
  v221 = v82;
  v161[0] = swift_getWitnessTable();
  v219 = v161[0];
  v83 = swift_getWitnessTable();
  v84 = sub_24B64E810();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  v86 = sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618, v195);
  v211 = v85;
  v212 = v86;
  v87 = swift_getOpaqueTypeConformance2();
  v211 = v78;
  v88 = v78;
  v161[5] = v80;
  v162 = v78;
  v212 = MEMORY[0x277D837D0];
  v213 = v80;
  v89 = MEMORY[0x277CE0BD8];
  v214 = MEMORY[0x277CE0BD8];
  v161[3] = v84;
  v161[4] = v83;
  v215 = v83;
  v216 = v84;
  v90 = v84;
  v217 = v87;
  v161[2] = v87;
  v218 = MEMORY[0x277CE0BC8];
  v91 = swift_getOpaqueTypeMetadata2();
  v178 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v195 = v161 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4E8, &unk_24B697620);
  v211 = v88;
  v212 = MEMORY[0x277D837D0];
  v213 = v80;
  v214 = v89;
  v215 = v83;
  v216 = v90;
  v217 = v87;
  v94 = MEMORY[0x277CE0BC8];
  v218 = MEMORY[0x277CE0BC8];
  v95 = swift_getOpaqueTypeConformance2();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4F0, &unk_24B69A260);
  v97 = sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260, v177);
  v211 = v96;
  v212 = v97;
  v98 = swift_getOpaqueTypeConformance2();
  v211 = v91;
  v212 = v93;
  v213 = v89;
  v99 = v196;
  v214 = v196;
  v215 = v95;
  v216 = v98;
  v217 = v94;
  v100 = swift_getOpaqueTypeMetadata2();
  v176 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v194 = v161 - v101;
  v179 = v91;
  v211 = v91;
  v172 = v93;
  v212 = v93;
  v213 = v89;
  v214 = v99;
  v168 = v95;
  v215 = v95;
  v164 = v98;
  v216 = v98;
  v217 = v94;
  v102 = swift_getOpaqueTypeConformance2();
  v211 = v100;
  v212 = v102;
  v103 = swift_getOpaqueTypeMetadata2();
  v174 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v171 = v161 - v104;
  v177 = v100;
  v211 = v100;
  v173 = v102;
  v212 = v102;
  v105 = swift_getOpaqueTypeConformance2();
  v175 = v103;
  v211 = v103;
  v167 = v105;
  v212 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v169 = *(v106 - 8);
  v170 = v106;
  v107 = MEMORY[0x28223BE20](v106);
  v165 = v161 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v166 = v161 - v109;
  v111 = v198;
  v110 = v199;
  v206 = v198;
  v207 = v199;
  v112 = v197;
  v208 = v197;
  sub_24B6963D8();
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v114 = [objc_opt_self() bundleForClass_];
  v115 = v181;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v209 = sub_24B696878();
  v210 = v116;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696738();

  v203 = v111;
  v204 = v110;
  v205 = v112;
  v200 = v111;
  v201 = v110;
  v202 = v112;
  v117 = v183;
  v118 = v162;
  v119 = v193;
  sub_24B696228();

  (*(v163 + 8))(v119, v118);
  v120 = v115;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v121 = swift_checkMetadataState();
  v122 = (*(*(v121 - 8) + 48))(v117, 1, v121);
  v196 = v121;
  if (v122 == 1)
  {
    sub_24B64BB2C(v117, &qword_27F02D3A8, &qword_24B697570);
    v124 = v185;
    v123 = v186;
    v125 = v187;
    (*(v185 + 56))(v187, 1, 1, v186);
    sub_24B695628();
    if ((*(v124 + 48))(v125, 1, v123) != 1)
    {
      sub_24B64BB2C(v125, &qword_27F02D3B0, &qword_24B697578);
    }
  }

  else
  {
    v127 = v185;
    v126 = v186;
    v128 = v117 + *(v121 + 40);
    v129 = v187;
    (*(v185 + 16))(v187, v128, v186);
    sub_24B65B688(v117, type metadata accessor for OnboardingModality);
    (*(v127 + 56))(v129, 0, 1, v126);
    (*(v127 + 32))(v184, v129, v126);
  }

  v193 = sub_24B695FD8();
  v186 = v131;
  v187 = v130;
  LODWORD(v185) = v132;
  v133 = v189;
  v134 = v190;
  v184 = *(v190 + 16);
  (v184)(v189, v112, v115);
  v183 = sub_24B6968D8();
  v135 = sub_24B6968C8();
  v136 = (*(v134 + 80) + 48) & ~*(v134 + 80);
  v137 = swift_allocObject();
  v138 = MEMORY[0x277D85700];
  v137[2] = v135;
  v137[3] = v138;
  v139 = v199;
  v137[4] = v198;
  v137[5] = v139;
  v190 = *(v134 + 32);
  (v190)(v137 + v136, v133, v120);
  (v184)(v133, v197, v120);
  v140 = sub_24B6968C8();
  v141 = swift_allocObject();
  v141[2] = v140;
  v142 = v198;
  v141[3] = MEMORY[0x277D85700];
  v141[4] = v142;
  v141[5] = v199;
  (v190)(v141 + v136, v133, v120);
  sub_24B6964F8();
  LODWORD(v190) = v213;
  sub_24B64BC54();
  swift_getKeyPath();
  v143 = v191;
  sub_24B696718();

  v189 = v161;
  MEMORY[0x28223BE20](v144);
  v145 = v179;
  LOBYTE(v142) = v185;
  v146 = v193;
  v147 = v187;
  v148 = v195;
  sub_24B696218();

  sub_24B6557C0(v146, v147, v142 & 1);

  sub_24B64BB2C(v143, &qword_27F02D3A8, &qword_24B697570);
  (*(v178 + 8))(v148, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D508, &qword_24B69A180);
  sub_24B6959E8();
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_24B697540;
  sub_24B6959D8();
  v150 = v171;
  v151 = v177;
  v152 = v194;
  MEMORY[0x24C246420](2, v149, v177, v173);

  (*(v176 + 8))(v152, v151);
  v153 = v165;
  v154 = v175;
  sub_24B695FF8();
  (*(v174 + 8))(v150, v154);
  v156 = v169;
  v155 = v170;
  v157 = *(v169 + 16);
  v158 = v166;
  v157(v166, v153, v170);
  v159 = *(v156 + 8);
  v159(v153, v155);
  v157(v192, v158, v155);
  return (v159)(v158, v155);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24B64E3F8()
{
  result = qword_27F02D408;
  if (!qword_27F02D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D408);
  }

  return result;
}

unint64_t sub_24B64E44C()
{
  result = qword_27F02D438;
  if (!qword_27F02D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
    sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
    sub_24B65C890(&qword_27F02D440, &qword_27F02D448, &qword_24B6975D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D438);
  }

  return result;
}

unint64_t sub_24B64E530()
{
  result = qword_27F02D460;
  if (!qword_27F02D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
    sub_24B64E5E8();
    sub_24B65C890(&qword_27F02D488, &qword_27F02D490, &qword_24B69A3D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D460);
  }

  return result;
}

unint64_t sub_24B64E5E8()
{
  result = qword_27F02D468;
  if (!qword_27F02D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D470, &qword_24B6975E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
    sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
    sub_24B64E44C();
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02D478, &qword_27F02D480, &unk_24B6975F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D468);
  }

  return result;
}

unint64_t sub_24B64E750()
{
  result = qword_27F02D4A8;
  if (!qword_27F02D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D4A8);
  }

  return result;
}

uint64_t sub_24B64E7A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B64E810()
{
  result = qword_27F02D4D0;
  if (!qword_27F02D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D4D0);
  }

  return result;
}

uint64_t sub_24B64E864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v198 = a1;
  v194 = a5;
  v200 = a2;
  v201 = a3;
  v197 = type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, a4);
  v185 = *(v197 - 8);
  v183 = *(v185 + 64);
  MEMORY[0x28223BE20](v197);
  v184 = &v156 - v7;
  v182 = sub_24B695D98();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for OnboardingModality(0);
  v158 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v159 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  v189 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v192 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v11 = type metadata accessor for TVOnboardingModalityCardButton(255, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  v203 = v11;
  v204 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v203 = v11;
  v204 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v191 = MEMORY[0x277D84F48];
  v16 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v203 = OpaqueTypeMetadata2;
  v204 = v14;
  v199 = v14;
  v205 = OpaqueTypeConformance2;
  v206 = v16;
  v17 = v16;
  v196 = v16;
  v190 = MEMORY[0x277CDEEB0];
  v18 = swift_getOpaqueTypeMetadata2();
  v203 = OpaqueTypeMetadata2;
  v204 = v14;
  v205 = OpaqueTypeConformance2;
  v206 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v203 = v18;
  v204 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v203 = v18;
  v204 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v188 = MEMORY[0x277CE14C0];
  v24 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  v203 = v23;
  v204 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v203 = v20;
  v204 = v21;
  v205 = v22;
  v206 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v203 = v20;
  v204 = v21;
  v205 = v22;
  v206 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v203 = v195;
  v204 = v26;
  v205 = v27;
  v206 = v28;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v29 = sub_24B6964E8();
  v192 = MEMORY[0x277CE1198];
  v30 = swift_getWitnessTable();
  v203 = v29;
  v204 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  v33 = sub_24B64E3F8();
  v203 = v189;
  v204 = &type metadata for OnboardingModalityPickerSectionType;
  v205 = v31;
  v206 = v32;
  v207 = v33;
  sub_24B696538();
  v203 = v29;
  v204 = v30;
  v209 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  swift_getWitnessTable();
  v34 = sub_24B695888();
  v35 = swift_getWitnessTable();
  v203 = v34;
  v204 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v203 = v34;
  v204 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v203 = v36;
  v204 = v37;
  swift_getOpaqueTypeMetadata2();
  v189 = sub_24B6959A8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, v200, v201, v39);
  v40 = sub_24B696938();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v44 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v45 = sub_24B64E44C();
  v203 = v42;
  v204 = MEMORY[0x277CE1350];
  v205 = v43;
  v206 = v44;
  v207 = MEMORY[0x277CE1340];
  v208 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v203 = v41;
  v204 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v202[13] = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v203 = v38;
  v204 = v40;
  v205 = v47;
  v206 = v48;
  swift_getOpaqueTypeMetadata2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v51 = sub_24B64E530();
  v203 = v50;
  v204 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v203 = v49;
  v204 = v40;
  v205 = v52;
  v206 = v48;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v53 = sub_24B6959A8();
  v54 = swift_getWitnessTable();
  v55 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v202[11] = v54;
  v202[12] = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_24B64E750();
  v203 = v53;
  v204 = &type metadata for TVServicesButtonStyle;
  v205 = v56;
  v206 = v57;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  v58 = sub_24B6959A8();
  v202[9] = swift_getWitnessTable();
  v202[10] = MEMORY[0x277CDFC60];
  v59 = swift_getWitnessTable();
  v203 = v58;
  v204 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v203 = v58;
  v204 = v59;
  v61 = swift_getOpaqueTypeConformance2();
  v203 = v60;
  v204 = v40;
  v205 = v61;
  v206 = v48;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v62 = sub_24B696688();
  v63 = swift_getWitnessTable();
  v167 = v62;
  v166 = v63;
  v64 = sub_24B6964E8();
  v169 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v168 = &v156 - v65;
  sub_24B6959A8();
  v66 = sub_24B696938();
  v202[7] = v201;
  v202[8] = MEMORY[0x277CE0880];
  v202[6] = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v165 = v66;
  v163 = v67;
  sub_24B695C48();
  v68 = sub_24B6959A8();
  v174 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v164 = &v156 - v69;
  v170 = v64;
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v162 = v70;
  v202[4] = v70;
  v202[5] = v71;
  v72 = swift_getWitnessTable();
  v73 = v199;
  v203 = v68;
  v204 = v199;
  v74 = v196;
  v205 = v72;
  v206 = v196;
  v75 = swift_getOpaqueTypeMetadata2();
  v178 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v175 = &v156 - v76;
  v176 = v68;
  v203 = v68;
  v204 = v73;
  v171 = v72;
  v205 = v72;
  v206 = v74;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_24B64E7A4(&qword_27F02D4B0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v193 = v75;
  v203 = v75;
  v204 = v73;
  v192 = v77;
  v205 = v77;
  v206 = v78;
  v191 = v78;
  v79 = swift_getOpaqueTypeMetadata2();
  v179 = *(v79 - 8);
  v80 = MEMORY[0x28223BE20](v79);
  v177 = &v156 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v172 = &v156 - v83;
  MEMORY[0x28223BE20](v82);
  v173 = &v156 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v161 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v160 = &v156 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  MEMORY[0x28223BE20](v87 - 8);
  v89 = &v156 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v93 = &v156 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  MEMORY[0x28223BE20](v94 - 8);
  v96 = &v156 - v95;
  v97 = type metadata accessor for OnboardingDetail(0);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = &v156 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v79;
  v189 = v85;
  v188 = sub_24B695C78();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v156 - v101;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B6966D8();
  sub_24B689A78(v96);
  sub_24B64BB2C(v89, &qword_27F02D658, &unk_24B6977E0);
  (*(v91 + 8))(v93, v90);
  if ((*(v98 + 48))(v96, 1, v97) != 1)
  {
    sub_24B65B620(v96, v100, type metadata accessor for OnboardingDetail);
    v112 = sub_24B695BE8();
    MEMORY[0x28223BE20](v112);
    v113 = v200;
    v114 = v201;
    *(&v156 - 4) = v200;
    *(&v156 - 3) = v114;
    v115 = v198;
    *(&v156 - 2) = v198;
    *(&v156 - 1) = v100;
    v116 = v168;
    v117 = sub_24B6964D8();
    MEMORY[0x28223BE20](v117);
    *(&v156 - 4) = v113;
    *(&v156 - 3) = v114;
    *(&v156 - 2) = v100;
    *(&v156 - 1) = v115;
    sub_24B696648();
    v118 = v164;
    v119 = v170;
    sub_24B696098();
    (*(v169 + 8))(v116, v119);
    v120 = v197;
    v169 = sub_24B64BDB0();
    v203 = v169;
    v204 = v121;
    v205 = v122;
    v206 = v123;
    v170 = v123;
    v124 = sub_24B64BF1C();
    v157 = v100;
    if (v125)
    {
      v126 = v125;
      v127 = v118;
LABEL_11:
      v202[0] = v124;
      v202[1] = v126;
      v132 = v180;
      sub_24B695D88();
      v133 = v175;
      v134 = v176;
      v135 = v199;
      MEMORY[0x24C246290](&v203, v202, v132, v176, v199, v171, v196);
      (*(v181 + 8))(v132, v182);

      (*(v174 + 8))(v127, v134);
      v203 = sub_24B64BCF4();
      v204 = v136;
      v137 = v185;
      v138 = v184;
      (*(v185 + 16))(v184, v115, v120);
      v139 = (*(v137 + 80) + 32) & ~*(v137 + 80);
      v140 = swift_allocObject();
      v141 = v201;
      *(v140 + 16) = v200;
      *(v140 + 24) = v141;
      (*(v137 + 32))(v140 + v139, v138, v120);
      v142 = v172;
      v103 = v193;
      v143 = v135;
      v105 = v192;
      v106 = v191;
      sub_24B6962C8();

      (*(v178 + 8))(v133, v103);
      v203 = v103;
      v204 = v143;
      v205 = v105;
      v206 = v106;
      v201 = swift_getOpaqueTypeConformance2();
      v144 = v179;
      v145 = *(v179 + 16);
      v146 = v173;
      v147 = v190;
      v145(v173, v142, v190);
      v148 = *(v144 + 8);
      v148(v142, v147);
      v149 = v177;
      v145(v177, v146, v147);
      v150 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
      v111 = v186;
      sub_24B67712C(v149, v147, v189, v201, v150);
      v148(v149, v147);
      v148(v146, v147);
      sub_24B65B688(v157, type metadata accessor for OnboardingDetail);
      v104 = v199;
      goto LABEL_12;
    }

    sub_24B64BC54();
    swift_getKeyPath();
    sub_24B696718();

    if (*(v202[0] + 16))
    {
      v128 = *(v202[0] + 40);

      if (*(v128 + 16))
      {
        v127 = v118;
        v129 = v159;
        sub_24B65B404(v128 + ((*(v158 + 80) + 32) & ~*(v158 + 80)), v159);

        v130 = (v129 + *(v195 + 32));
        v131 = *v130;
        v126 = v130[1];

        sub_24B65B688(v129, type metadata accessor for OnboardingModality);
        v124 = v131;
        goto LABEL_11;
      }

      v127 = v118;
    }

    else
    {
      v127 = v118;
    }

    v124 = 0;
    v126 = 0;
    goto LABEL_11;
  }

  sub_24B64BB2C(v96, &qword_27F02D668, &qword_24B6977F0);
  v102 = v160;
  sub_24B695908();
  v103 = v193;
  v104 = v199;
  v203 = v193;
  v204 = v199;
  v105 = v192;
  v106 = v191;
  v205 = v192;
  v206 = v191;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v109 = v186;
  v110 = v189;
  sub_24B677224(v102, v190, v189, v107, v108);
  (*(v161 + 8))(v102, v110);
  v111 = v109;
LABEL_12:
  v203 = v103;
  v204 = v104;
  v205 = v105;
  v206 = v106;
  v151 = swift_getOpaqueTypeConformance2();
  v152 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v202[2] = v151;
  v202[3] = v152;
  v153 = v188;
  swift_getWitnessTable();
  v154 = v187;
  (*(v187 + 16))(v194, v111, v153);
  return (*(v154 + 8))(v111, v153);
}

uint64_t sub_24B6502EC@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X2>, void (*a3)(void, void, void)@<X3>, uint64_t a4@<X8>)
{
  v176 = a2;
  v165 = a1;
  v169 = a4;
  v168 = sub_24B695D98();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v145 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, a2, a3, v8);
  v9 = sub_24B696938();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v13 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v14 = sub_24B64E44C();
  v189 = v11;
  v190 = MEMORY[0x277CE1350];
  v191 = v12;
  v192 = v13;
  v193 = MEMORY[0x277CE1340];
  v194 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v189 = v10;
  v190 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v188[10] = swift_getWitnessTable();
  v178 = MEMORY[0x277D84F48];
  WitnessTable = swift_getWitnessTable();
  v189 = v7;
  v190 = v9;
  v191 = v16;
  v192 = WitnessTable;
  v18 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v21 = sub_24B64E530();
  v189 = v20;
  v190 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v189 = v19;
  v190 = v9;
  v152 = v9;
  v191 = v22;
  v192 = v18;
  v23 = v18;
  v155 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v24 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v25 = sub_24B6959A8();
  v175 = MEMORY[0x277CE1138];
  v26 = swift_getWitnessTable();
  v27 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v188[8] = v26;
  v188[9] = v27;
  v146 = MEMORY[0x277CDFAD8];
  v28 = swift_getWitnessTable();
  v29 = sub_24B64E750();
  v189 = v25;
  v190 = &type metadata for TVServicesButtonStyle;
  v191 = v28;
  v192 = v29;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v30 = sub_24B6964E8();
  v164 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v159 = &v129 - v31;
  v153 = v30;
  v32 = sub_24B6959A8();
  v162 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v158 = &v129 - v33;
  v177 = MEMORY[0x277CE1198];
  v151 = swift_getWitnessTable();
  v188[6] = v151;
  v188[7] = MEMORY[0x277CDFC60];
  v34 = swift_getWitnessTable();
  v189 = v32;
  v190 = v34;
  v148 = v32;
  v35 = v34;
  v149 = v34;
  v180 = MEMORY[0x277D09E60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v156 = OpaqueTypeMetadata2;
  v163 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v150 = &v129 - v37;
  v189 = v32;
  v190 = v35;
  v154 = swift_getOpaqueTypeConformance2();
  v189 = OpaqueTypeMetadata2;
  v190 = v9;
  v191 = v154;
  v192 = v23;
  v160 = MEMORY[0x277CDE748];
  v161 = swift_getOpaqueTypeMetadata2();
  v179 = *(v161 - 8);
  v38 = MEMORY[0x28223BE20](v161);
  v147 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v157 = &v129 - v40;
  v174 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v173 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v41 = type metadata accessor for OnboardingModality(255);
  v43 = type metadata accessor for TVOnboardingModalityCardButton(255, v176, a3, v42);
  v44 = swift_getWitnessTable();
  v189 = v43;
  v190 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v189 = v43;
  v190 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], v178);
  v189 = v45;
  v190 = v46;
  v191 = v47;
  v192 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v189 = v45;
  v190 = v46;
  v191 = v47;
  v192 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v189 = v49;
  v190 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v189 = v49;
  v190 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v55 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, v24);
  v189 = v54;
  v190 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v189 = v51;
  v190 = v52;
  v191 = v53;
  v192 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v58 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v189 = v51;
  v190 = v52;
  v191 = v53;
  v192 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v189 = v41;
  v190 = v57;
  v191 = v58;
  v192 = v59;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v60 = sub_24B6964E8();
  v61 = swift_getWitnessTable();
  v189 = v60;
  v190 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v63 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  v64 = sub_24B64E3F8();
  v189 = v174;
  v190 = &type metadata for OnboardingModalityPickerSectionType;
  v191 = v62;
  v192 = v63;
  v193 = v64;
  sub_24B696538();
  v189 = v60;
  v190 = v61;
  v188[5] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v141 = sub_24B6964C8();
  v140 = swift_getWitnessTable();
  v65 = sub_24B695888();
  v142 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v138 = &v129 - v66;
  v67 = swift_getWitnessTable();
  v189 = v65;
  v190 = v67;
  v68 = v67;
  v134 = v67;
  v69 = swift_getOpaqueTypeMetadata2();
  v130 = v69;
  v137 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v131 = &v129 - v70;
  v189 = v65;
  v190 = v68;
  v136 = swift_getOpaqueTypeConformance2();
  v189 = v69;
  v190 = v136;
  v135 = swift_getOpaqueTypeMetadata2();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v129 - v71;
  v170 = sub_24B6959A8();
  v178 = *(v170 - 8);
  v72 = MEMORY[0x28223BE20](v170);
  v177 = (&v129 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72);
  v173 = &v129 - v74;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D678, &qword_24B697848);
  MEMORY[0x28223BE20](v143);
  v76 = &v129 - v75;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3B8, &unk_24B697580);
  v174 = *(v144 - 8);
  v77 = MEMORY[0x28223BE20](v144);
  v171 = &v129 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v172 = &v129 - v79;
  v80 = v176;
  v81 = v145;
  v132 = type metadata accessor for TVOnboardingModalityPickerView(0, v176, v145, v82);
  v83 = v165;
  sub_24B65192C(v132, v76);
  v175 = sub_24B65C890(&qword_27F02D680, &qword_27F02D678, &qword_24B697848, v175);
  sub_24B696008();
  sub_24B64BB2C(v76, &qword_27F02D678, &qword_24B697848);
  v84 = sub_24B695DE8();
  v182 = v80;
  v183 = v81;
  v184 = v83;
  v85 = v138;
  sub_24B6770A8(v84, sub_24B65B6E8, v181, v141, v140);
  v86 = v131;
  sub_24B6961A8();
  (*(v142 + 8))(v85, v65);
  v87 = v133;
  v88 = v130;
  v89 = v136;
  sub_24B696008();
  (*(v137 + 8))(v86, v88);
  sub_24B696648();
  v189 = v88;
  v190 = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v135;
  v92 = v177;
  sub_24B696248();
  (*(v139 + 8))(v87, v91);
  v188[3] = v90;
  v188[4] = MEMORY[0x277CDFC60];
  v93 = v170;
  v146 = swift_getWitnessTable();
  v94 = v178;
  v95 = *(v178 + 16);
  v142 = v178 + 16;
  v145 = v95;
  v95(v173, v92, v93);
  v96 = *(v94 + 8);
  v178 = v94 + 8;
  v176 = v96;
  v96(v92, v93);
  v97 = v159;
  v98 = v132;
  sub_24B653510(v132, v159);
  sub_24B696648();
  v99 = v153;
  v100 = v158;
  sub_24B696248();
  (*(v164 + 8))(v97, v99);
  v101 = v150;
  v102 = v148;
  sub_24B696008();
  (*(v162 + 8))(v100, v102);
  v189 = sub_24B64BE10(v98, v103, v104, v105);
  v190 = v106;
  LOBYTE(v191) = v107;
  LOBYTE(v188[0]) = 1;
  v108 = v166;
  sub_24B695D78();
  v109 = swift_checkMetadataState();
  v110 = v147;
  v111 = v156;
  v112 = v154;
  v113 = v155;
  MEMORY[0x24C246290](&v189, v188, v108, v156, v109, v154, v155);
  (*(v167 + 8))(v108, v168);

  (*(v163 + 8))(v101, v111);
  v189 = v111;
  v190 = v109;
  v191 = v112;
  v192 = v113;
  v168 = swift_getOpaqueTypeConformance2();
  v114 = v179;
  v115 = *(v179 + 16);
  v116 = v157;
  v117 = v161;
  v115(v157, v110, v161);
  v118 = *(v114 + 8);
  v179 = v114 + 8;
  v119 = v110;
  v118(v110, v117);
  v120 = v118;
  v121 = v171;
  v122 = v144;
  (*(v174 + 16))(v171, v172, v144);
  v189 = v121;
  v123 = v177;
  v124 = v173;
  v125 = v170;
  v145(v177, v173, v170);
  v190 = v123;
  v115(v119, v116, v117);
  v191 = v119;
  v188[0] = v122;
  v188[1] = v125;
  v188[2] = v117;
  v185 = v143;
  v186 = v175;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = v146;
  v187 = v168;
  sub_24B66D504(&v189, 3uLL, v188);
  v120(v116, v117);
  v126 = v176;
  v176(v124, v125);
  v127 = *(v174 + 8);
  v127(v172, v122);
  v120(v119, v117);
  v126(v177, v125);
  return (v127)(v171, v122);
}

uint64_t sub_24B65192C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B695B38();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D708, &qword_24B6979A8);
  return sub_24B655814(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_24B651990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v23 = a4;
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  type metadata accessor for OnboardingModality(255);
  type metadata accessor for TVOnboardingModalityCardButton(255, a2, a3, v6);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v7 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  v32 = sub_24B64E3F8();
  sub_24B696538();
  v28 = v7;
  v29 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v9 = sub_24B6964C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  sub_24B695B38();
  v24 = v20;
  v25 = v21;
  v26 = v22;
  sub_24B6964B8();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v23, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_24B651F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v65 = a1;
  v66 = a2;
  v71 = a5;
  v67 = a3;
  v64 = type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, a4);
  v69 = *(v64 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v64);
  v68 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v60 = v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v62 = type metadata accessor for OnboardingModality(255);
  v10 = type metadata accessor for TVOnboardingModalityCardButton(255, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  v74 = v10;
  v75 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v74 = v10;
  v75 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v74 = OpaqueTypeMetadata2;
  v75 = v13;
  v76 = OpaqueTypeConformance2;
  v77 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v75 = v13;
  v76 = OpaqueTypeConformance2;
  v77 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v74 = v16;
  v75 = v17;
  v18 = MEMORY[0x277D7EDA0];
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v74 = v16;
  v75 = v17;
  v61 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v23 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  v74 = v22;
  v75 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v74 = v19;
  v75 = v20;
  v76 = v21;
  v77 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v74 = v19;
  v75 = v20;
  v76 = v21;
  v77 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v74 = v62;
  v75 = v25;
  v76 = v26;
  v77 = v27;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v28 = sub_24B6964E8();
  v63 = v28;
  v62 = swift_getWitnessTable();
  v74 = v28;
  v75 = v62;
  v29 = swift_getOpaqueTypeMetadata2();
  v59 = v29;
  v30 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, MEMORY[0x277D83980]);
  v58 = v30;
  v57 = sub_24B64E3F8();
  v74 = v8;
  v75 = &type metadata for OnboardingModalityPickerSectionType;
  v76 = v29;
  v77 = v30;
  v78 = v57;
  v31 = sub_24B696538();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v56 = v55 - v36;
  v37 = v64;
  v38 = v65;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B68B38C(v74);
  v40 = v39;

  v73 = v40;
  v55[1] = swift_getKeyPath();
  v41 = v68;
  v42 = v69;
  v43 = v38;
  v44 = v37;
  (*(v69 + 16))(v68, v43, v37);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = v66;
  v48 = v67;
  *(v46 + 16) = v66;
  *(v46 + 24) = v48;
  (*(v42 + 32))(v46 + v45, v41, v44);
  v49 = swift_allocObject();
  v49[2] = v47;
  v49[3] = v48;
  v49[4] = sub_24B65BB68;
  v49[5] = v46;
  v74 = v63;
  v75 = v62;
  v54 = swift_getOpaqueTypeConformance2();
  sub_24B696528();
  v72 = v54;
  swift_getWitnessTable();
  v50 = *(v32 + 16);
  v51 = v56;
  v50(v56, v35, v31);
  v52 = *(v32 + 8);
  v52(v35, v31);
  v50(v71, v51, v31);
  return (v52)(v51, v31);
}

uint64_t sub_24B652640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v27 = a3;
  v28 = a6;
  v23[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v23[1] = type metadata accessor for OnboardingModality(255);
  type metadata accessor for TVOnboardingModalityCardButton(255, a4, a5, v9);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v31 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v29 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  v17 = *(a2 + 8);
  LOBYTE(v29) = *a2;
  WitnessTable = v17;
  v19 = type metadata accessor for TVOnboardingModalityPickerView(0, v24, v25, v18);
  sub_24B652AE0(&v29, v26, v19, v14);
  v20 = *(v11 + 16);
  v20(v16, v14, OpaqueTypeMetadata2);
  v21 = *(v11 + 8);
  v21(v14, OpaqueTypeMetadata2);
  v20(v28, v16, OpaqueTypeMetadata2);
  return (v21)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_24B652AE0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v75 = a1;
  v78 = a2;
  v84 = a4;
  v5 = sub_24B6967C8();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B696758();
  MEMORY[0x28223BE20](v7 - 8);
  v80 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B696778();
  MEMORY[0x28223BE20](v9 - 8);
  v77 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A0, &unk_24B697930);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = v64 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v70 = type metadata accessor for OnboardingModality(255);
  v71 = a3;
  v13 = *(a3 + 16);
  v73 = *(a3 + 24);
  v74 = v13;
  v15 = type metadata accessor for TVOnboardingModalityCardButton(255, v13, v73, v14);
  WitnessTable = swift_getWitnessTable();
  v93 = v15;
  v94 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v93 = v15;
  v94 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v93 = OpaqueTypeMetadata2;
  v94 = v18;
  v95 = OpaqueTypeConformance2;
  v96 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v94 = v18;
  v95 = OpaqueTypeConformance2;
  v96 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v93 = v21;
  v94 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v93 = v21;
  v94 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v27 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  v93 = v26;
  v94 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v93 = v23;
  v94 = v24;
  v95 = v25;
  v96 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v93 = v23;
  v94 = v24;
  v95 = v25;
  v96 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v93 = v70;
  v94 = v29;
  v95 = v30;
  v96 = v31;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v64[1] = swift_getWitnessTable();
  v32 = sub_24B6964E8();
  v67 = v32;
  v72 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v64[0] = v64 - v33;
  v68 = swift_getWitnessTable();
  v93 = v32;
  v94 = v68;
  v34 = swift_getOpaqueTypeMetadata2();
  v69 = *(v34 - 8);
  v70 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v65 = v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v66 = v64 - v37;
  v38 = sub_24B695698();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v76;
  LOBYTE(v29) = *v75;
  v43 = *(v75 + 1);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v44 = OnboardingModalityPickerSectionType.name(locale:)(v41, v29);
  v46 = v45;
  (*(v39 + 8))(v41, v38);
  sub_24B695BE8();
  v85 = v74;
  v86 = v73;
  v87 = v44;
  v88 = v46;
  v89 = v29;
  v47 = v78;
  v90 = v43;
  v91 = v78;
  v92 = v42;
  v48 = v64[0];
  sub_24B6964D8();
  sub_24B696768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A8, &unk_24B69A4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B697550;
  *(inited + 32) = 1701667182;
  v50 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v44;
  *(inited + 56) = v46;
  *(inited + 72) = v50;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v50;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  v93 = v47;
  *(inited + 144) = sub_24B696AC8();
  *(inited + 152) = v51;
  *(inited + 168) = v50;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v50;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B68B66C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6B0, &qword_24B697940);
  swift_arrayDestroy();
  sub_24B696748();
  v52 = MEMORY[0x277D84F90];
  sub_24B68B66C(MEMORY[0x277D84F90]);
  sub_24B68B66C(v52);
  v53 = v79;
  sub_24B696788();
  v54 = sub_24B696798();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = v81;
  sub_24B6967B8();
  v56 = v65;
  v57 = v67;
  sub_24B696038();
  (*(v82 + 8))(v55, v83);
  sub_24B64BB2C(v53, &qword_27F02D6A0, &unk_24B697930);
  (*(v72 + 8))(v48, v57);
  v59 = v69;
  v58 = v70;
  v60 = *(v69 + 16);
  v61 = v66;
  v60(v66, v56, v70);
  v62 = *(v59 + 8);
  v62(v56, v58);
  v60(v84, v61, v58);
  return (v62)(v61, v58);
}

uint64_t sub_24B653510@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, v3, v4, v5);
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v6 = sub_24B64E44C();
  v30 = MEMORY[0x277CE1340];
  v31 = v6;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  sub_24B64E530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v7 = sub_24B6959A8();
  v23 = swift_getWitnessTable();
  v24 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v26 = v7;
  v27 = &type metadata for TVServicesButtonStyle;
  v28 = swift_getWitnessTable();
  v29 = sub_24B64E750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v8 = sub_24B6964E8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v20 = v3;
  v21 = v4;
  v22 = v18;
  sub_24B695BD8();
  sub_24B6964D8();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(v19, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_24B653A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v51 = a4;
  v41 = a2;
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B6959A8();
  v46 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for OnboardingArtwork(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24B696938();
  v49 = *(v47 - 8);
  v19 = MEMORY[0x28223BE20](v47);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v41 - v22;
  sub_24B64A3E0(a1, v14, &qword_27F02D670, &qword_24B697840);
  v23 = (*(v16 + 48))(v14, 1, v15);
  v24 = MEMORY[0x277CE0880];
  if (v23 == 1)
  {
    sub_24B64BB2C(v14, &qword_27F02D670, &qword_24B697840);
    (*(v46 + 56))(v21, 1, 1, v8);
    v57 = v51;
    v58 = v24;
    swift_getWitnessTable();
  }

  else
  {
    sub_24B65B620(v14, v18, type metadata accessor for OnboardingArtwork);
    v25 = v51;
    v27 = type metadata accessor for TVOnboardingModalityPickerView(0, a3, v51, v26);
    v28 = sub_24B64C0CC(v27);
    v29 = a1 + *(type metadata accessor for OnboardingDetail(0) + 20);
    v30 = v43;
    v28(v18, v29);

    sub_24B6959B8();
    sub_24B695E28();
    v31 = v42;
    sub_24B696178();
    (*(v45 + 8))(v30, a3);
    sub_24B65B688(v18, type metadata accessor for OnboardingArtwork);
    v52 = v25;
    v53 = MEMORY[0x277CE0880];
    swift_getWitnessTable();
    v32 = v46;
    v33 = *(v46 + 16);
    v34 = v44;
    v33(v44, v31, v8);
    v35 = *(v32 + 8);
    v35(v31, v8);
    v33(v31, v34, v8);
    v35(v34, v8);
    v24 = MEMORY[0x277CE0880];
    (*(v32 + 32))(v21, v31, v8);
    (*(v32 + 56))(v21, 0, 1, v8);
  }

  v36 = v48;
  sub_24B6770C0(v21, v48);
  v37 = v49;
  v38 = *(v49 + 8);
  v39 = v47;
  v38(v21, v47);
  v55 = v51;
  v56 = v24;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v37 + 16))(v50, v36, v39);
  return (v38)(v36, v39);
}

uint64_t sub_24B654034(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2[1])
  {
    v7 = *a2;
    v8 = a2[1];
  }

  else
  {
    type metadata accessor for TVOnboardingModalityPickerView(0, a4, a5, a4);
    v7 = sub_24B64BF1C();
    v8 = v9;
  }

  type metadata accessor for TVOnboardingModalityPickerView(0, a4, a5, a4);

  return sub_24B64BF74(v7, v8);
}

uint64_t sub_24B6540C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618, MEMORY[0x277CE14C0]);
  return sub_24B6956C8();
}

uint64_t sub_24B654184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v80 = a5;
  v81 = a3;
  v86 = a2;
  v6 = type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, a4);
  v88 = *(v6 - 8);
  v68 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D648, &unk_24B6977D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_24B695698();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B696868();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4F0, &unk_24B69A260);
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4E8, &unk_24B697620);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v77 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v60 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v75 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v85 = &v60 - v25;
  v62 = v16;
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v74 = ObjCClassFromMetadata;
  v73 = objc_opt_self();
  v27 = [v73 bundleForClass_];
  v61 = a1;
  sub_24B64BC54();
  swift_getKeyPath();
  v67 = v13;
  sub_24B696718();

  v89 = sub_24B696878();
  v90 = v28;
  sub_24B6957E8();
  v71 = sub_24B695808();
  v29 = *(v71 - 8);
  v70 = *(v29 + 56);
  v72 = v29 + 56;
  v60 = v10;
  v70(v10, 0, 1, v71);
  v30 = v88;
  v69 = *(v88 + 16);
  v31 = v83;
  v32 = v6;
  v69(v83, a1, v6);
  v33 = *(v30 + 80);
  v63 = (v33 + 32) & ~v33;
  v34 = swift_allocObject();
  v35 = v81;
  *(v34 + 16) = v86;
  *(v34 + 24) = v35;
  v66 = *(v30 + 32);
  v88 = v30 + 32;
  v66(v34 + ((v33 + 32) & ~v33), v31, v32);
  v65 = sub_24B64E810();
  v36 = v82;
  sub_24B696488();
  v64 = sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260, MEMORY[0x277CDF028]);
  v37 = v84;
  sub_24B696028();
  v38 = *(v87 + 8);
  v87 += 8;
  v38(v36, v37);
  sub_24B6967F8();
  v39 = [v73 bundleForClass_];
  v40 = v61;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v89 = sub_24B696878();
  v90 = v41;
  v42 = v60;
  sub_24B6957F8();
  v70(v42, 0, 1, v71);
  v43 = v83;
  v69(v83, v40, v32);
  v44 = v63;
  v45 = swift_allocObject();
  v46 = v81;
  *(v45 + 16) = v86;
  *(v45 + 24) = v46;
  v66(v45 + v44, v43, v32);
  v47 = v82;
  sub_24B696488();
  v48 = v75;
  v49 = v84;
  sub_24B696028();
  v38(v47, v49);
  v51 = v78;
  v50 = v79;
  v52 = *(v78 + 16);
  v53 = v76;
  v54 = v85;
  v52(v76, v85, v79);
  v55 = v77;
  v52(v77, v48, v50);
  v56 = v80;
  v52(v80, v53, v50);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D650, &unk_24B69A270);
  v52(&v56[*(v57 + 48)], v55, v50);
  v58 = *(v51 + 8);
  v58(v48, v50);
  v58(v54, v50);
  v58(v55, v50);
  return (v58)(v53, v50);
}

uint64_t sub_24B6549E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, v9);
  sub_24B64BC54();
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v8, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B654AC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24B695698();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24B696868();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView(0, a1, a2, v10);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  result = sub_24B695FE8();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_24B654C90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  type metadata accessor for TVOnboardingModalityPickerView(0, a1, a2, v9);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v10 = type metadata accessor for OnboardingModality(0);
  LOBYTE(a2) = (*(*(v10 - 8) + 48))(v8, 1, v10) != 1;
  result = sub_24B64BB2C(v8, &qword_27F02D3A8, &qword_24B697570);
  *a3 = a2;
  return result;
}

uint64_t sub_24B654DD0@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  type metadata accessor for TVOnboardingModalityPickerView(0, v4, v5, a1);

  return sub_24B654C90(v4, v5, a2);
}

uint64_t sub_24B654E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView(0, a6, a7, v12);
  sub_24B64BC54();
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  sub_24B65B688(v11, type metadata accessor for OnboardingModalityPickerAction);
  v13 = sub_24B64BF1C();
  if (!v14)
  {
    v13 = sub_24B64BCF4();
  }

  return sub_24B64BD50(v13, v14);
}

uint64_t objectdestroy_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(*v5 + 64);
  swift_unknownObjectRelease();
  sub_24B654DC8(*(v4 + v7), *(v4 + v7 + 8));

  v9 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v10 = sub_24B695708();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_24B6550DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v7, v8, a4) - 8);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24B654E60(a1, a2, v10, v11, v12, v7, v8);
}

uint64_t sub_24B65517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v41 = a1;
  v42 = a5;
  v8 = type metadata accessor for OnboardingModality(0);
  v39 = *(v8 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVOnboardingModalityPickerView(0, a3, a4, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - v14;
  v15 = sub_24B695698();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_24B696868();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4F0, &unk_24B69A260);
  v18 = *(v17 - 8);
  v35 = v17;
  v36 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v43 = sub_24B696878();
  v44 = v23;
  v24 = v33;
  (*(v12 + 16))(v33, a2, v11);
  v25 = v34;
  sub_24B65B404(v41, v34);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = (v13 + *(v39 + 80) + v26) & ~*(v39 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v37;
  *(v28 + 24) = v29;
  (*(v12 + 32))(v28 + v26, v24, v11);
  sub_24B65B620(v25, v28 + v27, type metadata accessor for OnboardingModality);
  sub_24B64E810();
  sub_24B696498();
  sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260, MEMORY[0x277CDF028]);
  v30 = v35;
  sub_24B696028();
  return (*(v36 + 8))(v20, v30);
}

uint64_t sub_24B6555E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView(0, a3, a4, v10);
  sub_24B64BC54();
  sub_24B65B404(a2, v9);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v9, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B6556D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B695648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingModality(0);
  (*(v5 + 16))(v7, a1 + *(v8 + 44), v4);
  result = sub_24B695FD8();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_24B6557C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B655814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D710, &qword_24B6979B0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  *v14 = sub_24B695BE8();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D718, &qword_24B6979B8);
  sub_24B6559D0(a1, a2, a3, &v14[*(v15 + 44)]);
  sub_24B696658();
  sub_24B695918();
  v16 = &v14[*(v9 + 44)];
  v17 = v20[1];
  *v16 = v20[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v20[2];
  sub_24B64A3E0(v14, v12, &qword_27F02D710, &qword_24B6979B0);
  sub_24B64A3E0(v12, a4, &qword_27F02D710, &qword_24B6979B0);
  v18 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D720, &qword_24B6979C0) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_24B64BB2C(v14, &qword_27F02D710, &qword_24B6979B0);
  return sub_24B64BB2C(v12, &qword_27F02D710, &qword_24B6979B0);
}

uint64_t sub_24B6559D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v74 = a1;
  v83 = a4;
  v6 = sub_24B695698();
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B696868();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B696848();
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24B695F28();
  v12 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D728, &qword_24B6979C8);
  v86 = *(v15 - 8);
  v87 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v85 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v71 - v18;
  v73 = type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, v19);
  *&v100 = sub_24B64C154(v73);
  *(&v100 + 1) = v20;
  v80 = sub_24B64E810();
  v21 = sub_24B695FE8();
  v23 = v22;
  v25 = v24;
  sub_24B695F08();
  sub_24B695EC8();

  v79 = *MEMORY[0x277CE0A10];
  v77 = *(v12 + 104);
  v78 = v12 + 104;
  v26 = v14;
  v27 = v14;
  v28 = v84;
  v77(v27);
  v72 = v26;
  sub_24B695F58();

  v29 = *(v12 + 8);
  v75 = v12 + 8;
  v76 = v29;
  v29(v26, v28);
  v30 = sub_24B695FC8();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24B6557C0(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  LOBYTE(v100) = v34 & 1;
  LOBYTE(v95) = 0;
  v39 = sub_24B695D08();
  *&v100 = v30;
  *(&v100 + 1) = v32;
  LOBYTE(v101) = v34 & 1;
  *(&v101 + 1) = v36;
  *&v102 = KeyPath;
  BYTE8(v102) = 0;
  *&v103 = v38;
  *(&v103 + 1) = 2;
  LOBYTE(v104) = 0;
  HIDWORD(v104) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D730, &unk_24B697A30);
  sub_24B65C668();
  sub_24B696028();
  v93[2] = v102;
  v93[3] = v103;
  v94 = v104;
  v93[0] = v100;
  v93[1] = v101;
  sub_24B64BB2C(v93, &qword_27F02D730, &unk_24B697A30);
  sub_24B696838();
  sub_24B696828();
  *&v100 = 5;
  sub_24B696808();
  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  *&v100 = sub_24B696878();
  *(&v100 + 1) = v42;
  v43 = sub_24B695FE8();
  v45 = v44;
  LOBYTE(a2) = v46;
  sub_24B695EB8();
  v47 = v72;
  v48 = v84;
  (v77)(v72, v79, v84);
  sub_24B695F58();

  v76(v47, v48);
  v49 = sub_24B695FC8();
  v81 = v50;
  v82 = v49;
  v52 = v51;
  v84 = v53;

  sub_24B6557C0(v43, v45, a2 & 1);

  v54 = swift_getKeyPath();
  v80 = v54;
  v55 = swift_getKeyPath();
  LOBYTE(v43) = v52 & 1;
  LOBYTE(v100) = v52 & 1;
  LOBYTE(v95) = 0;
  v79 = sub_24B695D28();
  v56 = v85;
  v57 = *(v86 + 16);
  v58 = v87;
  v57(v85, v88, v87);
  v59 = v83;
  v57(v83, v56, v58);
  v60 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D790, &unk_24B697A60) + 48)];
  v62 = v81;
  v61 = v82;
  *&v95 = v82;
  *(&v95 + 1) = v81;
  LOBYTE(v96) = v43;
  *(&v96 + 1) = *v90;
  DWORD1(v96) = *&v90[3];
  v63 = v84;
  *(&v96 + 1) = v84;
  *&v97 = v54;
  BYTE8(v97) = 0;
  HIDWORD(v97) = *&v89[3];
  *(&v97 + 9) = *v89;
  *&v98 = v55;
  *(&v98 + 1) = 2;
  LOBYTE(v99) = 0;
  *(&v99 + 1) = v91;
  BYTE3(v99) = v92;
  LODWORD(v54) = v79;
  HIDWORD(v99) = v79;
  v64 = v95;
  v65 = v96;
  v66 = v97;
  v67 = v98;
  *(v60 + 8) = v99;
  *(v60 + 2) = v66;
  *(v60 + 3) = v67;
  *v60 = v64;
  *(v60 + 1) = v65;
  sub_24B64A3E0(&v95, &v100, &qword_27F02D730, &unk_24B697A30);
  v68 = v87;
  v69 = *(v86 + 8);
  v69(v88, v87);
  *&v100 = v61;
  *(&v100 + 1) = v62;
  LOBYTE(v101) = v43;
  *(&v101 + 1) = *v90;
  DWORD1(v101) = *&v90[3];
  *(&v101 + 1) = v63;
  *&v102 = v80;
  BYTE8(v102) = 0;
  *(&v102 + 9) = *v89;
  HIDWORD(v102) = *&v89[3];
  *&v103 = v55;
  *(&v103 + 1) = 2;
  LOBYTE(v104) = 0;
  BYTE3(v104) = v92;
  *(&v104 + 1) = v91;
  HIDWORD(v104) = v54;
  sub_24B64BB2C(&v100, &qword_27F02D730, &unk_24B697A30);
  return (v69)(v85, v68);
}

uint64_t sub_24B6561C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v89 = a6;
  v90 = a5;
  v92 = a4;
  v93 = a9;
  v91 = a3;
  v82 = a1;
  v85 = a7;
  v86 = a8;
  v88 = type metadata accessor for TVOnboardingModalityPickerView(0, a7, a8, a4);
  v84 = *(v88 - 8);
  v87 = *(v84 + 64);
  MEMORY[0x28223BE20](v88);
  v83 = &v74 - v12;
  v13 = type metadata accessor for OnboardingModality(255);
  v81 = v13;
  v15 = type metadata accessor for TVOnboardingModalityCardButton(255, a7, a8, v14);
  WitnessTable = swift_getWitnessTable();
  *&v106 = v15;
  *(&v106 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  *&v106 = v15;
  *(&v106 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  *&v106 = OpaqueTypeMetadata2;
  *(&v106 + 1) = v18;
  *&v107 = OpaqueTypeConformance2;
  *(&v107 + 1) = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  *&v106 = OpaqueTypeMetadata2;
  *(&v106 + 1) = v18;
  *&v107 = OpaqueTypeConformance2;
  *(&v107 + 1) = v20;
  v22 = swift_getOpaqueTypeConformance2();
  *&v106 = v21;
  *(&v106 + 1) = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  *&v106 = v21;
  *(&v106 + 1) = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v27 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  *&v106 = v26;
  *(&v106 + 1) = v27;
  v28 = swift_getOpaqueTypeConformance2();
  *&v106 = v23;
  *(&v106 + 1) = v24;
  *&v107 = v25;
  *(&v107 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v80 = v29;
  v30 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v76 = v30;
  *&v106 = v23;
  *(&v106 + 1) = v24;
  *&v107 = v25;
  *(&v107 + 1) = v28;
  v75 = swift_getOpaqueTypeConformance2();
  *&v106 = v13;
  *(&v106 + 1) = v29;
  *&v107 = v30;
  *(&v107 + 1) = v75;
  v31 = sub_24B695768();
  v78 = *(v31 - 8);
  v79 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v74 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v77 = &v74 - v34;
  v35 = sub_24B695F28();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v106 = v82;
  *(&v106 + 1) = a2;
  sub_24B64E810();

  v39 = sub_24B695FE8();
  v41 = v40;
  LOBYTE(v30) = v42;
  sub_24B695F68();
  (*(v36 + 104))(v38, *MEMORY[0x277CE0A10], v35);
  sub_24B695F58();

  (*(v36 + 8))(v38, v35);
  v43 = sub_24B695FC8();
  v45 = v44;
  LOBYTE(v24) = v46;

  sub_24B6557C0(v39, v41, v30 & 1);

  LODWORD(v106) = sub_24B695D18();
  v47 = sub_24B695FB8();
  v49 = v48;
  LOBYTE(v41) = v50;
  v52 = v51;
  sub_24B6557C0(v43, v45, v24 & 1);

  LOBYTE(v43) = sub_24B695E48();
  sub_24B695818();
  LOBYTE(v101[0]) = v41 & 1;
  LOBYTE(v96[0]) = 0;
  *&v102 = v47;
  *(&v102 + 1) = v49;
  LOBYTE(v103) = v41 & 1;
  *(&v103 + 1) = v106;
  DWORD1(v103) = *(&v106 + 3);
  *(&v103 + 1) = v52;
  LOBYTE(v104) = v43;
  *(&v104 + 1) = v97;
  DWORD1(v104) = *(&v97 + 3);
  *(&v104 + 1) = v53;
  *v105 = v54;
  *&v105[8] = v55;
  *&v105[16] = v56;
  v105[24] = 0;
  sub_24B6965F8();
  v58 = v83;
  v57 = v84;
  v59 = v88;
  (*(v84 + 16))(v83, v89, v88);
  v60 = v57;
  v61 = (*(v57 + 80) + 40) & ~*(v57 + 80);
  v62 = (v87 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v86;
  *(v63 + 2) = v85;
  *(v63 + 3) = v64;
  *(v63 + 4) = v90;
  (*(v60 + 32))(&v63[v61], v58, v59);
  v65 = &v63[v62];
  *v65 = v91 & 1;
  *(v65 + 1) = v92;
  swift_bridgeObjectRetain_n();
  v66 = v74;
  sub_24B695758();
  v67 = v79;
  v68 = swift_getWitnessTable();
  v70 = v77;
  v69 = v78;
  v71 = *(v78 + 16);
  v71(v77, v66, v67);
  v72 = *(v69 + 8);
  v72(v66, v67);
  v99 = v104;
  v100[0] = *v105;
  *(v100 + 9) = *&v105[9];
  v97 = v102;
  v98 = v103;
  v101[0] = &v97;
  v71(v66, v70, v67);
  v101[1] = v66;
  sub_24B64A3E0(&v102, &v106, &qword_27F02D3C8, &qword_24B697590);
  v96[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3C8, &qword_24B697590);
  v96[1] = v67;
  v94 = sub_24B65B7DC();
  v95 = v68;
  sub_24B66D504(v101, 2uLL, v96);
  sub_24B64BB2C(&v102, &qword_27F02D3C8, &qword_24B697590);
  v72(v70, v67);
  v72(v66, v67);
  v108 = v99;
  v109[0] = v100[0];
  *(v109 + 9) = *(v100 + 9);
  v106 = v97;
  v107 = v98;
  return sub_24B64BB2C(&v106, &qword_27F02D3C8, &qword_24B697590);
}

uint64_t sub_24B656A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v168 = a8;
  v169 = a1;
  v164 = a6;
  v165 = a2;
  v162 = a5;
  v166 = a4;
  v159 = a9;
  v160 = a3;
  v11 = sub_24B6967C8();
  v157 = *(v11 - 8);
  v158 = v11;
  MEMORY[0x28223BE20](v11);
  v156 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B696758();
  MEMORY[0x28223BE20](v13 - 8);
  v155 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_24B695618();
  MEMORY[0x28223BE20](v152);
  v151 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B696778();
  MEMORY[0x28223BE20](v16 - 8);
  v153 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A0, &unk_24B697930);
  MEMORY[0x28223BE20](v18 - 8);
  v154 = &v114 - v19;
  v163 = type metadata accessor for OnboardingModality(0);
  v124 = *(v163 - 8);
  v123 = *(v124 + 64);
  v20 = MEMORY[0x28223BE20](v163);
  v135 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = &v114 - v22;
  v170 = a7;
  v24 = type metadata accessor for TVOnboardingModalityPickerView(0, a7, a8, v23);
  v120 = *(v24 - 8);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v24);
  v119 = &v114 - v25;
  v27 = type metadata accessor for TVOnboardingModalityCardButton(0, a7, a8, v26);
  v131 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v129 = &v114 - v28;
  WitnessTable = swift_getWitnessTable();
  v173 = v27;
  v174 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v130 = &v114 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v133 = v27;
  v173 = v27;
  v174 = WitnessTable;
  v128 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v173 = OpaqueTypeMetadata2;
  v174 = v32;
  v175 = OpaqueTypeConformance2;
  v176 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v149 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v146 = &v114 - v36;
  v134 = OpaqueTypeMetadata2;
  v173 = OpaqueTypeMetadata2;
  v174 = v32;
  v126 = OpaqueTypeConformance2;
  v127 = v32;
  v175 = OpaqueTypeConformance2;
  v176 = v34;
  v125 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v173 = v35;
  v174 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v147 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v145 = &v114 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v150 = v35;
  v173 = v35;
  v174 = v37;
  v143 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v43 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  v173 = v42;
  v174 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v148 = v38;
  v173 = v38;
  v174 = v40;
  v144 = v40;
  v142 = v41;
  v175 = v41;
  v176 = v44;
  v139 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v140 = *(v45 - 8);
  v141 = v45;
  v46 = MEMORY[0x28223BE20](v45);
  v137 = &v114 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v138 = &v114 - v48;
  v167 = sub_24B6956B8();
  v49 = *(v167 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v167);
  v116 = &v114 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v114 - v52;
  MEMORY[0x24C245810](v165, v160);
  v54 = v24;
  v114 = v24;
  v55 = v166;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v56 = v169;
  v57 = (v169 + *(v163 + 32));
  v58 = *v57;
  v117 = v57[1];
  v118 = v58;
  v115 = sub_24B67731C(v58, v117, v173);

  v60 = v119;
  v59 = v120;
  (*(v120 + 16))(v119, v55, v54);
  v61 = v122;
  sub_24B65B404(v56, v122);
  v161 = v49;
  v62 = *(v49 + 16);
  v136 = v53;
  v62(&v114 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v167);
  v63 = v59;
  v64 = (*(v59 + 80) + 33) & ~*(v59 + 80);
  v65 = (v121 + *(v124 + 80) + v64) & ~*(v124 + 80);
  v66 = (v123 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (*(v49 + 80) + v66 + 16) & ~*(v49 + 80);
  v68 = swift_allocObject();
  v69 = v168;
  *(v68 + 16) = v170;
  *(v68 + 24) = v69;
  LOBYTE(v54) = v115;
  LODWORD(v160) = v115 & 1;
  *(v68 + 32) = v115 & 1;
  v70 = *(v63 + 32);
  v71 = v114;
  v70(v68 + v64, v60, v114);
  v72 = v164;
  sub_24B65B620(v61, v68 + v65, type metadata accessor for OnboardingModality);
  v73 = v68 + v66;
  v74 = v167;
  LODWORD(v124) = v162 & 1;
  *v73 = v162 & 1;
  *(v73 + 8) = v72;
  (*(v161 + 32))(v68 + v67, v116, v74);

  v75 = sub_24B64C0CC(v71);
  v77 = v76;
  if (v54)
  {
    v78 = 0;
  }

  else
  {
    sub_24B64BC54();
    swift_getKeyPath();
    sub_24B696718();

    v78 = v173;
  }

  v79 = v135;
  sub_24B65B404(v169, v135);
  v80 = v129;
  sub_24B66D6D4(sub_24B65BD30, v68, v75, v77, v78, v160, v79, v170, v129, v168);
  sub_24B695DE8();
  sub_24B696648();
  v81 = v130;
  v82 = v133;
  sub_24B696208();
  (*(v131 + 8))(v80, v82);
  v173 = sub_24B64BDB0();
  v174 = v83;
  v175 = v84;
  v176 = v85;
  v171 = v118;
  v172 = v117;

  v86 = v146;
  v87 = v134;
  sub_24B696258();

  (*(v132 + 8))(v81, v87);
  v88 = v165;
  sub_24B696768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A8, &unk_24B69A4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B697550;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v90 = v169;
  sub_24B695608();
  sub_24B65BD48(&qword_27F02D6B8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v91 = sub_24B696898();
  v92 = MEMORY[0x277D837D0];
  *(inited + 48) = v91;
  *(inited + 56) = v93;
  *(inited + 72) = v92;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  strcpy((inited + 96), "ModalityLockup");
  *(inited + 111) = -18;
  *(inited + 120) = v92;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  v173 = v88;
  *(inited + 144) = sub_24B696AC8();
  *(inited + 152) = v94;
  *(inited + 168) = v92;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v92;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B68B66C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6B0, &qword_24B697940);
  swift_arrayDestroy();
  sub_24B696748();
  v95 = MEMORY[0x277D84F90];
  sub_24B68B66C(MEMORY[0x277D84F90]);
  sub_24B68B66C(v95);
  v96 = v154;
  sub_24B696788();
  v97 = sub_24B696798();
  (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
  v98 = v156;
  sub_24B6967A8();
  v99 = v145;
  v100 = v150;
  sub_24B696038();
  (*(v157 + 8))(v98, v158);
  sub_24B64BB2C(v96, &qword_27F02D6A0, &unk_24B697930);
  v101 = (*(v149 + 8))(v86, v100);
  MEMORY[0x28223BE20](v101);
  v102 = v168;
  *(&v114 - 8) = v170;
  *(&v114 - 7) = v102;
  *(&v114 - 48) = v160;
  *(&v114 - 5) = v166;
  *(&v114 - 4) = v90;
  *(&v114 - 24) = v124;
  v104 = v136;
  v103 = v137;
  v112 = v164;
  v113 = v136;
  v105 = v148;
  sub_24B6960D8();
  (*(v147 + 8))(v99, v105);
  v107 = v140;
  v106 = v141;
  v108 = *(v140 + 16);
  v109 = v138;
  v108(v138, v103, v141);
  v110 = *(v107 + 8);
  v110(v103, v106);
  v108(v159, v109, v106);
  v110(v109, v106);
  return (*(v161 + 8))(v104, v167);
}

uint64_t sub_24B657A48(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TVOnboardingModalityPickerView(0, a7, a8, v17);
  sub_24B64BC54();
  if (a1)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  }

  else
  {
    swift_getKeyPath();
    sub_24B696718();

    if (v23[15])
    {
      return result;
    }

    sub_24B64BC54();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  }

  v20 = *(v18 + 48);
  v21 = *(v18 + 64);
  sub_24B65B404(a3, v16);
  v16[v20] = a4 & 1;
  v22 = sub_24B6956B8();
  (*(*(v22 - 8) + 16))(&v16[v21], a6, v22);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v16, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B657C20(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8, MEMORY[0x277CE14C0]);
  return sub_24B6956C8();
}

uint64_t sub_24B657CE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v118 = a6;
  v111 = a5;
  v105 = a4;
  v117 = a3;
  v110 = a9;
  v13 = sub_24B6956B8();
  v124 = *(v13 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for OnboardingModality(0);
  v115 = *(v15 - 8);
  v16 = *(v115 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v129 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a7;
  v112 = a8;
  v18 = type metadata accessor for TVOnboardingModalityPickerView(0, a7, a8, v17);
  v116 = *(v18 - 8);
  v113 = *(v116 + 64);
  MEMORY[0x28223BE20](v18);
  v114 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6C0, &qword_24B697970);
  v120 = *(v20 - 8);
  v121 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v107 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6C8, &qword_24B697978);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v109 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v108 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v101 = &v95 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D0, &qword_24B697980);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v106 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v126 = &v95 - v34;
  v102 = a1;
  v127 = a2;
  v122 = v25;
  v123 = v24;
  v119 = v14;
  v130 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v18;
  v128 = v13;
  if (a1)
  {
    v35 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v13;
    v37 = v16;
    v38 = v118;
    v39 = v18;
    v100 = 0x754265766F6D6552;
    v99 = 0xEB000000006E6F74;
    v40 = v114;
    v41 = v124;
LABEL_6:
    v48 = v116;
    v49 = v39;
    (*(v116 + 16))(v40, a2, v39);
    v50 = v129;
    sub_24B65B404(v117, v129);
    (*(v41 + 16))(v35, v38, v36);
    v51 = (*(v48 + 80) + 33) & ~*(v48 + 80);
    v52 = v41;
    v53 = (v113 + *(v115 + 80) + v51) & ~*(v115 + 80);
    v98 = v37 + 7;
    v96 = (v37 + 7 + v53) & 0xFFFFFFFFFFFFFFF8;
    v54 = v52;
    v97 = (*(v52 + 80) + v96 + 16) & ~*(v52 + 80);
    v55 = swift_allocObject();
    v44 = v125;
    v56 = v112;
    *(v55 + 16) = v125;
    *(v55 + 24) = v56;
    v102 &= 1u;
    *(v55 + 32) = v102;
    (*(v48 + 32))(v55 + v51, v40, v49);
    sub_24B65B620(v50, v55 + v53, type metadata accessor for OnboardingModality);
    v57 = v55 + v96;
    v105 &= 1u;
    *v57 = v105;
    v58 = v111;
    *(v57 + 8) = v111;
    (*(v54 + 32))(v55 + v97, v130, v128);
    MEMORY[0x28223BE20](v58);
    *(&v95 - 4) = v44;
    *(&v95 - 3) = v59;
    *(&v95 - 16) = v102;
    *(&v95 - 1) = v127;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D8, &qword_24B697988);
    sub_24B65C890(&qword_27F02D6E0, &qword_27F02D6D8, &qword_24B697988, MEMORY[0x277CDEFF0]);
    v60 = v103;
    sub_24B696468();
    v47 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_24B697540;
    v62 = v99;
    *(v61 + 32) = v100;
    *(v61 + 40) = v62;
    sub_24B65C890(&qword_27F02D6F0, &qword_27F02D6C0, &qword_24B697970, MEMORY[0x277CDF028]);
    v63 = v101;
    v64 = v121;
    sub_24B696028();
    a2 = v127;

    (*(v120 + 8))(v60, v64);
    v65 = v122;
    v66 = v123;
    v67 = v126;
    v68 = v63;
    v43 = v98;
    (*(v122 + 32))(v126, v68, v123);
    v69 = *(v65 + 56);
    v70 = v66;
    v46 = v116;
    v45 = v117;
    v69(v67, 0, 1, v70);
    goto LABEL_7;
  }

  v42 = v124;
  v36 = v13;
  v39 = v18;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  if ((v131 & 1) == 0)
  {
    v37 = v16;
    v100 = 0x6F74747542646441;
    v99 = 0xE90000000000006ELL;
    v41 = v42;
    v35 = v130;
    v38 = v118;
    v40 = v114;
    goto LABEL_6;
  }

  (*(v25 + 56))(v126, 1, 1, v24);
  v43 = v16 + 7;
  v105 &= 1u;
  v44 = v125;
  v46 = v116;
  v45 = v117;
  v47 = v115;
LABEL_7:
  v71 = v114;
  v72 = v104;
  (*(v46 + 16))(v114, a2, v104);
  sub_24B65B404(v45, v129);
  v73 = v124;
  (*(v124 + 16))(v130, v118, v128);
  v74 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v75 = (v113 + *(v47 + 80) + v74) & ~*(v47 + 80);
  v76 = (v43 + v75) & 0xFFFFFFFFFFFFFFF8;
  v77 = (*(v73 + 80) + v76 + 16) & ~*(v73 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = v44;
  v79 = v112;
  *(v78 + 24) = v112;
  (*(v46 + 32))(v78 + v74, v71, v72);
  sub_24B65B620(v129, v78 + v75, type metadata accessor for OnboardingModality);
  v80 = v78 + v76;
  *v80 = v105;
  *(v80 + 8) = v111;
  v81 = (*(v73 + 32))(v78 + v77, v130, v128);
  MEMORY[0x28223BE20](v81);
  *(&v95 - 4) = v125;
  *(&v95 - 3) = v79;
  *(&v95 - 2) = v127;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D8, &qword_24B697988);
  sub_24B65C890(&qword_27F02D6E0, &qword_27F02D6D8, &qword_24B697988, MEMORY[0x277CDEFF0]);
  v82 = v107;
  sub_24B696468();
  sub_24B65C890(&qword_27F02D6F0, &qword_27F02D6C0, &qword_24B697970, MEMORY[0x277CDF028]);
  v83 = v108;
  v84 = v121;
  sub_24B696028();
  (*(v120 + 8))(v82, v84);
  v85 = v126;
  v86 = v106;
  sub_24B64A3E0(v126, v106, &qword_27F02D6D0, &qword_24B697980);
  v88 = v122;
  v87 = v123;
  v89 = *(v122 + 16);
  v90 = v109;
  v89(v109, v83, v123);
  v91 = v110;
  sub_24B64A3E0(v86, v110, &qword_27F02D6D0, &qword_24B697980);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6F8, &qword_24B697998);
  v89((v91 + *(v92 + 48)), v90, v87);
  v93 = *(v88 + 8);
  v93(v83, v87);
  sub_24B64BB2C(v85, &qword_27F02D6D0, &qword_24B697980);
  v93(v90, v87);
  return sub_24B64BB2C(v86, &qword_27F02D6D0, &qword_24B697980);
}

uint64_t sub_24B658918(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView(0, a7, a8, v16);
  sub_24B64BC54();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  sub_24B65B404(a3, v15);
  v15[v18] = a4 & 1;
  v20 = sub_24B6956B8();
  (*(*(v20 - 8) + 16))(&v15[v19], a6, v20);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v15, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B658A84(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24B695698();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24B696868();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView(0, a3, a4, v10);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  return sub_24B696418();
}

uint64_t sub_24B658CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView(0, a6, a7, v15);
  sub_24B64BC54();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  sub_24B65B404(a2, v14);
  v14[v17] = a3 & 1;
  v19 = sub_24B6956B8();
  (*(*(v19 - 8) + 16))(&v14[v18], a5, v19);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v14, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B658E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B695698();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B696868();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, v9);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  return sub_24B696418();
}

uint64_t sub_24B658FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a1;
  v97 = a4;
  v96 = sub_24B6958B8();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v76 = a2;
  v77 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, a2, a3, v8);
  v9 = sub_24B696938();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v13 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v14 = sub_24B64E44C();
  v107 = v11;
  v108 = MEMORY[0x277CE1350];
  v109 = v12;
  v110 = v13;
  v111 = MEMORY[0x277CE1340];
  v112 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v10;
  v108 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v106[6] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v107 = v7;
  v108 = v9;
  v109 = v16;
  v110 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v20 = sub_24B64E530();
  v107 = v19;
  v108 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v107 = v18;
  v108 = v9;
  v109 = v21;
  v110 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v91 = sub_24B696688();
  v90 = swift_getWitnessTable();
  v22 = sub_24B6964C8();
  v93 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v89 = &v74 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v87 = v22;
  v24 = sub_24B6959A8();
  v83 = v24;
  v92 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v88 = &v74 - v25;
  v26 = swift_getWitnessTable();
  v84 = v26;
  v27 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v106[4] = v26;
  v106[5] = v27;
  v28 = swift_getWitnessTable();
  v82 = v28;
  v81 = sub_24B64E750();
  v107 = v24;
  v108 = &type metadata for TVServicesButtonStyle;
  v109 = v28;
  v110 = v81;
  v85 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = *(OpaqueTypeMetadata2 - 8);
  v29 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v80 = &v74 - v31;
  v78 = sub_24B695F28();
  v32 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24B695698();
  MEMORY[0x28223BE20](v35 - 8);
  v36 = sub_24B696868();
  MEMORY[0x28223BE20](v36 - 8);
  v37 = sub_24B696848();
  MEMORY[0x28223BE20](v37 - 8);
  sub_24B696838();
  sub_24B696828();
  type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, v38);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v39 = *(v107 + 16);

  v106[0] = v39;
  sub_24B696808();
  sub_24B696828();
  v107 = 5;
  sub_24B696808();
  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v107 = sub_24B696878();
  v108 = v42;
  sub_24B64E810();
  v43 = sub_24B695FE8();
  v45 = v44;
  LOBYTE(v18) = v46;
  sub_24B695F48();
  v47 = v78;
  (*(v32 + 104))(v34, *MEMORY[0x277CE0A10], v78);
  sub_24B695F58();

  (*(v32 + 8))(v34, v47);
  v48 = sub_24B695FC8();
  v50 = v49;
  LOBYTE(v19) = v51;

  sub_24B6557C0(v43, v45, v18 & 1);

  LODWORD(v107) = sub_24B695D28();
  v52 = sub_24B695FB8();
  v74 = v53;
  v75 = v54;
  v78 = v55;
  sub_24B6557C0(v48, v50, v19 & 1);

  v100 = v76;
  v101 = v77;
  v102 = v98;
  sub_24B695B48();
  v56 = v89;
  sub_24B6964B8();
  v57 = v95;
  v58 = v94;
  v59 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277CDF420], v96);
  v60 = v88;
  v61 = v87;
  sub_24B6960E8();
  (*(v57 + 8))(v58, v59);
  (*(v93 + 8))(v56, v61);
  v62 = v79;
  v63 = v83;
  v64 = v82;
  v65 = v81;
  sub_24B6960C8();
  (*(v92 + 8))(v60, v63);
  v107 = v63;
  v108 = &type metadata for TVServicesButtonStyle;
  v109 = v64;
  v110 = v65;
  v98 = swift_getOpaqueTypeConformance2();
  v66 = v99;
  v67 = *(v99 + 16);
  v68 = v80;
  v69 = v62;
  v70 = OpaqueTypeMetadata2;
  v67(v80, v62, OpaqueTypeMetadata2);
  v71 = *(v66 + 8);
  v99 = v66 + 8;
  v71(v62, v70);
  v72 = v74;
  v107 = v52;
  v108 = v74;
  LOBYTE(v63) = v75 & 1;
  LOBYTE(v109) = v75 & 1;
  v110 = v78;
  v106[0] = &v107;
  v67(v69, v68, v70);
  v106[1] = v69;
  sub_24B65B70C(v52, v72, v63);

  v105[0] = MEMORY[0x277CE0BD8];
  v105[1] = v70;
  v103 = MEMORY[0x277CE0BC8];
  v104 = v98;
  sub_24B66D504(v106, 2uLL, v105);
  sub_24B6557C0(v52, v72, v63);

  v71(v68, v70);
  v71(v69, v70);
  sub_24B6557C0(v107, v108, v109);
}

uint64_t sub_24B659CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a1;
  v138 = a4;
  v129 = sub_24B696318();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D458, &qword_24B6975E0);
  v130 = v7;
  MEMORY[0x28223BE20](v7);
  v124 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D450, &qword_24B6975D8);
  v132 = v9;
  v137 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v136 = &v105 - v10;
  v142 = a2;
  v143 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, a2, a3, v11);
  v12 = sub_24B696938();
  v133 = sub_24B64E530();
  v164 = v7;
  v165 = v133;
  v154 = MEMORY[0x277D09E70];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v164 = v9;
  v165 = v12;
  v108 = v12;
  v166 = OpaqueTypeConformance2;
  v167 = v14;
  v15 = v14;
  v114 = v14;
  v150 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v125 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v105 - v18;
  v140 = type metadata accessor for TVOnboardingModalityPickerView(0, a2, a3, v19);
  v152 = *(v140 - 8);
  v118 = *(v152 + 64);
  MEMORY[0x28223BE20](v140);
  v21 = &v105 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D420, &qword_24B6975C0);
  v139 = v22;
  v153 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v141 = &v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D418, &qword_24B6975B8);
  v105 = v24;
  v122 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v120 = &v105 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D410, &qword_24B6975B0);
  v113 = v26;
  v123 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v121 = &v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v146 = v28;
  v29 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0, MEMORY[0x277CDF028]);
  v148 = v29;
  v147 = sub_24B64E44C();
  v164 = v22;
  v165 = MEMORY[0x277CE1350];
  v166 = v28;
  v167 = v29;
  v168 = MEMORY[0x277CE1340];
  v169 = v147;
  v106 = swift_getOpaqueTypeConformance2();
  v164 = v24;
  v165 = v106;
  v115 = swift_getOpaqueTypeConformance2();
  v164 = v26;
  v165 = v12;
  v166 = v115;
  v167 = v15;
  v145 = swift_getOpaqueTypeMetadata2();
  v154 = *(v145 - 8);
  v30 = MEMORY[0x28223BE20](v145);
  v144 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v151 = &v105 - v32;
  v33 = v152;
  v119 = *(v152 + 16);
  v34 = v21;
  v107 = v21;
  v35 = v149;
  v36 = v140;
  v119(v21, v149, v140);
  v117 = *(v33 + 80);
  v37 = (v117 + 32) & ~v117;
  v112 = v37;
  v38 = swift_allocObject();
  v39 = v142;
  v40 = v143;
  *(v38 + 16) = v142;
  *(v38 + 24) = v40;
  v41 = *(v33 + 32);
  v152 = v33 + 32;
  v116 = v41;
  v41(v38 + v37, v34, v36);
  v158 = v39;
  v159 = v40;
  v160 = v35;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D688, &qword_24B697870);
  v110 = sub_24B65B750();
  v42 = v141;
  sub_24B696468();
  sub_24B6965D8();
  v43 = v120;
  v44 = v139;
  sub_24B6962E8();
  v45 = *(v153 + 8);
  v153 += 8;
  v109 = v45;
  v45(v42, v44);
  v46 = v121;
  v47 = v105;
  sub_24B696028();
  (*(v122 + 8))(v43, v47);
  v164 = sub_24B64BE10(v36, v48, v49, v50);
  v165 = v51;
  LOBYTE(v166) = v52;
  LOBYTE(v163[0]) = 0;
  v53 = swift_checkMetadataState();
  v54 = v144;
  v55 = v113;
  v56 = v115;
  v57 = v114;
  sub_24B696258();

  v123[1](v46, v55);
  v164 = v55;
  v165 = v53;
  v166 = v56;
  v167 = v57;
  v58 = v57;
  v122 = swift_getOpaqueTypeConformance2();
  v59 = v154;
  v60 = *(v154 + 16);
  v120 = (v154 + 16);
  v121 = v60;
  v61 = v145;
  (v60)(v151, v54, v145);
  v62 = *(v59 + 8);
  v154 = v59 + 8;
  v123 = v62;
  (v62)(v54, v61);
  v63 = v107;
  v64 = v149;
  v65 = v140;
  v119(v107, v149, v140);
  v66 = v112;
  v67 = swift_allocObject();
  v68 = v142;
  v69 = v143;
  *(v67 + 16) = v142;
  *(v67 + 24) = v69;
  v70 = v65;
  v116(v67 + v66, v63, v65);
  v155 = v68;
  v156 = v69;
  v157 = v64;
  v71 = v141;
  sub_24B696468();
  sub_24B6965D8();
  v72 = v124;
  v73 = v139;
  sub_24B6962E8();
  v109(v71, v73);
  (*(v127 + 104))(v126, *MEMORY[0x277CE0EE0], v129);
  v74 = sub_24B696388();
  KeyPath = swift_getKeyPath();
  v76 = &v72[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D470, &qword_24B6975E8) + 36)];
  v77 = v72;
  *v76 = KeyPath;
  v76[1] = v74;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v78 = *(v164 + 16);

  v79 = swift_getKeyPath();
  v80 = swift_allocObject();
  *(v80 + 16) = v78 == 0;
  v81 = v77;
  v82 = (v77 + *(v130 + 36));
  *v82 = v79;
  v82[1] = sub_24B65B924;
  v82[2] = v80;
  v83 = v136;
  sub_24B696028();
  sub_24B64BB2C(v81, &qword_27F02D458, &qword_24B6975E0);
  v164 = sub_24B64BE10(v70, v84, v85, v86);
  v165 = v87;
  LOBYTE(v166) = v88;
  LOBYTE(v163[0]) = 1;
  v89 = v125;
  v90 = v132;
  v91 = v131;
  sub_24B696258();

  (*(v137 + 8))(v83, v90);
  v164 = v90;
  v165 = v53;
  v166 = v91;
  v167 = v58;
  v153 = swift_getOpaqueTypeConformance2();
  v92 = v134;
  v93 = *(v134 + 16);
  v94 = v128;
  v95 = OpaqueTypeMetadata2;
  v93(v128, v89, OpaqueTypeMetadata2);
  v96 = *(v92 + 8);
  v97 = v89;
  v96(v89, v95);
  v98 = v144;
  v99 = v151;
  v100 = v145;
  (v121)(v144, v151, v145);
  v164 = v98;
  v93(v97, v94, v95);
  v165 = v97;
  v163[0] = v100;
  v163[1] = v95;
  v161 = v122;
  v162 = v153;
  sub_24B66D504(&v164, 2uLL, v163);
  v96(v94, v95);
  v101 = v100;
  v102 = v100;
  v103 = v123;
  (v123)(v99, v101);
  v96(v97, v95);
  return (v103)(v98, v102);
}

double sub_24B65ACB0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v8 = sub_24B695698();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24B696868();
  MEMORY[0x28223BE20](v9 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView(0, a1, a2, v12);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v13 = sub_24B695FA8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(a1) = sub_24B695E88();
  sub_24B695818();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_24B696648();
  sub_24B6959F8();
  *&v29[55] = v33;
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v19;
  *(a5 + 32) = a1;
  *(a5 + 40) = v21;
  *(a5 + 48) = v23;
  *(a5 + 56) = v25;
  *(a5 + 64) = v27;
  *(a5 + 72) = 0;
  *(a5 + 137) = *&v29[64];
  *(a5 + 153) = *&v29[80];
  *(a5 + 169) = *&v29[96];
  *(a5 + 184) = *(&v36 + 1);
  *(a5 + 73) = *v29;
  *(a5 + 89) = *&v29[16];
  result = *&v29[32];
  *(a5 + 105) = *&v29[32];
  *(a5 + 121) = *&v29[48];
  return result;
}

uint64_t sub_24B65AFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D428, &qword_24B6975C8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D448, &qword_24B6975D0);
  sub_24B695A08();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D420, &qword_24B6975C0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

void sub_24B65B0A0(uint64_t a1)
{
  sub_24B65B244(319);
  if (v2 <= 0x3F)
  {
    sub_24B65B2E8(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for TVOnboardingModalityPickerView.FocusableButton(255, *(a1 + 16), *(a1 + 24), v3);
      sub_24B696938();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_24B695878();
      if (v5 <= 0x3F)
      {
        sub_24B65B37C(319);
        if (v6 <= 0x3F)
        {
          type metadata accessor for OnboardingArtwork(255);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
          swift_getFunctionTypeMetadata2();
          sub_24B695708();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B65B244(uint64_t a1)
{
  if (!qword_27F02D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D598, "dU");
    sub_24B65C890(&qword_27F02D5A0, &qword_27F02D598, "dU", MEMORY[0x277D04410]);
    v1 = sub_24B6958D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F02D590);
    }
  }
}

void sub_24B65B2E8(uint64_t a1)
{
  if (!qword_27F02D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    sub_24B64E7A4(&qword_27F02D3D8, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    v1 = sub_24B695878();
    if (!v2)
    {
      atomic_store(v1, &qword_27F02D5A8);
    }
  }
}

void sub_24B65B37C(uint64_t a1)
{
  if (!qword_27F02D5B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    v1 = sub_24B696458();
    if (!v2)
    {
      atomic_store(v1, qword_27F02D5B0);
    }
  }
}

uint64_t sub_24B65B404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B65B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for OnboardingModality(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_24B6555E0(v4 + v8, v11, v5, v6);
}

uint64_t sub_24B65B584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_24B654034(a1, a2, v10, v7, v8);
}

uint64_t sub_24B65B620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B65B688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B65B70C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B65B750()
{
  result = qword_27F02D690;
  if (!qword_27F02D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D688, &qword_24B697870);
    sub_24B65B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D690);
  }

  return result;
}

unint64_t sub_24B65B7DC()
{
  result = qword_27F02D698;
  if (!qword_27F02D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D698);
  }

  return result;
}

uint64_t sub_24B65B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v6, v7, a4) - 8);
  return sub_24B6549E4(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

uint64_t sub_24B65B92C(uint64_t a1)
{
  v2 = sub_24B695A18();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B695A88();
}

uint64_t objectdestroy_38Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  sub_24B654DC8(*(v4 + v7), *(v4 + v7 + 8));

  v9 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v10 = sub_24B695708();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_24B65BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v8, v9, a3) - 8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_24B652640(a1, a2, v11, v8, v9, a4);
}

uint64_t sub_24B65BC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v8, v9, a3) - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = v4[4];
  v13 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 1);

  return sub_24B656A50(a1, a2, v12, v4 + v11, v14, v15, v8, v9, a4);
}

uint64_t sub_24B65BD48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_88Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for TVOnboardingModalityPickerView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v39 = *(*v5 + 80);
  v6 = (v39 + 33) & ~v39;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for OnboardingModality(0);
  v38 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v38) & ~v38;
  v36 = *(*(v8 - 1) + 64);
  v10 = sub_24B6956B8();
  v41 = *(v10 - 8);
  v42 = v10;
  v35 = *(v41 + 80);
  v40 = *(v41 + 64);
  v11 = (v4 + v6);
  sub_24B654DC8(*v11, v11[1]);

  v12 = v5[14];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v13 = sub_24B695708();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v43 = v4;
  v37 = v9;
  v14 = v4 + v9;
  v15 = sub_24B695718();
  v16 = *(v15 - 8);
  v34 = *(v16 + 48);
  if (!v34(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v33 = v16;
  v17 = swift_checkMetadataState();
  v18 = *(v17 + 20);
  v19 = sub_24B695658();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (!v21(v14 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v22 = v14 + v8[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B695728();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else
  {
  }

  v24 = v14 + v8[6];
  if (!(*(*(v17 - 8) + 48))(v24, 1, v17))
  {
    if (!v34(v24, 1, v15))
    {
      (*(v33 + 8))(v24, v15);
    }

    v25 = *(v17 + 20);
    if (!v21(v24 + v25, 1, v19))
    {
      (*(v20 + 8))(v24 + v25, v19);
    }
  }

  v26 = v14 + v8[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_24B695728();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  else
  {
  }

  v28 = (((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 16) & ~v35;

  v29 = v8[10];
  v30 = sub_24B695648();
  v31 = *(*(v30 - 8) + 8);
  v31(v14 + v29, v30);
  v31(v14 + v8[11], v30);

  (*(v41 + 8))(v43 + v28, v42);

  return MEMORY[0x2821FE8E8](v43, v28 + v40, v39 | v38 | v35 | 7);
}

uint64_t sub_24B65C37C(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for OnboardingModality(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_24B6956B8() - 8);
  v14 = *(v4 + 32);
  v15 = *(v4 + v12);
  v16 = *(v4 + v12 + 8);
  v17 = v4 + ((v12 + *(v13 + 80) + 16) & ~*(v13 + 80));

  return a1(v14, v4 + v8, v4 + v11, v15, v16, v17, v5, v6);
}

uint64_t sub_24B65C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TVOnboardingModalityPickerView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for OnboardingModality(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_24B6956B8() - 8);
  v14 = *(v4 + v12);
  v15 = *(v4 + v12 + 8);
  v16 = v4 + ((v12 + *(v13 + 80) + 16) & ~*(v13 + 80));

  return sub_24B658CB4(v4 + v8, v4 + v11, v14, v15, v16, v5, v6);
}

unint64_t sub_24B65C668()
{
  result = qword_27F02D738;
  if (!qword_27F02D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D730, &unk_24B697A30);
    sub_24B65C720();
    sub_24B65C890(&qword_27F02D780, &qword_27F02D788, &unk_24B698E50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D738);
  }

  return result;
}

unint64_t sub_24B65C720()
{
  result = qword_27F02D740;
  if (!qword_27F02D740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D748, &unk_24B69A590);
    sub_24B65C7D8();
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D740);
  }

  return result;
}

unint64_t sub_24B65C7D8()
{
  result = qword_27F02D750;
  if (!qword_27F02D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D758, &unk_24B697A40);
    sub_24B65C890(&qword_27F02D760, &qword_27F02D768, &unk_24B69A5A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D750);
  }

  return result;
}

uint64_t sub_24B65C890(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24B65C92C(uint64_t a1)
{
  v2 = sub_24B65CEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65C968(uint64_t a1)
{
  v2 = sub_24B65CEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B65C9A4()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_24B65C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B65CAA4(uint64_t a1)
{
  v2 = sub_24B65CE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65CAE0(uint64_t a1)
{
  v2 = sub_24B65CE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B65CB1C(uint64_t a1)
{
  v2 = sub_24B65CEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65CB58(uint64_t a1)
{
  v2 = sub_24B65CEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerSectionType.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D798, &qword_24B697A70);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D7A0, &qword_24B697A78);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D7A8, &qword_24B697A80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65CE50();
  sub_24B696B58();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B65CEA4();
    sub_24B696A58();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B65CEF8();
    sub_24B696A58();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B65CE50()
{
  result = qword_27F02D7B0;
  if (!qword_27F02D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7B0);
  }

  return result;
}

unint64_t sub_24B65CEA4()
{
  result = qword_27F02D7B8;
  if (!qword_27F02D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7B8);
  }

  return result;
}

unint64_t sub_24B65CEF8()
{
  result = qword_27F02D7C0;
  if (!qword_27F02D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7C0);
  }

  return result;
}

uint64_t sub_24B65CF68@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B65D024(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t OnboardingModalityPickerSectionType.hashValue.getter(char a1)
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](a1 & 1);
  return sub_24B696B38();
}

uint64_t sub_24B65D024(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D808, &qword_24B697DE8);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D810, &qword_24B697DF0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D818, &qword_24B697DF8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65CE50();
  v11 = v26;
  sub_24B696B48();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B696A48();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B67188C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B6969A8();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00);
    *v19 = &type metadata for OnboardingModalityPickerSectionType;
    sub_24B6969D8();
    sub_24B696998();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B65CEA4();
    sub_24B6969C8();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B65CEF8();
    sub_24B6969C8();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B65D4E4()
{
  result = qword_27F02D7C8;
  if (!qword_27F02D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7C8);
  }

  return result;
}

unint64_t sub_24B65D57C()
{
  result = qword_27F02D7D0;
  if (!qword_27F02D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7D0);
  }

  return result;
}

unint64_t sub_24B65D5D4()
{
  result = qword_27F02D7D8;
  if (!qword_27F02D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7D8);
  }

  return result;
}

unint64_t sub_24B65D62C()
{
  result = qword_27F02D7E0;
  if (!qword_27F02D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7E0);
  }

  return result;
}

unint64_t sub_24B65D684()
{
  result = qword_27F02D7E8;
  if (!qword_27F02D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7E8);
  }

  return result;
}

unint64_t sub_24B65D6DC()
{
  result = qword_27F02D7F0;
  if (!qword_27F02D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7F0);
  }

  return result;
}

unint64_t sub_24B65D734()
{
  result = qword_27F02D7F8;
  if (!qword_27F02D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7F8);
  }

  return result;
}

unint64_t sub_24B65D78C()
{
  result = qword_27F02D800;
  if (!qword_27F02D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D800);
  }

  return result;
}

unint64_t sub_24B65D858()
{
  result = qword_27F02D828;
  if (!qword_27F02D828)
  {
    sub_24B695DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D828);
  }

  return result;
}

FitnessOnboarding::OnboardingModalityPickerSection __swiftcall OnboardingModalityPickerSection.init(type:modalities:)(FitnessOnboarding::OnboardingModalityPickerSectionType type, Swift::OpaquePointer modalities)
{
  *v2 = type & 1;
  *(v2 + 8) = modalities;
  result.modalities = modalities;
  result.type = type;
  return result;
}

uint64_t sub_24B65D8D0()
{
  if (*v0)
  {
    return 0x6974696C61646F6DLL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24B65D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B65D9EC(uint64_t a1)
{
  v2 = sub_24B65DC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65DA28(uint64_t a1)
{
  v2 = sub_24B65DC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerSection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D830, &qword_24B697E70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65DC50();
  sub_24B696B58();
  v13 = v8;
  v12 = 0;
  sub_24B65DCA4();
  sub_24B696AB8();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D848, &qword_24B697E78);
    sub_24B65DF70(&qword_2810E1D08, &qword_2810E1DD0, &protocol conformance descriptor for OnboardingModality, MEMORY[0x277D83948]);
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B65DC50()
{
  result = qword_27F02D838;
  if (!qword_27F02D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D838);
  }

  return result;
}

unint64_t sub_24B65DCA4()
{
  result = qword_27F02D840;
  if (!qword_27F02D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D840);
  }

  return result;
}

uint64_t OnboardingModalityPickerSection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D850, &qword_24B697E80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65DC50();
  sub_24B696B48();
  if (!v2)
  {
    v14 = 0;
    sub_24B65DF1C();
    sub_24B696A38();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D848, &qword_24B697E78);
    v13 = 1;
    sub_24B65DF70(&qword_27F02D860, &qword_27F02D868, &protocol conformance descriptor for OnboardingModality, MEMORY[0x277D83978]);
    sub_24B696A38();
    (*(v6 + 8))(v8, v5);
    v11 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B65DF1C()
{
  result = qword_27F02D858;
  if (!qword_27F02D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D858);
  }

  return result;
}

uint64_t sub_24B65DF70(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D848, &qword_24B697E78);
    sub_24B65F4FC(a2, type metadata accessor for OnboardingModality, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OnboardingModalityPickerSection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24B65E060(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B65E060(uint64_t a1, uint64_t a2)
{
  v145 = type metadata accessor for OnboardingArtwork(0);
  v137 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v138 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v107 - v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D888, &unk_24B698070);
  MEMORY[0x28223BE20](v135);
  v144 = &v107 - v8;
  v140 = sub_24B695658();
  v9 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v133 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v122 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v107 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D398, &qword_24B698080);
  v15 = MEMORY[0x28223BE20](v139);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = &v107 - v18;
  v141 = sub_24B695718();
  v19 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v134 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v132 = &v107 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A0, &unk_24B697530);
  v27 = MEMORY[0x28223BE20](v26);
  v130 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v142 = &v107 - v29;
  v143 = type metadata accessor for OnboardingModality(0);
  v30 = MEMORY[0x28223BE20](v143);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v35 = &v107 - v34;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
LABEL_56:
    v103 = 0;
    return v103 & 1;
  }

  if (!v36 || a1 == a2)
  {
    v103 = 1;
    return v103 & 1;
  }

  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = a1 + v37;
  v39 = a2 + v37;
  v127 = (v19 + 48);
  v112 = (v19 + 32);
  v113 = (v19 + 8);
  v118 = (v9 + 48);
  v110 = (v9 + 32);
  v111 = (v9 + 8);
  v114 = *(v33 + 72);
  v109 = v17;
  v40 = v136;
  v108 = v24;
  v128 = v26;
  v41 = v142;
  v117 = v7;
  v129 = (v137 + 48);
  v125 = &v107 - v34;
  v126 = v32;
  while (1)
  {
    v137 = v36;
    v124 = v38;
    result = sub_24B65B404(v38, v35);
    if (!v137)
    {
      break;
    }

    sub_24B65B404(v39, v32);
    v43 = *(v128 + 48);
    sub_24B64A3E0(v35, v41, &qword_27F02D348, &unk_24B697310);
    sub_24B64A3E0(v32, v41 + v43, &qword_27F02D348, &unk_24B697310);
    v44 = *v127;
    v45 = v141;
    v46 = (*v127)(v41, 1, v141);
    v123 = v39;
    v116 = v44;
    if (v46 == 1)
    {
      if (v44(v41 + v43, 1, v45) != 1)
      {
        goto LABEL_43;
      }

      sub_24B64BB2C(v41, &qword_27F02D348, &unk_24B697310);
      v47 = v129;
      v35 = v125;
      v32 = v126;
    }

    else
    {
      v48 = v132;
      sub_24B64A3E0(v41, v132, &qword_27F02D348, &unk_24B697310);
      if (v44(v41 + v43, 1, v45) == 1)
      {
        (*v113)(v48, v45);
LABEL_43:
        sub_24B64BB2C(v41, &qword_27F02D3A0, &unk_24B697530);
        v35 = v125;
        v32 = v126;
        goto LABEL_55;
      }

      v49 = v134;
      (*v112)(v134, v41 + v43, v45);
      sub_24B65F4FC(&qword_2810E2028, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v50 = sub_24B6967E8();
      v51 = v48;
      v52 = *v113;
      (*v113)(v49, v45);
      v52(v51, v45);
      sub_24B64BB2C(v142, &qword_27F02D348, &unk_24B697310);
      v47 = v129;
      v35 = v125;
      v32 = v126;
      if ((v50 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v53 = *(v145 + 20);
    v54 = *(v139 + 48);
    sub_24B64A3E0(&v35[v53], v40, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B64A3E0(&v32[v53], v40 + v54, &qword_27F02D350, &unk_24B69A7E0);
    v55 = *v118;
    v56 = v140;
    v57 = (*v118)(v40, 1, v140);
    v115 = v55;
    if (v57 == 1)
    {
      if (v55(v40 + v54, 1, v56) != 1)
      {
        goto LABEL_45;
      }

      sub_24B64BB2C(v40, &qword_27F02D350, &unk_24B69A7E0);
    }

    else
    {
      v58 = v55;
      v59 = v131;
      sub_24B64A3E0(v40, v131, &qword_27F02D350, &unk_24B69A7E0);
      if (v58(v40 + v54, 1, v56) == 1)
      {
        (*v111)(v59, v56);
LABEL_45:
        v104 = &qword_27F02D398;
        v105 = &qword_24B698080;
        v106 = v40;
        goto LABEL_54;
      }

      v60 = v133;
      (*v110)(v133, v40 + v54, v56);
      sub_24B65F4FC(&qword_2810E2040, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v61 = sub_24B6967E8();
      v62 = v59;
      v63 = *v111;
      v64 = v60;
      v47 = v129;
      (*v111)(v64, v56);
      v65 = v62;
      v40 = v136;
      v63(v65, v56);
      sub_24B64BB2C(v40, &qword_27F02D350, &unk_24B69A7E0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v66 = sub_24B695728();
    v67 = MEMORY[0x277D09E00];
    v68 = sub_24B65F4FC(&qword_2810E2010, MEMORY[0x277D09E00], MEMORY[0x277D09E18]);
    v69 = sub_24B65F4FC(&qword_2810E2008, v67, MEMORY[0x277D09E20]);
    v70 = v143;
    if ((sub_24B695788() & 1) == 0)
    {
      goto LABEL_55;
    }

    v119 = v69;
    v120 = v68;
    v121 = v66;
    v71 = *(v70 + 24);
    v72 = *(v135 + 48);
    v73 = v144;
    sub_24B64A3E0(&v35[v71], v144, &qword_27F02D670, &qword_24B697840);
    sub_24B64A3E0(&v32[v71], v73 + v72, &qword_27F02D670, &qword_24B697840);
    v74 = *v47;
    if ((*v47)(v73, 1, v145) == 1)
    {
      if (v74(v144 + v72, 1, v145) != 1)
      {
        goto LABEL_47;
      }

LABEL_29:
      sub_24B64BB2C(v144, &qword_27F02D670, &qword_24B697840);
      v95 = v143;
      goto LABEL_32;
    }

    v75 = v145;
    v76 = v144;
    v77 = v117;
    sub_24B64A3E0(v144, v117, &qword_27F02D670, &qword_24B697840);
    if (v74(v76 + v72, 1, v75) == 1)
    {
      sub_24B65F438(v77, type metadata accessor for OnboardingArtwork);
LABEL_47:
      v104 = &qword_27F02D888;
      v105 = &unk_24B698070;
      goto LABEL_53;
    }

    v78 = v138;
    sub_24B65F498(v76 + v72, v138);
    v79 = *(v128 + 48);
    v80 = v77;
    v81 = v130;
    sub_24B64A3E0(v80, v130, &qword_27F02D348, &unk_24B697310);
    sub_24B64A3E0(v78, v81 + v79, &qword_27F02D348, &unk_24B697310);
    v82 = v141;
    v83 = v116;
    if (v116(v81, 1, v141) == 1)
    {
      v84 = v83(v81 + v79, 1, v82);
      v85 = v109;
      if (v84 != 1)
      {
        goto LABEL_49;
      }

      sub_24B64BB2C(v81, &qword_27F02D348, &unk_24B697310);
      v35 = v125;
      v32 = v126;
    }

    else
    {
      v86 = v108;
      sub_24B64A3E0(v81, v108, &qword_27F02D348, &unk_24B697310);
      v87 = v83(v81 + v79, 1, v82);
      v85 = v109;
      if (v87 == 1)
      {
        (*v113)(v86, v82);
LABEL_49:
        sub_24B64BB2C(v81, &qword_27F02D3A0, &unk_24B697530);
        v35 = v125;
        v32 = v126;
        goto LABEL_52;
      }

      v88 = v134;
      (*v112)(v134, v81 + v79, v82);
      sub_24B65F4FC(&qword_2810E2028, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      LODWORD(v116) = sub_24B6967E8();
      v89 = v86;
      v90 = *v113;
      (*v113)(v88, v82);
      v90(v89, v82);
      sub_24B64BB2C(v81, &qword_27F02D348, &unk_24B697310);
      v35 = v125;
      v32 = v126;
      if ((v116 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v91 = *(v145 + 20);
    v92 = *(v139 + 48);
    sub_24B64A3E0(&v117[v91], v85, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B64A3E0(v138 + v91, v85 + v92, &qword_27F02D350, &unk_24B69A7E0);
    v93 = v140;
    v94 = v115;
    if (v115(v85, 1, v140) == 1)
    {
      if (v94(v85 + v92, 1, v93) != 1)
      {
        goto LABEL_51;
      }

      sub_24B64BB2C(v85, &qword_27F02D350, &unk_24B69A7E0);
      sub_24B65F438(v138, type metadata accessor for OnboardingArtwork);
      sub_24B65F438(v117, type metadata accessor for OnboardingArtwork);
      v40 = v136;
      goto LABEL_29;
    }

    v96 = v122;
    sub_24B64A3E0(v85, v122, &qword_27F02D350, &unk_24B69A7E0);
    if (v94(v85 + v92, 1, v93) == 1)
    {
      (*v111)(v96, v93);
LABEL_51:
      sub_24B64BB2C(v85, &qword_27F02D398, &qword_24B698080);
LABEL_52:
      sub_24B65F438(v138, type metadata accessor for OnboardingArtwork);
      sub_24B65F438(v117, type metadata accessor for OnboardingArtwork);
      v104 = &qword_27F02D670;
      v105 = &qword_24B697840;
LABEL_53:
      v106 = v144;
LABEL_54:
      sub_24B64BB2C(v106, v104, v105);
LABEL_55:
      sub_24B65F438(v32, type metadata accessor for OnboardingModality);
      sub_24B65F438(v35, type metadata accessor for OnboardingModality);
      goto LABEL_56;
    }

    v97 = v133;
    (*v110)(v133, v85 + v92, v93);
    sub_24B65F4FC(&qword_2810E2040, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    LODWORD(v116) = sub_24B6967E8();
    v98 = *v111;
    (*v111)(v97, v93);
    v98(v96, v93);
    sub_24B64BB2C(v85, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B65F438(v138, type metadata accessor for OnboardingArtwork);
    sub_24B65F438(v117, type metadata accessor for OnboardingArtwork);
    sub_24B64BB2C(v144, &qword_27F02D670, &qword_24B697840);
    v40 = v136;
    v95 = v143;
    if ((v116 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_32:
    if ((sub_24B695788() & 1) == 0)
    {
      goto LABEL_55;
    }

    v99 = *(v95 + 32);
    v100 = *&v35[v99];
    v101 = *&v35[v99 + 8];
    v102 = &v32[v99];
    if ((v100 != *v102 || v101 != *(v102 + 1)) && (sub_24B696AD8() & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v35[*(v95 + 36)] != v32[*(v95 + 36)] || (sub_24B695638() & 1) == 0)
    {
      goto LABEL_55;
    }

    v103 = sub_24B695638();
    sub_24B65F438(v32, type metadata accessor for OnboardingModality);
    sub_24B65F438(v35, type metadata accessor for OnboardingModality);
    if (v103)
    {
      v36 = v137 - 1;
      v39 = v123 + v114;
      v38 = v124 + v114;
      v41 = v142;
      if (v137 != 1)
      {
        continue;
      }
    }

    return v103 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B65F268(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24B65E060(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B65F28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B65F2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B65F334()
{
  result = qword_27F02D870;
  if (!qword_27F02D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D870);
  }

  return result;
}

unint64_t sub_24B65F38C()
{
  result = qword_27F02D878;
  if (!qword_27F02D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D878);
  }

  return result;
}

unint64_t sub_24B65F3E4()
{
  result = qword_27F02D880;
  if (!qword_27F02D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D880);
  }

  return result;
}

uint64_t sub_24B65F438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B65F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B65F4FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24B65F544()
{
  v46 = type metadata accessor for OnboardingModality(0);
  v0 = *(v46 - 8);
  v1 = MEMORY[0x28223BE20](v46);
  v48 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v45 - v4;
  v6 = MEMORY[0x28223BE20](v3);
  v49 = &v45 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for OnboardingDetail(0);
  v20 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for OnboardingModalityPickerState(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  sub_24B6966D8();
  sub_24B689A78(v15);
  sub_24B64BB2C(v12, &qword_27F02D658, &unk_24B6977E0);
  v21 = *(v20 + 48);
  LOBYTE(v20) = v20 + 48;
  if (v21(v15, 1, v16) == 1)
  {
    sub_24B64BB2C(v15, &qword_27F02D668, &qword_24B6977F0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_24B65FC24(v15, v18, type metadata accessor for OnboardingDetail);
    v24 = *(v16 + 24);
    v45 = v18;
    v25 = *&v18[v24];
    v26 = *(v25 + 16);
    v47 = v26;
    if (v26)
    {
      v19 = 0;
      v27 = MEMORY[0x277D84F90];
      v28 = v46;
      do
      {
        v29 = *(v25 + 16);
        if (v19 >= v29)
        {
          __break(1u);
          goto LABEL_39;
        }

        v30 = (*(v0 + 80) + 32) & ~*(v0 + 80);
        v20 = *(v0 + 72);
        sub_24B65B404(v25 + v30 + v20 * v19, v9);
        if (v9[*(v28 + 36)])
        {
          sub_24B65FCAC(v9, type metadata accessor for OnboardingModality);
        }

        else
        {
          sub_24B65FC24(v9, v49, type metadata accessor for OnboardingModality);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B65FC8C(0, *(v27 + 16) + 1, 1);
            v27 = v50;
          }

          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_24B65FC8C((v32 > 1), v33 + 1, 1);
            v27 = v50;
          }

          *(v27 + 16) = v33 + 1;
          sub_24B65FC24(v49, v27 + v30 + v33 * v20, type metadata accessor for OnboardingModality);
          v28 = v46;
          v26 = v47;
        }

        ++v19;
      }

      while (v26 != v19);
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
      v28 = v46;
    }

    if (*(v27 + 16))
    {
      LOBYTE(v20) = 1;
      v23 = sub_24B660DB0(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = *(v23 + 2);
      v29 = *(v23 + 3);
      v26 = v19 + 1;
      if (v19 >= v29 >> 1)
      {
        goto LABEL_40;
      }

      while (1)
      {
        *(v23 + 2) = v26;
        v34 = &v23[16 * v19];
        v34[32] = v20;
        *(v34 + 5) = v27;
        v26 = v47;
        v49 = v23;
        if (!v47)
        {
          break;
        }

LABEL_18:
        v35 = 0;
        v27 = MEMORY[0x277D84F90];
        while (1)
        {
          v29 = *(v25 + 16);
          if (v35 >= v29)
          {
            break;
          }

          v19 = (*(v0 + 80) + 32) & ~*(v0 + 80);
          v36 = *(v0 + 72);
          sub_24B65B404(v25 + v19 + v36 * v35, v5);
          if (v5[*(v28 + 36)] == 1)
          {
            sub_24B65FC24(v5, v48, type metadata accessor for OnboardingModality);
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v50 = v27;
            if ((v37 & 1) == 0)
            {
              sub_24B65FC8C(0, *(v27 + 16) + 1, 1);
              v27 = v50;
            }

            v20 = *(v27 + 16);
            v38 = *(v27 + 24);
            if (v20 >= v38 >> 1)
            {
              sub_24B65FC8C((v38 > 1), v20 + 1, 1);
              v27 = v50;
            }

            *(v27 + 16) = v20 + 1;
            sub_24B65FC24(v48, v27 + v19 + v20 * v36, type metadata accessor for OnboardingModality);
            v26 = v47;
          }

          else
          {
            sub_24B65FCAC(v5, type metadata accessor for OnboardingModality);
          }

          if (v26 == ++v35)
          {
            goto LABEL_30;
          }
        }

LABEL_39:
        __break(1u);
LABEL_40:
        v23 = sub_24B660DB0((v29 > 1), v26, 1, v23);
      }
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
      v49 = MEMORY[0x277D84F90];
      if (v26)
      {
        goto LABEL_18;
      }
    }

    v27 = MEMORY[0x277D84F90];
LABEL_30:
    if (*(v27 + 16))
    {
      v22 = v49;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v45;
      if ((v39 & 1) == 0)
      {
        v22 = sub_24B660DB0(0, *(v22 + 2) + 1, 1, v22);
      }

      v42 = *(v22 + 2);
      v41 = *(v22 + 3);
      if (v42 >= v41 >> 1)
      {
        v22 = sub_24B660DB0((v41 > 1), v42 + 1, 1, v22);
      }

      sub_24B65FCAC(v40, type metadata accessor for OnboardingDetail);
      *(v22 + 2) = v42 + 1;
      v43 = &v22[16 * v42];
      v43[32] = 0;
      *(v43 + 5) = v27;
    }

    else
    {
      sub_24B65FCAC(v45, type metadata accessor for OnboardingDetail);

      return v49;
    }
  }

  return v22;
}

uint64_t sub_24B65FC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_24B65FC8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B65FD0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24B65FCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24B65FD0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D890, &qword_24B698088);
  v10 = *(type metadata accessor for OnboardingModality(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for OnboardingModality(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_24B65FF20(void *a1, double a2, double a3)
{
  v5 = a1;
  OnboardingHostingController.preferredContentSize.setter(a2, a3);
}

id OnboardingHostingController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*OnboardingHostingController.preferredContentSize.modify(uint64_t *a1))(objc_super **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 16) = xmmword_24B698090;
  *(v3 + 32) = v1;
  return sub_24B660040;
}

void sub_24B660040(objc_super **a1)
{
  v1 = *a1;
  receiver = (*a1)[1].receiver;
  super_class = (*a1)[1].super_class;
  v4 = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v1->receiver = v4;
  v1->super_class = ObjectType;
  [(objc_super *)v1 setPreferredContentSize:*&receiver, *&super_class];

  free(v1);
}

uint64_t OnboardingHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_24B660454(a1);
  (*(*(*(v2 + class metadata base offset for OnboardingHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t OnboardingHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_24B660454(a1);
  (*(*(*(v3 + class metadata base offset for OnboardingHostingController) - 8) + 8))(a1);
  return v4;
}

void *OnboardingHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for OnboardingHostingController);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_24B695C28();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id OnboardingHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OnboardingHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id OnboardingHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B660454(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_24B695C38();
}

__n128 OnboardingModalityDetailFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t OnboardingModalityDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D918, ":S");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v9 = *v3;
  v8 = v3[1];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
  v11 = v10[16];
  v12 = v10[20];
  v13 = &v7[v10[24]];
  sub_24B660884();
  sub_24B696968();
  v14 = *MEMORY[0x277D043F0];
  v15 = sub_24B696708();
  (*(*(v15 - 8) + 104))(&v7[v11], v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v8;
  *v13 = &unk_24B6980D8;
  *(v13 + 1) = v16;
  v17 = v25;

  sub_24B6968E8();
  v18 = *MEMORY[0x277D043E8];
  v19 = sub_24B6966F8();
  (*(*(v19 - 8) + 104))(&v7[v12], v18, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277D043B0], v4);
  v20 = *v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_24B6610D8(0, v20[2] + 1, 1, v20, &qword_27F02D968, &qword_24B6981A8, &qword_27F02D918, ":S");
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_24B6610D8((v21 > 1), v22 + 1, 1, v20, &qword_27F02D968, &qword_24B6981A8, &qword_27F02D918, ":S");
  }

  v20[2] = v22 + 1;
  result = (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v4);
  *v17 = v20;
  return result;
}

unint64_t sub_24B660884()
{
  result = qword_27F02D928;
  if (!qword_27F02D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D928);
  }

  return result;
}

uint64_t sub_24B6608D8(uint64_t a1, int *a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B6609E8;

  return v6();
}

uint64_t sub_24B6609E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B6968B8();
  if (v0)
  {
    v4 = sub_24B660BA8;
  }

  else
  {
    v4 = sub_24B660B44;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B660B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B660BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B660C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B660CB4;

  return sub_24B6608D8(a1, v4);
}

uint64_t sub_24B660CB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_24B660DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D950, &qword_24B698190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24B660EC0()
{
  result = qword_27F02D930;
  if (!qword_27F02D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D930);
  }

  return result;
}

unint64_t sub_24B660F18()
{
  result = qword_27F02D938;
  if (!qword_27F02D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D938);
  }

  return result;
}

unint64_t sub_24B660F70()
{
  result = qword_27F02D940;
  if (!qword_27F02D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D940);
  }

  return result;
}

unint64_t sub_24B660FC8()
{
  result = qword_27F02D948;
  if (!qword_27F02D948)
  {
    type metadata accessor for OnboardingModalityDetailState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D948);
  }

  return result;
}

uint64_t sub_24B661020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B661068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24B6610D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_24B6612C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA18, "TU");
  v5 = sub_24B65C890(&qword_27F02DA20, &qword_27F02DA18, "TU", MEMORY[0x277D04410]);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B661360(uint64_t a1)
{
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  sub_24B695708();
  sub_24B6956F8();
  return v2;
}

uint64_t OnboardingModalityDetailView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_24B64C754;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for OnboardingModalityDetailView(0, a5, a6, v15);
  return sub_24B64C04C(a3, a4, a5);
}

uint64_t OnboardingModalityDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v23 = *(a1 + 16);
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v2 = sub_24B6959A8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x277CE0880];
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0, MEMORY[0x277CDD7A8]);
  v33 = v2;
  v34 = v3;
  v35 = WitnessTable;
  v36 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  v5 = sub_24B6963E8();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v33 = v2;
  v34 = v3;
  v35 = WitnessTable;
  v8 = swift_getOpaqueTypeConformance2();
  v9 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v31 = v8;
  v32 = v9;
  v30 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v33 = v5;
  v34 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = *(v24 + 24);
  v27 = v23;
  v28 = v18;
  v29 = v25;
  sub_24B6963D8();
  sub_24B695FF8();
  (*(v22 + 8))(v7, v5);
  v33 = v5;
  v34 = v10;
  swift_getOpaqueTypeConformance2();
  sub_24B65C908();
  v19 = *(v12 + 8);
  v19(v15, OpaqueTypeMetadata2);
  sub_24B65C908();
  return (v19)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B6619F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a1;
  v107 = a3;
  v104 = a4;
  v5 = sub_24B695C98();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v7 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  v85 = v7;
  v83 = WitnessTable;
  v9 = sub_24B695888();
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = &v75 - v10;
  v11 = swift_getWitnessTable();
  v110 = v9;
  v111 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v88 = &v75 - v13;
  v91 = v14;
  v15 = sub_24B6959A8();
  v92 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v89 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  v94 = v9;
  v110 = v9;
  v111 = v11;
  v87 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeConformance2;
  v115 = MEMORY[0x277CE0880];
  v18 = swift_getWitnessTable();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  v20 = sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0, MEMORY[0x277CDD7A8]);
  v110 = v19;
  v111 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v99 = v15;
  v100 = v18;
  v110 = v15;
  v111 = v17;
  v105 = v17;
  v112 = v18;
  v113 = v21;
  v103 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v84 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v82 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v79 = &v75 - v26;
  MEMORY[0x28223BE20](v25);
  v81 = &v75 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v78 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v75 - v32;
  v34 = type metadata accessor for OnboardingModality(0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24B695C78();
  v101 = *(v38 - 8);
  v102 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v75 - v39;
  v95 = a2;
  type metadata accessor for OnboardingModalityDetailView(0, a2, v107, v41);
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_24B64BB2C(v33, &qword_27F02D3A8, &qword_24B697570);
    sub_24B695908();
    v42 = v99;
    v43 = v100;
    v44 = v105;
    v110 = v99;
    v111 = v105;
    v45 = v103;
    v112 = v100;
    v113 = v103;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
    sub_24B677224(v30, v22, v28, v46, v47);
    (*(v78 + 8))(v30, v28);
    v48 = v42;
    v49 = v45;
  }

  else
  {
    v76 = v40;
    v77 = v28;
    v78 = v22;
    v50 = v105;
    v48 = v99;
    v51 = sub_24B664D84(v33, v37, type metadata accessor for OnboardingModality);
    MEMORY[0x28223BE20](v51);
    v52 = v95;
    v53 = v107;
    *(&v75 - 4) = v95;
    *(&v75 - 3) = v53;
    v75 = v37;
    v54 = v106;
    *(&v75 - 2) = v37;
    *(&v75 - 1) = v54;
    v55 = sub_24B695E08();
    v56 = v86;
    sub_24B6770A8(v55, sub_24B664700, (&v75 - 6), v85, v83);
    v57 = v96;
    sub_24B695C88();
    v58 = sub_24B695E08();
    sub_24B695DF8();
    sub_24B695DF8();
    if (sub_24B695DF8() != v58)
    {
      sub_24B695DF8();
    }

    v59 = v88;
    v60 = v94;
    sub_24B6961E8();
    (*(v97 + 8))(v57, v98);
    (*(v93 + 8))(v56, v60);
    sub_24B695E38();
    sub_24B6959B8();
    v61 = v89;
    v62 = v91;
    sub_24B696178();
    v63 = (*(v90 + 8))(v59, v62);
    MEMORY[0x28223BE20](v63);
    *(&v75 - 4) = v52;
    *(&v75 - 3) = v53;
    *(&v75 - 2) = v54;
    v64 = v79;
    v43 = v100;
    v49 = v103;
    sub_24B6962A8();
    (*(v92 + 8))(v61, v48);
    v110 = v48;
    v111 = v50;
    v112 = v43;
    v113 = v49;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v81;
    v67 = v78;
    sub_24B65C908();
    v68 = *(v84 + 8);
    v68(v64, v67);
    v69 = v82;
    sub_24B65C908();
    v70 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
    v40 = v76;
    sub_24B67712C(v69, v67, v77, v65, v70);
    v68(v69, v67);
    v68(v66, v67);
    sub_24B65F438(v75, type metadata accessor for OnboardingModality);
    v44 = v105;
  }

  v110 = v48;
  v111 = v44;
  v112 = v43;
  v113 = v49;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v108 = v71;
  v109 = v72;
  v73 = v102;
  swift_getWitnessTable();
  sub_24B65C908();
  return (*(v101 + 8))(v40, v73);
}

uint64_t sub_24B6626BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v9 = sub_24B6964E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  sub_24B695BE8();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a1;
  v18[7] = a2;
  sub_24B6964D8();
  swift_getWitnessTable();
  sub_24B65C908();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_24B65C908();
  return (v16)(v15, v9);
}

uint64_t sub_24B6628E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  *&v75 = a2;
  v72 = a5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D970, &qword_24B6981B0);
  v7 = MEMORY[0x28223BE20](v69);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = (&v58 - v10);
  v63 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = a3;
  v12 = sub_24B6959A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for OnboardingArtwork(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24B696938();
  v24 = *(v67 - 8);
  v25 = MEMORY[0x28223BE20](v67);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = &v58 - v28;
  v29 = type metadata accessor for OnboardingModality(0);
  v30 = *(v29 + 24);
  v73 = a1;
  sub_24B664C5C(a1 + v30, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_24B64BB2C(v19, &qword_27F02D670, &qword_24B697840);
    (*(v13 + 56))(v27, 1, 1, v12);
    v31 = v70;
    v87 = v70;
    v88 = MEMORY[0x277CE01B0];
    swift_getWitnessTable();
  }

  else
  {
    v58 = type metadata accessor for OnboardingArtwork;
    sub_24B664D84(v19, v23, type metadata accessor for OnboardingArtwork);
    v60 = v24;
    v32 = v74;
    v31 = v70;
    v34 = type metadata accessor for OnboardingModalityDetailView(0, v74, v70, v33);
    v59 = v13;
    v35 = sub_24B661360(v34);
    v36 = v73 + *(v29 + 28);
    v37 = v61;
    v35(v23, v36);

    sub_24B6612C0();
    swift_getKeyPath();
    sub_24B696718();

    v38 = v64;
    sub_24B6960B8();
    v39 = v32;
    v24 = v60;
    (*(v63 + 8))(v37, v39);
    sub_24B65F438(v23, v58);
    v76 = v31;
    v77 = MEMORY[0x277CE01B0];
    swift_getWitnessTable();
    v40 = v62;
    sub_24B65C908();
    v41 = v59;
    v42 = *(v59 + 8);
    v42(v38, v12);
    sub_24B65C908();
    v42(v40, v12);
    (*(v41 + 32))(v27, v38, v12);
    (*(v41 + 56))(v27, 0, 1, v12);
  }

  v65 = v12;
  v43 = v66;
  sub_24B6770C0(v27, v66);
  v70 = *(v24 + 8);
  v44 = v27;
  v45 = v27;
  v46 = v67;
  v70(v44, v67);
  v47 = sub_24B695BE8();
  v48 = v68;
  *v68 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAF0, &qword_24B698338);
  v50 = v74;
  sub_24B66318C(v73, v75, v74, v31, v48 + *(v49 + 44));
  type metadata accessor for OnboardingModalityDetailView(0, v50, v31, v51);
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  v75 = v85;
  v74 = v86;
  v52 = sub_24B695E28();
  v53 = v69;
  v54 = v48 + *(v69 + 36);
  *v54 = v52;
  *(v54 + 24) = v74;
  *(v54 + 8) = v75;
  *(v54 + 40) = 0;
  (*(v24 + 16))(v45, v43, v46);
  v84[0] = v45;
  v55 = v71;
  sub_24B64A3E0(v48, v71, &qword_27F02D970, &qword_24B6981B0);
  v84[1] = v55;
  v83[0] = v46;
  v83[1] = v53;
  v79 = v31;
  v80 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v82 = sub_24B664CCC();
  sub_24B66D504(v84, 2uLL, v83);
  sub_24B64BB2C(v48, &qword_27F02D970, &qword_24B6981B0);
  v56 = v70;
  v70(v43, v46);
  sub_24B64BB2C(v55, &qword_27F02D970, &qword_24B6981B0);
  return v56(v45, v46);
}