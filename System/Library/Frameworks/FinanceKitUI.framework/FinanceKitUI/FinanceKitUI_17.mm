void *sub_2385F1BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D10, &qword_238776B98);
  sub_23843A3E8(&qword_27DF10D18, &qword_27DF10D10, &qword_238776B98, MEMORY[0x277CDE100]);
  v0 = sub_23875EEE0();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v13 = MEMORY[0x277D84F90];
  sub_2385FEEF8(0, v0 & ~(v0 >> 63), 0);
  v1 = v13;
  result = sub_23875EED0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v4 = sub_23875EF20();
      v6 = *v5;
      v4(&v12, 0);
      LODWORD(v4) = [v6 countOfDashboardItems];
      result = [v6 countOfDashboardItemsThatShowAsActive];
      v7 = v4 - result;
      if ((v4 - result) != v4 - result)
      {
        break;
      }

      v8 = [v6 month];

      v13 = v1;
      v10 = *(v1 + 16);
      v9 = *(v1 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2385FEEF8((v9 > 1), v10 + 1, 1);
        v1 = v13;
      }

      *(v1 + 16) = v10 + 1;
      v11 = v1 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      sub_23875EF10();
      if (!--v2)
      {
        return v1;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2385F1DC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1);
  v14 = &v14 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  type metadata accessor for OrderListContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v17 = v0;
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (v19 != v18)
  {
    return 0;
  }

  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v10(v6, v3);
  if (v19 != v18)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v11 = v14;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98, MEMORY[0x277CDE118]);
  v12 = v16;
  sub_23875EED0();
  sub_23875EF00();
  (*(v15 + 8))(v11, v12);
  return v19 == v18;
}

double sub_2385F20F8@<D0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = sub_23875D310();
  v32 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C28, &qword_238776AA8);
  v31 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v30 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C30, &qword_238776AB0);
  v33 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v30 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C38, &qword_238776AB8);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C40, &qword_238776AC0);
  MEMORY[0x28223BE20](v37);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C48, &qword_238776AC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = v14;
  v15 = sub_2385F1DC4();
  MEMORY[0x28223BE20](v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23875D400();
    v17 = [objc_opt_self() systemGroupedBackgroundColor];
    v18 = sub_23875DFB0();
    v19 = sub_23875D780();
    v20 = &v11[*(v37 + 36)];
    *v20 = v18;
    v20[8] = v19;
    sub_23843981C(v11, v9, &qword_27DF10C40, &qword_238776AC0);
    swift_storeEnumTagMultiPayload();
    sub_2385F731C();
    v21 = sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8, MEMORY[0x277CDE5A0]);
    v42 = v38;
    v43 = v40;
    v44 = v21;
    v45 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v22 = v36;
    sub_23875D1B0();
    sub_238439884(v11, &qword_27DF10C40, &qword_238776AC0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C50, &qword_238776AD0);
    sub_23843A3E8(&qword_27DF10C58, &qword_27DF10C50, &qword_238776AD0, MEMORY[0x277CE14C0]);
    sub_23875D9C0();
    sub_23875D300();
    v23 = sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8, MEMORY[0x277CDE5A0]);
    v24 = MEMORY[0x277CDE0D0];
    v25 = v38;
    v26 = v40;
    sub_23875DF50();
    (*(v32 + 8))(v3, v26);
    (*(v31 + 8))(v5, v25);
    v27 = v33;
    v28 = v39;
    (*(v33 + 16))(v9, v7, v39);
    swift_storeEnumTagMultiPayload();
    sub_2385F731C();
    v42 = v25;
    v43 = v26;
    v44 = v23;
    v45 = v24;
    swift_getOpaqueTypeConformance2();
    v22 = v36;
    sub_23875D1B0();
    (*(v27 + 8))(v7, v28);
  }

  sub_23841D608(v22, v41);

  return result;
}

double sub_2385F2830()
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

void sub_2385F29D0(uint64_t a1@<X8>)
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

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

double sub_2385F2B78(uint64_t a1)
{
  v2 = type metadata accessor for OrderListContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385F7B58(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2385F7BC0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for OrderListContent);
  sub_23875E200();

  return result;
}

void sub_2385F2D34(uint64_t a1)
{
  v12[1] = a1;
  v1 = sub_23875C6D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_23875B940();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B910();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    type metadata accessor for OrderListContent(0);
    sub_2384D51B0(v4);
    sub_23875C6A0();
    (*(v2 + 8))(v4, v1);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_2385F2FE0(uint64_t a1@<X8>)
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

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

double sub_2385F3188(uint64_t a1)
{
  v2 = type metadata accessor for OrderListContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_23875ED50();
  sub_23875ED40();
  v9 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385F33E0();
  v10 = sub_23875ED80();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_2385F7B58(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v11 = sub_23875ED40();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v9;
  sub_2385F7BC0(v5, v13 + v12, type metadata accessor for OrderListContent);
  sub_2386C3BA4(0, 0, v8, &unk_238776A88, v13);

  return result;
}

double sub_2385F33E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  MEMORY[0x28223BE20](v0);
  v17 = v16 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  *(inited + 32) = sub_23875EA50();
  v18 = inited + 32;
  v16[3] = type metadata accessor for OrderListContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  v8 = *(v4 + 8);
  v8(v6, v3);
  v16[1] = *MEMORY[0x277D38520];
  v16[2] = *MEMORY[0x277D38528];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  *(inited + 56) = sub_23875EA50();
  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v8(v6, v3);
  *(inited + 64) = sub_23875EA80();
  *(inited + 72) = v10;
  *(inited + 80) = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v11 = v17;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98, MEMORY[0x277CDE118]);
  v12 = v19;
  sub_23875EED0();
  sub_23875EF00();
  (*(v20 + 8))(v11, v12);
  *(inited + 88) = sub_23875EA80();
  *(inited + 96) = v13;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  sub_23844C218(*MEMORY[0x277D38548], 0, v14);

  return result;
}

double sub_2385F381C@<D0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C80, &qword_238776AE0);
  v70 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v57 = v54 - v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C88, &qword_238776AE8);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C90, &qword_238776AF0);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C98, &qword_238776AF8);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = v54 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CA0, &qword_238776B00);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CA8, qword_238776B08);
  MEMORY[0x28223BE20](v20 - 8);
  v67 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v54 - v23;
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = type metadata accessor for OrderListContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  v24 = v17 + 8;
  v25 = *(v17 + 8);
  v59 = v24;
  v25(v19, v16);
  v69 = v8;
  if (v77 == v76)
  {
    v26 = 1;
    v27 = v74;
    v28 = v60;
    v29 = v58;
  }

  else
  {
    sub_23875C500();
    v54[1] = swift_getKeyPath(byte_238776B20);
    v54[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CB0, &qword_238776B48);
    sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D0]);
    sub_2385F7778();
    sub_2385F77E0();
    v30 = v25;
    v31 = v55;
    sub_23875E370();
    v29 = v58;
    v27 = v74;
    v32 = v31;
    v25 = v30;
    v28 = v60;
    (*(v58 + 32))(v74, v32, v60);
    v26 = 0;
  }

  v33 = *(v29 + 56);
  v34 = 1;
  v33(v27, v26, 1, v28);
  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v25(v19, v16);
  v35 = v75;
  if (v77 != v76)
  {
    v36 = v56;
    sub_2385F42A0(v56);
    sub_2384396E4(v36, v35, &qword_27DF10C90, &qword_238776AF0);
    v34 = 0;
  }

  v37 = 1;
  (*(v61 + 56))(v35, v34, 1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v38 = v63;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98, MEMORY[0x277CDE118]);
  v39 = v66;
  sub_23875EED0();
  sub_23875EF00();
  (*(v64 + 8))(v38, v39);
  v41 = v69;
  v40 = v70;
  if (v77 != v76)
  {
    v77 = sub_2385F1808();
    swift_getKeyPath(byte_238776B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CF0, &qword_238776B88);
    v42 = sub_23843A3E8(&qword_27DF10CF8, &qword_27DF10CF0, &qword_238776B88, MEMORY[0x277D83980]);
    sub_2385F7A0C(v42, v43, v44);
    v45 = v57;
    sub_23875E370();
    (*(v40 + 32))(v41, v45, v1);
    v37 = 0;
  }

  (*(v40 + 56))(v41, v37, 1, v1);
  v46 = v74;
  v47 = v67;
  sub_23843981C(v74, v67, &qword_27DF10CA8, qword_238776B08);
  v48 = v68;
  sub_23843981C(v35, v68, &qword_27DF10C98, &qword_238776AF8);
  v49 = v71;
  sub_23843981C(v41, v71, &qword_27DF10C88, &qword_238776AE8);
  v50 = v41;
  v51 = v72;
  sub_23843981C(v47, v72, &qword_27DF10CA8, qword_238776B08);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D08, &qword_238776B90);
  sub_23843981C(v48, v51 + *(v52 + 48), &qword_27DF10C98, &qword_238776AF8);
  sub_23843981C(v49, v51 + *(v52 + 64), &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v50, &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v75, &qword_27DF10C98, &qword_238776AF8);
  sub_238439884(v46, &qword_27DF10CA8, qword_238776B08);
  sub_238439884(v49, &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v48, &qword_27DF10C98, &qword_238776AF8);
  sub_238439884(v47, &qword_27DF10CA8, qword_238776B08);

  return result;
}

uint64_t sub_2385F42A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CEA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v14 = v13;

  LOBYTE(v11) = sub_23875D790();
  v15 = sub_23875C3D0();
  LOBYTE(v26[0]) = 0;
  v16 = MEMORY[0x28223BE20](v15);
  v26[-2] = v1;
  v26[0] = v12;
  v26[1] = v14;
  v27 = v11;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D440, &qword_238776BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D20, &qword_238776BA8);
  sub_23851DC88();
  sub_2385F7A68();
  sub_23875E3B0();
  sub_23875CE90();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D40, &qword_238776BB8) + 36);
  (*(v4 + 16))(a1 + v20, v6, v3);
  v21 = *(v4 + 56);
  v21((a1 + v20), 0, 1, v3);
  KeyPath = swift_getKeyPath(aP_14);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C90, &qword_238776AF0) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v4 + 32))(v23 + v24, v6, v3);
  result = v21(v23 + v24, 0, 1, v3);
  *v23 = KeyPath;
  return result;
}

void sub_2385F45DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v15 - 2) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CE8, &qword_238776B60);
  sub_23843A3E8(&qword_27DF10CE0, &qword_27DF10CE8, &qword_238776B60, &unk_238769740);
  sub_23875E3D0();
  sub_23875CE90();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CC8, &qword_238776B50) + 36);
  (*(v5 + 16))(a2 + v10, v7, v4);
  v11 = *(v5 + 56);
  v11(a2 + v10, 0, 1, v4);
  KeyPath = swift_getKeyPath(aP_14);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CB0, &qword_238776B48) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v13 + v14, v7, v4);
  v11(v13 + v14, 0, 1, v4);

  *v13 = KeyPath;
}

char *sub_2385F4880@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D70, &qword_238776C48);
    swift_allocObject();
    v6 = a1;
    result = sub_23862712C(a1, v5, sub_2385F4934, 0);
    *a2 = result;
    a2[1] = 0;
    a2[2] = sub_2385F496C;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2385F4934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2385F0D14(v3, a2);
}

double sub_2385F4970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  active = type metadata accessor for OrderListActiveExtractedOrderRow(0);
  MEMORY[0x28223BE20](active);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D78, &qword_238776C50);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D80, &qword_238776C58);
  MEMORY[0x28223BE20](v41);
  v10 = &v37 - v9;
  v11 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderListContent.ActiveContentItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D88, &qword_238776C60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385F7B58(v38, v16, type metadata accessor for OrderListContent.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2385F7BC0(v16, v6, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
    sub_2385F7B58(v6, v3, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
    v20 = active;
    v21 = &v3[*(active + 20)];
    v44 = 0;
    sub_23875E1A0();
    v22 = v46;
    *v21 = v45;
    *(v21 + 1) = v22;
    v23 = *(v20 + 24);
    *&v3[v23] = swift_getKeyPath(byte_238776C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v24 = *(v20 + 28);
    *&v3[v24] = swift_getKeyPath(a0_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385F7B58(v3, v8, type metadata accessor for OrderListActiveExtractedOrderRow);
    swift_storeEnumTagMultiPayload();
    sub_2385F7DBC();
    sub_2385F7D4C(&qword_27DF10DA0, type metadata accessor for OrderListActiveExtractedOrderRow, &unk_238769374);
    sub_23875D1B0();
    sub_2385F7C28(v3, type metadata accessor for OrderListActiveExtractedOrderRow);
    v25 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel;
    v26 = v6;
  }

  else
  {
    sub_2385F7BC0(v16, v13, type metadata accessor for OrderListActiveOrderRow.ViewModel);
    sub_2385F7B58(v13, v10, type metadata accessor for OrderListActiveOrderRow.ViewModel);
    v27 = type metadata accessor for OrderListActiveOrderRow(0);
    v28 = &v10[v27[5]];
    v44 = 0;
    sub_23875E1A0();
    v29 = v46;
    *v28 = v45;
    *(v28 + 1) = v29;
    v30 = &v10[v27[6]];
    v44 = 0;
    sub_23875E1A0();
    v31 = v46;
    *v30 = v45;
    *(v30 + 1) = v31;
    v32 = v27[7];
    *&v10[v32] = swift_getKeyPath(a0_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v33 = &v10[*(v41 + 36)];
    v34 = sub_23875A710();
    (*(*(v34 - 8) + 16))(v33, v13, v34);
    v35 = &v33[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v35 = swift_getKeyPath(asc_238776C18);
    v35[8] = 0;
    sub_23843981C(v10, v8, &qword_27DF10D80, &qword_238776C58);
    swift_storeEnumTagMultiPayload();
    sub_2385F7DBC();
    sub_2385F7D4C(&qword_27DF10DA0, type metadata accessor for OrderListActiveExtractedOrderRow, &unk_238769374);
    sub_23875D1B0();
    sub_238439884(v10, &qword_27DF10D80, &qword_238776C58);
    v25 = type metadata accessor for OrderListActiveOrderRow.ViewModel;
    v26 = v13;
  }

  sub_2385F7C28(v26, v25);
  sub_2384396E4(v19, v43, &qword_27DF10D88, &qword_238776C60);

  return result;
}

uint64_t sub_2385F5030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for OrderListContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  swift_getKeyPath(byte_238776B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D38, &qword_238776BB0);
  sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0, MEMORY[0x277CDD8D0]);
  sub_2385F7778();
  sub_23843A3E8(&qword_27DF10D30, &qword_27DF10D38, &qword_238776BB0, &unk_238769740);
  return sub_23875E370();
}

void sub_2385F51CC(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D48, &unk_238776BF0);
    swift_allocObject();
    v6 = v3;
    v7 = sub_238627654(v3, v5, sub_2385F52F4, 0);

    *a2 = v7;
    a2[1] = 0;
    a2[2] = sub_2385F532C;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2385F52F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2385F13B4(v3, a2);
}

uint64_t sub_2385F532C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a1;
  v72 = a2;
  v59 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  MEMORY[0x28223BE20](v59);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE40, &qword_23876C680);
  v62 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v5 = &v57 - v4;
  v6 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D50, &qword_238776C00);
  MEMORY[0x28223BE20](v69);
  v70 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - v11;
  v64 = type metadata accessor for OrderNavigationDestination(0);
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v58);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0CF40, &qword_23876C710);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D58, &qword_238776C08);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v57 - v18;
  v19 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385F7B58(v67, v24, type metadata accessor for OrderListContent.CurrentMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2385F7BC0(v24, v8, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2385F7B58(v8, v3, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v25 = v59;
    v26 = &v3[*(v59 + 20)];
    v73 = 0;
    sub_23875E1A0();
    v27 = v75;
    *v26 = v74;
    *(v26 + 1) = v27;
    v28 = *(v25 + 24);
    *&v3[v28] = swift_getKeyPath(a0_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2384FD5E4(*v8, v8[1]);
    sub_2385F7C28(v3, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v29 = v62;
    v30 = v71;
    (*(v62 + 16))(v70, v5, v71);
    swift_storeEnumTagMultiPayload();
    v31 = MEMORY[0x277CDD938];
    sub_23843A3E8(&qword_27DF10D60, &qword_27DF10D58, &qword_238776C08, MEMORY[0x277CDD938]);
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680, v31);
    sub_23875D1B0();
    (*(v29 + 8))(v5, v30);
    v32 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v33 = v8;
  }

  else
  {
    sub_2385F7BC0(v24, v21, type metadata accessor for OrderListContent.CurrentMonthItemViewModel);
    sub_2385F7B58(&v21[*(v19 + 20)], v17, type metadata accessor for OrderListRow.ViewModel);
    v34 = *(type metadata accessor for OrderListRow(0) + 20);
    *&v17[v34] = swift_getKeyPath(a0_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v35 = *(v19 + 24);
    v36 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF0, &qword_238776C10) + 36)];
    sub_2385F7B58(&v21[v35], v36, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v37 = type metadata accessor for OrderListRowActionsModifier(0);
    v38 = v36 + *(v37 + 20);
    v73 = 0;
    sub_23875E1A0();
    v39 = v75;
    *v38 = v74;
    *(v38 + 8) = v39;
    v40 = *(v37 + 24);
    *(v36 + v40) = swift_getKeyPath(byte_2387768D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v57 = v15;
    v41 = &v17[*(v15 + 36)];
    v42 = sub_23875A710();
    v43 = *(*(v42 - 8) + 16);
    v43(v41, v21, v42);
    v44 = &v41[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v44 = swift_getKeyPath(asc_238776C18);
    v44[8] = 0;
    v45 = v14;
    v43(v14, v21, v42);
    v46 = &v14[*(v58 + 20)];
    *v46 = 0;
    *(v46 + 1) = 0;
    v47 = v14;
    v48 = v60;
    sub_2385F7B58(v47, v60, type metadata accessor for FetchedOrderDetailsDestination);
    v49 = v64;
    swift_storeEnumTagMultiPayload();
    v50 = v65;
    sub_2385F7B58(v48, v65, type metadata accessor for OrderNavigationDestination);
    v51 = (*(v61 + 56))(v50, 0, 1, v49);
    MEMORY[0x28223BE20](v51);
    *(&v57 - 2) = v17;
    sub_2385F7C90();
    sub_2385F7D4C(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
    v52 = v63;
    sub_23875C760();
    sub_2385F7C28(v48, type metadata accessor for OrderNavigationDestination);
    sub_2385F7C28(v45, type metadata accessor for FetchedOrderDetailsDestination);
    sub_238439884(v17, &unk_27DF0CF40, &qword_23876C710);
    v53 = v66;
    v54 = v68;
    (*(v66 + 16))(v70, v52, v68);
    swift_storeEnumTagMultiPayload();
    v55 = MEMORY[0x277CDD938];
    sub_23843A3E8(&qword_27DF10D60, &qword_27DF10D58, &qword_238776C08, MEMORY[0x277CDD938]);
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680, v55);
    sub_23875D1B0();
    (*(v53 + 8))(v52, v54);
    v32 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel;
    v33 = v21;
  }

  return sub_2385F7C28(v33, v32);
}

void sub_2385F5D78(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_2385F5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_23875BC40();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_23875ED50();
  v4[9] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2385F5F70, v8, v7);
}

uint64_t sub_2385F5F70()
{
  v0[12] = sub_2387579D0();
  v0[13] = sub_2387579A0();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2385F601C;

  return MEMORY[0x282116E48]();
}

uint64_t sub_2385F601C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2385F65D8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2385F6138;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2385F6138(__n128 a1)
{
  *(v1 + 128) = sub_2387579A0();
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_2385F61D8;

  return MEMORY[0x282116E60]();
}

uint64_t sub_2385F61D8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2385F6780;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2385F62F4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2385F62F4(__n128 a1)
{
  v1[19] = sub_2387579A0();
  sub_23875BBF0();
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_2385F63A8;
  v3 = v1[8];

  return MEMORY[0x282116E90](v3);
}

uint64_t sub_2385F63A8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_2385F6928;
  }

  else
  {
    v8 = sub_2385F6564;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2385F6564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2385F65D8()
{

  v1 = v0[15];
  v2 = v0[5];

  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to update orders as active: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2385F6780()
{

  v1 = v0[18];
  v2 = v0[5];

  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to update orders as active: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2385F6928()
{
  v1 = v0[21];
  v2 = v0[5];

  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to update orders as active: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2385F6AC8@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_2387768D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for OrderListContent(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath(aX_13);
  v3[40] = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath(aX_14);
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath(a0_8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  sub_238759C20();
  sub_238759BD0();
  sub_23875E500();
  sub_23875C4F0();
  sub_2385F0244();
  sub_23875E500();
  sub_23875C4F0();
  sub_2385F0ADC();
  swift_getKeyPath(byte_238776998);
  sub_23875E500();
  sub_23875D330();
  v6 = v2[11];
  *(a1 + v6) = swift_getKeyPath(byte_2387769C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385F6C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2385F20F8(a2);
  sub_2385F7B58(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2385F7BC0(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for OrderListContent);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C08, &unk_238776A70);
  v9 = (a2 + *(result + 36));
  *v9 = sub_2385F720C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

BOOL sub_2385F6DDC(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = *(a2 + v5 + 8);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v7 && v8 == v9;
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v6 + *(v11 + 20), v7 + *(v11 + 20)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(v6 + v12);
  v14 = *(v6 + v12 + 8);
  v15 = (v7 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](v6 + *(v17 + 20), v7 + *(v17 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](v6 + *(v17 + 24), v7 + *(v17 + 24)) & 1) == 0)
  {
    return 0;
  }

  v18 = *(v4 + 24);
  v19 = a1 + v18;
  v20 = a2 + v18;
  if ((MEMORY[0x23EE5F1E0](v19, v20) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  return *(v19 + *(v21 + 20)) == *(v20 + *(v21 + 20)) && *(v19 + *(v21 + 24)) == *(v20 + *(v21 + 24));
}

void sub_2385F6F68(uint64_t a1)
{
  sub_2385F7124(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_238464EC8(319);
    if (v2 <= 0x3F)
    {
      sub_23853C1AC(319);
      if (v3 <= 0x3F)
      {
        sub_2385F7124(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2385F7124(319, &qword_27DF0CDD0, MEMORY[0x277CC7C60], MEMORY[0x277CDD7C8]);
          if (v5 <= 0x3F)
          {
            sub_2385F7188(319);
            if (v6 <= 0x3F)
            {
              sub_2385F7124(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

void sub_2385F7124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385F7188(uint64_t a1)
{
  if (!qword_27DF10C00)
  {
    sub_23875A850();
    v1 = sub_23875D360();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF10C00);
    }
  }
}

uint64_t sub_2385F7224(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderListContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2385F5E20(a1, v6, v7, v1 + v5);
}

unint64_t sub_2385F731C()
{
  result = qword_27DF10C68;
  if (!qword_27DF10C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C40, &qword_238776AC0);
    sub_23843A3E8(&qword_27DF10C70, &qword_27DF10C78, &qword_238776AD8, MEMORY[0x277CDE158]);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10C68);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for OrderListContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  sub_2384B4E98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C880();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);
  v12(v5 + v1[9], v11);
  v13 = v1[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C6D0();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385F7704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderListContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2385F7778()
{
  result = qword_27DF0B110;
  if (!qword_27DF0B110)
  {
    sub_238449184(255, &qword_27DF0B108, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B110);
  }

  return result;
}

unint64_t sub_2385F77E0()
{
  result = qword_27DF10CB8;
  if (!qword_27DF10CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CB0, &qword_238776B48);
    sub_2385F7898();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CB8);
  }

  return result;
}

unint64_t sub_2385F7898()
{
  result = qword_27DF10CC0;
  if (!qword_27DF10CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CC8, &qword_238776B50);
    sub_2385F7950();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CC0);
  }

  return result;
}

unint64_t sub_2385F7950()
{
  result = qword_27DF10CD0;
  if (!qword_27DF10CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CD8, &qword_238776B58);
    sub_23843A3E8(&qword_27DF10CE0, &qword_27DF10CE8, &qword_238776B60, &unk_238769740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CD0);
  }

  return result;
}

unint64_t sub_2385F7A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10D00;
  if (!qword_27DF10D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D00);
  }

  return result;
}

unint64_t sub_2385F7A68()
{
  result = qword_27DF10D28;
  if (!qword_27DF10D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10D20, &qword_238776BA8);
    sub_23843A3E8(&qword_27DF10D30, &qword_27DF10D38, &qword_238776BB0, &unk_238769740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D28);
  }

  return result;
}

uint64_t sub_2385F7B58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385F7BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385F7C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385F7C90()
{
  result = qword_27DF10D68;
  if (!qword_27DF10D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0CF40, &qword_23876C710);
    sub_23850004C();
    sub_2385F7D4C(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D68);
  }

  return result;
}

uint64_t sub_2385F7D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385F7DBC()
{
  result = qword_27DF10D90;
  if (!qword_27DF10D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10D80, &qword_238776C58);
    sub_2385F7D4C(&qword_27DF10D98, type metadata accessor for OrderListActiveOrderRow, &unk_238776258);
    sub_2385F7D4C(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D90);
  }

  return result;
}

uint64_t sub_2385F7ED0(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OrderListRow.ViewModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2385F7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2385F8044()
{
  result = qword_27DF10DD8;
  if (!qword_27DF10DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C08, &unk_238776A70);
    sub_2385F80D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DD8);
  }

  return result;
}

unint64_t sub_2385F80D0()
{
  result = qword_27DF10DE0;
  if (!qword_27DF10DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10DE8, qword_238776CF8);
    sub_2385F8154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DE0);
  }

  return result;
}

unint64_t sub_2385F8154()
{
  result = qword_27DF10DF0;
  if (!qword_27DF10DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C48, &qword_238776AC8);
    sub_2385F731C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C28, &qword_238776AA8);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DF0);
  }

  return result;
}

uint64_t OrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void OrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t OrderDetailsDestination.sourceApplication.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void OrderDetailsDestination.sourceApplication.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t OrderDetailsDestination.hash(into:)(uint64_t a1)
{
  v2 = sub_23875A710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  sub_238757D40();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_23875F720();
    sub_23875EB30();
    if (v7)
    {
LABEL_3:
      sub_23875F720();
      return sub_23875EB30();
    }
  }

  else
  {
    sub_23875F720();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  return sub_23875F720();
}

uint64_t OrderDetailsDestination.hashValue.getter()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_23875F700();
  sub_238757D40();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  (*(v2 + 8))(v4, v1);
  if (!v5)
  {
    sub_23875F720();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23875F720();
    return sub_23875F760();
  }

  sub_23875F720();
  sub_23875EB30();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23875F720();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F8704()
{
  v3[9] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  sub_23875F700();
  OrderDetailsDestination.hash(into:)(v3);
  return sub_23875F760();
}

uint64_t sub_2385F8760()
{
  v3[9] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  sub_23875F700();
  OrderDetailsDestination.hash(into:)(v3);
  return sub_23875F760();
}

uint64_t FetchedOrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));

  return v1;
}

void FetchedOrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t static FetchedOrderDetailsDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x23EE5F1E0]())
  {
    v4 = *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FetchedOrderDetailsDestination.hash(into:)(uint64_t a1)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (!*(v1 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20) + 8))
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t FetchedOrderDetailsDestination.hashValue.getter()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (*(v0 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20) + 8))
  {
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8AD8(uint64_t a1)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8BAC(uint64_t a1, uint64_t a2)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (!*(v2 + *(a2 + 20) + 8))
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t sub_2385F8C80(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x23EE5F1E0]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FetchedExtractedOrderDetailsDestination.trackedOrderIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void FetchedExtractedOrderDetailsDestination.trackedOrderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FetchedExtractedOrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FetchedExtractedOrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static FetchedExtractedOrderDetailsDestination.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t FetchedExtractedOrderDetailsDestination.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_23875EB30();
  if (!v2)
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t FetchedExtractedOrderDetailsDestination.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v1)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F908C()
{
  v1 = *(v0 + 24);
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v1)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F9118(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_23875EB30();
  if (!v2)
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t sub_2385F9194()
{
  v1 = *(v0 + 24);
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v1)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F9220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875A710();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2385F928C(uint64_t a1)
{
  v3 = sub_23875A710();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReturnDetailsDestination.returnIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));

  return v1;
}

void ReturnDetailsDestination.returnIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t static ReturnDetailsDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ReturnDetailsDestination(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t ReturnDetailsDestination.hash(into:)(uint64_t a1)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  type metadata accessor for ReturnDetailsDestination(0);

  return sub_23875EB30();
}

uint64_t ReturnDetailsDestination.hashValue.getter()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  type metadata accessor for ReturnDetailsDestination(0);
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F95A8(uint64_t a1)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F9650(uint64_t a1, uint64_t a2)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();

  return sub_23875EB30();
}

uint64_t sub_2385F96EC(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F9790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t OrderPaymentDestination.fullyQualifiedOrderIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v4 = sub_23875A710();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderPaymentDestination.fullyQualifiedOrderIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v4 = sub_23875A710();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderPaymentDestination.init(viewModel:fullyQualifiedOrderIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2385FC6CC(a1, a3, type metadata accessor for OrderPaymentViewModel);
  v5 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v6 = sub_23875A710();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

void static OrderPaymentDestination.== infix(_:_:)()
{
  type metadata accessor for OrderPaymentDestination(0);

  JUMPOUT(0x23EE5F1E0);
}

uint64_t OrderPaymentDestination.hash(into:)(uint64_t a1)
{
  type metadata accessor for OrderPaymentDestination(0);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  return sub_23875E960();
}

uint64_t OrderPaymentDestination.hashValue.getter()
{
  sub_23875F700();
  type metadata accessor for OrderPaymentDestination(0);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385F9BE8()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385F9C84(uint64_t a1)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  return sub_23875E960();
}

uint64_t sub_2385F9D04()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  return sub_23875F760();
}

double OrderNavigationDestination.hash(into:)(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for OrderPaymentDestination(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875A710();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2385FC664(v1, v16, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2385FC6CC(v16, v7, type metadata accessor for ReturnDetailsDestination);
      MEMORY[0x23EE641F0](3);
      sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
      sub_23875E960();
      sub_23875EB30();
      sub_2385FC734(v7, type metadata accessor for ReturnDetailsDestination);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2385FC6CC(v16, v4, type metadata accessor for OrderPaymentDestination);
      MEMORY[0x23EE641F0](4);
      sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
      sub_23875E960();
      sub_2385FC734(v4, type metadata accessor for OrderPaymentDestination);
    }

    else
    {
      MEMORY[0x23EE641F0](5);
      sub_23875F730();
      sub_23875F730();
    }

    return result;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *v16;
    v20 = v16[2];
    v21 = v16[4];
    MEMORY[0x23EE641F0](0);
    sub_238757D40();
    sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    v22 = v26;
    sub_23875E960();
    (*(v25 + 8))(v13, v22);
    if (v20)
    {
      sub_23875F720();
      sub_23875EB30();
      if (v21)
      {
LABEL_11:
        sub_23875F720();
        sub_23875EB30();
LABEL_18:

LABEL_22:

        return result;
      }
    }

    else
    {
      sub_23875F720();
      if (v21)
      {
        goto LABEL_11;
      }
    }

    sub_23875F720();
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = v16[3];
    MEMORY[0x23EE641F0](2);
    sub_23875EB30();
    sub_23875F720();
    if (v23)
    {
      sub_23875EB30();
    }

    goto LABEL_22;
  }

  sub_2385FC6CC(v16, v10, type metadata accessor for FetchedOrderDetailsDestination);
  MEMORY[0x23EE641F0](1);
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
  sub_23875E960();
  if (*&v10[*(v8 + 20) + 8])
  {
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  sub_2385FC734(v10, type metadata accessor for FetchedOrderDetailsDestination);
  return result;
}

uint64_t OrderNavigationDestination.hashValue.getter()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385FA3DC()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385FA420()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t OrderNavigationDestinationView.body.getter@<X0>(void *a1@<X8>)
{
  v122 = a1;
  v107 = type metadata accessor for OrderArchiveMonthContents(0);
  MEMORY[0x28223BE20](v107);
  v97 = (&v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10DF8, &qword_238776D30);
  MEMORY[0x28223BE20](v102);
  v105 = &v86 - v2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E00, &qword_238776D38);
  MEMORY[0x28223BE20](v121);
  v108 = &v86 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E08, &qword_238776D40);
  MEMORY[0x28223BE20](v104);
  v94 = &v86 - v4;
  v90 = type metadata accessor for OrderPaymentDestination(0);
  MEMORY[0x28223BE20](v90);
  v93 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E10, &qword_238776D48);
  MEMORY[0x28223BE20](v110);
  v96 = &v86 - v6;
  v89 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v89);
  v95 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E18, &qword_238776D50);
  MEMORY[0x28223BE20](v103);
  v106 = &v86 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E20, &qword_238776D58);
  MEMORY[0x28223BE20](v117);
  v109 = &v86 - v9;
  v88 = type metadata accessor for FetchedExtractedOrderDetails(0);
  MEMORY[0x28223BE20](v88);
  v11 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E28, &qword_238776D60);
  MEMORY[0x28223BE20](v101);
  v92 = &v86 - v12;
  v13 = sub_23875A710();
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FetchedOrderDetails(0);
  MEMORY[0x28223BE20](v87);
  v17 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E30, &qword_238776D68);
  MEMORY[0x28223BE20](v100);
  v91 = &v86 - v18;
  v19 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v19);
  v99 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E38, &qword_238776D70);
  MEMORY[0x28223BE20](v118);
  v120 = &v86 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E40, &qword_238776D78);
  MEMORY[0x28223BE20](v113);
  v115 = &v86 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E48, &qword_238776D80);
  MEMORY[0x28223BE20](v98);
  v24 = &v86 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E50, &qword_238776D88);
  MEMORY[0x28223BE20](v114);
  v26 = &v86 - v25;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E58, &qword_238776D90);
  MEMORY[0x28223BE20](v119);
  v116 = &v86 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E60, &qword_238776D98);
  MEMORY[0x28223BE20](v28);
  v30 = &v86 - v29;
  v31 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385FC664(v123, v33, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v48 = v93;
        sub_2385FC6CC(v33, v93, type metadata accessor for OrderPaymentDestination);
        v49 = v94;
        sub_2385FC664(v48, v94, type metadata accessor for OrderPaymentViewModel);
        v50 = v49 + *(v104 + 36);
        (*(v111 + 16))(v50, v48 + *(v90 + 20), v112);
        v51 = v50 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
        *v51 = swift_getKeyPath(a0_9);
        *(v51 + 8) = 0;
        sub_23843981C(v49, v105, &qword_27DF10E08, &qword_238776D40);
        swift_storeEnumTagMultiPayload();
        sub_2385FC7FC();
        sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents, &protocol conformance descriptor for OrderArchiveMonthContents);
        v52 = v108;
        sub_23875D1B0();
        sub_23843981C(v52, v120, &qword_27DF10E00, &qword_238776D38);
        swift_storeEnumTagMultiPayload();
        sub_2385FC930();
        sub_2385FCB88();
        sub_23875D1B0();
        sub_238439884(v52, &qword_27DF10E00, &qword_238776D38);
        sub_238439884(v49, &qword_27DF10E08, &qword_238776D40);
        v53 = type metadata accessor for OrderPaymentDestination;
        v54 = v48;
      }

      else
      {
        v82 = *(v33 + 1);
        v83 = *v33;
        sub_2385F0128(*v33, v82);
        sub_23875E500();
        sub_238759C20();
        v84 = v97;
        sub_23875C4F0();
        *v84 = v83;
        v84[1] = v82;
        sub_2385FC664(v84, v105, type metadata accessor for OrderArchiveMonthContents);
        swift_storeEnumTagMultiPayload();
        sub_2385FC7FC();
        sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents, &protocol conformance descriptor for OrderArchiveMonthContents);
        v85 = v108;
        sub_23875D1B0();
        sub_23843981C(v85, v120, &qword_27DF10E00, &qword_238776D38);
        swift_storeEnumTagMultiPayload();
        sub_2385FC930();
        sub_2385FCB88();
        sub_23875D1B0();
        sub_238439884(v85, &qword_27DF10E00, &qword_238776D38);
        v53 = type metadata accessor for OrderArchiveMonthContents;
        v54 = v84;
      }

      return sub_2385FC734(v54, v53);
    }

    v45 = v95;
    sub_2385FC6CC(v33, v95, type metadata accessor for ReturnDetailsDestination);
    sub_238758890();
    v124 = sub_238758880();
    v64 = sub_238758A30();

    v65 = v96;
    (*(v111 + 16))(v96, v45, v112);
    v66 = sub_2386D1E8C(v65, v64, *(v45 + *(v89 + 20)), *(v45 + *(v89 + 20) + 8));

    v67 = (v65 + *(type metadata accessor for FetchedReturnDetails(0) + 20));
    *v67 = v66;
    v67[1] = 0;
    sub_2385FC664(v45, v65 + *(v110 + 52), type metadata accessor for ReturnDetailsDestination);
    sub_23843981C(v65, v106, &qword_27DF10E10, &qword_238776D48);
    swift_storeEnumTagMultiPayload();
    sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
    sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
    v68 = v109;
    sub_23875D1B0();
    sub_23843981C(v68, v115, &qword_27DF10E20, &qword_238776D58);
    swift_storeEnumTagMultiPayload();
    sub_2385FC9BC();
    sub_2385FCA78();
    v69 = v116;
    sub_23875D1B0();
    sub_238439884(v68, &qword_27DF10E20, &qword_238776D58);
    sub_23843981C(v69, v120, &qword_27DF10E58, &qword_238776D90);
    swift_storeEnumTagMultiPayload();
    sub_2385FC930();
    sub_2385FCB88();
    sub_23875D1B0();
    sub_238439884(v69, &qword_27DF10E58, &qword_238776D90);
    sub_238439884(v65, &qword_27DF10E10, &qword_238776D48);
    v47 = type metadata accessor for ReturnDetailsDestination;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v55 = *v33;
      v56 = *(v33 + 1);
      v57 = *(v33 + 2);
      v123 = *(v33 + 3);
      v58 = *(v33 + 4);
      KeyPath = swift_getKeyPath(byte_238776DC8);

      v60 = v55;

      sub_238757D40();
      *v30 = v60;
      *(v30 + 1) = v56;
      v61 = v123;
      *(v30 + 2) = v57;
      *(v30 + 3) = v61;
      *(v30 + 4) = v58;
      *(v30 + 5) = KeyPath;
      v30[48] = 0;
      sub_23843981C(v30, v24, &qword_27DF10E60, &qword_238776D98);
      swift_storeEnumTagMultiPayload();
      sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
      sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
      sub_23875D1B0();
      sub_23843981C(v26, v115, &qword_27DF10E50, &qword_238776D88);
      swift_storeEnumTagMultiPayload();
      sub_2385FC9BC();
      sub_2385FCA78();
      v62 = v116;
      sub_23875D1B0();
      sub_238439884(v26, &qword_27DF10E50, &qword_238776D88);
      sub_23843981C(v62, v120, &qword_27DF10E58, &qword_238776D90);
      swift_storeEnumTagMultiPayload();
      sub_2385FC930();
      sub_2385FCB88();
      sub_23875D1B0();

      sub_238439884(v62, &qword_27DF10E58, &qword_238776D90);
      return sub_238439884(v30, &qword_27DF10E60, &qword_238776D98);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v70 = *v33;
      v71 = *(v33 + 1);
      v73 = *(v33 + 2);
      v72 = *(v33 + 3);
      v74 = v11 + *(v88 + 28);
      *v74 = swift_getKeyPath(byte_238776DC8);
      v74[8] = 0;
      sub_238759480();

      v75 = sub_238759440();
      sub_23845CA1C();
      v76 = sub_23875EC60();
      [v75 setSortDescriptors_];

      v77 = sub_238759410();
      [v75 setPredicate_];

      sub_23875E500();
      sub_23875C4F0();
      *v11 = v70;
      v11[1] = v71;
      v11[2] = v73;
      v11[3] = v72;

      v78 = v92;
      sub_2385FC664(v11, v92, type metadata accessor for FetchedExtractedOrderDetails);
      v79 = (v78 + *(v101 + 52));
      *v79 = v70;
      v79[1] = v71;
      sub_2385FC734(v11, type metadata accessor for FetchedExtractedOrderDetails);
      sub_23843981C(v78, v106, &qword_27DF10E28, &qword_238776D60);
      swift_storeEnumTagMultiPayload();
      sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
      sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
      v80 = v109;
      sub_23875D1B0();
      sub_23843981C(v80, v115, &qword_27DF10E20, &qword_238776D58);
      swift_storeEnumTagMultiPayload();
      sub_2385FC9BC();
      sub_2385FCA78();
      v81 = v116;
      sub_23875D1B0();
      sub_238439884(v80, &qword_27DF10E20, &qword_238776D58);
      sub_23843981C(v81, v120, &qword_27DF10E58, &qword_238776D90);
      swift_storeEnumTagMultiPayload();
      sub_2385FC930();
      sub_2385FCB88();
      sub_23875D1B0();
      sub_238439884(v81, &qword_27DF10E58, &qword_238776D90);
      return sub_238439884(v78, &qword_27DF10E28, &qword_238776D60);
    }

    v35 = v99;
    sub_2385FC6CC(v33, v99, type metadata accessor for FetchedOrderDetailsDestination);
    v36 = v111;
    v123 = *(v111 + 16);
    v123(v15, v35, v112);
    v37 = (v35 + *(v19 + 20));
    v38 = *v37;
    v109 = v37[1];
    v110 = v38;
    sub_238757DF0();

    v39 = sub_238757D80();
    sub_23845CA1C();
    v40 = sub_23875EC60();
    [v39 setSortDescriptors_];

    v41 = MEMORY[0x23EE5C810](v15);
    [v39 setPredicate_];

    sub_23875E500();
    sub_23875C4F0();
    v42 = v112;
    (*(v36 + 8))(v15, v112);
    v43 = v109;
    *v17 = v110;
    v17[1] = v43;
    v44 = v91;
    sub_2385FC664(v17, v91, type metadata accessor for FetchedOrderDetails);
    v45 = v99;
    v123(v44 + *(v100 + 52), v99, v42);
    sub_2385FC734(v17, type metadata accessor for FetchedOrderDetails);
    sub_23843981C(v44, v24, &qword_27DF10E30, &qword_238776D68);
    swift_storeEnumTagMultiPayload();
    sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
    sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
    sub_23875D1B0();
    sub_23843981C(v26, v115, &qword_27DF10E50, &qword_238776D88);
    swift_storeEnumTagMultiPayload();
    sub_2385FC9BC();
    sub_2385FCA78();
    v46 = v116;
    sub_23875D1B0();
    sub_238439884(v26, &qword_27DF10E50, &qword_238776D88);
    sub_23843981C(v46, v120, &qword_27DF10E58, &qword_238776D90);
    swift_storeEnumTagMultiPayload();
    sub_2385FC930();
    sub_2385FCB88();
    sub_23875D1B0();
    sub_238439884(v46, &qword_27DF10E58, &qword_238776D90);
    sub_238439884(v44, &qword_27DF10E30, &qword_238776D68);
    v47 = type metadata accessor for FetchedOrderDetailsDestination;
  }

  v53 = v47;
  v54 = v45;
  return sub_2385FC734(v54, v53);
}

uint64_t _s12FinanceKitUI23OrderDetailsDestinationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_23875A710();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = a1[1];
  v12 = a1[2];
  v21 = a1[3];
  v22 = v11;
  v23 = a1[4];
  v13 = a2[1];
  v14 = a2[2];
  v20 = a2[3];
  v15 = a2[4];
  sub_238757D40();
  sub_238757D40();
  v16 = MEMORY[0x23EE5F1E0](v10, v7);
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_7;
    }

LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (!v14 || (v22 != v13 || v12 != v14) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v18 = (v23 | v15) == 0;
  if (v23 && v15)
  {
    if (v21 == v20 && v23 == v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_23875F630();
    }
  }

  return v18 & 1;
}

uint64_t _s12FinanceKitUI26OrderNavigationDestinationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v80 = a2;
  v77 = type metadata accessor for OrderPaymentDestination(0);
  MEMORY[0x28223BE20](v77);
  v76 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v75);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v74);
  v78 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v74 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v74 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F58, &qword_238777278);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v74 + *(v26 + 56) - v25);
  v28 = a1;
  v29 = &v74 - v25;
  sub_2385FC664(v28, &v74 - v25, type metadata accessor for OrderNavigationDestination);
  sub_2385FC664(v80, v27, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2385FC664(v29, v14, type metadata accessor for OrderNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v45 = v27;
        v46 = v79;
        sub_2385FC6CC(v45, v79, type metadata accessor for ReturnDetailsDestination);
        if (MEMORY[0x23EE5F1E0](v14, v46))
        {
          if (v47 = *(v75 + 20), v48 = *&v14[v47], v49 = *&v14[v47 + 8], v50 = (v46 + v47), v48 == *v50) && v49 == v50[1] || (sub_23875F630())
          {
            v38 = type metadata accessor for ReturnDetailsDestination;
            sub_2385FC734(v46, type metadata accessor for ReturnDetailsDestination);
            v39 = v14;
            goto LABEL_24;
          }
        }

        v69 = type metadata accessor for ReturnDetailsDestination;
        sub_2385FC734(v46, type metadata accessor for ReturnDetailsDestination);
        v70 = v14;
LABEL_52:
        sub_2385FC734(v70, v69);
        goto LABEL_53;
      }

      sub_2385FC734(v14, type metadata accessor for ReturnDetailsDestination);
LABEL_43:
      sub_238439884(v29, &qword_27DF10F58, &qword_238777278);
LABEL_57:
      v41 = 0;
      return v41 & 1;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2385FC664(v29, v11, type metadata accessor for OrderNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2385FC734(v11, type metadata accessor for OrderPaymentDestination);
        goto LABEL_43;
      }

      v40 = v76;
      sub_2385FC6CC(v27, v76, type metadata accessor for OrderPaymentDestination);
      v41 = MEMORY[0x23EE5F1E0](&v11[*(v77 + 20)], v40 + *(v77 + 20));
      sub_2385FC734(v40, type metadata accessor for OrderPaymentDestination);
      sub_2385FC734(v11, type metadata accessor for OrderPaymentDestination);
    }

    else
    {
      sub_2385FC664(v29, v8, type metadata accessor for OrderNavigationDestination);
      v63 = v8[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_43;
      }

      if (*v8 != *v27)
      {
LABEL_53:
        v71 = v29;
LABEL_56:
        sub_2385FC734(v71, type metadata accessor for OrderNavigationDestination);
        goto LABEL_57;
      }

      v41 = v63 == v27[1];
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2385FC664(v29, v20, type metadata accessor for OrderNavigationDestination);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v31 = v27;
          v32 = v78;
          sub_2385FC6CC(v31, v78, type metadata accessor for FetchedOrderDetailsDestination);
          if (MEMORY[0x23EE5F1E0](v20, v32))
          {
            v33 = *(v74 + 20);
            v34 = &v20[v33];
            v35 = *&v20[v33 + 8];
            v36 = (v32 + v33);
            v37 = v36[1];
            if (v35)
            {
              if (v37 && (*v34 == *v36 && v35 == v37 || (sub_23875F630() & 1) != 0))
              {
                goto LABEL_11;
              }
            }

            else if (!v37)
            {
LABEL_11:
              v38 = type metadata accessor for FetchedOrderDetailsDestination;
              sub_2385FC734(v32, type metadata accessor for FetchedOrderDetailsDestination);
              v39 = v20;
LABEL_24:
              sub_2385FC734(v39, v38);
              v51 = v29;
LABEL_64:
              sub_2385FC734(v51, type metadata accessor for OrderNavigationDestination);
              v41 = 1;
              return v41 & 1;
            }
          }

          v69 = type metadata accessor for FetchedOrderDetailsDestination;
          sub_2385FC734(v32, type metadata accessor for FetchedOrderDetailsDestination);
          v70 = v20;
          goto LABEL_52;
        }

        sub_2385FC734(v20, type metadata accessor for FetchedOrderDetailsDestination);
        goto LABEL_43;
      }

      v52 = v29;
      sub_2385FC664(v29, v17, type metadata accessor for OrderNavigationDestination);
      v54 = *v17;
      v53 = v17[1];
      v56 = v17[2];
      v55 = v17[3];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        v29 = v52;
        goto LABEL_43;
      }

      v57 = *v27;
      v58 = *(v27 + 1);
      v60 = *(v27 + 2);
      v59 = *(v27 + 3);
      v61 = v54 == v57 && v53 == v58;
      if (v61 || (sub_23875F630() & 1) != 0)
      {
        v62 = v52;
        if (v55)
        {
          if (v59)
          {
            if (v56 == v60 && v55 == v59)
            {

LABEL_62:

LABEL_63:
              v51 = v52;
              goto LABEL_64;
            }

            v73 = sub_23875F630();

            if (v73)
            {
              goto LABEL_63;
            }

LABEL_55:
            v71 = v62;
            goto LABEL_56;
          }
        }

        else if (!v59)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_62;
        }

        goto LABEL_55;
      }

      v62 = v52;
      goto LABEL_55;
    }

    sub_2385FC664(v29, v23, type metadata accessor for OrderNavigationDestination);
    v42 = *v23;
    v43 = v23[2];
    v44 = v23[4];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_43;
    }

    v64 = v23[3];
    v65 = v23[1];
    v67 = *v27;
    v66 = *(v27 + 1);
    v68 = *(v27 + 4);
    v84[0] = v42;
    v84[1] = v65;
    v84[2] = v43;
    v84[3] = v64;
    v84[4] = v44;
    v81[0] = v67;
    v81[1] = v66;
    v80 = *(v27 + 1);
    v82 = v80;
    v83 = v68;
    v41 = _s12FinanceKitUI23OrderDetailsDestinationV2eeoiySbAC_ACtFZ_0(v84, v81);
  }

  sub_2385FC734(v29, type metadata accessor for OrderNavigationDestination);
  return v41 & 1;
}

uint64_t sub_2385FC664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385FC6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385FC734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385FC794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2385FC7FC()
{
  result = qword_27DF10E68;
  if (!qword_27DF10E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E08, &qword_238776D40);
    sub_2385FC8E8(&qword_27DF10E70, type metadata accessor for OrderPaymentView, &protocol conformance descriptor for OrderPaymentView);
    sub_2385FC8E8(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier, &unk_238770D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E68);
  }

  return result;
}

uint64_t sub_2385FC8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385FC930()
{
  result = qword_27DF10E80;
  if (!qword_27DF10E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E58, &qword_238776D90);
    sub_2385FC9BC();
    sub_2385FCA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E80);
  }

  return result;
}

unint64_t sub_2385FC9BC()
{
  result = qword_27DF10E88;
  if (!qword_27DF10E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E50, &qword_238776D88);
    sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
    sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10E88);
  }

  return result;
}

unint64_t sub_2385FCA78()
{
  result = qword_27DF10EA0;
  if (!qword_27DF10EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E20, &qword_238776D58);
    sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
    sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EA0);
  }

  return result;
}

uint64_t sub_2385FCB34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2385FCB88()
{
  result = qword_27DF10EB8;
  if (!qword_27DF10EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10E00, &qword_238776D38);
    sub_2385FC7FC();
    sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents, &protocol conformance descriptor for OrderArchiveMonthContents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EB8);
  }

  return result;
}

unint64_t sub_2385FCC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10EC0;
  if (!qword_27DF10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10EC0);
  }

  return result;
}

unint64_t sub_2385FCCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10ED0;
  if (!qword_27DF10ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10ED0);
  }

  return result;
}

uint64_t sub_2385FCE30(uint64_t *a1, int a2)
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

uint64_t sub_2385FCE78(uint64_t result, int a2, int a3)
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

uint64_t sub_2385FCF5C(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2385FD024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2385FD0B4(uint64_t a1)
{
  type metadata accessor for FetchedOrderDetailsDestination(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReturnDetailsDestination(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OrderPaymentDestination(319);
      if (v3 <= 0x3F)
      {
        sub_2385FD164();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2385FD164()
{
  if (!qword_27DF10F30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF10F30);
    }
  }
}

uint64_t sub_2385FD20C(uint64_t a1)
{
  result = type metadata accessor for OrderNavigationDestination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2385FD278()
{
  result = qword_27DF10F48;
  if (!qword_27DF10F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F50, &qword_238777270);
    sub_2385FC930();
    sub_2385FCB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F48);
  }

  return result;
}

void AccountMismatchedInformationTileView.init(accounts:institution:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a2;
  v5 = sub_238758680();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = a3;
  *a3 = a1;
  v12 = *(a1 + 16);

  v33 = v12;
  if (v12)
  {
    v13 = 0;
    v27 = (v6 + 8);
    v31 = (v6 + 32);
    v32 = v6 + 16;
    v14 = MEMORY[0x277D84F90];
    v28 = v8;
    v29 = v5;
    v30 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      (*(v6 + 16))(v11, a1 + v15 + v16 * v13, v5);
      if (sub_238758550())
      {
        v17 = *v31;
        (*v31)(v8, v11, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v14 + 16) + 1, 1);
          v14 = v34;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2385FE488((v19 > 1), v20 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + v15 + v20 * v16;
        v8 = v28;
        v5 = v29;
        v17(v21, v28, v29);
        a1 = v30;
      }

      else
      {
        (*v27)(v11, v5);
      }

      if (v33 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:

    v22 = v25;
    *(v25 + 1) = v14;
    v23 = *(type metadata accessor for AccountMismatchedInformationTileView(0) + 24);
    v24 = sub_238757B60();
    (*(*(v24 - 8) + 32))(&v22[v23], v26, v24);
  }
}

uint64_t AccountMismatchedInformationTileView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F60, &qword_238777280) + 44);
  *v4 = sub_23875CE50();
  *(v4 + 8) = 0x4000000000000000;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F68, &qword_238777288);
  sub_2385FD714(v2, v4 + *(v5 + 44));

  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F70, &qword_238777290);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

double sub_2385FD714@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C6F8, &qword_23876AE98);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(type metadata accessor for AccountMismatchedInformationTileView(0) + 24);
  v11 = sub_238757B60();
  (*(*(v11 - 8) + 16))(v9, a1 + v10, v11);
  v9[*(type metadata accessor for BadgedErrorInstitutionLogo(0) + 20)] = 1;
  v12 = sub_23875D7C0();
  sub_23875C3D0();
  v13 = &v9[*(v4 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = sub_23875D030();
  LOBYTE(v31[0]) = 0;
  sub_2385FDA28(v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v28[3];
  LOBYTE(v10) = v31[0];
  sub_23843981C(v9, v6, &qword_27DF0C6F8, &qword_23876AE98);
  sub_23843981C(v6, a2, &qword_27DF0C6F8, &qword_23876AE98);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11048, &qword_238777410) + 48);
  *&v29 = v18;
  *(&v29 + 1) = 0x4020000000000000;
  v30[0] = v10;
  *&v30[1] = *v27;
  *&v30[17] = *&v27[16];
  *&v30[33] = *&v27[32];
  *&v30[49] = *&v27[48];
  v20 = *&v27[63];
  *&v30[64] = *&v27[63];
  v21 = *v30;
  *v19 = v29;
  *(v19 + 16) = v21;
  v22 = *&v30[16];
  v23 = *&v30[32];
  v24 = *&v30[48];
  *(v19 + 80) = v20;
  *(v19 + 48) = v23;
  *(v19 + 64) = v24;
  *(v19 + 32) = v22;
  sub_23843981C(&v29, v31, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v9, &qword_27DF0C6F8, &qword_23876AE98);
  v31[0] = v18;
  v31[1] = 0x4020000000000000;
  v32 = v10;
  v34 = *&v27[16];
  v35 = *&v27[32];
  *v36 = *&v27[48];
  *&v36[15] = *&v27[63];
  v33 = *v27;
  sub_238439884(v31, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v6, &qword_27DF0C6F8, &qword_23876AE98);

  return result;
}

double sub_2385FDA28@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2385FDC68();
  sub_2384397A8(v2, v3, v4);
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D980();
  v10 = sub_23875DA60();
  v28 = v11;
  v29 = v10;
  v27 = v12;
  v30 = v13;

  sub_2384397FC(v5, v7, v9 & 1);

  sub_2385FDDB8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_2384397FC(v14, v16, v18 & 1);

  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23 & 1;
  *(a1 + 56) = v25;
  sub_23843980C(v29, v28, v27 & 1);

  sub_23843980C(v19, v21, v23 & 1);

  sub_2384397FC(v19, v21, v23 & 1);

  sub_2384397FC(v29, v28, v27 & 1);

  return result;
}

uint64_t sub_2385FDC68()
{
  if (*(*(v0 + 8) + 16) == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

uint64_t sub_2385FDDB8()
{
  v0 = objc_opt_self();
  sub_2385FDF94();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_23875EC60();

  v3 = [v0 localizedStringByJoiningStrings_];

  v4 = sub_23875EA80();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  *(v7 + 56) = v1;
  *(v7 + 64) = sub_238448C58(v7, v8, v9);
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  v15 = sub_23875EAA0();

  return v15;
}

uint64_t sub_2385FDF94()
{
  v1 = sub_238758680();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v6, 0);
    v8 = sub_23875ED50();
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v35 = v10;
    v36 = v8;
    result = v40;
    v11 = v5 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v33 = "ON_PICKER_CANCEL_BUTTON_TITLE";
    v34 = "LE_DESCRIPTION_FORMAT";
    v12 = *(v9 + 56);
    v31 = (v9 - 8);
    v32 = v12;
    v30 = xmmword_2387632F0;
    v37 = v1;
    v38 = v9;
    do
    {
      v39 = result;
      v35(v4, v11, v1);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v13 = swift_allocObject();
      *(v13 + 16) = v30;
      v14 = sub_2387585B0();
      v16 = v15;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_238448C58(v14, v15, v17);
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      v18 = v4;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v19 = qword_2814F1B90;
      v20 = sub_23875EA50();
      v21 = sub_23875EA50();
      v22 = sub_23875EA50();
      v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

      sub_23875EA80();
      v24 = sub_23875EAA0();
      v26 = v25;

      v4 = v18;
      v1 = v37;
      (*v31)(v18, v37);

      result = v39;
      v40 = v39;
      v28 = *(v39 + 16);
      v27 = *(v39 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2385FE468((v27 > 1), v28 + 1, 1);
        result = v40;
      }

      *(result + 16) = v28 + 1;
      v29 = result + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v11 += v32;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2385FE318@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F60, &qword_238777280) + 44);
  *v4 = sub_23875CE50();
  *(v4 + 8) = 0x4000000000000000;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F68, &qword_238777288);
  sub_2385FD714(v2, v4 + *(v5 + 44));

  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F70, &qword_238777290);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

char *sub_2385FE468(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FE488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF38, &unk_238767550, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for AccountMismatchedInformationTileView(uint64_t a1)
{
  result = qword_27DF10F78;
  if (!qword_27DF10F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385FE55C(uint64_t a1)
{
  sub_2385FE5E0(319);
  if (v1 <= 0x3F)
  {
    sub_238757B60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385FE5E0(uint64_t a1)
{
  if (!qword_27DF0A6E8)
  {
    sub_238758680();
    v1 = sub_23875ECC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A6E8);
    }
  }
}

unint64_t sub_2385FE638()
{
  result = qword_27DF10F88;
  if (!qword_27DF10F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F70, &qword_238777290);
    sub_2385FE6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F88);
  }

  return result;
}

unint64_t sub_2385FE6C4()
{
  result = qword_27DF10F90;
  if (!qword_27DF10F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10F98, &qword_238777318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10F90);
  }

  return result;
}

void *sub_2385FE728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FD0, &qword_238777360, MEMORY[0x277CC7678]);
  *v3 = result;
  return result;
}

void *sub_2385FE76C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF1B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FE78C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF2EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FE7AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FE7CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11088, &qword_238777468, MEMORY[0x277CC9720]);
  *v3 = result;
  return result;
}

void *sub_2385FE810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AE00, &unk_238767290, MEMORY[0x277CC6E90]);
  *v3 = result;
  return result;
}

void *sub_2385FE854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FE8, &unk_238777378, MEMORY[0x277CC7C98]);
  *v3 = result;
  return result;
}

void *sub_2385FE898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF30, &qword_238783C40, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_2385FE8DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FE8FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF110A8, &qword_238777490, type metadata accessor for AccountNameTokenProvider);
  *v3 = result;
  return result;
}

void *sub_2385FE940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FFBD4(a1, a2, a3, *v3, &qword_27DF110B0, &unk_238777498, &qword_27DF09A58, &unk_2387641B0);
  *v3 = result;
  return result;
}

char *sub_2385FE980(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FE9A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF110A0, &unk_238777480, &qword_27DF09A48, &qword_2387641A0);
  *v3 = result;
  return result;
}

void *sub_2385FE9E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF40, &qword_2387773C0, MEMORY[0x277CC7048]);
  *v3 = result;
  return result;
}

void *sub_2385FEA24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11090, &qword_238777470, type metadata accessor for TransactionTypeTokenProvider);
  *v3 = result;
  return result;
}

char *sub_2385FEA68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF778(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FEA88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEAA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FF99C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEAC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF10FF8, &qword_238777398, &qword_27DF11000, &unk_2387773A0);
  *v3 = result;
  return result;
}

void *sub_2385FEB08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11078, &unk_238777450, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
  *v3 = result;
  return result;
}

char *sub_2385FEB4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FFAD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEB6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FB0, &qword_238777330, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  *v3 = result;
  return result;
}

void *sub_2385FEBB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FB8, &qword_238777338, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
  *v3 = result;
  return result;
}

void *sub_2385FEBF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11030, &qword_2387773E8, MEMORY[0x277CC8510]);
  *v3 = result;
  return result;
}

void *sub_2385FEC38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11038, &qword_2387773F0, type metadata accessor for OrderPaymentSummaryItemView.ViewModel);
  *v3 = result;
  return result;
}

void *sub_2385FEC7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11040, &qword_2387773F8, MEMORY[0x277CC8580]);
  *v3 = result;
  return result;
}

void *sub_2385FECC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF28, &unk_238767540, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
  *v3 = result;
  return result;
}

void *sub_2385FED04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FA0, &qword_238777320, type metadata accessor for OrderDetailsReturn.ViewModel);
  *v3 = result;
  return result;
}

void *sub_2385FED48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FA8, &qword_238777328, MEMORY[0x277CC8398]);
  *v3 = result;
  return result;
}

void *sub_2385FED8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FFBD4(a1, a2, a3, *v3, &qword_27DF110C8, &qword_2387774B8, &qword_27DF0EB10, &qword_2387774C0);
  *v3 = result;
  return result;
}

void *sub_2385FEDCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FFDBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEDEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11050, &qword_238777418, MEMORY[0x277CC6B80]);
  *v3 = result;
  return result;
}

void *sub_2385FEE30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2385FFF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEE50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11068, &qword_238777440, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
  *v3 = result;
  return result;
}

void *sub_2385FEE94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF11070, &qword_238777448, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
  *v3 = result;
  return result;
}

char *sub_2385FEED8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23860004C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FEEF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238600158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2385FEF18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF10FC0, &unk_238777340, MEMORY[0x277CC7268]);
  *v3 = result;
  return result;
}

void *sub_2385FEF5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF12BD0, &unk_238777400, type metadata accessor for OrderNavigationDestination);
  *v3 = result;
  return result;
}

void *sub_2385FEFA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386004DC(a1, a2, a3, *v3, &qword_27DF0AF68, &qword_2387773E0, type metadata accessor for WalletCardsBalanceWidgetAccountEntity);
  *v3 = result;
  return result;
}

void *sub_2385FEFE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF0AF70, &unk_238767590, &qword_27DF0AF78, &qword_23877F8C0);
  *v3 = result;
  return result;
}

void *sub_2385FF024(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23860025C(a1, a2, a3, *v3, &qword_27DF11020, &qword_2387773D0, &qword_27DF11028, &qword_2387773D8);
  *v3 = result;
  return result;
}

char *sub_2385FF064(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2386003A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2385FF084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
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

void *sub_2385FF1B8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FC8, &unk_238777350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09948, &qword_238764030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF2EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF50, &qword_238767568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11080, &qword_238777460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110B8, &qword_2387774A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11098, &qword_238777478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FF778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11010, &qword_2387773B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_2385FF874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11018, &qword_2387773C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2385FF99C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FF0, &qword_238777388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A40, &qword_238777390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2385FFAD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110C0, &qword_2387774B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2385FFBD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_2385FFDBC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF110D0, &qword_2387774C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2385FFF18(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FD8, &qword_238777368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10FE0, &qword_238777370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23860004C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11060, &qword_238777438);
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

char *sub_238600158(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11058, &qword_238777430);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23860025C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2386003A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2386004DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2386006B8@<X0>(void (**a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v112 = a2;
  v5 = sub_2387581B0();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v89 - v12;
  v13 = sub_23875BC40();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x28223BE20](v13);
  v91 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  v20 = sub_23875ABE0();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  MEMORY[0x28223BE20](v21 - 8);
  v92 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  v111 = sub_2387580D0();
  v107 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v94 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v102 = *(v30 - 8);
  v103 = v30;
  MEMORY[0x28223BE20](v30);
  v89 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v99 = &v89 - v33;
  MEMORY[0x28223BE20](v34);
  v98 = &v89 - v35;
  v36 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v37 = v36[5];
  v38 = sub_238757FA0();
  v39 = *(*(v38 - 8) + 56);
  v40 = 1;
  v100 = v37;
  v39(&a3[v37], 1, 1, v38);
  v41 = v36[6];
  v42 = sub_238757F70();
  v43 = *(*(v42 - 8) + 56);
  v101 = v41;
  v43(&a3[v41], 1, 1, v42);
  v44 = v36[7];
  v45 = sub_238757F90();
  v46 = *(*(v45 - 8) + 56);
  v97 = v44;
  v46(&a3[v44], 1, 1, v45);
  v47 = [a1 orderContent];
  v110 = v29;
  v48 = v25;
  sub_23875A5B0();

  sub_23875ABF0();
  sub_2387581A0();
  (*(v108 + 56))(v25, 0, 1, v109);
  v49 = [a1 isMarkedAsComplete];
  v50 = [a1 isMarkedAsCompleteModificationDate];
  if (v50)
  {
    v51 = v50;
    sub_23875BBE0();

    v40 = 0;
  }

  v53 = v95;
  v52 = v96;
  v95[7](v19, v40, 1, v96);
  if (v49)
  {
    v54 = v93;
    sub_23843981C(v19, v93, &qword_27DF12E00, &unk_238763FC0);
    v55 = (v53[6])(v54, 1, v52);
    v56 = v110;
    if (v55 != 1)
    {
      sub_238439884(v19, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v48, &qword_27DF0BB68, &unk_2387774E0);
      (*(v107 + 8))(v56, v111);
      v75 = v53[4];
      v76 = v54;
      v77 = v91;
      (v75)(v91, v76, v52);
      v66 = v99;
      (v75)(v99, v77, v52);
      v78 = v102;
      v79 = v103;
      (*(v102 + 104))(v66, *MEMORY[0x277CC83B0], v103);
      v80 = v112;
      goto LABEL_16;
    }

    sub_238439884(v54, &qword_27DF12E00, &unk_238763FC0);
  }

  v57 = v48;
  v93 = v19;
  v95 = a1;
  v96 = a3;
  v58 = *MEMORY[0x277CC6DF8];
  v59 = v107;
  v60 = *(v107 + 104);
  v61 = v94;
  v62 = v111;
  v60(v94, v58, v111);
  sub_23860BF78(&qword_27DF0BB70, MEMORY[0x277CC6E00], MEMORY[0x277CC6E10]);
  v63 = v110;
  sub_23875EC40();
  sub_23875EC40();
  v64 = v61;
  v65 = *(v59 + 8);
  v65(v64, v62);
  if (v116 == v115)
  {
    sub_238439884(v93, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v57, &qword_27DF0BB68, &unk_2387774E0);
    v65(v63, v62);
    v66 = v99;
    v60(v99, v58, v62);
    v67 = MEMORY[0x277CC83B8];
LABEL_13:
    v78 = v102;
    v79 = v103;
    (*(v102 + 104))(v66, *v67, v103);
    a1 = v95;
    a3 = v96;
    v80 = v112;
    goto LABEL_16;
  }

  v68 = v92;
  sub_23843981C(v57, v92, &qword_27DF0BB68, &unk_2387774E0);
  v70 = v108;
  v69 = v109;
  if ((*(v108 + 48))(v68, 1, v109) != 1)
  {
    sub_238439884(v93, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v57, &qword_27DF0BB68, &unk_2387774E0);
    v65(v110, v62);
    v81 = *(v70 + 32);
    v82 = v90;
    v81(v90, v68, v69);
    v66 = v99;
    v81(v99, v82, v69);
    v67 = MEMORY[0x277CC83A8];
    goto LABEL_13;
  }

  sub_238439884(v68, &qword_27DF0BB68, &unk_2387774E0);
  v71 = v94;
  v60(v94, *MEMORY[0x277CC6DF0], v111);
  v72 = v110;
  sub_23875EC40();
  sub_23875EC40();
  v73 = v111;
  v65(v71, v111);
  sub_238439884(v93, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v57, &qword_27DF0BB68, &unk_2387774E0);
  if (v114 == v113)
  {
    v65(v72, v73);
    v74 = v89;
    v60(v89, *MEMORY[0x277CC6DE0], v73);
  }

  else
  {
    v74 = v89;
    (*(v107 + 32))(v89, v72, v73);
  }

  a1 = v95;
  a3 = v96;
  v80 = v112;
  v78 = v102;
  v79 = v103;
  v66 = v99;
  (*(v102 + 104))(v74, *MEMORY[0x277CC83B8], v103);
  (*(v78 + 32))(v66, v74, v79);
LABEL_16:
  v83 = *(v78 + 32);
  v84 = v98;
  v83(v98, v66, v79);
  v83(a3, v84, v79);
  v85 = v104;
  sub_23875ABD0();
  sub_2385309FC(v85, &a3[v100], &qword_27DF0FD58, &unk_238774490);
  v86 = v105;
  sub_23875ABC0();
  sub_2385309FC(v86, &a3[v97], &qword_27DF0FAF8, &unk_238774480);
  v87 = v106;
  sub_23875ABB0();

  return sub_2385309FC(v87, &a3[v101], &qword_27DF0FD50, &unk_2387774D0);
}

uint64_t sub_238601310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v79 = a1;
  v4 = sub_2387581B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v60 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = sub_2387580D0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v29 = v28[5];
  v30 = sub_238757FA0();
  v31 = *(*(v30 - 8) + 56);
  v69 = v29;
  v31(a3 + v29, 1, 1, v30);
  v32 = v28[6];
  v33 = sub_238757F70();
  v34 = *(*(v33 - 8) + 56);
  v70 = v32;
  v34(a3 + v32, 1, 1, v33);
  v35 = v28[7];
  v36 = sub_238757F90();
  v37 = *(*(v36 - 8) + 56);
  v76 = a3;
  v68 = v35;
  v37(a3 + v35, 1, 1, v36);
  sub_2387580F0();
  sub_2387581C0();
  v64 = v4;
  v65 = v5;
  v38 = *(v5 + 56);
  v77 = v20;
  v38(v20, 0, 1, v4);
  v39 = *MEMORY[0x277CC6DF8];
  v40 = *(v22 + 104);
  v40(v24, v39, v21);
  sub_23860BF78(&qword_27DF0BB70, MEMORY[0x277CC6E00], MEMORY[0x277CC6E10]);
  sub_23875EC40();
  sub_23875EC40();
  v61 = v22;
  v41 = *(v22 + 8);
  v41(v24, v21);
  if (v83 == v82)
  {
    sub_238439884(v77, &qword_27DF0BB68, &unk_2387774E0);
    v41(v27, v21);
    v42 = v71;
    v40(v71, v39, v21);
    v43 = *MEMORY[0x277CC83B8];
    v44 = v67;
LABEL_7:
    v51 = v72;
    (*(v44 + 104))(v42, v43, v72);
    goto LABEL_10;
  }

  v45 = v66;
  v44 = v67;
  sub_23843981C(v77, v66, &qword_27DF0BB68, &unk_2387774E0);
  v46 = v45;
  v47 = v64;
  if ((*(v65 + 48))(v46, 1, v64) != 1)
  {
    sub_238439884(v77, &qword_27DF0BB68, &unk_2387774E0);
    v41(v27, v21);
    v49 = *(v65 + 32);
    v50 = v63;
    v49(v63, v66, v47);
    v42 = v71;
    v49(v71, v50, v47);
    v43 = *MEMORY[0x277CC83A8];
    goto LABEL_7;
  }

  sub_238439884(v66, &qword_27DF0BB68, &unk_2387774E0);
  v40(v24, *MEMORY[0x277CC6DF0], v21);
  sub_23875EC40();
  sub_23875EC40();
  v41(v24, v21);
  sub_238439884(v77, &qword_27DF0BB68, &unk_2387774E0);
  if (v81 == v80)
  {
    v41(v27, v21);
    v48 = v62;
    v40(v62, *MEMORY[0x277CC6DE0], v21);
  }

  else
  {
    v48 = v62;
    (*(v61 + 32))(v62, v27, v21);
  }

  v51 = v72;
  (*(v44 + 104))(v48, *MEMORY[0x277CC83B8], v72);
  v42 = v71;
  (*(v44 + 32))(v71, v48, v51);
LABEL_10:
  v52 = v76;
  (*(v44 + 32))(v76, v42, v51);
  v53 = v73;
  v54 = v78;
  sub_238758190();
  sub_2385309FC(v53, v52 + v69, &qword_27DF0FD58, &unk_238774490);
  v55 = v74;
  sub_238758160();
  sub_2385309FC(v55, v52 + v68, &qword_27DF0FAF8, &unk_238774480);
  v56 = v75;
  sub_238758150();
  v57 = sub_2387581D0();
  (*(*(v57 - 8) + 8))(v54, v57);
  v58 = sub_238758270();
  (*(*(v58 - 8) + 8))(v79, v58);
  return sub_2385309FC(v56, v52 + v70, &qword_27DF0FD50, &unk_2387774D0);
}

uint64_t sub_238601BF0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_23875BC40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_23843981C(v1, &v11 - v8, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t sub_238601DD4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v18 = a1;
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v17 - v14;
  sub_23843981C(v5, &v17 - v14, a4, a5);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return 0;
  }

  (*(v10 + 32))(v12, v15, v9);
  v18(&v17, v12);
  if (v6)
  {
    result = (*(v10 + 8))(v12, v9);
    __break(1u);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return v17;
  }

  return result;
}

uint64_t sub_238601FC4(uint64_t a1, void (*a2)(void))
{
  v105 = a2;
  v113 = sub_23875BC40();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = &v98 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  v13 = sub_238757FA0();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v98 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v98 - v16;
  MEMORY[0x28223BE20](v17);
  v101 = &v98 - v18;
  v19 = sub_2387591F0();
  v20 = *(v19 - 8);
  v116 = v19;
  v117 = v20;
  MEMORY[0x28223BE20](v19);
  v115 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v98 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v98 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v98 - v34;
  v36 = *(v23 + 16);
  v108 = a1;
  v36(&v98 - v34, a1, v22, v33);
  v37 = (*(v23 + 88))(v35, v22);
  if (v37 == *MEMORY[0x277CC83B8])
  {
    (v36)(v31, v35, v22);
    (*(v23 + 96))(v31, v22);
    v38 = sub_2387580D0();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 88))(v31, v38);
    v41 = v23;
    v42 = v35;
    if (v40 == *MEMORY[0x277CC6DF0] || v40 == *MEMORY[0x277CC6DE0] || v40 == *MEMORY[0x277CC6DD8] || v40 == *MEMORY[0x277CC6DF8] || v40 == *MEMORY[0x277CC6DE8])
    {
      v80 = v116;
      v79 = v117;
      v81 = v115;
      (*(v117 + 104))(v115, *MEMORY[0x277CC77B0], v116);
      v48 = sub_238758A40();
      (*(v79 + 8))(v81, v80);
      goto LABEL_30;
    }

    goto LABEL_48;
  }

  v114 = v35;
  v112 = v23;
  v109 = v22;
  if (v37 == *MEMORY[0x277CC83A8])
  {
    v43 = v109;
    (v36)(v28, v114, v109);
    v41 = v112;
    (*(v112 + 96))(v28, v43);
    v38 = sub_2387581B0();
    v39 = *(v38 - 8);
    v44 = (*(v39 + 88))(v28, v38);
    if (v44 == *MEMORY[0x277CC6E40])
    {
LABEL_6:
      v46 = v116;
      v45 = v117;
      v47 = v115;
      (*(v117 + 104))(v115, *MEMORY[0x277CC77B0], v116);
LABEL_7:
      v48 = sub_238758A40();
      (*(v45 + 8))(v47, v46);
LABEL_8:
      v22 = v109;
      v42 = v114;
LABEL_30:
      (*(v41 + 8))(v42, v22);
      return v48;
    }

    if (v44 == *MEMORY[0x277CC6E38])
    {
      v63 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      sub_23843981C(v108 + *(v63 + 20), v12, &qword_27DF0FD58, &unk_238774490);
      v64 = v106;
      v65 = v107;
      if ((*(v106 + 48))(v12, 1, v107) != 1)
      {
        v73 = v101;
        (*(v64 + 32))(v101, v12, v65);
        v74 = sub_2387595E0();
        v75 = v64;
        v76 = v103;
        (*(*(v74 - 8) + 16))(v103, v104, v74);
        v48 = sub_238603188(v73, v105);
        sub_23860C2CC(v76, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
        (*(v75 + 8))(v73, v65);
        goto LABEL_8;
      }

      v66 = sub_238439884(v12, &qword_27DF0FD58, &unk_238774490);
      MEMORY[0x28223BE20](v66);
      v96 = v104;
      v97 = v105;
      v67 = sub_238601DD4(sub_23860C250, (&v98 - 4), MEMORY[0x277CC6CD0], &qword_27DF0FAF8, &unk_238774480);
      v42 = v114;
      if (v68)
      {
        v48 = v67;
      }

      else
      {
        v88 = v116;
        v87 = v117;
        v89 = v115;
        (*(v117 + 104))(v115, *MEMORY[0x277CC77B0], v116);
        v48 = sub_238758A40();
        (*(v87 + 8))(v89, v88);
      }

      v22 = v109;
      goto LABEL_37;
    }

    if (v44 == *MEMORY[0x277CC6E48])
    {
      v69 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      v70 = v102;
      sub_23843981C(v108 + *(v69 + 20), v102, &qword_27DF0FD58, &unk_238774490);
      v72 = v106;
      v71 = v107;
      if ((*(v106 + 48))(v70, 1, v107) == 1)
      {
        sub_238439884(v70, &qword_27DF0FD58, &unk_238774490);
        goto LABEL_6;
      }

      v83 = v99;
      (*(v72 + 32))(v99, v70, v71);
    }

    else
    {
      if (v44 != *MEMORY[0x277CC6E20])
      {
        if (v44 != *MEMORY[0x277CC6E60])
        {
          if (v44 != *MEMORY[0x277CC6E58] && v44 != *MEMORY[0x277CC6E30] && v44 != *MEMORY[0x277CC6E28] && v44 != *MEMORY[0x277CC6E50] && v44 != *MEMORY[0x277CC6E18])
          {
            v31 = v28;
LABEL_48:
            (*(v39 + 8))(v31, v38);
            goto LABEL_49;
          }

          goto LABEL_6;
        }

        v84 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
        MEMORY[0x28223BE20](v84);
        v96 = v104;
        v97 = v105;
        v85 = sub_238601DD4(sub_23860C1F4, (&v98 - 4), MEMORY[0x277CC6CB0], &qword_27DF0FD50, &unk_2387774D0);
        v22 = v109;
        v42 = v114;
        if (v86)
        {
          v48 = v85;
        }

        else
        {
          v94 = v116;
          v93 = v117;
          v95 = v115;
          (*(v117 + 104))(v115, *MEMORY[0x277CC77B0], v116);
          v48 = sub_238758A40();
          (*(v93 + 8))(v95, v94);
        }

LABEL_37:
        v41 = v112;
        goto LABEL_30;
      }

      v77 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
      v78 = v100;
      sub_23843981C(v108 + *(v77 + 20), v100, &qword_27DF0FD58, &unk_238774490);
      v72 = v106;
      v71 = v107;
      if ((*(v106 + 48))(v78, 1, v107) == 1)
      {
        sub_238439884(v78, &qword_27DF0FD58, &unk_238774490);
        v46 = v116;
        v45 = v117;
        v47 = v115;
        (*(v117 + 104))(v115, *MEMORY[0x277CC77B0], v116);
        goto LABEL_7;
      }

      v83 = v98;
      (*(v72 + 32))(v98, v78, v71);
    }

    v90 = sub_2387595E0();
    v91 = v72;
    v92 = v103;
    (*(*(v90 - 8) + 16))(v103, v104, v90);
    v48 = sub_238603188(v83, v105);
    sub_23860C2CC(v92, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
    (*(v91 + 8))(v83, v71);
    goto LABEL_8;
  }

  if (v37 == *MEMORY[0x277CC83B0])
  {
    v49 = v109;
    (v36)(v25, v114, v109);
    (*(v112 + 96))(v25, v49);
    v51 = v110;
    v50 = v111;
    (*(v111 + 32))(v110, v25, v113);
    LODWORD(v106) = *MEMORY[0x277CC77B0];
    v52 = v116;
    v53 = v117;
    v105 = *(v117 + 104);
    v54 = v115;
    v105(v115);
    v55 = sub_238758A40();
    v107 = v56;
    v108 = v55;
    v117 = *(v53 + 8);
    (v117)(v54, v52);
    v104 = "Unknown displayStatus: ";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2387632F0;
    v58 = sub_23875B9D0();
    v60 = v59;
    *(v57 + 56) = MEMORY[0x277D837D0];
    *(v57 + 64) = sub_238448C58(v58, v59, v61);
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    (v105)(v54, v106, v52);
    v22 = v49;
    v42 = v114;
    sub_238758A50();
    v41 = v112;

    v62 = v52;
    v48 = v108;
    (v117)(v54, v62);
    (*(v50 + 8))(v51, v113);
    goto LABEL_30;
  }

LABEL_49:
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_238603188(uint64_t a1, uint64_t a2)
{
  v286 = a2;
  v249 = sub_23875B170();
  v247 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v248 = v236 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_23875B190();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = v236 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_238759120();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v265 = v236 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_238758A80();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = v236 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387591F0();
  v278 = *(v7 - 8);
  v279 = v7;
  MEMORY[0x28223BE20](v7);
  v277 = v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_23875ADF0();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v242 = v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v241 = v236 - v13;
  MEMORY[0x28223BE20](v14);
  v240 = v236 - v15;
  MEMORY[0x28223BE20](v16);
  v239 = v236 - v17;
  MEMORY[0x28223BE20](v18);
  v256 = v236 - v19;
  MEMORY[0x28223BE20](v20);
  v254 = v236 - v21;
  v276 = sub_23875BC40();
  *&v283 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v243 = v236 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v264 = v236 - v24;
  MEMORY[0x28223BE20](v25);
  v260 = v236 - v26;
  MEMORY[0x28223BE20](v27);
  v259 = v236 - v28;
  MEMORY[0x28223BE20](v29);
  v272 = v236 - v30;
  MEMORY[0x28223BE20](v31);
  v271 = v236 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v33 - 8);
  v274 = v236 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v35 - 8);
  v273 = v236 - v36;
  v37 = sub_2387595E0();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  *&v284 = v236 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23875B650();
  v281 = *(v40 - 8);
  v282 = v40;
  MEMORY[0x28223BE20](v40);
  v258 = v236 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v257 = v236 - v43;
  MEMORY[0x28223BE20](v44);
  v269 = v236 - v45;
  MEMORY[0x28223BE20](v46);
  v268 = v236 - v47;
  MEMORY[0x28223BE20](v48);
  v280 = v236 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = v236 - v51;
  MEMORY[0x28223BE20](v53);
  v270 = v236 - v54;
  v55 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = v236 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa(0);
  MEMORY[0x28223BE20](v58 - 8);
  v255 = v236 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v253 = v236 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = v236 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = v236 - v66;
  v68 = sub_238757FA0();
  v69 = *(v68 - 8);
  v70 = MEMORY[0x28223BE20](v68);
  v72 = v236 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v69 + 16))(v72, a1, v68, v70);
  v73 = (*(v69 + 88))(v72, v68);
  if (v73 == *MEMORY[0x277CC6CF0])
  {
    (*(v69 + 96))(v72, v68);
    v74 = *v72;
    v75 = *(v72 + 1);
    v76 = *(v72 + 2);
    (*(v38 + 16))(v67, v287, v37);
    v77 = v74;
    v78 = v75;
    v79 = v76;
    v80 = 0;
LABEL_3:
    v81 = sub_238608320(v77, v78, v79, v80, v286);
    sub_23860C2CC(v67, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
    return v81;
  }

  v275 = v37;
  if (v73 == *MEMORY[0x277CC6D08])
  {
    (*(v69 + 96))(v72, v68);
    v82 = *(v72 + 4);
    v83 = *(v72 + 5);
    v84 = v72[48];
    v85 = *(v38 + 16);
    v86 = *(v72 + 1);
    v283 = *v72;
    v284 = v86;
    v87 = v287;
    v88 = v275;
    v85(v67, v287, v275);
    v288 = v84;
    v289 = v283;
    v290 = v284;
    v291 = v82;
    v292 = v83;
    v293 = v84;
    v294 = 0;
LABEL_8:
    v85(v57, v87, v88);
    v94 = *(&v283 + 1);
    v93 = v283;
    v95 = v284;
    v96 = 0;
LABEL_9:
    v81 = sub_238608320(v93, v94, v95, v96, v286);
    sub_23860726C(&v289);
    sub_23860C2CC(v57, _s19ShippingFulfillmentO13TimeFormatterVMa);
    sub_23860C2CC(v67, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
    return v81;
  }

  if (v73 == *MEMORY[0x277CC6D00])
  {
    (*(v69 + 96))(v72, v68);
    v89 = *(v72 + 4);
    v90 = *(v72 + 5);
    v91 = v72[48];
    v85 = *(v38 + 16);
    v92 = *(v72 + 1);
    v283 = *v72;
    v284 = v92;
    v87 = v287;
    v88 = v275;
    v85(v67, v287, v275);
    v288 = v91;
    v289 = v283;
    v290 = v284;
    v291 = v89;
    v292 = v90;
    v293 = v91;
    v294 = 1;
    goto LABEL_8;
  }

  if (v73 == *MEMORY[0x277CC6CE0])
  {
    (*(v69 + 96))(v72, v68);
    v98 = *v72;
    v99 = *(v72 + 1);
    v100 = *(v72 + 2);
    (*(v38 + 16))(v67, v287, v275);
    v77 = v98;
    v78 = v99;
    v79 = v100;
    v80 = 1;
    goto LABEL_3;
  }

  if (v73 == *MEMORY[0x277CC6CE8])
  {
    (*(v69 + 96))(v72, v68);
    v101 = *(v72 + 4);
    v102 = *(v72 + 5);
    v103 = v72[48];
    v104 = *(v38 + 16);
    v105 = *(v72 + 1);
    v283 = *v72;
    v284 = v105;
    v106 = v287;
    v107 = v275;
    v104(v67, v287, v275);
    v288 = v103;
    v289 = v283;
    v290 = v284;
    v291 = v101;
    v292 = v102;
    v293 = v103;
    v294 = 0;
    v104(v57, v106, v107);
    v94 = *(&v283 + 1);
    v93 = v283;
    v95 = v284;
    v96 = 1;
    goto LABEL_9;
  }

  if (v73 == *MEMORY[0x277CC6CF8])
  {
    (*(v69 + 96))(v72, v68);
    v108 = *(v72 + 1);
    v257 = *v72;
    v109 = v257;
    v258 = v108;
    v110 = *(v72 + 2);
    v259 = *(v72 + 3);
    v111 = *(v72 + 5);
    v260 = *(v72 + 4);
    v265 = v111;
    LODWORD(v264) = v72[48];
    v112 = *(v72 + 8);
    v266 = *(v72 + 7);
    v267 = v112;
    v269 = *(v72 + 9);
    LODWORD(v268) = v72[80];
    v113 = *(v38 + 16);
    v114 = v287;
    v115 = v275;
    (v113)(v64, v287, v275);
    v238 = sub_238608320(v109, v108, v110, 0, v286);
    v237 = v116;
    v117 = v284;
    v118 = v115;
    v255 = (v38 + 16);
    v253 = v113;
    (v113)(v284, v114, v115);
    v119 = v273;
    sub_2387595C0();
    v120 = sub_23875BE20();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    v121 = v274;
    sub_2387595D0();
    v122 = sub_23875BE40();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = v270;
    sub_23875B620();
    (*(v38 + 8))(v117, v118);
    v124 = v282;
    v125 = *(v281 + 16);
    v125(v52, v123, v282);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v125(v280, v123, v124);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v126 = v254;
    sub_23875B5C0();
    v127 = v283;
    v128 = *(v283 + 48);
    v129 = v276;
    if (v128(v126, 1, v276) == 1)
    {
      __break(1u);
    }

    else
    {
      v130 = *(v127 + 32);
      v130(v271, v126, v129);
      v131 = v256;
      sub_23875B5C0();
      if (v128(v131, 1, v129) != 1)
      {
        v130(v272, v131, v129);
        (v253)(v284, v287, v275);
        v132 = v261;
        sub_23875ADD0();
        v133 = sub_23875ADE0();
        v135 = v134;
        v136 = sub_23875ADE0();
        v138 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
        v139 = swift_allocObject();
        *(v139 + 16) = xmmword_238763B60;
        v140 = MEMORY[0x277D837D0];
        *(v139 + 56) = MEMORY[0x277D837D0];
        v143 = sub_238448C58(v139, v141, v142);
        *(v139 + 32) = v133;
        *(v139 + 40) = v135;
        *(v139 + 96) = v140;
        *(v139 + 104) = v143;
        *(v139 + 64) = v143;
        *(v139 + 72) = v136;
        *(v139 + 80) = v138;
        v145 = v277;
        v144 = v278;
        v146 = v279;
        (*(v278 + 104))(v277, *MEMORY[0x277CC77B0], v279);
        sub_238758A50();

        (*(v144 + 8))(v145, v146);
        (*(v262 + 8))(v132, v263);
        v147 = *(v283 + 8);
        v147(v272, v129);
        v147(v271, v129);
        v148 = *(v281 + 8);
        v149 = v282;
        v148(v280, v282);
        v148(v52, v149);
        v148(v270, v149);
        v150 = v64;
LABEL_28:
        sub_23860C2CC(v150, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
        return v238;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v73 == *MEMORY[0x277CC6D10])
  {
    (*(v69 + 96))(v72, v68);
    v151 = *(v72 + 1);
    v263 = *v72;
    v264 = v151;
    v152 = *(v72 + 3);
    v262 = *(v72 + 2);
    v271 = v152;
    v154 = *(v72 + 5);
    v272 = *(v72 + 4);
    v153 = v272;
    v270 = v154;
    v155 = *(v38 + 16);
    v156 = v287;
    v157 = v275;
    (v155)(v253, v287, v275);
    v280 = v155;
    v238 = sub_238608320(v152, v153, v154, 1, v286);
    v237 = v158;
    v159 = v284;
    (v155)(v284, v156, v157);
    v160 = v273;
    sub_2387595C0();
    v257 = sub_23875BE20();
    v161 = *(v257 - 1);
    v258 = *(v161 + 56);
    v261 = (v161 + 56);
    (v258)(v160, 0, 1, v257);
    v162 = v274;
    sub_2387595D0();
    v163 = sub_23875BE40();
    v256 = *(*(v163 - 8) + 56);
    (v256)(v162, 0, 1, v163);
    sub_23875B620();
    v164 = *(v38 + 8);
    v164(v159, v157);
    v264 = (v38 + 16);
    (v280)(v159, v287, v157);
    sub_2387595C0();
    (v258)(v160, 0, 1, v257);
    sub_2387595D0();
    (v256)(v162, 0, 1, v163);
    sub_23875B620();
    v164(v159, v157);
    v165 = v239;
    sub_23875B5C0();
    v166 = v283;
    v167 = *(v283 + 48);
    v168 = v276;
    if (v167(v165, 1, v276) == 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_23875B9F0();
    v169 = *(v166 + 8);
    v169(v165, v168);
    v170 = v240;
    sub_23875B5C0();
    if (v167(v170, 1, v168) == 1)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_23875B9F0();
    v169(v170, v168);
    (v280)(v284, v287, v157);
    (*(v266 + 104))(v265, *MEMORY[0x277CC7750], v267);
    v171 = v244;
    sub_238758A60();
    v172 = sub_238758A70();
    v174 = v173;
    v175 = sub_238758A70();
    v177 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v178 = swift_allocObject();
    v287 = v169;
    v179 = v178;
    *(v178 + 16) = xmmword_238763B60;
    v180 = MEMORY[0x277D837D0];
    *(v178 + 56) = MEMORY[0x277D837D0];
    v183 = sub_238448C58(v178, v181, v182);
    v179[4] = v172;
    v179[5] = v174;
    v179[12] = v180;
    v179[13] = v183;
    v179[8] = v183;
    v179[9] = v175;
    v179[10] = v177;
    v185 = v277;
    v184 = v278;
    v186 = v279;
    (*(v278 + 104))(v277, *MEMORY[0x277CC77B0], v279);
    sub_238758A50();

    (*(v184 + 8))(v185, v186);
    (*(v245 + 8))(v171, v246);
    v187 = v287;
    v287(v260, v168);
    v187(v259, v168);
    v188 = v282;
    v189 = *(v281 + 8);
    v189(v269, v282);
    v189(v268, v188);
    v190 = &v284;
LABEL_27:
    v150 = *(v190 - 32);
    goto LABEL_28;
  }

  v191 = v286;
  v192 = v287;
  if (v73 == *MEMORY[0x277CC6D18])
  {
    (*(v69 + 96))(v72, v68);
    v193 = *(v72 + 1);
    v246 = *v72;
    v253 = v193;
    v194 = *(v72 + 3);
    v245 = *(v72 + 2);
    v254 = v194;
    v195 = *(v72 + 5);
    v256 = *(v72 + 4);
    v260 = v195;
    LODWORD(v259) = v72[48];
    v196 = *(v72 + 8);
    v262 = *(v72 + 7);
    v197 = v262;
    v263 = v196;
    v261 = *(v72 + 9);
    v198 = v261;
    v199 = *(v72 + 11);
    v268 = *(v72 + 10);
    v269 = v199;
    v271 = *(v72 + 12);
    LODWORD(v270) = v72[104];
    v200 = *(v38 + 16);
    v201 = v275;
    (v200)(v255, v192, v275);
    v280 = (v38 + 16);
    v272 = v200;
    v238 = sub_238608320(v197, v196, v198, 1, v191);
    v237 = v202;
    v203 = v284;
    (v200)(v284, v192, v201);
    v204 = v273;
    sub_2387595C0();
    v239 = sub_23875BE20();
    v205 = *(v239 - 1);
    v240 = *(v205 + 56);
    v244 = (v205 + 56);
    (v240)(v204, 0, 1, v239);
    v206 = v274;
    sub_2387595D0();
    v207 = sub_23875BE40();
    v208 = *(v207 - 8);
    v236[0] = *(v208 + 56);
    v236[1] = v208 + 56;
    (v236[0])(v206, 0, 1, v207);
    sub_23875B620();
    v209 = v192;
    v253 = *(v38 + 8);
    v210 = v275;
    (v253)(v203, v275);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    (v272)(v203, v209, v210);
    sub_2387595C0();
    (v240)(v204, 0, 1, v239);
    sub_2387595D0();
    (v236[0])(v206, 0, 1, v207);
    sub_23875B620();
    (v253)(v203, v210);
    sub_23875B5D0();
    sub_23875B600();
    sub_23875B610();
    v211 = v241;
    sub_23875B5C0();
    v212 = v283;
    v213 = *(v283 + 48);
    v214 = v276;
    if (v213(v211, 1, v276) == 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v215 = *(v212 + 32);
    v215(v264, v211, v214);
    v216 = v242;
    sub_23875B5C0();
    if (v213(v216, 1, v214) == 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v217 = v243;
    v215(v243, v216, v214);
    (v272)(v284, v287, v275);
    (*(v247 + 104))(v248, *MEMORY[0x277CC8550], v249);
    (*(v266 + 104))(v265, *MEMORY[0x277CC7750], v267);
    v218 = v250;
    sub_23875B160();
    v219 = sub_23875B180();
    v221 = v220;
    v222 = sub_23875B180();
    v224 = v223;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_238763B60;
    v226 = MEMORY[0x277D837D0];
    *(v225 + 56) = MEMORY[0x277D837D0];
    v229 = sub_238448C58(v225, v227, v228);
    *(v225 + 32) = v219;
    *(v225 + 40) = v221;
    *(v225 + 96) = v226;
    *(v225 + 104) = v229;
    *(v225 + 64) = v229;
    *(v225 + 72) = v222;
    *(v225 + 80) = v224;
    v231 = v277;
    v230 = v278;
    v232 = v279;
    (*(v278 + 104))(v277, *MEMORY[0x277CC77B0], v279);
    sub_238758A50();

    (*(v230 + 8))(v231, v232);
    (*(v251 + 8))(v218, v252);
    v233 = *(v212 + 8);
    v233(v217, v214);
    v233(v264, v214);
    v234 = v282;
    v235 = *(v281 + 8);
    v235(v258, v282);
    v235(v257, v234);
    v190 = &v285;
    goto LABEL_27;
  }

LABEL_35:
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2386053A4(uint64_t a1, uint64_t a2, double a3)
{
  v99 = a2;
  v102 = a1;
  v3 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v84 - v8;
  v9 = sub_23875BC40();
  v105 = *(v9 - 8);
  v106 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v84 - v16;
  v17 = sub_23875B650();
  v97 = *(v17 - 8);
  v98 = v17;
  MEMORY[0x28223BE20](v17);
  v92 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v84 - v20;
  v100 = sub_238757F90();
  v21 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23875AD80();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2387595E0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2387592E0();
  v95 = *(v96 - 8);
  v32 = MEMORY[0x28223BE20](v96);
  v34 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v29;
  v37 = *(v29 + 16);
  v35 = v29 + 16;
  v36 = v37;
  v107 = v28;
  v38 = v28;
  v39 = v100;
  (v37)(v31, v108, v38, v32);
  (*(v25 + 104))(v27, *MEMORY[0x277CC8440], v24);
  v94 = v34;
  sub_2387592D0();
  (*(v21 + 16))(v23, v102, v39);
  v40 = (*(v21 + 88))(v23, v39);
  if (v40 == *MEMORY[0x277CC6CC8])
  {
    (*(v21 + 96))(v23, v39);
    v41 = v107;
    (v36)(v31, v108, v107);
    v42 = v101;
    sub_2387595C0();
    v43 = sub_23875BE20();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = v103;
    sub_2387595D0();
    v45 = sub_23875BE40();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    v46 = v90;
    sub_23875B620();
    (*(v104 + 8))(v31, v41);
    v47 = v91;
    sub_23875B5C0();
    v49 = v105;
    v48 = v106;
    if ((*(v105 + 48))(v47, 1, v106) != 1)
    {
      v50 = v87;
      sub_23875B9F0();
      v51 = *(v49 + 8);
      v51(v47, v48);
      sub_23860BF78(&qword_27DF11168, MEMORY[0x277CC7830], MEMORY[0x277CC7828]);
      v52 = v96;
      v53 = v94;
      v54 = sub_238759920();
      v56 = v55;
      v51(v50, v48);
      (*(v97 + 8))(v46, v98);
      (*(v95 + 8))(v53, v52);
      if (v56)
      {
        return v54;
      }

      else
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v58 = v35;
  v59 = v101;
  v61 = v107;
  v60 = v108;
  if (v40 != *MEMORY[0x277CC6CC0])
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  (*(v21 + 96))(v23, v39);
  v62 = *v23;
  v63 = *(v23 + 1);
  v64 = *(v23 + 2);
  v102 = *(v23 + 3);
  v65 = *(v23 + 5);
  v100 = *(v23 + 4);
  v91 = v65;
  LODWORD(v90) = v23[48];
  v66 = v61;
  v67 = v36;
  v68 = v62;
  v87 = v67;
  v86 = v58;
  (v67)(v31, v60, v61);
  sub_2387595C0();
  v69 = sub_23875BE20();
  (*(*(v69 - 8) + 56))(v59, 0, 1, v69);
  v70 = v103;
  sub_2387595D0();
  v71 = sub_23875BE40();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v85 = v64;
  v72 = v92;
  v103 = v68;
  v101 = v63;
  sub_23875B620();
  (*(v104 + 8))(v31, v66);
  sub_23875B5D0();
  sub_23875B600();
  v73 = v91;
  v74 = v90;
  sub_23875B610();
  v75 = v93;
  sub_23875B5C0();
  v77 = v105;
  v76 = v106;
  if ((*(v105 + 48))(v75, 1, v106) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v78 = v88;
  (*(v77 + 32))(v88, v75, v76);
  sub_23860BF78(&qword_27DF11168, MEMORY[0x277CC7830], MEMORY[0x277CC7828]);
  v79 = v96;
  v80 = v94;
  v104 = sub_238759920();
  v82 = v81;
  v109 = v74;
  v110[0] = v103;
  v110[1] = v101;
  v110[2] = v85;
  v110[3] = v102;
  v110[4] = v100;
  v110[5] = v73;
  v111 = v74;
  v112 = 0;
  v83 = v89;
  (v87)(v89, v108, v107);
  sub_23860726C(v110);
  sub_23860C2CC(v83, _s19ShippingFulfillmentO13TimeFormatterVMa);
  (*(v77 + 8))(v78, v76);
  (*(v97 + 8))(v72, v98);
  (*(v95 + 8))(v80, v79);
  if (v82)
  {
    return v104;
  }

  return 0;
}

uint64_t sub_238606030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(uint64_t, uint64_t)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t *a7@<X8>)
{
  v13 = a4(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_2387595E0();
  (*(*(v16 - 8) + 16))(v15, a2, v16);
  v17 = a5(a1, a3);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = sub_23860C2CC(v15, a6);
  *a7 = v17;
  a7[1] = v19;
  a7[2] = v21;
  a7[3] = v23;
  return result;
}

uint64_t sub_238606140(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v94 = a2;
  v98 = a1;
  v5 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v77 - v10;
  v11 = sub_23875BC40();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v77 - v18;
  v19 = sub_23875B650();
  v92 = *(v19 - 8);
  v93 = v19;
  MEMORY[0x28223BE20](v19);
  v95 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = &v77 - v22;
  v23 = sub_238757F70();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2387595E0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_238759390();
  v90 = *(v31 - 8);
  v91 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v28;
  v35 = *(v28 + 16);
  v36 = v4;
  v35(v30, v4, v27, v32);
  v89 = v34;
  sub_238759380();
  (*(v24 + 16))(v26, v98, v23);
  v37 = (*(v24 + 88))(v26, v23);
  if (v37 == *MEMORY[0x277CC6CA8])
  {
    (*(v24 + 96))(v26, v23);
    (v35)(v30, v4, v27);
    v39 = v96;
    v38 = v97;
    sub_2387595C0();
    v40 = sub_23875BE20();
    (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
    sub_2387595D0();
    v41 = sub_23875BE40();
    (*(*(v41 - 8) + 56))(v39, 0, 1, v41);
    v42 = v85;
    sub_23875B620();
    (*(v99 + 8))(v30, v27);
    v43 = v86;
    sub_23875B5C0();
    v45 = v100;
    v44 = v101;
    if ((*(v100 + 48))(v43, 1, v101) != 1)
    {
      v46 = v84;
      sub_23875B9F0();
      v47 = *(v45 + 8);
      v47(v43, v44);
      sub_23860BF78(&qword_27DF11178, MEMORY[0x277CC78B8], MEMORY[0x277CC78B0]);
      v48 = v91;
      v49 = v89;
      v50 = sub_238759920();
      v52 = v51;
      v47(v46, v44);
      (*(v92 + 8))(v42, v93);
      (*(v90 + 8))(v49, v48);
      if (v52)
      {
        return v50;
      }

      else
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v85 = v35;
  v55 = v96;
  v54 = v97;
  v86 = v27;
  v98 = v36;
  if (v37 != *MEMORY[0x277CC6CA0])
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  (*(v24 + 96))(v26, v23);
  v56 = *(v26 + 1);
  v79 = *v26;
  v84 = v56;
  v57 = *(v26 + 2);
  v80 = *(v26 + 3);
  v58 = *(v26 + 4);
  v81 = *(v26 + 5);
  v82 = v26[48];
  v59 = v86;
  (v85)(v30, v98, v86);
  sub_2387595C0();
  v60 = sub_23875BE20();
  (*(*(v60 - 8) + 56))(v54, 0, 1, v60);
  sub_2387595D0();
  v61 = sub_23875BE40();
  (*(*(v61 - 8) + 56))(v55, 0, 1, v61);
  v78 = v57;
  v62 = v79;
  sub_23875B620();
  v63 = v59;
  v64 = v80;
  (*(v99 + 8))(v30, v63);
  sub_23875B5D0();
  v99 = v58;
  v65 = v81;
  sub_23875B600();
  sub_23875B610();
  v66 = v87;
  sub_23875B5C0();
  v68 = v100;
  v67 = v101;
  v69 = (*(v100 + 48))(v66, 1, v101);
  v70 = v88;
  if (v69 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  (*(v68 + 32))(v88, v66, v67);
  sub_23860BF78(&qword_27DF11178, MEMORY[0x277CC78B8], MEMORY[0x277CC78B0]);
  v71 = v91;
  v72 = v89;
  v73 = sub_238759920();
  if (v74)
  {
    v102 = v82;
    v103[0] = v62;
    v103[1] = v84;
    v103[2] = v78;
    v103[3] = v64;
    v103[4] = v99;
    v103[5] = v65;
    v104 = v82;
    v75 = v73;
    v76 = v83;
    (v85)(v83, v98, v86);
    sub_23860726C(v103);
    sub_23860C2CC(v76, _s19ShippingFulfillmentO13TimeFormatterVMa);
    (*(v68 + 8))(v70, v67);
    (*(v92 + 8))(v95, v93);
    (*(v90 + 8))(v72, v71);
    return v75;
  }

  else
  {
    (*(v68 + 8))(v70, v67);
    (*(v92 + 8))(v95, v93);
    (*(v90 + 8))(v72, v71);
    return 0;
  }
}

uint64_t sub_238606D68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2387595E0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11180, &qword_2387776B8);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23875BE20();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_23875BD20();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860C3FC(v15, v16, v17);
  v18 = v25;
  sub_23875F780();
  if (!v18)
  {
    v19 = v23;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v24 + 8))(v8, v6);
    (*(v19 + 40))(v14, v5, v3);
    sub_23860C450(v14, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23860C2CC(v14, _s19ShippingFulfillmentO15StatusFormatterVMa);
}

uint64_t sub_2386070FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860C3FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238607138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860C3FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_23860718C()
{
  sub_23860BF78(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa, &unk_238777678);

  return sub_238759950();
}

uint64_t sub_23860726C(uint64_t a1)
{
  v64 = a1;
  v1 = sub_2387591F0();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2387595E0();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875ADF0();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v44 - v7;
  v8 = sub_23875BC40();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v52 = sub_23875B650();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23875BE20();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387595C0();
  v61 = *(v19 + 56);
  v61(v15, 1, 1, v18);
  v22 = sub_23875BE40();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v60 = v23 + 56;
  v24(v12, 1, 1, v22);
  sub_23875B620();
  v46 = v19;
  v25 = *(v19 + 16);
  v45 = v21;
  v25(v15, v21, v18);
  v47 = v18;
  v61(v15, 0, 1, v18);
  v26 = v62;
  sub_23875B630();
  sub_2387595D0();
  v24(v12, 0, 1, v22);
  sub_23875B640();
  sub_23875B5E0();
  sub_23875B5F0();
  sub_23875B5B0();
  sub_23875B5D0();
  sub_23875B600();
  v27 = v63;
  sub_23875B5C0();
  v28 = v65;
  v29 = v66;
  result = (*(v65 + 48))(v27, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + 32);
    v32 = v56;
    v31(v56, v27, v29);
    sub_238759580();
    (*(v51 + 16))(v48, v26, v53);
    v33 = v49;
    sub_23875ADD0();
    sub_23860BF78(&qword_27DF11170, MEMORY[0x277CC8450], MEMORY[0x277CC8448]);
    v34 = v55;
    sub_238759950();
    (*(v54 + 8))(v33, v34);
    v35 = v67;
    v36 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2387632F0;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_238448C58(v37, v38, v39);
    *(v37 + 32) = v35;
    *(v37 + 40) = v36;
    v41 = v57;
    v40 = v58;
    v42 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x277CC77B0], v59);
    v43 = sub_238758A50();

    (*(v40 + 8))(v41, v42);
    (*(v65 + 8))(v32, v66);
    (*(v50 + 8))(v17, v52);
    (*(v46 + 8))(v45, v47);
    return v43;
  }

  return result;
}

uint64_t sub_238607AD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11368, &qword_238778030);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860CFDC(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23860D084(v11, v16, _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238607D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860CFDC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238607DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860CFDC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_238607E04()
{
  sub_23860BF78(&qword_27DF11360, _s19ShippingFulfillmentO27DeliveryDateStatusFormatterVMa, &unk_238777EA0);

  return sub_238759950();
}

uint64_t sub_238607EE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113C0, &qword_238778060);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s19ShippingFulfillmentO21ShippingDateFormatterVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D140(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23860D084(v11, v16, _s19ShippingFulfillmentO21ShippingDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238608180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D140(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2386081BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D140(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238608210@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void *sub_238608240()
{
  sub_23860BF78(&qword_27DF113B8, _s19ShippingFulfillmentO21ShippingDateFormatterVMa, &unk_238777B10);

  return sub_238759950();
}

uint64_t sub_238608320(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v103 = a5;
  v105 = a4;
  v117 = a2;
  v118 = a3;
  v116 = a1;
  v94 = sub_238759120();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_238758A80();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2387595E0();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v104 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_238759820();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387591F0();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v114 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v89 - v12;
  v13 = sub_23875BC40();
  v14 = *(v13 - 8);
  v123 = v13;
  v124 = v14;
  MEMORY[0x28223BE20](v13);
  v100 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v113 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v89 - v24;
  v119 = sub_23875B650();
  v122 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v98 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v121 = &v89 - v28;
  v29 = sub_23875BE20();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387595C0();
  *&v111 = *(v30 + 56);
  (v111)(v25, 1, 1, v29);
  v33 = sub_23875BE40();
  v110 = *(*(v33 - 8) + 56);
  v110(v22, 1, 1, v33);
  v34 = v124;
  v35 = v121;
  sub_23875B620();
  v108 = v30;
  v36 = *(v30 + 16);
  v115 = v32;
  v36(v25, v32, v29);
  v109 = v29;
  (v111)(v25, 0, 1, v29);
  sub_23875B630();
  sub_2387595D0();
  v110(v22, 0, 1, v33);
  v37 = v35;
  sub_23875B640();
  sub_23875B5E0();
  sub_23875B5F0();
  sub_23875B5B0();
  v38 = v112;
  sub_23875B5C0();
  result = (*(v34 + 48))(v38, 1, v123);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v113;
    sub_23875B9F0();
    v41 = *(v34 + 8);
    v124 = v34 + 8;
    v41(v38, v123);
    v42 = v115;
    if (sub_23875BD70())
    {
      v44 = v106;
      v43 = v107;
      v45 = v114;
      (*(v106 + 104))(v114, *MEMORY[0x277CC77B0], v107);
      v46 = sub_238758A40();
      (*(v44 + 8))(v45, v43);
      v41(v40, v123);
      (*(v122 + 8))(v37, v119);
    }

    else
    {
      v112 = v41;
      v47 = sub_23875BD90();
      v48 = v122;
      v49 = v114;
      if (v47)
      {
        v50 = v107;
        v51 = v106 + 104;
        (*(v106 + 104))(v114, *MEMORY[0x277CC77B0], v107);
        v46 = sub_238758A40();
        (*(v51 - 96))(v49, v50);
        (v112)(v40, v123);
        (*(v48 + 8))(v37, v119);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09770, &qword_2387776B0);
        v52 = sub_23875BE00();
        v53 = *(v52 - 8);
        v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v55 = swift_allocObject();
        v111 = xmmword_2387632F0;
        *(v55 + 16) = xmmword_2387632F0;
        (*(v53 + 104))(v55 + v54, *MEMORY[0x277CC9968], v52);
        sub_23844C224(v55);
        swift_setDeallocating();
        (*(v53 + 8))(v55 + v54, v52);
        swift_deallocClassInstance();
        v56 = v99;
        sub_23875B9F0();
        v57 = v100;
        sub_23875B9F0();
        v58 = v98;
        sub_23875BD80();

        v59 = v57;
        v60 = v123;
        v61 = v112;
        (v112)(v59, v123);
        v61(v56, v60);
        v62 = sub_23875B5A0();
        LOBYTE(v52) = v63;
        v64 = *(v48 + 8);
        v122 = v48 + 8;
        v64(v58, v119);
        (*(v101 + 16))(v104, v120, v102);
        if ((v52 & 1) != 0 || v62 > 6)
        {
          (*(v92 + 104))(v90, *MEMORY[0x277CC7750], v94);
          v78 = v89;
          sub_238758A60();
          v79 = sub_238758A70();
          v81 = v80;
          (*(v91 + 8))(v78, v93);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
          v82 = swift_allocObject();
          *(v82 + 16) = v111;
          *(v82 + 56) = MEMORY[0x277D837D0];
          *(v82 + 64) = sub_238448C58(v82, v83, v84);
          *(v82 + 32) = v79;
          *(v82 + 40) = v81;
          v85 = v107;
          v86 = v106 + 104;
          v87 = v114;
          (*(v106 + 104))(v114, *MEMORY[0x277CC77B0], v107);
          v88 = (v86 - 96);
          v46 = sub_238758A50();

          (*v88)(v87, v85);
          (v112)(v40, v123);
          v64(v121, v119);
        }

        else
        {
          v65 = swift_allocObject();
          v67 = v116;
          v66 = v117;
          *(v65 + 16) = v116;
          *(v65 + 24) = v66;
          v120 = v64;
          v68 = v118;
          *(v65 + 32) = v118;
          v69 = v105 & 1;
          *(v65 + 40) = v105 & 1;
          v70 = swift_allocObject();
          *(v70 + 16) = v67;
          *(v70 + 24) = v66;
          *(v70 + 32) = v68;
          *(v70 + 40) = v69;
          v71 = swift_allocObject();
          *(v71 + 16) = v67;
          *(v71 + 24) = v66;
          *(v71 + 32) = v68;
          *(v71 + 40) = v69;
          v72 = swift_allocObject();
          *(v72 + 16) = v67;
          *(v72 + 24) = v66;
          *(v72 + 32) = v68;
          *(v72 + 40) = v69;
          v73 = swift_allocObject();
          *(v73 + 16) = v67;
          *(v73 + 24) = v66;
          *(v73 + 32) = v68;
          *(v73 + 40) = v69;
          v74 = swift_allocObject();
          *(v74 + 16) = v67;
          *(v74 + 24) = v66;
          *(v74 + 32) = v68;
          *(v74 + 40) = v69;
          v75 = swift_allocObject();
          *(v75 + 16) = v67;
          *(v75 + 24) = v66;
          *(v75 + 32) = v68;
          *(v75 + 40) = v69;
          v42 = v115;
          v76 = v95;
          sub_238759800();
          v77 = v113;
          v46 = sub_238759810();
          (*(v96 + 8))(v76, v97);
          (v112)(v77, v123);
          v120(v121, v119);
        }
      }
    }

    (*(v108 + 8))(v42, v109);
    return v46;
  }

  return result;
}

uint64_t sub_238609270@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113E0, &qword_238778070);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D194(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23860D084(v11, v16, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D194(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238609548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D194(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23860959C@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void *sub_2386095CC()
{
  sub_23860BF78(&qword_27DF113D8, _s19ShippingFulfillmentO30EstimatedDeliveryDateFormatterVMa, &unk_2387779D0);

  return sub_238759950();
}

uint64_t sub_2386096AC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2386096EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_23860995C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609A94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609BCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC77B0], v4, v6);
  v9 = sub_238758A40();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_238609F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11388, &qword_238778040);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D030(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23860D084(v11, v16, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860A210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D030(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23860A24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D030(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23860A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_238608320(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_23860A2C4()
{
  sub_23860BF78(&qword_27DF11380, _s19ShippingFulfillmentO23ArrivingOnDateFormatterVMa, &unk_238777D60);

  return sub_238759950();
}

uint64_t sub_23860A3A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_23860AD24(v5, v7) & 1;
}

uint64_t sub_23860A400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2387595E0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113A0, &qword_238778050);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s19ShippingFulfillmentO13TimeFormatterVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D0EC(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23860BF78(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23860D084(v11, v16, _s19ShippingFulfillmentO13TimeFormatterVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23860A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D0EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23860A6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23860D0EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23860A714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23860726C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23860A798(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_23875F790();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF0, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_23875F5C0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_23860A918()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23860A9A0(uint64_t a1)
{
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_23875E960();
}

uint64_t sub_23860AA24()
{
  sub_23875F700();
  sub_2387595E0();
  sub_23860BF78(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23860AAA8(uint64_t a1)
{
  v2 = sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa, &unk_2387784E8);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23860AB1C(uint64_t a1)
{
  v2 = sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa, &unk_2387784E8);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23860AB90@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_23860B7C4(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23860ABB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF113F8, qword_238778080);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23860D1E8(0, &qword_27DF11400, _s9FormatterV10CodingKeysOMa);
  sub_23860C6E0(qword_27DF11408, &qword_27DF11400, _s9FormatterV10CodingKeysOMa, &unk_2387784E8);
  sub_23875F790();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23860AD24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return v2 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

LABEL_13:
  v2 = *(a1 + 49) ^ *(a2 + 49) ^ 1;
  return v2 & 1;
}

BOOL sub_23860ADBC(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v65 = sub_238757F90();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v60 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11100, &qword_238777540);
  MEMORY[0x28223BE20](v64);
  v74 = &v60 - v6;
  v7 = sub_238757F70();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11108, &qword_238777548);
  MEMORY[0x28223BE20](v70);
  v71 = &v60 - v11;
  v12 = sub_238757FA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11110, &qword_238777550);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  sub_2387580D0();
  sub_2387581B0();
  sub_23860BF78(&qword_27DF0BBA8, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
  sub_23860BF78(&qword_27DF0BBB0, MEMORY[0x277CC6E68], MEMORY[0x277CC6E70]);
  v21 = a1;
  v22 = v75;
  if ((sub_23875AC60() & 1) == 0)
  {
    return 0;
  }

  v23 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v60 = v21;
  v61 = v23;
  v24 = *(v23 + 20);
  v25 = *(v18 + 48);
  sub_23843981C(v21 + v24, v20, &qword_27DF0FD58, &unk_238774490);
  sub_23843981C(v22 + v24, &v20[v25], &qword_27DF0FD58, &unk_238774490);
  v26 = *(v13 + 48);
  v27 = v22;
  if (v26(v20, 1, v12) == 1)
  {
    if (v26(&v20[v25], 1, v12) == 1)
    {
      sub_238439884(v20, &qword_27DF0FD58, &unk_238774490);
      goto LABEL_9;
    }

LABEL_7:
    v28 = &qword_27DF11110;
    v29 = &qword_238777550;
    v30 = v20;
LABEL_22:
    sub_238439884(v30, v28, v29);
    return 0;
  }

  sub_23843981C(v20, v17, &qword_27DF0FD58, &unk_238774490);
  if (v26(&v20[v25], 1, v12) == 1)
  {
    (*(v13 + 8))(v17, v12);
    goto LABEL_7;
  }

  v31 = v68;
  (*(v13 + 32))(v68, &v20[v25], v12);
  sub_23860BF78(&qword_27DF11128, MEMORY[0x277CC6D20], MEMORY[0x277CC6D28]);
  v32 = sub_23875E9E0();
  v33 = *(v13 + 8);
  v33(v31, v12);
  v33(v17, v12);
  sub_238439884(v20, &qword_27DF0FD58, &unk_238774490);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v34 = v60;
  v35 = *(v61 + 24);
  v36 = v71;
  v37 = *(v70 + 48);
  sub_23843981C(v60 + v35, v71, &qword_27DF0FD50, &unk_2387774D0);
  sub_23843981C(v27 + v35, v36 + v37, &qword_27DF0FD50, &unk_2387774D0);
  v39 = v72;
  v38 = v73;
  v40 = *(v72 + 48);
  if (v40(v36, 1, v73) != 1)
  {
    v44 = v66;
    sub_23843981C(v36, v66, &qword_27DF0FD50, &unk_2387774D0);
    v45 = v40(v36 + v37, 1, v38);
    v42 = v74;
    if (v45 != 1)
    {
      v46 = v36 + v37;
      v47 = v63;
      (*(v39 + 32))(v63, v46, v38);
      sub_23860BF78(&qword_27DF11120, MEMORY[0x277CC6CB0], MEMORY[0x277CC6CB8]);
      v48 = sub_23875E9E0();
      v49 = *(v39 + 8);
      v49(v47, v38);
      v49(v44, v38);
      sub_238439884(v36, &qword_27DF0FD50, &unk_2387774D0);
      v43 = v69;
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v39 + 8))(v44, v38);
    goto LABEL_14;
  }

  v41 = v40(v36 + v37, 1, v38);
  v42 = v74;
  v43 = v69;
  if (v41 != 1)
  {
LABEL_14:
    v28 = &qword_27DF11108;
    v29 = &qword_238777548;
    v30 = v36;
    goto LABEL_22;
  }

  sub_238439884(v36, &qword_27DF0FD50, &unk_2387774D0);
LABEL_16:
  v50 = *(v61 + 28);
  v51 = *(v64 + 48);
  sub_23843981C(v34 + v50, v42, &qword_27DF0FAF8, &unk_238774480);
  sub_23843981C(v27 + v50, v42 + v51, &qword_27DF0FAF8, &unk_238774480);
  v52 = *(v67 + 48);
  v53 = v65;
  if (v52(v42, 1, v65) == 1)
  {
    if (v52(v42 + v51, 1, v53) == 1)
    {
      sub_238439884(v42, &qword_27DF0FAF8, &unk_238774480);
      return 1;
    }

    goto LABEL_21;
  }

  sub_23843981C(v42, v43, &qword_27DF0FAF8, &unk_238774480);
  if (v52(v42 + v51, 1, v53) == 1)
  {
    (*(v67 + 8))(v43, v53);
LABEL_21:
    v28 = &qword_27DF11100;
    v29 = &qword_238777540;
    v30 = v42;
    goto LABEL_22;
  }

  v55 = v67;
  v56 = v42 + v51;
  v57 = v62;
  (*(v67 + 32))(v62, v56, v53);
  sub_23860BF78(&qword_27DF11118, MEMORY[0x277CC6CD0], MEMORY[0x277CC6CD8]);
  v58 = sub_23875E9E0();
  v59 = *(v55 + 8);
  v59(v57, v53);
  v59(v43, v53);
  sub_238439884(v42, &qword_27DF0FAF8, &unk_238774480);
  return (v58 & 1) != 0;
}

uint64_t sub_23860B7C4(uint64_t a1)
{
  v26 = sub_2387591F0();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = *(v6 + 16);
  v16(&v25 - v14, a1, v5, v13);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == *MEMORY[0x277CC83B8])
  {
    (v16)(v11, v15, v5);
    (*(v6 + 96))(v11, v5);
    v18 = sub_2387580D0();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 88))(v11, v18);
    if (v20 == *MEMORY[0x277CC6DF0] || v20 == *MEMORY[0x277CC6DE0] || v20 == *MEMORY[0x277CC6DD8] || v20 == *MEMORY[0x277CC6DF8] || v20 == *MEMORY[0x277CC6DE8])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (v17 == *MEMORY[0x277CC83A8])
  {
    (v16)(v8, v15, v5);
    (*(v6 + 96))(v8, v5);
    v18 = sub_2387581B0();
    v19 = *(v18 - 8);
    v21 = (*(v19 + 88))(v8, v18);
    if (v21 == *MEMORY[0x277CC6E40] || v21 == *MEMORY[0x277CC6E38] || v21 == *MEMORY[0x277CC6E48] || v21 == *MEMORY[0x277CC6E20] || v21 == *MEMORY[0x277CC6E60] || v21 == *MEMORY[0x277CC6E58] || v21 == *MEMORY[0x277CC6E30] || v21 == *MEMORY[0x277CC6E28] || v21 == *MEMORY[0x277CC6E50] || v21 == *MEMORY[0x277CC6E18])
    {
      goto LABEL_22;
    }

    v11 = v8;
LABEL_30:
    (*(v19 + 8))(v11, v18);
    goto LABEL_31;
  }

  if (v17 == *MEMORY[0x277CC83B0])
  {
LABEL_22:
    v22 = v26;
    (*(v2 + 104))(v4, *MEMORY[0x277CC77B0], v26);
    v23 = sub_238758A40();
    (*(v2 + 8))(v4, v22);
    (*(v6 + 8))(v15, v5);
    return v23;
  }

LABEL_31:
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_23860BE70(uint64_t a1)
{
  sub_2384C5F0C(319);
  if (v1 <= 0x3F)
  {
    sub_23860BFC0(319, &qword_27DF110E8, MEMORY[0x277CC6D20]);
    if (v2 <= 0x3F)
    {
      sub_23860BFC0(319, &qword_27DF110F0, MEMORY[0x277CC6CB0]);
      if (v3 <= 0x3F)
      {
        sub_23860BFC0(319, &qword_27DF110F8, MEMORY[0x277CC6CD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23860BF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23860BFC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23860C2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23860C3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11188;
  if (!qword_27DF11188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11188);
  }

  return result;
}

uint64_t sub_23860C450(uint64_t a1, uint64_t a2)
{
  v4 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_1(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23860C6E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23860D1E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23860CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11330;
  if (!qword_27DF11330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11330);
  }

  return result;
}

unint64_t sub_23860CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11338;
  if (!qword_27DF11338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11338);
  }

  return result;
}

unint64_t sub_23860CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11340;
  if (!qword_27DF11340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11340);
  }

  return result;
}

unint64_t sub_23860CFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11370;
  if (!qword_27DF11370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11370);
  }

  return result;
}

unint64_t sub_23860D030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11390;
  if (!qword_27DF11390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11390);
  }

  return result;
}

uint64_t sub_23860D084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23860D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF113A8;
  if (!qword_27DF113A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113A8);
  }

  return result;
}

unint64_t sub_23860D140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF113C8;
  if (!qword_27DF113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113C8);
  }

  return result;
}

unint64_t sub_23860D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF113E8;
  if (!qword_27DF113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF113E8);
  }

  return result;
}

void sub_23860D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23860D2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23860D304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23860D378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23860D3CC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23860D434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11490;
  if (!qword_27DF11490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11490);
  }

  return result;
}

unint64_t sub_23860D48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11498;
  if (!qword_27DF11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11498);
  }

  return result;
}

unint64_t sub_23860D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114A0;
  if (!qword_27DF114A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114A0);
  }

  return result;
}

unint64_t sub_23860D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114A8;
  if (!qword_27DF114A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114A8);
  }

  return result;
}

unint64_t sub_23860D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114B0;
  if (!qword_27DF114B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114B0);
  }

  return result;
}

unint64_t sub_23860D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114C8;
  if (!qword_27DF114C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114C8);
  }

  return result;
}

unint64_t sub_23860D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114D0;
  if (!qword_27DF114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114D0);
  }

  return result;
}

unint64_t sub_23860D73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114D8;
  if (!qword_27DF114D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114D8);
  }

  return result;
}

unint64_t sub_23860D794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114E0;
  if (!qword_27DF114E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114E0);
  }

  return result;
}

unint64_t sub_23860D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114E8;
  if (!qword_27DF114E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114E8);
  }

  return result;
}

unint64_t sub_23860D844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114F0;
  if (!qword_27DF114F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114F0);
  }

  return result;
}

unint64_t sub_23860D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF114F8;
  if (!qword_27DF114F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF114F8);
  }

  return result;
}

unint64_t sub_23860D8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11500;
  if (!qword_27DF11500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11500);
  }

  return result;
}

unint64_t sub_23860D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11508;
  if (!qword_27DF11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11508);
  }

  return result;
}

unint64_t sub_23860D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11510;
  if (!qword_27DF11510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11510);
  }

  return result;
}

uint64_t sub_23860DA5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for OrderFileAttachmentPreview(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11518, &qword_2387787D0);
  sub_23875E1B0();
  v10 = v23;
  if (v23)
  {
    v11 = OBJC_IVAR____TtC12FinanceKitUI12OrderReceipt_fileUrl;
    v12 = sub_23875B940();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v10 + v11, v12);

    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_23875B940();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_23853B5CC(v6, v9);
  v15 = *(v7 + 20);
  *&v9[v15] = swift_getKeyPath(asc_2387787D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_23860E36C(v2, v21);
  v16 = swift_allocObject();
  v17 = v22[0];
  v16[3] = v21[2];
  v16[4] = v17;
  *(v16 + 73) = *(v22 + 9);
  v18 = v21[1];
  v16[1] = v21[0];
  v16[2] = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6D8, &unk_2387702E0) + 36));
  sub_23875C6E0();
  sub_23875ED60();
  *v19 = &unk_238778818;
  v19[1] = v16;
  return sub_23857119C(v9, a1);
}

uint64_t sub_23860DD24(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23875C1E0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_23875ED50();
  v1[24] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_23860DE18, v4, v3);
}

uint64_t sub_23860DE18()
{
  v1 = v0[20];
  sub_2384D55B0((v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *v1;
  v5 = v1[1];
  v8 = (*(v3 + 16) + **(v3 + 16));
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_23860DF60;

  return v8(v4, v5, v2, v3);
}

uint64_t sub_23860DF60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_23860E13C;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_23860E088;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23860E088()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);

  *(v0 + 136) = *(v2 + 16);
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11518, &qword_2387787D0);
  sub_23875E1C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23860E13C()
{
  v24 = v0;
  v1 = v0[28];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_23875C180();
  sub_23860E36C(v2, (v0 + 2));
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  if (v6)
  {
    v22 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315394;
    v21 = v9;
    v15 = v0[2];
    v14 = v0[3];

    sub_23860E438((v0 + 2));
    v16 = sub_2384615AC(v15, v14, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_2383F8000, v4, v5, "Error loading receipt %s: %@", v11, 0x16u);
    sub_238455DD4(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v8 + 8))(v21, v22);
  }

  else
  {

    sub_23860E438((v0 + 2));
    (*(v8 + 8))(v9, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_23860E3A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23860DD24(v0 + 16);
}

uint64_t sub_23860E48C(uint64_t a1)
{
  v2 = sub_23875A9F0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_238758540();
}

id sub_23860E554(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875EA50();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_23875B730();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_23860E62C(uint64_t a1, uint64_t a2)
{
  v3 = sub_238758F50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_23861C5F4(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]), v7 = sub_23875E950(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_23861C5F4(&qword_27DF0D430, MEMORY[0x277CC7678], MEMORY[0x277CC7688]);
      v15 = sub_23875E9E0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_23860E844(uint64_t a1, uint64_t a2)
{
  v3 = sub_238758680();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_23861C5F4(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]), v7 = sub_23875E950(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_23861C5F4(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
      v15 = sub_23875E9E0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

double sub_23860EA5C()
{
  swift_getKeyPath(asc_238778A90);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  return result;
}

double sub_23860EB00@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_238778A90);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  *a2 = *(v3 + 32);

  return result;
}

double sub_23860EBAC(uint64_t a1)
{

  v4 = sub_23851A108(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_238778A90);
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
    sub_23875BE80();
  }

  return result;
}

double sub_23860ED00()
{
  swift_getKeyPath(byte_238778B18);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();

  return result;
}

double sub_23860EDB8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_238778B18);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

double sub_23860EEA4(uint64_t a1)
{
  swift_beginAccess();

  sub_2384A2000(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238778B18);
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
    sub_23875BE80();
  }

  return result;
}

void sub_23860EFEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_23860F054()
{
  swift_getKeyPath(byte_238778B40);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  return *(v0 + 48);
}

void sub_23860F0F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_238778B40);
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  *a2 = *(v3 + 48);
}

double sub_23860F19C(uint64_t a1)
{
  if (*(v1 + 48) != a1)
  {
    KeyPath = swift_getKeyPath(byte_238778B40);
    MEMORY[0x28223BE20](KeyPath);
    sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
    sub_23875BE80();
  }

  return result;
}

void sub_23860F2A0(uint64_t a1)
{
  v2 = v1;
  v33[0] = sub_238758680();
  v4 = *(v33[0] - 8);
  MEMORY[0x28223BE20](v33[0]);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - v12;
  swift_getKeyPath(byte_238778B18, v11);
  v35 = v1;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v14 = *(v1 + 40);

  v15 = sub_23860E844(a1, v14);

  if (v15)
  {
    swift_getKeyPath(byte_238778B18);
    v34[0] = v2;
    sub_23875BE90();

    v34[0] = v2;
    swift_getKeyPath(byte_238778B18);
    sub_23875BEB0();

    swift_beginAccess();
    sub_2386F2298(a1, v13);
    sub_238439884(v13, &qword_27DF09520, &unk_2387637E0);
    swift_endAccess();
    v34[0] = v2;
    swift_getKeyPath(byte_238778B18);
    sub_23875BEA0();

    v16 = 42;
  }

  else
  {
    v17 = v33[0];
    (*(v4 + 16))(v6, a1, v33[0]);
    swift_getKeyPath(byte_238778B18);
    v34[0] = v2;
    sub_23875BE90();

    v34[0] = v2;
    swift_getKeyPath(byte_238778B18);
    sub_23875BEB0();

    swift_beginAccess();
    sub_238709400(v9, v6);
    (*(v4 + 8))(v9, v17);
    swift_endAccess();
    v34[0] = v2;
    swift_getKeyPath(byte_238778B18);
    sub_23875BEA0();

    v16 = 41;
  }

  v18 = *(v2 + 56);
  v19 = sub_238611904();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v21 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v22;
  v23 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v16);
  *(inited + 72) = v24;
  v25 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v26 = v21;
  v27 = v23;
  v28 = v25;
  v29 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v29;
  sub_2385C33E4(v19, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v34);

  v31 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v32 = sub_23875E910();

  [v31 subject:v18 sendEvent:v32];
}

void sub_23860F828()
{
  swift_getKeyPath(byte_238778B18);
  v19 = v0;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v1 = *(v0[5] + 16);
  swift_getKeyPath(byte_238778B40);
  v18 = v0;
  sub_23875BE90();

  if (v1 >= v0[6])
  {
    swift_getKeyPath(byte_238778B18);
    sub_23875BE90();

    swift_getKeyPath(byte_238778B18);
    sub_23875BEB0();

    v0[5] = MEMORY[0x277D84FA0];

    v18 = v0;
    swift_getKeyPath(byte_238778B18);
    sub_23875BEA0();

    v2 = 42;
  }

  else
  {
    sub_238610E14();
    v2 = 41;
  }

  v3 = v0[7];
  v4 = sub_238611904();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v6 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v2);
  *(inited + 72) = v9;
  v10 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v11 = v6;
  v12 = v8;
  v13 = v10;
  v14 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14;
  sub_2385C33E4(v4, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v3 sendEvent:v17];
}

void sub_23860FBC0()
{
  v1 = v0;
  v2 = sub_238758680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  swift_getKeyPath(byte_238778B18, v6);
  v30 = v0;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v9 = *(v0 + 40);
  swift_getKeyPath(asc_238778A90);
  v29 = v1;
  v20 = v9;

  sub_23875BE90();

  v10 = *(v1 + 32);
  v11 = *(v10 + 16);

  v27 = v11;
  if (v11)
  {
    v12 = 0;
    v21 = (v3 + 8);
    v25 = (v3 + 32);
    v26 = v3 + 16;
    v13 = MEMORY[0x277D84F90];
    v23 = v1;
    v24 = v2;
    v22 = v10;
    while (v12 < *(v10 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      (*(v3 + 16))(v8, v10 + v14 + v15 * v12, v2);
      if (sub_23860FF40(v8, v1))
      {
        v16 = *v25;
        (*v25)(v28, v8, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE488(0, *(v13 + 16) + 1, 1);
          v13 = v29;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2385FE488((v18 > 1), v19 + 1, 1);
          v13 = v29;
        }

        *(v13 + 16) = v19 + 1;
        v2 = v24;
        v16((v13 + v14 + v19 * v15), v28, v24);
        v10 = v22;
        v1 = v23;
      }

      else
      {
        (*v21)(v8, v2);
      }

      if (v27 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v21)(v8, v2);

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_13:

    sub_2384A4E78(v13);
  }
}

uint64_t sub_23860FF40(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_238757FD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  MEMORY[0x28223BE20](v6);
  v8 = &v29[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-v15];
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = a1;
  sub_2387585D0();
  (*(v4 + 104))(v13, *MEMORY[0x277CC6D50], v3);
  (*(v4 + 56))(v13, 0, 1, v3);
  v17 = *(v6 + 48);
  sub_23843981C(v16, v8, &qword_27DF11628, &qword_238778B70);
  sub_23843981C(v13, &v8[v17], &qword_27DF11628, &qword_238778B70);
  v18 = v4;
  v19 = *(v4 + 48);
  if (v19(v8, 1, v3) == 1)
  {
    sub_238439884(v13, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
    if (v19(&v8[v17], 1, v3) == 1)
    {
      sub_238439884(v8, &qword_27DF11628, &qword_238778B70);
LABEL_11:

      v24 = 0;
      return v24 & 1;
    }

    goto LABEL_8;
  }

  sub_23843981C(v8, v34, &qword_27DF11628, &qword_238778B70);
  if (v19(&v8[v17], 1, v3) == 1)
  {
    sub_238439884(v13, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
    (*(v18 + 8))(v34, v3);
LABEL_8:
    sub_238439884(v8, &qword_27DF11620, &qword_238778B68);
    v20 = v33;
    goto LABEL_9;
  }

  v25 = v31;
  (*(v18 + 32))(v31, &v8[v17], v3);
  sub_23861C5F4(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
  v26 = v34;
  v30 = sub_23875E9E0();
  v27 = *(v18 + 8);
  v27(v25, v3);
  sub_238439884(v13, &qword_27DF11628, &qword_238778B70);
  sub_238439884(v16, &qword_27DF11628, &qword_238778B70);
  v27(v26, v3);
  sub_238439884(v8, &qword_27DF11628, &qword_238778B70);
  v20 = v33;
  if (v30)
  {
    goto LABEL_11;
  }

LABEL_9:
  swift_getKeyPath(byte_238778B18);
  v21 = v32;
  v36 = v32;
  sub_23861C5F4(&qword_27DF0C1B0, type metadata accessor for AccountsModel, &unk_238778A38);
  sub_23875BE90();

  swift_beginAccess();
  v22 = *(v21 + 40);

  v23 = sub_23860E844(v20, v22);

  v24 = v23 ^ 1;
  return v24 & 1;
}