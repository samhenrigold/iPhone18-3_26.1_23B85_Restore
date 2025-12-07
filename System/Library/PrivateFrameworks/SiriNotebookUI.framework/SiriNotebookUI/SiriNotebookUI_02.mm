void sub_268497840(uint64_t a1)
{
  sub_2684B3924();
  if (v1 <= 0x3F)
  {
    sub_2684B3974();
    if (v2 <= 0x3F)
    {
      sub_268494A84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_268497930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E388;
  if (!qword_28027E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E388);
  }

  return result;
}

unint64_t sub_268497988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E390;
  if (!qword_28027E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E390);
  }

  return result;
}

unint64_t sub_2684979E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E398;
  if (!qword_28027E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E398);
  }

  return result;
}

unint64_t sub_268497A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3A0;
  if (!qword_28027E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3A0);
  }

  return result;
}

unint64_t sub_268497A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3A8;
  if (!qword_28027E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3A8);
  }

  return result;
}

unint64_t sub_268497AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3B0;
  if (!qword_28027E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3B0);
  }

  return result;
}

unint64_t sub_268497B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3B8;
  if (!qword_28027E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3B8);
  }

  return result;
}

unint64_t sub_268497B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3C0;
  if (!qword_28027E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3C0);
  }

  return result;
}

unint64_t sub_268497BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3C8;
  if (!qword_28027E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3C8);
  }

  return result;
}

unint64_t sub_268497C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3D0;
  if (!qword_28027E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3D0);
  }

  return result;
}

uint64_t sub_268497D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_268497DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_2684B59F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696E557375636F66 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_2684B59F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_268497EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E3F8;
  if (!qword_28027E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalTriggerDateFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TemporalTriggerDateFormatStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2684980A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E408;
  if (!qword_28027E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E408);
  }

  return result;
}

unint64_t sub_2684980F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E410;
  if (!qword_28027E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E410);
  }

  return result;
}

unint64_t sub_268498150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E418;
  if (!qword_28027E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E418);
  }

  return result;
}

uint64_t sub_2684981A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_2684B59F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696E557375636F66 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_2684B59F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for SimpleConfirmationSnippetView(uint64_t a1)
{
  result = qword_28027E420;
  if (!qword_28027E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684983B0(uint64_t a1)
{
  result = sub_2684B3DD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268498438@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_2684B3A74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3D44();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = *MEMORY[0x277D5E0D0];
  v13 = *(v6 + 104);
  v62 = v6 + 104;
  v63 = v13;
  v44 = &v44 - v10;
  v15 = v14;
  (v13)(&v44 - v10, v12);
  v16 = *MEMORY[0x277D5DFB0];
  v17 = v2[13];
  v60 = v2 + 13;
  v61 = v17;
  v45 = v4;
  v46 = v1;
  v17(v4, v16, v1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E430, &qword_2684B9580);
  v66[3] = v48;
  v59 = sub_26846ACF0(&qword_28027E438, &qword_28027E430, &qword_2684B9580, &unk_2684B7C28);
  v66[4] = v59;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v58 = v2[2];
  v58(boxed_opaque_existential_1, v4, v1);
  v19 = *(v6 + 16);
  v50 = v6 + 16;
  v57 = v19;
  v49 = v9;
  v20 = v15;
  v19(v9, v11, v15);
  v52 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = v52;
  v22 = swift_allocObject();
  v55 = *(v6 + 32);
  v23 = v22 + v21;
  v24 = v20;
  v55(v23, v9, v20);
  v25 = v48;
  v26 = (boxed_opaque_existential_1 + *(v48 + 52));
  *v26 = sub_2684989E0;
  v26[1] = v22;
  v27 = v25;
  sub_2684B52A4();
  v28 = v2[1];
  v53 = v2 + 1;
  v54 = v28;
  v29 = v45;
  v30 = v46;
  v28(v45, v46);
  v31 = *(v6 + 8);
  v47 = v6 + 8;
  v51 = v31;
  v32 = v44;
  v31(v44, v24);
  v63(v32, *MEMORY[0x277D5E0C8], v24);
  v33 = v29;
  v34 = v29;
  v35 = v30;
  v61(v34, *MEMORY[0x277D5DFA8], v30);
  v36 = v27;
  v65[3] = v27;
  v65[4] = v59;
  v37 = __swift_allocate_boxed_opaque_existential_1(v65);
  v38 = v35;
  v58(v37, v33, v35);
  v39 = v49;
  v57(v49, v32, v24);
  v40 = v52;
  v41 = swift_allocObject();
  v55(v41 + v40, v39, v24);
  v42 = (v37 + *(v36 + 52));
  *v42 = sub_268498ADC;
  v42[1] = v41;
  sub_2684B52A4();
  v54(v33, v38);
  v51(v32, v24);
  return sub_2684B51A4();
}

uint64_t sub_268498924()
{
  sub_2684B51B4();
  sub_268498988();

  return sub_2684B5184();
}

unint64_t sub_268498988()
{
  result = qword_28027D798;
  if (!qword_28027D798)
  {
    sub_2684B51B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D798);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2684B3D44();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_268498A6C@<X0>(uint64_t a1@<X8>)
{
  sub_2684B3D44();

  return sub_26847D254(a1);
}

uint64_t sub_268498AE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_268498B28(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for AppLinkView(uint64_t a1)
{
  result = qword_28027E450;
  if (!qword_28027E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268498BF4(uint64_t a1)
{
  sub_2684B4184();
  if (v1 <= 0x3F)
  {
    sub_268498C90();
    if (v2 <= 0x3F)
    {
      sub_268498CE0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268498C90()
{
  if (!qword_28027E460)
  {
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E460);
    }
  }
}

void sub_268498CE0(uint64_t a1)
{
  if (!qword_28027E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E018, &qword_2684B88D8);
    v1 = sub_2684B4F64();
    if (!v2)
    {
      atomic_store(v1, &qword_28027E468);
    }
  }
}

uint64_t sub_268498D60@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for AppLinkView(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E470, &qword_2684B9630);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = sub_2684B47F4();
  v40 = *(v7 - 1);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E478, &qword_2684B9638);
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = (v1 + *(v2 + 24));
  v14 = v13[1];
  v51 = *v13;
  v52 = v14;
  v53 = v13[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E480, &qword_2684B9640);
  sub_2684B4F34();
  if (v46)
  {
    v39 = v4;
    v42 = v10;
    v16 = v47;
    v15 = v48;
    v17 = v50;
    v38 = v49;
    v18 = v1 + *(v2 + 20);
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = v46;
    if (v20 != 1)
    {
      sub_26846A6D0(v19, 0);
      sub_2684B5704();
      v31 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v19, 0);
      (*(v40 + 8))(v9, v41);
    }

    *&v51 = sub_2684B4F04();
    v32 = swift_allocObject();
    v32[2] = v21;
    v32[3] = v16;
    v33 = v38;
    v32[4] = v15;
    v32[5] = v33;
    v32[6] = v17;
    v41 = v21;

    v34 = MEMORY[0x277CE1088];
    v35 = MEMORY[0x277CE1078];
    sub_2684B4CF4();

    v36 = v42;
    v37 = v43;
    (*(v43 + 16))(v6, v12, v42);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E488, &qword_2684B9648);
    *&v51 = v34;
    *(&v51 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    sub_2684B49B4();

    return (*(v37 + 8))(v12, v36);
  }

  else
  {
    v43 = sub_2684B4E64();
    sub_2684B50A4();
    sub_2684B44A4();
    v22 = BYTE8(v51);
    v40 = v52;
    v41 = v51;
    v23 = BYTE8(v52);
    v39 = *(&v53 + 1);
    v24 = v53;
    sub_268499BEC(v1, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v26 = swift_allocObject();
    sub_268499C50(&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    LOBYTE(v46) = v22;
    v45 = v23;
    v27 = v40;
    v28 = v41;
    *v6 = v43;
    *(v6 + 1) = v28;
    v6[16] = v22;
    *(v6 + 3) = v27;
    v6[32] = v23;
    v29 = v39;
    *(v6 + 5) = v24;
    *(v6 + 6) = v29;
    *(v6 + 7) = sub_268499CB4;
    *(v6 + 8) = v26;
    *(v6 + 9) = 0;
    *(v6 + 10) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E488, &qword_2684B9648);
    v46 = MEMORY[0x277CE1088];
    v47 = MEMORY[0x277CE1078];
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    return sub_2684B49B4();
  }
}

void sub_26849937C()
{
  v1 = sub_2684B4184();
  v41 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppLinkView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B47F4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B4314();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268499884();
  if (v14)
  {
    v15 = v14;
    v38 = v3;
    (*(v11 + 104))(v13, *MEMORY[0x277D45370], v10);
    v16 = v0 + *(v4 + 20);
    v17 = *v16;
    LODWORD(v16) = *(v16 + 8);
    v39 = v4;
    v40 = v0;
    if (v16 != 1)
    {

      sub_2684B5704();
      v18 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v17, 0);
      (*(v42 + 8))(v9, v43);
    }

    v19 = sub_2684B5724();
    v21 = v20;
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    if (v19)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v15;
      v25 = (v40 + *(v39 + 24));
      v26 = v25[1];
      v49[0] = *v25;
      v49[1] = v26;
      v49[2] = v25[2];
      v44 = v19;
      v45 = v21;
      v46 = v23;
      v47 = sub_268499EA4;
      v48 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E480, &qword_2684B9640);
      sub_2684B4F44();
      return;
    }

    v3 = v38;
    v0 = v40;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v27 = sub_2684B4354();
  __swift_project_value_buffer(v27, qword_280282910);
  sub_268499BEC(v0, v6);
  v28 = sub_2684B4334();
  v29 = sub_2684B56F4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v6;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v49[0] = v32;
    *v31 = 136315138;
    (*(v41 + 16))(v3, v30, v1);
    v33 = sub_2684B5564();
    v35 = v34;
    sub_268499E48(v30);
    v36 = sub_268479394(v33, v35, v49);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_26845C000, v28, v29, "Could not load app icon from app link: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x26D61A450](v32, -1, -1);
    MEMORY[0x26D61A450](v31, -1, -1);
  }

  else
  {

    sub_268499E48(v6);
  }
}

id sub_268499884()
{
  v1 = v0;
  v2 = sub_2684B4124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B37F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B4184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D5E190])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v15 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v16 = sub_2684B37D4();
    v17 = [v15 initWithUniversalLink_];

    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == *MEMORY[0x277D5E198])
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    v18 = sub_2684B4114();
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v22 = sub_2684B3804();
    v17 = [v21 initWithUserActivityData_];

    sub_2684799F0(v18, v20);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  return v17;
}

uint64_t sub_268499BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLinkView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268499C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLinkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268499D10()
{
  result = qword_28027E490;
  if (!qword_28027E490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E488, &qword_2684B9648);
    sub_268499D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E490);
  }

  return result;
}

unint64_t sub_268499D9C()
{
  result = qword_28027E498;
  if (!qword_28027E498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4A0, &qword_2684B9650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E498);
  }

  return result;
}

uint64_t sub_268499E48(uint64_t a1)
{
  v2 = type metadata accessor for AppLinkView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268499EC8()
{
  result = qword_28027E4A8;
  if (!qword_28027E4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4B0, &qword_2684B9658);
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4A8);
  }

  return result;
}

uint64_t type metadata accessor for NotebookEnvironmentSetupModifier(uint64_t a1)
{
  result = qword_28027E4B8;
  if (!qword_28027E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268499FF8(uint64_t a1)
{
  result = sub_2684B3924();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26849A088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_2684B3904();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B45A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4C8, &qword_2684B96D8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  KeyPath = swift_getKeyPath();
  v15 = &v13[*(v11 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4D0, &qword_2684B9710) + 28);
  v17 = sub_2684B3924();
  (*(*(v17 - 8) + 16))(v15 + v16, v2, v17);
  *v15 = KeyPath;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4D8, &qword_2684B9718);
  (*(*(v18 - 8) + 16))(v13, v29, v18);
  v19 = swift_getKeyPath();
  if (*(v2 + *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20)) == 1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  }

  else
  {
    sub_2684B3914();
    v20 = sub_2684B38F4();
    (*(v3 + 8))(v5, v28);
    if (v20 == 2)
    {
      v21 = MEMORY[0x277CDFA90];
    }

    else
    {
      v21 = MEMORY[0x277CDFA88];
    }

    (*(v7 + 104))(v9, *v21, v6);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4E0, &qword_2684B9750);
  v23 = v30;
  v24 = (v30 + *(v22 + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4E8, &qword_2684B9758);
  (*(v7 + 32))(v24 + *(v25 + 28), v9, v6);
  *v24 = v19;
  return sub_26849A4A0(v13, v23);
}

uint64_t sub_26849A3D4(uint64_t a1)
{
  v2 = sub_2684B45A4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B46F4();
}

uint64_t sub_26849A4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4C8, &qword_2684B96D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26849A510()
{
  result = qword_28027E4F0;
  if (!qword_28027E4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4E0, &qword_2684B9750);
    sub_26849A5C8();
    sub_26846ACF0(&qword_28027E510, &qword_28027E4E8, &qword_2684B9758, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4F0);
  }

  return result;
}

unint64_t sub_26849A5C8()
{
  result = qword_28027E4F8;
  if (!qword_28027E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4C8, &qword_2684B96D8);
    sub_26846ACF0(&qword_28027E500, &qword_28027E4D8, &qword_2684B9718, MEMORY[0x277CE04B0]);
    sub_26846ACF0(&qword_28027E508, &qword_28027E4D0, &qword_2684B9710, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4F8);
  }

  return result;
}

uint64_t sub_26849A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26849A6FC(a1, a2, a3);
  sub_2684B4804();
  return v4;
}

unint64_t sub_26849A6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E518;
  if (!qword_28027E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E518);
  }

  return result;
}

uint64_t sub_26849A760()
{
  v0 = sub_2684B3F04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4A8, &unk_2684B6D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E520, &unk_2684B97B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_2684B4E34();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v25 = &v24 - v18;
  sub_2684B3F14();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_268467A4C(v6, &qword_28027D4A8, &unk_2684B6D30);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_10:
    sub_268467A4C(v12, &qword_28027E520, &unk_2684B97B0);
    sub_2684B3F24();
    sub_2684B3F54();
    sub_2684B3F44();
    (*(v14 + 104))(v17, *MEMORY[0x277CE0EE0], v13);
    return sub_2684B4E94();
  }

  (*(v1 + 16))(v3, v6, v0);
  v19 = (*(v1 + 88))(v3, v0);
  if (v19 == *MEMORY[0x277D5E158])
  {
    v20 = MEMORY[0x277CE0EE8];
LABEL_7:
    (*(v14 + 104))(v10, *v20, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D5E150])
  {
    v20 = MEMORY[0x277CE0EE0];
    goto LABEL_7;
  }

  (*(v14 + 56))(v10, 1, 1, v13);
  (*(v1 + 8))(v3, v0);
LABEL_9:
  sub_26849AC40(v10, v12);
  (*(v1 + 8))(v6, v0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_10;
  }

  v22 = v25;
  (*(v14 + 32))(v25, v12, v13);
  (*(v14 + 16))(v17, v22, v13);
  sub_2684B3F24();
  sub_2684B3F54();
  sub_2684B3F44();
  v23 = sub_2684B4E94();
  (*(v14 + 8))(v22, v13);
  return v23;
}

uint64_t sub_26849AC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E520, &unk_2684B97B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppPunchoutSnippet(uint64_t a1)
{
  result = qword_28027E528;
  if (!qword_28027E528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26849AD24(uint64_t a1)
{
  result = sub_2684B3B24();
  if (v2 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26849ADC4(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchoutSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26849B2F4(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26849B358(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_2684B4F74();
}

uint64_t sub_26849AEF8()
{
  v0 = sub_2684B5464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  sub_2684B3B14();
  v5 = sub_2684B5544();

  [v4 setLaunchId_];

  type metadata accessor for AppPunchoutSnippet(0);
  sub_2684B5294();
  v6 = v4;
  sub_2684B5444();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26849B040@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B4884();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2684B4874();
  sub_2684B4864();
  sub_2684B3B04();
  sub_2684B4854();

  sub_2684B4864();
  sub_2684B48A4();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v3 = qword_280282928;
  result = sub_2684B4B94();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26849B1AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26849B2F4(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_26849B358(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  sub_26846ACF0(&qword_28027D790, &qword_28027D788, &qword_2684B74D8, MEMORY[0x277CDF028]);
  return sub_2684B5184();
}

uint64_t sub_26849B2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchoutSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849B358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchoutSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849B3BC()
{
  v1 = *(type metadata accessor for AppPunchoutSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26849ADC4(v2);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for AppPunchoutSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3B24();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_26849B544()
{
  type metadata accessor for AppPunchoutSnippet(0);

  return sub_26849AEF8();
}

_BYTE *sub_26849B5BC(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t type metadata accessor for RemindersAppPunchoutModifier(uint64_t a1)
{
  result = qword_28027E550;
  if (!qword_28027E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26849B6E0(uint64_t a1)
{
  sub_2684B3E74();
  if (v1 <= 0x3F)
  {
    sub_2684B52B4();
    if (v2 <= 0x3F)
    {
      sub_268467F10(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26849B798(NSObject *a1)
{
  v2 = sub_2684B5464();
  v109 = *(v2 - 8);
  v110 = v2;
  MEMORY[0x28223BE20](v2);
  v108 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2684B3E74();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemindersAppPunchoutModifier(0);
  v6 = MEMORY[0x28223BE20](v5);
  v111 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v102 = &v97 - v9;
  MEMORY[0x28223BE20](v8);
  v103 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E570, &qword_2684B9928);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v100 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v97 - v14;
  v16 = sub_2684B4304();
  v112 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v97 - v20;
  v114 = sub_2684B37F4();
  v116 = *(v114 - 8);
  v22 = MEMORY[0x28223BE20](v114);
  v98 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v97 = &v97 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v101 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v113 = &v97 - v28;
  v29 = sub_2684B47F4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v5;
  v33 = *(v5 + 24);
  v115 = a1;
  v34 = a1 + v33;
  v35 = *v34;
  if ((v34[8] & 1) == 0)
  {

    sub_2684B5704();
    v36 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v35, 0);
    (*(v30 + 8))(v32, v29);
  }

  v37 = sub_2684B5784();
  v38 = v115;
  sub_26847EBF8(v15);
  v39 = v112;
  v40 = v112[6];
  v41 = v40(v15, 1, v16);
  v99 = v19;
  if (v41 == 1)
  {
    v42 = *MEMORY[0x277D45150];
    v43 = sub_2684B42B4();
    (*(*(v43 - 8) + 104))(v21, v42, v43);
    (v39[13])(v21, *MEMORY[0x277D45200], v16);
    if (v40(v15, 1, v16) != 1)
    {
      sub_26849C6B0(v15);
    }
  }

  else
  {
    (v39[4])(v21, v15, v16);
  }

  v44 = v113;
  sub_2684B42F4();
  v45 = v39[1];
  v45(v21, v16);
  if (v37)
  {
    v46 = *(v116 + 8);
    v116 += 8;
    v113 = v46;
    (v46)(v44, v114);
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v47 = sub_2684B4354();
    __swift_project_value_buffer(v47, qword_280282910);
    v48 = v102;
    sub_26849C524(v38, v102);
    v49 = v111;
    sub_26849C524(v38, v111);
    v50 = sub_2684B4334();
    v51 = sub_2684B56F4();
    if (os_log_type_enabled(v50, v51))
    {
      LODWORD(v110) = v51;
      v115 = v50;
      v52 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v117[0] = v109;
      *v52 = 136315650;
      (*(v105 + 16))(v104, v48, v107);
      v53 = sub_2684B5564();
      v55 = v54;
      sub_26849C718(v48);
      v56 = sub_268479394(v53, v55, v117);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = v100;
      sub_26847EBF8(v100);
      if (v40(v57, 1, v16) == 1)
      {
        v58 = *MEMORY[0x277D45150];
        v59 = sub_2684B42B4();
        v60 = v99;
        v61 = v58;
        v62 = v100;
        (*(*(v59 - 8) + 104))(v99, v61, v59);
        (v112[13])(v60, *MEMORY[0x277D45200], v16);
        if (v40(v62, 1, v16) != 1)
        {
          sub_26849C6B0(v62);
        }
      }

      else
      {
        v60 = v99;
        (v112[4])(v99, v57, v16);
      }

      v87 = v97;
      sub_2684B42F4();
      v45(v60, v16);
      v88 = v98;
      sub_2684B37B4();
      v90 = v113;
      v89 = v114;
      (v113)(v87, v114);
      v91 = sub_2684B37C4();
      v93 = v92;
      v90(v88, v89);
      sub_26849C718(v111);
      v94 = sub_268479394(v91, v93, v117);

      *(v52 + 14) = v94;
      *(v52 + 22) = 1024;
      *(v52 + 24) = 0;
      v95 = v115;
      _os_log_impl(&dword_26845C000, v115, v110, "Not punching out to %s with url %s, isValidForCurrentIdiom: %{BOOL}d", v52, 0x1Cu);
      v96 = v109;
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v96, -1, -1);
      MEMORY[0x26D61A450](v52, -1, -1);
    }

    else
    {

      sub_26849C718(v49);
      sub_26849C718(v48);
    }
  }

  else
  {
    v63 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    v64 = sub_2684B37D4();
    v112 = v63;
    [v63 setPunchOutUri_];

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v65 = sub_2684B4354();
    __swift_project_value_buffer(v65, qword_280282910);
    v66 = v103;
    sub_26849C524(v38, v103);
    v67 = v116;
    v68 = v101;
    v69 = v114;
    (*(v116 + 16))(v101, v44, v114);
    v70 = sub_2684B4334();
    v71 = sub_2684B5714();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v117[0] = v111;
      *v72 = 136315394;
      v73 = v66;
      (*(v105 + 16))(v104, v66, v107);
      v74 = sub_2684B5564();
      v76 = v75;
      sub_26849C718(v73);
      v77 = sub_268479394(v74, v76, v117);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      sub_26849C774();
      v78 = sub_2684B59E4();
      v80 = v79;
      v81 = *(v67 + 8);
      v81(v68, v69);
      v82 = sub_268479394(v78, v80, v117);

      *(v72 + 14) = v82;
      _os_log_impl(&dword_26845C000, v70, v71, "Punching out to %s with url: %s", v72, 0x16u);
      v83 = v111;
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v83, -1, -1);
      v84 = v72;
      v44 = v113;
      MEMORY[0x26D61A450](v84, -1, -1);
    }

    else
    {

      v81 = *(v67 + 8);
      v81(v68, v69);
      sub_26849C718(v66);
    }

    v85 = v108;
    sub_2684B5294();
    v86 = v112;
    sub_2684B5444();

    (*(v109 + 8))(v85, v110);
    v81(v44, v69);
  }
}

uint64_t sub_26849C3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  sub_26849C524(v4, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_26849C588(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E560, &qword_2684B9920);
  sub_26849C64C();
  sub_2684B4CF4();
}

uint64_t sub_26849C524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersAppPunchoutModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849C588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersAppPunchoutModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26849C5EC()
{
  v1 = *(type metadata accessor for RemindersAppPunchoutModifier(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_26849B798(v2);
}

unint64_t sub_26849C64C()
{
  result = qword_28027E568;
  if (!qword_28027E568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E560, &qword_2684B9920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E568);
  }

  return result;
}

uint64_t sub_26849C6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E570, &qword_2684B9928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26849C718(uint64_t a1)
{
  v2 = type metadata accessor for RemindersAppPunchoutModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26849C774()
{
  result = qword_28027D810;
  if (!qword_28027D810)
  {
    sub_2684B37F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D810);
  }

  return result;
}

uint64_t type metadata accessor for ReminderHeadingTextView(uint64_t a1)
{
  result = qword_28027E578;
  if (!qword_28027E578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26849C840(uint64_t a1)
{
  result = sub_2684B3CF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26849C8C8()
{
  v1 = v0;
  v41 = type metadata accessor for ReminderHeadingTextView(0);
  v2 = MEMORY[0x28223BE20](v41);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - v4;
  v5 = sub_2684B4884();
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2684B3844();
  v10 = *(v47 - 8);
  v11 = MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = sub_2684B3C14();
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2684B3CF4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v42 = v1;
  v22(v21, v1, v18);
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 == *MEMORY[0x277D5E058])
  {
    (*(v19 + 96))(v21, v18);
    v24 = v47;
    (*(v10 + 32))(v14, v21, v47);
    (*(v10 + 16))(v46, v14, v24);
    sub_2684B38E4();
    sub_2684B3944();
    v25 = *(v7 + 24);
    v9[v25] = 0;
    v9[*(v7 + 28)] = 2;
    v9[v25] = 1;
    sub_26849D354(&qword_28027E588, type metadata accessor for TemporalTriggerDateFormatStyle, &unk_2684B9398);
    sub_26849D354(&qword_28027E590, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v26 = sub_2684B4B84();
    (*(v10 + 8))(v14, v24);
    return v26;
  }

  if (v23 == *MEMORY[0x277D5E060])
  {
    (*(v19 + 96))(v21, v18);
    v27 = v45;
    (*(v45 + 32))(v17, v21, v15);
    v26 = sub_2684B3BF4();
    (*(v27 + 8))(v17, v15);
    return v26;
  }

  if (v23 == *MEMORY[0x277D5E040])
  {
    (*(v19 + 96))(v21, v18);
    return *v21;
  }

  if (v23 == *MEMORY[0x277D5E048])
  {
    (*(v19 + 96))(v21, v18);
    sub_2684B4874();
    sub_2684B4864();
    sub_2684B4854();

    sub_2684B4864();
    sub_2684B48A4();
LABEL_15:
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v28 = qword_280282928;
    return sub_2684B4B94();
  }

  if (v23 == *MEMORY[0x277D5E050] || v23 == *MEMORY[0x277D5E088] || v23 == *MEMORY[0x277D5E080] || v23 == *MEMORY[0x277D5E068] || v23 == *MEMORY[0x277D5E090] || v23 == *MEMORY[0x277D5E098] || v23 == *MEMORY[0x277D5E0A0] || v23 == *MEMORY[0x277D5E070] || v23 == *MEMORY[0x277D5E078] || v23 == *MEMORY[0x277D5E038])
  {
    sub_2684B4894();
    goto LABEL_15;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v30 = sub_2684B4354();
  __swift_project_value_buffer(v30, qword_280282910);
  v31 = v43;
  sub_26849D294(v42, v43);
  v32 = sub_2684B4334();
  v33 = sub_2684B5704();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    sub_26849D294(v31, v40);
    v36 = sub_2684B5564();
    v38 = v37;
    sub_26849D2F8(v31);
    v39 = sub_268479394(v36, v38, &v48);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_26845C000, v32, v33, "Unknown ReminderSectionHeading: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x26D61A450](v35, -1, -1);
    MEMORY[0x26D61A450](v34, -1, -1);
  }

  else
  {

    sub_26849D2F8(v31);
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

uint64_t sub_26849D260@<X0>(uint64_t a1@<X8>)
{
  result = sub_26849C8C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26849D294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderHeadingTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849D2F8(uint64_t a1)
{
  v2 = type metadata accessor for ReminderHeadingTextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26849D354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26849D39C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2684B3EA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3C34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = (&v53 - v9);
  sub_2684B3C44();
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D5E020])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = sub_2684B4894();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5D8, &qword_2684B99C0);
    a1[4] = sub_26846ACF0(&qword_28027E5E0, &qword_28027E5D8, &qword_2684B99C0, &unk_2684B9A40);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v13;
    boxed_opaque_existential_1[1] = v15;
    *(boxed_opaque_existential_1 + 16) = v17 & 1;
    boxed_opaque_existential_1[3] = v19;
    boxed_opaque_existential_1[4] = v12;
    *(boxed_opaque_existential_1 + 40) = 0;
    v21 = sub_26849F51C;
LABEL_10:
    boxed_opaque_existential_1[6] = v21;
    boxed_opaque_existential_1[7] = 0;
    return sub_2684B52A4();
  }

  if (v11 == *MEMORY[0x277D5E018])
  {
    (*(v7 + 96))(v10, v6);
    v22 = *v10;
    v23 = sub_2684B4894();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E598, &qword_2684B99A0);
    a1[4] = sub_26846ACF0(&qword_28027E5A0, &qword_28027E598, &qword_2684B99A0, &unk_2684B9A40);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v23;
    boxed_opaque_existential_1[1] = v25;
    *(boxed_opaque_existential_1 + 16) = v27 & 1;
    boxed_opaque_existential_1[3] = v29;
    boxed_opaque_existential_1[4] = v22;
    *(boxed_opaque_existential_1 + 40) = 0;
    v21 = sub_26849FA68;
    goto LABEL_10;
  }

  if (v11 != *MEMORY[0x277D5E030])
  {
    if (v11 != *MEMORY[0x277D5E028])
    {
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      sub_2684B58A4();

      *&v54 = 0xD000000000000026;
      *(&v54 + 1) = 0x80000002684C45D0;
      sub_2684B3C44();
      v52 = sub_2684B5564();
      MEMORY[0x26D619980](v52);

      result = sub_2684B5914();
      __break(1u);
      return result;
    }

    (*(v7 + 96))(v10, v6);
    v42 = *v10;
    v43 = sub_2684B4894();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5A8, &qword_2684B99A8);
    a1[4] = sub_26846ACF0(&qword_28027E5B0, &qword_28027E5A8, &qword_2684B99A8, &unk_2684B9A40);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v43;
    boxed_opaque_existential_1[1] = v45;
    *(boxed_opaque_existential_1 + 16) = v47 & 1;
    boxed_opaque_existential_1[3] = v49;
    boxed_opaque_existential_1[4] = v42;
    *(boxed_opaque_existential_1 + 40) = 0;
    v21 = sub_26849F914;
    goto LABEL_10;
  }

  (*(v7 + 96))(v10, v6);
  v30 = *v10;
  sub_2684B3C24();
  v31 = sub_2684B3E94();
  (*(v3 + 8))(v5, v2);
  v32 = sub_2684B4894();
  v34 = v33;
  v36 = v35;
  v38 = v37 & 1;
  if (v31)
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5C8, &qword_2684B99B8);
    v39 = sub_26846ACF0(&qword_28027E5D0, &qword_28027E5C8, &qword_2684B99B8, &unk_2684B9A40);
    v40 = sub_26849F7FC;
    v41 = 1;
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5B8, &qword_2684B99B0);
    v39 = sub_26846ACF0(&qword_28027E5C0, &qword_28027E5B8, &qword_2684B99B0, &unk_2684B9A40);
    v41 = 0;
    v40 = sub_26849F868;
  }

  v56 = v39;
  v51 = __swift_allocate_boxed_opaque_existential_1(&v54);
  *v51 = v32;
  v51[1] = v34;
  *(v51 + 16) = v38;
  v51[3] = v36;
  v51[4] = v30;
  *(v51 + 40) = v41;
  v51[6] = v40;
  v51[7] = 0;
  sub_2684B52A4();
  return sub_268474100(&v54, a1);
}

uint64_t sub_26849DA20(uint64_t a1)
{
  v2 = sub_2684B3924();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4774();
}

uint64_t sub_26849DB10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_2684B4404();
  }

  else
  {
    sub_2684B4414();
  }

  return sub_2684B4DB4();
}

uint64_t sub_26849DB98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = *(a1 - 1);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](a1);
  v48 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B5284();
  MEMORY[0x28223BE20](v4 - 8);
  v40[1] = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1[2];
  swift_getTupleTypeMetadata2();
  v6 = sub_2684B5664();
  v45 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v7 = sub_2684B45B4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  v43 = a1[4];
  v9 = v43;
  v10 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90, MEMORY[0x277CE0470]);
  v60 = v9;
  v61 = v10;
  v46 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  v55 = v7;
  v56 = v8;
  v57 = WitnessTable;
  v58 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = v7;
  v56 = v8;
  v57 = WitnessTable;
  v58 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  v55 = v6;
  v56 = MEMORY[0x277D83B88];
  v57 = v15;
  v58 = v16;
  v59 = MEMORY[0x277D83B98];
  v40[3] = sub_2684B5034();
  v55 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  v54 = swift_getOpaqueTypeConformance2();
  v40[2] = swift_getWitnessTable();
  v17 = sub_2684B5254();
  v41 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  v20 = sub_2684B45B4();
  v42 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v40 - v24;
  v26 = a1;
  v27 = v44;
  sub_26849E180();
  v29 = v48;
  v28 = v49;
  (*(v49 + 16))(v48, v27, a1);
  v30 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 2) = v47;
  *(v31 + 3) = v32;
  *(v31 + 4) = v43;
  (*(v28 + 32))(&v31[v30], v29, v26);
  sub_2684B5244();
  v33 = swift_getWitnessTable();
  sub_2684ACFD8(1, v17, v33);
  v34 = (*(v41 + 8))(v19, v17);
  v37 = sub_26846B18C(v34, v35, v36);
  v52 = v33;
  v53 = v37;
  swift_getWitnessTable();
  sub_26847D324();
  v38 = *(v42 + 8);
  v38(v23, v20);
  sub_26847D324();
  return (v38)(v25, v20);
}

uint64_t sub_26849E180()
{
  v0 = qword_28027CF30;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_280282928;
  v2 = sub_2684B4B94();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6 & 1;
  *(v10 + 40) = v8;
  return sub_2684B5274();
}

uint64_t sub_26849E2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a1;
  v54 = a5;
  v53 = type metadata accessor for DisambiguationSnippetView(0, a2, a3, a4);
  v51 = *(v53 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v39 - v8;
  v9 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_2684B5664();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v11 = sub_2684B45B4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  v13 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90, MEMORY[0x277CE0470]);
  v65 = a4;
  v66 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  v60 = v11;
  v61 = v12;
  v62 = WitnessTable;
  v63 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = OpaqueTypeMetadata2;
  v60 = v11;
  v61 = v12;
  v62 = WitnessTable;
  v63 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeMetadata2;
  v61 = OpaqueTypeConformance2;
  v41 = MEMORY[0x277D63968];
  v17 = swift_getOpaqueTypeMetadata2();
  v43 = v17;
  v44 = v10;
  v42 = swift_getWitnessTable();
  v60 = v10;
  v61 = MEMORY[0x277D83B88];
  v62 = v17;
  v63 = v42;
  v64 = MEMORY[0x277D83B98];
  v18 = sub_2684B5034();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v39 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v40 = &v39 - v21;
  v22 = v48;
  v59 = *(v48 + 32);
  v23 = v9;
  v24 = sub_2684B5664();
  v25 = swift_getWitnessTable();
  MEMORY[0x26D6199E0](&v60, v24, v25);
  v59 = v60;
  sub_2684B5924();
  swift_getWitnessTable();
  v59 = sub_2684B5674();
  v55 = v9;
  v56 = a3;
  v26 = a3;
  v27 = a4;
  v57 = a4;
  TupleTypeMetadata2 = swift_getKeyPath();
  v28 = v50;
  v29 = v51;
  v30 = v53;
  (*(v51 + 16))(v50, v22, v53);
  v31 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v23;
  *(v32 + 3) = v26;
  *(v32 + 4) = v27;
  (*(v29 + 32))(&v32[v31], v28, v30);
  v33 = swift_allocObject();
  v33[2] = v23;
  v33[3] = v26;
  v33[4] = v27;
  v33[5] = sub_26849FF2C;
  v33[6] = v32;
  v60 = v46;
  v61 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v34 = v39;
  sub_2684B5014();
  v58 = v38;
  swift_getWitnessTable();
  v35 = v40;
  sub_26847D324();
  v36 = *(v47 + 8);
  v36(v34, v18);
  sub_26847D324();
  return (v36)(v35, v18);
}

uint64_t sub_26849E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a4;
  v78 = a7;
  v70 = a2;
  v74 = a1;
  v10 = type metadata accessor for DisambiguationSnippetView(0, a4, a5, a6);
  v72 = *(v10 - 8);
  v73 = v10;
  v76 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA58, &qword_2684B7D40);
  v71 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v69 = &v52 - v14;
  v68 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v16 = sub_2684B45B4();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v52 - v17;
  v18 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90, MEMORY[0x277CE0470]);
  v53 = a6;
  v83 = a6;
  v84 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  v79 = v16;
  v80 = v12;
  v55 = v12;
  v81 = WitnessTable;
  v82 = v20;
  v21 = WitnessTable;
  v57 = WitnessTable;
  v22 = v20;
  v56 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = OpaqueTypeMetadata2;
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v54 = &v52 - v24;
  v79 = v16;
  v80 = v12;
  v81 = v21;
  v82 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = OpaqueTypeConformance2;
  v63 = MEMORY[0x277D63968];
  v25 = swift_getOpaqueTypeMetadata2();
  v64 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v58 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v59 = &v52 - v28;
  v29 = v65;
  v30 = (*(a3 + 48))(v70);
  sub_2684A0058(v30, v31, v32);
  v33 = v60;
  v52 = a5;
  sub_2684B4CD4();
  (*(v68 + 8))(v29, a5);
  v34 = v69;
  v35 = v73;
  v36 = v74;
  sub_26849EFC8(v74, v73, v69);
  v37 = v54;
  v38 = v55;
  sub_26849DB10(v34, *(a3 + 40), v16, v55, v57, v56);
  (*(v71 + 8))(v34, v38);
  (*(v67 + 8))(v33, v16);
  v39 = v72;
  v40 = v75;
  v41 = v35;
  (*(v72 + 16))(v75, a3, v35);
  v42 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v43 = (v76 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v52;
  *(v44 + 2) = v77;
  *(v44 + 3) = v45;
  *(v44 + 4) = v53;
  (*(v39 + 32))(&v44[v42], v40, v41);
  *&v44[v43] = v36;
  v46 = v58;
  v47 = v62;
  v48 = OpaqueTypeConformance2;
  sub_2684B4C24();

  (*(v66 + 8))(v37, v47);
  v79 = v47;
  v80 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v59;
  sub_26847D324();
  v50 = *(v64 + 8);
  v50(v46, v25);
  sub_26847D324();
  return (v50)(v49, v25);
}

uint64_t sub_26849EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v17[1] = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = sub_2684B43E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B43D4();
  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  *(v14 + 32) = *(a2 + 32);
  (*(v7 + 32))(v14 + v13, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2684A0208;
  *(v15 + 24) = v14;
  sub_2684B5044();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26849F208(uint64_t a1)
{
  v20 = a1;
  v1 = sub_2684B5464();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3A94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v9 = sub_2684B4354();
  __swift_project_value_buffer(v9, qword_280282910);
  v10 = sub_2684B4334();
  v11 = sub_2684B5714();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v2;
    v13 = v1;
    v14 = v12;
    *v12 = 134217984;
    *(v12 + 4) = v20;
    _os_log_impl(&dword_26845C000, v10, v11, "Selecting disambiguation index %ld", v12, 0xCu);
    v15 = v14;
    v1 = v13;
    v2 = v19;
    MEMORY[0x26D61A450](v15, -1, -1);
  }

  *v8 = v20;
  (*(v6 + 104))(v8, *MEMORY[0x277D5DFB8], v5);
  sub_2684B5294();
  v16 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684A00AC(&qword_28027E690, MEMORY[0x277D5DFC8], MEMORY[0x277D5DFC0]);
  v17 = sub_2684B3A84();

  sub_2684B5454();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26849F51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_2684B3C14();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5E8, &qword_2684B99C8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5F0, &qword_2684B99D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = sub_2684B3BF4();
  v48 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D63F80];
  v46 = v13;
  v47 = v14;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  (*(v3 + 16))(v5, a1, v19);
  sub_26847B704(v5, v8);
  v15 = sub_26849FB24();
  sub_2684B4C14();
  sub_26849FBD8(v8);
  v21 = v6;
  v22 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_2684B4BC4();
  (*(v10 + 8))(v12, v9);
  v23 = MEMORY[0x277CE11C8];
  v24 = MEMORY[0x277D63A60];
  v21 = v16;
  return sub_2684B5264();
}

uint64_t sub_26849F7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_26849F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(type metadata accessor for ReminderDetail3pView(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26849F914()
{
  v0 = sub_2684B39C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2684B3F84();
  v28 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D63F80];
  v26 = v1;
  v27 = v2;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_2684B3F74();
  sub_2684B39B4();

  v4[3] = sub_2684B5144();
  v4[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_2684B5154();
  return sub_2684B5264();
}

unint64_t sub_26849FB24()
{
  result = qword_28027E5F8;
  if (!qword_28027E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E5E8, &qword_2684B99C8);
    sub_2684A00AC(qword_28027E600, type metadata accessor for ListBadgeView, &unk_2684B7A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E5F8);
  }

  return result;
}

uint64_t sub_26849FBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5E8, &qword_2684B99C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26849FC40(uint64_t a1)
{
  result = sub_2684B5664();
  if (v2 <= 0x3F)
  {
    result = sub_26847D10C();
    if (v3 <= 0x3F)
    {
      result = sub_2684B52B4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26849FD84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for DisambiguationSnippetView(0, v3, v4, v5) - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_26849E2A8(v7, v3, v4, v5, a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for DisambiguationSnippetView(0, v0[2], v0[3], v0[4]) - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));

  v3 = v1[16];
  v4 = sub_2684B52B4();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  return swift_deallocObject();
}

uint64_t sub_26849FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(type metadata accessor for DisambiguationSnippetView(0, v7, v8, v9) - 8);
  v11 = v3 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_26849E88C(a1, a2, v11, v7, v8, v9, a3);
}

uint64_t sub_26849FFE4(char *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t sub_2684A0058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E688;
  if (!qword_28027E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E688);
  }

  return result;
}

uint64_t sub_2684A00AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for DisambiguationSnippetView(0, v0[2], v0[3], v0[4]) - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));

  v3 = v1[16];
  v4 = sub_2684B52B4();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  return swift_deallocObject();
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

uint64_t sub_2684A02E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2684A032C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2684A03A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B45D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E698, &qword_2684B9B58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9];
  v20 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6A0, &qword_2684B9B60);
  sub_2684A0904();
  sub_2684B4F74();
  sub_2684B45C4();
  sub_26846ACF0(&qword_28027E6E0, &qword_28027E698, &qword_2684B9B58, MEMORY[0x277CDF028]);
  sub_2684A0A74();
  sub_2684B4CB4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_2684B4B24();
  v11 = sub_2684B4AD4();

  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6F0, &qword_2684B9BB0) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6F8, &qword_2684B9BE8) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E700, &qword_2684B9BF0) + 28);
  sub_2684B5064();
  v17 = sub_2684B5074();
  result = (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = v14;
  return result;
}

uint64_t sub_2684A06A8@<X0>(uint64_t a2@<X8>)
{
  sub_2684B4F14();
  v3 = sub_2684B4A54();
  sub_2684B4364();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6B8, &qword_2684B9B68) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_2684B49C4();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6A0, &qword_2684B9B60) + 36));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6D8, &qword_2684B9B78);
  v16 = *(v15 + 52);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_2684B48B4();
  result = (*(*(v18 - 8) + 104))(&v14[v16], v17, v18);
  *v14 = v13;
  *&v14[*(v15 + 56)] = 256;
  return result;
}

uint64_t sub_2684A0830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E708, &qword_2684B9BF8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2684A0ACC(a1, &v5 - v3);
  return sub_2684B4714();
}

unint64_t sub_2684A0904()
{
  result = qword_28027E6A8;
  if (!qword_28027E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6A0, &qword_2684B9B60);
    sub_2684A09BC();
    sub_26846ACF0(&qword_28027E6D0, &qword_28027E6D8, &qword_2684B9B78, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6A8);
  }

  return result;
}

unint64_t sub_2684A09BC()
{
  result = qword_28027E6B0;
  if (!qword_28027E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6B8, &qword_2684B9B68);
    sub_26846ACF0(&qword_28027E6C0, &qword_28027E6C8, &qword_2684B9B70, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6B0);
  }

  return result;
}

unint64_t sub_2684A0A74()
{
  result = qword_28027E6E8;
  if (!qword_28027E6E8)
  {
    sub_2684B45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6E8);
  }

  return result;
}

uint64_t sub_2684A0ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E708, &qword_2684B9BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A0B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2684A0B5C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2684B4EC4();
  *a1 = result;
  return result;
}

unint64_t sub_2684A0BA4()
{
  result = qword_28027E710;
  if (!qword_28027E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6F8, &qword_2684B9BE8);
    sub_2684A0C5C();
    sub_26846ACF0(&qword_28027E720, &qword_28027E700, &qword_2684B9BF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E710);
  }

  return result;
}

unint64_t sub_2684A0C5C()
{
  result = qword_28027E718;
  if (!qword_28027E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6F0, &qword_2684B9BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E698, &qword_2684B9B58);
    sub_2684B45D4();
    sub_26846ACF0(&qword_28027E6E0, &qword_28027E698, &qword_2684B9B58, MEMORY[0x277CDF028]);
    sub_2684A0A74();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E718);
  }

  return result;
}

uint64_t sub_2684A0DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_2684B3994();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v59 = sub_2684B4B34();
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E740, &qword_2684B9D40);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E748, &qword_2684B9D48);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E750, &qword_2684B9D50);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E758, &qword_2684B9D58);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v58 - v19;
  *v13 = sub_2684B4834();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E760, &qword_2684B9D60);
  sub_2684A14EC(v2, &v13[*(v20 + 44)]);
  sub_26846ACF0(&qword_28027E768, &qword_28027E740, &qword_2684B9D40, MEMORY[0x277CE1138]);
  sub_2684B4D44();
  sub_268467A4C(v13, &qword_28027E740, &qword_2684B9D40);
  v21 = v59;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A90], v59);
  v22 = *MEMORY[0x277CE09A0];
  v23 = sub_2684B4AE4();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v7, v22, v23);
  (*(v24 + 56))(v7, 0, 1, v23);
  sub_2684B4AF4();
  v25 = sub_2684B4B14();
  sub_268467A4C(v7, &qword_28027D330, &qword_2684BAEE0);
  (*(v8 + 8))(v10, v21);
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E770, &qword_2684B9D98) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = sub_2684A3D74();
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E778, &qword_2684B9DA0) + 36)] = v28;
  LOBYTE(v10) = sub_2684B4A64();
  type metadata accessor for ReminderPrimaryHeadingView(0);
  sub_2684B4364();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E780, &qword_2684B9DA8) + 36)];
  *v37 = v10;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(v25) = sub_2684B4A74();
  sub_2684B4364();
  v38 = &v17[*(v15 + 44)];
  *v38 = v25;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_2684B50B4();
  sub_2684B45F4();
  v43 = v60;
  sub_268462EC0(v17, v60);
  v44 = (v43 + *(v62 + 36));
  v45 = v74;
  v44[4] = v73;
  v44[5] = v45;
  v44[6] = v75;
  v46 = v70;
  *v44 = v69;
  v44[1] = v46;
  v47 = v72;
  v44[2] = v71;
  v44[3] = v47;
  v49 = v66;
  v48 = v67;
  v50 = v65;
  (*(v66 + 104))(v65, *MEMORY[0x277D62F48], v67);
  sub_2684A1C04();
  v51 = v61;
  sub_2684B4C04();
  (*(v49 + 8))(v50, v48);
  sub_268462F30(v43);
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = v68;
  (*(v63 + 32))(v68, v51, v64);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7C0, &qword_2684B9E38);
  v57 = v55 + *(result + 36);
  *v57 = 1;
  *(v57 + 8) = v52;
  *(v57 + 16) = 0;
  *(v57 + 24) = v53;
  *(v57 + 32) = 0;
  *(v57 + 40) = v54;
  *(v57 + 48) = 0;
  return result;
}

uint64_t sub_2684A14EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReminderHeadingTextView(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_2684B3CF4();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = sub_2684A16DC();
  v15 = v14;
  if (v14)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    sub_268475600(v11, v12, v13 & 1);

    sub_26846D468(v16, v17, v18 & 1);

    v19 = v18 & 1;
    sub_268475600(v16, v17, v18 & 1);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v19 = 0;
  }

  sub_26849D294(v9, v7);
  sub_26849D294(v7, a2);
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7C8, &qword_2684B9E40) + 48));
  sub_2684A1F50(0, 0, v16, v17, v19, v15);
  sub_2684A1F9C(0, 0, v16, v17, v19, v15);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v19;
  v20[5] = v15;
  sub_26849D2F8(v9);
  sub_2684A1F9C(0, 0, v16, v17, v19, v15);
  return sub_26849D2F8(v7);
}

uint64_t sub_2684A16DC()
{
  v1 = sub_2684B4884();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2684B3924();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7D0, &qword_2684B9E48);
  MEMORY[0x28223BE20](v3);
  v4 = v0 + *(type metadata accessor for ReminderPrimaryHeadingView(0) + 20);
  if (*(v4 + 8))
  {
    return 0;
  }

  if (*v4 <= 50)
  {
    v7 = sub_2684B38C4();
    sub_2684A1FE8(v7, v8, v9);
    sub_2684B3794();
    sub_26846ACF0(&qword_28027E7E0, &qword_28027E7D0, &qword_2684B9E48, MEMORY[0x277CC8CE8]);
    return sub_2684B4B84();
  }

  else
  {
    sub_2684B4874();
    sub_2684B4864();
    sub_2684B59E4();
    sub_2684B4854();

    sub_2684B4864();
    sub_2684B48A4();
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v6 = qword_280282928;
    return sub_2684B4B94();
  }
}

double sub_2684A19A4@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B9C00;
  return result;
}

uint64_t type metadata accessor for ReminderPrimaryHeadingView(uint64_t a1)
{
  result = qword_28027E728;
  if (!qword_28027E728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684A1A38(uint64_t a1)
{
  sub_2684B3CF4();
  if (v1 <= 0x3F)
  {
    sub_2684A1B1C(319, &qword_28027DC20, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2684A1B1C(319, &qword_28027E738, &type metadata for ReminderPrimaryHeadingView.Constants, type metadata accessor for IdiomConstant);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2684A1B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_2684A1B88@<D0>(_OWORD *a1@<X8>)
{
  result = 10.0;
  *a1 = xmmword_2684B9C10;
  return result;
}

double sub_2684A1B98@<D0>(_OWORD *a1@<X8>)
{
  result = 14.0;
  *a1 = xmmword_2684B9C20;
  return result;
}

uint64_t sub_2684A1BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4724();
  *a1 = result;
  return result;
}

unint64_t sub_2684A1C04()
{
  result = qword_28027E788;
  if (!qword_28027E788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E750, &qword_2684B9D50);
    sub_2684A1CEC(&qword_28027E790, &qword_28027E748, &qword_2684B9D48, sub_2684A1CBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E788);
  }

  return result;
}

uint64_t sub_2684A1CEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2684A1D70()
{
  result = qword_28027E7A0;
  if (!qword_28027E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E778, &qword_2684B9DA0);
    sub_2684A1E28();
    sub_26846ACF0(&qword_28027E7B0, &qword_28027E7B8, &qword_2684BAF50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7A0);
  }

  return result;
}

unint64_t sub_2684A1E28()
{
  result = qword_28027E7A8;
  if (!qword_28027E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E770, &qword_2684B9D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E740, &qword_2684B9D40);
    sub_26846ACF0(&qword_28027E768, &qword_28027E740, &qword_2684B9D40, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7A8);
  }

  return result;
}

void sub_2684A1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_268475600(a3, a4, a5 & 1);
  }
}

void sub_2684A1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_26846D468(a3, a4, a5 & 1);
  }
}

unint64_t sub_2684A1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E7D8;
  if (!qword_28027E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7D8);
  }

  return result;
}

unint64_t sub_2684A203C()
{
  result = qword_28027E7E8;
  if (!qword_28027E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E7C0, &qword_2684B9E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E750, &qword_2684B9D50);
    sub_2684A1C04();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26846B18C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7E8);
  }

  return result;
}

uint64_t type metadata accessor for CreateNote3pSnippet(uint64_t a1)
{
  result = qword_28027E7F0;
  if (!qword_28027E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684A2178(uint64_t a1)
{
  result = sub_2684B3B84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2684A2200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_2684B52C4();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B52E4();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v67 - v8;
  v71 = type metadata accessor for NoteDetail3pView(0);
  v9 = MEMORY[0x28223BE20](v71);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v67 - v11;
  v12 = sub_2684B5204();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_2684B3B54();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = sub_2684B3EA4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v82 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v67 - v31;
  v72 = a1;
  sub_2684B3B64();
  sub_2684B3B44();
  v33 = v23;
  v34 = v17;
  v35 = *(v18 + 8);
  v35(v33, v34);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    sub_268467A4C(v16, &qword_28027D3E8, &unk_2684B7F40);
    v36 = 1;
    v37 = v32;
    v39 = v69;
    v38 = v70;
  }

  else
  {
    (*(v25 + 32))(v27, v16, v24);
    sub_2684B3E84();
    v40 = v68;
    sub_2684B5214();
    (*(v25 + 8))(v27, v24);
    v41 = v69;
    v42 = v40;
    v43 = v70;
    (*(v69 + 32))(v32, v42, v70);
    v36 = 0;
    v37 = v32;
    v38 = v43;
    v39 = v41;
  }

  (*(v39 + 56))(v37, v36, 1, v38);
  v44 = v83;
  sub_2684B3B74();
  sub_2684B3B64();
  v45 = v71;
  sub_2684B3B44();
  v35(v21, v34);
  *(v44 + *(v45 + 24)) = 1;
  v46 = v44 + *(v45 + 28);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v47 = qword_280282928;
  v48 = sub_2684B4B94();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v85 = MEMORY[0x277CE0BD8];
  v86 = MEMORY[0x277D638E8];
  v55 = swift_allocObject();
  v84 = v55;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52 & 1;
  *(v55 + 40) = v54;
  (*(v74 + 104))(v73, *MEMORY[0x277D63D60], v75);
  v56 = v76;
  sub_2684B52D4();
  v57 = v82;
  sub_2684A2C98(v37, v82);
  v58 = v77;
  sub_2684A2D08(v44, v77, type metadata accessor for NoteDetail3pView);
  v60 = v79;
  v59 = v80;
  v61 = *(v79 + 16);
  v75 = v37;
  v62 = v78;
  v61(v78, v56, v80);
  v63 = v81;
  sub_2684A2C98(v57, v81);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E818, &qword_2684B9F50);
  sub_2684A2D08(v58, v63 + *(v64 + 48), type metadata accessor for NoteDetail3pView);
  v61((v63 + *(v64 + 64)), v62, v59);
  v65 = *(v60 + 8);
  v65(v56, v59);
  sub_2684A2D70(v83);
  sub_268467A4C(v75, &qword_28027D3F0, &qword_2684B6C10);
  v65(v62, v59);
  sub_2684A2D70(v58);
  return sub_268467A4C(v82, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_2684A29FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2684A2D08(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateNote3pSnippet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2684A2BC4(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E800, &qword_2684B9EB8);
  sub_26846ACF0(&qword_28027E808, &qword_28027E800, &qword_2684B9EB8, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E810, &qword_2684B9F48);
  v12 = a2 + *(result + 36);
  *v12 = 1;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = v9;
  *(v12 + 32) = 0;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  return result;
}

uint64_t sub_2684A2BC4(uint64_t a1, uint64_t a2)
{
  Note3pSnippet = type metadata accessor for CreateNote3pSnippet(0);
  (*(*(Note3pSnippet - 8) + 32))(a2, a1, Note3pSnippet);
  return a2;
}

uint64_t sub_2684A2C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CreateNote3pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684A2200(v4, a1);
}

uint64_t sub_2684A2C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A2D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684A2D70(uint64_t a1)
{
  v2 = type metadata accessor for NoteDetail3pView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684A2DCC()
{
  result = qword_28027E820;
  if (!qword_28027E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E810, &qword_2684B9F48);
    v3 = sub_26846ACF0(&qword_28027E828, &qword_28027E830, &qword_2684B9F58, MEMORY[0x277D63B90]);
    sub_26846B18C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E820);
  }

  return result;
}

id sub_2684A2EB8()
{
  type metadata accessor for SiriNotebookUIBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280282928 = result;
  return result;
}

uint64_t type metadata accessor for MessagingTriggerPill(uint64_t a1)
{
  result = qword_28027E838;
  if (!qword_28027E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684A2F84(uint64_t a1)
{
  sub_2684B40F4();
  if (v1 <= 0x3F)
  {
    sub_2684744F0(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2684A3024@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v16 = sub_2684B3984();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B3F94();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B39C4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2684B5144();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B40E4();
  sub_2684B3F74();
  (*(v4 + 8))(v6, v15);
  sub_2684B39B4();

  sub_2684B5154();
  v12 = v16;
  (*(v1 + 104))(v3, *MEMORY[0x277D62A88], v16);
  sub_2684A3CB8();
  sub_2684B4BF4();
  (*(v1 + 8))(v3, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2684A32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MessagingTriggerPill(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  sub_2684B4454();
  *a2 = sub_2684B4834();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
  return sub_2684A337C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2684A337C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v41 = sub_2684B3F94();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2684B3D44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v7 = *(v36 - 8);
  v8 = MEMORY[0x28223BE20](v36);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  (*(v4 + 104))(v6, *MEMORY[0x277D5E0F8], v3);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v12 = qword_280282928;
  v13 = sub_2684B4B94();
  v15 = v14;
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  v18 = sub_2684B4B64();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_26846D468(v13, v15, v17 & 1);

  v43 = v18;
  v44 = v20;
  v45 = v22 & 1;
  v46 = v24;
  sub_2684B4D44();
  sub_26846D468(v18, v20, v22 & 1);

  v25 = v37;
  sub_2684B40E4();
  v26 = sub_2684B3F84();
  v28 = v27;
  (*(v39 + 8))(v25, v41);
  v29 = *(v7 + 16);
  v30 = v38;
  v31 = v36;
  v29(v38, v11, v36);
  v32 = v42;
  v29(v42, v30, v31);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v33 = v26;
  *(v33 + 1) = v28;
  v33[16] = 0;
  *(v33 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v26, v28, 0);
  v34 = *(v7 + 8);

  v34(v11, v31);
  sub_26846D468(v26, v28, 0);

  return (v34)(v30, v31);
}

double sub_2684A37D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_2684A3968(v2, &v15 - v8);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2684A39CC(v9, v11 + v10);
  sub_2684A3968(v2, v7);
  v12 = swift_allocObject();
  sub_2684A39CC(v7, v12 + v10);
  KeyPath = swift_getKeyPath();
  *a2 = sub_2684A3A30;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_2684A3B6C;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  result = 24.0;
  *(a2 + 48) = xmmword_2684B6710;
  *(a2 + 64) = sub_2684A3C08;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_2684A3968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingTriggerPill(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A39CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingTriggerPill(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for MessagingTriggerPill(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B40F4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_2684A3B84(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessagingTriggerPill(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_2684A3C08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2684A3C64(a1, a3, a4);
  sub_2684B53E4();
  result = *&v6;
  *a2 = v6;
  return result;
}

unint64_t sub_2684A3C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E848;
  if (!qword_28027E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E848);
  }

  return result;
}

unint64_t sub_2684A3CB8()
{
  result = qword_28027E158;
  if (!qword_28027E158)
  {
    sub_2684B5144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E158);
  }

  return result;
}

unint64_t sub_2684A3D10()
{
  result = qword_28027E850;
  if (!qword_28027E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E858, &unk_2684BA030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E850);
  }

  return result;
}

uint64_t sub_2684A3D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_2684B3C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B3CF4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = *(v9 + 16);
  v16(&v39 - v14, v0, v8);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 == *MEMORY[0x277D5E058])
  {
    LODWORD(v42) = sub_2684B49D4();
    v18 = sub_2684B44B4();
    (*(v9 + 8))(v15, v8);
    return v18;
  }

  if (v17 == *MEMORY[0x277D5E060])
  {
    (*(v9 + 96))(v15, v8);
    (*(v5 + 32))(v7, v15, v4);
    sub_2684B3BE4();
    v19 = sub_2684B3F64();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v3, 1, v19) == 1)
    {
      sub_268467A4C(v3, &qword_28027D8A8, &qword_2684BB110);
      v21 = sub_2684B4E54();
    }

    else
    {
      v21 = sub_26849A760();
      (*(v20 + 8))(v3, v19);
    }

    v42 = v21;
    v18 = sub_2684B44B4();
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  if (v17 == *MEMORY[0x277D5E040])
  {
    (*(v9 + 8))(v15, v8);
LABEL_8:
    v22 = sub_2684B49D4();
LABEL_9:
    LODWORD(v42) = v22;
    return sub_2684B44B4();
  }

  if (v17 == *MEMORY[0x277D5E048])
  {
    (*(v9 + 8))(v15, v8);
LABEL_14:
    if (qword_28027CF00 != -1)
    {
      swift_once();
    }

    v23 = sub_2684B3F64();
    __swift_project_value_buffer(v23, qword_2802828F8);
    v24 = sub_26849A760();
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D5E050])
  {
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D5E088])
  {
    v24 = sub_2684B4E84();
LABEL_17:
    v42 = v24;
    return sub_2684B44B4();
  }

  if (v17 == *MEMORY[0x277D5E080])
  {
    goto LABEL_14;
  }

  if (v17 == *MEMORY[0x277D5E068] || v17 == *MEMORY[0x277D5E090])
  {
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D5E098])
  {
    goto LABEL_14;
  }

  if (v17 == *MEMORY[0x277D5E0A0])
  {
    v24 = sub_2684B4E44();
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D5E070])
  {
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D5E078])
  {
    v24 = sub_2684B4E54();
    goto LABEL_17;
  }

  if (v17 == *MEMORY[0x277D5E038])
  {
    v22 = sub_2684B49F4();
    goto LABEL_9;
  }

  v26 = v9;
  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v27 = sub_2684B4354();
  __swift_project_value_buffer(v27, qword_280282910);
  v28 = v41;
  v16(v41, v0, v8);
  v29 = sub_2684B4334();
  v30 = sub_2684B5704();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v31 = 136315138;
    v16(v40, v28, v8);
    v32 = sub_2684B5564();
    v33 = v28;
    v35 = v34;
    v36 = *(v26 + 8);
    v36(v33, v8);
    v37 = sub_268479394(v32, v35, &v42);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_26845C000, v29, v30, "Unknown ReminderSectionHeading: %s", v31, 0xCu);
    v38 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x26D61A450](v38, -1, -1);
    MEMORY[0x26D61A450](v31, -1, -1);
  }

  else
  {

    v36 = *(v26 + 8);
    v36(v28, v8);
  }

  LODWORD(v42) = sub_2684B49D4();
  v18 = sub_2684B44B4();
  v36(v15, v8);
  return v18;
}

uint64_t sub_2684A44AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_2684B3CF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_2684A46E8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_268467A4C(v4, &qword_28027E860, &unk_2684BA290);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v12 = (*(v6 + 88))(v9, v5);
    v13 = *MEMORY[0x277D5E060];
    v14 = *(v6 + 8);
    v14(v9, v5);
    if (v12 == v13)
    {
      v15 = sub_2684A3D74();
      v14(v11, v5);
      return v15;
    }

    v14(v11, v5);
  }

  return sub_2684A3D74();
}

uint64_t sub_2684A46E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A4758@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3CF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  sub_2684B3DE4();
  (*(v6 + 16))(v9, v11, v5);
  sub_2684A714C(v1, v4, type metadata accessor for ReminderSearchResult1pSnippet);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = (v7 + *(v33 + 80) + v12) & ~*(v33 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v12, v9, v5);
  sub_2684A6DB0(v4, v14 + v13, type metadata accessor for ReminderSearchResult1pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E880, &qword_2684BA188);
  sub_26846ACF0(&qword_28027E888, &qword_28027E880, &qword_2684BA188, MEMORY[0x277CE14C0]);
  v15 = v34;
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v17 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E890, &qword_2684BA1B8) + 36);
  *v17 = KeyPath;
  *(v17 + 8) = 1;
  LOBYTE(KeyPath) = sub_2684B4A44();
  sub_2684B4364();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E898, &qword_2684BA1C0) + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = sub_2684A3D74();
  v28 = swift_getKeyPath();
  v35 = v27;

  v29 = sub_2684B44B4();
  (*(v6 + 8))(v11, v5);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8A0, &qword_2684BA1F8);
  v31 = (v15 + *(result + 36));
  *v31 = v28;
  v31[1] = v29;
  return result;
}

uint64_t sub_2684A4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v91 = type metadata accessor for ReadingPromptButtons(0);
  MEMORY[0x28223BE20](v91);
  v103 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v88 - v8;
  v9 = sub_2684B3FB4();
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v88 - v14;
  v15 = sub_2684B3CF4();
  v112 = *(v15 - 8);
  v16 = v112;
  v98 = *(v112 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v88 - v19;
  v20 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  v96 = *(v20 - 8);
  v95 = *(v96 + 64);
  MEMORY[0x28223BE20](v20);
  v94 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8B0, &qword_2684BA208);
  v105 = *(v22 - 8);
  v106 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v104 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v115 = &v88 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8B8, &qword_2684BA210);
  v27 = v26 - 8;
  v28 = MEMORY[0x28223BE20](v26);
  v114 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - v30;
  v32 = *(v16 + 16);
  v32(&v88 - v30, a1, v15);
  v33 = sub_2684B3DF4();
  v35 = v34;
  v36 = type metadata accessor for ReminderPrimaryHeadingView(0);
  v37 = &v31[*(v36 + 20)];
  *v37 = v33;
  v38 = a1;
  v37[8] = v35 & 1;
  v39 = &v31[*(v36 + 24)];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  *(v39 + 1) = xmmword_2684B9C00;
  *(v39 + 4) = sub_2684A6B5C;
  *(v39 + 5) = 0;
  LOBYTE(v39) = sub_2684B4A44();
  sub_2684B4364();
  v40 = *(v27 + 44);
  v113 = v31;
  v41 = &v31[v40];
  *v41 = v39;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v93 = a2;
  v46 = sub_2684B3E54();
  v47 = sub_2684ABFC0(v46);

  v116 = v47;
  swift_getKeyPath();
  v48 = v94;
  sub_2684A714C(a2, v94, type metadata accessor for ReminderSearchResult1pSnippet);
  v49 = v97;
  v88 = v38;
  v89 = v32;
  v32(v97, v38, v15);
  v50 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v51 = v112;
  v52 = (v95 + *(v112 + 80) + v50) & ~*(v112 + 80);
  v53 = v99;
  v54 = swift_allocObject();
  sub_2684A6DB0(v48, v54 + v50, type metadata accessor for ReminderSearchResult1pSnippet);
  v55 = *(v51 + 32);
  v98 = v15;
  v55(v54 + v52, v49, v15);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_2684A6BB8;
  *(v56 + 24) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C8, &unk_2684BA270);
  sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268, MEMORY[0x277D83980]);
  sub_2684A6CA8();
  v57 = v100;
  sub_2684B5014();
  v58 = v101;
  sub_2684B3E44();
  v59 = v58;
  if ((*(v53 + 48))(v58, 1, v57) != 1)
  {
    v66 = v102;
    (*(v53 + 32))(v102, v59, v57);
    (*(v53 + 16))(v103, v66, v57);
    sub_2684B52A4();
    v67 = v90;
    v68 = v98;
    v89(v90, v88, v98);
    v69 = v112;
    v70 = (*(v112 + 88))(v67, v68);
    v71 = v67;
    if (v70 == *MEMORY[0x277D5E058] || v70 == *MEMORY[0x277D5E040] || v70 == *MEMORY[0x277D5E048])
    {
      (*(v69 + 8))(v67, v68);
      v72 = v109;
      v62 = v110;
      v64 = v108;
      v73 = v92;
    }

    else
    {
      v72 = v109;
      v62 = v110;
      v64 = v108;
      v73 = v92;
      if (v70 != *MEMORY[0x277D5E050] && v70 != *MEMORY[0x277D5E080] && v70 != *MEMORY[0x277D5E068] && v70 != *MEMORY[0x277D5E090] && v70 != *MEMORY[0x277D5E098] && v70 != *MEMORY[0x277D5E070] && v70 != *MEMORY[0x277D5E038])
      {
        v74 = v71;
        v75 = sub_2684A3D74();
        (*(v69 + 8))(v74, v68);
LABEL_16:
        KeyPath = swift_getKeyPath();
        v116 = v75;

        v77 = sub_2684B44B4();
        (*(v53 + 8))(v102, v57);

        sub_2684A6DB0(v103, v73, type metadata accessor for ReadingPromptButtons);
        v78 = (v73 + *(v62 + 36));
        *v78 = KeyPath;
        v78[1] = v77;
        v65 = v107;
        sub_26846A8C8(v73, v107, &qword_28027D138, &qword_2684BA200);
        v60 = 0;
        v63 = v72;
        v61 = v111;
        goto LABEL_17;
      }
    }

    v116 = sub_2684B4E54();
    v75 = sub_2684B44B4();
    goto LABEL_16;
  }

  sub_268467A4C(v58, &qword_28027D140, &qword_2684B6610);
  v60 = 1;
  v62 = v110;
  v61 = v111;
  v64 = v108;
  v63 = v109;
  v65 = v107;
LABEL_17:
  (*(v64 + 56))(v65, v60, 1, v62);
  v79 = v114;
  sub_26846A6DC(v113, v114, &qword_28027E8B8, &qword_2684BA210);
  v81 = v104;
  v80 = v105;
  v82 = *(v105 + 16);
  v83 = v115;
  v84 = v106;
  v82(v104, v115, v106);
  sub_26846A6DC(v65, v63, &qword_28027D100, &qword_2684B65E0);
  sub_26846A6DC(v79, v61, &qword_28027E8B8, &qword_2684BA210);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8F8, &qword_2684BA280);
  v82((v61 + *(v85 + 48)), v81, v84);
  sub_26846A6DC(v63, v61 + *(v85 + 64), &qword_28027D100, &qword_2684B65E0);
  sub_268467A4C(v65, &qword_28027D100, &qword_2684B65E0);
  v86 = *(v80 + 8);
  v86(v83, v84);
  sub_268467A4C(v113, &qword_28027E8B8, &qword_2684BA210);
  sub_268467A4C(v63, &qword_28027D100, &qword_2684B65E0);
  v86(v81, v84);
  return sub_268467A4C(v114, &qword_28027E8B8, &qword_2684BA210);
}

uint64_t sub_2684A5710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = *(a2 + *(type metadata accessor for ReminderSearchResult1pSnippet(0) + 20) + 104);
  v10 = sub_2684B3E34();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  *(a3 + *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) + 20)) = v9;
  sub_2684B3E24();
  v11 = sub_2684A44AC(v8);
  sub_268467A4C(v8, &qword_28027E860, &unk_2684BA290);
  KeyPath = swift_getKeyPath();
  v16[1] = v11;
  v13 = sub_2684B44B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C8, &unk_2684BA270);
  v15 = (a3 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  return result;
}

void *sub_2684A5894@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2684A6B08(a2, a3, a4);
  result = sub_2684B4804();
  *a1 = v6;
  return result;
}

uint64_t sub_2684A5930@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v70 = type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0);
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v74 = v2;
  v75 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E958, &qword_2684BA348);
  v77 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v76 = &v69 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E960, &qword_2684BA350);
  MEMORY[0x28223BE20](v88);
  v89 = &v69 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E968, &qword_2684BA358);
  MEMORY[0x28223BE20](v81);
  v82 = &v69 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E970, &unk_2684BA360);
  MEMORY[0x28223BE20](v85);
  v86 = &v69 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E978, &qword_2684BB190);
  v73 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v71 = &v69 - v7;
  v8 = sub_2684B3E04();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v69 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E980, &qword_2684BA370);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v87 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E988, &qword_2684BA378);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v69 - v22;
  v24 = sub_2684B3CF4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E990, &qword_2684BA380);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v80 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v69 - v31;
  sub_2684B3E24();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_268467A4C(v23, &qword_28027E860, &unk_2684BA290);
    v33 = 1;
  }

  else
  {
    (*(v25 + 32))(v27, v23, v24);
    (*(v25 + 16))(v20, v27, v24);
    v34 = &v20[*(type metadata accessor for ReminderSectionHeadingView(0) + 20)];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    LOBYTE(v34) = sub_2684B4A44();
    sub_2684B4364();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    (*(v25 + 8))(v27, v24);
    v43 = &v20[*(v17 + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    sub_26846A8C8(v20, v32, &qword_28027E988, &qword_2684BA378);
    v33 = 0;
  }

  v44 = v32;
  (*(v18 + 56))(v32, v33, 1, v17);
  sub_2684B3E14();
  v46 = v78;
  v45 = v79;
  v47 = (*(v78 + 88))(v12, v79);
  if (v47 == *MEMORY[0x277D5E120])
  {
    (*(v46 + 96))(v12, v45);
    v92 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
    sub_2684B3894();
    type metadata accessor for ReminderView(0);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0, MEMORY[0x277D83980]);
    sub_2684A7440(&qword_28027D7F8, type metadata accessor for ReminderView, &unk_2684B8304);
    sub_2684A7440(&qword_28027DEB0, MEMORY[0x277D5E1A8], MEMORY[0x277D5E1B0]);
    v48 = v71;
    sub_2684B5024();
    v49 = v73;
    v50 = v83;
    (*(v73 + 16))(v82, v48, v83);
    swift_storeEnumTagMultiPayload();
    sub_2684A738C();
    sub_2684A7488();
    v51 = v86;
    sub_2684B49B4();
    sub_26846A6DC(v51, v89, &qword_28027E970, &unk_2684BA360);
    swift_storeEnumTagMultiPayload();
    sub_2684A750C();
    v52 = v84;
    sub_2684B49B4();
    sub_268467A4C(v51, &qword_28027E970, &unk_2684BA360);
    (*(v49 + 8))(v48, v50);
LABEL_8:
    v63 = v80;
    sub_26846A6DC(v44, v80, &qword_28027E990, &qword_2684BA380);
    v64 = v87;
    sub_26846A6DC(v52, v87, &qword_28027E980, &qword_2684BA370);
    v65 = v91;
    sub_26846A6DC(v63, v91, &qword_28027E990, &qword_2684BA380);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E9C0, &unk_2684BA390);
    sub_26846A6DC(v64, v65 + *(v66 + 48), &qword_28027E980, &qword_2684BA370);
    sub_268467A4C(v52, &qword_28027E980, &qword_2684BA370);
    sub_268467A4C(v44, &qword_28027E990, &qword_2684BA380);
    sub_268467A4C(v64, &qword_28027E980, &qword_2684BA370);
    return sub_268467A4C(v63, &qword_28027E990, &qword_2684BA380);
  }

  v53 = v1;
  if (v47 == *MEMORY[0x277D5E118])
  {
    (*(v46 + 96))(v12, v45);
    v54 = sub_2684ABFC0(*v12);

    v92 = v54;
    swift_getKeyPath();
    v55 = v75;
    sub_2684A714C(v53, v75, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    v56 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v57 = swift_allocObject();
    sub_2684A6DB0(v55, v57 + v56, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_2684A71B4;
    *(v58 + 24) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E998, &qword_2684BA388);
    sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268, MEMORY[0x277D83980]);
    sub_2684A72A4();
    v59 = v76;
    sub_2684B5014();
    v60 = v77;
    v61 = v90;
    (*(v77 + 16))(v82, v59, v90);
    swift_storeEnumTagMultiPayload();
    sub_2684A738C();
    sub_2684A7488();
    v62 = v86;
    sub_2684B49B4();
    sub_26846A6DC(v62, v89, &qword_28027E970, &unk_2684BA360);
    swift_storeEnumTagMultiPayload();
    sub_2684A750C();
    v52 = v84;
    sub_2684B49B4();
    sub_268467A4C(v62, &qword_28027E970, &unk_2684BA360);
    (*(v60 + 8))(v59, v61);
    goto LABEL_8;
  }

  v92 = 0;
  v93 = 0xE000000000000000;
  sub_2684B58A4();

  v92 = 0xD000000000000022;
  v93 = 0x80000002684C46A0;
  sub_2684B3E14();
  v68 = sub_2684B5564();
  MEMORY[0x26D619980](v68);

  result = sub_2684B5914();
  __break(1u);
  return result;
}

uint64_t sub_2684A66D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  result = type metadata accessor for ReminderView(0);
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2684A6768@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0);
  v7 = *(a2 + *(v6 + 20));
  v8 = sub_2684B3E34();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + *(v6 + 20)) = v7;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E998, &qword_2684BA388);
  v11 = a3 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_2684A6834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684BA040;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_280282930 = v0;
  return result;
}

double sub_2684A68A8@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B6170;
  return result;
}

void sub_2684A6910(uint64_t a1)
{
  sub_2684B3E64();
  if (v1 <= 0x3F)
  {
    sub_2684A6994(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684A6994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_28027E878)
  {
    v4 = type metadata accessor for AmbientScaledIdiomConstant(0, &type metadata for ReminderSearchResult1pSnippet.Constants, &off_2879154B8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_28027E878);
    }
  }
}

double sub_2684A6A04@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2684BA050;
  return result;
}

uint64_t sub_2684A6A34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2684B3CF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2684A4B04(v1 + v4, v7, a1);
}

unint64_t sub_2684A6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E8A8;
  if (!qword_28027E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E8A8);
  }

  return result;
}

double sub_2684A6B5C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2684A6E18(a1, a3, a4);
  sub_2684B53E4();
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_2684A6BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_2684B3CF4();

  return sub_2684A5710(a1, v2 + v6, a2);
}

unint64_t sub_2684A6CA8()
{
  result = qword_28027E8D8;
  if (!qword_28027E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E8C8, &unk_2684BA270);
    sub_2684A7440(&qword_28027E8E0, type metadata accessor for ReminderSearchResult1pSnippet.SectionView, &unk_2684BA2F8);
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E8D8);
  }

  return result;
}

uint64_t sub_2684A6DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2684A6E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E908;
  if (!qword_28027E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E908);
  }

  return result;
}

uint64_t sub_2684A6E94(uint64_t a1)
{
  result = sub_2684B3E34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2684A6F08()
{
  result = qword_28027E920;
  if (!qword_28027E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E8A0, &qword_2684BA1F8);
    sub_2684A6FC0();
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E920);
  }

  return result;
}

unint64_t sub_2684A6FC0()
{
  result = qword_28027E928;
  if (!qword_28027E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E898, &qword_2684BA1C0);
    sub_2684A704C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E928);
  }

  return result;
}

unint64_t sub_2684A704C()
{
  result = qword_28027E930;
  if (!qword_28027E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E890, &qword_2684BA1B8);
    sub_26846ACF0(&qword_28027E938, &qword_28027E940, "Rz", MEMORY[0x277D63B90]);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E930);
  }

  return result;
}

uint64_t sub_2684A714C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684A71B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684A6768(a1, v6, a2);
}

uint64_t sub_2684A723C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E900, &qword_2684BA288);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_2684A72A4()
{
  result = qword_28027E9A0;
  if (!qword_28027E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E998, &qword_2684BA388);
    sub_2684A7440(&qword_28027E8E0, type metadata accessor for ReminderSearchResult1pSnippet.SectionView, &unk_2684BA2F8);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9A0);
  }

  return result;
}

unint64_t sub_2684A738C()
{
  result = qword_28027E9A8;
  if (!qword_28027E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E978, &qword_2684BB190);
    sub_2684A7440(&qword_28027D7F8, type metadata accessor for ReminderView, &unk_2684B8304);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9A8);
  }

  return result;
}

uint64_t sub_2684A7440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2684A7488()
{
  result = qword_28027E9B0;
  if (!qword_28027E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E958, &qword_2684BA348);
    sub_2684A72A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9B0);
  }

  return result;
}

unint64_t sub_2684A750C()
{
  result = qword_28027E9B8;
  if (!qword_28027E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E970, &unk_2684BA360);
    sub_2684A738C();
    sub_2684A7488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9B8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2684A75B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2684A75F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2684A7668@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2684B47F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_2684B5704();
    v12 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846EFC8(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v15[1])
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 1;
    goto LABEL_6;
  }

  v10 = a1;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2684B5374();
  v11 = 0;
LABEL_6:
  v13 = sub_2684B5364();
  return (*(*(v13 - 8) + 56))(a3, v11, 1, v13);
}

uint64_t sub_2684A7830()
{
  v0 = sub_2684B5164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B5174();
  v4 = sub_2684B5334();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A0, &unk_2684B79F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2684B7880;
  *(v5 + 32) = v4;
  v6 = sub_2684B5324();

  return v6;
}

uint64_t sub_2684A7964@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2684B4E64();
  sub_2684B50A4();
  sub_2684B44A4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4A0, &qword_2684B9650);
  a2[4] = sub_268499D9C();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v3;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *(result + 40) = v7;
  *(result + 48) = v8;
  *(result + 56) = v9;
  *(result + 64) = v10;
  return result;
}

unint64_t sub_2684A7A3C()
{
  result = qword_28027E9D8;
  if (!qword_28027E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E9E0, &unk_2684BA4C0);
    sub_26847A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9D8);
  }

  return result;
}

uint64_t sub_2684A7B08(uint64_t a1)
{
  result = sub_2684B3CE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_2684A7B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_26849A6FC(a1, a2, a3);
  result = sub_2684B4804();
  *a4 = v6;
  return result;
}

uint64_t sub_2684A7C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B3EF4();
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_2684B3CB4() + 16);

  if (!v5)
  {
    v6 = *(sub_2684B3CC4() + 16);

    if (v6 == 1)
    {
      v7 = sub_2684B3CC4();
      if (*(v7 + 16))
      {
        (*(v11 + 16))(v4, v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v2);

        (*(v11 + 32))(a1, v4, v2);
        return (*(v11 + 56))(a1, 0, 1, v2);
      }
    }
  }

  v9 = *(v11 + 56);

  return v9(a1, 1, 1, v2);
}

uint64_t sub_2684A7DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v127 = type metadata accessor for ReadingPromptButtons(0);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v108 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v96 - v5;
  v6 = sub_2684B3FB4();
  v123 = *(v6 - 8);
  v124 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA10, &qword_2684BA5E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v126 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v96 - v11;
  v120 = type metadata accessor for NoteDetail3pView(0);
  MEMORY[0x28223BE20](v120);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA18, &qword_2684BA5E8);
  MEMORY[0x28223BE20](v117);
  v119 = &v96 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA20, &qword_2684BA5F0);
  MEMORY[0x28223BE20](v118);
  v106 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA28, &qword_2684BA5F8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA30, &qword_2684BA600);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v103 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA38, &qword_2684BA608);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v113 = &v96 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA40, &qword_2684BA610);
  MEMORY[0x28223BE20](v27 - 8);
  v110 = &v96 - v28;
  v112 = sub_2684B3EF4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v101 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA48, &qword_2684BA618);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v121 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v132 = &v96 - v33;
  v109 = sub_2684B5204();
  v34 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v98 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v96 - v37;
  v39 = sub_2684B3B54();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v99 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v96 - v43;
  v45 = sub_2684B3EA4();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v116 = &v96 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v96 - v52;
  v130 = a1;
  sub_2684B3C94();
  sub_2684B3B44();
  v54 = *(v40 + 8);
  v100 = v39;
  v97 = v54;
  v54(v44, v39);
  if ((*(v46 + 48))(v38, 1, v45) == 1)
  {
    sub_268467A4C(v38, &qword_28027D3E8, &unk_2684B7F40);
    v55 = 1;
    v56 = v53;
    v57 = v109;
  }

  else
  {
    (*(v46 + 32))(v48, v38, v45);
    sub_2684B3E84();
    v58 = v98;
    sub_2684B5214();
    (*(v46 + 8))(v48, v45);
    v59 = v58;
    v60 = v109;
    (*(v34 + 32))(v53, v59, v109);
    v55 = 0;
    v56 = v53;
    v57 = v60;
  }

  (*(v34 + 56))(v56, v55, 1, v57);
  v61 = v110;
  sub_2684A7C2C(v110);
  v62 = v111;
  v63 = v112;
  v64 = (*(v111 + 48))(v61, 1, v112);
  v65 = v131;
  v129 = v56;
  if (v64 == 1)
  {
    sub_268467A4C(v61, &qword_28027EA40, &qword_2684BA610);
    v66 = v113;
    sub_2684A8E40(v113);
    v67 = v114;
    sub_2684A93E4(v114);
    v68 = v115;
    sub_2684A9A30(v115);
    v69 = v102;
    sub_26846A6DC(v66, v102, &qword_28027EA38, &qword_2684BA608);
    v70 = v103;
    sub_26846A6DC(v67, v103, &qword_28027EA30, &qword_2684BA600);
    v71 = v104;
    sub_26846A6DC(v68, v104, &qword_28027EA28, &qword_2684BA5F8);
    v72 = v106;
    sub_26846A6DC(v69, v106, &qword_28027EA38, &qword_2684BA608);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA50, &qword_2684BA620);
    sub_26846A6DC(v70, v72 + *(v73 + 48), &qword_28027EA30, &qword_2684BA600);
    sub_26846A6DC(v71, v72 + *(v73 + 64), &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v71, &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v70, &qword_28027EA30, &qword_2684BA600);
    sub_268467A4C(v69, &qword_28027EA38, &qword_2684BA608);
    sub_26846A6DC(v72, v119, &qword_28027EA20, &qword_2684BA5F0);
    swift_storeEnumTagMultiPayload();
    sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView, &unk_2684B7F64);
    sub_26846ACF0(&qword_28027EA60, &qword_28027EA20, &qword_2684BA5F0, MEMORY[0x277CE14C0]);
    sub_2684B49B4();
    sub_268467A4C(v72, &qword_28027EA20, &qword_2684BA5F0);
    v65 = v131;
    sub_268467A4C(v115, &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v114, &qword_28027EA30, &qword_2684BA600);
    sub_268467A4C(v113, &qword_28027EA38, &qword_2684BA608);
  }

  else
  {
    v74 = v101;
    (*(v62 + 32))(v101, v61, v63);
    v75 = v105;
    (*(v62 + 16))(v105, v74, v63);
    v76 = v99;
    sub_2684B3C94();
    v77 = v120;
    sub_2684B3B44();
    v97(v76, v100);
    *(v75 + *(v77 + 24)) = 1;
    v78 = v75 + *(v77 + 28);
    *v78 = 5;
    *(v78 + 8) = 0;
    sub_2684AB6D0(v75, v119, type metadata accessor for NoteDetail3pView);
    swift_storeEnumTagMultiPayload();
    sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView, &unk_2684B7F64);
    sub_26846ACF0(&qword_28027EA60, &qword_28027EA20, &qword_2684BA5F0, MEMORY[0x277CE14C0]);
    sub_2684B49B4();
    sub_2684ACF74(v75, type metadata accessor for NoteDetail3pView);
    v79 = v74;
    v56 = v129;
    (*(v62 + 8))(v79, v63);
  }

  v80 = v122;
  sub_2684B3CD4();
  v82 = v123;
  v81 = v124;
  v83 = (*(v123 + 48))(v80, 1, v124);
  v84 = v127;
  if (v83 == 1)
  {
    sub_268467A4C(v80, &qword_28027D140, &qword_2684B6610);
    v85 = 1;
  }

  else
  {
    v86 = v107;
    (*(v82 + 32))(v107, v80, v81);
    v87 = v108;
    (*(v82 + 16))(v108, v86, v81);
    sub_2684B52A4();
    (*(v82 + 8))(v86, v81);
    sub_2684AB668(v87, v65, type metadata accessor for ReadingPromptButtons);
    v85 = 0;
  }

  v88 = v65;
  (*(v125 + 56))(v65, v85, 1, v84);
  v89 = v116;
  sub_26846A6DC(v56, v116, &qword_28027D3F0, &qword_2684B6C10);
  v90 = v132;
  v91 = v121;
  sub_26846A6DC(v132, v121, &qword_28027EA48, &qword_2684BA618);
  v92 = v126;
  sub_26846A6DC(v65, v126, &qword_28027EA10, &qword_2684BA5E0);
  v93 = v128;
  sub_26846A6DC(v89, v128, &qword_28027D3F0, &qword_2684B6C10);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA68, &qword_2684BA628);
  sub_26846A6DC(v91, v93 + *(v94 + 48), &qword_28027EA48, &qword_2684BA618);
  sub_26846A6DC(v92, v93 + *(v94 + 64), &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v88, &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v90, &qword_28027EA48, &qword_2684BA618);
  sub_268467A4C(v129, &qword_28027D3F0, &qword_2684B6C10);
  sub_268467A4C(v92, &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v91, &qword_28027EA48, &qword_2684BA618);
  return sub_268467A4C(v89, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_2684A8E40@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_2684B3994();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ReminderHeadingTextView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2684B5354();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAC8, &unk_2684BA6C0);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_2684B3CF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3CA4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_268467A4C(v12, &qword_28027E860, &unk_2684BA290);
    v17 = 1;
    v18 = v36;
    v19 = v35;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v4, v16, v13);
    sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView, &unk_2684B9948);
    v20 = sub_2684B4BC4();
    sub_2684ACF74(v4, type metadata accessor for ReminderHeadingTextView);
    v51 = MEMORY[0x277D63A60];
    v50 = MEMORY[0x277CE11C8];
    v49 = v20;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v42 = 0;
    v41 = 0u;
    v40 = 0u;
    v39 = 0;
    v38 = 0u;
    v37 = 0u;
    v21 = v6;
    sub_2684B5344();
    v22 = v33;
    v23 = v32;
    v24 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x277D62F48], v34);
    sub_2684AB738(&qword_28027EAD0, MEMORY[0x277D63DB8], MEMORY[0x277D63DA8]);
    v25 = v30;
    sub_2684B4C04();
    (*(v22 + 8))(v23, v24);
    (*(v31 + 8))(v21, v25);
    (*(v14 + 8))(v16, v13);
    v26 = v36;
    v27 = v35;
    (*(v7 + 32))(v36, v9, v35);
    v17 = 0;
    v18 = v26;
    v19 = v27;
  }

  return (*(v7 + 56))(v18, v17, 1, v19);
}

uint64_t sub_2684A93E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA98, &qword_2684BA678);
  v51 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = type metadata accessor for ReminderHeadingTextView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B3CF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2684B54A4();
  v42 = *(v45 - 8);
  v15 = v42;
  v16 = MEMORY[0x28223BE20](v45);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D5E068], v11);
  (*(v12 + 16))(v10, v14, v11);
  sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView, &unk_2684B9948);
  v20 = sub_2684B4BC4();
  sub_2684ACF74(v10, type metadata accessor for ReminderHeadingTextView);
  v53 = MEMORY[0x277CE11C8];
  v54 = MEMORY[0x277D63A60];
  v52 = v20;
  v41 = v19;
  sub_2684B5494();
  (*(v12 + 8))(v14, v11);
  v21 = sub_2684B3CC4();
  v22 = sub_2684AC434(v21);

  v52 = v22;
  swift_getKeyPath();
  v23 = v2;
  v24 = v43;
  sub_2684AB6D0(v23, v43, type metadata accessor for SearchForNotebookItems3pSnippet);
  v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v26 = swift_allocObject();
  sub_2684AB668(v24, v26 + v25, type metadata accessor for SearchForNotebookItems3pSnippet);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2684AC77C;
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAA0, &qword_2684BA6A0);
  type metadata accessor for NoteDetail3pView(0);
  sub_26846ACF0(&qword_28027EAA8, &qword_28027EAA0, &qword_2684BA6A0, MEMORY[0x277D83980]);
  sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView, &unk_2684B7F64);
  v28 = v46;
  sub_2684B5014();
  v29 = *(v15 + 16);
  v30 = v50;
  v31 = v19;
  v32 = v45;
  v29(v50, v31, v45);
  v33 = *(v51 + 16);
  v34 = v47;
  v35 = v48;
  v33(v47, v28, v48);
  v36 = v49;
  v29(v49, v30, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAB0, &qword_2684BA6A8);
  v33(&v36[*(v37 + 48)], v34, v35);
  v38 = *(v51 + 8);
  v38(v28, v35);
  v39 = *(v42 + 8);
  v39(v41, v32);
  v38(v34, v35);
  return (v39)(v50, v32);
}

uint64_t sub_2684A9A30@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA70, &qword_2684BA630);
  v51 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = type metadata accessor for ReminderHeadingTextView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B3CF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2684B54A4();
  v42 = *(v45 - 8);
  v15 = v42;
  v16 = MEMORY[0x28223BE20](v45);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D5E070], v11);
  (*(v12 + 16))(v10, v14, v11);
  sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView, &unk_2684B9948);
  v20 = sub_2684B4BC4();
  sub_2684ACF74(v10, type metadata accessor for ReminderHeadingTextView);
  v53 = MEMORY[0x277CE11C8];
  v54 = MEMORY[0x277D63A60];
  v52 = v20;
  v41 = v19;
  sub_2684B5494();
  (*(v12 + 8))(v14, v11);
  v21 = sub_2684B3CB4();
  v22 = sub_2684ABFC0(v21);

  v52 = v22;
  swift_getKeyPath();
  v23 = v2;
  v24 = v43;
  sub_2684AB6D0(v23, v43, type metadata accessor for SearchForNotebookItems3pSnippet);
  v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v26 = swift_allocObject();
  sub_2684AB668(v24, v26 + v25, type metadata accessor for SearchForNotebookItems3pSnippet);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2684AC3D4;
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
  type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268, MEMORY[0x277D83980]);
  sub_2684AB738(&qword_28027EA80, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView, &unk_2684BA710);
  v28 = v46;
  sub_2684B5014();
  v29 = *(v15 + 16);
  v30 = v50;
  v31 = v19;
  v32 = v45;
  v29(v50, v31, v45);
  v33 = *(v51 + 16);
  v34 = v47;
  v35 = v48;
  v33(v47, v28, v48);
  v36 = v49;
  v29(v49, v30, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA88, &unk_2684BA660);
  v33(&v36[*(v37 + 48)], v34, v35);
  v38 = *(v51 + 8);
  v38(v28, v35);
  v39 = *(v42 + 8);
  v39(v41, v32);
  v38(v34, v35);
  return (v39)(v50, v32);
}

uint64_t sub_2684AA07C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2684B3B54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B3EF4();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_2684B3C94();
  v9 = type metadata accessor for NoteDetail3pView(0);
  sub_2684B3B44();
  result = (*(v5 + 8))(v7, v4);
  *(a2 + *(v9 + 24)) = 0;
  v11 = a2 + *(v9 + 28);
  *v11 = 2;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_2684AA1C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2684B3B54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B3E34();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_2684B3C94();
  type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  sub_2684B3B44();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2684AA2EC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB10, &qword_2684BA760);
  v71 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v70 = v66 - v2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB18, &qword_2684BA768);
  MEMORY[0x28223BE20](v87);
  v88 = v66 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB20, &qword_2684BA770);
  MEMORY[0x28223BE20](v80);
  v82 = v66 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB28, &qword_2684BA778);
  MEMORY[0x28223BE20](v85);
  v86 = v66 - v5;
  v6 = type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  v75 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = v7;
  v77 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB30, &qword_2684BA780);
  v69 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = v66 - v8;
  v74 = sub_2684B3E04();
  v73 = *(v74 - 8);
  v9 = MEMORY[0x28223BE20](v74);
  v66[1] = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (v66 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB38, &qword_2684BA788);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = v66 - v16;
  v67 = type metadata accessor for ReminderHeadingTextView(0);
  MEMORY[0x28223BE20](v67);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2684B5434();
  v19 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v66 - v23;
  v25 = sub_2684B3CF4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB40, &qword_2684BA790);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v79 = v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = v66 - v32;
  v78 = v1;
  sub_2684B3E24();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_268467A4C(v24, &qword_28027E860, &unk_2684BA290);
    v34 = 1;
    v35 = v72;
  }

  else
  {
    (*(v26 + 32))(v28, v24, v25);
    (*(v26 + 16))(v18, v28, v25);
    sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView, &unk_2684B9948);
    v36 = sub_2684B4BC4();
    sub_2684ACF74(v18, type metadata accessor for ReminderHeadingTextView);
    v93 = MEMORY[0x277CE11C8];
    v94 = MEMORY[0x277D63A60];
    v91 = v36;
    sub_2684B5424();
    (*(v26 + 8))(v28, v25);
    v37 = v72;
    (*(v19 + 32))(v33, v21, v72);
    v34 = 0;
    v35 = v37;
  }

  (*(v19 + 56))(v33, v34, 1, v35);
  v38 = v78;
  sub_2684B3E14();
  v39 = v73;
  v40 = v74;
  v41 = (*(v73 + 88))(v12, v74);
  if (v41 == *MEMORY[0x277D5E120])
  {
    (*(v39 + 96))(v12, v40);
    v91 = *v12;
    v42 = v38;
    v43 = v77;
    sub_2684AB6D0(v42, v77, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v44 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v45 = swift_allocObject();
    sub_2684AB668(v43, v45 + v44, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
    sub_2684B3894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D470, &unk_2684B6C90);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0, MEMORY[0x277D83980]);
    sub_2684ACB50();
    sub_2684AB738(&qword_28027DEB0, MEMORY[0x277D5E1A8], MEMORY[0x277D5E1B0]);
    v46 = v68;
    sub_2684B5024();
    v47 = v69;
    v48 = v81;
    (*(v69 + 16))(v82, v46, v81);
    swift_storeEnumTagMultiPayload();
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    v49 = v86;
    sub_2684B49B4();
    sub_26846A6DC(v49, v88, &qword_28027EB28, &qword_2684BA778);
    swift_storeEnumTagMultiPayload();
    sub_2684ACCB8();
    v50 = v83;
    sub_2684B49B4();
    sub_268467A4C(v49, &qword_28027EB28, &qword_2684BA778);
    (*(v47 + 8))(v46, v48);
LABEL_8:
    v60 = v79;
    sub_26846A6DC(v33, v79, &qword_28027EB40, &qword_2684BA790);
    v61 = v84;
    sub_26846A6DC(v50, v84, &qword_28027EB38, &qword_2684BA788);
    v62 = v90;
    sub_26846A6DC(v60, v90, &qword_28027EB40, &qword_2684BA790);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB78, &unk_2684BA7A0);
    sub_26846A6DC(v61, v62 + *(v63 + 48), &qword_28027EB38, &qword_2684BA788);
    sub_268467A4C(v50, &qword_28027EB38, &qword_2684BA788);
    sub_268467A4C(v33, &qword_28027EB40, &qword_2684BA790);
    sub_268467A4C(v61, &qword_28027EB38, &qword_2684BA788);
    return sub_268467A4C(v60, &qword_28027EB40, &qword_2684BA790);
  }

  if (v41 == *MEMORY[0x277D5E118])
  {
    (*(v39 + 96))(v12, v40);
    v51 = sub_2684ABFC0(*v12);

    v91 = v51;
    swift_getKeyPath();
    v52 = v77;
    sub_2684AB6D0(v38, v77, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v53 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v54 = swift_allocObject();
    sub_2684AB668(v52, v54 + v53, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2684AC9DC;
    *(v55 + 24) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB48, &qword_2684BA798);
    sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268, MEMORY[0x277D83980]);
    sub_2684ACA68();
    v56 = v70;
    sub_2684B5014();
    v57 = v71;
    v58 = v89;
    (*(v71 + 16))(v82, v56, v89);
    swift_storeEnumTagMultiPayload();
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    v59 = v86;
    sub_2684B49B4();
    sub_26846A6DC(v59, v88, &qword_28027EB28, &qword_2684BA778);
    swift_storeEnumTagMultiPayload();
    sub_2684ACCB8();
    v50 = v83;
    sub_2684B49B4();
    sub_268467A4C(v59, &qword_28027EB28, &qword_2684BA778);
    (*(v57 + 8))(v56, v58);
    goto LABEL_8;
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_2684B58A4();

  v91 = 0xD000000000000022;
  v92 = 0x80000002684C46A0;
  sub_2684B3E14();
  v65 = sub_2684B5564();
  MEMORY[0x26D619980](v65);

  result = sub_2684B5914();
  __break(1u);
  return result;
}

uint64_t sub_2684AB204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReminderDetail3pView(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B41E4();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v7 + 28);
  *&v9[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  v12 = *(type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) + 20);
  v13 = sub_2684B3FC4();
  sub_26846EA2C(a2 + v12, v13, v14, a3);

  return sub_2684ACF74(v9, type metadata accessor for ReminderDetail3pView);
}

uint64_t sub_2684AB350@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2684B3E34();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  sub_26846A6DC(a2 + *(v7 + 20), a3 + *(v7 + 20), &qword_28027D3E8, &unk_2684B7F40);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB48, &qword_2684BA798);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_2684AB420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2684AB6D0(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchForNotebookItems3pSnippet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2684AB668(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchForNotebookItems3pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E9F8, &qword_2684BA540);
  sub_26846ACF0(&qword_28027EA00, &qword_28027E9F8, &qword_2684BA540, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA08, &unk_2684BA5D0);
  v12 = a2 + *(result + 36);
  *v12 = 0;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = v9;
  *(v12 + 32) = 0;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  return result;
}

uint64_t sub_2684AB5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchForNotebookItems3pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684A7DD8(v4, a1);
}

uint64_t sub_2684AB668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684AB6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684AB738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2684AB780(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 5;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAD8, &unk_2684BA6D0);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

void *sub_2684AB930(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D550, &qword_2684B6F10);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_2684B41E4();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_26846A8C8(v20, v7, &qword_28027D550, &qword_2684B6F10);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAE0, &unk_2684BA6E0);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_26846A8C8(v7, v11, &qword_28027D550, &qword_2684B6F10);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

void *sub_2684ABC78(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF20, &qword_2684B87B0);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_2684B4034();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_26846A8C8(v20, v7, &qword_28027DF20, &qword_2684B87B0);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB90, &unk_2684BA820);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_26846A8C8(v7, v11, &qword_28027DF20, &qword_2684B87B0);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

void *sub_2684ABFC0(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E900, &qword_2684BA288);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_2684B3E34();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_26846A8C8(v20, v7, &qword_28027E900, &qword_2684BA288);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA90, &qword_2684BA670);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_26846A8C8(v7, v11, &qword_28027E900, &qword_2684BA288);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for SearchForNotebookItems3pSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_2684B3CE4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void *sub_2684AC434(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAB8, &qword_2684BA6B0);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_2684B3EF4();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_26846A8C8(v20, v7, &qword_28027EAB8, &qword_2684BA6B0);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAC0, &qword_2684BA6B8);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_26846A8C8(v7, v11, &qword_28027EAB8, &qword_2684BA6B0);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

uint64_t sub_2684AC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

void sub_2684AC884(uint64_t a1)
{
  sub_2684B3E34();
  if (v1 <= 0x3F)
  {
    sub_268480848(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2684AC908()
{
  result = qword_28027EAF8;
  if (!qword_28027EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EA08, &unk_2684BA5D0);
    v3 = sub_26846ACF0(&qword_28027EB00, &qword_28027EB08, &qword_2684BA708, MEMORY[0x277D63B90]);
    sub_26846B18C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EAF8);
  }

  return result;
}

uint64_t sub_2684ACA08(char *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v5(v6, &a1[*(v7 + 48)]);
}

unint64_t sub_2684ACA68()
{
  result = qword_28027EB50;
  if (!qword_28027EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EB48, &qword_2684BA798);
    sub_2684AB738(&qword_28027EA80, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView, &unk_2684BA710);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB50);
  }

  return result;
}

unint64_t sub_2684ACB50()
{
  result = qword_28027EB60;
  if (!qword_28027EB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D470, &unk_2684B6C90);
    sub_2684AB738(&qword_28027D530, type metadata accessor for ReminderDetail3pView, &unk_2684B7E18);
    sub_2684AB738(&qword_28027D540, type metadata accessor for PunchoutToNotebookItemModifier, &unk_2684B7CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB60);
  }

  return result;
}

uint64_t sub_2684ACC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2684ACCB8()
{
  result = qword_28027EB70;
  if (!qword_28027EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EB28, &qword_2684BA778);
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB70);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{
  v1 = (type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3E34();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B3EA4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_2684ACEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684AB204(a1, v6, a2);
}

uint64_t sub_2684ACF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2684ACFD8(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x26D6191B0](v6, a2, &type metadata for NotebookAmbientDrawableModifier, a3);
}

uint64_t sub_2684AD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB98, &qword_2684BAA90);
  MEMORY[0x28223BE20](v65);
  v60 = v55 - v5;
  v6 = sub_2684B4844();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBA0, &qword_2684BAA98);
  MEMORY[0x28223BE20](v63);
  v61 = v55 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBA8, &qword_2684BAAA0);
  MEMORY[0x28223BE20](v66);
  v64 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBB0, &qword_2684BAAA8);
  MEMORY[0x28223BE20](v10);
  v12 = v55 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBB8, &qword_2684BAAB0);
  MEMORY[0x28223BE20](v67);
  v14 = v55 - v13;
  v62 = sub_2684B47F4();
  v15 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v2 + 16);
  v18 = *(v2 + 8);
  v74 = v18;
  if (v75 == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_2684B5704();
    v19 = v3;
    v20 = v12;
    v21 = v14;
    v22 = sub_2684B4A24();
    sub_2684B4324();

    v14 = v21;
    v12 = v20;
    v3 = v19;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v74, &qword_28027EBC0, &qword_2684BAAB8);
    (*(v15 + 8))(v17, v62);
    if (v72 != 1)
    {
      goto LABEL_10;
    }
  }

  v73 = *(v3 + 48);
  v23 = *(v3 + 40);
  v72 = v23;
  if (v73 != 1)
  {

    sub_2684B5704();
    v24 = v17;
    v25 = a1;
    v26 = v3;
    v27 = v12;
    v28 = v14;
    v29 = sub_2684B4A24();
    sub_2684B4324();

    v14 = v28;
    v12 = v27;
    v3 = v26;
    a1 = v25;
    v17 = v24;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v72, &qword_28027EBC0, &qword_2684BAAB8);
    (*(v15 + 8))(v24, v62);
    if ((v70 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
    (*(*(v30 - 8) + 16))(v12, a1, v30);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0, MEMORY[0x277CE04B0]);
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    sub_2684B49B4();
    sub_26846A6DC(v14, v64, &qword_28027EBB8, &qword_2684BAAB0);
    swift_storeEnumTagMultiPayload();
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    sub_2684B49B4();
    v31 = v14;
    v32 = &qword_28027EBB8;
    v33 = &qword_2684BAAB0;
    return sub_268467A4C(v31, v32, v33);
  }

  if (v23)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ([objc_opt_self() saeAvailable])
  {
    goto LABEL_10;
  }

  v56 = v15;
  if (*v3)
  {
    v35 = v57;
    v36 = v58;
    v37 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x277CE00F0], v59);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
    v39 = sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0, MEMORY[0x277CE04B0]);
    v60 = v38;
    v55[1] = v39;
    sub_2684B4CE4();
    (*(v36 + 8))(v35, v37);
    v71 = *(v3 + 32);
    v40 = *(v3 + 24);
    v70 = v40;
    v55[2] = v10;
    if (v71 == 1)
    {
      v44 = v40;
    }

    else
    {

      sub_2684B5704();
      v43 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_268467A4C(&v70, &qword_28027EC18, &qword_2684BAAE0);
      (*(v56 + 8))(v17, v62);
      v44 = v69;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBE8, &unk_2684BAAC8);
    v46 = v61;
    *&v61[*(v45 + 36)] = v44;
    KeyPath = swift_getKeyPath();
    v48 = v46 + *(v63 + 36);
    *v48 = KeyPath;
    *(v48 + 8) = 1;
    sub_26846A6DC(v46, v12, &qword_28027EBA0, &qword_2684BAA98);
    swift_storeEnumTagMultiPayload();
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    sub_2684B49B4();
    sub_26846A6DC(v14, v64, &qword_28027EBB8, &qword_2684BAAB0);
    swift_storeEnumTagMultiPayload();
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    sub_2684B49B4();
    sub_268467A4C(v14, &qword_28027EBB8, &qword_2684BAAB0);
    v31 = v46;
    v32 = &qword_28027EBA0;
    v33 = &qword_2684BAA98;
    return sub_268467A4C(v31, v32, v33);
  }

  v71 = *(v3 + 32);
  v41 = *(v3 + 24);
  v70 = v41;
  if (v71 == 1)
  {
    v42 = v41;
  }

  else
  {

    sub_2684B5704();
    v49 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v70, &qword_28027EC18, &qword_2684BAAE0);
    (*(v56 + 8))(v17, v62);
    v42 = v69;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
  v51 = v60;
  (*(*(v50 - 8) + 16))(v60, a1, v50);
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC10, &qword_2684BAAD8) + 36)) = v42;
  v52 = swift_getKeyPath();
  v53 = v64;
  v54 = v51 + *(v65 + 36);
  *v54 = v52;
  *(v54 + 8) = 1;
  sub_2684AE0BC(v51, v53);
  swift_storeEnumTagMultiPayload();
  sub_2684ADE70();
  sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
  sub_2684B49B4();
  return sub_268467A4C(v51, &qword_28027EB98, &qword_2684BAA90);
}

uint64_t sub_2684ADBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268467BB4(a1, a2, a3);
  sub_2684B4804();
  return v4;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2684ADC4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2684ADCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2684ADD20()
{
  result = qword_28027EBE0;
  if (!qword_28027EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBE8, &unk_2684BAAC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBC8, &qword_2684BAAC0);
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0, MEMORY[0x277CE04B0]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2684ADE1C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBE0);
  }

  return result;
}

unint64_t sub_2684ADE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027EBF0;
  if (!qword_28027EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBF0);
  }

  return result;
}

unint64_t sub_2684ADE70()
{
  result = qword_28027EBF8;
  if (!qword_28027EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBB8, &qword_2684BAAB0);
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0, MEMORY[0x277CE04B0]);
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBF8);
  }

  return result;
}

uint64_t sub_2684ADF54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684AE004()
{
  result = qword_28027EC08;
  if (!qword_28027EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC10, &qword_2684BAAD8);
    v3 = sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0, MEMORY[0x277CE04B0]);
    sub_2684ADE1C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC08);
  }

  return result;
}

uint64_t sub_2684AE0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB98, &qword_2684BAA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684AE12C()
{
  result = qword_28027EC20;
  if (!qword_28027EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC28, &qword_2684BAAE8);
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC20);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2684AE1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_2684AE244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2684AE2B4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v28[1] = a3;
  v32 = a1;
  v35 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC30, &qword_2684BABC8);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC38, &qword_2684BABD0);
  MEMORY[0x28223BE20](v29);
  v10 = v28 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC48, &qword_2684BABE0);
  MEMORY[0x28223BE20](v33);
  v17 = v28 - v16;
  v18 = sub_2684B39F4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100) != 0)
  {

    sub_2684B39E4();
    (*(v19 + 16))(v17, v22, v18);
    swift_storeEnumTagMultiPayload();
    sub_2684AE7E8();
    sub_2684AE8B0();
    sub_2684B49B4();
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    MEMORY[0x28223BE20](v20);
    sub_2684B4A34();
    sub_2684AE7E8();
    sub_2684B43C4();
    sub_2684B5094();
    sub_2684B45F4();
    (*(v30 + 32))(v10, v8, v31);
    v23 = &v10[*(v29 + 36)];
    v24 = v41;
    *(v23 + 4) = v40;
    *(v23 + 5) = v24;
    *(v23 + 6) = v42;
    v25 = v37;
    *v23 = v36;
    *(v23 + 1) = v25;
    v26 = v39;
    *(v23 + 2) = v38;
    *(v23 + 3) = v26;
    sub_26846A8C8(v10, v13, &qword_28027EC38, &qword_2684BABD0);
    *&v13[*(v34 + 36)] = 256;
    sub_26846A8C8(v13, v15, &qword_28027EC40, &qword_2684BABD8);
    sub_2684AE840(v15, v17);
    swift_storeEnumTagMultiPayload();
    sub_2684AE8B0();
    sub_2684B49B4();
    return sub_2684AEA2C(v15);
  }
}

uint64_t sub_2684AE76C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2684AE2B4(*v1, *(v1 + 16), v2 | *(v1 + 24), a1);
}

uint64_t sub_2684AE798()
{

  return sub_2684B39E4();
}

unint64_t sub_2684AE7E8()
{
  result = qword_28027EC50;
  if (!qword_28027EC50)
  {
    sub_2684B39F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC50);
  }

  return result;
}

uint64_t sub_2684AE840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684AE8B0()
{
  result = qword_28027EC58;
  if (!qword_28027EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC40, &qword_2684BABD8);
    sub_2684AE93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC58);
  }

  return result;
}

unint64_t sub_2684AE93C()
{
  result = qword_28027EC60;
  if (!qword_28027EC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC38, &qword_2684BABD0);
    sub_2684AE9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC60);
  }

  return result;
}

unint64_t sub_2684AE9C8()
{
  result = qword_28027EC68;
  if (!qword_28027EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC30, &qword_2684BABC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC68);
  }

  return result;
}

uint64_t sub_2684AEA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684AEA94()
{
  result = qword_28027EC70;
  if (!qword_28027EC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28027EC78, &qword_2684BABE8);
    sub_2684AE7E8();
    sub_2684AE8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC70);
  }

  return result;
}

uint64_t sub_2684AEB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2684A6B08(a1, a2, a3);
  sub_2684B4804();
  return v4;
}

void sub_2684AEB74(uint64_t a1)
{
  sub_2684AF0F4(319, &qword_28027D648, MEMORY[0x277D839B0]);
  if (v2 <= 0x3F)
  {
    sub_2684AF0F4(319, qword_28027ED00, MEMORY[0x277D839F8]);
    if (v5 <= 0x3F)
    {
      type metadata accessor for IdiomConstant(319, *(a1 + 16), v3, v4);
      if (v6 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2684AEC58(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = v7 + 7;
  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v12 = ((14 - (((-42 - v9) | v9) - v6 + ((((-10 - v6) | v6) - v10) | 7))) & ~v6) + v7;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      v18 = (v6 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 41) & ~v9) + 9) & ~v6;
      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))(v18);
      }

      v19 = *((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2684AEE34(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + 7;
  v12 = ((14 - (((-42 - (v9 | 7)) | v9 | 7) - v9 + ((((-10 - v9) | v9) - (v10 + 7)) | 7))) & ~v9) + v10;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
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

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *(a1 + v12) = v17;
              }

              else
              {
                *(a1 + v12) = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      *(a1 + v12) = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v12) = 0;
  }

  else if (v15)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v21 = (v9 + (((a1 & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 41) & ~(v9 | 7)) + 9) & ~v9;
  if (v7 < 0x7FFFFFFF)
  {
    v23 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = a2 - 1;
    }
  }

  else
  {
    v22 = *(v6 + 56);

    v22(v21);
  }
}

void sub_2684AF0F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2684B43F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_2684AF140@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v16[0] = *v2;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  *&v17 = v16[0];
  *(&v17 + 1) = v5;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  v19 = v8;
  v9 = qword_28027CF18;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  v15[2] = &v17;
  *&v15[3] = a2;
  v15[4] = v16;
  sub_2684AF3E8(sub_2684B04E0, v15, v11);
  v12 = v19;
  result = *&v17;
  v14 = v18;
  *a1 = v17;
  *(a1 + 16) = v14;
  *(a1 + 32) = v12;
  return result;
}

double sub_2684AF244(void *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = a5;
  if (*a1 != -1)
  {
LABEL_16:
    v13 = a2;
    swift_once();
    a2 = v13;
  }

  v8 = *a2;
  if (*a2 >> 62)
  {
    v9 = sub_2684B5814();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_4:
      for (i = 0; ; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D619C80](i, v8);
          v11 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
            return a5;
          }
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v11 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        swift_getAtKeyPath();
        v14 = v14 * a4;
        swift_setAtWritableKeyPath();

        if (v11 == v9)
        {
          return a5;
        }
      }
    }
  }

  return v6;
}

void (*sub_2684AF3E8(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D619C80](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2684B5814();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2684AF4FC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B47F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = *(v10 + 16);
  v53 = v1;
  v51 = v17;
  v17(&v44 - v15, v1, a1);
  v18 = &v16[*(a1 + 40)];
  v19 = *v18;
  LODWORD(v18) = v18[8];
  v47 = v9;
  v48 = v5;
  if (v18 != 1)
  {

    sub_2684B5704();
    v20 = sub_2684B4A24();
    v45 = v10;
    v21 = v6;
    v22 = v5;
    v23 = v20;
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v19, 0);
    v24 = *(v21 + 8);
    v25 = v22;
    v6 = v21;
    v10 = v45;
    v24(v9, v25);
    LOBYTE(v19) = v56;
  }

  v26 = *(v10 + 8);
  v26(v16, a1);
  if ((v19 & 1) == 0)
  {
    return (*(v52 + 24))(v53 + *(a1 + 32), v53, v3);
  }

  v27 = v49;
  v51(v49, v53, a1);
  v28 = &v27[*(a1 + 44)];
  v29 = *v28;
  if (v28[8] != 1)
  {

    sub_2684B5704();
    v35 = v3;
    v36 = sub_2684B4A24();
    sub_2684B4324();

    v3 = v35;
    v37 = v47;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v29, 0);
    (*(v6 + 8))(v37, v48);
    LOBYTE(v37) = v55;
    v26(v27, a1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_6;
    }

    return (*(v52 + 24))(v53 + *(a1 + 32), v53, v3);
  }

  v26(v27, a1);
  if (v29)
  {
    return (*(v52 + 24))(v53 + *(a1 + 32), v53, v3);
  }

LABEL_6:
  v30 = *(v53 + *(a1 + 28));
  v31 = v50;
  (v51)(v50);
  v32 = &v31[*(a1 + 36)];
  v33 = *v32;
  if (v32[8] == 1)
  {
    v34 = *v32;
  }

  else
  {

    sub_2684B5704();
    v39 = v3;
    v40 = sub_2684B4A24();
    sub_2684B4324();

    v3 = v39;
    v41 = v47;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v33, 0);
    (*(v6 + 8))(v41, v48);
    v34 = v54;
  }

  v26(v50, a1);
  v42 = v46;
  v43 = v53;
  v30(v53, v34);
  return (*(v52 + 40))(v43 + *(a1 + 32), v42, v3);
}

uint64_t sub_2684AFA50()
{
  v1 = sub_2684B47F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_2684B5704();
    v6 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v10[15] != 1)
    {
      return 0;
    }
  }

  v7 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    if (v7)
    {
      return 0;
    }
  }

  else
  {

    sub_2684B5704();
    v9 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v10[14])
    {
      return 0;
    }
  }

  return [objc_opt_self() saeAvailable] ^ 1;
}

uint64_t sub_2684AFC74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2684B47F4();
  v29 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2684AFA50())
  {
    (*(v8 + 16))(v11, v1, a1);
    v20 = *(v11 + 2);
    if (v11[24] == 1)
    {
      v21 = *(v11 + 2);
    }

    else
    {

      v27[1] = sub_2684B5704();
      v24 = sub_2684B4A24();
      v28 = v4;
      v25 = v24;
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v20, 0);
      (*(v29 + 8))(v7, v28);
      v21 = v30;
    }

    type metadata accessor for IdiomConstant(0, v12, v18, v19);
    (*(v8 + 8))(v11, a1);
    (*(*(a1 + 24) + 8))(v12, v21);
  }

  else
  {
    v22 = v1 + *(a1 + 44);
    v23 = type metadata accessor for IdiomConstant(0, v12, v16, v17);
    (*(v13 + 16))(v15, v22 + *(v23 + 28), v12);
  }

  return (*(v13 + 40))(v2 + *(a1 + 48), v15, v12);
}

void sub_2684AFFF8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26847D10C();
    if (v2 <= 0x3F)
    {
      sub_2684AF0F4(319, qword_28027ED00, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_2684AF0F4(319, &qword_28027D648, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2684B00D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_2684B0244(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_2684B050C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2684B0568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2684B05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[1] = a1;
  v31 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED88, &qword_2684BADE0);
  v32 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED90, &qword_2684BADE8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v26 = v25 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED98, &unk_2684BADF0);
  MEMORY[0x28223BE20](v28);
  v9 = v25 - v8;
  v35 = *v2;
  v36 = *(v2 + 16);
  v33 = *v2;
  v34 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4394();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDA0, &unk_2684BAE00);
  v11 = sub_26846ACF0(&qword_28027EDA8, &qword_28027EDA0, &unk_2684BAE00, MEMORY[0x277CE04B0]);
  sub_2684B4DA4();

  v33 = v35;
  v34 = v36;
  sub_2684B4374();
  v12 = *(v2 + 3);
  v13 = swift_allocObject();
  v14 = v2[1];
  *(v13 + 16) = *v2;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v2 + 4);
  sub_2684B0CA4(&v35, &v33);
  v15 = v12;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  v16 = v26;
  swift_getOpaqueTypeConformance2();
  v17 = v27;
  sub_2684B4E04();

  v32[1](v5, v17);
  if (v12)
  {
    v32 = v15;
    v18 = sub_2684B54D4();

    v19 = swift_allocObject();
    v20 = v3[1];
    *(v19 + 16) = *v3;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(v3 + 4);
    (*(v29 + 32))(v9, v16, v30);
    v21 = v28;
    *&v9[*(v28 + 52)] = v18;
    v22 = &v9[*(v21 + 56)];
    *v22 = sub_2684B0DAC;
    v22[1] = v19;
    sub_26846401C(v9, v31);
    sub_2684B0CA4(&v35, &v33);
    v23 = v32;

    return v23;
  }

  else
  {
    sub_2684B5504();
    sub_2684B0D14();
    result = sub_2684B4604();
    __break(1u);
  }

  return result;
}

void sub_2684B0A38(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4374();
  v2 = *(a1 + 3);
  if (v5 == 1)
  {
    if (v2)
    {
      v3 = v2;
      sub_2684B54C4();
      v4 = [objc_allocWithZone(sub_2684B5474()) init];
      sub_2684B54E4();

LABEL_6:
      return;
    }
  }

  else if (v2)
  {
    v3 = v2;
    sub_2684B54B4();
    goto LABEL_6;
  }

  sub_2684B5504();
  sub_2684B0D14();
  sub_2684B4604();
  __break(1u);
}

uint64_t sub_2684B0B18(uint64_t a1, __int128 *a2)
{
  v4 = sub_2684B54F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D63F38])
  {
    return (*(v5 + 8))(v7, v4);
  }

  result = (*(v5 + 96))(v7, v4);
  if ((*v7 - 3) <= 1)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v9[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
    return sub_2684B4384();
  }

  return result;
}

uint64_t sub_2684B0CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684B0D14()
{
  result = qword_28027E268;
  if (!qword_28027E268)
  {
    sub_2684B5504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E268);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t sub_2684B0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26846EE50(a1, a2, a3);
  sub_2684B4804();
  return v4;
}

uint64_t sub_2684B0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2684B0E6C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2684B0E6C()
{
  result = qword_28027EDB8;
  if (!qword_28027EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDC0, &unk_2684BAE60);
    sub_2684B0EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EDB8);
  }

  return result;
}

unint64_t sub_2684B0EF0()
{
  result = qword_28027EDC8;
  if (!qword_28027EDC8)
  {
    sub_2684B0F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EDC8);
  }

  return result;
}

unint64_t sub_2684B0F48()
{
  result = qword_28027EDD0;
  if (!qword_28027EDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28027EDD0);
  }

  return result;
}

uint64_t type metadata accessor for ReminderSectionHeadingView(uint64_t a1)
{
  result = qword_28027EDD8;
  if (!qword_28027EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684B1008(uint64_t a1)
{
  sub_2684B3CF4();
  if (v1 <= 0x3F)
  {
    sub_2684B108C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684B108C()
{
  if (!qword_28027D648)
  {
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D648);
    }
  }
}

uint64_t sub_2684B10F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_2684B3994();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64 - v6;
  v8 = sub_2684B47F4();
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2684B4B34();
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReminderHeadingTextView(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDE8, &qword_2684BAEE8);
  MEMORY[0x28223BE20](v71);
  v18 = &v64 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDF0, &qword_2684BAEF0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v64 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDF8, &qword_2684BAEF8);
  MEMORY[0x28223BE20](v72);
  v68 = &v64 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE00, &qword_2684BAF00);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v64 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE08, &qword_2684BAF08);
  MEMORY[0x28223BE20](v76);
  v77 = &v64 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE10, &qword_2684BAF10);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - v23;
  v24 = sub_2684B3CF4();
  v25 = *(*(v24 - 8) + 16);
  v66 = v16;
  v25(v16, v2, v24);
  v26 = *(type metadata accessor for ReminderSectionHeadingView(0) + 20);
  v82 = v2;
  v27 = v2 + v26;
  v28 = *v27;
  v29 = *(v27 + 8);
  v83 = v8;
  v81 = v10;
  if (v29 == 1)
  {
    if (v28)
    {
LABEL_3:
      v30 = MEMORY[0x277CE0A58];
      goto LABEL_6;
    }
  }

  else
  {

    sub_2684B5704();
    v31 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v28, 0);
    (*(v88 + 8))(v10, v8);
    if (v89)
    {
      goto LABEL_3;
    }
  }

  v30 = MEMORY[0x277CE0AC0];
LABEL_6:
  v32 = v65;
  (*(v11 + 104))(v13, *v30, v65);
  v33 = *MEMORY[0x277CE09A0];
  v34 = sub_2684B4AE4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v7, v33, v34);
  (*(v35 + 56))(v7, 0, 1, v34);
  v36 = sub_2684B4B14();
  sub_268467A4C(v7, &qword_28027D330, &qword_2684BAEE0);
  (*(v11 + 8))(v13, v32);
  KeyPath = swift_getKeyPath();
  sub_2684B1C50(v66, v18);
  v38 = &v18[*(v71 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  if (v29)
  {
    v39 = v83;
    v40 = v88;
    v41 = v81;
  }

  else
  {

    sub_2684B5704();
    v42 = sub_2684B4A24();
    sub_2684B4324();

    v41 = v81;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v28, 0);
    v40 = v88;
    v39 = v83;
    (*(v88 + 8))(v41, v83);
  }

  v43 = v72;
  sub_2684B1CB4();
  v44 = v67;
  sub_2684B4D74();
  sub_268467A4C(v18, &qword_28027EDE8, &qword_2684BAEE8);
  v45 = sub_2684A3D74();
  v46 = v68;
  (*(v69 + 32))(v68, v44, v70);
  *(v46 + *(v43 + 36)) = v45;
  if (!v29)
  {

    sub_2684B5704();
    v47 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v28, 0);
    (*(v40 + 8))(v41, v39);
  }

  sub_2684B1DC4();
  v48 = v73;
  sub_2684B4C34();
  sub_268467A4C(v46, &qword_28027EDF8, &qword_2684BAEF8);
  sub_2684B50B4();
  sub_2684B45F4();
  v49 = v77;
  (*(v74 + 32))(v77, v48, v75);
  v50 = (v49 + *(v76 + 36));
  v51 = v94;
  v50[4] = v93;
  v50[5] = v51;
  v50[6] = v95;
  v52 = v90;
  *v50 = v89;
  v50[1] = v52;
  v53 = v92;
  v50[2] = v91;
  v50[3] = v53;
  v55 = v84;
  v54 = v85;
  v56 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x277D62F48], v86);
  sub_2684B1EB8();
  v57 = v78;
  sub_2684B4C04();
  (*(v54 + 8))(v55, v56);
  sub_268467A4C(v49, &qword_28027EE08, &qword_2684BAF08);
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = v87;
  (*(v79 + 32))(v87, v57, v80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE30, &unk_2684BAFE0);
  v63 = v61 + *(result + 36);
  *v63 = 1;
  *(v63 + 8) = v58;
  *(v63 + 16) = 0;
  *(v63 + 24) = v59;
  *(v63 + 32) = 0;
  *(v63 + 40) = v60;
  *(v63 + 48) = 0;
  return result;
}

uint64_t sub_2684B1C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderHeadingTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684B1CB4()
{
  result = qword_28027EE18;
  if (!qword_28027EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDE8, &qword_2684BAEE8);
    sub_2684B1D6C();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE18);
  }

  return result;
}

unint64_t sub_2684B1D6C()
{
  result = qword_28027EA78;
  if (!qword_28027EA78)
  {
    type metadata accessor for ReminderHeadingTextView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EA78);
  }

  return result;
}

unint64_t sub_2684B1DC4()
{
  result = qword_28027EE20;
  if (!qword_28027EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDF8, &qword_2684BAEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDE8, &qword_2684BAEE8);
    sub_2684B1CB4();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027E7B0, &qword_28027E7B8, &qword_2684BAF50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE20);
  }

  return result;
}

unint64_t sub_2684B1EB8()
{
  result = qword_28027EE28;
  if (!qword_28027EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE08, &qword_2684BAF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDF8, &qword_2684BAEF8);
    sub_2684B1DC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE28);
  }

  return result;
}

unint64_t sub_2684B1F80()
{
  result = qword_28027EE38;
  if (!qword_28027EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE30, &unk_2684BAFE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE08, &qword_2684BAF08);
    sub_2684B1EB8();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26846B18C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE38);
  }

  return result;
}

uint64_t sub_2684B2048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v39 = sub_2684B3C14();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ReminderDetail1pSnippet(0);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE58, &qword_2684BB118);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE60, &qword_2684BB120);
  MEMORY[0x28223BE20](v38);
  v15 = &v37 - v14;
  sub_2684B311C(v2, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_2684B3180(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE68, &qword_2684BB128);
  sub_26846ACF0(&qword_28027EE70, &qword_28027EE68, &qword_2684BB128, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v11 + 44)];
  *v19 = KeyPath;
  v19[8] = 0;
  sub_2684B3C64();
  sub_2684B3BE4();
  v20 = sub_2684B3F64();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_2684B3254(v5);
    v22 = sub_2684B4E54();
  }

  else
  {
    v22 = sub_26849A760();
    (*(v21 + 8))(v5, v20);
  }

  (*(v37 + 8))(v7, v39);
  v23 = swift_getKeyPath();
  v42 = v22;
  v24 = sub_2684B44B4();
  sub_26846A8C8(v13, v15, &qword_28027EE58, &qword_2684BB118);
  v25 = &v15[*(v38 + 36)];
  *v25 = v23;
  v25[1] = v24;
  LOBYTE(v23) = sub_2684B4A44();
  sub_2684B4364();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v41;
  sub_26846A8C8(v15, v41, &qword_28027EE60, &qword_2684BB120);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE78, &qword_2684BB188);
  v36 = v34 + *(result + 36);
  *v36 = v23;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_2684B24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ReminderDetail1pSnippet(0);
  v4 = *(v3 - 8);
  v64 = v3 - 8;
  v67 = v4;
  v66 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E978, &qword_2684BB190);
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v58 - v9;
  v10 = sub_2684B3C14();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2684B3E74();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2684B3994();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReminderPrimaryHeadingView(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198) - 8;
  v22 = MEMORY[0x28223BE20](v59);
  v63 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  sub_2684B3C64();
  v26 = *MEMORY[0x277D5E060];
  v27 = sub_2684B3CF4();
  (*(*(v27 - 8) + 104))(v21, v26, v27);
  v28 = &v21[*(v19 + 20)];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v21[*(v19 + 24)];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v29 + 1) = xmmword_2684B9C00;
  *(v29 + 4) = sub_2684A6B5C;
  *(v29 + 5) = 0;
  (*(v16 + 104))(v18, *MEMORY[0x277D62F38], v15);
  sub_2684B34D0(&qword_28027EE88, type metadata accessor for ReminderPrimaryHeadingView, &unk_2684B9C7C);
  sub_2684B4C04();
  (*(v16 + 8))(v18, v15);
  sub_2684B32BC(v21);
  v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE90, &qword_2684BB1D0) + 36)] = 0;
  v30 = v58;
  v31 = a1;
  sub_2684B3C64();
  v32 = v30;
  v33 = sub_2684B3BC4();
  v35 = v34;
  (*(v61 + 8))(v32, v62);
  *v14 = v33;
  v14[1] = v35;
  v36 = v60;
  (*(v12 + 104))(v14, *MEMORY[0x277D5E130], v60);
  v37 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE98, &qword_2684BB1D8) + 36)];
  (*(v12 + 16))(v37, v14, v36);
  v38 = type metadata accessor for RemindersAppPunchoutModifier(0);
  sub_2684B52A4();
  (*(v12 + 8))(v14, v36);
  v39 = &v37[*(v38 + 24)];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  LOBYTE(v38) = sub_2684B4A44();
  sub_2684B4364();
  v40 = &v25[*(v59 + 44)];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v73 = sub_2684B3C74();
  v45 = v65;
  sub_2684B311C(v31, v65);
  v46 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v47 = swift_allocObject();
  sub_2684B3180(v45, v47 + v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
  sub_2684B3894();
  type metadata accessor for ReminderView(0);
  sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0, MEMORY[0x277D83980]);
  sub_2684B34D0(&qword_28027D7F8, type metadata accessor for ReminderView, &unk_2684B8304);
  sub_2684B34D0(&qword_28027DEB0, MEMORY[0x277D5E1A8], MEMORY[0x277D5E1B0]);
  v48 = v68;
  sub_2684B5024();
  v49 = v63;
  sub_268464408(v25, v63);
  v51 = v69;
  v50 = v70;
  v52 = *(v70 + 16);
  v53 = v71;
  v52(v69, v48, v71);
  v54 = v72;
  sub_268464408(v49, v72);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EEA0, &qword_2684BB1E8);
  v52((v54 + *(v55 + 48)), v51, v53);
  v56 = *(v50 + 8);
  v56(v48, v53);
  sub_268464478(v25);
  v56(v51, v53);
  return sub_268464478(v49);
}

uint64_t sub_2684B2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2684B47F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B41E4();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = a2 + *(type metadata accessor for ReminderDetail1pSnippet(0) + 24);
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *v11;

    sub_2684B5704();
    v13 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v12, 0);
    (*(v7 + 8))(v9, v6);
  }

  v14 = sub_2684B5784();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  result = type metadata accessor for ReminderView(0);
  *(a3 + *(result + 20)) = (v14 & 1) == 0;
  *(a3 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2684B2F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684BA040;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_280282938 = v0;
  return result;
}

uint64_t type metadata accessor for ReminderDetail1pSnippet(uint64_t a1)
{
  result = qword_28027EE40;
  if (!qword_28027EE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684B3008(uint64_t a1)
{
  sub_2684B3C84();
  if (v1 <= 0x3F)
  {
    sub_2684B30A4(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_268467F10(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2684B30A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_28027EE50)
  {
    v4 = type metadata accessor for AmbientScaledIdiomConstant(0, &type metadata for ReminderDetail1pSnippet.Constants, &off_287915AF8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_28027EE50);
    }
  }
}

uint64_t sub_2684B311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderDetail1pSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684B3180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderDetail1pSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684B31E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReminderDetail1pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684B24E8(v4, a1);
}

uint64_t sub_2684B3254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684B32BC(uint64_t a1)
{
  v2 = type metadata accessor for ReminderPrimaryHeadingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ReminderDetail1pSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3C84();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_26845E0C8(*v4, *(v4 + 8));
  sub_26845E0C8(*(v4 + 16), *(v4 + 24));
  sub_26845E0C8(*(v4 + 32), *(v4 + 40));
  sub_26845E0C8(*(v4 + 48), *(v4 + 56));

  sub_26845E0C8(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_2684B3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderDetail1pSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684B2D2C(a1, v6, a2);
}

uint64_t sub_2684B34D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2684B3518()
{
  result = qword_28027EEA8;
  if (!qword_28027EEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE78, &qword_2684BB188);
    sub_2684B35A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEA8);
  }

  return result;
}

unint64_t sub_2684B35A4()
{
  result = qword_28027EEB0;
  if (!qword_28027EEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE60, &qword_2684BB120);
    sub_2684B365C();
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEB0);
  }

  return result;
}

unint64_t sub_2684B365C()
{
  result = qword_28027EEB8;
  if (!qword_28027EEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE58, &qword_2684BB118);
    sub_26846ACF0(&qword_28027EEC0, &qword_28027EEC8, &unk_2684BB230, MEMORY[0x277D63B90]);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEB8);
  }

  return result;
}