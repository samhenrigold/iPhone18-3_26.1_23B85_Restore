uint64_t sub_2386B2224@<X0>(uint64_t a1@<X8>)
{
  sub_2386B0540(v1, a1);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(aH_18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D60, &qword_23877EF60);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t static OrderPaymentSummaryItemView.ViewModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0) + 20);

  return MEMORY[0x2821174A8](a1 + v5, a2 + v5);
}

uint64_t OrderPaymentSummaryItemView.ViewModel.hash(into:)(uint64_t a1)
{
  sub_23875EB30();
  type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DC8]);
  return sub_23875E960();
}

uint64_t OrderPaymentSummaryItemView.ViewModel.hashValue.getter()
{
  sub_23875F700();
  sub_23875EB30();
  type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0);
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DC8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B2444@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_23843981C(v2 + *(v13 + 20), v12, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2386B2654()
{
  sub_23875F700();
  sub_23875EB30();
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DC8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B26FC(uint64_t a1)
{
  sub_23875EB30();
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DC8]);
  return sub_23875E960();
}

uint64_t sub_2386B2788()
{
  sub_23875F700();
  sub_23875EB30();
  sub_238758090();
  sub_2386B5C9C(&qword_27DF13C30, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DC8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2386B282C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x2821174A8](a1 + v7, a2 + v7);
}

double OrderPaymentSummaryItemView.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_2386B291C(v1, v10);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(aH_18);
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = v3;
  return result;
}

double sub_2386B291C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386B2444(type metadata accessor for OrderPaymentSummaryItemView, v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v10 = sub_23875E9C0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B2E44(a1, &v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v12;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v13 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2386B3BAC(a1, sub_2386B30AC, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  v14 = MEMORY[0x277CE1138];
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60, MEMORY[0x277CE1138]);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, v14);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

double sub_2386B2E44@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_23875BD20();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v10 = a1[1];
  v35 = *a1;
  v36 = v10;
  sub_2384397A8(isCurrentExecutor, v8, v9);

  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0);
  sub_23875BCC0();
  v18 = sub_238758080();
  v20 = v19;
  (*(v4 + 8))(v6, v30);
  v35 = v18;
  v36 = v20;
  v21 = sub_23875DAA0();
  v23 = v22;
  v24 = v15 & 1;
  LOBYTE(v35) = v15 & 1;
  v34 = v15 & 1;
  v33 = 1;
  v26 = v25 & 1;
  v32 = v25 & 1;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v24;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v25 & 1;
  *(a2 + 72) = v27;
  sub_23843980C(v11, v13, v24);

  sub_23843980C(v21, v23, v26);

  sub_2384397FC(v21, v23, v26);

  sub_2384397FC(v11, v13, v35);

  return result;
}

double sub_2386B30AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = sub_23875BD20();
  v4 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v29[1] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  sub_2384397A8(isCurrentExecutor, v8, v9);

  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  type metadata accessor for OrderPaymentSummaryItemView.ViewModel(0);
  sub_23875BCC0();
  v18 = sub_238758080();
  v20 = v19;
  (*(v4 + 8))(v6, v29[0]);
  v31 = v18;
  v32 = v20;
  v21 = sub_23875DAA0();
  v23 = v22;
  v24 = v15 & 1;
  v30 = v15 & 1;
  LOBYTE(v31) = v15 & 1;
  v26 = v25 & 1;
  v33 = v25 & 1;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v24;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v25 & 1;
  *(a2 + 56) = v27;
  sub_23843980C(v11, v13, v24);

  sub_23843980C(v21, v23, v26);

  sub_2384397FC(v21, v23, v26);

  sub_2384397FC(v11, v13, v30);

  return result;
}

double sub_2386B3300@<D0>(uint64_t a1@<X8>)
{
  sub_2386B291C(v1, v10);
  v3 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(aH_18);
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = v3;
  return result;
}

double sub_2386B336C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderPaymentTotalView(0);
  sub_2384D5138(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v10 = sub_23875E9C0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B388C(&v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v12;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v13 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2386B3BAC(a1, sub_2386B3D70, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  v14 = MEMORY[0x277CE1138];
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60, MEMORY[0x277CE1138]);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, v14);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

double sub_2386B388C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v40 = v10;
  v41 = v12;
  sub_2384397A8(v13, v14, v15);
  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_23875BCC0();
  v23 = sub_238758080();
  v25 = v24;
  (*(v34 + 8))(v4, v35);
  v40 = v23;
  v41 = v25;
  v26 = sub_23875DAA0();
  v28 = v27;
  v29 = v20 & 1;
  LOBYTE(v40) = v20 & 1;
  v39 = v20 & 1;
  v38 = 1;
  v31 = v30 & 1;
  v37 = v30 & 1;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v29;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v30 & 1;
  *(a1 + 72) = v32;
  sub_23843980C(v16, v18, v29);

  sub_23843980C(v26, v28, v31);

  sub_2384397FC(v26, v28, v31);

  sub_2384397FC(v16, v18, v40);

  return result;
}

double sub_2386B3BAC@<D0>(uint64_t a1@<X0>, void (*a3)(_OWORD *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D030();
  LOBYTE(v23[0]) = 0;
  a3(v19, a1);
  *&v18[55] = v20;
  *&v18[39] = v19[2];
  *&v18[23] = v19[1];
  *&v18[7] = v19[0];
  v8 = v23[0];
  *&v21 = v7;
  *(&v21 + 1) = 0x4010000000000000;
  v22[0] = v23[0];
  v9 = *v18;
  *&v22[1] = *v18;
  *&v22[64] = *(&v20 + 1);
  v10 = *&v18[48];
  *&v22[49] = *&v18[48];
  v11 = *&v18[32];
  *&v22[33] = *&v18[32];
  v12 = *&v18[16];
  *&v22[17] = *&v18[16];
  v13 = *v22;
  *a4 = v21;
  *(a4 + 16) = v13;
  v14 = *&v22[16];
  v15 = *&v22[48];
  *(a4 + 48) = *&v22[32];
  *(a4 + 64) = v15;
  *(a4 + 32) = v14;
  v25 = v9;
  v17[88] = 0;
  *(a4 + 80) = *&v22[64];
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  v23[0] = v7;
  v23[1] = 0x4010000000000000;
  v24 = v8;
  *&v28[15] = *&v18[63];
  *v28 = v10;
  v27 = v11;
  v26 = v12;
  sub_23843981C(&v21, v17, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v23, &qword_27DF0BA70, &unk_238769590);

  return result;
}

double sub_2386B3D70@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v39 = v10;
  v40 = v12;
  sub_2384397A8(v13, v14, v15);
  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_23875BCC0();
  v23 = sub_238758080();
  v25 = v24;
  (*(v35 + 8))(v4, v36);
  v39 = v23;
  v40 = v25;
  v26 = sub_23875DAA0();
  v28 = v27;
  v29 = v20 & 1;
  v38 = v20 & 1;
  LOBYTE(v39) = v20 & 1;
  v31 = v30 & 1;
  v41 = v30 & 1;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v29;
  *(a1 + 24) = v22;
  *(a1 + 32) = v26;
  *(a1 + 40) = v27;
  *(a1 + 48) = v30 & 1;
  *(a1 + 56) = v32;
  sub_23843980C(v16, v18, v29);

  sub_23843980C(v26, v28, v31);

  sub_2384397FC(v26, v28, v31);

  sub_2384397FC(v16, v18, v38);

  return result;
}

uint64_t sub_2386B407C()
{
  sub_2386B336C(v0, v2);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  sub_23875DAF0();
  v4[4] = v2[4];
  v4[5] = v2[5];
  v5[0] = v3[0];
  *(v5 + 10) = *(v3 + 10);
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  v4[3] = v2[3];
  return sub_238439884(v4, &qword_27DF0B9F8, &qword_238768E50);
}

uint64_t sub_2386B416C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9E8, &unk_238768E40);
  v25 = *(v27 - 8);
  v2 = v25;
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D08, &qword_23877EED8);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  *v11 = sub_23875CE50();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D10, &qword_23877EEE0);
  sub_2386B44A8(v1, &v11[*(v12 + 44)]);
  sub_2386B4DCC(v1, v30);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  sub_23875DAF0();
  v32[4] = v30[4];
  v32[5] = v30[5];
  v33[0] = v31[0];
  *(v33 + 10) = *(v31 + 10);
  v32[0] = v30[0];
  v32[1] = v30[1];
  v32[2] = v30[2];
  v32[3] = v30[3];
  sub_238439884(v32, &qword_27DF0B9F8, &qword_238768E50);
  v13 = v29;
  sub_23843981C(v11, v29, &qword_27DF13D08, &qword_23877EED8);
  v14 = *(v2 + 16);
  v15 = v26;
  v16 = v6;
  v17 = v6;
  v18 = v27;
  v14(v26, v16, v27);
  v19 = v13;
  v20 = v28;
  sub_23843981C(v19, v28, &qword_27DF13D08, &qword_23877EED8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D18, &qword_23877EEE8);
  v14((v20 + *(v21 + 48)), v15, v18);
  v22 = *(v25 + 8);
  v22(v17, v18);
  sub_238439884(v11, &qword_27DF13D08, &qword_23877EED8);
  v22(v15, v18);
  return sub_238439884(v29, &qword_27DF13D08, &qword_23877EED8);
}

double sub_2386B44A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D20, &qword_23877EEF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_23875D030();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D28, &qword_23877EF00);
  sub_2386B4668(a1, &v9[*(v10 + 44)]);
  sub_23843981C(v9, v6, &qword_27DF13D20, &qword_23877EEF8);
  sub_23843981C(v6, a2, &qword_27DF13D20, &qword_23877EEF8);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D30, &qword_23877EF08) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_238439884(v9, &qword_27DF13D20, &qword_23877EEF8);
  sub_238439884(v6, &qword_27DF13D20, &qword_23877EEF8);

  return result;
}

double sub_2386B4668@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D38, &qword_23877EF10);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = (&v46 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D40, &unk_23877EF18);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632F0;
  v12 = sub_2386A22B8();
  v46 = a1;
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_238448C58(v12, v13, v15);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  if (qword_2814F0880 != -1)
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

  v53 = v21;
  v54 = v23;
  sub_2384397A8(v24, v25, v26);
  v27 = sub_23875DAA0();
  v29 = v28;
  LOBYTE(v19) = v30;
  sub_23875D890();
  v31 = sub_23875D9E0();
  v33 = v32;
  v47 = v34;
  v36 = v35;
  sub_2384397FC(v27, v29, v19 & 1);

  v37 = *(v46 + *(type metadata accessor for OrderPaymentStatusView(0) + 20));
  if (*(v37 + 16))
  {
    v46 = a2;
    v38 = sub_23875D030();
    v39 = v52;
    *v52 = v38;
    v39[1] = 0x4000000000000000;
    *(v39 + 16) = 0;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D48, &unk_23877EF28);
    v53 = v37;
    swift_getKeyPath(asc_23877EF38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
    sub_23843A3E8(&qword_27DF13D50, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83980]);
    v40 = v52;
    sub_23875E370();

    sub_2384396E4(v40, v10, &qword_27DF13D38, &qword_23877EF10);
    v41 = 0;
    a2 = v46;
  }

  else
  {
    v41 = 1;
  }

  (*(v48 + 56))(v10, v41, 1, v49);
  v42 = v51;
  sub_23843981C(v10, v51, &qword_27DF13D40, &unk_23877EF18);
  *a2 = v31;
  *(a2 + 8) = v33;
  v43 = v47 & 1;
  *(a2 + 16) = v47 & 1;
  *(a2 + 24) = v36;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D58, &qword_23877EF58);
  sub_23843981C(v42, a2 + *(v44 + 48), &qword_27DF13D40, &unk_23877EF18);
  sub_23843980C(v31, v33, v43);

  sub_238439884(v10, &qword_27DF13D40, &unk_23877EF18);
  sub_238439884(v42, &qword_27DF13D40, &unk_23877EF18);
  sub_2384397FC(v31, v33, v43);

  return result;
}

void sub_2386B4C30(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v4, v5);

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875D440();
  v16 = sub_23875DA20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2384397FC(v11, v13, v15 & 1);

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
}

double sub_2386B4DCC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderPaymentStatusView(0);
  sub_2384D5138(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v10 = sub_23875E9C0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B52EC(&v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v12;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v13 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2386B3BAC(a1, sub_2386B5618, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  v14 = MEMORY[0x277CE1138];
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60, MEMORY[0x277CE1138]);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, v14);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

double sub_2386B52EC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v40 = v10;
  v41 = v12;
  sub_2384397A8(v13, v14, v15);
  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  type metadata accessor for OrderPaymentStatusView(0);
  sub_23875BCC0();
  v23 = sub_238758080();
  v25 = v24;
  (*(v34 + 8))(v4, v35);
  v40 = v23;
  v41 = v25;
  v26 = sub_23875DAA0();
  v28 = v27;
  v29 = v20 & 1;
  LOBYTE(v40) = v20 & 1;
  v39 = v20 & 1;
  v38 = 1;
  v31 = v30 & 1;
  v37 = v30 & 1;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v29;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v30 & 1;
  *(a1 + 72) = v32;
  sub_23843980C(v16, v18, v29);

  sub_23843980C(v26, v28, v31);

  sub_2384397FC(v26, v28, v31);

  sub_2384397FC(v16, v18, v40);

  return result;
}

double sub_2386B5618@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v39 = v10;
  v40 = v12;
  sub_2384397A8(v13, v14, v15);
  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  type metadata accessor for OrderPaymentStatusView(0);
  sub_23875BCC0();
  v23 = sub_238758080();
  v25 = v24;
  (*(v35 + 8))(v4, v36);
  v39 = v23;
  v40 = v25;
  v26 = sub_23875DAA0();
  v28 = v27;
  v29 = v20 & 1;
  v38 = v20 & 1;
  LOBYTE(v39) = v20 & 1;
  v31 = v30 & 1;
  v41 = v30 & 1;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v29;
  *(a1 + 24) = v22;
  *(a1 + 32) = v26;
  *(a1 + 40) = v27;
  *(a1 + 48) = v30 & 1;
  *(a1 + 56) = v32;
  sub_23843980C(v16, v18, v29);

  sub_23843980C(v26, v28, v31);

  sub_2384397FC(v26, v28, v31);

  sub_2384397FC(v16, v18, v38);

  return result;
}

uint64_t sub_2386B5934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CC30();
  *a1 = result;
  return result;
}

uint64_t sub_2386B598C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386B59F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386B5A8C()
{
  result = qword_27DF13C10;
  if (!qword_27DF13C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BF8, &qword_23877EAE0);
    sub_23843A3E8(&qword_27DF13C18, &qword_27DF13C20, &unk_23877EAF0, MEMORY[0x277CDE5A0]);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13C10);
  }

  return result;
}

uint64_t sub_2386B5B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2386B5BD8()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2386AF6BC(v2);
}

uint64_t sub_2386B5C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2386B5D28(uint64_t a1)
{
  sub_23875BC40();
  if (v1 <= 0x3F)
  {
    sub_23875AF90();
    if (v2 <= 0x3F)
    {
      sub_2386B5F4C(319, &qword_27DF13C50, MEMORY[0x277CC8580], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2386B5F4C(319, &qword_27DF13C58, type metadata accessor for OrderPaymentSummaryItemView.ViewModel, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_238758090();
          if (v5 <= 0x3F)
          {
            sub_2386B5F4C(319, &qword_27DF13C60, MEMORY[0x277CC74C8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2386B5FB0();
              if (v7 <= 0x3F)
              {
                sub_2386B5F4C(319, &qword_27DF13C68, MEMORY[0x277CC8510], MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_2386B5F4C(319, &qword_27DF13C70, MEMORY[0x277CC85A8], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
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
}

void sub_2386B5F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2386B5FB0()
{
  if (!qword_2814F08B0)
  {
    v0 = sub_23875ECC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F08B0);
    }
  }
}

uint64_t sub_2386B6028(uint64_t a1)
{
  result = type metadata accessor for OrderPaymentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386B611C(uint64_t a1)
{
  result = sub_238758090();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2386B6198()
{
  result = qword_27DF13CA8;
  if (!qword_27DF13CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13C28, &qword_23877EB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BF8, &qword_23877EAE0);
    sub_23875D310();
    sub_2386B5A8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13CA8);
  }

  return result;
}

unint64_t sub_2386B6280()
{
  result = qword_27DF13CB0;
  if (!qword_27DF13CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13CB8, &qword_23877ED08);
    sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13CB0);
  }

  return result;
}

void sub_2386B63AC(uint64_t a1)
{
  sub_238758D30();
  if (v1 <= 0x3F)
  {
    sub_2386B5FB0();
    if (v2 <= 0x3F)
    {
      sub_238758090();
      if (v3 <= 0x3F)
      {
        sub_2386B5F4C(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_2386B675C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_2386B5F4C(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2386B685C(uint64_t a1)
{
  result = sub_23875BC40();
  if (v2 <= 0x3F)
  {
    result = sub_238758090();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386B6A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E30, &qword_23877F108);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23843981C(a1, &v5 - v3, &qword_27DF13E30, &qword_23877F108);
  return sub_23875CCE0();
}

unint64_t sub_2386B6B1C()
{
  result = qword_27DF13E48;
  if (!qword_27DF13E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E40, &qword_23877F178);
    sub_23843A3E8(&qword_27DF0F070, &qword_27DF0BA70, &unk_238769590, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13E48);
  }

  return result;
}

unint64_t sub_2386B6C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF13EC8;
  if (!qword_27DF13EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EC8);
  }

  return result;
}

void sub_2386B6C5C(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2386ADEA0(a1, v3 + v7, v8, a3);
}

unint64_t sub_2386B6D24()
{
  result = qword_27DF13EF0;
  if (!qword_27DF13EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13EE0, &qword_23877F240);
    sub_2386B6DDC();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EF0);
  }

  return result;
}

unint64_t sub_2386B6DDC()
{
  result = qword_27DF13EF8;
  if (!qword_27DF13EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F00, &qword_23877F248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F08, &qword_23877F250);
    sub_2386B6ED0();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EF8);
  }

  return result;
}

unint64_t sub_2386B6ED0()
{
  result = qword_27DF13F10;
  if (!qword_27DF13F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F08, &qword_23877F250);
    sub_2386B6FF4(&qword_27DF13F18, &qword_27DF13F20, &unk_23877F258, sub_2386B7070);
    sub_2386B71F8(&qword_27DF13F30, &qword_27DF13F38, &qword_23877F268, sub_2386B712C);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F10);
  }

  return result;
}

uint64_t sub_2386B6FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2386B7070()
{
  result = qword_27DF13F28;
  if (!qword_27DF13F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E70, &qword_23877F1D0);
    sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView, &unk_23877ED88);
    sub_2384BF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F28);
  }

  return result;
}

unint64_t sub_2386B712C()
{
  result = qword_27DF13F40;
  if (!qword_27DF13F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F48, &qword_23877F270);
    sub_2386B5C9C(&qword_27DF13F50, type metadata accessor for OrderPaymentTransactionRow, &protocol conformance descriptor for OrderPaymentTransactionRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F40);
  }

  return result;
}

uint64_t sub_2386B71F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2386B727C()
{
  result = qword_27DF13F78;
  if (!qword_27DF13F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F80, &qword_23877F2C0);
    sub_2386B5C9C(&qword_27DF13F88, type metadata accessor for OrderPaymentStatusView, &unk_23877EE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F78);
  }

  return result;
}

unint64_t sub_2386B7338()
{
  result = qword_27DF13F90;
  if (!qword_27DF13F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E78, &qword_23877F1D8);
    sub_2386B7070();
    sub_2386B71F8(&qword_27DF13F70, &qword_27DF13F68, &qword_23877F2B8, sub_2386B727C);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F90);
  }

  return result;
}

uint64_t sub_2386B7430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_29()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = v7[5];
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v7[9];
  v11 = sub_238758090();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v7[10];
  v13 = sub_238758D30();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v7[13];
  v16 = sub_23875B290();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386B772C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2386AD804(a1, v6, a2);
}

uint64_t sub_2386B77C8(char *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v5(v6, &a1[*(v7 + 48)]);
}

unint64_t sub_2386B7828()
{
  result = qword_27DF13FE8;
  if (!qword_27DF13FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13FF0, &qword_23877F338);
    sub_2386B5C9C(&qword_27DF13FF8, type metadata accessor for OrderPaymentLineItemView, &unk_23877EDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13FE8);
  }

  return result;
}

unint64_t sub_2386B78E4()
{
  result = qword_27DF14050;
  if (!qword_27DF14050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13D60, &qword_23877EF60);
    sub_2386B79C8(&qword_27DF14058, &qword_27DF14060, &qword_23877F390, sub_2386B7A44);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14050);
  }

  return result;
}

uint64_t sub_2386B79C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_2386B7A44()
{
  result = qword_27DF14068;
  if (!qword_27DF14068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13D80, &qword_23877EF80);
    v1 = MEMORY[0x277CE1138];
    sub_23843A3E8(&qword_27DF13D90, &qword_27DF13D78, &qword_23877EF78, MEMORY[0x277CE1138]);
    sub_23843A3E8(&qword_27DF13D98, &qword_27DF13D68, &qword_23877EF68, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14068);
  }

  return result;
}

void sub_2386B7B2C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2385FEFE4(0, v2, 0);
    v29 = v30;
    v3 = v1 + 64;
    v4 = sub_23875F320();
    v5 = *(v1 + 36);
    sub_23875ED50();
    v27 = v1;
    v6 = 0;
    v23 = v1 + 72;
    v24 = v2;
    v25 = v5;
    v26 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v9 = (*(v1 + 48) + 16 * v4);
      v10 = v9[1];
      v28 = *v9;
      v11 = *(*(v1 + 56) + 8 * v4);

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v29;
      v14 = *(v29 + 16);
      v13 = *(v29 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2385FEFE4((v13 > 1), v14 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v14 + 1;
      v15 = (v12 + 24 * v14);
      v1 = v27;
      v15[4] = v28;
      v15[5] = v10;
      v15[6] = v11;
      v7 = 1 << *(v27 + 32);
      if (v4 >= v7)
      {
        goto LABEL_26;
      }

      v3 = v26;
      v16 = *(v26 + 8 * v8);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_27;
      }

      v29 = v12;
      LODWORD(v5) = v25;
      if (v25 != *(v27 + 36))
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_238434834(v4, v25, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_238434834(v4, v25, 0);
      }

LABEL_4:
      ++v6;
      v4 = v7;
      if (v6 == v24)
      {
        return;
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
  }
}

_OWORD *BankConnectReconfirmationView.init(showDeniedAccounts:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  *a2 = swift_getKeyPath(byte_23877F3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectReconfirmationView(0);
  v5 = a2 + *(v4 + 20);
  v18 = 0;
  sub_23875E1A0();
  v6 = *(&v14 + 1);
  *v5 = v14;
  *(v5 + 1) = v6;
  sub_238758890();
  v7 = sub_238758880();
  v8 = sub_238758CC0();
  v9 = sub_238758CB0();
  v16 = MEMORY[0x277CC7468];
  v17 = MEMORY[0x277CC7460];
  v15 = v8;
  *&v14 = v9;
  type metadata accessor for BankConnectReconfirmationViewModel(0);
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  v12 = sub_23875A6C0();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_23875BEC0();
  *(v10 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_showDeniedAccounts) = a1;
  *(v10 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_coreDataProvider) = v7;
  result = sub_2385169F0(&v14, (v10 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService));
  *(a2 + *(v4 + 24)) = v10;
  return result;
}

uint64_t BankConnectInstitutionListView.BankConnectInstitutionListItemView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v4;
  v19 = *(v2 + 32);
  *a2 = sub_23875CE60();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14090, &qword_23877F3F8);
  sub_2386B812C(v18, (a2 + *(v5 + 44)));
  v6 = sub_23875D780();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14098, &qword_23877F400) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v16 = sub_23875E2D0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A0, &qword_23877F408);
  *(a2 + *(result + 36)) = v16;
  return result;
}

double sub_2386B812C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14240, &qword_23877F8D8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  v34 = *a1;
  v35 = v8;
  v36 = *(a1 + 4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  MEMORY[0x23EE62DC0](&v30, v9);
  v10 = v30;
  v26 = v30;
  v11 = a1;
  v12 = *(&v30 + 1);
  v24 = *(&v30 + 1);

  KeyPath = swift_getKeyPath(byte_23877F8E0);
  v29 = 0;
  *&v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v14 = v34;
  v15 = v29;
  *v7 = sub_23875D030();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14248, &qword_23877F918);
  sub_2386B8428(v11, &v7[*(v16 + 44)]);
  v17 = v27;
  sub_23843981C(v7, v27, &qword_27DF14240, &qword_23877F8D8);
  *&v30 = v10;
  *(&v30 + 1) = v12;
  LOBYTE(v31) = 4;
  *(&v31 + 1) = 0x3FB999999999999ALL;
  *&v32 = KeyPath;
  BYTE8(v32) = v15;
  v33 = v14;
  v18 = v31;
  v19 = v25;
  *v25 = v30;
  v19[1] = v18;
  v20 = v33;
  v19[2] = v32;
  v19[3] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14250, &qword_23877F920);
  sub_23843981C(v17, v19 + *(v21 + 48), &qword_27DF14240, &qword_23877F8D8);
  v22 = v19 + *(v21 + 64);
  *v22 = 0;
  v22[8] = 1;
  sub_238558A88(&v30, &v34);
  sub_238439884(v7, &qword_27DF14240, &qword_23877F8D8);
  sub_238439884(v17, &qword_27DF14240, &qword_23877F8D8);
  *&v34 = v26;
  *(&v34 + 1) = v24;
  LOBYTE(v35) = 4;
  *(&v35 + 1) = 0x3FB999999999999ALL;
  v36 = KeyPath;
  v37 = v15;
  v38 = v14;
  sub_23858D0F0(&v34);

  return result;
}

double sub_2386B8428@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14258, &unk_23877F928);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_238758680();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[1];
  v48 = *a1;
  v49 = v12;
  v50 = *(a1 + 4);
  v13 = a1[1];
  v45 = *a1;
  v46 = v13;
  v47 = *(a1 + 4);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  MEMORY[0x23EE62DC0](&v43);

  if (*(v44 + 16))
  {
    (*(v9 + 16))(v11, v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v15 = sub_2387585F0();
    v17 = v16;
    v18 = (*(v9 + 8))(v11, v8);
  }

  else
  {

    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *&v45 = v15;
  *(&v45 + 1) = v17;
  sub_2384397A8(v18, v19, v20);
  v21 = sub_23875DAA0();
  v23 = v22;
  v37 = v24;
  v38 = v25;
  v45 = v48;
  v46 = v49;
  v47 = v50;
  MEMORY[0x23EE62DC0](&v43, v14);

  v43 = v44;
  v26 = swift_allocObject();
  v27 = a1[1];
  *(v26 + 16) = *a1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(a1 + 4);
  sub_2386C1B54(a1, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  sub_23875BCB0();
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0, MEMORY[0x277D83980]);
  sub_2386BD564(&qword_27DF14260, MEMORY[0x277CC6F70], MEMORY[0x277CC6F88]);
  v36 = v7;
  sub_23875E380();
  v29 = v40;
  v28 = v41;
  v30 = *(v40 + 16);
  v31 = v42;
  v30(v41, v7, v42);
  *a2 = v21;
  *(a2 + 8) = v23;
  v32 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v38;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14268, &qword_23877F938);
  v30((a2 + *(v33 + 48)), v28, v31);
  sub_23843980C(v21, v23, v32);
  v34 = *(v29 + 8);

  v34(v36, v31);
  v34(v28, v31);
  sub_2384397FC(v21, v23, v32);

  return result;
}

void sub_2386B88FC(uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_2386B8AAC();
  sub_2384397A8(v4, v5, v6);
  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D440();
  v12 = sub_23875DA20();
  v14 = v13;
  v16 = v15;
  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D7F0();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v12, v14, v16 & 1);

  *a3 = v17;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21 & 1;
  *(a3 + 24) = v23;
}

uint64_t sub_2386B8AAC()
{
  v0 = sub_238757FC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238763B60;
  v5 = sub_2387585B0();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_238448C58(v5, v6, v9);
  *(v4 + 64) = v10;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_2387585C0();
  v11 = sub_238757FB0();
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  *(v4 + 96) = v8;
  *(v4 + 104) = v10;
  *(v4 + 72) = v11;
  *(v4 + 80) = v13;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  sub_23875EA80();
  v19 = sub_23875EAA0();

  return v19;
}

uint64_t sub_2386B8CFC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v4;
  v19 = *(v2 + 32);
  *a2 = sub_23875CE60();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14090, &qword_23877F3F8);
  sub_2386B812C(v18, (a2 + *(v5 + 44)));
  v6 = sub_23875D780();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14098, &qword_23877F400) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v16 = sub_23875E2D0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A0, &qword_23877F408);
  *(a2 + *(result + 36)) = v16;
  return result;
}

uint64_t BankConnectInstitutionListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = sub_23875D200();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A8, &qword_23877F410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v10 = v1[1];
  v14 = *v1;
  v15[0] = v10;
  *(v15 + 9) = *(v1 + 25);
  sub_23875D760();
  v13[4] = &v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140B0, &qword_23877F418);
  sub_23843A3E8(&qword_27DF140B8, &qword_27DF140B0, &qword_23877F418, MEMORY[0x277CE14C0]);
  sub_23875C410();
  sub_23875D1F0();
  v11 = sub_23875D760();
  sub_23875D750();
  sub_23875D750();
  if (sub_23875D750() != v11)
  {
    sub_23875D750();
  }

  sub_23843A3E8(&qword_27DF140C0, &qword_27DF140A8, &qword_23877F410, MEMORY[0x277CDD6E0]);
  sub_23875DD90();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_2386B90D0@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141A0, &qword_23877F7F0);
  MEMORY[0x28223BE20](v42);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v5;
  v6 = type metadata accessor for ContinuousGroupBoxStyle(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141A8, &qword_23877F7F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  MEMORY[0x28223BE20](v39);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v38 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B8, &qword_23877F808);
  sub_2386C1754();
  sub_23875E470();
  *v8 = swift_getKeyPath(byte_23877F818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v6 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF141D8, &qword_27DF141A8, &qword_23877F7F8, MEMORY[0x277CDF118]);
  sub_2386BD564(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v8);
  (*(v10 + 8))(v12, v9);
  v18 = sub_23875D770();
  sub_23875C3D0();
  v19 = &v16[*(v39 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  *(v24 + 41) = *(a1 + 25);
  MEMORY[0x28223BE20](v24);
  *(&v38 - 2) = a1;
  sub_2386C1814(a1, v46);
  v26 = v43;
  sub_23875E200();
  v27 = sub_23875D7D0();
  sub_23875C3D0();
  v28 = v41;
  v29 = v26 + *(v42 + 36);
  *v29 = v27;
  *(v29 + 8) = v30;
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v33;
  *(v29 + 40) = 0;
  sub_23842BD2C(v16, v28);
  v34 = v44;
  sub_23843981C(v26, v44, &qword_27DF141A0, &qword_23877F7F0);
  v35 = v45;
  sub_23842BD2C(v28, v45);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E0, &unk_23877F850);
  sub_23843981C(v34, v35 + *(v36 + 48), &qword_27DF141A0, &qword_23877F7F0);
  sub_238439884(v26, &qword_27DF141A0, &qword_23877F7F0);
  sub_23842BD9C(v16);
  sub_238439884(v34, &qword_27DF141A0, &qword_23877F7F0);
  sub_23842BD9C(v28);

  return result;
}

double sub_2386B964C(__int128 *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  v10 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  sub_23875E310();
  v2 = v11;
  v3 = v12;
  v4 = v13;
  KeyPath = swift_getKeyPath(byte_23877F868, v9, v10);
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  *(v6 + 41) = *(a1 + 25);
  sub_2386C1814(a1, &v9);
  sub_2386B9B68(v2, v3, v4, KeyPath, sub_2386C18A4, v6);

  return result;
}

double sub_2386B97A0@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = a1[1];
  v49 = *a1;
  v50 = v15;
  v51 = *(a1 + 4);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  sub_23875E310();
  v17 = v44;
  v43 = v45;
  v41 = v47;
  v39 = v46;
  v40 = v48;
  v18 = a1[1];
  v49 = *a1;
  v50 = v18;
  v51 = *(a1 + 4);
  MEMORY[0x23EE62DC0](&v44, v16);
  v20 = v44;
  v19 = v45;

  v49 = *a2;
  *&v50 = *(a2 + 2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](&v44, v21);
  v22 = *(v44 + 16);
  if (!v22)
  {

LABEL_9:
    sub_23875E350();
    v30 = sub_23875D780();
    v31 = &v8[*(v6 + 36)];
    *v31 = v30;
    *(v31 + 8) = xmmword_23877F3A0;
    *(v31 + 24) = xmmword_23877F3B0;
    v31[40] = 0;
    sub_2384396E4(v8, v14, &qword_27DF09510, &qword_2387637D0);
    v29 = 0;
    goto LABEL_11;
  }

  v38 = v17;
  v23 = v6;
  v24 = v44 + 24 * v22;
  v26 = *(v24 + 8);
  v25 = *(v24 + 16);

  if (v20 == v26 && v19 == v25)
  {

    v29 = 1;
    v6 = v23;
    v17 = v38;
    goto LABEL_11;
  }

  v28 = sub_23875F630();

  v6 = v23;
  v17 = v38;
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  v29 = 1;
LABEL_11:
  (*(v42 + 56))(v14, v29, 1, v6);
  sub_23843981C(v14, v11, &qword_27DF09528, &qword_238765CE0);
  v32 = v43;
  *a3 = v17;
  a3[1] = v32;
  v33 = v40;
  v34 = v41;
  a3[2] = v39;
  a3[3] = v34;
  a3[4] = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14238, &qword_23877F8D0);
  sub_23843981C(v11, a3 + *(v35 + 48), &qword_27DF09528, &qword_238765CE0);

  sub_238439884(v14, &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v11, &qword_27DF09528, &qword_238765CE0);

  return result;
}

uint64_t sub_2386B9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](v19, v12);
  v13 = *(v19[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v19[0] = 0;
  v19[1] = v13;
  v19[2] = sub_2386C18DC;
  v19[3] = v14;
  v18[0] = MEMORY[0x277D837D0];
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141D0, &qword_23877F810);
  v18[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141F0, &qword_23877F8A8);
  v18[3] = MEMORY[0x277D837E0];
  v18[4] = sub_23843A3E8(&qword_27DF141C8, &qword_27DF141D0, &qword_23877F810, MEMORY[0x277CE14C0]);
  v18[5] = sub_23843A3E8(&qword_27DF141F8, &qword_27DF141F0, &qword_23877F8A8, MEMORY[0x277D83960]);
  v18[6] = sub_23843A3E8(&qword_27DF14200, &qword_27DF141F0, &qword_23877F8A8, MEMORY[0x277D83980]);
  v18[7] = MEMORY[0x277D83B98];
  swift_getKeyPath(byte_23877F888, v18);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2386C1914;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14208, &qword_23877F8B0);
  sub_2386C1978();
  return sub_23875E370();
}

double sub_2386B9DF0(uint64_t a1)
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

void sub_2386B9EC0(uint64_t a1@<X8>)
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
  sub_23875D970();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v10, v12, v4 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
}

double sub_2386BA0CC()
{
  swift_getKeyPath(byte_23877F728);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  return result;
}

double sub_2386BA170@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_23877F728);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  *a2 = *(v3 + 16);

  return result;
}

double sub_2386BA21C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_23877F728);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE80();

  return result;
}

uint64_t sub_2386BA2E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aX_23);
  v5 = v1;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  return sub_23843981C(v5 + v3, a1, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA3C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_23);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  return sub_23843981C(v3 + v4, a2, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23843981C(a1, &v6 - v3, &qword_27DF10038, &qword_238774BF0);
  return sub_2386BA544(v4);
}

uint64_t sub_2386BA544(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v1 + v6, v5, &qword_27DF10038, &qword_238774BF0);
  v7 = sub_2386C0AC8(v5, a1);
  sub_238439884(v5, &qword_27DF10038, &qword_238774BF0);
  if (v7)
  {
    KeyPath = swift_getKeyPath(aX_23);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
    sub_23875BE80();
  }

  else
  {
    sub_23843981C(a1, v5, &qword_27DF10038, &qword_238774BF0);
    swift_beginAccess();
    sub_2385D4E00(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_238439884(a1, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA74C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_2386C108C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2386BA7B8()
{
  v1[5] = v0;
  v2 = sub_23875C1E0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_23875A9F0();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_238758680();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_23875BC40();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v6 = sub_23875AAF0();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = sub_23875ED50();
  v1[22] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v1[23] = v8;
  v1[24] = v7;

  return MEMORY[0x2822009F8](sub_2386BAA20, v8, v7);
}

uint64_t sub_2386BAA20(uint64_t a1)
{
  v58 = v1;
  v2 = v1[5];
  sub_23875AAE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14160, &qword_23877F750);
  v3 = sub_23875A8C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v7 + v6, *MEMORY[0x277CC8000], v3);
  v9(v8 + v5, *MEMORY[0x277CC8008], v3);
  v9(v8 + 2 * v5, *MEMORY[0x277CC8010], v3);
  if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_showDeniedAccounts) == 1)
  {
    sub_23875A8D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14168, &qword_23877F758);
    v10 = sub_23875A8E0();
    v11 = *(v10 - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_238763B60;
    v15 = v14 + v13;
    v16 = *(v11 + 104);
    v16(v14 + v13, *MEMORY[0x277CC8020], v10);
    v16(v15 + v12, *MEMORY[0x277CC8028], v10);
  }

  v1[2] = *(v1[5] + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_coreDataProvider);
  sub_238758890();
  v17 = sub_238758A30();
  sub_23875BBF0();
  v18 = MEMORY[0x277D84F90];
  v19 = sub_23875AAD0();
  (*(v1[16] + 8))(v1[17], v1[15]);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v1[13];
    v22 = v1[10];
    v57 = v18;
    sub_2385FF024(0, v20, 0);
    v23 = v18;
    v24 = *(v21 + 16);
    v21 += 16;
    v53 = v24;
    v52 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v25 = v19 + v52;
    v50 = (v21 + 16);
    v54 = v1;
    v51 = *(v21 + 56);
    do
    {
      v56 = v23;
      v53(v1[14], v25, v1[12]);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = v1[14];
      v28 = v1[11];
      v27 = v1[12];
      v29 = v1[9];
      sub_238758530();
      v30 = sub_23875A9B0();
      v55 = v31;
      (*(v22 + 8))(v28, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF38, &unk_238767550);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2387632F0;
      (*v50)(v32 + v52, v26, v27);

      v23 = v56;
      v57 = v56;
      v34 = *(v56 + 16);
      v33 = *(v56 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2385FF024((v33 > 1), v34 + 1, 1);
        v23 = v57;
      }

      *(v23 + 16) = v34 + 1;
      v35 = (v23 + 24 * v34);
      v1 = v54;
      v35[4] = v30;
      v35[5] = v55;
      v35[6] = v32;
      v25 += v51;
      --v20;
    }

    while (v20);

    if (*(v23 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDE8, &qword_23876E7F0);
      v38 = sub_23875F570();
      goto LABEL_19;
    }
  }

  v38 = MEMORY[0x277D84F98];
LABEL_19:
  v57 = v38;
  sub_2386C0DE8(v23, 1, &v57);
  v39 = v1[5];

  sub_2386B7B2C(v57);
  v41 = v40;

  swift_getKeyPath(byte_23877F728);
  v42 = swift_task_alloc();
  *(v42 + 16) = v39;
  *(v42 + 24) = v41;
  v1[3] = v39;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE80();

  swift_getKeyPath(byte_23877F728);
  v1[4] = v39;
  sub_23875BE90();

  v43 = *(v39 + 16);
  if (v43[2])
  {
    v44 = v43[4];
    v45 = v43[5];
    v1[25] = v45;
    v1[26] = v43[6];

    v46 = swift_task_alloc();
    v1[27] = v46;
    *v46 = v1;
    v46[1] = sub_2386BB38C;

    return sub_2386BB5AC(v44, v45);
  }

  else
  {
    v47 = v1[20];
    v48 = v1[18];
    v49 = *(v1[19] + 8);

    v49(v47, v48);

    v36 = v1[1];

    return v36();
  }
}

uint64_t sub_2386BB38C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_2386BB4EC, v3, v2);
}

uint64_t sub_2386BB4EC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2386BB5AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23875C1E0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v3[8] = swift_task_alloc();
  sub_23875ED50();
  v3[9] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_2386BB6DC, v6, v5);
}

uint64_t sub_2386BB6DC()
{
  v1 = (v0[4] + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2386BB7AC;
  v5 = v0[8];
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x28211A940](v5, v6, v7, v2, v3);
}

uint64_t sub_2386BB7AC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2386BB964;
  }

  else
  {
    v5 = sub_2386BB8E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2386BB8E8()
{
  v1 = *(v0 + 64);

  sub_2386BA544(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2386BB964()
{
  v1 = v0[13];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to load terms and conditions with error: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2386BBAFC(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 280) = a1;
  v3 = sub_23875C1E0();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_23875BC40();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  v5 = sub_23875A8E0();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  *(v2 + 152) = swift_task_alloc();
  v6 = sub_23875A9F0();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v7 = sub_238758680();
  *(v2 + 200) = v7;
  *(v2 + 208) = *(v7 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = sub_23875ED50();
  *(v2 + 232) = sub_23875ED40();
  v9 = sub_23875ECE0();
  *(v2 + 240) = v9;
  *(v2 + 248) = v8;

  return MEMORY[0x2822009F8](sub_2386BBDB8, v9, v8);
}

uint64_t sub_2386BBDB8()
{
  v1 = *(v0 + 72);
  sub_238663374(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  swift_getKeyPath(byte_23877F728);
  *(v0 + 64) = v1;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  v4 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v5 = *(*(v1 + 16) + 16);

  v43 = v5;
  if (v5)
  {
    v39 = v3;
    v40 = v2;
    v11 = 0;
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v41 = isCurrentExecutor;
    v42 = isCurrentExecutor + 32;
    v14 = (v13 + 32);
    v47 = (v13 + 56);
    v45 = v13;
    v46 = (v13 + 48);
    while (v11 < *(isCurrentExecutor + 16))
    {
      v15 = *(v42 + 24 * v11 + 16);

      sub_23875ED40();
      sub_23875ECE0();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v44 = v11;
      v49 = *(v15 + 16);
      if (v49)
      {
        v16 = 0;
        v50 = MEMORY[0x277D84F90];
        v48 = v15;
        while (v16 < *(v15 + 16))
        {
          v17 = *(v0 + 216);
          v18 = *(v0 + 200);
          v19 = v14;
          v20 = *(v0 + 184);
          v21 = *(v0 + 152);
          v22 = *(v0 + 160);
          (*(v12 + 16))(v17, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v18);
          sub_238758530();
          v23 = *v19;
          v24 = v20;
          v14 = v19;
          (*v19)(v21, v24, v22);
          (*v47)(v21, 0, 1, v22);
          (*(v12 + 8))(v17, v18);
          if ((*v46)(v21, 1, v22) == 1)
          {
            isCurrentExecutor = sub_238439884(*(v0 + 152), &qword_27DF0D390, &unk_238763350);
          }

          else
          {
            v25 = *(v0 + 192);
            v26 = *(v0 + 176);
            v27 = *(v0 + 160);
            v23(v25, *(v0 + 152), v27);
            v23(v26, v25, v27);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_238498C90(0, v50[2] + 1, 1, v50);
            }

            v29 = v50[2];
            v28 = v50[3];
            if (v29 >= v28 >> 1)
            {
              v50 = sub_238498C90((v28 > 1), v29 + 1, 1, v50);
            }

            v30 = *(v0 + 176);
            v31 = *(v0 + 160);
            v50[2] = v29 + 1;
            isCurrentExecutor = (v23)(v50 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29, v30, v31);
          }

          ++v16;
          v15 = v48;
          if (v49 == v16)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      v50 = MEMORY[0x277D84F90];
LABEL_4:
      v11 = v44 + 1;

      sub_238569B50(v50);
      isCurrentExecutor = v41;
      if (v44 + 1 == v43)
      {
        v4 = v51;
        v3 = v39;
        v2 = v40;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    *(v0 + 256) = v4;
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    v34 = *(v0 + 128);
    v35 = *(v0 + 280);

    v36 = MEMORY[0x277CC8020];
    if (!v35)
    {
      v36 = MEMORY[0x277CC8018];
    }

    (*(v33 + 104))(v32, *v36, v34);
    sub_23875BBF0();
    v37 = swift_task_alloc();
    *(v0 + 264) = v37;
    *v37 = v0;
    v37[1] = sub_2386BC2A4;
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    isCurrentExecutor = v4;
    v9 = v2;
    v10 = v3;
  }

  return MEMORY[0x28211AA58](isCurrentExecutor, v7, v8, v9, v10);
}

uint64_t sub_2386BC2A4()
{
  v2 = *v1;
  v12 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  *(*v1 + 272) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v12, v4);
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);
  if (v0)
  {
    v10 = sub_2386BC598;
  }

  else
  {
    v10 = sub_2386BC4C4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2386BC4C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2386BC598()
{
  v1 = v0[34];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to update accounts with error: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2386BC784()
{

  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions, &qword_27DF10038, &qword_238774BF0);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService));
  v1 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2386BC868@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23843981C(v2, &v14 - v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double BankConnectReconfirmationView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v2 = swift_allocBox();
  type metadata accessor for BankConnectReconfirmationView(0);
  type metadata accessor for BankConnectReconfirmationViewModel(0);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);

  sub_23875E420();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140D8, &qword_23877F428);
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E90, &qword_23877F430);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v49 = v1;
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140E0, &qword_23877F438);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140E8, &qword_23877F440);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140F0, &qword_23877F448);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140F8, &unk_23877F450);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
  v12 = sub_23843A3E8(&qword_27DF14100, &qword_27DF140F8, &unk_23877F450, MEMORY[0x277CE1198]);
  v13 = sub_2385D53A8();
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14108, &qword_23877F460);
  v16 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460, MEMORY[0x277CDD7A8]);
  v52 = v15;
  v53 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v52 = v8;
  v53 = v9;
  v54 = OpaqueTypeConformance2;
  v55 = v17;
  swift_getOpaqueTypeConformance2();
  v43 = v7;
  sub_23875C790();
  sub_23875ED50();

  v18 = sub_23875ED40();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v48 = v2;
  v19[4] = v2;
  v21 = sub_23875ED80();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v37 - v24;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v40 = sub_23875C830();
    v41 = &v37;
    v39 = *(v40 - 8);
    MEMORY[0x28223BE20](v40);
    v38 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_23875F470();

    v52 = 0xD00000000000003DLL;
    v53 = 0x8000000238790040;
    v51 = 253;
    v27 = sub_23875F600();
    MEMORY[0x23EE63650](v27);

    v29 = MEMORY[0x28223BE20](v28);
    (*(v22 + 16))(&v37 - v24, &v37 - v24, v21, v29);
    v30 = v38;
    sub_23875C820();
    (*(v22 + 8))(v25, v21);
    v31 = v46;
    (*(v44 + 32))(v46, v43, v45);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E98, &unk_238761D20);
    (*(v39 + 32))(&v31[*(v32 + 36)], v30, v40);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA0, &qword_23877F480);
    v31 = v46;
    v34 = &v46[*(v33 + 36)];
    v35 = sub_23875C6E0();
    (*(v22 + 32))(&v34[*(v35 + 20)], v25, v21);
    *v34 = &unk_23877F470;
    *(v34 + 1) = v19;
    (*(v44 + 32))(v31, v43, v45);
  }

  (*(v47 + 32))(v42, v31, v3);

  return result;
}

double sub_2386BD148@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140F8, &unk_23877F450);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140E8, &qword_23877F440);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  sub_23875ED50();
  v24[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875D020();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14180, &qword_23877F790);
  sub_2386BD5AC(a1, a2, &v7[*(v11 + 44)]);
  v12 = (a1 + *(type metadata accessor for BankConnectReconfirmationView(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 1);
  v32 = v13;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v16 = sub_23843A3E8(&qword_27DF14100, &qword_27DF140F8, &unk_23877F450, MEMORY[0x277CE1198]);
  v17 = sub_2385D53A8();
  v24[1] = a1;
  v18 = v17;
  sub_23875DED0();

  v19 = sub_238439884(v7, &qword_27DF140F8, &unk_23877F450);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140F0, &qword_23877F448);
  v28 = v5;
  v29 = v15;
  v30 = v16;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14108, &qword_23877F460);
  v21 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460, MEMORY[0x277CDD7A8]);
  v28 = v20;
  v29 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_23875DEF0();
  (*(v25 + 8))(v10, v22);

  return result;
}

uint64_t sub_2386BD564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2386BD5AC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a2;
  v67 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14188, &unk_23877F798);
  MEMORY[0x28223BE20](v66);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386BDCD0(&v110);
  v89 = v120;
  v90 = v121;
  v91 = v122;
  v85 = v116;
  v86 = v117;
  v87 = v118;
  v88 = v119;
  v81 = v112;
  v82 = v113;
  v83 = v114;
  v84 = v115;
  v79 = v110;
  v80 = v111;
  v77 = sub_23875D770();
  sub_23875C3D0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v92[0]) = 0;
  v76 = sub_23875D7A0();
  sub_23875C3D0();
  v74 = v23;
  v75 = v22;
  v72 = v25;
  v73 = v24;
  v26 = swift_projectBox();
  (*(v8 + 16))(v10, v26, v7);
  sub_23875E410();
  v27 = a1;
  v28 = *(v8 + 8);
  v28(v10, v7);
  swift_getKeyPath(byte_23877F728);
  sub_23875E430();

  v28(v13, v7);
  v71 = *(&v110 + 1);
  v29 = v110;
  v65 = v111;
  v30 = v27 + *(type metadata accessor for BankConnectReconfirmationView(0) + 20);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v98) = v31;
  v99 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v64 = *(&v92[0] + 1);
  v70 = *&v92[0];
  v63 = LOBYTE(v92[1]);
  v62 = sub_23875D770();
  v33 = sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v61 = v40;
  LOBYTE(v110) = 0;
  MEMORY[0x28223BE20](v33);
  *(&v60 - 2) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10260, &qword_2387751A0);
  sub_23843A3E8(&qword_27DF10268, &qword_27DF10260, &qword_2387751A0, MEMORY[0x277CE1198]);
  v41 = v78;
  sub_23875D1D0();
  v42 = sub_23875D770();
  sub_23875C3D0();
  v43 = v41 + *(v66 + 36);
  *v43 = v42;
  *(v43 + 8) = v44;
  *(v43 + 16) = v45;
  *(v43 + 24) = v46;
  *(v43 + 32) = v47;
  *(v43 + 40) = 0;
  v48 = v68;
  sub_23843981C(v41, v68, &qword_27DF14188, &unk_23877F798);
  v92[10] = v89;
  v92[11] = v90;
  *&v92[12] = v91;
  v92[6] = v85;
  v92[7] = v86;
  v92[8] = v87;
  v92[9] = v88;
  v92[2] = v81;
  v92[3] = v82;
  v92[4] = v83;
  v92[5] = v84;
  v92[0] = v79;
  v92[1] = v80;
  BYTE8(v92[12]) = v77;
  *&v92[13] = v15;
  *(&v92[13] + 1) = v17;
  *&v92[14] = v19;
  v49 = v21;
  *(&v92[14] + 1) = v21;
  LOBYTE(v92[15]) = 0;
  BYTE8(v92[15]) = v76;
  *&v92[16] = v75;
  *(&v92[16] + 1) = v74;
  *&v92[17] = v73;
  *(&v92[17] + 1) = v72;
  LOBYTE(v92[18]) = 0;
  v50 = v67;
  memcpy(v67, v92, 0x121uLL);
  *&v93 = v29;
  *(&v93 + 1) = v71;
  v52 = v64;
  v51 = v65;
  *&v94 = v65;
  *(&v94 + 1) = v70;
  *&v95 = v64;
  v53 = v62;
  LOBYTE(v28) = v63;
  BYTE8(v95) = v63;
  LOBYTE(v96) = v62;
  *(&v96 + 1) = v35;
  v54 = v37;
  *&v97[0] = v37;
  v55 = v39;
  *(&v97[0] + 1) = v39;
  v56 = v61;
  *&v97[1] = v61;
  BYTE8(v97[1]) = 0;
  v57 = v96;
  *(v50 + 328) = v95;
  *(v50 + 344) = v57;
  *(v50 + 360) = v97[0];
  *(v50 + 369) = *(v97 + 9);
  v58 = v94;
  *(v50 + 296) = v93;
  *(v50 + 312) = v58;
  *(v50 + 49) = 0;
  v50[400] = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14190, &qword_23877F7A8);
  sub_23843981C(v48, &v50[*(v59 + 80)], &qword_27DF14188, &unk_23877F798);
  sub_23843981C(v92, &v110, &qword_27DF0B3B8, &qword_23877F7B0);
  sub_23843981C(&v93, &v110, &qword_27DF14198, &unk_23877F7B8);
  sub_238439884(v78, &qword_27DF14188, &unk_23877F798);
  sub_238439884(v48, &qword_27DF14188, &unk_23877F798);
  v98 = v29;
  v99 = v71;
  v100 = v51;
  v101 = v70;
  v102 = v52;
  v103 = v28;
  v104 = v53;
  v105 = v35;
  v106 = v54;
  v107 = v55;
  v108 = v56;
  v109 = 0;
  sub_238439884(&v98, &qword_27DF14198, &unk_23877F7B8);
  v120 = v89;
  v121 = v90;
  v122 = v91;
  v116 = v85;
  v117 = v86;
  v118 = v87;
  v119 = v88;
  v112 = v81;
  v113 = v82;
  v114 = v83;
  v115 = v84;
  v110 = v79;
  v111 = v80;
  v123 = v77;
  v124 = v15;
  v125 = v17;
  v126 = v19;
  v127 = v49;
  v128 = 0;
  v129 = v76;
  v130 = v75;
  v131 = v74;
  v132 = v73;
  v133 = v72;
  v134 = 0;
  sub_238439884(&v110, &qword_27DF0B3B8, &qword_23877F7B0);
}

double sub_2386BDCD0@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_23875D030();
  v20 = 0;
  sub_2386BF668(&v11);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  sub_23843981C(&v21, v18, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v25, &qword_27DF0B360, &qword_23877AE40);
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  v4 = v20;
  sub_23875E4B0();
  sub_23875C9C0();
  v5 = *v19;
  *(a2 + 33) = *&v19[16];
  v6 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v6;
  *(a2 + 17) = v5;
  v7 = v13;
  *(a2 + 136) = v14;
  v8 = v16;
  *(a2 + 152) = v15;
  *(a2 + 168) = v8;
  *(a2 + 184) = v17;
  result = *&v11;
  v10 = v12;
  *(a2 + 88) = v11;
  *(a2 + 104) = v10;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 80) = *&v19[63];
  *(a2 + 120) = v7;
  return result;
}

double sub_2386BDE20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10278, &qword_2387751B0);
  sub_2386BDEF4(a1, a2 + *(v4 + 44));

  return result;
}

double sub_2386BDEF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  MEMORY[0x28223BE20](v47);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = (&v42 - v5);
  v6 = type metadata accessor for BankConnectReconfirmationView(0);
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v7;
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - v12);
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  v19 = sub_23875EA80();
  v21 = v20;

  sub_2386C1114(a1, v8);
  v43 = a1;
  v22 = v8;
  v23 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v24 = swift_allocObject();
  v44 = type metadata accessor for BankConnectReconfirmationView;
  sub_2386C11E0(v22, v24 + v23, type metadata accessor for BankConnectReconfirmationView);
  sub_23875D610();
  *v13 = v19;
  v13[1] = v21;
  *(v13 + *(v9 + 40)) = 0;
  v25 = (v13 + *(v9 + 44));
  *v25 = sub_2386C1380;
  v25[1] = v24;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v14 localizedStringForKey:v26 value:v27 table:v28];

  v30 = sub_23875EA80();
  v32 = v31;

  v33 = v47;
  v34 = v45;
  sub_23875CFC0();
  sub_2386C1114(v43, v22);
  v35 = swift_allocObject();
  sub_2386C11E0(v22, v35 + v23, v44);
  *v34 = v30;
  v34[1] = v32;
  *(v34 + *(v33 + 40)) = 0;
  v36 = (v34 + *(v33 + 44));
  *v36 = sub_2386C1414;
  v36[1] = v35;
  v37 = v48;
  sub_23843981C(v13, v48, &qword_27DF0AAD8, &qword_23876B8C0);
  v38 = v50;
  sub_23843981C(v34, v50, &qword_27DF09580, &qword_238763900);
  v39 = v49;
  sub_23843981C(v37, v49, &qword_27DF0AAD8, &qword_23876B8C0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10280, &qword_2387751B8);
  sub_23843981C(v38, v39 + *(v40 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v34, &qword_27DF09580, &qword_238763900);
  sub_238439884(v13, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v38, &qword_27DF09580, &qword_238763900);
  sub_238439884(v37, &qword_27DF0AAD8, &qword_23876B8C0);

  return result;
}

double sub_2386BE45C@<D0>(uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = swift_projectBox();
  (*(v9 + 16))(v11, v15, v8);
  sub_23875E400();
  (*(v9 + 8))(v11, v8);
  v16 = v30;
  swift_getKeyPath(aX_23);
  v30 = v16;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel, &unk_23877F700);
  sub_23875BE90();

  v17 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v16 + v17, v7, &qword_27DF10038, &qword_238774BF0);

  v18 = sub_23875A6C0();
  if ((*(*(v18 - 8) + 48))(v7, 1, v18))
  {
    sub_238439884(v7, &qword_27DF10038, &qword_238774BF0);
    v19 = 1;
    v20 = v28;
  }

  else
  {
    v21 = sub_23875A6B0();
    v23 = v22;
    sub_238439884(v7, &qword_27DF10038, &qword_238774BF0);
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    *v4 = sub_2386C11D8;
    *(v4 + 1) = v24;
    v4[16] = 0;
    v20 = v28;
    v25 = *(v28 + 20);
    *&v4[v25] = swift_getKeyPath(byte_23877F3C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
    swift_storeEnumTagMultiPayload();
    sub_2386C11E0(v4, v14, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v19 = 0;
  }

  (*(v2 + 56))(v14, v19, 1, v20);
  sub_2384396E4(v14, v29, &qword_27DF10210, &qword_238775140);

  return result;
}

uint64_t sub_2386BE8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8];
  v10 = sub_238758CC0();
  v11 = sub_238758CB0();
  v19 = v10;
  v20 = MEMORY[0x277CC7460];
  *&v18 = v11;
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v12 = swift_allocObject();
  v17[7] = 0;
  sub_23875C290();
  v13 = sub_23875B940();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_23843981C(v9, v6, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v9, &qword_27DF0D040, &qword_2387676A0);
  v14 = (v12 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  *v14 = a1;
  v14[1] = a2;
  *(v12 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable) = 0;
  *(v12 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType) = 1;
  sub_2384347C0(&v18, v12 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService);
  v15 = (v12 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  *v15 = nullsub_1;
  v15[1] = 0;

  return v12;
}

double sub_2386BEB10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_23875D2A0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14108, &qword_23877F460);
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
  sub_23875C4D0();
  v9 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v7, v4, v9);
  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_2386BED84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for BankConnectReconfirmationView(0);
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

  sub_2386C1114(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2386C11E0(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BankConnectReconfirmationView);
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

double sub_2386BF090()
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

  sub_2386BC868(v3);
  sub_23875C5F0();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_2386BF1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_23875ED50();
  v3[7] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x2822009F8](sub_2386BF2D4, v6, v5);
}

uint64_t sub_2386BF2D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_projectBox();
  (*(v2 + 16))(v1, v4, v3);
  sub_23875E400();
  (*(v2 + 8))(v1, v3);
  v0[10] = v0[2];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2386BF3C0;

  return sub_2386BA7B8();
}

uint64_t sub_2386BF3C0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2386BF504, v3, v2);
}

uint64_t sub_2386BF504()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2386BF56C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238449A7C;

  return sub_2386BF1D4(v2, v3, v4);
}

double sub_2386BF668@<D0>(uint64_t a1@<X8>)
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
  v14 = v13;
  v16 = v15;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v2 localizedStringForKey:v17 value:v18 table:v19];

  sub_23875EA80();
  v21 = sub_23875DAA0();
  v23 = v22;
  LOBYTE(v19) = v24 & 1;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24 & 1;
  *(a1 + 56) = v25;
  sub_23843980C(v10, v12, v14 & 1);

  sub_23843980C(v21, v23, v19);

  sub_2384397FC(v21, v23, v19);

  sub_2384397FC(v10, v12, v14 & 1);

  return result;
}

uint64_t sub_2386BF954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2386BF9EC, v6, v5);
}

uint64_t sub_2386BF9EC()
{
  type metadata accessor for BankConnectReconfirmationView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2386BFA90;

  return sub_2386BBAFC(1);
}

uint64_t sub_2386BFA90()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2386BFBB0, v3, v2);
}

uint64_t sub_2386BFBB0()
{
  v1 = *(v0 + 16);

  sub_2386C003C(v1);
  v2 = *(v0 + 8);

  return v2();
}

double sub_2386BFC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BankConnectReconfirmationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2386C1114(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v12 = sub_23875ED40();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_2386C11E0(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for BankConnectReconfirmationView);
  sub_2386C3BA4(0, 0, v10, a3, v14);

  return result;
}

uint64_t sub_2386BFDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2386BFE78, v6, v5);
}

uint64_t sub_2386BFE78()
{
  type metadata accessor for BankConnectReconfirmationView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2386BFF1C;

  return sub_2386BBAFC(0);
}

uint64_t sub_2386BFF1C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2386C1B8C, v3, v2);
}

uint64_t sub_2386C003C(uint64_t a1)
{
  v15 = sub_23875CDB0();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_23875C600();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(a1, v7, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_23875EFF0();
    v12 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_23875C5F0();
  return (*(v9 + 8))(v11, v8);
}

void sub_2386C02F4(uint64_t a1)
{
  sub_2386C0510(319, &qword_27DF10050, MEMORY[0x277CC7F18], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23875BED0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386C0444(uint64_t a1)
{
  sub_2386C0510(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2384B49C4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BankConnectReconfirmationViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386C0510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386C0574()
{
  result = qword_27DF14138;
  if (!qword_27DF14138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140A0, &qword_23877F408);
    sub_2386C062C();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14138);
  }

  return result;
}

unint64_t sub_2386C062C()
{
  result = qword_27DF14140;
  if (!qword_27DF14140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14098, &qword_23877F400);
    sub_23843A3E8(&qword_27DF14148, &qword_27DF14150, &unk_23877F6F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14140);
  }

  return result;
}

void *sub_2386C06E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  result = MEMORY[0x23EE62DC0](v8, v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8[0] + 16) > a1)
  {

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

double sub_2386C07BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF78, &qword_23877F8C0);
  sub_23875E320();
  a7(&v15);

  return result;
}

void sub_2386C0920(uint64_t a1@<X2>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v10[1] = *a1;
  v11 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](v10, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v10[0] + 16))
  {
    v6 = (v10[0] + 24 * v4);
    v8 = v6[4];
    v7 = v6[5];
    v9 = v6[6];

    *a3 = v8;
    a3[1] = v7;
    a3[2] = v9;
    return;
  }

  __break(1u);
}

uint64_t sub_2386C09D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *a5;
  v12[1] = *a4;
  v13 = *(a4 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](v12);
  v9 = v12[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23852F12C(v9);
  v9 = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8 < v9[2])
  {
    v11 = &v9[3 * v8];
    v11[4] = v6;
    v11[5] = v5;
    v11[6] = v7;

    v12[0] = v9;
    return sub_23875E2F0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2386C0AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A6C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14170, &qword_23877F788);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_23843981C(a1, &v21 - v12, &qword_27DF10038, &qword_238774BF0);
  sub_23843981C(a2, &v13[v15], &qword_27DF10038, &qword_238774BF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &qword_27DF10038, &qword_238774BF0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_2386BD564(&qword_27DF14178, MEMORY[0x277CC7F18], MEMORY[0x277CC7F20]);
      v18 = sub_23875E9E0();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_238439884(v13, &qword_27DF10038, &qword_238774BF0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_238439884(v13, &qword_27DF14170, &qword_23877F788);
    v17 = 1;
    return v17 & 1;
  }

  sub_238439884(v13, &qword_27DF10038, &qword_238774BF0);
  v17 = 0;
  return v17 & 1;
}

void sub_2386C0DE8(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  v6 = (a1 + 48);
  while (1)
  {
    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v11 = *v4;

    v12 = sub_23853B46C(v9, v8);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_238549500(v17, a2 & 1);
      v12 = sub_23853B46C(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v20 = *v4;
      if (v18)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v22 = v4;
    v23 = v12;
    sub_23854AB30();
    v12 = v23;
    v20 = *v22;
    if (v18)
    {
LABEL_11:
      v27 = v12;
      v21 = *(v20[7] + 8 * v12);
      sub_23875ED50();

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238569AA0(v7);

      *(v20[7] + 8 * v27) = v21;

      goto LABEL_4;
    }

LABEL_14:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v24 = (v20[6] + 16 * v12);
    *v24 = v9;
    v24[1] = v8;
    *(v20[7] + 8 * v12) = v10;
    v25 = v20[2];
    v16 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v20[2] = v26;
LABEL_4:
    v6 += 3;
    a2 = 1;
    --v3;
    v4 = a3;
    if (!v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_23875F680();
  __break(1u);
}

void sub_2386C1034()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_2386C108C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386C1114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectReconfirmationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2386C1178()
{
  type metadata accessor for BankConnectReconfirmationView(0);

  return sub_2386BF090();
}

uint64_t sub_2386C11E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23875C600();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386C1434(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_2386BFDE0(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23875C600();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386C165C(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2386BF954(a1, v6, v7, v1 + v5);
}

unint64_t sub_2386C1754()
{
  result = qword_27DF141C0;
  if (!qword_27DF141C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF141B8, &qword_23877F808);
    sub_23843A3E8(&qword_27DF141C8, &qword_27DF141D0, &qword_23877F810, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF141C0);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

double sub_2386C18A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return sub_2386B97A0(v5, (v2 + 16), a2);
}

void *sub_2386C18DC@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2386C06E4(*a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_2386C1930(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v6[1] = a1[2];
  v7 = v3;
  v6[0] = v4;
  return v2(&v7, v6);
}

unint64_t sub_2386C1978()
{
  result = qword_27DF14210;
  if (!qword_27DF14210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14208, &qword_23877F8B0);
    sub_2386C19FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14210);
  }

  return result;
}

unint64_t sub_2386C19FC()
{
  result = qword_27DF14218;
  if (!qword_27DF14218)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14220, &qword_23877F8B8);
    sub_2386C1A88(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14218);
  }

  return result;
}

unint64_t sub_2386C1A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF14228;
  if (!qword_27DF14228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14228);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2386C1BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2386C1BF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2386C1C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2384BEBB8(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

double sub_2386C1CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14278, &qword_23877F9F0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v16[-1] - v3);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386C301C(a1, v4);
  KeyPath = swift_getKeyPath(aX_24);
  v6 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14298, &qword_23877FA00) + 36);
  *v6 = KeyPath;
  v6[8] = 1;
  v7 = swift_getKeyPath(a8_6);
  v8 = *(*a1 + 56);
  v9 = *(*a1 + 72);
  v10 = __swift_project_boxed_opaque_existential_1((*a1 + 32), v8);
  v16[3] = v8;
  v16[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v12 = (v4 + *(v2 + 36));
  sub_23845C998(v16, (v12 + 1));
  *v12 = v7;
  v13 = __swift_destroy_boxed_opaque_existential_1(v16);
  MEMORY[0x28223BE20](v13);
  *(&v15 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14280, &qword_23877F9F8);
  sub_2386C35D4();
  sub_23843A3E8(&qword_27DF142C0, &qword_27DF14280, &qword_23877F9F8, MEMORY[0x277CDDF68]);
  sub_23875DEF0();
  sub_2386C388C(v4);

  return result;
}

double sub_2386C1F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142C8, &qword_23877FA78);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB08, &qword_23877FA80);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D0, &unk_23877FA88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v8;
  v9 = sub_23875D2A0();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB10, &qword_23876DEC0);
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D8, &unk_23877FA98);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = *(a1 + 8);
  v48 = *(a1 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v46, v19);
  v20 = a1;
  if (v46 == 1)
  {
    v21 = sub_23875D260();
    MEMORY[0x28223BE20](v21);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB18, &qword_23876DEC8);
    v36 = v18;
    sub_23853B768();
    sub_23875C990();
    v22 = sub_23843A3E8(&qword_27DF142E0, &qword_27DF0DB10, &qword_23876DEC0, MEMORY[0x277CDDB60]);
    v23 = v38;
    MEMORY[0x23EE61E80](v12, v10, v22);
    (*(v7 + 16))(v15, v23, v6);
    (*(v7 + 56))(v15, 0, 1, v6);
    *&v47 = v10;
    *(&v47 + 1) = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v15, v6, OpaqueTypeConformance2);
    sub_238439884(v15, &qword_27DF142D8, &unk_23877FA98);
    (*(v7 + 8))(v23, v6);
    v18 = v36;
    (*(v37 + 8))(v12, v10);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
    v25 = sub_23843A3E8(&qword_27DF142E0, &qword_27DF0DB10, &qword_23876DEC0, MEMORY[0x277CDDB60]);
    *&v47 = v10;
    *(&v47 + 1) = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v15, v6, v26);
    sub_238439884(v15, &qword_27DF142D8, &unk_23877FA98);
  }

  v27 = sub_23875D250();
  MEMORY[0x28223BE20](v27);
  *(&v35 - 2) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB50, &qword_23876DEE8);
  sub_23853B9A4();
  v28 = v40;
  sub_23875C990();
  v29 = v43;
  v30 = *(v44 + 48);
  sub_23842BF5C(v18, v43);
  v31 = v41;
  v32 = v29 + v30;
  v33 = v42;
  (*(v41 + 16))(v32, v28, v42);
  sub_23875D070();
  (*(v31 + 8))(v28, v33);
  sub_238439884(v18, &qword_27DF142D8, &unk_23877FA98);

  return result;
}

double sub_2386C25F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_23875D620();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB30, &unk_23876DED0);
  MEMORY[0x28223BE20](v22);
  v9 = v20 - v8;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = a1[1];
  v10 = swift_allocObject();
  v11 = *(a1 + 1);
  v10[1] = *a1;
  v10[2] = v11;
  v12 = *(a1 + 3);
  v10[3] = *(a1 + 2);
  v10[4] = v12;

  sub_2385B2CA0(&v26, v25);

  sub_23875E200();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  sub_2386C3904(&qword_27DF0DB38, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v13 = v20[0];
  v14 = v23;
  sub_23875DB30();
  (*(v21 + 8))(v4, v14);
  (*(v5 + 8))(v7, v13);
  v15 = &v9[*(v22 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB48, &qword_23876DEE0) + 28);
  v17 = *MEMORY[0x277CDF420];
  v18 = sub_23875C460();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  *v15 = swift_getKeyPath(byte_23877FAA8);
  sub_23853B824();
  sub_23875DE00();
  sub_238439884(v9, &qword_27DF0DB30, &unk_23876DED0);

  return result;
}

void sub_2386C2A30(uint64_t a1@<X8>)
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
  sub_23875D820();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v10, v12, v4 & 1);

  sub_23875D890();
  v19 = sub_23875D9E0();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_2384397FC(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v24;
}

double sub_2386C2C80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB68, &qword_23876DEF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1[1];
  v7 = swift_allocObject();
  v8 = *(a1 + 1);
  v7[1] = *a1;
  v7[2] = v8;
  v9 = *(a1 + 3);
  v7[3] = *(a1 + 2);
  v7[4] = v9;

  sub_2385B2CA0(&v13, v12);

  sub_23875E200();
  sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0, MEMORY[0x277CDF028]);
  sub_23875DE00();
  (*(v4 + 8))(v6, v3);

  return result;
}

double sub_2386C2ED4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 48))(isCurrentExecutor);

  return result;
}

void sub_2386C2F78(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();

  *a1 = v2;
}

void sub_2386C301C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v20 = a1;
  v25 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142E8, &qword_23877FAD8);
  MEMORY[0x28223BE20](v22);
  v24 = &v20 - v2;
  v23 = type metadata accessor for OrderDetails(0);
  MEMORY[0x28223BE20](v23);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238759B60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = sub_238758700();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *v20;
  (*(v12 + 16))(v14, *v20 + OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content, v11);
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277CC6FA8])
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v7, v10, v4);
    v20 = *(v15 + 56);
    v16 = v20;
    v17 = __swift_project_boxed_opaque_existential_1((v15 + 32), v20);
    v27 = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    v19 = v21;
    sub_2385297F0(v7, v26, 0, 0, 1, v21);
    sub_2386C3AD4(v19, v24);
    swift_storeEnumTagMultiPayload();
    sub_2386C3904(&qword_27DF11980, type metadata accessor for OrderDetails, &unk_23876D558);
    sub_23875D1B0();
    sub_2386C3B38(v19);
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_23875F520();
    __break(1u);
  }
}

uint64_t sub_2386C34A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14270, &qword_23877F9E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14278, &qword_23877F9F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14280, &qword_23877F9F8);
  sub_2386C35D4();
  sub_23843A3E8(&qword_27DF142C0, &qword_27DF14280, &qword_23877F9F8, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

unint64_t sub_2386C35D4()
{
  result = qword_27DF14288;
  if (!qword_27DF14288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14278, &qword_23877F9F0);
    sub_2386C368C();
    sub_23843A3E8(&qword_27DF0EAF0, &qword_27DF0EAF8, &qword_23877FA20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14288);
  }

  return result;
}

unint64_t sub_2386C368C()
{
  result = qword_27DF14290;
  if (!qword_27DF14290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14298, &qword_23877FA00);
    sub_2386C3744();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14290);
  }

  return result;
}

unint64_t sub_2386C3744()
{
  result = qword_27DF142A0;
  if (!qword_27DF142A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF142A8, &qword_23877FA08);
    sub_2386C37C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF142A0);
  }

  return result;
}

unint64_t sub_2386C37C8()
{
  result = qword_27DF142B0;
  if (!qword_27DF142B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF142B8, &unk_23877FA10);
    sub_2386C3904(&qword_27DF11980, type metadata accessor for OrderDetails, &unk_23876D558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF142B0);
  }

  return result;
}

uint64_t sub_2386C388C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14278, &qword_23877F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386C3904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2386C39AC(uint64_t a1)
{
  v2 = sub_23875C460();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x23EE61520](v5);
}

uint64_t objectdestroyTm_30()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2386C3AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386C3B38(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386C3BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23843981C(a3, v25 - v10, &unk_27DF09920, &qword_238764D80);
  v12 = sub_23875ED80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238439884(v11, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23875ECE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23875EB00() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2386C3EA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_2387587E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_238439884(a1, &qword_27DF0B328, &qword_238768050);
    sub_2386CB930(a2, v7);
    v13 = sub_23875BCB0();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_238439884(v7, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2386CC994(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_23875BCB0();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_2386C40D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a2)
  {
    result = sub_238547964(a3, a4, a5 & 1);
    if (v11)
    {
      v12 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v6;
      v18 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23854A404();
        v15 = v18;
      }

      result = sub_2386CC0EC(v12, v15, v14);
      *v6 = v15;
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v6;
    result = sub_2386CCB98(a1, a3, a4, a5 & 1, v17);
    *v6 = v19;
  }

  return result;
}

void sub_2386C41A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2386CCCEC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v8 = sub_2385477FC();
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v4;
      if (!v11)
      {
        sub_23854A0B4();
        v12 = v16;
      }

      sub_2386CC2D4(v10, v12, v13);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void sub_2386C42B8(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14320, &qword_23877FB68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_238439884(a1, &qword_27DF14320, &qword_23877FB68);
    sub_2386CBAD0(a2, v7);

    sub_238439884(v7, &qword_27DF14320, &qword_23877FB68);
  }

  else
  {
    sub_23854CEA4(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2386CD000(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

void sub_2386C4464(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_238758680();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_238439884(a1, &qword_27DF09520, &unk_2387637E0);
    sub_2386CBC3C(a2, v7);

    sub_238439884(v7, &qword_27DF09520, &unk_2387637E0);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2386CD174(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

Swift::Void __swiftcall SingleAccountSharingChoiceController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = *MEMORY[0x277D38568];
  v4 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v3, 25, v4);
}

Swift::Void __swiftcall SingleAccountSharingChoiceController.didMove(toParent:)(UIViewController_optional *toParent)
{
  ObjectType = swift_getObjectType();
  v3 = sub_23875C1E0();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v43 - v7);
  v9 = sub_2387587E0();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  [(UIViewController_optional *)&v51 didMoveToParentViewController:toParent, v19];
  if (toParent)
  {
    return;
  }

  v45 = v3;
  v46 = v17;
  v43 = v11;
  v44 = v5;
  ObjectType = v8;
  v22 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  swift_beginAccess();
  sub_23843981C(v1 + v22, v21, &qword_27DF0B328, &qword_238768050);
  v23 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
  swift_beginAccess();
  v24 = *(v12 + 48);
  sub_23843981C(v21, v14, &qword_27DF0B328, &qword_238768050);
  sub_23843981C(v1 + v23, &v14[v24], &qword_27DF0B328, &qword_238768050);
  v26 = v48;
  v25 = v49;
  v27 = *(v48 + 48);
  if (v27(v14, 1, v49) != 1)
  {
    v28 = v46;
    sub_23843981C(v14, v46, &qword_27DF0B328, &qword_238768050);
    if (v27(&v14[v24], 1, v25) != 1)
    {
      v35 = &v14[v24];
      v36 = v43;
      (*(v26 + 32))(v43, v35, v25);
      sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078], MEMORY[0x277CC7088]);
      v37 = sub_23875E9E0();
      v38 = *(v26 + 8);
      v38(v36, v25);
      sub_238439884(v21, &qword_27DF0B328, &qword_238768050);
      v38(v28, v25);
      sub_238439884(v14, &qword_27DF0B328, &qword_238768050);
      v29 = ObjectType;
      if (v37)
      {
        goto LABEL_10;
      }

LABEL_8:
      v30 = sub_23875ED80();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      sub_23875ED50();
      v31 = v1;
      v32 = sub_23875ED40();
      v33 = swift_allocObject();
      v34 = MEMORY[0x277D85700];
      v33[2] = v32;
      v33[3] = v34;
      v33[4] = v31;
      sub_2386C3BA4(0, 0, v29, &unk_23877FB60, v33);

      return;
    }

    sub_238439884(v21, &qword_27DF0B328, &qword_238768050);
    (*(v26 + 8))(v28, v25);
LABEL_7:
    sub_238439884(v14, &qword_27DF14300, &unk_23877FB48);
    v29 = ObjectType;
    goto LABEL_8;
  }

  sub_238439884(v21, &qword_27DF0B328, &qword_238768050);
  if (v27(&v14[v24], 1, v25) != 1)
  {
    goto LABEL_7;
  }

  sub_238439884(v14, &qword_27DF0B328, &qword_238768050);
LABEL_10:
  v39 = v44;
  sub_23875C120();
  v40 = sub_23875C1B0();
  v41 = sub_23875EFC0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2383F8000, v40, v41, "Nothing changed, skipping update", v42, 2u);
    MEMORY[0x23EE64DF0](v42, -1, -1);
  }

  (*(v47 + 8))(v39, v45);
}

Swift::OpaquePointer_optional __swiftcall SingleAccountSharingChoiceController.specifiers()()
{
  v1 = v0;
  v228 = sub_23875C1E0();
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v3 = &v194 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v194 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v194 - v8;
  MEMORY[0x28223BE20](v10);
  v221 = &v194 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14320, &qword_23877FB68);
  MEMORY[0x28223BE20](v12 - 8);
  v206 = &v194 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v220 = &v194 - v15;
  v223 = sub_2387587E0();
  v224 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v212 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v203 = &v194 - v18;
  MEMORY[0x28223BE20](v19);
  v208 = &v194 - v20;
  MEMORY[0x28223BE20](v21);
  v210 = &v194 - v22;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  MEMORY[0x28223BE20](v216);
  v217 = &v194 - v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v213 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v215 = (&v194 - v26);
  MEMORY[0x28223BE20](v27);
  v207 = &v194 - v28;
  MEMORY[0x28223BE20](v29);
  v214 = &v194 - v30;
  MEMORY[0x28223BE20](v31);
  v211 = &v194 - v32;
  MEMORY[0x28223BE20](v33);
  v209 = &v194 - v34;
  MEMORY[0x28223BE20](v35);
  v219 = (&v194 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = (&v194 - v38);
  MEMORY[0x28223BE20](v40);
  v218 = &v194 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v194 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v194 - v49;
  v226 = sub_23875BCB0();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v222 = &v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23875EA50();
  v53 = [v1 valueForKey_];

  if (v53)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v233 = 0u;
    v234 = 0u;
  }

  v236 = v234;
  v235 = v233;
  if (*(&v234 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      v54 = sub_2386C7328(v230);

      v56 = v54;
      goto LABEL_151;
    }

    v57 = v1;
  }

  else
  {
    v57 = v1;
    sub_238439884(&v235, &qword_27DF0A4A8, &qword_238767840);
  }

  v58 = sub_23875EA50();
  v202 = v57;
  v59 = [v57 loadSpecifiersFromPlistName:v58 target:v57];

  if (v59)
  {
    *&v235 = 0;
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    sub_23875EC70();

    v60 = v235;
    if (v235)
    {
      v232 = v235;
      v61 = v235 >> 62;
      if (v235 >> 62)
      {
        v59 = v235;
        v187 = v235 >> 62;
        v188 = sub_23875F3A0();
        v61 = v187;
        v60 = v59;
        if (v188)
        {
LABEL_13:
          v199 = v60 & 0xC000000000000001;
          v201 = v60;
          v198 = v61;
          if ((v60 & 0xC000000000000001) != 0)
          {
            v193 = v60;

            v200 = MEMORY[0x23EE63F70](0, v193);

            v62 = v202;
          }

          else
          {
            v62 = v202;
            if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_136;
            }

            v200 = v60[4];
          }

          v56 = [v62 specifier];
          if (!v56)
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v63 = v56;
          v64 = sub_23875EA50();
          v65 = [v63 propertyForKey_];

          if (v65)
          {
            sub_23875F2E0();
            swift_unknownObjectRelease();
          }

          else
          {
            v233 = 0u;
            v234 = 0u;
          }

          v236 = v234;
          v235 = v233;
          if (*(&v234 + 1))
          {
            if (swift_dynamicCast())
            {
              v66 = v231;
              v67 = &v62[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
              v197 = v230;
              *v67 = v230;
              *(v67 + 1) = v66;

              v56 = [v62 specifier];
              if (!v56)
              {
LABEL_148:
                __break(1u);
                goto LABEL_149;
              }

              v68 = v56;
              v69 = sub_23875EA50();
              v70 = [v68 propertyForKey_];

              if (v70)
              {
                sub_23875F2E0();
                swift_unknownObjectRelease();
              }

              else
              {
                v233 = 0u;
                v234 = 0u;
              }

              v236 = v234;
              v235 = v233;
              if (*(&v234 + 1))
              {
                if (swift_dynamicCast())
                {
                  v195 = v230;
                  v196 = v231;
                  v56 = [v62 specifier];
                  if (!v56)
                  {
LABEL_149:
                    __break(1u);
                    goto LABEL_150;
                  }

                  v76 = v56;
                  v77 = sub_23875EA50();
                  v78 = [v76 propertyForKey_];

                  if (v78)
                  {
                    sub_23875F2E0();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v233 = 0u;
                    v234 = 0u;
                  }

                  v84 = v226;
                  v236 = v234;
                  v235 = v233;
                  if (!*(&v234 + 1))
                  {

                    sub_238439884(&v235, &qword_27DF0A4A8, &qword_238767840);
                    (*(v225 + 56))(v50, 1, 1, v84);
                    goto LABEL_46;
                  }

                  v194 = v66;
                  v85 = swift_dynamicCast();
                  v86 = v225;
                  v87 = *(v225 + 56);
                  v87(v50, v85 ^ 1u, 1, v84);
                  if ((*(v86 + 48))(v50, 1, v84) == 1)
                  {

LABEL_46:
                    sub_238439884(v50, &unk_27DF0B520, &qword_2387681F0);
                    v88 = v221;
                    sub_23875C120();
                    v89 = sub_23875C1B0();
                    v90 = sub_23875EFE0();
                    v91 = os_log_type_enabled(v89, v90);
                    v92 = v200;
                    if (v91)
                    {
                      v93 = swift_slowAlloc();
                      *v93 = 0;
                      _os_log_impl(&dword_2383F8000, v89, v90, "Expected account id property of specifier", v93, 2u);
                      MEMORY[0x23EE64DF0](v93, -1, -1);
                    }

                    (*(v227 + 8))(v88, v228);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
                    v94 = swift_allocObject();
                    *(v94 + 16) = xmmword_2387632F0;
                    *(v94 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
                    *(v94 + 32) = v201;

                    v56 = v94;
                    goto LABEL_151;
                  }

                  v95 = v222;
                  (*(v86 + 32))(v222, v50, v84);
                  (*(v86 + 16))(v47, v95, v84);
                  v87(v47, 0, 1, v84);
                  v96 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
                  swift_beginAccess();
                  sub_2385309FC(v47, &v62[v96], &unk_27DF0B520, &qword_2387681F0);
                  swift_endAccess();
                  v97 = sub_23875EA50();
                  [v62 setTitle_];

                  v98 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
                  swift_beginAccess();
                  sub_23843981C(&v62[v98], v44, &qword_27DF0B328, &qword_238768050);
                  v9 = v224 + 48;
                  v6 = *(v224 + 48);
                  v99 = v223;
                  LODWORD(v96) = (v6)(v44, 1, v223);
                  sub_238439884(v44, &qword_27DF0B328, &qword_238768050);
                  v100 = &qword_27DF14000;
                  if (v96 == 1)
                  {
                    v101 = v218;
                    sub_2386C7524(v218);
                    swift_beginAccess();
                    sub_2385309FC(v101, &v62[v98], &qword_27DF0B328, &qword_238768050);
                    swift_endAccess();
                    sub_23843981C(&v62[v98], v39, &qword_27DF0B328, &qword_238768050);
                    LODWORD(v101) = (v6)(v39, 1, v99);
                    v100 = &qword_27DF14000;
                    sub_238439884(v39, &qword_27DF0B328, &qword_238768050);
                    if (v101 != 1)
                    {
                      v102 = v218;
                      sub_23843981C(&v62[v98], v218, &qword_27DF0B328, &qword_238768050);
                      v103 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
                      swift_beginAccess();
                      sub_2385309FC(v102, &v62[v103], &qword_27DF0B328, &qword_238768050);
                      swift_endAccess();
                      sub_23843981C(&v62[v103], v102, &qword_27DF0B328, &qword_238768050);
                      v104 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate;
                      swift_beginAccess();
                      v105 = v102;
                      v100 = &qword_27DF14000;
                      sub_2385309FC(v105, &v62[v104], &qword_27DF0B328, &qword_238768050);
                      swift_endAccess();
                    }
                  }

                  v195 = v98;
                  v106 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
                  swift_beginAccess();
                  v227 = v106;
                  v107 = v219;
                  sub_23843981C(&v62[v106], v219, &qword_27DF0B328, &qword_238768050);
                  v108 = v100[103];
                  swift_beginAccess();
                  v109 = *(v216 + 48);
                  v110 = v217;
                  sub_23843981C(v107, v217, &qword_27DF0B328, &qword_238768050);
                  sub_23843981C(&v62[v108], v110 + v109, &qword_27DF0B328, &qword_238768050);
                  if ((v6)(v110, 1, v99) == 1)
                  {
                    sub_238439884(v107, &qword_27DF0B328, &qword_238768050);
                    if ((v6)(v110 + v109, 1, v99) == 1)
                    {
                      sub_238439884(v110, &qword_27DF0B328, &qword_238768050);
LABEL_59:
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14348, &qword_23877FB78);
                      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE40, &qword_23876E830);
                      v115 = *(*(v39 - 1) + 72);
                      v59 = ((*(*(v39 - 1) + 80) + 32) & ~*(*(v39 - 1) + 80));
                      v3 = swift_allocObject();
                      *(v3 + 16) = xmmword_238763300;
                      v218 = v6;
                      v228 = v9;
                      if (v199)
                      {
                        v116 = MEMORY[0x23EE63F70](1, v201);
LABEL_63:
                        v59 = (v59 + v3);
                        v9 = v39[12];
                        *v59 = v116;
                        v117 = sub_23875BC40();
                        v118 = *(*(v117 - 8) + 56);
                        v6 = v220;
                        v118(v220, 1, 1, v117);
                        sub_2387587C0();
                        v119 = *(v224 + 56);
                        v221 = v224 + 56;
                        v219 = v119;
                        (v119)(v59 + v9, 0, 1, v223);
                        if (v199)
                        {
                          v120 = MEMORY[0x23EE63F70](2, v201);
LABEL_67:
                          v121 = v39[12];
                          *(v59 + v115) = v120;
                          v122 = v220;
                          sub_23875BAE0();
                          v118(v122, 0, 1, v117);
                          sub_2387587C0();
                          v123 = v223;
                          (v219)(v59 + v115 + v121, 0, 1, v223);
                          if (v199)
                          {
                            v124 = MEMORY[0x23EE63F70](3, v201);
                            v62 = v202;
                            v9 = v224;
                            v6 = v218;
                            v125 = v195;
                            goto LABEL_71;
                          }

                          v62 = v202;
                          v9 = v224;
                          v6 = v218;
                          v125 = v195;
                          if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
                          {
                            v124 = v201[7];
LABEL_71:
                            v126 = (v59 + 2 * v115);
                            v127 = v39[12];
                            *v126 = v124;
                            (v219)(v126 + v127, 1, 1, v123);
                            v128 = sub_23854C058(v3);
                            swift_setDeallocating();
                            swift_arrayDestroy();
                            swift_deallocClassInstance();
                            v59 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
                            swift_beginAccess();
                            *(v59 + v62) = v128;

                            v3 = v214;
                            sub_23843981C(&v62[v125], v214, &qword_27DF0B328, &qword_238768050);
                            if ((v6)(v3, 1, v123) != 1)
                            {
                              v129 = *(v9 + 32);
                              v130 = v208;
                              v129(v208, v3, v123);
                              v3 = v130;
                              if (sub_2387587D0())
                              {
                                (*(v9 + 8))(v130, v123);
                                goto LABEL_75;
                              }

                              v3 = v207;
                              sub_23843981C(&v62[v227], v207, &qword_27DF0B328, &qword_238768050);
                              if ((v6)(v3, 1, v123) != 1)
                              {
                                v146 = v203;
                                v129(v203, v3, v123);
                                v147 = sub_2387587D0();
                                v3 = v9 + 8;
                                v148 = *(v9 + 8);
                                v148(v146, v123);
                                v148(v130, v123);
                                v131 = v147 ^ 1;
LABEL_76:
                                v132 = v200;
                                v39 = v215;
                                sub_23843981C(&v62[v227], v215, &qword_27DF0B328, &qword_238768050);
                                v133 = (v6)(v39, 1, v123);
                                LODWORD(v220) = v131;
                                if (v133 == 1)
                                {
                                  sub_238439884(v39, &qword_27DF0B328, &qword_238768050);
                                  if (v198)
                                  {
                                    v39 = v201;
                                    v134 = sub_23875F3A0();
                                    v55 = v39;
                                  }

                                  else
                                  {
                                    v55 = v201;
                                    v134 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  }

                                  v136 = v213;
                                  v6 = MEMORY[0x277D837D0];
                                  if (!v134)
                                  {
                                    v9 = 0;
                                    v39 = 0;
LABEL_111:
                                    v157 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier;
                                    if (*&v62[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier])
                                    {

LABEL_115:
                                      v162 = *&v62[v157];
                                      if (!v162)
                                      {
                                        goto LABEL_125;
                                      }

                                      started = type metadata accessor for StartSharingTimeSelectionCell();
                                      v59 = v162;
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14360, qword_23877FB80);
                                      [v59 setProperty:sub_23875F660() forKey:*MEMORY[0x277D3FE58]];
                                      swift_unknownObjectRelease();
                                      [v59 setButtonAction_];
                                      sub_23843981C(&v62[v227], v136, &qword_27DF0B328, &qword_238768050);
                                      v163 = 0;
                                      if ((v218)(v136, 1, v123) != 1)
                                      {
                                        v164 = v224;
                                        (*(v224 + 16))(v210, v136, v123);
                                        v163 = sub_23875F660();
                                        (*(v164 + 8))(v136, v123);
                                      }

                                      v165 = sub_23875EA50();
                                      [v59 setProperty:v163 forKey:v165];
                                      swift_unknownObjectRelease();

                                      v166 = sub_23875ECD0();
                                      v167 = sub_23875EA50();
                                      [v59 setProperty:v166 forKey:v167];

                                      v3 = sub_23875EA50();
                                      [v59 setProperty:v62 forKey:v3];

                                      if (!v9)
                                      {
LABEL_124:

LABEL_125:
                                        v169 = objc_allocWithZone(MEMORY[0x277CC1E70]);
                                        v170 = sub_2386CB5C4(v197, v194, 0);
                                        v171 = v226;
                                        v172 = v225;
                                        if (!v170)
                                        {
LABEL_128:
                                          v184 = v232;
                                          sub_2386C7328(v232);
                                          v185 = sub_23875EC60();

                                          [v62 setSpecifiers_];

                                          v186 = sub_2386C7328(v184);
                                          (*(v172 + 8))(v222, v171);

                                          v56 = v186;
                                          goto LABEL_151;
                                        }

                                        v9 = v170;
                                        v173 = [v170 localizedName];
                                        v3 = sub_23875EA80();
                                        v59 = v174;

                                        if (qword_2814F0880 == -1)
                                        {
LABEL_127:
                                          v175 = qword_2814F1B90;
                                          v176 = sub_23875EA50();
                                          v177 = sub_23875EA50();
                                          v178 = sub_23875EA50();
                                          v179 = [v175 localizedStringForKey:v176 value:v177 table:v178];

                                          sub_23875EA80();
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
                                          v180 = swift_allocObject();
                                          *(v180 + 16) = xmmword_2387632F0;
                                          *(v180 + 56) = v6;
                                          *(v180 + 64) = sub_238448C58(v180, v181, v182);
                                          *(v180 + 32) = v3;
                                          *(v180 + 40) = v59;
                                          sub_23875EAB0();

                                          v183 = sub_23875EA50();

                                          v132 = v200;
                                          [v200 setProperty:v183 forKey:*MEMORY[0x277D3FF88]];

                                          v171 = v226;
                                          v172 = v225;
                                          goto LABEL_128;
                                        }

LABEL_141:
                                        swift_once();
                                        goto LABEL_127;
                                      }

                                      if (v198)
                                      {
                                        v168 = sub_23875F3A0();
                                      }

                                      else
                                      {
                                        v168 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                      }

                                      if (v168 >= 3)
                                      {
                                        sub_2386CF368(3, 3, v59, &qword_27DF0AE38, 0x277D3FAD8);
                                        goto LABEL_124;
                                      }

LABEL_140:
                                      __break(1u);
                                      goto LABEL_141;
                                    }

                                    v158 = objc_opt_self();
                                    v159 = sub_23875EA50();
                                    v160 = [v158 preferenceSpecifierNamed:v159 target:v62 set:sel_emptySetter_ get:0 detail:0 cell:-1 edit:0];

                                    if (v160)
                                    {

                                      v161 = *&v62[v157];
                                      *&v62[v157] = v160;

                                      goto LABEL_115;
                                    }

LABEL_150:
                                    __break(1u);
                                    goto LABEL_151;
                                  }

                                  v141 = __OFSUB__(v134, 1);
                                  v56 = v134 - 1;
                                  if (!v141)
                                  {
                                    if (v199)
                                    {
                                      v142 = MEMORY[0x23EE63F70](v56);
LABEL_99:
                                      v149 = v142;
LABEL_103:
                                      v39 = v149;
                                      v9 = 0;
LABEL_110:
                                      [v132 setProperty:v39 forKey:*MEMORY[0x277D40090]];

                                      goto LABEL_111;
                                    }

                                    if ((v56 & 0x8000000000000000) != 0)
                                    {
                                      __break(1u);
                                    }

                                    else if (v56 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                    {
                                      v142 = *&v55[2 * v56 + 8];
                                      goto LABEL_99;
                                    }

                                    __break(1u);
                                    goto LABEL_144;
                                  }

LABEL_139:
                                  __break(1u);
                                  goto LABEL_140;
                                }

                                (*(v9 + 32))(v212, v39, v123);
                                v56 = sub_2387587D0();
                                if (v56)
                                {
                                  LOBYTE(v55) = v201;
                                  if (v199)
                                  {
                                    v135 = MEMORY[0x23EE63F70](1, v201);
                                    v136 = v213;
                                    v6 = MEMORY[0x277D837D0];
                                  }

                                  else
                                  {
                                    v136 = v213;
                                    v6 = MEMORY[0x277D837D0];
                                    if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                                    {
LABEL_144:
                                      __break(1u);
                                      goto LABEL_145;
                                    }

                                    v135 = v201[5];
                                  }

                                  (*(v9 + 8))(v212, v123);
                                  v149 = v135;
                                  goto LABEL_103;
                                }

                                if (v199)
                                {
                                  v143 = v201;
                                  v144 = MEMORY[0x23EE63F70](2, v201);
                                  swift_beginAccess();
                                  if (*(v59 + v62))
                                  {
                                    v200 = v132;
                                    v39 = v144;
                                    v145 = MEMORY[0x23EE63F70](2, v143);
                                    goto LABEL_108;
                                  }
                                }

                                else
                                {
                                  v150 = v201 & 0xFFFFFFFFFFFFFF8;
                                  if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
                                  {
LABEL_145:
                                    __break(1u);
                                    goto LABEL_146;
                                  }

                                  v144 = v201[6];
                                  v56 = swift_beginAccess();
                                  if (*(v59 + v62))
                                  {
                                    if (*(v150 + 16) < 3uLL)
                                    {
LABEL_147:
                                      __break(1u);
                                      goto LABEL_148;
                                    }

                                    v200 = v132;
                                    v151 = v201[6];
                                    v39 = v144;
                                    v145 = v151;
LABEL_108:
                                    v152 = v145;
                                    v153 = v206;
                                    v154 = v212;
                                    (*(v9 + 16))(v206, v212, v123);
                                    v155 = v9;
                                    v9 = 1;
                                    (v219)(v153, 0, 1, v123);
                                    (*(v204 + 56))(v153, 0, 1, v205);
                                    sub_2386C42B8(v153, v152);
                                    swift_endAccess();
                                    (*(v155 + 8))(v154, v123);
                                    v136 = v213;
                                    v6 = MEMORY[0x277D837D0];
                                    v132 = v200;
                                    goto LABEL_110;
                                  }
                                }

                                swift_endAccess();
                                v156 = *(v9 + 8);
                                v39 = v144;
                                v156(v212, v123);
                                v9 = 1;
                                v136 = v213;
                                v6 = MEMORY[0x277D837D0];
                                goto LABEL_110;
                              }

                              (*(v9 + 8))(v130, v123);
                            }

                            sub_238439884(v3, &qword_27DF0B328, &qword_238768050);
LABEL_75:
                            v131 = 0;
                            goto LABEL_76;
                          }

LABEL_138:
                          __break(1u);
                          goto LABEL_139;
                        }

                        if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                        {
                          v120 = v201[6];
                          goto LABEL_67;
                        }

LABEL_137:
                        __break(1u);
                        goto LABEL_138;
                      }

                      if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
                      {
                        v116 = v201[5];
                        goto LABEL_63;
                      }

LABEL_136:
                      __break(1u);
                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    v111 = v209;
                    sub_23843981C(v110, v209, &qword_27DF0B328, &qword_238768050);
                    if ((v6)(v110 + v109, 1, v99) != 1)
                    {
                      v137 = v224;
                      v138 = v110 + v109;
                      v139 = v210;
                      (*(v224 + 32))(v210, v138, v99);
                      sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078], MEMORY[0x277CC7088]);
                      LODWORD(v221) = sub_23875E9E0();
                      v140 = *(v137 + 8);
                      v140(v139, v99);
                      sub_238439884(v219, &qword_27DF0B328, &qword_238768050);
                      v140(v111, v99);
                      sub_238439884(v110, &qword_27DF0B328, &qword_238768050);
                      if (v221)
                      {
                        goto LABEL_59;
                      }

                      goto LABEL_58;
                    }

                    sub_238439884(v219, &qword_27DF0B328, &qword_238768050);
                    (*(v224 + 8))(v111, v99);
                  }

                  sub_238439884(v110, &qword_27DF14300, &unk_23877FB48);
LABEL_58:
                  v112 = v218;
                  sub_23843981C(&v62[v108], v218, &qword_27DF0B328, &qword_238768050);
                  v113 = v227;
                  v114 = v211;
                  sub_23843981C(&v62[v227], v211, &qword_27DF0B328, &qword_238768050);
                  sub_2386CEE98(v112, v114, *&v62[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap], *&v62[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap + 8]);
                  sub_238439884(v114, &qword_27DF0B328, &qword_238768050);
                  sub_238439884(v112, &qword_27DF0B328, &qword_238768050);
                  sub_23843981C(&v62[v113], v112, &qword_27DF0B328, &qword_238768050);
                  swift_beginAccess();
                  sub_2385309FC(v112, &v62[v108], &qword_27DF0B328, &qword_238768050);
                  swift_endAccess();
                  goto LABEL_59;
                }
              }

              else
              {

                sub_238439884(&v235, &qword_27DF0A4A8, &qword_238767840);
              }

              sub_23875C120();
              v79 = sub_23875C1B0();
              v80 = sub_23875EFE0();
              v81 = os_log_type_enabled(v79, v80);
              v74 = v200;
              if (v81)
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&dword_2383F8000, v79, v80, "Expected account name property of specifier", v82, 2u);
                MEMORY[0x23EE64DF0](v82, -1, -1);
              }

              (*(v227 + 8))(v9, v228);
LABEL_40:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
              v83 = swift_allocObject();
              *(v83 + 16) = xmmword_2387632F0;
              *(v83 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
              *(v83 + 32) = v201;

              v56 = v83;
              goto LABEL_151;
            }
          }

          else
          {
            sub_238439884(&v235, &qword_27DF0A4A8, &qword_238767840);
          }

          sub_23875C120();
          v71 = sub_23875C1B0();
          v72 = sub_23875EFE0();
          v73 = os_log_type_enabled(v71, v72);
          v74 = v200;
          if (v73)
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_2383F8000, v71, v72, "Expected bundleID property of specifier", v75, 2u);
            MEMORY[0x23EE64DF0](v75, -1, -1);
          }

          (*(v227 + 8))(v6, v228);
          goto LABEL_40;
        }
      }

      else if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }
  }

  sub_23875C120();
  v189 = sub_23875C1B0();
  v190 = sub_23875EFE0();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    *&v235 = v192;
    *v191 = 136315138;
    *(v191 + 4) = sub_2384615AC(0xD00000000000001ALL, 0x80000002387902C0, &v235);
    _os_log_impl(&dword_2383F8000, v189, v190, "Unable to load specifiers from: %s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v192);
    MEMORY[0x23EE64DF0](v192, -1, -1);
    MEMORY[0x23EE64DF0](v191, -1, -1);
  }

  (*(v227 + 8))(v3, v228);
  v56 = MEMORY[0x277D84F90];
LABEL_151:
  result.is_nil = v55;
  result.value._rawValue = v56;
  return result;
}

char *sub_2386C7328(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23875F3A0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2385FF064(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EE63F70](i, a1);
        sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2385FF064((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23846F7C4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2385FF064((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23846F7C4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_2386C7524(uint64_t a2@<X8>)
{
  v21[0] = a2;
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758850();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator))
  {
    if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8))
    {

      sub_238758830();
      sub_23875AA60();
      (*(v8 + 8))(v10, v7);

      v18 = sub_2387587E0();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v13, 1, v18) == 1)
      {
        sub_238439884(v13, &qword_27DF0B328, &qword_238768050);
        (*(v19 + 56))(v21[0], 1, 1, v18);
      }

      else
      {
        v20 = v21[0];
        (*(v19 + 32))(v21[0], v13, v18);
        (*(v19 + 56))(v20, 0, 1, v18);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23875C120();
    v14 = sub_23875C1B0();
    v15 = sub_23875EFE0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2383F8000, v14, v15, "Expected store coordinator", v16, 2u);
      MEMORY[0x23EE64DF0](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v17 = sub_2387587E0();
    (*(*(v17 - 8) + 56))(v21[0], 1, 1, v17);
  }
}

id SingleAccountSharingChoiceController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23875EA50();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SingleAccountSharingChoiceController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  v10 = sub_23875BCB0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator;
  sub_23875AA80();
  swift_allocObject();
  *&v4[v11] = sub_23875AA70();
  v12 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  v13 = sub_2387587E0();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate] = 0;
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier] = 0;
  v15 = &v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap];
  *v15 = sub_23875EA80();
  v15[1] = v16;
  v14(&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController____lazy_storage___applicationRecord] = 1;
  if (a2)
  {
    v17 = sub_23875EA50();
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v17, a3);

  return v18;
}

id SingleAccountSharingChoiceController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SingleAccountSharingChoiceController.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  v7 = sub_23875BCB0();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator;
  sub_23875AA80();
  swift_allocObject();
  *&v2[v8] = sub_23875AA70();
  v9 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  v10 = sub_2387587E0();
  v11 = *(*(v10 - 8) + 56);
  v11(&v2[v9], 1, 1, v10);
  v11(&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate] = 0;
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier] = 0;
  v12 = &v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap];
  *v12 = sub_23875EA80();
  v12[1] = v13;
  v11(&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController____lazy_storage___applicationRecord] = 1;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

id SingleAccountSharingChoiceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2386C8160()
{
  v1 = sub_23875C1E0();
  v40 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_2387587E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier);
  if (v20)
  {
    v38 = v1;
    v21 = v20;
    v22 = sub_23875EA50();
    v39 = v21;
    v23 = [v21 propertyForKey_];

    if (v23)
    {
      sub_23875F2E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      v28 = swift_dynamicCast();
      v29 = *(v17 + 56);
      v29(v15, v28 ^ 1u, 1, v16);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        v37 = v29;
        v40 = *(v17 + 32);
        (v40)(v19, v15, v16);
        v30 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
        v38 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
        swift_beginAccess();
        sub_23843981C(v0 + v30, v12, &qword_27DF0B328, &qword_238768050);
        v31 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate;
        swift_beginAccess();
        sub_2385309FC(v12, v0 + v31, &qword_27DF0B328, &qword_238768050);
        swift_endAccess();
        sub_23843981C(v0 + v31, v12, &qword_27DF0B328, &qword_238768050);
        (*(v17 + 16))(v9, v19, v16);
        v32 = v37;
        v37(v9, 0, 1, v16);
        sub_2386CEE98(v12, v9, *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap), *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap + 8));

        sub_238439884(v9, &qword_27DF0B328, &qword_238768050);
        sub_238439884(v12, &qword_27DF0B328, &qword_238768050);
        (v40)(v12, v19, v16);
        v32(v12, 0, 1, v16);
        v33 = v38;
        swift_beginAccess();
        sub_2385309FC(v12, v0 + v33, &qword_27DF0B328, &qword_238768050);
        return swift_endAccess();
      }
    }

    else
    {
      sub_238439884(v43, &qword_27DF0A4A8, &qword_238767840);
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_238439884(v15, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v34 = sub_23875C1B0();
    v35 = sub_23875EFE0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2383F8000, v34, v35, "Expected account Date property of specifier", v36, 2u);
      MEMORY[0x23EE64DF0](v36, -1, -1);
    }

    return (*(v40 + 8))(v6, v38);
  }

  else
  {
    sub_23875C120();
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2383F8000, v24, v25, "Expected timeDateSpecifier to exists", v26, 2u);
      MEMORY[0x23EE64DF0](v26, -1, -1);
    }

    return (*(v40 + 8))(v3, v1);
  }
}

uint64_t sub_2386C88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_238758850();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_23875BCB0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_2387587E0();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v4[24] = swift_task_alloc();
  v8 = sub_23875C1E0();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_23875ED50();
  v4[29] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v4[30] = v10;
  v4[31] = v9;

  return MEMORY[0x2822009F8](sub_2386C8B88, v10, v9);
}

void sub_2386C8B88()
{
  v54 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator);
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
    swift_beginAccess();
    sub_23843981C(v1 + v6, v3, &qword_27DF0B328, &qword_238768050);
    v7 = *(v5 + 48);
    v52 = v7(v3, 1, v4);
    *(v0 + 272) = v52;

    sub_238439884(v3, &qword_27DF0B328, &qword_238768050);
    v8 = v7(v1 + v6, 1, v4);
    v9 = *(v0 + 184);
    if (v8)
    {
      v10 = sub_23875BC40();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    }

    else
    {
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);
      v21 = *(v0 + 160);
      (*(v20 + 16))(v19, v1 + v6, v21);
      sub_2387587B0();
      (*(v20 + 8))(v19, v21);
    }

    v22 = *(v0 + 88);
    sub_23875C120();
    v23 = v22;
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 136);
      v27 = *(v0 + 144);
      v28 = *(v0 + 128);
      v29 = *(v0 + 88);
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v30 = 141559043;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v31 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
      swift_beginAccess();
      sub_23843981C(v29 + v31, v28, &unk_27DF0B520, &qword_2387681F0);
      LODWORD(v26) = (*(v27 + 48))(v28, 1, v26);

      if (v26 == 1)
      {
        __break(1u);
      }

      else
      {
        v33 = *(v0 + 144);
        v32 = *(v0 + 152);
        v34 = *(v0 + 136);
        v35 = *(v0 + 88);
        (*(v33 + 32))(v32, *(v0 + 128), v34);
        sub_2386CFED8(&qword_27DF0DE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v36 = sub_23875F600();
        v38 = v37;
        (*(v33 + 8))(v32, v34);
        v39 = sub_2384615AC(v36, v38, &v53);

        *(v30 + 14) = v39;
        *(v30 + 22) = 2160;
        *(v30 + 24) = 1752392040;
        *(v30 + 32) = 2081;
        v40 = (v35 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier);
        v41 = *(v35 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8);
        if (v41)
        {
          v43 = *(v0 + 208);
          v42 = *(v0 + 216);
          v44 = *(v0 + 200);
          v45 = *v40;

          v46 = sub_2384615AC(v45, v41, &v53);

          *(v30 + 34) = v46;
          *(v30 + 42) = 1024;
          *(v30 + 44) = v52 != 1;
          _os_log_impl(&dword_2383F8000, v24, v25, "Update account %{private,mask.hash}s\nfor %{private,mask.hash}s: %{BOOL}d", v30, 0x30u);
          swift_arrayDestroy();
          MEMORY[0x23EE64DF0](v51, -1, -1);
          MEMORY[0x23EE64DF0](v30, -1, -1);

          (*(v43 + 8))(v42, v44);
LABEL_15:
          v50 = swift_task_alloc();
          *(v0 + 264) = v50;
          *v50 = v0;
          v50[1] = sub_2386C917C;

          sub_2386C953C();
          return;
        }
      }

      __break(1u);
      return;
    }

    v48 = *(v0 + 208);
    v47 = *(v0 + 216);
    v49 = *(v0 + 200);

    (*(v48 + 8))(v47, v49);
    goto LABEL_15;
  }

  sub_23875C120();
  v11 = sub_23875C1B0();
  v12 = sub_23875EFE0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  if (v13)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2383F8000, v11, v12, "Expected store coordinator", v17, 2u);
    MEMORY[0x23EE64DF0](v17, -1, -1);
  }

  (*(v16 + 8))(v14, v15);

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_2386C917C(char a1)
{
  v2 = *v1;
  *(*v1 + 276) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_2386C92A4, v4, v3);
}

uint64_t sub_2386C92A4()
{
  if (*(v0 + 276) != 1)
  {
    sub_238439884(*(v0 + 184), &qword_27DF12E00, &unk_238763FC0);

    goto LABEL_6;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  swift_beginAccess();
  sub_23843981C(v4 + v5, v3, &unk_27DF0B520, &qword_2387681F0);
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v0 + 88);
  if (!*&v7[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 144);
  v16 = *(v0 + 136);
  v9 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 184);
  v10 = *(v0 + 104);
  v15 = *(v0 + 96);

  sub_238758830();
  *(swift_allocObject() + 16) = v7;
  v11 = v7;
  sub_23875AA40();

  (*(v10 + 8))(v9, v15);
  sub_238439884(v14, &qword_27DF12E00, &unk_238763FC0);
  (*(v8 + 8))(v13, v16);
LABEL_6:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2386C953C()
{
  v1[2] = v0;
  v1[3] = sub_23875ED50();
  v1[4] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_2386C95D8, v3, v2);
}

uint64_t sub_2386C95D8()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllers];

    v4 = sub_238449184(0, &qword_27DF11DA8, 0x277D75D28);
    v5 = sub_23875EC80();

    if (v5 >> 62)
    {
LABEL_31:
      v6 = sub_23875F3A0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v5 & 0xC000000000000001;
        v32 = v5 + 32;
        v33 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = &selRef_returnDeadline;
        v29 = v5 & 0xC000000000000001;
        v30 = v6;
        v35 = v5;
        v31 = v4;
        while (2)
        {
          if (v8)
          {
            v10 = MEMORY[0x23EE63F70](v7, v5);
          }

          else
          {
            if (v7 >= *(v33 + 16))
            {
              goto LABEL_41;
            }

            v10 = *(v32 + 8 * v7);
          }

          v11 = v10;
          v12 = __OFADD__(v7, 1);
          v13 = v7 + 1;
          if (!v12)
          {
            v34 = v13;
            v5 = [v10 v9[219]];
            v14 = sub_23875EC80();

            if (v14 >> 62)
            {
              v36 = sub_23875F3A0();
            }

            else
            {
              v36 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v15 = 0;
            while (v36 != v15)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x23EE63F70](v15, v14);
              }

              else
              {
                if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v17 = *(v14 + 8 * v15 + 32);
              }

              v18 = v17;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v4 = v0;
              v5 = sub_23875ED40();
              sub_23875ECE0();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              swift_getObjectType();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v20 = NSStringFromClass(ObjCClassFromMetadata);
              v21 = sub_23875EA80();
              v23 = v22;

              if (v21 == 0xD00000000000002FLL && 0x80000002387904E0 == v23)
              {

LABEL_28:

                goto LABEL_37;
              }

              v16 = sub_23875F630();

              ++v15;
              if (v16)
              {
                goto LABEL_28;
              }
            }

            v4 = v31;
            v7 = v34;
            v5 = v35;
            v8 = v29;
            v9 = &selRef_returnDeadline;
            if (v34 != v30)
            {
              continue;
            }

            goto LABEL_32;
          }

          break;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x282198120]();
      }
    }

LABEL_32:
  }

  sub_23875BF10();
  v24 = MEMORY[0x23EE609E0]();
  v25 = sub_23875BEF0();

  if (v25)
  {
    *(v0 + 56) = MEMORY[0x23EE609E0]();
    v26 = swift_task_alloc();
    *(v0 + 64) = v26;
    *v26 = v0;
    v26[1] = sub_2386C9A30;

    return MEMORY[0x282198120]();
  }

LABEL_37:

  v27 = *(v0 + 8);

  return v27(1);
}

uint64_t sub_2386C9A30(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2386C9B78, v5, v4);
}

uint64_t sub_2386C9B78()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_2386C9BDC(void *a1)
{
  v2 = sub_23875E5C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875E5E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v10 = sub_23875F0A0();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_2386CFEB8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_23875E5D0();
  v15[1] = MEMORY[0x277D84F90];
  sub_2386CFED8(&qword_27DF12288, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_238650CBC();
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

void sub_2386C9E9C(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 specifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_23875ECD0();
    v5 = sub_23875EA50();
    [v3 setProperty:v4 forKey:v5];

    [a1 reloadSpecifiers];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2386CA15C(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1;
  v129 = a1;
  v3 = sub_23875C1E0();
  v132 = *(v3 - 1);
  v133 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v108 - v7;
  MEMORY[0x28223BE20](v9);
  v126 = &v108 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  MEMORY[0x28223BE20](v118);
  v119 = &v108 - v11;
  v121 = sub_23875BC40();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v125 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v108 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v15 - 8);
  v122 = &v108 - v16;
  v17 = sub_23875B650();
  MEMORY[0x28223BE20](v17 - 8);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = &v108 - v22;
  v23 = sub_2387587E0();
  v24 = *(v23 - 8);
  v130 = v23;
  v131 = v24;
  MEMORY[0x28223BE20](v23);
  v111 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v113 = &v108 - v27;
  MEMORY[0x28223BE20](v28);
  v116 = &v108 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v112 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v115 = &v108 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v108 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - v39;
  MEMORY[0x28223BE20](v41);
  v127 = &v108 - v42;
  MEMORY[0x28223BE20](v43);
  v128 = &v108 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v108 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v108 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v108 - v52;
  v54 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
  swift_beginAccess();
  v55 = *&v2[v54];
  if (v55)
  {
    if (!*(v55 + 16))
    {
LABEL_10:
      (*(v131 + 56))(v53, 1, 1, v130);
      sub_238439884(v53, &qword_27DF0B328, &qword_238768050);
      sub_23875C120();
      v65 = sub_23875C1B0();
      v66 = sub_23875EFE0();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2383F8000, v65, v66, "selectedAccountStartDate should exists", v67, 2u);
        MEMORY[0x23EE64DF0](v67, -1, -1);
      }

      return (*(v132 + 8))(v8, v133);
    }

    v110 = v2;

    v56 = sub_238547BE0(v129);
    if ((v57 & 1) == 0)
    {

      goto LABEL_10;
    }

    sub_23843981C(*(v55 + 56) + *(v31 + 72) * v56, v47, &qword_27DF0B328, &qword_238768050);
    sub_23854CEA4(v47, v50);
    v58 = v130;
    v59 = v131;
    v60 = *(v131 + 48);
    if (v60(v50, 1, v130) == 1)
    {

      sub_238439884(v50, &qword_27DF0B328, &qword_238768050);
      goto LABEL_10;
    }

    v109 = *(v59 + 32);
    v109(v53, v50, v58);
    v129 = *(v59 + 56);
    v129(v53, 0, 1, v58);
    sub_238439884(v53, &qword_27DF0B328, &qword_238768050);
    v68 = v110;
    v69 = *&v110[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier];
    if (v69)
    {
      v70 = v69;
      v71 = sub_23875EA50();
      v133 = v70;
      v72 = [v70 propertyForKey_];

      if (v72)
      {
        sub_23875F2E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v134 = 0u;
        v135 = 0u;
      }

      v77 = v128;
      v136[0] = v134;
      v136[1] = v135;
      if (*(&v135 + 1))
      {
        v78 = v130;
        v79 = swift_dynamicCast() ^ 1;
        v80 = v77;
      }

      else
      {
        sub_238439884(v136, &qword_27DF0A4A8, &qword_238767840);
        v80 = v77;
        v79 = 1;
        v78 = v130;
      }

      v129(v80, v79, 1, v78);
      if (v60(v77, 1, v78) == 1)
      {

        v81 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
        swift_beginAccess();
        sub_23843981C(v68 + v81, v40, &qword_27DF0B328, &qword_238768050);
        if (v60(v40, 1, v78) == 1)
        {
          sub_238439884(v40, &qword_27DF0B328, &qword_238768050);
LABEL_33:
          v90 = v127;
          v91 = sub_23875BE20();
          (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
          v92 = sub_23875BE40();
          (*(*(v92 - 8) + 56))(v124, 1, 1, v92);
          v93 = v123;
          sub_23875B620();
          v94 = v125;
          sub_23875BBF0();
LABEL_40:
          sub_23863A8A4(v93, v94, v90);
LABEL_46:
          v103 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
          swift_beginAccess();
          sub_2386CFBCC(v90, v68 + v103);
          swift_endAccess();
          [v68 reloadSpecifiers];

          sub_238439884(v90, &qword_27DF0B328, &qword_238768050);
          return sub_238439884(v128, &qword_27DF0B328, &qword_238768050);
        }

        v87 = v116;
        v88 = v109;
        v109(v116, v40, v78);
        v89 = v117;
        sub_2387587B0();
        if ((*(v120 + 48))(v89, 1, v121) == 1)
        {
          (*(v131 + 8))(v87, v78);
          sub_238439884(v89, &qword_27DF12E00, &unk_238763FC0);
          v68 = v110;
          goto LABEL_33;
        }

LABEL_41:
        sub_238439884(v89, &qword_27DF12E00, &unk_238763FC0);
        v90 = v127;
        v88(v127, v87, v78);
        v129(v90, 0, 1, v78);
        v68 = v110;
        goto LABEL_46;
      }

      sub_23843981C(v77, v37, &qword_27DF0B328, &qword_238768050);
      result = (v60)(v37, 1, v78);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v82 = sub_2387587D0();
      v83 = *(v131 + 8);
      v131 += 8;
      v83(v37, v78);
      if (v82)
      {
        v84 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
        v68 = v110;
        swift_beginAccess();
        v85 = v68 + v84;
        v86 = v115;
        sub_23843981C(v85, v115, &qword_27DF0B328, &qword_238768050);
        if (v60(v86, 1, v78) == 1)
        {
          sub_238439884(v86, &qword_27DF0B328, &qword_238768050);
        }

        else
        {
          v87 = v113;
          v88 = v109;
          v109(v113, v86, v78);
          v89 = v114;
          sub_2387587B0();
          if ((*(v120 + 48))(v89, 1, v121) != 1)
          {
            goto LABEL_41;
          }

          v83(v87, v78);
          sub_238439884(v89, &qword_27DF12E00, &unk_238763FC0);
          v68 = v110;
        }

        v100 = sub_23875BE20();
        (*(*(v100 - 8) + 56))(v122, 1, 1, v100);
        v101 = sub_23875BE40();
        (*(*(v101 - 8) + 56))(v124, 1, 1, v101);
        v93 = v123;
        sub_23875B620();
        v94 = v125;
        sub_23875BBF0();
        v90 = v127;
        goto LABEL_40;
      }

      v95 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
      v68 = v110;
      swift_beginAccess();
      v96 = *(v118 + 48);
      v97 = v68 + v95;
      v98 = v119;
      sub_23843981C(v97, v119, &qword_27DF0B328, &qword_238768050);
      sub_23843981C(v128, v98 + v96, &qword_27DF0B328, &qword_238768050);
      v99 = v78;
      if (v60(v98, 1, v78) == 1)
      {
        if (v60((v98 + v96), 1, v78) == 1)
        {

          sub_238439884(v98, &qword_27DF0B328, &qword_238768050);
          return sub_238439884(v128, &qword_27DF0B328, &qword_238768050);
        }
      }

      else
      {
        v102 = v112;
        sub_23843981C(v98, v112, &qword_27DF0B328, &qword_238768050);
        if (v60((v98 + v96), 1, v78) != 1)
        {
          v104 = v111;
          v109(v111, (v98 + v96), v99);
          sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078], MEMORY[0x277CC7088]);
          v105 = sub_23875E9E0();
          v68 = v110;
          v106 = v102;
          v107 = v105;
          v83(v104, v99);
          v83(v106, v99);
          sub_238439884(v98, &qword_27DF0B328, &qword_238768050);
          if (v107)
          {

            return sub_238439884(v128, &qword_27DF0B328, &qword_238768050);
          }

LABEL_45:
          v90 = v127;
          sub_23843981C(v128, v127, &qword_27DF0B328, &qword_238768050);
          goto LABEL_46;
        }

        v83(v102, v78);
      }

      sub_238439884(v98, &qword_27DF14300, &unk_23877FB48);
      goto LABEL_45;
    }

    v73 = v126;
    sub_23875C120();
    v74 = sub_23875C1B0();
    v75 = sub_23875EFE0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2383F8000, v74, v75, "Expected timeDateSpecifier to exists", v76, 2u);
      MEMORY[0x23EE64DF0](v76, -1, -1);
    }

    return (*(v132 + 8))(v73, v133);
  }

  else
  {
    sub_23875C120();
    v61 = sub_23875C1B0();
    v62 = sub_23875EFE0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2383F8000, v61, v62, "specifierForAccountStartDate should exists", v63, 2u);
      MEMORY[0x23EE64DF0](v63, -1, -1);
    }

    return (*(v132 + 8))(v5, v133);
  }
}

void sub_2386CB4E0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

id sub_2386CB5C4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23875EA50();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23875B730();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2386CB6A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2386CB798;

  return v6(a1);
}

uint64_t sub_2386CB798()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2386CB890(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23875F3A0();
LABEL_9:
  result = sub_23875F4A0();
  *v2 = result;
  return result;
}

uint64_t sub_2386CB930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_238547890(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854A3C8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23875BCB0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_2387587E0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2386CBDA8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_2387587E0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2386CBAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_238547BE0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854ACA4();
      v9 = v20;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
    v19 = *(v11 - 8);
    sub_23854CEA4(v10 + *(v19 + 72) * v7, a2);
    sub_2386CC49C(v7, v9, v12);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2386CBC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_238547BE0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854AECC();
      v9 = v20;
    }

    v10 = *(v9 + 56);
    v11 = sub_238758680();
    v19 = *(v11 - 8);
    v12 = (*(v19 + 32))(a2, v10 + *(v19 + 72) * v7, v11);
    sub_2386CC67C(v7, v9, v12);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = sub_238758680();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_2386CBDA8(int64_t a1, uint64_t a2)
{
  v4 = sub_23875BCB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_23875F330();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_2386CFED8(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_23875E950();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_2387587E0() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_2386CC0EC(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_23875F330() + 1) & ~v6;
    do
    {
      v10 = 24 * v7;
      v11 = *(a2 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_23875F700();
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        MEMORY[0x23EE641F0](0);
        v15 = v12;
        v12 = v13;
      }

      MEMORY[0x23EE641F0](v15);
      MEMORY[0x23EE641F0](v12);
      result = sub_23875F760();
      v16 = result & v8;
      if (v4 >= v9)
      {
        if (v16 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v9)
      {
        goto LABEL_13;
      }

      if (v4 >= v16)
      {
LABEL_13:
        v17 = *(a2 + 48);
        v18 = v17 + 24 * v4;
        v19 = (v17 + v10);
        if (24 * v4 < v10 || v18 >= v19 + 24 || v4 != v7)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v4);
        v23 = (v21 + 8 * v7);
        if (v4 != v7 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2386CC2D4(int64_t a1, uint64_t a2, double a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_23875F330() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      sub_23875EA80();
      sub_23875F700();
      v11 = v10;
      sub_23875EB30();
      v12 = sub_23875F760();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v4);
        v16 = (v14 + 8 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v4);
        v19 = (v17 + 16 * v7);
        if (v4 != v7 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_2386CC49C(int64_t a1, uint64_t a2, double a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_23875F330() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      v11 = sub_23875F1A0();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v4);
      v17 = (v15 + 8 * v7);
      if (v4 != v7 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050) - 8) + 72);
      v20 = v19 * v4;
      v21 = v18 + v19 * v4;
      v22 = v19 * v7;
      v23 = v18 + v19 * v7 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_2386CC67C(int64_t a1, uint64_t a2, double a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_23875F330() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      v11 = sub_23875F1A0();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v4);
      v17 = (v15 + 8 * v7);
      if (v4 != v7 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_238758680() - 8) + 72);
      v20 = v19 * v4;
      v21 = v18 + v19 * v4;
      v22 = v19 * v7;
      v23 = v18 + v19 * v7 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_2386CC844(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23853B46C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23854A224();
      v11 = v19;
      goto LABEL_8;
    }

    sub_238548690(v16, a4 & 1);
    v11 = sub_23853B46C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_23875F680();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_23846F7C4(a1, v22);
  }

  else
  {
    sub_2386CD2F4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2386CC994(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23875BCB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_238547890(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23854A3C8();
      goto LABEL_7;
    }

    sub_238548948(v17, a3 & 1);
    v28 = sub_238547890(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2386CD360(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23875F680();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_2387587E0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_2386CCB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_238547964(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_23854A404();
    result = v21;
    goto LABEL_8;
  }

  sub_238548998(v18, a5 & 1);
  result = sub_238547964(a2, a3, a4 & 1);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      *(v23[7] + 8 * result) = a1;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    v24 = v23[6] + 24 * result;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v24 + 16) = a4 & 1;
    *(v23[7] + 8 * result) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_23875F680();
  __break(1u);
  return result;
}

void sub_2386CCCEC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2385477FC();
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_2385483BC(v15, a4 & 1);
      v10 = sub_2385477FC();
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for PKAnalyticsKey(0);
        sub_23875F680();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_23854A0B4();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v22 = (v20[7] + 16 * v10);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;

  v25 = a3;
}

void sub_2386CCE60(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_238758A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_238547B0C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23854A8C0();
    goto LABEL_7;
  }

  sub_238549140(v17, a3 & 1);
  v21 = sub_238547B0C(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_23875F680();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_2386CD4A8(v14, v11, a1 & 1, v20);
}

id sub_2386CD000(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_238547BE0(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
      return sub_2385309FC(a1, v16 + *(*(v17 - 8) + 72) * v9, &qword_27DF0B328, &qword_238768050);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23854ACA4();
    goto LABEL_7;
  }

  sub_2385497B4(v12, a3 & 1);
  v19 = sub_238547BE0(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    result = sub_23875F680();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2386CD560(v9, a2, a1, v15);

  return a2;
}

id sub_2386CD174(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_238547BE0(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_23854AECC();
      goto LABEL_7;
    }

    sub_238549D68(v12, a3 & 1);
    v23 = sub_238547BE0(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    result = sub_23875F680();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_238758680();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2386CD600(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_2386CD2F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23846F7C4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2386CD360(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23875BCB0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2387587E0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2386CD454(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_2386CD4A8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_238758A00();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2386CD560(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  result = sub_23854CEA4(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2386CD600(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_238758680();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2386CD6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_2386C88C0(a1, v4, v5, v6);
}

uint64_t sub_2386CD774(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v170 = *(v2 - 8);
  v171 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v152 = &v139 - v6;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  MEMORY[0x28223BE20](v166);
  v157 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v161 = &v139 - v9;
  MEMORY[0x28223BE20](v10);
  v160 = &v139 - v11;
  v12 = sub_23875BE00();
  v158 = *(v12 - 8);
  v159 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14398, &qword_23877FC40);
  MEMORY[0x28223BE20](v15);
  v163 = &v139 - v16;
  v17 = sub_23875BE20();
  v164 = *(v17 - 8);
  v165 = v17;
  MEMORY[0x28223BE20](v17);
  v174 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v19 - 8);
  v151 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v155 = &v139 - v22;
  MEMORY[0x28223BE20](v23);
  v153 = &v139 - v24;
  MEMORY[0x28223BE20](v25);
  v156 = &v139 - v26;
  MEMORY[0x28223BE20](v27);
  v154 = &v139 - v28;
  MEMORY[0x28223BE20](v29);
  v162 = &v139 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v139 - v32;
  v34 = sub_23875BC40();
  v175 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v167 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v169 = &v139 - v37;
  MEMORY[0x28223BE20](v38);
  v168 = &v139 - v39;
  MEMORY[0x28223BE20](v40);
  v172 = &v139 - v41;
  MEMORY[0x28223BE20](v42);
  v173 = &v139 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v139 - v45;
  v47 = sub_2387587E0();
  MEMORY[0x28223BE20](v47);
  v49 = &v139 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v50;
  v53 = v52;
  sub_23843981C(a1, v46, &qword_27DF0B328, &qword_238768050);
  if ((*(v51 + 48))(v46, 1, v53) == 1)
  {
    sub_238439884(v46, &qword_27DF0B328, &qword_238768050);
    return 1701736302;
  }

  (*(v51 + 32))(v49, v46, v53);
  if (sub_2387587D0())
  {
    (*(v51 + 8))(v49, v53);
    return 7105633;
  }

  v149 = v53;
  v150 = v49;
  sub_2387587B0();
  v55 = v175;
  v56 = v175 + 48;
  v57 = *(v175 + 48);
  v58 = v34;
  if (v57(v33, 1, v34) == 1)
  {
    sub_238439884(v33, &qword_27DF12E00, &unk_238763FC0);
    sub_23875C120();
    v59 = sub_23875C1B0();
    v60 = sub_23875EFE0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2383F8000, v59, v60, "In limited sharing state, but currentStartDate is nil.", v61, 2u);
      MEMORY[0x23EE64DF0](v61, -1, -1);
    }

    (*(v170 + 8))(v4, v171);
    (*(v51 + 8))(v150, v149);
    return 0xD000000000000015;
  }

  v147 = v57;
  v62 = v55 + 32;
  v63 = *(v55 + 32);
  v64 = v55;
  v65 = v173;
  v146 = v62;
  v145 = v63;
  v63(v173, v33, v34);
  v66 = v172;
  sub_23875BAE0();
  v67 = sub_23875BBD0();
  v70 = *(v64 + 8);
  v69 = v64 + 8;
  v68 = v70;
  v70(v66, v58);
  if (v67)
  {
    v68(v65, v58);
LABEL_11:
    (*(v51 + 8))(v150, v149);
    return 0x5F646574696D696CLL;
  }

  v143 = v56;
  v71 = v58;
  v72 = v174;
  sub_23875BDF0();
  sub_23875BC30();
  v73 = v66;
  v74 = v168;
  sub_23875BD50();
  v148 = v71;
  v68(v73, v71);
  v75 = v69;
  v76 = v169;
  sub_23875BD50();
  if (sub_23875BBD0())
  {
    v77 = v148;
    v68(v76, v148);
    v68(v74, v77);
    (*(v164 + 8))(v72, v165);
    v68(v65, v77);
    (*(v51 + 8))(v150, v149);
    return 0x5F646574696D696CLL;
  }

  v142 = v68;
  v144 = v75;
  v139 = v51;
  v141 = *(v15 + 48);
  v140 = *(v15 + 64);
  v78 = v158;
  v79 = v159;
  v80 = *(v158 + 104);
  v80(v14, *MEMORY[0x277CC9968], v159);
  v81 = v163;
  sub_23875BDE0();
  v82 = *(v78 + 8);
  v82(v14, v79);
  v83 = *MEMORY[0x277CC9988];
  v80(v14, v83, v79);
  sub_23875BDE0();
  v82(v14, v79);
  v80(v14, v83, v79);
  v84 = v81;
  sub_23875BDE0();
  v82(v14, v79);
  v85 = v175;
  v86 = *(v175 + 16);
  v87 = v167;
  v88 = v148;
  v86(v167, v169, v148);
  v89 = v162;
  v86(v162, v87, v88);
  v90 = *(v85 + 56);
  v175 = v85 + 56;
  v159 = v90;
  v90(v89, 0, 1, v88);
  v91 = *(v166 + 48);
  v92 = v160;
  sub_23843981C(v84, v160, &qword_27DF12E00, &unk_238763FC0);
  v93 = v92;
  sub_23843981C(v89, v92 + v91, &qword_27DF12E00, &unk_238763FC0);
  v94 = v92;
  v95 = v147;
  v96 = v88;
  if (v147(v94, 1, v88) == 1)
  {
    sub_238439884(v89, &qword_27DF12E00, &unk_238763FC0);
    v97 = v95(v93 + v91, 1, v88);
    v51 = v139;
    v98 = v168;
    v99 = v161;
    if (v97 == 1)
    {
      sub_238439884(v93, &qword_27DF12E00, &unk_238763FC0);
LABEL_31:
      v127 = v142;
      v142(v167, v96);
      sub_238439884(v163, &qword_27DF14398, &qword_23877FC40);
      v127(v169, v96);
      v127(v98, v96);
      (*(v164 + 8))(v174, v165);
      v127(v173, v96);
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v100 = v154;
  sub_23843981C(v93, v154, &qword_27DF12E00, &unk_238763FC0);
  v101 = v95(v93 + v91, 1, v88);
  v102 = v142;
  v99 = v161;
  if (v101 == 1)
  {
    sub_238439884(v162, &qword_27DF12E00, &unk_238763FC0);
    v102(v100, v96);
    v51 = v139;
LABEL_20:
    sub_238439884(v93, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_21;
  }

  v123 = v172;
  v145(v172, v93 + v91, v96);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v124 = v100;
  v125 = v102;
  v126 = sub_23875E9E0();
  v125(v123, v148);
  sub_238439884(v162, &qword_27DF12E00, &unk_238763FC0);
  v125(v124, v148);
  v96 = v148;
  sub_238439884(v93, &qword_27DF12E00, &unk_238763FC0);
  v51 = v139;
  v98 = v168;
  if (v126)
  {
    goto LABEL_31;
  }

LABEL_21:
  v103 = v156;
  v86(v156, v167, v96);
  v104 = v103;
  v159(v103, 0, 1, v96);
  v105 = *(v166 + 48);
  v106 = v163;
  sub_23843981C(v163 + v141, v99, &qword_27DF12E00, &unk_238763FC0);
  v107 = v148;
  sub_23843981C(v103, v99 + v105, &qword_27DF12E00, &unk_238763FC0);
  v108 = v147;
  if (v147(v99, 1, v107) == 1)
  {
    sub_238439884(v103, &qword_27DF12E00, &unk_238763FC0);
    v109 = v108(v99 + v105, 1, v107);
    v110 = v157;
    v111 = v142;
    if (v109 == 1)
    {
      sub_238439884(v99, &qword_27DF12E00, &unk_238763FC0);
LABEL_39:
      v111(v167, v107);
      sub_238439884(v106, &qword_27DF14398, &qword_23877FC40);
      v111(v169, v107);
      v111(v168, v107);
      (*(v164 + 8))(v174, v165);
      v111(v173, v107);
      (*(v51 + 8))(v150, v149);
      return 0x5F646574696D696CLL;
    }

    goto LABEL_26;
  }

  v112 = v153;
  sub_23843981C(v99, v153, &qword_27DF12E00, &unk_238763FC0);
  v113 = v108(v99 + v105, 1, v107);
  v110 = v157;
  v111 = v142;
  if (v113 == 1)
  {
    sub_238439884(v104, &qword_27DF12E00, &unk_238763FC0);
    v111(v112, v107);
LABEL_26:
    sub_238439884(v99, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_27;
  }

  v135 = v99 + v105;
  v136 = v172;
  v145(v172, v135, v107);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v162) = sub_23875E9E0();
  v142(v136, v148);
  sub_238439884(v104, &qword_27DF12E00, &unk_238763FC0);
  v142(v112, v148);
  v111 = v142;
  v107 = v148;
  sub_238439884(v99, &qword_27DF12E00, &unk_238763FC0);
  if (v162)
  {
    goto LABEL_39;
  }

LABEL_27:
  v114 = v155;
  v145(v155, v167, v107);
  v159(v114, 0, 1, v107);
  v115 = *(v166 + 48);
  v116 = v106;
  sub_23843981C(v106 + v140, v110, &qword_27DF12E00, &unk_238763FC0);
  v117 = v148;
  sub_23843981C(v114, v110 + v115, &qword_27DF12E00, &unk_238763FC0);
  v118 = v147;
  if (v147(v110, 1, v117) == 1)
  {
    sub_238439884(v114, &qword_27DF12E00, &unk_238763FC0);
    v119 = v118(v110 + v115, 1, v117);
    v120 = v149;
    v121 = v150;
    v122 = v116;
    if (v119 == 1)
    {
      sub_238439884(v110, &qword_27DF12E00, &unk_238763FC0);
LABEL_41:
      sub_238439884(v122, &qword_27DF14398, &qword_23877FC40);
      v111(v169, v117);
      v111(v168, v117);
      (*(v164 + 8))(v174, v165);
      v111(v173, v117);
      (*(v51 + 8))(v121, v120);
      return 0x5F646574696D696CLL;
    }

    goto LABEL_34;
  }

  v128 = v151;
  sub_23843981C(v110, v151, &qword_27DF12E00, &unk_238763FC0);
  if (v118(v110 + v115, 1, v117) == 1)
  {
    sub_238439884(v155, &qword_27DF12E00, &unk_238763FC0);
    v111(v128, v117);
    v120 = v149;
    v121 = v150;
    v122 = v116;
LABEL_34:
    sub_238439884(v110, &qword_27DF0DC30, &unk_23876E260);
    v129 = v152;
    goto LABEL_35;
  }

  v137 = v172;
  v145(v172, v110 + v115, v117);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v138 = sub_23875E9E0();
  v111(v137, v148);
  sub_238439884(v155, &qword_27DF12E00, &unk_238763FC0);
  v111(v128, v148);
  v117 = v148;
  sub_238439884(v110, &qword_27DF12E00, &unk_238763FC0);
  v120 = v149;
  v121 = v150;
  v129 = v152;
  v122 = v116;
  if (v138)
  {
    goto LABEL_41;
  }

LABEL_35:
  sub_23875C120();
  v130 = sub_23875C1B0();
  v131 = sub_23875EFE0();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&dword_2383F8000, v130, v131, "Limited sharing state with an unexpected selectedDate.", v132, 2u);
    v133 = v132;
    v121 = v150;
    MEMORY[0x23EE64DF0](v133, -1, -1);
  }

  (*(v170 + 8))(v129, v171);
  sub_238439884(v122, &qword_27DF14398, &qword_23877FC40);
  v134 = v148;
  v111(v169, v148);
  v111(v168, v134);
  (*(v164 + 8))(v174, v165);
  v111(v173, v134);
  (*(v51 + 8))(v121, v120);
  return 0xD000000000000013;
}

void sub_2386CEE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23875C1E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2386CD774(a2);
  v14 = v13;
  if (v12 == sub_2386CD774(a1) && v14 == v15)
  {
  }

  else
  {
    v16 = sub_23875F630();

    if ((v16 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      v23 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 16) = xmmword_238763300;
      *(inited + 40) = a3;
      *(inited + 48) = a4;
      v24 = *MEMORY[0x277D384B8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0xD000000000000024;
      *(inited + 72) = 0x8000000238785040;
      v25 = v23;

      v26 = v24;
      *(inited + 80) = sub_23875EA50();
      *(inited + 88) = v12;
      *(inited + 96) = v14;
      sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v27 = objc_opt_self();
      v28 = *MEMORY[0x277D38568];
      type metadata accessor for PKAnalyticsKey(0);
      sub_2386CFED8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
      v29 = sub_23875E910();

      [v27 subject:v28 sendEvent:v29];

      return;
    }
  }

  sub_23875C120();

  v17 = sub_23875C1B0();
  v18 = sub_23875EFC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = sub_2384615AC(v12, v14, &v30);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_2383F8000, v17, v18, "Analytics: Sharing option effectively unchanged (%s), skipping redundant log.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x23EE64DF0](v20, -1, -1);
    MEMORY[0x23EE64DF0](v19, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
}

char *sub_2386CF244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_238449184(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23875F3A0();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_23875F3A0();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}