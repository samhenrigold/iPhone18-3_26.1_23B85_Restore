uint64_t sub_24B66318C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a4;
  v77 = a3;
  v84 = a2;
  v80 = a1;
  v91 = a5;
  v89 = sub_24B695BA8();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B695F28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B695648();
  v79 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB10, &qword_24B698368);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v68 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB18, &unk_24B698370);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v90 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v67 - v19;
  v83 = type metadata accessor for OnboardingModality(0);
  v20 = *(v83 + 40);
  v21 = *(v12 + 16);
  v78 = v12 + 16;
  v81 = v21;
  v76 = v14;
  v21(v14, a1 + v20, v11);
  v22 = sub_24B695FD8();
  v24 = v23;
  v26 = v25;
  sub_24B695ED8();
  sub_24B695EC8();

  v74 = *MEMORY[0x277CE0A10];
  v27 = *(v8 + 104);
  v72 = v8 + 104;
  v73 = v27;
  v69 = v7;
  v27(v10);
  sub_24B695F58();

  v28 = *(v8 + 8);
  v70 = v8 + 8;
  v71 = v28;
  v28(v10, v7);
  v29 = sub_24B695FC8();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_24B6557C0(v22, v24, v26 & 1);

  LOBYTE(v24) = sub_24B695E48();
  type metadata accessor for OnboardingModalityDetailView(0, v77, v82, v36);
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v97 = v33 & 1;
  v96 = 0;
  *&v92 = v29;
  *(&v92 + 1) = v31;
  LOBYTE(v93) = v33 & 1;
  *(&v93 + 1) = v35;
  LOBYTE(v94) = v24;
  *(&v94 + 1) = v37;
  *v95 = v38;
  *&v95[8] = v39;
  *&v95[16] = v40;
  v95[24] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3C8, &qword_24B697590);
  v42 = sub_24B65B7DC();
  v43 = v68;
  sub_24B696028();
  v98[1] = v93;
  v98[2] = v94;
  *v99 = *v95;
  *&v99[9] = *&v95[9];
  v98[0] = v92;
  sub_24B64BB2C(v98, &qword_27F02D3C8, &qword_24B697590);
  v44 = v87;
  sub_24B695B98();
  *&v92 = v41;
  *(&v92 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v75;
  v46 = v85;
  sub_24B6961F8();
  (*(v88 + 8))(v44, v89);
  (*(v86 + 8))(v43, v46);
  v81(v76, v80 + *(v83 + 44), v79);
  v47 = sub_24B695FD8();
  v49 = v48;
  LOBYTE(v46) = v50;
  sub_24B695E98();
  v51 = v69;
  v73(v10, v74, v69);
  sub_24B695F58();

  v71(v10, v51);
  v52 = sub_24B695FC8();
  v54 = v53;
  v56 = v55;

  sub_24B6557C0(v47, v49, v46 & 1);

  LODWORD(v92) = sub_24B695D28();
  v57 = sub_24B695FB8();
  v59 = v58;
  LOBYTE(v41) = v60;
  v62 = v61;
  sub_24B6557C0(v52, v54, v56 & 1);

  v63 = v90;
  sub_24B64A3E0(v45, v90, &qword_27F02DB18, &unk_24B698370);
  v64 = v91;
  sub_24B64A3E0(v63, v91, &qword_27F02DB18, &unk_24B698370);
  v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB20, &unk_24B698380) + 48);
  *v65 = v57;
  *(v65 + 8) = v59;
  LOBYTE(v41) = v41 & 1;
  *(v65 + 16) = v41;
  *(v65 + 24) = v62;
  sub_24B65B70C(v57, v59, v41);

  sub_24B64BB2C(v45, &qword_27F02DB18, &unk_24B698370);
  sub_24B6557C0(v57, v59, v41);

  return sub_24B64BB2C(v63, &qword_27F02DB18, &unk_24B698370);
}

uint64_t sub_24B6639EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_24B695CB8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D980, &unk_24B6981C0);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  sub_24B695CA8();
  v26 = a2;
  v27 = a3;
  v28 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA28, &qword_24B698290);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA30, &qword_24B698298);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA38, &qword_24B6982A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA40, &qword_24B6982A8);
  v15 = MEMORY[0x277CDF028];
  v16 = sub_24B65C890(&qword_27F02DA48, &qword_27F02DA38, &qword_24B6982A0, MEMORY[0x277CDF028]);
  v17 = sub_24B65C890(&qword_27F02DA50, &qword_27F02DA40, &qword_24B6982A8, v15);
  v29 = v13;
  v30 = MEMORY[0x277CE1350];
  v31 = v14;
  v32 = v16;
  v33 = MEMORY[0x277CE1340];
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v12;
  v30 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B6958F8();
  v19 = sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0, MEMORY[0x277CDD7A8]);
  v20 = v23;
  MEMORY[0x24C245E60](v11, v23, v19);
  return (*(v24 + 8))(v11, v20);
}

uint64_t sub_24B663CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v36 = a5;
  v8 = type metadata accessor for OnboardingModalityDetailView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA38, &qword_24B6982A0);
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA30, &qword_24B698298);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  (*(v9 + 16))(v11, a1, v8);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  (*(v9 + 32))(v20 + v19, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA58, &qword_24B6982B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA60, &qword_24B6982B8);
  v22 = sub_24B664724();
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24B696468();
  sub_24B6965D8();
  v37 = a2;
  v38 = a3;
  v39 = v32;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA40, &qword_24B6982A8);
  v24 = MEMORY[0x277CDF028];
  v25 = sub_24B65C890(&qword_27F02DA48, &qword_27F02DA38, &qword_24B6982A0, MEMORY[0x277CDF028]);
  v26 = sub_24B65C890(&qword_27F02DA50, &qword_27F02DA40, &qword_24B6982A8, v24);
  v27 = MEMORY[0x277CE1350];
  v28 = MEMORY[0x277CE1340];
  sub_24B6962E8();
  (*(v33 + 8))(v14, v12);
  v40 = v12;
  v41 = v27;
  v42 = v23;
  v43 = v25;
  v44 = v28;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_24B696028();
  return (*(v35 + 8))(v18, v29);
}

uint64_t sub_24B6640D4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_24B695978();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA60, &qword_24B6982B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v23 = sub_24B6963F8();
  sub_24B695F68();
  sub_24B695EE8();
  v7 = sub_24B695F18();

  KeyPath = swift_getKeyPath();
  sub_24B696348();
  v9 = sub_24B696358();

  v10 = sub_24B695E28();
  sub_24B695818();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v26 = 0;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA78, &qword_24B6982C0) + 36)];
  sub_24B6965A8();
  v20 = sub_24B695E28();
  v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAD8, &qword_24B6982F0) + 36)] = v20;
  *v6 = v23;
  *(v6 + 1) = KeyPath;
  *(v6 + 2) = v7;
  *(v6 + 3) = v9;
  v6[32] = v10;
  *(v6 + 5) = v12;
  *(v6 + 6) = v14;
  *(v6 + 7) = v16;
  *(v6 + 8) = v18;
  v6[72] = 0;
  *&v6[*(v4 + 36)] = 256;
  v21 = v24;
  (*(v1 + 104))(v3, *MEMORY[0x277CDF9D8], v24);
  sub_24B664724();
  sub_24B696158();
  (*(v1 + 8))(v3, v21);
  return sub_24B64BB2C(v6, &qword_27F02DA60, &qword_24B6982B8);
}

uint64_t sub_24B664370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OnboardingModalityDetailView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = sub_24B695808();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6957F8();
  (*(v8 + 16))(v10, a2, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v8 + 32))(v15 + v14, v10, v7);
  return MEMORY[0x24C2465E0](v13, sub_24B664BD4, v15);
}

double sub_24B664514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OnboardingModalityDetailView(0, a2, a3, a4);
  sub_24B6612C0();
  sub_24B696728();

  return result;
}

void sub_24B664568(uint64_t a1)
{
  sub_24B66465C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OnboardingArtwork(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    sub_24B695708();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B66465C(uint64_t a1)
{
  if (!qword_27F02DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA18, "TU");
    sub_24B65C890(&qword_27F02DA20, &qword_27F02DA18, "TU", MEMORY[0x277D04410]);
    v1 = sub_24B6958D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F02DA10);
    }
  }
}

unint64_t sub_24B664724()
{
  result = qword_27F02DA68;
  if (!qword_27F02DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA60, &qword_24B6982B8);
    sub_24B6647DC();
    sub_24B65C890(&qword_27F02DAE0, &qword_27F02DAE8, &qword_24B6982F8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA68);
  }

  return result;
}

unint64_t sub_24B6647DC()
{
  result = qword_27F02DA70;
  if (!qword_27F02DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA78, &qword_24B6982C0);
    sub_24B664894();
    sub_24B65C890(&qword_27F02DAD0, &qword_27F02DAD8, &qword_24B6982F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA70);
  }

  return result;
}

unint64_t sub_24B664894()
{
  result = qword_27F02DA80;
  if (!qword_27F02DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA88, &qword_24B6982C8);
    sub_24B664920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA80);
  }

  return result;
}

unint64_t sub_24B664920()
{
  result = qword_27F02DA90;
  if (!qword_27F02DA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA98, &unk_24B6982D0);
    sub_24B6649D8();
    sub_24B65C890(&qword_27F02DAC0, &qword_27F02DAC8, &qword_24B69A370, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA90);
  }

  return result;
}

unint64_t sub_24B6649D8()
{
  result = qword_27F02DAA0;
  if (!qword_27F02DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DAA8, &qword_24B698680);
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DAA0);
  }

  return result;
}

uint64_t objectdestroy_9Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for OnboardingModalityDetailView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  sub_24B654DC8(*(v4 + v7), *(v4 + v7 + 8));
  v9 = v5[11];
  type metadata accessor for OnboardingArtwork(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v10 = sub_24B695708();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

double sub_24B664BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for OnboardingModalityDetailView(0, v5, v6, a4) - 8);
  return sub_24B664514(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

uint64_t sub_24B664C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B664CCC()
{
  result = qword_27F02DAF8;
  if (!qword_27F02DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
    sub_24B65C890(&qword_27F02DB00, &qword_27F02DB08, &qword_24B698360, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DAF8);
  }

  return result;
}

uint64_t sub_24B664D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static OnboardingConstants.initialSubscriptionWindow.getter()
{
  if (qword_27F02D2D0 != -1)
  {
    swift_once();
  }

  return *&qword_27F02DB28;
}

uint64_t getEnumTagSinglePayload for OnboardingConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OnboardingConstants(_WORD *result, int a2, int a3)
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

__n128 OnboardingModalityPickerFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t OnboardingModalityPickerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v149 = a3;
  v152 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D960, &qword_24B6981A0);
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v147 = (&v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v137 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v145 = &v137 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v137 - v15;
  MEMORY[0x28223BE20](v14);
  v146 = &v137 - v16;
  v17 = type metadata accessor for OnboardingModality(0);
  v148 = *(v17 - 8);
  v18 = *(v148 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v137 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v137 - v24;
  v26 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v4[1];
  v154 = *v4;
  v155 = v29;
  v156 = v4[2];
  sub_24B667280(a4, v28, type metadata accessor for OnboardingModalityPickerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        result = type metadata accessor for OnboardingModalityPickerState(0);
        *(v152 + *(result + 36)) = 1;
      }

      else
      {
        result = type metadata accessor for OnboardingModalityPickerState(0);
        v99 = *(v152 + *(result + 28));
        if (*(v99 + 16))
        {
          v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
          v101 = v100[16];
          v102 = v100[20];
          v103 = v144;
          v104 = &v144[v100[24]];
          v153[0] = 2;
          v105 = sub_24B666044();

          v152 = v105;
          sub_24B696968();
          v106 = *MEMORY[0x277D04400];
          v107 = sub_24B696708();
          v108 = *(v107 - 8);
          v147 = *(v108 + 104);
          v148 = v107;
          v146 = (v108 + 104);
          (v147)(&v103[v101], v106);
          v109 = swift_allocObject();
          v110 = v155;
          *(v109 + 16) = v154;
          *(v109 + 32) = v110;
          *(v109 + 48) = v156;
          *(v109 + 64) = v99;
          *v104 = &unk_24B6983E8;
          *(v104 + 1) = v109;
          sub_24B666DBC(&v154, v153);
          sub_24B6968E8();
          v111 = *MEMORY[0x277D043E8];
          v112 = sub_24B6966F8();
          v113 = *(v112 - 8);
          v114 = *(v113 + 104);
          v115 = (v113 + 104);
          v114(&v103[v102], v111, v112);
          v116 = *MEMORY[0x277D043B0];
          v117 = v150;
          v118 = *MEMORY[0x277D043B0];
          v138 = *(v150 + 104);
          v138(v103, v118, v151);
          v119 = *v149;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v143) = v111;
          v140 = v115;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v119 = sub_24B6610B4(0, v119[2] + 1, 1, v119);
          }

          v122 = v119[2];
          v121 = v119[3];
          v142 = v112;
          v141 = v114;
          LODWORD(v139) = v116;
          if (v122 >= v121 >> 1)
          {
            v119 = sub_24B6610B4((v121 > 1), v122 + 1, 1, v119);
          }

          v119[2] = v122 + 1;
          v124 = *(v117 + 32);
          v123 = v117 + 32;
          v125 = (*(v123 + 48) + 32) & ~*(v123 + 48);
          v126 = *(v123 + 40);
          v127 = v144;
          v128 = v151;
          v150 = v123;
          v144 = v124;
          (v124)(v119 + v125 + v126 * v122, v127, v151);
          v129 = v100[16];
          v130 = v100[20];
          v131 = v145;
          v132 = &v145[v100[24]];
          v153[0] = 0;
          sub_24B696968();
          (v147)(&v131[v129], *MEMORY[0x277D043F0], v148);
          v133 = swift_allocObject();
          v134 = v155;
          v133[1] = v154;
          v133[2] = v134;
          v133[3] = v156;
          *v132 = &unk_24B6983F8;
          *(v132 + 1) = v133;
          sub_24B666DBC(&v154, v153);
          sub_24B6968E8();
          v141(&v131[v130], v143, v142);
          v138(v131, v139, v128);
          v136 = v119[2];
          v135 = v119[3];
          if (v136 >= v135 >> 1)
          {
            v119 = sub_24B6610B4((v135 > 1), v136 + 1, 1, v119);
          }

          v119[2] = v136 + 1;
          result = (v144)(v119 + v125 + v136 * v126, v145, v151);
          *v149 = v119;
        }
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v61 = *(type metadata accessor for OnboardingModalityPickerState(0) + 28);
      v62 = v152;

      *(v62 + v61) = MEMORY[0x277D84FA0];
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
      v64 = v63[16];
      v65 = v63[20];
      v66 = v11 + v63[24];
      v153[0] = 2;
      sub_24B666044();
      sub_24B696968();
      v67 = *MEMORY[0x277D04400];
      v68 = sub_24B696708();
      v69 = *(v68 - 8);
      v70 = *(v69 + 104);
      v148 = v69 + 104;
      v70(v11 + v64, v67, v68);
      v71 = swift_allocObject();
      v72 = v155;
      v71[1] = v154;
      v71[2] = v72;
      v71[3] = v156;
      *v66 = &unk_24B6983C8;
      *(v66 + 1) = v71;
      sub_24B666DBC(&v154, v153);
      sub_24B6968E8();
      v73 = *MEMORY[0x277D043E8];
      v74 = sub_24B6966F8();
      v75 = *(v74 - 8);
      v144 = *(v75 + 104);
      v143 = v75 + 104;
      (v144)(v11 + v65, v73, v74);
      v76 = *(v150 + 104);
      LODWORD(v142) = *MEMORY[0x277D043B0];
      v141 = v76;
      (v76)(v11);
      v77 = *v149;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v152 = v68;
      LODWORD(v146) = v73;
      if ((v78 & 1) == 0)
      {
        v77 = sub_24B6610B4(0, *(v77 + 2) + 1, 1, v77);
      }

      v80 = *(v77 + 2);
      v79 = *(v77 + 3);
      v145 = v74;
      if (v80 >= v79 >> 1)
      {
        v77 = sub_24B6610B4((v79 > 1), v80 + 1, 1, v77);
      }

      *(v77 + 2) = v80 + 1;
      v81 = *(v150 + 32);
      v139 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v138 = *(v150 + 72);
      v82 = v151;
      v150 += 32;
      v140 = v81;
      v81(&v77[v139 + v138 * v80], v11, v151);
      v83 = v63[16];
      v84 = v63[20];
      v85 = v147;
      v86 = (v147 + v63[24]);
      v153[0] = 0;
      sub_24B696968();
      v70(v85 + v83, *MEMORY[0x277D043F0], v152);
      v87 = swift_allocObject();
      v88 = v155;
      v87[1] = v154;
      v87[2] = v88;
      v87[3] = v156;
      *v86 = &unk_24B6983D8;
      v86[1] = v87;
      sub_24B666DBC(&v154, v153);
      sub_24B6968E8();
      (v144)(v85 + v84, v146, v145);
      v141(v85, v142, v82);
      v90 = *(v77 + 2);
      v89 = *(v77 + 3);
      if (v90 >= v89 >> 1)
      {
        v77 = sub_24B6610B4((v89 > 1), v90 + 1, 1, v77);
      }

      *(v77 + 2) = v90 + 1;
      result = v140(&v77[v139 + v90 * v138], v147, v151);
      *v149 = v77;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      result = type metadata accessor for OnboardingModalityPickerState(0);
      *(v152 + *(result + 36)) = 0;
    }

    else
    {
      v93 = *(type metadata accessor for OnboardingModalityPickerState(0) + 32);
      v94 = v152;
      sub_24B64BB2C(v152 + v93, &qword_27F02D3A8, &qword_24B697570);
      return (*(v148 + 56))(v94 + v93, 1, 1, v17);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
      sub_24B665FE0(v28, v25);
      v95 = &v25[*(v17 + 32)];
      v96 = *v95;
      v97 = v95[1];
      type metadata accessor for OnboardingModalityPickerState(0);
      sub_24B667514(v96, v97);
    }

    else
    {
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
      sub_24B665FE0(v28, v25);
      v37 = &v25[*(v17 + 32)];
      v38 = *v37;
      v39 = v37[1];
      type metadata accessor for OnboardingModalityPickerState(0);

      sub_24B6673C4(v153, v38, v39);
    }

    sub_24B665F84(v25);
    v98 = sub_24B6956B8();
    return (*(*(v98 - 8) + 8))(&v28[v36], v98);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_24B665FE0(v28, v23);
    v40 = *(type metadata accessor for OnboardingModalityPickerState(0) + 32);
    v41 = v152;
    sub_24B64BB2C(v152 + v40, &qword_27F02D3A8, &qword_24B697570);
    v147 = type metadata accessor for OnboardingModality;
    sub_24B667280(v23, v41 + v40, type metadata accessor for OnboardingModality);
    v42 = v148 + 56;
    (*(v148 + 56))(v41 + v40, 0, 1, v17);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
    v152 = v43[12];
    v44 = v43[16];
    v45 = v43[20];
    v46 = v146;
    v47 = &v146[v43[24]];
    v153[0] = 1;
    sub_24B666044();
    sub_24B696968();
    v48 = *MEMORY[0x277D043F0];
    v49 = sub_24B696708();
    (*(*(v49 - 8) + 104))(&v46[v44], v48, v49);
    v50 = *MEMORY[0x277D043E0];
    v51 = sub_24B6966F8();
    (*(*(v51 - 8) + 104))(&v46[v45], v50, v51);
    sub_24B667280(v23, v20, v147);
    v52 = (*(v42 + 24) + 64) & ~*(v42 + 24);
    v53 = swift_allocObject();
    v54 = v155;
    v53[1] = v154;
    v53[2] = v54;
    v53[3] = v156;
    sub_24B665FE0(v20, v53 + v52);
    *v47 = &unk_24B698410;
    *(v47 + 1) = v53;
    sub_24B666DBC(&v154, v153);
    sub_24B6968E8();
    v55 = v150;
    (*(v150 + 104))(v46, *MEMORY[0x277D043B0], v151);
    v56 = *v149;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_24B6610B4(0, v56[2] + 1, 1, v56);
    }

    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_24B6610B4((v57 > 1), v58 + 1, 1, v56);
    }

    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
    sub_24B665F84(v23);
    v56[2] = v58 + 1;
    (*(v55 + 32))(v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v58, v146, v151);
    *v149 = v56;
    v60 = sub_24B6956B8();
    return (*(*(v60 - 8) + 8))(&v28[v59], v60);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
    v32 = *(type metadata accessor for OnboardingModalityPickerState(0) + 32);
    v33 = v152;
    sub_24B64BB2C(v152 + v32, &qword_27F02D3A8, &qword_24B697570);
    sub_24B665FE0(v28, v33 + v32);
    (*(v148 + 56))(v33 + v32, 0, 1, v17);
    v34 = sub_24B6956B8();
    return (*(*(v34 - 8) + 8))(&v28[v31], v34);
  }

  else
  {
    v91 = *(type metadata accessor for OnboardingModalityPickerState(0) + 32);
    v92 = v152;
    sub_24B64BB2C(v152 + v91, &qword_27F02D3A8, &qword_24B697570);
    (*(v148 + 56))(v92 + v91, 1, 1, v17);
    return sub_24B665F84(v28);
  }

  return result;
}

uint64_t sub_24B665F84(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingModality(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B665FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B666044()
{
  result = qword_27F02DB30;
  if (!qword_27F02DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DB30);
  }

  return result;
}

uint64_t sub_24B666098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B6968D8();
  v3[4] = sub_24B6968C8();
  v5 = sub_24B6968B8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B666130, v5, v4);
}

uint64_t sub_24B666130()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = (v1 + *(type metadata accessor for OnboardingModality(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v8 = (v2 + *v2);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24B666244;

  return v8(v4, v5);
}

uint64_t sub_24B666244()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_24B6663E4;
  }

  else
  {
    v5 = sub_24B666380;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B666380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B6663E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B666448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24B6968D8();
  v3[3] = sub_24B6968C8();
  v8 = (*(a2 + 32) + **(a2 + 32));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24B66655C;

  return v8(a3);
}

uint64_t sub_24B66655C()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B6968B8();
  if (v0)
  {
    v4 = sub_24B6666B4;
  }

  else
  {
    v4 = sub_24B660B44;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B6666B4()
{

  if (qword_27F02D2D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_24B6957D8();
  __swift_project_value_buffer(v2, qword_27F033CC0);
  v3 = v1;
  v4 = sub_24B6957B8();
  v5 = sub_24B696928();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24B641000, v4, v5, "[Onboarding] Failed to save result: %{public}@", v7, 0xCu);
    sub_24B64BB2C(v8, &qword_27F02DB58, "RW");
    MEMORY[0x24C247140](v8, -1, -1);
    MEMORY[0x24C247140](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B666854(uint64_t a1, int **a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B66695C;

  return v6();
}

uint64_t sub_24B66695C()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B6968B8();
  if (v0)
  {
    v4 = sub_24B660BA8;
  }

  else
  {
    v4 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B666AB8(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B666BCC;
  v5 = MEMORY[0x277D84FA0];

  return v7(v5);
}

uint64_t sub_24B666BCC()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B6968B8();
  if (v0)
  {
    v4 = sub_24B668198;
  }

  else
  {
    v4 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B666D24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666AB8(a1, v1 + 16);
}

uint64_t sub_24B666DF4(uint64_t a1, int **a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B666EFC;

  return v6();
}

uint64_t sub_24B666EFC()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B6968B8();
  if (v0)
  {
    v4 = sub_24B6681A0;
  }

  else
  {
    v4 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B667060(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666DF4(a1, (v1 + 16));
}

uint64_t sub_24B6670F8(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B660CB4;

  return sub_24B666448(a1, v1 + 16, v4);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B6671E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666854(a1, (v1 + 16));
}

uint64_t sub_24B667280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6672E8(uint64_t a1)
{
  v4 = *(type metadata accessor for OnboardingModality(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B66819C;

  return sub_24B666098(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B6673C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24B696AF8();
  sub_24B696888();
  v8 = sub_24B696B38();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24B696AD8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24B667FE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24B667514(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24B696AF8();
  sub_24B696888();
  v6 = sub_24B696B38();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24B696AD8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B667828();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_24B667E1C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_24B667728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24B667784(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B6677CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_24B667828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  v2 = *v0;
  v3 = sub_24B696978();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24B667984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  v4 = sub_24B696988();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24B696AF8();

      sub_24B696888();
      v20 = sub_24B696B38();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_24B667BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  v4 = sub_24B696988();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24B696AF8();
      sub_24B696888();
      v21 = sub_24B696B38();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24B667E1C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B696958();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24B696AF8();

        sub_24B696888();
        v10 = sub_24B696B38();

        v11 = v10 & v7;
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
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_24B667FE0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24B667BBC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24B667828();
      goto LABEL_16;
    }

    sub_24B667984(v8 + 1);
  }

  v10 = *v4;
  sub_24B696AF8();
  sub_24B696888();
  v11 = sub_24B696B38();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_24B696AD8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24B696AE8();
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

unint64_t sub_24B6681BC()
{
  result = qword_27F02DB60[0];
  if (!qword_27F02DB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F02DB60);
  }

  return result;
}

uint64_t sub_24B668218(uint64_t a1)
{
  result = sub_24B6682FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OnboardingModality(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B6682FC()
{
  result = qword_27F02DBE8;
  if (!qword_27F02DBE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F02DBE8);
  }

  return result;
}

uint64_t sub_24B668390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v194 = a1;
  v193 = *(a1 - 8);
  v2 = a1 - 8;
  MEMORY[0x28223BE20](a1 - 8);
  v191 = v3;
  v192 = &WitnessTable - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B695698();
  MEMORY[0x28223BE20](v4 - 8);
  v190 = &WitnessTable - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B696868();
  MEMORY[0x28223BE20](v6 - 8);
  v189 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_24B695BA8();
  v185 = *(v188 - 8);
  v186 = v188 - 8;
  v181 = v185;
  MEMORY[0x28223BE20](v188 - 8);
  v187 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B695D68();
  v182 = *(v9 - 8);
  v183 = v9;
  MEMORY[0x28223BE20](v9);
  v180 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_24B6959C8();
  v11 = MEMORY[0x28223BE20](v176);
  v184 = (&WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 24);
  v196 = v2;
  v198 = v13;
  v155 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v151 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_24B695DA8();
  v15 = sub_24B6959A8();
  v153 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v147 = &WitnessTable - v16;
  v128 = v15;
  v17 = sub_24B6959A8();
  v152 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v146 = &WitnessTable - v18;
  v19 = sub_24B6959A8();
  v156 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &WitnessTable - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF0, &qword_24B698610);
  v134 = v19;
  v21 = sub_24B6959A8();
  v158 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v148 = &WitnessTable - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF8, &qword_24B698618);
  v136 = v21;
  v23 = sub_24B6959A8();
  v163 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v150 = &WitnessTable - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC00, &qword_24B698620);
  v141 = v23;
  v25 = sub_24B6959A8();
  v165 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v154 = &WitnessTable - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC08, &qword_24B698628);
  v143 = v25;
  v27 = sub_24B6959A8();
  v164 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v157 = &WitnessTable - v28;
  v29 = *(v2 + 32);
  v179 = sub_24B66B7C4(&qword_27F02DC10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v224 = v29;
  v225 = v179;
  WitnessTable = swift_getWitnessTable();
  v222 = WitnessTable;
  v223 = MEMORY[0x277CE01B0];
  v129 = swift_getWitnessTable();
  v220 = v129;
  v221 = MEMORY[0x277CDF900];
  v30 = swift_getWitnessTable();
  v130 = v30;
  v31 = MEMORY[0x277CDFC88];
  v32 = sub_24B65C890(&qword_27F02DC18, &qword_27F02DBF0, &qword_24B698610, MEMORY[0x277CDFC88]);
  v218 = v30;
  v219 = v32;
  v33 = swift_getWitnessTable();
  v135 = v33;
  v34 = sub_24B65C890(&qword_27F02DC20, &qword_27F02DBF8, &qword_24B698618, v31);
  v216 = v33;
  v217 = v34;
  v35 = swift_getWitnessTable();
  v137 = v35;
  v36 = sub_24B65C890(&qword_27F02DC28, &qword_27F02DC00, &qword_24B698620, MEMORY[0x277CDF4F0]);
  v214 = v35;
  v215 = v36;
  v37 = swift_getWitnessTable();
  v142 = v37;
  v38 = sub_24B65C890(&qword_27F02DC30, &qword_27F02DC08, &qword_24B698628, v31);
  v212 = v37;
  v213 = v38;
  v39 = swift_getWitnessTable();
  v210 = v27;
  v211 = v39;
  v139 = v27;
  v140 = v39;
  v40 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v144 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v138 = &WitnessTable - v42;
  v210 = v27;
  v211 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v210 = OpaqueTypeMetadata2;
  v211 = OpaqueTypeConformance2;
  v44 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeMetadata2;
  v133 = OpaqueTypeConformance2;
  v45 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeMetadata2();
  v160 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v131 = &WitnessTable - v47;
  v162 = v48;
  v49 = sub_24B6959A8();
  v178 = *(v49 - 8);
  v50 = MEMORY[0x28223BE20](v49);
  v197 = &WitnessTable - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v177 = &WitnessTable - v52;
  v210 = v44;
  v211 = v45;
  v149 = swift_getOpaqueTypeConformance2();
  v208 = v149;
  v209 = v179;
  v53 = swift_getWitnessTable();
  v210 = v49;
  v211 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v173 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v170 = &WitnessTable - v55;
  v179 = v49;
  v210 = v49;
  v211 = v53;
  v172 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v175 = v54;
  v210 = v54;
  v211 = v56;
  v169 = v56;
  v174 = swift_getOpaqueTypeMetadata2();
  v171 = *(v174 - 8);
  v57 = MEMORY[0x28223BE20](v174);
  v167 = &WitnessTable - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v168 = &WitnessTable - v59;
  v60 = v166;
  v61 = *v166;
  v62 = &v166[*(v196 + 56)];
  v159 = type metadata accessor for OnboardingModality(0);
  v63 = &v62[*(v159 + 20)];
  v64 = v151;
  v161 = v62;
  v61(v62, v63);
  v65 = v147;
  v66 = v198;
  sub_24B6961C8();
  v67 = v64;
  v68 = v66;
  (*(v155 + 8))(v67, v66);
  v69 = v146;
  v70 = v128;
  sub_24B6960B8();
  (*(v153 + 8))(v65, v70);
  v71 = v145;
  sub_24B696278();
  (*(v152 + 8))(v69, v17);
  v205 = v68;
  v206 = v29;
  v207 = v60;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC38, &qword_24B698630);
  sub_24B66AFC8();
  v72 = v148;
  v73 = v134;
  sub_24B696288();
  (*(v156 + 8))(v71, v73);
  sub_24B696608();
  v202 = v68;
  v203 = v29;
  v204 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC68, &qword_24B698648);
  sub_24B66B0B8();
  v74 = v150;
  v75 = v136;
  sub_24B696288();
  (*(v158 + 8))(v72, v75);
  if (sub_24B6965C8())
  {
    v76 = 16.0;
  }

  else
  {
    v76 = 8.0;
  }

  v77 = *(v176 + 20);
  v78 = *MEMORY[0x277CE0118];
  v79 = sub_24B695B58();
  v80 = v184;
  (*(*(v79 - 8) + 104))(v184 + v77, v78, v79);
  *v80 = v76;
  v80[1] = v76;
  v81 = v80;
  sub_24B66B7C4(&qword_27F02DCF0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v82 = v154;
  v83 = v141;
  sub_24B6962F8();
  sub_24B66B50C(v81);
  (*(v163 + 8))(v74, v83);
  v199 = v68;
  v84 = v60;
  v184 = v29;
  v200 = v29;
  v201 = v60;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCF8, &qword_24B698698);
  sub_24B66B574();
  v85 = v157;
  v86 = v143;
  v87 = v82;
  v88 = v131;
  sub_24B696288();
  v89 = v181;
  (*(v165 + 8))(v87, v86);
  v91 = v138;
  v90 = v139;
  sub_24B696138();
  (*(v164 + 8))(v85, v90);
  v92 = v180;
  sub_24B695D58();
  v93 = v132;
  sub_24B6961D8();
  (*(v182 + 8))(v92, v183);
  (*(v144 + 8))(v91, v93);
  LODWORD(v87) = v84[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD18, &qword_24B6986A8);
  if (v87 == 1)
  {
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_24B698580;
    sub_24B695B88();
    sub_24B695B78();
  }

  else
  {
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_24B697540;
    sub_24B695B88();
  }

  v210 = v94;
  sub_24B66B7C4(&qword_27F02DD20, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD28, &qword_24B6986B0);
  sub_24B65C890(&qword_27F02DD30, &qword_27F02DD28, &qword_24B6986B0, MEMORY[0x277D83970]);
  v96 = v187;
  v95 = v188;
  sub_24B696948();
  v97 = v162;
  sub_24B6961F8();
  (*(v89 + 8))(v96, v95);
  (*(v160 + 8))(v88, v97);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = [objc_opt_self() bundleForClass_];
  sub_24B695688();
  v210 = sub_24B696878();
  v211 = v100;
  sub_24B64E810();
  v101 = sub_24B695FE8();
  v103 = v102;
  v105 = v104;
  v106 = v193;
  v107 = v192;
  v108 = v194;
  (*(v193 + 16))(v192, v84, v194);
  v109 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v110 = swift_allocObject();
  v111 = v184;
  *(v110 + 16) = v198;
  *(v110 + 24) = v111;
  (*(v106 + 32))(v110 + v109, v107, v108);
  v112 = v177;
  v113 = v179;
  v114 = v197;
  sub_24B695998();

  sub_24B6557C0(v101, v103, v105 & 1);

  v115 = *(v178 + 8);
  v115(v114, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_24B697540;
  v117 = &v161[*(v159 + 32)];
  v118 = *(v117 + 1);
  *(v116 + 32) = *v117;
  *(v116 + 40) = v118;

  v119 = v170;
  sub_24B696028();

  v115(v112, v113);
  v120 = v167;
  v121 = v175;
  v122 = v169;
  sub_24B696018();
  (*(v173 + 8))(v119, v121);
  v210 = v121;
  v211 = v122;
  swift_getOpaqueTypeConformance2();
  v123 = v168;
  v124 = v174;
  sub_24B65C908();
  v125 = *(v171 + 8);
  v125(v120, v124);
  sub_24B65C908();
  return (v125)(v123, v124);
}

uint64_t sub_24B669914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC50, &qword_24B698638);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_24B695738();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B695748();
  (*(v12 + 16))(v10, v14, v11);
  sub_24B64A3E0(v10, a4, &qword_27F02DC50, &qword_24B698638);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC38, &qword_24B698630);
  sub_24B669AC4(a1, a2, a3, (a4 + *(v15 + 44)));
  sub_24B64BB2C(v10, &qword_27F02DC50, &qword_24B698638);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24B669AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v66[1] = a2;
  v66[2] = a3;
  v66[0] = a1;
  v79 = a4;
  v6 = sub_24B695F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B695648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD78, &qword_24B698780);
  MEMORY[0x28223BE20](v74);
  v15 = v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD80, &qword_24B698788);
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v76 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = v66 - v19;
  v21 = type metadata accessor for OnboardingModalityCardButton(0, a2, a3, v20);
  v22 = v66[0];
  v23 = v66[0] + *(v21 + 48);
  v24 = type metadata accessor for OnboardingModality(0);
  (*(v11 + 16))(v13, v23 + *(v24 + 40), v10);
  v25 = sub_24B695FD8();
  v72 = v26;
  v73 = v25;
  LOBYTE(v10) = v27;
  v71 = v28;
  v68 = *(v22 + 48);
  KeyPath = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v29 = v10 & 1;
  LOBYTE(v90) = v10 & 1;
  LOBYTE(v86) = 0;
  sub_24B695F78();
  sub_24B695EC8();

  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  v67 = sub_24B695F58();

  (*(v7 + 8))(v9, v6);
  v30 = swift_getKeyPath();
  v31 = sub_24B695E18();
  sub_24B695818();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  LOBYTE(v90) = 0;
  if (*(v22 + 16))
  {
    v40 = 0.77;
  }

  else
  {
    v40 = 1.0;
  }

  sub_24B696648();
  sub_24B6959F8();
  v41 = sub_24B696648();
  v43 = v42;
  sub_24B66A0E4(v22, &v86);
  v81[0] = v86;
  v81[1] = v87;
  v81[2] = v88;
  *&v82 = v41;
  *(&v82 + 1) = v43;
  v89 = v82;
  v83[0] = v86;
  v83[1] = v87;
  v83[2] = v88;
  v84 = v41;
  v85 = v43;
  sub_24B64A3E0(v81, &v80, &qword_27F02DD88, &unk_24B6987F0);
  sub_24B64BB2C(v83, &qword_27F02DD88, &unk_24B6987F0);
  v44 = &v15[*(v74 + 36)];
  sub_24B6965A8();
  LOBYTE(v41) = sub_24B695E28();
  v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAD8, &qword_24B6982F0) + 36)] = v41;
  v45 = v72;
  *v15 = v73;
  *(v15 + 1) = v45;
  v15[16] = v29;
  v46 = KeyPath;
  *(v15 + 3) = v71;
  *(v15 + 4) = v46;
  v47 = v69;
  *(v15 + 5) = v68;
  v15[48] = 0;
  *(v15 + 7) = v47;
  v15[64] = 1;
  v48 = v67;
  *(v15 + 9) = v30;
  *(v15 + 10) = v48;
  v15[88] = v31;
  *(v15 + 12) = v33;
  *(v15 + 13) = v35;
  *(v15 + 14) = v37;
  *(v15 + 15) = v39;
  v15[128] = 0;
  *(v15 + 17) = v40;
  v49 = v95;
  *(v15 + 13) = v94;
  *(v15 + 14) = v49;
  v50 = v96;
  v51 = v91;
  *(v15 + 9) = v90;
  *(v15 + 10) = v51;
  v52 = v93;
  *(v15 + 11) = v92;
  *(v15 + 12) = v52;
  v53 = v86;
  v54 = v87;
  v55 = v89;
  *(v15 + 18) = v88;
  *(v15 + 19) = v55;
  *(v15 + 16) = v53;
  *(v15 + 17) = v54;
  *(v15 + 15) = v50;
  sub_24B66B80C();
  v56 = v75;
  sub_24B696048();
  sub_24B64BB2C(v15, &qword_27F02DD78, &qword_24B698780);
  v58 = v76;
  v57 = v77;
  v59 = *(v77 + 16);
  v60 = v78;
  v59(v76, v56, v78);
  v61 = v79;
  *v79 = 0;
  *(v61 + 8) = 1;
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE30, &qword_24B698848);
  v59(&v62[*(v63 + 48)], v58, v60);
  v64 = *(v57 + 8);
  v64(v56, v60);
  return (v64)(v58, v60);
}

void *sub_24B66A0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE38, &unk_24B698850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24B698580;
  sub_24B696348();
  v5 = sub_24B696358();

  *(v4 + 32) = v5;
  sub_24B696348();
  v6 = sub_24B696358();

  *(v4 + 40) = v6;
  sub_24B6966A8();
  sub_24B6966B8();
  MEMORY[0x24C2466B0](v4);
  result = sub_24B695968();
  v8 = 0.77;
  if (!*(a1 + 16))
  {
    v8 = 1.0;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24B66A214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v60 = a2;
  v65 = a1;
  v57 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC80, &qword_24B69A160);
  MEMORY[0x28223BE20](v56);
  v62 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD50, &qword_24B6986D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD58, &qword_24B6986D8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC88, &qword_24B698660);
  MEMORY[0x28223BE20](v66);
  v11 = &v51 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC78, &unk_24B698650);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v67 = &v51 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD60, &qword_24B6986E0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v51 - v13;
  sub_24B6963F8();
  sub_24B695BF8();
  v14 = sub_24B695C18();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  v58 = sub_24B696408();

  sub_24B64BB2C(v7, &qword_27F02DD50, &qword_24B6986D0);
  v15 = sub_24B695E98();
  KeyPath = swift_getKeyPath();
  v17 = sub_24B696378();
  v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD68, &qword_24B69A2A0);
  inited = swift_initStackObject();
  v59 = xmmword_24B698580;
  *(inited + 16) = xmmword_24B698580;
  v20 = sub_24B695E38();
  *(inited + 32) = v20;
  v21 = sub_24B695E78();
  *(inited + 33) = v21;
  v22 = sub_24B695E68();
  sub_24B695E68();
  if (sub_24B695E68() != v20)
  {
    v22 = sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v21)
  {
    v22 = sub_24B695E68();
  }

  sub_24B695818();
  v76 = 0;
  *&v68 = v58;
  *(&v68 + 1) = KeyPath;
  *&v69 = v15;
  *(&v69 + 1) = v18;
  *&v70 = v17;
  BYTE8(v70) = v22;
  *&v71 = v23;
  *(&v71 + 1) = v24;
  *&v72 = v25;
  *(&v72 + 1) = v26;
  v73 = 0;
  v28 = type metadata accessor for OnboardingModalityCardButton(0, v60, v61, v27);
  v29 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC98, &qword_24B698668);
  sub_24B66B310();
  sub_24B696138();
  v74[3] = v71;
  v74[4] = v72;
  v75 = v73;
  v74[0] = v68;
  v74[1] = v69;
  v74[2] = v70;
  sub_24B64BB2C(v74, &qword_27F02DC98, &qword_24B698668);
  if (*(v29 + 16))
  {
    v30 = 0.77;
  }

  else
  {
    v30 = 1.0;
  }

  (*(v63 + 32))(v11, v9, v64);
  v31 = v66;
  *&v11[*(v66 + 36)] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v32 = swift_allocObject();
  *(v32 + 16) = v59;
  v33 = v29 + *(v28 + 48);
  v34 = (v33 + *(type metadata accessor for OnboardingModality(0) + 32));
  v35 = v34[1];
  *(v32 + 32) = *v34;
  *(v32 + 40) = v35;
  *(v32 + 48) = 0x747475426F666E49;
  *(v32 + 56) = 0xEA00000000006E6FLL;
  v36 = sub_24B66B248();

  v37 = v67;
  sub_24B696028();

  sub_24B6463DC(v11);
  v38 = *MEMORY[0x277CDFA00];
  v39 = sub_24B695978();
  v40 = v62;
  (*(*(v39 - 8) + 104))(v62, v38, v39);
  sub_24B66B7C4(&qword_27F02DD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B6967E8();
  if (result)
  {
    *&v68 = v31;
    *(&v68 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
    v42 = v53;
    v43 = v52;
    sub_24B696168();
    sub_24B64BB2C(v40, &qword_27F02DC80, &qword_24B69A160);
    (*(v51 + 8))(v37, v43);
    v44 = swift_getKeyPath();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC68, &qword_24B698648);
    v46 = v57;
    v47 = (v57 + *(v45 + 36));
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCE8, &qword_24B698690) + 28);
    v49 = *MEMORY[0x277CDF3D0];
    v50 = sub_24B6958A8();
    (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
    *v47 = v44;
    return (*(v54 + 32))(v46, v42, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B66AB0C(uint64_t a1)
{
  v2 = sub_24B6958A8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B695A48();
}

uint64_t sub_24B66ABD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B696318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24B6959C8();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD10, &qword_24B6986A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39[-v13];
  if (sub_24B6965C8())
  {
    v15 = 18.0;
  }

  else
  {
    v15 = 10.0;
  }

  v16 = *(v9 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24B695B58();
  (*(*(v18 - 8) + 104))(v11 + v16, v17, v18);
  *v11 = v15;
  v11[1] = v15;
  if (*(a1 + 17) == 1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    v19 = sub_24B696388();
  }

  else
  {
    v19 = sub_24B696338();
  }

  v20 = v19;
  sub_24B6958E8();
  sub_24B66B69C(v11, v14);
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD38, &qword_24B6986B8) + 36)];
  v22 = v40;
  *v21 = *&v39[8];
  *(v21 + 1) = v22;
  *(v21 + 4) = v41;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD40, &qword_24B6986C0);
  *&v14[*(v23 + 52)] = v20;
  *&v14[*(v23 + 56)] = 256;
  v24 = sub_24B696648();
  v26 = v25;
  sub_24B66B50C(v11);
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD48, &qword_24B6986C8) + 36)];
  *v27 = v24;
  v27[1] = v26;
  v28 = sub_24B695E28();
  sub_24B695818();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24B66B700(v14, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCF8, &qword_24B698698);
  v38 = a2 + *(result + 36);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_24B66AF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(a5 + 16);
  v18 = *(a5 + 24);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = *a5;
  *(a9 + 40) = v17;
  *(a9 + 48) = v18;
  v19 = type metadata accessor for OnboardingModalityCardButton(0, a12, a13, a4);
  result = sub_24B665FE0(a6, a9 + v19[12]);
  v21 = (a9 + v19[13]);
  *v21 = a7;
  v21[1] = a8;
  v22 = (a9 + v19[14]);
  *v22 = a10;
  v22[1] = a11;
  return result;
}

unint64_t sub_24B66AFC8()
{
  result = qword_27F02DC40;
  if (!qword_27F02DC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC38, &qword_24B698630);
    sub_24B65C890(&qword_27F02DC48, &qword_27F02DC50, &qword_24B698638, MEMORY[0x277CDF510]);
    sub_24B65C890(&qword_27F02DC58, &qword_27F02DC60, &qword_24B698640, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC40);
  }

  return result;
}

unint64_t sub_24B66B0B8()
{
  result = qword_27F02DC70;
  if (!qword_27F02DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC68, &qword_24B698648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC78, &unk_24B698650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC88, &qword_24B698660);
    sub_24B66B248();
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCE0, &qword_27F02DCE8, &qword_24B698690, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC70);
  }

  return result;
}

unint64_t sub_24B66B248()
{
  result = qword_27F02DC90;
  if (!qword_27F02DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC88, &qword_24B698660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC98, &qword_24B698668);
    sub_24B66B310();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC90);
  }

  return result;
}

unint64_t sub_24B66B310()
{
  result = qword_27F02DCA0;
  if (!qword_27F02DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC98, &qword_24B698668);
    sub_24B66B3C8();
    sub_24B65C890(&qword_27F02DCC8, &qword_27F02DCD0, &qword_24B698688, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCA0);
  }

  return result;
}

unint64_t sub_24B66B3C8()
{
  result = qword_27F02DCA8;
  if (!qword_27F02DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCB0, &qword_24B698670);
    sub_24B66B454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCA8);
  }

  return result;
}

unint64_t sub_24B66B454()
{
  result = qword_27F02DCB8;
  if (!qword_27F02DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCC0, &qword_24B698678);
    sub_24B6649D8();
    sub_24B65C890(&qword_27F02D478, &qword_27F02D480, &unk_24B6975F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCB8);
  }

  return result;
}

uint64_t sub_24B66B50C(uint64_t a1)
{
  v2 = sub_24B6959C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B66B574()
{
  result = qword_27F02DD00;
  if (!qword_27F02DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCF8, &qword_24B698698);
    sub_24B65C890(&qword_27F02DD08, &qword_27F02DD10, &qword_24B6986A0, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD00);
  }

  return result;
}

uint64_t sub_24B66B69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B6959C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B66B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD10, &qword_24B6986A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B66B770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695A98();
  *a1 = result;
  return result;
}

uint64_t sub_24B66B7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B66B80C()
{
  result = qword_27F02DD90;
  if (!qword_27F02DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DD78, &qword_24B698780);
    sub_24B66B8C4();
    sub_24B65C890(&qword_27F02DAD0, &qword_27F02DAD8, &qword_24B6982F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD90);
  }

  return result;
}

unint64_t sub_24B66B8C4()
{
  result = qword_27F02DD98;
  if (!qword_27F02DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDA0, &qword_24B698800);
    sub_24B66B97C();
    sub_24B65C890(&qword_27F02DE28, &qword_27F02DD88, &unk_24B6987F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD98);
  }

  return result;
}

unint64_t sub_24B66B97C()
{
  result = qword_27F02DDA8;
  if (!qword_27F02DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDB0, &qword_24B698808);
    sub_24B66BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDA8);
  }

  return result;
}

unint64_t sub_24B66BA08()
{
  result = qword_27F02DDB8;
  if (!qword_27F02DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDC0, &qword_24B698810);
    sub_24B66BA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDB8);
  }

  return result;
}

unint64_t sub_24B66BA94()
{
  result = qword_27F02DDC8;
  if (!qword_27F02DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDD0, &qword_24B698818);
    sub_24B66BB20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDC8);
  }

  return result;
}

unint64_t sub_24B66BB20()
{
  result = qword_27F02DDD8;
  if (!qword_27F02DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDE0, &qword_24B698820);
    sub_24B66BBD8();
    sub_24B65C890(&qword_27F02DE18, &qword_27F02DE20, &qword_24B698840, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDD8);
  }

  return result;
}

unint64_t sub_24B66BBD8()
{
  result = qword_27F02DDE8;
  if (!qword_27F02DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDF0, &qword_24B698828);
    sub_24B66BC90();
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDE8);
  }

  return result;
}

unint64_t sub_24B66BC90()
{
  result = qword_27F02DDF8;
  if (!qword_27F02DDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DE00, &qword_24B698830);
    sub_24B66BD48();
    sub_24B65C890(&qword_27F02D760, &qword_27F02D768, &unk_24B69A5A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDF8);
  }

  return result;
}

unint64_t sub_24B66BD48()
{
  result = qword_27F02DE08;
  if (!qword_27F02DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DE10, &qword_24B698838);
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE08);
  }

  return result;
}

uint64_t OnboardingContentMargins.overriding(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>)
{
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if ((a2 & 1) == 0)
  {
    v10 = *&result;
  }

  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  if ((a6 & 1) == 0)
  {
    v12 = a5;
  }

  *a9 = v10;
  a9[1] = v11;
  if (a8)
  {
    v14 = v13;
  }

  else
  {
    v14 = a7;
  }

  a9[2] = v12;
  a9[3] = v14;
  return result;
}

uint64_t OnboardingModalityDetailEnvironment.dismiss.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnboardingModalityDetailEnvironment.init(dismiss:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void OnboardingContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_24B66BED0()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

uint64_t sub_24B66BF40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B66C9A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B66BF74(uint64_t a1)
{
  v2 = sub_24B66C63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B66BFB0(uint64_t a1)
{
  v2 = sub_24B66C63C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE40, &qword_24B6988C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66C63C();
  sub_24B696B58();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_24B649AE0();
  sub_24B696AB8();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_24B696AB8();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_24B696AB8();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t OnboardingContentMargins.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE50, &qword_24B6988C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66C63C();
  sub_24B696B48();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_24B649E68();
    sub_24B696A38();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_24B696A38();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_24B696A38();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_24B696A38();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OnboardingContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C246C90](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C246C90](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C246C90](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C246C90](*&v7);
}

uint64_t OnboardingContentMargins.hashValue.getter()
{
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B66C564()
{
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B66C5B4(uint64_t a1)
{
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

unint64_t sub_24B66C63C()
{
  result = qword_27F02DE48;
  if (!qword_27F02DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE48);
  }

  return result;
}

unint64_t sub_24B66C694()
{
  result = qword_27F02DE58;
  if (!qword_27F02DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE58);
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

uint64_t sub_24B66C6F4(uint64_t a1, int a2)
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

uint64_t sub_24B66C714(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OnboardingContentMargins.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingContentMargins.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B66C8A4()
{
  result = qword_27F02DE60;
  if (!qword_27F02DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE60);
  }

  return result;
}

unint64_t sub_24B66C8FC()
{
  result = qword_27F02DE68;
  if (!qword_27F02DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE68);
  }

  return result;
}

unint64_t sub_24B66C954()
{
  result = qword_27F02DE70;
  if (!qword_27F02DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE70);
  }

  return result;
}

uint64_t sub_24B66C9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B696AD8();

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

uint64_t OnboardingModalityCardLayout.init(aspectRatio:overlayHeightRatio:overlayTextLineLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_24B66CB30()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6152746365707361;
  }
}

uint64_t sub_24B66CB98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B66D258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B66CBC0(uint64_t a1)
{
  v2 = sub_24B66CE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B66CBFC(uint64_t a1)
{
  v2 = sub_24B66CE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityCardLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE78, &qword_24B698AF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66CE30();
  sub_24B696B58();
  v14 = v8;
  v15 = v9;
  v13 = 0;
  type metadata accessor for CGSize();
  sub_24B649DD0(&qword_27F02D2F8, MEMORY[0x277CBF288]);
  sub_24B696AB8();
  if (!v2)
  {
    v14 = v10;
    v13 = 1;
    sub_24B649AE0();
    sub_24B696AB8();
    LOBYTE(v14) = 2;
    sub_24B696AA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B66CE30()
{
  result = qword_27F02DE80;
  if (!qword_27F02DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE80);
  }

  return result;
}

uint64_t OnboardingModalityCardLayout.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE88, &qword_24B698AF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66CE30();
  sub_24B696B48();
  if (!v2)
  {
    type metadata accessor for CGSize();
    v15 = 0;
    sub_24B649DD0(&qword_27F02D318, MEMORY[0x277CBF2A0]);
    sub_24B696A38();
    v9 = v16;
    v10 = v17;
    v15 = 1;
    sub_24B649E68();
    sub_24B696A38();
    v12 = v16;
    LOBYTE(v16) = 2;
    v13 = sub_24B696A28();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B66D154()
{
  result = qword_27F02DE90;
  if (!qword_27F02DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE90);
  }

  return result;
}

unint64_t sub_24B66D1AC()
{
  result = qword_27F02DE98;
  if (!qword_27F02DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE98);
  }

  return result;
}

unint64_t sub_24B66D204()
{
  result = qword_27F02DEA0[0];
  if (!qword_27F02DEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F02DEA0);
  }

  return result;
}

uint64_t sub_24B66D258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B3B0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B69B3D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B696AD8();

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

void sub_24B66D380(uint64_t a1)
{
  sub_24B6682FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OnboardingModality(319);
    if (v2 <= 0x3F)
    {
      sub_24B66D468();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B66D468()
{
  if (!qword_27F02DF28)
  {
    v0 = sub_24B695878();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02DF28);
    }
  }
}

uint64_t sub_24B66D504(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_24B696698();
}

uint64_t sub_24B66D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  v12 = type metadata accessor for TVOnboardingModalityCardButton(0, a8, a10, a4);
  sub_24B665FE0(a7, a9 + *(v12 + 48));
  v13 = a9 + *(v12 + 52);
  result = sub_24B695858();
  *v13 = result & 1;
  *(v13 + 8) = v15;
  *(v13 + 16) = v16 & 1;
  return result;
}

uint64_t sub_24B66D758@<X0>(_DWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF58, &unk_24B698D88);
  sub_24B695828();
  if (v5 == 1)
  {
    result = sub_24B695D08();
  }

  else if (*(v2 + 32) == 1)
  {
    result = sub_24B695D18();
  }

  else
  {
    result = sub_24B695D28();
  }

  *a2 = result;
  return result;
}

uint64_t sub_24B66D7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = sub_24B6958B8();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B695CD8();
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v86 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a1 + 16);
  v6 = a1;
  v88 = a1;
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  v7 = sub_24B6959A8();
  v8 = sub_24B695988();
  v84 = *(v6 + 24);
  v107 = v84;
  v108 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70, MEMORY[0x277CDFC88]);
  v105 = WitnessTable;
  v106 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  v101 = v7;
  v102 = v8;
  v103 = v11;
  v104 = v12;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
  swift_getTupleTypeMetadata2();
  v81 = sub_24B696688();
  v80 = swift_getWitnessTable();
  v13 = sub_24B6964A8();
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  v16 = swift_getWitnessTable();
  v17 = sub_24B66F8DC(&qword_27F02DF50, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v101 = v13;
  v102 = v4;
  v60 = v4;
  v103 = v16;
  v104 = v17;
  v18 = v16;
  v62 = v16;
  v19 = v17;
  v61 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = v59 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v21 = sub_24B6959A8();
  v82 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v69 = v59 - v22;
  v101 = v13;
  v102 = v4;
  v103 = v18;
  v104 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeConformance2;
  v24 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600, MEMORY[0x277CE0868]);
  v99 = OpaqueTypeConformance2;
  v100 = v24;
  v25 = swift_getWitnessTable();
  v101 = v21;
  v102 = v25;
  v26 = v25;
  v59[1] = v25;
  v70 = swift_getOpaqueTypeMetadata2();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = v59 - v27;
  v28 = sub_24B6959A8();
  v79 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v66 = v59 - v29;
  v101 = v21;
  v102 = v26;
  v63 = swift_getOpaqueTypeConformance2();
  v97 = v63;
  v98 = MEMORY[0x277CDF900];
  v72 = swift_getWitnessTable();
  v101 = v28;
  v102 = v72;
  v75 = MEMORY[0x277D09E70];
  v76 = swift_getOpaqueTypeMetadata2();
  v77 = *(v76 - 8);
  v30 = MEMORY[0x28223BE20](v76);
  v67 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v71 = v59 - v32;
  v33 = v87;
  v94 = v85;
  v95 = v84;
  v96 = v87;

  sub_24B696468();
  v34 = v86;
  sub_24B695CC8();
  v35 = v68;
  v36 = v60;
  sub_24B6960C8();
  (*(v89 + 8))(v34, v36);
  (*(v83 + 8))(v15, v13);
  v37 = v91;
  v38 = v90;
  v39 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277CDF438], v92);
  v40 = v69;
  v41 = OpaqueTypeMetadata2;
  sub_24B6960E8();
  (*(v37 + 8))(v38, v39);
  (*(v78 + 8))(v35, v41);
  v42 = v88;
  v43 = (v33 + *(v88 + 52));
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v43) = v43[16];
  LOBYTE(v101) = v44;
  v102 = v45;
  LOBYTE(v103) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF58, &unk_24B698D88);
  sub_24B695848();
  v46 = v65;
  sub_24B696268();

  (*(v82 + 8))(v40, v21);
  v47 = v66;
  v48 = v70;
  sub_24B696278();
  (*(v74 + 8))(v46, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_24B698580;
  *(v49 + 32) = 0xD000000000000016;
  *(v49 + 40) = 0x800000024B69B120;
  v50 = v33 + *(v42 + 48);
  v51 = (v50 + *(type metadata accessor for OnboardingModality(0) + 32));
  v52 = v51[1];
  *(v49 + 48) = *v51;
  *(v49 + 56) = v52;

  v53 = v67;
  v54 = v72;
  sub_24B696028();

  (*(v79 + 8))(v47, v28);
  v101 = v28;
  v102 = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v71;
  v56 = v76;
  sub_24B65C908();
  v57 = *(v77 + 8);
  v57(v53, v56);
  sub_24B65C908();
  return (v57)(v55, v56);
}

uint64_t sub_24B66E3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v79 = sub_24B695F28();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24B695648();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF48, &unk_24B698D78);
  v9 = MEMORY[0x28223BE20](v80);
  v81 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v54 - v11;
  v12 = sub_24B695988();
  v57 = v12;
  v72 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  OpaqueTypeConformance2 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B6959A8();
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v63 = &v54 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  v62 = v16;
  v18 = sub_24B6959A8();
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v64 = &v54 - v19;
  v96 = a3;
  v97 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v58 = WitnessTable;
  v21 = sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70, MEMORY[0x277CDFC88]);
  v94 = WitnessTable;
  v95 = v21;
  v22 = swift_getWitnessTable();
  v56 = v22;
  v55 = sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  v90 = v18;
  v91 = v12;
  v92 = v22;
  v93 = v55;
  v59 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = &v54 - v26;
  v27 = *(a1 + 16);
  v68 = type metadata accessor for TVOnboardingModalityCardButton(0, a2, a3, v28);
  v29 = a1 + *(v68 + 48);
  v66 = a1;
  v54 = type metadata accessor for OnboardingModality(0);
  v30 = v65;
  v27(v29, v29 + *(v54 + 20));
  v31 = v63;
  sub_24B6960B8();
  (*(v67 + 8))(v30, a2);
  v84 = a2;
  v85 = a3;
  v86 = a1;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF60, &qword_24B698D98);
  sub_24B66F1C0();
  v32 = v64;
  v33 = v62;
  sub_24B696288();
  (*(v70 + 8))(v31, v33);
  v34 = OpaqueTypeConformance2;
  sub_24B695A28();
  v35 = v57;
  v36 = v56;
  v37 = v55;
  sub_24B696108();
  (*(v72 + 8))(v34, v35);
  (*(v69 + 8))(v32, v18);
  v90 = v18;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeMetadata2;
  sub_24B65C908();
  v39 = v60;
  v72 = *(v60 + 8);
  (v72)(v25, v38);
  (*(v75 + 16))(v74, v29 + *(v54 + 40), v76);
  v40 = v73;
  sub_24B6956D8();
  sub_24B695F38();
  v41 = v78;
  v42 = v77;
  v43 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277CE0A10], v79);
  v44 = sub_24B695F58();

  (*(v41 + 8))(v42, v43);
  KeyPath = swift_getKeyPath();
  v46 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DFD0, &qword_24B698E08) + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = swift_getKeyPath();
  v48 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DFD8, &unk_24B698E40) + 36);
  *v48 = v47;
  *(v48 + 8) = 1;
  *(v48 + 16) = 0;
  sub_24B66D758(&v90);
  v49 = v80;
  *(v40 + *(v80 + 36)) = v90;
  v50 = v83;
  (*(v39 + 16))(v25, v83, v38);
  v90 = v25;
  v51 = v81;
  sub_24B66F614(v40, v81);
  v91 = v51;
  v89[0] = v38;
  v89[1] = v49;
  v87 = OpaqueTypeConformance2;
  v88 = sub_24B66F684();
  sub_24B66D504(&v90, 2uLL, v89);
  sub_24B64BB2C(v40, &qword_27F02DF48, &unk_24B698D78);
  v52 = v72;
  (v72)(v50, v38);
  sub_24B64BB2C(v51, &qword_27F02DF48, &unk_24B698D78);
  return v52(v25, v38);
}

__n128 sub_24B66EE10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B696318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD50, &qword_24B6986D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  if (*(a1 + 33) == 1)
  {
    sub_24B6963F8();
    sub_24B695C08();
    v11 = sub_24B695C18();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    v12 = sub_24B696408();

    sub_24B64BB2C(v10, &qword_27F02DD50, &qword_24B6986D0);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    v13 = sub_24B696388();
    v14 = sub_24B696328();
    v15 = sub_24B695F88();
    KeyPath = swift_getKeyPath();
    sub_24B696328();
    v17 = sub_24B696358();

    sub_24B696618();
    sub_24B6959F8();
    v18 = sub_24B695E28();
    sub_24B695818();
    v34 = xmmword_24B698CE0;
    *(&v35[3] + 8) = v30[3];
    *(&v35[4] + 8) = v30[4];
    *(&v35[5] + 8) = v30[5];
    *(&v35[6] + 8) = v30[6];
    *(v35 + 8) = v30[0];
    *(&v35[1] + 8) = v30[1];
    v39 = 0;
    *&v31 = v12;
    *(&v31 + 1) = v13;
    *&v32 = v14;
    *(&v32 + 1) = KeyPath;
    *&v33 = v15;
    *(&v33 + 1) = v17;
    *&v35[0] = 0x4000000000000000;
    *(&v35[2] + 8) = v30[2];
    BYTE8(v35[7]) = v18;
    *&v36 = v19;
    *(&v36 + 1) = v20;
    *&v37 = v21;
    *(&v37 + 1) = v22;
    v38 = 0;
    nullsub_1();
    v52 = v36;
    v53 = v37;
    v54 = v38;
    v48 = v35[4];
    v49 = v35[5];
    v50 = v35[6];
    v51 = v35[7];
    v44 = v35[0];
    v45 = v35[1];
    v46 = v35[2];
    v47 = v35[3];
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;
  }

  else
  {
    sub_24B66F924(&v40);
  }

  v23 = v53;
  *(a2 + 192) = v52;
  *(a2 + 208) = v23;
  *(a2 + 224) = v54;
  v24 = v49;
  *(a2 + 128) = v48;
  *(a2 + 144) = v24;
  v25 = v51;
  *(a2 + 160) = v50;
  *(a2 + 176) = v25;
  v26 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v26;
  v27 = v47;
  *(a2 + 96) = v46;
  *(a2 + 112) = v27;
  v28 = v41;
  *a2 = v40;
  *(a2 + 16) = v28;
  result = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_24B66F1C0()
{
  result = qword_27F02DF68;
  if (!qword_27F02DF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF60, &qword_24B698D98);
    sub_24B66F244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF68);
  }

  return result;
}

unint64_t sub_24B66F244()
{
  result = qword_27F02DF70;
  if (!qword_27F02DF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF78, &qword_24B698DA0);
    sub_24B66F2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF70);
  }

  return result;
}

unint64_t sub_24B66F2D0()
{
  result = qword_27F02DF80;
  if (!qword_27F02DF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF88, &qword_24B698DA8);
    sub_24B66F35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF80);
  }

  return result;
}

unint64_t sub_24B66F35C()
{
  result = qword_27F02DF90;
  if (!qword_27F02DF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF98, &qword_24B698DB0);
    sub_24B66F3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF90);
  }

  return result;
}

unint64_t sub_24B66F3E8()
{
  result = qword_27F02DFA0;
  if (!qword_27F02DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFA8, &qword_24B698DB8);
    sub_24B66F4A0();
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFA0);
  }

  return result;
}

unint64_t sub_24B66F4A0()
{
  result = qword_27F02DFB0;
  if (!qword_27F02DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFB8, &qword_24B698DC0);
    sub_24B65C890(&qword_27F02DFC0, &qword_27F02DFC8, &unk_24B698DC8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFB0);
  }

  return result;
}

uint64_t sub_24B66F558@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B695AF8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B66F5BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695AB8();
  *a1 = result;
  return result;
}

uint64_t sub_24B66F614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF48, &unk_24B698D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B66F684()
{
  result = qword_27F02DFE0;
  if (!qword_27F02DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
    sub_24B66F73C();
    sub_24B65C890(&qword_27F02D780, &qword_27F02D788, &unk_24B698E50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFE0);
  }

  return result;
}

unint64_t sub_24B66F73C()
{
  result = qword_27F02DFE8;
  if (!qword_27F02DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFD8, &unk_24B698E40);
    sub_24B66F7F4();
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFE8);
  }

  return result;
}

unint64_t sub_24B66F7F4()
{
  result = qword_27F02DFF0;
  if (!qword_27F02DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFD0, &qword_24B698E08);
    sub_24B66F8DC(&qword_27F02DFF8, MEMORY[0x277D09D48], MEMORY[0x277D09D40]);
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFF0);
  }

  return result;
}

uint64_t sub_24B66F8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24B66F924(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OnboardingModalityPickerState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B695698();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OnboardingModalityPickerState.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingModalityPickerState(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OnboardingModalityPickerState(uint64_t a1)
{
  result = qword_27F02E070;
  if (!qword_27F02E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *OnboardingModalityPickerState.layout.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OnboardingModalityPickerState(0) + 24));

  return memcpy(a1, v3, 0x180uLL);
}

uint64_t OnboardingModalityPickerState.selectedModalityIdentifiers.getter()
{
  type metadata accessor for OnboardingModalityPickerState(0);
}

uint64_t OnboardingModalityPickerState.selectedModalityIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OnboardingModalityPickerState(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t OnboardingModalityPickerState.presentedModality.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OnboardingModalityPickerState(0) + 32);

  return sub_24B66FBD0(v3, a1);
}

uint64_t sub_24B66FBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OnboardingModalityPickerState.presentedModality.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OnboardingModalityPickerState(0) + 32);

  return sub_24B643408(a1, v3);
}

uint64_t OnboardingModalityPickerState.isPresentingDismissalConfirmationAlert.setter(char a1)
{
  result = type metadata accessor for OnboardingModalityPickerState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

void *OnboardingModalityPickerState.init(activeStorefrontLocale:detail:selectedModalityIdentifiers:presentedModality:isPresentingDismissalConfirmationAlert:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, const void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for OnboardingModalityPickerState(0);
  v15 = v14[8];
  v16 = type metadata accessor for OnboardingModality(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = sub_24B695698();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = v14[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  (*(*(v19 - 8) + 32))(a7 + v18, a2, v19);
  *(a7 + v14[7]) = a3;
  sub_24B643408(a4, a7 + v15);
  *(a7 + v14[9]) = a5;
  v20 = (a7 + v14[6]);

  return memcpy(v20, a6, 0x180uLL);
}

unint64_t sub_24B66FED4()
{
  v1 = *v0;
  v2 = 0x6C6961746564;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000026;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x74756F79616CLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B66FF98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B671584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B66FFCC(uint64_t a1)
{
  v2 = sub_24B6703B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B670008(uint64_t a1)
{
  v2 = sub_24B6703B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E000, &unk_24B698E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6703B4();
  sub_24B696B58();
  LOBYTE(v12[0]) = 0;
  sub_24B695698();
  sub_24B6712E4(&qword_27F02E010, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_24B696AB8();
  if (!v2)
  {
    v9 = type metadata accessor for OnboardingModalityPickerState(0);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
    sub_24B670B90(&qword_27F02E018, MEMORY[0x277D04390]);
    sub_24B696AB8();
    memcpy(v12, (v3 + *(v9 + 24)), sizeof(v12));
    v13 = 2;
    sub_24B670408();
    sub_24B696AB8();
    v12[0] = *(v3 + *(v9 + 28));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E038, &qword_24B69AA70);
    sub_24B670CB8(&qword_27F02E040, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_24B696AB8();
    LOBYTE(v12[0]) = 4;
    type metadata accessor for OnboardingModality(0);
    sub_24B6712E4(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
    sub_24B696A78();
    LOBYTE(v12[0]) = 5;
    sub_24B696A98();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B6703B4()
{
  result = qword_27F02E008;
  if (!qword_27F02E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E008);
  }

  return result;
}

unint64_t sub_24B670408()
{
  result = qword_27F02E030;
  if (!qword_27F02E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E030);
  }

  return result;
}

uint64_t OnboardingModalityPickerState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v38 = sub_24B695698();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E048, &qword_24B698E80);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v30 - v9;
  v11 = type metadata accessor for OnboardingModalityPickerState(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 32);
  v16 = type metadata accessor for OnboardingModality(0);
  v17 = *(*(v16 - 8) + 56);
  v42 = v14;
  v43 = v15;
  v17(&v14[v15], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6703B4();
  v39 = v10;
  v18 = v41;
  sub_24B696B48();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24B64BB2C(&v42[v43], &qword_27F02D3A8, &qword_24B697570);
  }

  else
  {
    v19 = v7;
    v30 = v16;
    v41 = v11;
    v21 = v34;
    v20 = v35;
    v22 = a1;
    v45[0] = 0;
    sub_24B6712E4(&qword_27F02E050, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    v23 = v36;
    sub_24B696A38();
    v24 = v42;
    (*(v33 + 32))(v42, v23, v38);
    v45[0] = 1;
    sub_24B670B90(&qword_27F02E058, MEMORY[0x277D04398]);
    v25 = v20;
    sub_24B696A38();
    v26 = v41;
    (*(v21 + 32))(v24 + *(v41 + 20), v19, v25);
    v45[407] = 2;
    sub_24B670C64();
    v36 = 0;
    sub_24B696A38();
    memcpy((v24 + *(v26 + 24)), v45, 0x180uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E038, &qword_24B69AA70);
    v45[406] = 3;
    sub_24B670CB8(&qword_27F02E068, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_24B696A38();
    *(v24 + *(v26 + 28)) = v44;
    LOBYTE(v44) = 4;
    sub_24B6712E4(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
    v27 = v32;
    sub_24B6969F8();
    sub_24B643408(v27, v24 + v43);
    LOBYTE(v44) = 5;
    v28 = sub_24B696A18();
    (*(v37 + 8))(v39, v40);
    *(v24 + *(v41 + 36)) = v28 & 1;
    sub_24B670D24(v24, v31);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return sub_24B67177C(v24, type metadata accessor for OnboardingModalityPickerState);
  }
}

uint64_t sub_24B670B90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D660, &unk_24B698E60);
    sub_24B6712E4(&qword_27F02E020, type metadata accessor for OnboardingDetail, &protocol conformance descriptor for OnboardingDetail);
    sub_24B6712E4(&qword_27F02E028, type metadata accessor for OnboardingDetail, &protocol conformance descriptor for OnboardingDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B670C64()
{
  result = qword_27F02E060;
  if (!qword_27F02E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E060);
  }

  return result;
}

uint64_t sub_24B670CB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E038, &qword_24B69AA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B670D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModalityPickerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17FitnessOnboarding0B19ModalityPickerStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0A8, &qword_24B699068);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((MEMORY[0x24C2457E0](a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = v7;
  v24 = v5;
  v14 = type metadata accessor for OnboardingModalityPickerState(0);
  type metadata accessor for OnboardingDetail(0);
  sub_24B6712E4(&qword_27F02E088, type metadata accessor for OnboardingDetail, &protocol conformance descriptor for OnboardingDetail);
  if ((sub_24B6966C8() & 1) == 0)
  {
    goto LABEL_11;
  }

  memcpy(v26, (a1 + v14[6]), 0x180uLL);
  memcpy(v25, (a2 + v14[6]), sizeof(v25));
  if ((_s17FitnessOnboarding0B20ModalityPickerLayoutV2eeoiySbAC_ACtFZ_0(v26, v25) & 1) == 0 || (sub_24B68F9E8(*(a1 + v14[7]), *(a2 + v14[7])) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v14[8];
  v16 = *(v11 + 48);
  sub_24B66FBD0(a1 + v15, v13);
  sub_24B66FBD0(a2 + v15, &v13[v16]);
  v17 = *(v24 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_24B64BB2C(v13, &qword_27F02D3A8, &qword_24B697570);
LABEL_14:
      v18 = *(a1 + v14[9]) ^ *(a2 + v14[9]) ^ 1;
      return v18 & 1;
    }

    goto LABEL_10;
  }

  sub_24B66FBD0(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_24B67177C(v10, type metadata accessor for OnboardingModality);
LABEL_10:
    sub_24B64BB2C(v13, &qword_27F02E0A8, &qword_24B699068);
    goto LABEL_11;
  }

  v20 = v23;
  sub_24B665FE0(&v13[v16], v23);
  v21 = static OnboardingModality.== infix(_:_:)(v10, v20);
  sub_24B67177C(v20, type metadata accessor for OnboardingModality);
  sub_24B67177C(v10, type metadata accessor for OnboardingModality);
  sub_24B64BB2C(v13, &qword_27F02D3A8, &qword_24B697570);
  if (v21)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = 0;
  return v18 & 1;
}

void sub_24B67118C(uint64_t a1)
{
  sub_24B695698();
  if (v1 <= 0x3F)
  {
    sub_24B671250(319);
    if (v2 <= 0x3F)
    {
      sub_24B6428D8();
      if (v3 <= 0x3F)
      {
        sub_24B642930(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B671250(uint64_t a1)
{
  if (!qword_27F02E080)
  {
    type metadata accessor for OnboardingDetail(255);
    sub_24B6712E4(&qword_27F02E088, type metadata accessor for OnboardingDetail, &protocol conformance descriptor for OnboardingDetail);
    v1 = sub_24B6966E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F02E080);
    }
  }
}

uint64_t sub_24B6712E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for OnboardingModalityPickerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityPickerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B671480()
{
  result = qword_27F02E090;
  if (!qword_27F02E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E090);
  }

  return result;
}

unint64_t sub_24B6714D8()
{
  result = qword_27F02E098;
  if (!qword_27F02E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E098);
  }

  return result;
}

unint64_t sub_24B671530()
{
  result = qword_27F02E0A0;
  if (!qword_27F02E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0A0);
  }

  return result;
}

uint64_t sub_24B671584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000024B69B3F0 == a2;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B69B410 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B69B430 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000026 && 0x800000024B69B450 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B67177C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OnboardingModalityPickerEnvironment.dismiss.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.presentModalityDetail.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.saveResult.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.init(dismiss:presentModalityDetail:saveResult:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24B67188C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6718C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B671920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024B69B480 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B696AD8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B6719B4(uint64_t a1)
{
  v2 = sub_24B671D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6719F0(uint64_t a1)
{
  v2 = sub_24B671D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B671A2C(uint64_t a1)
{
  v2 = sub_24B671DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B671A68(uint64_t a1)
{
  v2 = sub_24B671DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityDetailAction.hashValue.getter()
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t sub_24B671B10()
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t sub_24B671B54(uint64_t a1)
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t OnboardingModalityDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B0, &qword_24B6990E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B8, &qword_24B6990E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B58();
  sub_24B671DC0();
  sub_24B696A58();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_24B671D6C()
{
  result = qword_27F02E0C0;
  if (!qword_27F02E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0C0);
  }

  return result;
}

unint64_t sub_24B671DC0()
{
  result = qword_27F02E0C8;
  if (!qword_27F02E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0C8);
  }

  return result;
}

uint64_t OnboardingModalityDetailAction.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0D0, &qword_24B6990F0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0D8, &unk_24B6990F8);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B48();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_24B696A48() + 16) == 1)
    {
      sub_24B671DC0();
      sub_24B6969C8();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_24B6969A8();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00);
      *v13 = &type metadata for OnboardingModalityDetailAction;
      sub_24B6969D8();
      sub_24B696998();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B67210C()
{
  result = qword_27F02E0E0;
  if (!qword_27F02E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0E0);
  }

  return result;
}

uint64_t sub_24B672178(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B0, &qword_24B6990E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B8, &qword_24B6990E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B58();
  sub_24B671DC0();
  sub_24B696A58();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_24B672384()
{
  result = qword_27F02E0E8;
  if (!qword_27F02E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0E8);
  }

  return result;
}

unint64_t sub_24B6723DC()
{
  result = qword_27F02E0F0;
  if (!qword_27F02E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0F0);
  }

  return result;
}

unint64_t sub_24B672434()
{
  result = qword_27F02E0F8;
  if (!qword_27F02E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0F8);
  }

  return result;
}

unint64_t sub_24B67248C()
{
  result = qword_27F02E100;
  if (!qword_27F02E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E100);
  }

  return result;
}

unint64_t sub_24B6724E4()
{
  result = qword_27F02E108;
  if (!qword_27F02E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E108);
  }

  return result;
}

unint64_t sub_24B67254C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000022;
    v6 = 0xD000000000000020;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000027;
    if (a1 == 5)
    {
      v7 = 0xD000000000000028;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000012;
    if (a1 == 3)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (!a1)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B672674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B676BB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B6726A8(uint64_t a1)
{
  v2 = sub_24B6741E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6726E4(uint64_t a1)
{
  v2 = sub_24B6741E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672720(uint64_t a1)
{
  v2 = sub_24B674398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67275C(uint64_t a1)
{
  v2 = sub_24B674398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672798(uint64_t a1)
{
  v2 = sub_24B6743EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6727D4(uint64_t a1)
{
  v2 = sub_24B6743EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672810(uint64_t a1)
{
  v2 = sub_24B674344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67284C(uint64_t a1)
{
  v2 = sub_24B674344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672888(uint64_t a1)
{
  v2 = sub_24B67453C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6728C4(uint64_t a1)
{
  v2 = sub_24B67453C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672900(uint64_t a1)
{
  v2 = sub_24B674590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67293C(uint64_t a1)
{
  v2 = sub_24B674590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B696AD8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B672A18(uint64_t a1)
{
  v2 = sub_24B6742F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672A54(uint64_t a1)
{
  v2 = sub_24B6742F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672A90(uint64_t a1)
{
  v2 = sub_24B67429C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672ACC(uint64_t a1)
{
  v2 = sub_24B67429C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672B08(uint64_t a1)
{
  v2 = sub_24B6744E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672B44(uint64_t a1)
{
  v2 = sub_24B6744E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672B80(uint64_t a1)
{
  v2 = sub_24B674494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672BBC(uint64_t a1)
{
  v2 = sub_24B674494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672BF8(uint64_t a1)
{
  v2 = sub_24B674440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672C34(uint64_t a1)
{
  v2 = sub_24B674440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerAction.encode(to:)(void *a1)
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E110, &qword_24B6993D0);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v93 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E118, &qword_24B6993D8);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v117 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E120, &qword_24B6993E0);
  v121 = *(v5 - 8);
  v122 = v5;
  MEMORY[0x28223BE20](v5);
  v120 = &v93 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E128, &qword_24B6993E8);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v103 = &v93 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E130, &qword_24B6993F0);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v93 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E138, &qword_24B6993F8);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E140, &qword_24B699400);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v11 = &v93 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E148, &qword_24B699408);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v93 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E150, &qword_24B699410);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v93 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E158, &qword_24B699418);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v93 - v14;
  v131 = sub_24B6956B8();
  v15 = *(v131 - 8);
  v16 = MEMORY[0x28223BE20](v131);
  v130 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v93 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v127 = &v93 - v22;
  v132 = type metadata accessor for OnboardingModality(0);
  v23 = MEMORY[0x28223BE20](v132);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v126 = &v93 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v125 = &v93 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v124 = &v93 - v31;
  MEMORY[0x28223BE20](v30);
  v123 = &v93 - v32;
  v33 = type metadata accessor for OnboardingModalityPickerAction(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E160, &unk_24B699420);
  v137 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v37 = &v93 - v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6741E4();
  v134 = v37;
  sub_24B696B58();
  sub_24B674238(v133, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v50 = v135;
      v51 = v134;
      if (EnumCaseMultiPayload == 5)
      {
        v139 = 3;
        sub_24B674494();
        sub_24B696A58();
        (*(v94 + 8))(v11, v95);
      }

      else
      {
        v139 = 4;
        sub_24B674440();
        v84 = v96;
        sub_24B696A58();
        (*(v97 + 8))(v84, v98);
      }
    }

    else
    {
      v50 = v135;
      v51 = v134;
      if (EnumCaseMultiPayload == 7)
      {
        v139 = 5;
        sub_24B6743EC();
        v67 = v99;
        sub_24B696A58();
        (*(v100 + 8))(v67, v102);
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v139 = 6;
        sub_24B674398();
        v52 = v103;
        sub_24B696A58();
        (*(v107 + 8))(v52, v108);
      }

      else
      {
        v139 = 9;
        sub_24B67429C();
        v73 = v114;
        sub_24B696A58();
        (*(v115 + 8))(v73, v116);
      }
    }

    v71 = *(v137 + 8);
    v72 = v51;
    return v71(v72, v50);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v39 = v15;
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        LODWORD(v133) = v35[*(v40 + 48)];
        v41 = *(v40 + 64);
        v42 = v126;
        sub_24B675DBC(v35, v126, type metadata accessor for OnboardingModality);
        v43 = *(v15 + 32);
        v44 = v131;
        v43(v130, &v35[v41], v131);
        v139 = 7;
        sub_24B674344();
        v45 = v120;
        v47 = v134;
        v46 = v135;
        sub_24B696A58();
        v139 = 0;
        sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
        v48 = v122;
        v49 = v136;
        sub_24B696AB8();
        if (v49)
        {
          (*(v121 + 8))(v45, v48);
          (*(v39 + 8))(v130, v44);
LABEL_18:
          v65 = v42;
LABEL_19:
          sub_24B665F84(v65);
          return (*(v137 + 8))(v47, v46);
        }

        v139 = v133;
        v138 = 1;
        sub_24B65DCA4();
        sub_24B696AB8();
        v139 = 2;
        sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B00]);
        v89 = v130;
        sub_24B696AB8();
        v87 = v126;
        (*(v121 + 8))(v45, v48);
        (*(v39 + 8))(v89, v44);
LABEL_33:
        v65 = v87;
        goto LABEL_19;
      }

      sub_24B675DBC(v35, v25, type metadata accessor for OnboardingModality);
      v139 = 8;
      sub_24B6742F0();
      v68 = v117;
      v69 = v134;
      v50 = v135;
      sub_24B696A58();
      sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
      v70 = v119;
      sub_24B696AB8();
      (*(v118 + 8))(v68, v70);
      sub_24B665F84(v25);
      v71 = *(v137 + 8);
      v72 = v69;
      return v71(v72, v50);
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
    LODWORD(v133) = v35[*(v61 + 48)];
    v62 = *(v61 + 64);
    v42 = v125;
    sub_24B675DBC(v35, v125, type metadata accessor for OnboardingModality);
    v63 = *(v15 + 32);
    v57 = v131;
    v63(v129, &v35[v62], v131);
    v139 = 2;
    sub_24B6744E8();
    v58 = v111;
    v47 = v134;
    v46 = v135;
    sub_24B696A58();
    v139 = 0;
    sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
    v59 = v113;
    v64 = v136;
    sub_24B696AB8();
    if (v64)
    {
      (*(v112 + 8))(v58, v59);
      (*(v39 + 8))(v129, v57);
      goto LABEL_18;
    }

    v136 = v39;
    v139 = v133;
    v138 = 1;
    sub_24B65DCA4();
    sub_24B696AB8();
    v139 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B00]);
    v86 = v129;
    sub_24B696AB8();
    v87 = v125;
    v88 = &v140;
LABEL_32:
    (*(*(v88 - 32) + 8))(v58, v59);
    (*(v136 + 8))(v86, v57);
    goto LABEL_33;
  }

  v53 = v15;
  if (!EnumCaseMultiPayload)
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
    LODWORD(v133) = v35[*(v54 + 48)];
    v55 = *(v54 + 64);
    v42 = v123;
    sub_24B675DBC(v35, v123, type metadata accessor for OnboardingModality);
    v56 = *(v15 + 32);
    v57 = v131;
    v56(v127, &v35[v55], v131);
    v139 = 0;
    sub_24B674590();
    v58 = v101;
    v47 = v134;
    v46 = v135;
    sub_24B696A58();
    v139 = 0;
    sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
    v59 = v105;
    v60 = v136;
    sub_24B696AB8();
    if (v60)
    {
      (*(v104 + 8))(v58, v59);
      (*(v53 + 8))(v127, v57);
      goto LABEL_18;
    }

    v136 = v53;
    v139 = v133;
    v138 = 1;
    sub_24B65DCA4();
    sub_24B696AB8();
    v139 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B00]);
    v86 = v127;
    sub_24B696AB8();
    v87 = v123;
    v88 = &v136;
    goto LABEL_32;
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  LODWORD(v133) = v35[*(v74 + 48)];
  v75 = *(v74 + 64);
  v76 = v124;
  sub_24B675DBC(v35, v124, type metadata accessor for OnboardingModality);
  v77 = v131;
  (*(v15 + 32))(v128, &v35[v75], v131);
  v139 = 1;
  sub_24B67453C();
  v78 = v106;
  v80 = v134;
  v79 = v135;
  sub_24B696A58();
  v139 = 0;
  sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
  v81 = v110;
  v82 = v136;
  sub_24B696AB8();
  if (v82)
  {
    (*(v109 + 8))(v78, v81);
    (*(v53 + 8))(v128, v77);
    v83 = v76;
  }

  else
  {
    v139 = v133;
    v138 = 1;
    sub_24B65DCA4();
    v85 = v78;
    sub_24B696AB8();
    v139 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B00]);
    v90 = v128;
    v91 = v77;
    sub_24B696AB8();
    v92 = v124;
    (*(v109 + 8))(v85, v81);
    (*(v53 + 8))(v90, v91);
    v83 = v92;
  }

  sub_24B665F84(v83);
  return (*(v137 + 8))(v80, v79);
}

uint64_t type metadata accessor for OnboardingModalityPickerAction(uint64_t a1)
{
  result = qword_27F02E228;
  if (!qword_27F02E228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6741E4()
{
  result = qword_27F02E168;
  if (!qword_27F02E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E168);
  }

  return result;
}

uint64_t sub_24B674238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModalityPickerAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B67429C()
{
  result = qword_27F02E170;
  if (!qword_27F02E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E170);
  }

  return result;
}

unint64_t sub_24B6742F0()
{
  result = qword_27F02E178;
  if (!qword_27F02E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E178);
  }

  return result;
}

unint64_t sub_24B674344()
{
  result = qword_27F02E180;
  if (!qword_27F02E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E180);
  }

  return result;
}

unint64_t sub_24B674398()
{
  result = qword_27F02E190;
  if (!qword_27F02E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E190);
  }

  return result;
}

unint64_t sub_24B6743EC()
{
  result = qword_27F02E198;
  if (!qword_27F02E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E198);
  }

  return result;
}

unint64_t sub_24B674440()
{
  result = qword_27F02E1A0;
  if (!qword_27F02E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1A0);
  }

  return result;
}

unint64_t sub_24B674494()
{
  result = qword_27F02E1A8;
  if (!qword_27F02E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1A8);
  }

  return result;
}

unint64_t sub_24B6744E8()
{
  result = qword_27F02E1B0;
  if (!qword_27F02E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1B0);
  }

  return result;
}

unint64_t sub_24B67453C()
{
  result = qword_27F02E1B8;
  if (!qword_27F02E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1B8);
  }

  return result;
}

unint64_t sub_24B674590()
{
  result = qword_27F02E1C0;
  if (!qword_27F02E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1C0);
  }

  return result;
}

uint64_t OnboardingModalityPickerAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1C8, &qword_24B699430);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v114 = &v82 - v3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1D0, &qword_24B699438);
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v113 = &v82 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1D8, &qword_24B699440);
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v121 = &v82 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1E0, &qword_24B699448);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v120 = &v82 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1E8, &qword_24B699450);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v112 = &v82 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1F0, &qword_24B699458);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v110 = &v82 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1F8, &qword_24B699460);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v109 = &v82 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E200, &qword_24B699468);
  v102 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v119 = &v82 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E208, &qword_24B699470);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v118 = &v82 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E210, &qword_24B699478);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v111 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E218, &unk_24B699480);
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v82 - v14;
  v115 = type metadata accessor for OnboardingModalityPickerAction(0);
  v16 = MEMORY[0x28223BE20](v115);
  v88 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v82 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v82 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v82 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v82 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v82 - v30;
  v32 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B6741E4();
  v33 = v124;
  sub_24B696B48();
  if (v33)
  {
    goto LABEL_12;
  }

  v83 = v29;
  v84 = v26;
  v85 = v23;
  v86 = v20;
  v34 = v119;
  v35 = v120;
  v36 = v118;
  v124 = 0;
  v37 = v121;
  v87 = v31;
  v38 = v122;
  v39 = v117;
  v40 = sub_24B696A48();
  v41 = (2 * *(v40 + 16)) | 1;
  v125 = v40;
  v126 = v40 + 32;
  v127 = 0;
  v128 = v41;
  v42 = sub_24B6718C0();
  v43 = v15;
  if (v42 == 10 || v127 != v128 >> 1)
  {
    v47 = sub_24B6969A8();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00);
    *v49 = v115;
    sub_24B6969D8();
    sub_24B696998();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
  }

  else if (v42 > 4u)
  {
    if (v42 <= 6u)
    {
      if (v42 == 5)
      {
        v129 = 5;
        sub_24B6743EC();
        v59 = v112;
        v60 = v124;
        sub_24B6969C8();
        if (!v60)
        {
          (*(v93 + 8))(v59, v95);
          (*(v116 + 8))(v15, v39);
          swift_unknownObjectRelease();
          v46 = v87;
          swift_storeEnumTagMultiPayload();
          goto LABEL_39;
        }
      }

      else
      {
        v129 = 6;
        sub_24B674398();
        v71 = v124;
        sub_24B6969C8();
        if (!v71)
        {
          (*(v98 + 8))(v35, v99);
          (*(v116 + 8))(v15, v39);
          swift_unknownObjectRelease();
          v46 = v87;
          swift_storeEnumTagMultiPayload();
          goto LABEL_39;
        }
      }

      goto LABEL_11;
    }

    if (v42 == 7)
    {
      v129 = 7;
      sub_24B674344();
      v63 = v124;
      sub_24B6969C8();
      if (!v63)
      {
        v124 = v15;
        type metadata accessor for OnboardingModality(0);
        v129 = 0;
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
        v64 = v107;
        sub_24B696A38();
        v65 = v116;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        v129 = 1;
        sub_24B65DF1C();
        sub_24B696A38();
        v75 = v108;
        v120 = *(v74 + 64);
        sub_24B6956B8();
        v129 = 2;
        sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B28]);
        sub_24B696A38();
        (*(v75 + 8))(v37, v64);
        (*(v65 + 8))(v124, v39);
        swift_unknownObjectRelease();
        v80 = v86;
        goto LABEL_37;
      }
    }

    else if (v42 == 8)
    {
      v129 = 8;
      sub_24B6742F0();
      v52 = v113;
      v53 = v124;
      sub_24B6969C8();
      if (!v53)
      {
        type metadata accessor for OnboardingModality(0);
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
        v54 = v88;
        v55 = v105;
        sub_24B696A38();
        (*(v106 + 8))(v52, v55);
        (*(v116 + 8))(v15, v39);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v54;
LABEL_38:
        v46 = v87;
        sub_24B675DBC(v56, v87, type metadata accessor for OnboardingModalityPickerAction);
        goto LABEL_39;
      }
    }

    else
    {
      v129 = 9;
      sub_24B67429C();
      v67 = v114;
      v68 = v124;
      sub_24B6969C8();
      if (!v68)
      {
        (*(v103 + 8))(v67, v104);
        (*(v116 + 8))(v15, v39);
        swift_unknownObjectRelease();
        v46 = v87;
        swift_storeEnumTagMultiPayload();
        goto LABEL_39;
      }
    }
  }

  else
  {
    v44 = v124;
    if (v42 <= 1u)
    {
      if (v42)
      {
        v129 = 1;
        sub_24B67453C();
        v69 = v36;
        sub_24B6969C8();
        if (!v44)
        {
          type metadata accessor for OnboardingModality(0);
          v129 = 0;
          sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
          v70 = v101;
          sub_24B696A38();
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
          v129 = 1;
          sub_24B65DF1C();
          sub_24B696A38();
          v79 = v100;
          v124 = *(v78 + 64);
          sub_24B6956B8();
          v129 = 2;
          sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B28]);
          sub_24B696A38();
          (*(v79 + 8))(v69, v70);
          (*(v116 + 8))(v43, v39);
          swift_unknownObjectRelease();
          v80 = v84;
          goto LABEL_37;
        }
      }

      else
      {
        v129 = 0;
        sub_24B674590();
        v57 = v111;
        sub_24B6969C8();
        if (!v44)
        {
          type metadata accessor for OnboardingModality(0);
          v129 = 0;
          sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
          v58 = v96;
          sub_24B696A38();
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
          v129 = 1;
          sub_24B65DF1C();
          sub_24B696A38();
          v77 = v94;
          v124 = *(v76 + 64);
          sub_24B6956B8();
          v129 = 2;
          sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B28]);
          sub_24B696A38();
          (*(v77 + 8))(v57, v58);
          (*(v116 + 8))(v43, v39);
          swift_unknownObjectRelease();
          v80 = v83;
LABEL_37:
          swift_storeEnumTagMultiPayload();
          v56 = v80;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (v42 != 2)
      {
        if (v42 == 3)
        {
          v129 = 3;
          sub_24B674494();
          v45 = v109;
          sub_24B6969C8();
          if (!v44)
          {
            (*(v89 + 8))(v45, v90);
            (*(v116 + 8))(v43, v39);
            swift_unknownObjectRelease();
            v46 = v87;
            swift_storeEnumTagMultiPayload();
LABEL_39:
            v81 = v123;
            sub_24B675DBC(v46, v38, type metadata accessor for OnboardingModalityPickerAction);
            v50 = v81;
            return __swift_destroy_boxed_opaque_existential_1(v50);
          }
        }

        else
        {
          v129 = 4;
          sub_24B674440();
          v66 = v110;
          sub_24B6969C8();
          if (!v44)
          {
            (*(v91 + 8))(v66, v92);
            (*(v116 + 8))(v43, v39);
            swift_unknownObjectRelease();
            v46 = v87;
            swift_storeEnumTagMultiPayload();
            goto LABEL_39;
          }
        }

        goto LABEL_11;
      }

      v129 = 2;
      sub_24B6744E8();
      v61 = v34;
      sub_24B6969C8();
      if (!v44)
      {
        type metadata accessor for OnboardingModality(0);
        v129 = 0;
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality, &protocol conformance descriptor for OnboardingModality);
        v62 = v97;
        sub_24B696A38();
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        v129 = 1;
        sub_24B65DF1C();
        sub_24B696A38();
        v73 = v102;
        v124 = *(v72 + 64);
        sub_24B6956B8();
        v129 = 2;
        sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B28]);
        sub_24B696A38();
        (*(v73 + 8))(v61, v62);
        (*(v116 + 8))(v43, v39);
        swift_unknownObjectRelease();
        v80 = v85;
        goto LABEL_37;
      }
    }
  }

LABEL_11:
  (*(v116 + 8))(v43, v39);
  swift_unknownObjectRelease();
LABEL_12:
  v50 = v123;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_24B675DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B675E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B675EEC(uint64_t a1)
{
  sub_24B675F64(319);
  if (v1 <= 0x3F)
  {
    sub_24B675FE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24B675F64(uint64_t a1)
{
  if (!qword_27F02E238)
  {
    type metadata accessor for OnboardingModality(255);
    sub_24B6956B8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F02E238);
    }
  }
}

void sub_24B675FE0()
{
  if (!qword_27F02E240)
  {
    v0 = type metadata accessor for OnboardingModality(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F02E240);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingModalityPickerAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityPickerAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B67621C()
{
  result = qword_27F02E248;
  if (!qword_27F02E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E248);
  }

  return result;
}

unint64_t sub_24B676274()
{
  result = qword_27F02E250;
  if (!qword_27F02E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E250);
  }

  return result;
}

unint64_t sub_24B6762CC()
{
  result = qword_27F02E258;
  if (!qword_27F02E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E258);
  }

  return result;
}

unint64_t sub_24B676324()
{
  result = qword_27F02E260;
  if (!qword_27F02E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E260);
  }

  return result;
}

unint64_t sub_24B67637C()
{
  result = qword_27F02E268;
  if (!qword_27F02E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E268);
  }

  return result;
}

unint64_t sub_24B6763D4()
{
  result = qword_27F02E270;
  if (!qword_27F02E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E270);
  }

  return result;
}

unint64_t sub_24B67642C()
{
  result = qword_27F02E278;
  if (!qword_27F02E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E278);
  }

  return result;
}

unint64_t sub_24B676484()
{
  result = qword_27F02E280;
  if (!qword_27F02E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E280);
  }

  return result;
}

unint64_t sub_24B6764DC()
{
  result = qword_27F02E288;
  if (!qword_27F02E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E288);
  }

  return result;
}

unint64_t sub_24B676534()
{
  result = qword_27F02E290;
  if (!qword_27F02E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E290);
  }

  return result;
}

unint64_t sub_24B67658C()
{
  result = qword_27F02E298;
  if (!qword_27F02E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E298);
  }

  return result;
}

unint64_t sub_24B6765E4()
{
  result = qword_27F02E2A0;
  if (!qword_27F02E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2A0);
  }

  return result;
}

unint64_t sub_24B67663C()
{
  result = qword_27F02E2A8;
  if (!qword_27F02E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2A8);
  }

  return result;
}

unint64_t sub_24B676694()
{
  result = qword_27F02E2B0;
  if (!qword_27F02E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2B0);
  }

  return result;
}

unint64_t sub_24B6766EC()
{
  result = qword_27F02E2B8;
  if (!qword_27F02E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2B8);
  }

  return result;
}

unint64_t sub_24B676744()
{
  result = qword_27F02E2C0;
  if (!qword_27F02E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2C0);
  }

  return result;
}

unint64_t sub_24B67679C()
{
  result = qword_27F02E2C8;
  if (!qword_27F02E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2C8);
  }

  return result;
}

unint64_t sub_24B6767F4()
{
  result = qword_27F02E2D0;
  if (!qword_27F02E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2D0);
  }

  return result;
}

unint64_t sub_24B67684C()
{
  result = qword_27F02E2D8;
  if (!qword_27F02E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2D8);
  }

  return result;
}

unint64_t sub_24B6768A4()
{
  result = qword_27F02E2E0;
  if (!qword_27F02E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2E0);
  }

  return result;
}

unint64_t sub_24B6768FC()
{
  result = qword_27F02E2E8;
  if (!qword_27F02E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2E8);
  }

  return result;
}

unint64_t sub_24B676954()
{
  result = qword_27F02E2F0;
  if (!qword_27F02E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2F0);
  }

  return result;
}

unint64_t sub_24B6769AC()
{
  result = qword_27F02E2F8;
  if (!qword_27F02E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2F8);
  }

  return result;
}

unint64_t sub_24B676A04()
{
  result = qword_27F02E300;
  if (!qword_27F02E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E300);
  }

  return result;
}

unint64_t sub_24B676A5C()
{
  result = qword_27F02E308;
  if (!qword_27F02E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E308);
  }

  return result;
}

unint64_t sub_24B676AB4()
{
  result = qword_27F02E310;
  if (!qword_27F02E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E310);
  }

  return result;
}

unint64_t sub_24B676B0C()
{
  result = qword_27F02E318;
  if (!qword_27F02E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E318);
  }

  return result;
}

unint64_t sub_24B676B64()
{
  result = qword_27F02E320;
  if (!qword_27F02E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E320);
  }

  return result;
}

uint64_t sub_24B676BB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000024B69B4C0 == a2;
  if (v3 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B69B4E0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B69B500 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B69B520 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B540 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000028 && 0x800000024B69B560 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000027 && 0x800000024B69B590 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024B69B5C0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024B69B5F0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B69B620 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24B676ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461507865646E69 && a2 == 0xE900000000000068)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B696AD8();

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

unint64_t sub_24B677028()
{
  result = qword_27F02E328;
  if (!qword_27F02E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E328);
  }

  return result;
}

char *sub_24B67707C@<X0>(char **a1@<X8>)
{
  result = sub_24B65F544();
  *a1 = result;
  return result;
}

uint64_t sub_24B6770C0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24B696938();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_24B67712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B695C58();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B695C68();
}

uint64_t sub_24B677224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B695C58();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B695C68();
}

uint64_t sub_24B67731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24B696AF8();
  sub_24B696888();
  v6 = sub_24B696B38();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24B696AD8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24B677414@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for OnboardingModalityPickerState(0);
  *a2 = *(*(a1 + *(result + 28)) + 16) > 4uLL;
  return result;
}

uint64_t sub_24B677458(uint64_t a1)
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

  sub_24B68B07C(v17, type metadata accessor for OnboardingDetail);
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

uint64_t OnboardingModalityPickerView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_24B64C754;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for OnboardingModalityPickerView(0, a5, a6, v15);
  return sub_24B64C04C(a3, a4, a5);
}

uint64_t OnboardingModalityPickerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E330, &qword_24B69A110);
  v108 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v106 = v91 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  v5 = *(a1 + 16);
  v112 = *(a1 + 24);
  v113 = v5;
  type metadata accessor for OnboardingModalityCardButton(255, v5, v112, v6);
  v7 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v151 = MEMORY[0x277CDF678];
  v110 = MEMORY[0x277CDFAD8];
  v8 = swift_getWitnessTable();
  v125 = v7;
  v126 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = MEMORY[0x277D83980];
  v11 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v125 = v4;
  v126 = MEMORY[0x277D837D0];
  v127 = OpaqueTypeMetadata2;
  v128 = v11;
  v129 = MEMORY[0x277D837E0];
  sub_24B696538();
  v125 = v7;
  v126 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v105 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v12 = sub_24B6964E8();
  v13 = swift_getWitnessTable();
  v125 = v12;
  v126 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v10);
  v16 = sub_24B64E3F8();
  v125 = v111;
  v126 = &type metadata for OnboardingModalityPickerSectionType;
  v127 = v14;
  v128 = v15;
  v129 = v16;
  sub_24B696538();
  v125 = v12;
  v126 = v13;
  v148 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v17 = sub_24B6964E8();
  v18 = swift_getWitnessTable();
  v125 = v17;
  v126 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v104 = v19;
  v125 = MEMORY[0x277CE1350];
  v126 = MEMORY[0x277CE1340];
  v20 = swift_getOpaqueTypeConformance2();
  v115 = v20;
  v125 = v17;
  v126 = v18;
  v103 = swift_getOpaqueTypeConformance2();
  v21 = v114;
  v125 = v17;
  v126 = v114;
  v127 = v19;
  v128 = v18;
  v129 = v20;
  v130 = v103;
  v111 = MEMORY[0x277CE0E68];
  v102 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v146 = v112;
  v147 = MEMORY[0x277CE01B0];
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x277CDF678];
  v22 = swift_getWitnessTable();
  v23 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v142 = v22;
  v143 = v23;
  v141 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v125 = v17;
  v126 = v21;
  v127 = v104;
  v128 = v18;
  v129 = v115;
  v130 = v103;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = swift_getWitnessTable();
  v139 = v24;
  v140 = v25;
  swift_getWitnessTable();
  v26 = sub_24B695888();
  v27 = swift_getWitnessTable();
  v125 = v26;
  v126 = v27;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v28 = sub_24B6959A8();
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v125 = v26;
  v126 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  v137 = v29;
  v138 = v30;
  v135 = swift_getWitnessTable();
  v136 = MEMORY[0x277CE0880];
  v31 = v28;
  v32 = swift_getWitnessTable();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v36 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v37 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  v125 = v34;
  v126 = v35;
  v127 = v36;
  v128 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v125 = v33;
  v126 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v104;
  v125 = v31;
  v126 = v104;
  v127 = v32;
  v128 = v39;
  swift_getOpaqueTypeMetadata2();
  v103 = sub_24B6959A8();
  v41 = sub_24B6965B8();
  v125 = v31;
  v126 = v33;
  v127 = v41;
  v128 = v32;
  v129 = v38;
  v130 = MEMORY[0x277CE1320];
  v102 = swift_getOpaqueTypeMetadata2();
  v125 = v31;
  v126 = v40;
  v127 = v32;
  v128 = v39;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = MEMORY[0x277CE0880];
  v42 = v103;
  v43 = swift_getWitnessTable();
  v125 = v31;
  v126 = v33;
  v127 = v41;
  v128 = v32;
  v129 = v38;
  v130 = MEMORY[0x277CE1320];
  v44 = swift_getOpaqueTypeConformance2();
  v125 = v31;
  v126 = MEMORY[0x277CE1350];
  v127 = v42;
  v45 = v102;
  v128 = v102;
  v129 = v32;
  v46 = MEMORY[0x277CE1340];
  v130 = MEMORY[0x277CE1340];
  v131 = v43;
  v132 = v44;
  swift_getOpaqueTypeMetadata2();
  v125 = v31;
  v126 = MEMORY[0x277CE1350];
  v127 = v42;
  v128 = v45;
  v129 = v32;
  v130 = v46;
  v131 = v43;
  v132 = v44;
  swift_getOpaqueTypeConformance2();
  sub_24B695958();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  v103 = sub_24B695C78();
  v47 = sub_24B6963E8();
  v110 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v104 = (v91 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  v50 = swift_getWitnessTable();
  v51 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v123 = v50;
  v124 = v51;
  v102 = swift_getWitnessTable();
  v122 = v102;
  v52 = swift_getWitnessTable();
  v53 = sub_24B64E810();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  v55 = sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618, v105);
  v125 = v54;
  v126 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v125 = v47;
  v57 = MEMORY[0x277D837D0];
  v126 = MEMORY[0x277D837D0];
  v127 = v49;
  v128 = MEMORY[0x277CE0BD8];
  v129 = v52;
  v130 = v53;
  v58 = MEMORY[0x277CE0BC8];
  v131 = v56;
  v132 = MEMORY[0x277CE0BC8];
  v59 = swift_getOpaqueTypeMetadata2();
  v125 = v47;
  v126 = v57;
  v127 = v49;
  v128 = MEMORY[0x277CE0BD8];
  v129 = v52;
  v130 = v53;
  v131 = v56;
  v132 = v58;
  v60 = swift_getOpaqueTypeConformance2();
  v93 = v47;
  v94 = v52;
  v62 = v114;
  v61 = v115;
  v125 = v47;
  v126 = v114;
  v91[0] = v59;
  v91[1] = v60;
  v127 = v59;
  v128 = v52;
  v129 = v115;
  v130 = v60;
  v63 = v60;
  v64 = swift_getOpaqueTypeMetadata2();
  v105 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v92 = v91 - v65;
  v125 = v47;
  v126 = v62;
  v127 = v59;
  v128 = v52;
  v129 = v61;
  v130 = v63;
  v66 = swift_getOpaqueTypeConformance2();
  v97 = v64;
  v98 = v66;
  v125 = v64;
  v126 = v66;
  v67 = v66;
  v68 = swift_getOpaqueTypeMetadata2();
  v111 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v96 = v91 - v69;
  v125 = v64;
  v126 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v125 = v68;
  v126 = v70;
  v99 = v70;
  v100 = MEMORY[0x277D09E58];
  v71 = swift_getOpaqueTypeMetadata2();
  v101 = *(v71 - 8);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = v91 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v95 = v91 - v75;
  v77 = v112;
  v76 = v113;
  v119 = v113;
  v120 = v112;
  v78 = v107;
  v121 = v107;
  v79 = v104;
  sub_24B6963D8();
  sub_24B6965D8();
  v80 = v106;
  sub_24B695B68();
  v116 = v76;
  v117 = v77;
  v118 = v78;
  swift_checkMetadataState();
  v82 = v92;
  v81 = v93;
  v83 = v114;
  sub_24B6962E8();
  (*(v108 + 8))(v80, v83);
  (*(v110 + 8))(v79, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D508, &qword_24B69A180);
  sub_24B6959E8();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_24B697540;
  sub_24B6959D8();
  v86 = v96;
  v85 = v97;
  MEMORY[0x24C2462F0](2, v84, v97, v98);

  (*(v105 + 8))(v82, v85);
  v87 = v99;
  sub_24B695FF8();
  (*(v111 + 8))(v86, v68);
  v125 = v68;
  v126 = v87;
  swift_getOpaqueTypeConformance2();
  v88 = v95;
  sub_24B65C908();
  v89 = *(v101 + 8);
  v89(v74, v71);
  sub_24B65C908();
  return (v89)(v88, v71);
}

unint64_t sub_24B678B24()
{
  result = qword_27F02E398;
  if (!qword_27F02E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E3A0, &qword_24B69A168);
    sub_24B65C890(&qword_27F02E3A8, qword_27F02E3B0, &unk_24B69A170, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E398);
  }

  return result;
}

uint64_t sub_24B678BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = a1;
  v117 = a5;
  v118 = a2;
  v119 = a3;
  v115 = type metadata accessor for OnboardingModalityPickerView(0, a2, a3, a4);
  v100 = *(v115 - 8);
  v98 = *(v100 + 64);
  MEMORY[0x28223BE20](v115);
  v99 = &v94 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v97 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v96 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v94 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v94 - v13;
  v110 = type metadata accessor for OnboardingDetail(0);
  v107 = *(v110 - 8);
  v14 = MEMORY[0x28223BE20](v110);
  v94 = v15;
  v95 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v94 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a2, a3, v18);
  v19 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v154 = MEMORY[0x277CDF678];
  v120 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable();
  v128 = v19;
  v129 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = MEMORY[0x277D83980];
  v23 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v128 = v17;
  v129 = MEMORY[0x277D837D0];
  v130 = OpaqueTypeMetadata2;
  v131 = v23;
  v132 = MEMORY[0x277D837E0];
  sub_24B696538();
  v128 = v19;
  v129 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v24 = sub_24B6964E8();
  v25 = swift_getWitnessTable();
  v128 = v24;
  v129 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v22);
  v28 = sub_24B64E3F8();
  v128 = v105;
  v129 = &type metadata for OnboardingModalityPickerSectionType;
  v130 = v26;
  v131 = v27;
  v132 = v28;
  sub_24B696538();
  v128 = v24;
  v129 = v25;
  v151 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v29 = sub_24B6964E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  v106 = v30;
  v31 = swift_getWitnessTable();
  v128 = v29;
  v129 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v105 = v32;
  v128 = MEMORY[0x277CE1350];
  v129 = MEMORY[0x277CE1340];
  v33 = swift_getOpaqueTypeConformance2();
  v104 = v33;
  v128 = v29;
  v129 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v128 = v29;
  v129 = v30;
  v130 = v32;
  v131 = v31;
  v132 = v33;
  v133 = v34;
  v102 = MEMORY[0x277CE0E68];
  v103 = v34;
  v101 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v149 = v119;
  v150 = MEMORY[0x277CE01B0];
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x277CDF678];
  v35 = swift_getWitnessTable();
  v36 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v145 = v35;
  v146 = v36;
  v144 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v128 = v29;
  v129 = v106;
  v130 = v105;
  v131 = v31;
  v132 = v104;
  v133 = v103;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v142 = v37;
  v143 = v38;
  swift_getWitnessTable();
  v39 = sub_24B695888();
  v40 = swift_getWitnessTable();
  v128 = v39;
  v129 = v40;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v41 = sub_24B6959A8();
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v128 = v39;
  v129 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  v140 = v42;
  v141 = v43;
  v138 = swift_getWitnessTable();
  v139 = MEMORY[0x277CE0880];
  v105 = swift_getWitnessTable();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v47 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v48 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  v128 = v45;
  v129 = v46;
  v130 = v47;
  v131 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v44;
  v102 = v49;
  v103 = v44;
  v128 = v44;
  v129 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v41;
  v53 = v105;
  v54 = v106;
  v128 = v41;
  v129 = v106;
  v130 = v105;
  v131 = v51;
  swift_getOpaqueTypeMetadata2();
  v104 = sub_24B6959A8();
  v55 = sub_24B6965B8();
  v128 = v41;
  v129 = v50;
  v130 = v55;
  v131 = v53;
  v132 = v49;
  v133 = MEMORY[0x277CE1320];
  v56 = swift_getOpaqueTypeMetadata2();
  v128 = v52;
  v129 = v54;
  v130 = v53;
  v131 = v51;
  v57 = v53;
  v136 = swift_getOpaqueTypeConformance2();
  v137 = MEMORY[0x277CE0880];
  v58 = v104;
  v59 = swift_getWitnessTable();
  v128 = v52;
  v129 = v103;
  v130 = v55;
  v131 = v57;
  v132 = v102;
  v133 = MEMORY[0x277CE1320];
  v60 = swift_getOpaqueTypeConformance2();
  v128 = v52;
  v129 = MEMORY[0x277CE1350];
  v130 = v58;
  v61 = v56;
  v131 = v56;
  v132 = v57;
  v62 = MEMORY[0x277CE1340];
  v133 = MEMORY[0x277CE1340];
  v134 = v59;
  v135 = v60;
  v63 = swift_getOpaqueTypeMetadata2();
  v128 = v52;
  v129 = MEMORY[0x277CE1350];
  v130 = v58;
  v131 = v61;
  v132 = v57;
  v133 = v62;
  v134 = v59;
  v135 = v60;
  v64 = v114;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = v63;
  v65 = sub_24B695958();
  v120 = sub_24B695C78();
  v106 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v105 = &v94 - v66;
  v67 = v115;
  sub_24B64BC54();
  swift_getKeyPath();
  v68 = v109;
  sub_24B696718();

  v69 = v107;

  v71 = v111;
  v70 = v112;
  sub_24B6966D8();
  v72 = v108;
  sub_24B689A78(v108);
  sub_24B64BB2C(v70, &qword_27F02D658, &unk_24B6977E0);
  (*(v113 + 8))(v68, v71);
  if ((*(v69 + 48))(v72, 1, v110) == 1)
  {
    sub_24B64BB2C(v72, &qword_27F02D668, &qword_24B6977F0);
    v73 = v96;
    sub_24B695908();
    v74 = swift_getWitnessTable();
    v75 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
    v76 = v105;
    v77 = v121;
    sub_24B677224(v73, v65, v121, v74, v75);
    (*(v97 + 8))(v73, v77);
  }

  else
  {
    v78 = v116;
    sub_24B68BA8C(v72, v116, type metadata accessor for OnboardingDetail);
    v80 = v99;
    v79 = v100;
    (*(v100 + 16))(v99, v64, v67);
    v81 = v78;
    v82 = v95;
    sub_24B68BA24(v81, v95, type metadata accessor for OnboardingDetail);
    v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v84 = (v98 + *(v69 + 80) + v83) & ~*(v69 + 80);
    v85 = swift_allocObject();
    v86 = v119;
    *(v85 + 16) = v118;
    *(v85 + 24) = v86;
    (*(v79 + 32))(v85 + v83, v80, v67);
    sub_24B68BA8C(v82, v85 + v84, type metadata accessor for OnboardingDetail);
    v124 = sub_24B695948();
    v125 = v87;
    v88 = swift_getWitnessTable();
    sub_24B65C908();

    v122 = v128;
    v123 = v129;
    sub_24B65C908();
    v122 = v124;
    v123 = v125;
    v89 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
    v76 = v105;
    sub_24B67712C(&v122, v65, v121, v88, v89);

    sub_24B68B07C(v116, type metadata accessor for OnboardingDetail);
  }

  v90 = swift_getWitnessTable();
  v91 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608, MEMORY[0x277CDD7F8]);
  v126 = v90;
  v127 = v91;
  v92 = v120;
  swift_getWitnessTable();
  sub_24B65C908();
  return (*(v106 + 8))(v76, v92);
}

uint64_t sub_24B679D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v118 = a4;
  v119 = a5;
  v116 = a2;
  v117 = a3;
  v109 = a1;
  v112 = a6;
  v8 = sub_24B695C98();
  v110 = *(v8 - 8);
  v111 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a4, a5, v11);
  v12 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v151 = MEMORY[0x277CDF678];
  v114 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v125 = v12;
  v126 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = MEMORY[0x277D83980];
  v16 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v125 = v10;
  v126 = MEMORY[0x277D837D0];
  v127 = OpaqueTypeMetadata2;
  v128 = v16;
  v129 = MEMORY[0x277D837E0];
  sub_24B696538();
  v125 = v12;
  v126 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v17 = sub_24B6964E8();
  v18 = swift_getWitnessTable();
  v125 = v17;
  v126 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v15);
  v21 = sub_24B64E3F8();
  v125 = v113;
  v126 = &type metadata for OnboardingModalityPickerSectionType;
  v127 = v19;
  v128 = v20;
  v129 = v21;
  sub_24B696538();
  v125 = v17;
  v126 = v18;
  v148 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v22 = sub_24B6964E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  v115 = v23;
  v24 = swift_getWitnessTable();
  v125 = v22;
  v126 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v113 = v25;
  v125 = MEMORY[0x277CE1350];
  v126 = MEMORY[0x277CE1340];
  v26 = swift_getOpaqueTypeConformance2();
  v107 = v26;
  v125 = v22;
  v126 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v125 = v22;
  v126 = v23;
  v127 = v25;
  v128 = v24;
  v129 = v26;
  v130 = v27;
  v105 = MEMORY[0x277CE0E68];
  v106 = v27;
  v104 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v146 = v119;
  v147 = MEMORY[0x277CE01B0];
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x277CDF678];
  v28 = swift_getWitnessTable();
  v29 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v142 = v28;
  v143 = v29;
  v141 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  v30 = sub_24B6959A8();
  v125 = v22;
  v126 = v115;
  v127 = v113;
  v128 = v24;
  v129 = v107;
  v130 = v106;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = swift_getWitnessTable();
  v139 = v31;
  v140 = v32;
  v89[3] = v30;
  v89[2] = swift_getWitnessTable();
  v33 = sub_24B695888();
  v99 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v89[0] = v89 - v34;
  v35 = swift_getWitnessTable();
  v125 = v33;
  v126 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v101 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v98 = v89 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  v102 = v36;
  v38 = sub_24B6959A8();
  v104 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v115 = (v89 - v39);
  v40 = sub_24B6959A8();
  v107 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v106 = v89 - v41;
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v100 = v33;
  v125 = v33;
  v126 = v35;
  v94 = v35;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  v89[1] = v42;
  v137 = v42;
  v138 = v43;
  v105 = v38;
  v103 = swift_getWitnessTable();
  v135 = v103;
  v136 = MEMORY[0x277CE0880];
  v44 = swift_getWitnessTable();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v48 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v49 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  v125 = v46;
  v126 = v47;
  v127 = v48;
  v128 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v97 = v45;
  v125 = v45;
  v126 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v125 = v40;
  v126 = v113;
  v127 = v44;
  v128 = v51;
  swift_getOpaqueTypeMetadata2();
  v52 = sub_24B6959A8();
  v53 = sub_24B6965B8();
  v125 = v40;
  v126 = v45;
  v127 = v53;
  v128 = v44;
  v129 = v50;
  v130 = MEMORY[0x277CE1320];
  v54 = swift_getOpaqueTypeMetadata2();
  v125 = v40;
  v126 = v113;
  v127 = v44;
  v128 = v51;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = MEMORY[0x277CE0880];
  v55 = swift_getWitnessTable();
  v125 = v40;
  v126 = v97;
  v127 = v53;
  v128 = v44;
  v56 = v108;
  v129 = v50;
  v130 = MEMORY[0x277CE1320];
  v57 = v89[0];
  v58 = swift_getOpaqueTypeConformance2();
  v97 = v40;
  v125 = v40;
  v126 = MEMORY[0x277CE1350];
  v127 = v52;
  v113 = v52;
  v114 = v44;
  v91 = v54;
  v128 = v54;
  v129 = v44;
  v130 = MEMORY[0x277CE1340];
  v131 = v55;
  v92 = v58;
  v93 = v55;
  v132 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v95 = *(v59 - 8);
  v96 = v59;
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v89 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v90 = v89 - v63;
  v120 = v118;
  v121 = v119;
  v122 = v116;
  v123 = v117;
  v124 = v109;
  sub_24B695E08();
  sub_24B695898();
  sub_24B695C88();
  LOBYTE(v50) = sub_24B695E08();
  sub_24B695DF8();
  sub_24B695DF8();
  if (sub_24B695DF8() != v50)
  {
    sub_24B695DF8();
  }

  v64 = v98;
  v65 = v100;
  sub_24B6961E8();
  (*(v110 + 8))(v56, v111);
  (*(v99 + 8))(v57, v65);
  v66 = [objc_opt_self() systemBackgroundColor];
  v125 = sub_24B696308();
  sub_24B695E28();
  v67 = v102;
  sub_24B6960A8();

  (*(v101 + 8))(v64, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD68, &qword_24B69A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B69A0F0;
  v69 = sub_24B695E38();
  *(inited + 32) = v69;
  v70 = sub_24B695E58();
  *(inited + 33) = v70;
  v71 = sub_24B695E78();
  *(inited + 34) = v71;
  sub_24B695E68();
  sub_24B695E68();
  if (sub_24B695E68() != v69)
  {
    sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v70)
  {
    sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v71)
  {
    sub_24B695E68();
  }

  sub_24B6959B8();
  v73 = v105;
  v72 = v106;
  v74 = v115;
  sub_24B696178();
  (*(v104 + 8))(v74, v73);
  v75 = sub_24B6965D8();
  v115 = v89;
  v76 = MEMORY[0x28223BE20](v75);
  MEMORY[0x28223BE20](v76);
  v77 = swift_checkMetadataState();
  v78 = swift_checkMetadataState();
  v79 = v92;
  v80 = v93;
  v81 = v114;
  v119 = v62;
  v82 = v97;
  v83 = MEMORY[0x277CE1350];
  sub_24B6962D8();
  (*(v107 + 8))(v72, v82);
  v125 = v82;
  v126 = v83;
  v127 = v77;
  v128 = v78;
  v129 = v81;
  v130 = MEMORY[0x277CE1340];
  v131 = v80;
  v132 = v79;
  swift_getOpaqueTypeConformance2();
  v84 = v90;
  v85 = v119;
  v86 = v96;
  sub_24B65C908();
  v87 = *(v95 + 8);
  v87(v85, v86);
  sub_24B65C908();
  return (v87)(v84, v86);
}

uint64_t sub_24B67AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v88 = a4;
  v93 = a3;
  v91 = a2;
  v92 = a1;
  v86 = a6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E330, &qword_24B69A110);
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = v67 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a4, a5, v10);
  v11 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v112 = MEMORY[0x277CDF678];
  v83 = MEMORY[0x277CDFAD8];
  v12 = swift_getWitnessTable();
  v103 = v11;
  v104 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = MEMORY[0x277D83980];
  v15 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v103 = v9;
  v104 = MEMORY[0x277D837D0];
  v105 = OpaqueTypeMetadata2;
  v106 = v15;
  v107 = MEMORY[0x277D837E0];
  sub_24B696538();
  v103 = v11;
  v104 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v16 = sub_24B6964E8();
  v17 = swift_getWitnessTable();
  v103 = v16;
  v104 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v14);
  v20 = sub_24B64E3F8();
  v103 = v82;
  v104 = &type metadata for OnboardingModalityPickerSectionType;
  v105 = v18;
  v106 = v19;
  v107 = v20;
  sub_24B696538();
  v103 = v16;
  v104 = v17;
  v109 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  v21 = sub_24B696688();
  v22 = swift_getWitnessTable();
  v76 = v21;
  v74 = v22;
  v23 = sub_24B6964E8();
  v81 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = v67 - v24;
  v25 = swift_getWitnessTable();
  v103 = v23;
  v104 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v103 = MEMORY[0x277CE1350];
  v104 = MEMORY[0x277CE1340];
  v27 = swift_getOpaqueTypeConformance2();
  v103 = v23;
  v104 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v77 = v23;
  v103 = v23;
  v104 = v90;
  v73 = v26;
  v105 = v26;
  v106 = v25;
  v82 = v25;
  v79 = v27;
  v107 = v27;
  v108 = v28;
  v75 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v78 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v87 = v67 - v30;
  v31 = v88;
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  v32 = sub_24B696938();
  v33 = v89;
  v101 = v89;
  v102 = MEMORY[0x277CE01B0];
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x277CDF678];
  v34 = swift_getWitnessTable();
  v35 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v97 = v34;
  v98 = v35;
  v96 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v72 = v32;
  v67[0] = v36;
  v37 = sub_24B695C48();
  v83 = v29;
  v67[1] = v37;
  v71 = sub_24B6959A8();
  v70 = *(v71 - 8);
  v38 = MEMORY[0x28223BE20](v71);
  v68 = v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v69 = v67 - v40;
  if (sub_24B6965C8())
  {
    v41 = sub_24B695BE8();
  }

  else
  {
    v41 = sub_24B695BD8();
  }

  MEMORY[0x28223BE20](v41);
  v67[-6] = v31;
  v67[-5] = v33;
  v42 = v91;
  v67[-4] = v92;
  v67[-3] = v42;
  v43 = v80;
  sub_24B6964D8();
  sub_24B6965D8();
  v44 = v84;
  v45 = sub_24B695B68();
  MEMORY[0x28223BE20](v45);
  v66 = v33;
  v46 = swift_checkMetadataState();
  v47 = v75;
  v65 = v75;
  v48 = v77;
  v49 = v90;
  v50 = v82;
  v51 = v79;
  sub_24B6962E8();
  (*(v85 + 8))(v44, v49);
  (*(v81 + 8))(v43, v48);
  v52 = sub_24B696628();
  MEMORY[0x28223BE20](v52);
  v53 = v89;
  v67[-6] = v88;
  v67[-5] = v53;
  v55 = v92;
  v54 = v93;
  v67[-4] = v91;
  v67[-3] = v55;
  v65 = v54;
  v103 = v48;
  v104 = v49;
  v105 = v46;
  v106 = v50;
  v107 = v51;
  v108 = v47;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v68;
  v58 = v83;
  v59 = v87;
  sub_24B696098();
  (*(v78 + 8))(v59, v58);
  v60 = swift_getWitnessTable();
  v94 = v56;
  v95 = v60;
  v61 = v71;
  swift_getWitnessTable();
  v62 = v69;
  sub_24B65C908();
  v63 = *(v70 + 8);
  v63(v57, v61);
  sub_24B65C908();
  return (v63)(v62, v61);
}

uint64_t sub_24B67B9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v52 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a4, a5, v8);
  sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v83 = MEMORY[0x277CDF678];
  v51 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v9 = MEMORY[0x277D83980];
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  sub_24B696538();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v10 = sub_24B6964E8();
  v45 = MEMORY[0x277CE1198];
  v11 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v9);
  v77 = sub_24B64E3F8();
  v37[2] = sub_24B696538();
  v73 = v10;
  v74 = v11;
  v80 = swift_getOpaqueTypeConformance2();
  v37[1] = swift_getWitnessTable();
  v12 = sub_24B6964E8();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37[0] = v37 - v13;
  v42 = sub_24B6959A8();
  v44 = *(v42 - 8);
  v14 = MEMORY[0x28223BE20](v42);
  v38 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = v37 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E338, &qword_24B69A118);
  v54 = *(v41 - 8);
  v17 = MEMORY[0x28223BE20](v41);
  v39 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = v37 - v19;
  sub_24B6965D8();
  v21 = v46;
  v20 = v47;
  v64 = v46;
  v65 = v47;
  v22 = v48;
  v66 = v48;
  v67 = v49;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v23 = v50;
  v63 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5D8, &qword_24B69A438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5E0, &qword_24B69A440);
  sub_24B68B178();
  sub_24B68B230();
  sub_24B6965E8();
  sub_24B695BE8();
  v55 = v21;
  v56 = v20;
  v57 = v22;
  v58 = v23;
  v24 = v37[0];
  sub_24B6964D8();
  type metadata accessor for OnboardingModalityPickerView(0, v21, v20, v25);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v72[0] = v78;
  v72[1] = v79;
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_24B66BE00(v72, v12, v26);
  (*(v43 + 8))(v24, v12);
  v70 = v26;
  v71 = MEMORY[0x277CDF918];
  v28 = v42;
  v29 = swift_getWitnessTable();
  v30 = v40;
  sub_24B65C908();
  v31 = v44;
  v32 = *(v44 + 8);
  v32(v27, v28);
  v33 = v39;
  v34 = v41;
  (*(v54 + 16))(v39, v53, v41);
  v73 = v33;
  (*(v31 + 16))(v27, v30, v28);
  v74 = v27;
  *&v72[0] = v34;
  *(&v72[0] + 1) = v28;
  v68 = sub_24B68B2F4();
  v69 = v29;
  sub_24B66D504(&v73, 2uLL, v72);
  v32(v30, v28);
  v35 = *(v54 + 8);
  v35(v53, v34);
  v32(v27, v28);
  return (v35)(v33, v34);
}

uint64_t sub_24B67C170@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for OnboardingModalityPickerView(0, a2, a3, a3);
  sub_24B67C264(v5, a4);
  v6 = sub_24B695E38();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5D8, &qword_24B69A438);
  v16 = a4 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_24B67C264@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24B695BE8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E6A0, &qword_24B69A5C8);
  return sub_24B68259C(v3, *(a2 + 16), *(a2 + 24), a3 + *(v6 + 44));
}

uint64_t sub_24B67C2C4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_24B695928();
  v7 = type metadata accessor for OnboardingModalityPickerView(0, a1, a2, v6);
  sub_24B67C3CC(v7, a3);
  LOBYTE(a1) = sub_24B695E38();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5E0, &qword_24B69A440);
  v17 = a3 + *(result + 36);
  *v17 = a1;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_24B67C3CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24B695BD8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E658, &qword_24B69A508);
  return sub_24B682F70(v4, *(a2 + 16), *(a2 + 24), a3 + *(v7 + 44));
}

uint64_t sub_24B67C43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v71 = a5;
  v63 = a1;
  v7 = sub_24B695938();
  v67 = *(v7 - 8);
  v68 = v7;
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a3;
  v62 = a4;
  v72 = type metadata accessor for OnboardingModalityPickerView(0, a3, a4, v9);
  v64 = *(v72 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v72);
  v60 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v55 = v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a3, a4, v13);
  v14 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v82 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v76 = v14;
  v77 = v15;
  v16 = MEMORY[0x277D7EDA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = MEMORY[0x277D83980];
  v19 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v76 = v12;
  v77 = MEMORY[0x277D837D0];
  v78 = OpaqueTypeMetadata2;
  v79 = v19;
  v80 = MEMORY[0x277D837E0];
  sub_24B696538();
  v76 = v14;
  v77 = v15;
  v54 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v20 = sub_24B6964E8();
  v57 = v20;
  v56 = swift_getWitnessTable();
  v76 = v20;
  v77 = v56;
  v21 = swift_getOpaqueTypeMetadata2();
  v52 = v21;
  v22 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v18);
  v51 = v22;
  v50 = sub_24B64E3F8();
  v76 = v11;
  v77 = &type metadata for OnboardingModalityPickerSectionType;
  v78 = v21;
  v79 = v22;
  v80 = v50;
  v53 = sub_24B696538();
  v58 = *(v53 - 8);
  v23 = MEMORY[0x28223BE20](v53);
  v48 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v49 = v47 - v25;
  v26 = v72;
  v27 = v63;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B68B38C(v76);
  v29 = v28;

  v74 = v29;
  v47[1] = swift_getKeyPath();
  v30 = v64;
  v31 = v60;
  (*(v64 + 16))(v60, v27, v26);
  v33 = v66;
  v32 = v67;
  v34 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v36 = (v65 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v61;
  v39 = v62;
  *(v37 + 16) = v61;
  *(v37 + 24) = v39;
  (*(v30 + 32))(v37 + v35, v31, v72);
  (*(v32 + 32))(v37 + v36, v33, v34);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = sub_24B68B544;
  v40[5] = v37;
  v76 = v57;
  v77 = v56;
  v46 = swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_24B696528();
  v73 = v46;
  v42 = v53;
  swift_getWitnessTable();
  v43 = v49;
  sub_24B65C908();
  v44 = *(v58 + 8);
  v44(v41, v42);
  sub_24B65C908();
  return (v44)(v43, v42);
}

uint64_t sub_24B67CB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a4;
  v30 = a1;
  v31 = a3;
  v32 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a5, a6, v10);
  sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v38 = MEMORY[0x277D837E0];
  sub_24B696538();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v11 = sub_24B6964E8();
  v12 = swift_getWitnessTable();
  v34 = v11;
  v35 = v12;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v20 = *(a2 + 8);
  LOBYTE(v34) = *a2;
  v35 = v20;
  sub_24B695928();
  v22 = v21;
  v24 = type metadata accessor for OnboardingModalityPickerView(0, a5, v28, v23);
  sub_24B67CF34(&v34, v30, v24, v17, v22);
  v34 = v11;
  v35 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24B65C908();
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_24B65C908();
  return (v25)(v19, v13);
}

uint64_t sub_24B67CF34@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = v5;
  v78 = a2;
  v67 = a1;
  v84 = a4;
  v9 = sub_24B6967C8();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B696758();
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B696778();
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A0, &unk_24B697930);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v63 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  v18 = *(a3 + 16);
  v69 = *(a3 + 24);
  v70 = v18;
  type metadata accessor for OnboardingModalityCardButton(255, v18, v69, v19);
  v20 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v108 = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v97 = v20;
  v98 = v21;
  v22 = MEMORY[0x277D7EDA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v97 = v17;
  v98 = MEMORY[0x277D837D0];
  v99 = OpaqueTypeMetadata2;
  v100 = v24;
  v101 = MEMORY[0x277D837E0];
  sub_24B696538();
  v97 = v20;
  v98 = v21;
  v73 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  v66 = sub_24B696688();
  v65 = swift_getWitnessTable();
  v25 = sub_24B6964E8();
  v76 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v64 = &v63 - v26;
  v71 = swift_getWitnessTable();
  v97 = v25;
  v98 = v71;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = *(v27 - 8);
  v74 = v27;
  v75 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v68 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v72 = &v63 - v31;
  v32 = sub_24B695698();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v17) = *v67;
  v67 = *(v67 + 1);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v36 = OnboardingModalityPickerSectionType.name(locale:)(v35, v17);
  v63 = v37;
  (*(v33 + 8))(v35, v32);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v38 = v103;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v39 = (v38 + -1.0) * v104;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v40 = v102;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v41 = (a5 - v39 - (v40 + v96)) / v38;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v42 = v105;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v43 = v42 - v95;
  sub_24B695BE8();
  v85 = v70;
  v86 = v69;
  v44 = v36;
  v45 = v63;
  v87 = v36;
  v88 = v63;
  v89 = v6;
  v90 = v43;
  v91 = v17;
  v46 = v78;
  v92 = v67;
  v93 = v78;
  v94 = v41;
  v47 = v64;
  sub_24B6964D8();
  v48 = v46;
  sub_24B696768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A8, &unk_24B69A4B0);
  v49 = swift_allocObject();
  *(v49 + 32) = 1701667182;
  *(v49 + 16) = xmmword_24B697550;
  *(v49 + 40) = 0xE400000000000000;
  *(v49 + 48) = v44;
  *(v49 + 56) = v45;
  v50 = MEMORY[0x277D837D0];
  *(v49 + 72) = MEMORY[0x277D837D0];
  strcpy((v49 + 80), "impressionType");
  *(v49 + 95) = -18;
  *(v49 + 96) = 0x666C656873;
  *(v49 + 104) = 0xE500000000000000;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x6973736572706D69;
  v51 = v50;
  *(v49 + 136) = 0xEF7865646E496E6FLL;
  v97 = v48;
  *(v49 + 144) = sub_24B696AC8();
  *(v49 + 152) = v52;
  *(v49 + 168) = v51;
  *(v49 + 176) = 0x657079546469;
  *(v49 + 216) = v51;
  *(v49 + 184) = 0xE600000000000000;
  *(v49 + 192) = 0x64695F737469;
  *(v49 + 200) = 0xE600000000000000;
  sub_24B68B66C(v49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6B0, &qword_24B697940);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24B696748();
  v53 = MEMORY[0x277D84F90];
  sub_24B68B66C(MEMORY[0x277D84F90]);
  sub_24B68B66C(v53);
  v54 = v79;
  sub_24B696788();
  v55 = sub_24B696798();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = v81;
  sub_24B6967B8();
  v57 = v68;
  v58 = v71;
  sub_24B696038();
  (*(v82 + 8))(v56, v83);
  sub_24B64BB2C(v54, &qword_27F02D6A0, &unk_24B697930);
  (*(v76 + 8))(v47, v25);
  v97 = v25;
  v98 = v58;
  swift_getOpaqueTypeConformance2();
  v59 = v72;
  v60 = v74;
  sub_24B65C908();
  v61 = *(v75 + 8);
  v61(v57, v60);
  sub_24B65C908();
  return (v61)(v59, v60);
}

uint64_t sub_24B67DA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a1;
  v20[2] = a4;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a2, a3, v6);
  sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v27 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v7 = MEMORY[0x277D83980];
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  sub_24B696538();
  v20[4] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v7);
  v25 = sub_24B64E3F8();
  sub_24B696538();
  v20[3] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v8 = sub_24B6964E8();
  v9 = swift_getWitnessTable();
  v21 = v8;
  v22 = v9;
  v10 = swift_getOpaqueTypeMetadata2();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  v17 = swift_checkMetadataState();
  sub_24B696068();
  v21 = v17;
  v22 = v9;
  swift_getOpaqueTypeConformance2();
  sub_24B65C908();
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_24B65C908();
  return (v18)(v16, v10);
}

uint64_t sub_24B67DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v45 = a3;
  v46 = a2;
  v51 = a6;
  v43 = a4;
  v52 = sub_24B6959A8();
  v7 = sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  v50 = v7;
  v8 = sub_24B6959A8();
  v47 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for OnboardingArtwork(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B696938();
  v48 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v49 = &v42 - v24;
  sub_24B64A3E0(a1, v15, &qword_27F02D670, &qword_24B697840);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24B64BB2C(v15, &qword_27F02D670, &qword_24B697840);
    (*(v47 + 56))(v23, 1, 1, v8);
    v71 = v53;
    v72 = MEMORY[0x277CE01B0];
    WitnessTable = swift_getWitnessTable();
    v70 = MEMORY[0x277CDF678];
    v25 = swift_getWitnessTable();
    v26 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
    v67 = v25;
    v68 = v26;
    swift_getWitnessTable();
  }

  else
  {
    sub_24B68BA8C(v15, v19, type metadata accessor for OnboardingArtwork);
    v27 = *(type metadata accessor for OnboardingDetail(0) + 20);
    v28 = v53;
    v30 = type metadata accessor for OnboardingModalityPickerView(0, v43, v53, v29);
    sub_24B67E5E0(v19, a1 + v27, v45, v30, v11);
    sub_24B68B07C(v19, type metadata accessor for OnboardingArtwork);
    v58 = v28;
    v59 = MEMORY[0x277CE01B0];
    v56 = swift_getWitnessTable();
    v57 = MEMORY[0x277CDF678];
    v31 = swift_getWitnessTable();
    v32 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
    v54 = v31;
    v55 = v32;
    swift_getWitnessTable();
    v33 = v44;
    sub_24B65C908();
    v34 = v47;
    v35 = *(v47 + 8);
    v35(v11, v8);
    sub_24B65C908();
    v35(v33, v8);
    (*(v34 + 32))(v23, v11, v8);
    (*(v34 + 56))(v23, 0, 1, v8);
  }

  v36 = v48;
  v37 = v49;
  (*(v48 + 16))(v49, v23, v20);
  v38 = *(v36 + 8);
  v38(v23, v20);
  v65 = v53;
  v66 = MEMORY[0x277CE01B0];
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x277CDF678];
  v39 = swift_getWitnessTable();
  v40 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v61 = v39;
  v62 = v40;
  v60 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B65C908();
  return (v38)(v37, v20);
}

uint64_t sub_24B67E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v10 = *(a4 + 16);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B6959A8();
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v37 = &v34 - v14;
  v40 = sub_24B6959A8();
  v45 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  v44 = sub_24B6959A8();
  v46 = *(v44 - 8);
  v16 = MEMORY[0x28223BE20](v44);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v34 - v18;
  v19 = *(a4 + 24);
  v36 = sub_24B689784(v5, a3, v10, v19);
  v35 = v20;
  v21 = sub_24B661360(a4);
  v21(a1, a2);

  v34 = v5;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v22 = v37;
  sub_24B6960B8();
  (*(v41 + 8))(v12, v10);
  sub_24B696648();
  v55 = v19;
  v56 = MEMORY[0x277CE01B0];
  v23 = v13;
  WitnessTable = swift_getWitnessTable();
  v25 = v38;
  sub_24B696238();
  (*(v42 + 8))(v22, v23);
  sub_24B696638();
  v48 = v10;
  v49 = v19;
  v50 = v34;
  v53 = WitnessTable;
  v54 = MEMORY[0x277CDF678];
  v26 = v40;
  v27 = swift_getWitnessTable();
  sub_24B68B0E8();
  v28 = v39;
  sub_24B696288();
  (*(v45 + 8))(v25, v26);
  v29 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v51 = v27;
  v52 = v29;
  v30 = v44;
  swift_getWitnessTable();
  v31 = v43;
  sub_24B65C908();
  v32 = *(v46 + 8);
  v32(v28, v30);
  sub_24B65C908();
  return (v32)(v31, v30);
}

uint64_t sub_24B67EB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v37 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a4, a5, v8);
  sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x277CDF678];
  v33 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v9 = MEMORY[0x277D83980];
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  sub_24B696538();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v9);
  sub_24B64E3F8();
  sub_24B696538();
  v66 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = swift_getOpaqueTypeConformance2();
  v10 = swift_getOpaqueTypeConformance2();
  v29[2] = MEMORY[0x277CE0E68];
  v30 = v10;
  v29[1] = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v58 = v40;
  v59 = MEMORY[0x277CE01B0];
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CDF678];
  v54 = swift_getWitnessTable();
  v55 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v53 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v64 = v31;
  v65 = v30;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v11 = sub_24B6959A8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE0880];
  v12 = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  v13 = swift_getOpaqueTypeConformance2();
  v60 = v11;
  v61 = v38;
  v62 = v12;
  v63 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = sub_24B6959A8();
  v33 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v29 - v21;
  v41 = v39;
  v42 = v40;
  v43 = v34;
  v44 = v35;
  sub_24B695BD8();
  v23 = swift_checkMetadataState();
  v39 = v13;
  v40 = v12;
  v24 = v38;
  sub_24B696118();
  v25 = sub_24B695E48();
  sub_24B695E68();
  sub_24B695E68();
  if (sub_24B695E68() != v25)
  {
    sub_24B695E68();
  }

  sub_24B6959B8();
  v60 = v23;
  v61 = v24;
  v62 = v40;
  v63 = v39;
  v26 = swift_getOpaqueTypeConformance2();
  sub_24B696178();
  (*(OpaqueTypeMetadata2 + 8))(v16, v14);
  v45 = v26;
  v46 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  sub_24B65C908();
  v27 = *(v33 + 8);
  v27(v20, v17);
  sub_24B65C908();
  return (v27)(v22, v17);
}

uint64_t sub_24B67F6B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v20 = a3;
  v21 = sub_24B695BC8();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E380, &qword_24B69A150);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v12 = type metadata accessor for OnboardingModalityPickerView(0, a1, a2, v11);
  sub_24B67F930(v12, v10);
  sub_24B695BB8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v15 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v16 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_24B6961B8();
  (*(v19 + 8))(v6, v21);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24B67F930@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC80, &qword_24B69A160);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02E3B0, &unk_24B69A170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  *&v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E3A0, &qword_24B69A168);
  MEMORY[0x28223BE20](v25);
  v26 = v24 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E388, &qword_24B69A158);
  MEMORY[0x28223BE20](v28);
  v13 = v24 - v12;
  *v10 = sub_24B695BD8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E438, &qword_24B69A2A8);
  sub_24B685FD4(v3, *(a1 + 16), *(a1 + 24), &v10[*(v14 + 44)]);
  *&v27 = a1;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696648();
  sub_24B6959F8();
  v15 = v26;
  sub_24B64A4AC(v10, v26, qword_27F02E3B0, &unk_24B69A170);
  v16 = (v15 + *(v25 + 36));
  v17 = v36;
  v16[4] = v35;
  v16[5] = v17;
  v16[6] = v37;
  v18 = v32;
  *v16 = v31;
  v16[1] = v18;
  v19 = v34;
  v16[2] = v33;
  v16[3] = v19;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v27 = v29;
  v25 = v30;
  LOBYTE(a1) = sub_24B695E28();
  sub_24B64A4AC(v15, v13, &qword_27F02E3A0, &qword_24B69A168);
  v20 = &v13[*(v28 + 36)];
  *v20 = a1;
  *(v20 + 24) = v25;
  *(v20 + 8) = v27;
  v20[40] = 0;
  v21 = *MEMORY[0x277CDFA10];
  v22 = sub_24B695978();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_24B68BDB0(&qword_27F02DD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B6967E8();
  if (result)
  {
    sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
    sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
    sub_24B696168();
    sub_24B64BB2C(v7, &qword_27F02DC80, &qword_24B69A160);
    return sub_24B64BB2C(v13, &qword_27F02E388, &qword_24B69A158);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B67FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a3;
  v83 = a2;
  v87 = a1;
  v88 = a6;
  v78 = sub_24B6965B8();
  v86 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v85 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnboardingDetail(0);
  v81 = *(v9 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a4;
  v90 = a5;
  v77 = type metadata accessor for OnboardingModalityPickerView(0, a4, a5, v11);
  v76 = *(v77 - 8);
  v79 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = v68 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton(255, a4, a5, v14);
  v15 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v113 = MEMORY[0x277CDF678];
  v74 = MEMORY[0x277CDFAD8];
  v16 = swift_getWitnessTable();
  v104 = v15;
  v105 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = MEMORY[0x277D83980];
  v19 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130, MEMORY[0x277D83980]);
  v104 = v13;
  v105 = MEMORY[0x277D837D0];
  v106 = OpaqueTypeMetadata2;
  v107 = v19;
  v108 = MEMORY[0x277D837E0];
  sub_24B696538();
  v104 = v15;
  v105 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v20 = sub_24B6964E8();
  v21 = swift_getWitnessTable();
  v104 = v20;
  v105 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120, v18);
  v24 = sub_24B64E3F8();
  v104 = v72;
  v105 = &type metadata for OnboardingModalityPickerSectionType;
  v106 = v22;
  v107 = v23;
  v108 = v24;
  sub_24B696538();
  v104 = v20;
  v105 = v21;
  v110 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v25 = sub_24B6964E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  v73 = v26;
  v27 = swift_getWitnessTable();
  v104 = v25;
  v105 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v72 = v28;
  v104 = MEMORY[0x277CE1350];
  v105 = MEMORY[0x277CE1340];
  v29 = swift_getOpaqueTypeConformance2();
  v71 = v29;
  v104 = v25;
  v105 = v27;
  v70 = swift_getOpaqueTypeConformance2();
  v104 = v25;
  v105 = v26;
  v106 = v28;
  v107 = v27;
  v108 = v29;
  v109 = v70;
  v69 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v102 = v90;
  v103 = MEMORY[0x277CE01B0];
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x277CDF678];
  v30 = swift_getWitnessTable();
  v31 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138, MEMORY[0x277CDFC88]);
  v98 = v30;
  v99 = v31;
  v97 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v104 = v25;
  v105 = v73;
  v106 = v72;
  v107 = v27;
  v108 = v71;
  v109 = v70;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v95 = v32;
  v96 = v33;
  swift_getWitnessTable();
  v34 = sub_24B695888();
  v35 = swift_getWitnessTable();
  v104 = v34;
  v105 = v35;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v36 = sub_24B6959A8();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v72 = v37;
  v104 = v34;
  v105 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140, MEMORY[0x277CE0728]);
  v93 = v38;
  v94 = v39;
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CE0880];
  v40 = v36;
  v68[1] = v36;
  v41 = swift_getWitnessTable();
  v71 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v44 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v45 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160, MEMORY[0x277D84470]);
  v104 = v42;
  v105 = v43;
  v106 = v44;
  v107 = v45;
  v70 = swift_getOpaqueTypeConformance2();
  v104 = v40;
  v105 = v37;
  v46 = v78;
  v106 = v78;
  v107 = v41;
  v108 = v70;
  v109 = MEMORY[0x277CE1320];
  v73 = MEMORY[0x277D09830];
  v47 = swift_getOpaqueTypeMetadata2();
  v74 = *(v47 - 8);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v69 = v68 - v51;
  v52 = v76;
  v53 = v75;
  v54 = v77;
  (*(v76 + 16))(v75, v83, v77);
  v55 = v80;
  sub_24B68BA24(v84, v80, type metadata accessor for OnboardingDetail);
  v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v57 = (v79 + *(v81 + 80) + v56) & ~*(v81 + 80);
  v58 = swift_allocObject();
  v59 = v90;
  *(v58 + 16) = v89;
  *(v58 + 24) = v59;
  (*(v52 + 32))(v58 + v56, v53, v54);
  sub_24B68BA8C(v55, v58 + v57, type metadata accessor for OnboardingDetail);
  v60 = swift_checkMetadataState();
  v61 = v85;
  sub_24B696598();
  v62 = v72;
  v63 = v71;
  v64 = v70;
  sub_24B696058();

  (*(v86 + 8))(v61, v46);
  v104 = v60;
  v105 = v62;
  v106 = v46;
  v107 = v63;
  v108 = v64;
  v109 = MEMORY[0x277CE1320];
  swift_getOpaqueTypeConformance2();
  v65 = v69;
  sub_24B65C908();
  v66 = *(v74 + 8);
  v66(v50, v47);
  sub_24B65C908();
  return (v66)(v65, v47);
}