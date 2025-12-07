double sub_2385D0358@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v4;
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385D07B4(v16);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  sub_23875CFC0();
  v25 = v35;
  sub_2385D4B8C(a1, v35, type metadata accessor for BankConnectTermsAndConditionsView);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_2385D4BF4(v25, v27 + v26, type metadata accessor for BankConnectTermsAndConditionsView);
  *v10 = v22;
  v10[1] = v24;
  *(v10 + *(v5 + 40)) = 0;
  v28 = (v10 + *(v5 + 44));
  *v28 = sub_2385D5808;
  v28[1] = v27;
  sub_23843981C(v16, v13, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843981C(v10, v7, &qword_27DF09580, &qword_238763900);
  v29 = v37;
  sub_23843981C(v13, v37, &qword_27DF0AAD8, &qword_23876B8C0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10280, &qword_2387751B8);
  sub_23843981C(v7, v29 + *(v30 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v10, &qword_27DF09580, &qword_238763900);
  sub_238439884(v16, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v7, &qword_27DF09580, &qword_238763900);
  sub_238439884(v13, &qword_27DF0AAD8, &qword_23876B8C0);

  return result;
}

uint64_t sub_2385D07B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
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

  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);
  sub_23875C2D0();

  v13 = v20;
  sub_2385D4B8C(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_2385D4BF4(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BankConnectTermsAndConditionsView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  result = sub_23875D610();
  *a1 = v10;
  a1[1] = v12;
  *(a1 + *(v16 + 40)) = v13;
  v18 = (a1 + *(v16 + 44));
  *v18 = sub_2385D5820;
  v18[1] = v15;
  return result;
}

double sub_2385D0AAC()
{
  v55 = sub_23875A6C0();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v46 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - v5;
  v6 = sub_23875A820();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[1];
  v47 = v0;
  v12 = *(v0 + 16);
  v13 = type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  v14 = sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  v51 = v10;
  v50 = v11;
  v49 = v12;
  v48 = v13;
  v56 = v14;
  LODWORD(v10) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType);

  v15 = MEMORY[0x277D38550];
  if (!v10)
  {
    v15 = MEMORY[0x277D38560];
  }

  v16 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v18 = sub_23867B330(v9);
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  *(inited + 40) = v18;
  *(inited + 48) = v20;
  v21 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_238763300;
  v23 = *MEMORY[0x277D383D8];
  *(v22 + 32) = *MEMORY[0x277D383D8];
  *(v22 + 40) = sub_23875EA80();
  *(v22 + 48) = v24;
  v25 = *MEMORY[0x277D38390];
  *(v22 + 56) = *MEMORY[0x277D38390];
  *(v22 + 64) = 0x65756E69746E6F63;
  v26 = *MEMORY[0x277D384B8];
  *(v22 + 72) = 0xE800000000000000;
  *(v22 + 80) = v26;
  strcpy((v22 + 88), "bankLinkStart");
  *(v22 + 102) = -4864;
  v27 = v23;
  v28 = v25;
  v29 = v26;
  v30 = sub_23854B138(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v30;
  sub_2385C33E4(v21, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v60);

  v32 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v33 = sub_23875E910();

  [v32 subject:v16 sendEvent:v33];

  v34 = sub_23875C490();
  v35 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  v36 = v53;
  sub_23843981C(v34 + v35, v53, &qword_27DF10038, &qword_238774BF0);

  v37 = v52;
  sub_23843981C(v36, v52, &qword_27DF10038, &qword_238774BF0);
  v38 = v54;
  v39 = v55;
  if ((*(v54 + 48))(v37, 1, v55) == 1)
  {
    sub_238439884(v36, &qword_27DF10038, &qword_238774BF0);
  }

  else
  {
    v40 = v47;
    v41 = v46;
    (*(v38 + 32))(v46, v37, v39);
    v42 = sub_23875A6A0();
    (*(v38 + 8))(v41, v39);
    sub_238439884(v36, &qword_27DF10038, &qword_238774BF0);
    if (v42)
    {
      v43 = v40[4];
      v58 = *(v40 + 24);
      v59 = v43;
      v57 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
      sub_23875E1C0();
      return result;
    }
  }

  sub_23875C490();
  sub_2385CBE50();

  return result;
}

double sub_2385D11A0(uint64_t *a1, void (*a2)(void))
{
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  a2();

  return result;
}

uint64_t sub_2385D1250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2385D4B8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2385D4BF4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BankConnectTermsAndConditionsView);
  *a2 = sub_2385D5B60;
  a2[1] = v7;
  return result;
}

uint64_t sub_2385D1364()
{
  result = MEMORY[0x23EE63CB0](500.65);
  qword_27DF10018 = result;
  unk_27DF10020 = v1;
  dword_27DF10028 = v2;
  return result;
}

uint64_t sub_2385D1394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  sub_23843981C(v1 + *(v10 + 24), v9, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
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

uint64_t sub_2385D159C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E48, &qword_238761CD0);
  MEMORY[0x28223BE20](v65);
  v68 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100A8, &qword_238774E50);
  MEMORY[0x28223BE20](v3);
  v5 = (&v61 - v4);
  *v5 = sub_23875E4A0();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100B0, &qword_238774E58);
  sub_2385D1D38(v5 + *(v7 + 44));
  v8 = sub_23875D790();
  v9 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  v10 = (v1 + *(v9 + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v70 = *v10;
  v71 = v12;
  v72 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100B8, &qword_238774E60);
  MEMORY[0x23EE62DC0](&v69);
  if (*&v69 > 0.0)
  {
    v70 = v11;
    v71 = v12;
    v72 = v13;
    MEMORY[0x23EE62DC0](&v69, v14, *&v69);
  }

  sub_23875C3D0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100C0, &qword_238774E68) + 36);
  *v23 = v8;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  *(v5 + *(v3 + 36)) = 0;
  v24 = sub_23875C450();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2385D1394(v27);
  v64 = v1;
  v29 = MEMORY[0x28223BE20](v28);
  (*(v25 + 104))(v27, *MEMORY[0x277CDF3D0], v24, v29);
  LOBYTE(v26) = sub_23875C440();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v30(v27, v24);
  v31 = objc_opt_self();
  v32 = &selRef_systemGroupedBackgroundColor;
  if ((v26 & 1) == 0)
  {
    v32 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = sub_23875DFB0();
  v35 = sub_23875D780();
  v36 = v68;
  v37 = sub_2384396E4(v5, v68, &qword_27DF100A8, &qword_238774E50);
  v66 = &v61;
  v38 = v36 + *(v65 + 9);
  *v38 = v34;
  *(v38 + 8) = v35;
  v39 = *(v9 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_2385D4B8C(v64, &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsHeroView);
  sub_23875ED50();
  v41 = sub_23875ED40();
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v44 = MEMORY[0x277D85700];
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  sub_2385D4BF4(&v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for BankConnectTermsAndConditionsHeroView);
  v45 = sub_23875ED80();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v63 = sub_23875C830();
    v64 = &v61;
    v62 = *(v63 - 8);
    MEMORY[0x28223BE20](v63);
    v65 = &v61;
    v50 = &v61 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_23875F470();

    v70 = 0xD000000000000041;
    v71 = 0x800000023878CB40;
    v69 = 389;
    v51 = sub_23875F600();
    MEMORY[0x23EE63650](v51);

    v53 = MEMORY[0x28223BE20](v52);
    (*(v46 + 16))(&v61 - v48, &v61 - v48, v45, v53);
    sub_23875C820();
    (*(v46 + 8))(&v61 - v48, v45);
    v54 = v67;
    sub_2384396E4(v68, v67, &qword_27DF08E48, &qword_238761CD0);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E50, &qword_238761CD8);
    return (*(v62 + 32))(v54 + *(v55 + 36), v50, v63);
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E58, &qword_238761CE0);
    v58 = v67;
    v59 = (v67 + *(v57 + 36));
    v60 = sub_23875C6E0();
    (*(v46 + 32))(&v59[*(v60 + 20)], &v61 - v48, v45);
    *v59 = &unk_238774E80;
    *(v59 + 1) = v43;
    return sub_2384396E4(v36, v58, &qword_27DF08E48, &qword_238761CD0);
  }
}

void sub_2385D1D38(uint64_t a2@<X8>)
{
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100C8, &qword_238774E88);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100D0, &qword_238774E90);
  MEMORY[0x28223BE20](v49);
  v15 = &v48 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100D8, &qword_238774E98);
  MEMORY[0x28223BE20](v50);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v51 = &v48 - v21;
  sub_23875ED50();
  v52 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D1E0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(sub_23875D460() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_23875CF50();
  (*(*(v32 - 8) + 104))(&v15[v30], v31, v32);
  *v15 = v23;
  *(v15 + 1) = v25;
  *(v15 + 2) = v27;
  *(v15 + 3) = v29;
  sub_23875E4A0();
  sub_23875C5C0();
  v33 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100E0, &qword_238774EA0) + 36)];
  v34 = v57;
  *v33 = v56;
  *(v33 + 1) = v34;
  *(v33 + 2) = v58;
  v35 = objc_opt_self();
  v36 = [v35 systemGroupedBackgroundColor];
  *&v15[*(v49 + 36)] = sub_23875DFB0();
  sub_2385D1394(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  LOBYTE(v30) = sub_23875C440();
  v37 = *(v8 + 8);
  v37(v10, v7);
  v37(v13, v7);
  v38 = &selRef_systemGray3Color;
  if ((v30 & 1) == 0)
  {
    v38 = &selRef_systemGray4Color;
  }

  v39 = [v35 *v38];
  v40 = sub_23875DFB0();
  sub_2384396E4(v15, v19, &qword_27DF100D0, &qword_238774E90);
  v41 = v51;
  v42 = &v19[*(v50 + 36)];
  *v42 = v40;
  v42[1] = 0x4024000000000000;
  v42[2] = 0;
  v42[3] = 0;
  sub_2384396E4(v19, v41, &qword_27DF100D8, &qword_238774E98);
  *v6 = sub_23875D020();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100E8, &qword_238774EA8);
  sub_2385D22F8(&v6[*(v43 + 44)]);
  v44 = v53;
  sub_23843981C(v41, v53, &qword_27DF100D8, &qword_238774E98);
  v45 = v55;
  sub_23843981C(v6, v55, &qword_27DF100C8, &qword_238774E88);
  v46 = v54;
  sub_23843981C(v44, v54, &qword_27DF100D8, &qword_238774E98);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F0, &qword_238774EB0);
  sub_23843981C(v45, v46 + *(v47 + 48), &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v6, &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v41, &qword_27DF100D8, &qword_238774E98);
  sub_238439884(v45, &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v44, &qword_27DF100D8, &qword_238774E98);
}

void sub_2385D22F8(_OWORD *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F8, &qword_238774EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875CE60();
  v30 = 1;
  sub_2385D26A8(&v44);
  v34 = *&v45[32];
  v35 = *&v45[48];
  v36 = *&v45[64];
  v37 = v45[80];
  v31 = v44;
  v32 = *v45;
  v33 = *&v45[16];
  v38[0] = v44;
  v38[1] = *v45;
  v38[2] = *&v45[16];
  v38[3] = *&v45[32];
  v38[4] = *&v45[48];
  v38[5] = *&v45[64];
  v39 = v45[80];
  sub_23843981C(&v31, v40, &qword_27DF10100, &qword_238774EC0);
  sub_238439884(v38, &qword_27DF10100, &qword_238774EC0);
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v29[103] = v37;
  *&v29[39] = v33;
  v10 = v30;
  v27 = v30;
  v11 = sub_23875D790();
  sub_23875C3D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2385D2B0C(v8);
  sub_23843981C(v8, v5, &qword_27DF100F8, &qword_238774EB8);
  *(&v41[3] + 1) = *&v29[48];
  *(&v41[4] + 1) = *&v29[64];
  *(&v41[5] + 1) = *&v29[80];
  *(v41 + 1) = *v29;
  v40[0] = v9;
  v40[1] = 0;
  LOBYTE(v41[0]) = v10;
  *(&v41[6] + 1) = *&v29[96];
  *(&v41[1] + 1) = *&v29[16];
  *(&v41[2] + 1) = *&v29[32];
  LOBYTE(v42) = v11;
  *(&v42 + 1) = v13;
  *&v43[0] = v15;
  *(&v43[0] + 1) = v17;
  *&v43[1] = v19;
  BYTE8(v43[1]) = 0;
  v20 = v41[0];
  *a2 = v9;
  a2[1] = v20;
  v21 = v41[4];
  a2[4] = v41[3];
  a2[5] = v21;
  v22 = v41[6];
  a2[6] = v41[5];
  a2[7] = v22;
  v23 = v41[2];
  a2[2] = v41[1];
  a2[3] = v23;
  *(a2 + 153) = *(v43 + 9);
  v24 = v43[0];
  a2[8] = v42;
  a2[9] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10108, &qword_238774EC8);
  sub_23843981C(v5, a2 + *(v25 + 48), &qword_27DF100F8, &qword_238774EB8);
  sub_23843981C(v40, &v44, &qword_27DF10110, &qword_238774ED0);
  sub_238439884(v8, &qword_27DF100F8, &qword_238774EB8);
  sub_238439884(v5, &qword_27DF100F8, &qword_238774EB8);
  *&v45[49] = *&v29[48];
  *&v45[65] = *&v29[64];
  *&v45[81] = *&v29[80];
  *&v45[1] = *v29;
  *&v45[17] = *&v29[16];
  v44 = v9;
  v45[0] = v27;
  v46 = *&v29[96];
  *&v45[33] = *&v29[32];
  v47 = v11;
  v48 = v13;
  v49 = v15;
  v50 = v17;
  v51 = v19;
  v52 = 0;
  sub_238439884(&v44, &qword_27DF10110, &qword_238774ED0);
}

double sub_2385D26A8@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385D2840(&v9);
  v16[1] = v10;
  v14[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v14[2] = v11;
  v14[3] = v12;
  v16[0] = v9;
  v14[0] = v9;
  v17 = v13;
  v8 = 1;
  v15 = v13;
  *&v7[7] = v9;
  v7[71] = v13;
  *&v7[55] = v12;
  *&v7[39] = v11;
  *&v7[23] = v10;
  v6[72] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *&v7[16];
  *(a1 + 9) = *v7;
  v3 = *&v7[32];
  v4 = *&v7[48];
  *(a1 + 73) = *&v7[64];
  *(a1 + 57) = v4;
  *(a1 + 41) = v3;
  *(a1 + 25) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  sub_23843981C(v14, v6, &qword_27DF096E0, &qword_238763AD0);
  sub_238439884(v16, &qword_27DF096E0, &qword_238763AD0);

  return result;
}

__n128 sub_2385D2840@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for PassLoader(0);
  sub_2385D4A74(&qword_27DF096B8, type metadata accessor for PassLoader, &unk_23876D0D0);
  sub_23875C490();
  swift_getKeyPath(byte_238775010);
  swift_getKeyPath(byte_238775038);
  sub_23875C2D0();

  if (v9)
  {
    v2 = v9;
    sub_23875E0C0();
    sub_23875E4A0();
    sub_23875C5C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();

    v11 = v6;
    v12 = v7;
    v13 = v8;
    v9 = v4;
    v10 = v5;
  }

  else
  {
    sub_23875E020();
    swift_getKeyPath(aP_8);
    sub_23875E4A0();
    sub_23875C5C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();
  }

  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_2385D2B0C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10118, &qword_238774ED8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10120, &qword_238774EE0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v52 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10128, &qword_238774EE8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  *v12 = sub_23875CE60();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10130, &unk_238774EF0);
  sub_2385D3118(v1, &v12[*(v20 + 44)]);
  sub_23875E4A0();
  sub_23875C5C0();
  v21 = &v12[*(v10 + 44)];
  v22 = v55;
  *v21 = v54;
  *(v21 + 1) = v22;
  *(v21 + 2) = v56;
  sub_2385D1394(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3D0], v2);
  LOBYTE(v10) = sub_23875C440();
  v23 = *(v3 + 8);
  v23(v5, v2);
  v23(v8, v2);
  v24 = objc_opt_self();
  v25 = &selRef_systemBackgroundColor;
  if ((v10 & 1) == 0)
  {
    v25 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v26 = [v24 *v25];
  v27 = sub_23875DFB0();
  v28 = sub_23875D780();
  v29 = v12;
  v30 = v52;
  sub_2384396E4(v29, v52, &qword_27DF10118, &qword_238774ED8);
  v31 = v30 + *(v14 + 44);
  *v31 = v27;
  *(v31 + 8) = v28;
  v32 = &v19[*(v17 + 44)];
  v33 = *(sub_23875C980() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23875CF50();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #26.0 }

  *v32 = _Q0;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  sub_2384396E4(v30, v19, &qword_27DF10120, &qword_238774EE0);
  LOBYTE(v34) = sub_23875D7A0();
  sub_23875C3D0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v53;
  sub_2384396E4(v19, v53, &qword_27DF10128, &qword_238774EE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F8, &qword_238774EB8);
  v51 = v49 + *(result + 36);
  *v51 = v34;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_2385D2F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2385D2FEC, v5, v4);
}

uint64_t sub_2385D2FEC()
{
  v1 = v0[2];
  type metadata accessor for PassLoader(0);
  sub_2385D4A74(&qword_27DF096B8, type metadata accessor for PassLoader, &unk_23876D0D0);
  v0[6] = sub_23875C490();
  v2 = *v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_23844728C;

  return sub_238517CC4(v2, 1911, 187.0, 121.0);
}

double sub_2385D3118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10138, &qword_238774F00);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_23875D030();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10140, &qword_238774F08);
  sub_2385D3308(a1, &v9[*(v10 + 44)]);
  v11 = sub_23875D7B0();
  sub_23875C3D0();
  v12 = &v9[*(v4 + 36)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  sub_23843981C(v9, v6, &qword_27DF10138, &qword_238774F00);
  sub_23843981C(v6, a2, &qword_27DF10138, &qword_238774F00);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10148, &qword_238774F10) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_238439884(v9, &qword_27DF10138, &qword_238774F00);
  sub_238439884(v6, &qword_27DF10138, &qword_238774F00);

  return result;
}

void sub_2385D3308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v91 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10150, &qword_238774F18);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v79 = &v78 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10158, &unk_238774F20);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v78 - v6;
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v80 = sub_23875C980();
  MEMORY[0x28223BE20](v80);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D8, &qword_238773120);
  MEMORY[0x28223BE20](v81);
  v17 = &v78 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10160, &qword_238774F30);
  MEMORY[0x28223BE20](v82);
  v19 = &v78 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10168, &qword_238774F38);
  MEMORY[0x28223BE20](v83);
  v86 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v24);
  v84 = &v78 - v25;
  sub_23875ED50();
  v85 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(v80 + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_23875CF50();
  (*(*(v28 - 8) + 104))(&v15[v26], v27, v28);
  __asm { FMOV            V0.2D, #3.0 }

  *v15 = _Q0;
  sub_2385D1394(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  LOBYTE(v27) = sub_23875C440();
  v34 = *(v8 + 8);
  v34(v10, v7);
  v34(v13, v7);
  v35 = objc_opt_self();
  v36 = &selRef_systemGray4Color;
  if ((v27 & 1) == 0)
  {
    v36 = &selRef_tertiarySystemGroupedBackgroundColor;
  }

  v37 = [v35 *v36];
  v38 = sub_23875DFB0();
  sub_2385D4BF4(v15, v17, MEMORY[0x277CDFC08]);
  *&v17[*(v81 + 36)] = v38;
  sub_23875E4A0();
  sub_23875C5C0();
  sub_2384396E4(v17, v19, &qword_27DF0F6D8, &qword_238773120);
  v39 = &v19[*(v82 + 36)];
  v40 = v103;
  *v39 = v102;
  *(v39 + 1) = v40;
  *(v39 + 2) = v104;
  LOBYTE(v38) = sub_23875D790();
  sub_23875C3D0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_2384396E4(v19, v23, &qword_27DF10160, &qword_238774F30);
  v49 = &v23[*(v83 + 36)];
  *v49 = v38;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = v84;
  sub_2384396E4(v23, v84, &qword_27DF10168, &qword_238774F38);
  v51 = sub_2385D3C5C();
  if (v52)
  {
    *&v100[0] = v51;
    *(&v100[0] + 1) = v52;
    sub_2384397A8(v51, v52, v53);
    v54 = sub_23875DAA0();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    KeyPath = swift_getKeyPath(aX_10);
    v62 = swift_getKeyPath(a0_5);
    v99 = v58 & 1;
    v98 = 0;
    *&v93 = v54;
    *(&v93 + 1) = v56;
    LOBYTE(v94) = v58 & 1;
    *(&v94 + 1) = v60;
    *&v95 = KeyPath;
    *(&v95 + 1) = 1;
    LOBYTE(v96) = 0;
    *(&v96 + 1) = v62;
    v97 = 0x3FE0000000000000;
    sub_23875D850();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10178, &qword_238774FA8);
    sub_2385D4D38();
    v63 = v79;
    sub_23875DAF0();
    v100[3] = v96;
    v101 = v97;
    v100[1] = v94;
    v100[2] = v95;
    v100[0] = v93;
    sub_238439884(v100, &qword_27DF10178, &qword_238774FA8);
    v64 = swift_getKeyPath(byte_238774FC8);
    v65 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10198, &qword_238774FF8) + 36)];
    *v65 = v64;
    v65[8] = 1;
    LOBYTE(v64) = sub_23875D7A0();
    sub_23875C3D0();
    v66 = v88;
    v67 = &v63[*(v88 + 36)];
    *v67 = v64;
    *(v67 + 1) = v68;
    *(v67 + 2) = v69;
    *(v67 + 3) = v70;
    *(v67 + 4) = v71;
    v67[40] = 0;
    v72 = v63;
    v73 = v89;
    sub_2384396E4(v72, v89, &qword_27DF10150, &qword_238774F18);
    (*(v87 + 56))(v73, 0, 1, v66);
  }

  else
  {
    v73 = v89;
    (*(v87 + 56))(v89, 1, 1, v88);
  }

  v74 = v86;
  sub_23843981C(v50, v86, &qword_27DF10168, &qword_238774F38);
  v75 = v90;
  sub_23843981C(v73, v90, &qword_27DF10158, &unk_238774F20);
  v76 = v91;
  sub_23843981C(v74, v91, &qword_27DF10168, &qword_238774F38);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10170, &qword_238774F40);
  sub_23843981C(v75, v76 + *(v77 + 48), &qword_27DF10158, &unk_238774F20);
  sub_238439884(v73, &qword_27DF10158, &unk_238774F20);
  sub_238439884(v50, &qword_27DF10168, &qword_238774F38);
  sub_238439884(v75, &qword_27DF10158, &unk_238774F20);
  sub_238439884(v74, &qword_27DF10168, &qword_238774F38);
}

uint64_t sub_2385D3C5C()
{
  v0 = sub_238758090();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BD20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_23875BCD0();
  sub_23875BD10();
  v13 = *(v4 + 8);
  v13(v9, v3);
  v14 = sub_23875BD00();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_238439884(v12, &qword_27DF0E140, &unk_238775000);
    return 0;
  }

  else
  {
    v18 = v0;
    sub_23875BCE0();
    (*(v15 + 8))(v12, v14);
    if (qword_27DF08D10 != -1)
    {
      swift_once();
    }

    sub_2387580A0();
    sub_23875BCC0();
    v17 = sub_238758080();
    v13(v6, v3);
    (*(v19 + 8))(v2, v18);
    return v17;
  }
}

void sub_2385D3F74(void *a2@<X8>)
{
  swift_getKeyPath(byte_238775010);
  swift_getKeyPath(byte_238775038);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_2385D3FF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_238775010);
  swift_getKeyPath(byte_238775038);
  v3 = v2;

  return sub_23875C2E0();
}

void sub_2385D406C(_BYTE *a2@<X8>)
{
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_2385D40EC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);

  return sub_23875C2E0();
}

uint64_t sub_2385D4160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CB20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2385D420C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a5;
  v29 = a6;
  v27 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  v32 = a8;
  v33 = a9;
  v34 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  LOBYTE(a8) = *a3;
  v20 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v30 = 0;
  sub_23875C290();
  (*(v16 + 32))(a7 + v20, v18, v15);
  v21 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  v22 = sub_23875A6C0();
  (*(*(v22 - 8) + 56))(a7 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v24 = sub_238757B60();
  (*(*(v24 - 8) + 32))(a7 + v23, a1, v24);
  *(a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass) = v27;
  *(a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType) = a8;
  sub_2385169F0(&v31, (a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  v25 = v29;
  *(a7 + 16) = v28;
  *(a7 + 24) = v25;
  return a7;
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI35BankConnectTermsAndConditionsResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2385D4490(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2385D44EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_2385D4574(uint64_t a1)
{
  sub_2385D4B20(319, &qword_27DF09EE8, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_238757B60();
    if (v2 <= 0x3F)
    {
      sub_2385D4ABC(319, &qword_27DF10050, MEMORY[0x277CC7F18], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2385D474C(uint64_t a1)
{
  sub_2385D4890(319);
  if (v1 <= 0x3F)
  {
    sub_2385D4B20(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2385D4B20(319, &qword_27DF10078, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2385D4ABC(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23875C880();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385D4890(uint64_t a1)
{
  if (!qword_27DF10068)
  {
    type metadata accessor for BankConnectTermsAndConditionsViewModel(255);
    sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF10068);
    }
  }
}

void sub_2385D496C(uint64_t a1)
{
  sub_2384AD48C();
  if (v1 <= 0x3F)
  {
    sub_2384491CC(319);
    if (v2 <= 0x3F)
    {
      sub_2385D4ABC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2385D4B20(319, &qword_27DF100A0, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2385D4A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2385D4ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385D4B20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2385D4B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385D4BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385D4C5C()
{
  v2 = *(type metadata accessor for BankConnectTermsAndConditionsHeroView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2385D2F54(v4, v5, v0 + v3);
}

unint64_t sub_2385D4D38()
{
  result = qword_27DF10180;
  if (!qword_27DF10180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10178, &qword_238774FA8);
    sub_23843A174();
    sub_23843A3E8(&qword_27DF10188, &qword_27DF10190, &qword_238774FC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10180);
  }

  return result;
}

void sub_2385D4DF0(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2385D4E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385D4E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_2385CC5CC(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_2383FC164(*(v0 + v4), *(v0 + v4 + 8));

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C880();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 36);
  v9 = sub_23875C880();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_2385D50A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385CDC04(a1, v6, a2);
}

unint64_t sub_2385D5134()
{
  result = qword_27DF101D8;
  if (!qword_27DF101D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101C8, &qword_238775118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101E0, &qword_238775120);
    sub_2385D51F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101D8);
  }

  return result;
}

unint64_t sub_2385D51F4()
{
  result = qword_27DF101E8;
  if (!qword_27DF101E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101E0, &qword_238775120);
    sub_2385D5280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101E8);
  }

  return result;
}

unint64_t sub_2385D5280()
{
  result = qword_27DF101F0;
  if (!qword_27DF101F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101F8, &qword_238775128);
    sub_23843A3E8(&qword_27DF10200, &qword_27DF10208, &unk_238775130, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101F0);
  }

  return result;
}

double sub_2385D5338@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2385CF530(v4, a1);
}

unint64_t sub_2385D53A8()
{
  result = qword_27DF10218;
  if (!qword_27DF10218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
    sub_2385D4A74(&qword_27DF10220, type metadata accessor for BankConnectTermsAndConditionsWebView, &unk_23877C058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10218);
  }

  return result;
}

void sub_2385D545C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2385CFD24(a1, a2, v6);
}

unint64_t sub_2385D54DC()
{
  result = qword_27DF10228;
  if (!qword_27DF10228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101B0, &qword_238775108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101A8, &qword_238775100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101A0, &qword_2387750F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101C8, &qword_238775118);
    sub_23843A3E8(&qword_27DF101D0, &qword_27DF101A0, &qword_2387750F8, MEMORY[0x277CDD6E0]);
    sub_2385D5134();
    swift_getOpaqueTypeConformance2();
    sub_2385D53A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10228);
  }

  return result;
}

unint64_t sub_2385D566C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10230;
  if (!qword_27DF10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10230);
  }

  return result;
}

double sub_2385D56C0()
{
  v1 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2385CFDF8(v2);
}

uint64_t sub_2385D5720()
{
  v1 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_2385CF9B4(v2, v3, v4);
}

unint64_t sub_2385D587C()
{
  result = qword_27DF102C8;
  if (!qword_27DF102C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF102A0, &qword_2387751D8);
    sub_2385D4A74(&qword_27DF102D0, type metadata accessor for BankConnectTermsAndConditionsHeroView, &unk_238774DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102C8);
  }

  return result;
}

unint64_t sub_2385D5938()
{
  result = qword_27DF102D8;
  if (!qword_27DF102D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E48, &qword_238761CD0);
    sub_2385D59F0();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102D8);
  }

  return result;
}

unint64_t sub_2385D59F0()
{
  result = qword_27DF102E0;
  if (!qword_27DF102E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF100A8, &qword_238774E50);
    sub_2385D5AA8();
    sub_23843A3E8(&qword_27DF10300, &qword_27DF10308, &qword_238775248, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102E0);
  }

  return result;
}

unint64_t sub_2385D5AA8()
{
  result = qword_27DF102E8;
  if (!qword_27DF102E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF100C0, &qword_238774E68);
    sub_23843A3E8(&qword_27DF102F0, &qword_27DF102F8, &qword_238775240, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102E8);
  }

  return result;
}

double sub_2385D5B64@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v18 = *(v1 + 1);
  v19 = v1[3];
  v16 = *(v1 + 1);
  v17 = v1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1D0();
  v12 = v23;
  v16 = *(v1 + 2);
  v17 = v1[6];
  v13 = v22;
  v14 = *(v1 + 2);
  v15 = v1[6];
  sub_23875E1D0();
  v11 = v22;
  v4 = v23;
  v21 = BYTE8(v23);
  v20 = BYTE8(v23);
  v5 = swift_allocObject();
  v6 = *(v1 + 1);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 2);
  *(v5 + 64) = v1[6];
  v7 = v21;
  v8 = v20;
  v22 = v16;
  *&v23 = v17;

  sub_23843981C(&v18, &v14, &qword_27DF09BC0, &qword_2387645B0);
  sub_23843981C(&v16, &v14, &qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1B0();
  sub_23875E4A0();
  sub_23875C5C0();
  *a1 = v3;
  *(a1 + 8) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v11;
  *(a1 + 56) = v4;
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_2385D5D78;
  *(a1 + 80) = 0;
  *(a1 + 88) = sub_2385D8314;
  *(a1 + 96) = v5;
  v9 = v23;
  *(a1 + 104) = v22;
  *(a1 + 120) = v9;
  result = *v24;
  *(a1 + 136) = v24[0];
  return result;
}

double sub_2385D5DA4(uint64_t *a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1C0();

  return result;
}

void sub_2385D5E84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875AC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - v9;
  v11 = *v1;
  v12 = *(*v1 + 16);
  if (v12)
  {
    v32[0] = v32 - v9;
    v32[1] = a1;
    v33 = v1;
    *v39 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    sub_23875ED50();
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v34 = *(v13 + 56);
    v35 = v14;
    do
    {
      v35(v7, v15, v4);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_23875AC10();
      sub_23875EEC0();
      (*(v13 - 8))(v7, v4);

      sub_23875F4C0();
      sub_23875F4F0();
      sub_23875F500();
      sub_23875F4D0();
      v15 += v34;
      --v12;
    }

    while (v12);
    v2 = v33;
    v10 = v32[0];
  }

  v16 = sub_23875B940();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v10, 1, 1, v16);
  sub_2385D8274();
  v18 = sub_23875EC60();

  v19 = 0;
  if ((*(v17 + 48))(v10, 1, v16) != 1)
  {
    v19 = sub_23875B860();
    (*(v17 + 8))(v10, v16);
  }

  v20 = [objc_allocWithZone(type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication()) initWithStoreIDs:v18 defaultLaunchURL:v19];

  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F8, &unk_238775468);
    sub_23875D600();
    v22 = *v39;
    [v21 addObserver_];

    v23 = [objc_allocWithZone(MEMORY[0x277D38B48]) initWithLinkedApplication_];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 clearColor];
    [v25 setBackgroundColor_];

    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_23875D600();
    v27 = *v39;
    [v25 setDelegate_];

    *v39 = *(v2 + 1);
    *&v39[9] = *(v2 + 17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
    MEMORY[0x23EE62DC0](&v37);
    v28 = v37;
    if (v38)
    {
      v28 = INFINITY;
    }

    [v25 sizeThatFits_];
    v29 = v2[5];
    v30 = v2[7];
    *&v39[8] = v2[6];
    *&v39[16] = v30;
    v39[24] = *(v2 + 64);
    v40 = v29;
    *v39 = v29;
    v37 = v31;
    v38 = 0;
    sub_2385B2CA0(&v40, v36);

    sub_23875E2F0();

    sub_2385BBC90(&v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2385D63A4(void *a1)
{
  v8[0] = *(v1 + 8);
  *(v8 + 9) = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
  MEMORY[0x23EE62DC0](&v6);
  v3 = v6;
  if (v7)
  {
    v3 = INFINITY;
  }

  [a1 sizeThatFits_];
  v8[0] = *(v1 + 40);
  *(v8 + 9) = *(v1 + 49);
  v6 = v4;
  v7 = 0;
  return sub_23875E2F0();
}

void sub_2385D645C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10408, &qword_238775478);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  if (a1)
  {
    v16 = [a1 storeIdentifier];
    if (v16)
    {
      v32 = v16;
      v17 = v16;
      sub_2385D6884(&v32, v1, v15);
    }

    else
    {
      v18 = sub_23875AC40();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    }

    v31 = a1;
    sub_23843981C(v15, v11, &qword_27DF10408, &qword_238775478);
    v19 = sub_23875AC40();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v11, 1, v19) == 1)
    {
      sub_238439884(v11, &qword_27DF10408, &qword_238775478);
      v22 = sub_23875B940();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      v23 = 0;
    }

    else
    {
      sub_23875AC30();
      (*(v20 + 8))(v11, v19);
      v24 = sub_23875B940();
      v25 = *(v24 - 8);
      v23 = 0;
      if ((*(v25 + 48))(v5, 1, v24) != 1)
      {
        v23 = sub_23875B860();
        (*(v25 + 8))(v5, v24);
      }
    }

    v26 = v31;
    [v31 setDefaultLaunchURL_];

    sub_23843981C(v15, v8, &qword_27DF10408, &qword_238775478);
    if (v21(v8, 1, v19) == 1)
    {
      sub_238439884(v8, &qword_27DF10408, &qword_238775478);
    }

    else
    {
      sub_23875AC20();
      v28 = v27;
      (*(v20 + 8))(v8, v19);
      if (v28)
      {
        v29 = sub_23875EA50();

LABEL_14:
        [v26 setCustomProductPageIdentifier_];

        sub_238439884(v15, &qword_27DF10408, &qword_238775478);
        return;
      }
    }

    v29 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_2385D6884(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = sub_23875AC40();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_23875ED50();
  v18 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent);
  v21 = *(v10 + 16);
  if (v21)
  {
    v16 = a3;
    v17 = v3;
    v11 = 0;
    v20 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = v7 + 16;
    while (v11 < *(v10 + 16))
    {
      (*(v7 + 16))(v9, v20 + *(v7 + 72) * v11, v23);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = sub_23875AC10();
      v13 = [v22 integerValue];

      if (v12 == v13)
      {
        a3 = v16;
        (*(v7 + 32))(v16, v9, v23);
        v14 = 0;
        goto LABEL_13;
      }

      ++v11;
      (*(v7 + 8))(v9, v23);
      if (v21 == v11)
      {
        v14 = 1;
        a3 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
LABEL_13:
    (*(v7 + 56))(a3, v14, 1, v23);
  }
}

uint64_t sub_2385D6C10(void *a1)
{
  v10 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 40);
  v3 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 56);
  v4 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 64);
  v5 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 24);
  v6 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 32);
  v14 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 8);
  v15 = v5;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
  MEMORY[0x23EE62DC0](&v12);
  v7 = v12;
  if (v13)
  {
    v7 = INFINITY;
  }

  [a1 sizeThatFits_];
  v14 = v11;
  v15 = v3;
  v16 = v4;
  v12 = v8;
  v13 = 0;
  return sub_23875E2F0();
}

void sub_2385D6EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_238763300;
  v10 = *MEMORY[0x277D383D8];
  *(v9 + 32) = *MEMORY[0x277D383D8];
  *(v9 + 40) = sub_23875EA80();
  *(v9 + 48) = v11;
  v12 = *MEMORY[0x277D38390];
  *(v9 + 56) = *MEMORY[0x277D38390];
  *(v9 + 64) = 0x746E61686372656DLL;
  v13 = *MEMORY[0x277D384B8];
  *(v9 + 72) = 0xEB00000000707041;
  *(v9 + 80) = v13;
  strcpy((v9 + 88), "orderDetails");
  *(v9 + 101) = 0;
  *(v9 + 102) = -5120;
  v14 = v10;
  v15 = v12;
  v16 = v13;
  v17 = sub_23854B138(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v17;
  sub_2385C33E4(v8, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v30);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];

  sub_23843981C(a3, v6, &qword_27DF0D040, &qword_2387676A0);
  v22 = sub_23875B940();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v6, 1, v22) != 1)
  {
    v24 = sub_23875B860();
    (*(v23 + 8))(v6, v22);
  }

  v25 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v29.receiver = v26;
  v29.super_class = v25;
  objc_msgSendSuper2(&v29, sel_openApplication_withLaunchOptions_launchURL_, v27, v28, v24);
}

id sub_2385D7498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (a1)
  {
    sub_2385D8274();
    v9 = sub_23875EC60();
  }

  else
  {
    v9 = 0;
  }

  sub_23843981C(a2, v8, &qword_27DF0D040, &qword_2387676A0);
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_23875B860();
    (*(v11 + 8))(v8, v10);
  }

  v13 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v17.receiver = v3;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithStoreIDs_defaultLaunchURL_, v9, v12);

  v15 = v14;
  sub_238439884(a2, &qword_27DF0D040, &qword_2387676A0);
  if (v15)
  {
  }

  return v15;
}

id sub_2385D777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  if (a1)
  {
    sub_2385D8274();
    v11 = sub_23875EC60();

    if (a2)
    {
LABEL_3:
      v12 = sub_23875EC60();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  sub_23843981C(a3, v10, &qword_27DF0D040, &qword_2387676A0);
  v13 = sub_23875B940();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_23875B860();
    (*(v14 + 8))(v10, v13);
  }

  v16 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithStoreIDs_systemAppBundleIdentifiers_defaultLaunchURL_, v11, v12, v15);

  v18 = v17;
  sub_238439884(a3, &qword_27DF0D040, &qword_2387676A0);
  if (v18)
  {
  }

  return v18;
}

id sub_2385D7ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  if (a1)
  {
    v11 = sub_23875EC60();

    if (a2)
    {
LABEL_3:
      sub_2385D8274();
      v12 = sub_23875EC60();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  sub_23843981C(a3, v10, &qword_27DF0D040, &qword_2387676A0);
  v13 = sub_23875B940();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_23875B860();
    (*(v14 + 8))(v10, v13);
  }

  v16 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithApplicationIdentifiers_storeIDs_defaultLaunchURL_, v11, v12, v15);

  v18 = v17;
  sub_238439884(a3, &qword_27DF0D040, &qword_2387676A0);
  if (v18)
  {
  }

  return v18;
}

id sub_2385D7E58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2385D7EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2385D7F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2385D8040@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + 64);
  v4 = *v1;
  v15 = v1[1];
  v16 = v3;
  v14 = v4;
  v5 = type metadata accessor for OrderLinkedAppViewIOS.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent];
  *v7 = v14;
  v8 = v17;
  v10 = v15;
  v9 = v16;
  v7[64] = v18;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  *(v7 + 1) = v10;
  sub_2385D823C(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2385D80F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385D82C0(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2385D8158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385D82C0(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2385D81BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2385D82C0(a1, a2, a3);
  sub_23875D120();
  __break(1u);
}

unint64_t sub_2385D81E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF103E8;
  if (!qword_27DF103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF103E8);
  }

  return result;
}

unint64_t sub_2385D8274()
{
  result = qword_27DF0B0A0;
  if (!qword_27DF0B0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0B0A0);
  }

  return result;
}

unint64_t sub_2385D82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10400;
  if (!qword_27DF10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10400);
  }

  return result;
}

unint64_t sub_2385D831C()
{
  result = qword_27DF10410;
  if (!qword_27DF10410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10418, &qword_238775480);
    sub_2385D83A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10410);
  }

  return result;
}

unint64_t sub_2385D83A8()
{
  result = qword_27DF10420;
  if (!qword_27DF10420)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10428, &qword_238775488);
    sub_2385D81E8(v1, v2, v3);
    sub_2385D8434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10420);
  }

  return result;
}

unint64_t sub_2385D8434()
{
  result = qword_27DF10430;
  if (!qword_27DF10430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10438, &unk_238775490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10430);
  }

  return result;
}

uint64_t sub_2385D8500(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsShippingTracking.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385D8594(uint64_t a1)
{
  sub_2385D87D0(319, &qword_27DF10460, type metadata accessor for OrderProviderLogoButton.ViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23875B940();
    if (v2 <= 0x3F)
    {
      sub_23875AD80();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385D86C8(uint64_t a1)
{
  type metadata accessor for OrderProviderLogoButton.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0AB68, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2385D87D0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385D87D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385D885C(uint64_t a1)
{
  result = sub_23875B940();
  if (v2 <= 0x3F)
  {
    result = sub_23875AF90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385D88F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875D990();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385DED64(a1, a2, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  v8 = *(type metadata accessor for OrderDetailsShippingTracking_iOS(0) + 20);
  v15[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(a2 + v8) = v16;
  *&v16 = 0x4051800000000000;
  v9 = *MEMORY[0x277CE0AA0];
  v10 = *(v5 + 104);
  v11 = v10(v7, v9, v4);
  sub_23845A940(v11, v12, v13);
  sub_23875C540();
  *&v16 = 0x402C000000000000;
  v10(v7, v9, v4);
  sub_23875C540();
  *&v16 = 0x4010000000000000;
  v10(v7, v9, v4);
  return sub_23875C540();
}

uint64_t sub_2385D8AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385DEDEC(v1, v5, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  return sub_2385D88F4(v5, a1);
}

uint64_t sub_2385D8B8C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (v5 || (sub_23875F630() & 1) != 0)
  {
    v6 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v6 || (sub_23875F630()) && (sub_23875B890())
    {

      JUMPOUT(0x23EE5FA60);
    }
  }

  return 0;
}

void sub_2385D8C60(uint64_t a1)
{
  v1 = sub_23875C6D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderProviderLogoButton(0);
  sub_2384D51B0(v4);
  type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  sub_23875C6A0();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  strcpy((v7 + 64), "goToPlatform");
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 77) = 0;
  *(v7 + 78) = -5120;
  *(v7 + 80) = v11;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v12 = v8;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v15;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385DEEA8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

void sub_2385D9038(char *a1@<X0>, char *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v8 = *(type metadata accessor for OrderProviderLogoButton.ViewModel(0) + 28);
  v9 = type metadata accessor for OrderProviderLogo(0);
  v10 = v9[6];
  v11 = sub_23875AF90();
  (*(*(v11 - 8) + 16))(&a2[v10], &a1[v8], v11);
  v12 = type metadata accessor for OrderProviderLogoButton(0);
  v13 = *&a1[*(v12 + 20)];
  v14 = *&a1[*(v12 + 24)];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  sub_23875E310();
  *a2 = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v7;
  *(a2 + 3) = v6;
  *&a2[v9[7]] = v13;
  *&a2[v9[8]] = v14;
  v15 = &a2[v9[9]];
  *v15 = v20;
  *(v15 + 2) = v21;
  v16 = &a2[v9[10]];
  *v16 = swift_getKeyPath(aP_9);
  v16[40] = 0;
  v17 = &a2[v9[11]];
  *v17 = swift_getKeyPath(aP_10);
  v17[40] = 0;
  v18 = v9[12];
  *&a2[v18] = swift_getKeyPath(a0_6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v19 = v9[13];
  *&a2[v19] = swift_getKeyPath(byte_238775688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385D9284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = sub_23875C950();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10490, &qword_2387755F8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  sub_2385DEDEC(v2, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderProviderLogoButton);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_2385DED64(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OrderProviderLogoButton);
  v19 = v2;
  type metadata accessor for OrderProviderLogo(0);
  sub_2385DEEA8(&qword_27DF10498, type metadata accessor for OrderProviderLogo, &unk_238775768);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF104A0, &qword_27DF10490, &qword_2387755F8, MEMORY[0x277CDF028]);
  sub_2385DEEA8(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_23875DB30();
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2385D95F8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v55 = type metadata accessor for TrackShipmentButton(0);
  MEMORY[0x28223BE20](v55);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10510, &qword_238775830);
  MEMORY[0x28223BE20](v58);
  v56 = v46 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10518, &qword_238775838);
  MEMORY[0x28223BE20](v54);
  v47 = (v46 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10520, &qword_238775840);
  MEMORY[0x28223BE20](v50);
  v52 = v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10528, &qword_238775848);
  MEMORY[0x28223BE20](v51);
  v48 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10530, &qword_238775850);
  MEMORY[0x28223BE20](v11);
  v53 = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - v14;
  v16 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  sub_23843981C(v2, v15, &qword_27DF0D5E0, &qword_23876D620);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_238439884(v15, &qword_27DF0D5E0, &qword_23876D620);
    v21 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
    v22 = *(v21 + 20);
    v23 = sub_23875B940();
    (*(*(v23 - 8) + 16))(v4, v20 + v22, v23);
    v24 = *(v21 + 24);
    v25 = v55;
    v26 = *(v55 + 20);
    v27 = sub_23875AD80();
    (*(*(v27 - 8) + 16))(&v4[v26], v20 + v24, v27);
    v28 = *(v25 + 24);
    *&v4[v28] = swift_getKeyPath(a8_2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    v29 = &v4[*(v25 + 28)];
    *v29 = swift_getKeyPath(byte_238775888);
    v29[8] = 0;
    sub_2385DEDEC(v4, v56, type metadata accessor for TrackShipmentButton);
    swift_storeEnumTagMultiPayload();
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton, &unk_238775960);
    sub_23875D1B0();
    v30 = type metadata accessor for TrackShipmentButton;
    v31 = v4;
  }

  else
  {
    v46[1] = v11;
    sub_2385DED64(v15, v19, type metadata accessor for OrderProviderLogoButton.ViewModel);
    v60 = *(v2 + *(type metadata accessor for OrderDetailsShippingTracking_iOS(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
    sub_23875E1B0();
    if (v59)
    {
      v32 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10560, &qword_2387758C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763B60;
      v34 = sub_23875D740();
      *(inited + 32) = v34;
      v35 = sub_23875D760();
      *(inited + 33) = v35;
      v36 = sub_23875D750();
      sub_23875D750();
      if (sub_23875D750() != v34)
      {
        v36 = sub_23875D750();
      }

      sub_23875D750();
      if (sub_23875D750() != v35)
      {
        v36 = sub_23875D750();
      }

      v37 = v56;
      v38 = v48;
      *v48 = v36;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10568, &qword_2387758C8);
      sub_2385D9F28(v2, v32, v38 + *(v39 + 44));
      v40 = v49;
      sub_2384396E4(v38, v49, &qword_27DF10528, &qword_238775848);
      sub_23843981C(v40, v52, &qword_27DF10528, &qword_238775848);
      swift_storeEnumTagMultiPayload();
      sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848, MEMORY[0x277CDD828]);
      sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838, MEMORY[0x277CE1138]);
      v41 = v53;
      sub_23875D1B0();
      sub_238439884(v40, &qword_27DF10528, &qword_238775848);
    }

    else
    {
      v42 = sub_23875CE60();
      v43 = v47;
      *v47 = v42;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10558, &qword_2387758B8);
      sub_2385DB450(v20, v19, v43 + *(v44 + 44));
      sub_23843981C(v43, v52, &qword_27DF10518, &qword_238775838);
      swift_storeEnumTagMultiPayload();
      sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848, MEMORY[0x277CDD828]);
      sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838, MEMORY[0x277CE1138]);
      v41 = v53;
      sub_23875D1B0();
      sub_238439884(v43, &qword_27DF10518, &qword_238775838);
      v37 = v56;
      v32 = v19;
    }

    sub_23843981C(v41, v37, &qword_27DF10530, &qword_238775850);
    swift_storeEnumTagMultiPayload();
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton, &unk_238775960);
    sub_23875D1B0();
    sub_238439884(v41, &qword_27DF10530, &qword_238775850);
    v30 = type metadata accessor for OrderProviderLogoButton.ViewModel;
    v31 = v32;
  }

  return sub_2385DF5F4(v31, v30);
}

double sub_2385D9F28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10570, &qword_2387758D0);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10578, &qword_2387758D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10580, &qword_2387758E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v21 = sub_23875CE60();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10588, &qword_2387758E8);
  sub_2385DA324(a1, a2, &v21[*(v22 + 44)]);
  *v15 = sub_23875D030();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10590, &qword_2387758F0);
  sub_2385DA8E0(a1, a2, &v15[*(v23 + 44)]);
  *v9 = sub_23875D030();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10598, &qword_2387758F8);
  sub_2385DAF90(a1, a2, &v9[*(v24 + 44)]);
  sub_23843981C(v21, v18, &qword_27DF10580, &qword_2387758E0);
  v25 = v18;
  v31 = v18;
  sub_23843981C(v15, v12, &qword_27DF10578, &qword_2387758D8);
  v26 = v32;
  sub_23843981C(v9, v32, &qword_27DF10570, &qword_2387758D0);
  v27 = v25;
  v28 = v34;
  sub_23843981C(v27, v34, &qword_27DF10580, &qword_2387758E0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105A0, &qword_238775900);
  sub_23843981C(v12, v28 + *(v29 + 48), &qword_27DF10578, &qword_2387758D8);
  sub_23843981C(v26, v28 + *(v29 + 64), &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v9, &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v15, &qword_27DF10578, &qword_2387758D8);
  sub_238439884(v21, &qword_27DF10580, &qword_2387758E0);
  sub_238439884(v26, &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v12, &qword_27DF10578, &qword_2387758D8);
  sub_238439884(v31, &qword_27DF10580, &qword_2387758E0);

  return result;
}

double sub_2385DA324@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B0, &qword_238775910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = type metadata accessor for TrackShipmentButton(0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v18 = *(v17 + 20);
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 16))(v16, a1 + v18, v19);
  v20 = *(v17 + 24);
  v21 = v11[5];
  v22 = sub_23875AD80();
  (*(*(v22 - 8) + 16))(&v16[v21], a1 + v20, v22);
  v23 = v11[6];
  *&v16[v23] = swift_getKeyPath(a8_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[7]];
  *v24 = swift_getKeyPath(byte_238775888);
  v24[8] = 0;
  type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v25 = v30[1];
  *v10 = sub_23875CE60();
  *(v10 + 1) = v25;
  v10[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B8, &qword_238775918);
  sub_2385DAC8C(a1, v30[0], &v10[*(v26 + 44)]);
  sub_2385DEDEC(v16, v13, type metadata accessor for TrackShipmentButton);
  sub_23843981C(v10, v7, &qword_27DF105B0, &qword_238775910);
  sub_2385DEDEC(v13, a3, type metadata accessor for TrackShipmentButton);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105D0, &qword_238775930);
  v28 = a3 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_23843981C(v7, a3 + *(v27 + 64), &qword_27DF105B0, &qword_238775910);
  sub_238439884(v10, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v16, type metadata accessor for TrackShipmentButton);
  sub_238439884(v7, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v13, type metadata accessor for TrackShipmentButton);

  return result;
}

void sub_2385DA6E4(uint64_t a1@<X8>)
{
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
  sub_23875D930();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v10, v12, v4 & 1);

  sub_23875D440();
  v19 = sub_23875DA20();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_2384397FC(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v24;
}

double sub_2385DA8E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B0, &qword_238775910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for TrackShipmentButton(0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v18 = *(v17 + 20);
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 16))(v16, a1 + v18, v19);
  v20 = *(v17 + 24);
  v21 = v11[5];
  v22 = sub_23875AD80();
  (*(*(v22 - 8) + 16))(&v16[v21], a1 + v20, v22);
  v23 = v11[6];
  *&v16[v23] = swift_getKeyPath(a8_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[7]];
  *v24 = swift_getKeyPath(byte_238775888);
  v24[8] = 0;
  type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v25 = v29[1];
  *v10 = sub_23875CE60();
  *(v10 + 1) = v25;
  v10[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B8, &qword_238775918);
  sub_2385DAC8C(a1, v29[0], &v10[*(v26 + 44)]);
  sub_2385DEDEC(v16, v13, type metadata accessor for TrackShipmentButton);
  sub_23843981C(v10, v7, &qword_27DF105B0, &qword_238775910);
  sub_2385DEDEC(v13, a3, type metadata accessor for TrackShipmentButton);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105C0, &qword_238775920);
  sub_23843981C(v7, a3 + *(v27 + 48), &qword_27DF105B0, &qword_238775910);
  sub_238439884(v10, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v16, type metadata accessor for TrackShipmentButton);
  sub_238439884(v7, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v13, type metadata accessor for TrackShipmentButton);

  return result;
}

void sub_2385DAC8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for OrderProviderLogoButton(0);
  MEMORY[0x28223BE20](v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385DA6E4(&v28);
  v12 = v28;
  v13 = v29;
  v24 = v30;
  sub_2385DEDEC(a2, v11, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v14 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v15 = v28;
  sub_23875C550();
  v16 = v28;
  v27 = *(a1 + *(v14 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v17 = v28;
  *&v11[v7[5]] = v15;
  *&v11[v7[6]] = v16;
  v18 = v29;
  v19 = &v11[v7[7]];
  *v19 = v17;
  *(v19 + 2) = v18;
  v20 = v7[8];
  *&v11[v20] = swift_getKeyPath(a8_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v21 = v26;
  sub_2385DEDEC(v11, v26, type metadata accessor for OrderProviderLogoButton);
  *a4 = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v24;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105C8, &qword_238775928);
  sub_2385DEDEC(v21, a4 + *(v22 + 48), type metadata accessor for OrderProviderLogoButton);
  sub_23843980C(v12, *(&v12 + 1), v13);

  sub_2385DF5F4(v11, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v21, type metadata accessor for OrderProviderLogoButton);
  sub_2384397FC(v12, *(&v12 + 1), v13);
}

void sub_2385DAF90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for OrderProviderLogoButton(0);
  MEMORY[0x28223BE20](v5);
  v42 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  v10 = type metadata accessor for TrackShipmentButton(0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v36[-v13];
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v16 = *(v15 + 20);
  v17 = sub_23875B940();
  (*(*(v17 - 8) + 16))(v14, a1 + v16, v17);
  v18 = *(v15 + 24);
  v19 = v10[5];
  v20 = sub_23875AD80();
  (*(*(v20 - 8) + 16))(&v14[v19], a1 + v18, v20);
  v21 = v10[6];
  *&v14[v21] = swift_getKeyPath(a8_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v22 = &v14[v10[7]];
  *v22 = swift_getKeyPath(byte_238775888);
  v22[8] = 0;
  sub_2385DA6E4(&v44);
  v23 = v44;
  v37 = v45;
  v38 = v46;
  sub_2385DEDEC(a2, v9, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v24 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v25 = v44;
  sub_23875C550();
  v26 = v44;
  v43 = *(a1 + *(v24 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v27 = v44;
  *&v9[v5[5]] = v25;
  *&v9[v5[6]] = v26;
  v28 = v45;
  v29 = &v9[v5[7]];
  *v29 = v27;
  *(v29 + 2) = v28;
  v30 = v5[8];
  *&v9[v30] = swift_getKeyPath(a8_2);
  swift_storeEnumTagMultiPayload();
  v31 = v41;
  sub_2385DEDEC(v14, v41, type metadata accessor for TrackShipmentButton);
  v32 = v42;
  sub_2385DEDEC(v9, v42, type metadata accessor for OrderProviderLogoButton);
  v33 = v40;
  sub_2385DEDEC(v31, v40, type metadata accessor for TrackShipmentButton);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105A8, &qword_238775908);
  v35 = v33 + *(v34 + 48);
  *v35 = v23;
  LOBYTE(v24) = v37;
  *(v35 + 16) = v37;
  *(v35 + 24) = v38;
  sub_2385DEDEC(v32, v33 + *(v34 + 64), type metadata accessor for OrderProviderLogoButton);
  sub_23843980C(v23, *(&v23 + 1), v24);

  sub_2385DF5F4(v9, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v14, type metadata accessor for TrackShipmentButton);
  sub_2385DF5F4(v32, type metadata accessor for OrderProviderLogoButton);
  sub_2384397FC(v23, *(&v23 + 1), v24);

  sub_2385DF5F4(v31, type metadata accessor for TrackShipmentButton);
}

void sub_2385DB450(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = type metadata accessor for OrderProviderLogoButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for TrackShipmentButton(0);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  sub_23875ED50();
  v34[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v18 = *(v17 + 20);
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 16))(v16, a1 + v18, v19);
  v20 = *(v17 + 24);
  v21 = v11[5];
  v22 = sub_23875AD80();
  (*(*(v22 - 8) + 16))(&v16[v21], a1 + v20, v22);
  v23 = v11[6];
  *&v16[v23] = swift_getKeyPath(a8_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[7]];
  *v24 = swift_getKeyPath(byte_238775888);
  v24[8] = 0;
  sub_2385DEDEC(a2, v10, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v25 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v26 = v36;
  sub_23875C550();
  v27 = v36;
  v38 = *(a1 + *(v25 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v28 = v36;
  *&v10[v5[5]] = v26;
  *&v10[v5[6]] = v27;
  v29 = v37;
  v30 = &v10[v5[7]];
  *v30 = v28;
  *(v30 + 2) = v29;
  v31 = v5[8];
  *&v10[v31] = swift_getKeyPath(a8_2);
  swift_storeEnumTagMultiPayload();
  sub_2385DEDEC(v16, v13, type metadata accessor for TrackShipmentButton);
  sub_2385DEDEC(v10, v7, type metadata accessor for OrderProviderLogoButton);
  v32 = v35;
  sub_2385DEDEC(v13, v35, type metadata accessor for TrackShipmentButton);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105D8, &qword_238775938);
  sub_2385DEDEC(v7, v32 + *(v33 + 48), type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v10, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v16, type metadata accessor for TrackShipmentButton);
  sub_2385DF5F4(v7, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v13, type metadata accessor for TrackShipmentButton);
}

uint64_t sub_2385DB894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_23875D2E0();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrackShipmentButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10608, &qword_2387759B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10610, &qword_2387759B8);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  sub_2385DEDEC(v2, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShipmentButton);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_2385DED64(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TrackShipmentButton);
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12EE0, &unk_2387759C0);
  sub_2384D0E10();
  sub_23875E200();
  sub_23875D2D0();
  v19 = MEMORY[0x277CDF028];
  v20 = sub_23843A3E8(&qword_27DF10618, &qword_27DF10608, &qword_2387759B0, MEMORY[0x277CDF028]);
  v21 = sub_2385DEEA8(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_23875DB30();
  (*(v26 + 8))(v5, v3);
  (*(v10 + 8))(v12, v9);
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v30 = v9;
  v31 = v3;
  v32 = v20;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, v19);
  v22 = v24;
  sub_23875DB50();
  return (*(v25 + 8))(v16, v22);
}

double sub_2385DBD0C(uint64_t a1)
{
  v1 = sub_23875C6D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TrackShipmentButton(0);
  sub_2384D51B0(v4);
  sub_23875C6A0();
  (*(v2 + 8))(v4, v1);

  return result;
}

void sub_2385DBE60(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_2385DBF60();
  v13 = v2;
  sub_2384397A8(v12, v2, v3);
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath(aP_11, v12, v13);

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
}

uint64_t sub_2385DBF60()
{
  v1 = sub_23875AD80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrackShipmentButton(0);
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
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

double sub_2385DC1B4(uint64_t a1)
{
  v2 = type metadata accessor for TrackShipmentButton(0);
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

  sub_2385DEDEC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShipmentButton);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2385DED64(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TrackShipmentButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

void sub_2385DC3B0(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1 + *(type metadata accessor for TrackShipmentButton(0) + 28);
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;

    sub_23875EFF0();
    v8 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2385A9698(v7, 0);
    (*(v3 + 8))(v5, v2);
  }

  v9 = [objc_opt_self() generalPasteboard];
  v10 = sub_23875B860();
  [v9 setURL_];
}

double sub_2385DC5B0()
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

uint64_t sub_2385DC750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v43 = sub_23875C450();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v44 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v44);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OrderProviderLogo(0);
  v38 = *(v42 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104D0, &qword_2387757B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  *v11 = sub_23875D020();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104D8, &qword_2387757C0) + 44)];
  sub_2385DCD28(v1, v46);
  v39 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104E0, &qword_2387757C8);
  sub_2385DF294();
  sub_23875DBF0();
  v48[2] = v46[2];
  v49[0] = v47[0];
  *(v49 + 9) = *(v47 + 9);
  v48[0] = v46[0];
  v48[1] = v46[1];
  sub_238439884(v48, &qword_27DF104E0, &qword_2387757C8);
  sub_2385DEDEC(v1, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderProviderLogo);
  v13 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v14 = swift_allocObject();
  sub_2385DED64(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for OrderProviderLogo);
  v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10500, &unk_2387757E8) + 36)];
  sub_23875C6E0();
  sub_23875ED60();

  *v15 = &unk_2387757E0;
  *(v15 + 1) = v14;
  v16 = v42;
  v17 = *(v2 + *(v42 + 28));
  v18 = *(v2 + *(v42 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2387632F0;
  sub_2384D4E38(v6);
  v20 = v41;
  v21 = v37;
  v22 = v43;
  (*(v41 + 104))(v37, *MEMORY[0x277CDF3D0], v43);
  LOBYTE(v14) = sub_23875C440();
  v23 = *(v20 + 8);
  v23(v21, v22);
  v23(v6, v22);
  v24 = 16;
  if ((v14 & 1) == 0)
  {
    v24 = 0;
  }

  v25 = *(v2 + v24);

  *(v19 + 32) = v25;
  *(v19 + 40) = v26;
  v27 = *(v16 + 24);
  v28 = v44;
  v29 = *(v44 + 24);
  v30 = sub_23875AF90();
  v31 = v40;
  (*(*(v30 - 8) + 16))(&v40[v29], v2 + v27, v30);
  v32 = sub_2387588A0();
  sub_2384D4E38(v31 + v28[9]);
  sub_2384D5200(v31 + v28[10]);
  *v31 = v17;
  v31[1] = v18;
  v31[2] = v19;
  *(v31 + v28[7]) = 0;
  *(v31 + v28[8]) = v32;
  v33 = v45;
  sub_2384396E4(v39, v45, &qword_27DF104D0, &qword_2387757B8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10508, &qword_2387757F8);
  return sub_2385DED64(v31, v33 + *(v34 + 52), type metadata accessor for OrderImageModel);
}

__n128 sub_2385DCD28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v8 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(type metadata accessor for OrderProviderLogo(0) + 36));
  v10 = *v9;
  v11 = *(v9 + 2);
  v25[0] = v10;
  *&v25[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  MEMORY[0x23EE62DC0](v23, v12);
  if (*&v23[0])
  {
    v13 = *&v23[0];
    sub_23875E0C0();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v14 = sub_23875E150();
    v19[1] = v8;
    v15 = v14;

    (*(v5 + 8))(v7, v4);
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v23[0]) = 1;
    *(v25 + 6) = v25[5];
    *(&v25[1] + 6) = v25[6];
    *(&v25[2] + 6) = v26;
    v20[0] = v15;
    v20[1] = 0;
    *v21 = 1;
    *&v21[2] = v25[0];
    *&v21[18] = v25[1];
    *&v21[34] = v25[2];
    *&v21[48] = *(&v26 + 1);
    v25[0] = v15;
    v25[1] = *v21;
    v25[2] = *&v21[16];
    v25[3] = *&v21[32];
    *&v25[4] = *(&v26 + 1);
    v22 = 0;
    BYTE8(v25[4]) = 0;
    sub_23843981C(v20, v23, &qword_27DF0A150, &unk_238766130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A150, &unk_238766130);
    sub_238464B48();
    sub_23875D1B0();

    sub_238439884(v20, &qword_27DF0A150, &unk_238766130);
  }

  else
  {
    v16 = sub_23875E020();
    LOBYTE(v20[0]) = 1;
    *&v25[0] = v16;
    BYTE8(v25[4]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A150, &unk_238766130);
    sub_238464B48();
    sub_23875D1B0();
  }

  v25[3] = v24[0];
  *(&v25[3] + 9) = *(v24 + 9);
  v25[0] = v23[0];
  v25[1] = v23[1];
  v17 = v25[3];
  *(a2 + 32) = v23[2];
  *(a2 + 48) = v17;
  *(a2 + 57) = *(&v25[3] + 9);
  result = v25[1];
  *a2 = v25[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_2385DD0A8(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_23875ED50();
  v1[8] = sub_23875ED40();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_2385DD158;

  return sub_2385DD358();
}

uint64_t sub_2385DD158(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385DD29C, v3, v2);
}

uint64_t sub_2385DD29C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = (v2 + *(type metadata accessor for OrderProviderLogo(0) + 36));
  v4 = *v3;
  v5 = *(v3 + 2);
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  sub_23875E2F0();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2385DD358()
{
  v1[13] = v0;
  v2 = type metadata accessor for OrderProviderLogo(0);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v1[18] = swift_task_alloc();
  v4 = sub_23875C450();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for OrderImageModel(0);
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v1[25] = *(v6 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_23875ED50();
  v1[28] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v1[29] = v8;
  v1[30] = v7;

  return MEMORY[0x2822009F8](sub_2385DD564, v8, v7);
}

uint64_t sub_2385DD564()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v43 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v6 + v7[7]);
  v9 = *(v6 + v7[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2387632F0;
  sub_2384D4E38(v2);
  (*(v4 + 104))(v3, *MEMORY[0x277CDF3D0], v5);
  v10 = sub_23875C440();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v11(v2, v5);
  v12 = 16;
  if ((v10 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 8;
  if (v10)
  {
    v13 = 24;
  }

  v14 = *(v6 + v13);
  *(v44 + 32) = *(v6 + v12);
  *(v44 + 40) = v14;
  v42 = v7[6];
  v15 = v43[6];
  v16 = sub_23875AF90();
  v17 = *(*(v16 - 8) + 16);

  v17(&v1[v15], v6 + v42, v16);
  v18 = sub_2387588A0();
  sub_2384D4E38(&v1[v43[9]]);
  sub_2384D5200(&v1[v43[10]]);
  *v1 = v8;
  *(v1 + 1) = v9;
  *(v1 + 2) = v44;
  v1[v43[7]] = 0;
  *&v1[v43[8]] = v18;
  sub_2384D5228(v0 + 16);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  v21 = (*(v20 + 24))(v1, v19, v20);
  v22 = *(v0 + 216);
  if (v21)
  {
    v23 = v21;

    v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v23 scale:0 orientation:1.0];

    sub_2385DF5F4(v22, type metadata accessor for OrderImageModel);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v25 = *(v0 + 8);

    return v25(v24);
  }

  else
  {
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 192);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v33 = *(v0 + 120);
    v32 = *(v0 + 128);
    v34 = *(v0 + 104);
    sub_23875ED60();
    v35 = sub_23875ED80();
    (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
    sub_2385DEDEC(v22, v27, type metadata accessor for OrderImageModel);
    sub_2385DEDEC(v34, v30, type metadata accessor for OrderProviderLogo);
    sub_23845C998(v0 + 16, v0 + 56);
    v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v37 = (v28 + *(v33 + 80) + v36) & ~*(v33 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_2385DED64(v27, v38 + v36, type metadata accessor for OrderImageModel);
    sub_2385DED64(v30, v38 + v37, type metadata accessor for OrderProviderLogo);
    sub_2384D5830((v0 + 56), v38 + ((v32 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    v39 = sub_2385C9244(0, 0, v31, &unk_238775818, v38);
    *(v0 + 248) = v39;
    sub_238439884(v31, &unk_27DF09920, &qword_238764D80);
    v40 = swift_task_alloc();
    *(v0 + 256) = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v40 = v0;
    v40[1] = sub_2385DDA88;

    return MEMORY[0x282200460](v0 + 96, v39, v41);
  }
}

uint64_t sub_2385DDA88()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_2385DDBCC, v3, v2);
}

uint64_t sub_2385DDBCC()
{
  v1 = v0[27];

  sub_2385DF5F4(v1, type metadata accessor for OrderImageModel);
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2385DDCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_23875C1E0();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = sub_238758350();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385DDE28, 0, 0);
}

uint64_t sub_2385DDE28()
{
  v1 = v0[8];
  v0[21] = *(v1 + *(type metadata accessor for OrderImageModel(0) + 32));
  v0[22] = *v1;
  v0[23] = v1[1];
  sub_23875ED50();
  v0[24] = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385DDEE4, v3, v2);
}

uint64_t sub_2385DDEE4()
{

  type metadata accessor for OrderProviderLogo(0);
  sub_2384D55B0(v0 + 16);

  return MEMORY[0x2822009F8](sub_2385DDF68, 0, 0);
}

uint64_t sub_2385DDF68()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 16);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_2385DE0A0;

  return v7(v4, v2, v3);
}

uint64_t sub_2385DE0A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_2385DE66C;
  }

  else
  {
    v4 = sub_2385DE1B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2385DE1B4()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    if (*(v1 + 16))
    {
      (*(*(v0 + 128) + 16))(*(v0 + 152), v1 + ((*(*(v0 + 128) + 80) + 32) & ~*(*(v0 + 128) + 80)), *(v0 + 120));
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    (*(v8 + 56))(v6, v2, 1, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  sub_2384396E4(*(v0 + 152), v9, &qword_27DF0AF98, &unk_238775820);
  sub_23843981C(v9, v10, &qword_27DF0AF98, &unk_238775820);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v13 = *(v0 + 144);
    sub_238439884(*(v0 + 160), &qword_27DF0AF98, &unk_238775820);
    v14 = v13;
LABEL_23:
    sub_238439884(v14, &qword_27DF0AF98, &unk_238775820);
    v43 = 0;
    goto LABEL_24;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  sub_238758330();
  v16 = v15;
  sub_238758330();
  if (v16 / v17 > 5.0)
  {
    sub_23875C180();
    v18 = sub_23875C1B0();
    v19 = sub_23875EFE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2383F8000, v18, v19, "Order provider tracking logo should have maximum aspect ratio of 5:1", v20, 2u);
      MEMORY[0x23EE64DF0](v20, -1, -1);
    }

    v21 = *(v0 + 160);
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);

    (*(v27 + 8))(v25, v26);
    (*(v23 + 8))(v22, v24);
    goto LABEL_22;
  }

  v28 = *(v0 + 176) * *(v0 + 168);
  type metadata accessor for CGImage(0);
  result = sub_238758310();
  if (v28 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  v31 = *(v0 + 168);
  if (*(v0 + 176) * v31 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v32 = *(v0 + 184) * v31;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = v30;
  v35 = MEMORY[0x23EE63A20]();
  sub_23844C954(v33, v34);
  v21 = *(v0 + 160);
  v37 = *(v0 + 128);
  v36 = *(v0 + 136);
  v38 = *(v0 + 120);
  if (!v35)
  {
    (*(v37 + 8))(*(v0 + 136), *(v0 + 120));
LABEL_22:
    v14 = v21;
    goto LABEL_23;
  }

  v39 = *(v0 + 80);
  v40 = *(v0 + 64);
  v41 = v39[3];
  v42 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v41);
  (*(v42 + 8))(v35, v40, v41, v42);
  v43 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v35 scale:0 orientation:1.0];

  (*(v37 + 8))(v36, v38);
  sub_238439884(v21, &qword_27DF0AF98, &unk_238775820);
LABEL_24:
  **(v0 + 56) = v43;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_2385DE66C()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_23875C180();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Error loading order provider logo: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  **(v0 + 56) = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2385DE8E0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v9 = a2();
  v11 = v10;
  v12 = a3();
  v14 = v13;
  v15 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  a4();
  v16 = *(v15 + 28);
  v17 = sub_23875AF90();
  result = (*(*(v17 - 8) + 16))(a5 + v16, a1, v17);
  *a5 = v9;
  a5[1] = v11;
  a5[2] = v12;
  a5[3] = v14;
  return result;
}

uint64_t sub_2385DE9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10488, &qword_2387755F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_23843981C(a1, &v24 - v12, &qword_27DF0D5E0, &qword_23876D620);
  sub_23843981C(a2, &v13[v15], &qword_27DF0D5E0, &qword_23876D620);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_238439884(v13, &qword_27DF0D5E0, &qword_23876D620);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23843981C(v13, v10, &qword_27DF0D5E0, &qword_23876D620);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_2385DF5F4(v10, type metadata accessor for OrderProviderLogoButton.ViewModel);
LABEL_8:
    v18 = &qword_27DF10488;
    v19 = &qword_2387755F0;
LABEL_23:
    sub_238439884(v13, v18, v19);
    goto LABEL_24;
  }

  sub_2385DED64(&v13[v15], v7, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v20 = *v10 == *v7 && v10[1] == v7[1];
  if (!v20 && (sub_23875F630() & 1) == 0 || (v10[2] == v7[2] ? (v21 = v10[3] == v7[3]) : (v21 = 0), !v21 && (sub_23875F630() & 1) == 0 || (sub_23875B890() & 1) == 0))
  {
    sub_2385DF5F4(v7, type metadata accessor for OrderProviderLogoButton.ViewModel);
    sub_2385DF5F4(v10, type metadata accessor for OrderProviderLogoButton.ViewModel);
    v18 = &qword_27DF0D5E0;
    v19 = &qword_23876D620;
    goto LABEL_23;
  }

  v22 = MEMORY[0x23EE5FA60](v10 + *(v4 + 28), v7 + *(v4 + 28));
  sub_2385DF5F4(v7, type metadata accessor for OrderProviderLogoButton.ViewModel);
  sub_2385DF5F4(v10, type metadata accessor for OrderProviderLogoButton.ViewModel);
  sub_238439884(v13, &qword_27DF0D5E0, &qword_23876D620);
  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  if ((sub_23875B890() & 1) == 0)
  {
LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  v17 = sub_23875AD70();
  return v17 & 1;
}

uint64_t sub_2385DED64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385DEDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385DEEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2385DEF18(uint64_t a1)
{
  type metadata accessor for OrderDetailsShippingTracking.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0A0C8, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_238462AAC(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385DF010(uint64_t a1)
{
  sub_23875AF90();
  if (v1 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0AB68, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2385DF1F8(319, &qword_27DF0FFB8, &qword_27DF0FFC0, qword_238774958, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2385DF1F8(319, &qword_27DF0B948, &qword_27DF0B950, qword_2387747F0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2385D87D0(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2385D87D0(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
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

void sub_2385DF1F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2385DF294()
{
  result = qword_27DF104E8;
  if (!qword_27DF104E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF104E0, &qword_2387757C8);
    sub_2385DF318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF104E8);
  }

  return result;
}

unint64_t sub_2385DF318()
{
  result = qword_27DF104F0;
  if (!qword_27DF104F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF104F8, &qword_2387757D0);
    sub_238464B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF104F0);
  }

  return result;
}

uint64_t sub_2385DF3A4()
{
  v2 = *(type metadata accessor for OrderProviderLogo(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238449A7C;

  return sub_2385DD0A8(v0 + v3);
}

uint64_t sub_2385DF470(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OrderImageModel(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OrderProviderLogo(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2384494A4;

  return sub_2385DDCAC(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_2385DF5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385DF674()
{
  result = qword_27DF10538;
  if (!qword_27DF10538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10530, &qword_238775850);
    sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848, MEMORY[0x277CDD828]);
    sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10538);
  }

  return result;
}

void sub_2385DF780(uint64_t a1)
{
  sub_23875B940();
  if (v1 <= 0x3F)
  {
    sub_23875AD80();
    if (v2 <= 0x3F)
    {
      sub_2385D87D0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2385DF864();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385DF864()
{
  if (!qword_27DF0F4F8)
  {
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0F4F8);
    }
  }
}

unint64_t sub_2385DF8B4()
{
  result = qword_27DF105F8;
  if (!qword_27DF105F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10600, &qword_238775958);
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton, &unk_238775960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF105F8);
  }

  return result;
}

uint64_t sub_2385DF9B8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for TrackShipmentButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_23875B940();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_23875AD80();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C6D0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_2385A9698(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385DFC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CBD0();
  *a1 = result;
  return result;
}

uint64_t sub_2385DFC70()
{
  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);
  sub_23875C2D0();

  result = v1;
  if ((~v1 & 0xF000000000000004) != 0)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      return result;
    }

    sub_2385E3728(v1);
  }

  return 0;
}

void sub_2385DFD00(char *a1@<X8>)
{
  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);
  sub_23875C2D0();

  v2 = 3;
  if ((~v3 & 0xF000000000000004) != 0)
  {
    if (v3 < 0)
    {
      v2 = v3;
    }

    else
    {
      v2 = 3;
    }

    sub_2385E3728(v3);
  }

  *a1 = v2;
}

uint64_t sub_2385DFD9C(unsigned __int8 *a1)
{
  if (*a1 != 3)
  {
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);

  return sub_23875C2E0();
}

uint64_t OrderList.init(model:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2385DFF3C;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = swift_getKeyPath(a0_7);
  *(a2 + 48) = 0;
  type metadata accessor for OrderManagementModel(0);
  sub_2385E37F4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);
  result = sub_23875C7A0();
  *(a2 + 24) = result;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_2385DFF3C()
{
  type metadata accessor for OrderSearchModel(0);
  v0 = swift_allocObject();

  return sub_2385E2CE8(v0);
}

uint64_t OrderList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v96 = sub_23875D310();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_23875CE00();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_23875D230();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderListSearchContainer(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10620, &qword_238775A30);
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v105 = &v78 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10628, &qword_238775A38);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v78 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10630, &qword_238775A40);
  MEMORY[0x28223BE20](v89);
  v85 = &v78 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10638, &qword_238775A48);
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v78 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10640, &qword_238775A50);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v106 = &v78 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10648, &qword_238775A58);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v78 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10650, &qword_238775A60);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v78 - v16;
  v17 = v2[1];
  v119 = *v2;
  v120 = v17;
  v121 = v2[2];
  v122 = *(v2 + 48);
  type metadata accessor for OrderSearchModel(0);
  sub_2385E37F4(&qword_27DF10658, type metadata accessor for OrderSearchModel, &unk_238780B3C);
  sub_23875C490();
  *(v9 + *(v7 + 20)) = swift_getKeyPath(byte_238775A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath(byte_238775AA0);
  *v9 = sub_23875C7A0();
  v9[1] = v19;
  v20 = v9 + *(v7 + 24);
  *v20 = KeyPath;
  v20[8] = 0;
  sub_23875C4A0();
  swift_getKeyPath(aX_11);
  sub_23875C7C0();

  sub_23875D220();
  v21 = sub_2385E37F4(&qword_27DF10660, type metadata accessor for OrderListSearchContainer, &unk_238780AEC);
  sub_23875DB20();

  (*(v78 + 8))(v6, v79);
  sub_2385E2400(v9);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v22 = qword_2814F1B90;
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

  v27 = sub_23875EA80();
  v29 = v28;

  v113 = v27;
  v114 = v29;
  v110 = v7;
  v111 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_2384397A8(OpaqueTypeConformance2, v31, v32);
  v34 = MEMORY[0x277D837D0];
  v35 = v81;
  v36 = v83;
  v37 = v105;
  sub_23875DC70();

  (*(v80 + 8))(v37, v36);
  v38 = v87;
  v39 = v86;
  v40 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x277CDDDC0], v88);
  v113 = v36;
  v114 = v34;
  v115 = OpaqueTypeConformance2;
  v116 = v33;
  swift_getOpaqueTypeConformance2();
  v41 = v85;
  v42 = v84;
  sub_23875DE50();
  (*(v38 + 8))(v39, v40);
  (*(v82 + 8))(v35, v42);
  v43 = swift_allocObject();
  v44 = v120;
  *(v43 + 16) = v119;
  *(v43 + 32) = v44;
  *(v43 + 48) = v121;
  *(v43 + 64) = v122;
  v45 = v89;
  v46 = (v41 + *(v89 + 36));
  *v46 = sub_2385E245C;
  v46[1] = v43;
  v46[2] = 0;
  v46[3] = 0;
  sub_2385E2464(&v119, &v113);
  v47 = v92;
  sub_23875D300();
  v48 = sub_2385E249C();
  v49 = v90;
  v50 = v96;
  sub_23875DF50();
  (*(v93 + 8))(v47, v50);
  sub_23841B0E0(v41);
  v105 = *(&v120 + 1);
  v93 = v121;
  type metadata accessor for OrderManagementModel(0);
  sub_2385E37F4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);
  sub_23875C7B0();
  swift_getKeyPath(aX_12);
  sub_23875C7C0();

  v107 = v110;
  v108 = v111;
  LOBYTE(v109) = v112;
  v51 = swift_allocObject();
  v52 = v120;
  *(v51 + 16) = v119;
  *(v51 + 32) = v52;
  *(v51 + 48) = v121;
  *(v51 + 64) = v122;
  MEMORY[0x28223BE20](v51);
  sub_2385E2464(&v119, &v113);
  v113 = v45;
  v114 = v50;
  v115 = v48;
  v116 = MEMORY[0x277CDE0D0];
  v53 = swift_getOpaqueTypeConformance2();
  v56 = sub_2385E2650(v53, v54, v55);
  v57 = v94;
  sub_23875DEB0();

  (*(v91 + 8))(v49, v57);

  sub_23875C7B0();
  swift_getKeyPath(a8_3);
  sub_23875C7C0();

  v105 = v112;
  v107 = v110;
  v108 = v111;
  v109 = v112;
  v58 = swift_allocObject();
  v59 = v120;
  *(v58 + 16) = v119;
  *(v58 + 32) = v59;
  *(v58 + 48) = v121;
  *(v58 + 64) = v122;
  sub_2385E2464(&v119, &v113);
  v60 = type metadata accessor for OrderManagementModel.ConfirmationData(0);
  v113 = v57;
  v114 = &type metadata for OrderManagementModel.ImportError;
  v115 = v53;
  v116 = v56;
  v61 = swift_getOpaqueTypeConformance2();
  v76 = sub_2385E37F4(&qword_27DF10678, type metadata accessor for OrderManagementModel.ConfirmationData, &protocol conformance descriptor for OrderManagementModel.ConfirmationData);
  v77 = sub_2385E26AC(v76, v62, v63);
  v64 = v98;
  v65 = v97;
  v66 = v106;
  sub_23875DEE0();

  (*(v95 + 8))(v66, v65);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10688, &qword_238775B48);
  v113 = v65;
  v114 = v60;
  v115 = &type metadata for OrderPreviewSheet;
  v116 = v61;
  v117 = v76;
  v118 = v77;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10690, &qword_238775B50);
  v70 = sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50, MEMORY[0x277CDD7A8]);
  v113 = v69;
  v114 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v99;
  v73 = v102;
  sub_23875DEF0();
  (*(v100 + 8))(v64, v73);
  v113 = v73;
  v114 = v67;
  v115 = v68;
  v116 = v71;
  swift_getOpaqueTypeConformance2();
  v74 = v103;
  sub_23875DE00();
  return (*(v101 + 8))(v72, v74);
}

void sub_2385E0FE4(void *a2@<X8>)
{
  swift_getKeyPath(aX_11);
  swift_getKeyPath(byte_238775D98);
  sub_23875C2D0();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_2385E1064(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_11);
  swift_getKeyPath(byte_238775D98);

  return sub_23875C2E0();
}

double sub_2385E10E8(uint64_t *a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderSearchModel(0);
  sub_2385E37F4(&qword_27DF10658, type metadata accessor for OrderSearchModel, &unk_238780B3C);
  v6 = sub_23875C490();
  v19 = *(a1 + 48);
  v7 = a1[5];
  v18 = v7;
  v8 = v19;
  if (v19 == 1)
  {
    v9 = v7;
  }

  else
  {

    sub_23875EFF0();
    v10 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v18, &qword_27DF0B760, &qword_2387688A0);
    (*(v3 + 8))(v5, v2);
    v9 = v17;
  }

  v11 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  *(v6 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context) = v9;
  v12 = v9;

  sub_2386DA510();

  if (v8)
  {
    v13 = v7;
  }

  else
  {

    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v18, &qword_27DF0B760, &qword_2387688A0);
    (*(v3 + 8))(v5, v2);
    v7 = v17;
  }

  sub_238660580(v7);

  return result;
}

uint64_t sub_2385E1408@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106C8, &unk_238775D88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v35 = *a1;
  v6 = v35;
  v33 = OrderManagementModel.ImportError.errorTitle.getter();
  v34 = v7;
  sub_2384397A8(v33, v7, v8);
  v9 = sub_23875DAA0();
  v30 = v10;
  v31 = v9;
  v28[1] = v11;
  v29 = v12;
  v35 = v6;
  sub_2385E374C(v9, v10, v11);
  v33 = sub_23875F690();
  v34 = v13;
  sub_23875DAA0();
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

  v33 = v19;
  v34 = v21;
  v22 = sub_23875DAA0();
  v24 = v23;
  LOBYTE(v19) = v25;
  sub_23875DF90();
  sub_2384397FC(v22, v24, v19 & 1);

  v26 = sub_23875DFA0();
  (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
  return sub_23875DF80();
}

double sub_2385E16B4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);

  return result;
}

uint64_t sub_2385E177C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);
  sub_23875C2D0();

  result = v4;
  if ((~v4 & 0xF000000000000004) == 0)
  {
    goto LABEL_4;
  }

  if (v4 < 0)
  {
    sub_2385E3728(v4);
LABEL_4:
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_2385E1818(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13[0] = 1;

  sub_23875E330();
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = swift_allocObject();
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = *(a2 + 48);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = *(a2 + 48);
  sub_2385E2464(a2, v13);
  sub_2385E2464(a2, v13);

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = sub_2385E35B8;
  *(a3 + 40) = v9;
  *(a3 + 48) = sub_2385E362C;
  *(a3 + 56) = v11;
}

uint64_t sub_2385E19A0(uint64_t a1)
{
  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);

  return sub_23875C2E0();
}

double sub_2385E1A18()
{
  v0 = sub_23875D2A0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10690, &qword_238775B50);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D250();
  type metadata accessor for OrderListDoneButton(0);
  sub_2385E37F4(&qword_27DF106C0, type metadata accessor for OrderListDoneButton, &unk_238775CB4);
  sub_23875C4D0();
  v5 = sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v4, v1, v5);
  (*(v2 + 8))(v4, v1);

  return result;
}

double sub_2385E1C48@<D0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath(aP_12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_2385E1D10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23857F760(v2, &v14 - v9);
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

double sub_2385E1EFC()
{
  done = type metadata accessor for OrderListDoneButton(0);
  v2 = *(done - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](done - 8);
  sub_2385E2BC0(v0, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2385E2C24(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
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

  v18[0] = v11;
  v18[1] = v13;
  v18[2] = sub_2385E2C88;
  v18[3] = v5;
  sub_2384B5A24(v14, v15, v16);
  sub_23875DE00();

  return result;
}

void sub_2385E210C()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385E1D10(v3);
  sub_23875C5F0();
  (*(v1 + 8))(v3, v0);
  v4 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v6 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 1701736292;
  v9 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v9;
  strcpy((inited + 88), "orderDashboard");
  *(inited + 103) = -18;
  v10 = v6;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v13;
  sub_2385C33E4(v4, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385E37F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];
}

uint64_t sub_2385E23D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CA50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2385E2400(uint64_t a1)
{
  v2 = type metadata accessor for OrderListSearchContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385E249C()
{
  result = qword_27DF10668;
  if (!qword_27DF10668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10630, &qword_238775A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10628, &qword_238775A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10620, &qword_238775A30);
    type metadata accessor for OrderListSearchContainer(255);
    sub_2385E37F4(&qword_27DF10660, type metadata accessor for OrderListSearchContainer, &unk_238780AEC);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2384397A8(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10668);
  }

  return result;
}

unint64_t sub_2385E2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10670;
  if (!qword_27DF10670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10670);
  }

  return result;
}

unint64_t sub_2385E26AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10680;
  if (!qword_27DF10680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10680);
  }

  return result;
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

uint64_t sub_2385E2744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2385E278C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2385E27EC()
{
  result = qword_27DF106A0;
  if (!qword_27DF106A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF106A8, &qword_238775C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10648, &qword_238775A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10688, &qword_238775B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10640, &qword_238775A50);
    type metadata accessor for OrderManagementModel.ConfirmationData(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10638, &qword_238775A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10630, &qword_238775A40);
    sub_23875D310();
    sub_2385E249C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2385E2650(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    v6 = sub_2385E37F4(&qword_27DF10678, type metadata accessor for OrderManagementModel.ConfirmationData, &protocol conformance descriptor for OrderManagementModel.ConfirmationData);
    sub_2385E26AC(v6, v4, v5);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10690, &qword_238775B50);
    sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2385E37F4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF106A0);
  }

  return result;
}

uint64_t type metadata accessor for OrderListDoneButton(uint64_t a1)
{
  result = qword_27DF106B0;
  if (!qword_27DF106B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385E2B38(uint64_t a1)
{
  sub_23857F390(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2385E2BC0(uint64_t a1, uint64_t a2)
{
  done = type metadata accessor for OrderListDoneButton(0);
  (*(*(done - 8) + 16))(a2, a1, done);
  return a2;
}

uint64_t sub_2385E2C24(uint64_t a1, uint64_t a2)
{
  done = type metadata accessor for OrderListDoneButton(0);
  (*(*(done - 8) + 32))(a2, a1, done);
  return a2;
}

void sub_2385E2C88()
{
  type metadata accessor for OrderListDoneButton(0);

  sub_2385E210C();
}

uint64_t sub_2385E2CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106D8, &unk_238783E80);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v41 - v3;
  v4 = sub_23875F090();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E0, &qword_238775DC0);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E8, &qword_238775DC8);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F0, &qword_238775DD0);
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = &v41 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F8, &qword_238775DD8);
  v12 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10708, &qword_238775DE8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v59[3] = &type metadata for CSSearchQueryFactory;
  v59[4] = &protocol witness table for CSSearchQueryFactory;
  v23 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__state;
  v56 = 0;
  v57 = 0;
  v58 = 2;
  sub_23875C290();
  (*(v20 + 32))(a1 + v23, v22, v19);
  v24 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchText;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_23875C290();
  (*(v16 + 32))(a1 + v24, v18, v15);
  v25 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchCounter;
  v56 = 0;
  sub_23875C290();
  (*(v12 + 32))(a1 + v25, v14, v42);
  *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context) = 0;
  v26 = (a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery);
  v27 = MEMORY[0x277D84F90];
  *v26 = 0;
  v26[1] = 0;
  if (v27 >> 62 && sub_23875F3A0())
  {
    v28 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_cancellableSet) = v28;
  v29 = a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken;
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  sub_23845C998(v59, a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory);
  swift_beginAccess();
  v30 = v43;
  sub_23875C2A0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_23843A3E8(&qword_27DF10710, &qword_27DF106E0, &qword_238775DC0, MEMORY[0x277CBCEC8]);

  v31 = v45;
  v32 = v46;
  sub_23875C320();

  (*(v44 + 8))(v30, v31);
  v33 = v52;
  sub_23875F080();
  sub_2385E37A8();
  v34 = sub_23875F0A0();
  v56 = v34;
  v35 = sub_23875F070();
  v36 = v55;
  (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
  sub_23843A3E8(&qword_27DF10718, &qword_27DF106E8, &qword_238775DC8, MEMORY[0x277CBCB60]);
  sub_2385E37F4(&qword_27DF10720, sub_2385E37A8, MEMORY[0x277D85228]);
  v38 = v48;
  v37 = v49;
  sub_23875C350();
  sub_238439884(v36, &qword_27DF106D8, &unk_238783E80);
  (*(v53 + 8))(v33, v54);
  (*(v47 + 8))(v32, v38);

  swift_allocObject();
  swift_weakInit();

  sub_23843A3E8(&qword_27DF10728, &qword_27DF106F0, &qword_238775DD0, MEMORY[0x277CBCCF8]);
  v39 = v51;
  sub_23875C360();

  (*(v50 + 8))(v37, v39);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v59);
  return a1;
}

uint64_t objectdestroyTm_20()
{
  sub_2383FC164(*(v0 + 16), *(v0 + 24));

  sub_2384B4E98(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2385E3634(unint64_t a1, double a2)
{
  if (a1)
  {
    sub_23875ED50();

    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  swift_getKeyPath(asc_238775D40);
  swift_getKeyPath(asc_238775D68);

  return sub_23875C2E0();
}

double sub_2385E3728(uint64_t result)
{
  if ((~result & 0xF000000000000004) != 0)
  {
    return sub_2385E3740(result);
  }

  return v1;
}

double sub_2385E3740(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_2385E374C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF106D0;
  if (!qword_27DF106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF106D0);
  }

  return result;
}

unint64_t sub_2385E37A8()
{
  result = qword_27DF12280;
  if (!qword_27DF12280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12280);
  }

  return result;
}

uint64_t sub_2385E37F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385E3844()
{
  result = qword_27DF10730;
  if (!qword_27DF10730)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10738, &unk_238775DF0);
    sub_2384B5A24(v1, v2, v3);
    sub_2385E37F4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10730);
  }

  return result;
}

uint64_t sub_2385E3900@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EA0, &qword_238775F70);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = &v28 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107E8, &qword_238775F78);
  MEMORY[0x28223BE20](v35);
  v33 = &v28 - v3;
  v4 = type metadata accessor for OrderFileAttachmentPreview(0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107F0, &unk_238775F80);
  MEMORY[0x28223BE20](v34);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(v1, v10, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0D040, &qword_2387676A0);
    v15 = v31;
    sub_23875C530();
    v16 = v32;
    v17 = v37;
    (*(v32 + 16))(v33, v15, v37);
    swift_storeEnumTagMultiPayload();
    sub_2385E4A64();
    sub_2385E4B0C();
    sub_23875D1B0();
    return (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v7, v14, v11);
    v19 = v1;
    v20 = v30;
    sub_2385E4B70(v19, v30, type metadata accessor for OrderFileAttachmentPreview);
    v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v22 = swift_allocObject();
    sub_2385E4BD8(v20, v22 + v21, type metadata accessor for OrderFileAttachmentPreview);
    v23 = &v7[*(type metadata accessor for PreviewController(0) + 20)];
    *v23 = sub_2385E4C40;
    v23[1] = v22;
    v24 = sub_23875C900();
    v25 = sub_23875D780();
    v26 = v33;
    v27 = &v7[*(v34 + 36)];
    *v27 = v24;
    v27[8] = v25;
    sub_23843981C(v7, v26, &qword_27DF107F0, &unk_238775F80);
    swift_storeEnumTagMultiPayload();
    sub_2385E4A64();
    sub_2385E4B0C();
    sub_23875D1B0();
    sub_238439884(v7, &qword_27DF107F0, &unk_238775F80);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2385E3DFC(uint64_t a1)
{
  v16 = sub_23875CDB0();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_23875C600();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderFileAttachmentPreview(0);
  sub_23843981C(a1 + *(v12 + 20), v7, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_23875C5F0();
  return (*(v9 + 8))(v11, v8);
}

id sub_2385E4088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107C8, &unk_238775EF0);
  sub_23875D710();
  [v0 setDataSource_];

  v1 = v0;
  v2 = [v1 navigationItem];
  sub_23875D710();
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v6 action:sel_dismiss];

  [v2 setLeftBarButtonItem_];

  v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  return v4;
}

uint64_t sub_2385E43E0()
{
  sub_2385E485C(v0 + OBJC_IVAR____TtCV12FinanceKitUI17PreviewController11Coordinator_parent);

  return swift_deallocClassInstance();
}

uint64_t sub_2385E446C(uint64_t a1)
{
  result = type metadata accessor for PreviewController(319);
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

unint64_t sub_2385E4544(uint64_t a1)
{
  result = sub_23875B940();
  if (v2 <= 0x3F)
  {
    result = sub_23846D0DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385E45E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385E4B70(v2, v5, type metadata accessor for PreviewController);
  type metadata accessor for PreviewController.Coordinator(0);
  v6 = swift_allocObject();
  result = sub_2385E4BD8(v5, v6 + OBJC_IVAR____TtCV12FinanceKitUI17PreviewController11Coordinator_parent, type metadata accessor for PreviewController);
  *a2 = v6;
  return result;
}

uint64_t sub_2385E46A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385E4818(&qword_27DF107D0, &unk_238775E74);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2385E4720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385E4818(&qword_27DF107D0, &unk_238775E74);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2385E47A0(uint64_t a1)
{
  sub_2385E4818(&qword_27DF107D0, &unk_238775E74);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_2385E4818(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2385E485C(uint64_t a1)
{
  v2 = type metadata accessor for PreviewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385E4900(uint64_t a1)
{
  sub_2385E49E4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2385E49E4(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385E49E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2385E4A64()
{
  result = qword_27DF107F8;
  if (!qword_27DF107F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF107F0, &unk_238775F80);
    sub_2385E4818(&qword_27DF107C0, &unk_238775E24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF107F8);
  }

  return result;
}

unint64_t sub_2385E4B0C()
{
  result = qword_27DF09690;
  if (!qword_27DF09690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12EA0, &qword_238775F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09690);
  }

  return result;
}

uint64_t sub_2385E4B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385E4BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385E4C40()
{
  v1 = *(type metadata accessor for OrderFileAttachmentPreview(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385E3DFC(v2);
}

unint64_t sub_2385E4CA0()
{
  result = qword_27DF10800;
  if (!qword_27DF10800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10808, &unk_238775F90);
    sub_2385E4A64();
    sub_2385E4B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10800);
  }

  return result;
}

uint64_t sub_2385E4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10838, &qword_238776178);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_23875D8E0();
  KeyPath = swift_getKeyPath(aP_13);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10840, &unk_238776180);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_23875D850();
  sub_2385E5030();
  sub_23875DAF0();
  sub_2385E5114(v6);
  v11 = swift_getKeyPath(a8_4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10858, &unk_238776190);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_2385E4EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875D8E0();
  KeyPath = swift_getKeyPath(aP_13);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10810, &qword_2387760C0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10818, &qword_2387760C8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = swift_getKeyPath(a8_4);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10820, &qword_238776100) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  v10 = sub_23875E080();
  v11 = swift_getKeyPath(asc_238776108);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10828, &qword_238776138) + 36));
  *v12 = v11;
  v12[1] = v10;
  v13 = swift_getKeyPath(byte_238776140);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10830, &qword_238776170);
  v15 = a2 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = 1;
  return result;
}

unint64_t sub_2385E5030()
{
  result = qword_27DF10848;
  if (!qword_27DF10848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10838, &qword_238776178);
    sub_23843A3E8(&qword_27DF10850, &qword_27DF10840, &unk_238776180, MEMORY[0x277CE04B0]);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10848);
  }

  return result;
}

uint64_t sub_2385E5114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10838, &qword_238776178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385E517C()
{
  result = qword_27DF10860;
  if (!qword_27DF10860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10830, &qword_238776170);
    sub_2385E5234();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10860);
  }

  return result;
}

unint64_t sub_2385E5234()
{
  result = qword_27DF10868;
  if (!qword_27DF10868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10828, &qword_238776138);
    sub_2385E52EC();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10868);
  }

  return result;
}

unint64_t sub_2385E52EC()
{
  result = qword_27DF10870;
  if (!qword_27DF10870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10820, &qword_238776100);
    sub_2385E53A4();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10870);
  }

  return result;
}

unint64_t sub_2385E53A4()
{
  result = qword_27DF10878;
  if (!qword_27DF10878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10818, &qword_2387760C8);
    sub_23843A3E8(&qword_27DF10880, &qword_27DF10810, &qword_2387760C0, MEMORY[0x277CE04B0]);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10878);
  }

  return result;
}

unint64_t sub_2385E5488()
{
  result = qword_27DF10888;
  if (!qword_27DF10888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10858, &unk_238776190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10838, &qword_238776178);
    sub_2385E5030();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10888);
  }

  return result;
}

double sub_2385E5588@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF108F0, &qword_2387762A8);
  MEMORY[0x28223BE20](v25);
  v3 = v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF108F8, &qword_2387762B0);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10900, &qword_2387762B8);
  MEMORY[0x28223BE20](v24);
  v8 = v23 - v7;
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10908, &qword_2387762C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  sub_23875ED50();
  v23[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderListActiveOrderRow(0);
  sub_2384D5138(v12);
  v16 = sub_23875C860();
  (*(v10 + 8))(v12, v9);
  if (v16)
  {
    sub_2385E59C8(v8);
    sub_23843981C(v8, v6, &qword_27DF10900, &qword_2387762B8);
    swift_storeEnumTagMultiPayload();
    v17 = MEMORY[0x277CE14C0];
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8, MEMORY[0x277CE14C0]);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8, v17);
    sub_23875D1B0();
    v18 = v8;
    v19 = &qword_27DF10900;
    v20 = &qword_2387762B8;
  }

  else
  {
    sub_2385E6BD4(v3);
    sub_23843981C(v3, v6, &qword_27DF108F0, &qword_2387762A8);
    swift_storeEnumTagMultiPayload();
    v21 = MEMORY[0x277CE14C0];
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8, MEMORY[0x277CE14C0]);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8, v21);
    sub_23875D1B0();
    v18 = v3;
    v19 = &qword_27DF108F0;
    v20 = &qword_2387762A8;
  }

  sub_238439884(v18, v19, v20);
  sub_2384396E4(v15, v26, &qword_27DF10908, &qword_2387762C0);

  return result;
}

uint64_t sub_2385E59C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10920, &qword_2387762C8);
  MEMORY[0x28223BE20](v128);
  v126 = &v104 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10928, &qword_2387762D0);
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v122 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v136 = &v104 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10930, &qword_2387762D8);
  v139 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v138 = &v104 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10938, &qword_2387762E0);
  MEMORY[0x28223BE20](v133);
  v127 = &v104 - v11;
  active = type metadata accessor for ActiveOrderContentItemAccessibilitySizeView(0);
  MEMORY[0x28223BE20](active);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2387590B0();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  MEMORY[0x28223BE20](v14 - 8);
  v105 = &v104 - v15;
  v16 = type metadata accessor for OrderListActiveOrderRow(0);
  v17 = v16 - 8;
  v119 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v118 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v18;
  MEMORY[0x28223BE20](v19);
  v112 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  MEMORY[0x28223BE20](v21 - 8);
  v109 = &v104 - v22;
  v117 = sub_23875B0A0();
  v116 = *(v117 - 1);
  MEMORY[0x28223BE20](v117);
  v115 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  MEMORY[0x28223BE20](v108);
  v110 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v25);
  v106 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10948, &qword_2387762F0);
  MEMORY[0x28223BE20](v27 - 8);
  v132 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v131 = &v104 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10950, &qword_2387762F8);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v130 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v104 - v35;
  *v36 = sub_23875D030();
  *(v36 + 1) = 0;
  v36[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10958, &unk_238776300);
  sub_2385E7E2C(v2, &v36[*(v37 + 44)]);
  v38 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v39 = *(v38 + 32);
  v40 = v2 + *(v17 + 32);
  v41 = *v40;
  v42 = *(v40 + 8);
  v143 = v41;
  v144 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v43 = v140;
  v44 = v141;
  v45 = v142;
  v46 = *(v32 + 44);
  v129 = v36;
  v47 = &v36[v46];
  sub_2385EECDC(v2 + v39, &v36[v46], type metadata accessor for OrderActionsMenuContext);
  v48 = type metadata accessor for ActionsContextMenu(0);
  v49 = &v47[*(v48 + 20)];
  *v49 = v43;
  *(v49 + 1) = v44;
  v49[16] = v45;
  v50 = *(v48 + 24);
  *&v47[v50] = swift_getKeyPath(byte_238776310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v135 = v38;
  if (*(*(v2 + *(v38 + 52)) + 16) || *(*(v2 + *(v135 + 48)) + 16))
  {
    v140 = *(v2 + *(v38 + 52));
    v117 = type metadata accessor for OrderListActiveOrderRow;
    v51 = v118;
    sub_2385EECDC(v2, v118, type metadata accessor for OrderListActiveOrderRow);
    v52 = (*(v119 + 80) + 16) & ~*(v119 + 80);
    v53 = swift_allocObject();
    v119 = type metadata accessor for OrderListActiveOrderRow;
    sub_2385EE638(v51, v53 + v52, type metadata accessor for OrderListActiveOrderRow);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10960, &qword_238776338);
    v54 = MEMORY[0x277D83980];
    sub_23843A3E8(&qword_27DF10968, &qword_27DF10960, &qword_238776338, MEMORY[0x277D83980]);
    v55 = sub_2385EED74(&qword_27DF10970, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView, &unk_238776648);
    sub_2385EED74(&qword_27DF10978, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return, &unk_2387761E8);
    v116 = v55;
    sub_23875E380();
    v140 = *(v2 + *(v135 + 48));
    sub_2385EECDC(v2, v51, v117);
    v56 = swift_allocObject();
    sub_2385EE638(v51, v56 + v52, v119);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10980, &qword_238776340);
    sub_23843A3E8(&qword_27DF10988, &qword_27DF10980, &qword_238776340, v54);
    sub_2385EED74(&qword_27DF10990, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment, &unk_238776220);
    v57 = v136;
    sub_23875E380();
    v58 = *(v139 + 16);
    v59 = v121;
    v60 = v123;
    v58(v121, v138, v123);
    v62 = v124;
    v61 = v125;
    v63 = *(v124 + 16);
    v64 = v122;
    v63(v122, v57, v125);
    v65 = v126;
    v58(v126, v59, v60);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10998, &qword_238776348);
    v63((v65 + *(v66 + 48)), v64, v61);
    v67 = *(v62 + 8);
    v67(v64, v61);
    v68 = *(v139 + 8);
    v139 += 8;
    v68(v59, v60);
    sub_23843981C(v65, v127, &qword_27DF10920, &qword_2387762C8);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF109A0, &qword_27DF10920, &qword_2387762C8, MEMORY[0x277CE14C0]);
    v69 = v131;
    sub_23875D1B0();
    sub_238439884(v65, &qword_27DF10920, &qword_2387762C8);
    v67(v136, v61);
    v68(v138, v60);
    v70 = v69;
  }

  else
  {
    v77 = active;
    v78 = v127;
    v79 = sub_23875A710();
    v80 = v106;
    (*(*(v79 - 8) + 16))(v106, v2, v79);
    v81 = (v80 + *(v25 + 20));
    *v81 = 0;
    v81[1] = 0;
    v82 = v135;
    (*(v116 + 16))(v115, v2 + *(v135 + 36), v117);
    v83 = *(v82 + 40);
    v84 = v112;
    sub_2385EECDC(v2, v112, type metadata accessor for OrderListActiveOrderRow);
    v85 = v105;
    sub_23843981C(v2 + v83, v105, &qword_27DF10890, &unk_2387761A0);
    v86 = v113;
    v87 = v114;
    if ((*(v113 + 48))(v85, 1, v114) == 1)
    {
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v89 = v109;
      (*(*(v88 - 8) + 56))(v109, 1, 1, v88);
      v90 = v77;
    }

    else
    {
      (*(v86 + 32))(v107, v85, v87);
      sub_23875ED50();
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v92 = v109;
      v93 = v107;
      v94 = v112;
      v95 = sub_2385E8B9C(&v109[*(v91 + 48)], v107);
      v97 = v96;
      v84 = v94;

      *v92 = v95;
      v92[1] = v97;
      (*(v113 + 8))(v93, v114);
      v98 = *(*(v91 - 8) + 56);
      v99 = v91;
      v89 = v92;
      v98(v92, 0, 1, v99);
      v82 = v135;
      v90 = active;
    }

    sub_2385EF1F8(v84, type metadata accessor for OrderListActiveOrderRow);
    v100 = v108;
    v101 = v110;
    sub_2385EECDC(v2 + *(v82 + 44), &v110[*(v108 + 24)], type metadata accessor for ProductImage.ViewModel);
    sub_2385EECDC(v80, v101 + v100[7], type metadata accessor for FetchedOrderDetailsDestination);
    type metadata accessor for OrderNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(v116 + 32))(v101, v115, v117);
    sub_2384396E4(v89, v101 + v100[5], &qword_27DF10940, &qword_2387762E8);
    *(v101 + v100[8]) = 1;
    *(v101 + v100[9]) = 0;
    v102 = v111;
    sub_2385EECDC(v101, v111, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    v103 = *(v90 + 20);
    *(v102 + v103) = swift_getKeyPath(aH_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385EECDC(v102, v78, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    swift_storeEnumTagMultiPayload();
    sub_2385EED74(&qword_27DF10970, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView, &unk_238776648);
    sub_23843A3E8(&qword_27DF109A0, &qword_27DF10920, &qword_2387762C8, MEMORY[0x277CE14C0]);
    v70 = v131;
    sub_23875D1B0();
    sub_2385EF1F8(v102, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    sub_2385EF1F8(v101, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    sub_2385EF1F8(v80, type metadata accessor for FetchedOrderDetailsDestination);
  }

  v72 = v129;
  v71 = v130;
  sub_23843981C(v129, v130, &qword_27DF10950, &qword_2387762F8);
  v73 = v132;
  sub_23843981C(v70, v132, &qword_27DF10948, &qword_2387762F0);
  v74 = v134;
  sub_23843981C(v71, v134, &qword_27DF10950, &qword_2387762F8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109A8, &qword_238776350);
  sub_23843981C(v73, v74 + *(v75 + 48), &qword_27DF10948, &qword_2387762F0);
  sub_238439884(v70, &qword_27DF10948, &qword_2387762F0);
  sub_238439884(v72, &qword_27DF10950, &qword_2387762F8);
  sub_238439884(v73, &qword_27DF10948, &qword_2387762F0);
  return sub_238439884(v71, &qword_27DF10950, &qword_2387762F8);
}

uint64_t sub_2385E6BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v140 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109E0, &qword_238776458);
  MEMORY[0x28223BE20](v135);
  v128 = &v113 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109E8, &qword_238776460);
  v131 = *(v4 - 8);
  v132 = v4;
  MEMORY[0x28223BE20](v4);
  v130 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v113 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109F0, &qword_238776468);
  v143 = *(v8 - 8);
  v144 = v8;
  MEMORY[0x28223BE20](v8);
  v129 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = &v113 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109F8, &qword_238776470);
  MEMORY[0x28223BE20](v141);
  v134 = &v113 - v12;
  active = type metadata accessor for ActiveOrderContentItemView(0);
  MEMORY[0x28223BE20](active);
  v118 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2387590B0();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v114 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v113 - v16;
  v17 = type metadata accessor for OrderListActiveOrderRow(0);
  v18 = v17 - 8;
  v126 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v19;
  MEMORY[0x28223BE20](v21);
  v119 = &v113 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  MEMORY[0x28223BE20](v23 - 8);
  v116 = &v113 - v24;
  v124 = sub_23875B0A0();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  MEMORY[0x28223BE20](v115);
  v117 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v27);
  v125 = (&v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A00, &qword_238776478);
  MEMORY[0x28223BE20](v29 - 8);
  v139 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v138 = &v113 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A08, &qword_238776480);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v137 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v113 - v37;
  *v38 = sub_23875CE60();
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A10, &qword_238776488);
  sub_2385E9168(v2, &v38[*(v39 + 44)]);
  v40 = sub_23875D000();
  v41 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A18, &qword_238776490) + 36)];
  *v41 = v40;
  v41[1] = sub_23843480C;
  v41[2] = 0;
  v42 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v43 = *(v42 + 32);
  v44 = v2 + *(v18 + 32);
  v45 = *v44;
  v46 = *(v44 + 8);
  v150 = v45;
  v151 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v47 = v147;
  v48 = v148;
  v49 = v149;
  v50 = *(v34 + 44);
  v51 = v42;
  v136 = v38;
  v52 = &v38[v50];
  v53 = v2;
  sub_2385EECDC(v2 + v43, v52, type metadata accessor for OrderActionsMenuContext);
  v54 = type metadata accessor for ActionsContextMenu(0);
  v55 = v52 + *(v54 + 20);
  *v55 = v47;
  *(v55 + 8) = v48;
  *(v55 + 16) = v49;
  v56 = *(v54 + 24);
  *(v52 + v56) = swift_getKeyPath(byte_238776310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v57 = *(v2 + v51[13]);
  v58 = *(v57 + 16);
  v133 = v51;
  if (v58 || *(*(v2 + v51[12]) + 16))
  {
    v147 = v57;
    v125 = type metadata accessor for OrderListActiveOrderRow;
    v59 = v20;
    sub_2385EECDC(v2, v20, type metadata accessor for OrderListActiveOrderRow);
    v60 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v61 = swift_allocObject();
    v126 = type metadata accessor for OrderListActiveOrderRow;
    sub_2385EE638(v20, v61 + v60, type metadata accessor for OrderListActiveOrderRow);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10960, &qword_238776338);
    v124 = MEMORY[0x277D83980];
    sub_23843A3E8(&qword_27DF10968, &qword_27DF10960, &qword_238776338, MEMORY[0x277D83980]);
    v62 = sub_2385EED74(&qword_27DF10A20, type metadata accessor for ActiveOrderContentItemView, &unk_2387765F8);
    sub_2385EED74(&qword_27DF10978, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return, &unk_2387761E8);
    v63 = v142;
    v123 = v62;
    sub_23875E380();
    v147 = *(v2 + v133[12]);
    sub_2385EECDC(v2, v59, v125);
    v64 = swift_allocObject();
    sub_2385EE638(v59, v64 + v60, v126);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10980, &qword_238776340);
    sub_23843A3E8(&qword_27DF10988, &qword_27DF10980, &qword_238776340, v124);
    sub_2385EED74(&qword_27DF10990, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment, &unk_238776220);
    v65 = v145;
    sub_23875E380();
    v66 = v144;
    v67 = *(v143 + 16);
    v68 = v129;
    v67(v129, v63, v144);
    v69 = v131;
    v70 = *(v131 + 16);
    v71 = v130;
    v72 = v65;
    v73 = v132;
    v70(v130, v72, v132);
    v74 = v128;
    v67(v128, v68, v66);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A28, &qword_238776498);
    v70((v74 + *(v75 + 48)), v71, v73);
    v76 = *(v69 + 8);
    v76(v71, v73);
    v77 = *(v143 + 8);
    v77(v68, v66);
    sub_23843981C(v74, v134, &qword_27DF109E0, &qword_238776458);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10A30, &qword_27DF109E0, &qword_238776458, MEMORY[0x277CE14C0]);
    v78 = v138;
    sub_23875D1B0();
    sub_238439884(v74, &qword_27DF109E0, &qword_238776458);
    v76(v145, v73);
    v77(v142, v144);
  }

  else
  {
    v85 = active;
    v86 = v134;
    v87 = sub_23875A710();
    v88 = v125;
    (*(*(v87 - 8) + 16))(v125, v2, v87);
    v89 = (v88 + *(v27 + 20));
    *v89 = 0;
    v89[1] = 0;
    (*(v123 + 16))(v122, v2 + v51[9], v124);
    v90 = v51[10];
    v91 = v119;
    sub_2385EECDC(v2, v119, type metadata accessor for OrderListActiveOrderRow);
    v92 = v2 + v90;
    v93 = v113;
    sub_23843981C(v92, v113, &qword_27DF10890, &unk_2387761A0);
    v94 = v120;
    v95 = v121;
    if ((*(v120 + 48))(v93, 1, v121) == 1)
    {
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v97 = v116;
      (*(*(v96 - 8) + 56))(v116, 1, 1, v96);
      v98 = v85;
    }

    else
    {
      (*(v94 + 32))(v114, v93, v95);
      sub_23875ED50();
      sub_23875ED40();
      sub_23875ECE0();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      v98 = v85;
      v97 = v116;
      if ((isCurrentExecutor & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v101 = v114;
      v102 = v119;
      v103 = sub_2385E8B9C(v97 + *(v100 + 48), v114);
      v105 = v104;

      *v97 = v103;
      v97[1] = v105;
      (*(v120 + 8))(v101, v121);
      v106 = *(*(v100 - 8) + 56);
      v107 = v100;
      v91 = v102;
      v106(v97, 0, 1, v107);
    }

    sub_2385EF1F8(v91, type metadata accessor for OrderListActiveOrderRow);
    v108 = v115;
    v109 = v117;
    sub_2385EECDC(v53 + v133[11], &v117[*(v115 + 24)], type metadata accessor for ProductImage.ViewModel);
    v110 = v125;
    sub_2385EECDC(v125, v109 + v108[7], type metadata accessor for FetchedOrderDetailsDestination);
    type metadata accessor for OrderNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(v123 + 32))(v109, v122, v124);
    sub_2384396E4(v97, v109 + v108[5], &qword_27DF10940, &qword_2387762E8);
    *(v109 + v108[8]) = 1;
    *(v109 + v108[9]) = 0;
    v111 = v118;
    sub_2385EECDC(v109, v118, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    v112 = *(v98 + 20);
    *(v111 + v112) = swift_getKeyPath(aH_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385EECDC(v111, v86, type metadata accessor for ActiveOrderContentItemView);
    swift_storeEnumTagMultiPayload();
    sub_2385EED74(&qword_27DF10A20, type metadata accessor for ActiveOrderContentItemView, &unk_2387765F8);
    sub_23843A3E8(&qword_27DF10A30, &qword_27DF109E0, &qword_238776458, MEMORY[0x277CE14C0]);
    v78 = v138;
    sub_23875D1B0();
    sub_2385EF1F8(v111, type metadata accessor for ActiveOrderContentItemView);
    sub_2385EF1F8(v109, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    sub_2385EF1F8(v110, type metadata accessor for FetchedOrderDetailsDestination);
  }

  v80 = v136;
  v79 = v137;
  sub_23843981C(v136, v137, &qword_27DF10A08, &qword_238776480);
  v81 = v139;
  sub_23843981C(v78, v139, &qword_27DF10A00, &qword_238776478);
  v82 = v140;
  sub_23843981C(v79, v140, &qword_27DF10A08, &qword_238776480);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A38, &qword_2387764A0);
  sub_23843981C(v81, v82 + *(v83 + 48), &qword_27DF10A00, &qword_238776478);
  sub_238439884(v78, &qword_27DF10A00, &qword_238776478);
  sub_238439884(v80, &qword_27DF10A08, &qword_238776480);
  sub_238439884(v81, &qword_27DF10A00, &qword_238776478);
  return sub_238439884(v79, &qword_27DF10A08, &qword_238776480);
}

double sub_2385E7E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B8, &qword_238776390);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875CE60();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109C0, &qword_238776398);
  sub_2385E81B4(a1, &v7[*(v8 + 44)]);
  v9 = a1 + *(type metadata accessor for OrderListActiveOrderRow.ViewModel(0) + 24);
  v10 = type metadata accessor for MerchantImage.ViewModel(0);
  v11 = (v9 + *(v10 + 24));
  v12 = v11[1];
  v51 = *v11;
  v52 = v12;
  sub_2384397A8(v10, v13, v14);

  v15 = sub_23875DAA0();
  v17 = v16;
  v46 = a1;
  v47 = v7;
  v19 = v18;
  sub_23875D7F0();
  v20 = sub_23875DA60();
  v22 = v21;
  v24 = v23;

  sub_2384397FC(v15, v17, v19 & 1);

  sub_23875D890();
  v43 = sub_23875D9E0();
  v26 = v25;
  v44 = v27;
  v45 = v28;
  sub_2384397FC(v20, v22, v24 & 1);

  sub_2385E87D4(&v51);
  v29 = v51;
  v30 = v52;
  LOBYTE(v15) = v53;
  v31 = v54;
  v32 = v47;
  v33 = v50;
  sub_23843981C(v47, v50, &qword_27DF109B8, &qword_238776390);
  v34 = v48;
  sub_23843981C(v33, v48, &qword_27DF109B8, &qword_238776390);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109C8, &qword_2387763A0);
  v36 = v34 + *(v35 + 48);
  v37 = v43;
  *v36 = v43;
  *(v36 + 8) = v26;
  v38 = v44;
  v39 = v44 & 1;
  *(v36 + 16) = v44 & 1;
  *(v36 + 24) = v45;
  v40 = v34 + *(v35 + 64);
  *v40 = v29;
  *(v40 + 8) = v30;
  *(v40 + 16) = v15;
  *(v40 + 24) = v31;
  v41 = v37;
  sub_23843980C(v37, v26, v38 & 1);

  sub_23843980C(v29, v30, v15);

  sub_238439884(v32, &qword_27DF109B8, &qword_238776390);
  sub_2384397FC(v29, v30, v15);

  sub_2384397FC(v41, v26, v39);

  sub_238439884(v33, &qword_27DF109B8, &qword_238776390);

  return result;
}

double sub_2385E81B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D0, &unk_2387763A8);
  MEMORY[0x28223BE20](v52);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = sub_23875DFD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  sub_2385EECDC(a1 + active[6], v15, type metadata accessor for MerchantImage.ViewModel);
  v17 = type metadata accessor for MerchantImage(0);
  v15[*(v17 + 20)] = 1;
  v18 = *(v17 + 24);
  *&v15[v18] = swift_getKeyPath(byte_2387763B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0EE0], v7);
  v19 = sub_23875E090();
  KeyPath = swift_getKeyPath(aH_8);
  v21 = *(v11 + 36);
  v51 = v15;
  v22 = &v15[v21];
  v23 = type metadata accessor for OrderImageStyleModifier(0);
  *&v22[*(v23 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v22[*(v23 + 40)] = swift_getKeyPath(byte_2387763B8);
  swift_storeEnumTagMultiPayload();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  *v22 = xmmword_2387692C0;
  *(v22 + 2) = 0;
  v22[24] = 1;
  *(v22 + 4) = v19;
  v22[40] = 0;
  if ((*(a1 + active[7]) & 1) == 0)
  {
    v24 = sub_23875E0D0();
    v28 = [objc_opt_self() systemGray2Color];
    v25 = sub_23875DFB0();
    sub_23875D820();
    sub_23875D890();
    v27 = sub_23875D900();

    v26 = swift_getKeyPath(byte_2387763F0);
  }

  v49 = v25;
  v50 = v26;
  sub_2385EECDC(a1 + active[8], v6, type metadata accessor for OrderActionsMenuContext);
  v29 = type metadata accessor for OrderActionsMenu(0);
  v30 = *(v29 + 20);
  *&v6[v30] = swift_getKeyPath(byte_238776310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v31 = &v6[*(v29 + 24)];
  v57 = 0;
  sub_23875E1A0();
  v32 = v59;
  *v31 = v58;
  *(v31 + 1) = v32;
  v33 = sub_23875E080();
  v34 = swift_getKeyPath(byte_238776420);
  v35 = v51;
  v36 = &v6[*(v52 + 36)];
  *v36 = v34;
  v36[1] = v33;
  v37 = v54;
  sub_23843981C(v35, v54, &qword_27DF0C7D0, &unk_23876B3E0);
  v38 = v56;
  sub_23843981C(v6, v56, &qword_27DF109D0, &unk_2387763A8);
  v39 = v6;
  v40 = v55;
  sub_23843981C(v37, v55, &qword_27DF0C7D0, &unk_23876B3E0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D8, &qword_238776450);
  v42 = v40 + v41[12];
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = (v40 + v41[16]);
  v44 = v24;
  *v43 = v24;
  v45 = v49;
  v46 = v50;
  v43[1] = v49;
  v43[2] = v46;
  v43[3] = v27;
  sub_23843981C(v38, v40 + v41[20], &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF258(v44, v45, v46, v27);
  sub_238439884(v39, &qword_27DF109D0, &unk_2387763A8);
  sub_238439884(v35, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_238439884(v38, &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF2BC(v44, v45, v46, v27);
  sub_238439884(v37, &qword_27DF0C7D0, &unk_23876B3E0);

  return result;
}

void sub_2385E87D4(uint64_t *a1@<X8>)
{
  v30 = a1;
  v2 = sub_23875BE40();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23875BE20();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875BD20();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2387595E0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_238759290();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23875BC40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  (*(v8 + 16))(v10, v1 + *(active + 20), v7);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759270();
  sub_2385EED74(&qword_27DF0E528, MEMORY[0x277CC7808], MEMORY[0x277CC7800]);
  sub_2385EED74(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v12 = sub_23875DA80();
  v14 = v13;
  v16 = v15;
  sub_23875D970();
  v17 = sub_23875DA60();
  v19 = v18;
  LOBYTE(v10) = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  v31[0] = sub_23875D440();
  v21 = sub_23875DA20();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2384397FC(v17, v19, v10 & 1);

  v28 = v30;
  *v30 = v21;
  v28[1] = v23;
  *(v28 + 16) = v25 & 1;
  v28[3] = v27;
}

uint64_t sub_2385E8B9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23875BE40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875BE20();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875BD20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2387595E0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2387590C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2385EED74(&qword_27DF0ADF8, MEMORY[0x277CC7708], MEMORY[0x277CC7700]);
  sub_238759950();
  (*(v8 + 8))(v10, v7);
  v11 = v16;
  v12 = sub_238759070();
  v13 = sub_23875DA00();
  v14 = MEMORY[0x277CE0B30];
  if (v12 <= 1)
  {
    v14 = MEMORY[0x277CE0B28];
  }

  (*(*(v13 - 8) + 104))(a1, *v14, v13);
  return v11;
}

uint64_t sub_2385E8E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2387590B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  sub_23843981C(a1 + *(active + 28), v6, &qword_27DF10890, &unk_2387761A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_238439884(v6, &qword_27DF10890, &unk_2387761A0);
    v12 = *(a1 + *(active + 36));
    if (!v12)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
    v14 = *(v13 + 48);
    v15 = v12;
    v16 = sub_23875F010();
    v18 = v17;

    *a2 = v16;
    a2[1] = v18;
    v19 = *MEMORY[0x277CE0B28];
    v20 = sub_23875DA00();
    (*(*(v20 - 8) + 104))(a2 + v14, v19, v20);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
    v21 = sub_2385E8B9C(a2 + *(v13 + 48), v10);
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    *a2 = v21;
    a2[1] = v23;
  }

  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

double sub_2385E9168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A40, &qword_2387764A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A48, &qword_2387764B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875CE60();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A50, &qword_2387764B8);
  sub_2385E9430(a1, &v15[*(v16 + 44)]);
  *v9 = sub_23875CE60();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A58, &qword_2387764C0);
  sub_2385E9AE0(a1, &v9[*(v17 + 44)]);
  sub_23843981C(v15, v12, &qword_27DF10A48, &qword_2387764B0);
  sub_23843981C(v9, v6, &qword_27DF10A40, &qword_2387764A8);
  sub_23843981C(v12, a2, &qword_27DF10A48, &qword_2387764B0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A60, &qword_2387764C8);
  v19 = a2 + *(v18 + 48);
  *v19 = 0x4028000000000000;
  *(v19 + 8) = 0;
  sub_23843981C(v6, a2 + *(v18 + 64), &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v9, &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v15, &qword_27DF10A48, &qword_2387764B0);
  sub_238439884(v6, &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v12, &qword_27DF10A48, &qword_2387764B0);

  return result;
}

double sub_2385E9430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 24), v11, type metadata accessor for MerchantImage.ViewModel);
  v13 = type metadata accessor for MerchantImage(0);
  v11[*(v13 + 20)] = 1;
  v14 = *(v13 + 24);
  *&v11[v14] = swift_getKeyPath(byte_2387763B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v15 = sub_23875E090();
  KeyPath = swift_getKeyPath(aH_8);
  v17 = &v11[*(v7 + 36)];
  v18 = type metadata accessor for OrderImageStyleModifier(0);
  *&v17[*(v18 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v18 + 40)] = swift_getKeyPath(byte_2387763B8);
  swift_storeEnumTagMultiPayload();
  *v17 = xmmword_2387692C0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  *(v17 + 4) = v15;
  v17[40] = 0;
  v19 = sub_23875D030();
  LOBYTE(v37[0]) = 0;
  sub_2385E98A0(a1, v34);
  *&v33[7] = v34[0];
  *&v33[23] = v34[1];
  *&v33[39] = v34[2];
  *&v33[55] = v34[3];
  LOBYTE(KeyPath) = v37[0];
  v20 = v30;
  sub_23843981C(v11, v30, &qword_27DF0C7D0, &unk_23876B3E0);
  v21 = v31;
  sub_23843981C(v20, v31, &qword_27DF0C7D0, &unk_23876B3E0);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A70, &unk_2387764D8) + 48);
  *&v35 = v19;
  *(&v35 + 1) = 0x4010000000000000;
  v36[0] = KeyPath;
  *&v36[1] = *v33;
  *&v36[17] = *&v33[16];
  *&v36[33] = *&v33[32];
  *&v36[49] = *&v33[48];
  v23 = *&v33[63];
  *&v36[64] = *&v33[63];
  v24 = *v36;
  *v22 = v35;
  *(v22 + 16) = v24;
  v25 = *&v36[16];
  v26 = *&v36[32];
  v27 = *&v36[48];
  *(v22 + 80) = v23;
  *(v22 + 48) = v26;
  *(v22 + 64) = v27;
  *(v22 + 32) = v25;
  sub_23843981C(&v35, v37, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v11, &qword_27DF0C7D0, &unk_23876B3E0);
  v37[0] = v19;
  v37[1] = 0x4010000000000000;
  v38 = KeyPath;
  v40 = *&v33[16];
  v41 = *&v33[32];
  *v42 = *&v33[48];
  *&v42[15] = *&v33[63];
  v39 = *v33;
  sub_238439884(v37, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v20, &qword_27DF0C7D0, &unk_23876B3E0);

  return result;
}

double sub_2385E98A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for OrderListActiveOrderRow.ViewModel(0) + 24);
  v5 = type metadata accessor for MerchantImage.ViewModel(0);
  v6 = (v4 + *(v5 + 24));
  v7 = v6[1];
  v31 = *v6;
  v32 = v7;
  sub_2384397A8(v5, v8, v9);

  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D7F0();
  v15 = sub_23875DA60();
  v17 = v16;
  LOBYTE(v4) = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D890();
  v19 = sub_23875D9E0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v15, v17, v4 & 1);

  sub_2385E87D4(&v31);
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v23 &= 1u;
  LOBYTE(v31) = v23;
  v35 = v33;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v29;
  sub_23843980C(v19, v21, v23);

  sub_23843980C(v26, v27, v28);

  sub_2384397FC(v26, v27, v28);

  sub_2384397FC(v19, v21, v23);

  return result;
}

double sub_2385E9AE0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D0, &unk_2387763A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v11 = 0;
  v12 = 0;
  KeyPath = 0;
  v14 = 0;
  if ((*(a1 + *(active + 28)) & 1) == 0)
  {
    v11 = sub_23875E0D0();
    v15 = [objc_opt_self() systemGray2Color];
    v12 = sub_23875DFB0();
    sub_23875D820();
    sub_23875D890();
    v14 = sub_23875D900();

    KeyPath = swift_getKeyPath(byte_2387763F0);
  }

  sub_2385EECDC(a1 + *(active + 32), v9, type metadata accessor for OrderActionsMenuContext);
  v16 = type metadata accessor for OrderActionsMenu(0);
  v17 = *(v16 + 20);
  *&v9[v17] = swift_getKeyPath(byte_238776310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v18 = &v9[*(v16 + 24)];
  v26 = 0;
  sub_23875E1A0();
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  v20 = sub_23875E080();
  v21 = swift_getKeyPath(byte_238776420);
  v22 = &v9[*(v4 + 36)];
  *v22 = v21;
  v22[1] = v20;
  sub_23843981C(v9, v6, &qword_27DF109D0, &unk_2387763A8);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = KeyPath;
  a2[3] = v14;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A68, &qword_2387764D0);
  sub_23843981C(v6, a2 + *(v23 + 48), &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF258(v11, v12, KeyPath, v14);
  sub_238439884(v9, &qword_27DF109D0, &unk_2387763A8);
  sub_238439884(v6, &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF2BC(v11, v12, KeyPath, v14);

  return result;
}

double sub_2385E9E00@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v8 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875A710();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v12 = *(a1 + 1);
  v13 = &v10[*(v8 + 20)];
  *v13 = *a1;
  *(v13 + 1) = v12;
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Return(0);
  v15 = active[6];
  v16 = sub_23875B0A0();
  (*(*(v16 - 8) + 16))(a5, &a1[v15], v16);
  v17 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v18 = (a5 + v17[5]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  v27 = v10;
  v20 = *(v19 + 48);
  v21 = active[7];

  *v18 = sub_2385E8B9C(v18 + v20, &a1[v21]);
  v18[1] = v22;
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_2385EECDC(&a1[active[8]], a5 + v17[6], type metadata accessor for ProductImage.ViewModel);
  sub_2385EE638(v27, a5 + v17[7], type metadata accessor for ReturnDetailsDestination);
  type metadata accessor for OrderNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v23 = *(a1 + 2);
  *(a5 + v17[8]) = 0;
  *(a5 + v17[9]) = v23;
  v24 = *(v29(0) + 20);
  *(a5 + v24) = swift_getKeyPath(aH_8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();

  return result;
}

double sub_2385EA0EC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875A710();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  v13 = *(a1 + 1);
  v14 = &v11[*(v9 + 20)];
  *v14 = *a1;
  *(v14 + 1) = v13;
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  v16 = *(active + 24);
  v17 = sub_23875B0A0();
  (*(*(v17 - 8) + 16))(a5, &a1[v16], v17);
  v18 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v19 = v18[5];

  sub_2385E8E78(a1, (a5 + v19));
  sub_2385EECDC(&a1[*(active + 32)], a5 + v18[6], type metadata accessor for ProductImage.ViewModel);
  sub_2385EE638(v11, a5 + v18[7], type metadata accessor for FetchedOrderDetailsDestination);
  type metadata accessor for OrderNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(a1 + 2);
  *(a5 + v18[8]) = 1;
  *(a5 + v18[9]) = v20;
  v21 = *(a4(0) + 20);
  *(a5 + v21) = swift_getKeyPath(aH_8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_2385EA378()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

double sub_2385EA400(uint64_t a1)
{
  sub_23875EB30();

  return result;
}

uint64_t sub_2385EA474()
{
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

void sub_2385EA4F8(char *a2@<X8>)
{
  v3 = sub_23875F590();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2385EA558(uint64_t *a1@<X8>)
{
  v2 = 0x6E7275746572;
  if (*v1)
  {
    v2 = 0x6D6C6C69666C7566;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2385EA59C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6C6C69666C7566;
  }

  else
  {
    v3 = 0x6E7275746572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v5 = 0x6D6C6C69666C7566;
  }

  else
  {
    v5 = 0x6E7275746572;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E65;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23875F630();
  }

  return v8 & 1;
}

unint64_t sub_2385EA648()
{
  sub_23875F470();

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2384397A8(active, v1, v2);
  v3 = sub_23875F230();
  v5 = v4;

  MEMORY[0x23EE63650](v3, v5);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  v6 = sub_23875F600();
  MEMORY[0x23EE63650](v6);

  return 0xD00000000000001ELL;
}

double sub_2385EA794@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B48, &qword_238776708);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(v25 + *(active + 28), v10, type metadata accessor for OrderNavigationDestination);
  v18 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  sub_2385EED74(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_23875C760();
  *&v16[*(v11 + 36)] = 0;
  *v7 = sub_23875D020();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B50, &qword_238776710) + 44)];
  *v19 = sub_23875CE50();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B58, &qword_238776718);
  sub_2385EABE4(v25, &v19[*(v20 + 44)]);

  sub_23843981C(v16, v13, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v7, v4, &qword_27DF10B48, &qword_238776708);
  v21 = v24;
  sub_23843981C(v13, v24, &qword_27DF0BC20, &qword_238769430);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B60, &qword_238776720);
  sub_23843981C(v4, v21 + *(v22 + 48), &qword_27DF10B48, &qword_238776708);
  sub_238439884(v7, &qword_27DF10B48, &qword_238776708);
  sub_238439884(v16, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v4, &qword_27DF10B48, &qword_238776708);
  sub_238439884(v13, &qword_27DF0BC20, &qword_238769430);

  return result;
}

double sub_2385EABE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B08, &qword_2387766C8);
  MEMORY[0x28223BE20](v37);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B68, &qword_238776728);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875D030();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B70, &qword_238776730);
  sub_2385EB114(a1, &v15[*(v16 + 44)]);
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 24), v10, type metadata accessor for ProductImage.ViewModel);
  v18 = *(type metadata accessor for ProductImage(0) + 20);
  *&v10[v18] = swift_getKeyPath(byte_2387763B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v19 = sub_23875E090();
  KeyPath = swift_getKeyPath(aH_8);
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36)];
  v22 = type metadata accessor for OrderImageStyleModifier(0);
  *&v21[*(v22 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v21[*(v22 + 40)] = swift_getKeyPath(byte_2387763B8);
  swift_storeEnumTagMultiPayload();
  *v21 = xmmword_238762FA0;
  *(v21 + 2) = 0;
  v21[24] = 1;
  *(v21 + 4) = v19;
  v21[40] = 1;
  v23 = swift_getKeyPath(byte_2387763B8);
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090) + 36)];
  *v24 = v23;
  swift_storeEnumTagMultiPayload();
  *(v24 + *(type metadata accessor for OrderImageVignette(0) + 20)) = 1;
  v25 = sub_23875E490();
  v27 = v26;
  v28 = &v10[*(v37 + 36)];
  sub_2385EC4E0(a1, v28);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B18, &qword_2387766E0) + 36));
  *v29 = v25;
  v29[1] = v27;
  v30 = v39;
  sub_23843981C(v15, v39, &qword_27DF10B68, &qword_238776728);
  v31 = v40;
  sub_23843981C(v10, v40, &qword_27DF10B08, &qword_2387766C8);
  v32 = v41;
  sub_23843981C(v30, v41, &qword_27DF10B68, &qword_238776728);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B78, &qword_238776738);
  v34 = v32 + *(v33 + 48);
  *v34 = 0x4024000000000000;
  *(v34 + 8) = 0;
  sub_23843981C(v31, v32 + *(v33 + 64), &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v10, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v15, &qword_27DF10B68, &qword_238776728);
  sub_238439884(v31, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v30, &qword_27DF10B68, &qword_238776728);

  return result;
}

double sub_2385EB114@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v2 = type metadata accessor for SubtitleView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v41 - v7);
  v9 = sub_23875DA00();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B00, &qword_2387766C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for TitleView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_23875B0A0();
  v24 = v46;
  (*(*(v23 - 8) + 16))(v22, v46, v23);
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_23843981C(v24 + *(active + 20), v8, &qword_27DF10940, &qword_2387762E8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  if ((*(*(v26 - 8) + 48))(v8, 1, v26) == 1)
  {
    sub_238439884(v8, &qword_27DF10940, &qword_2387762E8);
    v27 = 1;
  }

  else
  {
    v28 = *v8;
    v41 = v8[1];
    v42 = v28;
    v46 = v3;
    v29 = v2;
    v30 = *(v26 + 48);
    v31 = v43;
    v32 = *(v44 + 32);
    v33 = v8 + v30;
    v34 = v45;
    v32(v43, v33, v45);
    v32(&v5[*(v2 + 20)], v31, v34);
    v35 = v41;
    *v5 = v42;
    *(v5 + 1) = v35;
    v36 = *(v2 + 24);
    *&v5[v36] = swift_getKeyPath(aH_8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    v2 = v29;
    v3 = v46;
    swift_storeEnumTagMultiPayload();
    sub_2385EE638(v5, v16, type metadata accessor for SubtitleView);
    v27 = 0;
  }

  (*(v3 + 56))(v16, v27, 1, v2);
  sub_2385EECDC(v22, v19, type metadata accessor for TitleView);
  sub_23843981C(v16, v13, &qword_27DF10B00, &qword_2387766C0);
  v37 = v22;
  v38 = v48;
  sub_2385EECDC(v19, v48, type metadata accessor for TitleView);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B80, &qword_238776740);
  sub_23843981C(v13, v38 + *(v39 + 48), &qword_27DF10B00, &qword_2387766C0);
  sub_238439884(v16, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v37, type metadata accessor for TitleView);
  sub_238439884(v13, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v19, type metadata accessor for TitleView);

  return result;
}

uint64_t sub_2385EB684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B30, &qword_2387766F8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v7 - v2);
  *v3 = sub_23875E4B0();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B38, &qword_238776700);
  sub_2385EA794(v0, v3 + *(v5 + 44));
  sub_2385EA648();
  sub_23843A3E8(&qword_27DF10B40, &qword_27DF10B30, &qword_2387766F8, MEMORY[0x277CE11A8]);
  sub_23875DE00();

  return sub_238439884(v3, &qword_27DF10B30, &qword_2387766F8);
}

double sub_2385EB7B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AE8, &qword_2387766A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 28), v11, type metadata accessor for OrderNavigationDestination);
  v19 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_2385EED74(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_23875C760();
  *&v17[*(v12 + 36)] = 0;
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AF0, &qword_2387766B0);
  sub_2385EBC14(a1, &v8[*(v20 + 44)]);
  sub_23843981C(v17, v14, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v8, v5, &qword_27DF10AE8, &qword_2387766A8);
  v21 = v25;
  sub_23843981C(v14, v25, &qword_27DF0BC20, &qword_238769430);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AF8, &qword_2387766B8);
  sub_23843981C(v5, v21 + *(v22 + 48), &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v8, &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v17, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v5, &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v14, &qword_27DF0BC20, &qword_238769430);

  return result;
}

double sub_2385EBB80(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_2385EBC14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = type metadata accessor for SubtitleView(0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = (&v61 - v5);
  v6 = sub_23875DA00();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B00, &qword_2387766C0);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v61 - v11;
  v12 = type metadata accessor for TitleView(0);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v61 - v15;
  v16 = sub_23875DFD0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B08, &qword_2387766C8);
  MEMORY[0x28223BE20](v65);
  v69 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v61 - v22;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v24 = v75;
  sub_2385EECDC(a1 + *(active + 24), v75, type metadata accessor for ProductImage.ViewModel);
  v25 = *(type metadata accessor for ProductImage(0) + 20);
  *(v24 + v25) = swift_getKeyPath(byte_2387763B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v17 + 104))(v19, *MEMORY[0x277CE0EE0], v16);
  v26 = sub_23875E090();
  KeyPath = swift_getKeyPath(aH_8);
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36);
  v29 = type metadata accessor for OrderImageStyleModifier(0);
  *(v28 + *(v29 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v28 + *(v29 + 40)) = swift_getKeyPath(byte_2387763B8);
  swift_storeEnumTagMultiPayload();
  *v28 = xmmword_238762FA0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  *(v28 + 32) = v26;
  *(v28 + 40) = 1;
  v30 = swift_getKeyPath(byte_2387763B8);
  v31 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090) + 36));
  *v31 = v30;
  swift_storeEnumTagMultiPayload();
  *(v31 + *(type metadata accessor for OrderImageVignette(0) + 20)) = 1;
  v32 = sub_23875E490();
  v34 = v33;
  v35 = v24 + *(v65 + 36);
  sub_2385EC4E0(a1, v35);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B18, &qword_2387766E0) + 36));
  *v36 = v32;
  v36[1] = v34;
  v37 = sub_23875B0A0();
  (*(*(v37 - 8) + 16))(v76, a1, v37);
  v38 = a1 + *(active + 20);
  v39 = v66;
  sub_23843981C(v38, v66, &qword_27DF10940, &qword_2387762E8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_238439884(v39, &qword_27DF10940, &qword_2387762E8);
    v41 = 1;
    v42 = v73;
    v43 = v67;
  }

  else
  {
    v44 = *v39;
    v45 = v39[1];
    v46 = *(v40 + 48);
    v47 = v61;
    v48 = *(v62 + 32);
    v49 = v39 + v46;
    v50 = v63;
    v48(v61, v49, v63);
    v42 = v73;
    v51 = v64;
    v48(&v64[*(v73 + 20)], v47, v50);
    *v51 = v44;
    v51[1] = v45;
    v52 = *(v42 + 24);
    *(v51 + v52) = swift_getKeyPath(aH_8);
    swift_storeEnumTagMultiPayload();
    v43 = v67;
    sub_2385EE638(v51, v67, type metadata accessor for SubtitleView);
    v41 = 0;
  }

  (*(v71 + 56))(v43, v41, 1, v42);
  v53 = v75;
  v54 = v69;
  sub_23843981C(v75, v69, &qword_27DF10B08, &qword_2387766C8);
  v55 = v76;
  v56 = v70;
  sub_2385EECDC(v76, v70, type metadata accessor for TitleView);
  v57 = v72;
  sub_23843981C(v43, v72, &qword_27DF10B00, &qword_2387766C0);
  v58 = v74;
  sub_23843981C(v54, v74, &qword_27DF10B08, &qword_2387766C8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B20, &qword_2387766E8);
  sub_2385EECDC(v56, v58 + *(v59 + 48), type metadata accessor for TitleView);
  sub_23843981C(v57, v58 + *(v59 + 64), &qword_27DF10B00, &qword_2387766C0);
  sub_238439884(v43, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v55, type metadata accessor for TitleView);
  sub_238439884(v53, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v57, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v56, type metadata accessor for TitleView);
  sub_238439884(v54, &qword_27DF10B08, &qword_2387766C8);

  return result;
}

double sub_2385EC4E0@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ReturnIcon(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B28, &qword_2387766F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + *(type metadata accessor for ActiveOrderContentItemView.ViewModel(0) + 32)) & 1) == 0)
  {

    goto LABEL_7;
  }

  v12 = sub_23875F630();

  if (v12)
  {
LABEL_7:
    *v8 = 1;
    v13 = *(v5 + 20);
    *&v8[v13] = swift_getKeyPath(byte_2387763B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    sub_2385EE638(v8, v11, type metadata accessor for ReturnIcon);
    (*(v6 + 56))(v11, 0, 1, v5);
    goto LABEL_8;
  }

  (*(v6 + 56))(v11, 1, 1, v5);
LABEL_8:
  sub_2384396E4(v11, a3, &qword_27DF10B28, &qword_2387766F0);

  return result;
}

uint64_t sub_2385EC760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AD0, &qword_238776698);
  MEMORY[0x28223BE20](v1);
  v3 = (&v7 - v2);
  *v3 = sub_23875E4B0();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AD8, &qword_2387766A0);
  sub_2385EB7B0(v0, v3 + *(v5 + 44));
  sub_2385EA648();
  sub_23843A3E8(&qword_27DF10AE0, &qword_27DF10AD0, &qword_238776698, MEMORY[0x277CE11A8]);
  sub_23875DE00();

  return sub_238439884(v3, &qword_27DF10AD0, &qword_238776698);
}

double sub_2385EC88C@<D0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_23875BE40();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23875BE20();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23875BD20();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2387595E0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875B1B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_2385EED74(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
  sub_23875B090();
  v9 = (*(v6 + 8))(v8, v5);
  v42 = v38;
  v43 = v39;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v5) = v15;
  sub_23875D8F0();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v12, v14, v5 & 1);

  sub_23875D890();
  v21 = sub_23875D9E0();
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v16, v18, v20 & 1);

  sub_238495020(v26, v27, v28);
  sub_23875B090();
  v42 = v38;
  v29 = sub_23875DA20();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2384397FC(v21, v23, v25 & 1);

  v38 = v29;
  v39 = v31;
  v40 = v33 & 1;
  v41 = v35;
  sub_23875DE00();
  sub_2384397FC(v29, v31, v33 & 1);

  return result;
}

uint64_t sub_2385ECC90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_23875C880();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-v8];
  v10 = *(v1 + 1);
  v40 = *v1;
  v41 = v10;
  sub_2384397A8(v11, v12, v13);

  v14 = sub_23875DAA0();
  v16 = v15;
  LOBYTE(v10) = v17;
  sub_23875D7F0();
  v18 = sub_23875DA60();
  v35 = v19;
  v36 = v18;
  v34 = v20;
  v37 = v21;

  sub_2384397FC(v14, v16, v10 & 1);

  v22 = type metadata accessor for SubtitleView(0);
  sub_2384D5138(v5);
  LOBYTE(v14) = sub_23875C860();
  (*(v3 + 8))(v5, v38);
  if (v14)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  KeyPath = swift_getKeyPath(a8_5);
  v25 = *(v22 + 20);
  v26 = swift_getKeyPath(byte_238776848);
  v27 = &v9[*(v7 + 44)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v29 = sub_23875DA00();
  (*(*(v29 - 8) + 16))(v27 + v28, &v2[v25], v29);
  *v27 = v26;
  v30 = v35;
  *v9 = v36;
  *(v9 + 1) = v30;
  v9[16] = v34 & 1;
  *(v9 + 3) = v37;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = v23;
  v9[48] = 0;
  v31 = v39;
  sub_2384396E4(v9, v39, &qword_27DF0A028, &qword_238764FC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BC8, qword_238776880);
  *(v31 + *(result + 36)) = 256;
  return result;
}

void sub_2385ECF60(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Return(0);
  v190 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v203 = (&v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v191 = &v186 - v8;
  v221 = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  v198 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v229 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v199 = &v186 - v11;
  v213 = sub_23875AF90();
  v219 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v225 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v228 = &v186 - v14;
  MEMORY[0x28223BE20](v15);
  v227 = &v186 - v16;
  v212 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v212);
  v202 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v220 = &v186 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v186 - v21;
  v23 = sub_23875BC40();
  MEMORY[0x28223BE20](v23 - 8);
  v189 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v186 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v31 - 8);
  v214 = (&v186 - v32);
  v33 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v34 = *(v33 + 40);
  v35 = sub_2387590B0();
  v36 = *(v35 - 1);
  v223 = *(v36 + 56);
  v224 = v35;
  v222 = v36 + 56;
  v223(&v34[a3], 1, 1);
  sub_238757D40();
  v37 = [a2 createdDate];
  v187 = v33;
  v188 = a3;
  sub_23875BBE0();

  v38 = a1;
  v39 = a2;
  v40 = [v39 merchant];
  v41 = [v40 logoName];

  v200 = v27;
  v218 = v22;
  v226 = v34;
  if (v41)
  {
    v42 = sub_23875EA80();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = v187;
  v46 = v188;
  v47 = (v188 + v187[6]);
  *v47 = v42;
  v47[1] = v44;
  v48 = type metadata accessor for MerchantImage.ViewModel(0);
  sub_238757DA0();
  v49 = [v39 merchant];
  v50 = [v49 displayName];

  v51 = sub_2387586A0();
  v53 = v52;

  v54 = (v47 + *(v48 + 24));
  *v54 = v51;
  v54[1] = v53;
  *(v46 + v45[7]) = [v38 effectiveNotificationsEnabled];
  v55 = (v46 + v45[8]);
  *v55 = 0;
  v56 = type metadata accessor for OrderActionsMenuContext(0);
  v57 = v38;
  v58 = v39;
  sub_238757D40();
  v55[v56[6]] = [v57 notificationsEnabled];
  v55[v56[7]] = [v57 isActive];
  v55[v56[8]] = sub_2385BA98C() & 1;
  v55[v56[9]] = [v57 isMarkedAsComplete];
  v55[v56[10]] = sub_238757DC0() & 1;
  LOBYTE(v48) = [v57 automaticUpdatesEnabled];

  v55[v56[11]] = v48;
  v59 = sub_2387598F0();
  v186 = *(v59 - 8);
  v60 = *(v186 + 56);
  v210 = v59;
  v209 = v186 + 56;
  v208 = v60;
  (v60)(v214, 1, 1);
  v61 = v57;
  v62 = v58;
  v215 = v61;
  sub_23875B080();
  v63 = sub_23875A5A0();
  if (v63 >> 62)
  {
    goto LABEL_126;
  }

  for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23875F3A0())
  {
    v65 = v227;

    v66 = v226;
    if (i)
    {
      sub_23875A5A0();
      v67 = [v62 createdDate];
      sub_23875BBE0();

      sub_2387590A0();
      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    (v223)(v30, v68, 1, v224);
    sub_2385EE5C8(v30, &v66[v188]);
    sub_238757DA0();
    v211 = v62;
    v69 = sub_23875A5A0();
    v62 = v69;
    v70 = v69 & 0xFFFFFFFFFFFFFF8;
    if (v69 >> 62)
    {
      v71 = sub_23875F3A0();
    }

    else
    {
      v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = MEMORY[0x277D84F90];
    if (v71)
    {
      v73 = 0;
      do
      {
        v30 = v73;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v74 = MEMORY[0x23EE63F70](v30, v62);
            v73 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_119;
            }
          }

          else
          {
            if (v30 >= *(v70 + 16))
            {
              goto LABEL_120;
            }

            v74 = *(v62 + 8 * v30 + 32);
            v73 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }
          }

          v75 = v74;
          v76 = [v75 image];
          if (v76)
          {
            break;
          }

          ++v30;
          if (v73 == v71)
          {
            goto LABEL_28;
          }
        }

        v77 = v76;
        v78 = sub_23875EA80();
        v30 = v79;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_238497C2C(0, *(v72 + 2) + 1, 1, v72);
        }

        v81 = *(v72 + 2);
        v80 = *(v72 + 3);
        if (v81 >= v80 >> 1)
        {
          v72 = sub_238497C2C((v80 > 1), v81 + 1, 1, v72);
        }

        *(v72 + 2) = v81 + 1;
        v82 = &v72[16 * v81];
        *(v82 + 4) = v78;
        *(v82 + 5) = v30;
        v65 = v227;
      }

      while (v73 != v71);
    }

LABEL_28:

    v83 = v218;
    v84 = *(v219 + 16);
    v62 = v65;
    v85 = v213;
    v207 = v219 + 16;
    v206 = v84;
    v84(v218, v65, v213);
    if (*(v72 + 2) >= 5uLL)
    {
      sub_23852EE64(v72, (v72 + 32), 0, 9uLL);
      v87 = v86;

      v72 = v87;
    }

    v88 = v211;
    v89 = *(v219 + 8);
    v219 += 8;
    v205 = v89;
    v89(v62, v85);
    *(v83 + *(v212 + 20)) = v72;
    sub_2385EE638(v83, v188 + v187[11], type metadata accessor for ProductImage.ViewModel);
    v90 = sub_23875A4F0();
    v91 = *(v90 + 16);
    if (!v91)
    {
      break;
    }

    v230 = MEMORY[0x277D84F90];
    v92 = v90;
    sub_2385FEE94(0, v91, 0);
    v93 = v92;
    v30 = 0;
    v94 = v230;
    v95 = *(v92 + 16);
    v196 = v92 + 32;
    v195 = *MEMORY[0x277CC7B30];
    v194 = (v186 + 104);
    if (v95 >= v91)
    {
      v95 = v91;
    }

    v197 = v95;
    v193 = v92;
    v192 = v91;
    while (v30 != v197)
    {
      if (v30 >= *(v93 + 16))
      {
        goto LABEL_122;
      }

      v218 = v94;
      v96 = *(v196 + 8 * v30);
      v97 = *(v221 + 28);
      v98 = v229;
      (v223)(&v229[v97], 1, 1, v224);
      v99 = (v96 & 0x7FFFFFFFFFFFFFFFLL);
      v100 = v215;
      v101 = v88;
      v102 = v99;
      v103 = sub_238759910();
      *v98 = sub_238759900();
      v98[1] = v104;
      v105 = v214;
      v217 = v96;
      *v214 = v96;
      v106 = v210;
      (*v194)(v105, v195, v210);
      v208(v105, 0, 1, v106);
      v107 = v100;
      v108 = v101;
      v216 = v102;
      v226 = v108;
      v227 = v107;
      sub_23875B080();
      if (v103 >> 62)
      {
        v62 = sub_23875F3A0();
      }

      else
      {
        v62 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v109 = v200;
      if (v62)
      {

        v110 = [v226 createdDate];
        sub_23875BBE0();

        sub_2387590A0();
        v111 = 0;
      }

      else
      {
        v111 = 1;
      }

      (v223)(v109, v111, 1, v224);
      sub_2385EE5C8(v109, &v229[v97]);
      sub_238757DA0();
      if (v62)
      {
        v112 = 0;
        v113 = MEMORY[0x277D84F90];
        while (2)
        {
          v114 = v112;
          while (1)
          {
            if ((v103 & 0xC000000000000001) != 0)
            {
              v115 = MEMORY[0x23EE63F70](v114, v103);
              v112 = v114 + 1;
              if (__OFADD__(v114, 1))
              {
                goto LABEL_115;
              }
            }

            else
            {
              if (v114 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v115 = *(v103 + 8 * v114 + 32);
              v112 = v114 + 1;
              if (__OFADD__(v114, 1))
              {
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }
            }

            v116 = v115;
            v117 = [v116 image];
            if (v117)
            {
              break;
            }

            ++v114;
            if (v112 == v62)
            {
              goto LABEL_60;
            }
          }

          v118 = v117;
          v119 = sub_23875EA80();
          v201 = v120;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_238497C2C(0, *(v113 + 2) + 1, 1, v113);
          }

          v122 = *(v113 + 2);
          v121 = *(v113 + 3);
          if (v122 >= v121 >> 1)
          {
            v113 = sub_238497C2C((v121 > 1), v122 + 1, 1, v113);
          }

          *(v113 + 2) = v122 + 1;
          v123 = &v113[16 * v122];
          v124 = v201;
          *(v123 + 4) = v119;
          *(v123 + 5) = v124;
          if (v112 != v62)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v113 = MEMORY[0x277D84F90];
      }

LABEL_60:

      v125 = v213;
      v206(v220, v228, v213);
      if (*(v113 + 2) >= 5uLL)
      {
        sub_23852EE64(v113, (v113 + 32), 0, 9uLL);
        v127 = v126;

        v113 = v127;
      }

      v88 = v211;
      v128 = v221;
      v129 = *(v221 + 36);
      v205(v228, v125);
      v130 = v220;
      *&v220[*(v212 + 20)] = v113;
      v131 = v229;
      sub_2385EE638(v130, &v229[*(v128 + 32)], type metadata accessor for ProductImage.ViewModel);
      v62 = v216;
      if (v217 < 0)
      {
        v132 = v216;
      }

      else
      {
        v132 = v217;
      }

      v133 = &selRef_recipientAddress;
      if (v217 < 0)
      {
        v133 = &selRef_address;
      }

      v134 = [v132 *v133];

      *(v131 + v129) = v134;
      *(v131 + 16) = v30;
      v135 = v199;
      sub_2385EE638(v131, v199, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
      v94 = v218;
      v230 = v218;
      v137 = *(v218 + 2);
      v136 = *(v218 + 3);
      if (v137 >= v136 >> 1)
      {
        sub_2385FEE94((v136 > 1), v137 + 1, 1);
        v135 = v199;
        v94 = v230;
      }

      ++v30;
      *(v94 + 2) = v137 + 1;
      sub_2385EE638(v135, &v94[((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v137], type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
      v93 = v193;
      if (v30 == v192)
      {

        goto LABEL_73;
      }
    }

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
    ;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_73:
  *(v188 + v187[12]) = v94;
  v138 = sub_23875A580();
  v139 = v138;
  v140 = v138 >> 62;
  if (v138 >> 62)
  {
    v141 = sub_23875F3A0();
    if (v141)
    {
      goto LABEL_75;
    }

LABEL_129:

    v142 = MEMORY[0x277D84F90];
LABEL_130:
    *(v188 + v187[13]) = v142;
    return;
  }

  v141 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v141)
  {
    goto LABEL_129;
  }

LABEL_75:
  v216 = v139;
  v230 = MEMORY[0x277D84F90];
  sub_2385FEE50(0, v141 & ~(v141 >> 63), 0);
  if ((v141 & 0x8000000000000000) == 0)
  {
    v142 = v230;
    if (v140)
    {
      v144 = v216;
      v201 = v216 & 0xFFFFFFFFFFFFFF8;
      v145 = sub_23875F3A0();
      v143 = v144;
      v222 = v145;
    }

    else
    {
      v143 = v216;
      v201 = v216 & 0xFFFFFFFFFFFFFF8;
      v222 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v146 = 0;
    v221 = v143 & 0xC000000000000001;
    v200 = (v143 + 32);
    LODWORD(v220) = *MEMORY[0x277CC7B38];
    v217 = v141;
    v218 = (v186 + 104);
    while (1)
    {
      if (__OFADD__(v146, 1))
      {
        goto LABEL_123;
      }

      if (v146 >= v141 || v146 >= v222)
      {
        goto LABEL_124;
      }

      v228 = v146;
      v229 = (v146 + 1);
      if (v221)
      {
        v147 = MEMORY[0x23EE63F70](v146, v216);
      }

      else
      {
        if (v146 >= *(v201 + 16))
        {
          goto LABEL_125;
        }

        v147 = *&v200[8 * v146];
      }

      v148 = v147;
      v149 = v215;
      v150 = v88;
      v151 = v148;
      v152 = [v151 returnIdentifier];
      v153 = sub_23875EA80();
      v155 = v154;

      v156 = v203;
      *v203 = v153;
      v156[1] = v155;
      v30 = v214;
      *v214 = v151;
      v157 = v210;
      (*v218)(v30, v220, v210);
      v208(v30, 0, 1, v157);
      v158 = v149;
      v159 = v150;
      v160 = v151;
      sub_23875B080();
      v161 = v159;
      v162 = v160;
      v224 = v161;
      sub_238759030();
      sub_238757DA0();
      v163 = sub_238758D10();
      v62 = v163;
      v227 = v142;
      v164 = v163 & 0xFFFFFFFFFFFFFF8;
      if (v163 >> 62)
      {
        v165 = sub_23875F3A0();
        v226 = v158;
        if (v165)
        {
LABEL_89:
          v166 = 0;
          v167 = MEMORY[0x277D84F90];
          do
          {
            v168 = v166;
            while (1)
            {
              if ((v62 & 0xC000000000000001) != 0)
              {
                v169 = MEMORY[0x23EE63F70](v168, v62);
                v166 = v168 + 1;
                if (__OFADD__(v168, 1))
                {
                  goto LABEL_117;
                }
              }

              else
              {
                if (v168 >= *(v164 + 16))
                {
                  goto LABEL_118;
                }

                v169 = *(v62 + 8 * v168 + 32);
                v166 = v168 + 1;
                if (__OFADD__(v168, 1))
                {
                  goto LABEL_117;
                }
              }

              v30 = v169;
              v170 = [v30 image];
              if (v170)
              {
                break;
              }

              ++v168;
              if (v166 == v165)
              {
                goto LABEL_108;
              }
            }

            v171 = v170;
            v223 = sub_23875EA80();
            v173 = v172;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v167 = sub_238497C2C(0, *(v167 + 2) + 1, 1, v167);
            }

            v175 = *(v167 + 2);
            v174 = *(v167 + 3);
            v30 = v175 + 1;
            if (v175 >= v174 >> 1)
            {
              v167 = sub_238497C2C((v174 > 1), v175 + 1, 1, v167);
            }

            *(v167 + 2) = v30;
            v176 = &v167[16 * v175];
            *(v176 + 4) = v223;
            *(v176 + 5) = v173;
          }

          while (v166 != v165);
          goto LABEL_108;
        }
      }

      else
      {
        v165 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v226 = v158;
        if (v165)
        {
          goto LABEL_89;
        }
      }

      v167 = MEMORY[0x277D84F90];
LABEL_108:

      v177 = v213;
      v206(v202, v225, v213);
      if (*(v167 + 2) < 5uLL)
      {

        v180 = v224;
        v162 = v224;
        v30 = v226;
        v62 = v226;
      }

      else
      {
        sub_23852EE64(v167, (v167 + 32), 0, 9uLL);
        v179 = v178;
        v30 = v226;

        v180 = v224;

        v62 = v162;
        v167 = v179;
      }

      v142 = v227;

      v205(v225, v177);
      v181 = v202;
      *&v202[*(v212 + 20)] = v167;
      v182 = v203;
      sub_2385EE638(v181, v203 + *(active + 32), type metadata accessor for ProductImage.ViewModel);
      *(v182 + 16) = v228;
      v183 = v191;
      sub_2385EE638(v182, v191, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
      v230 = v142;
      v185 = *(v142 + 2);
      v184 = *(v142 + 3);
      if (v185 >= v184 >> 1)
      {
        sub_2385FEE50((v184 > 1), v185 + 1, 1);
        v183 = v191;
        v142 = v230;
      }

      *(v142 + 2) = v185 + 1;
      sub_2385EE638(v183, &v142[((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v185], type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
      v146 = v229;
      v141 = v217;
      v88 = v211;
      if (v229 == v217)
      {

        goto LABEL_130;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2385EE5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385EE638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2385EE6C8(uint64_t a1)
{
  sub_23875B0A0();
  if (v1 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_27DF108A8, MEMORY[0x277CC76F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_2385EE7F4(319, &qword_27DF0EB40, sub_2385EE858, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385EE7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2385EE858()
{
  result = qword_27DF0EB48;
  if (!qword_27DF0EB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0EB48);
  }

  return result;
}

uint64_t sub_2385EE8CC(uint64_t a1)
{
  result = sub_23875B0A0();
  if (v2 <= 0x3F)
  {
    result = sub_2387590B0();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ProductImage.ViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2385EE9A8(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_23875BC40();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MerchantImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OrderActionsMenuContext(319);
        if (v4 <= 0x3F)
        {
          sub_23875B0A0();
          if (v5 <= 0x3F)
          {
            sub_2385EE7F4(319, &qword_27DF108A8, MEMORY[0x277CC76F0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ProductImage.ViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_2385EE7F4(319, &qword_27DF108D0, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_2385EE7F4(319, &qword_27DF108D8, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return, MEMORY[0x277D83940]);
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

void sub_2385EEBB4(uint64_t a1)
{
  type metadata accessor for OrderListActiveOrderRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384B49C4();
    if (v2 <= 0x3F)
    {
      sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2385EECDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385EED74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_21()
{
  active = type metadata accessor for OrderListActiveOrderRow(0);
  v26 = *(*(active - 8) + 80);
  v24 = *(*(active - 8) + 64);
  v25 = (v26 + 16) & ~v26;
  v27 = v0;
  v1 = v0 + v25;
  v2 = sub_23875A710();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v25, v2);
  v4 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v5 = v4[5];
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = v1 + v4[6];

  v8 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v9 = sub_23875AF90();
  v10 = (*(v9 - 8) + 8);
  v11 = v7 + v8;
  v12 = *v10;
  (*v10)(v11, v9);

  v13 = v4[8];
  v14 = type metadata accessor for OrderActionsMenuContext(0);
  v3(v1 + v13 + *(v14 + 20), v2);
  v15 = v4[9];
  v16 = sub_23875B0A0();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = v4[10];
  v18 = sub_2387590B0();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v1 + v17, 1, v18))
  {
    (*(v19 + 8))(v1 + v17, v18);
  }

  v12(v1 + v4[11], v9);
  type metadata accessor for ProductImage.ViewModel(0);

  v20 = *(active + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_23875C880();
    (*(*(v21 - 8) + 8))(v1 + v20, v21);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v27, v25 + v24, v26 | 7);
}

uint64_t sub_2385EF1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2385EF258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

double sub_2385EF2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void sub_2385EF3C4(uint64_t a1)
{
  sub_23875B0A0();
  if (v1 <= 0x3F)
  {
    sub_2385EF490(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OrderNavigationDestination(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385EF490(uint64_t a1)
{
  if (!qword_27DF10A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF109B0, &qword_238776358);
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF10A88);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_73Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v9 = *(active - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, active);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2385EF758(uint64_t a1)
{
  type metadata accessor for ActiveOrderContentItemView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2385EF80C()
{
  result = qword_27DF10AB0;
  if (!qword_27DF10AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10AB8, &qword_238776550);
    sub_2385EF890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AB0);
  }

  return result;
}

unint64_t sub_2385EF890()
{
  result = qword_27DF10AC0;
  if (!qword_27DF10AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10908, &qword_2387762C0);
    v1 = MEMORY[0x277CE14C0];
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8, MEMORY[0x277CE14C0]);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AC0);
  }

  return result;
}

unint64_t sub_2385EF974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10AC8;
  if (!qword_27DF10AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AC8);
  }

  return result;
}

void sub_2385EFA68(uint64_t a1)
{
  sub_23875DA00();
  if (v1 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2385EFB54(uint64_t a1)
{
  result = sub_23875B0A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2385EFBC0()
{
  result = qword_27DF10BA8;
  if (!qword_27DF10BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BB0, &qword_238776760);
    sub_23843A3E8(&qword_27DF10AE0, &qword_27DF10AD0, &qword_238776698, MEMORY[0x277CE11A8]);
    sub_2385EED74(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BA8);
  }

  return result;
}

unint64_t sub_2385EFCA8()
{
  result = qword_27DF10BB8;
  if (!qword_27DF10BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BC0, qword_238776768);
    sub_23843A3E8(&qword_27DF10B40, &qword_27DF10B30, &qword_2387766F8, MEMORY[0x277CE11A8]);
    sub_2385EED74(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BB8);
  }

  return result;
}

unint64_t sub_2385EFDC8()
{
  result = qword_27DF10BD0;
  if (!qword_27DF10BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BC8, qword_238776880);
    sub_2385EFE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BD0);
  }

  return result;
}

unint64_t sub_2385EFE54()
{
  result = qword_27DF10BD8;
  if (!qword_27DF10BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A028, &qword_238764FC0);
    sub_23843A174();
    sub_23843A3E8(&qword_27DF10BE0, &qword_27DF0A040, &qword_238765ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BD8);
  }

  return result;
}

void sub_2385EFF14(id *a1)
{
  v1 = [*a1 storedArchiveDate];
  sub_23875BBE0();
}

id sub_2385EFF74(__int16 a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632E0;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2387632F0;
  v6 = MEMORY[0x277D84958];
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = MEMORY[0x277D84958];
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v4 + 32) = sub_23875EF80();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632F0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = a2;
  *(v4 + 40) = sub_23875EF80();
  *(v4 + 48) = sub_23875EF80();
  v9 = sub_23875EC60();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

void *sub_2385F0128(__int16 a1, __int16 a2)
{
  sub_238759C20();
  v4 = sub_238759C00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath(byte_2387768A8);
  *(v5 + 32) = sub_23875F040();
  v6 = sub_23875EC60();

  [v4 setSortDescriptors_];

  v7 = sub_2385EFF74(a1, a2);
  [v4 setPredicate_];

  [v4 setReturnsObjectsAsFaults_];
  return v4;
}

void *sub_2385F0244()
{
  v25 = sub_23875BC40();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BE00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BD30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE20();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9810], v7, v12);
  sub_23875BD40();
  (*(v8 + 8))(v10, v7);
  v15 = *(v4 + 104);
  v15(v6, *MEMORY[0x277CC9988], v3);
  sub_23875BBF0();
  v16 = sub_23875BE10();
  v17 = *(v0 + 8);
  v24 = v0 + 8;
  v17(v2, v25);
  v18 = *(v4 + 8);
  result = v18(v6, v3);
  if (v16 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15(v6, *MEMORY[0x277CC9998], v3);
  sub_23875BBF0();
  v20 = sub_23875BE10();
  v17(v2, v25);
  result = v18(v6, v3);
  if (v20 < -32768)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 < 0x8000)
  {
    v21 = sub_2385F0128(v16, v20);
    (*(v22 + 8))(v14, v23);
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_2385F05E0()
{
  v0 = sub_23875BC40();
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BD30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BE20();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9810], v8, v13);
  sub_23875BD40();
  (*(v9 + 8))(v11, v8);
  v16 = *(v5 + 104);
  v16(v7, *MEMORY[0x277CC9988], v4);
  sub_23875BBF0();
  v36 = v15;
  v17 = sub_23875BE10();
  v18 = *(v38 + 8);
  v38 += 8;
  v18(v3, v37);
  v19 = *(v5 + 8);
  result = v19(v7, v4);
  if (v17 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16(v7, *MEMORY[0x277CC9998], v4);
  sub_23875BBF0();
  v21 = sub_23875BE10();
  v18(v3, v37);
  result = v19(v7, v4);
  if (v21 < -32768)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 < 0x8000)
  {
    sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D84958];
    *(v22 + 16) = xmmword_2387632F0;
    v24 = MEMORY[0x277D849A0];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v17;
    v25 = sub_23875EF80();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_238763B60;
    *(v26 + 56) = v23;
    *(v26 + 64) = v24;
    *(v26 + 32) = v17;
    *(v26 + 96) = v23;
    *(v26 + 104) = v24;
    *(v26 + 72) = v21;
    v27 = sub_23875EF80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_238763E60;
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    v29 = v25;
    v30 = v27;
    v31 = sub_23875EC60();

    v32 = [objc_opt_self() orPredicateWithSubpredicates_];

    (*(v34 + 8))(v36, v35);
    return v32;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2385F0ADC()
{
  sub_23875A850();
  v0 = sub_23875A840();
  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763E60;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v1 + 32) = sub_23875EF80();
  *(v1 + 40) = sub_2385F05E0();
  v2 = sub_23875EC60();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v0 setPredicate_];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238763E60;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v6 = sub_23875EA50();
  v7 = [v5 initWithKey:v6 ascending:0];

  *(v4 + 32) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_23875EA50();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v4 + 40) = v10;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v11 = sub_23875EC60();

  [v0 setSortDescriptors_];

  return v0;
}

uint64_t sub_2385F0D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  MEMORY[0x28223BE20](active - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_238759BE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - v18);
  v23 = a1;
  sub_238759BF0();
  v20 = (*(v14 + 88))(v19, v13);
  if (v20 == *MEMORY[0x277CC7C50])
  {
    (*(v14 + 96))(v19, v13);
    v21 = *v19;
    sub_238757D90();
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277CC76A8])
    {
      (*(v10 + 96))(v12, v9);
      sub_2385ECF60(v21, *v12, v8);

      sub_2385F7BC0(v8, v24, type metadata accessor for OrderListActiveOrderRow.ViewModel);
LABEL_6:
      type metadata accessor for OrderListContent.ActiveContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v20 == *MEMORY[0x277CC7C58])
    {
      (*(v14 + 96))(v19, v13);
      sub_2384C4234(*v19, v5);

      sub_2385F7BC0(v5, v24, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
      goto LABEL_6;
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v14 + 8))(v16, v13);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385F1160@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_23875A4D0();
  sub_238757D40();
  sub_23843981C(v14, v11, &qword_27DF09F38, &qword_238764DC0);
  v15 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v16 = (a3 + *(v15 + 20));
  v17 = a1;
  v18 = a2;
  v19 = v17;
  v20 = v18;
  sub_2384C7944(v20, v19, v16);
  sub_23843981C(v11, v8, &qword_27DF09F38, &qword_238764DC0);
  type metadata accessor for OrderListRow.ViewModel(0);
  v21 = v20;
  sub_238759050();
  sub_23843981C(v11, v8, &qword_27DF09F38, &qword_238764DC0);
  sub_23875B080();
  sub_238439884(v11, &qword_27DF09F38, &qword_238764DC0);
  v22 = v26 + *(v15 + 24);
  sub_238757D40();
  LOBYTE(v15) = sub_2385BA98C();
  v23 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  *(v22 + *(v23 + 20)) = v15 & 1;
  LOBYTE(v15) = [v19 isMarkedAsComplete];

  result = sub_238439884(v14, &qword_27DF09F38, &qword_238764DC0);
  *(v22 + *(v23 + 24)) = v15;
  return result;
}

uint64_t sub_2385F13B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238758FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_238759BE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - v18);
  v23 = a1;
  sub_238759BF0();
  v20 = (*(v14 + 88))(v19, v13);
  if (v20 == *MEMORY[0x277CC7C50])
  {
    (*(v14 + 96))(v19, v13);
    v21 = *v19;
    sub_238757D90();
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277CC76A8])
    {
      (*(v10 + 96))(v12, v9);
      sub_2385F1160(v21, *v12, v8);

      sub_2385F7BC0(v8, v24, type metadata accessor for OrderListContent.CurrentMonthItemViewModel);
LABEL_6:
      type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v20 == *MEMORY[0x277CC7C58])
    {
      (*(v14 + 96))(v19, v13);
      sub_2386A2B1C(*v19, 0, v5);

      sub_2385F7BC0(v5, v24, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      goto LABEL_6;
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v14 + 8))(v16, v13);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

void *sub_2385F1808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D10, &qword_238776B98);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v30 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  type metadata accessor for OrderListContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v7 = v3;
  sub_23875D340();
  v8 = v6;
  v9 = sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98, MEMORY[0x277CDE118]);
  v10 = sub_23875EEE0();
  if (!v10)
  {
    (*(v4 + 8))(v6, v3);
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v25 = v4;
  v32 = MEMORY[0x277D84F90];
  sub_2385FEED8(0, v10 & ~(v10 >> 63), 0);
  v12 = v32;
  v29 = v9;
  result = sub_23875EED0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = sub_23875ED50();
    v27 = (v1 + 16);
    v28 = v14;
    v26 = (v1 + 8);
    do
    {
      v15 = v8;
      v16 = v7;
      v17 = sub_23875EF20();
      (*v27)(v30);
      v17(v31, 0);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18 = v30;
      sub_23875D370();
      v19 = v31[0];
      v20 = sub_2385F1BDC();
      v21 = v0;
      (*v26)(v18, v0);

      v32 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2385FEED8((v22 > 1), v23 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      v8 = v15;
      v7 = v16;
      sub_23875EF10();
      --v11;
      v0 = v21;
    }

    while (v11);
    (*(v25 + 8))(v15, v16);
    return v12;
  }

  __break(1u);
  return result;
}