uint64_t sub_2561D2898(uint64_t a1, int a2)
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

uint64_t sub_2561D28B8(uint64_t result, int a2, int a3)
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

uint64_t sub_2561D291C()
{

  return swift_deallocObject();
}

uint64_t sub_2561D2970(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2561D2A2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2561D2ADC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8, MEMORY[0x277CBCD90]);
  swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDD00();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2561D2F70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2561EDC10();
  *a1 = result;
  return result;
}

uint64_t sub_2561D2FC4()
{
  v1 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = type metadata accessor for OBKListView(0, v11);
  v3 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);

  if (*(v0 + 112))
  {
  }

  v4 = (v0 + v3);

  if (*(v0 + v3 + 32))
  {
  }

  if (v4[9])
  {

    if (v4[16])
    {
    }
  }

  if (v4[20])
  {

    if (v4[27])
    {
    }
  }

  v5 = v4 + *(v2 + 76);
  v6 = type metadata accessor for OBKCaption(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        goto LABEL_15;
      case 1:

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8) + 64);
        v9 = sub_2561ED970();
        (*(*(v9 - 8) + 8))(&v5[v8], v9);
        break;
      case 0:
LABEL_15:

        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2561D325C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2561EDC30();
  *a1 = result & 1;
  return result;
}

unint64_t MCCError.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - v5;
  v7 = sub_2561ED860();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MCCError(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2561D3A04(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v8 + 32))(v10, v13, v7);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_2561EE430();

      v40 = 0xD00000000000001ALL;
      v41 = 0x80000002561F0220;
      sub_2561D4764(&qword_27F830298, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
      v24 = sub_2561EE4B0();
      MEMORY[0x259C5E4E0](v24);

      v25 = v40;
      (*(v8 + 8))(v10, v7);
      return v25;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 0x726F687475616E55;
    }

    v19 = *v13;
    v20 = v13[1];
    v21 = v13[2];
    if (v21 >> 60 == 15)
    {
      v27 = 0x80000002561F0200;
      v28 = 0xD000000000000016;
    }

    else
    {
      sub_2561ED890();
      swift_allocObject();
      sub_2561D3BA8(v20, v21);
      sub_2561ED880();
      sub_2561D3BFC();
      sub_2561ED870();

      sub_2561D3B40(v20, v21);
      v28 = v40;
      v27 = v41;
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_2561EE430();

    v40 = 0x6520726576726553;
    v41 = 0xEF5B203A726F7272;
    v42 = [v19 statusCode];
    v29 = sub_2561EE4B0();
    MEMORY[0x259C5E4E0](v29);

    MEMORY[0x259C5E4E0](8285, 0xE200000000000000);
    v30 = [v19 URL];
    if (v30)
    {
      v31 = v30;
      sub_2561ED950();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = sub_2561ED970();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v4, v32, 1, v33);
    sub_2561D3A68(v4, v6);
    if ((*(v34 + 48))(v6, 1, v33) == 1)
    {
      sub_2561D3AD8(v6);
      v35 = 0xE600000000000000;
      v36 = 0x6C7275206F6ELL;
    }

    else
    {
      v37 = sub_2561ED930();
      v35 = v38;
      (*(v34 + 8))(v6, v33);
      v36 = v37;
    }

    MEMORY[0x259C5E4E0](v36, v35);

    MEMORY[0x259C5E4E0](8236, 0xE200000000000000);
    MEMORY[0x259C5E4E0](v28, v27);

    sub_2561D3B40(v20, v21);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v15 = *v13;
      v16 = v13[1];
      v40 = 0;
      v41 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2561EE430();

        v17 = 0x80000002561F0260;
        v18 = 0xD000000000000011;
      }

      else
      {
        sub_2561EE430();

        v17 = 0x80000002561F0240;
        v18 = 0xD000000000000014;
      }

      v40 = v18;
      v41 = v17;
      MEMORY[0x259C5E4E0](v15, v16);
    }

    else
    {
      v22 = *v13;
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_2561EE430();

      v40 = 0xD000000000000021;
      v41 = 0x80000002561F0280;
      v23 = sub_2561EE2B0();
      MEMORY[0x259C5E4E0](v23);
    }
  }

  return v40;
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

uint64_t type metadata accessor for MCCError(uint64_t a1)
{
  result = qword_280E1BDE8;
  if (!qword_280E1BDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2561D3A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MCCError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D3A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D3AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D3B40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2561D3B54(a1, a2);
  }

  return a1;
}

uint64_t sub_2561D3B54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_2561D3BA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_2561D3BFC()
{
  result = qword_27F830288;
  if (!qword_27F830288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830288);
  }

  return result;
}

unint64_t sub_2561D3C50()
{
  result = qword_27F830290;
  if (!qword_27F830290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830290);
  }

  return result;
}

uint64_t MCCError.errorDescription.getter()
{
  v1 = type metadata accessor for MCCError(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2561D3A04(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];

    if (v6 >> 60 != 15)
    {
      sub_2561ED890();
      swift_allocObject();
      sub_2561ED880();
      sub_2561D3BFC();
      sub_2561ED870();

      sub_2561D3B40(v5, v6);
      return v8[2];
    }
  }

  else
  {
    sub_2561D3E20(v3);
  }

  return 0;
}

uint64_t sub_2561D3E20(uint64_t a1)
{
  v2 = type metadata accessor for MCCError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D3EA4()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D3F18(uint64_t a1)
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D3FB4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2561EE490();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2561D4018(uint64_t a1)
{
  v2 = sub_2561D426C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2561D4054(uint64_t a1)
{
  v2 = sub_2561D426C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MCCErrorResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8302A0, &qword_2561EEAF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2561D426C();
  sub_2561EE540();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2561EE4A0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2561D426C()
{
  result = qword_27F8302A8;
  if (!qword_27F8302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302A8);
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

uint64_t sub_2561D4324()
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D4398(uint64_t a1)
{
  sub_2561EE510();
  sub_2561EE2D0();
  return sub_2561EE530();
}

uint64_t sub_2561D43F8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2561EE490();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2561D4484@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2561EE490();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2561D44DC(uint64_t a1)
{
  v2 = sub_2561D46C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2561D4518(uint64_t a1)
{
  v2 = sub_2561D46C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyMCCErrorResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8302B0, &qword_2561EEB00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2561D46C8();
  sub_2561EE540();
  if (!v2)
  {
    v9 = sub_2561EE4A0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2561D46C8()
{
  result = qword_27F8302B8;
  if (!qword_27F8302B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302B8);
  }

  return result;
}

uint64_t sub_2561D4764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2561D4818(uint64_t a1)
{
  sub_2561D4974(319, &qword_280E1BD08, type metadata accessor for Dataclass);
  if (v1 <= 0x3F)
  {
    sub_2561D4914();
    if (v2 <= 0x3F)
    {
      sub_2561D4944();
      if (v3 <= 0x3F)
      {
        sub_2561D4974(319, &unk_280E1BE00, MEMORY[0x277CC8678]);
        if (v4 <= 0x3F)
        {
          sub_2561D49C0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2561D4914()
{
  result = qword_280E1BD48[0];
  if (!qword_280E1BD48[0])
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], qword_280E1BD48);
  }

  return result;
}

uint64_t sub_2561D4944()
{
  result = qword_280E1BD40;
  if (!qword_280E1BD40)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E1BD40);
  }

  return result;
}

void sub_2561D4974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_2561D49C0(uint64_t a1)
{
  if (!qword_280E1BD28)
  {
    sub_2561D4A40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8302C8, &qword_2561EEC00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E1BD28);
    }
  }
}

unint64_t sub_2561D4A40()
{
  result = qword_280E1BD20;
  if (!qword_280E1BD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1BD20);
  }

  return result;
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2561D4AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2561D4B30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2561D4B90(uint64_t a1, int a2)
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

uint64_t sub_2561D4BD8(uint64_t result, int a2, int a3)
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

uint64_t sub_2561D4C5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D4C7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for iCloudMailAccountUIFeatureFlag(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for iCloudMailAccountUIFeatureFlag(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2561D4DB4()
{
  result = qword_27F8302E0;
  if (!qword_27F8302E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302E0);
  }

  return result;
}

unint64_t sub_2561D4E0C()
{
  result = qword_27F8302E8;
  if (!qword_27F8302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8302E8);
  }

  return result;
}

uint64_t sub_2561D4E68(uint64_t a1, id *a2)
{
  result = sub_2561EE290();
  *a2 = 0;
  return result;
}

uint64_t sub_2561D4EE0(uint64_t a1, id *a2)
{
  v3 = sub_2561EE2A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2561D4F60@<X0>(uint64_t *a2@<X8>)
{
  sub_2561EE2B0();
  v3 = sub_2561EE280();

  *a2 = v3;
  return result;
}

void *sub_2561D4FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2561D4FC8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2561EE280();

  *a2 = v3;
  return result;
}

uint64_t sub_2561D5010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2561EE2B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2561D503C(uint64_t a1)
{
  v2 = sub_2561D4764(&qword_27F830328, type metadata accessor for Dataclass, &unk_2561EF07C);
  v3 = sub_2561D4764(&qword_27F830330, type metadata accessor for Dataclass, &unk_2561EF024);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2561D5188()
{
  v0 = sub_2561EE2B0();
  v1 = MEMORY[0x259C5E500](v0);

  return v1;
}

uint64_t sub_2561D51C4(uint64_t a1)
{
  sub_2561EE2B0();
  sub_2561EE2D0();
}

uint64_t sub_2561D5218(uint64_t a1)
{
  sub_2561EE2B0();
  sub_2561EE510();
  sub_2561EE2D0();
  v1 = sub_2561EE530();

  return v1;
}

uint64_t sub_2561D528C(void *a1, uint64_t *a2)
{
  v2 = sub_2561EE2B0();
  v4 = v3;
  if (v2 == sub_2561EE2B0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2561EE4C0();
  }

  return v7 & 1;
}

unint64_t sub_2561D5360()
{
  result = qword_27F830308;
  if (!qword_27F830308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830308);
  }

  return result;
}

unint64_t sub_2561D53B8()
{
  result = qword_27F830310;
  if (!qword_27F830310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830310);
  }

  return result;
}

unint64_t sub_2561D5410()
{
  result = qword_27F830318;
  if (!qword_27F830318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830318);
  }

  return result;
}

unint64_t sub_2561D5468()
{
  result = qword_27F830320;
  if (!qword_27F830320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830320);
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

uint64_t sub_2561D54DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D54FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_2561D5564(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OBKView.init(title:detailText:image:contentView:contentLayout:caption:primaryButton:secondaryButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a8;
  v40 = a7;
  v18 = sub_2561EDA90();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v21 = v39;
  v22 = a5;
  v23 = a6;
  sub_2561D7E98(a5, (a9 + 4), &qword_27F830358, &qword_2561EF240);
  a9[10] = v40;
  sub_2561D7E98(a6, (a9 + 11), &qword_27F830360, &qword_2561EF248);
  v24 = type metadata accessor for OBKView(0);
  sub_2561D7E98(v21, a9 + v24[9], &qword_27F830368, &qword_2561EFCE0);
  v25 = a9 + v24[10];
  v26 = *(a10 + 48);
  *(v25 + 2) = *(a10 + 32);
  *(v25 + 3) = v26;
  *(v25 + 4) = *(a10 + 64);
  *(v25 + 10) = *(a10 + 80);
  v27 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 1) = v27;
  v28 = a9 + v24[11];
  v29 = *(a11 + 48);
  *(v28 + 2) = *(a11 + 32);
  *(v28 + 3) = v29;
  *(v28 + 4) = *(a11 + 64);
  *(v28 + 10) = *(a11 + 80);
  v30 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 1) = v30;
  if (qword_27F830270 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = __swift_project_value_buffer(v42, qword_27F832038);
  v33 = v41;
  (*(v41 + 16))(v20, v32, v31);
  v34 = sub_2561EDA70();
  v35 = sub_2561EE360();
  v36 = v33;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2561D1000, v34, v35, "init OBKView", v37, 2u);
    MEMORY[0x259C5EC30](v37, -1, -1);
  }

  sub_2561D8584(v21, &qword_27F830368, &qword_2561EFCE0);
  sub_2561D8584(v23, &qword_27F830360, &qword_2561EF248);
  sub_2561D8584(v22, &qword_27F830358, &qword_2561EF240);
  return (*(v36 + 8))(v20, v31);
}

uint64_t OBKView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_2561EDA90();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for InternalOBKView(0);
  v8 = (v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v56 = &v49 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830370, &qword_2561EF250);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - v13;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[3];
  v49 = v1[2];
  v50 = v14;
  sub_2561D7E98((v1 + 4), v60, &qword_27F830358, &qword_2561EF240);
  sub_2561D7E98((v1 + 11), v59, &qword_27F830360, &qword_2561EF248);
  v17 = v1[10];
  v18 = type metadata accessor for OBKView(0);
  sub_2561D7E98(v1 + v18[9], v6, &qword_27F830368, &qword_2561EFCE0);
  v19 = v1 + v18[10];
  v20 = *(v19 + 3);
  v63 = *(v19 + 2);
  v64 = v20;
  v65 = *(v19 + 4);
  v66 = *(v19 + 10);
  v21 = *(v19 + 1);
  v61 = *v19;
  v62 = v21;
  v22 = v1 + v18[11];
  v23 = *(v22 + 3);
  v69 = *(v22 + 2);
  v70 = v23;
  v71 = *(v22 + 4);
  v72 = *(v22 + 10);
  v24 = *(v22 + 1);
  v67 = *v22;
  v68 = v24;
  v25 = v49;
  *v11 = v50;
  v11[1] = v15;
  v11[2] = v25;
  v11[3] = v16;
  sub_2561D7E98(v60, (v11 + 4), &qword_27F830358, &qword_2561EF240);
  v11[10] = v17;
  sub_2561D7E98(v59, (v11 + 11), &qword_27F830360, &qword_2561EF248);
  sub_2561D7E98(v6, v11 + v8[11], &qword_27F830368, &qword_2561EFCE0);
  v26 = v11 + v8[12];
  v27 = v64;
  *(v26 + 2) = v63;
  *(v26 + 3) = v27;
  *(v26 + 4) = v65;
  *(v26 + 10) = v66;
  v28 = v62;
  *v26 = v61;
  *(v26 + 1) = v28;
  v29 = v11 + v8[13];
  v30 = v70;
  *(v29 + 2) = v69;
  *(v29 + 3) = v30;
  *(v29 + 4) = v71;
  *(v29 + 10) = v72;
  v31 = v68;
  *v29 = v67;
  *(v29 + 1) = v31;

  sub_2561D7E98(&v61, v58, &qword_27F830378, &qword_2561EFF60);
  sub_2561D7E98(&v67, v58, &qword_27F830378, &qword_2561EFF60);
  if (qword_27F830270 != -1)
  {
    swift_once();
  }

  v32 = v53;
  v33 = __swift_project_value_buffer(v53, qword_27F832038);
  v35 = v51;
  v34 = v52;
  (*(v52 + 16))(v51, v33, v32);
  v36 = sub_2561EDA70();
  v37 = sub_2561EE360();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2561D1000, v36, v37, "init OBKView", v38, 2u);
    MEMORY[0x259C5EC30](v38, -1, -1);
  }

  (*(v34 + 8))(v35, v32);
  sub_2561D8584(v6, &qword_27F830368, &qword_2561EFCE0);
  sub_2561D8584(v59, &qword_27F830360, &qword_2561EF248);
  sub_2561D8584(v60, &qword_27F830358, &qword_2561EF240);
  v39 = v56;
  sub_2561D86BC(v11, v56, type metadata accessor for InternalOBKView);
  v40 = sub_2561EDE60();
  v41 = v39;
  v42 = v54;
  sub_2561D86BC(v41, v54, type metadata accessor for InternalOBKView);
  *(v42 + *(v55 + 36)) = v40;
  v43 = sub_2561EDB70();
  v44 = sub_2561EDE80();
  v45 = v42;
  v46 = v57;
  sub_2561D7F00(v45, v57);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830380, &qword_2561EF258);
  v48 = v46 + *(result + 36);
  *v48 = v43;
  *(v48 + 8) = v44;
  return result;
}

void *sub_2561D5E3C()
{
  v1 = v0;
  sub_2561D62F0();
  v3 = v2;
  sub_2561D6A34(v2);
  v4 = type metadata accessor for InternalOBKView(0);
  v5 = (v0 + *(v4 + 40));
  v6 = v5[3];
  v65 = v5[2];
  v66 = v6;
  v67 = v5[4];
  v68 = *(v5 + 10);
  v7 = v5[1];
  v63 = *v5;
  v64 = v7;
  v8 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    v9 = v63;
    v10 = v5[4];
    v60 = v5[3];
    v61 = v10;
    v62 = *(v5 + 10);
    v11 = v5[2];
    v58 = v5[1];
    v59 = v11;
    v12 = objc_opt_self();
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v47 = v63;
    v48 = v64;
    sub_2561D85E4(&v47, v45);
    v13 = [v12 boldButton];
    v14 = sub_2561EE280();
    [v13 setTitle:v14 forState:0];

    sub_2561D8858(0, &qword_27F830408, 0x277D750C8);
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v8;
    v16 = v61;
    *(v15 + 64) = v60;
    *(v15 + 80) = v16;
    v17 = v62;
    v18 = v59;
    *(v15 + 32) = v58;
    *(v15 + 48) = v18;
    *(v15 + 96) = v17;
    *(v15 + 104) = v13;
    *(v15 + 112) = v3;
    sub_2561D7E98(&v63, v45, &qword_27F830378, &qword_2561EFF60);
    v19 = v13;
    v20 = v1;
    v21 = v3;
    v22 = sub_2561EE3C0();
    [v19 addAction:v22 forControlEvents:{0x2000, 0, 0, 0, sub_2561D89F8, v15}];

    v23 = v21;
    v1 = v20;
    v24 = [v23 0x1FBCBCFD0];
    [v24 addButton_];

    sub_2561D8584(&v63, &qword_27F830378, &qword_2561EFF60);
  }

  v25 = (v1 + *(v4 + 44));
  v26 = v25[3];
  v49 = v25[2];
  v50 = v26;
  v51 = v25[4];
  v52 = *(v25 + 10);
  v27 = v25[1];
  v47 = *v25;
  v48 = v27;
  v28 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v29 = v47;
    v30 = v25[4];
    v55 = v25[3];
    v56 = v30;
    v57 = *(v25 + 10);
    v31 = v25[2];
    v53 = v25[1];
    v54 = v31;
    v32 = objc_opt_self();
    v45[3] = v50;
    v45[4] = v51;
    v46 = v52;
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    sub_2561D85E4(v45, v44);
    v33 = [v32 linkButton];
    v34 = sub_2561EE280();
    [v33 setTitle:v34 forState:0];

    sub_2561D8858(0, &qword_27F830408, 0x277D750C8);
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *(v35 + 24) = v28;
    v36 = v56;
    *(v35 + 64) = v55;
    *(v35 + 80) = v36;
    v37 = v57;
    v38 = v54;
    *(v35 + 32) = v53;
    *(v35 + 48) = v38;
    *(v35 + 96) = v37;
    *(v35 + 104) = v33;
    *(v35 + 112) = v3;
    v39 = v3;
    sub_2561D7E98(&v47, v44, &qword_27F830378, &qword_2561EFF60);
    v40 = v33;
    v41 = sub_2561EE3C0();
    [v40 addAction:v41 forControlEvents:{0x2000, 0, 0, 0, sub_2561D8640, v35}];

    v42 = [v39 0x1FBCBCFD0];
    [v42 addButton_];

    sub_2561D8584(&v47, &qword_27F830378, &qword_2561EFF60);
  }

  sub_2561D71F4(v3);
  return v3;
}

void sub_2561D62F0()
{
  sub_2561D7E98(v0 + 32, &v61, &qword_27F830358, &qword_2561EF240);
  if (v62[25] == 255)
  {
    sub_2561D8584(&v61, &qword_27F830358, &qword_2561EF240);
    v1 = *(v0 + 24);
    v2 = *(v0 + 80);
    v3 = sub_2561EE280();
    if (v1)
    {
      v4 = sub_2561EE280();
    }

    else
    {
      v4 = 0;
    }

    [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v3 detailText:v4 icon:0 contentLayout:v2];

    return;
  }

  v63 = v61;
  v64[0] = *v62;
  *(v64 + 10) = *&v62[10];
  sub_2561D8944(&v63, &v61);
  if (!v62[25])
  {
    v10 = *(v0 + 24);
    v11 = *(v0 + 80);
    v12 = sub_2561EE280();
    if (v10)
    {
      v13 = sub_2561EE280();
    }

    else
    {
      v13 = 0;
    }

    v19 = objc_allocWithZone(MEMORY[0x277D37698]);
    v20 = sub_2561EE280();

    [v19 initWithTitle:v12 detailText:v13 symbolName:v20 contentLayout:v11];

    goto LABEL_18;
  }

  if (v62[25] == 1)
  {
    v5 = v61;
    v6 = *(v0 + 24);
    v7 = *(v0 + 80);
    v8 = sub_2561EE280();
    if (v6)
    {
      v9 = sub_2561EE280();
    }

    else
    {
      v9 = 0;
    }

    [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v8 detailText:v9 icon:v5 contentLayout:v7];

LABEL_18:
    sub_2561D89A0(&v63);
    return;
  }

  v14 = v62[24];
  sub_2561D8840(&v61, v60);
  v15 = *(v0 + 24);
  v16 = *(v0 + 80);
  v17 = sub_2561EE280();
  if (v15)
  {
    v18 = sub_2561EE280();
  }

  else
  {
    v18 = 0;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v17 detailText:v18 icon:0 contentLayout:v16];

  v22 = [v21 headerView];
  v23 = [v22 customIconContainerView];

  if (v23)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    MEMORY[0x28223BE20](v24);
    (*(v26 + 16))(&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v59 = sub_2561EE1C0();
    v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830420, &qword_2561EF3C0));
    v28 = sub_2561EDCD0();
    v29 = [v28 view];
    if (v29)
    {
      v30 = v29;
      [v23 addSubview_];

      [v21 addChildViewController_];
      v31 = [v28 view];
      if (v31)
      {
        v32 = v31;
        [v31 setTranslatesAutoresizingMaskIntoConstraints_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830428, &unk_2561EF3C8);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_2561EF220;
        v34 = [v28 view];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 leadingAnchor];

          v37 = [v23 leadingAnchor];
          v38 = [v36 constraintEqualToAnchor_];

          *(v33 + 32) = v38;
          v39 = [v28 view];
          if (v39)
          {
            v40 = v39;
            v41 = [v39 topAnchor];

            v42 = [v23 topAnchor];
            v43 = [v41 constraintEqualToAnchor_];

            *(v33 + 40) = v43;
            v44 = [v28 view];
            if (v44)
            {
              v45 = v44;
              v58 = v14;
              v46 = [v44 trailingAnchor];

              v47 = [v23 trailingAnchor];
              v48 = [v46 constraintEqualToAnchor_];

              *(v33 + 48) = v48;
              v49 = [v28 view];

              if (v49)
              {
                v50 = objc_opt_self();
                v51 = [v49 bottomAnchor];

                v52 = [v23 bottomAnchor];
                v53 = [v51 constraintEqualToAnchor_];

                *(v33 + 56) = v53;
                sub_2561D8858(0, &qword_27F830430, 0x277CCAAD0);
                v54 = sub_2561EE310();

                [v50 activateConstraints_];

                [v28 didMoveToParentViewController_];
                v14 = v58;
                goto LABEL_28;
              }

LABEL_36:
              __break(1u);
              return;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_28:
  if (v14 != 2)
  {
    v55 = [v21 headerView];
    v56 = [v55 customIconContainerView];

    [v56 setClipsToBounds_];
  }

  sub_2561D89A0(&v63);
  __swift_destroy_boxed_opaque_existential_1(v60);
}

void sub_2561D6A34(void *a1)
{
  sub_2561D7E98(v1 + 88, &v55, &qword_27F830360, &qword_2561EF248);
  if (v56[24] == 255)
  {
    sub_2561D8584(&v55, &qword_27F830360, &qword_2561EF248);
    return;
  }

  v57 = v55;
  v58[0] = *v56;
  *(v58 + 9) = *&v56[9];
  sub_2561D87E4(&v57, &v55);
  if (v56[24])
  {
    sub_2561D8840(&v55, v54);
    v3 = __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    MEMORY[0x28223BE20](v3);
    (*(v5 + 16))(&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v53 = sub_2561EE1C0();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830420, &qword_2561EF3C0));
    v7 = sub_2561EDCD0();
    [a1 addChildViewController_];
    v8 = [a1 contentView];
    v9 = [v7 view];
    if (v9)
    {
      v10 = v9;
      [v8 addSubview_];

      v11 = [v7 view];
      if (v11)
      {
        [v11 setTranslatesAutoresizingMaskIntoConstraints_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830428, &unk_2561EF3C8);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_2561EF220;
        v13 = [v7 view];

        if (v13)
        {
          v14 = [v13 leadingAnchor];

          v15 = [a1 contentView];
          v16 = [v15 leadingAnchor];

          v17 = [v14 constraintEqualToAnchor_];
          *(v12 + 32) = v17;
          v18 = [v7 view];

          if (v18)
          {
            v19 = [v18 topAnchor];

            v20 = [a1 contentView];
            v21 = [v20 topAnchor];

            v22 = [v19 constraintEqualToAnchor_];
            *(v12 + 40) = v22;
            v23 = [v7 view];

            if (v23)
            {
              v24 = [v23 trailingAnchor];

              v25 = [a1 contentView];
              v26 = [v25 trailingAnchor];

              v27 = [v24 constraintEqualToAnchor_];
              *(v12 + 48) = v27;
              v28 = [v7 view];

              if (v28)
              {
                v29 = objc_opt_self();
                v30 = [v28 bottomAnchor];

                v31 = [a1 contentView];
                v32 = [v31 bottomAnchor];

                v33 = [v30 constraintEqualToAnchor_];
                *(v12 + 56) = v33;
                sub_2561D8858(0, &qword_27F830430, 0x277CCAAD0);
                v34 = sub_2561EE310();

                [v29 activateConstraints_];

                [v7 didMoveToParentViewController_];
                sub_2561D88A0(&v57);
                __swift_destroy_boxed_opaque_existential_1(v54);
                return;
              }

              goto LABEL_26;
            }

LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v52 = a1;
  v50 = v55;
  v35 = *(v55 + 16);
  if (v35)
  {
    v36 = v50 + 48;
    do
    {
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      v43 = *(v36 + 32);
      v44 = *(v36 + 40);
      if (v43 == 255)
      {

        sub_2561D88F4(v42, v41, 255);
        v37 = v44;
        v38 = sub_2561EE280();
        v39 = sub_2561EE280();
        v40 = sub_2561EE280();
        [v52 addBulletedListItemWithTitle:v38 description:v39 symbolName:v40 tintColor:v37];

        sub_2561D891C(v42, v41, 255);
      }

      else
      {

        sub_2561D88F4(v42, v41, v43);
        v45 = v44;
        sub_2561D88F4(v42, v41, v43);
        v46 = sub_2561EE280();
        v47 = sub_2561EE280();
        if (v43)
        {
          [v52 addBulletedListItemWithTitle:v46 description:v47 image:v42 tintColor:v45];

          sub_2561D891C(v42, v41, v43);

          sub_2561D891C(v42, v41, v43);
        }

        else
        {
          v51 = v35;
          v48 = sub_2561EE280();
          sub_2561D891C(v42, v41, v43);
          [v52 addBulletedListItemWithTitle:v46 description:v47 symbolName:v48 tintColor:v45];

          sub_2561D891C(v42, v41, v43);

          v35 = v51;
        }
      }

      v36 += 64;
      --v35;
    }

    while (v35);
  }

  sub_2561D88A0(&v57);
}

uint64_t sub_2561D71F4(void *a1)
{
  v33 = a1;
  v2 = sub_2561ED970();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for OBKCaption(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for InternalOBKView(0);
  sub_2561D7E98(v1 + *(v15 + 36), v7, &qword_27F830368, &qword_2561EFCE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2561D8584(v7, &qword_27F830368, &qword_2561EFCE0);
  }

  sub_2561D86BC(v7, v14, type metadata accessor for OBKCaption);
  sub_2561D8724(v14, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v12;
  v18 = *(v12 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v12 + 2);
      v21 = v12[24];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8);
      (*(v32 + 32))(v4, &v12[*(v22 + 64)], v2);
      v23 = [v33 buttonTray];
      v24 = sub_2561EE280();

      v25 = sub_2561ED940();
      if (v21)
      {
        [v23 setCaptionText:v24 learnMoreURL:v25];
      }

      else
      {
        [v23 setCaptionText:v24 style:v20 learnMoreURL:v25];
      }

      (*(v32 + 8))(v4, v2);
    }

    else
    {
      v28 = [v33 buttonTray];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830410, &qword_2561EF3B0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2561EF230;
      *(v29 + 32) = v19;
      *(v29 + 40) = v18;
      v30 = sub_2561EE310();

      [v28 setPrivacyLinkForBundles_];
    }
  }

  else
  {
    if (v12[24])
    {
      v26 = [v33 buttonTray];
      v27 = sub_2561EE280();

      [v26 setCaptionText_];
    }

    else
    {
      v31 = *(v12 + 2);
      v26 = [v33 buttonTray];
      v27 = sub_2561EE280();

      [v26 setCaptionText:v27 style:v31];
    }
  }

  return sub_2561D8788(v14);
}

void sub_2561D766C(void *a1)
{
  v2 = [a1 buttonTray];
  v3 = [v2 allButtons];

  sub_2561D8858(0, &qword_27F830400, 0x277D37690);
  v4 = sub_2561EE320();

  v5 = type metadata accessor for InternalOBKView(0);
  v6 = v1 + *(v5 + 40);
  v7 = *(v6 + 16);
  v40 = *v6;
  v41 = v7;
  v8 = *(v6 + 48);
  v42 = *(v6 + 32);
  v43 = v8;
  v44 = *(v6 + 64);
  v45 = *(v6 + 80);
  v9 = v4 >> 62;
  if (!*(&v40 + 1))
  {
    goto LABEL_19;
  }

  v32 = v5;
  v33 = v4 >> 62;
  v30 = v41;
  v31 = BYTE1(v41);
  if (v9)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2561EE460())
  {
    v11 = *(&v42 + 1);
    v12 = v43;
    v13 = v44;
    v14 = v45;

    sub_2561D8534(v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
    if (i)
    {
      v15 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x259C5E640](v15, v4);
        }

        else
        {
          if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v16 = *(v4 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v15;
        if (v18 == i)
        {
          goto LABEL_14;
        }
      }

      v19 = &selRef_showsBusyIndicator;
      if ((v30 & 1) == 0)
      {
        v19 = &selRef_hidesBusyIndicator;
      }

      [v17 *v19];
      v20 = v17;
      [v20 setEnabled_];
      sub_2561D8584(&v40, &qword_27F830378, &qword_2561EFF60);
    }

    else
    {
LABEL_14:
      sub_2561D8584(&v40, &qword_27F830378, &qword_2561EFF60);
    }

    v5 = v32;
    v9 = v33;
LABEL_19:
    v21 = v1 + *(v5 + 44);
    v22 = *(v21 + 16);
    v34 = *v21;
    v35 = v22;
    v23 = *(v21 + 48);
    v36 = *(v21 + 32);
    v37 = v23;
    v38 = *(v21 + 64);
    v39 = *(v21 + 80);
    if (!*(&v34 + 1))
    {
      break;
    }

    LODWORD(v32) = BYTE1(v35);
    if (v9)
    {
      v1 = sub_2561EE460();
    }

    else
    {
      v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_2561D8534(*(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39);
    if (!v1)
    {
LABEL_32:

      sub_2561D8584(&v34, &qword_27F830378, &qword_2561EFF60);
      return;
    }

    v24 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x259C5E640](v24, v4);
      }

      else
      {
        if (v24 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v25 = *(v4 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v28 = &selRef_showsBusyIndicator;
        if ((v35 & 1) == 0)
        {
          v28 = &selRef_hidesBusyIndicator;
        }

        [v26 *v28];
        v29 = v26;
        [v29 setEnabled_];
        sub_2561D8584(&v34, &qword_27F830378, &qword_2561EFF60);

        return;
      }

      ++v24;
      if (v27 == v1)
      {
        goto LABEL_32;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }
}

void sub_2561D7A88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 64))
  {
    if (*(a2 + 48))
    {
      v6 = sub_2561EE280();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_2561EE280();
    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:0];

    v9 = sub_2561EE280();
    v12 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

    [v8 addAction_];
    v10 = [v8 sheetPresentationController];
    if (v10)
    {
      v11 = v10;
      [v10 setSourceView_];
    }

    [a4 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    (*(a2 + 24))(a1);
  }
}

uint64_t sub_2561D7C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561D84F0(&qword_27F8303F8, &unk_2561EF2E8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2561D7CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561D84F0(&qword_27F8303F8, &unk_2561EF2E8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2561D7D78(uint64_t a1)
{
  sub_2561D84F0(&qword_27F8303F8, &unk_2561EF2E8);
  sub_2561EDDF0();
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2561D7DF4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2561D7E60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2561D7E98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2561D7F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830370, &qword_2561EF250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2561D7FB4(uint64_t a1)
{
  if (!qword_27F8303B0)
  {
    type metadata accessor for OBKCaption(255);
    v1 = sub_2561EE3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8303B0);
    }
  }
}

void sub_2561D800C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2561EE3D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2561D8058()
{
  result = qword_27F8303C0;
  if (!qword_27F8303C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830380, &qword_2561EF258);
    sub_2561D80E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303C0);
  }

  return result;
}

unint64_t sub_2561D80E4()
{
  result = qword_27F8303C8;
  if (!qword_27F8303C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830370, &qword_2561EF250);
    sub_2561D84F0(&qword_27F8303D0, &unk_2561EF360);
    sub_2561D818C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303C8);
  }

  return result;
}

unint64_t sub_2561D818C()
{
  result = qword_27F8303D8;
  if (!qword_27F8303D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8303E0, &qword_2561EF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8303D8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2561D8384(uint64_t a1)
{
  sub_2561D800C(319, &qword_27F830398, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2561D800C(319, &qword_27F8303A0, &type metadata for OBKHeaderImage);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OBWelcomeContentViewLayout(319);
      if (v3 <= 0x3F)
      {
        sub_2561D800C(319, &qword_27F8303A8, &type metadata for OBKContent);
        if (v4 <= 0x3F)
        {
          sub_2561D7FB4(319);
          if (v5 <= 0x3F)
          {
            sub_2561D800C(319, &qword_27F8303B8, &type metadata for OBKButton);
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

uint64_t sub_2561D84F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalOBKView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2561D8534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

uint64_t sub_2561D8584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2561D86BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2561D8724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKCaption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2561D8788(uint64_t a1)
{
  v2 = type metadata accessor for OBKCaption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2561D8840(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2561D8858(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2561D88F4(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2561D890C(result, a2, a3 & 1);
  }

  return result;
}

id sub_2561D890C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2561D891C(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2561D8934(result, a2, a3 & 1);
  }
}

void sub_2561D8934(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 OBKContentItem.init(title:description:image:tintColor:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a5[1].n128_u8[0];
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  result = *a5;
  a7[2] = *a5;
  a7[3].n128_u8[0] = v7;
  a7[3].n128_u64[1] = a6;
  return result;
}

__n128 OBKButton.init(title:isLoading:isDisabled:confirmation:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a5 + 16);
  *(a8 + 40) = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 17) = a4 & 1;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  *(a8 + 56) = v8;
  result = *(a5 + 32);
  *(a8 + 72) = result;
  return result;
}

void __swiftcall OBKListButtonConfirmationDialog.init(title:message:buttonTitle:)(MCCFoundation::OBKListButtonConfirmationDialog *__return_ptr retstr, Swift::String_optional title, Swift::String message, Swift::String buttonTitle)
{
  retstr->title = title;
  retstr->message = message;
  retstr->buttonTitle = buttonTitle;
}

uint64_t type metadata accessor for OBKCaption(uint64_t a1)
{
  result = qword_27F830438;
  if (!qword_27F830438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2561D8AAC(uint64_t a1)
{
  sub_2561D8B34(319);
  if (v1 <= 0x3F)
  {
    sub_2561D8BAC(319);
    if (v2 <= 0x3F)
    {
      sub_2561D8C34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2561D8B34(uint64_t a1)
{
  if (!qword_27F830448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830450, &qword_2561EF3F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F830448);
    }
  }
}

void sub_2561D8BAC(uint64_t a1)
{
  if (!qword_27F830458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830450, &qword_2561EF3F0);
    sub_2561ED970();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F830458);
    }
  }
}

uint64_t sub_2561D8C34()
{
  result = qword_27F830460;
  if (!qword_27F830460)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F830460);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2561D8C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D8CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_2561D8D0C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13MCCFoundation31OBKListButtonConfirmationDialogVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2561D8D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2561D8DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13MCCFoundation14OBKContentItemV0bC9ImageTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2561D8E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2561D8EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2561D8F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2561D8F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2561D8FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2561D9020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2561D906C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2561D90B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2561D9100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

const char *Solarium.domain.getter()
{
  if (*v0)
  {
    return "OnBoardingKit";
  }

  else
  {
    return "SwiftUI";
  }
}

const char *Solarium.feature.getter()
{
  if (*v0)
  {
    return "NaturalUI";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t Solarium.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for Solarium;
  v4[4] = sub_2561D9210();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_2561D9210()
{
  result = qword_27F830468;
  if (!qword_27F830468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830468);
  }

  return result;
}

uint64_t Solarium.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

uint64_t sub_2561D9308()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

uint64_t sub_2561D937C(uint64_t a1)
{
  v2 = *v1;
  sub_2561EE510();
  MEMORY[0x259C5E720](v2);
  return sub_2561EE530();
}

unint64_t sub_2561D93C4()
{
  result = qword_27F830470;
  if (!qword_27F830470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830470);
  }

  return result;
}

const char *sub_2561D9418()
{
  if (*v0)
  {
    return "OnBoardingKit";
  }

  else
  {
    return "SwiftUI";
  }
}

const char *sub_2561D9448()
{
  if (*v0)
  {
    return "NaturalUI";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t getEnumTagSinglePayload for Solarium(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Solarium(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2561D95E4()
{
  v2[3] = &type metadata for Solarium;
  v2[4] = sub_2561D9210();
  LOBYTE(v2[0]) = 0;
  v0 = sub_2561EDA60();
  result = __swift_destroy_boxed_opaque_existential_1(v2);
  byte_27F830478 = v0 & 1;
  return result;
}

uint64_t CloseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830480, &qword_2561EF818);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v24 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830490, &qword_2561EF828);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - v7;
  v9 = sub_2561EDAF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830498, &qword_2561EF830);
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &v24 - v14;
  v17 = *v1;
  v16 = v1[1];
  if (qword_27F830260 != -1)
  {
    swift_once();
  }

  if (byte_27F830478 == 1)
  {
    sub_2561EDAD0();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    MEMORY[0x259C5E390](v12, sub_2561DA36C, v18);
    v19 = v27;
    (*(v13 + 16))(v8, v15, v27);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    sub_2561EDAD0();
    (*(v10 + 56))(v4, 0, 1, v9);
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v16;

    sub_2561EE170();
    v22 = v25;
    v23 = v28;
    (*(v25 + 16))(v8, v6, v28);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v22 + 8))(v6, v23);
  }
}

uint64_t sub_2561D9B18@<X0>(uint64_t a1@<X8>)
{
  sub_2561EDC70();
  result = sub_2561EDF40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2561D9B88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DoneButton.init(onTap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DoneButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830480, &qword_2561EF818);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v24 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830490, &qword_2561EF828);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - v7;
  v9 = sub_2561EDAF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830498, &qword_2561EF830);
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &v24 - v14;
  v17 = *v1;
  v16 = v1[1];
  if (qword_27F830260 != -1)
  {
    swift_once();
  }

  if (byte_27F830478 == 1)
  {
    sub_2561EDAE0();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    MEMORY[0x259C5E390](v12, sub_2561DA36C, v18);
    v19 = v27;
    (*(v13 + 16))(v8, v15, v27);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    sub_2561EDAE0();
    (*(v10 + 56))(v4, 0, 1, v9);
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v16;

    sub_2561EE170();
    v22 = v25;
    v23 = v28;
    (*(v25 + 16))(v8, v6, v28);
    swift_storeEnumTagMultiPayload();
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    sub_2561EDCF0();
    return (*(v22 + 8))(v6, v23);
  }
}

uint64_t sub_2561DA0E8@<X0>(uint64_t a1@<X8>)
{
  sub_2561EDC70();
  v2 = sub_2561EDF40();
  v4 = v3;
  v6 = v5;
  v7 = sub_2561EDF20();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2561DA350(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2561DA200(uint64_t *a1, int a2)
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

uint64_t sub_2561DA248(uint64_t result, int a2, int a3)
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

unint64_t sub_2561DA294()
{
  result = qword_27F8304B0;
  if (!qword_27F8304B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8304B8, &qword_2561EF928);
    sub_2561D9B88(&qword_27F8304A0, &qword_27F830498, &qword_2561EF830);
    sub_2561D9B88(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304B0);
  }

  return result;
}

uint64_t sub_2561DA350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2561DA378(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4554454C4544;
    }

    else
    {
      v4 = 5526864;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (a2 != 2)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2561EE4C0();
  }

  return v11 & 1;
}

uint64_t AuthMethod.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

MCCFoundation::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2561EE490();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = 5522759;
  v2 = 0x4554454C4544;
  if (*v0 != 2)
  {
    v2 = 5526864;
  }

  if (*v0)
  {
    v1 = 1414745936;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2561DA5E0()
{
  sub_2561EE510();
  sub_2561EE2D0();

  return sub_2561EE530();
}

uint64_t sub_2561DA688(uint64_t a1)
{
  sub_2561EE2D0();
}

uint64_t sub_2561DA71C(uint64_t a1)
{
  sub_2561EE510();
  sub_2561EE2D0();

  return sub_2561EE530();
}

void sub_2561DA7CC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5522759;
  v4 = 0xE600000000000000;
  v5 = 0x4554454C4544;
  if (*v1 != 2)
  {
    v5 = 5526864;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1414745936;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_2561DA830()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_2561DA884(v0);
    *(v0 + 24) = v2;
    v3 = v2;
  }

  sub_2561E11D4(v1);
  return v2;
}

id sub_2561DA884(os_unfair_lock_s **a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  result = [v2 defaultStore];
  if (result)
  {
    v5 = result;
    v6 = *a1;
    os_unfair_lock_lock(*a1 + 6);
    v7 = *&v6[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v6 + 6);
    v8 = [v5 aida:v7 accountForiCloudAccount:?];

    v9 = objc_allocWithZone(MEMORY[0x277CEC808]);
    v10 = sub_2561EE280();
    v11 = [v9 initWithAccountStore:v3 grandSlamAccount:v8 appTokenID:v10];

    if (v11)
    {
      [v11 setUseAltDSID_];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MCCNetworkController.init(account:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  v11 = sub_2561EE380();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2561EE370();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2561EE250();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2561DAC24();
  sub_2561EE240();
  v14 = MEMORY[0x277D84F90];
  sub_2561E05B4(&qword_280E1BD18, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304C0, &qword_2561EF960);
  sub_2561DAC70();
  sub_2561EE3E0();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v11);
  a3[2] = sub_2561EE390();
  a3[3] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304C8, &qword_2561EF968);
  result = swift_allocObject();
  *(result + 24) = 0;
  v10 = v13;
  *(result + 16) = v12;
  *a3 = result;
  a3[1] = v10;
  return result;
}

unint64_t sub_2561DAC24()
{
  result = qword_280E1BD10;
  if (!qword_280E1BD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1BD10);
  }

  return result;
}

unint64_t sub_2561DAC70()
{
  result = qword_280E1BD38;
  if (!qword_280E1BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8304C0, &qword_2561EF960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1BD38);
  }

  return result;
}

uint64_t MCCNetworkController.performDecodable<A>(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 64) = v13;
  *(v9 + 72) = v8;
  *(v9 + 130) = v11;
  *(v9 + 129) = a8;
  *(v9 + 48) = a7;
  *(v9 + 56) = v12;
  *(v9 + 32) = a5;
  *(v9 + 40) = a6;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 131) = *a3;
  *(v9 + 132) = *a4;
  return MEMORY[0x2822009F8](sub_2561DAD24, 0, 0);
}

uint64_t sub_2561DAD24()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v2 = sub_2561ED940();
  v3 = [v1 initWithURL_];
  *(v0 + 80) = v3;

  v4 = *(v0 + 40);
  v5 = sub_2561EE280();

  [v3 setHTTPMethod_];

  if (v4 >> 60 != 15)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    sub_2561D3BA8(v7, v6);
    v8 = sub_2561ED980();
    [v3 setHTTPBody_];

    sub_2561D3B40(v7, v6);
  }

  *(v0 + 128) = *(v0 + 132);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_2561DAF00;
  v10 = *(v0 + 130);
  v11 = *(v0 + 129);
  v12 = *(v0 + 48);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v3, (v0 + 128), v12, v11, v10, 1);
}

uint64_t sub_2561DAF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  v5[15] = v3;

  if (v3)
  {
    v6 = sub_2561DB160;
  }

  else
  {
    v6 = sub_2561DB018;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2561DB018()
{
  v1 = *(v0 + 120);

  sub_2561ED890();
  swift_allocObject();
  sub_2561ED880();
  sub_2561ED870();
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);

    sub_2561D3B54(v4, v2);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);

    sub_2561D3B54(v8, v7);
    v9 = *(v0 + 8);
    v10 = *(v0 + 112);

    return v9(v10);
  }
}

uint64_t sub_2561DB160()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MCCNetworkController.perform(with:httpMethod:authMethod:body:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 40) = a6;
  *(v9 + 48) = v8;
  *(v9 + 106) = a8;
  *(v9 + 105) = a7;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 16) = a1;
  *(v9 + 107) = *a2;
  *(v9 + 108) = *a3;
  return MEMORY[0x2822009F8](sub_2561DB204, 0, 0);
}

uint64_t sub_2561DB204()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v2 = sub_2561ED940();
  v3 = [v1 initWithURL_];
  *(v0 + 56) = v3;

  v4 = *(v0 + 32);
  v5 = sub_2561EE280();

  [v3 setHTTPMethod_];

  if (v4 >> 60 != 15)
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    sub_2561D3BA8(v7, v6);
    v8 = sub_2561ED980();
    [v3 setHTTPBody_];

    sub_2561D3B40(v7, v6);
  }

  *(v0 + 104) = *(v0 + 108);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_2561DB3DC;
  v10 = *(v0 + 106);
  v11 = *(v0 + 105);
  v12 = *(v0 + 40);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v3, (v0 + 104), v12, v11, v10, 1);
}

uint64_t sub_2561DB3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_2561DB584;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v9 = sub_2561DB518;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2561DB518()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  return v1(v2, v3, v4);
}

uint64_t sub_2561DB584()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 24) = a3;
  *(v7 + 32) = v6;
  *(v7 + 299) = a6;
  *(v7 + 298) = a5;
  *(v7 + 297) = a4;
  *(v7 + 16) = a1;
  v9 = sub_2561ED860();
  *(v7 + 40) = v9;
  *(v7 + 48) = *(v9 - 8);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  v10 = sub_2561EDA90();
  *(v7 + 72) = v10;
  *(v7 + 80) = *(v10 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 300) = *a2;

  return MEMORY[0x2822009F8](sub_2561DB780, 0, 0);
}

uint64_t sub_2561DB780()
{
  if (qword_27F830268 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 16);
    v5 = __swift_project_value_buffer(v2, qword_27F832020);
    *(v0 + 152) = v5;
    v6 = *(v3 + 16);
    *(v0 + 160) = v6;
    *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64 = v6;
    v6(v1, v5, v2);
    v7 = v4;
    v8 = sub_2561EDA70();
    v9 = sub_2561EE360();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_2561D1000, v8, v9, "Adding necessary headers %@", v11, 0xCu);
      sub_2561D8584(v12, &qword_27F8304D0, &qword_2561EF988);
      MEMORY[0x259C5EC30](v12, -1, -1);
      MEMORY[0x259C5EC30](v11, -1, -1);
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 24);

    v18 = *(v16 + 8);
    *(v0 + 176) = v18;
    *(v0 + 184) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v18;
    v18(v14, v15);
    if (!v17)
    {
      break;
    }

    v62 = v5;
    v65 = v0;
    v0 = *(v0 + 24);
    v19 = -1;
    v20 = -1 << *(v0 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v0 + 64);
    v22 = (63 - v20) >> 6;

    v23 = 0;
    if (v21)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        v0 = v65;
        v5 = v62;
        goto LABEL_16;
      }

      v21 = *(v0 + 64 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        do
        {
LABEL_13:
          v25 = *(v65 + 16);
          v21 &= v21 - 1;

          v26 = sub_2561EE280();
          v27 = sub_2561EE280();
          [v25 setValue:v26 forHTTPHeaderField:v27];
        }

        while (v21);
        continue;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_16:
  v28 = *(v0 + 300);
  v29 = *(v0 + 16);
  v30 = **(v0 + 32);
  os_unfair_lock_lock((v30 + 24));
  v31 = *(v30 + 16);
  os_unfair_lock_unlock((v30 + 24));
  v32 = [v31 aa_personID];
  v33 = sub_2561EE280();
  [v29 setValue:v32 forHTTPHeaderField:v33];

  v34 = *(v0 + 16);
  if (v28)
  {
    [v34 aa:v31 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  }

  else
  {
    [v34 aa:v31 addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
  }

  v35 = *(v0 + 297);

  if (v35 == 1)
  {
    v36 = sub_2561DA830();
    if (v36)
    {
      v37 = v36;
      v38 = [v36 signURLRequest:*(v0 + 16) isUserInitiated:1];
      v39 = *(v0 + 72);
      if (v38)
      {
        v40 = (v0 + 128);
        v64(*(v0 + 128), v5, v39);
        v41 = sub_2561EDA70();
        v42 = sub_2561EE360();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "Sucessfully signed using GS Token";
LABEL_26:
          _os_log_impl(&dword_2561D1000, v41, v42, v44, v43, 2u);
          v45 = *v40;
          MEMORY[0x259C5EC30](v43, -1, -1);
LABEL_28:
          v46 = *(v0 + 72);

          v63(v45, v46);
          goto LABEL_29;
        }
      }

      else
      {
        v40 = (v0 + 136);
        v64(*(v0 + 136), v5, v39);
        v41 = sub_2561EDA70();
        v42 = sub_2561EE350();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "Unable to sign grandslam request";
          goto LABEL_26;
        }
      }

      v45 = *v40;
      goto LABEL_28;
    }
  }

LABEL_29:
  v47 = *(v0 + 298);
  sub_2561E1C68();
  if (v47 == 1)
  {
    sub_2561E226C();
  }

  v48 = *(v0 + 120);
  v49 = *(v0 + 72);
  v50 = *(v0 + 16);
  sub_2561E25E8();
  v64(v48, v5, v49);
  v51 = v50;
  v52 = sub_2561EDA70();
  v53 = sub_2561EE360();

  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 16);
  if (v54)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    *(v56 + 4) = v55;
    *v57 = v55;
    v58 = v55;
    _os_log_impl(&dword_2561D1000, v52, v53, "Making request to %@", v56, 0xCu);
    sub_2561D8584(v57, &qword_27F8304D0, &qword_2561EF988);
    MEMORY[0x259C5EC30](v57, -1, -1);
    MEMORY[0x259C5EC30](v56, -1, -1);
  }

  *(v0 + 192) = v55;
  v63(*(v0 + 120), *(v0 + 72));
  sub_2561ED850();
  v59 = swift_task_alloc();
  *(v0 + 200) = v59;
  *v59 = v0;
  v59[1] = sub_2561DBE48;
  v60 = *(v0 + 64);

  return MEMORY[0x28211ECF8](v60, 0);
}

uint64_t sub_2561DBE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;
  v6[29] = v3;

  (*(v5[6] + 8))(v5[8], v5[5]);
  if (v3)
  {
    v7 = sub_2561DCB80;
  }

  else
  {
    v7 = sub_2561DBFBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2561DBFBC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v13 = *(v0 + 16);
    (*(v0 + 160))(*(v0 + 88), *(v0 + 152), *(v0 + 72));
    v14 = v13;
    v15 = sub_2561EDA70();
    v16 = sub_2561EE350();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 192);
      v18 = *(v0 + 16);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v17;
      v21 = v18;
      _os_log_impl(&dword_2561D1000, v15, v16, "Failed to fetch response for request: %@", v19, 0xCu);
      sub_2561D8584(v20, &qword_27F8304D0, &qword_2561EF988);
      MEMORY[0x259C5EC30](v20, -1, -1);
      MEMORY[0x259C5EC30](v19, -1, -1);
    }

    v59 = *(v0 + 216);
    v57 = *(v0 + 224);
    v58 = *(v0 + 208);
    v22 = *(v0 + 176);
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v27 = *(v0 + 40);

    v22(v23, v24);
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    v29 = v28;
    sub_2561ED850();
    (*(v25 + 32))(v29, v26, v27);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v58;
    v31 = v59;
    goto LABEL_13;
  }

  v2 = v1;
  v3 = *(v0 + 224);
  v4 = [v2 statusCode];
  if ((v4 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    if (v4 != 401)
    {
      v50 = *(v0 + 216);
      v49 = *(v0 + 224);
      v51 = *(v0 + 208);
      type metadata accessor for MCCError(0);
      sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
      swift_allocError();
      *v52 = v2;
      v52[1] = v51;
      v52[2] = v50;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_20;
    }

    if (*(v0 + 299) == 1)
    {
      (*(v0 + 160))(*(v0 + 104), *(v0 + 152), *(v0 + 72));
      v5 = sub_2561EDA70();
      v6 = sub_2561EE360();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_2561D1000, v5, v6, "401 Unauthorized, renewing credentials...", v7, 2u);
        MEMORY[0x259C5EC30](v7, -1, -1);
      }

      v8 = *(v0 + 176);
      v9 = *(v0 + 104);
      v10 = *(v0 + 72);

      v8(v9, v10);
      v11 = swift_task_alloc();
      *(v0 + 240) = v11;
      *v11 = v0;
      v11[1] = sub_2561DC6BC;

      return sub_2561DD1A0();
    }

    v54 = *(v0 + 216);
    v55 = *(v0 + 224);
    v56 = *(v0 + 208);
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v56;
    v31 = v54;
LABEL_13:
    sub_2561D3B54(v30, v31);
LABEL_20:

    v53 = *(v0 + 8);

    return v53();
  }

  v32 = *(v0 + 160);
  v33 = *(v0 + 152);
  v34 = *(v0 + 112);
  v35 = *(v0 + 72);
  v36 = *(v0 + 16);

  v32(v34, v33, v35);
  v37 = v36;
  v38 = sub_2561EDA70();
  v39 = sub_2561EE340();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 192);
    v41 = *(v0 + 16);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v41;
    *v43 = v40;
    v44 = v41;
    _os_log_impl(&dword_2561D1000, v38, v39, "Successfully fetched response for request: %@", v42, 0xCu);
    sub_2561D8584(v43, &qword_27F8304D0, &qword_2561EF988);
    MEMORY[0x259C5EC30](v43, -1, -1);
    MEMORY[0x259C5EC30](v42, -1, -1);
  }

  v45 = *(v0 + 176);
  v46 = *(v0 + 112);
  v47 = *(v0 + 72);

  v45(v46, v47);
  v60 = *(v0 + 208);
  v61 = *(v0 + 216);

  v48 = *(v0 + 8);

  return v48(v60, v61, v2);
}

uint64_t sub_2561DC6BC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2561DCC64;
  }

  else
  {
    v2 = sub_2561DC7D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2561DC7D0()
{
  (*(v0 + 160))(*(v0 + 96), *(v0 + 152), *(v0 + 72));
  v1 = sub_2561EDA70();
  v2 = sub_2561EE360();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2561D1000, v1, v2, "Retrying last failed request", v3, 2u);
    MEMORY[0x259C5EC30](v3, -1, -1);
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 300);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v4(v6, v7);
  *(v0 + 296) = v5;
  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_2561DC92C;
  v9 = *(v0 + 24);
  v10 = *(v0 + 298);
  v11 = *(v0 + 297);
  v12 = *(v0 + 16);

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(v12, (v0 + 296), v9, v11, v10, 0);
}

uint64_t sub_2561DC92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 264) = v3;

  if (v3)
  {

    v9 = sub_2561DCD64;
  }

  else
  {
    *(v8 + 272) = a3;
    *(v8 + 280) = a2;
    *(v8 + 288) = a1;
    v9 = sub_2561DCA70;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2561DCA70()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];

  sub_2561D3B54(v3, v1);
  v7 = v0[35];
  v8 = v0[36];
  v6 = v0[34];

  v4 = v0[1];

  return v4(v8, v7, v6);
}

uint64_t sub_2561DCB80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2561DCC64()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];

  sub_2561D3B54(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2561DCD64()
{
  v1 = v0[28];
  sub_2561D3B54(v0[26], v0[27]);

  v2 = v0[1];

  return v2();
}

uint64_t MCCNetworkController.performDecodable<A>(_:authMethod:additionalHeaders:addGSToken:includeAnisette:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a1;
  *(v8 + 80) = *a3;
  v13 = swift_task_alloc();
  *(v8 + 40) = v13;
  *v13 = v8;
  v13[1] = sub_2561DCF30;

  return MCCNetworkController.perform(_:authMethod:additionalHeaders:addGSToken:includeAnisette:retry:)(a2, (v8 + 80), a4, a5, a6, 1);
}

uint64_t sub_2561DCF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[6] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[9] = v3;

  if (v3)
  {
    v6 = sub_2561DD188;
  }

  else
  {
    v6 = sub_2561DD048;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2561DD048()
{
  v1 = v0[9];
  sub_2561ED890();
  swift_allocObject();
  sub_2561ED880();
  sub_2561ED870();
  if (v1)
  {
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];

    sub_2561D3B54(v4, v2);
    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];

    sub_2561D3B54(v8, v7);
    v9 = v0[1];
    v10 = v0[8];

    return v9(v10);
  }
}

uint64_t sub_2561DD1A0()
{
  v1[29] = v0;
  v2 = sub_2561EDA90();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DD29C, 0, 0);
}

uint64_t sub_2561DD29C()
{
  v1 = v0[29];
  v2 = *v1;
  v0[38] = *v1;
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = [v3 aa_altDSID];
  v0[39] = v4;

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830508, &qword_2561EFBA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2561EF950;
    *(inited + 32) = sub_2561EE2B0();
    *(inited + 40) = v6;
    *(inited + 48) = 1;
    *(inited + 56) = sub_2561EE2B0();
    *(inited + 64) = v7;
    *(inited + 72) = 1;
    v8 = sub_2561E11E4(inited);
    v0[40] = v8;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830510, &qword_2561EFBB0);
    swift_arrayDestroy();
    v9 = objc_opt_self();
    v0[41] = v9;
    v10 = [v9 defaultStore];
    v0[42] = v10;
    if (v10)
    {
      v11 = v10;
      os_unfair_lock_lock((v2 + 24));
      v12 = *(v2 + 16);
      v0[43] = v12;
      v13 = v12;
      os_unfair_lock_unlock((v2 + 24));
      sub_2561E0230(v8);
      v14 = sub_2561EE260();
      v0[44] = v14;

      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = sub_2561DD6B8;
      v15 = swift_continuation_init();
      v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830518, &qword_2561EFBB8);
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_2561E04E8;
      v0[23] = &block_descriptor;
      v0[24] = v15;
      [v11 renewCredentialsForAccount:v13 options:v14 completion:v0 + 20];
      v16 = v0 + 2;
    }

    else
    {

      __break(1u);
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v18 = v0[31];
    v17 = v0[32];
    v19 = v0[30];
    v20 = __swift_project_value_buffer(v19, qword_27F832020);
    (*(v18 + 16))(v17, v20, v19);
    v21 = sub_2561EDA70();
    v22 = sub_2561EE350();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[31];
    v24 = v0[32];
    v26 = v0[30];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2561D1000, v21, v22, "Renew credentials failed, missing id", v27, 2u);
      MEMORY[0x259C5EC30](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2561DD6B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {

    v3 = sub_2561DDD9C;
  }

  else
  {
    v3 = sub_2561DD7D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2561DD7D8()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 224);

  if (v3 == 2)
  {
    v35 = *(v0 + 312);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 272);
    v37 = *(v0 + 240);
    v38 = *(v0 + 248);
    v39 = __swift_project_value_buffer(v37, qword_27F832020);
    (*(v38 + 16))(v36, v39, v37);
    v27 = sub_2561EDA70();
    v28 = sub_2561EE350();
    v40 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 272);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    if (!v40)
    {
      goto LABEL_24;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Renew credentials failed.";
    goto LABEL_23;
  }

  if (v3 == 1)
  {
    v22 = *(v0 + 312);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 240);
    v25 = *(v0 + 248);
    v26 = __swift_project_value_buffer(v24, qword_27F832020);
    (*(v25 + 16))(v23, v26, v24);
    v27 = sub_2561EDA70();
    v28 = sub_2561EE350();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 280);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    if (!v29)
    {
      goto LABEL_24;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Renew credentials rejected.";
    goto LABEL_23;
  }

  if (v3)
  {
    v41 = *(v0 + 312);

    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 264);
    v43 = *(v0 + 240);
    v44 = *(v0 + 248);
    v45 = __swift_project_value_buffer(v43, qword_27F832020);
    (*(v44 + 16))(v42, v45, v43);
    v27 = sub_2561EDA70();
    v28 = sub_2561EE350();
    v46 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 264);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    if (!v46)
    {
      goto LABEL_24;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Renew credentials failed with unknown reason.";
LABEL_23:
    _os_log_impl(&dword_2561D1000, v27, v28, v34, v33, 2u);
    MEMORY[0x259C5EC30](v33, -1, -1);
LABEL_24:

    (*(v32 + 8))(v30, v31);
    goto LABEL_25;
  }

  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = __swift_project_value_buffer(v5, qword_27F832020);
  v8 = *(v6 + 16);
  v8(v4, v7, v5);
  v9 = sub_2561EDA70();
  v10 = sub_2561EE360();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2561D1000, v9, v10, "Successfully renewed credentials.", v11, 2u);
    MEMORY[0x259C5EC30](v11, -1, -1);
  }

  v12 = *(v0 + 328);
  v13 = *(v0 + 296);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);

  v16 = *(v15 + 8);
  v16(v13, v14);
  v17 = [v12 defaultStore];
  if (!v17)
  {

    __break(1u);
    return;
  }

  v18 = v17;
  v19 = *(v0 + 312);

  v20 = [v18 aa:v19 appleAccountWithAltDSID:?];

  if (v20)
  {
    v21 = *(v0 + 304);
    *(swift_task_alloc() + 16) = v20;
    os_unfair_lock_lock((v21 + 24));
    sub_2561E12F8((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
  }

  else
  {
    v8(*(v0 + 288), v7, *(v0 + 240));
    v48 = sub_2561EDA70();
    v49 = sub_2561EE350();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 288);
    v52 = *(v0 + 240);
    if (v50)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2561D1000, v48, v49, "Renew credentials failed, missing account", v53, 2u);
      MEMORY[0x259C5EC30](v53, -1, -1);
    }

    v16(v51, v52);
  }

LABEL_25:

  v47 = *(v0 + 8);

  v47();
}

uint64_t sub_2561DDD9C(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[42];
  v4 = v1[43];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t MCCNetworkController.url(for:dataClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  v5[13] = swift_task_alloc();
  v6 = sub_2561EDA90();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DDF94, 0, 0);
}

uint64_t sub_2561DDF94()
{
  v94 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = *v1;
  v0[20] = *v1;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = [v4 propertiesForDataclass_];

  if (v5)
  {
    v6 = sub_2561EE270();

    v7 = sub_2561DF34C(v6);

    if (v7)
    {

      v8 = v0[20];
      v9 = v0[11];
      os_unfair_lock_lock((v8 + 24));
      v10 = *(v8 + 16);
      os_unfair_lock_unlock((v8 + 24));
      v11 = [v10 propertiesForDataclass_];

      if (!v11 || (v12 = sub_2561EE270(), v11, v13 = sub_2561DF34C(v12), , !v13))
      {
        if (qword_27F830268 != -1)
        {
          swift_once();
        }

        v54 = v0[15];
        v53 = v0[16];
        v55 = v0[14];
        v56 = v0[11];
        v57 = __swift_project_value_buffer(v55, qword_27F832020);
        (*(v54 + 16))(v53, v57, v55);
        v58 = v56;
        v59 = sub_2561EDA70();
        v60 = sub_2561EE350();

        v61 = os_log_type_enabled(v59, v60);
        v63 = v0[15];
        v62 = v0[16];
        v64 = v0[14];
        if (v61)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v93[0] = v66;
          *v65 = 136315138;
          v67 = sub_2561EE2B0();
          v69 = sub_2561E05FC(v67, v68, v93);

          *(v65 + 4) = v69;
          _os_log_impl(&dword_2561D1000, v59, v60, "Still not able to fetch properties for dataclass: %s. Failing.", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          MEMORY[0x259C5EC30](v66, -1, -1);
          MEMORY[0x259C5EC30](v65, -1, -1);
        }

        (*(v63 + 8))(v62, v64);
        v70 = v0[11];
        type metadata accessor for MCCError(0);
        sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
        swift_allocError();
        *v71 = v70;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v72 = v70;
        goto LABEL_32;
      }

      if (*(v13 + 16) && (v14 = sub_2561E0BE8(v0[9], v0[10]), (v15 & 1) != 0))
      {
        sub_2561E0C60(*(v13 + 56) + 32 * v14, (v0 + 2));

        if (swift_dynamicCast())
        {
          v16 = v0[13];
          v18 = v0[6];
          v17 = v0[7];
          sub_2561ED960();
          v19 = sub_2561ED970();
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(v16, 1, v19) != 1)
          {
            v91 = v0[13];
            v92 = v0[8];

            (*(v20 + 32))(v92, v91, v19);

            v90 = v0[1];
            goto LABEL_33;
          }

          sub_2561D8584(v0[13], &qword_27F830280, &qword_2561EEAF0);
          if (qword_27F830268 != -1)
          {
            swift_once();
          }

          v21 = v0[18];
          v22 = v0[14];
          v23 = v0[15];
          v24 = __swift_project_value_buffer(v22, qword_27F832020);
          (*(v23 + 16))(v21, v24, v22);

          v25 = sub_2561EDA70();
          v26 = sub_2561EE350();

          v27 = os_log_type_enabled(v25, v26);
          v28 = v0[18];
          v29 = v0[14];
          v30 = v0[15];
          if (v27)
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v93[0] = v32;
            *v31 = 136315138;
            *(v31 + 4) = sub_2561E05FC(v18, v17, v93);
            _os_log_impl(&dword_2561D1000, v25, v26, "Failed to create URL from string: %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x259C5EC30](v32, -1, -1);
            MEMORY[0x259C5EC30](v31, -1, -1);
          }

          (*(v30 + 8))(v28, v29);
          type metadata accessor for MCCError(0);
          sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
          swift_allocError();
          *v33 = v18;
          v33[1] = v17;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_32:

          v90 = v0[1];
LABEL_33:

          return v90();
        }
      }

      else
      {
      }

      if (qword_27F830268 != -1)
      {
        swift_once();
      }

      v73 = v0[17];
      v74 = v0[14];
      v75 = v0[15];
      v76 = __swift_project_value_buffer(v74, qword_27F832020);
      (*(v75 + 16))(v73, v76, v74);

      v77 = sub_2561EDA70();
      v78 = sub_2561EE350();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v0[17];
      v81 = v0[14];
      v82 = v0[15];
      if (v79)
      {
        v84 = v0[9];
        v83 = v0[10];
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v93[0] = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_2561E05FC(v84, v83, v93);
        _os_log_impl(&dword_2561D1000, v77, v78, "Failed to fetch URL for key: %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x259C5EC30](v86, -1, -1);
        MEMORY[0x259C5EC30](v85, -1, -1);
      }

      (*(v82 + 8))(v80, v81);
      v88 = v0[9];
      v87 = v0[10];
      type metadata accessor for MCCError(0);
      sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
      swift_allocError();
      *v89 = v88;
      v89[1] = v87;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_32;
    }
  }

  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v34 = v0[19];
  v35 = v0[14];
  v36 = v0[15];
  v37 = v0[11];
  v38 = __swift_project_value_buffer(v35, qword_27F832020);
  (*(v36 + 16))(v34, v38, v35);
  v39 = v37;
  v40 = sub_2561EDA70();
  v41 = sub_2561EE350();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[19];
  v44 = v0[14];
  v45 = v0[15];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v93[0] = v47;
    *v46 = 136315138;
    v48 = sub_2561EE2B0();
    v50 = sub_2561E05FC(v48, v49, v93);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_2561D1000, v40, v41, "Failed to fetch properties for dataclass: %s. Trying to renew credentials.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x259C5EC30](v47, -1, -1);
    MEMORY[0x259C5EC30](v46, -1, -1);
  }

  (*(v45 + 8))(v43, v44);
  v51 = swift_task_alloc();
  v0[21] = v51;
  *v51 = v0;
  v51[1] = sub_2561DE9E4;

  return sub_2561DD1A0();
}

uint64_t sub_2561DE9E4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2561DEB5C, 0, 0);
}

uint64_t sub_2561DEB5C()
{
  v69 = v0;
  v1 = v0[20];
  v2 = v0[11];
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  v4 = [v3 propertiesForDataclass_];

  if (!v4 || (v5 = sub_2561EE270(), v4, v6 = sub_2561DF34C(v5), , !v6))
  {
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    v30 = v0[11];
    v31 = __swift_project_value_buffer(v29, qword_27F832020);
    (*(v28 + 16))(v27, v31, v29);
    v32 = v30;
    v33 = sub_2561EDA70();
    v34 = sub_2561EE350();

    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[14];
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68[0] = v40;
      *v39 = 136315138;
      v41 = sub_2561EE2B0();
      v43 = sub_2561E05FC(v41, v42, v68);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2561D1000, v33, v34, "Still not able to fetch properties for dataclass: %s. Failing.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x259C5EC30](v40, -1, -1);
      MEMORY[0x259C5EC30](v39, -1, -1);
    }

    (*(v37 + 8))(v36, v38);
    v44 = v0[11];
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    *v45 = v44;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v46 = v44;
    goto LABEL_23;
  }

  if (!*(v6 + 16) || (v7 = sub_2561E0BE8(v0[9], v0[10]), (v8 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_2561E0C60(*(v6 + 56) + 32 * v7, (v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v47 = v0[17];
    v48 = v0[14];
    v49 = v0[15];
    v50 = __swift_project_value_buffer(v48, qword_27F832020);
    (*(v49 + 16))(v47, v50, v48);

    v51 = sub_2561EDA70();
    v52 = sub_2561EE350();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[17];
    v55 = v0[14];
    v56 = v0[15];
    if (v53)
    {
      v58 = v0[9];
      v57 = v0[10];
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_2561E05FC(v58, v57, v68);
      _os_log_impl(&dword_2561D1000, v51, v52, "Failed to fetch URL for key: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x259C5EC30](v60, -1, -1);
      MEMORY[0x259C5EC30](v59, -1, -1);
    }

    (*(v56 + 8))(v54, v55);
    v62 = v0[9];
    v61 = v0[10];
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    *v63 = v62;
    v63[1] = v61;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_23;
  }

  v9 = v0[13];
  v11 = v0[6];
  v10 = v0[7];
  sub_2561ED960();
  v12 = sub_2561ED970();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_2561D8584(v0[13], &qword_27F830280, &qword_2561EEAF0);
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v14 = v0[18];
    v15 = v0[14];
    v16 = v0[15];
    v17 = __swift_project_value_buffer(v15, qword_27F832020);
    (*(v16 + 16))(v14, v17, v15);

    v18 = sub_2561EDA70();
    v19 = sub_2561EE350();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[18];
    v22 = v0[14];
    v23 = v0[15];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v68[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2561E05FC(v11, v10, v68);
      _os_log_impl(&dword_2561D1000, v18, v19, "Failed to create URL from string: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x259C5EC30](v25, -1, -1);
      MEMORY[0x259C5EC30](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    *v26 = v11;
    v26[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_23:

    v64 = v0[1];
    goto LABEL_24;
  }

  v66 = v0[13];
  v67 = v0[8];

  (*(v13 + 32))(v67, v66, v12);

  v64 = v0[1];
LABEL_24:

  return v64();
}

unint64_t sub_2561DF34C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304F0, &qword_2561EFB90);
    v2 = sub_2561EE470();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2561E1058(*(a1 + 48) + 40 * v12, v27);
        sub_2561E0C60(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2561E1058(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2561E0C60(v25 + 8, v20);
        sub_2561D8584(v24, &qword_27F8304F8, &qword_2561EFB98);
        v21 = v18;
        sub_2561E11C0(v20, v22);
        v13 = v21;
        sub_2561E11C0(v22, v23);
        sub_2561E11C0(v23, &v21);
        result = sub_2561E0BE8(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_2561E11C0(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2561E11C0(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2561D8584(v24, &qword_27F8304F8, &qword_2561EFB98);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MCCNetworkController.apiGatewayHost()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2561DF6CC;

  return sub_2561DF7DC(0xD000000000000020, 0x80000002561F0340);
}

uint64_t sub_2561DF6CC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2561DF7DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2561EDA90();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2561ED8E0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8304E8, &qword_2561EFB88);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830280, &qword_2561EEAF0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_2561ED970();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2561DF9D4, 0, 0);
}

uint64_t sub_2561DF9D4()
{
  v1 = *MEMORY[0x277CB89C8];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2561DFA80;
  v3 = v0[13];
  v4 = v0[3];
  v5 = v0[2];

  return MCCNetworkController.url(for:dataClass:)(v3, v5, v4, v1);
}

uint64_t sub_2561DFA80()
{

  if (v0)
  {

    v1 = sub_2561DFF24;
  }

  else
  {
    v1 = sub_2561DFB98;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2561DFB98()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_2561ED8B0();
  v8 = *(v7 + 48);
  if (!v8(v5, 1, v6))
  {
    MEMORY[0x259C5DAD0](0, 0xE000000000000000);
  }

  v9 = v0[11];
  v10 = v0[8];
  if (v8(v9, 1, v10))
  {
    goto LABEL_6;
  }

  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  (*(v15 + 16))(v14, v9, v10);
  sub_2561ED8C0();
  (*(v15 + 8))(v14, v10);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_2561D8584(v0[12], &qword_27F830280, &qword_2561EEAF0);
    v9 = v0[11];
LABEL_6:
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v20 = v0[2];
    v19 = v0[3];
    type metadata accessor for MCCError(0);
    sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
    swift_allocError();
    *v21 = v20;
    v21[1] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v22 = *(v17 + 8);

    v22(v16, v18);
    sub_2561D8584(v9, &qword_27F8304E8, &qword_2561EFB88);

    v23 = v0[1];

    return v23();
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v29 = v0[11];
  v28 = v0[12];
  v30 = sub_2561ED930();
  v34 = v31;
  v35 = v30;
  v32 = *(v26 + 8);
  v32(v25, v27);
  v32(v28, v27);
  sub_2561D8584(v29, &qword_27F8304E8, &qword_2561EFB88);

  v33 = v0[1];

  return v33(v35, v34);
}

uint64_t sub_2561DFF24()
{
  v1 = v0[13];
  (*(v0[15] + 56))(v1, 1, 1, v0[14]);
  sub_2561D8584(v1, &qword_27F830280, &qword_2561EEAF0);
  if (qword_27F830268 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v4, qword_27F832020);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2561EDA70();
  v7 = sub_2561EE350();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2561D1000, v6, v7, "Failed to get API gateway host", v8, 2u);
    MEMORY[0x259C5EC30](v8, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  (*(v10 + 8))(v9, v11);
  type metadata accessor for MCCError(0);
  sub_2561E05B4(&qword_27F8302C0, type metadata accessor for MCCError, &protocol conformance descriptor for MCCError);
  swift_allocError();
  *v14 = v13;
  v14[1] = v12;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t MCCNetworkController.commandCenterHost()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2561E133C;

  return sub_2561DF7DC(0xD000000000000026, 0x80000002561F0370);
}

uint64_t sub_2561E0230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830528, &qword_2561EFBC8);
    v2 = sub_2561EE470();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2561E11C0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2561E11C0(v29, v30);
    result = sub_2561EE3F0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2561E11C0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2561E04E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830520, &qword_2561EFBC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2561E05B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2561E05FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2561E06C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2561E0C60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2561E06C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2561E07D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2561EE450();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2561E07D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2561E0820(a1, a2);
  sub_2561E0950(&unk_286842AD8);
  return v3;
}

void *sub_2561E0820(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2561E0A3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2561EE450();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2561EE2F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2561E0A3C(v10, 0);
        result = sub_2561EE420();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2561E0950(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2561E0AB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2561E0A3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830500, &qword_2561EFBA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2561E0AB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830500, &qword_2561EFBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2561E0BA4(uint64_t a1)
{
  v2 = sub_2561EE3F0();

  return sub_2561E0F90(a1, v2);
}

unint64_t sub_2561E0BE8(uint64_t a1, uint64_t a2)
{
  sub_2561EE510();
  sub_2561EE2D0();
  v4 = sub_2561EE530();

  return sub_2561E1108(a1, a2, v4);
}

uint64_t sub_2561E0C60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2561E0CC0()
{
  result = qword_27F8304D8;
  if (!qword_27F8304D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304D8);
  }

  return result;
}

unint64_t sub_2561E0D18()
{
  result = qword_27F8304E0;
  if (!qword_27F8304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8304E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So17AAGrandSlamSignerCSgSg(unint64_t *a1)
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

uint64_t sub_2561E0EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2561E0F40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2561E0F90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2561E1058(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C5E600](v9, a1);
      sub_2561E10B4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2561E1108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2561EE4C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_2561E11C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_2561E11D4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2561E11E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830530, &unk_2561EFBD0);
    v3 = sub_2561EE470();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2561E0BE8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2561E12F8(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t iCloudMailAccountUIFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for iCloudMailAccountUIFeatureFlag;
  v2[4] = sub_2561E13B8();
  v0 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2561E13B8()
{
  result = qword_27F830538;
  if (!qword_27F830538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830538);
  }

  return result;
}

uint64_t iCloudMailAccountUIFeatureFlag.hashValue.getter()
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

uint64_t sub_2561E1480()
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

uint64_t sub_2561E14EC(uint64_t a1)
{
  sub_2561EE510();
  MEMORY[0x259C5E720](0);
  return sub_2561EE530();
}

unint64_t sub_2561E1530()
{
  result = qword_27F830540;
  if (!qword_27F830540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830540);
  }

  return result;
}

CGFloat sub_2561E15E8()
{
  v0 = sub_2561ED8A0();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_2561EE2B0();
  sub_2561EE410();
  if (!*(v1 + 16) || (v2 = sub_2561E0BA4(&v5), (v3 & 1) == 0))
  {

    sub_2561E10B4(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_2561E0C60(*(v1 + 56) + 32 * v2, &v6);
  sub_2561E10B4(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_2561E1C00(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_2561E16EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830548, &qword_2561EFCB8);
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  MEMORY[0x28223BE20](v0);
  v31 = &v28 - v2;
  v3 = sub_2561EE3A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830550, &qword_2561EFCC0);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v28 = &v28 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  sub_2561EE3B0();

  sub_2561E1B60();
  sub_2561EDAC0();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = [v12 defaultCenter];
  sub_2561EE3B0();

  v16 = v29;
  sub_2561EDAC0();
  v14(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830560, &qword_2561EFCC8);
  v17 = *(v30 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2561EF950;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v22 = v28;
  v21(v20, v28, v7);
  v21(v20 + v17, v16, v7);
  sub_2561E1BB8(&qword_27F830568, &qword_27F830550, &qword_2561EFCC0, MEMORY[0x277CBCC08]);
  v23 = v31;
  sub_2561EDAA0();
  sub_2561E1BB8(&qword_27F830570, &qword_27F830548, &qword_2561EFCB8, MEMORY[0x277CBCD48]);
  v24 = v32;
  v25 = sub_2561EDAB0();
  (*(v33 + 8))(v23, v24);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v22, v7);
  return v25;
}

unint64_t sub_2561E1B60()
{
  result = qword_27F830558;
  if (!qword_27F830558)
  {
    sub_2561EE3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830558);
  }

  return result;
}

uint64_t sub_2561E1BB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2561E1C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830578, &qword_2561EFCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2561E1C68()
{
  v1 = v0;
  v2 = sub_2561ED9F0();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2561EDA20();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2561ED9A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2561EDA50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 aa_addClientInfoHeaders];
  [v1 aa_addMultiUserDeviceHeaderIfEnabled];
  v15 = sub_2561EE280();
  [v1 aa:v15 addContentTypeHeaders:?];

  [v1 ak_addDeviceUDIDHeader];
  v16 = [objc_opt_self() systemTimeZone];
  sub_2561EDA40();

  sub_2561ED990();
  sub_2561EDA30();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    v19 = sub_2561EE280();

    v20 = sub_2561EE280();
    [v1 setValue:v19 forHTTPHeaderField:v20];
  }

  v21 = [objc_opt_self() currentInfo];
  if (!v21)
  {
    __break(1u);
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v21 udid];

  v24 = sub_2561EE280();
  [v1 setValue:v23 forHTTPHeaderField:v24];

  v25 = [objc_opt_self() currentLocale];
  sub_2561EDA10();

  v26 = v40;
  sub_2561EDA00();
  (*(v38 + 8))(v6, v39);
  sub_2561ED9E0();
  (*(v41 + 8))(v26, v42);
  v27 = sub_2561EE280();

  v28 = sub_2561EE280();
  [v1 setValue:v27 forHTTPHeaderField:v28];

  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v29 setDateStyle_];
  [v29 setTimeStyle_];
  v30 = [v29 dateFormat];
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v30;

  v32 = sub_2561EE280();
  [v1 setValue:v31 forHTTPHeaderField:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v33 setDateStyle_];
  [v33 setTimeStyle_];
  v34 = [v33 dateFormat];
  if (v34)
  {
    v35 = v34;

    v36 = sub_2561EE280();
    [v1 setValue:v35 forHTTPHeaderField:v36];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2561E226C()
{
  v1 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2561EDA90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v23[0] = 0;
  v7 = [v6 anisetteDataWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v23[0];
    v10 = [v8 machineID];
    v11 = sub_2561EE280();
    [v1 setValue:v10 forHTTPHeaderField:v11];

    v12 = [v8 oneTimePassword];
    v13 = sub_2561EE280();
    [v1 setValue:v12 forHTTPHeaderField:v13];

    v23[0] = [v8 routingInfo];
    sub_2561EE4B0();
    v14 = sub_2561EE280();

    v15 = sub_2561EE280();
    [v1 setValue:v14 forHTTPHeaderField:v15];
  }

  else
  {
    v16 = v23[0];
    v17 = sub_2561ED920();

    swift_willThrow();
    if (qword_27F830268 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_27F832020);
    (*(v3 + 16))(v5, v18, v2);
    v19 = sub_2561EDA70();
    v20 = sub_2561EE350();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2561D1000, v19, v20, "Can't get anisette data", v21, 2u);
      MEMORY[0x259C5EC30](v21, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_2561E25E8()
{
  v1 = v0;
  v2 = sub_2561ED9D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2561EE280();
  v11 = [v1 valueForHTTPHeaderField_];

  v7 = v11;
  if (v11)
  {
  }

  else
  {
    sub_2561ED9C0();
    sub_2561ED9B0();
    (*(v3 + 8))(v5, v2);
    v8 = sub_2561EE280();

    v9 = sub_2561EE280();
    [v1 setValue:v8 forHTTPHeaderField:v9];
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2561E2840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2561EDA90();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2561EDA80();
}

uint64_t sub_2561E28B8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2561EE230();
}

uint64_t sub_2561E2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2561EDCE0();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2561EDCF0();
}

uint64_t sub_2561E2B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2561EDCE0();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2561EDCF0();
}

void sub_2561E2C78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F830580 = v1 == 1;
}

uint64_t sub_2561E2CE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  sub_2561EE140();
  return v2;
}

uint64_t sub_2561E2E44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830818, &qword_2561F0020);
  sub_2561EE160();
  return v2;
}

uint64_t OBKListView.init(title:detailText:caption:primaryButton:secondaryButton:applyListRowBackground:headerImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ValueMetadata *a17)
{
  v42 = &type metadata for Solarium;
  v20 = sub_2561D9210();
  v43 = v20;
  LOBYTE(v39) = 0;
  v21 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v22 = 0;
  if (v21)
  {
    v42 = &type metadata for Solarium;
    v43 = v20;
    LOBYTE(v39) = 1;
    v22 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = a17;
  v23 = type metadata accessor for OBKListView(0, &v39);
  *(a9 + v23[21]) = v22 & 1;
  v24 = a9 + v23[22];
  v44 = 0;
  sub_2561EE130();
  v25 = v40;
  *v24 = v39;
  *(v24 + 8) = v25;
  v26 = a9 + v23[23];
  v44 = 0;
  sub_2561EE130();
  v27 = v40;
  *v26 = v39;
  *(v26 + 8) = v27;
  v28 = *(a6 + 48);
  *(a9 + 96) = *(a6 + 32);
  *(a9 + 112) = v28;
  *(a9 + 128) = *(a6 + 64);
  v29 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v29;
  v30 = *(a7 + 48);
  *(a9 + 184) = *(a7 + 32);
  *(a9 + 200) = v30;
  *(a9 + 216) = *(a7 + 64);
  v31 = *(a7 + 16);
  *(a9 + 152) = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 240) = 0;
  *(a9 + 248) = 0;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13;
  *(a9 + 144) = *(a6 + 80);
  *(a9 + 232) = *(a7 + 80);
  *(a9 + 168) = v31;
  result = sub_2561E30CC(a5, a9 + v23[19]);
  *(a9 + v23[20]) = (a8 == 2) | a8 & 1;
  return result;
}

uint64_t sub_2561E30CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OBKListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v61 = v3;
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v70 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8, MEMORY[0x277CBCD90]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_2561EE1B0();
  v53 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v51 = &WitnessTable - v11;
  v62 = a1;
  v12 = a1 - 8;
  v52 = *(a1 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v50 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &WitnessTable - v17;
  v68 = v16;
  v69 = v5;
  v57 = v5;
  v19 = swift_getOpaqueTypeMetadata2();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x28223BE20](v19);
  v54 = &WitnessTable - v20;
  v21 = sub_2561EDD00();
  v22 = v60;
  v58 = *(v21 - 8);
  v59 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &WitnessTable - v24;
  if (*(v22 + *(v12 + 92)) == 1)
  {
    v53 = &WitnessTable - v24;
    v26 = v62;
    v27 = v22;
    sub_2561E3CC4(v62, v18);
    sub_2561EDE50();
    if (qword_27F830278 != -1)
    {
      swift_once();
    }

    v28 = v54;
    v29 = v57;
    sub_2561EDFB0();
    (*(v15 + 8))(v18, v14);
    LODWORD(v51) = sub_2561E46E4(v26);
    v30 = v52;
    v31 = v50;
    (*(v52 + 16))(v50, v27, v26);
    v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v61;
    *(v33 + 24) = *(v26 + 24);
    *(v33 + 40) = *(v26 + 40);
    (*(v30 + 32))(v33 + v32, v31, v26);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
    v68 = v14;
    v69 = v29;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_2561E5E84();
    v37 = v56;
    v68 = v56;
    v69 = v34;
    v70 = v35;
    OpaqueTypeConformance2 = v36;
    swift_getOpaqueTypeMetadata2();
    sub_2561EDB60();
    v68 = v37;
    v69 = v34;
    v70 = v35;
    OpaqueTypeConformance2 = v36;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    View.if<A>(_:content:)(v51 & 1, &v68);

    (*(v55 + 8))(v28, v37);
    v38 = swift_getWitnessTable();
    v25 = v53;
    sub_2561E2A88(&v68, MEMORY[0x277CE11C8], v6, MEMORY[0x277CE11C0], v38);
  }

  else
  {
    MEMORY[0x28223BE20](v23);
    v39 = v62;
    *(&WitnessTable - 6) = v61;
    *(&WitnessTable - 5) = *(v39 + 24);
    *(&WitnessTable - 3) = *(v39 + 40);
    *(&WitnessTable - 2) = v22;
    sub_2561EDCB0();
    sub_2561EE1A0();
    v40 = swift_getWitnessTable();
    v41 = v53;
    v42 = *(v53 + 2);
    v43 = v51;
    v42(v51, v9, v6);
    v44 = *(v41 + 1);
    v44(v9, v6);
    v42(v9, v43, v6);
    sub_2561E2B80(v9, MEMORY[0x277CE11C8], v6, MEMORY[0x277CE11C0], v40);
    v44(v9, v6);
    v44(v43, v6);
  }

  v45 = swift_getWitnessTable();
  v66 = MEMORY[0x277CE11C0];
  v67 = v45;
  v46 = v59;
  swift_getWitnessTable();
  v47 = v58;
  (*(v58 + 16))(v63, v25, v46);
  return (*(v47 + 8))(v25, v46);
}

uint64_t sub_2561E3CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v62 = a2;
  v60 = *(a1 - 8);
  v2 = a1 - 8;
  *&v46 = a1 - 8;
  MEMORY[0x28223BE20](a1 - 8);
  v58 = v3;
  v59 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2561EDD60();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v63 = *(v2 + 24);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  v5 = sub_2561EE220();
  v43 = v5;
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x277D84A98];
  v70 = v5;
  v71 = MEMORY[0x277D84AA8];
  v72 = WitnessTable;
  v6 = sub_2561EDEF0();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = swift_getWitnessTable();
  v69 = v6;
  v70 = v9;
  v10 = v9;
  v40 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v40 - v12;
  v69 = v6;
  v70 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  v70 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  v18 = v51;
  v19 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8, MEMORY[0x277CBCD90]);
  v47 = OpaqueTypeMetadata2;
  v69 = OpaqueTypeMetadata2;
  v70 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v48 = v17;
  v69 = v17;
  v70 = v15;
  v53 = v15;
  v45 = v19;
  v71 = v19;
  v72 = v20;
  v44 = v20;
  v55 = sub_2561EDBB0();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v22 = &v40 - v21;
  v23 = *(v46 + 32);
  v65 = v63;
  v66 = v23;
  v46 = *(v46 + 40);
  v67 = v46;
  v68 = v64;
  sub_2561EDEE0();
  sub_2561EE050();
  (*(v41 + 8))(v8, v6);
  sub_2561EDD50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830870, &qword_2561F0050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2561EF950;
  LOBYTE(OpaqueTypeConformance2) = sub_2561EDE40();
  *(inited + 32) = OpaqueTypeConformance2;
  v25 = sub_2561EDE20();
  *(inited + 33) = v25;
  sub_2561EDE30();
  sub_2561EDE30();
  if (sub_2561EDE30() != OpaqueTypeConformance2)
  {
    sub_2561EDE30();
  }

  sub_2561EDE30();
  if (sub_2561EDE30() != v25)
  {
    sub_2561EDE30();
  }

  v26 = v50;
  v27 = v47;
  sub_2561EE000();
  (*(v56 + 8))(v18, v57);
  (*(v49 + 8))(v13, v27);
  v69 = sub_2561E16EC();
  v28 = v60;
  v29 = v59;
  v30 = v61;
  (*(v60 + 16))(v59, v64, v61);
  v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *&v33 = v63;
  *(&v33 + 1) = v23;
  v34 = v46;
  *(v32 + 16) = v33;
  *(v32 + 32) = v34;
  (*(v28 + 32))(v32 + v31, v29, v30);
  v35 = v53;
  sub_2561EE0B0();

  (*(v52 + 8))(v26, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830878, &qword_2561F0058);
  sub_2561EDBD0();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2561EF230;
  sub_2561EDBC0();
  v37 = v55;
  v38 = swift_getWitnessTable();
  MEMORY[0x259C5E220](1, v36, v37, v38);

  return (*(v54 + 8))(v22, v37);
}

BOOL sub_2561E46E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_2561D7E98(v1 + *(a1 + 76), &v10 - v4, &qword_27F830368, &qword_2561EFCE0);
  v6 = type metadata accessor for OBKCaption(0);
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_2561D8584(v5, &qword_27F830368, &qword_2561EFCE0);
  if (v8 == 1 && !*(v1 + 72))
  {
    return *(v1 + 160) != 0;
  }

  return v7;
}

uint64_t sub_2561E47F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v34 = a5;
  v35 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v36 = a1;
  v37 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EDEF0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8, MEMORY[0x277CBCD90]);
  swift_getOpaqueTypeConformance2();
  sub_2561EDBB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_2561E5E84();
  v45 = OpaqueTypeMetadata2;
  v46 = v28;
  v47 = OpaqueTypeConformance2;
  v48 = v8;
  v29 = MEMORY[0x277CDE708];
  v27 = swift_getOpaqueTypeMetadata2();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &OpaqueTypeConformance2 - v9;
  v11 = sub_2561EDB60();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &OpaqueTypeConformance2 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &OpaqueTypeConformance2 - v16;
  v38 = v31;
  v39 = v32;
  v40 = v34;
  v41 = v35;
  v42 = v33;
  sub_2561EDCB0();
  v18 = swift_checkMetadataState();
  v19 = OpaqueTypeConformance2;
  v20 = v28;
  sub_2561EDFC0();
  sub_2561EDE80();
  v45 = v18;
  v46 = v20;
  v47 = v19;
  v48 = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v27;
  sub_2561EE090();
  (*(v30 + 8))(v10, v22);
  v43 = v21;
  v44 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v23 = *(v12 + 16);
  v23(v17, v15, v11);
  v24 = *(v12 + 8);
  v24(v15, v11);
  v23(v37, v17, v11);
  return (v24)(v17, v11);
}

uint64_t sub_2561E4EF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_2561EDCA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = a1;
  *(&v47 + 1) = a2;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  v13 = type metadata accessor for OBKListView(0, &v47);
  sub_2561E51E4(v13, v45);
  v41 = v45[12];
  v42 = v45[13];
  v43 = v45[14];
  v44 = v46;
  v37 = v45[8];
  v38 = v45[9];
  v39 = v45[10];
  v40 = v45[11];
  v33 = v45[4];
  v34 = v45[5];
  v35 = v45[6];
  v36 = v45[7];
  v29 = v45[0];
  v30 = v45[1];
  v14 = v28;
  v31 = v45[2];
  v32 = v45[3];
  sub_2561EDC90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305F0, &qword_2561EFD40);
  sub_2561E5FD8();
  sub_2561EE040();
  (*(v10 + 8))(v12, v9);
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  sub_2561D8584(&v47, &qword_27F8305F0, &qword_2561EFD40);
  LOBYTE(a4) = sub_2561EDE90();
  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305E8, &qword_2561EFD38) + 36);
  *v15 = a4;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  v16 = sub_2561EDE50();
  if (qword_27F830278 != -1)
  {
    swift_once();
  }

  sub_2561EDB00();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305D0, &qword_2561EFD30);
  v26 = v14 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

double sub_2561E51E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2561EDCB0();
  v15 = 0;
  sub_2561E87F8(v3, a1[2], a1[3], a1[4], a1[5], &v16);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  sub_2561D7E98(&v23, v13, &qword_27F8306D0, &qword_2561EFEE0);
  sub_2561D8584(v27, &qword_27F8306D0, &qword_2561EFEE0);
  *&v14[7] = v23;
  *&v14[23] = v24;
  *&v14[39] = v25;
  *&v14[55] = v26;
  LOBYTE(a1) = v15;
  LOBYTE(v3) = sub_2561EDE90();
  v13[0] = 1;
  sub_2561EE1F0();
  sub_2561EDBE0();
  v7 = *v14;
  *(a2 + 33) = *&v14[16];
  v8 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v8;
  *(a2 + 17) = v7;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  v9 = v18;
  *(a2 + 184) = v19;
  v10 = v21;
  *(a2 + 200) = v20;
  *(a2 + 216) = v10;
  *(a2 + 232) = v22;
  result = *&v16;
  v12 = v17;
  *(a2 + 136) = v16;
  *(a2 + 152) = v12;
  *a2 = v6;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = a1;
  *(a2 + 80) = *&v14[63];
  *(a2 + 88) = v3;
  *(a2 + 128) = 1;
  *(a2 + 168) = v9;
  return result;
}

uint64_t View.if<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x28223BE20](v7))
  {
    v10(v5);
  }

  else
  {
    (*(v12 + 16))(v9, v5, v11);
  }

  result = sub_2561EE1C0();
  *a5 = result;
  return result;
}

uint64_t sub_2561E54B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v42 = a4;
  *(&v42 + 1) = a5;
  v43 = a1;
  v44 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830588, &qword_2561EFCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  sub_2561EE1E0();
  swift_getTupleTypeMetadata2();
  v9 = sub_2561EE220();
  WitnessTable = swift_getWitnessTable();
  *&v53[0] = MEMORY[0x277D84A98];
  *(&v53[0] + 1) = v9;
  *&v53[1] = MEMORY[0x277D84AA8];
  *(&v53[1] + 1) = WitnessTable;
  v11 = sub_2561EDEF0();
  v12 = swift_getWitnessTable();
  *&v53[0] = v11;
  *(&v53[0] + 1) = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v53[0] = v11;
  *(&v53[0] + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v53[0] = OpaqueTypeMetadata2;
  *(&v53[0] + 1) = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_2561E1BB8(&qword_27F8305C0, &qword_27F830588, &qword_2561EFCE8, MEMORY[0x277CBCD90]);
  *&v53[0] = OpaqueTypeMetadata2;
  *(&v53[0] + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  *&v53[0] = v8;
  *(&v53[0] + 1) = v15;
  *&v53[1] = v16;
  *(&v53[1] + 1) = v17;
  v18 = sub_2561EDBB0();
  v19 = swift_getWitnessTable();
  *&v53[0] = v18;
  *(&v53[0] + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v41 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  *&v53[0] = v18;
  *(&v53[0] + 1) = v19;
  v23 = swift_getOpaqueTypeConformance2();
  *&v53[0] = v20;
  *(&v53[0] + 1) = v23;
  v40[1] = MEMORY[0x277D4D750];
  v24 = swift_getOpaqueTypeMetadata2();
  v40[0] = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v40 - v28;
  *&v53[0] = a2;
  *(&v53[0] + 1) = a3;
  v53[1] = v42;
  v30 = type metadata accessor for OBKListView(0, v53);
  sub_2561E3CC4(v30, v22);
  sub_2561EDF60();
  v41[1](v22, v20);
  v31 = v40[0];
  *&v53[0] = v20;
  *(&v53[0] + 1) = v23;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = *(v31 + 16);
  *&v42 = v29;
  (v33)(v29, v27, v24);
  v34 = *(v31 + 8);
  *(&v42 + 1) = v27;
  v34(v27, v24);
  if (sub_2561E46E4(v30))
  {
    v41 = v33;
    sub_2561E51E4(v30, v53);
    v49[12] = v53[12];
    v49[13] = v53[13];
    v49[14] = v53[14];
    *&v49[15] = *&v53[15];
    v49[8] = v53[8];
    v49[9] = v53[9];
    v49[10] = v53[10];
    v49[11] = v53[11];
    v49[4] = v53[4];
    v49[5] = v53[5];
    v49[6] = v53[6];
    v49[7] = v53[7];
    v49[0] = v53[0];
    v49[1] = v53[1];
    v49[2] = v53[2];
    v49[3] = v53[3];
    v35 = sub_2561EDE50();
    LOBYTE(v51[0]) = 1;
    v36 = sub_2561EDE50();
    LOBYTE(v50[0]) = 1;
    sub_2561EE1F0();
    sub_2561EDBE0();
    *&v45[55] = *&v51[63];
    *&v45[71] = *&v51[65];
    *&v45[87] = *&v51[67];
    *&v45[103] = v52;
    *&v45[7] = *&v51[57];
    *&v45[23] = *&v51[59];
    *&v45[39] = *&v51[61];
    *&v51[4] = v49[2];
    *&v51[6] = v49[3];
    *v51 = v49[0];
    *&v51[2] = v49[1];
    *&v51[12] = v49[6];
    *&v51[14] = v49[7];
    *&v51[8] = v49[4];
    *&v51[10] = v49[5];
    *&v51[20] = v49[10];
    *&v51[22] = v49[11];
    *&v51[16] = v49[8];
    *&v51[18] = v49[9];
    v51[30] = *&v49[15];
    *&v51[26] = v49[13];
    *&v51[28] = v49[14];
    *&v51[24] = v49[12];
    LOBYTE(v51[31]) = v35;
    memset(&v51[32], 0, 32);
    LOBYTE(v51[36]) = 1;
    LOBYTE(v51[37]) = v36;
    memset(&v51[38], 0, 32);
    v33 = v41;
    LOBYTE(v51[42]) = 1;
    *(&v51[50] + 1) = *&v45[64];
    *(&v51[52] + 1) = *&v45[80];
    *(&v51[54] + 1) = *&v45[96];
    *(&v51[42] + 1) = *v45;
    *(&v51[44] + 1) = *&v45[16];
    *(&v51[46] + 1) = *&v45[32];
    *(&v51[48] + 1) = *&v45[48];
    v51[56] = *(&v52 + 1);
    nullsub_1();
    memcpy(v53, v51, 0x1C8uLL);
  }

  else
  {
    v37.n128_f64[0] = sub_2561ED118(v53);
  }

  v38 = v42;
  (v33)(*(&v42 + 1), v42, v24, v37);
  v50[0] = *(&v38 + 1);
  memcpy(v49, v53, 0x1C8uLL);
  v50[1] = v49;
  sub_2561D7E98(v53, v51, &qword_27F8305C8, &unk_2561EFD20);
  v48[0] = v24;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305C8, &unk_2561EFD20);
  v46 = v32;
  v47 = sub_2561ED164();
  sub_2561E28B8(v50, 2uLL, v48);
  sub_2561D8584(v53, &qword_27F8305C8, &unk_2561EFD20);
  v34(v38, v24);
  memcpy(v51, v49, 0x1C8uLL);
  sub_2561D8584(v51, &qword_27F8305C8, &unk_2561EFD20);
  return (v34)(*(&v38 + 1), v24);
}

uint64_t sub_2561E5DC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for OBKListView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_2561E47F8(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_2561E5E84()
{
  result = qword_27F8305D8;
  if (!qword_27F8305D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305D0, &qword_2561EFD30);
    sub_2561E5F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305D8);
  }

  return result;
}

unint64_t sub_2561E5F10()
{
  result = qword_27F8305E0;
  if (!qword_27F8305E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305E8, &qword_2561EFD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305F0, &qword_2561EFD40);
    sub_2561E5FD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305E0);
  }

  return result;
}

unint64_t sub_2561E5FD8()
{
  result = qword_27F8305F8;
  if (!qword_27F8305F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305F0, &qword_2561EFD40);
    sub_2561E6064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8305F8);
  }

  return result;
}

unint64_t sub_2561E6064()
{
  result = qword_27F830600;
  if (!qword_27F830600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830608, &qword_2561EFD48);
    sub_2561E1BB8(&qword_27F830610, qword_27F830618, &qword_2561EFD50, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830600);
  }

  return result;
}

uint64_t sub_2561E611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a5;
  v52 = a4;
  v53 = a3;
  v48 = a1;
  v50 = a6;
  v49 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v47 = a2;
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  sub_2561EDB60();
  v8 = sub_2561EDB60();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
  v10 = sub_2561EE1E0();
  v56 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v43 = &v41 - v13;
  v58 = a2;
  v59 = v53;
  v60 = v52;
  v61 = v54;
  v15 = v48;
  v62 = v48;
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  v17 = sub_2561E1BB8(&qword_27F830880, &qword_27F8305A8, &qword_2561EFD08, MEMORY[0x277CE0868]);
  v78 = v16;
  v79 = v17;
  v18 = swift_getWitnessTable();
  v45 = MEMORY[0x277CE04A0];
  v19 = sub_2561E1BB8(&qword_27F830888, &qword_27F8305B0, &qword_2561EFD10, MEMORY[0x277CE04A0]);
  v76 = v18;
  v77 = v19;
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  v21 = sub_2561ECB80();
  v22 = v51;
  sub_2561E7278(sub_2561E687C, 0, sub_2561ECB68, v57, v8, v9, v20, v21);
  v71 = v20;
  v72 = v21;
  v73 = MEMORY[0x277CE1410];
  v44 = swift_getWitnessTable();
  v23 = v56;
  v42 = *(v56 + 16);
  v42(v14, v22, v10);
  v24 = *(v23 + 8);
  v56 = v23 + 8;
  v46 = v24;
  v25 = v24(v22, v10);
  v26 = v15;
  (*(v15 + 48))(v25);
  v27 = v47;
  v28 = v53;
  v67 = v47;
  v68 = v53;
  v29 = v52;
  v30 = v54;
  v69 = v52;
  v70 = v54;
  v31 = *(v26 + *(type metadata accessor for OBKListView(0, &v67) + 80));
  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308A0, &qword_2561F0060);
  sub_2561EDB60();
  v33 = sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060, v45);
  v66[1] = v30;
  v66[2] = v33;
  swift_getWitnessTable();
  v34 = v31;
  v35 = v55;
  View.if<A>(_:content:)(v34, &v67);

  (*(v49 + 8))(v35, v28);
  v36 = v67;
  v37 = v51;
  v38 = v43;
  v42(v51, v43, v10);
  v66[0] = v36;
  v67 = v37;
  v68 = v66;

  v65[0] = v10;
  v65[1] = MEMORY[0x277CE11C8];
  v63 = v44;
  v64 = MEMORY[0x277CE11C0];
  sub_2561E28B8(&v67, 2uLL, v65);

  v39 = v46;
  v46(v38, v10);

  return v39(v37, v10);
}

uint64_t sub_2561E687C@<X0>(uint64_t *a1@<X8>)
{
  sub_2561EE0D0();
  result = sub_2561EE1C0();
  *a1 = result;
  return result;
}

uint64_t sub_2561E68C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a3;
  v46 = a4;
  v36 = a1;
  v47 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308A8, &qword_2561F0068);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  sub_2561EE1B0();
  v10 = sub_2561EDB60();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A8, &qword_2561EFD08);
  v13 = sub_2561EDB60();
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B0, &qword_2561EFD10);
  v16 = sub_2561EDB60();
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37 = &v36 - v17;
  v18 = sub_2561EDB60();
  v43 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v39 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v41 = &v36 - v21;
  *&v56 = a2;
  *(&v56 + 1) = v45;
  *&v57 = v46;
  *(&v57 + 1) = a5;
  v46 = type metadata accessor for OBKListView(0, &v56);
  sub_2561E6F7C(v46);
  v22 = sub_2561EDF10();
  v23 = v38;
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  WitnessTable = swift_getWitnessTable();
  v55 = MEMORY[0x277CDFC60];
  v24 = swift_getWitnessTable();
  sub_2561EE0A0();
  sub_2561D8584(v23, &qword_27F8308A8, &qword_2561F0068);
  (*(v40 + 8))(v12, v10);
  v25 = sub_2561E1BB8(&qword_27F830880, &qword_27F8305A8, &qword_2561EFD08, MEMORY[0x277CE0868]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v52 = v24;
  v53 = v25;
  v26 = swift_getWitnessTable();
  v27 = v37;
  sub_2561EDFD0();
  (*(v42 + 8))(v15, v13);
  sub_2561EDE70();
  sub_2561E7200(v46);
  v28 = sub_2561E1BB8(&qword_27F830888, &qword_27F8305B0, &qword_2561EFD10, MEMORY[0x277CE04A0]);
  v50 = v26;
  v51 = v28;
  v29 = swift_getWitnessTable();
  v30 = v39;
  sub_2561EE090();
  (*(v44 + 8))(v27, v16);
  v48 = v29;
  v49 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v31 = v43;
  v32 = *(v43 + 16);
  v33 = v41;
  v32(v41, v30, v18);
  v34 = *(v31 + 8);
  v34(v30, v18);
  v32(v47, v33, v18);
  return (v34)(v33, v18);
}

uint64_t sub_2561E6F7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  sub_2561EDB60();
  sub_2561EDB60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  sub_2561EDD00();
  sub_2561EE3D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
  swift_getTupleTypeMetadata2();
  sub_2561EE220();
  swift_getWitnessTable();
  v4 = sub_2561EE1B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  sub_2561EDCB0();
  v10 = v3;
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = v1;
  sub_2561EE1A0();
  sub_2561EE1F0();
  swift_getWitnessTable();
  sub_2561EE080();
  return (*(v5 + 8))(v7, v4);
}

void sub_2561E7200(uint64_t a1)
{
  if ((*(v1 + *(a1 + 84)) & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
  }
}

uint64_t sub_2561E7278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1);
  v9(v8);
  return sub_2561EE1D0();
}

uint64_t sub_2561E7348@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308A0, &qword_2561F0060);
  v4 = sub_2561EDB60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v16[3] = sub_2561EE0C0();
  sub_2561EE010();

  v12 = sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060, MEMORY[0x277CE04A0]);
  v16[1] = a2;
  v16[2] = v12;
  swift_getWitnessTable();
  v13 = *(v5 + 16);
  v13(v10, v8, v4);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v13(v16[0], v10, v4);
  return (v14)(v10, v4);
}

uint64_t sub_2561E7560(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2561EE210();
  sub_2561EDB40();
}

double sub_2561E75DC(uint64_t a1)
{
  result = 40.0;
  if (!*(v1 + *(a1 + 84)))
  {
    return 15.0;
  }

  return result;
}

uint64_t sub_2561E75FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a3;
  v111 = a5;
  v126 = a4;
  v117 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308B0, &qword_2561F0070);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v102 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8305A0, &qword_2561EFD00);
  v10 = MEMORY[0x28223BE20](v114);
  v116 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v102 - v13;
  MEMORY[0x28223BE20](v12);
  v115 = &v102 - v14;
  v15 = sub_2561EE110();
  v105 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830590, &qword_2561EFCF0);
  v121 = a2;
  v22 = sub_2561EDB60();
  v106 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v102 - v23;
  v25 = sub_2561EDB60();
  v108 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v107 = &v102 - v29;
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
  v122 = sub_2561EDD00();
  v30 = sub_2561EE3D0();
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v35 = *(a1 + 32);
  v118 = v25;
  v119 = v22;
  v124 = v32;
  v125 = v36;
  v123 = &v102 - v37;
  v120 = v33;
  if (v35)
  {
    v38 = v34[5];
    v104 = v34;
    v105 = v38;

    v35(v39);
    sub_2561EDB50();
    sub_2561ECF5C();
    v103 = v35;
    v40 = v24;
    v41 = v121;
    v42 = v126;
    sub_2561EDFF0();
    (*(v19 + 8))(v21, v41);
    sub_2561EE1F0();
    v43 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0, MEMORY[0x277CE0740]);
    v131 = v42;
    v132 = v43;
    WitnessTable = swift_getWitnessTable();
    sub_2561EE070();
    (*(v106 + 8))(v40, v22);
    v129 = WitnessTable;
    v130 = MEMORY[0x277CDF678];
    v45 = swift_getWitnessTable();
    v47 = v107;
    v46 = v108;
    v48 = *(v108 + 16);
    v48(v107, v28, v25);
    v49 = *(v46 + 8);
    v49(v28, v25);
    v48(v28, v47, v25);
    v50 = v104;
    v51 = sub_2561ECC74();
    v52 = v120;
    sub_2561E2A88(v28, v25, v109, v45, v51);
    sub_2561ECFB0(v103, v105);
    v49(v28, v25);
    v49(v47, v25);
    (*(*(v122 - 8) + 56))(v52, 0, 1, v122);
    v127 = v45;
    v128 = v51;
    swift_getWitnessTable();
    v53 = v124;
    v54 = v125;
    v108 = *(v125 + 16);
    (v108)(v123, v52, v124);
    v109 = *(v54 + 8);
    v109(v52, v53);
    v55 = v121;
    v56 = v126;
  }

  else
  {
    v57 = v105;
    v58 = v126;
    if (v34[31])
    {
      v59 = v33;
      v60 = v34;

      sub_2561EE100();
      (*(v57 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
      v61 = sub_2561EE120();

      (*(v57 + 8))(v18, v15);
      sub_2561EDB50();
      sub_2561EE1F0();
      sub_2561EDB30();
      LOBYTE(v155) = 1;
      *&v141[22] = v153;
      *&v141[38] = v154;
      *&v141[6] = v152;
      v139 = v61;
      *v140 = 1;
      *&v140[2] = *v141;
      *&v140[18] = *&v141[16];
      *&v140[34] = *&v141[32];
      v50 = v60;
      *&v140[48] = *(&v154 + 1);
      v62 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0, MEMORY[0x277CE0740]);
      v137 = v58;
      v138 = v62;
      v135 = swift_getWitnessTable();
      v136 = MEMORY[0x277CDF678];
      v63 = v118;
      v64 = swift_getWitnessTable();
      v65 = sub_2561ECC74();
      sub_2561E2B80(&v139, v63, v109, v64, v65);
      v157 = *&v140[16];
      v158 = *&v140[32];
      *&v159 = *&v140[48];
      v155 = v139;
      v156 = *v140;
      sub_2561D8584(&v155, &qword_27F830598, &qword_2561EFCF8);
      (*(*(v122 - 8) + 56))(v59, 0, 1, v122);
      v133 = v64;
      v134 = v65;
      v56 = v58;
      swift_getWitnessTable();
      v67 = v124;
      v66 = v125;
      v108 = *(v125 + 16);
      (v108)(v123, v59, v124);
      v109 = *(v66 + 8);
      v109(v59, v67);
    }

    else
    {
      v68 = v33;
      v50 = v34;
      (*(*(v122 - 8) + 56))(v33, 1, 1, v122);
      v69 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0, MEMORY[0x277CE0740]);
      v70 = v58;
      v151[6] = v58;
      v151[7] = v69;
      v151[4] = swift_getWitnessTable();
      v151[5] = MEMORY[0x277CDF678];
      v71 = swift_getWitnessTable();
      v72 = sub_2561ECC74();
      v151[2] = v71;
      v151[3] = v72;
      swift_getWitnessTable();
      v74 = v124;
      v73 = v125;
      v108 = *(v125 + 16);
      (v108)(v123, v68, v124);
      v56 = v70;
      v109 = *(v73 + 8);
      v109(v68, v74);
    }

    v55 = v121;
  }

  v75 = v55;
  v77 = v110;
  v76 = v111;
  *&v155 = v55;
  *(&v155 + 1) = v110;
  v78 = v56;
  *&v156 = v56;
  *(&v156 + 1) = v111;
  v79 = v50;
  v80 = *(v50 + *(type metadata accessor for OBKListView(0, &v155) + 84));
  v81 = v112;
  if (v80 == 1)
  {
    v82 = sub_2561EDCC0();
    v83 = 0;
  }

  else
  {
    v83 = 0x4020000000000000;
    v82 = sub_2561EDCB0();
  }

  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8308E8, &qword_2561F0088);
  sub_2561E83E0(v79, v75, v77, v78, v76, &v81[*(v84 + 44)]);
  if (v80)
  {
    sub_2561EE200();
  }

  else
  {
    sub_2561EE1F0();
  }

  sub_2561EDBE0();
  v85 = v81;
  v86 = v113;
  sub_2561ECE3C(v85, v113, &qword_27F8308B0, &qword_2561F0070);
  v87 = v114;
  v88 = (v86 + *(v114 + 36));
  v89 = v160;
  v88[4] = v159;
  v88[5] = v89;
  v88[6] = v161;
  v90 = v156;
  *v88 = v155;
  v88[1] = v90;
  v91 = v158;
  v88[2] = v157;
  v88[3] = v91;
  v92 = v115;
  sub_2561ECE3C(v86, v115, &qword_27F8305A0, &qword_2561EFD00);
  v93 = v124;
  v94 = v120;
  v95 = v123;
  (v108)(v120, v123, v124);
  *&v139 = v94;
  v96 = v116;
  sub_2561D7E98(v92, v116, &qword_27F8305A0, &qword_2561EFD00);
  *(&v139 + 1) = v96;
  v151[0] = v93;
  v151[1] = v87;
  v97 = sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0, MEMORY[0x277CE0740]);
  v147 = v126;
  v148 = v97;
  v145 = swift_getWitnessTable();
  v146 = MEMORY[0x277CDF678];
  v98 = swift_getWitnessTable();
  v99 = sub_2561ECC74();
  v143 = v98;
  v144 = v99;
  v142 = swift_getWitnessTable();
  v149 = swift_getWitnessTable();
  v150 = sub_2561ECEA4();
  sub_2561E28B8(&v139, 2uLL, v151);
  sub_2561D8584(v92, &qword_27F8305A0, &qword_2561EFD00);
  v100 = v109;
  v109(v95, v93);
  sub_2561D8584(v96, &qword_27F8305A0, &qword_2561EFD00);
  return v100(v94, v93);
}

uint64_t sub_2561E83E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v62 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830908, &qword_2561F0090);
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v63 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v59 - v14;
  v15 = a1[1];
  v67 = *a1;
  v68 = v15;
  v16 = sub_2561EBCE4();

  v60 = v16;
  v17 = sub_2561EDF50();
  v19 = v18;
  v21 = v20;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  LODWORD(v61) = *(a1 + *(type metadata accessor for OBKListView(0, &v67) + 84));
  if (v61 == 1)
  {
    sub_2561EDEC0();
  }

  else
  {
    sub_2561EDEA0();
  }

  v22 = sub_2561EDF30();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_2561DA350(v17, v19, v21 & 1);

  v29 = v61;
  v30 = v61 ^ 1;
  KeyPath = swift_getKeyPath();
  v67 = v22;
  v68 = v24;
  v26 &= 1u;
  LOBYTE(v69) = v26;
  v70 = v28;
  v71 = KeyPath;
  v72 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830910, &qword_2561F0098);
  sub_2561ECFC0();
  sub_2561EE060();
  sub_2561DA350(v22, v24, v26);

  v32 = a1[3];
  if (v32)
  {
    v67 = a1[2];
    v68 = v32;

    v33 = sub_2561EDF50();
    v35 = v34;
    v37 = v36;
    if (v29)
    {
      sub_2561EDEC0();
    }

    else
    {
      sub_2561EDEB0();
    }

    v42 = sub_2561EDF30();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_2561DA350(v33, v35, v37 & 1);

    v40 = swift_getKeyPath();
    v38 = v46 & 1;
    v60 = v44;
    v61 = v42;
    sub_2561EB9B4(v42, v44, v38);
    v39 = v48;

    v41 = v30;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v50 = v63;
  v49 = v64;
  v51 = *(v64 + 16);
  v52 = v65;
  v51(v63, v66, v65);
  v53 = v62;
  v51(v62, v50, v52);
  v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830930, &qword_2561F00A8) + 48)];
  v56 = v60;
  v55 = v61;
  sub_2561ED078(v61, v60, v38, v39, v40);
  sub_2561ED0C8(v55, v56, v38, v39, v40);
  *v54 = v55;
  *(v54 + 1) = v56;
  *(v54 + 2) = v38;
  *(v54 + 3) = v39;
  *(v54 + 4) = v40;
  v54[40] = v41;
  v57 = *(v49 + 8);
  v57(v66, v52);
  sub_2561ED0C8(v55, v56, v38, v39, v40);
  return (v57)(v50, v52);
}

uint64_t sub_2561E87F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v15 = type metadata accessor for OBKListView(0, &v27);
  sub_2561D7E98(a1 + *(v15 + 76), v14, &qword_27F830368, &qword_2561EFCE0);
  v16 = type metadata accessor for OBKCaption(0);
  LODWORD(a5) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_2561D8584(v14, &qword_27F830368, &qword_2561EFCE0);
  if (a5 == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 16711680;
    if (*(a1 + 72))
    {
      goto LABEL_3;
    }

LABEL_9:
    v23 = 1;
    if (!*(a1 + 160))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_2561E8AD8(v15, &v27);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  if (v33)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0;
  }

  v22 = v24 | v32;
  sub_2561EBA50(v27, v28, v29, v30, v31, v32, v33, sub_2561EB96C, sub_2561EB9C4);
  if (!*(a1 + 72))
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_2561E9360(a1, *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), &v27);
  v23 = v27;

  if (!*(a1 + 160))
  {
    goto LABEL_11;
  }

LABEL_10:
  if ((sub_2561E2CE0(v15) & 1) == 0)
  {
    sub_2561EA310(a1, *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), &v27);
    v25 = v27;

    goto LABEL_13;
  }

LABEL_11:
  v25 = 1;
LABEL_13:
  sub_2561EB910(v17, v18, v19, v20, v21, v22);
  sub_2561EB9D4(v23);
  sub_2561EB9D4(v25);
  sub_2561EB9E4(v23);
  sub_2561EB9F4(v17, v18, v19, v20, v21, v22);
  sub_2561EB9E4(v25);
  *a6 = v17;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19;
  *(a6 + 24) = v20;
  *(a6 + 32) = v21;
  *(a6 + 42) = BYTE2(v22);
  *(a6 + 40) = v22;
  *(a6 + 48) = v23;
  *(a6 + 56) = v25;
  sub_2561EB9E4(v25);
  sub_2561EB9E4(v23);
  return sub_2561EB9F4(v17, v18, v19, v20, v21, v22);
}

double sub_2561E8AD8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2561E8B34(v2, a1[2], a1[3], a1[4], a1[5], v9);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 42) = v6;
  return result;
}

double sub_2561E8B34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_2561ED970();
  v82 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830368, &qword_2561EFCE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78[-v15];
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v17 = type metadata accessor for OBKListView(0, &v89);
  v18 = *(v17 + 76);
  v83 = a1;
  sub_2561D7E98(a1 + v18, v16, &qword_27F830368, &qword_2561EFCE0);
  v19 = type metadata accessor for OBKCaption(0);
  if ((*(*(v19 - 8) + 48))(v16, 1, v19) == 1)
  {
    v84 = 0uLL;
    LOBYTE(v85) = 1;
    sub_2561EB850();
    sub_2561EDCF0();
    v84 = v89;
    v86 = 0;
    v85 = v90;
    v87 = 0;
    v88 = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v16;
  v21 = *(v16 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *&v84 = *v16;
      *(&v84 + 1) = v21;
      LOBYTE(v85) = 0;
      sub_2561EB850();
      sub_2561EDCF0();
      v84 = v89;
      v86 = 0;
      v85 = v90;
      v87 = 0;
      v88 = 1;
      goto LABEL_12;
    }

    v23 = *(v16 + 2);
    v79 = v16[24];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8);
    v25 = *(v82 + 32);
    v26 = &v16[*(v24 + 64)];
    v80 = v12;
    v25(v81, v26, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830718, &qword_2561EFF08);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2561EF950;
    v28 = MEMORY[0x277D837D0];
    *(v27 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2561EBC90();
    *(v27 + 64) = v29;
    *(v27 + 32) = v22;
    *(v27 + 40) = v21;
    v30 = sub_2561ED930();
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 72) = v30;
    *(v27 + 80) = v31;
    sub_2561EE2C0();
    sub_2561EDED0();
    v32 = sub_2561EDF30();
    v34 = v33;
    v36 = v35;

    if ((v79 & 1) != 0 || v23 != 2)
    {
      v37 = sub_2561EE0F0();
    }

    else
    {
      v37 = sub_2561EE0E0();
    }

    *&v89 = v37;
    v53 = sub_2561EDF00();
    v55 = v54;
    v57 = v56;
    v58 = v32;
    v60 = v59;
    sub_2561DA350(v58, v34, v36 & 1);

    v61 = (*(v83 + *(v17 + 84)) & 1) == 0;
    KeyPath = swift_getKeyPath();
    *&v84 = v53;
    *(&v84 + 1) = v55;
    *&v85 = v57 & 1;
    *(&v85 + 1) = v60;
    v86 = KeyPath;
    LOBYTE(v87) = v61;
    HIBYTE(v87) = 1;
    sub_2561EB9B4(v53, v55, v57 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561EBB4C();
    sub_2561EDCF0();
    if (HIBYTE(v92))
    {
      v63 = 256;
    }

    else
    {
      v63 = 0;
    }

    v84 = v89;
    v85 = v90;
    v86 = v91;
    v87 = v63 | v92;
    v88 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    sub_2561DA350(v53, v55, v57 & 1);

    (*(v82 + 8))(v81, v80);
  }

  else
  {
    v80 = *(v16 + 2);
    LODWORD(v81) = v16[24];
    *&v89 = v22;
    *(&v89 + 1) = v21;
    sub_2561EBCE4();
    v38 = sub_2561EDF50();
    v40 = v39;
    v42 = v41;
    sub_2561EDED0();
    v43 = sub_2561EDF30();
    v82 = v44;
    v46 = v45;

    sub_2561DA350(v38, v40, v42 & 1);

    if ((v81 & 1) != 0 || v80 != 2)
    {
      v47 = sub_2561EE0F0();
    }

    else
    {
      v47 = sub_2561EE0E0();
    }

    *&v89 = v47;
    v64 = v43;
    v65 = v82;
    v66 = sub_2561EDF00();
    v81 = v67;
    v69 = v68;
    v71 = v70;
    sub_2561DA350(v64, v65, v46 & 1);

    v72 = (*(v83 + *(v17 + 84)) & 1) == 0;
    v73 = swift_getKeyPath();
    *&v84 = v66;
    *(&v84 + 1) = v81;
    *&v85 = v69 & 1;
    *(&v85 + 1) = v71;
    v86 = v73;
    v87 = v72;
    v74 = v66;
    v75 = v66;
    v76 = v81;
    sub_2561EB9B4(v74, v81, v69 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561EBB4C();
    sub_2561EDCF0();
    if (HIBYTE(v92))
    {
      v77 = 256;
    }

    else
    {
      v77 = 0;
    }

    v84 = v89;
    v85 = v90;
    v86 = v91;
    v87 = v77 | v92;
    v88 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306D8, &qword_2561EFEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EBAC8();
    sub_2561EBC04();
    sub_2561EDCF0();
    sub_2561DA350(v75, v76, v69 & 1);
  }

LABEL_13:
  result = *&v89;
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v52 = v93;
  *a6 = v89;
  *(a6 + 16) = v49;
  *(a6 + 32) = v50;
  *(a6 + 40) = v51;
  *(a6 + 42) = v52;
  return result;
}

uint64_t sub_2561E9360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830730, &qword_2561EFF40);
  MEMORY[0x28223BE20](v12);
  v99 = &v82 - v13;
  v14 = sub_2561EDD40();
  v97 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v95 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830738, &qword_2561EFF48);
  MEMORY[0x28223BE20](v98);
  v96 = &v82 - v16;
  v17 = sub_2561EDD80();
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x28223BE20](v17);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830740, &qword_2561EFF50);
  MEMORY[0x28223BE20](v94);
  v93 = &v82 - v19;
  v103 = a2;
  v104 = a3;
  *&v122 = a2;
  *(&v122 + 1) = a3;
  v105 = a4;
  v106 = a5;
  *&v123 = a4;
  *(&v123 + 1) = a5;
  v20 = type metadata accessor for OBKListView(0, &v122);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v102 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830748, &qword_2561EFF58);
  v26 = MEMORY[0x28223BE20](v100);
  result = MEMORY[0x28223BE20](v26);
  v30 = &v82 - v29;
  v31 = *(a1 + 80);
  v122 = *(a1 + 64);
  v123 = v31;
  v32 = *(a1 + 112);
  v126 = *(a1 + 128);
  v124 = *(a1 + 96);
  v125 = v32;
  v127 = *(a1 + 144);
  v128 = BYTE1(v123);
  v129 = v123;
  if (*(&v122 + 1))
  {
    v83 = v28;
    v84 = v14;
    v85 = v12;
    v119 = v122;
    LOWORD(v120[0]) = v123;
    *(v120 + 2) = *(a1 + 82);
    *(&v120[1] + 2) = *(a1 + 98);
    v120[2] = *(a1 + 112);
    v88 = v126;
    v89 = a6;
    *v121 = v126;
    *&v121[8] = *(a1 + 136);
    v86 = *(v21 + 16);
    v87 = v21 + 16;
    v86(v25, a1, v20);
    v33 = (*(v21 + 80) + 136) & ~*(v21 + 80);
    v34 = swift_allocObject();
    v35 = v104;
    *(v34 + 16) = v103;
    *(v34 + 24) = v35;
    v36 = v106;
    *(v34 + 32) = v105;
    *(v34 + 40) = v36;
    v37 = v120[2];
    *(v34 + 80) = v120[1];
    *(v34 + 96) = v37;
    *(v34 + 112) = *v121;
    *(v34 + 128) = *&v121[16];
    v38 = v120[0];
    *(v34 + 48) = v119;
    *(v34 + 64) = v38;
    v39 = (*(v21 + 32))(v34 + v33, v25, v20);
    MEMORY[0x28223BE20](v39);
    *(&v82 - 2) = &v119;
    v117[2] = v124;
    v117[3] = v125;
    v117[4] = v126;
    v118 = v127;
    v117[0] = v122;
    v117[1] = v123;
    sub_2561D7E98(&v122, &v111, &qword_27F830378, &qword_2561EFF60);
    sub_2561D85E4(v117, &v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBDFC();
    sub_2561EE180();
    v40 = &v30[*(v100 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v42 = *MEMORY[0x277CDF420];
    v43 = sub_2561EDB10();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = swift_getKeyPath();
    v44 = *(a1 + *(v20 + 84));
    v101 = v20;
    if (v44)
    {
      sub_2561D7E98(v30, v83, &qword_27F830748, &qword_2561EFF58);
      sub_2561EC1D8();
      v45 = sub_2561EE1C0();
      v100 = v21;
      v46 = v45;
      sub_2561D8584(v30, &qword_27F830748, &qword_2561EFF58);
      *&v111 = v46;
      v47 = v95;
      sub_2561EDD30();
      v48 = sub_2561EC670(&qword_27F830810, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
      v49 = MEMORY[0x277CE11C8];
      v50 = MEMORY[0x277CE11C0];
      v51 = v84;
      sub_2561EDFA0();
      (*(v97 + 8))(v47, v51);
      *&v111 = v49;
      *(&v111 + 1) = v51;
      *&v112 = v50;
      *(&v112 + 1) = v48;
      swift_getOpaqueTypeConformance2();
      v52 = sub_2561EE1C0();
      v21 = v100;
    }

    else
    {
      v54 = v90;
      sub_2561EDD70();
      sub_2561EC1D8();
      sub_2561EC670(&qword_27F8307D0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
      v55 = v92;
      v56 = v93;
      sub_2561EDFA0();
      (*(v91 + 8))(v54, v55);
      v57 = &v56[*(v94 + 36)];
      v58 = *(sub_2561EDBA0() + 20);
      v59 = *MEMORY[0x277CE0118];
      v60 = sub_2561EDC80();
      (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
      __asm { FMOV            V0.2D, #15.0 }

      *v57 = _Q0;
      *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307D8, &qword_2561EFFD0) + 36)] = 256;
      sub_2561EC2BC();
      v66 = sub_2561EE1C0();
      sub_2561D8584(v30, &qword_27F830748, &qword_2561EFF58);
      *&v111 = v66;
      v52 = sub_2561EE1C0();
    }

    v67 = v128 | v129;
    KeyPath = swift_getKeyPath();
    v69 = swift_allocObject();
    *(v69 + 16) = v67 & 1;
    v71 = v101;
    v70 = v102;
    v86(v102, a1, v101);
    *&v108 = v52;
    *(&v108 + 1) = KeyPath;
    v100 = KeyPath;
    v109 = sub_2561EC400;
    v110 = v69;
    v73 = v105;
    v72 = v106;
    v75 = v103;
    v74 = v104;
    if (v88)
    {
      v114 = v125;
      v115 = v126;
      v116 = v127;
      v111 = v122;
      v112 = v123;
      v113 = v124;
      sub_2561D85E4(&v111, v107);
      v98 = v52;
      sub_2561E9F2C(&v108, &v119, v75, v74, v73, v72, v99);
      v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307F0, &qword_2561F0008);
      v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830488, &qword_2561EF820);
      v78 = sub_2561EC418();
      v79 = v21;
      v80 = sub_2561EBCE4();
      v81 = sub_2561E1BB8(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820, MEMORY[0x277CDF028]);
      v107[0] = v76;
      v107[1] = MEMORY[0x277D837D0];
      v107[2] = v77;
      v107[3] = MEMORY[0x277CE0BD8];
      v107[4] = v78;
      v107[5] = v80;
      v107[6] = v81;
      v107[7] = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v53 = sub_2561EE1C0();

      sub_2561D8584(&v122, &qword_27F830378, &qword_2561EFF60);
      (*(v79 + 8))(v102, v101);
    }

    else
    {
      *&v111 = v52;
      *(&v111 + 1) = v100;
      *&v112 = sub_2561EC400;
      *(&v112 + 1) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307F0, &qword_2561F0008);
      sub_2561EC418();
      v53 = sub_2561EE1C0();
      (*(v21 + 8))(v70, v71);
    }

    result = sub_2561D8584(&v122, &qword_27F830378, &qword_2561EFF60);
    a6 = v89;
  }

  else
  {
    v53 = 0;
  }

  *a6 = v53;
  return result;
}

uint64_t sub_2561E9ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 64))
  {
    return (*(a1 + 24))(a1, a2, a3, a4, a5, a6);
  }

  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v6 = type metadata accessor for OBKListView(0, v8);
  return sub_2561E2DE0(1, v6);
}

uint64_t sub_2561E9F2C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a7;
  v11 = a1[1];
  v27 = *a1;
  v28 = v11;
  v12 = a2[6];
  if (a2[8])
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    v14 = 0;
    v12 = 0xE000000000000000;
    v15 = 2;
  }

  else
  {
    v14 = a2[5];

    v15 = 1;
  }

  v24 = v15;
  v26[4] = v14;
  v26[5] = v12;
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v16 = type metadata accessor for OBKListView(0, v26);
  v17 = sub_2561E2E44(v16);
  v21[3] = v18;
  v22 = v17;
  v23 = v21;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307F0, &qword_2561F0008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  sub_2561EC418();
  sub_2561EBCE4();
  sub_2561E1BB8(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820, MEMORY[0x277CDF028]);
  sub_2561EE030();
}

uint64_t sub_2561EA160(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_2561D85E4(a1, v6);
  return sub_2561EE180();
}

uint64_t sub_2561EA224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8])
  {
  }

  sub_2561EBCE4();
  result = sub_2561EDF50();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2561EA29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64))
  {
  }

  sub_2561EBCE4();
  result = sub_2561EDF50();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2561EA310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *&v61 = a4;
  *(&v61 + 1) = a5;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v8 = sub_2561EDC60();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830830, &qword_2561F0038);
  MEMORY[0x28223BE20](v10);
  v59 = &v49 - v11;
  v55 = sub_2561EDB90();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830838, &qword_2561F0040);
  MEMORY[0x28223BE20](v56);
  v54 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830748, &qword_2561EFF58);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  v22 = *(a1 + 152);
  v23 = *(a1 + 200);
  v73[2] = *(a1 + 184);
  v73[3] = v23;
  v73[4] = *(a1 + 216);
  v74 = *(a1 + 232);
  v24 = *(a1 + 168);
  v73[0] = v22;
  v73[1] = v24;
  if (*(&v22 + 1))
  {
    v50 = v8;
    v51 = v10;
    v52 = a6;
    v67 = __PAIR128__(*(&v22 + 1), *&v73[0]);
    v25 = *(a1 + 184);
    v26 = *(a1 + 216);
    v70 = *(a1 + 200);
    v71 = v26;
    v72 = *(a1 + 232);
    v27 = *(a1 + 168);
    v69 = v25;
    v68 = v27;
    v28 = swift_allocObject();
    v29 = v70;
    *(v28 + 48) = v69;
    *(v28 + 64) = v29;
    *(v28 + 80) = v71;
    *(v28 + 96) = v72;
    v30 = v68;
    *(v28 + 16) = v67;
    *(v28 + 32) = v30;
    MEMORY[0x28223BE20](v28);
    *(&v49 - 2) = &v67;
    v31 = *(a1 + 184);
    v32 = *(a1 + 216);
    v65[3] = *(a1 + 200);
    v65[4] = v32;
    v66 = *(a1 + 232);
    v33 = *(a1 + 168);
    v65[0] = *(a1 + 152);
    v65[1] = v33;
    v65[2] = v31;
    sub_2561D7E98(v73, &v62, &qword_27F830378, &qword_2561EFF60);
    sub_2561D85E4(v65, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBDFC();
    sub_2561EE180();
    v34 = &v21[*(v15 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v36 = *MEMORY[0x277CDF420];
    v37 = sub_2561EDB10();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    v62 = v60;
    v63 = v61;
    if (*(a1 + *(type metadata accessor for OBKListView(0, &v62) + 84)) == 1)
    {
      sub_2561EDB80();
      sub_2561EC1D8();
      sub_2561EC670(&qword_27F830850, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
      v39 = v54;
      v38 = v55;
      sub_2561EDFA0();
      (*(v53 + 8))(v13, v38);
      v40 = [objc_opt_self() labelColor];
      *&v39[*(v56 + 36)] = sub_2561EE0C0();
      sub_2561EC6B8();
      v41 = sub_2561EE1C0();
      sub_2561D8584(v21, &qword_27F830748, &qword_2561EFF58);
      *&v62 = v41;
      v42 = sub_2561EE1C0();
    }

    else
    {
      sub_2561D7E98(v21, v18, &qword_27F830748, &qword_2561EFF58);
      sub_2561EC1D8();
      v43 = sub_2561EE1C0();
      sub_2561D8584(v21, &qword_27F830748, &qword_2561EFF58);
      *&v62 = v43;
      v44 = v57;
      sub_2561EDC50();
      sub_2561EC670(&qword_27F830840, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
      v45 = v59;
      v46 = v50;
      sub_2561EDFA0();
      (*(v58 + 8))(v44, v46);
      sub_2561EE1F0();
      sub_2561EDB30();
      v47 = &v45[*(v51 + 36)];
      v48 = v63;
      *v47 = v62;
      *(v47 + 1) = v48;
      *(v47 + 2) = v64;
      sub_2561EC570();
      v42 = sub_2561EE1C0();
    }

    result = sub_2561D8584(v73, &qword_27F830378, &qword_2561EFF60);
    a6 = v52;
  }

  else
  {
    v42 = 0;
  }

  *a6 = v42;
  return result;
}