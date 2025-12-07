uint64_t sub_21DFDB7C0(uint64_t a1)
{
  v1 = sub_21E1401C4();
  result = sub_21E13FFF4();
  qword_280F6FD70 = v1;
  *algn_280F6FD78 = result;
  return result;
}

uint64_t sub_21DFDB814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = type metadata accessor for SearchButtonStyle(0);
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v3;
  v78 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96C8, &qword_21E14B690);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D0, &qword_21E14B698);
  MEMORY[0x28223BE20](v63);
  v15 = &v62 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D8, &qword_21E14B6A0);
  MEMORY[0x28223BE20](v68);
  v65 = &v62 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E0, &qword_21E14B6A8);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E8, &qword_21E14B6B0);
  MEMORY[0x28223BE20](v67);
  v73 = &v62 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F0, &qword_21E14B6B8);
  MEMORY[0x28223BE20](v66);
  v71 = &v62 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F8, &qword_21E14B6C0);
  MEMORY[0x28223BE20](v74);
  v75 = &v62 - v20;
  v81 = a1;
  sub_21E1405F4();
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9700, &unk_21E14B6C8) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288, &qword_21E14AC50) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_21E141654();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_21E1409E4();
  v25 = sub_21E1409D4();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = sub_21E140A24();
  sub_21DF23614(v10, &unk_27CEAD410, &qword_21E146960);
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9708, &qword_21E14B738) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  if (qword_280F6AA58 != -1)
  {
    swift_once();
  }

  sub_21E13FCE4();
  v29 = &v13[*(v11 + 36)];
  v30 = v91;
  v31 = v92;
  *(v29 + 4) = v90;
  *(v29 + 5) = v30;
  *(v29 + 6) = v31;
  v32 = v87;
  *v29 = v86;
  *(v29 + 1) = v32;
  v33 = v89;
  *(v29 + 2) = v88;
  *(v29 + 3) = v33;
  v34 = v64;
  v35 = *(v64 + *(v80 + 20));
  swift_getKeyPath();
  v82 = v35;
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 16))(v7, v35 + v36, v4);
  LOBYTE(v36) = sub_21E13D7F4();
  (*(v5 + 8))(v7, v4);
  if (v36)
  {
    sub_21E141484();
    v37 = sub_21E141514();
  }

  else
  {
    v37 = sub_21E1414A4();
  }

  sub_21DF3DE9C(v13, v15, &qword_27CEA96C8, &qword_21E14B690);
  v38 = &v15[*(v63 + 9)];
  *v38 = v37;
  v38[1] = 0x4008000000000000;
  v38[2] = 0;
  v38[3] = 0;
  if (sub_21E140604())
  {
    v39 = 0.7;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v65;
  sub_21DF3DE9C(v15, v65, &qword_27CEA96D0, &qword_21E14B698);
  v41 = v68;
  *(v40 + *(v68 + 36)) = v39;
  v42 = sub_21E141C84();
  v63 = &v62;
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9710, &qword_21E14B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9718, &unk_21E14B770);
  v43 = sub_21DFDCFF0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9720, &qword_21E14B780);
  v45 = sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720, &qword_21E14B780, MEMORY[0x277CDF478]);
  v82 = v41;
  v83 = v44;
  v84 = v43;
  v85 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21DFDD334();
  v46 = v69;
  sub_21E141354();
  sub_21DF23614(v40, &qword_27CEA96D8, &qword_21E14B6A0);
  if (*(v34 + *(v80 + 24)) == 1)
  {
    v47 = sub_21E1404A4();
  }

  else
  {
    v47 = sub_21E1404B4();
  }

  v48 = v47;
  v49 = v73;
  (*(v70 + 32))(v73, v46, v72);
  *(v49 + *(v67 + 36)) = v48;
  v50 = v71;
  v51 = &v71[*(v66 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730, &qword_21E14B790) + 28);
  v53 = *MEMORY[0x277CDF3C0];
  v54 = sub_21E13F444();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  sub_21DF3DE9C(v49, v50, &qword_27CEA96E8, &qword_21E14B6B0);
  v55 = v50;
  v56 = v75;
  sub_21DF3DE9C(v55, v75, &qword_27CEA96F0, &qword_21E14B6B8);
  v57 = v56 + *(v74 + 36);
  *v57 = 0xC024000000000000;
  *(v57 + 8) = 0;
  LOBYTE(v82) = sub_21E140604() & 1;
  v58 = v78;
  sub_21DFDD82C(v34, v78, type metadata accessor for SearchButtonStyle);
  v59 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v60 = swift_allocObject();
  sub_21DFDD9BC(v58, v60 + v59, type metadata accessor for SearchButtonStyle);
  sub_21DFDD498();
  sub_21E141324();

  return sub_21DF107B8(v56);
}

uint64_t sub_21DFDC3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v63 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9720, &qword_21E14B780);
  MEMORY[0x28223BE20](v61);
  v60 = &v48 - v6;
  v7 = sub_21E13F444();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_21E141BB4();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = sub_21E141C64();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13D834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21E1419A4();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v58 = &v48 - v25;
  v53 = a3(0, v24);
  v26 = *(v53 + 20);
  v59 = a2;
  v27 = *(a2 + v26);
  swift_getKeyPath();
  v64 = v27;
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v18 + 16))(v20, v27 + v28, v17);
  LOBYTE(v28) = sub_21E13D7F4();
  (*(v18 + 8))(v20, v17);
  if (v28)
  {
    sub_21E141B84();
    sub_21E141BE4();
    (*(v9 + 8))(v13, v57);
    sub_21E141984();
    (*(v55 + 8))(v16, v56);
    sub_21E141484();
    sub_21E141514();

    v29 = v58;
    sub_21E141994();

    v30 = v52;
    v31 = v54;
    (*(v52 + 8))(v22, v54);
    v32 = v59;
  }

  else
  {
    v33 = v48;
    sub_21E141B94();
    v34 = v49;
    v32 = v59;
    sub_21E021DE8(v49);
    sub_21E141BA4();
    (*(v50 + 8))(v34, v51);
    v35 = *(v9 + 8);
    v36 = v57;
    v35(v33, v57);
    sub_21E141BE4();
    v35(v13, v36);
    v29 = v58;
    sub_21E141984();
    (*(v55 + 8))(v16, v56);
    v31 = v54;
    v30 = v52;
  }

  sub_21E141954();
  v37 = *MEMORY[0x277CE0128];
  v38 = sub_21E140144();
  v39 = v60;
  (*(*(v38 - 8) + 104))(v60, v37, v38);
  v40 = *(v32 + *(v53 + 28));
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v41 = v61;
  v42 = (v39 + *(v61 + 36));
  *v42 = v40;
  v42[1] = v40;
  v43 = (v39 + *(v41 + 40));
  *v43 = v44;
  v43[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D8, &qword_21E14B6A0);
  sub_21DFDCFF0();
  sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720, &qword_21E14B780, MEMORY[0x277CDF478]);
  sub_21E140E54();
  sub_21DF23614(v39, &qword_27CEA9720, &qword_21E14B780);
  v46 = *(v30 + 8);
  v46(v22, v31);
  return (v46)(v29, v31);
}

uint64_t sub_21DFDCAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9718, &unk_21E14B770) + 36);
  sub_21E141BD4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9728, &qword_21E14B788);
  v6 = *(v5 + 52);
  v7 = *MEMORY[0x277CE0128];
  v8 = sub_21E140144();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  return sub_21DF236C0(a1, a2, &qword_27CEA96D8, &qword_21E14B6A0);
}

uint64_t sub_21DFDCB98(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *(a3 + *(a4(0) + 20));
  v10 = *a5;
  result = swift_beginAccess();
  if (v8 == *(v9 + v10))
  {
    *(v9 + v10) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFDCCD8(uint64_t a1)
{
  v1 = sub_21E1401C4();
  result = sub_21E13FFF4();
  qword_280F6FD38 = v1;
  unk_280F6FD40 = result;
  return result;
}

uint64_t sub_21DFDCD10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  v5 = sub_21E13D834();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21DFDCE08(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E1119A8(v5);
}

uint64_t sub_21DFDCEF8(uint64_t a1, __n128 a2)
{
  v3 = sub_21E141654();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21E13FD64();
}

unint64_t sub_21DFDCFF0()
{
  result = qword_280F68EB8;
  if (!qword_280F68EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D8, &qword_21E14B6A0);
    sub_21DFDD07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EB8);
  }

  return result;
}

unint64_t sub_21DFDD07C()
{
  result = qword_280F68ED0;
  if (!qword_280F68ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D0, &qword_21E14B698);
    sub_21DFDD108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68ED0);
  }

  return result;
}

unint64_t sub_21DFDD108()
{
  result = qword_280F68EF8;
  if (!qword_280F68EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96C8, &qword_21E14B690);
    sub_21DFDD194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EF8);
  }

  return result;
}

unint64_t sub_21DFDD194()
{
  result = qword_280F68F38;
  if (!qword_280F68F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9708, &qword_21E14B738);
    sub_21DFDD24C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F38);
  }

  return result;
}

unint64_t sub_21DFDD24C()
{
  result = qword_280F68FB8;
  if (!qword_280F68FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9700, &unk_21E14B6C8);
    sub_21DFDDE20(&qword_280F68E08, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288, &qword_21E14AC50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FB8);
  }

  return result;
}

unint64_t sub_21DFDD334()
{
  result = qword_280F68EA8;
  if (!qword_280F68EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9718, &unk_21E14B770);
    sub_21DFDCFF0();
    sub_21DF23E5C(&qword_280F68DA8, &qword_27CEA9728, &qword_21E14B788, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EA8);
  }

  return result;
}

unint64_t sub_21DFDD498()
{
  result = qword_280F68EE0;
  if (!qword_280F68EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96F8, &qword_21E14B6C0);
    sub_21DFDD550();
    sub_21DF23E5C(&qword_280F68E50, &qword_27CEA9738, &qword_21E14B7D8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68EE0);
  }

  return result;
}

unint64_t sub_21DFDD550()
{
  result = qword_280F68F18;
  if (!qword_280F68F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96F0, &qword_21E14B6B8);
    sub_21DFDD608();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F18);
  }

  return result;
}

unint64_t sub_21DFDD608()
{
  result = qword_280F68F80;
  if (!qword_280F68F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96E8, &qword_21E14B6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96D8, &qword_21E14B6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9710, &qword_21E14B768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9718, &unk_21E14B770);
    sub_21DFDCFF0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9720, &qword_21E14B780);
    sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720, &qword_21E14B780, MEMORY[0x277CDF478]);
    swift_getOpaqueTypeConformance2();
    sub_21DFDD334();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0, &qword_21E14B7D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F80);
  }

  return result;
}

uint64_t sub_21DFDD82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_10(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DFDD9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21DFDDB38(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    sub_21E13D834();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFDDBF0()
{
  result = qword_27CEA9798;
  if (!qword_27CEA9798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9768, &qword_21E14B8A0);
    sub_21DFDDC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9798);
  }

  return result;
}

unint64_t sub_21DFDDC7C()
{
  result = qword_27CEA97A0;
  if (!qword_27CEA97A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9760, &qword_21E14B898);
    sub_21DFDDD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97A0);
  }

  return result;
}

unint64_t sub_21DFDDD08()
{
  result = qword_27CEA97A8;
  if (!qword_27CEA97A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9758, &qword_21E14B890);
    sub_21DFDDD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97A8);
  }

  return result;
}

unint64_t sub_21DFDDD94()
{
  result = qword_27CEA97B0;
  if (!qword_27CEA97B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9750, &qword_21E14B888);
    sub_21DFDD194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97B0);
  }

  return result;
}

uint64_t sub_21DFDDE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DFDDE68()
{
  result = qword_27CEA97B8;
  if (!qword_27CEA97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9790, &qword_21E14B8C8);
    sub_21DFDDF20();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97B8);
  }

  return result;
}

unint64_t sub_21DFDDF20()
{
  result = qword_27CEA97C0;
  if (!qword_27CEA97C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97C8, &unk_21E14B8D0);
    sub_21DFDDBF0();
    sub_21DF23E5C(&qword_280F68DA8, &qword_27CEA9728, &qword_21E14B788, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97C0);
  }

  return result;
}

unint64_t sub_21DFDDFD8()
{
  result = qword_27CEA97D8;
  if (!qword_27CEA97D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97D0, &qword_21E14B8E0);
    sub_21DFDE090();
    sub_21DF23E5C(&qword_27CEA9800, &qword_27CEA9808, &unk_21E14B920, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97D8);
  }

  return result;
}

unint64_t sub_21DFDE090()
{
  result = qword_27CEA97E0;
  if (!qword_27CEA97E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9780, &qword_21E14B8B8);
    sub_21DFDE148();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730, &qword_21E14B790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97E0);
  }

  return result;
}

unint64_t sub_21DFDE148()
{
  result = qword_27CEA97E8;
  if (!qword_27CEA97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9778, &qword_21E14B8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9768, &qword_21E14B8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9788, &qword_21E14B8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9790, &qword_21E14B8C8);
    sub_21DFDDBF0();
    sub_21E141A34();
    sub_21DFDDE20(&qword_27CEA6F30, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    swift_getOpaqueTypeConformance2();
    sub_21DFDDE68();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA97E8);
  }

  return result;
}

double static CanvasUtility.scale(_:to:from:)(double result, double a2, double a3, double a4, double a5, double a6)
{
  if (a6 > 0.0 && a4 > 0.0)
  {
    return (result + -0.5) * (a5 / a6 / (a3 / a4)) + 0.5;
  }

  return result;
}

uint64_t ResultFooterView.init<>(_:bundleIdentifier:action:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9468, &unk_21E14ADF0);
  v15 = (a9 + v14[9]);
  *v15 = a5;
  v15[1] = a6;
  v16 = (a9 + v14[10]);
  *v16 = a7;
  v16[1] = a8;
  sub_21DF23B80();

  if (!sub_21E1426B4())
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v18 = sub_21E140C64();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v26 = a9 + v14[11];
  *v26 = v18;
  *(v26 + 1) = v20;
  v26[16] = v22 & 1;
  *(v26 + 3) = v24;
  return result;
}

uint64_t sub_21DFDE4E4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ResultFooterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_21E13FC44();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810, &unk_21E14B9A0);
  v47 = *(a1 + 16);
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v4 = sub_21E13FB54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  v45 = *(a1 + 24);
  v6 = v45;
  v7 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v68 = v6;
  v69 = v7;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  v64 = v4;
  v65 = v5;
  v66 = WitnessTable;
  v67 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818, &qword_21E14B9B8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48, &qword_21E14A040);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  v10 = sub_21E1417C4();
  v11 = swift_getWitnessTable();
  v64 = v10;
  v65 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820, &qword_21E14B9C0);
  sub_21E13FB54();
  v64 = v10;
  v65 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277CDF918];
  v62 = OpaqueTypeConformance2;
  v63 = MEMORY[0x277CDF918];
  v60 = swift_getWitnessTable();
  v61 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820, &qword_21E14B9C0, MEMORY[0x277CE0470]);
  v58 = v14;
  v59 = v15;
  v42 = swift_getWitnessTable();
  v16 = sub_21E141794();
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = sub_21E13FB54();
  v44 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v41 = &v37 - v20;
  v21 = swift_getWitnessTable();
  v22 = sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v56 = v21;
  v57 = v22;
  v23 = swift_getWitnessTable();
  v38 = v23;
  v37 = sub_21DFE0D9C(&qword_27CEA7000, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v64 = v19;
  v65 = v52;
  v66 = v23;
  v67 = v37;
  v39 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v37 - v28;
  v53 = v47;
  v54 = v45;
  v55 = v48;

  sub_21E141764();
  v30 = v41;
  sub_21E141164();
  (*(v43 + 8))(v18, v16);
  v31 = v49;
  sub_21E13FC34();
  v32 = v52;
  v33 = v38;
  v34 = v37;
  sub_21E140DC4();
  (*(v50 + 8))(v31, v32);
  (*(v44 + 8))(v30, v19);
  v64 = v19;
  v65 = v32;
  v66 = v33;
  v67 = v34;
  swift_getOpaqueTypeConformance2();
  sub_21DFE2A0C();
  v35 = *(v40 + 8);
  v35(v26, OpaqueTypeMetadata2);
  sub_21DFE2A0C();
  return (v35)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_21DFDEF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v58 = a4;
  v5 = sub_21E140034();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810, &unk_21E14B9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v7 = sub_21E13FB54();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  v9 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v72 = a3;
  v73 = v9;
  v55 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  v68 = v7;
  v69 = v8;
  v70 = WitnessTable;
  v71 = v11;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818, &qword_21E14B9B8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48, &qword_21E14A040);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  v45 = sub_21E141DC4();
  v44 = swift_getWitnessTable();
  v12 = sub_21E1417C4();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = swift_getWitnessTable();
  v68 = v12;
  v69 = v15;
  v42 = MEMORY[0x277CE0C98];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v39 - v17;
  v19 = sub_21E13FB54();
  v47 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = sub_21E13FB54();
  v49 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v40 = &v39 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820, &qword_21E14B9C0);
  v24 = sub_21E13FB54();
  v50 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v41 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v43 = &v39 - v27;
  v59 = v52;
  v60 = v51;
  v61 = v53;
  sub_21E140004();
  sub_21E1417B4();
  v28 = v54;
  sub_21E0130B8(v54);
  sub_21E140E84();
  (*(v56 + 8))(v28, v57);
  (*(v48 + 8))(v14, v12);
  v68 = v12;
  v69 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21E1412E4();
  (*(v46 + 8))(v18, OpaqueTypeMetadata2);
  sub_21E140934();
  v30 = MEMORY[0x277CDF918];
  v66 = OpaqueTypeConformance2;
  v67 = MEMORY[0x277CDF918];
  v31 = swift_getWitnessTable();
  v32 = v40;
  sub_21E1412F4();
  (*(v47 + 8))(v21, v19);
  v64 = v31;
  v65 = v30;
  v33 = swift_getWitnessTable();
  sub_21DFE0D48();
  v34 = v41;
  sub_21E140E64();
  (*(v49 + 8))(v32, v22);
  v35 = sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820, &qword_21E14B9C0, MEMORY[0x277CE0470]);
  v62 = v33;
  v63 = v35;
  swift_getWitnessTable();
  v36 = v43;
  sub_21DFE2A0C();
  v37 = *(v50 + 8);
  v37(v34, v24);
  sub_21DFE2A0C();
  return (v37)(v36, v24);
}

uint64_t sub_21DFDF858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a4;
  v122 = sub_21E13F444();
  v101 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  MEMORY[0x28223BE20](v10);
  v126 = &v94 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v12 = sub_21E13FB54();
  v102 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v125 = &v94 - v13;
  v14 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v147 = a3;
  v148 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  v103 = v12;
  *&v128 = v12;
  *(&v128 + 1) = v10;
  v100 = WitnessTable;
  v129 = WitnessTable;
  v97 = v16;
  v130 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v96 = &v94 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818, &qword_21E14B9B8);
  v99 = OpaqueTypeMetadata2;
  v19 = sub_21E13FB54();
  v107 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v104 = &v94 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48, &qword_21E14A040);
  v111 = v19;
  v21 = sub_21E13FB54();
  v112 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v106 = &v94 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  v113 = v21;
  v23 = sub_21E13FB54();
  v114 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v109 = &v94 - v24;
  sub_21E1407F4();
  v115 = v23;
  v95 = sub_21E13FB54();
  v117 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v108 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v110 = &v94 - v27;
  MEMORY[0x28223BE20](v28);
  v118 = &v94 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98B8, &qword_21E14E190);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v94 - v32;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9810, &unk_21E14B9A0);
  MEMORY[0x28223BE20](v105);
  v116 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - v36;
  v123 = a2;
  v124 = a3;
  v39 = *(type metadata accessor for ResultFooterView(0, a2, a3, v38) + 36);
  v127 = a1;
  v40 = (a1 + v39);
  v41 = v40[1];
  if (v41)
  {
    v42 = *v40;
    KeyPath = swift_getKeyPath();
    v94 = v10;
    v44 = v37;
    v45 = KeyPath;
    v136[0] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0, &unk_21E14BAA0);
    sub_21E141704();
    v46 = v128;
    *&v128 = v42;
    *(&v128 + 1) = v41;
    v129 = 0x4034000000000000;
    v130 = v45;
    v131 = 0;
    v132 = v46;
    sub_21DFE0F24();
    sub_21E141164();
    v47 = v130;
    LOBYTE(v45) = v131;
    v48 = v132;

    v49 = v45;
    v37 = v44;
    v10 = v94;
    sub_21DFE0F78(v47, v49);

    sub_21DFE0F84(v33, v37);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  (*(v31 + 56))(v37, v50, 1, v30);
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  v51 = v125;
  sub_21E141204();

  v52 = *MEMORY[0x277CDFA10];
  v53 = sub_21E13F9D4();
  v54 = v126;
  (*(*(v53 - 8) + 104))(v126, v52, v53);
  sub_21DFE0D9C(&unk_280F68FD8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21E142074();
  if (result)
  {
    v56 = v96;
    v57 = v103;
    v58 = v100;
    v59 = v97;
    sub_21E140F74();
    sub_21DF23614(v54, &qword_27CEA6DF8, &qword_21E14B9B0);
    (*(v102 + 8))(v51, v57);
    *&v128 = v57;
    *(&v128 + 1) = v10;
    v129 = v58;
    v130 = v59;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v104;
    v62 = v99;
    sub_21E141034();
    (*(v98 + 8))(v56, v62);
    v126 = v37;
    v63 = v119;
    sub_21DFDE4E4(v119);
    v64 = v101;
    v65 = v120;
    v66 = v122;
    (*(v101 + 104))(v120, *MEMORY[0x277CDF3C0], v122);
    v67 = sub_21E13F434();
    v68 = *(v64 + 8);
    v68(v65, v66);
    v68(v63, v66);
    v69 = objc_opt_self();
    v70 = &selRef_systemLightGrayColor;
    if ((v67 & 1) == 0)
    {
      v70 = &selRef_systemDarkGrayColor;
    }

    v71 = [v69 *v70];
    sub_21E141414();
    v72 = MEMORY[0x277CE0868];
    v73 = sub_21DF23E5C(&qword_27CEA98C0, &qword_27CEA9818, &qword_21E14B9B8, MEMORY[0x277CE0868]);
    v145 = OpaqueTypeConformance2;
    v146 = v73;
    v74 = v111;
    v75 = swift_getWitnessTable();
    v76 = v106;
    sub_21E140F84();

    (*(v107 + 8))(v61, v74);
    v77 = sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, v72);
    v143 = v75;
    v144 = v77;
    v78 = v113;
    v79 = swift_getWitnessTable();
    v80 = v109;
    sub_21E1413B4();
    (*(v112 + 8))(v76, v78);
    v81 = sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0, &qword_21E1489D0, v72);
    v141 = v79;
    v142 = v81;
    v82 = v115;
    v83 = swift_getWitnessTable();
    v84 = v110;
    sub_21E141164();
    (*(v114 + 8))(v80, v82);
    v85 = sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v139 = v83;
    v140 = v85;
    v86 = v95;
    v87 = swift_getWitnessTable();
    v88 = v118;
    sub_21DFE2A0C();
    v89 = v117;
    v90 = *(v117 + 8);
    v90(v84, v86);
    v91 = v126;
    v92 = v116;
    sub_21DF236C0(v126, v116, &qword_27CEA9810, &unk_21E14B9A0);
    *&v128 = v92;
    v93 = v108;
    (*(v89 + 16))(v108, v88, v86);
    v137 = 0;
    v138 = 0;
    *(&v128 + 1) = v93;
    v129 = &v137;
    v136[0] = v105;
    v136[1] = v86;
    v136[2] = MEMORY[0x277CE1180];
    v133 = sub_21DFE0DE4();
    v134 = v87;
    v135 = MEMORY[0x277CE1170];
    sub_21E012D74(&v128, 3uLL, v136);
    v90(v88, v86);
    sub_21DF23614(v91, &qword_27CEA9810, &unk_21E14B9A0);
    v90(v93, v86);
    return sub_21DF23614(v92, &qword_27CEA9810, &unk_21E14B9A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DFE0758(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    sub_21DFE0CEC();
    if (v2 <= 0x3F)
    {
      sub_21DFB9568();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21DFE0810(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v13 = ((v10 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10) + v11;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      v21 = ((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23((v21 + v10 + 16) & ~v10);
      }

      else
      {
        v22 = *v21;
        if (v22 >= 0xFFFFFFFF)
        {
          LODWORD(v22) = -1;
        }

        return (v22 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_21DFE0A2C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((v12 + (((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
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

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_48:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v21 = (((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = *(v10 + 56);

    v22((v21 + v12 + 16) & ~v12, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v21 = a2 & 0x7FFFFFFF;
    v21[1] = 0;
  }

  else
  {
    *v21 = (a2 - 1);
  }
}

void sub_21DFE0CEC()
{
  if (!qword_27CEA98A8)
  {
    v0 = sub_21E142724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA98A8);
    }
  }
}

unint64_t sub_21DFE0D48()
{
  result = qword_27CEA98B0;
  if (!qword_27CEA98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98B0);
  }

  return result;
}

uint64_t sub_21DFE0D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DFE0DE4()
{
  result = qword_27CEA98C8;
  if (!qword_27CEA98C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810, &unk_21E14B9A0);
    sub_21DFE0E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98C8);
  }

  return result;
}

unint64_t sub_21DFE0E68()
{
  result = qword_27CEA98D0;
  if (!qword_27CEA98D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA98B8, &qword_21E14E190);
    sub_21DFE0F24();
    sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98D0);
  }

  return result;
}

unint64_t sub_21DFE0F24()
{
  result = qword_27CEA98D8;
  if (!qword_27CEA98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA98D8);
  }

  return result;
}

uint64_t sub_21DFE0F78(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21DFE0F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98B8, &qword_21E14E190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View.onSceneStateChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;

  MEMORY[0x223D51B40](v7, a3, &type metadata for SceneStateObserverModifier, a4);
}

uint64_t SceneState.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t SceneStateObserverModifier.init(onSceneStateChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SceneStateObserverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E8, &qword_21E14BAB0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98F0, &qword_21E14BAB8) + 36));
  *v8 = 0u;
  v8[1] = 0u;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98F8, &qword_21E14BAC0);
  sub_21E1425F4();

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v13 = (a2 + *(v11 + 56));
  *v13 = sub_21DFE1364;
  v13[1] = v12;

  v14 = [v9 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9900, &qword_21E14BAC8);
  sub_21E1425F4();

  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  v17 = (a2 + *(v15 + 56));
  *v17 = sub_21DFE139C;
  v17[1] = v16;

  v18 = [v9 defaultCenter];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9908, &qword_21E14BAD0);
  sub_21E1425F4();

  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v5;
  v21 = (a2 + *(v19 + 56));
  *v21 = sub_21DFE13D8;
  v21[1] = v20;
}

uint64_t sub_21DFE1364()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_21DFE139C()
{
  v1 = *(v0 + 16);
  v3 = 2;
  return v1(&v3);
}

uint64_t sub_21DFE13D8()
{
  v1 = *(v0 + 16);
  v3 = 1;
  return v1(&v3);
}

unint64_t sub_21DFE1418()
{
  result = qword_27CEA9910;
  if (!qword_27CEA9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9910);
  }

  return result;
}

unint64_t sub_21DFE14AC()
{
  result = qword_280F68E98;
  if (!qword_280F68E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9908, &qword_21E14BAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E98);
  }

  return result;
}

id SiriSetupViewController.init(showSiriOnboarding:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  v12 = type metadata accessor for SiriSetupViewController.Delegate();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding];
  *v14 = a1;
  *(v14 + 1) = a2;
  v14[16] = a3;
  v15 = &v13[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion];
  *v15 = a4;
  *(v15 + 1) = a5;
  v17.receiver = v13;
  v17.super_class = v12;

  result = objc_msgSendSuper2(&v17, sel_init);
  *(a6 + 24) = result;
  return result;
}

id SiriSetupViewController.makeUIViewController(context:)()
{
  v1 = sub_21E13D114();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D384();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v71 = sub_21E1420E4();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_21E13D134();
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = *(v0 + 24);
  v21 = [objc_allocWithZone(MEMORY[0x277CEF690]) init];
  v22 = [v21 siriSetupView];
  if (v22)
  {
    v69 = v6;
    v23 = v22;
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65)
    {
      v57 = v23;
      v58 = v21;
      v66 = v2;
      sub_21E142084();
      v56 = sub_21DF23B80();
      v24 = sub_21E1426B4();
      v61 = v4;
      v62 = v1;
      if (!v24)
      {
        v24 = [objc_opt_self() mainBundle];
      }

      v25 = v24;
      v26 = v69;
      sub_21E13D374();
      v54 = *(v67 + 16);
      v55 = v67 + 16;
      v54(v68, v17, v71);
      v52 = *(v26 + 16);
      v53 = v26 + 16;
      v52(v8, v11, v5);
      v27 = v5;
      v28 = [v25 bundleURL];
      v29 = v11;
      v30 = v61;
      sub_21E13D214();

      v31 = *(v66 + 104);
      v51 = *MEMORY[0x277CC9118];
      v66 += 104;
      v50 = v31;
      v31(v30);
      v59 = v8;
      v32 = v29;
      sub_21E13D144();

      v33 = *(v26 + 8);
      v60 = v27;
      v69 = v26 + 8;
      v49 = v33;
      v33(v29, v27);
      v67 = *(v67 + 8);
      (v67)(v17, v71);
      sub_21E142194();
      v34 = sub_21E1420F4();

      v35 = v65;
      [v65 setTitle_];

      v36 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v35 setContentView_];

      v37 = v64;
      sub_21E142084();
      v38 = sub_21E1426B4();
      if (!v38)
      {
        v38 = [objc_opt_self() mainBundle];
      }

      v39 = v38;
      sub_21E13D374();
      v40 = v71;
      v54(v68, v37, v71);
      v41 = v60;
      v52(v59, v32, v60);
      v42 = [v39 bundleURL];
      v43 = v32;
      v44 = v61;
      sub_21E13D214();

      v50(v44, v51, v62);
      sub_21E13D144();

      v49(v43, v41);
      (v67)(v37, v40);
      sub_21E142194();
      v45 = sub_21E1420F4();

      [v65 setSubtitle_];

      v21 = v58;
    }

    else
    {
    }
  }

  [v21 setDelegate_];
  v46 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v46;
}

void *SiriSetupViewController.updateUIViewController(_:context:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = [a1 topViewController];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 setDelegate_];
    }
  }

  v13 = v3;
  v14 = v4;
  v15 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
  result = MEMORY[0x223D52200](&v12, v10);
  if ((v12 & 1) == 0)
  {
    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_21DFE1ED4()
{
  v1 = sub_21E13F1B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21E13EC04();
  v5 = v0;
  v6 = sub_21E13F1A4();
  v7 = sub_21E142584();
  v8 = &property descriptor for NewSaliencyModel.entities;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = [objc_opt_self() sharedPreferences];
    v11 = [v10 assistantIsEnabled];

    v8 = &property descriptor for NewSaliencyModel.entities;
    *(v9 + 4) = v11;

    _os_log_impl(&dword_21DF05000, v6, v7, "Siri setup view complete; siriEnabled = %{BOOL}d", v9, 8u);
    MEMORY[0x223D540B0](v9, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  (*(v2 + 8))(v4, v1);
  v12 = *(&v5[1].isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v13 = *(&v5[2].isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v17 = *(&v5->isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding);
  v18 = v12;
  v19 = v13;
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
  sub_21E1419D4();
  v14 = [objc_opt_self() v8[203]];
  v15 = [v14 assistantIsEnabled];

  if (v15)
  {
    (*(&v5->isa + OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion))();
  }
}

id sub_21DFE2148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSetupViewController.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DFE21E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFE23F4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21DFE2248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFE23F4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21DFE22AC(uint64_t a1)
{
  sub_21DFE23F4();
  sub_21E1407A4();
  __break(1u);
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

uint64_t sub_21DFE22E8(uint64_t a1, int a2)
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

uint64_t sub_21DFE2330(uint64_t result, int a2, int a3)
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

uint64_t sub_21DFE238C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFE23F4()
{
  result = qword_27CEA9998;
  if (!qword_27CEA9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9998);
  }

  return result;
}

uint64_t sub_21DFE248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21E1402E4();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21E1402F4();
}

uint64_t sub_21DFE2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21E1402E4();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21E1402F4();
}

uint64_t View.ifCondition<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v40 = sub_21E140304();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x28223BE20](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_21DFE248C(v20, a5, a4, v41, v42);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_21DFE2584(v12, a5, a4, v41, v42);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_21DFE2A20@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v28 = a2;
  v3 = sub_21E13F524();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v24 = sub_21E13F7B4();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *a1;
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  sub_21E142504();
  result = sub_21E1424F4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    if (v14 < result - 1)
    {
      sub_21E13F894();
      sub_21E13F7A4();
      v17 = *(v8 + 8);
      v18 = v13;
      v19 = v24;
      v17(v18, v24);
      sub_21E13F894();
      v20 = v25;
      sub_21E13F7A4();
      v17(v10, v19);
      sub_21E13F514();
      v16 = v21;
      v22 = v27;
      v23 = *(v26 + 8);
      v23(v20, v27);
      result = (v23)(v7, v22);
    }

    *v28 = v16;
  }

  return result;
}

void (*sub_21DFE2CEC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

unint64_t sub_21DFE2D78()
{
  result = qword_27CEA99A0;
  if (!qword_27CEA99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99A0);
  }

  return result;
}

void *sub_21DFE2DCC(uint64_t a1, uint64_t a2, char a3)
{
  *&v55.f64[0] = sub_21E13F7B4();
  v6 = *(*&v55.f64[0] - 8);
  MEMORY[0x28223BE20](*&v55.f64[0]);
  v54 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v52 = COERCE_DOUBLE(sub_21E13FC54());
    v53 = v8;
    v10 = v9;
    v12 = v11;
    goto LABEL_14;
  }

  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v58 < v57[0])
  {
    goto LABEL_27;
  }

  v14 = *&a2;
  MEMORY[0x28223BE20](result);
  *&v49[-16] = a1;
  v17 = sub_21E0B027C(sub_21DFE37F8, &v49[-32], v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    if (v18 > 3)
    {
      v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = (v17 + 48);
      v20 = 0.0;
      v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
        v21 += 4;
        v22 -= 4;
      }

      while (v22);
      if (v18 == v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v23 = v18 - v19;
    v24 = (v17 + 8 * v19 + 32);
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v20 = 0.0;
  }

LABEL_13:

  sub_21E1424D4();
  sub_21E142504();
  v26 = sub_21E1424F4();
  v10 = 0;
  v53 = 0;
  v52 = (v14 - v20) / v26;
  v12 = 1;
LABEL_14:
  v27 = sub_21E13F884();
  sub_21DF4F6CC();
  v28 = sub_21E1424E4();
  v30 = MEMORY[0x277D84F90];
  if (v28)
  {
    v31 = v28;
    v58 = MEMORY[0x277D84F90];
    sub_21DF5C0B8(0, v28 & ~(v28 >> 63), 0);
    v30 = v58;
    result = sub_21E1424D4();
    if ((v31 & 0x8000000000000000) == 0)
    {
      v51 = (v6 + 16);
      v32 = (v6 + 8);
      v33 = v10 & 1;
      v50 = v12 & 1;
      do
      {
        v34 = sub_21E142524();
        v35 = v27;
        v37 = v54;
        v36 = v55.f64[0];
        (*v51)(v54);
        v34(v57, 0);
        LOBYTE(v57[0]) = v33;
        v56 = v50;
        sub_21E13F784();
        v39 = v38;
        v41 = v40;
        (*v32)(v37, COERCE_FLOAT64_T(*&v36));
        v58 = v30;
        v43 = *(v30 + 16);
        v42 = *(v30 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21DF5C0B8((v42 > 1), v43 + 1, 1);
          v30 = v58;
        }

        *(v30 + 16) = v43 + 1;
        v44 = v30 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        sub_21E142514();
        --v31;
        v27 = v35;
      }

      while (v31);
      goto LABEL_20;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_20:
  v45 = *(v30 + 16);
  if (v45)
  {
    v46 = (v30 + 32);
    v47 = 0uLL;
    do
    {
      v48 = *v46++;
      v47 = vbslq_s8(vcgeq_f64(v48, v47), v48, v47);
      --v45;
    }

    while (v45);
    v55 = v47;
  }

  else
  {
    v29.f64[0] = 0.0;
    v55 = v29;
  }
}

void *sub_21DFE31F8(uint64_t a1, char a2, uint64_t a3)
{
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v20 != v19)
  {
    sub_21DFE2DCC(a3, a1, a2 & 1);
    sub_21E1424D4();
    result = sub_21E142504();
    if (v19 < v20)
    {
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](result);
    v18[2] = a3;
    v9 = sub_21E0B027C(sub_21DFE37F8, v18, v7, v8);
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10 > 3)
    {
      v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v9 + 48);
      v12 = 0.0;
      v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v12 = v12 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
        v13 += 4;
        v14 -= 4;
      }

      while (v14);
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0.0;
    }

    v15 = v10 - v11;
    v16 = (v9 + 8 * v11 + 32);
    do
    {
      v17 = *v16++;
      v12 = v12 + v17;
      --v15;
    }

    while (v15);
LABEL_12:

    if (a2)
    {
      sub_21E1424D4();
      sub_21E142504();
      return sub_21E1424F4();
    }
  }

  return result;
}

void *sub_21DFE33FC(uint64_t a1, char a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = sub_21E13F7B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  result = sub_21E142504();
  if (v48 != v47)
  {
    sub_21DFE2DCC(a3, a1, a2 & 1);
    v20 = v19;
    v22 = v21;
    sub_21E1424D4();
    result = sub_21E142504();
    if (v47 < v48)
    {
      __break(1u);
      goto LABEL_25;
    }

    MEMORY[0x28223BE20](result);
    *(&v44 - 2) = a3;
    v25 = sub_21E0B027C(sub_21DFE37D8, (&v44 - 4), v23, v24);
    v26 = v25;
    v27 = *(v25 + 16);
    if (!v27)
    {
      v29 = 0.0;
      goto LABEL_12;
    }

    if (v27 > 3)
    {
      v28 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      v30 = (v25 + 48);
      v29 = 0.0;
      v31 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = v29 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
        v30 += 4;
        v31 -= 4;
      }

      while (v31);
      if (v27 == v28)
      {
LABEL_12:
        if ((a2 & 1) == 0)
        {
          v35 = *&a1 - v29;
          sub_21E1424D4();
          sub_21E142504();
          v20 = v35 / sub_21E1424F4();
        }

        v49.origin.x = a4;
        v49.origin.y = a5;
        v49.size.width = a6;
        v49.size.height = a7;
        MinX = CGRectGetMinX(v49);
        sub_21E1424D4();
        result = sub_21E142504();
        v38 = v47;
        v37 = v48;
        if (v47 >= v48)
        {
          v45 = v26;
          if (v48 == v47)
          {
          }

          if (v48 < v47)
          {
            if ((v48 & 0x8000000000000000) == 0)
            {
              v39 = *(v45 + 16);
              if (v48 < v39 && v47 - 1 < v39)
              {
                v46 = v22;
                v40 = MinX + v20 * 0.5;
                v41 = v15;
                v42 = v45 + 32;
                v43 = (v41 + 8);
                do
                {
                  sub_21E13F894();
                  v50.origin.x = a4;
                  v50.origin.y = a5;
                  v50.size.width = a6;
                  v50.size.height = a7;
                  CGRectGetMidY(v50);
                  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
                  LOBYTE(v48) = 0;
                  LOBYTE(v47) = 0;
                  sub_21E13F794();
                  (*v43)(v17, v14);
                  v40 = v40 + v20 + *(v42 + 8 * v37++);
                }

                while (v38 != v37);
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0.0;
    }

    v32 = v27 - v28;
    v33 = (v25 + 8 * v28 + 32);
    do
    {
      v34 = *v33++;
      v29 = v29 + v34;
      --v32;
    }

    while (v32);
    goto LABEL_12;
  }

  return result;
}

uint64_t ImageSearchError.displayMessage(for:)(uint64_t a1)
{
  v3 = sub_21E1420C4();
  MEMORY[0x28223BE20](v3 - 8);
  v30[2] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13D384();
  MEMORY[0x28223BE20](v5 - 8);
  v30[4] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E1420E4();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v30[3] = v30 - v9;
  MEMORY[0x28223BE20](v10);
  v30[0] = v30 - v11;
  MEMORY[0x28223BE20](v12);
  v13 = sub_21E13DDD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13E1A4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v30[1] = a1;
  v22(v21, a1, v17, v19);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == *MEMORY[0x277D79398])
  {
    (*(v14 + 16))(v16, v1, v13);
    v24 = (*(v14 + 88))(v16, v13);
    if (v24 == *MEMORY[0x277D791E0])
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
LABEL_11:
        v27 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (v24 != *MEMORY[0x277D791D8])
      {
        sub_21E1420B4();
        sub_21E1420A4();
        sub_21E13E174();
        sub_21E142094();

        sub_21E1420A4();
        sub_21E1420D4();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v29 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v28 = sub_21E142184();
        (*(v14 + 8))(v16, v13);
        goto LABEL_16;
      }

      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        goto LABEL_11;
      }
    }

    sub_21E13D374();
    v28 = sub_21E142184();
LABEL_16:
    (*(v18 + 8))(v21, v17);
    return v28;
  }

  if (v23 == *MEMORY[0x277D79390])
  {
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v25 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    return sub_21E142184();
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t NewActionModel.localizedTitle.getter()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NewActionModel.isPartneredSearchAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F28])
    {
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t NewActionModel.pill.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEA6D48, &unk_21E148070);
  v7 = sub_21DFE85D0(v5, a1);
  sub_21DF23614(v5, &qword_27CEA6D48, &unk_21E148070);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEA6D48, &unk_21E148070);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA6D48, &unk_21E148070);
}

uint64_t NewActionModel.isTextAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F38])
    {
      (*(v4 + 96))(v6, v3);
      v11 = sub_21E13E3F4();
      (*(*(v11 - 8) + 8))(v6, v11);
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_21DFE4554()
{
  v0 = sub_21E13E3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21DFE76F0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21DF23614(v6, &qword_27CEA6D98, &qword_21E145DC0);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D78F38])
    {
      (*(v8 + 96))(v10, v7);
      (*(v1 + 32))(v3, v10, v0);
      v14 = sub_21E13E3E4();
      (*(v1 + 8))(v3, v0);
      (*(v8 + 8))(v13, v7);
      return v14;
    }

    v16 = *(v8 + 8);
    v16(v13, v7);
    v16(v10, v7);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21DFE4884@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v10 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v12 + v10, a5, a3, a4);
}

uint64_t sub_21DFE497C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t sub_21DFE49CC()
{
  v1 = sub_21E13EE74();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E13EE94();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  v23 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v0 + v12, v11, &qword_27CEA6D48, &unk_21E148070);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_21DF23614(v11, &qword_27CEA6D48, &unk_21E148070);
    v13 = 0;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_21DF23614(v11, &qword_27CEA6D48, &unk_21E148070);
    sub_21E13EEA4();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v14 = v22;
    v16 = v19;
    (*(v21 + 104))(v19, *MEMORY[0x277D79670], v22);
    v13 = sub_21E13EE84();
    (*(v15 + 8))(v16, v14);
    (*(v18 + 8))(v4, v20);
  }

  return v13 & 1;
}

BOOL sub_21DFE4D84()
{
  v1 = v0;
  v2 = sub_21E13D994();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EEB4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13EEE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  swift_getKeyPath();
  v28 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v14, v13, &qword_27CEA6D48, &unk_21E148070);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_21DF23614(v13, &qword_27CEA6D48, &unk_21E148070);
  }

  else
  {
    v16 = v23;
    v15 = v24;
    v17 = v25;
    (*(v8 + 16))(v10, v13, v7);
    sub_21DF23614(v13, &qword_27CEA6D48, &unk_21E148070);
    sub_21E13EEC4();
    (*(v8 + 8))(v10, v7);
    v19 = v26;
    v18 = v27;
    if ((*(v26 + 88))(v6, v27) == *MEMORY[0x277D79680])
    {
      (*(v19 + 96))(v6, v18);
      v20 = v17;
      (*(v15 + 32))(v16, v6, v17);
      v21 = (*(v15 + 88))(v16, v17) == *MEMORY[0x277D78F30];
      (*(v15 + 8))(v16, v20);
      return v21;
    }

    (*(v19 + 8))(v6, v18);
  }

  return 0;
}

uint64_t static NewActionModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_21E0C372C(sub_21DF35578, v5, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173) & 1;
}

uint64_t NewActionModel.__allocating_init(title:systemImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NewActionModel.init(title:systemImage:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NewActionModel.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21DFE52B8()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  return *(v0 + 32);
}

uint64_t sub_21DFE5358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21DFE5400(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFE5508()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v1 = *(v0 + 40);
  sub_21DF09028(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_21DFE55BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_21DF09028(a2, a3);
  return sub_21DF1F1DC(v3, v4);
}

uint64_t sub_21DFE5608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t NewActionModel.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_21E142B14() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DFE5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

uint64_t (*NewActionModel.localizedTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE59E0;
}

uint64_t NewActionModel.systemImage.getter()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_21DFE5AB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  swift_beginAccess();
  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t NewActionModel.systemImage.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88) == a1 && *(v2 + 96) == a2;
  if (v5 || (sub_21E142B14() & 1) != 0)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DFE5D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
}

uint64_t (*NewActionModel.systemImage.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE5ED0;
}

BOOL NewActionModel.isTextDataDetectorAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(v1 + v5, v4, &qword_27CEA77B8, &qword_21E1557F0);
  v6 = sub_21E13F274();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_21DF23614(v4, &qword_27CEA77B8, &qword_21E1557F0);
  return v7;
}

uint64_t NewActionModel.semanticDataDetectorActionable.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEA77B8, &qword_21E1557F0);
  v8 = sub_21DFE8964(v5, a1, v7);
  sub_21DF23614(v5, &qword_27CEA77B8, &qword_21E1557F0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEA77B8, &qword_21E1557F0);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEA77B8, &qword_21E1557F0);
}

uint64_t (*NewActionModel.semanticDataDetectorActionable.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE641C;
}

uint64_t sub_21DFE644C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v11 = *a3;
  swift_beginAccess();
  return sub_21DF236C0(v10 + v11, a6, a4, a5);
}

uint64_t sub_21DFE6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_21DF236C0(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t (*NewActionModel.pill.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE674C;
}

uint64_t NewActionModel.isSelected.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t NewActionModel.isSelected.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DFE6940(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*NewActionModel.isSelected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DFE6AE4;
}

uint64_t sub_21DFE6AF0()
{
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType);
}

uint64_t sub_21DFE6B98(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t NewActionModel.init(pill:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v7 = sub_21E13F274();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v9 = sub_21E13EEE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  *(v1 + 16) = sub_21E13EE54();
  *(v1 + 24) = v12;
  *(v1 + 56) = sub_21E13EE34();
  *(v1 + 64) = v13;
  *(v1 + 88) = sub_21E13EED4();
  *(v1 + 96) = v14;
  (*(v10 + 16))(v5, a1, v9);
  v11(v5, 0, 1, v9);
  NewActionModel.pill.setter(v5);
  v15 = sub_21E13EE34();
  NewActionModel.localizedTitle.setter(v15, v16);
  v17 = sub_21E13EED4();
  NewActionModel.systemImage.setter(v17, v18);
  (*(v10 + 8))(a1, v9);
  return v1;
}

uint64_t type metadata accessor for NewActionModel(uint64_t a1)
{
  result = qword_280F6B818;
  if (!qword_280F6B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewActionModel.apply(pill:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  NewActionModel.pill.setter(v4);
  v7 = sub_21E13EE34();
  NewActionModel.localizedTitle.setter(v7, v8);
  v9 = sub_21E13EED4();
  return NewActionModel.systemImage.setter(v9, v10);
}

uint64_t NewActionModel.init(dataDetector:)(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v11 = sub_21E13F274();
  v12 = *(v11 - 8);
  v28 = *(v12 + 56);
  v28(v2 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v14 = sub_21E13EEE4();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v15 = sub_21E13D314();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  *(v2 + 16) = v15;
  *(v2 + 24) = v17;
  v18 = v29;
  v19 = sub_21E13F224();
  v21 = 0x726F746365746544;
  if (v20)
  {
    v21 = v19;
  }

  v22 = 0xE800000000000000;
  if (v20)
  {
    v22 = v20;
  }

  *(v2 + 56) = v21;
  *(v2 + 64) = v22;
  v23 = sub_21E13F254();
  v25 = 0x800000021E15C800;
  v26 = 0xD000000000000013;
  if (v24)
  {
    v26 = v23;
    v25 = v24;
  }

  *(v2 + 88) = v26;
  *(v2 + 96) = v25;
  (*(v12 + 16))(v5, v18, v11);
  v28(v5, 0, 1, v11);
  NewActionModel.semanticDataDetectorActionable.setter(v5);
  (*(v12 + 8))(v18, v11);
  return v2;
}

uint64_t NewActionModel.init(title:systemImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21E13D344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  v15 = sub_21E13F274();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  v17 = sub_21E13EEE4();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v18 = sub_21E13D314();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  *(v5 + 16) = v18;
  *(v5 + 24) = v20;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  return v5;
}

BOOL NewActionModel.isStreamingAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
    return 0;
  }

  else
  {
    v11 = *(v4 + 32);
    v11(v9, v2, v3);
    v11(v6, v9, v3);
    v10 = (*(v4 + 88))(v6, v3) == *MEMORY[0x277D78F30];
    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

uint64_t sub_21DFE76F0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_21E13EEB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  swift_getKeyPath();
  v25 = v1;
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v1 + v15, v4, &qword_27CEA6D48, &unk_21E148070);
  v16 = sub_21E13EEE4();
  if ((*(*(v16 - 8) + 48))(v4, 1, v16))
  {
    sub_21DF23614(v4, &qword_27CEA6D48, &unk_21E148070);
    v17 = sub_21E13D994();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  else
  {
    v19 = v24;
    sub_21E13EEC4();
    sub_21DF23614(v4, &qword_27CEA6D48, &unk_21E148070);
    v20 = *(v6 + 32);
    v20(v14, v11, v5);
    v20(v8, v14, v5);
    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D79680])
    {
      (*(v6 + 96))(v8, v5);
      v21 = sub_21E13D994();
      v22 = *(v21 - 8);
      (*(v22 + 32))(v19, v8, v21);
      return (*(v22 + 56))(v19, 0, 1, v21);
    }

    else
    {
      v23 = sub_21E13D994();
      (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t NewActionModel.isPartneredAskAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21DFE76F0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21DF23614(v2, &qword_27CEA6D98, &qword_21E145DC0);
  }

  else
  {
    v10 = *(v4 + 32);
    v10(v9, v2, v3);
    v10(v6, v9, v3);
    v11 = (*(v4 + 88))(v6, v3);
    if (v11 == *MEMORY[0x277D78F58] || v11 == *MEMORY[0x277D78F48])
    {
      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

char *NewActionModel.deinit()
{

  sub_21DF1F1DC(*(v0 + 40), *(v0 + 48));

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable, &qword_27CEA77B8, &qword_21E1557F0);
  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill, &qword_27CEA6D48, &unk_21E148070);
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NewActionModel.__deallocating_deinit()
{
  NewActionModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DFE7E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    result = sub_21E142B14();
    if ((result & 1) == 0)
    {
      v11 = 0;
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v8 = *(a1 + 32);
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v8 != *(a2 + 32))
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  swift_getKeyPath();

  sub_21E13D3C4();

  swift_beginAccess();
  if (v10 != *(a2 + 56) || v9 != *(a2 + 64))
  {
    v12 = sub_21E142B14();

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_17;
  }

LABEL_12:
  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();
  v14 = *(a1 + 88);
  v13 = *(a1 + 96);
  swift_getKeyPath();

  sub_21E13D3C4();

  swift_beginAccess();
  if (v14 == *(a2 + 88) && v13 == *(a2 + 96))
  {

    v11 = 1;
  }

  else
  {
    v15 = sub_21E142B14();

    v11 = v15 & 1;
  }

LABEL_17:
  *a3 = v11;
  return result;
}

uint64_t sub_21DFE8120(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21E1423C4();
  v5[2] = v2;
  v5[3] = v3;
  return sub_21E0C372C(sub_21DF60774, v5, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173) & 1;
}

uint64_t NewActionModel.hash(into:)(uint64_t a1)
{
  sub_21E1423C4();
  v4[2] = a1;
  v5 = v1;
  return sub_21E0C38E4(sub_21DFE8D14, v4, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
}

uint64_t sub_21DFE8214(uint64_t a1, uint64_t a2)
{
  sub_21E142204();
  swift_getKeyPath();
  sub_21DFE9098(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  MEMORY[0x223D53460](*(a2 + 32));
  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E142204();

  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E142204();
}

uint64_t NewActionModel.hashValue.getter()
{
  sub_21E142C14();
  sub_21E1423C4();
  v2[2] = v4;
  v3 = v0;
  sub_21E0C38E4(sub_21DFE90E0, v2, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  return sub_21E142C44();
}

uint64_t sub_21DFE8444()
{
  v1 = *v0;
  sub_21E142C14();
  sub_21E1423C4();
  v3[2] = v4;
  v3[3] = v1;
  sub_21E0C38E4(sub_21DFE90E0, v3, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  return sub_21E142C44();
}

uint64_t sub_21DFE84D0(uint64_t a1)
{
  v3 = *v1;
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = v3;
  return sub_21E0C38E4(sub_21DFE90E0, v5, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
}

uint64_t sub_21DFE8548(uint64_t a1)
{
  v2 = *v1;
  sub_21E142C14();
  sub_21E1423C4();
  v4[2] = v5;
  v4[3] = v2;
  sub_21E0C38E4(sub_21DFE90E0, v4, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  return sub_21E142C44();
}

uint64_t sub_21DFE85D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EEE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0, &qword_21E1472A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEA6D48, &unk_21E148070);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEA6D48, &unk_21E148070);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEA6D48, &unk_21E148070);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21DFE9098(&qword_280F69080, MEMORY[0x277D79698], MEMORY[0x277D796A8]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEA6D48, &unk_21E148070);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA76B0, &qword_21E1472A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEA6D48, &unk_21E148070);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DFE8964(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_21E13F274();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0, &unk_21E1477F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  sub_21DF236C0(a1, &v22 - v13, &qword_27CEA77B8, &qword_21E1557F0);
  sub_21DF236C0(a2, &v14[v16], &qword_27CEA77B8, &qword_21E1557F0);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) != 1)
  {
    sub_21DF236C0(v14, v11, &qword_27CEA77B8, &qword_21E1557F0);
    if (v17(&v14[v16], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      sub_21DFE9098(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
      v19 = sub_21E142074();
      v20 = *(v6 + 8);
      v20(v8, v5);
      v20(v11, v5);
      sub_21DF23614(v14, &qword_27CEA77B8, &qword_21E1557F0);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v6 + 8))(v11, v5);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v5) != 1)
  {
LABEL_6:
    sub_21DF23614(v14, &qword_27CEA77B0, &unk_21E1477F0);
    v18 = 1;
    return v18 & 1;
  }

  sub_21DF23614(v14, &qword_27CEA77B8, &qword_21E1557F0);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21DFE8CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_21DFE8D80(uint64_t a1)
{
  sub_21DFE8F4C(319, &qword_280F69058, MEMORY[0x277D796D0]);
  if (v1 <= 0x3F)
  {
    sub_21DFE8F4C(319, &qword_280F69078, MEMORY[0x277D79698]);
    if (v2 <= 0x3F)
    {
      sub_21E13D404();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21DFE8F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21DFE8FC4()
{
  result = qword_27CEA99A8;
  if (!qword_27CEA99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99A8);
  }

  return result;
}

unint64_t sub_21DFE901C()
{
  result = qword_27CEA99B0;
  if (!qword_27CEA99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99B0);
  }

  return result;
}

uint64_t sub_21DFE9098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double AppIconView.init(bundleIdentifier:width:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA98E0, &unk_21E14BAA0);
  sub_21E141704();
  result = *&v9;
  *(a3 + 40) = v9;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

__n128 AppIconView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_21E141624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v36 = *v1;
  v37 = v7;
  v38 = v1[2];
  v39 = *(v1 + 6);
  v40 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99B8, &qword_21E14C2E8);
  sub_21E141714();
  if (v21)
  {
    v8 = v21;
    sub_21E1415F4();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v9 = sub_21E141664();

    (*(v4 + 8))(v6, v3);
    sub_21E141CC4();
    sub_21E13F664();
    *&v42[8] = v35;
    *&v42[25] = v19;
    v29 = v32;
    v28 = v34;
    v30 = 0;
    *&v40 = v9;
    *(&v40 + 1) = v31;
    LOBYTE(v41) = v32;
    *(&v41 + 1) = v33;
    v42[0] = v34;
    v42[24] = 1;
    *&v42[41] = *v20;
    *&v42[56] = *&v20[15];
    v43 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C0, &qword_21E14C2F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C8, &qword_21E14C2F8);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    sub_21E1402F4();

    *&v42[32] = v25;
    *&v42[48] = v26;
    v43 = v27;
    v40 = v21;
    v41 = v22;
    *v42 = v23;
    *&v42[16] = v24;
  }

  else
  {
    sub_21E141CC4();
    sub_21E13F664();
    v10 = v31;
    v11 = v33;
    v12 = v35;
    v30 = 1;
    v29 = v32;
    v28 = v34;
    v13 = swift_allocObject();
    v14 = v37;
    *(v13 + 16) = v36;
    *(v13 + 32) = v14;
    *(v13 + 48) = v38;
    *(v13 + 64) = v39;
    LOBYTE(v19) = 1;
    *&v21 = 0;
    BYTE8(v21) = v30;
    *&v22 = v10;
    BYTE8(v22) = v29;
    *&v23 = v11;
    BYTE8(v23) = v28;
    v24 = v12;
    *&v25 = sub_21DFEA074;
    *(&v25 + 1) = v13;
    v26 = 0uLL;
    v27 = 1;
    sub_21DFEA07C(&v36, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C0, &qword_21E14C2F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99C8, &qword_21E14C2F8);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    sub_21E1402F4();
  }

  v15 = *&v42[48];
  *(a1 + 64) = *&v42[32];
  *(a1 + 80) = v15;
  *(a1 + 96) = v43;
  v16 = v41;
  *a1 = v40;
  *(a1 + 16) = v16;
  result = *&v42[16];
  *(a1 + 32) = *v42;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21DFE9564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  sub_21E1423D4();
  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = *(a1 + 48);
  sub_21DFEA07C(a1, v10);
  sub_21DFE9D6C(0, 0, v4, &unk_21E14C430, v6);

  return sub_21DF23614(v4, &qword_27CEAD980, &qword_21E146EB0);
}

uint64_t sub_21DFE96B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  v4[13] = swift_task_alloc();
  v5 = sub_21E13FF94();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DFE97AC, 0, 0);
}

uint64_t sub_21DFE97AC()
{
  *(v0 + 136) = sub_21E1423C4();
  *(v0 + 144) = sub_21E1423B4();
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9844, v2, v1);
}

uint64_t sub_21DFE9844()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 32);
  *(v0 + 72) = *(v1 + 24);
  *(v0 + 80) = v2;
  if (v2 == 1)
  {
    v3 = *(v0 + 72);
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);

    sub_21E142574();
    v7 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF23614(v0 + 72, &qword_27CEA9A18, &qword_21E154690);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 88);
  }

  *(v0 + 152) = v3;
  v8 = *(v0 + 96);
  *(v0 + 160) = *v8;
  *(v0 + 168) = v8[1];
  *(v0 + 176) = v8[2];

  return MEMORY[0x2822009F8](sub_21DFE99B0, 0, 0);
}

uint64_t sub_21DFE99B0(uint64_t a1)
{
  *(v1 + 184) = sub_21E1423B4();
  v3 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9A3C, v3, v2);
}

uint64_t sub_21DFE9A3C()
{
  v1 = v0[22];
  v2 = *(v0 + 20);
  v3 = *(v0 + 21);
  v4 = v0[19];

  *(v0 + 24) = sub_21DFEA624(v2, v3, v1, v4);

  return MEMORY[0x2822009F8](sub_21DFE9AD0, 0, 0);
}

uint64_t sub_21DFE9AD0()
{
  v1 = v0[24];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = sub_21E1423F4();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_21DFEA07C(v3, (v0 + 2));
    v5 = v1;
    v6 = sub_21E1423B4();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    v9 = *(v3 + 32);
    v10 = *(v3 + 48);
    v11 = *v3;
    *(v7 + 48) = *(v3 + 16);
    *(v7 + 64) = v9;
    *(v7 + 32) = v11;
    *(v7 + 80) = v10;
    *(v7 + 88) = v5;
    sub_21E0C2E04(0, 0, v2, &unk_21E14C458, v7);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21DFE9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_21E1423C4();
  v5[7] = sub_21E1423B4();
  v7 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFE9CB8, v7, v6);
}

uint64_t sub_21DFE9CB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  *(v0 + 16) = *(v2 + 40);
  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA99B8, &qword_21E14C2E8);
  sub_21E141724();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21DFE9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DFEA444(a3, v25 - v10);
  v12 = sub_21E1423F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DF23614(v11, &qword_27CEAD980, &qword_21E146EB0);
  }

  else
  {
    sub_21E1423E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E142364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E1421D4() + 32;
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

unint64_t sub_21DFEA0B4()
{
  result = qword_27CEA99D0;
  if (!qword_27CEA99D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA99C0, &qword_21E14C2F0);
    sub_21DFEA260(&qword_27CEA99D8, &qword_27CEA99E0, &qword_21E14C300);
    sub_21DFEA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99D0);
  }

  return result;
}

unint64_t sub_21DFEA160()
{
  result = qword_27CEA99E8;
  if (!qword_27CEA99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99E8);
  }

  return result;
}

unint64_t sub_21DFEA1B4()
{
  result = qword_27CEA99F0;
  if (!qword_27CEA99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA99C8, &qword_21E14C2F8);
    sub_21DFEA260(&qword_27CEA99F8, &qword_27CEA9A00, &qword_21E14C308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA99F0);
  }

  return result;
}

uint64_t sub_21DFEA260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21DFEA308()
{
  result = qword_27CEA9A08;
  if (!qword_27CEA9A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A10, &unk_21E14C418);
    sub_21DFEA0B4();
    sub_21DFEA1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A08);
  }

  return result;
}

uint64_t sub_21DFEA394(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DF4AA04;

  return sub_21DFE96B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_21DFEA444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFEA4B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return sub_21E0E0744(a1, v4);
}

uint64_t sub_21DFEA56C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF4AA04;

  return sub_21E0E0744(a1, v4);
}

id sub_21DFEA624(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a3, a4}];
  [v4 setDrawBorder_];
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_21E1420F4();
  v7 = [v5 initWithBundleIdentifier_];

  v8 = [v7 imageForDescriptor_];
  if (v8)
  {
    v9 = v8;
    if ([v8 placeholder])
    {
      v10 = [v7 prepareImageForDescriptor_];
      v11 = [v10 CGImage];
    }

    else
    {
      v11 = [v9 CGImage];
    }
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t sub_21DFEA78C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21DFE9C20(a1, v4, v5, (v1 + 4), v6);
}

uint64_t Text.latencyTextStyle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0, &unk_21E14A930) + 36);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  sub_21DF42BEC(a1, a2, a3 & 1);
}

uint64_t LatencyTextStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E1409A4();
  sub_21E1409E4();
  v4 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A20, &qword_21E14C4D0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A28, &qword_21E14C4D8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_21E141414();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A30, &qword_21E14C510);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_21DFEAA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21E1409A4();
  sub_21E1409E4();
  v4 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A20, &qword_21E14C4D0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A28, &qword_21E14C4D8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_21E141414();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A30, &qword_21E14C510);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_21DFEAB40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FE44();
  *a1 = result;
  return result;
}

uint64_t sub_21DFEAB98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FEC4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LatencyTextStyle(uint64_t a1)
{
  result = qword_27CEA9A38;
  if (!qword_27CEA9A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFEAC80(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21DFEACEC()
{
  result = qword_27CEA9A48;
  if (!qword_27CEA9A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A30, &qword_21E14C510);
    sub_21DFEADA4();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48, &qword_21E14A040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A48);
  }

  return result;
}

unint64_t sub_21DFEADA4()
{
  result = qword_27CEA9A50;
  if (!qword_27CEA9A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A28, &qword_21E14C4D8);
    sub_21DF23E5C(&qword_27CEA9A58, &qword_27CEA9A20, &qword_21E14C4D0, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A50);
  }

  return result;
}

unint64_t sub_21DFEAE88()
{
  result = qword_27CEA91F8;
  if (!qword_27CEA91F8)
  {
    type metadata accessor for LatencyTextStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA91F8);
  }

  return result;
}

void sub_21DFEAEF0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828, &unk_21E1497A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A68, &qword_21E14C698);
  if (swift_dynamicCast())
  {

    sub_21DF0DBF0(v6, v9);
    sub_21DF0DBF0(v9, a2);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_21DFEB0DC(v6);
    v5 = sub_21E13D0E4();
    a2[3] = &type metadata for NSErrorWrapper;
    a2[4] = sub_21DFEB144();

    *a2 = v5;
  }
}

uint64_t sub_21DFEB038(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

unint64_t sub_21DFEB088()
{
  result = qword_27CEA9A60;
  if (!qword_27CEA9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A60);
  }

  return result;
}

uint64_t sub_21DFEB0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A70, &qword_21E14C6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFEB144()
{
  result = qword_27CEA9A78;
  if (!qword_27CEA9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A78);
  }

  return result;
}

uint64_t sub_21DFEB1A8()
{
  v1 = [*v0 localizedDescription];
  v2 = sub_21E142124();

  return v2;
}

uint64_t sub_21DFEB224(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21E142124();

  return v6;
}

unint64_t sub_21DFEB28C()
{
  result = qword_27CEA9A80;
  if (!qword_27CEA9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9A80);
  }

  return result;
}

uint64_t EventLookupResultView.init(state:sessionAnalytics:dismissalAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for EventLookupResultView(0);
  v11 = a5 + v10[7];
  sub_21E141704();
  *v11 = v17;
  *(v11 + 8) = v18;
  v12 = a5 + v10[8];
  sub_21E141704();
  *v12 = v17;
  *(v12 + 8) = v18;
  v13 = v10[9];
  *(a5 + v13) = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v14 = sub_21E13DDC4();
  result = (*(*(v14 - 8) + 32))(a5, a1, v14);
  *(a5 + v10[5]) = a2;
  v16 = (a5 + v10[6]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t type metadata accessor for EventLookupResultView(uint64_t a1)
{
  result = qword_27CEA9B08;
  if (!qword_27CEA9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventLookupResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v175 = a1;
  v176 = type metadata accessor for EmptyResultsView(0);
  MEMORY[0x28223BE20](v176);
  v149 = (v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A88, &qword_21E14C760);
  MEMORY[0x28223BE20](v166);
  v6 = v141 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A90, &qword_21E14C768);
  MEMORY[0x28223BE20](v162);
  v165 = v141 - v7;
  v161 = type metadata accessor for EventLookupResultView(0);
  v141[0] = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v141[1] = v8;
  v142 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for CardSafetyInterstitial(0);
  MEMORY[0x28223BE20](v163);
  v143 = (v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_21E13DD04();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v156 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = v141 - v12;
  MEMORY[0x28223BE20](v13);
  v154 = v141 - v14;
  MEMORY[0x28223BE20](v15);
  v153 = v141 - v16;
  MEMORY[0x28223BE20](v17);
  v152 = v141 - v18;
  MEMORY[0x28223BE20](v19);
  v151 = v141 - v20;
  MEMORY[0x28223BE20](v21);
  v150 = v141 - v22;
  MEMORY[0x28223BE20](v23);
  v158 = v141 - v24;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9A98, &qword_21E14C770);
  MEMORY[0x28223BE20](v171);
  v164 = v141 - v25;
  v157 = sub_21E13DDB4();
  v26 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v28 = v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AA0, &qword_21E14C778);
  MEMORY[0x28223BE20](v172);
  v174 = v141 - v29;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AA8, &qword_21E14C780);
  MEMORY[0x28223BE20](v168);
  v169 = v141 - v30;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AB0, &unk_21E14C788);
  MEMORY[0x28223BE20](v173);
  v170 = v141 - v31;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0, &unk_21E14A930);
  MEMORY[0x28223BE20](v144);
  v145 = v141 - v32;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AB8, &qword_21E14C798);
  MEMORY[0x28223BE20](v147);
  v146 = v141 - v33;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9AC0, &qword_21E14C7A0);
  MEMORY[0x28223BE20](v167);
  v148 = v141 - v34;
  v35 = sub_21E13DDC4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21E13D8D4();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, v3, v35, v41);
  v44 = (*(v36 + 88))(v38, v35);
  if (v44 == *MEMORY[0x277D791D0])
  {
    (*(v36 + 96))(v38, v35);
    v149 = v26;
    v45 = v157;
    v26[4](v28, v38, v157);
    v46 = v158;
    sub_21E13DD94();
    v47 = sub_21E13DC84();
    v48 = *(v159 + 8);
    v49 = v46;
    v50 = v160;
    v48(v49, v160);
    v51 = v28;
    v52 = v3;
    v53 = v161;
    if ((v47 & 1) != 0 && (v54 = v52 + *(v161 + 32), v55 = *v54, v56 = *(v54 + 8), LOBYTE(v181) = v55, *(&v181 + 1) = v56, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0), sub_21E141714(), (v177 & 1) == 0))
    {
      v129 = v142;
      sub_21DFED2C4(v52, v142, type metadata accessor for EventLookupResultView);
      v130 = (*(v141[0] + 80) + 16) & ~*(v141[0] + 80);
      v131 = swift_allocObject();
      sub_21DFED030(v129, v131 + v130);
      v132 = sub_21DFED170();
      v134 = v133;
      KeyPath = swift_getKeyPath();
      v136 = v143;
      *v143 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v137 = v163;
      v138 = (v136 + *(v163 + 20));
      *v138 = v132;
      v138[1] = v134;
      v139 = (v136 + *(v137 + 24));
      *v139 = sub_21DFED094;
      v139[1] = v131;
      sub_21DFED2C4(v136, v165, type metadata accessor for CardSafetyInterstitial);
      swift_storeEnumTagMultiPayload();
      sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial, &unk_21E156808);
      sub_21DFECE90();
      v97 = v164;
      sub_21E1402F4();
      sub_21DFED32C(v136, type metadata accessor for CardSafetyInterstitial);
      v83 = v51;
    }

    else
    {
      v57 = v150;
      sub_21E13DD94();
      v159 = sub_21E13DCA4();
      v158 = v58;
      v48(v57, v50);
      v59 = v151;
      sub_21E13DD94();
      v150 = sub_21E13DCE4();
      v148 = v60;
      v48(v59, v50);
      v151 = v52;
      v61 = v152;
      sub_21E13DD94();
      v62 = type metadata accessor for EventResultView(0);
      sub_21E13DCF4();
      v48(v61, v50);
      v63 = v153;
      sub_21E13DD94();
      sub_21E13DCD4();
      v48(v63, v50);
      v64 = v154;
      sub_21E13DD94();
      LODWORD(v153) = sub_21E13DCC4();
      v48(v64, v50);
      v65 = v155;
      sub_21E13DD94();
      v154 = sub_21E13DCB4();
      v152 = v66;
      v48(v65, v50);
      v155 = sub_21E13DDA4();
      v67 = v45;
      v68 = v156;
      sub_21E13DD94();
      sub_21E13DC94();
      v48(v68, v50);
      v69 = *(v53 + 24);
      v70 = *&v151[*(v53 + 20)];
      v71 = *&v151[v69];
      v72 = *&v151[v69 + 8];
      type metadata accessor for SharedSuppressPostShutterAction(0);
      v181 = 0u;
      v182 = 0u;
      v183 = 0;

      sub_21DF09028(v71, v72);
      sub_21DFECF7C(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction, &protocol conformance descriptor for SharedSuppressPostShutterAction);
      v45 = v67;
      *v6 = sub_21E13F474();
      v6[8] = v73 & 1;
      *(v6 + 2) = swift_getKeyPath();
      *(v6 + 3) = 0;
      v6[32] = 0;
      v74 = v62[6];
      *&v6[v74] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v75 = v62[7];
      *&v6[v75] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
      swift_storeEnumTagMultiPayload();
      v76 = v62[8];
      *&v6[v76] = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
      v77 = &v6[v62[9]];
      v78 = v158;
      *v77 = v159;
      v77[1] = v78;
      v79 = &v6[v62[10]];
      v80 = v148;
      *v79 = v150;
      *(v79 + 1) = v80;
      v6[v62[13]] = v153 & 1;
      v81 = &v6[v62[14]];
      v82 = v152;
      *v81 = v154;
      *(v81 + 1) = v82;
      *&v6[v62[15]] = v155;
      *&v6[v62[17]] = v70;
      v83 = v51;
      v84 = &v6[v62[18]];
      *v84 = v71;
      v84[1] = v72;
      v85 = &v6[v62[19]];
      LOBYTE(v179) = 0;
      sub_21E141704();
      v86 = *(&v177 + 1);
      *v85 = v177;
      *(v85 + 1) = v86;
      v87 = &v6[v62[20]];
      LOBYTE(v179) = 0;
      sub_21E141704();
      v88 = *(&v177 + 1);
      *v87 = v177;
      *(v87 + 1) = v88;
      v89 = &v6[v62[21]];
      LOBYTE(v179) = 0;
      sub_21E141704();
      v90 = *(&v177 + 1);
      *v89 = v177;
      *(v89 + 1) = v90;
      v91 = &v6[v62[22]];
      v179 = 0;
      v180 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8878, &unk_21E1498F0);
      sub_21E141704();
      v92 = v178;
      *v91 = v177;
      *(v91 + 2) = v92;
      sub_21DF236C0(&v181, &v177, &qword_27CEA9B00, &unk_21E14C830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B00, &unk_21E14C830);
      sub_21E141704();
      sub_21DF23614(&v181, &qword_27CEA9B00, &unk_21E14C830);
      sub_21E140914();
      sub_21E13F374();
      *&v181 = v93;
      *(&v181 + 1) = v94;
      *&v182 = v95;
      *(&v182 + 1) = v96;
      LOBYTE(v183) = 0;
      sub_21E1405A4();
      sub_21DF236C0(v6, v165, &qword_27CEA9A88, &qword_21E14C760);
      swift_storeEnumTagMultiPayload();
      sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial, &unk_21E156808);
      sub_21DFECE90();
      v97 = v164;
      sub_21E1402F4();
      sub_21DF23614(v6, &qword_27CEA9A88, &qword_21E14C760);
    }

    sub_21DF236C0(v97, v169, &qword_27CEA9A98, &qword_21E14C770);
    swift_storeEnumTagMultiPayload();
    sub_21DFECC28();
    sub_21DFECDD4();
    v140 = v170;
    sub_21E1402F4();
    sub_21DF236C0(v140, v174, &qword_27CEA9AB0, &unk_21E14C788);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    sub_21E1402F4();
    sub_21DF23614(v140, &qword_27CEA9AB0, &unk_21E14C788);
    sub_21DF23614(v97, &qword_27CEA9A98, &qword_21E14C770);
    return v149[1](v83, v45);
  }

  else if (v44 == *MEMORY[0x277D791A8] || v44 == *MEMORY[0x277D791C0] || v44 == *MEMORY[0x277D79198] || v44 == *MEMORY[0x277D791A0] || v44 == *MEMORY[0x277D791B0] || v44 == *MEMORY[0x277D791B8] || v44 == *MEMORY[0x277D79190])
  {
    (*(v36 + 96))(v38, v35);
    (*(v40 + 32))(v43, v38, v39);
    v114 = sub_21E13D8B4();
    v116 = v115;
    v117 = sub_21E13D8C4();
    v119 = v118;
    v120 = sub_21E13D8A4();
    v122 = v121;
    (*(v40 + 8))(v43, v39);
    v123 = swift_getKeyPath();
    v124 = v149;
    *v149 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
    swift_storeEnumTagMultiPayload();
    v125 = v176;
    v126 = (v124 + *(v176 + 24));
    *v126 = v114;
    v126[1] = v116;
    v127 = (v124 + v125[7]);
    *v127 = v117;
    v127[1] = v119;
    v128 = (v124 + v125[8]);
    *v128 = v120;
    v128[1] = v122;
    *(v124 + v125[5]) = 0x402C000000000000;
    sub_21DFED2C4(v124, v174, type metadata accessor for EmptyResultsView);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    sub_21E1402F4();
    return sub_21DFED32C(v124, type metadata accessor for EmptyResultsView);
  }

  else if (v44 == *MEMORY[0x277D791C8])
  {
    sub_21E1400D4();
    sub_21DF3ED18(0, &qword_280F68C20, 0x277CCA8D8);
    if (!sub_21E1426B4())
    {
      v98 = [objc_opt_self() mainBundle];
    }

    v99 = sub_21E140C64();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = *(v144 + 36);
    v107 = swift_getKeyPath();
    v108 = v145;
    *&v145[v106] = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
    swift_storeEnumTagMultiPayload();
    *v108 = v99;
    *(v108 + 8) = v101;
    *(v108 + 16) = v103 & 1;
    *(v108 + 24) = v105;
    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    sub_21E141D84();
    sub_21E13F6F4();

    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    sub_21E141D74();
    sub_21E13F6F4();

    v109 = sub_21E13F684();

    v110 = v146;
    sub_21DFED38C(v108, v146);
    *(v110 + *(v147 + 36)) = v109;
    sub_21DFECCE4();
    v111 = v148;
    sub_21E141164();
    sub_21DF23614(v110, &qword_27CEA9AB8, &qword_21E14C798);
    sub_21DF236C0(v111, v169, &qword_27CEA9AC0, &qword_21E14C7A0);
    swift_storeEnumTagMultiPayload();
    sub_21DFECC28();
    sub_21DFECDD4();
    v112 = v170;
    sub_21E1402F4();
    sub_21DF236C0(v112, v174, &qword_27CEA9AB0, &unk_21E14C788);
    swift_storeEnumTagMultiPayload();
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    sub_21E1402F4();
    sub_21DF23614(v112, &qword_27CEA9AB0, &unk_21E14C788);
    return sub_21DF23614(v111, &qword_27CEA9AC0, &qword_21E14C7A0);
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

unint64_t sub_21DFECB9C()
{
  result = qword_27CEA9AC8;
  if (!qword_27CEA9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AB0, &unk_21E14C788);
    sub_21DFECC28();
    sub_21DFECDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AC8);
  }

  return result;
}

unint64_t sub_21DFECC28()
{
  result = qword_27CEA9AD0;
  if (!qword_27CEA9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AC0, &qword_21E14C7A0);
    sub_21DFECCE4();
    sub_21DFECF7C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AD0);
  }

  return result;
}

unint64_t sub_21DFECCE4()
{
  result = qword_27CEA9AD8;
  if (!qword_27CEA9AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9AB8, &qword_21E14C798);
    sub_21DFCFB7C();
    sub_21DFECD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AD8);
  }

  return result;
}

unint64_t sub_21DFECD70()
{
  result = qword_280F68E40;
  if (!qword_280F68E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848, &unk_21E144B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E40);
  }

  return result;
}

unint64_t sub_21DFECDD4()
{
  result = qword_27CEA9AE0;
  if (!qword_27CEA9AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A98, &qword_21E14C770);
    sub_21DFECF7C(&qword_27CEA9AE8, type metadata accessor for CardSafetyInterstitial, &unk_21E156808);
    sub_21DFECE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AE0);
  }

  return result;
}

unint64_t sub_21DFECE90()
{
  result = qword_27CEA9AF0;
  if (!qword_27CEA9AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9A88, &qword_21E14C760);
    sub_21DFECF7C(&qword_27CEA9AF8, type metadata accessor for EventResultView, &unk_21E14EA20);
    sub_21DFECF7C(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9AF0);
  }

  return result;
}

uint64_t sub_21DFECF7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DFECFC4(uint64_t a1)
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21DFED030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventLookupResultView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFED094()
{
  v1 = *(type metadata accessor for EventLookupResultView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21DFECFC4(v2);
}

uint64_t sub_21DFED0F4(uint64_t a1)
{
  type metadata accessor for EventLookupResultView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  return sub_21E141724();
}

uint64_t sub_21DFED170()
{
  v0 = sub_21E13D384();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E1420E4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E142084();
  sub_21DF3ED18(0, &qword_280F68C20, 0x277CCA8D8);
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  return sub_21E142184();
}

uint64_t sub_21DFED2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFED32C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DFED38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0, &unk_21E14A930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21DFED444(uint64_t a1)
{
  sub_21E13DDC4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SessionAnalytics(319);
    if (v2 <= 0x3F)
    {
      sub_21DF8E3BC(319);
      if (v3 <= 0x3F)
      {
        sub_21DF3EF6C();
        if (v4 <= 0x3F)
        {
          sub_21DF3ED18(319, &qword_27CEA9B18, 0x277CC5A40);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21DFED520()
{
  result = qword_27CEA9B20;
  if (!qword_27CEA9B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B28, &unk_21E14C8E0);
    sub_21DFECB9C();
    sub_21DFECF7C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B20);
  }

  return result;
}

uint64_t VIUITapToRadarButton.init(displayedActions:width:onAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t VIUITapToRadarButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B30, &qword_21E14C900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B38, &qword_21E14C908);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v16 = *v1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15[4] = v16;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40, &qword_21E14C910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B48, &qword_21E14C918);
  sub_21DFEEA24();
  sub_21DFEEBC0();
  sub_21E140AF4();
  v13 = sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30, &qword_21E14C900, MEMORY[0x277CDE5B0]);
  sub_21E1411D4();
  (*(v3 + 8))(v5, v2);
  v20 = v2;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21E141014();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21DFED8D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B80, &qword_21E14C938);
  sub_21DFEEC58();
  return sub_21E141AB4();
}

uint64_t sub_21DFED98C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BB0, &qword_21E14CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B90, &qword_21E14C940);
  sub_21DF23E5C(&qword_27CEA9BB8, &qword_27CEA9BB0, &qword_21E14CA10, MEMORY[0x277D83980]);
  sub_21DF23E5C(&qword_27CEA9B88, &qword_27CEA9B90, &qword_21E14C940, MEMORY[0x277CE14C0]);
  sub_21DFEF1CC(&qword_27CEA9BC0, MEMORY[0x277D794B0], MEMORY[0x277D794B8]);
  return sub_21E141A84();
}

uint64_t sub_21DFEDB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v57 = a2;
  v58 = a4;
  v55 = a3;
  v61 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BC8, &qword_21E14CA18);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - v11;
  v53 = sub_21E141A54();
  v12 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13E444();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0, &qword_21E14CA20);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v26 = *(v15 + 16);
  v56 = a1;
  v26(v19, a1, v14, v23);
  LODWORD(a1) = (*(v15 + 88))(v19, v14);
  v27 = *MEMORY[0x277D794A0];
  (*(v15 + 8))(v19, v14);
  if (a1 == v27)
  {
    v28 = v51;
    sub_21E141A44();
    v29 = v28;
    v30 = v53;
    (*(v12 + 32))(v25, v29, v53);
    v31 = 0;
    v32 = v30;
  }

  else
  {
    v31 = 1;
    v32 = v53;
  }

  (*(v12 + 56))(v25, v31, 1, v32);
  v33 = v52;
  v34 = v56;
  (v26)(v52, v56, v14);
  v35 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = v57;
  *(v36 + 24) = a6;
  *(v36 + 32) = v55;
  *(v36 + 40) = v37;
  v38 = (*(v15 + 32))(v36 + v35, v33, v14);
  MEMORY[0x28223BE20](v38);
  v39 = v25;
  *(&v50 - 2) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD8, &qword_21E14CA28);
  sub_21DF23E5C(&qword_27CEA9BE0, &qword_27CEA9BD8, &qword_21E14CA28, MEMORY[0x277CE14C0]);
  v40 = v59;
  sub_21E141764();
  v41 = v54;
  sub_21DFEF284(v25, v54);
  v43 = v62;
  v42 = v63;
  v44 = *(v62 + 16);
  v45 = v60;
  v44(v60, v40, v63);
  v46 = v61;
  sub_21DFEF284(v41, v61);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BE8, &unk_21E14CA30);
  v44((v46 + *(v47 + 48)), v45, v42);
  v48 = *(v43 + 8);
  v48(v40, v42);
  sub_21DFEF2F4(v39);
  v48(v45, v42);
  return sub_21DFEF2F4(v41);
}

uint64_t sub_21DFEE084@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = 0xEF65736F6E676169;
  v4 = 0x6473795320646E61;
  v5 = sub_21E13E444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0, &qword_21E148330);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v27 = a1;
  v26 = a1;
  sub_21E141684();
  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == *MEMORY[0x277D794A8])
  {
    goto LABEL_2;
  }

  if (v16 == *MEMORY[0x277D79488] || v16 == *MEMORY[0x277D794A0])
  {
    goto LABEL_9;
  }

  if (v16 == *MEMORY[0x277D79490])
  {
LABEL_2:
    v17 = MEMORY[0x277D84F90];
LABEL_10:
    v19 = *(v10 + 16);
    v19(v12, v15, v9);
    v20 = v25;
    v19(v25, v12, v9);
    v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BF0, qword_21E14CA40) + 48)];
    sub_21DFEF36C(v4, v3, 0, v17);
    sub_21DFEF3B0(v4, v3, 0, v17);
    *v21 = v4;
    v21[1] = v3;
    v21[2] = 0;
    v21[3] = v17;
    v22 = *(v10 + 8);
    v22(v15, v9);
    sub_21DFEF3B0(v4, v3, 0, v17);
    return (v22)(v12, v9);
  }

  if (v16 == *MEMORY[0x277D79498])
  {
LABEL_9:
    v4 = 0;
    v3 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21DFEE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13E444();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D794A8])
  {
    v10 = 0xD000000000000014;
    v11 = 0x800000021E15CA20;
LABEL_11:
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = 0;
    *(a2 + 24) = MEMORY[0x277D84F90];
    return result;
  }

  if (result == *MEMORY[0x277D79488])
  {
    v11 = 0xEC0000006F656469;
    v10 = 0x5620686361747441;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D794A0])
  {
    v11 = 0x800000021E15CA00;
    v10 = 0xD00000000000001DLL;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D79490])
  {
    v11 = 0xEF6F656469562068;
    v10 = 0x74697720656C6946;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D79498])
  {
    v11 = 0x800000021E15C9E0;
    v10 = 0xD000000000000015;
    goto LABEL_11;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21DFEE604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21E13E444();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D794A8] || v9 == *MEMORY[0x277D79488] || v9 == *MEMORY[0x277D794A0] || v9 == *MEMORY[0x277D79490] || v9 == *MEMORY[0x277D79498])
  {
    result = sub_21E141634();
    *a2 = result;
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

double sub_21DFEE7F4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21E141624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  type metadata accessor for NewSaliencyModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_21E141674();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_21E141664();

  (*(v4 + 8))(v6, v3);
  sub_21E141CC4();
  sub_21E13F664();
  LOBYTE(v17) = 1;
  *&v13[6] = v14;
  *&v13[22] = v15;
  *&v13[38] = v16;
  sub_21E140914();
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40, &qword_21E14C910);
  sub_21E1405A4();
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = *&v13[16];
  *(a1 + 18) = *v13;
  *(a1 + 34) = v10;
  result = *&v13[32];
  *(a1 + 50) = *&v13[32];
  *(a1 + 64) = *&v13[46];
  return result;
}

unint64_t sub_21DFEEA24()
{
  result = qword_27CEA9B50;
  if (!qword_27CEA9B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B40, &qword_21E14C910);
    sub_21DFEEAE0();
    sub_21DFEF1CC(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B50);
  }

  return result;
}

unint64_t sub_21DFEEAE0()
{
  result = qword_27CEA9B58;
  if (!qword_27CEA9B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B60, &unk_21E14C920);
    sub_21DFC281C();
    sub_21DFEEB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B58);
  }

  return result;
}

unint64_t sub_21DFEEB6C()
{
  result = qword_27CEA9B68;
  if (!qword_27CEA9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B68);
  }

  return result;
}

unint64_t sub_21DFEEBC0()
{
  result = qword_27CEA9B70;
  if (!qword_27CEA9B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B48, &qword_21E14C918);
    sub_21DFEEC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B70);
  }

  return result;
}

unint64_t sub_21DFEEC58()
{
  result = qword_27CEA9B78;
  if (!qword_27CEA9B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B80, &qword_21E14C938);
    sub_21DF23E5C(&qword_27CEA9B88, &qword_27CEA9B90, &qword_21E14C940, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9B78);
  }

  return result;
}

uint64_t sub_21DFEED24@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B30, &qword_21E14C900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B38, &qword_21E14C908);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v16 = *v1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15[4] = v16;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B40, &qword_21E14C910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9B48, &qword_21E14C918);
  sub_21DFEEA24();
  sub_21DFEEBC0();
  sub_21E140AF4();
  v13 = sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30, &qword_21E14C900, MEMORY[0x277CDE5B0]);
  sub_21E1411D4();
  (*(v3 + 8))(v5, v2);
  v20 = v2;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_21E141014();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21DFEEFE8(uint64_t *a1, int a2)
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

uint64_t sub_21DFEF030(uint64_t result, int a2, int a3)
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

unint64_t sub_21DFEF080()
{
  result = qword_27CEA9BA0;
  if (!qword_27CEA9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9BA8, &qword_21E14CA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9B30, &qword_21E14C900);
    sub_21DF23E5C(&qword_27CEA9B98, &qword_27CEA9B30, &qword_21E14C900, MEMORY[0x277CDE5B0]);
    swift_getOpaqueTypeConformance2();
    sub_21DFEF1CC(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9BA0);
  }

  return result;
}

uint64_t sub_21DFEF1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DFEF284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0, &qword_21E14CA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFEF2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9BD0, &qword_21E14CA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFEF36C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21DF42BEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21DFEF3B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21DF3DE8C(result, a2, a3 & 1);
  }

  return result;
}

void sub_21DFEF404(void *a1, char a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SecureNavigationController();
  objc_msgSendSuper2(&v12, sel_pushViewController_animated_, a1, a2 & 1);
  v5 = [a1 navigationItem];
  v6 = [v5 leftBarButtonItem];

  if (v6)
  {
    v7 = v6;
    v8 = sub_21E1420F4();
    v9 = [objc_opt_self() systemImageNamed_];

    [v7 setImage_];
  }

  else
  {
    v7 = [a1 navigationItem];
    v10 = sub_21E1420F4();
    v11 = [objc_opt_self() systemImageNamed_];

    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v11 style:0 target:v2 action:sel_backButtonTapped];
    [v7 setLeftBarButtonItem_];
  }
}

id sub_21DFEF82C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureNavigationController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21DFEF884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9DD0, &qword_21E14CC50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  type metadata accessor for ObservableSize(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14ObservableSize__size;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9C20, &unk_21E14CAA0);
  sub_21E13F2C4();
  (*(v1 + 32))(v4 + v5, v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = 0;
  v9 = 0;
  v10 = 1;

  sub_21E13F2E4();
  return v4;
}

double sub_21DFEF9EC@<D0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668, &qword_21E149310);
  MEMORY[0x28223BE20](v90);
  v89 = &v66 - v2;
  v3 = type metadata accessor for VisualLookupCardView(0);
  v95 = *(v3 - 8);
  v99 = *(v95 + 64);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90, &qword_21E14A8D0);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v66 - v7;
  v98 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v98);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E40, &qword_21E14CD70);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v66 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E48, &qword_21E14CD78);
  MEMORY[0x28223BE20](v81);
  v97 = &v66 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E50, &qword_21E14CD80);
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v100 = &v66 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E58, &qword_21E14CD88);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v66 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E60, &unk_21E14CD90) - 8;
  MEMORY[0x28223BE20](v85);
  v83 = &v66 - v14;
  v15 = *(v1 + 24);
  v16 = v1 + v4[11];
  v17 = *(v16 + 8);
  v73 = *v16;
  v72 = v17;
  v71 = *(v16 + 16);
  v70 = type metadata accessor for ObservableSize(0);
  v69 = sub_21DFF253C(&unk_27CEA9E30, type metadata accessor for ObservableSize, &unk_21E14CC18);
  v96 = v15;
  v18 = sub_21E13F4C4();
  v19 = v1;
  v20 = *(v1 + v4[12]);
  v21 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = *(v1 + 48);
  v92 = v1;
  *&v101 = v21;
  *(&v101 + 1) = v22;
  LOBYTE(v102) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
  sub_21E1419F4();
  v24 = v108;
  v25 = v109;
  v77 = v4[10];
  v80 = v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
  sub_21E141734();
  v67 = v9;
  *v9 = v96;
  *(v9 + 1) = v18;
  *(v9 + 2) = v20;
  *(v9 + 24) = v24;
  v9[40] = v25;
  v26 = v74;
  sub_21E141734();
  v96 = type metadata accessor for VisualLookupCardView;
  v27 = v93;
  sub_21DFF2DD4(v19, v93, type metadata accessor for VisualLookupCardView);
  v95 = *(v95 + 80);
  v28 = (v95 + 16) & ~v95;
  v68 = v28;
  v29 = swift_allocObject();
  v94 = type metadata accessor for VisualLookupCardView;
  sub_21DFF34EC(v27, v29 + v28, type metadata accessor for VisualLookupCardView);
  v30 = type metadata accessor for IdentifiableURL(0);
  v31 = type metadata accessor for InAppWebPresentationView(0);
  v32 = sub_21DFF253C(&qword_27CEA9DC8, type metadata accessor for SearchCardView, &unk_21E14CB18);
  v33 = sub_21DFF253C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL, &protocol conformance descriptor for IdentifiableURL);
  v34 = sub_21DFF253C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView, &protocol conformance descriptor for InAppWebPresentationView);
  v35 = v76;
  v36 = v98;
  v37 = v67;
  sub_21E141284();

  sub_21DF23614(v26, &unk_27CEA9D90, &qword_21E14A8D0);
  sub_21DFF3554(v37, type metadata accessor for SearchCardView);
  *&v101 = v36;
  *(&v101 + 1) = v30;
  *&v102 = v31;
  *(&v102 + 1) = v32;
  *&v103 = v33;
  *(&v103 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v78;
  sub_21E141164();
  (*(v79 + 8))(v35, v38);
  sub_21E13F4C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  v39 = v92;
  v40 = v93;
  sub_21DFF2DD4(v92, v93, v96);
  v41 = v68;
  v42 = swift_allocObject();
  sub_21DFF34EC(v40, v42 + v41, v94);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9C20, &unk_21E14CAA0);
  v44 = sub_21DFF3148();
  v45 = sub_21DFF3304();
  v46 = v81;
  v47 = v97;
  sub_21E141324();

  sub_21DF11B9C(v47);
  v48 = v39;
  v49 = v89;
  sub_21E141714();
  sub_21DFF2DD4(v48, v40, v96);
  v50 = swift_allocObject();
  sub_21DFF34EC(v40, v50 + v41, v94);
  *&v101 = v46;
  *(&v101 + 1) = v43;
  *&v102 = v44;
  *(&v102 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_21DFF3438();
  v51 = v82;
  v52 = v84;
  v53 = v100;
  sub_21E141324();

  sub_21DF23614(v49, &qword_27CEA8668, &qword_21E149310);
  (*(v86 + 8))(v53, v52);
  sub_21E141CC4();
  sub_21E13FCE4();
  v54 = v83;
  (*(v87 + 32))(v83, v51, v88);
  v55 = (v54 + *(v85 + 44));
  v56 = v106;
  v55[4] = v105;
  v55[5] = v56;
  v55[6] = v107;
  v57 = v102;
  *v55 = v101;
  v55[1] = v57;
  v58 = v104;
  v55[2] = v103;
  v55[3] = v58;
  v59 = (v92 + v80[13]);
  *&v58 = *v59;
  v60 = v59[1];
  *&v108 = v58;
  *(&v108 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68, &unk_21E1461B0);
  sub_21E141714();
  sub_21E141CC4();
  sub_21E13F664();
  v61 = v91;
  sub_21DF11C04(v54, v91);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9EB0, &qword_21E14CDA0) + 36));
  result = *&v108;
  v64 = v109;
  v65 = v110;
  *v62 = v108;
  v62[1] = v64;
  v62[2] = v65;
  return result;
}

uint64_t sub_21DFF0658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668, &qword_21E149310);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for IdentifiableURL(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  type metadata accessor for VisualLookupCardView(0);
  sub_21DFF2584(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
  sub_21E141724();
  sub_21DF23614(v5, &qword_27CEA8668, &qword_21E149310);
  v7(v5, 1, 1, v6);
  sub_21DFF2584(v5, v2);
  sub_21E141724();
  return sub_21DF23614(v5, &qword_27CEA8668, &qword_21E149310);
}

void sub_21DFF07FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    type metadata accessor for VisualLookupCardView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68, &unk_21E1461B0);
    sub_21E141724();
  }
}

uint64_t sub_21DFF0880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21E13FF94();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668, &qword_21E149310);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for IdentifiableURL(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFF2584(a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_21DF23614(v16, &qword_27CEA8668, &qword_21E149310);
  }

  sub_21DFF34EC(v16, v20, type metadata accessor for IdentifiableURL);
  v22 = MKBGetDeviceLockState();
  if (v22 && v22 != 3)
  {
    v23 = *a3;
    if (*(a3 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v24 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v26 + 8))(v7, v5);
      v23 = v27;
    }

    LOBYTE(v27) = 1;
    v23(v20, &v27);
  }

  else
  {
    sub_21DFF2DD4(v20, v13, type metadata accessor for IdentifiableURL);
    (*(v18 + 56))(v13, 0, 1, v17);
    type metadata accessor for VisualLookupCardView(0);
    sub_21DFF2584(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
    sub_21E141724();
    sub_21DF23614(v13, &qword_27CEA8668, &qword_21E149310);
  }

  return sub_21DFF3554(v20, type metadata accessor for IdentifiableURL);
}

uint64_t sub_21DFF0C54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  return v1;
}

uint64_t sub_21DFF0D30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableSize(0);
  result = sub_21E13F284();
  *a2 = result;
  return result;
}

uint64_t sub_21DFF0D70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  return v1;
}

uint64_t sub_21DFF0E00(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_21DFF0EE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_21DFF2CC0(319, a4, a5, a6, MEMORY[0x277CBCED0]);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21DFF0F90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableDrillIn(0);
  result = sub_21E13F284();
  *a2 = result;
  return result;
}

id sub_21DFF0FD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9DD8, &qword_21E14CCA0);
  sub_21E1408A4();
  v1 = [objc_opt_self() cardViewControllerForCard:*v0 feedbackDelegate:v7];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_6:
    v4 = [objc_allocWithZone(MEMORY[0x277D4C840]) init];
    goto LABEL_7;
  }

  v4 = v3;
  result = [v3 view];
  if (result)
  {
    v6 = result;
    [result _setOverrideVibrancyTrait_];

    [v4 setThreeDTouchEnabled_];
    [v4 setDelegate_];
    [v4 setCommandDelegate_];
    [v4 setRowSelectionAppearanceEnabled_];
    sub_21E1408A4();
    swift_unknownObjectWeakAssign();

    [v4 setScrollEnabled_];
LABEL_7:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFF11EC(void *a1, __n128 a2)
{
  v4 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13F1B4();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v50 = v2 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E13F2D4();

  v16 = v53[0];
  if (v53[0])
  {
    v49 = v7;
    sub_21E13EBE4();
    v17 = a1;
    v18 = sub_21E13F1A4();
    v19 = sub_21E142544();

    v20 = a1;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53[0] = v22;
      *v21 = 136315138;
      v47 = v17;
      v48 = v20;
      if (v20)
      {
        v23 = v17;
        v46 = v22;
        v24 = v23;
        v25 = [v23 description];
        v26 = sub_21E142124();
        v28 = v27;

        v22 = v46;
      }

      else
      {
        v28 = 0xE400000000000000;
        v26 = 1701736270;
      }

      v43 = sub_21E0E08C0(v26, v28, v53);

      *(v21 + 4) = v43;
      _os_log_impl(&dword_21DF05000, v18, v19, "Pushing a view controller: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D540B0](v22, -1, -1);
      MEMORY[0x223D540B0](v21, -1, -1);

      result = (*(v51 + 8))(v15, v49);
      v35 = v50;
      v17 = v47;
      v20 = v48;
    }

    else
    {

      result = (*(v51 + 8))(v15, v49);
      v35 = v50;
    }

    if (v20)
    {
      [v16 pushViewController:v17 animated:1];

LABEL_20:
      sub_21DFF2DD4(v35, v6, type metadata accessor for SearchCardView);
      v44 = *(v6 + 4);
      v45 = v6[40];
      v53[0] = *(v6 + 3);
      v53[1] = v44;
      v54 = v45;
      v52 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380, &qword_21E148D30);
      sub_21E1419D4();
      return sub_21DFF3554(v6, type metadata accessor for SearchCardView);
    }

    __break(1u);
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = a1;
        sub_21E13EBE4();
        v32 = sub_21E13F1A4();
        v33 = sub_21E142564();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_21DF05000, v32, v33, "SearchUI is giving us a navigation controller, but we don't expect one.", v34, 2u);
          MEMORY[0x223D540B0](v34, -1, -1);
        }

        (*(v51 + 8))(v12, v7);
        v35 = v50;
        swift_getKeyPath();
        swift_getKeyPath();
        v53[0] = v30;

        sub_21E13F2E4();
        goto LABEL_20;
      }
    }

    sub_21E13EBE4();
    v37 = sub_21E13F1A4();
    v38 = sub_21E142554();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21DF05000, v37, v38, "There is no existing navigation controller. Create one.", v39, 2u);
      MEMORY[0x223D540B0](v39, -1, -1);
    }

    result = (*(v51 + 8))(v9, v7);
    if (a1)
    {
      v35 = v50;
      v40 = objc_allocWithZone(type metadata accessor for SecureNavigationController());

      v41 = [v40 initWithRootViewController_];
      swift_getKeyPath();
      swift_getKeyPath();
      v53[0] = v41;
      sub_21E13F2E4();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_21E13F2D4();

      v42 = v53[0];
      if (v53[0])
      {
        [v53[0] _setBuiltinTransitionStyle_];
      }

      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_21DFF18FC(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668, &qword_21E149310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v43 = type metadata accessor for SearchCardView(0);
  MEMORY[0x28223BE20](v43);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13D264();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  v14 = sub_21E13F1B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBE4();
  v18 = sub_21E13F1A4();
  v19 = sub_21E142554();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v9;
    v22 = v10;
    v23 = v4;
    v24 = v7;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_21DF05000, v18, v19, "Getting asked to perform an SF punchout command", v20, 2u);
    v26 = v25;
    v7 = v24;
    v4 = v23;
    v10 = v22;
    v9 = v21;
    a1 = v41;
    MEMORY[0x223D540B0](v26, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if (a1)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = a1;
      v30 = [v28 punchout];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 urls];
        if (v32)
        {
          v33 = v32;
          v34 = sub_21E1422D4();

          if (*(v34 + 16))
          {
            v35 = v46;
            v36 = (*(v46 + 80) + 32) & ~*(v46 + 80);
            v41 = v29;
            v37 = *(v46 + 16);
            v38 = v42;
            v37(v42, v34 + v36, v10);

            v39 = v45;
            (*(v35 + 32))(v45, v38, v10);
            sub_21DFF2DD4(v44 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent, v9, type metadata accessor for SearchCardView);
            v37(v7, v39, v10);
            v40 = type metadata accessor for IdentifiableURL(0);
            (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
            sub_21DFF2584(v7, v4);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90, &qword_21E14A8D0);
            sub_21E1419D4();

            sub_21DF23614(v7, &qword_27CEA8668, &qword_21E149310);
            sub_21DFF3554(v9, type metadata accessor for SearchCardView);
            (*(v35 + 8))(v39, v10);
            return;
          }
        }
      }
    }
  }
}

id sub_21DFF1E7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DFF1F3C(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for SearchCardView(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21DFF201C(uint64_t a1)
{
  sub_21DF3ED18(319, &unk_27CEA9DB0, 0x277D4C230);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservableSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservableDrillIn(319);
      if (v3 <= 0x3F)
      {
        sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_21DFF2CC0(319, &qword_27CEA9DC0, &qword_27CEA8668, &qword_21E149310, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21DFF214C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFF2DD4(v2, v5, type metadata accessor for SearchCardView);
  v6 = type metadata accessor for SearchCardView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  sub_21DFF2DD4(v5, v7 + OBJC_IVAR____TtCV20VisualIntelligenceUI14SearchCardView11Coordinator_parent, type metadata accessor for SearchCardView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_21DFF3554(v5, type metadata accessor for SearchCardView);
  *a2 = v8;
  return result;
}

uint64_t sub_21DFF225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView, &unk_21E14CB68);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21DFF22F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView, &unk_21E14CB68);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21DFF2384(uint64_t a1)
{
  sub_21DFF253C(&unk_27CEA9DE0, type metadata accessor for SearchCardView, &unk_21E14CB68);
  sub_21E1407A4();
  __break(1u);
}

double sub_21DFF2430@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21DFF24B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E13F2E4();
}

uint64_t sub_21DFF253C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DFF2584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668, &qword_21E149310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFF25F4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E13F2D4();

  *a2 = v4;
  return result;
}

uint64_t sub_21DFF2674(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_21E13F2E4();
}

void sub_21DFF26EC(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      return;
    }

    v7 = Strong;
    sub_21DF3ED18(0, &qword_27CEA9DF0, 0x277D75D28);
    v5 = a1;
    v6 = sub_21E1426D4();

    if ((v6 & 1) == 0)
    {
      return;
    }

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21E13F2E4();
    return;
  }

  if (!Strong)
  {
    goto LABEL_9;
  }
}

uint64_t sub_21DFF2814(void *a1)
{
  v2 = sub_21E13D264();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  if (a1)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = a1;
      v12 = [v10 punchout];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 urls];
        if (v14)
        {
          v15 = v14;
          v16 = sub_21E1422D4();

          if (*(v16 + 16))
          {
            (*(v3 + 16))(v5, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

            (*(v3 + 32))(v8, v5, v2);
            v17 = sub_21E13D234();
            if (!v18)
            {
              goto LABEL_16;
            }

            if (v17 == 0x7370747468 && v18 == 0xE500000000000000)
            {

              v19 = 1;
LABEL_23:
              (*(v3 + 8))(v8, v2);
              return v19 & 1;
            }

            v21 = sub_21E142B14();

            if ((v21 & 1) == 0)
            {
LABEL_16:
              v22 = sub_21E13D234();
              if (!v23)
              {

                v19 = 0;
                goto LABEL_23;
              }

              if (v22 != 1886680168 || v23 != 0xE400000000000000)
              {
                v19 = sub_21E142B14();

                goto LABEL_23;
              }
            }

            v19 = 1;
            goto LABEL_23;
          }
        }
      }
    }
  }

  v19 = 0;
  return v19 & 1;
}

void sub_21DFF2B14(uint64_t a1)
{
  sub_21DFF2CC0(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21DF3ED18(319, &unk_27CEA9DB0, 0x277D4C230);
    if (v2 <= 0x3F)
    {
      sub_21DFA421C(319, &qword_280F68D00, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_21DFF2CC0(319, &qword_27CEA9E20, &qword_27CEA8668, &qword_21E149310, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21DFF2D24(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObservableDrillIn(319);
            if (v6 <= 0x3F)
            {
              sub_21DFA421C(319, &qword_280F68D70, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
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

void sub_21DFF2CC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21DFF2D24(uint64_t a1)
{
  if (!qword_27CEA9E28)
  {
    type metadata accessor for ObservableSize(255);
    sub_21DFF253C(&unk_27CEA9E30, type metadata accessor for ObservableSize, &unk_21E14CC18);
    v1 = sub_21E13F4D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CEA9E28);
    }
  }
}

uint64_t sub_21DFF2DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFF2E3C()
{
  type metadata accessor for VisualLookupCardView(0);

  return sub_21DFF0658();
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for VisualLookupCardView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_21DF446B8();

  v3 = v2 + *(v1 + 28);
  v4 = type metadata accessor for IdentifiableURL(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    v6 = sub_21E13D264();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);

  v7 = v2 + *(v1 + 32);
  if (!v5(v7, 1, v4))
  {
    v8 = sub_21E13D264();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  sub_21DFA7448();

  return swift_deallocObject();
}

void sub_21DFF30C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisualLookupCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21DFF07FC(a1, a2, v6);
}

unint64_t sub_21DFF3148()
{
  result = qword_27CEA9E78;
  if (!qword_27CEA9E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E48, &qword_21E14CD78);
    type metadata accessor for SearchCardView(255);
    type metadata accessor for IdentifiableURL(255);
    type metadata accessor for InAppWebPresentationView(255);
    sub_21DFF253C(&qword_27CEA9DC8, type metadata accessor for SearchCardView, &unk_21E14CB18);
    sub_21DFF253C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL, &protocol conformance descriptor for IdentifiableURL);
    sub_21DFF253C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView, &protocol conformance descriptor for InAppWebPresentationView);
    swift_getOpaqueTypeConformance2();
    sub_21DFF253C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E78);
  }

  return result;
}

unint64_t sub_21DFF3304()
{
  result = qword_27CEA9E88;
  if (!qword_27CEA9E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9C20, &unk_21E14CAA0);
    sub_21DFF253C(&qword_27CEA9E90, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E88);
  }

  return result;
}

uint64_t sub_21DFF33B8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisualLookupCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DFF0880(a1, a2, v6);
}

unint64_t sub_21DFF3438()
{
  result = qword_27CEA9E98;
  if (!qword_27CEA9E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8668, &qword_21E149310);
    sub_21DFF253C(&unk_27CEA9EA0, type metadata accessor for IdentifiableURL, &protocol conformance descriptor for IdentifiableURL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9E98);
  }

  return result;
}

uint64_t sub_21DFF34EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFF3554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DFF35B4()
{
  result = qword_27CEA9EB8;
  if (!qword_27CEA9EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9EB0, &qword_21E14CDA0);
    sub_21DFF3640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9EB8);
  }

  return result;
}

unint64_t sub_21DFF3640()
{
  result = qword_27CEA9EC0;
  if (!qword_27CEA9EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9E60, &unk_21E14CD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E50, &qword_21E14CD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8668, &qword_21E149310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9E48, &qword_21E14CD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA9C20, &unk_21E14CAA0);
    sub_21DFF3148();
    sub_21DFF3304();
    swift_getOpaqueTypeConformance2();
    sub_21DFF3438();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9EC0);
  }

  return result;
}

uint64_t sub_21DFF3790(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_21DFF37E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30, &qword_21E14CDA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(v3 + 16);
  v10(aBlock - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v9, v2);
  v13 = MKBGetDeviceLockState();
  if (v13 != 3 && v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21DFF3A44;
    *(v14 + 24) = v12;
    aBlock[4] = sub_21DFF3AE8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21DFF3790;
    aBlock[3] = &block_descriptor_3;
    v15 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v15);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    sub_21E142374();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21DFF3A44(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30, &qword_21E14CDA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30, &qword_21E14CDA8);
  return sub_21E142374();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

int *EmptyResultsView.init(title:subtitle:symbolName:bottomPadding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for EmptyResultsView(0);
  v17 = (a7 + result[6]);
  *v17 = a1;
  v17[1] = a2;
  v18 = (a7 + result[7]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a7 + result[8]);
  *v19 = a5;
  v19[1] = a6;
  *(a7 + result[5]) = a8;
  return result;
}

uint64_t type metadata accessor for EmptyResultsView(uint64_t a1)
{
  result = qword_27CEA9F58;
  if (!qword_27CEA9F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DFF3C38()
{
  result = os_variant_has_internal_content();
  byte_280F6FD20 = result;
  return result;
}

uint64_t EmptyResultsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E1418F4();
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_21E141CC4();
  a1[1] = v4;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F38, &qword_21E14CE38) + 44);
  *v5 = sub_21E1401C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F40, &qword_21E14CE40);
  sub_21DFF3DAC(v1, &v5[*(v6 + 44)]);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F48, &qword_21E14CE48) + 36);
  sub_21E1418E4();
  sub_21E141FA4();
  v8 = *(type metadata accessor for ContainerSmartDialogViewModifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50, &qword_21E14CE50);
  swift_allocObject();
  result = sub_21E13F294();
  *&v7[v8] = result;
  return result;
}

uint64_t sub_21DFF3DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F88, &qword_21E14CF10);
  v173 = *(v3 - 8);
  v174 = v3;
  MEMORY[0x28223BE20](v3);
  v156 = (&v155 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F90, &qword_21E14CF18);
  MEMORY[0x28223BE20](v5 - 8);
  v176 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v175 = &v155 - v8;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F98, &qword_21E14CF20);
  MEMORY[0x28223BE20](v170);
  v171 = &v155 - v9;
  v10 = sub_21E1400C4();
  MEMORY[0x28223BE20](v10 - 8);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FA0, &qword_21E14CF28);
  MEMORY[0x28223BE20](v163);
  v12 = &v155 - v11;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FA8, &qword_21E14CF30);
  MEMORY[0x28223BE20](v164);
  v14 = &v155 - v13;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FB0, &unk_21E14CF38);
  MEMORY[0x28223BE20](v169);
  v16 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v155 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v155 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FB8, &qword_21E14CF48);
  v165 = *(v23 - 8);
  v166 = v23;
  MEMORY[0x28223BE20](v23);
  v162 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v161 = &v155 - v26;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FC0, &qword_21E14CF50);
  MEMORY[0x28223BE20](v159);
  v157 = &v155 - v27;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FC8, &qword_21E14CF58);
  MEMORY[0x28223BE20](v168);
  v160 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v158 = &v155 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD0, &qword_21E14CF60);
  MEMORY[0x28223BE20](v31 - 8);
  v172 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v178 = &v155 - v34;
  v35 = type metadata accessor for EmptyResultsView(0);
  v36 = *(a1 + *(v35 + 32) + 8);
  v167 = v35;
  if (v36)
  {
    v161 = v19;

    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141634();
    sub_21E140084();

    sub_21E1400A4();
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    v37 = sub_21E140C64();
    v39 = v38;
    v159 = v14;
    v41 = v40;
    v42 = [objc_opt_self() defaultMetrics];
    v160 = v16;
    v43 = v42;
    [v42 scaledValueForValue_];

    v44 = sub_21E1409D4();
    (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
    sub_21E140A24();
    v158 = v12;
    sub_21DF23614(v22, &unk_27CEAD410, &qword_21E146960);
    v157 = sub_21E140C44();
    v46 = v45;
    v47 = a1;
    v49 = v48;
    v51 = v50;

    sub_21DF3DE8C(v37, v39, v41 & 1);

    KeyPath = swift_getKeyPath();
    sub_21E141CD4();
    sub_21E13FCE4();
    *&v179[55] = v198;
    *&v179[71] = v199;
    *&v179[87] = v200;
    *&v179[103] = v201;
    *&v179[7] = v195;
    *&v179[23] = v196;
    v53 = v47;
    v194 = v49 & 1;
    *&v179[39] = v197;
    v54 = swift_getKeyPath();
    *&v190 = v157;
    *(&v190 + 1) = v46;
    LOBYTE(v191) = v49 & 1;
    *(&v191 + 1) = v51;
    v55 = v167;
    *&v192[0] = KeyPath;
    BYTE8(v192[0]) = 0;
    *(&v192[4] + 9) = *&v179[64];
    *(&v192[5] + 9) = *&v179[80];
    *(&v192[6] + 9) = *&v179[96];
    *(v192 + 9) = *v179;
    *(&v192[1] + 9) = *&v179[16];
    *(&v192[2] + 9) = *&v179[32];
    *(&v192[3] + 9) = *&v179[48];
    *(&v192[7] + 1) = *&v179[111];
    *&v192[8] = v54;
    BYTE8(v192[8]) = 0;
    v188 = v192[6];
    v189[0] = v192[7];
    *(v189 + 9) = *(&v192[7] + 9);
    v184 = v192[2];
    v185 = v192[3];
    v186 = v192[4];
    v187 = v192[5];
    v180 = v190;
    v181 = v191;
    v182 = v192[0];
    v183 = v192[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD8, &qword_21E14CF98);
    sub_21DFF5CD4();
    v56 = v162;
    _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
    sub_21DF23614(&v190, &qword_27CEA9FD8, &qword_21E14CF98);
    v57 = v158;
    v58 = &v158[*(v163 + 36)];
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288, &qword_21E14AC50) + 28);
    v60 = *MEMORY[0x277CE1050];
    v61 = sub_21E141654();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    (*(v165 + 32))(v57, v56, v166);
    LOBYTE(v60) = sub_21E140914();
    v62 = v159;
    sub_21DF3DE9C(v57, v159, &qword_27CEA9FA0, &qword_21E14CF28);
    v63 = v62;
    v64 = v62 + *(v164 + 36);
    *v64 = v60;
    *(v64 + 8) = xmmword_21E14CDC0;
    *(v64 + 24) = xmmword_21E14CDD0;
    *(v64 + 40) = 0;
    v65 = sub_21E140934();
    v66 = (v53 + *(v55 + 28));
    v67 = v66[1];
    v166 = *v66;
    v68 = v166 & 0xFFFFFFFFFFFFLL;

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    if (!v67)
    {
      v68 = 0;
    }

    if ((v69 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v69) & 0xF;
    }

    else
    {
      v70 = v68;
    }

    v71 = v160;
    v72 = v178;
    if (v70 && qword_280F69E50 != -1)
    {
      swift_once();
    }

    sub_21E13F374();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_21DF3DE9C(v63, v71, &qword_27CEA9FA8, &qword_21E14CF30);
    v81 = v71 + *(v169 + 36);
    *v81 = v65;
    *(v81 + 8) = v74;
    *(v81 + 16) = v76;
    *(v81 + 24) = v78;
    *(v81 + 32) = v80;
    *(v81 + 40) = 0;
    v82 = &qword_27CEA9FB0;
    v83 = &unk_21E14CF38;
    v84 = v161;
    sub_21DF3DE9C(v71, v161, &qword_27CEA9FB0, &unk_21E14CF38);
    sub_21DF236C0(v84, v171, &qword_27CEA9FB0, &unk_21E14CF38);
    swift_storeEnumTagMultiPayload();
    sub_21DFF5E18();
    sub_21DFF6024();
    v85 = v72;
  }

  else
  {
    v86 = (a1 + *(v35 + 24));
    v87 = v86[1];
    *&v190 = *v86;
    *(&v190 + 1) = v87;
    sub_21DF252E0();

    v88 = sub_21E140C94();
    v164 = a1;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = [objc_opt_self() defaultMetrics];
    [v94 scaledValueForValue_];

    v95 = sub_21E1409D4();
    (*(*(v95 - 8) + 56))(v22, 1, 1, v95);
    sub_21E140A24();
    sub_21DF23614(v22, &unk_27CEAD410, &qword_21E146960);
    v96 = sub_21E140C44();
    v98 = v97;
    LOBYTE(v94) = v99;
    v101 = v100;

    sub_21DF3DE8C(v89, v91, v93 & 1);

    v102 = swift_getKeyPath();
    sub_21E141CD4();
    sub_21E13FCE4();
    *&v193[55] = v198;
    *&v193[71] = v199;
    *&v193[87] = v200;
    *&v193[103] = v201;
    *&v193[7] = v195;
    *&v193[23] = v196;
    LOBYTE(v94) = v94 & 1;
    v194 = v94;
    *&v193[39] = v197;
    v103 = swift_getKeyPath();
    *&v190 = v96;
    *(&v190 + 1) = v98;
    v104 = v167;
    LOBYTE(v191) = v94;
    *(&v191 + 1) = v101;
    *&v192[0] = v102;
    BYTE8(v192[0]) = 0;
    *(&v192[4] + 9) = *&v193[64];
    *(&v192[5] + 9) = *&v193[80];
    *(&v192[6] + 9) = *&v193[96];
    *(v192 + 9) = *v193;
    *(&v192[1] + 9) = *&v193[16];
    *(&v192[2] + 9) = *&v193[32];
    *(&v192[3] + 9) = *&v193[48];
    *(&v192[7] + 1) = *&v193[111];
    *&v192[8] = v103;
    BYTE8(v192[8]) = 0;
    v188 = v192[6];
    v189[0] = v192[7];
    *(v189 + 9) = *(&v192[7] + 9);
    v184 = v192[2];
    v185 = v192[3];
    v186 = v192[4];
    v187 = v192[5];
    v180 = v190;
    v181 = v191;
    v182 = v192[0];
    v183 = v192[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9FD8, &qword_21E14CF98);
    sub_21DFF5CD4();
    v105 = v161;
    _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
    sub_21DF23614(&v190, &qword_27CEA9FD8, &qword_21E14CF98);
    LOBYTE(v102) = sub_21E140914();
    v106 = v157;
    (*(v165 + 32))(v157, v105, v166);
    v107 = v106;
    v108 = &v106[*(v159 + 9)];
    *v108 = v102;
    *(v108 + 8) = xmmword_21E14CDC0;
    *(v108 + 24) = xmmword_21E14CDD0;
    v108[40] = 0;
    v109 = sub_21E140934();
    v110 = (v164 + *(v104 + 28));
    v111 = *v110;
    v67 = v110[1];
    v166 = *v110;
    if (v67)
    {
      v112 = v111 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v112 = 0;
    }

    if (v67)
    {
      v113 = v67;
    }

    else
    {
      v113 = 0xE000000000000000;
    }

    v114 = HIBYTE(v113) & 0xF;
    if ((v113 & 0x2000000000000000) == 0)
    {
      v114 = v112;
    }

    v85 = v178;
    v84 = v158;
    v115 = v160;
    if (v114 && qword_280F69E50 != -1)
    {
      swift_once();
    }

    sub_21E13F374();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    sub_21DF3DE9C(v107, v115, &qword_27CEA9FC0, &qword_21E14CF50);
    v124 = v115 + *(v168 + 36);
    *v124 = v109;
    *(v124 + 8) = v117;
    *(v124 + 16) = v119;
    *(v124 + 24) = v121;
    *(v124 + 32) = v123;
    *(v124 + 40) = 0;
    v82 = &qword_27CEA9FC8;
    v83 = &qword_21E14CF58;
    sub_21DF3DE9C(v115, v84, &qword_27CEA9FC8, &qword_21E14CF58);
    sub_21DF236C0(v84, v171, &qword_27CEA9FC8, &qword_21E14CF58);
    swift_storeEnumTagMultiPayload();
    sub_21DFF5E18();
    sub_21DFF6024();
  }

  sub_21E1402F4();
  sub_21DF23614(v84, v82, v83);
  v126 = v174;
  v125 = v175;
  if (!v67)
  {
    goto LABEL_34;
  }

  v127 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v127 = v166 & 0xFFFFFFFFFFFFLL;
  }

  if (v127)
  {
    if (qword_280F69E50 != -1)
    {
      swift_once();
    }

    v128 = 1;
    if (byte_280F6FD20 == 1)
    {
      v129 = sub_21E1401D4();
      v130 = v156;
      *v156 = v129;
      v130[1] = 0x4010000000000000;
      *(v130 + 16) = 0;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA028, &qword_21E14CFB8);
      sub_21DFF506C(v166, v67, v130 + *(v131 + 44));
      v132 = sub_21E140914();
      v133 = v130 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA030, &qword_21E14CFC0) + 36);
      *v133 = v132;
      *(v133 + 8) = 0u;
      *(v133 + 24) = 0u;
      v133[40] = 1;
      v134 = [objc_opt_self() tertiarySystemFillColor];
      v135 = sub_21E141414();
      v136 = (v130 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA038, &qword_21E14CFC8) + 36));
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8660, &qword_21E14CFD0);
      v138 = v136 + *(v137 + 52);
      v139 = *(sub_21E13FCA4() + 20);
      v140 = *MEMORY[0x277CE0118];
      v141 = sub_21E140144();
      (*(*(v141 - 8) + 104))(&v138[v139], v140, v141);
      __asm { FMOV            V0.2D, #20.0 }

      *v138 = _Q0;
      *v136 = v135;
      *(v136 + *(v137 + 56)) = 256;
      v147 = sub_21E140914();
      v148 = v130 + *(v126 + 36);
      *v148 = v147;
      *(v148 + 8) = xmmword_21E14CDE0;
      *(v148 + 24) = xmmword_21E14CDE0;
      v148[40] = 0;
      v149 = v130;
      v85 = v178;
      sub_21DF3DE9C(v149, v125, &qword_27CEA9F88, &qword_21E14CF10);
      v128 = 0;
    }
  }

  else
  {
LABEL_34:
    v128 = 1;
  }

  (*(v173 + 56))(v125, v128, 1, v126);
  v150 = v172;
  sub_21DF236C0(v85, v172, &qword_27CEA9FD0, &qword_21E14CF60);
  v151 = v176;
  sub_21DF236C0(v125, v176, &qword_27CEA9F90, &qword_21E14CF18);
  v152 = v177;
  sub_21DF236C0(v150, v177, &qword_27CEA9FD0, &qword_21E14CF60);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA020, &qword_21E14CFB0);
  sub_21DF236C0(v151, v152 + *(v153 + 48), &qword_27CEA9F90, &qword_21E14CF18);
  sub_21DF23614(v125, &qword_27CEA9F90, &qword_21E14CF18);
  sub_21DF23614(v85, &qword_27CEA9FD0, &qword_21E14CF60);
  sub_21DF23614(v151, &qword_27CEA9F90, &qword_21E14CF18);
  return sub_21DF23614(v150, &qword_27CEA9FD0, &qword_21E14CF60);
}

uint64_t sub_21DFF506C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v78 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA040, &qword_21E14D008);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA048, &qword_21E14D010);
  v67[1] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA050, &qword_21E14D018);
  MEMORY[0x28223BE20](v70);
  v14 = v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA058, &qword_21E14D020);
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v68 = v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA060, &qword_21E14D028);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = v67 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = v67 - v23;
  v24 = &v12[*(v10 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA068, &qword_21E14D030) + 28);
  v26 = *MEMORY[0x277CE0B48];
  v27 = sub_21E140C34();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v24 + v25, v26, v27);
  (*(v28 + 56))(v24 + v25, 0, 1, v27);
  *v24 = swift_getKeyPath();
  *v12 = xmmword_21E14CDF0;
  v12[16] = 0;
  *(v12 + 3) = MEMORY[0x277D84F90];
  v29 = *MEMORY[0x277CE09A0];
  v30 = sub_21E1409D4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v9, v29, v30);
  (*(v31 + 56))(v9, 0, 1, v30);
  sub_21DFF6178();
  sub_21E140D74();
  sub_21DF23614(v9, &unk_27CEAD410, &qword_21E146960);
  sub_21DF23614(v12, &qword_27CEAA048, &qword_21E14D010);
  sub_21E140A84();
  sub_21E140A04();
  v32 = sub_21E140A54();

  KeyPath = swift_getKeyPath();
  v34 = &v14[*(v70 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_21DFF6230();
  v35 = v68;
  _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
  sub_21DF23614(v14, &qword_27CEAA050, &qword_21E14D018);
  sub_21E141CD4();
  sub_21E13FCE4();
  v36 = v69;
  (*(v71 + 32))(v69, v35, v72);
  v37 = (v36 + *(v18 + 44));
  v38 = v103;
  v37[4] = v102;
  v37[5] = v38;
  v37[6] = v104;
  v39 = v99;
  *v37 = v98;
  v37[1] = v39;
  v40 = v101;
  v37[2] = v100;
  v37[3] = v40;
  sub_21DF3DE9C(v36, v80, &qword_27CEAA060, &qword_21E14D028);
  v91 = v73;
  sub_21DF252E0();

  v41 = sub_21E140C94();
  v43 = v42;
  LOBYTE(v18) = v44;
  sub_21E140994();
  v45 = sub_21E140C44();
  v47 = v46;
  LOBYTE(v9) = v48;

  sub_21DF3DE8C(v41, v43, v18 & 1);

  v49 = [objc_opt_self() secondaryLabelColor];
  *&v91 = sub_21E141414();
  v50 = sub_21E140C24();
  v52 = v51;
  LOBYTE(v35) = v53;
  v55 = v54;
  sub_21DF3DE8C(v45, v47, v9 & 1);

  v56 = swift_getKeyPath();
  sub_21E141CD4();
  sub_21E13FCE4();
  *&v95[55] = v108;
  *&v95[103] = v111;
  *&v94[7] = *(&v111 + 1);
  *&v95[71] = v109;
  *&v95[87] = v110;
  *&v95[7] = v105;
  *&v95[23] = v106;
  *&v95[39] = v107;
  *(&v94[2] + 1) = *&v95[32];
  *(&v94[1] + 1) = *&v95[16];
  *(v94 + 1) = *v95;
  *(&v94[6] + 1) = *&v95[96];
  *(&v94[5] + 1) = *&v95[80];
  v97 = v35 & 1;
  v96 = 0;
  *&v91 = v50;
  *(&v91 + 1) = v52;
  LOBYTE(v92) = v35 & 1;
  *(&v92 + 1) = v55;
  *&v93 = v56;
  *(&v93 + 1) = 5;
  LOBYTE(v94[0]) = 0;
  *(&v94[4] + 1) = *&v95[64];
  *(&v94[3] + 1) = *&v95[48];
  WORD4(v94[7]) = 256;
  v89 = v94[5];
  v90[0] = v94[6];
  *(v90 + 10) = *(&v94[6] + 10);
  v85 = v94[1];
  v86 = v94[2];
  v87 = v94[3];
  v88 = v94[4];
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = v94[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9560, &unk_21E14D0D0);
  sub_21DFD4B74();
  v57 = v79;
  _s7SwiftUI4ViewP018VisualIntelligenceB0E32smartDialogAnimatableIfAvailableQryF_0();
  sub_21DF23614(&v91, &qword_27CEA9560, &unk_21E14D0D0);
  v58 = v74;
  sub_21DF236C0(v80, v74, &qword_27CEAA060, &qword_21E14D028);
  v60 = v75;
  v59 = v76;
  v61 = *(v76 + 16);
  v62 = v77;
  v61(v75, v57, v77);
  v63 = v78;
  sub_21DF236C0(v58, v78, &qword_27CEAA060, &qword_21E14D028);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA088, &qword_21E14D0F0);
  v61((v63 + *(v64 + 48)), v60, v62);
  v65 = *(v59 + 8);
  v65(v79, v62);
  sub_21DF23614(v80, &qword_27CEAA060, &qword_21E14D028);
  v65(v60, v62);
  return sub_21DF23614(v58, &qword_27CEAA060, &qword_21E14D028);
}

uint64_t sub_21DFF59A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E1418F4();
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_21E141CC4();
  a1[1] = v4;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F38, &qword_21E14CE38) + 44);
  *v5 = sub_21E1401C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F40, &qword_21E14CE40);
  sub_21DFF3DAC(v1, &v5[*(v6 + 44)]);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F48, &qword_21E14CE48) + 36);
  sub_21E1418E4();
  sub_21E141FA4();
  v8 = *(type metadata accessor for ContainerSmartDialogViewModifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F50, &qword_21E14CE50);
  swift_allocObject();
  result = sub_21E13F294();
  *&v7[v8] = result;
  return result;
}

void sub_21DFF5B28(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    sub_21DFE0CEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFF5BC4()
{
  result = qword_27CEA9F68;
  if (!qword_27CEA9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9F48, &qword_21E14CE48);
    sub_21DF23E5C(&qword_27CEA9F70, &qword_27CEA9F78, &qword_21E14CF08, MEMORY[0x277CE11A8]);
    sub_21DFF5C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9F68);
  }

  return result;
}

unint64_t sub_21DFF5C7C()
{
  result = qword_27CEA9F80;
  if (!qword_27CEA9F80)
  {
    type metadata accessor for ContainerSmartDialogViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9F80);
  }

  return result;
}

unint64_t sub_21DFF5CD4()
{
  result = qword_27CEA9FE0;
  if (!qword_27CEA9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8, &qword_21E14CF98);
    sub_21DFF5D8C();
    sub_21DF23E5C(&qword_280F68DD8, &qword_27CEA73A0, &qword_21E149CB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FE0);
  }

  return result;
}

unint64_t sub_21DFF5D8C()
{
  result = qword_27CEA9FE8;
  if (!qword_27CEA9FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FF0, &unk_21E14CFA0);
    sub_21DFB8A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FE8);
  }

  return result;
}

unint64_t sub_21DFF5E18()
{
  result = qword_27CEA9FF8;
  if (!qword_27CEA9FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FB0, &unk_21E14CF38);
    sub_21DFF5EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9FF8);
  }

  return result;
}

unint64_t sub_21DFF5EA4()
{
  result = qword_27CEAA000;
  if (!qword_27CEAA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FA8, &qword_21E14CF30);
    sub_21DFF5F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA000);
  }

  return result;
}

unint64_t sub_21DFF5F30()
{
  result = qword_27CEAA008;
  if (!qword_27CEAA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FA0, &qword_21E14CF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8, &qword_21E14CF98);
    sub_21DFF5CD4();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288, &qword_21E14AC50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA008);
  }

  return result;
}

unint64_t sub_21DFF6024()
{
  result = qword_27CEAA010;
  if (!qword_27CEAA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FC8, &qword_21E14CF58);
    sub_21DFF60B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA010);
  }

  return result;
}

unint64_t sub_21DFF60B0()
{
  result = qword_27CEAA018;
  if (!qword_27CEAA018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FC0, &qword_21E14CF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9FD8, &qword_21E14CF98);
    sub_21DFF5CD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA018);
  }

  return result;
}

unint64_t sub_21DFF6178()
{
  result = qword_27CEAA070;
  if (!qword_27CEAA070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA048, &qword_21E14D010);
    sub_21DF23E5C(&qword_27CEAA078, &qword_27CEAA068, &qword_21E14D030, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA070);
  }

  return result;
}

unint64_t sub_21DFF6230()
{
  result = qword_27CEAA080;
  if (!qword_27CEAA080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA050, &qword_21E14D018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA048, &qword_21E14D010);
    sub_21DFF6178();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAA080);
  }

  return result;
}

unint64_t sub_21DFF6324()
{
  result = qword_27CEA9570;
  if (!qword_27CEA9570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9578, &qword_21E14B1B0);
    sub_21DFB8B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9570);
  }

  return result;
}

uint64_t sub_21DFF63B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_21E142724();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_21DFF641C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21E1405B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_21E13F374();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_21E1405A4();
  MEMORY[0x223D51B40](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t MorphingContainerMode.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21DFF65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E001854();

  return MEMORY[0x2821309F8](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21E001854();

  return MEMORY[0x282130A00](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_21DFF66E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA3F8, &qword_21E14D778);
  sub_21DF23E5C(&qword_27CEAA400, &qword_27CEAA3F8, &qword_21E14D778, MEMORY[0x277CE04B0]);
  return sub_21E140F44();
}

float sub_21DFF67B0@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

float sub_21DFF67C4(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_21DFF67F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a3;
  swift_getWitnessTable();
  sub_21E140464();
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA368, &qword_21E14D588);
  v6 = v5;
  v7 = sub_21E13FB54();
  v8 = *(a2 + 24);
  v42 = *(v8 + 16);
  v43 = sub_21DF23E5C(&qword_27CEAA370, &qword_27CEAA368, &qword_21E14D588, MEMORY[0x277CDFB08]);
  v32 = MEMORY[0x277CDFAD8];
  v28 = v7;
  WitnessTable = swift_getWitnessTable();
  v30 = sub_21E1402D4();
  v9 = sub_21E13FB54();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v26[2] = v6;
  v26[3] = v8;
  v12 = v8;
  v31 = sub_21E13F534();
  v13 = sub_21E13FB54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v35 = v6;
  v36 = v12;
  v37 = v3;
  sub_21E141CC4();
  v20 = swift_getWitnessTable();
  sub_21E140D44();
  v21 = swift_getWitnessTable();
  v40 = v20;
  v41 = v21;
  v22 = swift_getWitnessTable();
  sub_21E141394();
  (*(v27 + 8))(v11, v9);
  v23 = swift_getWitnessTable();
  v38 = v22;
  v39 = v23;
  swift_getWitnessTable();
  sub_21DFE2A0C();
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_21DFE2A0C();
  return (v24)(v19, v13);
}

uint64_t sub_21DFF6BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA368, &qword_21E14D588);
  v7 = sub_21E13FB54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA378, &qword_21E14D590);
  v14 = *(a3 + 16);
  sub_21E0013BC();
  sub_21E140F14();
  v15 = sub_21DF23E5C(&qword_27CEAA370, &qword_27CEAA368, &qword_21E14D588, MEMORY[0x277CDFB08]);
  v18[8] = v14;
  v18[9] = v15;
  swift_getWitnessTable();
  sub_21DFE2A0C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_21DFE2A0C();
  return (v16)(v13, v7);
}

void sub_21DFF6DD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for InterpolatingBackgroundMaterial(0, a2, a3, a5);
  sub_21DFF6E80(v7, &v13);
  v8 = v14;
  v12 = v13;
  v9 = qword_21E14D820[*(a1 + *(v7 + 36))];
  v10 = sub_21DFF6EEC(v7);
  v11 = sub_21DFF6F04(v7);
  *a4 = v12;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = 1;
}

float sub_21DFF6E80@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  result = flt_21E14D794[v3];
  v5 = dword_21E14D7B0[v3];
  v6 = dword_21E14D7CC[v3];
  v7 = dword_21E14D7E8[v3];
  *a2 = dword_21E14D804[v3];
  *(a2 + 4) = v7;
  *(a2 + 8) = v6;
  *(a2 + 12) = v5;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_21DFF6F1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for InterpolatingBackgroundMaterial(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21DFF6F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_21E13FF94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21DF491DC(v2 + *(a1 + 72), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21E13F444();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_21E142574();
    v14 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21DFF718C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78, &qword_21E1461C0);
  sub_21E141714();
  return v2;
}

uint64_t sub_21DFF7250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
  sub_21E140514();
  return v1;
}

uint64_t sub_21DFF72A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
  sub_21E140514();
  return v1;
}

uint64_t MorphingContainer.init(mode:showLatencyEffects:showRestingEffects:showContentEffects:ViewBuilder:platterContent:)@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X6>, _BYTE *a7@<X8>, __int128 a8, uint64_t a9, uint64_t a10)
{
  v15 = *a1;
  a7[3] = 0;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v16 = type metadata accessor for MorphingContainer(0, &v26);
  v17 = v16[18];
  *&a7[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v18 = &a7[v16[19]];
  v29 = 0;
  sub_21E141704();
  v19 = *(&v26 + 1);
  *v18 = v26;
  *(v18 + 1) = v19;
  v20 = &a7[v16[20]];
  v29 = 0;
  sub_21E141704();
  v21 = *(&v26 + 1);
  *v20 = v26;
  *(v20 + 1) = v21;
  sub_21E140524();
  v22 = sub_21E140524();
  a7[3] = v15;
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  v23 = a5(v22);
  return a6(v23);
}

uint64_t MorphingContainer.init<>(showLatencyEffects:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + 3) = 0;
  v16 = MEMORY[0x277CE1428];
  v17 = a3;
  v18 = MEMORY[0x277CE1410];
  v19 = a4;
  v8 = type metadata accessor for MorphingContainer(0, &v16);
  v9 = v8[18];
  *(a5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v10 = a5 + v8[19];
  v20 = 0;
  sub_21E141704();
  v11 = v17;
  *v10 = v16;
  *(v10 + 8) = v11;
  v12 = a5 + v8[20];
  v20 = 0;
  sub_21E141704();
  v13 = v17;
  *v12 = v16;
  *(v12 + 8) = v13;
  sub_21E140524();
  v14 = sub_21E140524();
  *(a5 + 3) = 2;
  *a5 = a1;
  *(a5 + 1) = 256;
  return a2(v14);
}

uint64_t MorphingContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v218 = a2;
  v3 = sub_21E13FD34();
  v216 = *(v3 - 8);
  v217 = v3;
  MEMORY[0x28223BE20](v3);
  v215 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = *(a1 - 8);
  MEMORY[0x28223BE20](v5);
  v229 = v6;
  v213 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA090, &qword_21E14D178);
  MEMORY[0x28223BE20](v212);
  v211 = &v158 - v7;
  v8 = sub_21E1418F4();
  v208 = *(v8 - 8);
  v209 = v8;
  MEMORY[0x28223BE20](v8);
  v207 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v231);
  v210 = (&v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v230 = (&v158 - v12);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA098, &unk_21E14D180);
  MEMORY[0x28223BE20](v228);
  v206 = (&v158 - v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8, &qword_21E14ED20);
  v232 = a1;
  *&v234 = *(a1 + 16);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v14 = sub_21E13FB54();
  v219 = *(a1 + 32);
  v15 = v219;
  v16 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
  v297 = v15;
  v298 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v295 = WitnessTable;
  v296 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_21DFFCB98();
  v291 = v14;
  v292 = &type metadata for PillLabelStyle;
  v293 = v19;
  v294 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_21E13FB54();
  v291 = v14;
  v292 = &type metadata for PillLabelStyle;
  v293 = v19;
  v294 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v290 = MEMORY[0x277CDF900];
  v22 = swift_getWitnessTable();
  v291 = v21;
  v292 = v22;
  *&v235 = MEMORY[0x277CDEAF8];
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  sub_21E13FB54();
  sub_21E1415E4();
  sub_21E13FB54();
  v23 = sub_21E13FB54();
  sub_21E1404C4();
  v226 = sub_21E13FB54();
  v227 = sub_21E13FB54();
  v291 = v21;
  v292 = v22;
  v287 = swift_getOpaqueTypeConformance2();
  v288 = MEMORY[0x277CE0790];
  v24 = swift_getWitnessTable();
  v25 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier, &unk_21E152508);
  v285 = v24;
  v286 = v25;
  v284 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x277CDF918];
  v282 = v26;
  v283 = MEMORY[0x277CDF918];
  v280 = swift_getWitnessTable();
  v281 = v27;
  v28 = swift_getWitnessTable();
  v278 = swift_getWitnessTable();
  v279 = MEMORY[0x277CDF4D0];
  v276 = swift_getWitnessTable();
  v277 = MEMORY[0x277CDF690];
  v29 = v227;
  v30 = swift_getWitnessTable();
  v291 = v23;
  v292 = v29;
  v293 = v28;
  v294 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_21E1407F4();
  v227 = sub_21E13FB54();
  v31 = v232;
  v188 = *(v232 + 24);
  sub_21E1405B4();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848, &unk_21E144B30);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0B0, &qword_21E14D190);
  sub_21E13FB54();
  sub_21E13FB54();
  v32 = sub_21E13FB54();
  v33 = *(v31 + 40);
  v173 = v33;
  v34 = sub_21E0008C8(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v274 = v33;
  v275 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848, &unk_21E144B30, MEMORY[0x277CE04A0]);
  v272 = v35;
  v273 = v36;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE0328];
  v39 = sub_21DF23E5C(&qword_27CEAA0B8, &qword_27CEAA0B0, &qword_21E14D190, MEMORY[0x277CE0328]);
  v270 = v37;
  v271 = v39;
  v268 = swift_getWitnessTable();
  v269 = MEMORY[0x277CDFC60];
  v266 = swift_getWitnessTable();
  v267 = MEMORY[0x277CE06C0];
  v40 = swift_getWitnessTable();
  v291 = v32;
  v292 = v40;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E142724();
  swift_getTupleTypeMetadata2();
  v169 = sub_21E141DC4();
  v168 = swift_getWitnessTable();
  v220 = sub_21E141944();
  v171 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v167 = &v158 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C0, &qword_21E14D198);
  v222 = sub_21E13FB54();
  v181 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v164 = &v158 - v42;
  v223 = sub_21E13FB54();
  v182 = *(v223 - 1);
  MEMORY[0x28223BE20](v223);
  v178 = &v158 - v43;
  type metadata accessor for BreathingScaleEffectModifier(255);
  v224 = sub_21E13FB54();
  v186 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v183 = &v158 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C8, &unk_21E14D1A0);
  v225 = sub_21E13FB54();
  v189 = *(v225 - 1);
  MEMORY[0x28223BE20](v225);
  v184 = &v158 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F18, &qword_21E14A4C0);
  v46 = sub_21E13FB54();
  v191 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v190 = &v158 - v47;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D0, &qword_21E14D1B0);
  v48 = sub_21E13FB54();
  v194 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v193 = &v158 - v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D8, &qword_21E14D1B8);
  v50 = sub_21E13FB54();
  v197 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v196 = &v158 - v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E0, &qword_21E14D1C0);
  v52 = sub_21E13FB54();
  v200 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v199 = &v158 - v53;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E8, &qword_21E14D1C8);
  v54 = sub_21E13FB54();
  v202 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v226 = &v158 - v55;
  v56 = sub_21E13FB54();
  v204 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v227 = (&v158 - v57);
  v58 = swift_getWitnessTable();
  v158 = v58;
  v59 = sub_21DF23E5C(&qword_27CEAA0F0, &qword_27CEAA0C0, &qword_21E14D198, v38);
  v264 = v58;
  v265 = v59;
  v60 = swift_getWitnessTable();
  v61 = sub_21DF23E5C(&qword_27CEAA0F8, &qword_27CEAA098, &unk_21E14D180, &unk_21E1524B8);
  v159 = v60;
  v262 = v60;
  v263 = v61;
  v62 = swift_getWitnessTable();
  v63 = sub_21E0008C8(&qword_27CEAA100, type metadata accessor for BreathingScaleEffectModifier, &unk_21E152468);
  v160 = v62;
  v260 = v62;
  v261 = v63;
  v64 = swift_getWitnessTable();
  v65 = sub_21DF23E5C(&qword_27CEAA108, &qword_27CEAA0C8, &unk_21E14D1A0, MEMORY[0x277CE0698]);
  v161 = v64;
  v258 = v64;
  v259 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18, &qword_21E14A4C0, MEMORY[0x277CDF4F0]);
  v162 = v66;
  v256 = v66;
  v257 = v67;
  v192 = v46;
  v68 = swift_getWitnessTable();
  v69 = sub_21DF23E5C(&qword_27CEAA110, &qword_27CEAA0D0, &qword_21E14D1B0, MEMORY[0x277CDFC88]);
  v163 = v68;
  v254 = v68;
  v255 = v69;
  v195 = v48;
  v70 = swift_getWitnessTable();
  v71 = sub_21DF23E5C(&qword_27CEAA118, &qword_27CEAA0D8, &qword_21E14D1B8, MEMORY[0x277CE01A0]);
  v165 = v70;
  v252 = v70;
  v253 = v71;
  v198 = v50;
  v72 = swift_getWitnessTable();
  v73 = sub_21DF23E5C(&qword_27CEAA120, &qword_27CEAA0E0, &qword_21E14D1C0, v38);
  v166 = v72;
  v250 = v72;
  v251 = v73;
  v201 = v52;
  v74 = swift_getWitnessTable();
  v75 = sub_21DF23E5C(&qword_27CEAA128, &qword_27CEAA0E8, &qword_21E14D1C8, v38);
  v170 = v74;
  v248 = v74;
  v249 = v75;
  v203 = v54;
  v172 = swift_getWitnessTable();
  v246 = v172;
  v247 = MEMORY[0x277CE0790];
  v76 = swift_getWitnessTable();
  v77 = sub_21DFFCBEC();
  v205 = v56;
  v291 = v56;
  v292 = &type metadata for MorphingContainerMode;
  v174 = v76;
  v293 = v76;
  v294 = v77;
  v221 = v77;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v175 = &v158 - v79;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA138, &qword_21E14D1D0);
  v180 = OpaqueTypeMetadata2;
  v187 = sub_21E13FB54();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v176 = &v158 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v179 = &v158 - v82;
  v83 = sub_21E13F444();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v86 = &v158 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v89 = &v158 - v88;
  v90 = v233;
  sub_21DFF6F9C(v232, (&v158 - v88));
  (*(v84 + 104))(v86, *MEMORY[0x277CDF3C0], v83);
  LOBYTE(v38) = sub_21E13F434();
  v91 = *(v84 + 8);
  v91(v86, v83);
  v91(v89, v83);
  v92 = v164;
  *&v93 = v234;
  *(&v93 + 1) = v188;
  *&v94 = v219;
  *(&v94 + 1) = v173;
  v234 = v94;
  v235 = v93;
  v239 = v93;
  v240 = v94;
  v95 = v90;
  v241 = v90;
  LODWORD(v219) = v38 & 1;
  v242 = v38 & 1;
  sub_21E141CC4();
  v96 = v167;
  sub_21E141934();
  v236 = v235;
  v237 = v234;
  v238 = v90;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA140, &qword_21E14D1D8);
  sub_21DFFCC70();
  v97 = v220;
  sub_21E140D44();
  (*(v171 + 8))(v96, v97);
  v98 = v90;
  v99 = *v90 == 1 && v90[3] == 0;
  v100 = v228;
  v101 = v206;
  sub_21DFFC77C((v206 + v228[10]));
  *v101 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  *(v101 + v100[9]) = v99;
  *(v101 + v100[11]) = 0x4002A9FBE76C8B44;
  v102 = v101 + v100[12];
  v245 = 0;
  sub_21E141704();
  v103 = v292;
  *v102 = v291;
  *(v102 + 1) = v103;
  v104 = v178;
  v105 = v222;
  MEMORY[0x223D51B40](v101, v222, v100, v159);
  sub_21DF23614(v101, &qword_27CEAA098, &unk_21E14D180);
  (*(v181 + 8))(v92, v105);
  v106 = 0;
  if (*v95 == 1)
  {
    v106 = v95[3] == 0;
  }

  v107 = v183;
  v108 = v223;
  sub_21E079D44(v106, v223, v160, 2.333);
  (*(v182 + 8))(v104, v108);
  v109 = v230;
  sub_21DFFC77C(v230);
  v110 = MEMORY[0x277CDFC08];
  sub_21E0008C8(&qword_27CEAA170, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  v111 = v184;
  v112 = v224;
  sub_21E140F24();
  v113 = MEMORY[0x277CDFC08];
  v228 = MEMORY[0x277CDFC08];
  sub_21E000650(v109, MEMORY[0x277CDFC08]);
  (*(v186 + 8))(v107, v112);
  sub_21DFFC77C(v109);
  v224 = sub_21E0008C8(&qword_27CEAA178, v110, MEMORY[0x277CDFBF8]);
  v114 = v190;
  v115 = v225;
  sub_21E141394();
  sub_21E000650(v109, v113);
  v116 = (*(v189 + 8))(v111, v115);
  MEMORY[0x28223BE20](v116);
  v117 = v234;
  *(&v158 - 3) = v235;
  *(&v158 - 2) = v117;
  *(&v158 - 2) = v98;
  *(&v158 - 8) = v219;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA180, &qword_21E14D1F0);
  sub_21DFFD1D4(&qword_27CEAA188, &qword_27CEAA180, &qword_21E14D1F0, sub_21DFFCE50);
  v118 = v192;
  v119 = v193;
  sub_21E1412D4();
  (*(v191 + 8))(v114, v118);
  v120 = v207;
  sub_21E1418E4();
  MEMORY[0x223D52590](v120, 0.0);
  (*(v208 + 8))(v120, v209);
  sub_21E141D14();

  v121 = v233;
  LOBYTE(v291) = v233[3];
  v122 = v195;
  v123 = v196;
  sub_21E141384();

  v124 = (*(v194 + 8))(v119, v122);
  MEMORY[0x28223BE20](v124);
  v125 = v234;
  *(&v158 - 3) = v235;
  *(&v158 - 2) = v125;
  *(&v158 - 2) = v121;
  sub_21E141CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA1C8, &unk_21E14D210);
  sub_21DFFD1D4(&qword_27CEAA1D0, &qword_27CEAA1C8, &unk_21E14D210, sub_21DFFCF08);
  v126 = v198;
  v127 = v199;
  sub_21E140D44();
  (*(v197 + 8))(v123, v126);
  v128 = v210;
  sub_21DFFC77C(v210);
  sub_21E141484();
  v129 = sub_21E141514();

  v130 = v211;
  sub_21DFFD288(v128, v211);
  v131 = v130 + *(v212 + 36);
  *v131 = v129;
  *(v131 + 8) = xmmword_21E14D120;
  *(v131 + 24) = 0x4020000000000000;
  sub_21E141CC4();
  sub_21DF23E5C(&qword_27CEAA1D8, &qword_27CEAA090, &qword_21E14D178, MEMORY[0x277CDD7B8]);
  v132 = v201;
  sub_21E140D64();
  sub_21DF23614(v130, &qword_27CEAA090, &qword_21E14D178);
  (*(v200 + 8))(v127, v132);
  v133 = v213;
  v134 = v214;
  v225 = *(v214 + 16);
  v135 = v232;
  (v225)(v213, v233, v232);
  v136 = (*(v134 + 80) + 48) & ~*(v134 + 80);
  v137 = swift_allocObject();
  v138 = v234;
  *(v137 + 16) = v235;
  *(v137 + 32) = v138;
  v223 = *(v134 + 32);
  (v223)(v137 + v136, v133, v135);
  v139 = v203;
  v140 = v226;
  sub_21E141314();

  (*(v202 + 8))(v140, v139);
  LOBYTE(v291) = v233[3];
  (v225)(v133);
  v141 = swift_allocObject();
  v142 = v234;
  *(v141 + 16) = v235;
  *(v141 + 32) = v142;
  (v223)(v141 + v136, v133, v135);
  v144 = v174;
  v143 = v175;
  v145 = v205;
  v146 = v221;
  v147 = v227;
  sub_21E141324();

  (*(v204 + 8))(v147, v145);
  v148 = v215;
  sub_21E13FD24();
  v149 = v230;
  sub_21DFFC77C(v230);
  v291 = v145;
  v292 = &type metadata for MorphingContainerMode;
  v293 = v144;
  v294 = v146;
  v150 = swift_getOpaqueTypeConformance2();
  v151 = v176;
  v152 = v180;
  sub_21E140E74();
  sub_21E000650(v149, v228);
  (*(v216 + 8))(v148, v217);
  (*(v177 + 8))(v143, v152);
  v153 = sub_21DF23E5C(qword_27CEAA1E0, &qword_27CEAA138, &qword_21E14D1D0, MEMORY[0x277CE07A8]);
  v243 = v150;
  v244 = v153;
  v154 = v187;
  swift_getWitnessTable();
  v155 = v179;
  sub_21DFE2A0C();
  v156 = *(v185 + 8);
  v156(v151, v154);
  sub_21DFE2A0C();
  return (v156)(v155, v154);
}

uint64_t sub_21DFF94D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v189 = a5;
  v188 = a3;
  v148 = a2;
  v175 = a7;
  v176 = a1;
  v210 = a3;
  v211 = a4;
  v184 = a6;
  v185 = a4;
  v212 = a5;
  v213 = a6;
  v174 = type metadata accessor for MorphingContainer(0, &v210);
  v151 = *(v174 - 8);
  v149 = *(v151 + 64);
  MEMORY[0x28223BE20](v174);
  v150 = v125 - v8;
  sub_21E1405B4();
  v9 = sub_21E13FB54();
  v136 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v132 = v125 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848, &unk_21E144B30);
  v11 = sub_21E13FB54();
  v140 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v138 = v125 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0B0, &qword_21E14D190);
  v13 = sub_21E13FB54();
  v142 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v139 = v125 - v14;
  v15 = sub_21E13FB54();
  v145 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v135 = v125 - v16;
  v17 = sub_21E13FB54();
  v147 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v144 = v125 - v18;
  v19 = sub_21E0008C8(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v209[33] = a6;
  v209[34] = v19;
  v20 = MEMORY[0x277CDFAD8];
  v137 = v9;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848, &unk_21E144B30, MEMORY[0x277CE04A0]);
  v125[0] = WitnessTable;
  v209[31] = WitnessTable;
  v209[32] = v22;
  v141 = v11;
  v23 = swift_getWitnessTable();
  v24 = sub_21DF23E5C(&qword_27CEAA0B8, &qword_27CEAA0B0, &qword_21E14D190, MEMORY[0x277CE0328]);
  v125[1] = v23;
  v209[29] = v23;
  v209[30] = v24;
  v143 = v13;
  v126 = swift_getWitnessTable();
  v209[27] = v126;
  v209[28] = MEMORY[0x277CDFC60];
  v146 = v15;
  v127 = swift_getWitnessTable();
  v209[25] = v127;
  v209[26] = MEMORY[0x277CE06C0];
  v25 = swift_getWitnessTable();
  v186 = v17;
  v210 = v17;
  v211 = v25;
  v183 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v130 = v125 - v27;
  v133 = v28;
  v29 = sub_21E13FB54();
  v168 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v134 = v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v128 = v125 - v32;
  MEMORY[0x28223BE20](v33);
  v129 = v125 - v34;
  v171 = v35;
  v36 = sub_21E142724();
  v172 = *(v36 - 8);
  v173 = v36;
  MEMORY[0x28223BE20](v36);
  v169 = v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v170 = (v125 - v39);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8, &qword_21E14ED20);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v40 = sub_21E13FB54();
  v41 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
  v209[23] = v189;
  v209[24] = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v209[21] = v42;
  v209[22] = v43;
  v179 = v20;
  v44 = swift_getWitnessTable();
  v45 = sub_21DFFCB98();
  v210 = v40;
  v211 = &type metadata for PillLabelStyle;
  v212 = v44;
  v213 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = sub_21E13FB54();
  v210 = v40;
  v211 = &type metadata for PillLabelStyle;
  v212 = v44;
  v213 = v45;
  v209[19] = swift_getOpaqueTypeConformance2();
  v209[20] = MEMORY[0x277CDF900];
  v47 = swift_getWitnessTable();
  v210 = v46;
  v211 = v47;
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  v157 = sub_21E13FB54();
  v48 = sub_21E1415E4();
  v166 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v164 = v125 - v49;
  v50 = sub_21E13FB54();
  v165 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v163 = v125 - v51;
  v159 = v50;
  v178 = sub_21E13FB54();
  v167 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v162 = v125 - v52;
  sub_21E1404C4();
  sub_21E13FB54();
  v177 = sub_21E13FB54();
  v210 = v46;
  v211 = v47;
  v209[17] = swift_getOpaqueTypeConformance2();
  v209[18] = MEMORY[0x277CE0790];
  v53 = swift_getWitnessTable();
  v54 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier, &unk_21E152508);
  v209[15] = v53;
  v209[16] = v54;
  v156 = swift_getWitnessTable();
  v209[14] = v156;
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x277CDF918];
  v209[12] = v55;
  v209[13] = MEMORY[0x277CDF918];
  v158 = swift_getWitnessTable();
  v209[10] = v158;
  v209[11] = v56;
  v57 = v178;
  v58 = swift_getWitnessTable();
  v155 = v58;
  v209[8] = swift_getWitnessTable();
  v209[9] = MEMORY[0x277CDF4D0];
  v209[6] = swift_getWitnessTable();
  v209[7] = MEMORY[0x277CDF690];
  v59 = v177;
  v154 = swift_getWitnessTable();
  v210 = v57;
  v211 = v59;
  v212 = v58;
  v213 = v154;
  v160 = MEMORY[0x277CE0E88];
  v153 = swift_getOpaqueTypeMetadata2();
  v161 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = v125 - v60;
  sub_21E1407F4();
  v182 = sub_21E13FB54();
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = v125 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v187 = v125 - v63;
  v64 = v188;
  v195 = v188;
  v65 = v184;
  v66 = v185;
  v196 = v185;
  v67 = v189;
  v197 = v189;
  v198 = v184;
  v68 = v176;
  v199 = v176;
  v69 = v164;
  sub_21E1415D4();
  sub_21E140904();
  v70 = v163;
  sub_21E1412F4();
  (*(v166 + 8))(v69, v48);
  sub_21E140974();
  v71 = v162;
  v72 = v159;
  sub_21E1412F4();
  (*(v165 + 8))(v70, v72);
  sub_21E141D84();
  v190 = v64;
  v191 = v66;
  v192 = v67;
  v193 = v65;
  v194 = v68;
  v73 = swift_checkMetadataState();
  v74 = v152;
  v75 = v178;
  v77 = v154;
  v76 = v155;
  sub_21E141374();

  (*(v167 + 8))(v71, v75);
  v210 = v75;
  v211 = v73;
  v212 = v76;
  v213 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v181;
  v80 = v153;
  sub_21E141064();
  (*(v161 + 8))(v74, v80);
  v81 = sub_21E0008C8(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v209[4] = OpaqueTypeConformance2;
  v82 = v68;
  v209[5] = v81;
  v83 = v182;
  v177 = swift_getWitnessTable();
  sub_21DFE2A0C();
  v178 = *(v180 + 8);
  v179 = v180 + 8;
  v178(v79, v83);
  if ((*(v68 + 3) & 0xFE) == 2)
  {
    v84 = v183;
    v85 = sub_21E140914();
    v86 = v132;
    sub_21DFF641C(v85, 0x4020000000000000, 0, v185, v184);
    sub_21E13F694();
    sub_21E0006F0();
    sub_21E13F704();
    sub_21E13F6C4();

    sub_21E13F6B4();
    sub_21E13F6C4();

    v87 = v137;
    v88 = v138;
    sub_21E140DB4();

    v89 = (*(v136 + 8))(v86, v87);
    MEMORY[0x28223BE20](v89);
    sub_21E141CC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA2B0, &qword_21E14D408);
    sub_21E000758();
    v90 = v139;
    v91 = v141;
    sub_21E140D44();
    (*(v140 + 8))(v88, v91);
    sub_21E141CC4();
    v92 = v143;
    v93 = v135;
    sub_21E141264();
    (*(v142 + 8))(v90, v92);
    v94 = v93;
    if (*(v82 + 3) == 3)
    {
      sub_21E140914();
    }

    else
    {
      sub_21E140954();
    }

    v96 = v144;
    v97 = v146;
    sub_21E141124();
    (*(v145 + 8))(v94, v97);
    v98 = v174;
    sub_21DFF72A0();
    v99 = v130;
    v100 = v186;
    sub_21E1410C4();

    (*(v147 + 8))(v96, v100);
    v102 = v150;
    v101 = v151;
    (*(v151 + 16))(v150, v176, v98);
    v103 = (*(v101 + 80) + 48) & ~*(v101 + 80);
    v104 = swift_allocObject();
    v105 = v185;
    *(v104 + 2) = v188;
    *(v104 + 3) = v105;
    v106 = v184;
    *(v104 + 4) = v189;
    *(v104 + 5) = v106;
    (*(v101 + 32))(&v104[v103], v102, v98);
    v210 = v100;
    v211 = v84;
    v107 = swift_getOpaqueTypeConformance2();
    v108 = v128;
    v109 = v133;
    sub_21E141314();

    (*(v131 + 8))(v99, v109);
    v200 = v107;
    v201 = MEMORY[0x277CE0790];
    v110 = v171;
    swift_getWitnessTable();
    v111 = v129;
    sub_21DFE2A0C();
    v112 = v168;
    v113 = *(v168 + 8);
    v113(v108, v110);
    v114 = v134;
    sub_21DFE2A0C();
    v113(v111, v110);
    v95 = v169;
    (*(v112 + 32))(v169, v114, v110);
    (*(v112 + 56))(v95, 0, 1, v110);
  }

  else
  {
    v95 = v169;
    (*(v168 + 56))(v169, 1, 1, v171);
    v210 = v186;
    v211 = v183;
    v209[2] = swift_getOpaqueTypeConformance2();
    v209[3] = MEMORY[0x277CE0790];
    swift_getWitnessTable();
  }

  v116 = v172;
  v115 = v173;
  v117 = *(v172 + 16);
  v118 = v170;
  v117(v170, v95, v173);
  v189 = *(v116 + 8);
  v189(v95, v115);
  v119 = v181;
  v120 = v182;
  (*(v180 + 16))(v181, v187, v182);
  v210 = v119;
  v117(v95, v118, v115);
  v211 = v95;
  v209[0] = v120;
  v209[1] = v115;
  v207 = v177;
  v205 = v186;
  v206 = v183;
  v203 = swift_getOpaqueTypeConformance2();
  v204 = MEMORY[0x277CE0790];
  v202 = swift_getWitnessTable();
  v208 = swift_getWitnessTable();
  sub_21E012D74(&v210, 2uLL, v209);
  v121 = v118;
  v122 = v189;
  v189(v121, v115);
  v123 = v178;
  v178(v187, v120);
  v122(v95, v115);
  return v123(v119, v120);
}

uint64_t sub_21DFFAB74@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a3;
  v90 = a5;
  v85 = a1;
  v91 = a6;
  v92 = a2;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v68 = a4;
  v58 = type metadata accessor for MorphingContainer(0, &v103);
  v87 = *(v58 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v58);
  v86 = &v58 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8, &qword_21E14ED20);
  v8 = sub_21E13FB54();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v78 = &v58 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  v74 = v8;
  v10 = sub_21E13FB54();
  v83 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = &v58 - v11;
  v12 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
  v101 = a4;
  v102 = v12;
  WitnessTable = swift_getWitnessTable();
  v70 = WitnessTable;
  v14 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v99 = WitnessTable;
  v100 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_21DFFCB98();
  v103 = v10;
  v104 = &type metadata for PillLabelStyle;
  v60 = v10;
  v105 = v15;
  v106 = v16;
  v17 = v16;
  v61 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v58 - v18;
  v20 = sub_21E13FB54();
  v73 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v64 = &v58 - v21;
  v103 = v10;
  v104 = &type metadata for PillLabelStyle;
  v105 = v15;
  v106 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = OpaqueTypeConformance2;
  v98 = MEMORY[0x277CDF900];
  v65 = swift_getWitnessTable();
  v103 = v20;
  v104 = v65;
  v72 = MEMORY[0x277CDEAF8];
  v67 = swift_getOpaqueTypeMetadata2();
  v75 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v58 - v22;
  v23 = sub_21E13FB54();
  v80 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v62 = &v58 - v24;
  type metadata accessor for BreathingContentEffectModifier(255);
  v81 = v23;
  v69 = sub_21E13FB54();
  v82 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v77 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v79 = &v58 - v27;
  v28 = [objc_opt_self() systemDarkGrayColor];
  v103 = sub_21E141414();
  v29 = v85;
  v30 = v78;
  v31 = v68;
  sub_21E140F94();

  sub_21E1409A4();
  sub_21E1409E4();
  sub_21E140A54();

  v32 = v76;
  v33 = v74;
  sub_21E141204();

  (*(v84 + 8))(v30, v33);
  v34 = v60;
  sub_21E140DA4();
  (*(v83 + 8))(v32, v34);
  v35 = v64;
  v36 = OpaqueTypeMetadata2;
  sub_21E1412C4();
  (*(v71 + 8))(v19, v36);
  v37 = v58;
  sub_21DFF7250();
  v38 = v59;
  v39 = v65;
  sub_21E1410C4();

  (*(v73 + 8))(v35, v20);
  v41 = v86;
  v40 = v87;
  (*(v87 + 16))(v86, v29, v37);
  v42 = v40;
  v43 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v89;
  *(v44 + 2) = v92;
  *(v44 + 3) = v45;
  *(v44 + 4) = v31;
  v46 = v62;
  *(v44 + 5) = v90;
  (*(v42 + 32))(&v44[v43], v41, v37);
  v103 = v20;
  v104 = v39;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v67;
  sub_21E141314();

  (*(v75 + 8))(v38, v48);
  v49 = *v29 == 1 && v29[3] == 0;
  v95 = v47;
  v96 = MEMORY[0x277CE0790];
  v50 = v81;
  v51 = swift_getWitnessTable();
  v52 = v77;
  sub_21E079D18(v49, v50, v51, 2.333);
  (*(v80 + 8))(v46, v50);
  v53 = sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier, &unk_21E152508);
  v93 = v51;
  v94 = v53;
  v54 = v69;
  swift_getWitnessTable();
  v55 = v79;
  sub_21DFE2A0C();
  v56 = *(v82 + 8);
  v56(v52, v54);
  sub_21DFE2A0C();
  return (v56)(v55, v54);
}

uint64_t sub_21DFFB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for MorphingContainer(0, v6);
  LOBYTE(v6[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
  return sub_21E140504();
}

uint64_t sub_21DFFB6E4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8, &qword_21E14ED20);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  sub_21E13FB54();
  v41 = a4;
  v42 = sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
  v6 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v40 = sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  v26 = v6;
  v7 = swift_getWitnessTable();
  v8 = sub_21DFFCB98();
  swift_getOpaqueTypeMetadata2();
  v9 = sub_21E13FB54();
  v37 = v7;
  v38 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CDF900];
  v35 = v9;
  v36 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  sub_21E13FB54();
  sub_21E1415E4();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E1404C4();
  v10 = sub_21E13FB54();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = sub_21E13FB54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  v20 = swift_getWitnessTable();
  sub_21E1411E4();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v31 = v20;
  v32 = MEMORY[0x277CDF4D0];
  v21 = swift_getWitnessTable();
  sub_21E140E34();
  (*(v25 + 8))(v12, v10);
  v29 = v21;
  v30 = MEMORY[0x277CDF690];
  swift_getWitnessTable();
  sub_21DFE2A0C();
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_21DFE2A0C();
  return (v22)(v19, v13);
}

uint64_t sub_21DFFBBDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for MorphingContainer(0, v14);
  v11 = MEMORY[0x277D84F90];
  if (*(a1 + 2) == 1)
  {
    result = sub_21DFF718C(result);
    if (result)
    {
      v11 = &unk_282F3BE68;
    }
  }

  v12 = 0.55;
  if (a2)
  {
    v12 = 0.3;
  }

  v13 = 0.6;
  *a7 = v11;
  *(a7 + 8) = 0x403C000000000000;
  if ((a2 & 1) == 0)
  {
    v13 = 1.0;
  }

  *(a7 + 16) = v13;
  *(a7 + 24) = v12;
  *(a7 + 32) = 0;
  return result;
}

void *sub_21DFFBC90(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  if (*(v1 + 2) == 1 && (sub_21DFF718C(a1) & 1) != 0)
  {
    return &unk_282F3BE68;
  }

  return v2;
}

uint64_t sub_21DFFBCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v38 = a2;
  v43 = a1;
  v50 = sub_21E141E74();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E141E94();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v16 = type metadata accessor for MorphingContainer(0, &aBlock);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = sub_21E141EB4();
  v45 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  sub_21DFA9C80();
  v42 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v44 = *(v21 + 8);
  v44(v23, v20);
  (*(v17 + 16))(v19, v43, v16);
  v27 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  v30 = v40;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v31 = v41;
  *(v28 + 4) = v30;
  *(v28 + 5) = v31;
  (*(v17 + 32))(&v28[v27], v19, v16);
  v58 = v47;
  v59 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_21E079CD4;
  v57 = v48;
  v32 = _Block_copy(&aBlock);

  sub_21E141E84();
  aBlock = MEMORY[0x277D84F90];
  sub_21E0008C8(&qword_280F68CE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70, qword_21E1495C0);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70, qword_21E1495C0, MEMORY[0x277D83970]);
  v33 = v49;
  v34 = v50;
  sub_21E142764();
  v35 = v42;
  MEMORY[0x223D52DF0](v26, v15, v33, v32);
  _Block_release(v32);

  (*(v53 + 8))(v33, v34);
  (*(v51 + 8))(v15, v52);
  return (v44)(v26, v45);
}

uint64_t sub_21DFFC198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for MorphingContainer(0, v6);
  LOBYTE(v6[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
  return sub_21E140504();
}

uint64_t sub_21DFFC204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v47 = a1;
  v55 = a6;
  v8 = sub_21E140034();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13F444();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = sub_21E13FC94();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA168, &qword_21E14D1E8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v46 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA150, &qword_21E14D1E0);
  MEMORY[0x28223BE20](v49);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA288, &qword_21E14D3E8);
  v50 = *(v26 - 8);
  v51 = v26;
  MEMORY[0x28223BE20](v26);
  v48 = &v46 - v27;
  v56 = v46;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  v28 = type metadata accessor for MorphingContainer(0, &v56);
  sub_21DFFC77C(v20);
  *(v20->n128_u64 + *(v18 + 28)) = 0xBFE0000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21DFF6F9C(v28, v16);
  (*(v11 + 104))(v13, *MEMORY[0x277CDF3C0], v10);
  sub_21E13F434();
  v29 = *(v11 + 8);
  v29(v13, v10);
  v29(v16, v10);
  v30 = sub_21E141514();

  sub_21E13F4E4();
  sub_21E0005EC(v20, v23, v31);
  v32 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA290, &qword_21E14D3F0) + 36)];
  v33 = v57;
  *v32 = v56;
  *(v32 + 1) = v33;
  *(v32 + 4) = v58;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA298, &qword_21E14D3F8);
  *&v23[*(v34 + 52)] = v30;
  *&v23[*(v34 + 56)] = 256;
  v35 = sub_21E141CC4();
  v37 = v36;
  sub_21E000650(v20, MEMORY[0x277CDFBC8]);
  v38 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA2A0, &qword_21E14D400) + 36)];
  *v38 = v35;
  v38[1] = v37;
  sub_21DF3DE9C(v23, v25, &qword_27CEAA168, &qword_21E14D1E8);
  v39 = &v25[*(v49 + 36)];
  *v39 = 0x4000000000000000;
  v39[8] = 0;
  sub_21DFFCD64();
  v40 = v52;
  sub_21E0130B8(v52);
  v41 = v48;
  sub_21E140E84();
  (*(v53 + 8))(v40, v54);
  sub_21DF23614(v25, &qword_27CEAA150, &qword_21E14D1E0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA140, &qword_21E14D1D8);
  v43 = v55;
  v44 = (v55 + *(v42 + 36));
  sub_21DFFC77C(v44);
  *(v44->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18, &qword_21E14A4C0) + 36)) = 256;
  return (*(v50 + 32))(v43, v41, v51);
}

__n128 sub_21DFFC77C@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_21E13FCA4() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_21E140144();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #28.0 }

  *a1 = result;
  return result;
}

uint64_t sub_21DFFC800@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA198, &qword_21E14D1F8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v29[-v16];
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v18 = type metadata accessor for MorphingContainer(0, &v30);
  v19 = sub_21DFFCA18(v18);
  if (a1[3] == 2)
  {
    v20 = 28.0;
  }

  else
  {
    v20 = 22.0;
  }

  if (a2)
  {
    v21 = 0.8;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = (v17 + *(v15 + 44));
  sub_21DFFC77C(v22);
  v23 = 0;
  *(v22->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18, &qword_21E14A4C0) + 36)) = 256;
  *v17 = v19;
  v17[1] = v20;
  v17[2] = v21;
  *(v17 + 24) = 0;
  if (*a1 == 1)
  {
    v23 = a1[3] == 0;
  }

  v24 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA180, &qword_21E14D1F0) + 36));
  *v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for BreathingScaleEffectModifier(0);
  *(v24 + v25[5]) = v23;
  *(v24 + v25[6]) = 0x4002A9FBE76C8B44;
  v26 = v24 + v25[7];
  v29[15] = 0;
  sub_21E141704();
  v27 = v31;
  *v26 = v30;
  *(v26 + 1) = v27;
  return sub_21DF3DE9C(v17, a7, &qword_27CEAA198, &qword_21E14D1F8);
}