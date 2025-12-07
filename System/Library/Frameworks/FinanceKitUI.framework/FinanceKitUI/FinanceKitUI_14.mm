uint64_t sub_238592AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AccountNameTokenProvider(uint64_t a1)
{
  result = qword_27DF0EED8;
  if (!qword_27DF0EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238592BB8(uint64_t a1)
{
  result = sub_23875BCB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238592C34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v10 = v1[2];
  v11 = *v1;

  v5 = sub_23875E030();
  type metadata accessor for AccountNameTokenProvider(0);
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  v7 = sub_23875BC60();
  *(v6 + 56) = sub_238449184(0, &qword_27DF0EEE8, 0x277CCAD78);
  *(v6 + 64) = sub_23859383C();
  *(v6 + 32) = v7;
  v8 = sub_23875EF80();
  *(a1 + 69) = 0;
  *(a1 + 70) = -5120;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0xD000000000000010;
  *(a1 + 48) = 0x8000000238788350;
  strcpy((a1 + 56), "Account Name");
  *a1 = v11;
  *(a1 + 8) = v3;
  result = swift_allocObject();
  *(result + 16) = v8;
  *(a1 + 72) = &unk_2387654B0;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_238592DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238592E2C(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_238592E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a1;
  v97 = a2;
  v95 = type metadata accessor for AccountNameTokenProvider(0);
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v88 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v78 - v6);
  v85 = sub_23875BF90();
  v8 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  v89 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v78 - v12;
  MEMORY[0x28223BE20](v13);
  v86 = &v78 - v14;
  MEMORY[0x28223BE20](v15);
  v83 = &v78 - v16;
  MEMORY[0x28223BE20](v17);
  v79 = &v78 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = sub_238451F44(a3);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = v19;
  result = sub_23875EB40();
  if (result < 2)
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x277D84F90];
  v82 = *(v20 + 16);
  if (!v82)
  {
LABEL_16:

    v48 = *(v22 + 16);
    if (v48)
    {
      *&v98 = MEMORY[0x277D84F90];
      sub_2385FE8FC(0, v48, 0);
      v49 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v85 = v22;
      v50 = v22 + v49;
      v51 = *(v89 + 72);
      v92 = v90 + 8;
      v93 = v51;
      v52 = v87;
      v54 = v97;
      v53 = v98;
      do
      {
        v55 = v86;
        sub_238593638(v50, v86);
        sub_238593638(v55, v52);
        v56 = (v52 + *(v94 + 48));
        v57 = *v56;
        v58 = v56[1];
        v59 = v55;
        v60 = v90;
        sub_238453E10(v59, v90);

        v61 = v95;
        *v7 = v96;
        v7[1] = v54;
        v7[2] = v57;
        v7[3] = v58;
        v62 = *(v61 + 24);
        v63 = sub_23875BCB0();
        v64 = *(v63 - 8);
        (*(v64 + 32))(v7 + v62, v60, v63);
        (*(v64 + 8))(v52, v63);
        *&v98 = v53;
        v66 = *(v53 + 16);
        v65 = *(v53 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_2385FE8FC((v65 > 1), v66 + 1, 1);
          v53 = v98;
        }

        *(v53 + 16) = v66 + 1;
        sub_238593774(v7, v53 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v66);
        v50 += v93;
        --v48;
      }

      while (v48);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    v67 = *(v53 + 16);
    if (v67)
    {
      v102 = MEMORY[0x277D84F90];
      sub_2385FE78C(0, v67, 0);
      v68 = v102;
      v69 = v53 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v70 = *(v91 + 72);
      do
      {
        v71 = v88;
        sub_2385937D8(v69, v88);
        *&v99[8] = v95;
        *&v99[16] = &off_284B2ABE0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        sub_238593774(v71, boxed_opaque_existential_1);
        v99[24] = 3;
        v102 = v68;
        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_2385FE78C((v73 > 1), v74 + 1, 1);
          v68 = v102;
        }

        *(v68 + 16) = v74 + 1;
        v75 = (v68 + 48 * v74);
        v76 = v98;
        v77 = *v99;
        *(v75 + 57) = *&v99[9];
        v75[2] = v76;
        v75[3] = v77;
        v69 += v70;
        --v67;
      }

      while (v67);

      return v68;
    }

    goto LABEL_29;
  }

  v23 = 0;
  v80 = (v8 + 8);
  v24 = v79;
  v81 = v20;
  while (v23 < *(v20 + 16))
  {
    v25 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v92 = *(v89 + 72);
    v93 = v25;
    sub_238593638(v20 + v25 + v92 * v23, v24);
    v26 = (v24 + *(v94 + 48));
    v28 = *v26;
    v27 = v26[1];
    v102 = v28;
    v103 = v27;
    v29 = v84;
    sub_23875C080();
    v100 = &unk_284B24E38;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7F0, &unk_238771D20);
    sub_2384B6A0C(v30, v31, v32);
    sub_2385936A8();
    sub_2384B6A60();
    v33 = v24;
    v34 = v85;
    sub_23875EF30();
    (*v80)(v29, v34);
    v35 = sub_23875EAE0();
    v37 = v36;

    *&v98 = v35;
    *(&v98 + 1) = v37;
    v102 = v96;
    v103 = v97;
    sub_2384397A8(v38, v39, v40);
    v100 = sub_23875F240();
    v101 = v41;
    v42 = sub_23875F280();

    if (v42)
    {
      sub_238453E10(v33, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v33;
      }

      else
      {
        sub_2385FE940(0, *(v22 + 16) + 1, 1);
        v24 = v79;
        v22 = v104;
      }

      v20 = v81;
      v45 = v92;
      v44 = v93;
      v47 = *(v22 + 16);
      v46 = *(v22 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2385FE940((v46 > 1), v47 + 1, 1);
        v24 = v79;
        v22 = v104;
      }

      *(v22 + 16) = v47 + 1;
      result = sub_238453E10(v83, v22 + v44 + v47 * v45);
    }

    else
    {
      result = sub_23859370C(v33);
      v20 = v81;
      v24 = v33;
    }

    if (v82 == ++v23)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238593638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385936A8()
{
  result = qword_27DF0B800;
  if (!qword_27DF0B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7F0, &unk_238771D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B800);
  }

  return result;
}

uint64_t sub_23859370C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238593774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNameTokenProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385937D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNameTokenProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23859383C()
{
  result = qword_27DF0EEF0;
  if (!qword_27DF0EEF0)
  {
    sub_238449184(255, &qword_27DF0EEE8, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EEF0);
  }

  return result;
}

uint64_t sub_2385938A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccountInfoView(0);
  sub_23843981C(v1 + *(v10 + 36), v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t AccountInfoView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  sub_238593E88();
  return sub_23875C8F0();
}

uint64_t sub_238593B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for AccountInfoView(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v21 = &v19;
  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v19 - 2) = a1;
  v20 = sub_23875D760();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F010, &qword_238771F68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F018, &unk_238771F70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  v8 = sub_23843A3E8(&qword_27DF0F020, &qword_27DF0F018, &unk_238771F70, MEMORY[0x277CE1198]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v10 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  v25 = v9;
  v26 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v12 = v24;
  sub_23875C410();
  sub_238597070(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountInfoView);
  v13 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v14 = swift_allocObject();
  sub_2385970D8(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccountInfoView);
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF10, &qword_238771D38) + 36));
  *v15 = sub_238597140;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = sub_23875E020();
  LOBYTE(v14) = sub_23875D780();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  v18 = v12 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v14;
  return result;
}

unint64_t sub_238593E88()
{
  result = qword_27DF0EF00;
  if (!qword_27DF0EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EEF8, &qword_238771D30);
    sub_238593F40();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EF00);
  }

  return result;
}

unint64_t sub_238593F40()
{
  result = qword_27DF0EF08;
  if (!qword_27DF0EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EF10, &qword_238771D38);
    sub_23843A3E8(&qword_27DF0EF18, &qword_27DF0EF20, &unk_238771D40, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EF08);
  }

  return result;
}

double sub_238594014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  v10[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F018, &unk_238771F70);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - v3;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_23875D020();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F028, &qword_238771F90);
  sub_238594274(a1, &v4[*(v5 + 44)]);
  MEMORY[0x28223BE20](v6);
  v10[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF0F020, &qword_27DF0F018, &unk_238771F70, MEMORY[0x277CE1198]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v8 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v4, &qword_27DF0F018, &unk_238771F70);

  return result;
}

void sub_238594274(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for AccountInfoView.HeaderView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F030, &qword_238771F98);
  MEMORY[0x28223BE20](v48);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - v11;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_238758A00();
  (*(*(v12 - 8) + 16))(v5, a1, v12);
  v13 = type metadata accessor for AccountInfoView(0);
  v14 = v13[6];
  v15 = (a1 + v13[5]);
  v17 = *v15;
  v16 = v15[1];
  v18 = *(a1 + v14);
  v19 = *(a1 + v14 + 8);
  v20 = (a1 + v13[7]);
  v21 = *v20;
  v22 = v20[1];

  sub_23875D490();
  v23 = &v5[v3[5]];
  *v23 = v17;
  *(v23 + 1) = v16;
  v24 = &v5[v3[6]];
  *v24 = v18;
  *(v24 + 1) = v19;
  v25 = &v5[v3[7]];
  *v25 = v21;
  *(v25 + 1) = v22;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2385970D8(v5, v9, type metadata accessor for AccountInfoView.HeaderView);
  v26 = &v9[*(v48 + 36)];
  v27 = v64;
  v28 = v66;
  v29 = v67;
  *(v26 + 4) = v65;
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  v30 = v62;
  v31 = v63;
  *v26 = v61;
  *(v26 + 1) = v30;
  *(v26 + 2) = v31;
  *(v26 + 3) = v27;
  v32 = v50;
  sub_2385973AC(v9, v50);
  sub_23875E4A0();
  sub_23875C9C0();
  LOBYTE(v16) = sub_23875D770();
  sub_23875C3D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v60 = 0;
  v41 = v51;
  sub_23843981C(v32, v51, &qword_27DF0F030, &qword_238771F98);
  v42 = v52;
  sub_23843981C(v41, v52, &qword_27DF0F030, &qword_238771F98);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F038, &qword_238771FA0) + 48);
  v44 = v58;
  *(v43 + 64) = v57;
  *(v43 + 80) = v44;
  *(v43 + 96) = v59;
  v45 = v54;
  *v43 = v53;
  *(v43 + 16) = v45;
  v46 = v56;
  *(v43 + 32) = v55;
  *(v43 + 48) = v46;
  *(v43 + 112) = v16;
  *(v43 + 120) = v34;
  *(v43 + 128) = v36;
  *(v43 + 136) = v38;
  *(v43 + 144) = v40;
  *(v43 + 152) = 0;
  sub_238439884(v32, &qword_27DF0F030, &qword_238771F98);
  sub_238439884(v41, &qword_27DF0F030, &qword_238771F98);
}

double sub_2385946DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D250();
  MEMORY[0x28223BE20](v8);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_23875C990();
  v9 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_238594950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AccountInfoView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_238597070(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountInfoView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2385970D8(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AccountInfoView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

double sub_238594C70()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385938A4(v3);
  sub_23875C5F0();
  (*(v1 + 8))(v3, v0);

  return result;
}

double sub_238594DB4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for AccountInfoView(0) + 32));
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v2, 22, v3);

  return result;
}

double sub_238594E80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFB8, &qword_238771EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFC0, &qword_238771EE8);
  MEMORY[0x28223BE20](v55);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v51);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for AccountLogo(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFC8, &qword_238771EF8);
  MEMORY[0x28223BE20](v52);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_238758A00();
  (*(*(v23 - 8) + 16))(v18, a1, v23);
  v24 = (a1 + *(type metadata accessor for AccountInfoView.HeaderView(0) + 28));
  v26 = *v24;
  v25 = v24[1];
  KeyPath = swift_getKeyPath(byte_238771F00);
  v28 = &v18[v16[5]];
  *v28 = v26;
  *(v28 + 1) = v25;
  v18[v16[6]] = 5;
  v29 = &v18[v16[7]];
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = &v18[v16[8]];
  LOBYTE(v60) = 0;

  sub_23875E1A0();
  v31 = *(&v61 + 1);
  *v30 = v61;
  *(v30 + 1) = v31;
  v32 = sub_238757B60();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  sub_23843981C(v15, v12, &qword_27DF0A0C0, &qword_238771EF0);
  sub_23875E1A0();
  sub_238439884(v15, &qword_27DF0A0C0, &qword_238771EF0);
  v33 = v16[10];
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v18[v33] = v61;
  sub_238597020(&qword_27DF0EFD0, type metadata accessor for AccountLogo, &unk_238765068);
  sub_23875DBF0();
  sub_238596EE4(v18);
  LOBYTE(v33) = sub_23875D7D0();
  sub_23875C3D0();
  v34 = &v22[*(v52 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  *v5 = sub_23875D030();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFD8, &qword_238771F38);
  sub_238595504(a1, &v5[*(v39 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  v40 = v56;
  sub_2384396E4(v5, v56, &qword_27DF0EFB8, &qword_238771EE0);
  v41 = (v40 + *(v55 + 36));
  v42 = v66;
  v41[4] = v65;
  v41[5] = v42;
  v41[6] = v67;
  v43 = v62;
  *v41 = v61;
  v41[1] = v43;
  v44 = v64;
  v41[2] = v63;
  v41[3] = v44;
  v45 = v57;
  sub_2384396E4(v40, v57, &qword_27DF0EFC0, &qword_238771EE8);
  v46 = v54;
  sub_23843981C(v22, v54, &qword_27DF0EFC8, &qword_238771EF8);
  v47 = v58;
  sub_2384126FC(v45, v58);
  v48 = v59;
  sub_23843981C(v46, v59, &qword_27DF0EFC8, &qword_238771EF8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFE0, &qword_238771F40);
  sub_2384126FC(v47, v48 + *(v49 + 48));
  sub_23841276C(v45);
  sub_238439884(v22, &qword_27DF0EFC8, &qword_238771EF8);
  sub_23841276C(v47);
  sub_238439884(v46, &qword_27DF0EFC8, &qword_238771EF8);

  return result;
}

void sub_238595504(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v74 = sub_238758A00();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFE8, &qword_238771F48);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v68 - v6;
  sub_23875ED50();
  v76 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for AccountInfoView.HeaderView(0);
  v8 = (a1 + *(v7 + 20));
  v9 = v8[1];
  v85 = *v8;
  v86 = v9;
  v71 = sub_2384397A8(v7, v10, v11);

  v12 = sub_23875DAA0();
  v14 = v13;
  v85 = v12;
  v86 = v13;
  v16 = v15 & 1;
  v87 = v15 & 1;
  v88 = v17;
  v70 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFF0, &qword_238771F50);
  sub_238596F40();
  v18 = a1;
  sub_23875DD70();

  sub_2384397FC(v12, v14, v16);

  v19 = v73;
  v20 = v72;
  v21 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x277CC7158], v74);
  sub_238597020(&unk_27DF0B400, MEMORY[0x277CC7180], MEMORY[0x277CC7198]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v19 + 8))(v20, v21);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v85 == v81)
  {
    v26 = (v18 + *(v70 + 24));
    v27 = v26[1];
    v85 = *v26;
    v86 = v27;

    v22 = sub_23875DAA0();
    v23 = v28;
    v25 = v29;
    v24 = (v30 & 1);
    sub_23843980C(v22, v28, v30 & 1);
  }

  v72 = v24;
  v73 = v25;
  v74 = v22;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v31 = qword_2814F1B90;
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v34 = sub_23875EA50();
  v35 = [v31 localizedStringForKey:v32 value:v33 table:v34];

  v36 = sub_23875EA80();
  v38 = v37;

  v85 = v36;
  v86 = v38;
  v69 = sub_23875DAA0();
  v40 = v39;
  v70 = v39;
  LOBYTE(v35) = v41;
  v68 = v42;
  v43 = sub_23875D7A0();
  sub_23875C3D0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LODWORD(v35) = v35 & 1;
  LOBYTE(v85) = v35;
  LODWORD(v71) = v35;
  LOBYTE(v81) = 0;
  v52 = v77;
  v53 = *(v77 + 16);
  v54 = v78;
  v55 = v79;
  v53(v78, v80, v79);
  v56 = v75;
  v53(v75, v54, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F008, &qword_238771F58);
  v58 = &v56[*(v57 + 48)];
  v59 = v74;
  *v58 = v74;
  v58[1] = v23;
  LOBYTE(v55) = v72;
  v60 = v73;
  v58[2] = v72;
  v58[3] = v60;
  v61 = &v56[*(v57 + 64)];
  v62 = v69;
  *&v81 = v69;
  *(&v81 + 1) = v40;
  LOBYTE(v82) = v35;
  v63 = v68;
  *(&v82 + 1) = v68;
  LOBYTE(v83) = v43;
  *(&v83 + 1) = v45;
  *v84 = v47;
  *&v84[8] = v49;
  *&v84[16] = v51;
  v84[24] = 0;
  sub_238476F5C(v59, v23, v55, v60);
  sub_23843981C(&v81, &v85, &qword_27DF0AB28, &qword_238771F60);
  sub_238476FA0(v59, v23, v55, v60);
  v64 = *v84;
  *(v61 + 2) = v83;
  *(v61 + 3) = v64;
  *(v61 + 57) = *&v84[9];
  v65 = v82;
  *v61 = v81;
  *(v61 + 1) = v65;
  v66 = *(v52 + 8);
  v67 = v79;
  v66(v80, v79);
  v85 = v62;
  v86 = v70;
  v87 = v71;
  v88 = v63;
  v89 = v43;
  v90 = v45;
  v91 = v47;
  v92 = v49;
  v93 = v51;
  v94 = 0;
  sub_238439884(&v85, &qword_27DF0AB28, &qword_238771F60);
  sub_238476FA0(v59, v23, v55, v60);
  v66(v78, v67);
}

double sub_238595C94()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccountInfoView.HeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D470();

  return result;
}

uint64_t sub_238595D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFA0, &qword_238771EC8);
  sub_238594E80(v3, a2 + *(v8 + 44));
  v9 = sub_23875D770();
  sub_23875C3D0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFA8, &qword_238771ED0) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  sub_238597070(v3, v7, type metadata accessor for AccountInfoView.HeaderView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_2385970D8(v7, v20 + v19, type metadata accessor for AccountInfoView.HeaderView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFB0, &qword_238771ED8);
  v22 = (a2 + *(result + 36));
  *v22 = sub_238596EB8;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_238595F1C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_23875D310();
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF68, &qword_238771EA0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF70, &qword_238771EA8);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF78, &qword_238771EB0);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF80, &qword_238771EB8);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF88, &qword_238771EC0);
  sub_23843A3E8(&qword_27DF0EF90, &qword_27DF0EF88, &qword_238771EC0, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  sub_23875D300();
  v19 = sub_23843A3E8(&qword_27DF0EF98, &qword_27DF0EF68, &qword_238771EA0, MEMORY[0x277CDE5A0]);
  v20 = MEMORY[0x277CDE0D0];
  v21 = v34;
  sub_23875DF50();
  (*(v35 + 8))(v4, v21);
  (*(v28 + 8))(v7, v5);
  v37 = v5;
  v38 = v21;
  v39 = v19;
  v40 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23875DD80();
  (*(v29 + 8))(v10, v8);
  v37 = v8;
  v38 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_23875DB70();
  (*(v31 + 8))(v14, v24);
  v37 = v24;
  v38 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_23875DE10();
  return (*(v33 + 8))(v18, v25);
}

double sub_238596400@<D0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x800000023878B960;
  a1[2] = 0xD000000000000028;
  a1[3] = 0x800000023878B980;
  a1[4] = 0xD000000000000024;
  a1[5] = 0x800000023878B9B0;
  a1[6] = 0xD000000000000030;
  a1[7] = 0x800000023878B9E0;
  a1[8] = 0xD000000000000020;
  a1[9] = 0x800000023878BA20;
  a1[10] = 0xD00000000000002CLL;
  a1[11] = 0x800000023878BA50;

  return result;
}

uint64_t sub_238596560@<X0>(uint64_t a5@<X8>)
{
  v13 = a5;
  v5 = sub_23875D590();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875D030();
  LOBYTE(v14) = 0;
  sub_2385967A4(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v10 = v14;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  *&v18[0] = qword_27DF2F920;

  v11 = sub_23875E2D0();
  *(&v15[1] + 1) = *&v16[16];
  *(&v15[2] + 1) = *&v16[32];
  *(&v15[3] + 1) = *&v16[48];
  v14 = v9;
  LOBYTE(v15[0]) = v10;
  *(v15 + 1) = *v16;
  *&v15[4] = *&v16[63];
  *(&v15[4] + 1) = v11;
  sub_23875D580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F060, &qword_238772038);
  sub_23859758C();
  sub_23875DD60();
  (*(v6 + 8))(v8, v5);
  v18[2] = v15[1];
  v18[3] = v15[2];
  v18[4] = v15[3];
  v18[5] = v15[4];
  v18[0] = v14;
  v18[1] = v15[0];
  return sub_238439884(v18, &qword_27DF0F060, &qword_238772038);
}

double sub_2385967A4@<D0>(uint64_t a5@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v48 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  sub_2384397A8(v11, v12, v13);
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D820();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  sub_23875D420();
  v24 = sub_23875DA20();
  v50 = v25;
  v51 = v24;
  v49 = v26;
  v52 = v27;
  sub_2384397FC(v19, v21, v23 & 1);

  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v31 = [v48 localizedStringForKey:v28 value:v29 table:v30];

  sub_23875EA80();
  v32 = sub_23875DAA0();
  v34 = v33;
  LOBYTE(v30) = v35;
  sub_23875D7F0();
  v36 = sub_23875DA60();
  v38 = v37;
  v40 = v39;

  sub_2384397FC(v32, v34, v30 & 1);

  sub_23875D440();
  v41 = sub_23875DA20();
  v43 = v42;
  LOBYTE(v34) = v44;
  v46 = v45;
  sub_2384397FC(v36, v38, v40 & 1);

  *a5 = v51;
  *(a5 + 8) = v50;
  *(a5 + 16) = v49 & 1;
  *(a5 + 24) = v52;
  *(a5 + 32) = v41;
  *(a5 + 40) = v43;
  *(a5 + 48) = v34 & 1;
  *(a5 + 56) = v46;
  sub_23843980C(v51, v50, v49 & 1);

  sub_23843980C(v41, v43, v34 & 1);

  sub_2384397FC(v41, v43, v34 & 1);

  sub_2384397FC(v51, v50, v49 & 1);

  return result;
}

uint64_t sub_238596BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  sub_238593E88();
  return sub_23875C8F0();
}

void sub_238596C98(uint64_t a1)
{
  sub_238758A00();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PKAnalyticsSubject(319);
    if (v2 <= 0x3F)
    {
      sub_23857F390(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238596D98(uint64_t a1)
{
  sub_238758A00();
  if (v1 <= 0x3F)
  {
    sub_238596E28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238596E28()
{
  if (!qword_27DF0EF60)
  {
    v0 = sub_23875D4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0EF60);
    }
  }
}

uint64_t sub_238596EE4(uint64_t a1)
{
  v2 = type metadata accessor for AccountLogo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238596F40()
{
  result = qword_27DF0EFF8;
  if (!qword_27DF0EFF8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFF0, &qword_238771F50);
    sub_238596FCC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EFF8);
  }

  return result;
}

unint64_t sub_238596FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F000;
  if (!qword_27DF0F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F000);
  }

  return result;
}

uint64_t sub_238597020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238597070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385970D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23859716C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_19Tm()
{
  v1 = (type metadata accessor for AccountInfoView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_238758A00();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C600();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385973AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F030, &qword_238771F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23859742C()
{
  result = qword_27DF0F040;
  if (!qword_27DF0F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFB0, &qword_238771ED8);
    sub_2385974B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F040);
  }

  return result;
}

unint64_t sub_2385974B8()
{
  result = qword_27DF0F048;
  if (!qword_27DF0F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFA8, &qword_238771ED0);
    sub_23843A3E8(&qword_27DF0F050, &qword_27DF0F058, qword_238771FE0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F048);
  }

  return result;
}

unint64_t sub_23859758C()
{
  result = qword_27DF0F068;
  if (!qword_27DF0F068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F060, &qword_238772038);
    sub_23843A3E8(&qword_27DF0F070, &qword_27DF0BA70, &unk_238769590, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F068);
  }

  return result;
}

double sub_2385976D8(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 20));
  swift_getKeyPath(asc_238772110);
  sub_238553A7C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23859A230(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for BankConnectAccountConnectionPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0A8, &qword_2387720D0);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0, MEMORY[0x277D83980]);
  sub_2385994A4(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23843A3E8(&qword_27DF0F0A0, &qword_27DF0F0A8, &qword_2387720D0, MEMORY[0x277CE14C0]);
  sub_23875E370();

  return result;
}

double sub_23859797C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v136 = a2;
  v112 = a1;
  v133 = a3;
  v110 = sub_23875C880();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v96 - v5;
  v108 = sub_23875E360();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v96 - v10;
  v128 = sub_23875BCB0();
  v125 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v97 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A730, &unk_238765CD0);
  MEMORY[0x28223BE20](v119);
  v127 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v129 = &v96 - v22;
  v23 = sub_23875C950();
  v117 = *(v23 - 8);
  v118 = v23;
  MEMORY[0x28223BE20](v23);
  v116 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238758680();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v115 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v31 = *(v115 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0B8, &qword_238772140);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v96 - v33;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C0, &qword_238772148);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v135 = &v96 - v36;
  sub_23875ED50();
  v122 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238553A7C(v136, &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v26 + 16);
  v38 = v112;
  v99 = v26 + 16;
  v98 = v37;
  v37(v30, v112, v25);
  v39 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v40 = *(v26 + 80);
  v41 = swift_allocObject();
  sub_23859A230(&v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v39, type metadata accessor for BankConnectAccountConnectionPickerView);
  v42 = *(v26 + 32);
  v100 = v25;
  v43 = v42(v41 + ((v32 + v40 + v39) & ~v40), v30, v25);
  MEMORY[0x28223BE20](v43);
  v44 = v136;
  *(&v96 - 2) = v38;
  *(&v96 - 1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C8, &unk_238772150);
  sub_2385995C0();
  v45 = v111;
  sub_23875E200();
  v46 = v116;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0F0E0, &qword_27DF0F0B8, &qword_238772140, MEMORY[0x277CDF028]);
  sub_2385994A4(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v47 = v114;
  v48 = v118;
  sub_23875DB30();
  (*(v117 + 8))(v46, v48);
  (*(v113 + 8))(v45, v47);
  v49 = v120;
  sub_238758640();
  v50 = v125;
  v51 = *(v125 + 56);
  v52 = 1;
  v53 = v128;
  v51(v49, 0, 1, v128);
  v54 = *(v44 + *(v115 + 20));
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v101;
    v57 = v100;
    v98(v101, v54 + ((v40 + 32) & ~v40) + *(v26 + 72) * (v55 - 1), v100);
    v58 = v134;
    sub_238758640();
    (*(v26 + 8))(v56, v57);
    v52 = 0;
  }

  else
  {
    v58 = v134;
  }

  v51(v58, v52, 1, v53);
  v59 = *(v119 + 48);
  v60 = v127;
  sub_23843981C(v49, v127, &unk_27DF0B520, &qword_2387681F0);
  sub_23843981C(v58, v60 + v59, &unk_27DF0B520, &qword_2387681F0);
  v61 = *(v50 + 48);
  v62 = v61(v60, 1, v53);
  v63 = v121;
  if (v62 == 1)
  {
    sub_238439884(v58, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
    if (v61(v60 + v59, 1, v53) == 1)
    {
      sub_238439884(v60, &unk_27DF0B520, &qword_2387681F0);
      v64 = 1;
      v65 = v132;
LABEL_18:
      v80 = v129;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_23843981C(v60, v121, &unk_27DF0B520, &qword_2387681F0);
  if (v61(v60 + v59, 1, v53) == 1)
  {
    sub_238439884(v134, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
    (*(v50 + 8))(v63, v53);
LABEL_11:
    sub_238439884(v60, &qword_27DF0A730, &unk_238765CD0);
    v65 = v132;
    goto LABEL_12;
  }

  v81 = v60 + v59;
  v82 = v97;
  (*(v50 + 32))(v97, v81, v53);
  sub_2385994A4(&qword_27DF0A788, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v83 = sub_23875E9E0();
  v84 = *(v50 + 8);
  v84(v82, v53);
  sub_238439884(v134, &unk_27DF0B520, &qword_2387681F0);
  sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
  v84(v63, v53);
  sub_238439884(v60, &unk_27DF0B520, &qword_2387681F0);
  v65 = v132;
  if (v83)
  {
    v64 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v66 = v104;
  sub_23875E350();
  v67 = v105;
  sub_2384D5138(v105);
  v68 = v109;
  v69 = v106;
  v70 = v110;
  (*(v109 + 104))(v106, *MEMORY[0x277CDF9D8], v110);
  v71 = sub_23875C870();
  v72 = *(v68 + 8);
  v72(v69, v70);
  v72(v67, v70);
  if (v71)
  {
    v73 = 0x4028000000000000;
  }

  else
  {
    v73 = 0x4030000000000000;
  }

  v74 = sub_23875D780();
  v75 = v103;
  (*(v107 + 32))(v103, v66, v108);
  v76 = &v75[*(v65 + 36)];
  *v76 = v74;
  *(v76 + 1) = 0;
  *(v76 + 2) = v73;
  *(v76 + 3) = 0;
  *(v76 + 4) = v73;
  v76[40] = 0;
  v77 = v75;
  v78 = v102;
  sub_2384396E4(v77, v102, &qword_27DF09510, &qword_2387637D0);
  v79 = v78;
  v80 = v129;
  sub_2384396E4(v79, v129, &qword_27DF09510, &qword_2387637D0);
  v64 = 0;
LABEL_19:
  (*(v131 + 56))(v80, v64, 1, v65);
  v86 = v123;
  v85 = v124;
  v87 = v80;
  v88 = *(v124 + 16);
  v89 = v135;
  v90 = v126;
  v88(v123, v135, v126);
  v91 = v130;
  sub_23843981C(v87, v130, &qword_27DF09528, &qword_238765CE0);
  v92 = v133;
  v88(v133, v86, v90);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0E8, &unk_238772160);
  sub_23843981C(v91, &v92[*(v93 + 48)], &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v87, &qword_27DF09528, &qword_238765CE0);
  v94 = *(v85 + 8);
  v94(v89, v90);
  sub_238439884(v91, &qword_27DF09528, &qword_238765CE0);
  v94(v86, v90);

  return result;
}

double sub_2385988D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758530();
  v6 = sub_23875A9F0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  type metadata accessor for BankConnectAccountConnectionPickerView(0);
  sub_23843981C(v5, v2, &qword_27DF0D390, &unk_238763350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  sub_23875E2F0();
  sub_238439884(v5, &qword_27DF0D390, &unk_238763350);

  return result;
}

double sub_238598A94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v44 = a3;
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_238758680();
  v46 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v45 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for BankConnectAccountConnectionPickerItemView(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C8, &unk_238772150);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - v21;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(v46 + 16);
  v43 = v18;
  v22(v45, a1, v18);
  sub_238758530();
  (*(v5 + 56))(v17, 0, 1, v4);
  type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  MEMORY[0x23EE62DC0](v23);
  v24 = *(v7 + 48);
  sub_23843981C(v17, v9, &qword_27DF0D390, &unk_238763350);
  sub_23843981C(v14, &v9[v24], &qword_27DF0D390, &unk_238763350);
  v25 = *(v5 + 48);
  if (v25(v9, 1, v4) != 1)
  {
    v29 = v36;
    sub_23843981C(v9, v36, &qword_27DF0D390, &unk_238763350);
    if (v25(&v9[v24], 1, v4) != 1)
    {
      v30 = v35;
      (*(v5 + 32))(v35, &v9[v24], v4);
      sub_2385994A4(&qword_27DF0A798, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
      v28 = sub_23875E9E0();
      v31 = *(v5 + 8);
      v31(v30, v4);
      sub_238439884(v14, &qword_27DF0D390, &unk_238763350);
      sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
      v31(v29, v4);
      sub_238439884(v9, &qword_27DF0D390, &unk_238763350);
      v27 = v43;
      goto LABEL_10;
    }

    sub_238439884(v14, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
    (*(v5 + 8))(v29, v4);
    v27 = v43;
    goto LABEL_8;
  }

  sub_238439884(v14, &qword_27DF0D390, &unk_238763350);
  sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
  v26 = v25(&v9[v24], 1, v4);
  v27 = v43;
  if (v26 != 1)
  {
LABEL_8:
    sub_238439884(v9, &qword_27DF0A790, &qword_238765D10);
    v28 = 0;
    goto LABEL_10;
  }

  sub_238439884(v9, &qword_27DF0D390, &unk_238763350);
  v28 = 1;
LABEL_10:
  v32 = v41;
  (*(v46 + 32))(v41, v45, v27);
  *(v32 + *(v42 + 20)) = v28 & 1;
  v33 = v38;
  sub_23859A230(v32, v38, type metadata accessor for BankConnectAccountConnectionPickerItemView);
  *(v33 + *(v40 + 36)) = 0;
  sub_2384396E4(v33, v44, &qword_27DF0F0C8, &unk_238772150);

  return result;
}

uint64_t sub_238599128()
{
  v1 = type metadata accessor for ContinuousGroupBoxStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F088, &qword_2387720C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F090, &qword_2387720C8);
  sub_238599374();
  sub_23875E470();
  *v3 = swift_getKeyPath(a8_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(v1 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0F0B0, &qword_27DF0F088, &qword_2387720C0, MEMORY[0x277CDF118]);
  sub_2385994A4(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v3);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_238599374()
{
  result = qword_27DF0F098;
  if (!qword_27DF0F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F090, &qword_2387720C8);
    sub_23843A3E8(&qword_27DF0F0A0, &qword_27DF0F0A8, &qword_2387720D0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F098);
  }

  return result;
}

double sub_238599424@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectAccountConnectionPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23859797C(a1, v6, a2);
}

uint64_t sub_2385994A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2385994EC()
{
  type metadata accessor for BankConnectAccountConnectionPickerView(0);
  sub_238758680();

  return sub_2385988D0();
}

unint64_t sub_2385995C0()
{
  result = qword_27DF0F0D0;
  if (!qword_27DF0F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F0C8, &unk_238772150);
    sub_2385994A4(&qword_27DF0F0D8, type metadata accessor for BankConnectAccountConnectionPickerItemView, &unk_23877219C);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F0D0);
  }

  return result;
}

uint64_t sub_2385996C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875D590();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F100, &qword_2387721F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  *v9 = sub_23875CE60();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F108, &qword_2387721F8);
  sub_23859992C(v1, &v9[*(v10 + 44)]);
  sub_23875D580();
  sub_23843A3E8(&qword_27DF0F110, &qword_27DF0F100, &qword_2387721F0, MEMORY[0x277CE1138]);
  sub_23875DD60();
  (*(v4 + 8))(v6, v3);
  sub_238439884(v9, &qword_27DF0F100, &qword_2387721F0);
  v11 = sub_23875D770();
  sub_23875C3D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F118, &qword_238772200) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = sub_23875D7D0();
  sub_23875C3D0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F120, &qword_238772208);
  v31 = a1 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

void sub_23859992C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v2 = sub_23875CF90();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C8, &qword_238765DE0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D0, &qword_238765DE8);
  MEMORY[0x28223BE20](v33);
  v8 = &v32 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F128, &qword_238772210);
  MEMORY[0x28223BE20](v34);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v13);
  v40 = &v32 - v14;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_23875E0D0();
  v16 = sub_23875DFC0();
  KeyPath = swift_getKeyPath(byte_238772218);
  *&v54 = v15;
  *(&v54 + 1) = KeyPath;
  *v55 = v16;
  sub_23875D870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
  sub_238448F8C();
  sub_23875DAF0();

  if (*(v39 + *(type metadata accessor for BankConnectAccountConnectionPickerItemView(0) + 20)))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  (*(v35 + 32))(v8, v6, v36);
  v19 = v32;
  *&v8[*(v33 + 36)] = v18;
  sub_23875CF80();
  sub_23859A350();
  sub_23875DDE0();
  (*(v37 + 8))(v19, v38);
  sub_238439884(v8, &qword_27DF0A7D0, &qword_238765DE8);
  v20 = v40;
  sub_23875C8B0();
  sub_238439884(v12, &qword_27DF0F128, &qword_238772210);
  v21 = sub_23875D030();
  v45 = 0;
  sub_238599F10(&v54);
  v48 = *&v55[16];
  v49 = *&v55[32];
  v46 = v54;
  v47 = *v55;
  v51[2] = *&v55[16];
  v51[3] = *&v55[32];
  v51[4] = *&v55[48];
  v51[1] = *v55;
  v50 = *&v55[48];
  v51[0] = v54;
  sub_23843981C(&v46, &v52, &qword_27DF0F138, &qword_238772248);
  sub_238439884(v51, &qword_27DF0F138, &qword_238772248);
  *&v44[23] = v47;
  *&v44[39] = v48;
  *&v44[55] = v49;
  *&v44[71] = v50;
  *&v44[7] = v46;
  LOBYTE(v19) = v45;
  v22 = v42;
  sub_2384132D8(v20, v42);
  v23 = v43;
  sub_2384132D8(v22, v43);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F140, &qword_238772250);
  v25 = v23 + *(v24 + 48);
  *&v52 = v21;
  *(&v52 + 1) = 0x4008000000000000;
  v53[0] = v19;
  *&v53[1] = *v44;
  *&v53[17] = *&v44[16];
  *&v53[65] = *&v44[64];
  *&v53[80] = *&v44[79];
  *&v53[49] = *&v44[48];
  *&v53[33] = *&v44[32];
  v26 = *v53;
  *v25 = v52;
  *(v25 + 16) = v26;
  v27 = *&v53[16];
  v28 = *&v53[32];
  v29 = *&v53[48];
  v30 = *&v53[64];
  *(v25 + 96) = *&v53[80];
  *(v25 + 64) = v29;
  *(v25 + 80) = v30;
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  v31 = v23 + *(v24 + 64);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_23843981C(&v52, &v54, &qword_27DF0F148, &qword_238772258);
  sub_238439884(v20, &qword_27DF0F128, &qword_238772210);
  *&v55[33] = *&v44[32];
  *&v55[49] = *&v44[48];
  *v56 = *&v44[64];
  *&v55[1] = *v44;
  *&v54 = v21;
  *(&v54 + 1) = 0x4008000000000000;
  v55[0] = v19;
  *&v56[15] = *&v44[79];
  *&v55[17] = *&v44[16];
  sub_238439884(&v54, &qword_27DF0F148, &qword_238772258);
  sub_238439884(v22, &qword_27DF0F128, &qword_238772210);
}

double sub_238599F10@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_238757FC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48 = sub_2387585B0();
  v49 = v6;
  sub_2384397A8(v48, v6, v7);
  v8 = sub_23875DAA0();
  v42 = v9;
  v43 = v8;
  HIDWORD(v40) = v10;
  v44 = v11;
  KeyPath = swift_getKeyPath(aH_5);
  sub_2387585C0();
  v12 = sub_238757FB0();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v48 = v12;
  v49 = v14;
  v15 = sub_23875DAA0();
  v17 = v16;
  v19 = v18;
  LODWORD(v48) = sub_23875D440();
  v20 = sub_23875DA20();
  v22 = v21;
  v24 = v23;
  sub_2384397FC(v15, v17, v19 & 1);

  sub_23875D7F0();
  v25 = sub_23875DA60();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_2384397FC(v20, v22, v24 & 1);

  v32 = BYTE4(v40) & 1;
  LOBYTE(v48) = BYTE4(v40) & 1;
  v47 = BYTE4(v40) & 1;
  v33 = v29 & 1;
  v46 = v29 & 1;
  v34 = v29 & 1;
  v36 = v42;
  v35 = v43;
  *a1 = v43;
  *(a1 + 8) = v36;
  *(a1 + 16) = v32;
  v37 = KeyPath;
  *(a1 + 24) = v44;
  *(a1 + 32) = v37;
  *(a1 + 40) = 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v34;
  *(a1 + 72) = v31;
  v38 = v35;
  sub_23843980C(v35, v36, v32);

  sub_23843980C(v25, v27, v33);

  sub_2384397FC(v25, v27, v33);

  sub_2384397FC(v38, v36, v48);

  return result;
}

uint64_t sub_23859A230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23859A2C0(uint64_t a1)
{
  result = sub_238758680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23859A350()
{
  result = qword_27DF0F130;
  if (!qword_27DF0F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A7D0, &qword_238765DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F130);
  }

  return result;
}

unint64_t sub_23859A418()
{
  result = qword_27DF0F150;
  if (!qword_27DF0F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F120, &qword_238772208);
    sub_23859A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F150);
  }

  return result;
}

unint64_t sub_23859A4A4()
{
  result = qword_27DF0F158;
  if (!qword_27DF0F158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F118, &qword_238772200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F100, &qword_2387721F0);
    sub_23843A3E8(&qword_27DF0F110, &qword_27DF0F100, &qword_2387721F0, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F158);
  }

  return result;
}

BOOL sub_23859A5A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ReturnDetails.ViewModel(0);
  if (*(v0 + v7[11] + 8) || *(v0 + v7[12] + 8))
  {
    return 1;
  }

  v9 = v7;
  sub_23843981C(v0 + v7[15], v6, &qword_27DF0D040, &qword_2387676A0);
  v10 = sub_23875B940();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v6, 1, v10);
  sub_238439884(v6, &qword_27DF0D040, &qword_2387676A0);
  result = 1;
  if (v12 == 1)
  {
    sub_23843981C(v0 + v9[18], v3, &qword_27DF0D040, &qword_2387676A0);
    v13 = v11(v3, 1, v10) != 1;
    sub_238439884(v3, &qword_27DF0D040, &qword_2387676A0);
    return v13;
  }

  return result;
}

uint64_t sub_23859A76C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReturnDetails(0);
  sub_23843981C(v1 + *(v10 + 24), v9, &qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C6D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23859A974@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReturnDetails(0);
  sub_23843981C(v1 + *(v10 + 28), v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ReturnDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_23875CE00();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F160, &qword_238772290);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F168, &qword_238772298);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - v8;
  v32 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F170, &qword_2387722A0);
  sub_23843A3E8(&qword_27DF0F178, &qword_27DF0F170, &qword_2387722A0, MEMORY[0x277CDF340]);
  sub_23875C410();
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  v11 = sub_23875DFB0();
  v12 = sub_23875D780();
  v13 = &v7[*(v5 + 36)];
  *v13 = v11;
  v13[8] = v12;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F180, &qword_2387722A8);
  sub_23859F5C4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F1A0, &qword_2387722B8);
  v15 = sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8, MEMORY[0x277CDD7A8]);
  v34 = v14;
  v35 = v15;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v7, &qword_27DF0F160, &qword_238772290);
  v16 = &v9[*(v26 + 36)];
  v17 = sub_23875A710();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v2, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = &v16[*(type metadata accessor for OrderDetailsRefreshableModifier(0) + 20)];
  v33 = 0;
  sub_23875E1A0();
  v20 = v35;
  *v19 = v34;
  *(v19 + 1) = v20;
  v22 = v27;
  v21 = v28;
  v23 = v29;
  (*(v28 + 104))(v27, *MEMORY[0x277CDDDC0], v29);
  sub_23859F6A8();
  sub_23875DE50();
  (*(v21 + 8))(v22, v23);
  return sub_238439884(v9, &qword_27DF0F168, &qword_238772298);
}

double sub_23859AFBC(uint64_t a1)
{
  v2 = sub_23875D320();
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *&v5[-4] = a1;
  sub_23875D020();
  v5[3] = 0;
  sub_2385A1A4C(&qword_27DF0F1E0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23875F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1E8, &qword_238772398);
  sub_23843A3E8(&qword_27DF0F1F0, &qword_27DF0F1E8, &qword_238772398, MEMORY[0x277CE14C0]);
  sub_23875C3F0();

  return result;
}

double sub_23859B1C4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D768, &qword_23876D868);
  v187 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v185 = &v161 - v3;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D770, &qword_23876D870);
  v188 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = &v161 - v4;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D920, &qword_23876D990);
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v184 = &v161 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D778, &qword_23876D878);
  MEMORY[0x28223BE20](v6 - 8);
  v213 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v212 = &v161 - v9;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1F8, &qword_2387723A0);
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v161 - v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F200, &qword_2387723A8);
  v181 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v179 = &v161 - v11;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F208, &qword_2387723B0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v177 = &v161 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F210, &qword_2387723B8);
  MEMORY[0x28223BE20](v13 - 8);
  v221 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v226 = &v161 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F218, &qword_2387723C0);
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v170 = &v161 - v17;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F220, &qword_2387723C8);
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v171 = &v161 - v18;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F228, &qword_2387723D0);
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v169 = &v161 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v20 - 8);
  v205 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v202 = &v161 - v23;
  v216 = sub_23875B940();
  v206 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v176 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v168 = &v161 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F230, &qword_2387723D8);
  MEMORY[0x28223BE20](v27 - 8);
  v220 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v225 = &v161 - v30;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F238, &qword_2387723E0);
  v194 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v192 = &v161 - v31;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F240, &qword_2387723E8);
  v195 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v193 = &v161 - v32;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F248, &qword_2387723F0);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v191 = &v161 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F250, &qword_2387723F8);
  MEMORY[0x28223BE20](v34 - 8);
  v219 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v224 = &v161 - v37;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F258, &qword_238772400);
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v162 = &v161 - v38;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F260, &qword_238772408);
  v165 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v163 = &v161 - v39;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F268, &qword_238772410);
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v161 = &v161 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F270, &qword_238772418);
  MEMORY[0x28223BE20](v41 - 8);
  v218 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v223 = &v161 - v44;
  v45 = type metadata accessor for ReturnDetailsContentsSection(0);
  MEMORY[0x28223BE20](v45);
  v217 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v222 = &v161 - v48;
  sub_23875ED50();
  v207 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for ReturnDetails.ViewModel(0);
  v50 = v222;
  sub_2385A1A94(&a1[v49[6]], v222, type metadata accessor for ReturnDetailsHeader.ViewModel);
  v51 = v49[7];
  v52 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  sub_2385A1A94(&a1[v51], v50 + v52[5], type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  v53 = &a1[v49[8]];
  v54 = *v53;
  v55 = *(v53 + 1);
  v56 = &a1[v49[9]];
  v57 = *v56;
  v58 = *(v56 + 1);
  v59 = &a1[v49[17]];
  v60 = *v59;
  v61 = *(v59 + 1);
  v62 = &a1[v49[13]];
  v63 = *v62;
  v64 = *(v62 + 1);
  v65 = &a1[v49[14]];
  v215 = v49;
  v66 = *&a1[v49[10]];
  v67 = *v65;
  v68 = *(v65 + 1);
  v69 = (v50 + v52[6]);
  *v69 = v54;
  v69[1] = v55;
  v70 = (v50 + v52[7]);
  *v70 = v57;
  v70[1] = v58;
  v71 = (v50 + v52[8]);
  *v71 = v60;
  v71[1] = v61;
  v72 = (v50 + v52[9]);
  *v72 = v63;
  v72[1] = v64;
  v73 = (v50 + v52[10]);
  *v73 = v67;
  v73[1] = v68;
  *(v50 + v52[11]) = v66;
  v74 = &a1[*(type metadata accessor for ReturnDetails(0) + 20)];
  v75 = *(v74 + 3);
  v229 = *(v74 + 2);
  v230 = v75;
  v231 = *(v74 + 4);
  v232 = *(v74 + 10);
  v76 = *(v74 + 1);
  v227 = *v74;
  v228 = v76;
  v77 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1D0();
  v78 = (v50 + v45[5]);
  v79 = v236;
  v78[2] = v235;
  v78[3] = v79;
  v78[4] = *v237;
  *(v78 + 73) = *&v237[9];
  v80 = v234;
  *v78 = v233;
  v78[1] = v80;
  v81 = v45[6];
  *(v50 + v81) = swift_getKeyPath(byte_238772420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v82 = v50 + v45[7];
  *v82 = swift_getKeyPath(aP_5);
  *(v82 + 8) = 0;
  v83 = sub_23859A5A0();
  if (v83)
  {
    MEMORY[0x28223BE20](v83);
    *(&v161 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F348, &qword_2387724D8);
    sub_2385A2204();
    v84 = v162;
    sub_23875D9C0();
    v85 = sub_23843A3E8(&qword_27DF0F398, &qword_27DF0F258, &qword_238772400, MEMORY[0x277CDE5A0]);
    v86 = v163;
    v87 = v166;
    sub_23875DB70();
    (*(v164 + 8))(v84, v87);
    *&v227 = v87;
    *(&v227 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v88 = v161;
    v89 = v167;
    sub_23875DD80();
    (*(v165 + 8))(v86, v89);
    v90 = v198;
    v91 = v223;
    v92 = v199;
    (*(v198 + 32))(v223, v88, v199);
    v93 = 0;
  }

  else
  {
    v93 = 1;
    v91 = v223;
    v92 = v199;
    v90 = v198;
  }

  v94 = (*(v90 + 56))(v91, v93, 1, v92);
  v95 = v215;
  v96 = v224;
  v97 = v216;
  v98 = v206;
  if (*&a1[v215[11] + 8] || *&a1[v215[12] + 8])
  {
    MEMORY[0x28223BE20](v94);
    *(&v161 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F300, &qword_2387724B8);
    sub_2385A1FD0();
    v99 = v192;
    sub_23875D9C0();
    v100 = sub_23843A3E8(&qword_27DF0F340, &qword_27DF0F238, &qword_2387723E0, MEMORY[0x277CDE5A0]);
    v101 = v193;
    v102 = v196;
    sub_23875DB70();
    (*(v194 + 8))(v99, v102);
    *&v227 = v102;
    *(&v227 + 1) = v100;
    swift_getOpaqueTypeConformance2();
    v103 = v191;
    v104 = v197;
    sub_23875DD80();
    (*(v195 + 8))(v101, v104);
    v105 = v200;
    v106 = v201;
    (*(v200 + 32))(v96, v103, v201);
    v107 = 0;
  }

  else
  {
    v107 = 1;
    v106 = v201;
    v105 = v200;
  }

  (*(v105 + 56))(v96, v107, 1, v106);
  v108 = v202;
  sub_23843981C(&v77[v95[15]], v202, &qword_27DF0D040, &qword_2387676A0);
  v109 = *(v98 + 48);
  if (v109(v108, 1, v97) == 1)
  {
    sub_238439884(v108, &qword_27DF0D040, &qword_2387676A0);
    (*(v203 + 56))(v225, 1, 1, v204);
  }

  else
  {
    v110 = v168;
    v111 = (*(v98 + 32))(v168, v108, v97);
    MEMORY[0x28223BE20](v111);
    *(&v161 - 2) = v77;
    *(&v161 - 1) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2B8, &qword_238772498);
    v112 = v98;
    sub_2385A1D9C();
    v113 = v170;
    sub_23875D9C0();
    v114 = sub_23843A3E8(&qword_27DF0F2F8, &qword_27DF0F218, &qword_2387723C0, MEMORY[0x277CDE5A0]);
    v115 = v171;
    v116 = v174;
    sub_23875DB70();
    (*(v172 + 8))(v113, v116);
    *&v227 = v116;
    *(&v227 + 1) = v114;
    swift_getOpaqueTypeConformance2();
    v117 = v169;
    v118 = v175;
    sub_23875DD80();
    v119 = v115;
    v98 = v112;
    v97 = v216;
    (*(v173 + 8))(v119, v118);
    v120 = v203;
    v121 = v225;
    v122 = v117;
    v95 = v215;
    v123 = v204;
    (*(v203 + 32))(v225, v122, v204);
    (*(v120 + 56))(v121, 0, 1, v123);
    (*(v98 + 8))(v110, v97);
  }

  v124 = v205;
  sub_23843981C(&v77[v95[18]], v205, &qword_27DF0D040, &qword_2387676A0);
  if (v109(v124, 1, v97) == 1)
  {
    sub_238439884(v124, &qword_27DF0D040, &qword_2387676A0);
    v125 = (*(v208 + 56))(v226, 1, 1, v209);
  }

  else
  {
    v126 = *(v98 + 32);
    v127 = v98;
    v128 = v176;
    v129 = v126(v176, v124, v97);
    MEMORY[0x28223BE20](v129);
    *(&v161 - 2) = v77;
    *(&v161 - 1) = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F280, &qword_238772480);
    sub_2385A1B68();
    v130 = v178;
    sub_23875D9C0();
    v131 = sub_23843A3E8(&qword_27DF0F2B0, &qword_27DF0F1F8, &qword_2387723A0, MEMORY[0x277CDE5A0]);
    v132 = v179;
    v133 = v182;
    sub_23875DB70();
    (*(v180 + 8))(v130, v133);
    *&v227 = v133;
    *(&v227 + 1) = v131;
    swift_getOpaqueTypeConformance2();
    v134 = v177;
    v135 = v183;
    sub_23875DD80();
    (*(v181 + 8))(v132, v135);
    v136 = v208;
    v137 = v226;
    v138 = v209;
    (*(v208 + 32))(v226, v134, v209);
    (*(v136 + 56))(v137, 0, 1, v138);
    v125 = (*(v127 + 8))(v128, v97);
  }

  v139 = v224;
  if (*(*&v77[v95[19]] + 16))
  {
    MEMORY[0x28223BE20](v125);
    *(&v161 - 2) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_23853250C();
    v140 = v185;
    sub_23875D9C0();
    v141 = sub_23843A3E8(&qword_27DF0D918, &qword_27DF0D768, &qword_23876D868, MEMORY[0x277CDE5A0]);
    v142 = v186;
    v143 = v189;
    sub_23875DB70();
    (*(v187 + 8))(v140, v143);
    *&v227 = v143;
    *(&v227 + 1) = v141;
    swift_getOpaqueTypeConformance2();
    v144 = v184;
    v145 = v190;
    sub_23875DD80();
    (*(v188 + 8))(v142, v145);
    v146 = v210;
    v147 = v212;
    v148 = v211;
    (*(v210 + 32))(v212, v144, v211);
    v149 = 0;
  }

  else
  {
    v149 = 1;
    v147 = v212;
    v148 = v211;
    v146 = v210;
  }

  (*(v146 + 56))(v147, v149, 1, v148);
  LODWORD(v216) = sub_23875D770();
  v150 = v217;
  sub_2385A1A94(v222, v217, type metadata accessor for ReturnDetailsContentsSection);
  v151 = v218;
  sub_23843981C(v223, v218, &qword_27DF0F270, &qword_238772418);
  v152 = v219;
  sub_23843981C(v139, v219, &qword_27DF0F250, &qword_2387723F8);
  v153 = v220;
  sub_23843981C(v225, v220, &qword_27DF0F230, &qword_2387723D8);
  v154 = v221;
  sub_23843981C(v226, v221, &qword_27DF0F210, &qword_2387723B8);
  v155 = v213;
  sub_23843981C(v147, v213, &qword_27DF0D778, &qword_23876D878);
  v156 = v150;
  v157 = v214;
  sub_2385A1A94(v156, v214, type metadata accessor for ReturnDetailsContentsSection);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F278, &qword_238772478);
  sub_23843981C(v151, v157 + v158[12], &qword_27DF0F270, &qword_238772418);
  sub_23843981C(v152, v157 + v158[16], &qword_27DF0F250, &qword_2387723F8);
  sub_23843981C(v153, v157 + v158[20], &qword_27DF0F230, &qword_2387723D8);
  sub_23843981C(v154, v157 + v158[24], &qword_27DF0F210, &qword_2387723B8);
  sub_23843981C(v155, v157 + v158[28], &qword_27DF0D778, &qword_23876D878);
  v159 = v157 + v158[32];
  *v159 = v216;
  *(v159 + 8) = 0u;
  *(v159 + 24) = 0u;
  *(v159 + 40) = 1;
  sub_238439884(v147, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v226, &qword_27DF0F210, &qword_2387723B8);
  sub_238439884(v225, &qword_27DF0F230, &qword_2387723D8);
  sub_238439884(v224, &qword_27DF0F250, &qword_2387723F8);
  sub_238439884(v223, &qword_27DF0F270, &qword_238772418);
  sub_2385A1B04(v222);
  sub_238439884(v155, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v221, &qword_27DF0F210, &qword_2387723B8);
  sub_238439884(v220, &qword_27DF0F230, &qword_2387723D8);
  sub_238439884(v219, &qword_27DF0F250, &qword_2387723F8);
  sub_238439884(v218, &qword_27DF0F270, &qword_238772418);
  sub_2385A1B04(v217);

  return result;
}

void sub_23859CFA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v14 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F380, &qword_2387724F0);
  sub_2385A2404();
  sub_23875E3D0();
  sub_23875CE90();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F360, &qword_2387724E0) + 36);
  (*(v5 + 16))(a2 + v9, v7, v4);
  v10 = *(v5 + 56);
  v10(a2 + v9, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_238772500);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F348, &qword_2387724D8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v12 + v13, v7, v4);
  v10(v12 + v13, 0, 1, v4);

  *v12 = KeyPath;
}

uint64_t sub_23859D218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = sub_2387591F0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC77C8], v10, v12);
  v15 = sub_238758A40();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  sub_23859A974(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9D8], v3);
  LOBYTE(v11) = sub_23875C870();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  if (v11)
  {
    v19 = 0x4028000000000000;
  }

  else
  {
    v19 = 0x4030000000000000;
  }

  v21[2] = sub_23875E020();
  result = sub_23875E2D0();
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = 0x4028000000000000;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = v19;
  *(a2 + 48) = 0;
  *(a2 + 56) = result;
  return result;
}

void sub_23859D494(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v14 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F338, &qword_2387724D0);
  sub_23843A3E8(&qword_27DF0F330, &qword_27DF0F338, &qword_2387724D0, MEMORY[0x277CE14C0]);
  sub_23875E3D0();
  sub_23875CE90();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F318, &qword_2387724C0) + 36);
  (*(v5 + 16))(a2 + v9, v7, v4);
  v10 = *(v5 + 56);
  v10(a2 + v9, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_238772500);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F300, &qword_2387724B8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v12 + v13, v7, v4);
  v10(v12 + v13, 0, 1, v4);

  *v12 = KeyPath;
}

double sub_23859D734@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReturnDetails.ViewModel(0);
  v9 = (a1 + *(v8 + 44));
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    (*(v5 + 104))(v7, *MEMORY[0x277CC77C8], v4);

    v29 = sub_238758A40();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v29 = 0;
    v13 = 0;
    v11 = 0;
  }

  v14 = (a1 + *(v8 + 48));
  v15 = v14[1];
  if (v15)
  {
    v28 = v11;
    v16 = *v14;
    v17 = qword_2814F0880;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_2814F1B90;
    v19 = sub_23875EA50();
    v20 = sub_23875EA50();
    v21 = sub_23875EA50();
    v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

    v23 = sub_23875EA80();
    v25 = v24;

    v11 = v28;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v16 = 0;
  }

  v26 = v29;
  *a2 = v29;
  a2[1] = v13;
  a2[2] = v11;
  a2[3] = v10;
  a2[4] = v23;
  a2[5] = v25;
  a2[6] = v16;
  a2[7] = v15;
  sub_2385570E8(v26, v13, v11, v10);
  sub_2385570E8(v23, v25, v16, v15);
  sub_23855712C(v23, v25, v16, v15);
  return sub_23855712C(v26, v13, v11, v10);
}

void sub_23859DA00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  *(&v16 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2F0, &qword_2387724B0);
  sub_23843A3E8(&qword_27DF0F2E8, &qword_27DF0F2F0, &qword_2387724B0, MEMORY[0x277CE14C0]);
  sub_23875E3D0();
  sub_23875CE90();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2D0, &qword_2387724A0) + 36);
  (*(v7 + 16))(a3 + v11, v9, v6);
  v12 = *(v7 + 56);
  v12(a3 + v11, 0, 1, v6);
  KeyPath = swift_getKeyPath(byte_238772500);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2B8, &qword_238772498) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v14 + v15, v9, v6);
  v12(v14 + v15, 0, 1, v6);

  *v14 = KeyPath;
}

uint64_t sub_23859DCA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v82 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = (&v72 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A0, &qword_238772530);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v72 - v9;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = type metadata accessor for ReturnDetails(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E288, &qword_23876F500);
  v84 = *(v20 - 8);
  v85 = v20;
  MEMORY[0x28223BE20](v20);
  v83 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  sub_2385A1A94(a1, v19, type metadata accessor for ReturnDetails);
  v73 = *(v11 + 16);
  v74 = v11 + 16;
  v73(v15, v82, v10);
  v25 = *(v17 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = *(v11 + 80);
  v28 = (v18 + v27 + v26) & ~v27;
  v78 = v12;
  v72 = v25 | v27;
  v29 = swift_allocObject();
  v75 = v26;
  v30 = v29 + v26;
  v31 = v11;
  v77 = v19;
  sub_2385A19D4(v19, v30, type metadata accessor for ReturnDetails);
  v32 = *(v11 + 32);
  v76 = v28;
  v79 = v15;
  v32(v29 + v28, v15, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
  sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30, MEMORY[0x277CE1138]);
  v82 = v24;
  v33 = a1;
  v34 = v80;
  sub_23875E200();
  v35 = type metadata accessor for ReturnDetails.ViewModel(0);
  sub_23843981C(v33 + *(v35 + 64), v34, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v31 + 48))(v34, 1, v10) == 1)
  {
    sub_238439884(v34, &qword_27DF0D040, &qword_2387676A0);
    v36 = 1;
    v37 = v86;
  }

  else
  {
    v32(v81, v34, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2387632F0;
    v39 = (v33 + *(v35 + 68));
    v41 = *v39;
    v40 = v39[1];
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_238448C58(v38, v42, v43);
    *(v38 + 32) = v41;
    *(v38 + 40) = v40;
    v44 = qword_2814F0880;

    v80 = v32;
    if (v44 != -1)
    {
      swift_once();
    }

    v45 = qword_2814F1B90;
    v46 = sub_23875EA50();
    v47 = sub_23875EA50();
    v48 = sub_23875EA50();
    v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

    sub_23875EA80();
    v50 = sub_23875EAA0();
    v52 = v51;

    v89 = v50;
    v90 = v52;
    v53 = v77;
    sub_2385A1A94(v33, v77, type metadata accessor for ReturnDetails);
    v54 = v79;
    v55 = v81;
    v73(v79, v81, v10);
    v56 = v76;
    v57 = swift_allocObject();
    sub_2385A19D4(v53, v57 + v75, type metadata accessor for ReturnDetails);
    v58 = v80(v57 + v56, v54, v10);
    sub_2384397A8(v58, v59, v60);
    v37 = v86;
    sub_23875E230();
    (*(v31 + 8))(v55, v10);
    v36 = 0;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  (*(*(v61 - 8) + 56))(v37, v36, 1, v61);
  v63 = v83;
  v62 = v84;
  v64 = *(v84 + 16);
  v65 = v82;
  v66 = v85;
  v64(v83, v82, v85);
  v67 = v87;
  sub_23843981C(v37, v87, &qword_27DF0F3A0, &qword_238772530);
  v68 = v88;
  v64(v88, v63, v66);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A8, &qword_238772538);
  sub_23843981C(v67, &v68[*(v69 + 48)], &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v37, &qword_27DF0F3A0, &qword_238772530);
  v70 = *(v62 + 8);
  v70(v65, v66);
  sub_238439884(v67, &qword_27DF0F3A0, &qword_238772530);
  return (v70)(v63, v66);
}

__n128 sub_23859E500@<Q0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  v16 = 1;
  sub_23859E5E4(&v10);

  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

double sub_23859E5E4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC77C8], v2);
  v6 = sub_238758A40();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  v20[0] = v6;
  v20[1] = v8;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v6) = v15;
  v17 = v16;
  v18 = sub_23875E0D0();
  *a1 = v12;
  *(a1 + 8) = v14;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v18;
  sub_23843980C(v12, v14, v6);

  sub_2384397FC(v12, v14, v6);

  return result;
}

void sub_23859E7FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  *(&v16 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  sub_23875E3D0();
  sub_23875CE90();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F298, &qword_238772488) + 36);
  (*(v7 + 16))(a3 + v11, v9, v6);
  v12 = *(v7 + 56);
  v12(a3 + v11, 0, 1, v6);
  KeyPath = swift_getKeyPath(byte_238772500);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F280, &qword_238772480) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v14 + v15, v9, v6);
  v12(v14 + v15, 0, 1, v6);

  *v14 = KeyPath;
}

uint64_t sub_23859EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v25 = a1;
  v26 = sub_23875B940();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = type metadata accessor for ReturnDetails(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CC77C8], v7, v9);
  v12 = sub_238758A40();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v29 = v12;
  v30 = v14;
  sub_2385A1A94(v25, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetails);
  v15 = v26;
  (*(v3 + 16))(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = (v6 + *(v3 + 80) + v16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_2385A19D4(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for ReturnDetails);
  v19 = (*(v3 + 32))(v18 + v17, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_2384397A8(v19, v20, v21);
  return sub_23875E230();
}

double sub_23859EDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23875C6D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23859A76C(v6);
  sub_23875C6A0();
  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_23859EEFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  MEMORY[0x28223BE20](v16);
  v25[-2] = a1;
  v25[0] = v13;
  v25[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D908, &unk_23876D980);
  sub_238532714(v17, v18, v19);
  sub_238532768();
  sub_23875E3B0();
  sub_23875CE90();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8E0, &qword_23876D970) + 36);
  (*(v5 + 16))(a2 + v20, v7, v4);
  v21 = *(v5 + 56);
  v21(a2 + v20, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_238772500);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v23 + v24, v7, v4);
  v21(v23 + v24, 0, 1, v4);

  *v23 = KeyPath;
}

double sub_23859F264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReturnDetails.ViewModel(0) + 76));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  sub_23875E1A0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

double sub_23859F354(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1A0, &qword_2387722B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D290();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  type metadata accessor for ReturnDetailsMerchantImage(0);
  sub_2385A1A4C(&qword_27DF0F1D8, type metadata accessor for ReturnDetailsMerchantImage, &unk_23876B2DC);
  sub_23875C4D0();
  v8 = sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v8);
  (*(v4 + 8))(v6, v3);

  return result;
}

unint64_t sub_23859F5C4()
{
  result = qword_27DF0F188;
  if (!qword_27DF0F188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F160, &qword_238772290);
    sub_23843A3E8(&qword_27DF0F190, &qword_27DF0F198, &qword_2387722B0, MEMORY[0x277CDD6E0]);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F188);
  }

  return result;
}

unint64_t sub_23859F6A8()
{
  result = qword_27DF0F1B0;
  if (!qword_27DF0F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F168, &qword_238772298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F160, &qword_238772290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F180, &qword_2387722A8);
    sub_23859F5C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F1A0, &qword_2387722B8);
    sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2385A1A4C(&qword_27DF0D6D8, type metadata accessor for OrderDetailsRefreshableModifier, &unk_23876B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F1B0);
  }

  return result;
}

double sub_23859F860@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  sub_2385A1A94(a1 + *(v4 + 20), a2, type metadata accessor for MerchantImage.ViewModel);
  v5 = (a1 + *(type metadata accessor for ReturnDetails(0) + 20));
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = *(v5 + 10);
  v10 = *v5;
  v11 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1D0();
  v6 = type metadata accessor for ReturnDetailsMerchantImage(0);
  v7 = (a2 + *(v6 + 20));
  v7[2] = v18;
  v7[3] = v19;
  v7[4] = *v20;
  *(v7 + 73) = *&v20[9];
  *v7 = v16;
  v7[1] = v17;
  v8 = *(v6 + 24);
  *(a2 + v8) = swift_getKeyPath(aH_6, v10, v11, v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();

  return result;
}

void sub_23859FA50(uint64_t a1)
{
  type metadata accessor for ReturnDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23859FD98(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_23859FDE8(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23859FDE8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23859FBB0(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerchantImage.ViewModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ReturnDetailsHeader.ViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ReturnDetailsStatusLabel.ViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_23859FD98(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23859FDE8(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_23859FDE8(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23859FDE8(319, &qword_27DF0D548, MEMORY[0x277CC8398], MEMORY[0x277D83940]);
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

void sub_23859FD98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23859FDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23859FE4C(int *a1@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v210 = a3;
  v188 = a2;
  v214 = a1;
  v5 = sub_23875AC40();
  v6 = *(v5 - 8);
  v212 = v5;
  v213 = v6;
  MEMORY[0x28223BE20](v5);
  v187 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  MEMORY[0x28223BE20](v8 - 8);
  v202 = (&v187 - v9);
  v201 = sub_23875AD40();
  v199 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v206 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  MEMORY[0x28223BE20](v198);
  v12 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v13 - 8);
  v203 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v197 = &v187 - v16;
  v195 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  MEMORY[0x28223BE20](v195);
  v196 = (&v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v18 - 8);
  v194 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v192 = &v187 - v21;
  MEMORY[0x28223BE20](v22);
  v190 = &v187 - v23;
  v24 = sub_23875AF90();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v187 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ReturnDetails.ViewModel(0);
  v32 = v31[15];
  v33 = sub_23875B940();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v36 = (v34 + 56);
  v189 = v32;
  v35(a4 + v32, 1, 1, v33);
  v191 = v31[16];
  v35(a4 + v191, 1, 1, v33);
  v208 = v31;
  v193 = v31[18];
  v204 = v35;
  v205 = v33;
  v207 = v36;
  v35(a4 + v193, 1, 1, v33);
  v209 = a4;
  sub_238757D40();
  v37 = sub_238758D10();
  if (v37 >> 62)
  {
    v186 = v37;
    v38 = sub_23875F3A0();
    v37 = v186;
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v200 = v12;
  if (v38)
  {
    v39 = v37;
    v215 = MEMORY[0x277D84F90];
    sub_2385FEB6C(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_71;
    }

    v40 = 0;
    v41 = v215;
    v42 = v39;
    v211 = (v39 & 0xC000000000000001);
    do
    {
      if (v211)
      {
        v43 = MEMORY[0x23EE63F70](v40, v42);
      }

      else
      {
        v43 = *(v42 + 8 * v40 + 32);
      }

      v44 = v43;
      sub_238757DA0();
      sub_23868CAF8(v44, v26, v30);
      v215 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2385FEB6C((v45 > 1), v46 + 1, 1);
        v41 = v215;
      }

      ++v40;
      *(v41 + 16) = v46 + 1;
      sub_2385A19D4(v30, v41 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v46, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v42 = v39;
    }

    while (v38 != v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v48 = v208;
  v47 = v209;
  *(v209 + v208[10]) = v41;
  v214 = v214;
  v49 = v188;
  v50 = [v49 merchant];
  v51 = [v50 logoName];

  if (v51)
  {
    v52 = sub_23875EA80();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = (v47 + v48[5]);
  *v55 = v52;
  v55[1] = v54;
  v56 = type metadata accessor for MerchantImage.ViewModel(0);
  v57 = v214;
  sub_238757DA0();
  v58 = [v49 merchant];
  v59 = [v58 displayName];

  v60 = sub_2387586A0();
  v62 = v61;

  v188 = v56;
  v63 = (v55 + v56[6]);
  *v63 = v60;
  v63[1] = v62;
  v64 = [v210 returnNumber];
  if (v64)
  {
    v65 = v64;
    v66 = sub_23875EA80();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v205;
  v70 = v191;
  v71 = (v47 + v48[11]);
  *v71 = v66;
  v71[1] = v68;
  v72 = [v49 customerEmailAddress];
  if (v72)
  {
    v73 = v72;
    v74 = sub_23875EA80();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0;
  }

  v77 = v210;
  v78 = (v47 + v48[12]);
  *v78 = v74;
  v78[1] = v76;
  v79 = [v77 trackingNumber];
  if (v79)
  {
    v80 = v79;
    v81 = sub_23875EA80();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0;
  }

  v84 = (v47 + v48[13]);
  *v84 = v81;
  v84[1] = v83;
  v85 = [v77 carrier];
  if (v85)
  {
    v86 = v85;
    v87 = sub_23875EA80();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  v90 = v190;
  v91 = (v47 + v48[14]);
  *v91 = v87;
  v91[1] = v89;
  v92 = [v77 returnManagementURL];
  if (v92)
  {
    v93 = v92;
    sub_23875B8B0();

    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v95 = v204;
  v96 = 1;
  v204(v90, v94, 1, v69);
  sub_2385309FC(v90, v47 + v189, &qword_27DF0D040, &qword_2387676A0);
  v97 = [v49 &off_278A55290 + 7];
  v98 = [v97 contactURL];

  v99 = v192;
  if (v98)
  {
    sub_23875B8B0();

    v96 = 0;
  }

  v100 = 1;
  v95(v99, v96, 1, v69);
  sub_2385309FC(v99, v47 + v70, &qword_27DF0D040, &qword_2387676A0);
  v101 = [v49 &off_278A55290 + 7];
  v102 = [v101 displayName];

  v103 = sub_2387586A0();
  v105 = v104;

  v106 = (v47 + v48[17]);
  *v106 = v103;
  v106[1] = v105;
  v107 = [v49 returnInfo];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 returnPolicyURL];

    v110 = v194;
    sub_23875B8B0();

    v100 = 0;
    v111 = v195;
    v112 = v196;
  }

  else
  {
    v111 = v195;
    v112 = v196;
    v110 = v194;
  }

  v113 = v193;
  v204(v110, v100, 1, v205);
  sub_2385309FC(v110, v47 + v113, &qword_27DF0D040, &qword_2387676A0);
  v114 = *(v111 + 20);
  v115 = sub_23875BC40();
  v116 = *(*(v115 - 8) + 56);
  v116(&v114[v112], 1, 1, v115);
  v117 = v214;
  v118 = v49;
  v207 = v117;
  v119 = v118;
  v211 = v210;
  v120 = [v119 merchant];
  v121 = [v120 logoName];

  v204 = v114;
  v205 = v116;
  if (v121)
  {
    v122 = sub_23875EA80();
    v124 = v123;
  }

  else
  {
    v122 = 0;
    v124 = 0;
  }

  v125 = v202;
  *v112 = v122;
  v112[1] = v124;
  v126 = v188;
  v127 = v207;
  sub_238757DA0();
  v128 = [v119 merchant];
  v129 = [v128 displayName];

  v130 = sub_2387586A0();
  v132 = v131;

  v133 = (v112 + v126[6]);
  *v133 = v130;
  v133[1] = v132;
  v134 = v119;
  v135 = v211;
  v136 = [v211 initiationDate];
  v214 = v134;
  if (v136)
  {
    v137 = v136;
    v138 = v197;
    sub_23875BBE0();

    v139 = 0;
    v127 = v134;
    v134 = v135;
  }

  else
  {
    v139 = 1;
    v137 = v135;
    v138 = v197;
  }

  v140 = 1;
  v141 = v205;
  v205(v138, v139, 1, v115);
  v142 = v208[6];
  sub_2385309FC(v138, v204 + v112, &qword_27DF12E00, &unk_238763FC0);
  sub_2385A19D4(v112, v209 + v142, type metadata accessor for ReturnDetailsHeader.ViewModel);
  sub_238758D00();
  sub_23875AD60();
  v143 = [v135 dropOffDate];
  v144 = v203;
  if (v143)
  {
    v145 = v143;
    sub_23875BBE0();

    v140 = 0;
  }

  v146 = v214;
  v141(v144, v140, 1, v115);
  v147 = v211;
  v148 = [v211 notes];
  if (v148)
  {
    v149 = v148;
    v150 = [v146 merchant];
    v151 = [v150 displayName];

    v152 = sub_2387586A0();
    v154 = v153;

    v155 = sub_2387586A0();
    v157 = v156;

    *v125 = v152;
    v125[1] = v154;
    v125[2] = v155;
    v125[3] = v157;
    v144 = v203;
    v158 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v158 - 8) + 56))(v125, 0, 1, v158);
  }

  else
  {
    v159 = type metadata accessor for OrderDetailsNote(0);
    (*(*(v159 - 8) + 56))(v125, 1, 1, v159);
  }

  v161 = v208;
  v160 = v209;
  v162 = v198;
  v163 = v200;
  (*(v199 + 32))(v200, v206, v201);
  sub_2384396E4(v144, v163 + *(v162 + 20), &qword_27DF12E00, &unk_238763FC0);
  sub_2384396E4(v125, v163 + *(v162 + 24), &qword_27DF0D5F8, &unk_23876D640);
  sub_2385A19D4(v163, v160 + v161[7], type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  v164 = [v147 statusDescription];
  if (v164)
  {
    v165 = v164;
    v166 = sub_2387586A0();
    v168 = v167;
  }

  else
  {
    v166 = 0;
    v168 = 0;
  }

  v169 = (v160 + v161[8]);
  *v169 = v166;
  v169[1] = v168;
  v170 = [v147 returnLabel];
  if (v170)
  {
    v171 = v170;
    v172 = sub_23875EA80();
    v174 = v173;
  }

  else
  {
    v172 = 0;
    v174 = 0;
  }

  v175 = (v160 + v161[9]);
  *v175 = v172;
  v175[1] = v174;
  v176 = sub_23875A540();
  v177 = v176;
  if (v176 >> 62)
  {
    v178 = sub_23875F3A0();
  }

  else
  {
    v178 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v178)
  {

    v180 = MEMORY[0x277D84F90];
LABEL_67:
    *(v160 + v161[19]) = v180;
    return;
  }

  v215 = MEMORY[0x277D84F90];
  sub_2385FED48(0, v178 & ~(v178 >> 63), 0);
  if ((v178 & 0x8000000000000000) == 0)
  {
    v179 = 0;
    v180 = v215;
    v181 = v187;
    do
    {
      if ((v177 & 0xC000000000000001) != 0)
      {
        v182 = MEMORY[0x23EE63F70](v179, v177);
      }

      else
      {
        v182 = *(v177 + 8 * v179 + 32);
      }

      v183 = v182;
      sub_2387598D0();

      v215 = v180;
      v185 = *(v180 + 16);
      v184 = *(v180 + 24);
      if (v185 >= v184 >> 1)
      {
        sub_2385FED48((v184 > 1), v185 + 1, 1);
        v180 = v215;
      }

      ++v179;
      *(v180 + 16) = v185 + 1;
      (*(v213 + 32))(v180 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v185, v181, v212);
    }

    while (v178 != v179);

    v161 = v208;
    v160 = v209;
    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_2385A0F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v101 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  MEMORY[0x28223BE20](v16);
  v110 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v101 - v23;
  if ((MEMORY[0x23EE5F1E0](a1, a2, v22) & 1) == 0)
  {
    goto LABEL_82;
  }

  v106 = v7;
  v107 = v5;
  v108 = type metadata accessor for ReturnDetails.ViewModel(0);
  v25 = v108[5];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = *(a1 + v25 + 8);
  v29 = *(a2 + v25 + 8);
  if (v28)
  {
    if (!v29 || (*v26 != *v27 || v28 != v29) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v29)
  {
    goto LABEL_82;
  }

  v105 = v4;
  v30 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v26 + *(v30 + 20), v27 + *(v30 + 20)) & 1) == 0)
  {
    goto LABEL_82;
  }

  v31 = *(v30 + 24);
  v32 = *(v26 + v31);
  v33 = *(v26 + v31 + 8);
  v34 = (v27 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_82;
  }

  v35 = v108;
  if (!sub_238541108((a1 + v108[6]), (a2 + v108[6])) || !sub_23869BB40(a1 + v35[7], a2 + v35[7]))
  {
    goto LABEL_82;
  }

  v36 = v35[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v40)
  {
    goto LABEL_82;
  }

  v41 = v35[9];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v45)
  {
    goto LABEL_82;
  }

  if ((sub_238518CAC(*(a1 + v35[10]), *(a2 + v35[10])) & 1) == 0)
  {
    goto LABEL_82;
  }

  v46 = v35[11];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v50)
  {
    goto LABEL_82;
  }

  v51 = v35[12];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v55)
  {
    goto LABEL_82;
  }

  v56 = v35[13];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v60)
  {
    goto LABEL_82;
  }

  v61 = v35[14];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v65)
  {
    goto LABEL_82;
  }

  v66 = v35[15];
  v67 = *(v16 + 48);
  sub_23843981C(a1 + v66, v24, &qword_27DF0D040, &qword_2387676A0);
  v104 = v67;
  sub_23843981C(a2 + v66, &v24[v67], &qword_27DF0D040, &qword_2387676A0);
  v68 = v107 + 48;
  v69 = *(v107 + 48);
  v70 = v105;
  v71 = v69(v24, 1, v105);
  v102 = v69;
  v103 = v68;
  if (v71 == 1)
  {
    if (v69(&v24[v104], 1, v70) == 1)
    {
      sub_238439884(v24, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_65;
    }

LABEL_63:
    v72 = v24;
LABEL_81:
    sub_238439884(v72, &qword_27DF0B0D8, &qword_238772730);
    goto LABEL_82;
  }

  sub_23843981C(v24, v15, &qword_27DF0D040, &qword_2387676A0);
  if (v69(&v24[v104], 1, v70) == 1)
  {
    (*(v107 + 8))(v15, v105);
    goto LABEL_63;
  }

  v73 = v107;
  v74 = v105;
  (*(v107 + 32))(v106, &v24[v104], v105);
  sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LODWORD(v104) = sub_23875E9E0();
  v75 = *(v73 + 8);
  v75(v106, v74);
  v75(v15, v74);
  sub_238439884(v24, &qword_27DF0D040, &qword_2387676A0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_65:
  v76 = v108[16];
  v77 = *(v16 + 48);
  sub_23843981C(a1 + v76, v20, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v76, &v20[v77], &qword_27DF0D040, &qword_2387676A0);
  if (v102(v20, 1, v105) != 1)
  {
    sub_23843981C(v20, v12, &qword_27DF0D040, &qword_2387676A0);
    if (v102(&v20[v77], 1, v105) != 1)
    {
      v79 = v106;
      v78 = v107;
      v80 = v105;
      (*(v107 + 32))(v106, &v20[v77], v105);
      sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v81 = sub_23875E9E0();
      v82 = *(v78 + 8);
      v82(v79, v80);
      v82(v12, v80);
      sub_238439884(v20, &qword_27DF0D040, &qword_2387676A0);
      if ((v81 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_72;
    }

    (*(v107 + 8))(v12, v105);
    goto LABEL_70;
  }

  if (v102(&v20[v77], 1, v105) != 1)
  {
LABEL_70:
    v72 = v20;
    goto LABEL_81;
  }

  sub_238439884(v20, &qword_27DF0D040, &qword_2387676A0);
LABEL_72:
  v83 = v108[17];
  v84 = *(a1 + v83);
  v85 = *(a1 + v83 + 8);
  v86 = (a2 + v83);
  if ((v84 != *v86 || v85 != v86[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_82;
  }

  v87 = v108[18];
  v88 = *(v16 + 48);
  v89 = v110;
  sub_23843981C(a1 + v87, v110, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v87, v89 + v88, &qword_27DF0D040, &qword_2387676A0);
  if (v102(v89, 1, v105) == 1)
  {
    if (v102((v110 + v88), 1, v105) == 1)
    {
      sub_238439884(v110, &qword_27DF0D040, &qword_2387676A0);
LABEL_85:
      v91 = sub_238519644(*(a1 + v108[19]), *(a2 + v108[19]));
      return v91 & 1;
    }

    goto LABEL_80;
  }

  v90 = v110;
  sub_23843981C(v110, v109, &qword_27DF0D040, &qword_2387676A0);
  if (v102((v90 + v88), 1, v105) == 1)
  {
    (*(v107 + 8))(v109, v105);
LABEL_80:
    v72 = v110;
    goto LABEL_81;
  }

  v94 = v106;
  v93 = v107;
  v95 = v110;
  v96 = v110 + v88;
  v97 = v105;
  (*(v107 + 32))(v106, v96, v105);
  sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v98 = v109;
  v99 = sub_23875E9E0();
  v100 = *(v93 + 8);
  v100(v94, v97);
  v100(v98, v97);
  sub_238439884(v95, &qword_27DF0D040, &qword_2387676A0);
  if (v99)
  {
    goto LABEL_85;
  }

LABEL_82:
  v91 = 0;
  return v91 & 1;
}

uint64_t sub_2385A19D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A1A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385A1A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A1B04(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetailsContentsSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385A1B68()
{
  result = qword_27DF0F288;
  if (!qword_27DF0F288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F280, &qword_238772480);
    sub_2385A1C20();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F288);
  }

  return result;
}

unint64_t sub_2385A1C20()
{
  result = qword_27DF0F290;
  if (!qword_27DF0F290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F298, &qword_238772488);
    sub_2385A1CD8();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F290);
  }

  return result;
}

unint64_t sub_2385A1CD8()
{
  result = qword_27DF0F2A0;
  if (!qword_27DF0F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2A8, &qword_238772490);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2A0);
  }

  return result;
}

unint64_t sub_2385A1D9C()
{
  result = qword_27DF0F2C0;
  if (!qword_27DF0F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2B8, &qword_238772498);
    sub_2385A1E54();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2C0);
  }

  return result;
}

unint64_t sub_2385A1E54()
{
  result = qword_27DF0F2C8;
  if (!qword_27DF0F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2D0, &qword_2387724A0);
    sub_2385A1F0C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2C8);
  }

  return result;
}

unint64_t sub_2385A1F0C()
{
  result = qword_27DF0F2D8;
  if (!qword_27DF0F2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2E0, &qword_2387724A8);
    sub_23843A3E8(&qword_27DF0F2E8, &qword_27DF0F2F0, &qword_2387724B0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2D8);
  }

  return result;
}

unint64_t sub_2385A1FD0()
{
  result = qword_27DF0F308;
  if (!qword_27DF0F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F300, &qword_2387724B8);
    sub_2385A2088();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F308);
  }

  return result;
}

unint64_t sub_2385A2088()
{
  result = qword_27DF0F310;
  if (!qword_27DF0F310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F318, &qword_2387724C0);
    sub_2385A2140();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F310);
  }

  return result;
}

unint64_t sub_2385A2140()
{
  result = qword_27DF0F320;
  if (!qword_27DF0F320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F328, &qword_2387724C8);
    sub_23843A3E8(&qword_27DF0F330, &qword_27DF0F338, &qword_2387724D0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F320);
  }

  return result;
}

unint64_t sub_2385A2204()
{
  result = qword_27DF0F350;
  if (!qword_27DF0F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F348, &qword_2387724D8);
    sub_2385A22BC();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F350);
  }

  return result;
}

unint64_t sub_2385A22BC()
{
  result = qword_27DF0F358;
  if (!qword_27DF0F358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F360, &qword_2387724E0);
    sub_2385A2374();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F358);
  }

  return result;
}

unint64_t sub_2385A2374()
{
  result = qword_27DF0F368;
  if (!qword_27DF0F368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F370, &qword_2387724E8);
    sub_2385A2404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F368);
  }

  return result;
}

unint64_t sub_2385A2404()
{
  result = qword_27DF0F378;
  if (!qword_27DF0F378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F380, &qword_2387724F0);
    sub_2385A24BC();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F378);
  }

  return result;
}

unint64_t sub_2385A24BC()
{
  result = qword_27DF0F388;
  if (!qword_27DF0F388)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F390, &qword_2387724F8);
    sub_238532714(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F388);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v34 = type metadata accessor for ReturnDetails(0);
  v40 = *(*(v34 - 8) + 80);
  v37 = *(*(v34 - 8) + 64);
  v39 = sub_23875B940();
  v1 = *(v39 - 8);
  v35 = *(v1 + 80);
  v36 = *(v1 + 64);
  v41 = v0;
  v38 = (v40 + 16) & ~v40;
  v2 = v0 + v38;
  v3 = sub_23875A710();
  (*(*(v3 - 8) + 8))(v0 + v38, v3);
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  v5 = v0 + v38 + v4[5];

  v6 = type metadata accessor for MerchantImage.ViewModel(0);
  v7 = *(v6 + 20);
  v8 = sub_23875AF90();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);

  v10 = v2 + v4[6];

  v9(v10 + *(v6 + 20), v8);

  v11 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v12 = sub_23875BC40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  v15 = v2 + v4[7];
  v16 = sub_23875AD40();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v18 = *(v17 + 20);
  if (!v14(v15 + v18, 1, v12))
  {
    (*(v13 + 8))(v15 + v18, v12);
  }

  v19 = v15 + *(v17 + 24);
  v20 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v23 = sub_23875AD80();
      (*(*(v23 - 8) + 8))(v19 + v22, v23);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v24 = v4[15];
  v25 = *(v1 + 48);
  if (!v25(v2 + v24, 1, v39))
  {
    (*(v1 + 8))(v2 + v24, v39);
  }

  v26 = v4[16];
  if (!v25(v2 + v26, 1, v39))
  {
    (*(v1 + 8))(v2 + v26, v39);
  }

  v27 = v4[18];
  if (!v25(v2 + v27, 1, v39))
  {
    (*(v1 + 8))(v2 + v27, v39);
  }

  v28 = *(v34 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_23875C6D0();
    (*(*(v29 - 8) + 8))(v2 + v28, v29);
  }

  else
  {
  }

  v30 = *(v34 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_23875C880();
    (*(*(v31 - 8) + 8))(v2 + v30, v31);
  }

  else
  {
  }

  v32 = (v38 + v37 + v35) & ~v35;
  (*(v1 + 8))(v41 + v32, v39);

  return MEMORY[0x2821FE8E8](v41, v32 + v36, v40 | v35 | 7);
}

double sub_2385A2C08(uint64_t a1)
{
  v3 = *(type metadata accessor for ReturnDetails(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_23875B940() - 8);
  return sub_23859EDA4(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

void sub_2385A2D50(uint64_t a1)
{
  type metadata accessor for OrderDetailsShippingAddress.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23859FD98(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385A2E20(uint64_t a1)
{
  sub_23859FD98(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23875AD80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2385A2EC8()
{
  v1 = sub_23875AD80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x277CC8440] || v6 == *MEMORY[0x277CC8438])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v7 = qword_2814F1B90;
    v8 = sub_23875EA50();
    v9 = sub_23875EA50();
    v10 = sub_23875EA50();
    v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

    v12 = sub_23875EA80();
    return v12;
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD000000000000016, 0x800000023878BC10);
    sub_23875F510();
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2385A3168(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (v6)
    {
      v7 = *a1 == *a2 && v5 == v6;
      if (v7 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:

  return sub_23875AD70();
}

void sub_2385A3228(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3D0, &qword_2387725E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3D8, &qword_2387725E8);
  MEMORY[0x28223BE20](v65);
  v68 = &v52 - v7;
  v67 = sub_23875C950();
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderDetailsShippingAddress(0);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3E0, &qword_2387725F0);
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v52 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3E8, &qword_2387725F8);
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3F0, &qword_238772600);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v64 = &v52 - v19;
  v20 = v2[1];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = *v2;
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v53 = v17;
    v54 = v16;
    v55 = v4;
    v56 = a1;
    v70 = 10;
    v71 = 0xE100000000000000;
    MEMORY[0x28223BE20](v15);
    *(&v52 - 2) = &v70;
    swift_bridgeObjectRetain_n();
    v24 = sub_2385A4F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_2385A5308, (&v52 - 4), v21, v20, v23);
    if (*(v24 + 16) < 2uLL)
    {

      *v6 = sub_23875D030();
      *(v6 + 1) = 0x4000000000000000;
      v6[16] = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3F8, &unk_238772608);
      sub_2385A4AA8(v21, v20, &v6[*(v36 + 44)]);

      sub_23843981C(v6, v68, &qword_27DF0F3D0, &qword_2387725E0);
      swift_storeEnumTagMultiPayload();
      v37 = sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0, MEMORY[0x277CDF028]);
      v38 = sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v70 = v63;
      v71 = v67;
      v72 = v37;
      v73 = v38;
      swift_getOpaqueTypeConformance2();
      sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0, MEMORY[0x277CE1198]);
      v39 = v64;
      sub_23875D1B0();
      sub_238439884(v6, &qword_27DF0F3D0, &qword_2387725E0);
LABEL_14:
      v51 = v56;
      sub_238413E14(v39, v56);
      (*(v53 + 56))(v51, 0, 1, v54);
      return;
    }

    v25 = v24;
    v26 = v2 + *(v9 + 20);
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v70) = v27;
    v71 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    if (v69 != 1)
    {
LABEL_13:

      sub_2385A5360(v2, &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v41 = swift_allocObject();
      v42 = sub_2385A53C4(&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
      MEMORY[0x28223BE20](v42);
      *(&v52 - 4) = v2;
      *(&v52 - 3) = v21;
      *(&v52 - 2) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F410, &qword_238772618);
      sub_23843A3E8(&qword_27DF0F418, &qword_27DF0F410, &qword_238772618, MEMORY[0x277CE1138]);
      sub_23875E200();

      v43 = v60;
      sub_23875C940();
      v44 = sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0, MEMORY[0x277CDF028]);
      v45 = sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v46 = v59;
      v47 = v63;
      v48 = v67;
      sub_23875DB30();
      (*(v62 + 8))(v43, v48);
      (*(v58 + 8))(v12, v47);
      v49 = v61;
      v50 = v66;
      (*(v61 + 16))(v68, v46, v66);
      swift_storeEnumTagMultiPayload();
      v70 = v47;
      v71 = v48;
      v72 = v44;
      v73 = v45;
      swift_getOpaqueTypeConformance2();
      sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0, MEMORY[0x277CE1198]);
      v39 = v64;
      sub_23875D1B0();
      (*(v49 + 8))(v46, v50);
      goto LABEL_14;
    }

    if (v25[2])
    {
      v29 = v25;
      v30 = v25[4];
      v31 = v25[5];
      v32 = v25[6];
      v33 = v29[7];

      v21 = MEMORY[0x23EE635F0](v30, v31, v32, v33);
      v20 = v34;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v35 = *(v17 + 56);

    v35(a1, 1, 1, v18);
  }
}

double sub_2385A3B9C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderDetailsShippingAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v1 = sub_23875E1B0();
  if (v3 == 1)
  {
    MEMORY[0x28223BE20](v1);
    sub_23875E500();
    sub_23875C6F0();
  }

  return result;
}

double sub_2385A3CF8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderDetailsShippingAddress(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();

  return result;
}

double sub_2385A3E18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_23875CE60();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F420, &qword_238772620);
  sub_2385A3F04(a1, a2, a3, a4 + *(v8 + 44));

  return result;
}

void sub_2385A3F04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a3;
  v50 = a4;
  v5 = sub_23875CE20();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F428, &qword_238772628);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F430, &qword_238772630);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F438, &qword_238772638);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_23875ED50();
  v48 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_23875D030();
  *(v23 + 1) = 0x4000000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F440, &qword_238772640);
  sub_2385A446C(a1, v45, v46, &v23[*(v24 + 44)]);
  v25 = &v23[*(v18 + 52)];
  strcpy(v25, "textContainer");
  *(v25 + 7) = -4864;
  v26 = (a1 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20));
  v27 = *v26;
  v28 = *(v26 + 1);
  v52 = v27;
  v53 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v29 = 1;
  v30 = v49;
  if (v51 == 1)
  {
    sub_23875D2B0();
    sub_23875E590();
    v32 = v31;
    v34 = v33;
    v35 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F450, &qword_238772650) + 36)];
    *v35 = 0x3FF921FB54442D18;
    *(v35 + 1) = v32;
    *(v35 + 2) = v34;
    sub_23875CE10();
    v36 = v43;
    v37 = v44;
    (*(v43 + 16))(v42, v9, v44);
    sub_2385A5494(&unk_27DF0C340, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v38 = sub_23875C5E0();
    (*(v36 + 8))(v9, v37);
    *&v11[*(v30 + 36)] = v38;
    sub_2385A54DC(v11, v17);
    v29 = 0;
  }

  (*(v47 + 56))(v17, v29, 1, v30);
  sub_23843981C(v23, v20, &qword_27DF0F438, &qword_238772638);
  sub_23843981C(v17, v14, &qword_27DF0F430, &qword_238772630);
  v39 = v50;
  sub_23843981C(v20, v50, &qword_27DF0F438, &qword_238772638);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F448, &qword_238772648);
  v41 = v39 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_23843981C(v14, v39 + *(v40 + 64), &qword_27DF0F430, &qword_238772630);
  sub_238439884(v17, &qword_27DF0F430, &qword_238772630);
  sub_238439884(v23, &qword_27DF0F438, &qword_238772638);
  sub_238439884(v14, &qword_27DF0F430, &qword_238772630);
  sub_238439884(v20, &qword_27DF0F438, &qword_238772638);
}

double sub_2385A446C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v59 = sub_23875D510();
  v7 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F458, &qword_238772658);
  MEMORY[0x28223BE20](v61);
  v62 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v50[-v12];
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = sub_2385A2EC8();
  v72 = v14;
  sub_2384397A8(v71, v14, v15);
  v56 = sub_23875DAA0();
  v55 = v16;
  v52 = a1;
  v18 = v17;
  v57 = v19;
  v58 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(aP_6);
  LOBYTE(v71) = v18 & 1;
  v20 = v18 & 1;
  v51 = v18 & 1;
  v53 = sub_23875D440();
  v71 = a2;
  v72 = a3;

  v21 = sub_23875DAA0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_23875D420();
  v71 = v21;
  v72 = v23;
  v73 = v25 & 1;
  v75 = v27;
  v76 = 0x5473736572646461;
  v77 = 0xEB00000000747865;
  LODWORD(v78) = v28;
  sub_23875D500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F460, &qword_238772690);
  sub_2385A554C();
  v29 = v59;
  sub_23875DC10();
  (*(v7 + 8))(v9, v29);
  sub_2384397FC(v21, v23, v25 & 1);

  v30 = sub_23875E4D0();
  v31 = v52 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v71) = v32;
  v72 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v34 = v65;
  v35 = &v13[*(v61 + 9)];
  *v35 = v30;
  v35[8] = v34;
  v36 = v62;
  sub_23843981C(v13, v62, &qword_27DF0F458, &qword_238772658);
  v37 = v56;
  *&v65 = v56;
  v61 = v13;
  v38 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v20;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  v39 = v57;
  *(&v66 + 1) = v57;
  *&v67 = 0x69546F5470696873;
  *(&v67 + 1) = 0xEB00000000656C74;
  v40 = KeyPath;
  v41 = v58;
  *&v68 = KeyPath;
  *(&v68 + 1) = v58;
  v42 = v53;
  LODWORD(v69) = v53;
  *(&v69 + 1) = sub_2385A4A04;
  v70 = 0;
  v43 = v67;
  v44 = v68;
  v45 = v69;
  v46 = v60;
  *(v60 + 80) = 0;
  v46[3] = v44;
  v46[4] = v45;
  v47 = v65;
  v46[1] = v66;
  v46[2] = v43;
  *v46 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F480, &qword_2387726A8);
  sub_23843981C(v36, v46 + *(v48 + 48), &qword_27DF0F458, &qword_238772658);
  sub_23843981C(&v65, &v71, &qword_27DF0F488, &unk_2387726B0);
  sub_238439884(v61, &qword_27DF0F458, &qword_238772658);
  sub_238439884(v36, &qword_27DF0F458, &qword_238772658);
  v71 = v37;
  v72 = v38;
  v73 = v51;
  *v74 = *v64;
  *&v74[3] = *&v64[3];
  v75 = v39;
  v76 = 0x69546F5470696873;
  v77 = 0xEB00000000656C74;
  v78 = v40;
  v79 = v41;
  v80 = v42;
  v81 = sub_2385A4A04;
  v82 = 0;
  sub_238439884(&v71, &qword_27DF0F488, &unk_2387726B0);

  return result;
}

double sub_2385A4A04()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();

  return result;
}

double sub_2385A4AA8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v54 = a1;
  v55 = a2;
  v63 = a3;
  v3 = sub_23875D510();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA48, &qword_238770B30);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v49 - v8;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v65 = sub_2385A2EC8();
  v66 = v9;
  sub_2384397A8(v65, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D7F0();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  LODWORD(v65) = sub_23875D440();
  v50 = sub_23875DA20();
  v51 = v21;
  v52 = v22;
  v53 = v23;
  sub_2384397FC(v16, v18, v20 & 1);

  v65 = v54;
  v66 = v55;

  v24 = sub_23875DAA0();
  v26 = v25;
  v28 = v27;
  LODWORD(v65) = sub_23875D420();
  v29 = sub_23875DA20();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2384397FC(v24, v26, v28 & 1);

  v65 = v29;
  v66 = v31;
  v67 = v33 & 1;
  v68 = v35;
  v36 = v56;
  sub_23875D500();
  v37 = v64;
  v38 = v58;
  sub_23875DC10();
  (*(v57 + 8))(v36, v38);
  sub_2384397FC(v29, v31, v33 & 1);

  v40 = v60;
  v39 = v61;
  v41 = *(v61 + 16);
  v42 = v62;
  v41(v60, v37, v62);
  v43 = v63;
  v44 = v50;
  v45 = v51;
  *v63 = v50;
  v43[1] = v45;
  LOBYTE(v24) = v52 & 1;
  *(v43 + 16) = v52 & 1;
  v43[3] = v53;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F490, &qword_2387726C0);
  v41(v43 + *(v46 + 48), v40, v42);
  sub_23843980C(v44, v45, v24);
  v47 = *(v39 + 8);

  v47(v64, v42);
  v47(v40, v42);
  sub_2384397FC(v44, v45, v24);

  return result;
}

unint64_t sub_2385A4F48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_23875EC00();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2384988E0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2384988E0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_23875EBE0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_23875EB50();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_23875EB50();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_23875EC00();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2384988E0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_23875EC00();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2384988E0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2384988E0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_23875EB50();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2385A5308(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23875F630() & 1;
  }
}

uint64_t sub_2385A5360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385A53C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2385A5428()
{
  v1 = *(type metadata accessor for OrderDetailsShippingAddress(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385A3B9C(v2);
}

uint64_t sub_2385A5494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385A54DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F428, &qword_238772628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385A554C()
{
  result = qword_27DF0F468;
  if (!qword_27DF0F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F460, &qword_238772690);
    sub_23843A3E8(&qword_27DF0F470, &qword_27DF0F478, &unk_238772698, MEMORY[0x277CE1148]);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F468);
  }

  return result;
}

unint64_t sub_2385A564C()
{
  result = qword_27DF0F498;
  if (!qword_27DF0F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F4A0, &qword_2387726C8);
    sub_2385A56D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F498);
  }

  return result;
}

unint64_t sub_2385A56D0()
{
  result = qword_27DF0F4A8;
  if (!qword_27DF0F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F3F0, &qword_238772600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F3E0, &qword_2387725F0);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0, MEMORY[0x277CDF028]);
    sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F4A8);
  }

  return result;
}

void sub_2385A5890(uint64_t a1)
{
  sub_23875AE10();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_23875AD80();
      if (v3 <= 0x3F)
      {
        sub_2385A8CCC(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2385A8C68(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2385A8C68(319, &qword_27DF0F4C0, type metadata accessor for OrderDetailsShippingTracking.ViewModel, MEMORY[0x277D83D88]);
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

uint64_t sub_2385A5AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_2385A5B7C()
{
  v0 = sub_23875AE10();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v24 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = sub_23875ACE0();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = *(type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0) + 20);
  sub_23875B0B0();
  v16 = (*(v9 + 88))(v14, v8);
  if (v16 == *MEMORY[0x277CC83B8])
  {
LABEL_13:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  if (v16 != *MEMORY[0x277CC83A8])
  {
    if (v16 != *MEMORY[0x277CC83B0])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
      sub_23875B0B0();
      sub_23875F510();
      v21 = *(v9 + 8);
      v18 = v9 + 8;
      v21(v11, v8);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  (*(v9 + 96))(v14, v8);
  v17 = v25;
  (*(v25 + 32))(v7, v14, v5);
  sub_23875ACD0();
  v15 = v26;
  v18 = v27;
  v19 = (*(v26 + 88))(v4, v27);
  if (v19 == *MEMORY[0x277CC8468] || v19 == *MEMORY[0x277CC8458] || v19 == *MEMORY[0x277CC8480] || v19 == *MEMORY[0x277CC8460])
  {
    (*(v17 + 8))(v7, v5);
    return 1;
  }

  if (v19 != *MEMORY[0x277CC8490] && v19 != *MEMORY[0x277CC8478] && v19 != *MEMORY[0x277CC8470] && v19 != *MEMORY[0x277CC8488])
  {
    while (1)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000019, 0x800000023878BD60);
      v22 = v24;
      sub_23875ACD0();
      sub_23875F510();
      v23 = *(v15 + 8);
      v15 += 8;
      v23(v22, v18);
LABEL_18:
      sub_23875F520();
      __break(1u);
    }
  }

  (*(v17 + 8))(v7, v5);
  return 0;
}

uint64_t sub_2385A609C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v8 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  sub_23875B0B0();
  v9 = (*(v2 + 88))(v7, v1);
  if (v9 == *MEMORY[0x277CC83B8])
  {
    v10 = 40;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277CC83A8])
  {
    v10 = 44;
LABEL_5:
    v11 = *(v0 + *(v8 + v10) + 8);
    v12 = *(v2 + 8);

    v12(v7, v1);
    if (!v11)
    {
      return 0;
    }

    v13 = *(v0 + *(v8 + 48));

    return v13;
  }

  if (v9 == *MEMORY[0x277CC83B0])
  {
    (*(v2 + 8))(v7, v1);
    return 0;
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875B0B0();
  sub_23875F510();
  (*(v2 + 8))(v4, v1);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385A6350@<X0>(uint64_t a1@<X8>)
{
  sub_2385A8D80(v1, a1, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  v3 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath(aX_7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a1 + v5) = swift_getKeyPath(asc_2387727C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v3[7];
  *v6 = swift_getKeyPath(byte_2387727F8);
  *(v6 + 8) = 0;
  v7 = a1 + v3[8];
  result = swift_getKeyPath(byte_238772820);
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_2385A644C@<X0>(uint64_t a1@<X8>)
{
  v142 = a1;
  v2 = type metadata accessor for OrderDetailsShippingTracking(0);
  MEMORY[0x28223BE20](v2 - 8);
  v125 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v124 = &v122 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  MEMORY[0x28223BE20](v5 - 8);
  v136 = &v122 - v6;
  v135 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v123 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F510, &unk_2387728D0);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v122 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F518, &unk_238781480);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = &v122 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F520, &unk_2387728E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v128 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v122 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F528, &unk_238781490);
  MEMORY[0x28223BE20](v18 - 8);
  v126 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v143 = &v122 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F530, &qword_2387728F0);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F538, &qword_2387728F8);
  MEMORY[0x28223BE20](v27);
  v29 = &v122 - v28;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F540, &qword_238772900);
  v30 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v32 = &v122 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F548, &qword_238772908);
  MEMORY[0x28223BE20](v33);
  v133 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v122 - v36;
  MEMORY[0x28223BE20](v38);
  v146 = &v122 - v39;
  *v29 = sub_23875D030();
  *(v29 + 1) = 0x4028000000000000;
  v29[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F550, &qword_238772910);
  sub_2385A7494(v1, &v29[*(v40 + 44)]);
  v41 = sub_2385A5B7C();
  v147 = v26;
  v148 = v1;
  v145 = v13;
  v144 = v14;
  if ((v41 & 1) == 0)
  {
    v42 = sub_2385A609C();
    if (v43)
    {
      sub_23855712C(v42, v43, v44, v45);
    }
  }

  sub_23875C580();
  sub_23843A3E8(&qword_27DF0F558, &qword_27DF0F538, &qword_2387728F8, MEMORY[0x277CE1198]);
  sub_23875DCA0();
  sub_238439884(v29, &qword_27DF0F538, &qword_2387728F8);
  v46 = v148;
  v47 = sub_2385A784C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  (*(v30 + 32))(v37, v32, v130);
  v54 = &v37[*(v33 + 36)];
  *v54 = v47;
  *(v54 + 1) = v49;
  *(v54 + 2) = v51;
  *(v54 + 3) = v53;
  v54[32] = 0;
  sub_2384396E4(v37, v146, &qword_27DF0F548, &qword_238772908);
  v55 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v56 = v55;
  v57 = (v46 + *(v55 + 28));
  v58 = v57[1];
  if (v58)
  {
    v59 = *v57;
    v130 = v55;
    v60 = (v46 + *(v55 + 32));
    v61 = v60[1];
    if (v61)
    {
      v122 = v59;
      v62 = *v60;
      v63 = v143;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v64 = qword_2814F1B90;
      v65 = sub_23875EA50();
      v66 = sub_23875EA50();
      v67 = sub_23875EA50();
      v68 = [v64 localizedStringForKey:v65 value:v66 table:v67];

      v69 = sub_23875EA80();
      v71 = v70;

      *&v149 = v69;
      *(&v149 + 1) = v71;
      *&v150 = v62;
      *(&v150 + 1) = v61;
      MEMORY[0x28223BE20](v72);

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
      sub_2385A8F14(v73, v74, v75);
      sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
      sub_23875DB50();

      v76 = 0;
      v59 = v122;
    }

    else
    {
      v76 = 1;
      v63 = v143;
    }

    (*(v144 + 56))(v63, v76, 1, v145);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v80 = qword_2814F1B90;
    v81 = sub_23875EA50();
    v82 = sub_23875EA50();
    v83 = sub_23875EA50();
    v84 = [v80 localizedStringForKey:v81 value:v82 table:v83];

    v85 = sub_23875EA80();
    v87 = v86;

    v122 = &v122;
    *&v149 = v85;
    *(&v149 + 1) = v87;
    *&v150 = v59;
    *(&v150 + 1) = v58;
    MEMORY[0x28223BE20](v88);
    v46 = v148;

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_2385A8F14(v89, v90, v91);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    v92 = v127;
    sub_23875DB50();

    v93 = v63;
    v94 = v126;
    sub_23843981C(v93, v126, &qword_27DF0F528, &unk_238781490);
    v95 = v144;
    v96 = *(v144 + 16);
    v97 = v128;
    v98 = v145;
    v96(v128, v92, v145);
    v99 = v129;
    sub_23843981C(v94, v129, &qword_27DF0F528, &unk_238781490);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F570, &qword_238772928);
    v96((v99 + *(v100 + 48)), v97, v98);
    v101 = *(v95 + 8);
    v101(v92, v98);
    sub_238439884(v143, &qword_27DF0F528, &unk_238781490);
    v101(v97, v98);
    sub_238439884(v94, &qword_27DF0F528, &unk_238781490);
    v102 = v99;
    v78 = v147;
    sub_2384396E4(v102, v147, &qword_27DF0F518, &unk_238781480);
    v77 = 0;
    v79 = v136;
    v56 = v130;
  }

  else
  {
    v77 = 1;
    v78 = v147;
    v79 = v136;
  }

  (*(v131 + 56))(v78, v77, 1, v132);
  sub_23843981C(v46 + *(v56 + 52), v79, &qword_27DF0D5F0, &unk_23876D630);
  v103 = (*(v134 + 48))(v79, 1, v135);
  v104 = v138;
  if (v103 == 1)
  {
    sub_238439884(v79, &qword_27DF0D5F0, &unk_23876D630);
    v105 = 1;
    v106 = v141;
  }

  else
  {
    v107 = v123;
    sub_2385A8DE8(v79, v123, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v108 = v125;
    sub_2385A8D80(v107, v125, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2385A9624(v107, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v109 = v108;
    v110 = v124;
    sub_2385A8DE8(v109, v124, type metadata accessor for OrderDetailsShippingTracking);
    v106 = v141;
    v111 = (v110 + *(v141 + 36));
    v112 = v154;
    v111[4] = v153;
    v111[5] = v112;
    v111[6] = v155;
    v113 = v150;
    *v111 = v149;
    v111[1] = v113;
    v114 = v152;
    v111[2] = v151;
    v111[3] = v114;
    sub_2385A8E50(v110, v104);
    v105 = 0;
  }

  (*(v139 + 56))(v104, v105, 1, v106);
  v115 = v146;
  v116 = v133;
  sub_23843981C(v146, v133, &qword_27DF0F548, &qword_238772908);
  v117 = v137;
  sub_23843981C(v78, v137, &qword_27DF0F530, &qword_2387728F0);
  v118 = v140;
  sub_23843981C(v104, v140, &qword_27DF0F510, &unk_2387728D0);
  v119 = v142;
  sub_23843981C(v116, v142, &qword_27DF0F548, &qword_238772908);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F560, &unk_238772918);
  sub_23843981C(v117, v119 + *(v120 + 48), &qword_27DF0F530, &qword_2387728F0);
  sub_23843981C(v118, v119 + *(v120 + 64), &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v104, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v147, &qword_27DF0F530, &qword_2387728F0);
  sub_238439884(v115, &qword_27DF0F548, &qword_238772908);
  sub_238439884(v118, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v117, &qword_27DF0F530, &qword_2387728F0);
  return sub_238439884(v116, &qword_27DF0F548, &qword_238772908);
}

double sub_2385A7494@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_23875AE10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderDetailsShippingStatusLabel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  sub_2385A8D80(a1 + *(v13 + 20), v12, type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel);
  v14 = v7[5];
  *&v12[v14] = swift_getKeyPath(aH_7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v15 = v7[6];
  *&v12[v15] = swift_getKeyPath(byte_238772970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
  swift_storeEnumTagMultiPayload();
  v16 = v7[7];
  *&v12[v16] = swift_getKeyPath(byte_2387729A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
  swift_storeEnumTagMultiPayload();
  if (sub_2385A5B7C())
  {
    (*(v4 + 16))(v6, a1, v3);
    v17 = sub_2386D14F8(v6);
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v21 = 1;
  }

  v22 = sub_2385A609C();
  v26 = v23;
  if (v23)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  if (v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  if (v23)
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  sub_2385A8D80(v12, v9, type metadata accessor for OrderDetailsShippingStatusLabel);
  v30 = v9;
  v37 = v9;
  v31 = v39;
  sub_2385A8D80(v30, v39, type metadata accessor for OrderDetailsShippingStatusLabel);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F578, &qword_2387729E0);
  v33 = (v31 + *(v32 + 48));
  *v33 = v17;
  v33[1] = v19;
  v33[2] = v21;
  v34 = (v31 + *(v32 + 64));
  *v34 = v27;
  v34[1] = v26;
  v34[2] = v28;
  v34[3] = v29;
  sub_2385A9610(v17, v19, v21);
  sub_2385570E8(v27, v26, v28, v29);
  sub_2385A9624(v12, type metadata accessor for OrderDetailsShippingStatusLabel);
  sub_23855712C(v27, v26, v28, v29);
  sub_2385A9684(v17, v19, v21);
  sub_2385A9624(v37, type metadata accessor for OrderDetailsShippingStatusLabel);

  return result;
}

double sub_2385A784C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_23875C880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  sub_2384D5138(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF9D8], v4);
  sub_23875C870();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  v12 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  if (!*(v0 + *(v12 + 28) + 8))
  {
    sub_23843981C(v0 + *(v12 + 52), v3, &qword_27DF0D5F0, &unk_23876D630);
    v13 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
    (*(*(v13 - 8) + 48))(v3, 1, v13);
    sub_238439884(v3, &qword_27DF0D5F0, &unk_23876D630);
  }

  if ((sub_2385A5B7C() & 1) == 0)
  {
    v14 = sub_2385A609C();
    if (v15)
    {
      sub_23855712C(v14, v15, v16, v17);
    }
  }

  return 12.0;
}

double sub_2385A7AD4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

double sub_2385A7C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17[2] = a6;
  v17[3] = a7;
  v17[0] = a2;
  v17[1] = a8;
  v10 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385A8D80(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsShippingFulfillment_iOS);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_2385A8DE8(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for OrderDetailsShippingFulfillment_iOS);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v17[0];
  v15[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

void sub_2385A7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1 + *(type metadata accessor for OrderDetailsShippingFulfillment_iOS(0) + 28);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;

    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v10, 0);
    (*(v6 + 8))(v8, v5);
  }

  v12 = [objc_opt_self() generalPasteboard];
  v13 = sub_23875EA50();
  [v12 setString_];
}

double sub_2385A809C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

BOOL sub_2385A823C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F4C8, &qword_238772728);
  MEMORY[0x28223BE20](v9);
  v70 = &v63 - v10;
  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  if ((sub_23875AE00() & 1) == 0)
  {
    return 0;
  }

  v66 = v6;
  v21 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  if ((sub_2385ABE60(a1 + v21[5], a2 + v21[5]) & 1) == 0 || (sub_23875AD70() & 1) == 0)
  {
    return 0;
  }

  v22 = v21[7];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = v21[8];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v65 = v21[9];
  v32 = *(v18 + 48);
  sub_23843981C(a1 + v65, v20, &qword_27DF0D040, &qword_2387676A0);
  v33 = a2 + v65;
  v65 = v32;
  sub_23843981C(v33, &v20[v32], &qword_27DF0D040, &qword_2387676A0);
  v64 = *(v12 + 48);
  if (v64(v20, 1, v11) != 1)
  {
    sub_23843981C(v20, v17, &qword_27DF0D040, &qword_2387676A0);
    if (v64(&v20[v65], 1, v11) != 1)
    {
      (*(v12 + 32))(v14, &v20[v65], v11);
      sub_2385A8D1C(&qword_27DF0B0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      LODWORD(v65) = sub_23875E9E0();
      v38 = *(v12 + 8);
      v38(v14, v11);
      v38(v17, v11);
      sub_238439884(v20, &qword_27DF0D040, &qword_2387676A0);
      if ((v65 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    (*(v12 + 8))(v17, v11);
LABEL_23:
    v34 = &qword_27DF0B0D8;
    v35 = &qword_238772730;
    v36 = v20;
LABEL_24:
    sub_238439884(v36, v34, v35);
    return 0;
  }

  if (v64(&v20[v65], 1, v11) != 1)
  {
    goto LABEL_23;
  }

  sub_238439884(v20, &qword_27DF0D040, &qword_2387676A0);
LABEL_28:
  v39 = v21[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = v21[11];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v49 = v21[12];
  v50 = *(a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  if ((v50 != *v52 || v51 != v52[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v53 = v21[13];
  v54 = *(v9 + 48);
  v55 = a1 + v53;
  v56 = v70;
  sub_23843981C(v55, v70, &qword_27DF0D5F0, &unk_23876D630);
  sub_23843981C(a2 + v53, v56 + v54, &qword_27DF0D5F0, &unk_23876D630);
  v57 = v69;
  v58 = *(v68 + 48);
  if (v58(v56, 1, v69) == 1)
  {
    if (v58(v56 + v54, 1, v57) == 1)
    {
      sub_238439884(v56, &qword_27DF0D5F0, &unk_23876D630);
      return 1;
    }

    goto LABEL_50;
  }

  v59 = v67;
  sub_23843981C(v56, v67, &qword_27DF0D5F0, &unk_23876D630);
  if (v58(v56 + v54, 1, v57) == 1)
  {
    sub_2385A9624(v59, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
LABEL_50:
    v34 = &qword_27DF0F4C8;
    v35 = &qword_238772728;
    v36 = v56;
    goto LABEL_24;
  }

  v60 = v56 + v54;
  v61 = v66;
  sub_2385A8DE8(v60, v66, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  v62 = sub_2385DE9BC(v59, v61);
  sub_2385A9624(v61, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  sub_2385A9624(v59, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  sub_238439884(v56, &qword_27DF0D5F0, &unk_23876D630);
  return (v62 & 1) != 0;
}

uint64_t sub_2385A8A24(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385A8AF4(uint64_t a1)
{
  type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385A8C68(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2385A8C68(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2385A8CCC(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2385A8CCC(319, &qword_27DF0F4F8, &type metadata for CopyURLAction, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385A8C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385A8CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2385A8D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385A8D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A8DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A8E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385A8F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F568;
  if (!qword_27DF0F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F568);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = v0;
  v2 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v32 = *(*(v2 - 1) + 80);
  v30 = *(*(v2 - 1) + 64);
  v31 = (v32 + 16) & ~v32;
  v3 = v0 + v31;
  v4 = sub_23875AE10();
  (*(*(v4 - 8) + 8))(v0 + v31, v4);
  v5 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v6 = v0 + v31 + v5[5];
  v7 = sub_23875B120();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v9 = *(v8 + 20);
  v10 = sub_23875AD80();
  v11 = *(*(v10 - 8) + 8);
  v11(v6 + v9, v10);
  v12 = v6 + *(v8 + 24);
  v13 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
      v11(v12 + *(v15 + 64), v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v11(v3 + v5[6], v10);

  v16 = v5[9];
  v17 = sub_23875B940();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v3 + v16, 1, v17))
  {
    (*(v18 + 8))(v3 + v16, v17);
  }

  v19 = v3 + v5[13];
  v20 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
    if ((*(*(v21 - 8) + 48))(v19, 1, v21))
    {
      (*(v18 + 8))(v19 + *(v20 + 20), v17);
    }

    else
    {

      v22 = *(v18 + 8);
      v22(v19 + *(v21 + 24), v17);
      v23 = *(v21 + 28);
      v24 = sub_23875AF90();
      (*(*(v24 - 8) + 8))(v19 + v23, v24);
      v22(v19 + *(v20 + 20), v17);
    }

    v11(v19 + *(v20 + 24), v10);
  }

  v25 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_23875C880();
    (*(*(v26 - 8) + 8))(v3 + v25, v26);
  }

  else
  {
  }

  v27 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_23875C6D0();
    (*(*(v28 - 8) + 8))(v3 + v27, v28);
  }

  else
  {
  }

  sub_2384348B8(*(v3 + v2[7]), *(v3 + v2[7] + 8));
  sub_2384348B8(*(v3 + v2[8]), *(v3 + v2[8] + 8));

  return MEMORY[0x2821FE8E8](v1, ((v30 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v32 | 7);
}

void sub_2385A957C(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderDetailsShippingFulfillment_iOS(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2385A7E88(v1 + v4, *v5, v5[1], a1);
}

double sub_2385A9610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2385A9624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2385A9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_2385A96E4(uint64_t a1)
{
  sub_23875B120();
  if (v1 <= 0x3F)
  {
    sub_23875AD80();
    if (v2 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDC8, type metadata accessor for OrderDetailsNote, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_2385A97BC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875D990();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BD20();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  MEMORY[0x28223BE20](v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderDetailsShippingStatusLabel(0);
  sub_2384D57B8(v14);
  sub_2384D5588(v11);
  sub_2384D57E0(v8);
  sub_2387595B0();
  sub_2385AC438(&qword_27DF0F5B8, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter, &unk_238772C08);
  sub_238759950();
  sub_2385AC3B0(v17, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);
  v19 = v47;
  v18 = v48;
  v21 = v49;
  v20 = v50;
  v42[0] = v50;

  v22 = v18;
  v42[1] = v18;

  v23 = sub_2385A9C18();
  v24 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v25 = *(v24 + 24);
  v26 = type metadata accessor for OrderDetailsStatusLabel(0);
  sub_2385912B0(v2 + v25, a1 + v26[7]);
  v27 = (v2 + *(v24 + 28));
  v28 = *v27;
  v29 = v27[24];
  *a1 = v19;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v23;
  v30 = a1 + v26[8];
  *v30 = v28;
  *(v30 + 8) = *(v27 + 8);
  *(v30 + 24) = v29;
  v31 = a1 + v26[9];
  v46 = 0;
  sub_23875E1A0();
  v32 = v48;
  *v31 = v47;
  *(v31 + 8) = v32;
  v33 = a1 + v26[10];
  *v33 = swift_getKeyPath(byte_238772AB8);
  *(v33 + 8) = 0;
  v47 = 0x403F000000000000;
  v34 = *MEMORY[0x277CE0A50];
  v35 = v43;
  v36 = *(v44 + 104);
  v37 = v45;
  v38 = v36(v43, v34, v45);
  sub_23857414C(v38, v39, v40);
  sub_23875C540();
  v47 = 0x403C000000000000;
  v36(v35, v34, v37);
  sub_23875C540();
  v47 = 0x4018000000000000;
  v36(v35, v34, v37);
  sub_23875C540();

  return result;
}

uint64_t sub_2385A9C18()
{
  v1 = sub_23875AE10();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = sub_23875ACE0();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  v34 = v0;
  sub_23875B0B0();
  v22 = (*(v10 + 88))(v21, v9);
  if (v22 == *MEMORY[0x277CC83B8])
  {
    (*(v10 + 16))(v15, v21, v9);
    (*(v10 + 96))(v15, v9);
    v23 = sub_238757C30();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 88))(v15, v23);
    if (v25 == *MEMORY[0x277CC6B98])
    {
      v26 = 3;
      goto LABEL_21;
    }

    if (v25 != *MEMORY[0x277CC6BA8])
    {
      if (v25 == *MEMORY[0x277CC6BA0])
      {
        v26 = 1;
        goto LABEL_21;
      }

      v30 = *(v24 + 8);
      v18 = (v24 + 8);
      v30(v15, v23);
LABEL_23:
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
      sub_23875B0B0();
      sub_23875F510();
      (*(v10 + 8))(v12, v9);
      while (1)
      {
        sub_23875F520();
        __break(1u);
LABEL_25:
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD000000000000019, 0x800000023878BD60);
        v31 = v35;
        sub_23875ACD0();
        sub_23875F510();
        v32 = *(v15 + 1);
        v15 += 8;
        v32(v31, v18);
      }
    }

LABEL_17:
    v26 = 0;
    goto LABEL_21;
  }

  if (v22 != *MEMORY[0x277CC83A8])
  {
    if (v22 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  (*(v10 + 16))(v18, v21, v9);
  (*(v10 + 96))(v18, v9);
  v27 = v36;
  (*(v36 + 32))(v8, v18, v6);
  sub_23875ACD0();
  v15 = v37;
  v18 = v38;
  v28 = (*(v37 + 11))(v5, v38);
  v26 = 3;
  if (v28 != *MEMORY[0x277CC8468] && v28 != *MEMORY[0x277CC8458] && v28 != *MEMORY[0x277CC8480] && v28 != *MEMORY[0x277CC8460])
  {
    v26 = 0;
    if (v28 != *MEMORY[0x277CC8490] && v28 != *MEMORY[0x277CC8478])
    {
      if (v28 == *MEMORY[0x277CC8470])
      {
        v26 = 2;
      }

      else
      {
        if (v28 != *MEMORY[0x277CC8488])
        {
          goto LABEL_25;
        }

        v26 = 1;
      }
    }
  }

  (*(v27 + 8))(v8, v6);
LABEL_21:
  (*(v10 + 8))(v21, v9);
  return v26;
}

uint64_t sub_2385AA278(const char *a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_2387591F0();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_23875BC40();
  v71 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v65 - v7;
  v8 = type metadata accessor for OrderDetailsStatusSubtitleFormatter(0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v65 - v11;
  v12 = sub_23875AEB0();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875AE10();
  v75 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875ACE0();
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - v31;
  v82 = a1;
  sub_23875B0B0();
  v33 = (*(v21 + 88))(v32, v20);
  if (v33 == *MEMORY[0x277CC83B8])
  {
    (*(v21 + 16))(v26, v32, v20);
    (*(v21 + 96))(v26, v20);
    v34 = sub_238757C30();
    v35 = *(v34 - 8);
    if ((*(v35 + 88))(v26, v34) == *MEMORY[0x277CC6B98])
    {
      v36 = sub_2385AB034(v82, v81);
    }

    else
    {
      (*(v35 + 8))(v26, v34);
      v36 = 0;
    }

    goto LABEL_27;
  }

  v37 = v20;
  if (v33 != *MEMORY[0x277CC83A8])
  {
    if (v33 == *MEMORY[0x277CC83B0])
    {
      (*(v21 + 16))(v23, v32, v20);
      (*(v21 + 96))(v23, v20);
      v46 = v71;
      (*(v71 + 32))();
      v82 = "Unknown displayStatus: ";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2387632F0;
      v48 = sub_23875B9D0();
      v50 = v49;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_238448C58(v48, v49, v51);
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      v52 = v72;
      v53 = v73;
      v54 = v74;
      (*(v73 + 104))(v72, *MEMORY[0x277CC77B0], v74);
      v36 = sub_238758A50();

      (*(v53 + 8))(v52, v54);
      (*(v46 + 8))(v76, v77);
LABEL_27:
      (*(v21 + 8))(v32, v20);
      return v36;
    }

    goto LABEL_25;
  }

  (*(v21 + 16))(v29, v32, v20);
  (*(v21 + 96))(v29, v20);
  v38 = v78;
  v39 = v19;
  v40 = v29;
  v41 = v79;
  (*(v78 + 32))(v19, v40, v79);
  sub_23875ACD0();
  v42 = (*(v75 + 88))(v16, v14);
  if (v42 == *MEMORY[0x277CC8468] || v42 == *MEMORY[0x277CC8458])
  {
    v36 = sub_2385AB034(v82, v81);
    goto LABEL_21;
  }

  if (v42 == *MEMORY[0x277CC8480] || v42 == *MEMORY[0x277CC8460])
  {
    v55 = v67;
    sub_23875B0F0();
    v56 = v69;
    v57 = v70;
    if ((*(v69 + 48))(v55, 1, v70) == 1)
    {
      (*(v38 + 8))(v39, v41);
      sub_238439884(v55, &qword_27DF0D5D0, &unk_238770FE0);
LABEL_25:
      v36 = 0;
      goto LABEL_26;
    }

    v58 = v68;
    (*(v56 + 32))(v68, v55, v57);
    v59 = sub_2387595E0();
    v60 = v65;
    (*(*(v59 - 8) + 16))(v65, v80, v59);
    v61 = v58;
    v62 = v56;
    v36 = sub_2385BCA9C(v61, v81);
    sub_2385AC3B0(v60, type metadata accessor for OrderDetailsStatusSubtitleFormatter);
    (*(v62 + 8))(v68, v70);
LABEL_21:
    (*(v38 + 8))(v39, v41);
LABEL_26:
    v20 = v37;
    goto LABEL_27;
  }

  if (v42 == *MEMORY[0x277CC8490])
  {
    v43 = v66;
    v44 = sub_23875B0D0();
    MEMORY[0x28223BE20](v44);
    v45 = sub_2385AC5E8;
LABEL_20:
    v36 = sub_238601BF0(v45);
    sub_238439884(v43, &qword_27DF12E00, &unk_238763FC0);
    goto LABEL_21;
  }

  if (v42 == *MEMORY[0x277CC8478])
  {
    v43 = v66;
    v63 = sub_23875B0C0();
    MEMORY[0x28223BE20](v63);
    v45 = sub_2385AC7E8;
    goto LABEL_20;
  }

  if (v42 == *MEMORY[0x277CC8470] || v42 == *MEMORY[0x277CC8488])
  {
    (*(v38 + 8))(v19, v41);
    goto LABEL_25;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385AAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v21 = a2;
  v24 = a4;
  v22 = sub_238759120();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387595E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238759140();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BC40();
  sub_2385AC438(&unk_27DF12BC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v23 = a1;
  result = sub_23875E9C0();
  v15 = 0;
  v16 = 0;
  if (result)
  {
    (*(v8 + 16))(v10, v21, v7);
    (*(v20 + 104))(v6, *MEMORY[0x277CC7750], v22);
    sub_238759110();
    v15 = sub_238759130();
    v16 = v17;
    result = (*(v11 + 8))(v13, v19);
  }

  v18 = v24;
  *v24 = v15;
  v18[1] = v16;
  return result;
}

uint64_t sub_2385AB034(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = sub_2387591F0();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238759120();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387595E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875AEA0();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_23875AEB0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875B0F0();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_238439884(v16, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v8 + 16))(v10, v37, v7);
    (*(v35 + 104))(v6, *MEMORY[0x277CC7750], v36);
    sub_23875AE80();
    v22 = sub_23875AE90();
    v24 = v23;
    (*(v33 + 8))(v13, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2387632F0;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_238448C58(v25, v26, v27);
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    v29 = v39;
    v28 = v40;
    v30 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277CC77B0], v41);
    v31 = sub_238758A50();

    (*(v28 + 8))(v29, v30);
    (*(v18 + 8))(v20, v17);
    return v31;
  }
}

uint64_t sub_2385AB4F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2387595E0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F5F8, &qword_238772C40);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23875BE20();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_23875BD20();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385AC608(v15, v16, v17);
  v18 = v25;
  sub_23875F780();
  if (!v18)
  {
    v19 = v23;
    sub_2385AC438(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v24 + 8))(v8, v6);
    (*(v19 + 40))(v14, v5, v3);
    sub_2385AC65C(v14, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2385AC3B0(v14, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);
}

uint64_t sub_2385AB88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385AC608(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2385AB8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385AC608(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2385AB904@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2387595E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875B150();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4, v8, v14);
  sub_23875B130();
  v17 = sub_23875B140();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  result = sub_2385AA278(a1, a2);
  *a3 = v17;
  a3[1] = v19;
  a3[2] = result;
  a3[3] = v21;
  return result;
}

void *sub_2385ABABC()
{
  sub_2385AC438(&qword_27DF0F5B8, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter, &unk_238772C08);

  return sub_238759950();
}

uint64_t sub_2385ABB58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F608, &qword_238772C48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385AC608(v6, v7, v8);
  sub_23875F790();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF0, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2385ABCD0()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385ABD58(uint64_t a1)
{
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_23875E960();
}

uint64_t sub_2385ABDDC()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385ABE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNote(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F5A0, qword_238772A58);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  if ((MEMORY[0x23EE5FBE0](a1, a2, v12) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  if ((sub_23875AD70() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_2385912B0(a1 + v16, v14);
  sub_2385912B0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_2385912B0(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      sub_2385AC184(&v14[v17], v7);
      v20 = sub_23857EB54(v10, v7);
      sub_2385AC3B0(v7, type metadata accessor for OrderDetailsNote);
      sub_2385AC3B0(v10, type metadata accessor for OrderDetailsNote);
      sub_238439884(v14, &qword_27DF0D5F8, &unk_23876D640);
      if (v20)
      {
        goto LABEL_12;
      }

      return 0;
    }

    sub_2385AC3B0(v10, type metadata accessor for OrderDetailsNote);
LABEL_8:
    sub_238439884(v14, &qword_27DF0F5A0, qword_238772A58);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_238439884(v14, &qword_27DF0D5F8, &unk_23876D640);
LABEL_12:
  v21 = *(v15 + 28);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = *(a1 + v21 + 16);
  v25 = *(a1 + v21 + 24);
  v26 = (a2 + v21);
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = *(v26 + 2);
  v30 = v26[24];
  v31 = (v23 == v28) & ~(v22 ^ v27);
  if (v24 != v29)
  {
    v31 = 0;
  }

  return v31 & (v25 ^ v30 ^ 1u);
}

uint64_t sub_2385AC184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2385AC230(uint64_t a1)
{
  type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDF0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23858EE1C(319, &qword_27DF0EDF8, MEMORY[0x277CC9A70], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2385AC3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385AC438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385AC608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F600;
  if (!qword_27DF0F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F600);
  }

  return result;
}

uint64_t sub_2385AC65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385AC6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F610;
  if (!qword_27DF0F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F610);
  }

  return result;
}

unint64_t sub_2385AC73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F618;
  if (!qword_27DF0F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F618);
  }

  return result;
}

unint64_t sub_2385AC794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F620;
  if (!qword_27DF0F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F620);
  }

  return result;
}

uint64_t type metadata accessor for AccountConsentManagementTransactionHistoryView(uint64_t a1)
{
  result = qword_27DF0F630;
  if (!qword_27DF0F630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385AC874(uint64_t a1)
{
  sub_2385AC8F8(319);
  if (v1 <= 0x3F)
  {
    sub_238464EC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385AC8F8(uint64_t a1)
{
  if (!qword_27DF0F640)
  {
    sub_23875A230();
    v1 = sub_23875D380();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0F640);
    }
  }
}

uint64_t sub_2385AC97C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F648, &qword_238772E58);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-v3];
  v24 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F650, &qword_238772E60);
  sub_2385AF228();
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2387632F0;
  v11 = MEMORY[0x277D849A0];
  *(v10 + 56) = MEMORY[0x277D84958];
  *(v10 + 64) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  sub_23875D370();
  v12 = sub_23875EAB0();
  v14 = v13;

  v25 = v12;
  v26 = v14;
  sub_2384397A8(v15, v16, v17);
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v7) = v21;
  sub_23843A3E8(&qword_27DF0F670, &qword_27DF0F648, &qword_238772E58, MEMORY[0x277CDE5A0]);
  sub_23875DC60();
  sub_2384397FC(v18, v20, v7 & 1);

  return (*(v2 + 8))(v4, v1);
}

double sub_2385ACC90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for AccountConsentManagementTransactionHistoryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  swift_getKeyPath(byte_238772E80);
  sub_2385AF2D8(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2385AF33C(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F668, qword_238772E68);
  sub_23843A3E8(&qword_27DF0F678, &qword_27DF0F628, &unk_238772DC0, MEMORY[0x277CDE0F8]);
  sub_2385AF420(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23843A3E8(&qword_27DF0F660, &qword_27DF0F668, qword_238772E68, MEMORY[0x277CE1198]);
  sub_23875E370();

  return result;
}

void *sub_2385ACF88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  v10 = 1;
  sub_2385AD0C4(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_23843981C(__dst, v7, &qword_27DF0F680, &unk_238772EB0);
  sub_238439884(v12, &qword_27DF0F680, &unk_238772EB0);

  memcpy(&v9[7], __dst, 0x168uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x16FuLL);
}

double sub_2385AD0C4@<D0>(void (*a1)(void, void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v232 = a1;
  v198 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v201 = &v193[-v3];
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  v206 = v4;
  v207 = v5;
  MEMORY[0x28223BE20](v4);
  v195 = &v193[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v196 = &v193[-v8];
  v9 = sub_238758AD0();
  v226 = *(v9 - 8);
  v227 = v9;
  MEMORY[0x28223BE20](v9);
  v225 = &v193[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2387587A0();
  v228 = *(v11 - 8);
  v229 = v11;
  MEMORY[0x28223BE20](v11);
  v224 = &v193[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_23875CEF0();
  MEMORY[0x28223BE20](v13 - 8);
  v231 = &v193[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v193[-v16];
  v18 = sub_238758090();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v193[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v204 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v220 = sub_23875CE60();
  LOBYTE(v264[0]) = 1;
  v22 = v232;
  sub_2385AE514(v232, &v260);
  v267 = *&v261[16];
  v268 = *&v261[32];
  v265 = v260;
  v266 = *v261;
  v270[2] = *&v261[16];
  v270[3] = *&v261[32];
  v270[4] = *&v261[48];
  v270[1] = *v261;
  v269 = *&v261[48];
  v270[0] = v260;
  sub_23843981C(&v265, &v253, &qword_27DF0A248, &unk_238765310);
  sub_238439884(v270, &qword_27DF0A248, &unk_238765310);
  *&v263[23] = v266;
  *&v263[39] = v267;
  *&v263[55] = v268;
  *&v263[71] = v269;
  *&v263[7] = v265;
  v219 = LOBYTE(v264[0]);
  sub_23875A160();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &unk_27DF0B080, &unk_2387662A0);
    memset(v264, 0, 88);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v23 = sub_23875CE60();
    LOBYTE(v253) = 1;
    sub_2385AEB34(v21, v22, &v260);
    *(v233 + 7) = v260;
    *(&v233[1] + 7) = *v261;
    *(&v233[2] + 7) = *&v261[16];
    *(&v233[3] + 7) = *&v261[32];
    v24 = v253;
    (*(v19 + 8))(v21, v18);
    v264[0] = v23;
    LOBYTE(v264[1]) = v24;
    *(&v264[2] + 1) = v233[1];
    *(&v264[3] + 1) = v233[2];
    *(&v264[4] + 1) = v233[3];
    *&v264[5] = *(&v233[3] + 15);
    *(&v264[1] + 1) = v233[0];
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v25 = qword_2814F1B90;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v222 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v28 = sub_23875EA50();
  v210 = v25;
  v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

  sub_23875EA80();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v30 = swift_allocObject();
  v221 = xmmword_2387632F0;
  *(v30 + 16) = xmmword_2387632F0;
  v31 = sub_23875A170();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x277D837D0];
  v205 = sub_238448C58(v31, v32, v34);
  *(v30 + 64) = v205;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v35 = sub_23875EAB0();
  v37 = v36;

  *&v260 = v35;
  *(&v260 + 1) = v37;
  v208 = sub_2384397A8(v38, v39, v40);
  v41 = sub_23875DAA0();
  v217 = v43;
  v218 = v42;
  v45 = v44;
  v46 = sub_23875A090();
  v48 = v47;
  v49 = sub_23875A170();
  v202 = v41;
  v203 = v45;
  if (v46 == v49 && v48 == v50)
  {

LABEL_12:
    v253 = v41;
    v254 = v218;
    *v255 = v217 & 1;
    *&v255[8] = v45;
    v255[16] = 1;
    sub_23843980C(v41, v218, v217 & 1);

    sub_23875D1B0();
    v53 = v260;
    v52 = *v261;
    goto LABEL_14;
  }

  v51 = sub_23875F630();

  if (v51)
  {
    goto LABEL_12;
  }

  sub_23875CED0();
  sub_23875CEC0();
  sub_23875A090();
  sub_23875CEB0();

  sub_23875CEC0();
  sub_23875CF10();
  v54 = sub_23875DA90();
  v56 = v55;
  v58 = v57;
  LODWORD(v260) = sub_23875D440();
  v59 = sub_23875DA20();
  v61 = v60;
  v63 = v62;
  v231 = v64;
  sub_2384397FC(v54, v56, v58 & 1);

  v65 = sub_23875DA30();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_2384397FC(v59, v61, v63 & 1);

  v253 = v65;
  v254 = v67;
  *v255 = v69 & 1;
  *&v255[8] = v71;
  v255[16] = 0;
  sub_23875D1B0();
  v53 = v260;
  v52 = *v261;
LABEL_14:
  v199 = v53;
  v200 = v52;
  v215 = v52;
  v216 = v53;
  v230 = *(&v52 + 1);
  v231 = *(&v53 + 1);
  v214 = v261[16];
  sub_23845B7C4(v53, *(&v53 + 1), v52, *(&v52 + 1));
  v72 = sub_23875EA50();
  v73 = sub_23875EA50();
  v74 = sub_23875EA50();
  v75 = v210;
  v76 = [v210 localizedStringForKey:v72 value:v73 table:v74];

  sub_23875EA80();
  v77 = swift_allocObject();
  *(v77 + 16) = v221;
  v78 = v224;
  sub_23875A0F0();
  v79 = sub_238758770();
  v81 = v80;
  (*(v228 + 8))(v78, v229);
  v82 = v205;
  *(v77 + 56) = MEMORY[0x277D837D0];
  *(v77 + 64) = v82;
  *(v77 + 32) = v79;
  *(v77 + 40) = v81;
  v83 = sub_23875EAB0();
  v85 = v84;

  *&v260 = v83;
  *(&v260 + 1) = v85;
  v213 = sub_23875DAA0();
  v228 = v86;
  v229 = v87;
  v197 = v88;
  v89 = sub_23875EA50();
  v90 = sub_23875EA50();
  v91 = sub_23875EA50();
  v92 = [v75 localizedStringForKey:v89 value:v90 table:v91];

  sub_23875EA80();
  v93 = swift_allocObject();
  *(v93 + 16) = v221;
  v94 = v225;
  sub_23875A210();
  v95 = sub_238758AC0();
  v97 = v96;
  (*(v226 + 8))(v94, v227);
  *(v93 + 56) = MEMORY[0x277D837D0];
  *(v93 + 64) = v82;
  *(v93 + 32) = v95;
  *(v93 + 40) = v97;
  v98 = sub_23875EAB0();
  v100 = v99;

  *&v260 = v98;
  *(&v260 + 1) = v100;
  v101 = sub_23875DAA0();
  v211 = v102;
  v212 = v101;
  v227 = v103;
  v105 = v104;
  v106 = sub_23875A150();
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  if ((v106 & 0x10000) == 0)
  {
    v111 = v106;
    v112 = sub_23875EA50();
    v113 = sub_23875EA50();
    v114 = sub_23875EA50();
    v115 = [v210 localizedStringForKey:v112 value:v113 table:v114];

    sub_23875EA80();
    v116 = swift_allocObject();
    v117 = MEMORY[0x277D84958];
    *(v116 + 16) = v221;
    v118 = MEMORY[0x277D849A0];
    *(v116 + 56) = v117;
    *(v116 + 64) = v118;
    *(v116 + 32) = v111;
    v119 = sub_23875EAB0();
    v121 = v120;

    *&v260 = v119;
    *(&v260 + 1) = v121;
    v107 = sub_23875DAA0();
    v108 = v122;
    v110 = v123;
    v109 = (v124 & 1);
    sub_23843980C(v107, v122, v124 & 1);
  }

  v223 = v108;
  v224 = v109;
  v225 = v110;
  v226 = v107;
  v125 = v201;
  sub_23875A0A0();
  v126 = v206;
  v127 = v207;
  if ((*(v207 + 48))(v125, 1, v206) == 1)
  {
    sub_238439884(v125, &qword_27DF12E00, &unk_238763FC0);
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
  }

  else
  {
    v194 = v105;
    v132 = v196;
    (*(v127 + 32))(v196, v125, v126);
    v133 = v195;
    sub_23875A0E0();
    sub_2385AF420(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v134 = sub_23875E9E0();
    v137 = *(v127 + 8);
    v135 = v127 + 8;
    v136 = v137;
    v137(v133, v126);
    if (v134)
    {
      v136(v132, v126);
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    else
    {
      v138 = sub_23875EA50();
      v139 = sub_23875EA50();
      v140 = sub_23875EA50();
      v141 = [v210 localizedStringForKey:v138 value:v139 table:v140];

      sub_23875EA80();
      v142 = swift_allocObject();
      *(v142 + 16) = v221;
      v143 = sub_23875BC10();
      v232 = v136;
      v144 = v205;
      *(v142 + 56) = MEMORY[0x277D837D0];
      *(v142 + 64) = v144;
      *(v142 + 32) = v143;
      *(v142 + 40) = v145;
      v146 = sub_23875EAB0();
      v148 = v147;

      *&v260 = v146;
      *(&v260 + 1) = v148;
      v149 = sub_23875DAA0();
      v151 = v150;
      LOBYTE(v140) = v152;
      sub_23875D7F0();
      v153 = sub_23875DA60();
      v155 = v154;
      v207 = v135;
      v157 = v156;

      sub_2384397FC(v149, v151, v140 & 1);

      LODWORD(v260) = sub_23875D440();
      v158 = sub_23875DA20();
      v129 = v159;
      LOBYTE(v151) = v160;
      v162 = v161;
      sub_2384397FC(v153, v155, v157 & 1);

      v232(v196, v206);
      v163 = v151 & 1;
      v128 = v158;
      sub_23843980C(v158, v129, v163);

      v130 = v163;
      v131 = v162;
    }

    LOBYTE(v105) = v194;
  }

  *&v221 = v130;
  v222 = v131;
  v232 = v129;
  v249 = v264[2];
  v250 = v264[3];
  v251 = v264[4];
  v247 = v264[0];
  v248 = v264[1];
  v253 = v220;
  v254 = 0;
  v255[0] = v219;
  *&v255[1] = *v263;
  *&v255[17] = *&v263[16];
  *&v255[80] = *&v263[79];
  *&v255[65] = *&v263[64];
  *&v255[49] = *&v263[48];
  *&v255[33] = *&v263[32];
  v237 = v220;
  v238 = *v255;
  v241 = *&v255[48];
  v242 = *&v255[64];
  v239 = *&v255[16];
  v240 = *&v255[32];
  v256[0] = v264[0];
  v256[1] = v264[1];
  v256[4] = v264[4];
  v256[2] = v264[2];
  v256[3] = v264[3];
  v252 = *&v264[5];
  v164 = v214;
  v246 = v214;
  v165 = v197 & 1;
  v245 = v197 & 1;
  v166 = v105 & 1;
  v244 = v105 & 1;
  v257 = *&v264[5];
  *(&v243[1] + 8) = v264[1];
  *(v243 + 8) = v264[0];
  *&v243[0] = *&v255[80];
  *(&v243[5] + 1) = *&v264[5];
  *(&v243[4] + 8) = v264[4];
  *(&v243[3] + 8) = v264[3];
  *(&v243[2] + 8) = v264[2];
  v236 = v214;
  v235 = v197 & 1;
  v234 = v105 & 1;
  v167 = v220;
  v168 = *v255;
  v169 = *&v255[32];
  v170 = v198;
  *(v198 + 32) = *&v255[16];
  *(v170 + 48) = v169;
  *v170 = v167;
  *(v170 + 16) = v168;
  v171 = v241;
  v172 = v242;
  v173 = v243[1];
  *(v170 + 96) = v243[0];
  *(v170 + 112) = v173;
  *(v170 + 64) = v171;
  *(v170 + 80) = v172;
  v174 = v243[2];
  v175 = v243[3];
  v176 = v243[5];
  *(v170 + 160) = v243[4];
  *(v170 + 176) = v176;
  *(v170 + 128) = v174;
  *(v170 + 144) = v175;
  v177 = v200;
  *(v170 + 192) = v199;
  *(v170 + 208) = v177;
  *(v170 + 224) = v164;
  v179 = v212;
  v178 = v213;
  v181 = v228;
  v180 = v229;
  *(v170 + 232) = v213;
  *(v170 + 240) = v181;
  *(v170 + 248) = v165;
  *(v170 + 256) = v180;
  *(v170 + 264) = v179;
  v182 = v226;
  *(v170 + 272) = v227;
  *(v170 + 280) = v166;
  *(v170 + 288) = v211;
  *(v170 + 296) = v182;
  v183 = v224;
  *(v170 + 304) = v223;
  *(v170 + 312) = v183;
  *(v170 + 320) = v225;
  *(v170 + 328) = v128;
  *(v170 + 336) = v129;
  *(v170 + 344) = v130;
  *(v170 + 352) = v131;
  sub_23843981C(v264, &v260, &qword_27DF0F688, &qword_238772EC0);
  sub_23843981C(&v253, &v260, &qword_27DF0A250, &qword_238768E60);
  sub_23843981C(v256, &v260, &qword_27DF0F688, &qword_238772EC0);
  sub_23845B7C4(v216, v231, v215, v230);
  sub_23843980C(v178, v228, v165);

  sub_23843980C(v179, v227, v166);

  v184 = v225;
  v185 = v226;
  v186 = v223;
  v187 = v224;
  sub_238476F5C(v226, v223, v224, v225);
  v188 = v232;
  v189 = v221;
  v190 = v222;
  sub_238476F5C(v128, v232, v221, v222);
  sub_2384397FC(v202, v218, v217 & 1);

  sub_238476FA0(v185, v186, v187, v184);
  LOBYTE(v185) = v215;
  v191 = v216;
  sub_23845B800(v216, v231, v215, v230);
  sub_238439884(v264, &qword_27DF0F688, &qword_238772EC0);
  sub_238476FA0(v128, v188, v189, v190);
  sub_238476FA0(v128, v188, v189, v190);
  sub_238476FA0(v226, v223, v224, v225);
  sub_2384397FC(v212, v227, v244);

  sub_2384397FC(v213, v228, v245);

  sub_23845B800(v191, v231, v185, v230);
  v258[2] = v249;
  v258[3] = v250;
  v258[4] = v251;
  v259 = v252;
  v258[0] = v247;
  v258[1] = v248;
  sub_238439884(v258, &qword_27DF0F688, &qword_238772EC0);
  *&v261[33] = *&v263[32];
  *&v261[49] = *&v263[48];
  v262[0] = *&v263[64];
  *&v261[1] = *v263;
  v260 = v220;
  v261[0] = v219;
  *(v262 + 15) = *&v263[79];
  *&v261[17] = *&v263[16];
  sub_238439884(&v260, &qword_27DF0A250, &qword_238768E60);

  return result;
}

double sub_2385AE514@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v2 = sub_23875BC40();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BD20();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875B7C0();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2387591B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v55 = sub_238758090();
  v17 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A100();
  sub_23875A140();
  (*(v11 + 104))(v13, *MEMORY[0x277CC7790], v10);
  sub_2385AF420(&qword_27DF0F690, MEMORY[0x277CC7798], MEMORY[0x277CC77A0]);
  sub_23875EC40();
  sub_23875EC40();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  if (v68 == v70)
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B790();
  }

  sub_23875BCC0();
  v21 = sub_238758070();
  v23 = v22;
  (*(v58 + 8))(v6, v59);
  (*(v56 + 8))(v9, v57);
  v24 = (*(v17 + 8))(v19, v55);
  v68 = v21;
  v69 = v23;
  sub_2384397A8(v24, v25, v26);
  v27 = sub_23875DAA0();
  v29 = v28;
  v31 = v30;
  v32 = sub_23875DA50();
  v34 = v33;
  v36 = v35;
  sub_2384397FC(v27, v29, v31 & 1);

  sub_23875D8F0();
  v37 = sub_23875DA60();
  v39 = v38;
  LOBYTE(v23) = v40;
  v42 = v41;

  sub_2384397FC(v32, v34, v36 & 1);

  v43 = v61;
  sub_23875A0E0();
  v44 = sub_23875BC10();
  v46 = v45;
  (*(v62 + 8))(v43, v63);
  v68 = v44;
  v69 = v46;
  v47 = sub_23875DAA0();
  v49 = v48;
  v50 = v23 & 1;
  LOBYTE(v68) = v23 & 1;
  LOBYTE(v70) = v23 & 1;
  v67 = 1;
  LOBYTE(v23) = v51 & 1;
  v66 = v51 & 1;
  v52 = v64;
  *v64 = v37;
  v52[1] = v39;
  *(v52 + 16) = v50;
  v52[3] = v42;
  v52[4] = 0;
  *(v52 + 40) = 1;
  v52[6] = v47;
  v52[7] = v48;
  *(v52 + 64) = v51 & 1;
  v52[9] = v53;
  sub_23843980C(v37, v39, v50);

  sub_23843980C(v47, v49, v23);

  sub_2384397FC(v47, v49, v23);

  sub_2384397FC(v37, v39, v68);

  return result;
}

double sub_2385AEB34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a3;
  v75 = a2;
  v72 = a1;
  v71 = sub_23875BD20();
  v3 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23875B7C0();
  v6 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387591B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v68 - v14;
  sub_23875ED50();
  v73 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A140();
  (*(v10 + 104))(v12, *MEMORY[0x277CC7790], v9);
  sub_2385AF420(&qword_27DF0F690, MEMORY[0x277CC7798], MEMORY[0x277CC77A0]);
  sub_23875EC40();
  sub_23875EC40();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v15, v9);
  if (v76 == v78)
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B790();
  }

  sub_23875BCC0();
  v17 = sub_238758070();
  v19 = v18;
  (*(v3 + 8))(v5, v71);
  v20 = (*(v6 + 8))(v8, v70);
  v76 = v17;
  v77 = v19;
  v23 = sub_2384397A8(v20, v21, v22);
  v24 = sub_23875DAA0();
  v26 = v25;
  v28 = v27;
  LODWORD(v76) = sub_23875D440();
  v29 = sub_23875DA20();
  v31 = v30;
  LODWORD(v3) = v32;
  v34 = v33;
  sub_2384397FC(v24, v26, v28 & 1);

  v35 = sub_23875A1B0();
  if (v35)
  {
    v68[1] = v23;
    v69 = v3;
    v70 = v31;
    v71 = v29;
    v72 = v34;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v36 = qword_2814F1B90;
    v37 = sub_23875EA50();
    v38 = sub_23875EA50();
    v39 = sub_23875EA50();
    v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

    sub_23875EA80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_238763300;
    v42 = sub_23875A220();
    v44 = v43;
    v45 = MEMORY[0x277D837D0];
    *(v41 + 56) = MEMORY[0x277D837D0];
    v47 = sub_238448C58(v42, v43, v46);
    *(v41 + 64) = v47;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    [v35 doubleValue];
    v48 = MEMORY[0x277D83A80];
    *(v41 + 96) = MEMORY[0x277D839F8];
    *(v41 + 104) = v48;
    *(v41 + 72) = v49;
    v50 = sub_238758040();
    *(v41 + 136) = v45;
    *(v41 + 144) = v47;
    *(v41 + 112) = v50;
    *(v41 + 120) = v51;
    v52 = sub_23875EAB0();
    v54 = v53;

    v76 = v52;
    v77 = v54;
    v3 = sub_23875DAA0();
    v56 = v55;
    LOBYTE(v44) = v57;
    LODWORD(v76) = sub_23875D440();
    v58 = sub_23875DA20();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_2384397FC(v3, v56, v44 & 1);

    v35 = v62 & 1;
    sub_23843980C(v58, v60, v62 & 1);

    v29 = v71;
    v34 = v72;
    v31 = v70;
    LOBYTE(v3) = v69;
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v64 = 0;
  }

  v65 = v3 & 1;
  sub_23843980C(v29, v31, v65);

  sub_238476F5C(v58, v60, v35, v64);
  sub_238476FA0(v58, v60, v35, v64);
  LOBYTE(v76) = v65;
  v66 = v74;
  *v74 = v29;
  v66[1] = v31;
  *(v66 + 16) = v65;
  v66[3] = v34;
  v66[4] = v58;
  v66[5] = v60;
  v66[6] = v35;
  v66[7] = v64;
  sub_238476FA0(v58, v60, v35, v64);
  sub_2384397FC(v29, v31, v65);

  return result;
}

unint64_t sub_2385AF228()
{
  result = qword_27DF0F658;
  if (!qword_27DF0F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F650, &qword_238772E60);
    sub_23843A3E8(&qword_27DF0F660, &qword_27DF0F668, qword_238772E68, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F658);
  }

  return result;
}

uint64_t sub_2385AF2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementTransactionHistoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385AF33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementTransactionHistoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2385AF3A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AccountConsentManagementTransactionHistoryView(0);

  return sub_2385ACF88(a1, a2);
}

uint64_t sub_2385AF420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385AF494(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23875F630();
    }
  }

  return result;
}

uint64_t sub_2385AF538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  sub_23875E1A0();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  sub_23875E1A0();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  v6 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v7 = v6[7];
  *(a5 + v7) = swift_getKeyPath(asc_238772F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[8];
  *(a5 + v8) = swift_getKeyPath(byte_238772FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v9 = v6[9];
  *(a5 + v9) = swift_getKeyPath(byte_238772FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385AF674@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  return sub_2385AF538(v3, v4, v6, v5, a1);
}

uint64_t sub_2385AF700()
{
  v0 = sub_23875CFF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  sub_2384D5808(v3);
  v4 = sub_23875CFE0();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F768, &qword_2387731D8);
  v5 = sub_23875CF40();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632F0;
  if (v4)
  {
    sub_23875CF20();
  }

  else
  {
    sub_23875CF30();
  }

  v9 = sub_23844D310(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  return v9;
}

void sub_2385AF8CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D0, &qword_238773118);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D8, &qword_238773120);
  MEMORY[0x28223BE20](v51);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = sub_23875C450();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v18 = v52;
  sub_2384D4E38(v17);
  (*(v12 + 104))(v14, *MEMORY[0x277CDF3D0], v11);
  v19 = sub_23875C440();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  v21 = objc_opt_self();
  v22 = &selRef_systemGray6Color;
  if ((v19 & 1) == 0)
  {
    v22 = &selRef_systemGray4Color;
  }

  v23 = [v21 *v22];
  v24 = sub_23875DFB0();
  v25 = *(sub_23875C980() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_23875CF50();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(v51 + 36)] = v24;

  *v5 = sub_23875D030();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6E0, &qword_238773128);
  sub_2385AFDC8(v18, &v5[*(v33 + 44)]);
  LOBYTE(v26) = sub_23875D770();
  sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6E8, &qword_238773130) + 36)];
  *v42 = v26;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(v26) = sub_23875D7D0();
  sub_23875C3D0();
  v43 = &v5[*(v54 + 36)];
  *v43 = v26;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_23843981C(v10, v7, &qword_27DF0F6D8, &qword_238773120);
  v48 = v56;
  sub_23843981C(v5, v56, &qword_27DF0F6D0, &qword_238773118);
  v49 = v55;
  sub_23843981C(v7, v55, &qword_27DF0F6D8, &qword_238773120);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6F0, &qword_238773138);
  sub_23843981C(v48, v49 + *(v50 + 48), &qword_27DF0F6D0, &qword_238773118);

  sub_238439884(v5, &qword_27DF0F6D0, &qword_238773118);
  sub_238439884(v10, &qword_27DF0F6D8, &qword_238773120);
  sub_238439884(v48, &qword_27DF0F6D0, &qword_238773118);
  sub_238439884(v7, &qword_27DF0F6D8, &qword_238773120);
}

double sub_2385AFDC8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6F8, &qword_238773140);
  MEMORY[0x28223BE20](v59);
  v4 = (&v57 - v3);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F700, &unk_238773148);
  MEMORY[0x28223BE20](v60);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v57 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v57 - v9;
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2387632F0;
  v11 = *a1;
  v12 = a1[1];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_238448C58(v10, v13, v14);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v15 = qword_2814F0880;

  v58 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  sub_23875EA80();
  v21 = sub_23875EAA0();
  v23 = v22;

  *&v66 = v21;
  *(&v66 + 1) = v23;
  sub_2384397A8(v24, v25, v26);
  v27 = sub_23875DAA0();
  v29 = v28;
  LOBYTE(v23) = v30;
  sub_23875D7F0();
  v31 = sub_23875DA60();
  v33 = v32;
  v35 = v34;

  sub_2384397FC(v27, v29, v23 & 1);

  LODWORD(v66) = sub_23875D440();
  v36 = sub_23875DA20();
  v38 = v37;
  LOBYTE(v17) = v39;
  v41 = v40;
  sub_2384397FC(v31, v33, v35 & 1);

  *v4 = sub_23875E4A0();
  v4[1] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F708, &qword_238773158);
  sub_2385B0390(v58, v4 + *(v43 + 44));
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F710, &qword_238773160) + 36)) = 256;
  v44 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(aX_8);
  v46 = (v4 + *(v59 + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  sub_23875E4B0();
  sub_23875C9C0();
  v47 = v61;
  sub_2384396E4(v4, v61, &qword_27DF0F6F8, &qword_238773140);
  v48 = (v47 + *(v60 + 36));
  v49 = v71;
  v48[4] = v70;
  v48[5] = v49;
  v48[6] = v72;
  v50 = v67;
  *v48 = v66;
  v48[1] = v50;
  v51 = v69;
  v48[2] = v68;
  v48[3] = v51;
  v52 = v62;
  sub_2384396E4(v47, v62, &qword_27DF0F700, &unk_238773148);
  v53 = v64;
  sub_23843981C(v52, v64, &qword_27DF0F700, &unk_238773148);
  v54 = v65;
  *v65 = v36;
  v54[1] = v38;
  *(v54 + 16) = v17 & 1;
  v54[3] = v41;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F718, &qword_238773198);
  sub_23843981C(v53, v54 + *(v55 + 48), &qword_27DF0F700, &unk_238773148);
  sub_23843980C(v36, v38, v17 & 1);

  sub_238439884(v52, &qword_27DF0F700, &unk_238773148);
  sub_238439884(v53, &qword_27DF0F700, &unk_238773148);
  sub_2384397FC(v36, v38, v17 & 1);

  return result;
}

double sub_2385B0390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MoreButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F720, &qword_2387731A0);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F728, &unk_2387731A8);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v45 - v13;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 24);
  *&v54 = *(a1 + 16);
  *(&v54 + 1) = v14;
  v16 = *(a1 + 56);
  LOBYTE(v60) = *(a1 + 48);
  v15 = v60;
  *(&v60 + 1) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v52 = *(&v63 + 1);
  v53 = v63;
  v51 = v64;
  sub_23875E480();
  v17 = 1;
  sub_23875C9C0();
  *(&v74[3] + 7) = *(&v74[10] + 8);
  *(&v74[4] + 7) = *(&v74[11] + 8);
  *(&v74[5] + 7) = *(&v74[12] + 8);
  *(&v74[6] + 7) = *(&v74[13] + 8);
  *(v74 + 7) = *(&v74[7] + 8);
  *(&v74[1] + 7) = *(&v74[8] + 8);
  *(&v74[2] + 7) = *(&v74[9] + 8);
  LOBYTE(v63) = v15;
  *(&v63 + 1) = v16;
  sub_23875E1B0();
  if (v60 == 1)
  {
    v19 = *(a1 + 40);
    LOBYTE(v60) = *(a1 + 32);
    v18 = v60;
    *(&v60 + 1) = v19;
    sub_23875E1D0();
    v20 = *(&v63 + 1);
    v21 = v64;
    *v7 = v63;
    *(v7 + 1) = v20;
    v7[16] = v21;
    v22 = v5[5];
    *&v7[v22] = swift_getKeyPath(asc_238772F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
    swift_storeEnumTagMultiPayload();
    v23 = v5[6];
    *&v7[v23] = swift_getKeyPath(byte_238772FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v24 = v5[7];
    *&v7[v24] = swift_getKeyPath(byte_238772FF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v60) = v18;
    *(&v60 + 1) = v19;
    sub_23875E1D0();
    v45 = v63;
    v46 = v64;
    v25 = v48;
    sub_2385B2A84(a1, v48, type metadata accessor for OrderDetailsStatusDescription_iOS);
    v26 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v27 = swift_allocObject();
    sub_2385B2AEC(v25, v27 + v26, type metadata accessor for OrderDetailsStatusDescription_iOS);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F740, &qword_2387731C8);
    sub_2385B2738(&qword_27DF0F748, type metadata accessor for MoreButton, &unk_238773290);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F750, &qword_2387731D0);
    v29 = sub_23843A3E8(&qword_27DF0F758, &qword_27DF0F750, &qword_2387731D0, MEMORY[0x277CDDA18]);
    *&v63 = v28;
    *(&v63 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v49;
    sub_23875DED0();

    sub_2385B2780(v7);
    (*(v57 + 32))(v59, v30, v58);
    v17 = 0;
  }

  v31 = v59;
  (*(v57 + 56))(v59, v17, 1, v58);
  v32 = v55;
  sub_23843981C(v31, v55, &qword_27DF0F728, &unk_2387731A8);
  v33 = v54;
  v60 = v54;
  v34 = v52;
  v35 = v53;
  *&v61 = v53;
  *(&v61 + 1) = v52;
  v36 = v51;
  v62[0] = v51;
  *&v62[1] = v74[0];
  *&v62[17] = v74[1];
  *&v62[65] = v74[4];
  *&v62[81] = v74[5];
  *&v62[97] = v74[6];
  v37 = *(&v74[6] + 15);
  *&v62[112] = *(&v74[6] + 15);
  *&v62[33] = v74[2];
  *&v62[49] = v74[3];
  v38 = *&v62[80];
  v39 = v50;
  *(v50 + 96) = *&v62[64];
  *(v39 + 112) = v38;
  *(v39 + 128) = *&v62[96];
  *(v39 + 144) = v37;
  v40 = *&v62[16];
  *(v39 + 32) = *v62;
  *(v39 + 48) = v40;
  v41 = *&v62[48];
  *(v39 + 64) = *&v62[32];
  *(v39 + 80) = v41;
  v42 = v61;
  *v39 = v60;
  *(v39 + 16) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F730, &qword_2387731B8);
  sub_23843981C(v32, v39 + *(v43 + 48), &qword_27DF0F728, &unk_2387731A8);
  sub_23843981C(&v60, &v63, &qword_27DF0F738, &qword_2387731C0);
  sub_238439884(v31, &qword_27DF0F728, &unk_2387731A8);
  sub_238439884(v32, &qword_27DF0F728, &unk_2387731A8);
  v71 = v74[4];
  v72 = v74[5];
  *v73 = v74[6];
  v67 = v74[0];
  v68 = v74[1];
  v69 = v74[2];
  v63 = v33;
  v64 = v35;
  v65 = v34;
  v66 = v36;
  *&v73[15] = *(&v74[6] + 15);
  v70 = v74[3];
  sub_238439884(&v63, &qword_27DF0F738, &qword_2387731C0);

  return result;
}

double sub_2385B0B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F750, &qword_2387731D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v11 - 2) = a1;
  sub_2385B27E4(v7, v8, v9);
  sub_23875C8F0();
  sub_2385AF700();
  sub_23843A3E8(&qword_27DF0F758, &qword_27DF0F750, &qword_2387731D0, MEMORY[0x277CDDA18]);
  sub_23875DD40();

  (*(v3 + 8))(v5, v2);

  return result;
}

void sub_2385B0D40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
}

uint64_t sub_2385B0DF4(uint64_t a1)
{
  v2 = sub_23875CFF0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CA90();
}

void sub_2385B0EE4(uint64_t a1)
{
  sub_23857C1DC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_2385B1018(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_2385B1018(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_2385B1018(319, &qword_27DF0F6B0, MEMORY[0x277CE02A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385B1018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2385B1098@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_23875E4A0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6C0, &qword_238773108);
  sub_2385AF8CC(v2, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6C8, &qword_238773110);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_2385B1104()
{
  v0 = sub_23875EA50();
  sub_23875C630();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D769D0];
  v7 = v4;
  v8 = [v5 preferredFontForTextStyle_];
  *(inited + 64) = sub_2385B2ED0();
  *(inited + 40) = v8;
  sub_23854B584(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DED0, &qword_23876E8F0);
  type metadata accessor for Key(0);
  sub_2385B2738(&qword_27DF091F0, type metadata accessor for Key, &unk_238762EF4);
  v9 = sub_23875E910();

  [v0 boundingRectWithSize:1 options:v9 attributes:0 context:{v2, 1.79769313e308}];

  sub_23875C630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  return sub_23875E2F0();
}

uint64_t sub_2385B1300@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_23875D510();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v1;
  v42[0] = v41;
  sub_2384397A8(v6, v7, v8);

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  LODWORD(v42[0]) = sub_23875D420();
  v28 = sub_23875DA20();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2384397FC(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath(byte_238773328);
  v21 = swift_getKeyPath(byte_238773358);
  v17 &= 1u;
  LOBYTE(v32) = v17;
  v39 = 0;
  v40 = *(v1 + 2);
  v22 = swift_allocObject();
  v23 = v1[1];
  *(v22 + 16) = *v1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v1 + 32);
  sub_238477AFC(&v41, v42);
  sub_2385B2CA0(&v40, v42);

  v24 = sub_23875E4A0();
  *&v32 = v28;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = v17;
  *(&v33 + 1) = v19;
  *&v34 = KeyPath;
  BYTE8(v34) = 0;
  *&v35 = v21;
  *(&v35 + 1) = 2;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = sub_2385B2C98;
  *&v37 = v22;
  *(&v37 + 1) = v24;
  v38 = v25;
  sub_23875D500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7D8, &qword_238773388);
  sub_2385B2CFC();
  v26 = v29;
  sub_23875DC10();
  (*(v30 + 8))(v5, v26);
  v42[4] = v36;
  v42[5] = v37;
  v43 = v38;
  v42[0] = v32;
  v42[1] = v33;
  v42[2] = v34;
  v42[3] = v35;
  return sub_238439884(v42, &qword_27DF0F7D8, &qword_238773388);
}

void sub_2385B15B4(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875C650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875E020();
  v15 = *a2;
  v14 = *(a2 + 2);
  (*(v7 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v9 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  (*(v7 + 32))(v10 + v9, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  sub_238477AFC(&v15, v13);
  sub_2385B2CA0(&v14, v13);

  *a3 = v12;
  a3[1] = sub_2385B2E6C;
  a3[2] = v10;
  a3[3] = 0;
  a3[4] = 0;
}

double sub_2385B17A4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B1104();

  return result;
}

__n128 sub_2385B1890@<Q0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v112 = sub_23875C8A0();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v119 = &v92[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v110 = &v92[-v3];
  v106 = sub_23875D2E0();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v92[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_23875C450();
  v107 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v92[-v7];
  v116 = type metadata accessor for MoreButton(0);
  v9 = *(v116 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v116);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v11 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v13 = &v92[-v12];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F798, &qword_2387732E8);
  MEMORY[0x28223BE20](v99);
  v97 = &v92[-v14];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7A0, &qword_2387732F0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v92[-v15];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7A8, &qword_2387732F8);
  MEMORY[0x28223BE20](v98);
  v117 = &v92[-v16];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7B0, &unk_238773300);
  MEMORY[0x28223BE20](v108);
  v109 = &v92[-v17];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v18 = qword_2814F1B90;
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

  v23 = sub_23875EA80();
  v25 = v24;

  *&v123 = v23;
  *(&v123 + 1) = v25;
  sub_2385B2A84(v118, &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MoreButton);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = swift_allocObject();
  v28 = sub_2385B2AEC(&v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v27 + v26, type metadata accessor for MoreButton);
  sub_2384397A8(v28, v29, v30);
  sub_23875E230();
  v94 = *(v116 + 24);
  v31 = v8;
  sub_2384D4E38(v8);
  v93 = *MEMORY[0x277CDF3D0];
  v32 = v107;
  v33 = v107[13];
  v114 = (v107 + 13);
  v115 = v33;
  v34 = v95;
  v35 = v101;
  v33(v95);
  v36 = sub_23875C440();
  v37 = v32[1];
  v107 = v37;
  (v37)(v34, v35);
  (v37)(v31, v35);
  v38 = objc_opt_self();
  v39 = &selRef_systemGray4Color;
  if (v36)
  {
    v39 = &selRef_systemGray6Color;
  }

  v40 = [v38 *v39];
  v41 = sub_23875DFB0();
  v42 = sub_23875D780();
  v43 = v97;
  (*(v11 + 32))(v97, v13, v96);
  v44 = v43 + *(v99 + 36);
  *v44 = v41;
  *(v44 + 8) = v42;
  v45 = v104;
  sub_23875D2D0();
  sub_2385B2BB4();
  sub_2385B2738(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v46 = v100;
  v47 = v106;
  sub_23875DB30();
  (*(v105 + 8))(v45, v47);
  sub_238439884(v43, &qword_27DF0F798, &qword_2387732E8);
  LOBYTE(v43) = sub_23875D7B0();
  sub_23875C3D0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v117;
  (*(v102 + 32))(v117, v46, v103);
  v57 = &v56[*(v98 + 36)];
  *v57 = v43;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7C8, &qword_238773310);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_238763B60;
  sub_2384D4E38(v31);
  v59 = v93;
  v115(v34, v93, v35);
  LOBYTE(v43) = sub_23875C440();
  v60 = v107;
  (v107)(v34, v35);
  v60(v31, v35);
  v61 = objc_opt_self();
  v62 = &selRef_systemGray4Color;
  if (v43)
  {
    v62 = &selRef_systemGray6Color;
  }

  v63 = [v61 *v62];
  sub_23875DFB0();
  *(v58 + 32) = sub_23875E440();
  *(v58 + 40) = v64;
  sub_2384D4E38(v31);
  v115(v34, v59, v35);
  v65 = sub_23875C440();
  v60(v34, v35);
  v60(v31, v35);
  v66 = objc_opt_self();
  v67 = &selRef_systemGray4Color;
  if (v65)
  {
    v67 = &selRef_systemGray6Color;
  }

  v68 = [v66 *v67];
  sub_23875DFB0();
  sub_23875E060();

  *(v58 + 48) = sub_23875E440();
  *(v58 + 56) = v69;
  v115 = sub_23875E450();
  v116 = *(v116 + 20);
  v70 = v110;
  sub_2384D5200(v110);
  v71 = *MEMORY[0x277CDFA88];
  v72 = v111;
  v73 = *(v111 + 104);
  v74 = v119;
  v75 = v112;
  v73(v119, v71, v112);
  v76 = sub_23875C890();
  v77 = *(v72 + 8);
  v77(v74, v75);
  v77(v70, v75);
  if (v76)
  {
    sub_23875E5B0();
  }

  else
  {
    sub_23875E5A0();
  }

  sub_2384D5200(v70);
  v78 = v119;
  v73(v119, v71, v75);
  v79 = sub_23875C890();
  v77(v78, v75);
  v77(v70, v75);
  if (v79)
  {
    sub_23875E5A0();
  }

  else
  {
    sub_23875E5B0();
  }

  v80 = v117;
  sub_23875C740();
  v81 = v120;
  v82 = sub_23875D780();
  v83 = v80;
  v84 = v109;
  sub_2384396E4(v83, v109, &qword_27DF0F7A8, &qword_2387732F8);
  v85 = &v84[*(v108 + 36)];
  *v85 = v81;
  v86 = v121;
  *(v85 + 24) = v122;
  *(v85 + 8) = v86;
  v85[40] = v82;
  sub_23875E490();
  sub_23875C9C0();
  v87 = v113;
  sub_2384396E4(v84, v113, &qword_27DF0F7B0, &unk_238773300);
  v88 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7D0, &unk_238773318) + 36);
  v89 = v128;
  *(v88 + 64) = v127;
  *(v88 + 80) = v89;
  *(v88 + 96) = v129;
  v90 = v124;
  *v88 = v123;
  *(v88 + 16) = v90;
  result = v126;
  *(v88 + 32) = v125;
  *(v88 + 48) = result;
  return result;
}

double sub_2385B25D4(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();

  return result;
}

double sub_2385B26C8()
{
  v1 = *(type metadata accessor for OrderDetailsStatusDescription_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385B0B4C(v2);
}

uint64_t sub_2385B2738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385B2780(uint64_t a1)
{
  v2 = type metadata accessor for MoreButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385B27E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F760;
  if (!qword_27DF0F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F760);
  }

  return result;
}

void sub_2385B2860(uint64_t a1)
{
  sub_23857C1DC(319, &qword_27DF0C678, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2385B1018(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      sub_2385B1018(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_2385B1018(319, &qword_27DF0F6B0, MEMORY[0x277CE02A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2385B2994()
{
  result = qword_27DF0F780;
  if (!qword_27DF0F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F6C8, &qword_238773110);
    sub_23843A3E8(&qword_27DF0F788, &qword_27DF0F790, qword_238773238, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F780);
  }

  return result;
}

uint64_t sub_2385B2A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385B2AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2385B2B54()
{
  v1 = *(type metadata accessor for MoreButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2385B25D4(v2);
}

unint64_t sub_2385B2BB4()
{
  result = qword_27DF0F7B8;
  if (!qword_27DF0F7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F798, &qword_2387732E8);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7B8);
  }

  return result;
}

unint64_t sub_2385B2CFC()
{
  result = qword_27DF0F7E0;
  if (!qword_27DF0F7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7D8, &qword_238773388);
    sub_2385B2DB4();
    sub_23843A3E8(&qword_27DF0F7F8, &qword_27DF0F800, &qword_2387733A0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7E0);
  }

  return result;
}

unint64_t sub_2385B2DB4()
{
  result = qword_27DF0F7E8;
  if (!qword_27DF0F7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7F0, &unk_238773390);
    sub_2384D0E10();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7E8);
  }

  return result;
}