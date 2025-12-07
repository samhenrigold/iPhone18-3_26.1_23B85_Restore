unint64_t sub_24ADC3FB4()
{
  result = qword_27EFA9798;
  if (!qword_27EFA9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9798);
  }

  return result;
}

void sub_24ADC4008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    sub_24AE08288();
    sub_24AE08288();

    sub_24AE08288();
  }
}

uint64_t sub_24ADC4058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ItemEntityQuery.Dependencies.fetchWithOptions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ItemEntityQuery.Dependencies.init(fetchWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADC41B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_24AE08948();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24AE086E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24AE08718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24AE08508();
  __swift_allocate_value_buffer(v10, qword_27EFA97F0);
  __swift_project_value_buffer(v10, qword_27EFA97F0);
  sub_24AE08F08();
  *v6 = type metadata accessor for IntelligenceModule();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9120], v3);
  sub_24AE08938();
  sub_24AE08728();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_24AE084F8();
}

uint64_t static PersonLocationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8658 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA97F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC4558()
{
  v0 = sub_24AE08E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PersonLocationEntityQuery(0);
  __swift_allocate_value_buffer(v7, qword_27EFA9808);
  v8 = __swift_project_value_buffer(v7, qword_27EFA9808);
  sub_24AE08DF8();
  v9 = *(v1 + 32);
  v9(v4, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v4, v0);
  result = sub_24AE08DF8();
  *v8 = &unk_24AE0E250;
  v8[1] = v11;
  return result;
}

uint64_t static PersonLocationEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonLocationEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA9808);

  return sub_24ADC47A4(v3, a1);
}

uint64_t sub_24ADC47A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonLocationEntityQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADC48F8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24AE08978();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *(v5 + 16);
  v11(v16 - v9, a1, v4);
  v12 = *a2;
  v16[5] = a2[1];
  v13 = a2[3];
  v16[3] = v12;
  v16[4] = v13;
  v14 = a2[5];
  v16[0] = a2[4];
  v16[1] = v14;
  v16[2] = a2[6];
  v11(v8, v10, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_24ADC4B80(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *(v5 + 16);
  v11(v16 - v9, a1, v4);
  v12 = a2[1];
  v16[4] = *a2;
  v16[5] = v12;
  v14 = a2[4];
  v13 = a2[5];
  v16[0] = a2[3];
  v16[1] = v14;
  v16[2] = v13;
  v16[3] = a2[6];
  v11(v8, v10, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v10, v4);
}

uint64_t PersonLocationEntity.init(id:location:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AE088E8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v9;
  v52 = sub_24AE08978();
  v50 = *(v52 - 8);
  v10 = MEMORY[0x28223BE20](v52);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = sub_24AE08718();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = a2[5];
  v85 = a2[4];
  v86 = v19;
  v20 = a2[7];
  v87 = a2[6];
  v88 = v20;
  v21 = a2[1];
  v81 = *a2;
  v82 = v21;
  v22 = a2[3];
  v83 = a2[2];
  v84 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F28, &qword_24AE0B450);
  *a3 = sub_24AE08408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F30, &qword_24AE0B458);
  a3[1] = sub_24AE08438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F38, &qword_24AE0B460);
  sub_24ADC5BF8(&qword_27EFA8F40, MEMORY[0x277CCB120], MEMORY[0x277CE41A0]);
  v46 = sub_24AE083E8();
  a3[2] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F48, &qword_24AE0B468);
  v47 = sub_24AE08428();
  a3[3] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F50, &qword_24AE0B470);
  v48 = sub_24AE083F8();
  a3[4] = v48;
  v51 = sub_24AE08408();
  a3[5] = v51;
  v54 = sub_24AE08408();
  a3[6] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F58, &qword_24AE0B478);
  sub_24ADA6B90();
  v58 = sub_24AE083C8();
  a3[7] = v58;
  v23 = 0xE600000000000000;
  *&v70 = 0x3A3156444953;
  *(&v70 + 1) = 0xE600000000000000;
  MEMORY[0x24C230FB0](v18, v17);

  sub_24AE083A8();
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  LOBYTE(v59) = 2;
  v24 = v81;
  sub_24ADE7D84(0, &v59, v16);
  sub_24AE08FE8();
  v25 = sub_24AE08F88();

  v26 = [objc_opt_self() placemarkWithLocation:v24 name:v25 postalAddress:0];

  *&v70 = v26;
  v27 = v26;
  sub_24AE083A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F60, &unk_24AE0B480);
  v28 = sub_24AE08958();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24AE0A280;
  *(v31 + v30) = v24;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277CCB108], v28);
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  LOBYTE(v59) = 2;
  v32 = v24;
  sub_24ADE7D84(0, &v59, v16);
  sub_24AE08FE8();
  sub_24AE08968();
  v33 = v50;
  v34 = v52;
  (*(v50 + 16))(v49, v13, v52);
  sub_24AE083A8();
  (*(v33 + 8))(v13, v34);
  [v32 horizontalAccuracy];
  *&v70 = v35;
  sub_24AE083A8();
  v36 = [v32 timestamp];
  v37 = v53;
  sub_24AE088D8();

  v38 = v56;
  v39 = v57;
  (*(v56 + 16))(v55, v37, v57);
  sub_24AE083A8();
  (*(v38 + 8))(v37, v39);
  if (BYTE8(v81) > 2u)
  {
    if (BYTE8(v81) == 3)
    {
      v23 = 0xE900000000000065;
      v40 = 0x74696C6C65746173;
    }

    else if (BYTE8(v81) == 4)
    {
      v23 = 0xE700000000000000;
      v40 = 0x6567617373656DLL;
    }

    else
    {
      v23 = 0xE500000000000000;
      v40 = 0x726568746FLL;
    }
  }

  else if (BYTE8(v81))
  {
    if (BYTE8(v81) == 1)
    {
      v23 = 0x800000024AE12D70;
      v40 = 0xD000000000000012;
    }

    else
    {
      v23 = 0xE400000000000000;
      v40 = 1702259052;
    }
  }

  else
  {
    v40 = 0x79636167656CLL;
  }

  *&v70 = v40;
  *(&v70 + 1) = v23;
  sub_24AE083A8();
  if (BYTE9(v81) > 2u)
  {
    if (BYTE9(v81) == 3)
    {
      v41 = 0xE700000000000000;
      v43 = 1852732786;
    }

    else
    {
      if (BYTE9(v81) != 4)
      {
        v41 = 0xEA00000000006576;
        v42 = 0x69746F6D6F747561;
        goto LABEL_24;
      }

      v41 = 0xE700000000000000;
      v43 = 1818458467;
    }

    goto LABEL_22;
  }

  if (!BYTE9(v81))
  {
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
    goto LABEL_24;
  }

  if (BYTE9(v81) != 1)
  {
    v41 = 0xE700000000000000;
    v43 = 1802264951;
LABEL_22:
    v42 = v43 | 0x676E6900000000;
    goto LABEL_24;
  }

  v41 = 0xEA00000000007972;
  v42 = 0x616E6F6974617473;
LABEL_24:
  *&v70 = v42;
  *(&v70 + 1) = v41;
  sub_24AE083A8();
  v63 = v86;
  v64 = v87;
  v65 = v88;
  v59 = v82;
  v60 = v83;
  v61 = v84;
  v62 = v85;
  sub_24AD9B858(&v82, &v70);
  LocationLabelEntity.init(model:)(&v59, &v70);
  sub_24ADA8FB8(&v81);
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v62 = v73;
  return sub_24AE083A8();
}

uint64_t PersonLocationEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24AE08718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24AE08F58();
  MEMORY[0x28223BE20](v8 - 8);
  sub_24AE08F48();
  sub_24AE08F38();
  sub_24AE08398();
  sub_24AE08F18();

  sub_24AE08F38();
  sub_24AE086F8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_24AE08478();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_24AE08488();
}

uint64_t sub_24ADC58EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonLocationEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA9808);

  return sub_24ADC47A4(v3, a1);
}

uint64_t sub_24ADC5964@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8658 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA97F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC5A0C(uint64_t a1)
{
  v2 = sub_24ADC5C44();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADC5A5C(uint64_t a1)
{
  v2 = sub_24ADC5D9C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24ADC5AAC()
{
  result = qword_27EFA9820;
  if (!qword_27EFA9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9820);
  }

  return result;
}

unint64_t sub_24ADC5B04()
{
  result = qword_27EFA9828;
  if (!qword_27EFA9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9828);
  }

  return result;
}

unint64_t sub_24ADC5B5C()
{
  result = qword_27EFA9830;
  if (!qword_27EFA9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9830);
  }

  return result;
}

uint64_t sub_24ADC5BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ADC5C44()
{
  result = qword_27EFA9840;
  if (!qword_27EFA9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9840);
  }

  return result;
}

unint64_t sub_24ADC5C9C()
{
  result = qword_27EFA9848;
  if (!qword_27EFA9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9848);
  }

  return result;
}

unint64_t sub_24ADC5CF0()
{
  result = qword_27EFA9850;
  if (!qword_27EFA9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9850);
  }

  return result;
}

unint64_t sub_24ADC5D44()
{
  result = qword_27EFA9858;
  if (!qword_27EFA9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9858);
  }

  return result;
}

unint64_t sub_24ADC5D9C()
{
  result = qword_27EFA9860;
  if (!qword_27EFA9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9860);
  }

  return result;
}

unint64_t sub_24ADC5DF4()
{
  result = qword_27EFA9868;
  if (!qword_27EFA9868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA9870, &qword_24AE0E0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9868);
  }

  return result;
}

unint64_t sub_24ADC5E5C()
{
  result = qword_27EFA9878;
  if (!qword_27EFA9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9878);
  }

  return result;
}

uint64_t PersonLocationEntityQuery.Dependencies.fetchPeopleLocationsWithOptions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonLocationEntityQuery.Dependencies.init(fetchPeopleLocationsWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADC5F50@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_24AE08E08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_24AE08DF8();
  v12 = *(v6 + 32);
  v12(v9, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  result = (v12)(v14 + v13, v9, v5);
  *a3 = a2;
  a3[1] = v14;
  return result;
}

uint64_t sub_24ADC60C8(uint64_t *a1, uint64_t a2)
{
  v2[3] = a2;
  v4 = sub_24AE08E08();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v6 = sub_24AE089E8();
  v2[8] = v6;
  v2[9] = *(v6 - 8);
  v2[10] = swift_task_alloc();
  sub_24AE08A08();
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[11] = v7;
  v2[12] = v8;

  return MEMORY[0x2822009F8](sub_24ADC6220, 0, 0);
}

uint64_t sub_24ADC6220()
{
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D09048], v0[8]);
  sub_24AE08A18();
  sub_24AE08C18();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24ADC6304;
  v2 = v0[11];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24ADC6304(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_24ADC6404, 0, 0);
}

uint64_t sub_24ADC6404()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v5 + 16))(v3, v0[3], v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[15] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);

  sub_24AE08288();
  v8 = swift_task_alloc();
  v0[16] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v8 = v0;
  v8[1] = sub_24ADC6580;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v7, v9);
}

uint64_t sub_24ADC6580()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24ADC6870;
  }

  else
  {

    v2 = sub_24ADC669C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ADC669C()
{
  v12 = v0;
  v1 = *(v0 + 16);
  sub_24AE08288();
  v2 = sub_24AE08DE8();
  v3 = sub_24AE093E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0x6576694C6C616572, 0xEA00000000002928, &v11);
    *(v4 + 12) = 2080;
    sub_24ADAE700();
    v6 = sub_24AE08E28();
    v8 = sub_24AD9F840(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v2, v3, "%s - result %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_24ADC6870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AE08E08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24ADC698C(uint64_t *a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24ADC6A64;

  return sub_24ADC60C8(a1, v1 + v5);
}

uint64_t sub_24ADC6A64(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24ADC6B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v59 = MEMORY[0x277D84F90];
  sub_24ADFB224(0, v1, 0);
  v2 = v59;
  v37 = a1 + 64;
  result = sub_24AE09488();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v60 = *(a1 + 36);
    v36 = v1;
    v6 = 1;
    while (1)
    {
      v7 = v5 >> 6;
      if ((*(v37 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      if (v60 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v8 = (*(a1 + 48) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = (*(a1 + 56) + (v5 << 7));
      v12 = v11[3];
      v14 = *v11;
      v13 = v11[1];
      v48[2] = v11[2];
      v48[3] = v12;
      v48[0] = v14;
      v48[1] = v13;
      v15 = v11[7];
      v17 = v11[4];
      v16 = v11[5];
      v48[6] = v11[6];
      v48[7] = v15;
      v48[4] = v17;
      v48[5] = v16;
      v18 = v11[5];
      v44 = v11[4];
      v45 = v18;
      v19 = v11[1];
      v40 = *v11;
      v41 = v19;
      v20 = v11[3];
      v42 = v11[2];
      v43 = v20;
      v21 = v11[7];
      v46 = v11[6];
      v47 = v21;
      v49[0] = v9;
      v49[1] = v10;
      v54 = v44;
      v55 = v18;
      v56 = v46;
      v57 = v21;
      v50 = v40;
      v51 = v19;
      v52 = v42;
      v53 = v20;
      sub_24AE08288();
      sub_24ADAE7A8(v48, v39);
      sub_24ADC8100(v49, v39);
      sub_24ADA8FB8(&v50);
      v38[0] = v9;
      v38[1] = v10;
      sub_24ADC8100(v49, v39);

      v39[4] = v54;
      v39[5] = v55;
      v39[6] = v56;
      v39[7] = v57;
      v39[0] = v50;
      v39[1] = v51;
      v39[2] = v52;
      v39[3] = v53;
      PersonLocationEntity.init(id:location:)(v38, v39, v58);
      result = sub_24ADC8170(v49);
      v59 = v2;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_24ADFB224((v22 > 1), v23 + 1, 1);
        v2 = v59;
      }

      *(v2 + 16) = v23 + 1;
      v24 = (v2 + (v23 << 6));
      v25 = v58[0];
      v26 = v58[1];
      v27 = v58[3];
      v24[4] = v58[2];
      v24[5] = v27;
      v24[2] = v25;
      v24[3] = v26;
      v28 = 1 << *(a1 + 32);
      if (v5 >= v28)
      {
        goto LABEL_27;
      }

      v29 = *(v37 + 8 * v7);
      if ((v29 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v60 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v30 = v29 & (-2 << (v5 & 0x3F));
      if (v30)
      {
        v5 = __clz(__rbit64(v30)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v7 << 6;
        v32 = v7 + 1;
        v33 = (a1 + 72 + 8 * v7);
        while (v32 < (v28 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_24ADAE8DC(v5, v60, 0);
            v5 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_24ADAE8DC(v5, v60, 0);
        v5 = v28;
      }

LABEL_19:
      if (v6 == v36)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        ++v6;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

__n128 PersonLocationEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for PersonLocationEntityQuery(0);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for PersonLocationEntityQuery(uint64_t a1)
{
  result = qword_27EFA98A8;
  if (!qword_27EFA98A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonLocationEntityQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  type metadata accessor for PersonLocationEntityQuery(0);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0E250;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADC70F0(uint64_t *a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24ADC81D8;

  return sub_24ADC60C8(a1, v1 + v5);
}

uint64_t PersonLocationEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ADC71E8, 0, 0);
}

uint64_t sub_24ADC71E8()
{
  v31 = v0;
  type metadata accessor for PersonLocationEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v30);
    *(v4 + 12) = 2082;
    v6 = MEMORY[0x24C231100](v3, MEMORY[0x277D837D0]);
    v8 = sub_24AD9F840(v6, v7, &v30);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - ids: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = v0[3];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      sub_24AE08288();
      if (sub_24AE090D8())
      {
        v15 = sub_24AE09058();
        v16 = sub_24ADF89E4(v15, v14, v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v14 = MEMORY[0x24C230F60](v16, v18, v20, v22);
        v13 = v23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24ADAB104(0, *(v12 + 2) + 1, 1, v12);
      }

      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        v12 = sub_24ADAB104((v24 > 1), v25 + 1, 1, v12);
      }

      *(v12 + 2) = v25 + 1;
      v26 = &v12[16 * v25];
      *(v26 + 4) = v14;
      *(v26 + 5) = v13;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v27 = sub_24ADAE028(v12);

  v0[2] = v27;
  v28 = swift_task_alloc();
  v0[5] = v28;
  *v28 = v0;
  v28[1] = sub_24ADC750C;

  return sub_24ADC76C0(v0 + 2);
}

uint64_t sub_24ADC750C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    v5 = sub_24ADA9F94;
  }

  else
  {
    *(v4 + 56) = a1;

    v5 = sub_24ADC7640;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADC7640()
{
  v1 = sub_24ADC6B60(*(v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ADC76C0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_24ADC76E4, 0, 0);
}

uint64_t sub_24ADC76E4()
{
  v14 = v0;
  *(v0 + 72) = *(type metadata accessor for PersonLocationEntityQuery(0) + 20);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0xD00000000000001ELL, 0x800000024AE132A0, &v13);
    *(v4 + 12) = 2080;
    *(v0 + 24) = v3;
    sub_24AE08288();
    v6 = sub_24AE08FF8();
    v8 = sub_24AD9F840(v6, v7, &v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - will call fetchPeopleLocationsWithOptions %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = **(v0 + 32);
  *(v0 + 16) = *(v0 + 40);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_24ADC7938;

  return v12(v0 + 16);
}

uint64_t sub_24ADC7938(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24ADAA4EC;
  }

  else
  {
    v4 = sub_24ADC7A4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADC7A4C()
{
  v12 = v0;
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24AD9F840(0xD00000000000001ELL, 0x800000024AE132A0, &v11);
    *(v3 + 12) = 2080;
    sub_24ADAE700();
    v5 = sub_24AE08E28();
    v7 = sub_24AD9F840(v5, v6, &v11);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - did receive fetchPeopleLocationsWithOptions %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 56);

  return v8(v9);
}

uint64_t sub_24ADC7C00@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0E3A8;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADC7DB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return PersonLocationEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADC7E44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADC80BC(&qword_27EFA9838, &protocol conformance descriptor for PersonLocationEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_24ADC7FB4()
{
  result = qword_27EFA9898;
  if (!qword_27EFA9898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA98A0, qword_24AE0E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9898);
  }

  return result;
}

uint64_t sub_24ADC8040(uint64_t a1)
{
  result = sub_24AE08E08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADC80BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonLocationEntityQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ADC8100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98B8, &unk_24AE0E3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADC8170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98B8, &unk_24AE0E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADC81DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_24AE08948();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24AE086E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24AE08718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24AE08508();
  __swift_allocate_value_buffer(v10, qword_27EFA98C0);
  __swift_project_value_buffer(v10, qword_27EFA98C0);
  sub_24AE08F08();
  *v6 = type metadata accessor for IntelligenceModule();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9120], v3);
  sub_24AE08938();
  sub_24AE08728();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_24AE084F8();
}

uint64_t static PersonEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8668 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC8584()
{
  v0 = sub_24AE08E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PersonEntityQuery(0);
  __swift_allocate_value_buffer(v7, qword_27EFA98D8);
  v8 = __swift_project_value_buffer(v7, qword_27EFA98D8);
  sub_24AE08DF8();
  v9 = *(v1 + 32);
  v9(v4, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v4, v0);
  result = sub_24AE08DF8();
  *v8 = &unk_24AE0E978;
  v8[1] = v11;
  return result;
}

uint64_t static PersonEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA98D8);
  return sub_24ADC8834(v3, a1, type metadata accessor for PersonEntityQuery);
}

uint64_t PersonEntity.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADC8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADC88F4(uint64_t a1)
{
  v2 = sub_24AE08378();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for PersonEntity(0);
  v9(v6, v8, v2);
  sub_24AE083A8();
  return (*(v3 + 8))(v8, v2);
}

uint64_t PersonEntity.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AE08378();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(type metadata accessor for PersonEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  *(a2 + v11) = sub_24AE083D8();
  sub_24ADC8834(a1, a2, type metadata accessor for PersonModel);
  sub_24ADC8C00(v10);
  (*(v5 + 16))(v8, v10, v4);
  sub_24AE083A8();
  sub_24ADCBC10(a1, type metadata accessor for PersonModel);
  return (*(v5 + 8))(v10, v4);
}

void *sub_24ADC8C00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v50 - v4;
  v57 = sub_24AE08358();
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24AE08368();
  v65 = *(v58 - 8);
  v6 = MEMORY[0x28223BE20](v58);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v50 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9108, &qword_24AE0BA28);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = v50 - v15;
  v16 = sub_24AE08318();
  v63 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = (v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A98, &qword_24AE0E970);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (v50 - v20);
  v22 = sub_24AE082E8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v2[11];
  v60 = v26;
  if (v26)
  {
    *v21 = v2[10];
    v21[1] = v26;
    (*(v23 + 104))(v21, *MEMORY[0x277CB9CD0], v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    (*(v23 + 32))(v25, v21, v22);
  }

  else
  {
    (*(v23 + 56))(v21, 1, 1, v22);
    v27 = *v2;
    v28 = v2[1];
    v66 = 0x3A3156444953;
    v67 = 0xE600000000000000;
    v59 = v16;
    MEMORY[0x24C230FB0](v27, v28);
    v16 = v59;
    v29 = v67;
    *v25 = v66;
    v25[1] = v29;
    (*(v23 + 104))(v25, *MEMORY[0x277CB9CC8], v22);
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      sub_24AD92BE4(v21, &qword_27EFA9A98, &qword_24AE0E970);
    }
  }

  v30 = v2[9];
  *v18 = v2[8];
  v18[1] = v30;
  v31 = *MEMORY[0x277CB9CF8];
  v32 = *(v63 + 104);
  v50[1] = v18;
  v32(v18, v31, v16);
  v33 = *(v2 + 32);
  v64 = v8;
  v62 = v11;
  if (v33)
  {
    if (v33 == 1)
    {
      (*(v61 + 13))(v56, *MEMORY[0x277CB9D48], v57);
      sub_24AE08288();
      sub_24AE08288();
      swift_bridgeObjectRetain_n();
      sub_24AE08288();
      sub_24AE08338();
    }

    else
    {
      sub_24AE08288();
      sub_24AE08288();
      swift_bridgeObjectRetain_n();
      sub_24AE08288();
      sub_24AE08348();
    }
  }

  else
  {
    (*(v61 + 13))(v56, *MEMORY[0x277CB9D48], v57);
    sub_24AE08288();
    sub_24AE08288();
    swift_bridgeObjectRetain_n();
    sub_24AE08288();
    sub_24AE08328();
  }

  v34 = v65;
  v35 = *(v65 + 32);
  v36 = v53;
  v37 = v58;
  v63 = v65 + 32;
  v35(v53, v13, v58);

  (*(v34 + 56))(v36, 0, 1, v37);
  v38 = v2[7];
  v39 = *(v38 + 16);
  if (v39)
  {
    v50[0] = v25;
    v66 = MEMORY[0x277D84F90];
    result = sub_24ADFB25C(0, v39, 0);
    v41 = 0;
    v42 = v66;
    v55 = *MEMORY[0x277CB9D48];
    v54 = (v61 + 104);
    v43 = v38 + 64;
    v60 = v38;
    v61 = v35;
    v59 = v39;
    v44 = v62;
    while (v41 < *(v38 + 16))
    {
      if (*(v43 - 16))
      {
        if (*(v43 - 16) == 1)
        {
          (*v54)(v56, v55, v57);
          swift_bridgeObjectRetain_n();
          sub_24AE08288();
          v45 = v64;
          v37 = v58;
          sub_24AE08338();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_24AE08288();
          v45 = v64;
          sub_24AE08348();
        }
      }

      else
      {
        (*v54)(v56, v55, v57);
        swift_bridgeObjectRetain_n();
        sub_24AE08288();
        v45 = v64;
        v37 = v58;
        sub_24AE08328();
      }

      v46 = v61;
      v61(v44, v45, v37);

      v66 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24ADFB25C((v47 > 1), v48 + 1, 1);
        v42 = v66;
      }

      ++v41;
      *(v42 + 16) = v48 + 1;
      result = v46(v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v48, v44, v37);
      v43 += 40;
      v38 = v60;
      if (v59 == v41)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v49 = sub_24AE08478();
    (*(*(v49 - 8) + 56))(v51, 1, 1, v49);
    return sub_24AE082F8();
  }

  return result;
}

uint64_t PersonEntity.displayRepresentation.getter()
{
  v0 = sub_24AE08378();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonEntity(0);
  sub_24AE08398();
  sub_24AE08308();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24ADC95D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA98D8);
  return sub_24ADC8834(v3, a1, type metadata accessor for PersonEntityQuery);
}

uint64_t sub_24ADC9658@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8668 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC9700(uint64_t a1)
{
  v2 = sub_24ADCBB0C(&qword_27EFA9948, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADC977C()
{
  v0 = sub_24AE08378();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE08398();
  sub_24AE08308();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24ADC9860(uint64_t a1)
{
  v2 = sub_24ADCBB0C(&qword_27EFA9968, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 PersonEntity.init(noHydration:)@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for PersonEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  *(a2->n128_u64 + v5) = sub_24AE083D8();
  v27 = 0x3A3156444953;
  v28 = 0xE600000000000000;
  sub_24AE08288();
  MEMORY[0x24C230FB0](v3, v4);
  PersonModel.Handle.init(rawValue:)(0x3A3156444953, 0xE600000000000000, &v22);
  v18[0] = v22;
  v18[1] = v23;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v18, &v27);
  v6 = v28;
  v16 = v27;
  v7 = v29;
  v8 = v30;
  v17 = v31;
  v22 = 0x3A3156444953;
  v23 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v3, v4);

  v10 = v22;
  v9 = v23;
  if (qword_27EFA87F8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PersonModel.Relationship(0);
  v12 = __swift_project_value_buffer(v11, qword_27EFAA6C0);
  v13 = type metadata accessor for PersonModel(0);
  sub_24ADC8834(v12, a2 + *(v13 + 32), type metadata accessor for PersonModel.Relationship);
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v4;
  a2[1].n128_u64[0] = v16;
  a2[1].n128_u64[1] = v6;
  a2[2].n128_u8[0] = v7;
  a2[2].n128_u64[1] = v8;
  result = v17;
  a2[3] = v17;
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v9;
  a2[5].n128_u64[0] = 0;
  a2[5].n128_u64[1] = 0;
  v15 = a2 + *(v13 + 36);
  *v15 = 0;
  v15[8] = 1;
  return result;
}

uint64_t static PersonEntity.transferRepresentation.getter()
{
  v0 = sub_24AE08DD8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24AE08DC8();
  type metadata accessor for PersonEntity(0);
  sub_24ADCBB0C(&qword_27EFA98F0, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);
  return sub_24AE08DB8();
}

uint64_t sub_24ADC9B84(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for PersonModel(0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for PersonEntity.PayloadV1(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADC9C44, 0, 0);
}

uint64_t sub_24ADC9C44()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_24AE085D8();
  swift_allocObject();
  sub_24AE085C8();
  sub_24ADC8834(v3, v2, type metadata accessor for PersonModel);
  sub_24ADC9E0C(v2, v1);
  sub_24ADCBB0C(&qword_27EFA9A90, type metadata accessor for PersonEntity.PayloadV1, &protocol conformance descriptor for PersonEntity.PayloadV1);
  v4 = sub_24AE085B8();
  v6 = v5;
  sub_24ADCBC10(v0[5], type metadata accessor for PersonEntity.PayloadV1);

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_24ADC9E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - v6;
  v7 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = type metadata accessor for PersonModel.Relationship.Following(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v23 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PersonModel(0);
  v26 = *(v57 + 32);
  v60 = a1;
  v27 = a1 + v26;
  sub_24ADC8834(v27, v22, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24ADCBC10(v22, type metadata accessor for PersonModel.Relationship.Following);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v22[*(v28 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v22, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  sub_24ADC8834(v27, v20, type metadata accessor for PersonModel.Relationship.Following);
  v54 = swift_getEnumCaseMultiPayload();
  if (v54 == 1)
  {
    sub_24AD92BE4(v20, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v20, type metadata accessor for PersonModel.Relationship.Following);
  }

  v53 = type metadata accessor for PersonModel.Relationship(0);
  v29 = *(v53 + 20);
  sub_24ADC8834(v27 + v29, v16, type metadata accessor for PersonModel.Relationship.Follower);
  v30 = swift_getEnumCaseMultiPayload();
  v31 = v62;
  if (v30)
  {
    sub_24ADCBC10(v16, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v16[*(v32 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    v31 = v62;
    sub_24AD92BE4(v16, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  sub_24ADC8834(v27 + v29, v14, type metadata accessor for PersonModel.Relationship.Follower);
  v33 = swift_getEnumCaseMultiPayload();
  v34 = v58;
  if (v33)
  {
    v35 = sub_24AE088E8();
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    sub_24ADCBC10(v14, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24ADCC510(v14, v31);
    sub_24AD92BE4(&v14[v36], &qword_27EFA8878, &qword_24AE0E6E0);
  }

  v37 = v59;
  sub_24ADCC510(v31, v59);
  v38 = v56;
  sub_24ADC8834(v27 + v29, v56, type metadata accessor for PersonModel.Relationship.Follower);
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 == 1)
  {
    sub_24AD92BE4(v38, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v38, type metadata accessor for PersonModel.Relationship.Follower);
  }

  sub_24ADC8834(v27 + v29, v34, type metadata accessor for PersonModel.Relationship.Follower);
  v40 = swift_getEnumCaseMultiPayload();
  if (v40 == 2)
  {
    sub_24AD92BE4(v34, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v34, type metadata accessor for PersonModel.Relationship.Follower);
  }

  v41 = v40 == 2;
  v42 = v39 == 1;
  v43 = v54 == 1;
  v44 = *(v27 + *(v53 + 24));
  if (v44 == 2)
  {
    v45 = 2;
  }

  else
  {
    v45 = v44 & 1;
  }

  *v25 = EnumCaseMultiPayload == 0;
  v25[1] = v43;
  v25[2] = v30 == 0;
  sub_24ADCC510(v37, &v25[v23[7]]);
  v25[v23[8]] = v42;
  v25[v23[9]] = v41;
  v25[v23[10]] = v45;
  v46 = v61;
  sub_24ADCBBAC(v25, v61);
  v47 = (v60 + *(v57 + 36));
  v48 = *v47;
  v49 = *(v47 + 8);
  sub_24ADCBC10(v60, type metadata accessor for PersonModel);
  result = type metadata accessor for PersonEntity.PayloadV1(0);
  v51 = v46 + *(result + 20);
  *v51 = v48;
  *(v51 + 8) = v49;
  return result;
}

uint64_t sub_24ADCA4B8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A78, &qword_24AE0E950);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A80, &qword_24AE0E958);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A88, &unk_24AE0E960);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCCA90();
  sub_24AE09888();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24ADCCAE4();
    sub_24AE09708();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24ADCCB38();
    sub_24AE09708();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_24ADCA774(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A10, &qword_24AE0E920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCC468();
  sub_24AE09888();
  v11[15] = 0;
  sub_24AE09758();
  if (!v2)
  {
    v11[14] = 1;
    sub_24AE09758();
    v11[13] = 2;
    sub_24AE09758();
    v9 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
    v11[12] = 3;
    sub_24AE088E8();
    sub_24ADCBB0C(&qword_27EFA9A20, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24AE09738();
    v11[11] = 4;
    sub_24AE09758();
    v11[10] = 5;
    sub_24AE09758();
    v11[9] = *(v3 + *(v9 + 40));
    v11[8] = 6;
    sub_24ADCC4BC();
    sub_24AE09738();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ADCAA40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A30, &qword_24AE0E928);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24ADCC468();
  v14 = v9;
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v16 = v19;
  v15 = v20;
  v29 = 0;
  *v12 = sub_24AE096D8() & 1;
  v28 = 1;
  v12[1] = sub_24AE096D8() & 1;
  v27 = 2;
  v12[2] = sub_24AE096D8() & 1;
  sub_24AE088E8();
  v26 = 3;
  sub_24ADCBB0C(&qword_27EFA9A38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_24AE096B8();
  sub_24ADCC510(v6, &v12[v10[7]]);
  v25 = 4;
  v12[v10[8]] = sub_24AE096D8() & 1;
  v24 = 5;
  v12[v10[9]] = sub_24AE096D8() & 1;
  v22 = 6;
  sub_24ADCC580();
  sub_24AE096B8();
  (*(v16 + 8))(v14, v15);
  v12[v10[10]] = v23;
  sub_24ADC8834(v12, v18, type metadata accessor for PersonEntity.PayloadV1.Relationship);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_24ADCBC10(v12, type metadata accessor for PersonEntity.PayloadV1.Relationship);
}

uint64_t sub_24ADCAE6C()
{
  if (*v0)
  {
    return 0x6552746F4E646964;
  }

  else
  {
    return 0x746F4E646574706FLL;
  }
}

uint64_t sub_24ADCAEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54;
  if (v6 || (sub_24AE097C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6552746F4E646964 && a2 == 0xEB00000000796C70)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE097C8();

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

uint64_t sub_24ADCAFA4(uint64_t a1)
{
  v2 = sub_24ADCCA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCAFE0(uint64_t a1)
{
  v2 = sub_24ADCCA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB01C(uint64_t a1)
{
  v2 = sub_24ADCCAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB058(uint64_t a1)
{
  v2 = sub_24ADCCAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB094(uint64_t a1)
{
  v2 = sub_24ADCCB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB0D0(uint64_t a1)
{
  v2 = sub_24ADCCB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB10C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ADCC5D4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_24ADCB158()
{
  v1 = 0x776F6C6C6F467369;
  v2 = *v0;
  v3 = 0x6E69646E65507369;
  if (v2 != 5)
  {
    v3 = 0x617453796C706572;
  }

  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x776F6C6C6F467369;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ADCB248@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADCD15C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADCB27C(uint64_t a1)
{
  v2 = sub_24ADCC468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB2B8(uint64_t a1)
{
  v2 = sub_24ADCC468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB324()
{
  if (*v0)
  {
    return 0x657469726F766166;
  }

  else
  {
    return 0x6E6F6974616C6572;
  }
}

uint64_t sub_24ADCB374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
  if (v6 || (sub_24AE097C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE097C8();

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

uint64_t sub_24ADCB45C(uint64_t a1)
{
  v2 = sub_24ADCBA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB498(uint64_t a1)
{
  v2 = sub_24ADCBA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonEntity.PayloadV1.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98F8, &qword_24AE0E3D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCBA98();
  sub_24AE09888();
  v8[15] = 0;
  type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  sub_24ADCBB0C(&qword_27EFA9908, type metadata accessor for PersonEntity.PayloadV1.Relationship, &unk_24AE0E8A4);
  sub_24AE09768();
  if (!v1)
  {
    type metadata accessor for PersonEntity.PayloadV1(0);
    v8[14] = 1;
    sub_24AE09728();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PersonEntity.PayloadV1.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9910, &qword_24AE0E3D8);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PersonEntity.PayloadV1(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCBA98();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v8;
  v11 = v10;
  v12 = v23;
  v27 = 0;
  sub_24ADCBB0C(&qword_27EFA9918, type metadata accessor for PersonEntity.PayloadV1.Relationship, &unk_24AE0E87C);
  v14 = v24;
  v13 = v25;
  sub_24AE096E8();
  sub_24ADCBBAC(v14, v11);
  v26 = 1;
  v15 = sub_24AE096A8();
  LOBYTE(v14) = v16;
  (*(v12 + 8))(v7, v13);
  v17 = v22;
  v18 = v11 + *(v21 + 20);
  *v18 = v15;
  *(v18 + 8) = v14 & 1;
  sub_24ADC8834(v11, v17, type metadata accessor for PersonEntity.PayloadV1);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24ADCBC10(v11, type metadata accessor for PersonEntity.PayloadV1);
}

uint64_t sub_24ADCB9EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AE08DD8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24AE08DC8();
  return sub_24AE08DB8();
}

unint64_t sub_24ADCBA98()
{
  result = qword_27EFA9900;
  if (!qword_27EFA9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9900);
  }

  return result;
}

uint64_t sub_24ADCBB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ADCBB74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADCBBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADCBC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ADCBD94()
{
  result = qword_27EFA9940;
  if (!qword_27EFA9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9940);
  }

  return result;
}

void sub_24ADCBF94(uint64_t a1)
{
  type metadata accessor for PersonModel(319);
  if (v1 <= 0x3F)
  {
    sub_24ADCC018(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC018(uint64_t a1)
{
  if (!qword_27EFA9998)
  {
    sub_24AE08378();
    sub_24ADCBB0C(&qword_27EFA99A0, MEMORY[0x277CB9DB8], MEMORY[0x277CB9DB0]);
    v1 = sub_24AE08448();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA9998);
    }
  }
}

void sub_24ADCC0D4(uint64_t a1)
{
  type metadata accessor for PersonEntity.PayloadV1.Relationship(319);
  if (v1 <= 0x3F)
  {
    sub_24ADCC29C(319, &qword_27EFA99B8, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC190(uint64_t a1)
{
  sub_24ADCC244(319);
  if (v1 <= 0x3F)
  {
    sub_24ADCC29C(319, &qword_27EFA99E8, &type metadata for PersonEntity.PayloadV1.Relationship.ReplyState);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC244(uint64_t a1)
{
  if (!qword_27EFA99E0)
  {
    sub_24AE088E8();
    v1 = sub_24AE09438();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA99E0);
    }
  }
}

void sub_24ADCC29C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24AE09438();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ADCC30C()
{
  result = qword_27EFA99F0;
  if (!qword_27EFA99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA99F0);
  }

  return result;
}

unint64_t sub_24ADCC364()
{
  result = qword_27EFA99F8;
  if (!qword_27EFA99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA99F8);
  }

  return result;
}

unint64_t sub_24ADCC3BC()
{
  result = qword_27EFA9A00;
  if (!qword_27EFA9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A00);
  }

  return result;
}

unint64_t sub_24ADCC414()
{
  result = qword_27EFA9A08;
  if (!qword_27EFA9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A08);
  }

  return result;
}

unint64_t sub_24ADCC468()
{
  result = qword_27EFA9A18;
  if (!qword_27EFA9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A18);
  }

  return result;
}

unint64_t sub_24ADCC4BC()
{
  result = qword_27EFA9A28;
  if (!qword_27EFA9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A28);
  }

  return result;
}

uint64_t sub_24ADCC510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ADCC580()
{
  result = qword_27EFA9A40;
  if (!qword_27EFA9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A40);
  }

  return result;
}

uint64_t sub_24ADCC5D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A48, &qword_24AE0E930);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A50, &qword_24AE0E938);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A58, &unk_24AE0E940);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCCA90();
  v11 = v26;
  sub_24AE09878();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24AE096F8();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24ADB4B80();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24AE09558();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0);
    *v19 = &type metadata for PersonEntity.PayloadV1.Relationship.ReplyState;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24ADCCAE4();
    sub_24AE09678();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24ADCCB38();
    sub_24AE09678();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_24ADCCA90()
{
  result = qword_27EFA9A60;
  if (!qword_27EFA9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A60);
  }

  return result;
}

unint64_t sub_24ADCCAE4()
{
  result = qword_27EFA9A68;
  if (!qword_27EFA9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A68);
  }

  return result;
}

unint64_t sub_24ADCCB38()
{
  result = qword_27EFA9A70;
  if (!qword_27EFA9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A70);
  }

  return result;
}

uint64_t sub_24ADCCB8C(uint64_t *a1, uint64_t a2)
{
  v6 = *(sub_24AE08E08() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24ADC6A64;

  return sub_24ADD0F58(a1, a2, v2 + v7);
}

uint64_t getEnumTagSinglePayload for PersonEntity.PayloadV1.Relationship.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonEntity.PayloadV1.Relationship.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADCCDF0()
{
  result = qword_27EFA9AA0;
  if (!qword_27EFA9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AA0);
  }

  return result;
}

unint64_t sub_24ADCCE48()
{
  result = qword_27EFA9AA8;
  if (!qword_27EFA9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AA8);
  }

  return result;
}

unint64_t sub_24ADCCEA0()
{
  result = qword_27EFA9AB0;
  if (!qword_27EFA9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AB0);
  }

  return result;
}

unint64_t sub_24ADCCEF8()
{
  result = qword_27EFA9AB8;
  if (!qword_27EFA9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AB8);
  }

  return result;
}

unint64_t sub_24ADCCF50()
{
  result = qword_27EFA9AC0;
  if (!qword_27EFA9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AC0);
  }

  return result;
}

unint64_t sub_24ADCCFA8()
{
  result = qword_27EFA9AC8;
  if (!qword_27EFA9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AC8);
  }

  return result;
}

unint64_t sub_24ADCD000()
{
  result = qword_27EFA9AD0;
  if (!qword_27EFA9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AD0);
  }

  return result;
}

unint64_t sub_24ADCD058()
{
  result = qword_27EFA9AD8;
  if (!qword_27EFA9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AD8);
  }

  return result;
}

unint64_t sub_24ADCD0B0()
{
  result = qword_27EFA9AE0;
  if (!qword_27EFA9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AE0);
  }

  return result;
}

unint64_t sub_24ADCD108()
{
  result = qword_27EFA9AE8;
  if (!qword_27EFA9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AE8);
  }

  return result;
}

uint64_t sub_24ADCD15C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x776F6C6C6F467369 && a2 == 0xEB00000000676E69;
  if (v3 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AE13300 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6F467369 && a2 == 0xEA00000000007265 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AE13320 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AE13340 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69646E65507369 && a2 == 0xEE00726566664F67 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617453796C706572 && a2 == 0xEA00000000006574)
  {

    return 6;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 PersonEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for PersonEntityQuery(0);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for PersonEntityQuery(uint64_t a1)
{
  result = qword_27EFA9B28;
  if (!qword_27EFA9B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonEntityQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  type metadata accessor for PersonEntityQuery(0);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0E978;
  a1[1] = v11;
  return result;
}

uint64_t PersonEntityQuery.customDefaultResult()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24AE08378();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for PersonModel(0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9AF0, &qword_24AE0ED38);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADCD7B4, 0, 0);
}

uint64_t sub_24ADCD7B4()
{
  v8 = v0;
  *(v0 + 216) = *(type metadata accessor for PersonEntityQuery(0) + 20);
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v7);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  *(v0 + 88) = 0;
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_24ADCD93C;

  return sub_24ADCE050((v0 + 88));
}

uint64_t sub_24ADCD93C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_24ADCDE0C;
  }

  else
  {
    v4 = sub_24ADCDA50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADCDA50()
{
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFAA638;
  v2 = qword_27EFA87F0;
  sub_24AE08288();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v4 = qword_27EFAA640;
  v5 = MEMORY[0x277D84F90];
  *&v28 = MEMORY[0x277D84F90];
  *(&v28 + 1) = MEMORY[0x277D84F90];
  *&v29 = MEMORY[0x277D84F90];
  sub_24AE08288();
  *(&v29 + 1) = sub_24ADC2030(v5);
  *&v30 = v1;
  *(&v30 + 1) = v4;
  sub_24ADBC970(v3);

  *(v0 + 48) = v30;
  *(v0 + 64) = 0uLL;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 16) = v28;
  *(v0 + 32) = v29;
  v6 = *(v0 + 32);
  if (*(v6 + 16))
  {
    v7 = *(*(v0 + 152) + 80);
    sub_24ADD082C(v6 + ((v7 + 32) & ~v7), *(v0 + 184));
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  (*(v12 + 56))(v10, v8, 1, v11);
  sub_24ADD0890(v10, v9);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = *(v0 + 184);
  if (v13 == 1)
  {
    sub_24AD92BE4(v0 + 16, &qword_27EFA9AF8, &unk_24AE0ED50);
    sub_24AD92BE4(v14, &qword_27EFA9AF0, &qword_24AE0ED38);
    v15 = type metadata accessor for PersonEntity(0);
    v16 = 1;
  }

  else
  {
    v17 = *(v0 + 168);
    v27 = v17;
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 112);
    v21 = *(v0 + 96);
    sub_24ADD0900(*(v0 + 176), v17, type metadata accessor for PersonModel);
    sub_24ADD082C(v17, v18);
    v15 = type metadata accessor for PersonEntity(0);
    v22 = *(v15 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    *(v21 + v22) = sub_24AE083D8();
    sub_24ADD082C(v18, v21);
    sub_24ADC8C00(v19);
    (*(v20 + 16))(v25, v19, v26);
    sub_24AE083A8();
    sub_24AD92BE4(v0 + 16, &qword_27EFA9AF8, &unk_24AE0ED50);
    (*(v20 + 8))(v19, v26);
    sub_24ADD0CE8(v18, type metadata accessor for PersonModel);
    sub_24ADD0CE8(v27, type metadata accessor for PersonModel);
    sub_24AD92BE4(v14, &qword_27EFA9AF0, &qword_24AE0ED38);
    v16 = 0;
  }

  (*(*(v15 - 8) + 56))(*(v0 + 96), v16, 1, v15);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24ADCDE0C()
{
  v17 = v0;
  v1 = v0[26];
  v2 = v1;
  v3 = sub_24AE08DE8();
  v4 = sub_24AE093F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v16);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - error: %{public}@", v7, 0x16u);
    sub_24AD92BE4(v8, &qword_27EFA9668, &qword_24AE0DA90);
    MEMORY[0x24C231F80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C231F80](v9, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = type metadata accessor for PersonEntity(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24ADCE050(uint64_t *a1)
{
  v2[4] = v1;
  v4 = sub_24AE08388();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[7] = v5;
  v2[8] = v6;

  return MEMORY[0x2822009F8](sub_24ADCE118, 0, 0);
}

uint64_t sub_24ADCE118()
{
  v15 = v0;
  *(v0 + 96) = *(type metadata accessor for PersonEntityQuery(0) + 20);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v14);
    *(v4 + 12) = 2080;
    *(v0 + 24) = v3;
    sub_24AE08288();
    v6 = sub_24AE08FF8();
    v8 = sub_24AD9F840(v6, v7, &v14);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - will call fetchWithOptions: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = **(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  sub_24ADD0C24(&qword_27EFA9B00, type metadata accessor for PersonEntityQuery, &protocol conformance descriptor for PersonEntityQuery);
  sub_24AE084C8();
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_24ADCE3CC;
  v11 = *(v0 + 56);

  return v13(v0 + 16, v11);
}

uint64_t sub_24ADCE3CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_24ADBA5E0;
  }

  else
  {
    v7 = sub_24ADCE540;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24ADCE540()
{
  v16 = v0;
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v15);
    *(v3 + 12) = 2080;
    type metadata accessor for PersonModel(0);
    sub_24ADAE700();
    v5 = sub_24AE08E28();
    v7 = sub_24AD9F840(v5, v6, &v15);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - did receive fetchWithOptions: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  v8 = *(v0 + 80);
  v9 = v8[2];
  if (v9)
  {
    v10 = sub_24ADBD574(v8[2], 0);
    v11 = *(type metadata accessor for PersonModel(0) - 8);
    v12 = sub_24ADC1CD0(&v15, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v8);
    sub_24ADC3C28(v15);
    if (v12 == v9)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_7:

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t PersonEntityQuery.entities(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08378();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for PersonModel(0) - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for PersonEntity(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADCE928, 0, 0);
}

uint64_t sub_24ADCE928()
{
  v14 = v0;
  type metadata accessor for PersonEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v13);
    *(v4 + 12) = 2082;
    v6 = MEMORY[0x24C231100](v3, &type metadata for PersonModel.UniqueIdentifier);
    v8 = sub_24AD9F840(v6, v7, &v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - ids: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = sub_24AE08288();
  v10 = sub_24ADAE028(v9);

  v0[2] = v10;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_24ADCEB30;

  return sub_24ADCE050(v0 + 2);
}

uint64_t sub_24ADCEB30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_24ADCEEF0;
  }

  else
  {
    v4 = sub_24ADCEC4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADCEC4C()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = v0[12];
    v25 = v0[13];
    v3 = v0[9];
    v4 = v0[6];
    v28 = MEMORY[0x277D84F90];
    sub_24ADFB354(0, v2, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    v5 = v28;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v21 = (v4 + 8);
    v22 = (v4 + 16);
    v20 = v0;
    do
    {
      v26 = v5;
      v27 = v2;
      v7 = v0[14];
      v9 = v0[10];
      v8 = v0[11];
      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[5];
      sub_24ADD082C(v6, v8);
      sub_24ADD082C(v8, v9);
      v13 = *(v24 + 20);
      *(v7 + v13) = sub_24AE083D8();
      v14 = v7;
      v5 = v26;
      sub_24ADD082C(v9, v14);
      sub_24ADC8C00(v11);
      (*v22)(v10, v11, v12);
      sub_24AE083A8();
      (*v21)(v11, v12);
      sub_24ADD0CE8(v9, type metadata accessor for PersonModel);
      sub_24ADD0CE8(v8, type metadata accessor for PersonModel);
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24ADFB354((v15 > 1), v16 + 1, 1);
        v5 = v26;
      }

      v0 = v20;
      v17 = v20[14];
      *(v5 + 16) = v16 + 1;
      sub_24ADD0900(v17, v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16, type metadata accessor for PersonEntity);
      v6 += v23;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v18 = v0[1];

  return v18(v5);
}

uint64_t sub_24ADCEEF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PersonEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_24ADCEFA8, 0, 0);
}

uint64_t sub_24ADCEFA8()
{
  v10 = v0;
  type metadata accessor for PersonEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AD9F840(0xD000000000000013, 0x800000024AE13240, &v9);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24AD9F840(v4, v3, &v9);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - string: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v0[5] = 0;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_24ADCF174;

  return sub_24ADCE050(v0 + 5);
}

uint64_t sub_24ADCF174(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[11] = v1;

  if (v1)
  {
    v4 = sub_24ADBAFDC;
  }

  else
  {
    v4 = sub_24ADCF290;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADCF290()
{
  v10 = v0;
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = qword_27EFAA638;
  sub_24AE08288();
  v6 = sub_24ADAE274(&unk_285E2F630);
  v9[0] = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  v9[6] = 0;
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = sub_24ADC2030(MEMORY[0x277D84F90]);
  v9[4] = v5;
  v9[5] = v6;
  v9[7] = v3;
  v9[8] = v2;
  sub_24AE08288();
  sub_24ADBC970(v1);

  sub_24ADCF3AC(v9, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_24ADCF3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_24AE08948();
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24AE086E8();
  v58 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24AE08F78();
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B40, &unk_24AE0EF00);
  v8 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v42 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v42 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[3];
  v65 = a1[2];
  v21 = a1[4];
  v20 = a1[5];
  v22 = a1[6];
  v23 = a1[8];
  v24 = v17;
  v25 = sub_24AE08718();
  v26 = *(v25 - 8);
  v60 = *(v26 + 56);
  v61 = v25;
  v59 = v26 + 56;
  v60(v16, 1, 1);
  v27 = *(v24 + 16);
  if (v27)
  {
    v42[0] = v19;
    v43 = v22;
    v44 = v18;
    v45 = v23;
    v46 = v16;
    v66 = MEMORY[0x277D84F90];
    v28 = v24;
    sub_24ADFB398(0, v27, 0);
    v29 = v66;
    v50 = "isFutureFollower";
    v49 = *MEMORY[0x277CC9120];
    v48 = (v58 + 104);
    v56 = v8 + 32;
    v42[1] = v28;
    v30 = (v28 + 40);
    v31 = v55;
    v57 = v20;
    v58 = v21;
    do
    {
      v32 = *(v30 - 8);
      v33 = *v30;
      if (*(v30 - 8) && v32 == 1)
      {
        sub_24AE08288();
        sub_24AE08F08();
        v34 = type metadata accessor for ModelsModule();
        v36 = v52;
        v35 = v53;
        *v52 = v34;
        (*v48)(v36, v49, v35);
        sub_24AE08938();
        v31 = v55;
        v37 = v64;
        sub_24AE08728();
        (v60)(v37, 0, 1, v61);
      }

      else
      {
        v37 = v64;
        (v60)(v64, 1, 1, v61);
        sub_24AE08288();
      }

      v38 = sub_24ADD0C6C(v37, v62);
      MEMORY[0x28223BE20](v38);
      LOBYTE(v42[-2]) = v32;
      v42[-1] = v33;
      type metadata accessor for PersonEntity(0);
      sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);
      sub_24AE08458();

      v66 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_24ADFB398((v39 > 1), v40 + 1, 1);
        v29 = v66;
      }

      *(v29 + 16) = v40 + 1;
      (*(v8 + 32))(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40, v31, v63);
      v30 += 2;
      --v27;
    }

    while (v27);

    sub_24ADC3E14(v43);
  }

  else
  {

    sub_24ADC3E14(v22);
  }

  type metadata accessor for PersonEntity(0);
  sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);
  return sub_24AE08468();
}

uint64_t PersonEntityQuery.allEntities()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24ADCFA78, 0, 0);
}

uint64_t sub_24ADCFA78()
{
  v8 = v0;
  type metadata accessor for PersonEntityQuery(0);
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AD9F840(0x7469746E456C6C61, 0xED00002928736569, &v7);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  *(v0 + 40) = 0;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_24ADCFC04;

  return sub_24ADCE050((v0 + 40));
}

uint64_t sub_24ADCFC04(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[9] = v1;

  if (v1)
  {
    v4 = sub_24ADBB798;
  }

  else
  {
    v4 = sub_24ADCFD20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADCFD20()
{
  v8 = v0;
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[6];
  v3 = qword_27EFAA638;
  sub_24AE08288();
  v4 = sub_24ADAE274(&unk_285E2F658);
  v7[0] = MEMORY[0x277D84F90];
  v7[1] = MEMORY[0x277D84F90];
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = sub_24ADC2030(MEMORY[0x277D84F90]);
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0xE000000000000000;
  sub_24ADBC970(v1);

  sub_24ADCF3AC(v7, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ADCFE28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD8E628;

  return PersonEntityQuery.allEntities()(a1);
}

uint64_t sub_24ADCFEC0@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0EEF8;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADD0070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return PersonEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADD0104(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADD0C24(&qword_27EFA9B38, type metadata accessor for PersonEntityQuery, &protocol conformance descriptor for PersonEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

uint64_t sub_24ADD01E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADD0C24(&qword_27EFA9938, type metadata accessor for PersonEntityQuery, &protocol conformance descriptor for PersonEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_24ADD02CC(uint64_t a1, uint64_t a2)
{
  v50 = sub_24AE08378();
  v3 = *(v50 - 8);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - v6;
  v7 = type metadata accessor for PersonModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PersonEntity(0);
  MEMORY[0x28223BE20](v51);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B48, &qword_24AE0EF10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    v43 = (v3 + 16);
    v44 = v17;
    v41 = v12 + 16;
    v42 = (v3 + 8);
    v40 = (v12 + 8);
    v18 = MEMORY[0x277D84F90];
    v39 = xmmword_24AE0A280;
    v19 = v51;
    do
    {
      v53 = v18;
      v54 = v15;
      v52 = v16;
      v20 = v47;
      sub_24ADD082C(v16, v47);
      v21 = *(v19 + 20);
      v22 = sub_24AE083D8();
      v23 = v46;
      *&v46[v21] = v22;
      sub_24ADD082C(v20, v23);
      v24 = v14;
      v25 = v12;
      v26 = v11;
      v27 = v48;
      sub_24ADC8C00(v48);
      v28 = v50;
      (*v43)(v49, v27, v50);
      sub_24AE083A8();
      v29 = v27;
      v11 = v26;
      v12 = v25;
      v14 = v24;
      (*v42)(v29, v28);
      sub_24ADD0CE8(v20, type metadata accessor for PersonModel);
      sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);
      sub_24AE082A8();
      v30 = v23;
      v18 = v53;
      sub_24ADD0CE8(v30, type metadata accessor for PersonEntity);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B50, &qword_24AE0EF18);
      v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v39;
      (*(v12 + 16))(v32 + v31, v24, v11);
      v33 = sub_24AE08288();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24ADAB564(0, v18[2] + 1, 1, v18);
      }

      v35 = v18[2];
      v34 = v18[3];
      v36 = v54;
      if (v35 >= v34 >> 1)
      {
        v18 = sub_24ADAB564((v34 > 1), v35 + 1, 1, v18);
      }

      (*v40)(v14, v11);
      v18[2] = v35 + 1;
      v18[v35 + 4] = v33;
      v16 = v52 + v44;
      v15 = v36 - 1;
    }

    while (v15);
  }

  sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity, &protocol conformance descriptor for PersonEntity);
  sub_24AE08278();

  v37 = sub_24AE08288();

  return v37;
}

uint64_t sub_24ADD082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9AF0, &qword_24AE0ED38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ADD0B1C()
{
  result = qword_27EFA9B18;
  if (!qword_27EFA9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA9B20, qword_24AE0EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B18);
  }

  return result;
}

uint64_t sub_24ADD0BA8(uint64_t a1)
{
  result = sub_24AE08E08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADD0C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ADD0C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonEntityQuery.Dependencies.fetchWithOptions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonEntityQuery.Dependencies.init(fetchWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADD0DE0@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_24AE08E08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_24AE08DF8();
  v12 = *(v6 + 32);
  v12(v9, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  result = (v12)(v14 + v13, v9, v5);
  *a3 = a2;
  a3[1] = v14;
  return result;
}

uint64_t sub_24ADD0F58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v5 = sub_24AE08E08();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v3[6] = *(v6 + 64);
  v3[7] = swift_task_alloc();
  v7 = sub_24AE089E8();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  sub_24AE08A08();
  v8 = swift_task_alloc();
  v9 = *a1;
  v3[11] = v8;
  v3[12] = v9;

  return MEMORY[0x2822009F8](sub_24ADD10B0, 0, 0);
}

uint64_t sub_24ADD10B0()
{
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D09048], v0[8]);
  sub_24AE08A18();
  sub_24AE08C18();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24ADD1194;
  v2 = v0[11];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24ADD1194(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_24ADD1294, 0, 0);
}

uint64_t sub_24ADD1294()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8808, &qword_24AE0A2A8);
  *v7 = v0;
  v7[1] = sub_24ADD13FC;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A2A0, v6, v8);
}

uint64_t sub_24ADD13FC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24ADC6870;
  }

  else
  {

    v2 = sub_24ADD1518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ADD1518()
{
  v14 = v0;
  v1 = v0[12];
  v2 = v0[2];
  if (v1)
  {
    sub_24AE08288();
    v3 = sub_24ADD1F78(v2, v1);

    v2 = v3;
  }

  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE093E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AD9F840(0x6576694C6C616572, 0xEA00000000002928, v13);
    *(v6 + 12) = 2080;
    type metadata accessor for PersonModel(0);
    sub_24ADAE700();
    v8 = sub_24AE08E28();
    v10 = sub_24AD9F840(v8, v9, v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - result %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v7, -1, -1);
    MEMORY[0x24C231F80](v6, -1, -1);
  }

  v11 = v0[1];

  return v11(v2);
}

unint64_t *sub_24ADD1730(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_24AE08288();
    v8 = sub_24ADD1B10(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_24ADD17CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PersonModel(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  result = sub_24AE09628();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_24ADD082C(v22 + v43 * v21, v40);
    sub_24ADC3C30(v26, v17);
    sub_24AE09838();
    v44 = 0x3A3156444953;
    v45 = 0xE600000000000000;
    sub_24AE08288();
    MEMORY[0x24C230FB0](v24, v25);
    sub_24AE09048();

    result = sub_24AE09868();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v25;
    result = sub_24ADC3C30(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ADD1B10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[0] = a2;
  v37 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B58, &unk_24AE0EFA0);
  MEMORY[0x28223BE20](v41);
  v7 = (v35 - v6);
  v8 = type metadata accessor for PersonModel(0);
  v40 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v12 = 0;
  v45 = a3;
  v13 = *(a3 + 64);
  v36 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v54 = a4 + 56;
  v42 = v17;
  v43 = v11;
  v44 = v7;
  v49 = a4;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_14:
    v46 = v12;
    v21 = v18 | (v12 << 6);
    v22 = (v45[6] + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_24ADD082C(v45[7] + *(v40 + 72) * v21, v11);
    *v7 = v24;
    v7[1] = v23;
    sub_24ADD082C(v11, v7 + *(v41 + 48));
    if (!*(a4 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    v38 = v21;
    sub_24AE09838();
    v50 = 0x3A3156444953;
    v51 = 0xE600000000000000;
    swift_bridgeObjectRetain_n();
    MEMORY[0x24C230FB0](v24, v23);
    sub_24AE09048();

    v25 = sub_24AE09868();
    v26 = -1 << *(a4 + 32);
    v27 = v25 & ~v26;
    if ((*(v54 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v48 = ~v26;
      while (1)
      {
        v28 = (*(a4 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        v52 = 0x3A3156444953;
        v53 = 0xE600000000000000;
        sub_24AE08288();
        MEMORY[0x24C230FB0](v29, v30);
        v32 = v52;
        v31 = v53;
        v52 = 0x3A3156444953;
        v53 = 0xE600000000000000;
        MEMORY[0x24C230FB0](v24, v23);
        if (v32 == v52 && v31 == v53)
        {
          break;
        }

        v33 = sub_24AE097C8();

        if (v33)
        {
          goto LABEL_23;
        }

        a4 = v49;
        v27 = (v27 + 1) & v48;
        if (((*(v54 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_23:
      v7 = v44;
      sub_24ADD2138(v44);
      v11 = v43;
      sub_24ADD21A0(v43);

      *(v37 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v34 = __OFADD__(v39++, 1);
      a4 = v49;
      v17 = v42;
      v12 = v46;
      v16 = v47;
      if (v34)
      {
        __break(1u);
        return sub_24ADD17CC(v37, v35[0], v39, v45);
      }
    }

    else
    {
LABEL_6:
      v7 = v44;
      sub_24ADD2138(v44);
      v11 = v43;
      sub_24ADD21A0(v43);

      v17 = v42;
      v12 = v46;
      v16 = v47;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_24ADD17CC(v37, v35[0], v39, v45);
    }

    v20 = *(v36 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADD1F78(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_24AE08288();
      v10 = sub_24ADD1730(v12, v7, a1, a2);
      MEMORY[0x24C231F80](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  sub_24AE08288();
  v10 = sub_24ADD1B10((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_24ADD2138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B58, &unk_24AE0EFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD21A0(uint64_t a1)
{
  v2 = type metadata accessor for PersonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD21FC()
{
  sub_24ADD23B0(v0 + OBJC_IVAR____TtC10FindMyCore34AnyDisplayRepresentationImageCache_cachedDisplayRepresentationImage);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AnyDisplayRepresentationImageCache(uint64_t a1)
{
  result = qword_27EFA9B70;
  if (!qword_27EFA9B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ADD22A4(uint64_t a1)
{
  sub_24ADD234C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24ADD234C(uint64_t a1)
{
  if (!qword_27EFA9B80)
  {
    sub_24AE08478();
    v1 = sub_24AE09438();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA9B80);
    }
  }
}

uint64_t sub_24ADD23B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 GetItemCachedLocationIntent.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  sub_24ADBA644(v15);
  v4 = v15[10];
  v5 = v15[11];
  v6 = v15[8];
  a2[10] = v15[9];
  a2[11] = v4;
  v7 = v15[12];
  a2[12] = v5;
  a2[13] = v7;
  v8 = v15[6];
  v9 = v15[7];
  v10 = v15[4];
  a2[6] = v15[5];
  a2[7] = v8;
  a2[8] = v9;
  a2[9] = v6;
  v11 = v15[2];
  v12 = v15[3];
  v13 = v15[0];
  a2[2] = v15[1];
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v10;
  result = *a1;
  *a2 = *a1;
  a2[1] = v13;
  return result;
}

uint64_t GetItemCachedLocationIntent.item.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[12];
  v30 = v1[11];
  v31 = v3;
  v4 = v1[12];
  v32 = v1[13];
  v5 = v1[6];
  v6 = v1[8];
  v26 = v1[7];
  v7 = v26;
  v27 = v6;
  v8 = v1[8];
  v9 = v1[10];
  v28 = v1[9];
  v10 = v28;
  v29 = v9;
  v11 = v1[2];
  v12 = v1[4];
  v22 = v1[3];
  v13 = v22;
  v23 = v12;
  v14 = v1[4];
  v15 = v1[6];
  v24 = v1[5];
  v16 = v24;
  v25 = v15;
  v17 = v1[2];
  v21[0] = v1[1];
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[13];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_24ADD2528(v21, &v20);
}

uint64_t sub_24ADD2528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B88, &qword_24AE0F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 GetItemCachedLocationIntent.item.setter(uint64_t a1)
{
  v3 = v1[12];
  v15[10] = v1[11];
  v15[11] = v3;
  v15[12] = v1[13];
  v4 = v1[8];
  v15[6] = v1[7];
  v15[7] = v4;
  v5 = v1[10];
  v15[8] = v1[9];
  v15[9] = v5;
  v6 = v1[4];
  v15[2] = v1[3];
  v15[3] = v6;
  v7 = v1[6];
  v15[4] = v1[5];
  v15[5] = v7;
  v8 = v1[2];
  v15[0] = v1[1];
  v15[1] = v8;
  sub_24ADD2638(v15);
  v9 = *(a1 + 176);
  v1[11] = *(a1 + 160);
  v1[12] = v9;
  v1[13] = *(a1 + 192);
  v10 = *(a1 + 112);
  v1[7] = *(a1 + 96);
  v1[8] = v10;
  v11 = *(a1 + 144);
  v1[9] = *(a1 + 128);
  v1[10] = v11;
  v12 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v12;
  v13 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v13;
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

uint64_t sub_24ADD2638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B88, &qword_24AE0F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  *(v3 + 992) = *v2;
  v5 = v2[10];
  v6 = v2[12];
  v7 = v2[13];
  *(v3 + 384) = v2[11];
  *(v3 + 400) = v6;
  *(v3 + 416) = v7;
  v8 = v2[6];
  v9 = v2[8];
  v10 = v2[9];
  *(v3 + 320) = v2[7];
  *(v3 + 336) = v9;
  *(v3 + 352) = v10;
  *(v3 + 368) = v5;
  v11 = v2[2];
  v12 = v2[4];
  v13 = v2[5];
  *(v3 + 256) = v2[3];
  *(v3 + 272) = v12;
  *(v3 + 288) = v13;
  *(v3 + 304) = v8;
  *(v3 + 984) = a2;
  *(v3 + 976) = a1;
  *(v3 + 224) = v4;
  *(v3 + 240) = v11;
  sub_24ADD2528(v3 + 224, v3 + 432);

  return MEMORY[0x2822009F8](sub_24ADD2770, 0, 0);
}

uint64_t sub_24ADD2770()
{
  v1 = *(v0 + 400);
  *(v0 + 176) = *(v0 + 384);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 416);
  v2 = *(v0 + 336);
  *(v0 + 112) = *(v0 + 320);
  *(v0 + 128) = v2;
  v3 = *(v0 + 368);
  *(v0 + 144) = *(v0 + 352);
  *(v0 + 160) = v3;
  v4 = *(v0 + 272);
  *(v0 + 48) = *(v0 + 256);
  *(v0 + 64) = v4;
  v5 = *(v0 + 304);
  *(v0 + 80) = *(v0 + 288);
  *(v0 + 96) = v5;
  v6 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 32) = v6;
  if (get_enum_tag_for_layout_string_10FindMyCore10ItemEntityVSg_0(v0 + 16) == 1)
  {
    **(v0 + 984) = 1;
    *(v0 + 1016) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 992);
    v10 = *(v0 + 64);
    *(v0 + 672) = *(v0 + 48);
    *(v0 + 688) = v10;
    v11 = *(v0 + 128);
    *(v0 + 736) = *(v0 + 112);
    *(v0 + 752) = v11;
    v12 = *(v0 + 96);
    *(v0 + 704) = *(v0 + 80);
    *(v0 + 720) = v12;
    v13 = *(v0 + 208);
    *(v0 + 816) = *(v0 + 192);
    *(v0 + 832) = v13;
    v14 = *(v0 + 176);
    *(v0 + 784) = *(v0 + 160);
    *(v0 + 800) = v14;
    *(v0 + 768) = *(v0 + 144);
    v15 = *(v0 + 32);
    *(v0 + 640) = *(v0 + 16);
    *(v0 + 656) = v15;
    v17 = (v9 + *v9);
    v16 = swift_task_alloc();
    *(v0 + 1008) = v16;
    *v16 = v0;
    v16[1] = sub_24ADD2948;

    return v17(v0 + 848, v0 + 640, v0 + 1017);
  }
}

uint64_t sub_24ADD2948()
{

  if (v0)
  {
    v1 = sub_24ADD2AE8;
  }

  else
  {
    v1 = sub_24ADD2A58;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24ADD2A58()
{
  v1 = *(v0 + 976);
  sub_24ADD2638(v0 + 224);
  v2 = *(v0 + 848);
  v3 = *(v0 + 864);
  v4 = *(v0 + 896);
  *(v1 + 32) = *(v0 + 880);
  *(v1 + 48) = v4;
  *v1 = v2;
  *(v1 + 16) = v3;
  v5 = *(v0 + 912);
  v6 = *(v0 + 928);
  v7 = *(v0 + 960);
  *(v1 + 96) = *(v0 + 944);
  *(v1 + 112) = v7;
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 128) = 1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24ADD2AE8()
{
  v1 = *(v0 + 984);
  sub_24ADD2638(v0 + 224);
  *v1 = *(v0 + 1017);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_24ADD2B58()
{
  result = qword_27EFA9B90;
  if (!qword_27EFA9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B90);
  }

  return result;
}

uint64_t GetItemCachedLocationIntent.FetchLocationError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t GetItemCachedLocationIntent.Result.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24ADAE7A8(v11, &v10);
}

unint64_t sub_24ADD2CD0()
{
  result = qword_27EFA9B98;
  if (!qword_27EFA9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B98);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_24ADD2D60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_24ADD2DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24ADD2E74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_24ADD2EBC(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV12DependenciesV05fetchG0yAA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKcvg()
{
  v1 = *v0;

  return v1;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV12DependenciesV05fetchG0AeA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKc_tcfC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADD2F94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a3;
  v5 = sub_24AE08BA8();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_24AE08BB8();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BA8, &qword_24AE0F310);
  v3[29] = swift_task_alloc();
  v7 = sub_24AE08AC8();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = sub_24AE089F8();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF0, &qword_24AE0A788);
  v3[36] = swift_task_alloc();
  sub_24AE088E8();
  v3[37] = swift_task_alloc();
  v9 = sub_24AE08D28();
  v3[38] = v9;
  v3[39] = *(v9 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB8, &qword_24AE0F320);
  v3[46] = swift_task_alloc();
  v11 = sub_24AE08928();
  v3[47] = v11;
  v3[48] = *(v11 - 8);
  v3[49] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a2;
  v14 = a2[1];
  v3[50] = v12;
  v3[51] = v13;
  v3[52] = v14;

  return MEMORY[0x2822009F8](sub_24ADD3398, 0, 0);
}

uint64_t sub_24ADD3398()
{
  v1 = *(v0 + 368);
  v2 = [objc_allocWithZone(MEMORY[0x277D49698]) init];
  *(v0 + 424) = v2;
  sub_24AE08288();
  ItemModel.BAIdentifier.init(rawValue:)(v1);
  v3 = type metadata accessor for ItemModel.BAIdentifier(0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    sub_24ADD50F4(*(v0 + 368));
    sub_24ADD2B58();
    v4 = swift_allocError();
    *v5 = 1;
    swift_willThrow();

    *(v0 + 144) = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 584) & 1) == 0)
    {
      v49 = *(v0 + 168);

      *v49 = 0;
      *(v0 + 586) = 0;
      swift_willThrowTypedImpl();
      v8 = *(v0 + 144);
    }

    else
    {
      v7 = *(v0 + 168);

      *v7 = 1;
      *(v0 + 585) = 1;
      swift_willThrowTypedImpl();
      v8 = v4;
    }

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v60 = v2;
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = *(v12 + 16);
    v14(v10, v13, v11);
    sub_24ADD515C(v13);
    (*(v12 + 32))(v9, v10, v11);
    v15 = [objc_allocWithZone(MEMORY[0x277D49680]) init];
    *(v0 + 432) = v15;
    [v15 setSubscribe_];
    [v15 setCachePolicy_];
    if (qword_27EFA8678 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 400);
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);
    v59 = *(v0 + 352);
    v57 = *(v0 + 344);
    v58 = *(v0 + 360);
    type metadata accessor for SPBeaconType(0);
    v19 = sub_24AE091A8();
    [v15 setSearchTypes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BC0, &qword_24AE0F328);
    v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24AE0A280;
    v14(v21 + v20, v16, v18);
    v22 = sub_24AE091A8();

    [v15 setSearchIdentifiers_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BC8, &qword_24AE0F330);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24AE0F2E0;
    v24 = *MEMORY[0x277D49700];
    v25 = *MEMORY[0x277D49708];
    *(v23 + 32) = *MEMORY[0x277D49700];
    *(v23 + 40) = v25;
    v56 = v15;
    v26 = *MEMORY[0x277D49728];
    v27 = *MEMORY[0x277D49730];
    *(v23 + 48) = *MEMORY[0x277D49728];
    *(v23 + 56) = v27;
    v28 = *MEMORY[0x277D49738];
    v29 = *MEMORY[0x277D49740];
    *(v23 + 64) = *MEMORY[0x277D49738];
    *(v23 + 72) = v29;
    v30 = *MEMORY[0x277D49748];
    v54 = *MEMORY[0x277D49750];
    v31 = *MEMORY[0x277D49750];
    *(v23 + 80) = *MEMORY[0x277D49748];
    *(v23 + 88) = v31;
    v32 = *MEMORY[0x277D49758];
    v53 = *MEMORY[0x277D49768];
    v33 = *MEMORY[0x277D49768];
    *(v23 + 96) = *MEMORY[0x277D49758];
    *(v23 + 104) = v33;
    v52 = *MEMORY[0x277D49770];
    v55 = *MEMORY[0x277D49760];
    v34 = *MEMORY[0x277D49760];
    *(v23 + 112) = *MEMORY[0x277D49770];
    *(v23 + 120) = v34;
    type metadata accessor for SPBeaconLocationSource(0);
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v54;
    v43 = v32;
    v44 = v53;
    v45 = v52;
    v46 = v55;
    v47 = sub_24AE091A8();

    [v56 setSearchLocationSources_];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_24ADD3ADC;
    swift_continuation_init();
    *(v0 + 136) = v57;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_24ADD51D0(0, &qword_27EFA9BD0, 0x277D49688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    sub_24AE09298();
    (*(v59 + 32))(boxed_opaque_existential_1, v58, v57);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24ADD4FBC;
    *(v0 + 104) = &block_descriptor;
    [v60 locationForContext:v56 completion:?];
    (*(v59 + 8))(boxed_opaque_existential_1, v57);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_24ADD3ADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_24ADD48F8;
  }

  else
  {
    v2 = sub_24ADD3BEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ADD3BEC()
{
  v1 = *(v0 + 152);
  *(v0 + 448) = v1;
  v2 = [v1 locationsByBeaconIdentifier];
  sub_24ADD51D0(0, &qword_27EFA9BD8, 0x277D49620);
  sub_24ADA6E98();
  v3 = sub_24AE08E18();

  if (*(v3 + 16) && (v4 = sub_24ADD6D88(*(v0 + 400)), (v5 & 1) != 0))
  {
    v6 = *(v0 + 312);
    v36 = *(v0 + 336);
    v37 = *(v0 + 320);
    v38 = *(v0 + 304);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v12 = *(*(v3 + 56) + 8 * v4);
    *(v0 + 456) = v12;
    v13 = v12;

    [v13 latitude];
    [v13 longitude];
    [v13 horizontalAccuracy];
    v14 = [v13 timestamp];
    sub_24AE088D8();

    v15 = sub_24AE08DA8();
    *(v0 + 464) = v15;
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    *(v0 + 472) = v17;
    *(v0 + 480) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v17(v7, 1, 1, v15);
    *(v0 + 576) = *MEMORY[0x277D09078];
    v18 = *(v9 + 104);
    *(v0 + 488) = v18;
    *(v0 + 496) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v18(v8);
    *(v0 + 580) = *MEMORY[0x277D090F8];
    v19 = *(v10 + 104);
    *(v0 + 504) = v19;
    *(v0 + 512) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v19(v11);
    sub_24AE08CE8();
    sub_24AE08A68();
    swift_allocObject();
    *(v0 + 520) = sub_24AE08A58();
    (*(v6 + 16))(v37, v36, v38);
    sub_24AE08AE8();
    swift_allocObject();
    v20 = sub_24AE08AD8();
    *(v0 + 528) = v20;
    v39 = (*MEMORY[0x277D090A0] + MEMORY[0x277D090A0]);
    v21 = swift_task_alloc();
    *(v0 + 536) = v21;
    *v21 = v0;
    v21[1] = sub_24ADD4154;
    v22 = *(v0 + 328);

    return v39(v22, v20);
  }

  else
  {
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v26 = *(v0 + 400);
    v27 = *(v0 + 376);
    v28 = *(v0 + 384);

    sub_24ADD2B58();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();

    (*(v28 + 8))(v26, v27);
    *(v0 + 144) = v29;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 584) & 1) == 0)
    {
      v34 = *(v0 + 168);

      *v34 = 0;
      *(v0 + 586) = 0;
      swift_willThrowTypedImpl();
      v33 = *(v0 + 144);
    }

    else
    {
      v32 = *(v0 + 168);

      *v32 = 1;
      *(v0 + 585) = 1;
      swift_willThrowTypedImpl();
      v33 = v29;
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_24ADD4154()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_24ADD4B0C;
  }

  else
  {
    v2 = sub_24ADD4288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ADD4288()
{
  v1 = v0[29];
  sub_24AE08A88();
  v2 = sub_24AE08948();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[69] = sub_24AE08A78();
  sub_24AE08908();
  sub_24AD9B35C(MEMORY[0x277D84F90]);
  sub_24AE08B88();
  v8 = (*MEMORY[0x277D090B8] + MEMORY[0x277D090B8]);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_24ADD4408;
  v4 = v0[41];
  v5 = v0[28];
  v6 = v0[24];

  return v8(v5, v6, v4, 0);
}

uint64_t sub_24ADD4408()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_24ADD4D54;
  }

  else
  {
    v3 = sub_24ADD4570;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ADD4570(uint64_t a1)
{
  v23 = *(v1 + 580);
  v24 = *(v1 + 504);
  v19 = *(v1 + 576);
  v21 = *(v1 + 488);
  v18 = *(v1 + 472);
  v17 = *(v1 + 464);
  v2 = *(v1 + 456);
  v26 = *(v1 + 448);
  v27 = *(v1 + 432);
  v25 = *(v1 + 424);
  v32 = *(v1 + 400);
  v30 = *(v1 + 384);
  v31 = *(v1 + 376);
  v3 = *(v1 + 328);
  v29 = *(v1 + 336);
  v4 = *(v1 + 312);
  v22 = *(v1 + 320);
  v28 = *(v1 + 304);
  v13 = *(v1 + 288);
  v33 = *(v1 + 280);
  v14 = *(v1 + 264);
  v15 = *(v1 + 256);
  v16 = *(v1 + 240);
  v6 = *(v1 + 216);
  v5 = *(v1 + 224);
  v7 = *(v1 + 200);
  v8 = *(v1 + 208);
  v20 = *(v1 + 160);
  sub_24AE08CF8();
  sub_24AE08D08();
  sub_24AE08C88();
  v9 = [v2 timestamp];
  sub_24AE088D8();

  (*(v8 + 16))(v6, v5, v7);
  sub_24AE08D98();
  v18(v13, 0, 1, v17);
  v21(v33, v19, v14);
  v24(v15, v23, v16);
  sub_24AE08CE8();
  Location.fmuiPublishedLocation.getter(v20);

  v10 = *(v4 + 8);
  v10(v22, v28);
  (*(v8 + 8))(v5, v7);
  v10(v3, v28);
  v10(v29, v28);
  (*(v30 + 8))(v32, v31);

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_24ADD48F8(uint64_t a1)
{
  v2 = *(v1 + 432);
  v3 = *(v1 + 424);
  v4 = *(v1 + 400);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v7 = *(v1 + 440);
  *(v1 + 144) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v1 + 584) & 1) == 0)
  {
    v11 = *(v1 + 168);

    *v11 = 0;
    *(v1 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v10 = *(v1 + 144);
  }

  else
  {
    v9 = *(v1 + 168);

    *v9 = 1;
    *(v1 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v10 = v7;
  }

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_24ADD4B0C()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 432);
  v16 = *(v0 + 400);
  v4 = *(v0 + 376);
  v5 = *(v0 + 384);
  v6 = *(v0 + 336);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v16, v4);
  v9 = *(v0 + 544);
  *(v0 + 144) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v0 + 584) & 1) == 0)
  {
    v13 = *(v0 + 168);

    *v13 = 0;
    *(v0 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v12 = *(v0 + 144);
  }

  else
  {
    v11 = *(v0 + 168);

    *v11 = 1;
    *(v0 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v12 = v9;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24ADD4D54()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 384);
  v17 = *(v0 + 376);
  v18 = *(v0 + 400);
  v5 = *(v0 + 328);
  v16 = *(v0 + 336);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v16, v7);
  (*(v4 + 8))(v18, v17);
  v9 = *(v0 + 568);
  *(v0 + 144) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v0 + 584) & 1) == 0)
  {
    v13 = *(v0 + 168);

    *v13 = 0;
    *(v0 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v12 = *(v0 + 144);
  }

  else
  {
    v11 = *(v0 + 168);

    *v11 = 1;
    *(v0 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v12 = v9;
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_24ADD4FBC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
    sub_24AE092A8();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
    sub_24AE092B8();
  }

  else
  {
    __break(1u);
  }
}

id sub_24ADD506C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE0, &qword_24AE0F338);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24AE0F2F0;
  v1 = *MEMORY[0x277D49808];
  v5 = *MEMORY[0x277D49810];
  v2 = *MEMORY[0x277D49810];
  *(v0 + 32) = *MEMORY[0x277D49808];
  *(v0 + 40) = v2;
  qword_27EFA9BA0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_24ADD50F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB8, &qword_24AE0F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD515C(uint64_t a1)
{
  v2 = type metadata accessor for ItemModel.BAIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD51D0(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 GetPersonCachedLocationIntent.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(type metadata accessor for GetPersonCachedLocationIntent(0) + 20);
  v5 = type metadata accessor for PersonEntity(0);
  v7 = *a1;
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = v7;
  *a2 = v7;
  return result;
}

uint64_t type metadata accessor for GetPersonCachedLocationIntent(uint64_t a1)
{
  result = qword_27EFA9C00;
  if (!qword_27EFA9C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetPersonCachedLocationIntent.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GetPersonCachedLocationIntent(0) + 20);

  return sub_24ADD5338(v3, a1);
}

uint64_t sub_24ADD5338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GetPersonCachedLocationIntent.person.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GetPersonCachedLocationIntent(0) + 20);

  return sub_24ADD53EC(a1, v3);
}

uint64_t sub_24ADD53EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for PersonEntity(0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADD55A0, 0, 0);
}

uint64_t sub_24ADD55A0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  PersonCachedLocationIntent = type metadata accessor for GetPersonCachedLocationIntent(0);
  sub_24ADD5338(v4 + *(PersonCachedLocationIntent + 20), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 160);
    sub_24ADD59C0(*(v0 + 168));
    *v6 = 1;
    *(v0 + 208) = 1;
    sub_24ADD5A28();
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 152);
    sub_24ADD5A7C(*(v0 + 168), *(v0 + 192));
    v12 = (*v9 + **v9);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_24ADD577C;
    v11 = *(v0 + 192);

    return v12(v0 + 16, v11, v0 + 209);
  }
}

uint64_t sub_24ADD577C()
{

  if (v0)
  {
    v1 = sub_24ADD593C;
  }

  else
  {
    v1 = sub_24ADD588C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24ADD588C()
{
  v1 = *(v0 + 144);
  sub_24ADD5AE0(*(v0 + 192));
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  *(v1 + 32) = *(v0 + 48);
  *(v1 + 48) = v4;
  *v1 = v2;
  *(v1 + 16) = v3;
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);
  v7 = *(v0 + 128);
  *(v1 + 96) = *(v0 + 112);
  *(v1 + 112) = v7;
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 128) = 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24ADD593C()
{
  v1 = *(v0 + 160);
  sub_24ADD5AE0(*(v0 + 192));
  *v1 = *(v0 + 209);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ADD59C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ADD5A28()
{
  result = qword_27EFA9BF0;
  if (!qword_27EFA9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9BF0);
  }

  return result;
}

uint64_t sub_24ADD5A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD5AE0(uint64_t a1)
{
  v2 = type metadata accessor for PersonEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GetPersonCachedLocationIntent.FetchLocationError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t GetPersonCachedLocationIntent.Result.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24ADAE7A8(v11, &v10);
}

unint64_t sub_24ADD5C60()
{
  result = qword_27EFA9BF8;
  if (!qword_27EFA9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9BF8);
  }

  return result;
}

void sub_24ADD5CDC(uint64_t a1)
{
  sub_24ADD5D58(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24ADD5D58(uint64_t a1)
{
  if (!qword_27EFA9C10)
  {
    type metadata accessor for PersonEntity(255);
    v1 = sub_24AE09438();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA9C10);
    }
  }
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV12DependenciesV05fetchG0yAA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKcvg()
{
  v1 = *v0;

  return v1;
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV12DependenciesV05fetchG0AeA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKc_tcfC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static GetPersonCachedLocationIntent.Dependencies.live()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v6, v2);
  *a1 = &unk_24AE0F4F0;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADD5F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a3;
  v4[44] = a4;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_24AE08E08();
  v4[45] = v5;
  v6 = *(v5 - 8);
  v4[46] = v6;
  v4[47] = *(v6 + 64);
  v4[48] = swift_task_alloc();
  v7 = sub_24AE089E8();
  v4[49] = v7;
  v4[50] = *(v7 - 8);
  v4[51] = swift_task_alloc();
  sub_24AE08A08();
  v4[52] = swift_task_alloc();
  type metadata accessor for PersonModel(0);
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADD610C, 0, 0);
}

uint64_t sub_24ADD610C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  sub_24ADD082C(v0[42], v0[53]);
  (*(v2 + 104))(v1, *MEMORY[0x277D09048], v3);
  sub_24AE08A18();
  sub_24AE08C18();
  swift_allocObject();
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_24ADD6208;
  v5 = v0[52];

  return MEMORY[0x28215FBB8](v5);
}

uint64_t sub_24ADD6208(uint64_t a1)
{
  *(*v1 + 440) = a1;

  return MEMORY[0x2822009F8](sub_24ADD6308, 0, 0);
}

uint64_t sub_24ADD6308()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9070, &qword_24AE0B990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  v8 = v2[1];
  *(inited + 32) = *v2;
  *(inited + 40) = v8;
  sub_24AE08288();
  v9 = sub_24ADDB998(inited);
  v0[56] = v9;
  swift_setDeallocating();
  sub_24ADD761C(inited + 32);
  (*(v5 + 16))(v3, v6, v4);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[57] = v11;
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  (*(v5 + 32))(v11 + v10, v3, v4);

  sub_24AE08288();
  v12 = swift_task_alloc();
  v0[58] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v12 = v0;
  v12[1] = sub_24ADD64F0;

  return MEMORY[0x28215EB08](v0 + 40, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v11, v13);
}

uint64_t sub_24ADD64F0()
{

  if (v0)
  {

    v1 = sub_24ADD6800;
  }

  else
  {

    v1 = sub_24ADD6638;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24ADD6638()
{

  v1 = *(v0 + 320);
  if (*(v1 + 16) && (v2 = sub_24ADD6B6C(**(v0 + 424), *(*(v0 + 424) + 8), 0x3A3156444953, 0xE600000000000000), (v3 & 1) != 0))
  {
    v4 = *(v0 + 424);
    v5 = *(v0 + 328);
    v6 = (*(v1 + 56) + (v2 << 7));
    v7 = v6[3];
    v9 = *v6;
    v8 = v6[1];
    *(v0 + 48) = v6[2];
    *(v0 + 64) = v7;
    *(v0 + 16) = v9;
    *(v0 + 32) = v8;
    v10 = v6[7];
    v12 = v6[4];
    v11 = v6[5];
    *(v0 + 112) = v6[6];
    *(v0 + 128) = v10;
    *(v0 + 80) = v12;
    *(v0 + 96) = v11;
    sub_24ADAE7A8(v0 + 16, v0 + 144);

    sub_24ADD21A0(v4);
    v13 = *(v0 + 64);
    v15 = *(v0 + 16);
    v14 = *(v0 + 32);
    v5[2] = *(v0 + 48);
    v5[3] = v13;
    *v5 = v15;
    v5[1] = v14;
    v16 = *(v0 + 128);
    v18 = *(v0 + 80);
    v17 = *(v0 + 96);
    v5[6] = *(v0 + 112);
    v5[7] = v16;
    v5[4] = v18;
    v5[5] = v17;

    v19 = *(v0 + 8);
  }

  else
  {

    v20 = *(v0 + 352);
    sub_24ADD21A0(*(v0 + 424));
    *v20 = 0;
    *(v0 + 472) = 0;
    sub_24ADD5A28();
    swift_willThrowTypedImpl();

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_24ADD6800()
{

  v1 = *(v0 + 352);
  sub_24ADD21A0(*(v0 + 424));
  *v1 = 0;
  *(v0 + 472) = 0;
  sub_24ADD5A28();
  swift_willThrowTypedImpl();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ADD68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_24AE08E08() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD8E628;

  return sub_24ADD5F8C(a1, a2, v3 + v9, a3);
}

unint64_t sub_24ADD69DC(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  sub_24AE09858();
  if (a2)
  {
    sub_24AE08288();
    sub_24AE09048();
  }

  v4 = sub_24AE09868();

  return sub_24ADD6E5C(a1, a2, v4);
}

unint64_t sub_24ADD6A80(uint64_t a1)
{
  sub_24AE089B8();
  v2 = MEMORY[0x277D08FF0];
  sub_24ADD7670(&qword_27EFA97D0, MEMORY[0x277D08FF0], MEMORY[0x277D08FF8]);
  v3 = sub_24AE08EA8();
  return sub_24ADD747C(a1, v3, MEMORY[0x277D08FF0], &qword_27EFA9C20, v2, MEMORY[0x277D09000]);
}

unint64_t sub_24ADD6B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24AE09838();
  MEMORY[0x24C230FB0](a1, a2);
  sub_24AE09048();

  v8 = sub_24AE09868();
  return sub_24ADD6FA0(a1, a2, v8, a3, a4);
}

unint64_t sub_24ADD6C14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AE09838();
  v6 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (a1 != 0xC000000000000000 || a3 | a2)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_7;
    }

    v7 = 3;
LABEL_6:
    MEMORY[0x24C231780](v7);
    v8 = a1 & 1;
LABEL_7:
    MEMORY[0x24C231780](v8);
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = 1;
    goto LABEL_6;
  }

  MEMORY[0x24C231780](2);
  MEMORY[0x24C231780](a1 & 1);
  sub_24AE09048();
LABEL_9:
  v9 = sub_24AE09868();

  return sub_24ADD70F8(a1, a2, a3, v9);
}

unint64_t sub_24ADD6D1C(uint64_t a1)
{
  v1 = a1;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  v2 = sub_24AE09868();

  return sub_24ADD740C(v1, v2);
}

unint64_t sub_24ADD6D88(uint64_t a1)
{
  sub_24AE08928();
  v2 = MEMORY[0x277CC95F0];
  sub_24ADD7670(&qword_27EFA8EC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_24AE08EA8();
  return sub_24ADD747C(a1, v3, MEMORY[0x277CC95F0], &qword_27EFA9C18, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_24ADD6E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = v9[1];
      if (!v10)
      {
        break;
      }

      if (!a2)
      {
        goto LABEL_3;
      }

      if (*v9 == a1 && v10 == a2)
      {
        swift_bridgeObjectRetain_n();
LABEL_17:
        swift_bridgeObjectRelease_n();
        return v5;
      }

      v12 = sub_24AE097C8();
      swift_bridgeObjectRetain_n();
      if (v12)
      {
        goto LABEL_17;
      }

      swift_bridgeObjectRelease_n();
LABEL_4:
      v5 = (v5 + 1) & v8;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!a2)
    {

      return v5;
    }

LABEL_3:
    sub_24AE08288();

    goto LABEL_4;
  }

  return v5;
}

unint64_t sub_24ADD6FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 & ~(-1 << *(v5 + 32));
  if ((*(v5 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = (*(v5 + 48) + 16 * v6);
    v8 = *v7;
    v9 = v7[1];
    sub_24AE08288();
    MEMORY[0x24C230FB0](v8, v9);
    MEMORY[0x24C230FB0](a1, a2);
  }

  return v6;
}

unint64_t sub_24ADD70F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v10 = ~v5;
  v11 = a1 != 0xC000000000000001;
  if (a3 | a2)
  {
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v12 = a1 != 0xC000000000000000;
  }

  v35 = a1 >> 62;
  v36 = a1 & 0xC000000000000000;
  v13 = a1 >> 62 != 3 || v11;
  v14 = a1 >> 62 != 3 || v12;
  v33 = v14;
  v34 = v13;
  while (1)
  {
    v21 = (*(v4 + 48) + 24 * v6);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = *v21 >> 62;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        if (v36 == 0x8000000000000000)
        {
LABEL_22:
          sub_24ADC3E58(v22, v23, v24);
          sub_24ADC3E58(a1, a2, a3);
          if (((v22 ^ a1) & 1) == 0)
          {
            return v6;
          }

          goto LABEL_15;
        }

LABEL_12:
        v15 = a1;
        v16 = a2;
        v17 = a3;
LABEL_13:
        sub_24ADC3E34(v15, v16, v17);
        v18 = v22;
        v19 = v23;
        v20 = v24;
LABEL_14:
        sub_24ADC3E58(v18, v19, v20);
        sub_24ADC3E58(a1, a2, a3);
        goto LABEL_15;
      }

      if (v22 == 0xC000000000000000 && (v24 | v23) == 0)
      {
        if (v33)
        {
          sub_24ADC3E34(a1, a2, a3);
          v18 = 0xC000000000000000;
          goto LABEL_41;
        }

        sub_24ADC3E58(0xC000000000000000, 0, 0);
        v28 = 0xC000000000000000;
      }

      else
      {
        if (v34)
        {
          sub_24ADC3E34(a1, a2, a3);
          v18 = 0xC000000000000001;
LABEL_41:
          v19 = 0;
          v20 = 0;
          goto LABEL_14;
        }

        sub_24ADC3E58(0xC000000000000001, 0, 0);
        v28 = 0xC000000000000001;
      }

      v29 = 0;
      v30 = 0;
      goto LABEL_47;
    }

    if (!v25)
    {
      if (v35)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

    if (v36 != 0x4000000000000000 || ((v22 ^ a1) & 1) != 0)
    {
      sub_24ADC3E34(a1, a2, a3);
      v15 = v22;
      v16 = v23;
      v17 = v24;
      goto LABEL_13;
    }

    if (v23 == a2 && v24 == a3)
    {
      break;
    }

    v32 = sub_24AE097C8();
    sub_24ADC3E34(a1, a2, a3);
    sub_24ADC3E34(v22, v23, v24);
    sub_24ADC3E58(v22, v23, v24);
    sub_24ADC3E58(a1, a2, a3);
    if (v32)
    {
      return v6;
    }

LABEL_15:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  sub_24ADC3E34(a1, a2, a3);
  sub_24ADC3E34(v22, a2, a3);
  sub_24ADC3E58(v22, a2, a3);
  v28 = a1;
  v29 = a2;
  v30 = a3;
LABEL_47:
  sub_24ADC3E58(v28, v29, v30);
  return v6;
}

unint64_t sub_24ADD740C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24ADD747C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_24ADD7670(v23, v24, v25);
      v19 = sub_24AE08EF8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_24ADD7670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CombinedUniqueIdentifier.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    MEMORY[0x24C230FB0](v1, v2);
    v3 = 0x3A315644494142;
    v4 = 0xE700000000000000;
    v6 = 977882438;
  }

  else
  {
    MEMORY[0x24C230FB0](v1, v2);
    v3 = 0x3A3156444953;
    v4 = 0xE600000000000000;
    v6 = 978341190;
  }

  MEMORY[0x24C230FB0](v3, v4);

  return v6;
}

uint64_t CombinedUniqueIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    MEMORY[0x24C231780](1);
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C230FB0](v2, v3);
  sub_24AE09048();
}

uint64_t CombinedUniqueIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24AE09838();
  if (v3)
  {
    MEMORY[0x24C231780](1);
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADD7924()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AE09838();
  CombinedUniqueIdentifier.hash(into:)(v3);
  return sub_24AE09868();
}

uint64_t sub_24ADD797C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_24AE09838();
  CombinedUniqueIdentifier.hash(into:)(v4);
  return sub_24AE09868();
}

uint64_t sub_24ADD7A0C@<X0>(uint64_t *a1@<X8>)
{
  result = CombinedUniqueIdentifier.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s10FindMyCore24CombinedUniqueIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (a1[2])
  {
    if (a2[2])
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_24ADD7DC4(*a2, a2[1]);
    sub_24ADD7DC4(v3, v2);
    sub_24ADD7DCC(v3, v2);
    sub_24ADD7DCC(v5, v4);
    return 0;
  }

  if (a2[2])
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_24ADD7DC4(v5, v4);
  sub_24ADD7DC4(v3, v2);
  MEMORY[0x24C230FB0](v3, v2);
  MEMORY[0x24C230FB0](v5, v4);
  sub_24ADD7DCC(v3, v2);
  sub_24ADD7DCC(v5, v4);

  return 1;
}

unint64_t sub_24ADD7CBC()
{
  result = qword_27EFA9C28;
  if (!qword_27EFA9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C28);
  }

  return result;
}

uint64_t sub_24ADD7D1C(uint64_t a1, unsigned int a2)
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

uint64_t sub_24ADD7D64(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_24ADD7DD4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_24AE09838();
  MEMORY[0x24C231780](v3);
  v4 = sub_24AE09868();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t DistanceFromUser.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for DistanceFromUser(uint64_t a1)
{
  result = qword_27EFA9CA0;
  if (!qword_27EFA9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DistanceFromUser.eta.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DistanceFromUser(0) + 24));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

uint64_t DistanceFromUser.init(from:to:eta:)@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v43 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12;
  v14 = type metadata accessor for DistanceFromUser(0);
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  if (*a2)
  {
    if (v17)
    {
      v19 = a3[1];
      v41 = *a3;
      v42 = a4;
      v39 = a3[2];
      v40 = v19;
      [v18 distanceFromLocation_];
      v20 = objc_opt_self();
      v21 = [v20 meters];
      v38[1] = sub_24ADD83C4();
      sub_24AE085E8();
      v22 = [v20 meters];
      sub_24AE08618();

      sub_24AE085F8();
      v24 = v23;
      v25 = *(v43 + 8);
      result = v25(v11, v8);
      v27 = v24 / 30.0;
      if (COERCE__INT64(fabs(v24 / 30.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v27 > -9.22337204e18)
      {
        if (v27 < 9.22337204e18)
        {
          v28 = v27 * 30.0;
          v29 = [v20 meters];
          sub_24AE085E8();
          [v17 horizontalAccuracy];
          v31 = v30 * v30;
          [v18 horizontalAccuracy];
          v33 = v32;

          v25(v13, v8);
          v16[*(v14 + 20)] = v28 / sqrt(v31 + v33 * v33 + 3600.0) < 1.5;
          v34 = &v16[*(v14 + 24)];
          v35 = v40;
          *v34 = v41;
          *(v34 + 1) = v35;
          *(v34 + 2) = v39;
          v36 = v42;
          sub_24ADD8410(v16, v42);
          return (*(v44 + 56))(v36, 0, 1, v14);
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }
  }

  else
  {
    v18 = v17;
  }

  v37 = *(v44 + 56);

  return v37(a4, 1, 1, v14);
}

unint64_t sub_24ADD83C4()
{
  result = qword_27EFA9C38;
  if (!qword_27EFA9C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA9C38);
  }

  return result;
}

uint64_t sub_24ADD8410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceFromUser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DistanceFromUser.FormatOption.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t DistanceFromUser.formatted(excluding:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &v86 - v4;
  v5 = sub_24AE08718();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v86 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C40, &qword_24AE0F6D0);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C48, &qword_24AE0F6D8);
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v86 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C50, &qword_24AE0F6E0);
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v15 = &v86 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C58, &qword_24AE0F6E8);
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v91 = &v86 - v17;
  v89 = sub_24AE086E8();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24AE08948();
  v87 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v86 - v23;
  v25 = sub_24AE08F78();
  v86 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - v29;
  v31 = sub_24ADAE338(&unk_285E2F6A8);
  v32 = a1[2];
  v33 = *(v31 + 16);
  v99 = v9;
  if (v32 <= v33 >> 3)
  {
    v107 = v31;
    sub_24ADD99B0(a1);
    v34 = v107;
  }

  else
  {
    v34 = sub_24ADD9AB4(a1, v31);
  }

  v35 = type metadata accessor for DistanceFromUser(0);
  if (v106[*(v35 + 20)] == 1)
  {
    v36 = sub_24ADD7DD4(0, v34);

    if (v36)
    {
      sub_24AE08F08();
      type metadata accessor for ModelsModule();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass_];
      v106 = v38;
      sub_24AE08938();
      v39 = v86;
      (*(v86 + 16))(v28, v30, v25);
      v40 = v87;
      (*(v87 + 16))(v22, v24, v100);
      v41 = [v38 bundleURL];
      sub_24AE087F8();

      (*(v88 + 104))(v19, *MEMORY[0x277CC9118], v89);
      v42 = v105;
      sub_24AE08728();

      (*(v40 + 8))(v24, v100);
      (*(v39 + 8))(v30, v25);
      if (qword_27EFA8738 != -1)
      {
        swift_once();
      }

      v44 = qword_27EFAA198;
      v43 = unk_27EFAA1A0;
      v46 = qword_27EFAA1A8;
      v45 = unk_27EFAA1B0;
      v47 = word_27EFAA1B8;
      v48 = HIBYTE(word_27EFAA1B8);
      v49 = type metadata accessor for LabelInfo(0);
      v50 = &v42[*(v49 + 20)];
      *v50 = v44;
      *(v50 + 1) = v43;
      *(v50 + 2) = v46;
      *(v50 + 3) = v45;
      v50[32] = v47;
      v50[33] = v48;
      (*(*(v49 - 8) + 56))(v42, 0, 1, v49);
      sub_24AE08288();
      return sub_24AE08288();
    }

    else
    {
      v59 = type metadata accessor for LabelInfo(0);
      v60 = *(*(v59 - 8) + 56);
      v61 = v59;
      v62 = v105;

      return v60(v62, 1, 1, v61);
    }
  }

  else
  {
    v52 = v35;
    if (sub_24ADD7DD4(1u, v34))
    {
      sub_24ADD83C4();
      sub_24AE08608();
      v53 = v93;
      sub_24AE08738();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C60, &qword_24AE0F6F0);
      v55 = v98;
      (*(*(v54 - 8) + 56))(v98, 1, 1, v54);
      v56 = v91;
      sub_24AE08568();
      sub_24AD92BE4(v55, &qword_27EFA9C40, &qword_24AE0F6D0);
      (*(v96 + 8))(v53, v97);
      (*(v90 + 8))(v15, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
      sub_24AD9B548(&qword_27EFA9C68, &qword_27EFA9C58, &qword_24AE0F6E8, MEMORY[0x277CC87C0]);
      v57 = v95;
      sub_24AE08628();
      (*(v94 + 8))(v56, v57);
      v58 = v108;
    }

    else
    {
      v58 = 0;
    }

    v63 = v104;
    v64 = v101;
    v65 = sub_24ADD7DD4(2u, v34);

    v66 = v105;
    if (v65 && (v67 = &v106[*(v52 + 24)], v68 = *v67, v68 != 5))
    {
      LOBYTE(v107) = *v67;
      v108 = *(v67 + 8);
      object = DistanceFromUser.ETA.formatted()().value._object;
      if (v68 <= 1)
      {
        if (v68)
        {
          if (qword_27EFA8718 != -1)
          {
            swift_once();
          }

          v74 = &qword_27EFAA0F8;
        }

        else
        {
          if (qword_27EFA8738 != -1)
          {
            swift_once();
          }

          v74 = &qword_27EFAA198;
        }
      }

      else if (v68 == 2)
      {
        if (qword_27EFA8710 != -1)
        {
          swift_once();
        }

        v74 = &qword_27EFAA0D0;
      }

      else if (v68 == 3)
      {
        if (qword_27EFA8700 != -1)
        {
          swift_once();
        }

        v74 = &qword_27EFAA080;
      }

      else
      {
        if (qword_27EFA8720 != -1)
        {
          swift_once();
        }

        v74 = &qword_27EFAA120;
      }

      v70 = v74[1];
      v106 = *v74;
      v71 = v74[2];
      v72 = v74[3];
      v75 = *(v74 + 32);
      v76 = *(v74 + 33);
      sub_24AE08288();
      sub_24AE08288();
      v73 = v75 | (v76 << 8);
      v63 = v104;
      v66 = v105;
    }

    else
    {
      object = 0;
      v106 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
    }

    LocalizedStringResource(separating:_:)(v58, object, v64);

    v77 = v103;
    if ((*(v103 + 48))(v64, 1, v63) == 1)
    {
      sub_24ADDA6DC(v106, v70, v71, v72);
      sub_24AD92BE4(v64, &qword_27EFA8D98, &qword_24AE0B490);
      v78 = type metadata accessor for LabelInfo(0);
      return (*(*(v78 - 8) + 56))(v66, 1, 1, v78);
    }

    else
    {
      v79 = *(v77 + 32);
      v80 = v64;
      v81 = v99;
      v79(v99, v80, v63);
      (*(v77 + 16))(v102, v81, v63);
      if (v70)
      {
        (*(v77 + 8))(v81, v63);
        v82 = HIBYTE(v73);
        v83 = v106;
      }

      else
      {
        if (qword_27EFA8738 != -1)
        {
          swift_once();
        }

        v83 = qword_27EFAA198;
        v70 = unk_27EFAA1A0;
        v71 = qword_27EFAA1A8;
        v72 = unk_27EFAA1B0;
        LOBYTE(v73) = word_27EFAA1B8;
        v82 = HIBYTE(word_27EFAA1B8);
        v106 = *(v103 + 8);
        sub_24AE08288();
        sub_24AE08288();
        (v106)(v99, v63);
        v66 = v105;
      }

      v79(v66, v102, v63);
      v84 = type metadata accessor for LabelInfo(0);
      v85 = &v66[*(v84 + 20)];
      *v85 = v83;
      *(v85 + 1) = v70;
      *(v85 + 2) = v71;
      *(v85 + 3) = v72;
      v85[32] = v73 & 1;
      v85[33] = v82;
      return (*(*(v84 - 8) + 56))(v66, 0, 1, v84);
    }
  }
}

uint64_t DistanceFromUser.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E0]);
  sub_24AE08EB8();
  v2 = type metadata accessor for DistanceFromUser(0);
  sub_24AE09858();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 5)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();
  MEMORY[0x24C231780](v3);

  return sub_24AE09988();
}

uint64_t DistanceFromUser.hashValue.getter()
{
  sub_24AE09838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E0]);
  sub_24AE08EB8();
  v1 = type metadata accessor for DistanceFromUser(0);
  sub_24AE09858();
  v2 = *(v0 + *(v1 + 24));
  sub_24AE09858();
  if (v2 != 5)
  {
    MEMORY[0x24C231780](v2);
    sub_24AE09988();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADD949C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E0]);
  sub_24AE08EB8();
  sub_24AE09858();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 5)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();
  MEMORY[0x24C231780](v4);

  return sub_24AE09988();
}

uint64_t sub_24ADD95A8(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E0]);
  sub_24AE08EB8();
  sub_24AE09858();
  v4 = *(v2 + *(a2 + 24));
  sub_24AE09858();
  if (v4 != 5)
  {
    MEMORY[0x24C231780](v4);
    sub_24AE09988();
  }

  return sub_24AE09868();
}

uint64_t static DistanceFromUser.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E8]);
  return sub_24AE08ED8() & 1;
}

uint64_t sub_24ADD9748(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E8]);
  return sub_24AE08ED8() & 1;
}

BOOL sub_24ADD97E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E8]);
  return (sub_24AE08ED8() & 1) == 0;
}

BOOL sub_24ADD987C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E8]);
  return (sub_24AE08ED8() & 1) == 0;
}

uint64_t sub_24ADD9918(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87E8]);
  return sub_24AE08ED8() & 1;
}

void *sub_24ADD99B0(void *result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 7;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & result[7];
    v7 = (v4 + 63) >> 6;
    result = sub_24AE08288();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_24ADD9F34(*(v2[6] + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v3[v9];
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24ADD9AB4(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              v38 = sub_24AE08288();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v48 << 6)));
        sub_24AE09838();
        MEMORY[0x24C231780](v5);
        v19 = sub_24AE09868();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;
    v22 = sub_24AE08288();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_24ADDA044(v40, v14, v6, v2, v50);

      MEMORY[0x24C231F80](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v48 << 6)));
      sub_24AE09838();
      v2 = v49;
      MEMORY[0x24C231780](v5);
      v30 = sub_24AE09868();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_24ADDA218(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_24ADC3C28(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_24ADD9F34@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_24AE09838();
  MEMORY[0x24C231780](a1);
  result = sub_24AE09868();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24ADAD50C();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_24ADDA420(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 3;
  }

  return result;
}

uint64_t sub_24ADDA044(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_24AE09838();
    MEMORY[0x24C231780](v17);
    result = sub_24AE09868();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_24ADDA218(v7, a2, v9, a3);
}

uint64_t sub_24ADDA218(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9010, &qword_24AE0F8A0);
  result = sub_24AE094C8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_24AE09838();
    MEMORY[0x24C231780](v16);
    result = sub_24AE09868();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_24ADDA420(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24AE09498();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_24AE09838();
        MEMORY[0x24C231780](v10);
        v11 = sub_24AE09868() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s10FindMyCore16DistanceFromUserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9CC0, &qword_27EFA9C30, &unk_24AE0F6C0, MEMORY[0x277CC87F0]);
  if (sub_24AE08EF8())
  {
    v4 = type metadata accessor for DistanceFromUser(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6 == 5)
      {
        if (v7 == 5)
        {
          return 1;
        }
      }

      else
      {
        v9 = (v7 ^ v6);
        v10 = v7 != 5 && v9 == 0;
        if (v10 && (sub_24AE09978() & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_24ADDA6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_24ADDA724()
{
  result = qword_27EFA9C80;
  if (!qword_27EFA9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C80);
  }

  return result;
}

unint64_t sub_24ADDA7BC()
{
  result = qword_27EFA9C98;
  if (!qword_27EFA9C98)
  {
    type metadata accessor for DistanceFromUser(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C98);
  }

  return result;
}

void sub_24ADDA83C(uint64_t a1)
{
  sub_24ADDA8C8(319);
  if (v1 <= 0x3F)
  {
    sub_24ADDA920();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADDA8C8(uint64_t a1)
{
  if (!qword_27EFA9CB0)
  {
    sub_24ADD83C4();
    v1 = sub_24AE08638();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFA9CB0);
    }
  }
}

void sub_24ADDA920()
{
  if (!qword_27EFA9CB8)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9CB8);
    }
  }
}

uint64_t _s6HandleV4KindOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6HandleV4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::String_optional __swiftcall DistanceFromUser.ETA.formatted()()
{
  v1 = sub_24AE097A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AE098D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AE098B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24AE09928();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24AE09938();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = *(v0 + 8);
  v17 = *(v0 + 16);
  v33 = v16;
  v34 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24AE09968();
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9CC8, &qword_24AE0F8A8);
    v32 = v17;
    sub_24AE09908();
    v28 = v1;
    v31 = v9;
    v30 = v10;
    v21 = swift_allocObject();
    v29 = v5;
    v22 = v21;
    *(v21 + 16) = xmmword_24AE0F2F0;
    sub_24AE098E8();
    sub_24AE098F8();
    sub_24ADDB9BC(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24AE09918();
    v23 = v36;
    sub_24AE098A8();
    v24 = v28;
    (*(v2 + 104))(v4, *MEMORY[0x277D84680], v28);
    sub_24AE098C8();
    (*(v2 + 8))(v4, v24);
    v25 = v34;
    sub_24AE08578();

    (*(v6 + 8))(v8, v29);
    (*(v30 + 8))(v23, v31);
    (*(v35 + 8))(v13, v37);
    sub_24ADDC0B0(&qword_27EFA9CD0, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
    v26 = v39;
    sub_24AE09948();
    (*(v38 + 8))(v25, v26);
    v19 = v40;
    v20 = v41;
  }

  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

uint64_t DistanceFromUser.ETA.systemImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      if (qword_27EFA8718 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EFAA0F8;
    }

    else
    {
      if (qword_27EFA8738 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EFAA198;
    }
  }

  else if (v3 == 2)
  {
    if (qword_27EFA8710 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA0D0;
  }

  else if (v3 == 3)
  {
    if (qword_27EFA8700 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA080;
  }

  else
  {
    if (qword_27EFA8720 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA120;
  }

  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = *(v4 + 32);
  v10 = *(v4 + 33);
  sub_24AE08288();
  result = sub_24AE08288();
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v10;
  return result;
}

_BYTE *DistanceFromUser.ETA.init(transport:duration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t DistanceFromUser.ETA.Transport.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t static DistanceFromUser.ETA.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24AE09978();
  }

  else
  {
    return 0;
  }
}

uint64_t DistanceFromUser.ETA.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C231780](*v1);

  return sub_24AE09988();
}

uint64_t DistanceFromUser.ETA.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB314(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24AE09978();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ADDB338()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB39C(uint64_t a1)
{
  MEMORY[0x24C231780](*v1);

  return sub_24AE09988();
}

uint64_t sub_24ADDB3F0(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  MEMORY[0x24C231780](v2);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9D10, &qword_24AE0F9E8);
    v3 = sub_24AE094C8();
    v4 = 0;
    v49 = v3 + 56;
    v42 = v1;
    v43 = a1 + 32;
    v41 = v3;
    while (1)
    {
      v44 = v4;
      v5 = (v43 + 48 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v5 + 16);
      v10 = v5[3];
      v9 = v5[4];
      v11 = v5[5];
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE08288();
      v50 = v7;
      v52 = v6;
      sub_24AE09048();
      v48 = v8;
      MEMORY[0x24C231780](v8);
      v45 = v10;
      v47 = v9;
      sub_24AE09048();
      v53 = v11;
      v12 = *(v11 + 16);
      MEMORY[0x24C231780](v12);
      if (v12)
      {
        v13 = v11 + 64;
        do
        {
          v14 = *(v13 - 16);
          sub_24AE08288();
          sub_24AE08288();
          sub_24AE09048();
          MEMORY[0x24C231780](v14);
          sub_24AE09048();

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      result = sub_24AE09868();
      v46 = ~(-1 << *(v3 + 32));
      v16 = result & v46;
      v17 = (result & v46) >> 6;
      v18 = *(v49 + 8 * v17);
      v19 = 1 << (result & v46);
      v51 = *(v3 + 48);
      if ((v19 & v18) != 0)
      {
        do
        {
          v20 = v51 + 48 * v16;
          result = *v20;
          v21 = *(v20 + 16);
          v22 = *(v20 + 24);
          v23 = *(v20 + 32);
          v24 = *(v20 + 40);
          v25 = *v20 == v50 && *(v20 + 8) == v52;
          if (v25 || (result = sub_24AE097C8(), (result & 1) != 0))
          {
            if (v21 == v48)
            {
              v26 = v22 == v45 && v23 == v47;
              if (v26 || (result = sub_24AE097C8(), (result & 1) != 0))
              {
                v27 = *(v24 + 16);
                if (v27 == *(v53 + 16))
                {
                  if (!v27 || v24 == v53)
                  {
LABEL_3:

                    v3 = v41;
                    v1 = v42;
                    goto LABEL_4;
                  }

                  v28 = 0;
                  while (1)
                  {
                    result = *(v24 + v28 + 32);
                    v29 = *(v24 + v28 + 48);
                    v30 = *(v24 + v28 + 56);
                    v31 = *(v24 + v28 + 64);
                    v32 = *(v53 + v28 + 48);
                    v33 = *(v53 + v28 + 56);
                    v34 = *(v53 + v28 + 64);
                    if (result != *(v53 + v28 + 32) || *(v24 + v28 + 40) != *(v53 + v28 + 40))
                    {
                      result = sub_24AE097C8();
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    if (v29 != v32)
                    {
                      break;
                    }

                    if (v30 != v33 || v31 != v34)
                    {
                      result = sub_24AE097C8();
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    v28 += 40;
                    if (!--v27)
                    {
                      goto LABEL_3;
                    }
                  }
                }
              }
            }
          }

          v16 = (v16 + 1) & v46;
          v17 = v16 >> 6;
          v18 = *(v49 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
        v3 = v41;
        v1 = v42;
        v51 = *(v41 + 48);
      }

      *(v49 + 8 * v17) = v18 | v19;
      v37 = v51 + 48 * v16;
      *v37 = v50;
      *(v37 + 8) = v52;
      *(v37 + 16) = v48;
      *(v37 + 24) = v45;
      *(v37 + 32) = v47;
      *(v37 + 40) = v53;
      v38 = *(v3 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      *(v3 + 16) = v40;
LABEL_4:
      v4 = v44 + 1;
      if (v44 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24ADDB864(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24AE094C8();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_24AE09838();
      MEMORY[0x24C231780](v12);
      result = sub_24AE09868();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ADDB9BC(uint64_t a1)
{
  v2 = sub_24AE09908();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9CE8, &qword_24AE0F9D0);
    v9 = sub_24AE094C8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24ADDC0B0(&qword_27EFA9CF0, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v16 = sub_24AE08EA8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_24ADDC0B0(&qword_27EFA9CF8, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_24AE08EF8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24ADDBCE0()
{
  result = qword_27EFA9CD8;
  if (!qword_27EFA9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9CD8);
  }

  return result;
}

unint64_t sub_24ADDBD38()
{
  result = qword_27EFA9CE0;
  if (!qword_27EFA9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9CE0);
  }

  return result;
}

uint64_t _s3ETAVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s3ETAVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24ADDBE5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_24AE094C8();
    v8 = 0;
    v29 = v7 + 56;
    v26 = v5;
    v27 = a1 + 32;
    while (1)
    {
      v9 = (v27 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
      sub_24AE09838();
      sub_24AE08288();
      v30 = v10;
      MEMORY[0x24C230FB0](v10, v11);
      sub_24AE09048();

      result = sub_24AE09868();
      v13 = ~(-1 << *(v7 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v29 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) != 0)
      {
        v28 = v8;
        v18 = v7;
        v19 = (*(v7 + 48) + 16 * v14);
        v21 = *v19;
        v20 = v19[1];
        sub_24AE08288();
        MEMORY[0x24C230FB0](v21, v20);
        MEMORY[0x24C230FB0](v30, v11);

        v5 = v26;
        v7 = v18;
        v8 = v28;
      }

      else
      {
        *(v29 + 8 * v15) = v17 | v16;
        v22 = (*(v7 + 48) + 16 * v14);
        *v22 = v30;
        v22[1] = v11;
        v23 = *(v7 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          __break(1u);
          return result;
        }

        *(v7 + 16) = v25;
      }

      if (++v8 == v5)
      {
        return v7;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ADDC0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static FindMyUserDefaults.Key<>.showDebugLocationTimestamp.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000024AE134C0;
  *(a1 + 16) = 1;
}

uint64_t FindMyRelativeDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FindMyRelativeDate.date.setter(uint64_t a1)
{
  v3 = sub_24AE088E8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FindMyRelativeDate.recencyKey.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FindMyRelativeDate(0) + 20));
  v4 = v3[5];
  v6 = v3[3];
  v20 = v3[4];
  v5 = v20;
  v21 = v4;
  v7 = v3[7];
  v8 = v3[5];
  v22 = v3[6];
  v23 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v10 = v18;
  v19 = v9;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a1[6] = v22;
  a1[7] = v14;
  a1[4] = v5;
  a1[5] = v8;
  a1[2] = v10;
  a1[3] = v6;
  *a1 = v13;
  a1[1] = v11;
  return sub_24ADDC298(v17, &v16);
}

__n128 FindMyRelativeDate.recencyKey.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for FindMyRelativeDate(0) + 20));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_24ADDC350(v13);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

__n128 FindMyRelativeDate.init(date:recencyKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AE088E8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FindMyRelativeDate(0) + 20);
  v8 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v8;
  v9 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v9;
  v10 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v10;
  result = *(a2 + 32);
  v12 = *(a2 + 48);
  *(v7 + 32) = result;
  *(v7 + 48) = v12;
  return result;
}

BOOL FindMyRelativeDate.isFresh(comparedTo:)()
{
  sub_24AE08878();
  v1 = v0;
  type metadata accessor for FindMyRelativeDate(0);
  v2 = sub_24AE09958();
  sub_24AE09958();
  return v1 < v3 / 1.0e18 + v2;
}

BOOL FindMyRelativeDate.isNew(comparedTo:)()
{
  sub_24AE08878();
  v1 = v0;
  type metadata accessor for FindMyRelativeDate(0);
  v2 = sub_24AE09958();
  sub_24AE09958();
  return v1 < v3 / 1.0e18 + v2;
}

BOOL FindMyRelativeDate.isOld(comparedTo:)()
{
  sub_24AE08878();
  v1 = v0;
  type metadata accessor for FindMyRelativeDate(0);
  v2 = sub_24AE09958();
  sub_24AE09958();
  return v3 / 1.0e18 + v2 < v1;
}

double FindMyRelativeDate.forceNowRecencyKey()@<D0>(uint64_t a1@<X8>)
{
  sub_24ADDC708(v1, a1);
  v3 = (a1 + *(type metadata accessor for FindMyRelativeDate(0) + 20));
  v4 = v3[5];
  v5 = v3[3];
  v24 = v3[4];
  v25 = v4;
  v6 = v3[5];
  v7 = v3[7];
  v26 = v3[6];
  v27 = v7;
  v8 = v3[1];
  v9 = v3[3];
  v22 = v3[2];
  v23 = v9;
  v10 = v3[1];
  v21[0] = *v3;
  v21[1] = v10;
  v40 = v24;
  v41 = v6;
  v11 = v3[7];
  v42 = v26;
  v43 = v11;
  v36 = v21[0];
  v37 = v8;
  v38 = v22;
  v39 = v5;
  sub_24ADDC298(v21, v29);
  FindMyRelativeDate.RecencyKey.forceNowLabels()(v29);
  v28[4] = v40;
  v28[5] = v41;
  v28[6] = v42;
  v28[7] = v43;
  v28[0] = v36;
  v28[1] = v37;
  v28[2] = v38;
  v28[3] = v39;
  sub_24ADDC350(v28);
  v12 = v3[5];
  v40 = v3[4];
  v41 = v12;
  v13 = v3[7];
  v42 = v3[6];
  v43 = v13;
  v14 = v3[1];
  v36 = *v3;
  v37 = v14;
  v15 = v3[3];
  v38 = v3[2];
  v39 = v15;
  sub_24ADDC350(&v36);
  v16 = v33;
  v3[4] = v32;
  v3[5] = v16;
  v17 = v35;
  v3[6] = v34;
  v3[7] = v17;
  v18 = v29[1];
  *v3 = v29[0];
  v3[1] = v18;
  result = *&v30;
  v20 = v31;
  v3[2] = v30;
  v3[3] = v20;
  return result;
}

uint64_t sub_24ADDC708(uint64_t a1, uint64_t a2)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate(0);
  (*(*(MyRelativeDate - 8) + 16))(a2, a1, MyRelativeDate);
  return a2;
}

__n128 FindMyRelativeDate.RecencyKey.forceNowLabels()@<Q0>(uint64_t a1@<X8>)
{
  v63 = *(v1 + 16);
  v64 = *v1;
  v61 = *(v1 + 40);
  v62 = *(v1 + 32);
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v3 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v6 = objc_opt_self();
    sub_24AE08288();
    v5 = [v6 mainBundle];
    v4 = 0;
  }

  v7 = v4;
  v8 = sub_24AE08F88();
  v9 = sub_24AE08F88();
  v10 = [v5 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_24AE08FB8();
  v59 = v12;
  v60 = v11;

  v13 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v14 = v13;
    v15 = v14;
  }

  else
  {
    v16 = objc_opt_self();
    sub_24AE08288();
    v15 = [v16 mainBundle];
    v14 = 0;
  }

  v17 = v14;
  v18 = sub_24AE08F88();
  v19 = sub_24AE08F88();
  v20 = [v15 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_24AE08FB8();
  v57 = v22;
  v58 = v21;

  v23 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v24 = v23;
    v25 = v24;
  }

  else
  {
    v26 = objc_opt_self();
    sub_24AE08288();
    v25 = [v26 mainBundle];
    v24 = 0;
  }

  v27 = v24;
  v28 = sub_24AE08F88();
  v29 = sub_24AE08F88();
  v30 = [v25 localizedStringForKey:v28 value:0 table:v29];

  v56 = sub_24AE08FB8();
  v32 = v31;

  v33 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v34 = v33;
    v35 = v34;
  }

  else
  {
    v36 = objc_opt_self();
    sub_24AE08288();
    v35 = [v36 mainBundle];
    v34 = 0;
  }

  v37 = v34;
  v38 = sub_24AE08F88();
  v39 = sub_24AE08F88();
  v40 = [v35 localizedStringForKey:v38 value:0 table:v39];

  v41 = sub_24AE08FB8();
  v43 = v42;

  v44 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v45 = v44;
    v46 = v45;
  }

  else
  {
    v47 = objc_opt_self();
    sub_24AE08288();
    v46 = [v47 mainBundle];
    v45 = 0;
  }

  v48 = v45;
  v49 = sub_24AE08F88();
  v50 = sub_24AE08F88();
  v51 = [v46 localizedStringForKey:v49 value:0 table:v50];

  v52 = sub_24AE08FB8();
  v54 = v53;

  result = v64;
  *a1 = v64;
  *(a1 + 16) = v63;
  *(a1 + 32) = v62;
  *(a1 + 40) = v61;
  *(a1 + 48) = v60;
  *(a1 + 56) = v59;
  *(a1 + 64) = v58;
  *(a1 + 72) = v57;
  *(a1 + 80) = v56;
  *(a1 + 88) = v32;
  *(a1 + 96) = v41;
  *(a1 + 104) = v43;
  *(a1 + 112) = v52;
  *(a1 + 120) = v54;
  return result;
}

uint64_t FindMyRelativeDate.forcePastDatesOnly(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24AE088E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ADDC708(v2, a2);
  if (sub_24AE088A8())
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  (*(v6 + 16))(v8, v9, v5);
  return (*(v6 + 40))(a2, v8, v5);
}

uint64_t FindMyRelativeDate.RecencyKey.showRecentKey(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v2 = qword_27EFA8CE8;
    v3 = sub_24AE08F88();
    LOBYTE(v2) = [v2 BOOLForKey_];

    if (v2)
    {
      return 0;
    }
  }

  else
  {
  }

  return sub_24AE09968();
}

uint64_t FindMyRelativeDate.RecencyKey.localizedString(for:)(uint64_t a1)
{
  v3 = sub_24AE08798();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = v1[6];
  v11 = v1[8];
  v12 = v1[11];
  v27 = v1[10];
  v28 = v11;
  v26 = v12;
  v13 = v1[12];
  v22[1] = v1[13];
  v23 = v13;
  v14 = v1[14];
  v24 = v1[15];
  v25 = v14;
  (*(v4 + 16))(v22 - v8, a1, v3);
  sub_24AE08778();
  sub_24ADDF8F0(&qword_27EFA9D98, MEMORY[0x277CC9188], MEMORY[0x277CC91A0]);
  v15 = sub_24AE08EF8();
  v16 = *(v4 + 8);
  v16(v7, v3);
  if (v15)
  {
    v16(v9, v3);
  }

  else
  {
    sub_24AE08748();
    v17 = sub_24AE08EF8();
    v16(v7, v3);
    if (v17)
    {
      v16(v9, v3);
      v10 = v28;
    }

    else
    {
      sub_24AE08788();
      v18 = sub_24AE08EF8();
      v16(v7, v3);
      if (v18)
      {
        v16(v9, v3);
        v10 = v27;
      }

      else
      {
        sub_24AE08768();
        v19 = sub_24AE08EF8();
        v16(v7, v3);
        if (v19)
        {
          v16(v9, v3);
          v10 = v23;
        }

        else
        {
          sub_24AE08758();
          v20 = sub_24AE08EF8();
          v16(v7, v3);
          v16(v9, v3);
          if (v20)
          {
            v10 = v25;
          }
        }
      }
    }
  }

  sub_24AE08288();
  return v10;
}

void static FindMyRelativeDate.RecencyKey.now(recencyDuration:isNewDuration:isOldDuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v8 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v11 = objc_opt_self();
    sub_24AE08288();
    v10 = [v11 mainBundle];
    v9 = 0;
  }

  v12 = v9;
  v13 = sub_24AE08F88();
  v14 = sub_24AE08F88();
  v15 = [v10 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_24AE08FB8();
  v64 = v17;
  v65 = v16;

  v18 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_opt_self();
    sub_24AE08288();
    v20 = [v21 mainBundle];
    v19 = 0;
  }

  v22 = v19;
  v23 = sub_24AE08F88();
  v24 = sub_24AE08F88();
  v25 = [v20 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_24AE08FB8();
  v62 = v27;
  v63 = v26;

  v28 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v29 = v28;
    v30 = v29;
  }

  else
  {
    v31 = objc_opt_self();
    sub_24AE08288();
    v30 = [v31 mainBundle];
    v29 = 0;
  }

  v32 = v29;
  v33 = sub_24AE08F88();
  v34 = sub_24AE08F88();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  v36 = sub_24AE08FB8();
  v60 = v37;
  v61 = v36;

  v38 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v39 = v38;
    v40 = v39;
  }

  else
  {
    v41 = objc_opt_self();
    sub_24AE08288();
    v40 = [v41 mainBundle];
    v39 = 0;
  }

  v42 = v39;
  v43 = sub_24AE08F88();
  v44 = sub_24AE08F88();
  v45 = [v40 0x278FFEE54];

  v46 = sub_24AE08FB8();
  v48 = v47;

  v49 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v50 = v49;
    v51 = v50;
  }

  else
  {
    v52 = objc_opt_self();
    sub_24AE08288();
    v51 = [v52 mainBundle];
    v50 = 0;
  }

  v53 = v50;
  v54 = sub_24AE08F88();
  v55 = sub_24AE08F88();
  v56 = [v51 0x278FFEE54];

  v57 = sub_24AE08FB8();
  v59 = v58;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = v65;
  a7[7] = v64;
  a7[8] = v63;
  a7[9] = v62;
  a7[10] = v61;
  a7[11] = v60;
  a7[12] = v46;
  a7[13] = v48;
  a7[14] = v57;
  a7[15] = v59;
}