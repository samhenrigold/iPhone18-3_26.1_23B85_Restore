uint64_t sub_1CFC2D06C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFBA29FC(a1, &v5 - v3, &qword_1EC4EE898, &qword_1CFCA55A0);
  return sub_1CFC9E468();
}

uint64_t sub_1CFC2D138(uint64_t a1)
{
  v2 = sub_1CFC9D848();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1CFC9E2E8();
}

uint64_t sub_1CFC2D200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v30 - v5);
  v8 = type metadata accessor for IntervenableWrapperView.Wrapped(0, *(a1 + 16), *(a1 + 24), v7);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  WitnessTable = swift_getWitnessTable();
  v34 = v8;
  v35 = WitnessTable;
  v12 = WitnessTable;
  v31 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1CFC06888();
  v34 = v8;
  v35 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v8;
  v35 = &type metadata for NudityDetectionFlagEnabled;
  v36 = OpaqueTypeMetadata2;
  v37 = v12;
  v38 = v14;
  v39 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  v23 = (v2 + *(a1 + 36));
  v25 = *v23;
  v24 = v23[1];
  sub_1CFC2D524(v6);
  sub_1CFBCCE88(v6, v10, &qword_1EC4EE360, &unk_1CFCA5700);
  v26 = &v10[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 1) = v24;

  sub_1CFC2D5F8(v2, v8, v31, v19);
  (*(v32 + 8))(v10, v8);
  v27 = *(v17 + 16);
  v27(v22, v19, v16);
  v28 = *(v17 + 8);
  v28(v19, v16);
  v27(v33, v22, v16);
  return (v28)(v22, v16);
}

uint64_t sub_1CFC2D524@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CFC2D584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1CFBCCE88(a1, a6, &qword_1EC4EE360, &unk_1CFCA5700);
  result = type metadata accessor for IntervenableWrapperView.Wrapped(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_1CFC2D5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, char *a4@<X8>)
{
  v18 = a4;
  v22 = a2;
  v23 = &type metadata for NudityDetectionFlagEnabled;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = a3;
  v26 = sub_1CFC06888();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = swift_getOpaqueTypeMetadata2();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  swift_checkMetadataState();
  sub_1CFC9F098();
  v14 = *(v8 + 16);
  v14(v13, v10, v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v14(v18, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_1CFC2D820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1CFBA29FC(v2, &v14 - v9, &qword_1EC4EE3A0, &qword_1CFCA5830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CFC9D848();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1CFC9FAE8();
    v13 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1CFC2DA20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v4 = sub_1CFC9D848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = *(v2 + *(a1 + 36));
  sub_1CFC2D820(v7);
  v16(v7);
  (*(v5 + 8))(v7, v4);
  v17 = *(v9 + 16);
  v17(v15, v12, v8);
  v18 = *(v9 + 8);
  v18(v12, v8);
  v17(v21, v15, v8);
  return (v18)(v15, v8);
}

uint64_t sub_1CFC2DC20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9E4E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FavoritesList(0);
  sub_1CFBA29FC(v1 + *(v10 + 44), v9, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v9, a1, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  sub_1CFC9FAE8();
  v12 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t FavoritesList.init(dataSource:detailsPresenter:isInTab:editOnAppear:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  sub_1CFC9F228();
  *(a7 + 40) = v16;
  *(a7 + 48) = v17;
  sub_1CFC9F228();
  *(a7 + 56) = v16;
  *(a7 + 64) = v17;
  v14 = *(type metadata accessor for FavoritesList(0) + 44);
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  result = swift_storeEnumTagMultiPayload();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 17) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t FavoritesList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v70 = sub_1CFC9F448();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = &v68 - v4;
  v5 = type metadata accessor for FavoritesList(0);
  v83 = *(v5 - 8);
  v90 = *(v83 + 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A0, &qword_1CFCA55A8);
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A8, &qword_1CFCA55B0);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v68 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8B0, &qword_1CFCA55B8);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v68 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8B8, &qword_1CFCA55C0);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v68 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8C0, &qword_1CFCA55C8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v68 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8C8, &qword_1CFCA55D0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v68 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
  MEMORY[0x1EEE9AC00](v91);
  v81 = &v68 - v16;
  v95 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8D8, &qword_1CFCA55E0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E0, &qword_1CFCA55E8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
  v19 = sub_1CFC2F07C();
  v96 = v18;
  v97 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v17;
  v97 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9ECF8();
  v21 = [objc_opt_self() currentDevice];
  [v21 userInterfaceIdiom];

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9A8, &qword_1CFCA5650);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9B0, &qword_1CFCA5658);
  v23 = sub_1CFBA57C0(&qword_1EC4EE9B8, &qword_1EC4EE8A0, &qword_1CFCA55A8, MEMORY[0x1E697CD20]);
  v24 = sub_1CFC9E0B8();
  v25 = v7;
  v96 = v7;
  v97 = v24;
  v98 = v23;
  v99 = MEMORY[0x1E697C0D8];
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1CFC9E1F8();
  v96 = v7;
  v97 = v27;
  v98 = v23;
  v99 = MEMORY[0x1E697C200];
  v28 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EE18();
  (*(v72 + 8))(v9, v25);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_1CFC9BE28();
  v33 = v32;

  v102 = v31;
  v103 = v33;
  v96 = v25;
  v97 = v22;
  v98 = v71;
  v99 = v23;
  v100 = v26;
  v101 = v28;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1CFBB4460();
  v36 = MEMORY[0x1E69E6158];
  v37 = v73;
  v38 = v75;
  sub_1CFC9EF48();

  (v76[1])(v11, v38);
  v76 = &v68;
  v39 = v92;
  v94 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9C0, &unk_1CFCA5660);
  v96 = v38;
  v97 = v36;
  v98 = v34;
  v99 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1CFBA57C0(&qword_1EC4EE9C8, &qword_1EC4EE9C0, &unk_1CFCA5660, MEMORY[0x1E697C5E0]);
  v40 = v74;
  v41 = v77;
  sub_1CFC9F058();
  (*(v78 + 1))(v37, v41);
  v42 = sub_1CFC9C6B8();
  v43 = v39;
  v44 = v93;
  v78 = type metadata accessor for FavoritesList;
  sub_1CFC35288(v39, v93, type metadata accessor for FavoritesList);
  v45 = *(v83 + 80);
  v46 = (v45 + 16) & ~v45;
  v47 = swift_allocObject();
  v83 = type metadata accessor for FavoritesList;
  sub_1CFC352F0(v44, v47 + v46, type metadata accessor for FavoritesList);
  v48 = v88;
  (*(v79 + 32))(v88, v40, v80);
  v49 = v89;
  *&v48[*(v89 + 52)] = v42;
  v50 = &v48[*(v49 + 56)];
  *v50 = sub_1CFC344D8;
  v50[1] = v47;
  v51 = *(v43 + 64);
  LOBYTE(v102) = *(v43 + 56);
  v103 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F258();
  v52 = v43;
  v53 = v93;
  sub_1CFC35288(v52, v93, type metadata accessor for FavoritesList);
  v54 = swift_allocObject();
  sub_1CFC352F0(v53, v54 + v46, type metadata accessor for FavoritesList);
  sub_1CFBA57C0(&qword_1EC4EE9D0, &qword_1EC4EE8C0, &qword_1CFCA55C8, MEMORY[0x1E697C278]);
  sub_1CFC2B3C0();
  v55 = v82;
  v56 = v88;
  sub_1CFC9F038();
  v57 = v86;

  v58 = v92;
  v59 = v81;

  v60 = v93;

  sub_1CFBC2FB0(v56, &qword_1EC4EE8C0, &qword_1CFCA55C8);
  sub_1CFC35288(v58, v60, v78);
  v89 = v45;
  v61 = swift_allocObject();
  sub_1CFC352F0(v60, v61 + v46, v83);
  (*(v84 + 32))(v59, v55, v85);
  v62 = (v59 + *(v91 + 36));
  *v62 = sub_1CFC34774;
  v62[1] = v61;
  v62[2] = 0;
  v62[3] = 0;
  sub_1CFC2DC20(v57);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v63 - 8) + 48))(v57, 1, v63) == 1)
  {
    sub_1CFBC2FB0(v57, &qword_1EC4EE898, &qword_1CFCA55A0);
    v64 = 0;
  }

  else
  {
    v65 = v68;
    MEMORY[0x1D3871890](v63);
    sub_1CFBC2FB0(v57, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v64 = sub_1CFC9F438();
    (*(v69 + 8))(v65, v70);
  }

  LOBYTE(v96) = v64 & 1;
  sub_1CFC35288(v58, v60, type metadata accessor for FavoritesList);
  v66 = swift_allocObject();
  sub_1CFC352F0(v60, v66 + v46, type metadata accessor for FavoritesList);
  sub_1CFC34828();
  sub_1CFC9F088();

  return sub_1CFBC2FB0(v59, &qword_1EC4EE8D0, &qword_1CFCA55D8);
}

uint64_t sub_1CFC2EDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8E0, &qword_1CFCA55E8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE900, &qword_1CFCA55F8);
  sub_1CFC2F10C();
  sub_1CFC9F3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEBA8, &unk_1CFCA5900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DC0;
  v12 = sub_1CFC9DF08();
  *(inited + 32) = v12;
  v13 = sub_1CFC9DF18();
  *(inited + 33) = v13;
  sub_1CFC9DF28();
  sub_1CFC9DF28();
  if (sub_1CFC9DF28() != v12)
  {
    sub_1CFC9DF28();
  }

  sub_1CFC9DF28();
  if (sub_1CFC9DF28() != v13)
  {
    sub_1CFC9DF28();
  }

  v14 = sub_1CFC2F07C();
  sub_1CFC9EFC8();
  (*(v4 + 8))(v6, v3);
  sub_1CFC9EBC8();
  v16[5] = v3;
  v16[6] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9EF88();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1CFC2F07C()
{
  result = qword_1EC4EE8F0;
  if (!qword_1EC4EE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
    sub_1CFC2F10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE8F0);
  }

  return result;
}

unint64_t sub_1CFC2F10C()
{
  result = qword_1EC4EE8F8;
  if (!qword_1EC4EE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE900, &qword_1CFCA55F8);
    sub_1CFC2F1C4();
    sub_1CFBA57C0(&qword_1EC4EE998, &qword_1EC4EE9A0, &qword_1CFCA5648, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE8F8);
  }

  return result;
}

unint64_t sub_1CFC2F1C4()
{
  result = qword_1EC4EE908;
  if (!qword_1EC4EE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE910, &qword_1CFCA5600);
    sub_1CFC2F27C();
    sub_1CFBA57C0(&qword_1EC4EE988, &qword_1EC4EE990, &qword_1CFCA5640, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE908);
  }

  return result;
}

unint64_t sub_1CFC2F27C()
{
  result = qword_1EC4EE918;
  if (!qword_1EC4EE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE920, &qword_1CFCA5608);
    sub_1CFC2F300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE918);
  }

  return result;
}

unint64_t sub_1CFC2F300()
{
  result = qword_1EC4EE928;
  if (!qword_1EC4EE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE930, &qword_1CFCA5610);
    sub_1CFC2F38C();
    sub_1CFC2F564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE928);
  }

  return result;
}

unint64_t sub_1CFC2F38C()
{
  result = qword_1EC4EE938;
  if (!qword_1EC4EE938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE940, &qword_1CFCA5618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE948, &qword_1CFCA5620);
    sub_1CFC2F480();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EC4EE970, &qword_1EC4EE978, &qword_1CFCA5638, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE938);
  }

  return result;
}

unint64_t sub_1CFC2F480()
{
  result = qword_1EC4EE950;
  if (!qword_1EC4EE950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE948, &qword_1CFCA5620);
    sub_1CFBA57C0(&qword_1EC4EE958, &qword_1EC4EE960, &qword_1CFCA5628, &unk_1CFCA57A8);
    sub_1CFBA57C0(&qword_1EE04D260, &qword_1EC4EE968, &qword_1CFCA5630, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE950);
  }

  return result;
}

unint64_t sub_1CFC2F564()
{
  result = qword_1EC4EE980;
  if (!qword_1EC4EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE980);
  }

  return result;
}

uint64_t sub_1CFC2F5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for FavoritesList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(a1 + 48);
  v23 = *(a1 + 40);
  v24 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD0, &qword_1CFCA5860);
  sub_1CFC9F238();
  v21 = type metadata accessor for FavoritesList;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v20 = type metadata accessor for FavoritesList;
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FavoritesList);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE930, &qword_1CFCA5610);
  sub_1CFBA57C0(&qword_1EC4EEBB0, &qword_1EC4EE888, &qword_1CFCA5560, MEMORY[0x1E69E6338]);
  sub_1CFC2F300();
  sub_1CFC35220(&qword_1EC4EEBB8, MEMORY[0x1E6993700], MEMORY[0x1E6993718]);
  v9 = v22;
  sub_1CFC9F3C8();
  v10 = v21;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v11 = swift_allocObject();
  v12 = v20;
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, v20);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CFC357F4;
  *(v13 + 24) = v11;
  v14 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE910, &qword_1CFCA5600) + 36));
  *v14 = sub_1CFC35868;
  v14[1] = v13;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v7, v12);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CFC35890;
  *(v16 + 24) = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE900, &qword_1CFCA55F8);
  v18 = (v9 + *(result + 36));
  *v18 = sub_1CFC35910;
  v18[1] = v16;
  return result;
}

uint64_t sub_1CFC2F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v28 = a3;
  v4 = sub_1CFC9C608();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = type metadata accessor for FavoritesList(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE948, &qword_1CFCA5620);
  v10 = MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - v11;
  v13 = *(v5 + 16);
  v13(&v24 - v11, a1, v4, v10);
  sub_1CFC35288(v26, v9, type metadata accessor for FavoritesList);
  (v13)(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v15 = (v8 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CFC352F0(v9, v16 + v14, type metadata accessor for FavoritesList);
  (*(v5 + 32))(v16 + v15, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE960, &qword_1CFCA5628) + 36)];
  *v17 = sub_1CFC3593C;
  v17[1] = v16;
  *&v12[*(v27 + 36)] = sub_1CFC9E8F8();
  sub_1CFC9EC18();
  sub_1CFC2F480();
  v18 = v28;
  sub_1CFC9EF08();
  sub_1CFBC2FB0(v12, &qword_1EC4EE948, &qword_1CFCA5620);
  v29 = sub_1CFC9F138();
  v19 = sub_1CFC9F348();
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE940, &qword_1CFCA5618) + 36)) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CFCA2540;
  *(v20 + 32) = sub_1CFC9C5E8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE930, &qword_1CFCA5610);
  v23 = v18 + *(result + 36);
  *v23 = sub_1CFC35A20;
  *(v23 + 8) = v21;
  *(v23 + 16) = 0;
  return result;
}

uint64_t sub_1CFC2FCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v23 = a2;
  v25 = a1;
  v26 = sub_1CFC9C608();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FavoritesList(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v21 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9D848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v25, v9, v12);
  sub_1CFC35288(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v15 = v26;
  v14 = v27;
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + *(v24 + 80) + v16) & ~*(v24 + 80);
  v18 = (v8 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v16, v13, v9);
  sub_1CFC352F0(v21, v19 + v17, type metadata accessor for FavoritesList);
  (*(v5 + 32))(v19 + v18, v22, v15);
  v29 = v14;
  v30 = v23;
  type metadata accessor for FavoriteListCell(0);
  sub_1CFC35220(qword_1EC4EEBC0, type metadata accessor for FavoriteListCell, &unk_1CFCA5758);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC30020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for FavoritesList(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CFC35288(a2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1CFC352F0(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for FavoritesList);
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1CFC9D838();
}

uint64_t sub_1CFC3022C(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1CFC9F448();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  sub_1CFC2DC20(&v23 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1CFBC2FB0(v14, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    MEMORY[0x1D3871890](v15);
    sub_1CFBC2FB0(v14, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v16 = sub_1CFC9F438();
    result = (*(v9 + 8))(v11, v8);
    if (v16)
    {
      return result;
    }
  }

  v18 = sub_1CFC9F998();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v2 + 16))(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v1);
  sub_1CFC9F968();
  v19 = sub_1CFC9F958();
  v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  (*(v2 + 32))(v21 + v20, v4, v1);
  sub_1CFBDC330(0, 0, v7, &unk_1CFCA5918, v21);
}

uint64_t sub_1CFC305B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v23 = a2;
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v24 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FavoritesList(0);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FavoriteListCell(0);
  v13 = *(v6 + 16);
  v13(&a3[v12[5]], a1, v5);
  v25 = *v23;
  sub_1CFC35288(v23, v11, type metadata accessor for FavoritesList);
  v14 = a1;
  v15 = v5;
  v13(v8, v14, v5);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1CFC352F0(v11, v18 + v16, type metadata accessor for FavoritesList);
  (*(v6 + 32))(v18 + v17, v8, v15);
  *&a3[v12[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  swift_storeEnumTagMultiPayload();
  *&a3[v12[6]] = v25;
  v19 = &a3[v12[7]];
  *v19 = sub_1CFC35D9C;
  *(v19 + 1) = v18;
  v20 = v12[8];

  result = sub_1CFC9F178();
  *&a3[v20] = result;
  return result;
}

double sub_1CFC30880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFCA2540;
  *(v0 + 32) = sub_1CFC9C5E8();
  sub_1CFC8C10C(v0, 0);

  return result;
}

double sub_1CFC30908(uint64_t a1, uint64_t a2)
{
  sub_1CFC9C098();
  if ((v3 & 1) == 0)
  {
    sub_1CFC9C6C8();
  }

  return result;
}

uint64_t sub_1CFC309BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(__n128), uint64_t a4)
{
  v5 = a2(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  a3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A0, &qword_1CFCA55A8);
  sub_1CFBA57C0(&qword_1EC4EE9B8, &qword_1EC4EE8A0, &qword_1CFCA55A8, MEMORY[0x1E697CD20]);
  sub_1CFC9F0A8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CFC30B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a1;
  v155 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD8, &qword_1CFCA5868);
  MEMORY[0x1EEE9AC00](v159);
  v158 = v122 - v2;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAE0, &qword_1CFCA5870);
  v143 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v142 = v122 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAE8, &qword_1CFCA5878);
  v141 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v140 = v122 - v4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAF0, &qword_1CFCA5880);
  v126 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v125 = v122 - v5;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAF8, &qword_1CFCA5888);
  v124 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v123 = v122 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB00, &qword_1CFCA5890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v122 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB08, &qword_1CFCA5898);
  MEMORY[0x1EEE9AC00](v137);
  v136 = v122 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB10, &qword_1CFCA58A0);
  v150 = *(v11 - 8);
  v151 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v138 = v122 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB18, &qword_1CFCA58A8);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = v122 - v13;
  v14 = sub_1CFC9DEF8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1CFC9DFE8();
  v129 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v128 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB20, &qword_1CFCA58B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v132 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v162 = v122 - v20;
  v149 = sub_1CFC9F448();
  v147 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v146 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v145 = v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB28, &qword_1CFCA58B8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v144 = v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v164 = v122 - v30;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB30, &qword_1CFCA58C0);
  v31 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v131 = v122 - v32;
  v33 = sub_1CFC9E838();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v139 = v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v122 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB38, &qword_1CFCA58C8);
  v160 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v161 = v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v122 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB40, &unk_1CFCA58D0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v163 = v122 - v48;
  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  v154 = v9;
  v122[1] = v37;
  if (qword_1F4C6AC38 == v50 || qword_1F4C6AC40 == v50)
  {
    v55 = sub_1CFC9E7E8();
    v122[0] = v122;
    MEMORY[0x1EEE9AC00](v55);
    v122[-2] = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
    sub_1CFC9DEA8();
    v56 = sub_1CFBA57C0(&qword_1EC4EEB48, &qword_1EC4EEB38, &qword_1CFCA58C8, MEMORY[0x1E697BEF0]);
    v57 = v131;
    MEMORY[0x1D3870DB0](v43, v39, v56);
    v58 = v152;
    (*(v31 + 16))(v46, v57, v152);
    (*(v31 + 56))(v46, 0, 1, v58);
    v166 = v39;
    v167 = v56;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v46, v58, OpaqueTypeConformance2);
    sub_1CFBC2FB0(v46, &qword_1EC4EEB40, &unk_1CFCA58D0);
    (*(v31 + 8))(v57, v58);
    v60 = v43;
    v53 = v39;
    (*(v160 + 8))(v60, v39);
  }

  else
  {
    v51 = v152;
    (*(v31 + 56))(v46, 1, 1, v152);
    v52 = sub_1CFBA57C0(&qword_1EC4EEB48, &qword_1EC4EEB38, &qword_1CFCA58C8, MEMORY[0x1E697BEF0]);
    v53 = v39;
    v166 = v39;
    v167 = v52;
    v54 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v46, v51, v54);
    sub_1CFBC2FB0(v46, &qword_1EC4EEB40, &unk_1CFCA58D0);
  }

  sub_1CFC2DC20(v26);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  v64 = (v62 + 48);
  if (v63(v26, 1, v61) == 1)
  {
    sub_1CFBC2FB0(v26, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    v65 = v146;
    MEMORY[0x1D3871890](v61);
    sub_1CFBC2FB0(v26, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v66 = sub_1CFC9F438();
    (*(v147 + 8))(v65, v149);
    if (v66)
    {
      goto LABEL_9;
    }
  }

  if (*(v165 + 16) != 1)
  {
    v72 = v151;
    v73 = v144;
    (*(v150 + 56))(v144, 1, 1, v151);
    v74 = sub_1CFBA57C0(&qword_1EC4EEB50, &qword_1EC4EEB10, &qword_1CFCA58A0, MEMORY[0x1E697C5E0]);
    MEMORY[0x1D3870DF0](v73, v72, v74);
    sub_1CFBC2FB0(v73, &qword_1EC4EEB28, &qword_1CFCA58B8);
    v75 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v131 = v64;
  v152 = v63;
  v67 = sub_1CFC9E7F8();
  v68 = v165;
  MEMORY[0x1EEE9AC00](v67);
  v122[-2] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  sub_1CFC9DEA8();
  LODWORD(v122[0]) = *(v68 + 16);
  if (v122[0])
  {
    v69 = v132;
    v70 = v135;
    (*(v134 + 56))(v132, 1, 1, v135);
    v166 = v133;
    v167 = MEMORY[0x1E697BFF0];
    v71 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DE0](v69, v70, v71);
    sub_1CFBC2FB0(v69, &qword_1EC4EEB20, &qword_1CFCA58B0);
  }

  else
  {
    sub_1CFC9E7F8();
    sub_1CFC9DEE8();
    v76 = v128;
    sub_1CFC9DFF8();
    v77 = MEMORY[0x1E697BFF0];
    v78 = v130;
    v79 = v133;
    MEMORY[0x1D3870DA0](v76, v133, MEMORY[0x1E697BFF0]);
    v80 = v134;
    v81 = v132;
    v82 = v135;
    (*(v134 + 16))(v132, v78, v135);
    (*(v80 + 56))(v81, 0, 1, v82);
    v166 = v79;
    v167 = v77;
    v83 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DE0](v81, v82, v83);
    sub_1CFBC2FB0(v81, &qword_1EC4EEB20, &qword_1CFCA58B0);
    (*(v80 + 8))(v78, v82);
    (*(v129 + 8))(v76, v79);
  }

  v84 = *(v137 + 48);
  v86 = v160;
  v85 = v161;
  v87 = v136;
  (*(v160 + 16))(v136, v161, v53);
  v88 = v162;
  sub_1CFBA29FC(v162, &v87[v84], &qword_1EC4EEB20, &qword_1CFCA58B0);
  v89 = v138;
  sub_1CFC9E6A8();
  v91 = v150;
  v90 = v151;
  v92 = v144;
  (*(v150 + 16))(v144, v89, v151);
  (*(v91 + 56))(v92, 0, 1, v90);
  v93 = sub_1CFBA57C0(&qword_1EC4EEB50, &qword_1EC4EEB10, &qword_1CFCA58A0, MEMORY[0x1E697C5E0]);
  MEMORY[0x1D3870DF0](v92, v90, v93);
  sub_1CFBC2FB0(v92, &qword_1EC4EEB28, &qword_1CFCA58B8);
  (*(v91 + 8))(v89, v90);
  sub_1CFBC2FB0(v88, &qword_1EC4EEB20, &qword_1CFCA58B0);
  (*(v86 + 8))(v85, v53);
  v63 = v152;
  v75 = v122[0];
LABEL_14:
  v94 = v145;
  sub_1CFC2DC20(v145);
  if (v63(v94, 1, v61) == 1)
  {
    sub_1CFBC2FB0(v94, &qword_1EC4EE898, &qword_1CFCA55A0);
    v95 = v154;
LABEL_19:
    if (v75)
    {
      sub_1CFC9E7E8();
    }

    else
    {
      sub_1CFC9E7F8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
    sub_1CFC35478();
    v99 = v140;
    sub_1CFC9DEA8();
    v100 = MEMORY[0x1E697BEF0];
    v101 = sub_1CFBA57C0(&qword_1EC4EEB68, &qword_1EC4EEAE8, &qword_1CFCA5878, MEMORY[0x1E697BEF0]);
    v102 = v142;
    v103 = v156;
    MEMORY[0x1D3870DB0](v99, v156, v101);
    v104 = sub_1CFBA57C0(&qword_1EC4EEB70, &qword_1EC4EEAF8, &qword_1CFCA5888, v100);
    v166 = v153;
    v167 = v104;
    v105 = swift_getOpaqueTypeConformance2();
    v166 = v103;
    v167 = v101;
    v106 = swift_getOpaqueTypeConformance2();
    v107 = v157;
    MEMORY[0x1D3870DD0](v102, v148, v157, v105, v106);
    (*(v143 + 8))(v102, v107);
    v108 = &v168;
    goto LABEL_25;
  }

  v96 = v146;
  MEMORY[0x1D3871890](v61);
  sub_1CFBC2FB0(v94, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v97 = sub_1CFC9F438();
  (*(v147 + 8))(v96, v149);
  v95 = v154;
  if ((v97 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v75)
  {
    v98 = sub_1CFC9E7E8();
  }

  else
  {
    v98 = sub_1CFC9E7F8();
  }

  MEMORY[0x1EEE9AC00](v98);
  v122[-2] = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB78, &qword_1CFCA58E8);
  sub_1CFBA57C0(&qword_1EC4EEB80, &qword_1EC4EEB78, &qword_1CFCA58E8, MEMORY[0x1E697D680]);
  v99 = v123;
  sub_1CFC9DEA8();
  v109 = MEMORY[0x1E697BEF0];
  v110 = sub_1CFBA57C0(&qword_1EC4EEB70, &qword_1EC4EEAF8, &qword_1CFCA5888, MEMORY[0x1E697BEF0]);
  v111 = v125;
  v103 = v153;
  MEMORY[0x1D3870DB0](v99, v153, v110);
  v166 = v103;
  v167 = v110;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = sub_1CFBA57C0(&qword_1EC4EEB68, &qword_1EC4EEAE8, &qword_1CFCA5878, v109);
  v166 = v156;
  v167 = v113;
  v114 = swift_getOpaqueTypeConformance2();
  v115 = v148;
  MEMORY[0x1D3870DC0](v111, v148, v157, v112, v114);
  (*(v126 + 8))(v111, v115);
  v108 = &v156;
LABEL_25:
  (*(*(v108 - 32) + 8))(v99, v103);
  v116 = v158;
  v117 = *(v159 + 48);
  v118 = *(v159 + 64);
  v119 = v163;
  sub_1CFBA29FC(v163, v158, &qword_1EC4EEB40, &unk_1CFCA58D0);
  v120 = v164;
  sub_1CFBA29FC(v164, v116 + v117, &qword_1EC4EEB28, &qword_1CFCA58B8);
  sub_1CFBA29FC(v95, v116 + v118, &qword_1EC4EEB00, &qword_1CFCA5890);
  sub_1CFC9E6A8();
  sub_1CFBC2FB0(v95, &qword_1EC4EEB00, &qword_1CFCA5890);
  sub_1CFBC2FB0(v120, &qword_1EC4EEB28, &qword_1CFCA58B8);
  return sub_1CFBC2FB0(v119, &qword_1EC4EEB40, &unk_1CFCA58D0);
}

uint64_t sub_1CFC32200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC32238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FavoritesList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1CFC35288(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1CFC352F0(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FavoritesList);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC3237C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  sub_1CFC9F248();
}

uint64_t sub_1CFC32414(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC35288(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CFC352F0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FavoritesList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB88, &qword_1CFCA58F0);
  sub_1CFC3562C();
  return sub_1CFC9F298();
}

uint64_t sub_1CFC3257C(uint64_t a1)
{
  sub_1CFC9F568();
  sub_1CFC9E018();
}

uint64_t sub_1CFC325E8(uint64_t a1)
{
  v2 = sub_1CFC9F448();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for FavoritesList(0);
  sub_1CFBA29FC(a1 + *(v14 + 44), v10, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFBCCE88(v10, v13, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    sub_1CFC9FAE8();
    v15 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
  {
    v17 = &qword_1EC4EE898;
    v18 = &qword_1CFCA55A0;
  }

  else
  {
    (*(v22 + 104))(v21, *MEMORY[0x1E697D710], v23);
    sub_1CFC9F368();
    v17 = &qword_1EC4EDAF8;
    v18 = &qword_1CFCA2F60;
  }

  return sub_1CFBC2FB0(v13, v17, v18);
}

uint64_t sub_1CFC32958@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1CFC9F1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB88, &qword_1CFCA58F0);
  result = sub_1CFC9E0F8();
  *a1 = v3;
  return result;
}

uint64_t sub_1CFC329BC@<X0>(uint64_t a2@<X8>)
{
  sub_1CFC9DE28();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1CFC32A00(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD0, &qword_1CFCA5860);
  return sub_1CFC9F248();
}

void sub_1CFC32A5C(uint64_t a1)
{
  v2 = sub_1CFC9F448();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9E4E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  if (*(a1 + 17) == 1)
  {
    v16 = type metadata accessor for FavoritesList(0);
    sub_1CFBA29FC(a1 + *(v16 + 44), v12, &qword_1EC4EE890, &qword_1CFCA5598);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCCE88(v12, v15, &qword_1EC4EE898, &qword_1CFCA55A0);
    }

    else
    {
      sub_1CFC9FAE8();
      v17 = sub_1CFC9EB68();
      sub_1CFC9D858();

      sub_1CFC9E4D8();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
    {
      v19 = &qword_1EC4EE898;
      v20 = &qword_1CFCA55A0;
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E697D708], v2);
      sub_1CFC9F368();
      v19 = &qword_1EC4EDAF8;
      v20 = &qword_1CFCA2F60;
    }

    sub_1CFBC2FB0(v15, v19, v20);
  }
}

uint64_t sub_1CFC32DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_1CFC9F968();
  v4[20] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC32E60, v6, v5);
}

uint64_t sub_1CFC32E60(__n128 a1)
{
  v2 = sub_1CFC9C5D8();
  v1[23] = v2;
  v1[2] = v1;
  v1[3] = sub_1CFC32F80;
  v3 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED778, &qword_1CFCA26B0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1CFBD24BC;
  v1[13] = &block_descriptor_11;
  v1[14] = v3;
  [v2 performActionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1CFC32F80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1CFC3312C;
  }

  else
  {
    v5 = sub_1CFC330B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFC330B0()
{
  v1 = *(v0 + 184);

  **(v0 + 144) = *(v0 + 192) != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC3312C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  swift_willThrow();

  **(v0 + 144) = *(v0 + 192) != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CFC331C4()
{
  type metadata accessor for FavoriteListCell(0);
  v0 = sub_1CFC9C5D8();
  v1 = [v0 name];

  v2 = sub_1CFC9F768();
  v4 = v3;

  v6[0] = v2;
  v6[1] = v4;
  sub_1CFBB4460();
  sub_1CFC9EDF8();
  v6[3] = sub_1CFC9D018();
  v6[4] = MEMORY[0x1E6995C08];
  __swift_allocate_boxed_opaque_existential_0Tm(v6);

  sub_1CFC9D008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAA8, &qword_1CFCA5838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAB0, &unk_1CFCA5840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
  sub_1CFC35084();
  sub_1CFC3516C();
  sub_1CFBB76B4();
  return sub_1CFC9CE48();
}

uint64_t sub_1CFC33420@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA2540;
  type metadata accessor for FavoriteListCell(0);
  *(v2 + 32) = sub_1CFC9C5E8();
  sub_1CFC9D028();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAA8, &qword_1CFCA5838) + 36));
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SensitiveContentButtonBadgeModifier(0);
  *(v3 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_1CFC3352C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for FavoriteListCell(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for RecentCellAccessoryButton(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CFC9F448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v28 = a1;
  sub_1CFC4C450(&v26 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1CFBC2FB0(v15, &qword_1EC4EE898, &qword_1CFCA55A0);
LABEL_5:
    v20 = v5[5];
    v21 = sub_1CFC9C448();
    (*(*(v21 - 8) + 56))(v8 + v20, 1, 1, v21);
    sub_1CFC35288(v28, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoriteListCell);
    v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v23 = swift_allocObject();
    sub_1CFC352F0(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for FavoriteListCell);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
    swift_storeEnumTagMultiPayload();
    *(v8 + v5[6]) = 1;
    v24 = (v8 + v5[7]);
    *v24 = sub_1CFC35358;
    v24[1] = v23;
    v19 = v29;
    sub_1CFC352F0(v8, v29, type metadata accessor for RecentCellAccessoryButton);
    v18 = 0;
    return (*(v6 + 56))(v19, v18, 1, v5);
  }

  MEMORY[0x1D3871890](v16);
  sub_1CFBC2FB0(v15, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v17 = sub_1CFC9F438();
  (*(v10 + 8))(v12, v9);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = 1;
  v19 = v29;
  return (*(v6 + 56))(v19, v18, 1, v5);
}

void sub_1CFC33948(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FavoriteListCell(0);
  v4 = sub_1CFC9C6D8();
  if (v5)
  {
    v21[5] = v4;
    v21[6] = v5;
    sub_1CFBB4460();
    v4 = sub_1CFC9EDF8();
    v6 = v4;
    v8 = v7;
    v10 = v9;
    v12 = v11 & 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v12 = 0;
    v10 = 0;
  }

  MEMORY[0x1EEE9AC00](v4);
  v21[2] = a1;
  sub_1CFC2CF58(sub_1CFC35268, v21, v6, v8, v12, v10);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1CFBB74FC(v6, v8, v12, v10);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v20;
}

void sub_1CFC33A6C(uint64_t a2@<X8>)
{
  type metadata accessor for FavoriteListCell(0);
  if (FavoriteContact.icon.getter())
  {

    v3 = sub_1CFC9EE08();
    v5 = v4;
    v7 = v6;
    v8 = sub_1CFC9ED98();
    v10 = v9;
    v12 = v11;
    sub_1CFBB44C0(v3, v5, v7 & 1);
  }

  else
  {
    v8 = 0;
    v12 = 0;
    v10 = 0xE000000000000000;
  }

  v13 = sub_1CFC9ED98();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1CFBB44C0(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
}

uint64_t sub_1CFC33BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v25[1] = a3;
  v25[2] = a4;
  v29 = a1;
  v30 = a5;
  v26 = sub_1CFC9C608();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFC9D808();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  v32 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v25 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED580, &qword_1CFCA2480);
  sub_1CFC9D7E8();
  *(swift_allocObject() + 16) = xmmword_1CFCA1DD0;
  (*(v8 + 16))(v10, a2, v26);
  sub_1CFC340B0(v10);
  sub_1CFC33F38(v21);
  sub_1CFC9D7F8();

  sub_1CFC9EE58();
  (*(v27 + 8))(v13, v28);
  v22 = *(v15 + 16);
  v22(v20, v17, OpaqueTypeMetadata2);
  v23 = *(v15 + 8);
  v23(v17, OpaqueTypeMetadata2);
  v22(v30, v20, OpaqueTypeMetadata2);
  return (v23)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1CFC33F38(__n128 a1)
{
  v1 = sub_1CFC9C5D8();
  v2 = [v1 bundleIdentifier];

  v3 = sub_1CFC9F768();
  v5 = v4;

  if (v3 == sub_1CFC9F768() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1CFCA02B8();

    if ((v8 & 1) == 0)
    {
      return 3;
    }
  }

  v10 = sub_1CFC9C5D8();
  v11 = [v10 actionType];

  v12 = sub_1CFC9F768();
  v14 = v13;
  if (v12 == sub_1CFC9F768() && v14 == v15)
  {

    return 1;
  }

  else
  {
    v16 = sub_1CFCA02B8();

    if (v16)
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1CFC340B0(uint64_t a1)
{
  v2 = sub_1CFC9C5E8();
  v3 = [v2 tuHandlesForPhoneNumbers];

  sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
  v4 = sub_1CFC9F8A8();

  if (v4 >> 62)
  {
    v5 = sub_1CFC9FFD8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  v41 = a1;
  if (v5)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_1CFBCAA4C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v8 = 0;
    v9 = v42;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3872640](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 value];
      v13 = sub_1CFC9F768();
      v15 = v14;

      v17 = *(v42 + 16);
      v16 = *(v42 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CFBCAA4C((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v42 + 16) = v17 + 1;
      v18 = v42 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v5 != v8);

    a1 = v41;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFC34E24(v9);

  v19 = sub_1CFC9C5E8();
  v20 = [v19 tuHandlesForEmailAddresses];

  v21 = sub_1CFC9F8A8();
  if (v21 >> 62)
  {
    v22 = sub_1CFC9FFD8();
    if (v22)
    {
LABEL_16:
      result = sub_1CFBCAA4C(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = 0;
        v24 = v6;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1D3872640](v23, v21);
          }

          else
          {
            v25 = *(v21 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = [v26 value];
          v28 = sub_1CFC9F768();
          v30 = v29;

          v32 = *(v24 + 16);
          v31 = *(v24 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1CFBCAA4C((v31 > 1), v32 + 1, 1);
          }

          ++v23;
          *(v24 + 16) = v32 + 1;
          v33 = v24 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v22 != v23);

        a1 = v41;
        goto LABEL_28;
      }

LABEL_36:
      __break(1u);
      return result;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_28:
  sub_1CFC34FFC(v24);

  v34 = sub_1CFC9C5C8();
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v37 = sub_1CFC9C5D8();
    v38 = [v37 name];

    sub_1CFC9F768();
  }

  sub_1CFC9D7D8();
  v39 = sub_1CFC9C608();
  v40 = *(*(v39 - 8) + 8);

  return v40(a1, v39);
}

uint64_t sub_1CFC344D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for FavoritesList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFC32A00(a1, v4);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for FavoritesList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v5 = v0 + v3 + *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1CFC9F448();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1CFC34700@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FavoritesList(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v4;

  return result;
}

uint64_t sub_1CFC3478C(_BYTE *a1, _BYTE *a2)
{
  v5 = type metadata accessor for FavoritesList(0);
  v8 = *(v5 - 8);
  result = v5 - 8;
  v7 = v8;
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v9 = v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
    if (*(v9 + 17) == 1)
    {
      v10 = *(v9 + 24);
      if (v10)
      {
        return v10();
      }
    }
  }

  return result;
}

unint64_t sub_1CFC34828()
{
  result = qword_1EC4EE9D8;
  if (!qword_1EC4EE9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8C0, &qword_1CFCA55C8);
    sub_1CFBA57C0(&qword_1EC4EE9D0, &qword_1EC4EE8C0, &qword_1CFCA55C8, MEMORY[0x1E697C278]);
    sub_1CFC2B3C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE9D8);
  }

  return result;
}

void sub_1CFC3497C(uint64_t a1)
{
  sub_1CFC9C728();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailsPresenter(319);
    if (v2 <= 0x3F)
    {
      sub_1CFC34B44(319, &qword_1EC4EE9F8, &qword_1EC4EEA00, &qword_1CFCA56F8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CFC34B44(319, &qword_1EC4EEA08, &qword_1EC4EE888, &qword_1CFCA5560, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1CFC34AF4();
          if (v5 <= 0x3F)
          {
            sub_1CFC34B44(319, &qword_1EC4EEA10, &qword_1EC4EE898, &qword_1CFCA55A0, MEMORY[0x1E697DCC0]);
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

void sub_1CFC34AF4()
{
  if (!qword_1EE04FFC0)
  {
    v0 = sub_1CFC9F268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04FFC0);
    }
  }
}

void sub_1CFC34B44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1CFC34BF0(uint64_t a1)
{
  sub_1CFC34B44(319, &qword_1EC4EEA10, &qword_1EC4EE898, &qword_1CFCA55A0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1CFC9C608();
    if (v2 <= 0x3F)
    {
      sub_1CFC9C728();
      if (v3 <= 0x3F)
      {
        sub_1CFBB02CC();
        if (v4 <= 0x3F)
        {
          sub_1CFC34CF0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CFC34CF0(uint64_t a1)
{
  if (!qword_1EE04D578)
  {
    sub_1CFC9D848();
    v1 = sub_1CFC9DE88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D578);
    }
  }
}

uint64_t sub_1CFC34E24(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3871F20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CFBC7E38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CFC34EBC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFC9FFD8())
  {
    v4 = sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    v5 = sub_1CFC353C4();
    result = MEMORY[0x1D3871F20](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3872640](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1CFBC7F88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1CFC9FFD8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1CFC34FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1CFBC7E38(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

unint64_t sub_1CFC35084()
{
  result = qword_1EC4EEAB8;
  if (!qword_1EC4EEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEAA8, &qword_1CFCA5838);
    sub_1CFBA57C0(&qword_1EC4ED7E0, &qword_1EC4ED7E8, &unk_1CFCA5850, MEMORY[0x1E6995C10]);
    sub_1CFC35220(&unk_1EE04D980, type metadata accessor for SensitiveContentButtonBadgeModifier, &unk_1CFCA6E1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAB8);
  }

  return result;
}

unint64_t sub_1CFC3516C()
{
  result = qword_1EC4EEAC0;
  if (!qword_1EC4EEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEAB0, &unk_1CFCA5840);
    sub_1CFC35220(qword_1EE04ECD8, type metadata accessor for RecentCellAccessoryButton, &unk_1CFCA414C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAC0);
  }

  return result;
}

uint64_t sub_1CFC35220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC35288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC352F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFC353C4()
{
  result = qword_1EC4EEAC8;
  if (!qword_1EC4EEAC8)
  {
    sub_1CFBA2D80(255, &qword_1EC4ED538, 0x1E69D8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAC8);
  }

  return result;
}

unint64_t sub_1CFC35478()
{
  result = qword_1EC4EEB60;
  if (!qword_1EC4EEB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
    sub_1CFC35220(&qword_1EC4EDDE0, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEB60);
  }

  return result;
}

uint64_t sub_1CFC355A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FavoritesList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1CFC3562C()
{
  result = qword_1EC4EEB90;
  if (!qword_1EC4EEB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEB88, &qword_1CFCA58F0);
    sub_1CFBA57C0(&qword_1EC4EEB98, &qword_1EC4EEBA0, &qword_1CFCA58F8, MEMORY[0x1E6980BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEB90);
  }

  return result;
}

uint64_t sub_1CFC35700()
{
  v1 = type metadata accessor for FavoritesList(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 24);
  if (v4)
  {
    return v4();
  }

  return result;
}

uint64_t sub_1CFC35774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFC2F920(a1, v6, a2);
}

uint64_t sub_1CFC357F4()
{
  type metadata accessor for FavoritesList(0);
  result = sub_1CFC9C098();
  if ((v1 & 1) == 0)
  {
    return sub_1CFC9C6E8();
  }

  return result;
}

double sub_1CFC35890(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FavoritesList(0);

  return sub_1CFC30908(a1, a2);
}

uint64_t sub_1CFC3593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1CFC9C608() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1CFC2FCD0(a1, v2 + v6, v9, a2);
}

uint64_t sub_1CFC35A28()
{
  v1 = *(sub_1CFC9D848() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FavoritesList(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1CFC9C608() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1CFC30020(v0 + v2, v0 + v5, v8);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for FavoritesList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v9 = v0 + v3 + *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 32);
      v12 = sub_1CFC9F448();
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  else
  {
  }

  v13 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v8, v2 | v7 | 7);
}

double sub_1CFC35D9C()
{
  type metadata accessor for FavoritesList(0);
  sub_1CFC9C608();

  return sub_1CFC30880();
}

uint64_t sub_1CFC35E68()
{
  v1 = *(type metadata accessor for FavoritesList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1CFC9C608() - 8);
  return sub_1CFC3022C(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1CFC35F28(uint64_t a1)
{
  v4 = *(sub_1CFC9C608() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD431C;

  return sub_1CFC32DC8(a1, v6, v7, v1 + v5);
}

unint64_t sub_1CFC36030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1CFBB02CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFC36150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFCA1DD0;
  sub_1CFCA0078();
  return v0;
}

uint64_t sub_1CFC36200()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-v2];
  *(v0 + 16) = &unk_1F4C6AC48;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0;
  v4 = OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  swift_beginAccess();
  *(v0 + 56) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC68();
  sub_1CFC9FB68();
  v6(v3, 0, 1, v5);
  swift_beginAccess();
  sub_1CFC373B0(v3, v0 + v4);
  swift_endAccess();
  return v0;
}

uint64_t sub_1CFC363CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  swift_allocObject();
  swift_weakLoadStrong();

  swift_weakInit();

  sub_1CFC9D168();
}

uint64_t sub_1CFC36560()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v3 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC3664C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFC3664C()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC37540, 0, 0);
}

uint64_t sub_1CFC36710()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v3 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC367FC, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFC367FC()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC368A0, 0, 0);
}

uint64_t sub_1CFC368A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC36900()
{

  sub_1CFBA79B8(v0 + 24);
  sub_1CFBA79B8(v0 + 40);
  sub_1CFC37340(v0 + OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallScreeningTipSectionController(uint64_t a1)
{
  result = qword_1EE04E2B8;
  if (!qword_1EE04E2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC369D0(uint64_t a1)
{
  sub_1CFC36A84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CFC36A84(uint64_t a1)
{
  if (!qword_1EE04D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
    v1 = sub_1CFC9FEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D0B0);
    }
  }
}

unint64_t sub_1CFC36AF8(uint64_t a1)
{
  result = sub_1CFC36B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC36B20()
{
  result = qword_1EE04E2D0;
  if (!qword_1EE04E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E2D0);
  }

  return result;
}

unint64_t sub_1CFC36B78()
{
  result = qword_1EC4EEC60;
  if (!qword_1EC4EEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEC60);
  }

  return result;
}

unint64_t sub_1CFC36BCC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = 4;
  return result;
}

uint64_t sub_1CFC36C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CFC36CA4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC36D38;
}

void sub_1CFC36D38(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1CFC36DF0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1CFC36E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFC372D0(v3 + v7, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12[7] = 0;
    sub_1CFC9DC68();
    v11 = sub_1CFC9FBA8();
    (*(v9 + 8))(v6, v8);
    return v11;
  }

  return result;
}

uint64_t sub_1CFC36FF4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1CFC37060()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  v6 = [v0 fractionalWidthDimension_];
  v7 = [v0 estimatedDimension_];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA2540;
  *(v10 + 32) = v5;
  sub_1CFC37284();
  v11 = v5;
  v12 = sub_1CFC9F898();

  v13 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  return v14;
}

unint64_t sub_1CFC37284()
{
  result = qword_1EE04CF80;
  if (!qword_1EE04CF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04CF80);
  }

  return result;
}

uint64_t sub_1CFC372D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC37340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC373B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC37420()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC36540(v0);
}

uint64_t sub_1CFC374B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFC366F0(v0);
}

uint64_t LegacyMailbox.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9C008();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LegacyMailbox.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for LegacyMailbox(0) + 20));

  return v1;
}

uint64_t LegacyMailbox.init(accountID:label:hasUnreadMessages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1CFC9C008();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for LegacyMailbox(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t LegacyMailbox.hash(into:)(uint64_t a1)
{
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1CFC9F6C8();
  if (*(v1 + *(type metadata accessor for LegacyMailbox(0) + 20) + 8))
  {
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  return sub_1CFCA0358();
}

uint64_t LegacyMailbox.hashValue.getter()
{
  sub_1CFCA0338();
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1CFC9F6C8();
  if (*(v0 + *(type metadata accessor for LegacyMailbox(0) + 20) + 8))
  {
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  sub_1CFCA0358();
  return sub_1CFCA0378();
}

uint64_t sub_1CFC378A8(uint64_t a1, uint64_t a2)
{
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1CFC9F6C8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  return sub_1CFCA0358();
}

uint64_t sub_1CFC37980(uint64_t a1, uint64_t a2)
{
  sub_1CFCA0338();
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1CFC9F6C8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  sub_1CFCA0358();
  return sub_1CFCA0378();
}

uint64_t sub_1CFC37A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_1CFC9E218();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyMailboxCellView(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECA8, &qword_1CFCA5C30);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB0, &qword_1CFCA5C38);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v38 - v12;
  v13 = type metadata accessor for LegacyMailbox(0);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (*(a1 + *(v13 + 24)) == 1)
  {
    v14 = sub_1CFC9F108();
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v15 = v64;
    v16 = v65;
    v50 = v67;
    v51 = v66;
    v48 = v69;
    v49 = v68;
  }

  v38 = v16;
  v53 = sub_1CFC9E688();
  LOBYTE(v58[0]) = 0;
  sub_1CFC38094(a1, v55);
  *&v54[7] = v55[0];
  *&v54[23] = v55[1];
  *&v54[39] = v55[2];
  *&v54[55] = v55[3];
  v52 = LOBYTE(v58[0]);
  sub_1CFC38DE8(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v18 = swift_allocObject();
  v19 = sub_1CFC38E4C(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  MEMORY[0x1EEE9AC00](v19);
  *(&v38 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB8, &qword_1CFCA5C48);
  sub_1CFC38F24();
  sub_1CFC9F298();
  v20 = v43;
  sub_1CFC9E208();
  sub_1CFBA57C0(&qword_1EC4EECF8, &qword_1EC4EECA8, &qword_1CFCA5C30, MEMORY[0x1E697D680]);
  sub_1CFC388B0(&qword_1EC4EED00, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v21 = v44;
  v22 = v47;
  sub_1CFC9EEC8();
  (*(v45 + 8))(v20, v22);
  (*(v41 + 8))(v9, v7);
  v23 = v40;
  v24 = *(v40 + 16);
  v25 = v46;
  v26 = v42;
  v24(v46, v21, v42);
  *a2 = v14;
  *(a2 + 8) = v15;
  v28 = v50;
  v27 = v51;
  *(a2 + 16) = v38;
  *(a2 + 24) = v27;
  v29 = v48;
  v30 = v49;
  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  *(a2 + 48) = v29;
  v56[0] = v53;
  v56[1] = 0;
  v57[0] = v52;
  *&v57[1] = *v54;
  *&v57[33] = *&v54[32];
  *&v57[17] = *&v54[16];
  *&v57[49] = *&v54[48];
  v31 = *&v54[63];
  *&v57[64] = *&v54[63];
  v32 = v53;
  *(a2 + 72) = *v57;
  *(a2 + 56) = v32;
  v33 = *&v57[16];
  v34 = *&v57[32];
  *(a2 + 120) = *&v57[48];
  *(a2 + 104) = v34;
  *(a2 + 88) = v33;
  *(a2 + 136) = v31;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED08, &qword_1CFCA5C68);
  v24((a2 + *(v35 + 80)), v25, v26);

  sub_1CFC390EC(v56, v58);

  v36 = *(v23 + 8);
  v36(v21, v26);
  v36(v25, v26);
  v58[0] = v53;
  v58[1] = 0;
  v59 = v52;
  v61 = *&v54[16];
  v62 = *&v54[32];
  *v63 = *&v54[48];
  *&v63[15] = *&v54[63];
  v60 = *v54;
  sub_1CFC3915C(v58);
}

double sub_1CFC38094@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v6 = sub_1CFC9EDF8();
  v8 = v7;
  v10 = v9;
  v11 = sub_1CFC9EDB8();
  v13 = v12;
  v37 = v14;
  v16 = v15;
  sub_1CFBB44C0(v6, v8, v10 & 1);

  if (*(a1 + *(type metadata accessor for LegacyMailboxCellView(0) + 20)) == 1 && *(a1 + *(type metadata accessor for LegacyMailbox(0) + 20) + 8))
  {

    v17 = sub_1CFC9EDF8();
    v19 = v18;
    v21 = v20;
    sub_1CFC9EC48();
    v22 = sub_1CFC9EDC8();
    v35 = v23;
    v36 = v22;
    v34 = v24;

    sub_1CFBB44C0(v17, v19, v21 & 1);

    sub_1CFC9E908();
    v25 = sub_1CFC9ED68();
    v27 = v26;
    v33 = v28;
    v30 = v29;
    sub_1CFBB44C0(v36, v35, v34 & 1);

    v31 = v33 & 1;
    sub_1CFBB45F4(v25, v27, v33 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v31 = 0;
    v30 = 0;
  }

  sub_1CFBB45F4(v11, v13, v37 & 1);

  sub_1CFBB9654(v25, v27, v31, v30);
  sub_1CFBB74FC(v25, v27, v31, v30);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v31;
  *(a2 + 56) = v30;
  sub_1CFBB74FC(v25, v27, v31, v30);
  sub_1CFBB44C0(v11, v13, v37 & 1);

  return result;
}

uint64_t sub_1CFC383A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DE68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1CFC9BE28();
  v13 = v12;

  v53 = v11;
  v54 = v13;
  sub_1CFBB4460();
  v14 = sub_1CFC9EDF8();
  v50 = v15;
  v17 = v16;
  v52 = v18;
  v51 = sub_1CFC9EBA8();
  sub_1CFC9DE18();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v17 & 1;
  LOBYTE(v53) = v17 & 1;
  LOBYTE(v58[0]) = 0;
  v28 = sub_1CFC9EC18();
  sub_1CFC9DE18();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v55 = 0;
  type metadata accessor for LegacyMailboxCellView(0);
  sub_1CFC4C630(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  v37 = sub_1CFC9DE58();
  v38 = *(v3 + 8);
  v38(v5, v2);
  v38(v8, v2);
  v39 = objc_opt_self();
  v40 = &selRef_systemGroupedBackgroundColor;
  if ((v37 & 1) == 0)
  {
    v40 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v41 = [v39 *v40];
  v42 = sub_1CFC9F0C8();
  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB8, &qword_1CFCA5C48) + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECF0, &qword_1CFCA5C60);
  v45 = *(v44 + 52);
  v46 = *MEMORY[0x1E697F468];
  v47 = sub_1CFC9E608();
  result = (*(*(v47 - 8) + 104))(v43 + v45, v46, v47);
  *v43 = v42;
  *(v43 + *(v44 + 56)) = 256;
  v49 = v50;
  *a1 = v14;
  *(a1 + 8) = v49;
  *(a1 + 16) = v27;
  *(a1 + 17) = v53;
  *(a1 + 20) = *(&v53 + 3);
  *(a1 + 24) = v52;
  *(a1 + 32) = v51;
  *(a1 + 33) = v58[0];
  *(a1 + 36) = *(v58 + 3);
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = v26;
  *(a1 + 72) = 0;
  *(a1 + 76) = *&v57[3];
  *(a1 + 73) = *v57;
  *(a1 + 80) = v28;
  *(a1 + 84) = *&v56[3];
  *(a1 + 81) = *v56;
  *(a1 + 88) = v30;
  *(a1 + 96) = v32;
  *(a1 + 104) = v34;
  *(a1 + 112) = v36;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1CFC38768@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0x4026000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECA0, &qword_1CFCA5C28);
  return sub_1CFC37A70(v2, a2 + *(v4 + 44));
}

uint64_t _s10CallsAppUI13LegacyMailboxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1CFC9BFD8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for LegacyMailbox(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      if (*v6 == *v8 && v7 == v9)
      {
        goto LABEL_9;
      }

      v11 = v4;
      v12 = sub_1CFCA02B8();
      v4 = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v13 & 1;
}

uint64_t sub_1CFC388B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CFC38920(uint64_t a1)
{
  sub_1CFC9C008();
  if (v1 <= 0x3F)
  {
    sub_1CFC389AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC389AC()
{
  if (!qword_1EE04FF98)
  {
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04FF98);
    }
  }
}

uint64_t dispatch thunk of LegacyMailboxServiceProtocol.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFC38B78;

  return v7(a1, a2);
}

uint64_t sub_1CFC38B78(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1CFC38CD0(uint64_t a1)
{
  type metadata accessor for LegacyMailbox(319);
  if (v1 <= 0x3F)
  {
    sub_1CFBB02CC();
    if (v2 <= 0x3F)
    {
      sub_1CFC38D74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFC38D74(uint64_t a1)
{
  if (!qword_1EC4EEC98)
  {
    sub_1CFC9DE68();
    v1 = sub_1CFC9DE88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4EEC98);
    }
  }
}

uint64_t sub_1CFC38DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMailboxCellView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC38E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMailboxCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC38F24()
{
  result = qword_1EC4EECC0;
  if (!qword_1EC4EECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECB8, &qword_1CFCA5C48);
    sub_1CFC38FDC();
    sub_1CFBA57C0(&qword_1EC4EECE8, &qword_1EC4EECF0, &qword_1CFCA5C60, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECC0);
  }

  return result;
}

unint64_t sub_1CFC38FDC()
{
  result = qword_1EC4EECC8;
  if (!qword_1EC4EECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECD0, &qword_1CFCA5C50);
    sub_1CFC39068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECC8);
  }

  return result;
}

unint64_t sub_1CFC39068()
{
  result = qword_1EC4EECD8;
  if (!qword_1EC4EECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECE0, &qword_1CFCA5C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECD8);
  }

  return result;
}

uint64_t sub_1CFC390EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED10, &qword_1CFCA5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC3915C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED10, &qword_1CFCA5C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC39274()
{
  v1 = sub_1CFC9E7B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD0, &qword_1CFCA5D38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  sub_1CFC9EB98();
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
  sub_1CFC3BFB4();
  sub_1CFC9DE38();
  sub_1CFC9E7A8();
  v9 = sub_1CFC9EB98();
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v9)
  {
    sub_1CFC9EB88();
  }

  sub_1CFBA57C0(&qword_1EC4EEE28, &qword_1EC4EEDD0, &qword_1CFCA5D38, MEMORY[0x1E697BE60]);
  sub_1CFC9EFD8();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CFC394C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LayoutTipView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *a2 = sub_1CFC9E678();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEE30, &unk_1CFCA5D68);
  sub_1CFC39684(a1, a2 + *(v7 + 44));
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE00, &qword_1CFCA5D50) + 36)) = 256;
  v8 = sub_1CFC9EBB8();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDF0, &qword_1CFCA5D48) + 36);
  *v9 = v8;
  *(v9 + 8) = xmmword_1CFCA5C80;
  __asm { FMOV            V0.2D, #12.0 }

  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  sub_1CFC3C150(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CFC3C1B4(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
  v18 = (a2 + *(result + 36));
  *v18 = sub_1CFC3AE34;
  v18[1] = 0;
  v18[2] = sub_1CFC3C218;
  v18[3] = v16;
  return result;
}

uint64_t sub_1CFC39684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE40, &qword_1CFCA5D78);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE48, &qword_1CFCA5D80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  *v16 = sub_1CFC9E578();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE50, &qword_1CFCA5D88);
  sub_1CFC398A8(a1, &v16[*(v17 + 44)]);
  *v10 = 0x4020000000000000;
  sub_1CFC3A268(a1, &v10[*(v5 + 52)]);
  sub_1CFBA29FC(v16, v13, &qword_1EC4EEE48, &qword_1CFCA5D80);
  sub_1CFBBEB3C(v10, v7);
  sub_1CFBA29FC(v13, a2, &qword_1EC4EEE48, &qword_1CFCA5D80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE58, &qword_1CFCA5D90);
  sub_1CFBBEB3C(v7, a2 + *(v18 + 48));
  sub_1CFBC2FB0(v10, &qword_1EC4EEE40, &qword_1CFCA5D78);
  sub_1CFBC2FB0(v16, &qword_1EC4EEE48, &qword_1CFCA5D80);
  sub_1CFBC2FB0(v7, &qword_1EC4EEE40, &qword_1CFCA5D78);
  return sub_1CFBC2FB0(v13, &qword_1EC4EEE48, &qword_1CFCA5D80);
}

uint64_t sub_1CFC398A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF10, &qword_1CFCA5EB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  sub_1CFC9F4E8();
  v22[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF18, &qword_1CFCA5EB8);
  sub_1CFC3DEA4();
  sub_1CFC9F508();
  v11 = sub_1CFC9E688();
  LOBYTE(v27[0]) = 1;
  sub_1CFC39F4C(v24);
  *&v23[7] = v24[0];
  *&v23[23] = v24[1];
  *&v23[39] = v24[2];
  *&v23[55] = v24[3];
  v12 = v27[0];
  v13 = *(v5 + 16);
  v13(v7, v10, v4);
  v13(a2, v7, v4);
  v14 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF78, &qword_1CFCA5EE8) + 48)];
  v25[0] = v11;
  v25[1] = 0;
  v26[0] = v12;
  *&v26[1] = *v23;
  *&v26[17] = *&v23[16];
  *&v26[33] = *&v23[32];
  *&v26[49] = *&v23[48];
  v15 = *&v23[63];
  *&v26[64] = *&v23[63];
  v16 = *v26;
  *v14 = v11;
  *(v14 + 1) = v16;
  v17 = *&v26[16];
  v18 = *&v26[32];
  v19 = *&v26[48];
  *(v14 + 10) = v15;
  *(v14 + 3) = v18;
  *(v14 + 4) = v19;
  *(v14 + 2) = v17;
  sub_1CFBA29FC(v25, v27, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  v20 = *(v5 + 8);
  v20(v10, v4);
  v27[0] = v11;
  v27[1] = 0;
  v28 = v12;
  v30 = *&v23[16];
  v31 = *&v23[32];
  *v32 = *&v23[48];
  *&v32[15] = *&v23[63];
  v29 = *v23;
  sub_1CFBC2FB0(v27, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  return (v20)(v7, v4);
}

double sub_1CFC39B64@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9F1B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CFC9E158();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFC4C228(v9);
  v10 = sub_1CFC9E148();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_1CFC3E148(&v60);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1CFC9F1F8();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v13 = sub_1CFC9F1E8();

    (*(v3 + 8))(v5, v2);
    sub_1CFC9F538();
    sub_1CFC9DF68();
    LOBYTE(v60) = 1;
    *&v45[6] = v57;
    *&v45[22] = v58;
    *&v45[38] = v59;
    v14 = sub_1CFC9EBC8();
    sub_1CFC9DE18();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(v46) = 0;
    v23 = sub_1CFC9EBE8();
    sub_1CFC9DE18();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v60) = 0;
    v32 = sub_1CFC9EC08();
    sub_1CFC9DE18();
    *(v47 + 2) = *v45;
    v46 = v13;
    LOWORD(v47[0]) = 1;
    *(&v47[1] + 2) = *&v45[16];
    *(&v47[2] + 2) = *&v45[32];
    *&v47[3] = *&v45[46];
    BYTE8(v47[3]) = v14;
    *&v48 = v16;
    *(&v48 + 1) = v18;
    *&v49 = v20;
    *(&v49 + 1) = v22;
    LOBYTE(v50) = 0;
    BYTE8(v50) = v23;
    *&v51 = v25;
    *(&v51 + 1) = v27;
    *&v52 = v29;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = 0;
    BYTE8(v53) = v32;
    *&v54 = v33;
    *(&v54 + 1) = v34;
    *&v55 = v35;
    *(&v55 + 1) = v36;
    v56 = 0;
    nullsub_1();
    v70 = v53;
    v71 = v54;
    v72 = v55;
    v66 = v49;
    v67 = v50;
    v73 = v56;
    v68 = v51;
    v69 = v52;
    v62 = v47[1];
    v63 = v47[2];
    v64 = v47[3];
    v65 = v48;
    v60 = v46;
    v61 = v47[0];
  }

  v37 = v71;
  *(a1 + 160) = v70;
  *(a1 + 176) = v37;
  *(a1 + 192) = v72;
  *(a1 + 208) = v73;
  v38 = v67;
  *(a1 + 96) = v66;
  *(a1 + 112) = v38;
  v39 = v69;
  *(a1 + 128) = v68;
  *(a1 + 144) = v39;
  v40 = v63;
  *(a1 + 32) = v62;
  *(a1 + 48) = v40;
  v41 = v65;
  *(a1 + 64) = v64;
  *(a1 + 80) = v41;
  result = *&v60;
  v43 = v61;
  *a1 = v60;
  *(a1 + 16) = v43;
  return result;
}

double sub_1CFC39F4C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v2 = [v33 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v3 = sub_1CFC9EDF8();
  v5 = v4;
  v7 = v6;
  sub_1CFC9ECB8();
  v8 = sub_1CFC9EDC8();
  v10 = v9;
  v12 = v11;

  sub_1CFBB44C0(v3, v5, v7 & 1);

  v31 = sub_1CFC9EDB8();
  v32 = v13;
  v15 = v14;
  v30 = v16;
  sub_1CFBB44C0(v8, v10, v12 & 1);

  v17 = [v33 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9EDF8();
  v20 = v19;
  v22 = v21;
  sub_1CFC9E908();
  v23 = sub_1CFC9ED68();
  v25 = v24;
  LOBYTE(v3) = v26;
  v28 = v27;
  sub_1CFBB44C0(v18, v20, v22 & 1);

  *a1 = v31;
  *(a1 + 8) = v15;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v3 & 1;
  *(a1 + 56) = v28;
  sub_1CFBB45F4(v31, v15, v30 & 1);

  sub_1CFBB45F4(v23, v25, v3 & 1);

  sub_1CFBB44C0(v23, v25, v3 & 1);

  sub_1CFBB44C0(v31, v15, v30 & 1);

  return result;
}

uint64_t sub_1CFC3A268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v95 = a1;
  v102 = a2;
  v3 = type metadata accessor for LayoutTipView(0);
  v94 = *(v3 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  v107 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v7 = &v71 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
  v108 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v9 = &v71 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE70, &qword_1CFCA5DA8);
  MEMORY[0x1EEE9AC00](v105);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE78, &qword_1CFCA5DB0);
  v101 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v71 - v19;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v97 = ObjCClassFromMetadata;
  v96 = objc_opt_self();
  v21 = [v96 bundleForClass_];
  v22 = sub_1CFC9BE28();
  v24 = v23;

  v89 = v5;
  sub_1CFC3C150(a1, v5);
  v25 = *(v94 + 80);
  v93 = v25;
  v26 = (v25 + 16) & ~v25;
  v94 = v26;
  v27 = (v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = v27;
  v28 = swift_allocObject();
  sub_1CFC3C1B4(v5, v28 + v26);
  *(v28 + v27) = 0;
  v111 = v22;
  v112 = v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE80, &qword_1CFCA5DB8);
  v91 = sub_1CFC3C298();
  v29 = v7;
  sub_1CFC9F298();

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  v31 = sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98, MEMORY[0x1E697D680]);
  v32 = sub_1CFC3C31C();
  v88 = sub_1CFC3B12C;
  v33 = v9;
  v34 = v103;
  v35 = v30;
  v85 = v30;
  v84 = v31;
  v36 = v32;
  v86 = v32;
  v83 = v29;
  sub_1CFC9EE28();
  v37 = *(v107 + 8);
  v107 += 8;
  v87 = v37;
  v37(v29, v34);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEEC0, &qword_1CFCA5DE0);
  v113 = v34;
  v114 = v35;
  v115 = v31;
  v116 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1CFC9EA68();
  v40 = sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v41 = v104;
  v113 = v104;
  v114 = v39;
  v115 = OpaqueTypeConformance2;
  v116 = v40;
  v80 = OpaqueTypeConformance2;
  v82 = swift_getOpaqueTypeConformance2();
  v79 = sub_1CFC3B2FC;
  sub_1CFC9EE28();
  v42 = *(v108 + 8);
  v108 += 8;
  v78 = v42;
  v42(v33, v41);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED0, &qword_1CFCA5DE8);
  v43 = &v11[*(v77 + 36)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED8, &qword_1CFCA5DF0);
  sub_1CFC9E288();
  *v43 = swift_getKeyPath();
  v44 = &v11[*(v105 + 36)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEEE0, &qword_1CFCA3630);
  v45 = *(v75 + 28);
  v73 = *MEMORY[0x1E697DC10];
  v46 = v73;
  v47 = sub_1CFC9DE78();
  v48 = *(v47 - 8);
  v72 = *(v48 + 104);
  v74 = v48 + 104;
  v72(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  sub_1CFC9EC88();
  sub_1CFC3D88C();
  sub_1CFC9EE98();
  sub_1CFBC2FB0(v11, &qword_1EC4EEE70, &qword_1CFCA5DA8);
  v49 = [v96 bundleForClass_];
  v50 = sub_1CFC9BE28();
  v52 = v51;

  v53 = v89;
  sub_1CFC3C150(v95, v89);
  v54 = v90;
  v55 = swift_allocObject();
  sub_1CFC3C1B4(v53, v55 + v94);
  *(v55 + v54) = 1;
  v109 = v50;
  v110 = v52;
  v56 = v83;
  sub_1CFC9F298();

  v57 = v103;
  sub_1CFC9EE28();
  v87(v56, v57);
  v58 = v104;
  sub_1CFC9EE28();
  v78(v33, v58);
  v59 = &v11[*(v77 + 36)];
  sub_1CFC9E288();
  *v59 = swift_getKeyPath();
  v60 = &v11[*(v105 + 36)];
  v72(v60 + *(v75 + 28), v73, v47);
  *v60 = swift_getKeyPath();
  sub_1CFC9EC88();
  v61 = v98;
  sub_1CFC9EE98();
  sub_1CFBC2FB0(v11, &qword_1EC4EEE70, &qword_1CFCA5DA8);
  v62 = v101;
  v63 = *(v101 + 16);
  v64 = v99;
  v65 = v106;
  v63(v99, v106, v12);
  v66 = v100;
  v63(v100, v61, v12);
  v67 = v102;
  v63(v102, v64, v12);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF08, &qword_1CFCA5E60);
  v63(&v67[*(v68 + 48)], v66, v12);
  v69 = *(v62 + 8);
  v69(v61, v12);
  v69(v65, v12);
  v69(v66, v12);
  return (v69)(v64, v12);
}

void sub_1CFC3AE34(void *a1@<X8>)
{
  sub_1CFC9DFA8();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CFC3AE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1CFC9F998();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1CFC3C150(a1, v7);
  sub_1CFC9F968();
  v12 = sub_1CFC9F958();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_1CFC3C1B4(v7, v15 + v13);
  *(v15 + v14) = a2;
  sub_1CFBDC030(0, 0, v10, &unk_1CFCA5EA8, v15);
}

__n128 sub_1CFC3B034@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_1CFBB4460();

  v4 = sub_1CFC9EDF8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1CFC9F538();
  sub_1CFC9E268();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 128) = v18;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  result = v15;
  *(a3 + 64) = v14;
  *(a3 + 80) = v15;
  return result;
}

uint64_t sub_1CFC3B12C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9E668();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98, MEMORY[0x1E697D680]);
  sub_1CFC3E75C(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  sub_1CFC9EEC8();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1CFC9F188();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEEB0, &qword_1CFCA5DC8) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = sub_1CFC9F108();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  *(a1 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_1CFC3B2FC()
{
  v0 = sub_1CFC9EA68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9EA58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  v6 = sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98, MEMORY[0x1E697D680]);
  v7 = sub_1CFC3C31C();
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  sub_1CFC9EEC8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CFC3B4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC3B574, v7, v6);
}

uint64_t sub_1CFC3B574()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for LayoutTipView(0) + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1CFC3B670;

  return v5();
}

uint64_t sub_1CFC3B670()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1CFC3B790, v3, v2);
}

uint64_t sub_1CFC3B790()
{
  v1 = *(v0 + 24);

  v2 = [objc_opt_self() shared];
  [v2 setLayout_];

  v3 = *(v0 + 8);

  return v3();
}

id sub_1CFC3B82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9EB18();
  v26[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for LayoutTipView(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v26 - v10);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  swift_storeEnumTagMultiPayload();
  v13 = (v11 + *(v6 + 28));
  *v13 = a1;
  v13[1] = a2;
  v14 = (v11 + *(v6 + 32));
  *v14 = sub_1CFC3E170;
  v14[1] = v12;
  sub_1CFC3C150(v11, v8);

  v15 = sub_1CFC9E6C8();
  [v15 setModalPresentationStyle_];
  v16 = [v15 popoverPresentationController];

  if (v16)
  {
    [v16 setDelegate_];
  }

  v17 = [v15 popoverPresentationController];
  if (v17)
  {
    v18 = v17;
    [v17 setPopoverLayoutMargins_];
  }

  v19 = [v15 popoverPresentationController];
  if (v19)
  {
    v20 = v19;
    [v19 _setPrefersZoomTransitions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF88, &qword_1CFCA5F28);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CFCA1DD0;
  sub_1CFC9EB08();
  v26[1] = v21;
  sub_1CFC3E75C(&qword_1EC4EEF90, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF98, &qword_1CFCA5F30);
  sub_1CFBA57C0(&qword_1EC4EEFA0, &qword_1EC4EEF98, &qword_1CFCA5F30, MEMORY[0x1E69E6328]);
  sub_1CFC9FF58();
  sub_1CFC9E6B8();
  sub_1CFC3E178(v11);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v23 = *(v12 + 16);
  v24 = *(v12 + 24);
  *(v12 + 16) = sub_1CFC3E1D4;
  *(v12 + 24) = v22;

  sub_1CFBABFA0(v23, v24);

  return v15;
}

uint64_t sub_1CFC3BC34(uint64_t a1, double a2, double a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);

    v7(v9, a2, a3);
    return sub_1CFBABFA0(v7, v8);
  }

  return result;
}

void sub_1CFC3BCB0(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 intrinsicContentSize];
      v9 = v8;

      [v5 setPreferredContentSize_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1CFC3BE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutTipViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFC3BEB4(uint64_t a1)
{
  sub_1CFC3BF38(319);
  if (v1 <= 0x3F)
  {
    sub_1CFBB02CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC3BF38(uint64_t a1)
{
  if (!qword_1EC4EEDC0)
  {
    sub_1CFC9E158();
    v1 = sub_1CFC9DE88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4EEDC0);
    }
  }
}

unint64_t sub_1CFC3BFB4()
{
  result = qword_1EC4EEDE0;
  if (!qword_1EC4EEDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
    sub_1CFC3DFB4(&qword_1EC4EEDE8, &qword_1EC4EEDF0, &qword_1CFCA5D48, sub_1CFC3C098);
    sub_1CFBA57C0(&qword_1EC4EEE18, &qword_1EC4EEE20, &qword_1CFCA5D60, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEDE0);
  }

  return result;
}

unint64_t sub_1CFC3C098()
{
  result = qword_1EC4EEDF8;
  if (!qword_1EC4EEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE00, &qword_1CFCA5D50);
    sub_1CFBA57C0(&qword_1EC4EEE08, &qword_1EC4EEE10, &qword_1CFCA5D58, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEDF8);
  }

  return result;
}

uint64_t sub_1CFC3C150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC3C1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC3C298()
{
  result = qword_1EC4EEE88;
  if (!qword_1EC4EEE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE80, &qword_1CFCA5DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEE88);
  }

  return result;
}

unint64_t sub_1CFC3C31C()
{
  result = qword_1EC4EEEA0;
  if (!qword_1EC4EEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
    sub_1CFC3C3D4();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEA0);
  }

  return result;
}

unint64_t sub_1CFC3C3D4()
{
  result = qword_1EC4EEEA8;
  if (!qword_1EC4EEEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EEEB0, &qword_1CFCA5DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
    sub_1CFC9E668();
    sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98, MEMORY[0x1E697D680]);
    sub_1CFC3E75C(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEA8);
  }

  return result;
}

void sub_1CFC3C54C(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1CFC9FA18();
  sub_1CFC9FA48();
  if (v13 != v12)
  {
    if (a2)
    {
      v10 = INFINITY;
    }

    else
    {
      v10 = *&a1;
    }

    v11 = sub_1CFC3E29C(a6);
    if (sub_1CFC3C680(v11, v10, a3))
    {
      sub_1CFC3E514(v11, v10);
    }

    else
    {

      sub_1CFC3C7C4(a6, v10, a3);
    }
  }
}

BOOL sub_1CFC3C680(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAA8C(0, v5, 0);
    v7 = v18;
    v8 = (a1 + 32);
    v9 = *(v18 + 16);
    v10 = v5;
    do
    {
      v11 = *v8;
      v19 = v7;
      v12 = *(v7 + 24);
      v13 = v9 + 1;
      if (v9 >= v12 >> 1)
      {
        sub_1CFBCAA8C((v12 > 1), v9 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v13;
      *(v7 + 8 * v9 + 32) = v11;
      v8 += 2;
      ++v9;
      --v10;
    }

    while (v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v13)
    {
      v14 = 0.0;
      goto LABEL_15;
    }
  }

  v14 = *(v7 + 32);
  v15 = v13 - 1;
  if (v13 != 1)
  {
    v16 = 40;
    do
    {
      if (v14 < *(v7 + v16))
      {
        v14 = *(v7 + v16);
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

LABEL_15:

  return (v5 - 1) * a3 + v14 * v5 <= a2;
}

uint64_t sub_1CFC3C7C4(uint64_t a1, double a2, double a3)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC8, &qword_1CFCA6038);
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v64 - v7;
  v77 = sub_1CFC9DFD8();
  v8 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFD0, &qword_1CFCA6040);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v64 - v15);
  v17 = sub_1CFC9E048();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFD8, &qword_1CFCA6048);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFE0, &unk_1CFCA6050);
  v25 = v24 - 8;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - v27;
  v68 = a2;
  (*(v18 + 16))(v23, a1, v17, v26);
  (*(v18 + 32))(v20, v23, v17);
  v29 = MEMORY[0x1E697E3C0];
  sub_1CFC3E75C(&qword_1EC4EEFE8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
  sub_1CFC9F858();
  v65 = *(v25 + 44);
  *&v28[v65] = 0;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030) + 36);
  v31 = sub_1CFC3E75C(&qword_1EC4EEFB8, v29, MEMORY[0x1E697E3D8]);
  v71 = 0;
  v66 = (v8 + 16);
  v76 = (v8 + 32);
  v72 = (v6 + 56);
  v32 = (v6 + 48);
  v33 = (v8 + 8);
  v34 = 0.0;
  v35 = 0.0;
  v69 = v17;
  while (1)
  {
    sub_1CFC9FA48();
    if (*&v28[v30] == v79[0])
    {
      v36 = 1;
      v38 = v74;
      v37 = v75;
      goto LABEL_6;
    }

    v39 = v33;
    v40 = v16;
    v41 = v32;
    v42 = sub_1CFC9FA88();
    v43 = v67;
    v44 = v77;
    (*v66)(v67);
    v42(v79, 0);
    v45 = v31;
    v46 = v30;
    v47 = v45;
    sub_1CFC9FA58();
    v37 = v75;
    v48 = v76;
    v49 = *(v75 + 48);
    v50 = v73;
    v51 = v71;
    *v73 = v71;
    result = (*v48)(&v50[v49], v43, v44);
    v53 = __OFADD__(v51, 1);
    v54 = v51 + 1;
    if (v53)
    {
      break;
    }

    v71 = v54;
    *&v28[v65] = v54;
    v38 = v74;
    sub_1CFBCCE88(v73, v74, &qword_1EC4EEFC8, &qword_1CFCA6038);
    v36 = 0;
    v30 = v46;
    v31 = v47;
    v32 = v41;
    v16 = v40;
    v33 = v39;
LABEL_6:
    (*v72)(v38, v36, 1, v37);
    sub_1CFBCCE88(v38, v16, &qword_1EC4EEFD0, &qword_1CFCA6040);
    if ((*v32)(v16, 1, v37) == 1)
    {
      return sub_1CFBC2FB0(v28, &qword_1EC4EEFE0, &unk_1CFCA6050);
    }

    v55 = *v16;
    v56 = v77;
    v57 = v16 + *(v37 + 48);
    v58 = v70;
    (*v76)(v70, v57, v77);
    LOBYTE(v79[0]) = 0;
    v78 = 1;
    sub_1CFC9DFB8();
    v60 = v59;
    v62 = v61;
    (*v33)(v58, v56);
    if (v55 <= 0)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = a3;
    }

    v34 = v34 + v63 + v62;
    if (v35 <= v60)
    {
      v35 = v60;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC3CE3C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = sub_1CFC9DFD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  Width = CGRectGetWidth(v36);
  v20 = sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1CFC9FA18();
  sub_1CFC9FA48();
  result = sub_1CFC9FA38();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = result - 1;
    v33 = v13;
    sub_1CFC9FA18();
    sub_1CFC9FA48();
    v22 = sub_1CFC9FA38();
    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    MinX = CGRectGetMinX(v37);
    (*(*(v20 - 8) + 16))(v18, a1, v20);
    v24 = *(v16 + 36);
    sub_1CFC9FA18();
    sub_1CFC9FA48();
    if (*&v18[v24] != v34[0])
    {
      v25 = v12;
      v26 = (Width - v32 * a6) / v22;
      v27 = (v33 + 16);
      v28 = v26 + a6;
      v29 = (v33 + 8);
      do
      {
        v30 = sub_1CFC9FA88();
        (*v27)(v15);
        v30(v34, 0);
        sub_1CFC9FA58();
        LOBYTE(v34[0]) = 0;
        v35[0] = 1;
        sub_1CFC9DFB8();
        v38.origin.x = a2;
        v38.origin.y = a3;
        v38.size.width = a4;
        v38.size.height = a5;
        CGRectGetMidY(v38);
        sub_1CFC9F5A8();
        LOBYTE(v34[0]) = 0;
        v35[0] = 1;
        sub_1CFC9DFC8();
        (*v29)(v15, v25);
        MinX = v28 + MinX;
        sub_1CFC9FA48();
      }

      while (*&v18[v24] != v34[0]);
    }

    return sub_1CFBC2FB0(v18, &qword_1EC4EEFC0, &qword_1CFCA6030);
  }

  return result;
}

uint64_t sub_1CFC3D240(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = sub_1CFC9DFD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  Width = CGRectGetWidth(v35);
  v22 = sub_1CFC9E048();
  (*(*(v22 - 8) + 16))(v19, a1, v22);
  v23 = *(v17 + 44);
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1CFC9FA18();
  sub_1CFC9FA48();
  if (*&v19[v23] != v33[0])
  {
    v31 = Width;
    v30 = (v13 + 16);
    v24 = (v13 + 8);
    do
    {
      v25 = sub_1CFC9FA88();
      (*v30)(v15);
      v25(v33, 0);
      sub_1CFC9FA58();
      LOBYTE(v33[0]) = 0;
      v32 = 1;
      sub_1CFC9DFB8();
      v27 = v26;
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      CGRectGetMinX(v36);
      sub_1CFC9F5A8();
      LOBYTE(v33[0]) = 0;
      v32 = 1;
      sub_1CFC9DFC8();
      (*v24)(v15, v12);
      MinY = MinY + v27 + a6;
      sub_1CFC9FA48();
    }

    while (*&v19[v23] != v33[0]);
  }

  return sub_1CFBC2FB0(v19, &qword_1EC4EEFC0, &qword_1CFCA6030);
}

void (*sub_1CFC3D690(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1CFC9DDD8();
  return sub_1CFC13DAC;
}

uint64_t sub_1CFC3D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_1CFC3D88C()
{
  result = qword_1EC4EEEE8;
  if (!qword_1EC4EEEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE70, &qword_1CFCA5DA8);
    sub_1CFC3D944();
    sub_1CFBA57C0(&qword_1EC4EEF00, &qword_1EC4EEEE0, &qword_1CFCA3630, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEE8);
  }

  return result;
}

unint64_t sub_1CFC3D944()
{
  result = qword_1EC4EEEF0;
  if (!qword_1EC4EEEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEED0, &qword_1CFCA5DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EEEC0, &qword_1CFCA5DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
    sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98, MEMORY[0x1E697D680]);
    sub_1CFC3C31C();
    swift_getOpaqueTypeConformance2();
    sub_1CFC9EA68();
    sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04D238, &qword_1EC4EEED8, &qword_1CFCA5DF0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEF0);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(type metadata accessor for LayoutTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1CFC9E158();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CFC3DC98()
{
  v1 = *(type metadata accessor for LayoutTipView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFC3AE60(v0 + v2, v3);
}

uint64_t sub_1CFC3DD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E4B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC3DD7C(uint64_t a1)
{
  v4 = *(type metadata accessor for LayoutTipView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFC3B4DC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1CFC3DEA4()
{
  result = qword_1EC4EEF20;
  if (!qword_1EC4EEF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF18, &qword_1CFCA5EB8);
    sub_1CFC3DFB4(&qword_1EC4EEF28, &qword_1EC4EEF30, &qword_1CFCA5EC0, sub_1CFC3DF54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF20);
  }

  return result;
}

uint64_t sub_1CFC3DFB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1CFC3E038()
{
  result = qword_1EC4EEF58;
  if (!qword_1EC4EEF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF60, &qword_1CFCA5ED8);
    sub_1CFC3E0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF58);
  }

  return result;
}

unint64_t sub_1CFC3E0C4()
{
  result = qword_1EC4EEF68;
  if (!qword_1EC4EEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF70, &qword_1CFCA5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF68);
  }

  return result;
}

double sub_1CFC3E148(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1CFC3E178(uint64_t a1)
{
  v2 = type metadata accessor for LayoutTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC3E1F0()
{
  result = qword_1EC4EEFA8;
  if (!qword_1EC4EEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEFA8);
  }

  return result;
}

unint64_t sub_1CFC3E248()
{
  result = qword_1EC4EEFB0;
  if (!qword_1EC4EEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEFB0);
  }

  return result;
}

uint64_t sub_1CFC3E29C(uint64_t a1)
{
  v21 = sub_1CFC9DFD8();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  v5 = sub_1CFC9FA28();
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CFBCAA6C(0, v5 & ~(v5 >> 63), 0);
  v6 = v24;
  result = sub_1CFC9FA18();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v20 = (v2 + 16);
    do
    {
      v9 = sub_1CFC9FA88();
      v10 = v21;
      (*v20)(v4);
      v9(v23, 0);
      v23[0] = 1;
      v22 = 1;
      sub_1CFC9DFB8();
      v12 = v11;
      v14 = v13;
      (*(v2 + 8))(v4, v10);
      v24 = v6;
      v15 = a1;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CFBCAA6C((v16 > 1), v17 + 1, 1);
        v6 = v24;
      }

      *(v6 + 16) = v17 + 1;
      v18 = v6 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      sub_1CFC9FA58();
      --v7;
      a1 = v15;
    }

    while (v7);
    return v6;
  }

  __break(1u);
  return result;
}

double sub_1CFC3E514(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAA8C(0, v3, 0);
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = (a1 + 40);
    do
    {
      v8 = *v7;
      v16 = v5;
      v9 = *(v5 + 24);
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_1CFBCAA8C((v9 > 1), v6 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v10;
      *(v5 + 8 * v6 + 32) = v8;
      v7 += 2;
      ++v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = *(v5 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    v13 = 40;
    do
    {
      if (v11 < *(v5 + v13))
      {
        v11 = *(v5 + v13);
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

LABEL_13:

  return a2;
}

uint64_t sub_1CFC3E630(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1CFC9FA18();
  result = sub_1CFC9FA48();
  if (v17 != v16)
  {
    v13 = sub_1CFC3E29C(a1);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    Width = CGRectGetWidth(v18);
    v15 = sub_1CFC3C680(v13, Width, a6);

    if (v15)
    {
      return sub_1CFC3CE3C(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      return sub_1CFC3D240(a1, a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1CFC3E75C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC3E7AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v14 = v7;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v8 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
    swift_beginAccess();
    sub_1CFBA29FC(v7 + v8, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);

    v9 = sub_1CFC9D4D8();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v11 = sub_1CFC9D4A8();
      v12 = v13;
      result = (*(v10 + 8))(v5, v9);
      goto LABEL_6;
    }

    result = sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t sub_1CFC3E9B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC26EF4(v4, v5);
  }

  return result;
}

uint64_t sub_1CFC3EA20@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF050, &qword_1CFCA6190);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF058, &qword_1CFCA6198);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF060, &qword_1CFCA61A0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF068, &qword_1CFCA61A8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  *v4 = sub_1CFC9E678();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF070, &qword_1CFCA61B0);
  sub_1CFC3EDA8(v1, &v4[*(v17 + 44)]);
  sub_1CFC9F538();
  sub_1CFC9E268();
  sub_1CFBCCE88(v4, v8, &qword_1EC4EF050, &qword_1CFCA6190);
  v18 = &v8[*(v6 + 44)];
  v19 = v44;
  *(v18 + 4) = v43;
  *(v18 + 5) = v19;
  *(v18 + 6) = v45;
  v20 = v40;
  *v18 = *&v39[168];
  *(v18 + 1) = v20;
  v21 = v42;
  *(v18 + 2) = v41;
  *(v18 + 3) = v21;
  v22 = swift_allocObject();
  v23 = *(v1 + 144);
  *(v22 + 144) = *(v1 + 128);
  *(v22 + 160) = v23;
  *(v22 + 176) = *(v1 + 160);
  v24 = *(v1 + 80);
  *(v22 + 80) = *(v1 + 64);
  *(v22 + 96) = v24;
  v25 = *(v1 + 112);
  *(v22 + 112) = *(v1 + 96);
  *(v22 + 128) = v25;
  v26 = *(v1 + 16);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v26;
  v27 = *(v1 + 48);
  *(v22 + 48) = *(v1 + 32);
  *(v22 + 64) = v27;
  sub_1CFBCCE88(v8, v12, &qword_1EC4EF058, &qword_1CFCA6198);
  v28 = &v12[*(v10 + 44)];
  *v28 = sub_1CFC45F7C;
  v28[1] = v22;
  v28[2] = 0;
  v28[3] = 0;
  v29 = swift_allocObject();
  v30 = *(v1 + 144);
  *(v29 + 144) = *(v1 + 128);
  *(v29 + 160) = v30;
  *(v29 + 176) = *(v1 + 160);
  v31 = *(v1 + 80);
  *(v29 + 80) = *(v1 + 64);
  *(v29 + 96) = v31;
  v32 = *(v1 + 112);
  *(v29 + 112) = *(v1 + 96);
  *(v29 + 128) = v32;
  v33 = *(v1 + 16);
  *(v29 + 16) = *v1;
  *(v29 + 32) = v33;
  v34 = *(v1 + 48);
  *(v29 + 48) = *(v1 + 32);
  *(v29 + 64) = v34;
  sub_1CFBCCE88(v12, v16, &qword_1EC4EF060, &qword_1CFCA61A0);
  v35 = &v16[*(v14 + 44)];
  *v35 = 0;
  *(v35 + 1) = 0;
  *(v35 + 2) = sub_1CFC45F84;
  *(v35 + 3) = v29;
  sub_1CFBCCE88(v16, v38, &qword_1EC4EF068, &qword_1CFCA61A8);
  sub_1CFC45FA8(v1, v39);
  return sub_1CFC45FA8(v1, v39);
}

uint64_t sub_1CFC3EDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF080, &qword_1CFCA61C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v109 = (&v97 - v4);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF088, &qword_1CFCA61D0);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v97 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF090, &qword_1CFCA61D8);
  MEMORY[0x1EEE9AC00](v111);
  v116 = &v97 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF098, &qword_1CFCA61E0);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v97 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A0, &qword_1CFCA61E8);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A8, &qword_1CFCA61F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v103 = &v97 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0B0, &unk_1CFCA61F8);
  MEMORY[0x1EEE9AC00](v106);
  v114 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = (&v97 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_1CFC9C448();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0B8, &qword_1CFCA6208);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v97 - v27;
  v29 = *a1;
  sub_1CFC202E8();
  v107 = v30;
  swift_getKeyPath();
  v100 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v120 = v29;
  v99 = sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v31 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v20 + 16))(v22, v29 + v31, v19);
  sub_1CFC9C3A8();
  (*(v20 + 8))(v22, v19);
  sub_1CFC9CF98();
  LOBYTE(v22) = sub_1CFC9EBC8();
  sub_1CFC9DE18();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0C0, &qword_1CFCA6238) + 36)];
  *v40 = v22;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = objc_opt_self();
  v42 = [v41 currentDevice];
  v43 = [v42 userInterfaceIdiom];

  v44 = v101;
  v45 = v101[1];
  v46 = *(v24 + 44);
  v107 = v28;
  v47 = &v28[v46];
  *v47 = v43;
  *(v47 + 1) = v45;
  *(v47 + 2) = 0x4070000000000000;
  v48 = sub_1CFC9E588();
  v49 = v102;
  *v102 = v48;
  v49[1] = 0x4024000000000000;
  v50 = v49;
  *(v49 + 16) = 0;
  swift_getKeyPath();
  *&v120 = v29;
  sub_1CFC9C158();

  v51 = *(v29 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (v51)
  {
    v52 = v51;
    v53 = v98;
    sub_1CFC3FBA4(v52, v98);

    v54 = v103;
    sub_1CFBCCE88(v53, v103, &qword_1EC4EF0A0, &qword_1CFCA61E8);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v103;
  }

  (*(v104 + 56))(v54, v55, 1, v105);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0C8, &qword_1CFCA6268);
  sub_1CFBCCE88(v54, v50 + *(v56 + 44), &qword_1EC4EF0A8, &qword_1CFCA61F0);
  v57 = [v41 currentDevice];
  v58 = [v57 userInterfaceIdiom];

  v59 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0D0, &qword_1CFCA6270) + 36));
  *v59 = v58;
  v59[1] = v45;
  v59[2] = 0x4070000000000000;
  LOBYTE(v57) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v60 = v50 + *(v106 + 36);
  *v60 = v57;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = sub_1CFC9E588();
  v66 = v109;
  *v109 = v65;
  *(v66 + 8) = 0;
  *(v66 + 16) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0D8, &qword_1CFCA6278);
  sub_1CFC40904(v44, v29, v66 + *(v67 + 44));
  sub_1CFC9F538();
  sub_1CFC9E268();
  v68 = v112;
  sub_1CFBCCE88(v66, v112, &qword_1EC4EF080, &qword_1CFCA61C8);
  v69 = (v68 + *(v108 + 36));
  v70 = v125;
  v69[4] = v124;
  v69[5] = v70;
  v69[6] = v126;
  v71 = v121;
  *v69 = v120;
  v69[1] = v71;
  v72 = v123;
  v69[2] = v122;
  v69[3] = v72;
  LOBYTE(v66) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v68;
  v82 = v116;
  sub_1CFBCCE88(v81, v116, &qword_1EC4EF088, &qword_1CFCA61D0);
  v83 = v82 + *(v111 + 36);
  *v83 = v66;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  v84 = [v41 currentDevice];
  v85 = [v84 userInterfaceIdiom];

  v86 = v113;
  sub_1CFBCCE88(v82, v113, &qword_1EC4EF090, &qword_1CFCA61D8);
  v87 = (v86 + *(v115 + 36));
  *v87 = v85;
  v87[1] = v45;
  v87[2] = 0x4070000000000000;
  v88 = v117;
  sub_1CFBCCE88(v86, v117, &qword_1EC4EF098, &qword_1CFCA61E0);
  v89 = v107;
  v90 = v110;
  sub_1CFBA29FC(v107, v110, &qword_1EC4EF0B8, &qword_1CFCA6208);
  v91 = v50;
  v92 = v114;
  sub_1CFBA29FC(v50, v114, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  v93 = v118;
  sub_1CFBA29FC(v88, v118, &qword_1EC4EF098, &qword_1CFCA61E0);
  v94 = v119;
  sub_1CFBA29FC(v90, v119, &qword_1EC4EF0B8, &qword_1CFCA6208);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0E0, &qword_1CFCA6280);
  sub_1CFBA29FC(v92, v94 + *(v95 + 48), &qword_1EC4EF0B0, &unk_1CFCA61F8);
  sub_1CFBA29FC(v93, v94 + *(v95 + 64), &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v88, &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v91, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  sub_1CFBC2FB0(v89, &qword_1EC4EF0B8, &qword_1CFCA6208);
  sub_1CFBC2FB0(v93, &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v92, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  return sub_1CFBC2FB0(v90, &qword_1EC4EF0B8, &qword_1CFCA6208);
}

uint64_t sub_1CFC3FACC(uint64_t a1)
{
  sub_1CFC2262C();
  v4 = *(a1 + 16);
  v5 = v4;
  v6 = *(&v4 + 1);
  sub_1CFBA29FC(&v6, &v3, &qword_1EC4EF078, &unk_1CFCA61B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v3 == 1)
  {
    sub_1CFC264F0();
    v4 = v5;
    LOBYTE(v3) = 0;
    sub_1CFC9F248();
  }

  return sub_1CFBC2FB0(&v5, &qword_1EC4EDEE0, &qword_1CFCA5670);
}

void sub_1CFC3FBA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1CFC9F968();
  sub_1CFC45FA8(v2, &time);
  v5 = sub_1CFC9F958();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v2 + 144);
  *(v6 + 160) = *(v2 + 128);
  *(v6 + 176) = v8;
  *(v6 + 192) = *(v2 + 160);
  v9 = *(v2 + 80);
  *(v6 + 96) = *(v2 + 64);
  *(v6 + 112) = v9;
  v10 = *(v2 + 112);
  *(v6 + 128) = *(v2 + 96);
  *(v6 + 144) = v10;
  v11 = *(v2 + 16);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v11;
  v12 = *(v2 + 48);
  *(v6 + 64) = *(v2 + 32);
  *(v6 + 80) = v12;
  sub_1CFC45FA8(v2, &time);
  v13 = a1;
  v14 = sub_1CFC9F958();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v7;
  v16 = *(v3 + 144);
  *(v15 + 160) = *(v3 + 128);
  *(v15 + 176) = v16;
  v17 = *(v3 + 160);
  v18 = *(v3 + 80);
  *(v15 + 96) = *(v3 + 64);
  *(v15 + 112) = v18;
  v19 = *(v3 + 112);
  *(v15 + 128) = *(v3 + 96);
  *(v15 + 144) = v19;
  v20 = *(v3 + 16);
  *(v15 + 32) = *v3;
  *(v15 + 48) = v20;
  v21 = *(v3 + 48);
  *(v15 + 64) = *(v3 + 32);
  *(v15 + 80) = v21;
  *(v15 + 192) = v17;
  *(v15 + 200) = v13;
  sub_1CFC9F388();
  v22 = v55;
  v23 = v56;
  v24 = v57;
  v25 = *v3;
  swift_getKeyPath();
  time.value = v25;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v26 = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration + 16);
  v27 = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration + 8);
  time.value = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration);
  *&time.timescale = v27;
  time.epoch = v26;
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds < 0.0)
  {
    __break(1u);
  }

  else
  {
    v29 = Seconds;
    v30 = swift_allocObject();
    v31 = *(v3 + 144);
    *(v30 + 144) = *(v3 + 128);
    *(v30 + 160) = v31;
    *(v30 + 176) = *(v3 + 160);
    v32 = *(v3 + 80);
    *(v30 + 80) = *(v3 + 64);
    *(v30 + 96) = v32;
    v33 = *(v3 + 112);
    *(v30 + 112) = *(v3 + 96);
    *(v30 + 128) = v33;
    v34 = *(v3 + 16);
    *(v30 + 16) = *v3;
    *(v30 + 32) = v34;
    v35 = *(v3 + 48);
    *(v30 + 48) = *(v3 + 32);
    *(v30 + 64) = v35;
    v51 = v22;
    v52 = v23;
    v53 = v24;
    v49 = 0;
    v50 = v29;
    swift_getKeyPath();
    *&v48 = v25;
    sub_1CFC45FA8(v3, &time);
    sub_1CFC9C158();

    sub_1CFC402B4(*(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime), *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8), *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16), &time.value);
    swift_getKeyPath();
    sub_1CFC9C158();

    swift_getKeyPath();
    *&v48 = v25;
    sub_1CFC9C158();

    v36 = sub_1CFC9FD38();
    sub_1CFC402B4(v36, v37, v38, &v48);
    sub_1CFBDA7AC();
    sub_1CFC9F338();
    v39 = sub_1CFC9F178();
    KeyPath = swift_getKeyPath();
    v41 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0E8, &qword_1CFCA6308) + 36));
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = swift_getKeyPath();
    v43 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A0, &qword_1CFCA61E8) + 36));
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F0, &qword_1CFCA6340) + 28);
    v45 = *MEMORY[0x1E697E7D0];
    v46 = sub_1CFC9E168();
    (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
    *v43 = v42;
  }
}

void sub_1CFC400A4(uint64_t a1@<X2>, double *a2@<X8>)
{
  *&time.value = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (LOBYTE(v8) == 1)
  {
    *&time.value = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F238();
    Seconds = v8;
  }

  else
  {
    v5 = *a1;
    swift_getKeyPath();
    time.value = v5;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v6 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16);
    v7 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8);
    time.value = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
    *&time.timescale = v7;
    time.epoch = v6;
    Seconds = CMTimeGetSeconds(&time);
  }

  *a2 = Seconds;
}

void *sub_1CFC401DC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v11 = *(a4 + 64);
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
  sub_1CFC9F248();
  v11 = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  result = sub_1CFC9F238();
  if ((v7 & 1) == 0)
  {
    *&v11 = sub_1CFC9FD58();
    *(&v11 + 1) = v9;
    v12 = v10;
    return [a5 seekToTime_];
  }

  return result;
}

void sub_1CFC402B4(CMTimeValue a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v4 = a2;
  v41 = a1;
  v42 = HIDWORD(a2);
  v5 = sub_1CFCA0298();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFCA03B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFCA03C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  time.value = v41;
  time.timescale = v4;
  time.flags = v42;
  time.epoch = v43;
  CMTimeGetSeconds(&time);
  v43 = sub_1CFCA03E8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7030], v5);
  sub_1CFCA03A8();
  (*(v6 + 8))(v8, v5);
  sub_1CFC9BD88();
  (*(v10 + 8))(v12, v9);
  sub_1CFC46D78(&unk_1EE04CEC0, MEMORY[0x1E696A188], MEMORY[0x1E696A180]);
  sub_1CFCA03D8();
  (*(v14 + 8))(v16, v13);
  sub_1CFBB4460();
  v17 = sub_1CFC9EDF8();
  v19 = v18;
  LOBYTE(v9) = v20;
  sub_1CFC9ECE8();
  v21 = sub_1CFC9EDC8();
  v23 = v22;
  LOBYTE(v12) = v24;

  sub_1CFBB44C0(v17, v19, v9 & 1);

  v25 = sub_1CFC9ED78();
  v27 = v26;
  LOBYTE(v9) = v28;
  sub_1CFBB44C0(v21, v23, v12 & 1);

  sub_1CFC9EC98();
  v29 = sub_1CFC9ED38();
  v31 = v30;
  LOBYTE(v23) = v32;
  sub_1CFBB44C0(v25, v27, v9 & 1);

  LODWORD(time.value) = sub_1CFC9E908();
  v33 = sub_1CFC9ED68();
  v35 = v34;
  LOBYTE(v9) = v36;
  v38 = v37;
  sub_1CFBB44C0(v29, v31, v23 & 1);

  v39 = v44;
  *v44 = v33;
  v39[1] = v35;
  *(v39 + 16) = v9 & 1;
  v39[3] = v38;
}

void *sub_1CFC406E4(char a1, uint64_t a2)
{
  *&v13.value = *(a2 + 32);
  LOBYTE(v14) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F248();
  if (a1)
  {
    v4 = *a2;
    swift_getKeyPath();
    v13.value = v4;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v5 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16);
    v6 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8);
    v13.value = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
    *&v13.timescale = v6;
    v13.epoch = v5;
    Seconds = CMTimeGetSeconds(&v13);
    *&v13.value = *(a2 + 64);
    v14 = Seconds;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F248();
    swift_getKeyPath();
    v13.value = v4;
    sub_1CFC9C158();

    v8 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]);
    *&v13.value = *(a2 + 48);
    LOBYTE(v14) = v8;
    sub_1CFC9F248();
    return sub_1CFC2680C();
  }

  else
  {
    *&v13.value = *(a2 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F238();
    v10 = sub_1CFC9FD58();
    sub_1CFC26D0C(v10, v11, v12);
    *&v13.value = *(a2 + 48);
    result = sub_1CFC9F238();
    if (LOBYTE(v14) == 1)
    {
      return sub_1CFC264F0();
    }
  }

  return result;
}

uint64_t sub_1CFC40904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF100, &qword_1CFCA6378);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v96 = v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF108, &qword_1CFCA6380);
  v9 = *(v8 - 8);
  v82 = v8;
  v83 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v81 = v77 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF110, &qword_1CFCA6388);
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = v77 - v13;
  v80 = sub_1CFC9E858();
  v99 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v87 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF118, &qword_1CFCA6390);
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = v77 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF120, &qword_1CFCA6398);
  v94 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF128, &qword_1CFCA63A0);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21);
  v89 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v77 - v25;
  v27 = *(a1 + 96);
  v28 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF130, &qword_1CFCA63A8) + 36) - v25);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v30 = *MEMORY[0x1E69816C0];
  v31 = sub_1CFC9F1D8();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v26 = v27;
  *(v26 + 4) = 257;
  v32 = v27;
  v33 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  v35 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF140, &qword_1CFCA63E8) + 36)];
  v88 = v26;
  *v35 = KeyPath;
  v35[1] = v33;
  sub_1CFC9CD28();
  sub_1CFC9CD28();
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v36 = &v26[*(v22 + 44)];
  v37 = v101[12];
  *v36 = v101[11];
  *(v36 + 1) = v37;
  *(v36 + 2) = v101[13];
  v38 = swift_allocObject();
  v39 = *(a1 + 144);
  *(v38 + 144) = *(a1 + 128);
  *(v38 + 160) = v39;
  *(v38 + 176) = *(a1 + 160);
  v40 = *(a1 + 80);
  *(v38 + 80) = *(a1 + 64);
  *(v38 + 96) = v40;
  v41 = *(a1 + 112);
  *(v38 + 112) = *(a1 + 96);
  *(v38 + 128) = v41;
  v42 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v42;
  v43 = *(a1 + 48);
  *(v38 + 48) = *(a1 + 32);
  *(v38 + 64) = v43;
  sub_1CFC45FA8(a1, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF148, &qword_1CFCA63F0);
  sub_1CFC46790(&qword_1EE04D3A8, &qword_1EC4EF148, &qword_1CFCA63F0, sub_1CFC4600C);
  sub_1CFC9F298();
  v44 = v87;
  sub_1CFC9E848();
  v78 = MEMORY[0x1E697D680];
  sub_1CFBA57C0(&qword_1EE04D1D0, &qword_1EC4EF118, &qword_1CFCA6390, MEMORY[0x1E697D680]);
  v77[1] = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v45 = v86;
  v47 = v79;
  v46 = v80;
  sub_1CFC9EEC8();
  v48 = *(v99 + 8);
  v99 += 8;
  v48(v44, v46);
  (*(v15 + 8))(v17, v47);
  v49 = swift_allocObject();
  v50 = *(a1 + 144);
  *(v49 + 144) = *(a1 + 128);
  *(v49 + 160) = v50;
  *(v49 + 176) = *(a1 + 160);
  v51 = *(a1 + 80);
  *(v49 + 80) = *(a1 + 64);
  *(v49 + 96) = v51;
  v52 = *(a1 + 112);
  *(v49 + 112) = *(a1 + 96);
  *(v49 + 128) = v52;
  v53 = *(a1 + 16);
  *(v49 + 16) = *a1;
  *(v49 + 32) = v53;
  v54 = *(a1 + 48);
  *(v49 + 48) = *(a1 + 32);
  *(v49 + 64) = v54;
  v100 = a1;
  sub_1CFC45FA8(a1, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF168, &qword_1CFCA6418);
  sub_1CFC461BC(&qword_1EE04D398, &qword_1EC4EF168, &qword_1CFCA6418, sub_1CFC46240);
  v55 = v81;
  sub_1CFC9F298();
  v56 = v87;
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1C0, &qword_1EC4EF108, &qword_1CFCA6380, v78);
  v57 = v92;
  v58 = v82;
  sub_1CFC9EEC8();
  v48(v56, v46);
  (*(v83 + 8))(v55, v58);
  v59 = v96;
  sub_1CFC4153C(v96);
  v60 = v89;
  sub_1CFBA29FC(v88, v89, &qword_1EC4EF128, &qword_1CFCA63A0);
  v87 = *(v94 + 16);
  v61 = v90;
  v62 = v91;
  (v87)(v90, v45, v91);
  v99 = *(v98 + 16);
  v63 = v93;
  (v99)(v93, v57, v95);
  v64 = v97;
  sub_1CFBA29FC(v59, v97, &qword_1EC4EF100, &qword_1CFCA6378);
  v65 = v60;
  v66 = v84;
  sub_1CFBA29FC(v65, v84, &qword_1EC4EF128, &qword_1CFCA63A0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF198, &qword_1CFCA6450);
  v68 = v66 + v67[12];
  *v68 = 0;
  *(v68 + 8) = 1;
  (v87)(v66 + v67[16], v61, v62);
  v69 = v66 + v67[20];
  *v69 = 0;
  *(v69 + 8) = 1;
  v70 = v95;
  (v99)(v66 + v67[24], v63, v95);
  v71 = v66 + v67[28];
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_1CFBA29FC(v64, v66 + v67[32], &qword_1EC4EF100, &qword_1CFCA6378);
  v72 = v66 + v67[36];
  *v72 = 0;
  *(v72 + 8) = 1;
  *(v66 + v67[40]) = v85;
  swift_retain_n();
  sub_1CFBC2FB0(v96, &qword_1EC4EF100, &qword_1CFCA6378);
  v73 = *(v98 + 8);
  v73(v92, v70);
  v74 = *(v94 + 8);
  v75 = v91;
  v74(v86, v91);
  sub_1CFBC2FB0(v88, &qword_1EC4EF128, &qword_1CFCA63A0);

  sub_1CFBC2FB0(v97, &qword_1EC4EF100, &qword_1CFCA6378);
  v73(v93, v70);
  v74(v90, v75);
  return sub_1CFBC2FB0(v89, &qword_1EC4EF128, &qword_1CFCA63A0);
}

uint64_t sub_1CFC4153C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v61 = sub_1CFC9E648();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1A0, &qword_1CFCA6458);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1A8, &qword_1CFCA6460);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v53 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1B0, &qword_1CFCA6468);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v53 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1B8, &qword_1CFCA6470);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v53 - v15;
  v66 = sub_1CFC9E858();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1C0, &qword_1CFCA6478);
  MEMORY[0x1EEE9AC00](v64);
  v19 = &v53 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1C8, &qword_1CFCA6480);
  v20 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v22 = &v53 - v21;
  v23 = sub_1CFC9D568();
  if (v23)
  {
    v62 = &v53;
    MEMORY[0x1EEE9AC00](v23);
    MEMORY[0x1EEE9AC00](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1D8, &qword_1CFCA6490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
    sub_1CFC46790(&qword_1EC4EF1E8, &qword_1EC4EF1D8, &qword_1CFCA6490, sub_1CFC46844);
    sub_1CFC469B4();
    sub_1CFC9ED08();
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v25 = v64;
    v26 = &v19[*(v64 + 36)];
    v27 = v76;
    *v26 = v75;
    *(v26 + 1) = v27;
    *(v26 + 2) = v77;
    sub_1CFC9E848();
    v28 = sub_1CFC4654C();
    v29 = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v30 = v66;
    sub_1CFC9EEC8();
    (*(v63 + 8))(v17, v30);
    sub_1CFBC2FB0(v19, &qword_1EC4EF1C0, &qword_1CFCA6478);
    v31 = v65;
    (*(v20 + 16))(v68, v22, v65);
    swift_storeEnumTagMultiPayload();
    v71 = v25;
    v72 = v30;
    v73 = v28;
    v74 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1CFC46604();
    sub_1CFC9E798();
    return (*(v20 + 8))(v22, v31);
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 176) = *(v1 + 160);
    v34 = *(v1 + 144);
    *(v33 + 144) = *(v1 + 128);
    *(v33 + 160) = v34;
    v35 = *(v1 + 80);
    *(v33 + 80) = *(v1 + 64);
    *(v33 + 96) = v35;
    v36 = *(v1 + 112);
    *(v33 + 112) = *(v1 + 96);
    *(v33 + 128) = v36;
    v37 = *(v1 + 16);
    *(v33 + 16) = *v1;
    *(v33 + 32) = v37;
    v38 = *(v1 + 48);
    *(v33 + 48) = *(v1 + 32);
    *(v33 + 64) = v38;
    MEMORY[0x1EEE9AC00](v33);
    sub_1CFC45FA8(v1, &v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8);
    sub_1CFC4600C();
    sub_1CFC9F298();
    sub_1CFC9E848();
    v39 = sub_1CFBA57C0(&qword_1EE04D1E0, &qword_1EC4EF1A0, &qword_1CFCA6458, MEMORY[0x1E697D680]);
    v40 = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v41 = v66;
    v42 = v40;
    v54 = v40;
    sub_1CFC9EEC8();
    (*(v63 + 8))(v17, v41);
    (*(v55 + 8))(v6, v4);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    v45 = sub_1CFC9BE28();
    v47 = v46;

    v71 = v45;
    v72 = v47;
    *&v75 = v4;
    *(&v75 + 1) = v41;
    *&v76 = v39;
    *(&v76 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    sub_1CFBB4460();
    v48 = v57;
    sub_1CFC9EF68();

    (*(v56 + 8))(v8, v48);
    v49 = v59;
    sub_1CFC9E638();
    v50 = v58;
    sub_1CFC9E1B8();
    (*(v60 + 8))(v49, v61);
    sub_1CFBC2FB0(v10, &qword_1EC4EF1B0, &qword_1CFCA6468);
    v75 = *(v2 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFC9F238();
    sub_1CFC9E5E8();
    v51 = v62;
    sub_1CFC9E198();

    sub_1CFBC2FB0(v50, &qword_1EC4EF1B0, &qword_1CFCA6468);
    sub_1CFBA29FC(v51, v68, &qword_1EC4EF1B0, &qword_1CFCA6468);
    swift_storeEnumTagMultiPayload();
    v52 = sub_1CFC4654C();
    *&v75 = v64;
    *(&v75 + 1) = v41;
    *&v76 = v52;
    *(&v76 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    sub_1CFC46604();
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v51, &qword_1EC4EF1B0, &qword_1CFCA6468);
  }
}

id sub_1CFC42104(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v4[0] = v1;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  result = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (result)
  {
    v3 = *(MEMORY[0x1E6960CC0] + 16);
    v4[0] = *MEMORY[0x1E6960CC0];
    v4[1] = *(MEMORY[0x1E6960CC0] + 8);
    v4[2] = v3;
    return [result seekToTime_];
  }

  return result;
}

uint64_t sub_1CFC421E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v19 - v1);
  v3 = sub_1CFC9F1A8();
  v4 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v6 = *MEMORY[0x1E69816C0];
  v7 = sub_1CFC9F1D8();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  *v2 = v3;
  v8 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  v10 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF158, &qword_1CFCA6400) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v11 = (v2 + *(v0 + 36));
  v12 = v21;
  *v11 = v20;
  v11[1] = v12;
  v11[2] = v22;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_1CFC9BE28();
  v17 = v16;

  v19[0] = v15;
  v19[1] = v17;
  sub_1CFC4600C();
  sub_1CFBB4460();
  sub_1CFC9EF68();

  return sub_1CFBC2FB0(v2, &qword_1EC4EF150, &qword_1CFCA63F8);
}

id sub_1CFC4248C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F248();
  sub_1CFC9F248();
  v2 = *a1;
  swift_getKeyPath();
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == 1)
  {
    return sub_1CFC2680C();
  }

  else
  {
    return sub_1CFC264F0();
  }
}

double sub_1CFC425A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1CFC9F628();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CFC9F5F8();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF188, &qword_1CFCA6438);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF180, &qword_1CFCA6430);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF178, &qword_1CFCA6428);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF170, &qword_1CFCA6420);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v42 - v20;
  v21 = *a1;
  swift_getKeyPath();
  *&v50 = v21;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v22 = sub_1CFC9F1A8();
  sub_1CFC9F5E8();
  sub_1CFC9F608();
  v23 = (v11 + *(v9 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF190, &unk_1CFCA6440);
  sub_1CFC46D78(&unk_1EE04D138, MEMORY[0x1E6982178], MEMORY[0x1E6982170]);
  v24 = v44;
  sub_1CFC9E298();
  (*(v47 + 8))(v5, v48);
  (*(v46 + 8))(v7, v24);
  *v23 = swift_getKeyPath();
  *v11 = v22;
  v25 = sub_1CFC9EC38();
  KeyPath = swift_getKeyPath();
  v27 = v43;
  sub_1CFBCCE88(v11, v43, &qword_1EC4EF188, &qword_1CFCA6438);
  v28 = (v27 + *(v13 + 44));
  *v28 = KeyPath;
  v28[1] = v25;
  v29 = v42;
  v30 = &v42[*(v16 + 44)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v32 = *MEMORY[0x1E69816E0];
  v33 = sub_1CFC9F1D8();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  sub_1CFBCCE88(v27, v29, &qword_1EC4EF180, &qword_1CFCA6430);
  v34 = sub_1CFC9F178();
  v35 = swift_getKeyPath();
  v36 = v45;
  sub_1CFBCCE88(v29, v45, &qword_1EC4EF178, &qword_1CFCA6428);
  v37 = (v36 + *(v19 + 44));
  *v37 = v35;
  v37[1] = v34;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v38 = v49;
  sub_1CFBCCE88(v36, v49, &qword_1EC4EF170, &qword_1CFCA6420);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF168, &qword_1CFCA6418) + 36));
  v40 = v51;
  *v39 = v50;
  v39[1] = v40;
  result = *&v52;
  v39[2] = v52;
  return result;
}

uint64_t sub_1CFC42B40()
{
  v3 = sub_1CFC9D4D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v89 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v89 - v28;
  v96 = v0;
  v29 = *v0;
  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v114 = v29;
  v31 = sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  v101 = v30;
  v100 = v31;
  sub_1CFC9C158();

  v102 = v29;
  v99 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes;
  v32 = *(v29 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  v33 = *(v32 + 16);

  v108 = v3;
  v110 = v33;
  v111 = v4;
  if (v33)
  {
    v34 = 0;
    v109 = v4 + 16;
    v105 = (v4 + 32);
    v35 = (v4 + 8);
    v36 = MEMORY[0x1E69E7CC0];
    while (v34 < *(v32 + 16))
    {
      v2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v1 = *(v4 + 72);
      (*(v4 + 16))(v18, v32 + v2 + v1 * v34, v3);
      if ((sub_1CFC9D488() & 1) != 0 || (sub_1CFC9D478() & 1) == 0)
      {
        (*v35)(v18, v3);
      }

      else
      {
        v37 = *v105;
        (*v105)(v107, v18, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v114 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFBCAA08(0, *(v36 + 16) + 1, 1);
          v36 = v114;
        }

        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1CFBCAA08((v39 > 1), v40 + 1, 1);
          v36 = v114;
        }

        *(v36 + 16) = v40 + 1;
        v41 = v36 + v2 + v40 * v1;
        v3 = v108;
        v37(v41, v107, v108);
        v4 = v111;
      }

      if (v110 == ++v34)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_14:

  if (*(v36 + 16))
  {
    v42 = v103;
    (*(v4 + 16))(v103, v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v103;
  }

  v44 = *(v4 + 56);
  v105 = (v4 + 56);
  v95 = v44;
  v44(v42, v43, 1, v3);
  swift_getKeyPath();
  v45 = v102;
  *&v114 = v102;
  sub_1CFC9C158();

  v46 = *(v45 + v99);
  v47 = *(v46 + 16);

  if (v47)
  {
    v48 = 0;
    v2 = v4 + 16;
    v110 = (v4 + 32);
    v49 = (v4 + 8);
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v104;
    v109 = v47;
    v107 = v2;
    while (v48 < *(v46 + 16))
    {
      v52 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v1 = *(v111 + 72);
      (*(v111 + 16))(v51, v46 + v52 + v1 * v48, v3);
      if (sub_1CFC9D488() & 1) != 0 || (sub_1CFC9D478())
      {
        (*v49)(v51, v3);
      }

      else
      {
        v53 = v3;
        v54 = *v110;
        (*v110)(v106, v51, v53);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *&v114 = v50;
        if ((v55 & 1) == 0)
        {
          sub_1CFBCAA08(0, *(v50 + 16) + 1, 1);
          v50 = v114;
        }

        v57 = *(v50 + 16);
        v56 = *(v50 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1CFBCAA08((v56 > 1), v57 + 1, 1);
          v50 = v114;
        }

        *(v50 + 16) = v57 + 1;
        v58 = v108;
        v54((v50 + v52 + v57 * v1), v106, v108);
        v3 = v58;
        v51 = v104;
        v47 = v109;
        v2 = v107;
      }

      if (v47 == ++v48)
      {
        goto LABEL_30;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v50 + 16))
  {
    v2 = v98;
    (*(v111 + 16))(v98, v50 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v3);
    v59 = 0;
    v1 = v103;
  }

  else
  {
    v59 = 1;
    v1 = v103;
    v2 = v98;
  }

  v60 = v97;
  v61 = v96;
  v62 = v95;

  v62(v2, v59, 1, v3);
  v115 = *(v61 + 13);
  v114 = *(v61 + 13);
  v116 = *(&v115 + 1);
  sub_1CFBA29FC(&v116, &v113, &qword_1EC4EF078, &unk_1CFCA61B8);
  sub_1CFBA29FC(&v116, &v113, &qword_1EC4EF078, &unk_1CFCA61B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v113 == 1)
  {
    sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
    goto LABEL_35;
  }

  swift_getKeyPath();
  v71 = v102;
  *&v114 = v102;
  sub_1CFC9C158();

  v72 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  v73 = v93;
  sub_1CFBA29FC(v71 + v72, v93, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v74 = v111;
  v75 = *(v111 + 48);
  if (v75(v73, 1, v3) == 1)
  {
    sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v73, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_45:
    v81 = v92;
    sub_1CFBA29FC(v2, v92, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v82 = v108;
    if (v75(v81, 1, v108) != 1)
    {
      v84 = v111;
      v85 = v90;
      (*(v111 + 32))(v90, v81, v82);
      v86 = sub_1CFC9D4A8();
      sub_1CFC26EF4(v86, v87);

      v113 = v115;
      v112 = 1;
      sub_1CFC9F248();
      sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
      (*(v84 + 8))(v85, v82);
      goto LABEL_53;
    }

    sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v81, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v83 = sub_1CFC9D938();
    __swift_project_value_buffer(v83, qword_1EE052308);
    v67 = sub_1CFC9D918();
    v68 = sub_1CFC9FAD8();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_51;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Voicemail: User tried to switch playback to speaker but no speaker route was found";
    goto LABEL_50;
  }

  (*(v74 + 32))(v60, v73, v3);
  v79 = (v74 + 8);
  if (sub_1CFC9D488())
  {
    sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
    (*v79)(v60, v3);
    goto LABEL_45;
  }

  v80 = sub_1CFC9D478();
  (*v79)(v60, v3);
  sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
  if (v80)
  {
    goto LABEL_45;
  }

LABEL_35:
  v63 = v94;
  sub_1CFBA29FC(v1, v94, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v64 = v111;
  v65 = v108;
  if ((*(v111 + 48))(v63, 1, v108) == 1)
  {
    sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v63, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (qword_1EE050010 == -1)
    {
LABEL_37:
      v66 = sub_1CFC9D938();
      __swift_project_value_buffer(v66, qword_1EE052308);
      v67 = sub_1CFC9D918();
      v68 = sub_1CFC9FAD8();
      if (!os_log_type_enabled(v67, v68))
      {
LABEL_51:

        goto LABEL_53;
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = "Voicemail: User tried to switch playback to receiver but no receiver route was found";
LABEL_50:
      _os_log_impl(&dword_1CFB9F000, v67, v68, v70, v69, 2u);
      MEMORY[0x1D3873280](v69, -1, -1);
      goto LABEL_51;
    }

LABEL_56:
    swift_once();
    goto LABEL_37;
  }

  v76 = v91;
  (*(v64 + 32))(v91, v63, v65);
  v77 = sub_1CFC9D4A8();
  sub_1CFC26EF4(v77, v78);

  v113 = v115;
  v112 = 0;
  sub_1CFC9F248();
  sub_1CFBC2FB0(&v115, &qword_1EC4EDEE0, &qword_1CFCA5670);
  (*(v64 + 8))(v76, v65);
LABEL_53:
  sub_1CFBC2FB0(v2, &qword_1EC4EE6F8, &qword_1CFCA6060);
  return sub_1CFBC2FB0(v1, &qword_1EC4EE6F8, &qword_1CFCA6060);
}

double sub_1CFC43884@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1CFC9D4D8();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - v11);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF158, &qword_1CFCA6400);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v32 - v13;

  v15 = sub_1CFC9F1A8();
  v16 = (v12 + *(v10 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v18 = *MEMORY[0x1E69816C0];
  v19 = sub_1CFC9F1D8();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v12 = v15;
  v36 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v35[0])
  {
    goto LABEL_2;
  }

  v21 = *a1;
  swift_getKeyPath();
  *&v36 = v21;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v22 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v21 + v22, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v23 = v32;
  if ((*(v32 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_8:
    v20 = sub_1CFC9F178();
    goto LABEL_9;
  }

  (*(v23 + 32))(v8, v5, v6);
  if (sub_1CFC9D488())
  {
    (*(v23 + 8))(v8, v6);
    goto LABEL_8;
  }

  v24 = sub_1CFC9D478();
  (*(v23 + 8))(v8, v6);
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_2:
  v20 = sub_1CFC9F0D8();
LABEL_9:
  v25 = v20;
  KeyPath = swift_getKeyPath();
  sub_1CFBCCE88(v12, v14, &qword_1EC4EF160, &unk_1CFCA6408);
  v27 = &v14[*(v33 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v28 = v34;
  sub_1CFBCCE88(v14, v34, &qword_1EC4EF158, &qword_1CFCA6400);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8) + 36));
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  result = *&v38;
  v29[2] = v38;
  return result;
}

uint64_t sub_1CFC43D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1CFC9E528();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF218, &qword_1CFCA64B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_1CFC9BE28();
  v15 = v14;

  v29 = v13;
  v30 = v15;
  v16 = *(a1 + 136);
  v17 = *(a1 + 144);
  v28 = *(a1 + 152);
  v32 = v16;
  v31 = v28;
  v26 = v16;
  v27 = v17;
  v24 = a1;
  sub_1CFC46B04(&v32, v25);

  sub_1CFBA44C0(&v31, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF238, &qword_1CFCA64F0);
  sub_1CFC46B60();
  sub_1CFBB4460();
  sub_1CFC9F328();
  sub_1CFC9E518();
  sub_1CFBA57C0(&qword_1EC4EF220, &qword_1EC4EF218, &qword_1CFCA64B0, MEMORY[0x1E697D690]);
  v18 = v23;
  sub_1CFC9EEE8();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
  v21 = v18 + *(result + 36);
  *v21 = KeyPath;
  *(v21 + 8) = 2;
  return result;
}

uint64_t sub_1CFC44064(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v10[0] = v2;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10[21] = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 9);
  *(v3 + 144) = *(a1 + 8);
  *(v3 + 160) = v4;
  *(v3 + 176) = a1[20];
  v5 = *(a1 + 5);
  *(v3 + 80) = *(a1 + 4);
  *(v3 + 96) = v5;
  v6 = *(a1 + 7);
  *(v3 + 112) = *(a1 + 6);
  *(v3 + 128) = v6;
  v7 = *(a1 + 1);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v7;
  v8 = *(a1 + 3);
  *(v3 + 48) = *(a1 + 2);
  *(v3 + 64) = v8;

  sub_1CFC45FA8(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF258, &qword_1CFCA6590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF250, &unk_1CFCA64F8);
  sub_1CFBA57C0(&qword_1EC4EF260, &qword_1EC4EF258, &qword_1CFCA6590, MEMORY[0x1E69E6338]);
  sub_1CFC46BE4();
  return sub_1CFC9F3B8();
}

uint64_t sub_1CFC4423C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF268, &qword_1CFCA6598);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = sub_1CFC9D498();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_7:
    v18[0] = sub_1CFC9D4B8();
    v18[1] = v16;
    sub_1CFBB4460();

    sub_1CFC9F218();
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](v10);
  v18[-2] = a1;
  MEMORY[0x1EEE9AC00](v13);
  v18[-2] = v14;
  v18[-1] = v15;
  sub_1CFC9F208();

LABEL_8:
  (*(v7 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
  sub_1CFC9E798();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CFC44510@<X0>(uint64_t a2@<X8>)
{
  sub_1CFC9D4B8();
  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1CFC4456C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = sub_1CFC9D4D8();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF208, &qword_1CFCA64A8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v53 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1F8, &qword_1CFCA64A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1D8, &qword_1CFCA6490);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v53 - v17;
  sub_1CFC44C94();
  v18 = sub_1CFC9F1C8();
  v19 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v21 = *MEMORY[0x1E69816E0];
  v22 = sub_1CFC9F1D8();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v13 = v18;
  v23 = sub_1CFC9ECA8();
  KeyPath = swift_getKeyPath();
  v25 = (v13 + *(v11 + 44));
  *v25 = KeyPath;
  v25[1] = v23;
  v64 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v62)
  {
    goto LABEL_2;
  }

  v27 = *a1;
  swift_getKeyPath();
  *&v64 = v27;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v28 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v27 + v28, v7, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v30 = v58;
  v29 = v59;
  if ((*(v58 + 48))(v7, 1, v59) == 1)
  {
    sub_1CFBC2FB0(v7, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  else
  {
    v31 = v53;
    (*(v30 + 32))();
    if (sub_1CFC9D488())
    {
      (*(v30 + 8))(v31, v29);
    }

    else
    {
      v32 = sub_1CFC9D478();
      (*(v30 + 8))(v31, v29);
      if ((v32 & 1) == 0)
      {
LABEL_2:
        v26 = sub_1CFC9F0D8();
        goto LABEL_9;
      }
    }
  }

  v26 = sub_1CFC9F178();
LABEL_9:
  v33 = v26;
  v34 = swift_getKeyPath();
  sub_1CFBCCE88(v13, v16, &qword_1EC4EF208, &qword_1CFCA64A8);
  v35 = &v16[*(v14 + 36)];
  *v35 = v34;
  v35[1] = v33;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [objc_opt_self() bundleForClass_];
  v38 = sub_1CFC9BE28();
  v40 = v39;

  v62 = v38;
  v63 = v40;
  sub_1CFC46844();
  sub_1CFBB4460();
  v41 = v54;
  sub_1CFC9EF68();

  sub_1CFBC2FB0(v16, &qword_1EC4EF1F8, &qword_1CFCA64A0);
  v42 = *a1;
  swift_getKeyPath();
  v62 = v42;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v43 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  v44 = v42 + v43;
  v45 = v56;
  sub_1CFBA29FC(v44, v56, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v46 = v58;
  v47 = v59;
  if ((*(v58 + 48))(v45, 1, v59) == 1)
  {
    sub_1CFBC2FB0(v45, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  else
  {
    v48 = sub_1CFC9D4B8();
    v50 = v46;
    v49 = v51;
    (*(v50 + 8))(v45, v47);
  }

  v60 = v48;
  v61 = v49;
  sub_1CFC9E1A8();

  return sub_1CFBC2FB0(v41, &qword_1EC4EF1D8, &qword_1CFCA6490);
}

uint64_t sub_1CFC44C94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1CFC9D4D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  swift_getKeyPath();
  v16[1] = v9;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v9 + v10, v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFBC2FB0(v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
    goto LABEL_10;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_1CFC9D488() & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_10;
  }

  v11 = sub_1CFC9D498();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  if (!v13)
  {
LABEL_10:
    v11 = v1[15];

    return v11;
  }

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_10;
  }

  return v11;
}

uint64_t sub_1CFC44F30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v80 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF298, &qword_1CFCA67F0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2A0, &qword_1CFCA67F8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v72 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2A8, &qword_1CFCA6800);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v72 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2B0, &qword_1CFCA6808);
  MEMORY[0x1EEE9AC00](v76);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2B8, &qword_1CFCA6810);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  if (a2 < 2 || a2 == 5)
  {
    sub_1CFC9F538();
    sub_1CFC9E268();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2C0, &qword_1CFCA6818);
    (*(*(v49 - 8) + 16))(v14, v75, v49);
    v50 = &v14[*(v76 + 36)];
    v51 = v86;
    *(v50 + 4) = v85;
    *(v50 + 5) = v51;
    *(v50 + 6) = v87;
    v52 = v82;
    *v50 = v81;
    *(v50 + 1) = v52;
    v53 = v84;
    *(v50 + 2) = v83;
    *(v50 + 3) = v53;
    v54 = sub_1CFC9EBA8();
    sub_1CFC9DE18();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_1CFBCCE88(v14, v20, &qword_1EC4EF2B0, &qword_1CFCA6808);
    v63 = &v20[*(v18 + 36)];
    *v63 = v54;
    *(v63 + 1) = v56;
    *(v63 + 2) = v58;
    *(v63 + 3) = v60;
    *(v63 + 4) = v62;
    v63[40] = 0;
    sub_1CFBCCE88(v20, v23, &qword_1EC4EF2B8, &qword_1CFCA6810);
    sub_1CFBA29FC(v23, v73, &qword_1EC4EF2B8, &qword_1CFCA6810);
    swift_storeEnumTagMultiPayload();
    sub_1CFC47128();
    v64 = v74;
    sub_1CFC9E798();
    sub_1CFBA29FC(v64, v79, &qword_1EC4EF2A8, &qword_1CFCA6800);
    swift_storeEnumTagMultiPayload();
    sub_1CFC470A4();
    sub_1CFC471B4();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v64, &qword_1EC4EF2A8, &qword_1CFCA6800);
    v48 = v23;
    v65 = &qword_1EC4EF2B8;
    v66 = &qword_1CFCA6810;
  }

  else
  {
    sub_1CFC9F538();
    sub_1CFC9E268();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2C0, &qword_1CFCA6818);
    if (a2 == 6)
    {
      (*(*(v30 - 8) + 16))(v17, v75, v30);
      v31 = &v17[*(v76 + 36)];
      v32 = v86;
      *(v31 + 4) = v85;
      *(v31 + 5) = v32;
      *(v31 + 6) = v87;
      v33 = v82;
      *v31 = v81;
      *(v31 + 1) = v33;
      v34 = v84;
      *(v31 + 2) = v83;
      *(v31 + 3) = v34;
      v35 = sub_1CFC9EBA8();
      sub_1CFC9DE18();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      sub_1CFBCCE88(v17, v26, &qword_1EC4EF2B0, &qword_1CFCA6808);
      v44 = &v26[*(v18 + 36)];
      *v44 = v35;
      *(v44 + 1) = v37;
      *(v44 + 2) = v39;
      *(v44 + 3) = v41;
      *(v44 + 4) = v43;
      v44[40] = 0;
      v45 = &qword_1EC4EF2B8;
      v46 = &qword_1CFCA6810;
      sub_1CFBCCE88(v26, v29, &qword_1EC4EF2B8, &qword_1CFCA6810);
      sub_1CFBA29FC(v29, v73, &qword_1EC4EF2B8, &qword_1CFCA6810);
      swift_storeEnumTagMultiPayload();
      sub_1CFC47128();
      v47 = v74;
      sub_1CFC9E798();
      sub_1CFBA29FC(v47, v79, &qword_1EC4EF2A8, &qword_1CFCA6800);
      swift_storeEnumTagMultiPayload();
      sub_1CFC470A4();
      sub_1CFC471B4();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v47, &qword_1EC4EF2A8, &qword_1CFCA6800);
      v48 = v29;
    }

    else
    {
      (*(*(v30 - 8) + 16))(v8, v75, v30);
      v67 = &v8[*(v76 + 36)];
      v68 = v86;
      *(v67 + 4) = v85;
      *(v67 + 5) = v68;
      *(v67 + 6) = v87;
      v69 = v82;
      *v67 = v81;
      *(v67 + 1) = v69;
      v70 = v84;
      *(v67 + 2) = v83;
      *(v67 + 3) = v70;
      v45 = &qword_1EC4EF2B0;
      v46 = &qword_1CFCA6808;
      sub_1CFBCCE88(v8, v11, &qword_1EC4EF2B0, &qword_1CFCA6808);
      sub_1CFBA29FC(v11, v79, &qword_1EC4EF2B0, &qword_1CFCA6808);
      swift_storeEnumTagMultiPayload();
      sub_1CFC470A4();
      sub_1CFC471B4();
      sub_1CFC9E798();
      v48 = v11;
    }

    v65 = v45;
    v66 = v46;
  }

  return sub_1CFBC2FB0(v48, v65, v66);
}

uint64_t sub_1CFC45894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC47050();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CFC458F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC47050();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CFC4595C(uint64_t a1)
{
  sub_1CFC47050();
  sub_1CFC9E768();
  __break(1u);
}

uint64_t sub_1CFC45984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF290, &qword_1CFCA67E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1CFC45A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

__n128 sub_1CFC45B6C@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();

  sub_1CFC9F228();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1CFC9F968();

  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  v12 = swift_allocObject();
  swift_weakInit();

  v13 = sub_1CFC9F958();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v11;
  v14[4] = v12;

  sub_1CFC9F388();
  result = v17;
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = v17.n128_u8[0];
  *(a4 + 24) = v17.n128_u64[1];
  *(a4 + 32) = v17.n128_u8[0];
  *(a4 + 40) = v17.n128_u64[1];
  *(a4 + 48) = v17.n128_u8[0];
  *(a4 + 56) = v17.n128_u64[1];
  *(a4 + 64) = v17;
  *(a4 + 80) = v17.n128_u8[0];
  *(a4 + 88) = v17.n128_u64[1];
  *(a4 + 96) = a3;
  *(a4 + 104) = v17.n128_u8[0];
  *(a4 + 112) = v17.n128_u64[1];
  *(a4 + 120) = 0xD000000000000013;
  *(a4 + 128) = 0x80000001CFCAC5F0;
  *(a4 + 136) = v17;
  *(a4 + 152) = v18;
  *(a4 + 160) = v19;
  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1CFC45EA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1CFC45EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CFC4603C()
{
  result = qword_1EE04D418;
  if (!qword_1EE04D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF158, &qword_1CFCA6400);
    sub_1CFC460F4();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D418);
  }

  return result;
}

unint64_t sub_1CFC460F4()
{
  result = qword_1EE04D4B0;
  if (!qword_1EE04D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF160, &unk_1CFCA6408);
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4B0);
  }

  return result;
}

uint64_t sub_1CFC461BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1CFC46240()
{
  result = qword_1EE04D3B8;
  if (!qword_1EE04D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF170, &qword_1CFCA6420);
    sub_1CFC462F8();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3B8);
  }

  return result;
}

unint64_t sub_1CFC462F8()
{
  result = qword_1EE04D3E8;
  if (!qword_1EE04D3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF178, &qword_1CFCA6428);
    sub_1CFC463B0();
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3E8);
  }

  return result;
}

unint64_t sub_1CFC463B0()
{
  result = qword_1EE04D428;
  if (!qword_1EE04D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF180, &qword_1CFCA6430);
    sub_1CFC46468();
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D428);
  }

  return result;
}

unint64_t sub_1CFC46468()
{
  result = qword_1EE04D4B8;
  if (!qword_1EE04D4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF188, &qword_1CFCA6438);
    sub_1CFBA57C0(&unk_1EE04D228, &qword_1EC4EF190, &unk_1CFCA6440, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4B8);
  }

  return result;
}

unint64_t sub_1CFC4654C()
{
  result = qword_1EE04D4E0;
  if (!qword_1EE04D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1C0, &qword_1CFCA6478);
    sub_1CFBA57C0(&qword_1EE04D210, &qword_1EC4EF1D0, &qword_1CFCA6488, MEMORY[0x1E697CD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4E0);
  }

  return result;
}

unint64_t sub_1CFC46604()
{
  result = qword_1EE04D4D0;
  if (!qword_1EE04D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1B0, &qword_1CFCA6468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1A0, &qword_1CFCA6458);
    sub_1CFC9E858();
    sub_1CFBA57C0(&qword_1EE04D1E0, &qword_1EC4EF1A0, &qword_1CFCA6458, MEMORY[0x1E697D680]);
    sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    sub_1CFC46D78(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4D0);
  }

  return result;
}

uint64_t sub_1CFC46790(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1CFC46D78(&qword_1EE04FFC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC46844()
{
  result = qword_1EC4EF1F0;
  if (!qword_1EC4EF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1F8, &qword_1CFCA64A0);
    sub_1CFC468FC();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF1F0);
  }

  return result;
}

unint64_t sub_1CFC468FC()
{
  result = qword_1EC4EF200;
  if (!qword_1EC4EF200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF208, &qword_1CFCA64A8);
    sub_1CFC460F4();
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF200);
  }

  return result;
}

unint64_t sub_1CFC469B4()
{
  result = qword_1EC4EF210;
  if (!qword_1EC4EF210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF218, &qword_1CFCA64B0);
    sub_1CFC9E528();
    sub_1CFBA57C0(&qword_1EC4EF220, &qword_1EC4EF218, &qword_1CFCA64B0, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EC4EF228, &qword_1EC4EF230, &qword_1CFCA64B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF210);
  }

  return result;
}

unint64_t sub_1CFC46B60()
{
  result = qword_1EC4EF240;
  if (!qword_1EC4EF240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF238, &qword_1CFCA64F0);
    sub_1CFC46BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF240);
  }

  return result;
}

unint64_t sub_1CFC46BE4()
{
  result = qword_1EC4EF248;
  if (!qword_1EC4EF248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF250, &unk_1CFCA64F8);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF248);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1CFC46D34@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1CFC9F1C8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC46D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CFC46DF0()
{
  result = qword_1EC4EF270;
  if (!qword_1EC4EF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF068, &qword_1CFCA61A8);
    sub_1CFC46E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF270);
  }

  return result;
}

unint64_t sub_1CFC46E7C()
{
  result = qword_1EC4EF278;
  if (!qword_1EC4EF278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF060, &qword_1CFCA61A0);
    sub_1CFC46F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF278);
  }

  return result;
}

unint64_t sub_1CFC46F08()
{
  result = qword_1EC4EF280;
  if (!qword_1EC4EF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF058, &qword_1CFCA6198);
    sub_1CFBA57C0(&qword_1EC4EF288, &qword_1EC4EF050, &qword_1CFCA6190, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF280);
  }

  return result;
}

unint64_t sub_1CFC46FE0()
{
  result = qword_1EE04D710;
  if (!qword_1EE04D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D710);
  }

  return result;
}

unint64_t sub_1CFC47050()
{
  result = qword_1EE04D718[0];
  if (!qword_1EE04D718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE04D718);
  }

  return result;
}

unint64_t sub_1CFC470A4()
{
  result = qword_1EE04D330;
  if (!qword_1EE04D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2A8, &qword_1CFCA6800);
    sub_1CFC47128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D330);
  }

  return result;
}

unint64_t sub_1CFC47128()
{
  result = qword_1EE04D458;
  if (!qword_1EE04D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2B8, &qword_1CFCA6810);
    sub_1CFC471B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D458);
  }

  return result;
}

unint64_t sub_1CFC471B4()
{
  result = qword_1EE04D520;
  if (!qword_1EE04D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2B0, &qword_1CFCA6808);
    sub_1CFBA57C0(&qword_1EE04D2C8, &qword_1EC4EF2C0, &qword_1CFCA6818, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D520);
  }

  return result;
}

unint64_t sub_1CFC4726C()
{
  result = qword_1EE04D2F8;
  if (!qword_1EE04D2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2C8, qword_1CFCA6820);
    sub_1CFC470A4();
    sub_1CFC471B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D2F8);
  }

  return result;
}

uint64_t sub_1CFC47330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFCA1DD0;
  sub_1CFCA0078();
  return v0;
}

uint64_t sub_1CFC473E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-v2];
  *(v0 + 16) = &unk_1F4C6AC70;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0;
  v4 = OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  swift_beginAccess();
  *(v0 + 56) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC68();
  sub_1CFC9FB68();
  v6(v3, 0, 1, v5);
  swift_beginAccess();
  sub_1CFC48094(v3, v0 + v4);
  swift_endAccess();
  return v0;
}

uint64_t sub_1CFC475AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  swift_allocObject();
  swift_weakLoadStrong();

  swift_weakInit();

  sub_1CFC9D158();
}

uint64_t sub_1CFC47740()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v3 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC4782C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFC4782C()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC37540, 0, 0);
}

uint64_t sub_1CFC478F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v3 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC479DC, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1CFC479DC()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC368A0, 0, 0);
}

uint64_t sub_1CFC47A80()
{

  sub_1CFBA79B8(v0 + 24);
  sub_1CFBA79B8(v0 + 40);
  sub_1CFC48024(v0 + OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallFilteringTipSectionController(uint64_t a1)
{
  result = qword_1EE04E398;
  if (!qword_1EE04E398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC47B50(uint64_t a1)
{
  sub_1CFC47C04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CFC47C04(uint64_t a1)
{
  if (!qword_1EE04D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
    v1 = sub_1CFC9FEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D0B8);
    }
  }
}

unint64_t sub_1CFC47C78(uint64_t a1)
{
  result = sub_1CFC47CA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC47CA0()
{
  result = qword_1EC4EF2D8;
  if (!qword_1EC4EF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF2D8);
  }

  return result;
}

unint64_t sub_1CFC47CF8()
{
  result = qword_1EC4EF2E0;
  if (!qword_1EC4EF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF2E0);
  }

  return result;
}

void (*sub_1CFC47D4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC36D38;
}

uint64_t sub_1CFC47DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFC47FB4(v3 + v7, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12[7] = 0;
    sub_1CFC9DC68();
    v11 = sub_1CFC9FBA8();
    (*(v9 + 8))(v6, v8);
    return v11;
  }

  return result;
}

uint64_t sub_1CFC47F48()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC47FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC48024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC48094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC48104()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC47720(v0);
}

uint64_t sub_1CFC48194()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFC478D0(v0);
}

uint64_t sub_1CFC48224(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v3 = sub_1CFC9C608();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9D808();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED580, &qword_1CFCA2480);
  sub_1CFC9D7E8();
  *(swift_allocObject() + 16) = xmmword_1CFCA1DD0;
  (*(v4 + 16))(v6, a2, v3);
  sub_1CFC340B0(v6);
  sub_1CFC33F38(v11);
  sub_1CFC9D7F8();

  type metadata accessor for FavoriteSensitiveBadge(0);
  sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge, &unk_1CFCA6D38);
  sub_1CFC9EE58();
  return (*(v8 + 8))(v10, v7);
}

double sub_1CFC484A4()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  return *(v0 + 16);
}

void sub_1CFC48544(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC4865C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v4 = sub_1CFC9CE08();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1CFC48754()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  return *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing);
}

uint64_t sub_1CFC487FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing);
  return result;
}

uint64_t sub_1CFC488D4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC489FC()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);

  return v1;
}

double sub_1CFC48AB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v6 = *(v2 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1CFCA02B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
    sub_1CFC9C148();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1CFC48C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1CFC48C7C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  v2 = sub_1CFC9CE08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig___observationRegistrar;
  v4 = sub_1CFC9C198();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1CFC48D74()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1CFC48E10()
{
  v1 = *(v0 + *(type metadata accessor for FavoriteCell(0) + 20));
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v2 = v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId;
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v3 = *(v2 + 8);

  v5 = sub_1CFC9C5D8();
  v6 = [v5 entryIdentifier];

  v7 = sub_1CFC9F768();
  v9 = v8;

  if (v3)
  {
    if (v4 == v7 && v3 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1CFCA02B8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1CFC48F68()
{
  v0 = sub_1CFC9CDA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C5E8();
  sub_1CFC48E10();
  sub_1CFC9CD98();
  sub_1CFBB0D7C(&qword_1EE04D678, MEMORY[0x1E6995A20], MEMORY[0x1E6995A18]);
  sub_1CFC9EFA8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CFC490A4(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSensitiveBadge(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF318, &qword_1CFCA6BD0);
  v5 = sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge, &unk_1CFCA6D38);
  sub_1CFC06888();
  v9 = v2;
  v10 = v5;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9F098();
  return sub_1CFC4A438(v4);
}

uint64_t sub_1CFC4922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1CFC9E858();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF370, &qword_1CFCA6C38);
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF378, &qword_1CFCA6C40);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v33 - v10;
  v12 = *(a1 + *(type metadata accessor for FavoriteCell(0) + 20));
  swift_getKeyPath();
  v38 = v12;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  if (*(v12 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1 && (sub_1CFC48E10() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF380, &qword_1CFCA6C48);
    sub_1CFC4A164();
    sub_1CFC9F298();
    sub_1CFC9E848();
    sub_1CFBA57C0(&qword_1EC4EF3D0, &qword_1EC4EF370, &qword_1CFCA6C38, MEMORY[0x1E697D680]);
    sub_1CFBB0D7C(&qword_1EE04FFF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v16 = v35;
    sub_1CFC9EEC8();
    (*(v34 + 8))(v5, v16);
    (*(v33 + 8))(v8, v6);
    v17 = sub_1CFC9F158();
    KeyPath = swift_getKeyPath();
    v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3D8, &qword_1CFCA6CA0) + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3E0, &qword_1CFCA6CA8) + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3E8, &qword_1CFCA6CB0) + 28);
    v22 = *MEMORY[0x1E697DBA8];
    v23 = sub_1CFC9DE68();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    v24 = sub_1CFC9DF88();
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3F0, &qword_1CFCA6CE8) + 36)] = v24;
    v26 = v36;
    v25 = v37;
    __asm { FMOV            V0.2D, #-6.0 }

    *&v11[*(v36 + 36)] = _Q0;
    sub_1CFBCCE88(v11, v25, &qword_1EC4EF378, &qword_1CFCA6C40);
    v15 = v26;
    v14 = v25;
    v13 = 0;
  }

  else
  {
    v13 = 1;
    v15 = v36;
    v14 = v37;
  }

  return (*(v9 + 56))(v14, v13, 1, v15);
}

uint64_t sub_1CFC4970C@<X0>(uint64_t a2@<X8>)
{
  sub_1CFC9F538();
  sub_1CFC9DF68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF398, &qword_1CFCA6C50);
  sub_1CFC9F4B8();
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  v3 = sub_1CFC9F538();
  v5 = v4;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF380, &qword_1CFCA6C48) + 36);
  sub_1CFC9F1A8();
  sub_1CFC9F028();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3C8, &qword_1CFCA6C68);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_1CFC49844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1CFC4A6A0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CFC9D848();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1CFC9FAE8();
    v13 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1CFC49A48@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v13 - v3);
  v5 = sub_1CFC9D848();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC49844(v8);
  sub_1CFC9D828();
  (*(v6 + 8))(v8, v5);
  v9 = sub_1CFC9D818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1CFC4A638(v4);
LABEL_6:
    v11 = 0;
    result = 0;
    goto LABEL_7;
  }

  if ((*(v10 + 88))(v4, v9) != *MEMORY[0x1E69CA878])
  {
    (*(v10 + 8))(v4, v9);
    goto LABEL_6;
  }

  (*(v10 + 96))(v4, v9);
  v11 = *v4;
  result = sub_1CFC9F168();
LABEL_7:
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_1CFC49C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = sub_1CFC9C608();
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9CF88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v37 = a2;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);
  sub_1CFC9C158();

  v12 = *(a1 + 16);
  if (v12)
  {
    v28 = v11;
    v29 = v9;
    v30 = v8;
    v31 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1CFBB17DC(0, v12, 0);
    v13 = v37;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v33 = *(v14 + 56);
    v34 = v15;
    v32 = (v14 - 8);
    do
    {
      v17 = v35;
      v18 = v36;
      v19 = v14;
      v34(v35, v16, v36);
      v20 = sub_1CFC9C5B8();
      v22 = v21;
      v23 = sub_1CFC9C5E8();
      (*v32)(v17, v18);
      v37 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1CFBB17DC((v24 > 1), v25 + 1, 1);
        v13 = v37;
      }

      *(v13 + 16) = v25 + 1;
      v26 = (v13 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v16 += v33;
      --v12;
      v14 = v19;
    }

    while (v12);
    v8 = v30;
    v11 = v28;
    v9 = v29;
  }

  sub_1CFC9CF78();
  sub_1CFBB0D7C(&unk_1EE04D650, MEMORY[0x1E6995B10], MEMORY[0x1E6995B08]);
  sub_1CFC9EE48();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1CFC49FC8()
{
  result = qword_1EC4EF338;
  if (!qword_1EC4EF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
    sub_1CFC4A080();
    sub_1CFBA57C0(&qword_1EE04D368, &qword_1EC4EF358, &qword_1CFCA6BF0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF338);
  }

  return result;
}

unint64_t sub_1CFC4A080()
{
  result = qword_1EC4EF340;
  if (!qword_1EC4EF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F0, &qword_1CFCA6BA8);
    sub_1CFBA57C0(&qword_1EC4EF348, &qword_1EC4EF350, &qword_1CFCA6BE8, MEMORY[0x1E6995998]);
    sub_1CFBA57C0(&qword_1EE04D388, &qword_1EC4EF328, &qword_1CFCA6BD8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF340);
  }

  return result;
}

unint64_t sub_1CFC4A164()
{
  result = qword_1EC4EF388;
  if (!qword_1EC4EF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF380, &qword_1CFCA6C48);
    sub_1CFC4A21C();
    sub_1CFBA57C0(&qword_1EC4EF3C0, &qword_1EC4EF3C8, &qword_1CFCA6C68, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF388);
  }

  return result;
}

unint64_t sub_1CFC4A21C()
{
  result = qword_1EC4EF390;
  if (!qword_1EC4EF390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF398, &qword_1CFCA6C50);
    sub_1CFC4A2D4();
    sub_1CFBA57C0(&qword_1EC4EF3B0, &qword_1EC4EF3B8, &qword_1CFCA6C60, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF390);
  }

  return result;
}

unint64_t sub_1CFC4A2D4()
{
  result = qword_1EC4EF3A0;
  if (!qword_1EC4EF3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF3A8, &qword_1CFCA6C58);
    sub_1CFBB7460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF3A0);
  }

  return result;
}

uint64_t sub_1CFC4A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1CFC4A438(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSensitiveBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFC4A4BC(uint64_t a1)
{
  sub_1CFC34CF0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFC4A528()
{
  result = qword_1EC4EF408;
  if (!qword_1EC4EF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF360, &qword_1CFCA6C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
    sub_1CFC49FC8();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04D250, &qword_1EC4EF368, &qword_1CFCA6C30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF408);
  }

  return result;
}

uint64_t sub_1CFC4A638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC4A6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC4A710()
{
  result = qword_1EC4EF418;
  if (!qword_1EC4EF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF420, qword_1CFCA6D90);
    sub_1CFC4A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF418);
  }

  return result;
}

unint64_t sub_1CFC4A794()
{
  result = qword_1EE04D4C0;
  if (!qword_1EE04D4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF428, &unk_1CFCA8F00);
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4C0);
  }

  return result;
}

uint64_t type metadata accessor for SensitiveContentButtonBadgeModifier(uint64_t a1)
{
  result = qword_1EE04D948;
  if (!qword_1EE04D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC4A8D4(uint64_t a1)
{
  sub_1CFC34CF0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1CFC4A974(uint64_t a1)
{
  v3 = sub_1CFC9D7E8();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1CFC9FFD8();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAAAC(0, v7 & ~(v7 >> 63), 0);
    v8 = v56;
    if (v48)
    {
      v9 = sub_1CFC9FF88();
    }

    else
    {
      v9 = sub_1CFC9FF68();
      v10 = *(a1 + 36);
    }

    v53 = v9;
    v54 = v10;
    v55 = v48 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v37 = v1;
      v11 = 0;
      v42 = v47 + 32;
      v39 = a1 + 56;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v40 = v12;
      v38 = a1 + 64;
      v41 = xmmword_1CFCA1DD0;
      v44 = v6;
      v45 = a1;
      v43 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_39;
        }

        v15 = v53;
        v50 = v54;
        v51 = v8;
        v49 = v55;
        sub_1CFC4C66C(v53, v54, v55, a1, &qword_1EE04CF00, 0x1E69D8C00);
        v17 = v16;
        v18 = [v17 siriDisplayName];
        if (!v18)
        {
          v18 = [v17 value];
        }

        sub_1CFC9F768();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
        inited = swift_initStackObject();
        *(inited + 16) = v41;
        v20 = [v17 value];
        v21 = sub_1CFC9F768();
        v23 = v22;

        *(inited + 32) = v21;
        *(inited + 40) = v23;
        sub_1CFBB6864(inited);
        swift_setDeallocating();
        sub_1CFBB6A98(inited + 32);
        v24 = v44;
        sub_1CFC9D7D8();

        v8 = v51;
        v56 = v51;
        v26 = *(v51 + 16);
        v25 = *(v51 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1CFBCAAAC((v25 > 1), v26 + 1, 1);
          v8 = v56;
        }

        *(v8 + 16) = v26 + 1;
        (*(v47 + 32))(v8 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26, v24, v46);
        if (v48)
        {
          a1 = v45;
          v7 = v43;
          if (!v49)
          {
            goto LABEL_44;
          }

          if (sub_1CFC9FFA8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF498, &qword_1CFCA6F80);
          v13 = sub_1CFC9F9F8();
          sub_1CFCA0038();
          v13(v52, 0);
          if (v11 == v7)
          {
LABEL_36:
            sub_1CFC4CEAC(v53, v54, v55);
            return;
          }
        }

        else
        {
          a1 = v45;
          v7 = v43;
          if (v49)
          {
            goto LABEL_45;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v27 = 1 << *(v45 + 32);
          if (v15 >= v27)
          {
            goto LABEL_40;
          }

          v28 = v15 >> 6;
          v29 = *(v39 + 8 * (v15 >> 6));
          if (((v29 >> v15) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v45 + 36) != v50)
          {
            goto LABEL_42;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                sub_1CFC4CEAC(v15, v50, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_35;
              }
            }

            sub_1CFC4CEAC(v15, v50, 0);
          }

LABEL_35:
          v36 = *(a1 + 36);
          v53 = v27;
          v54 = v36;
          v55 = 0;
          if (v11 == v7)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void sub_1CFC4AEA8(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1CFC9FFD8();
    if (!v2)
    {
      return;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1CFCA0168();
    v26 = sub_1CFC9FF88();
    v27 = v3;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1CFCA0168();
  v4 = sub_1CFC9FF68();
  v5 = *(a1 + 36);
  v26 = v4;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1CFC4C66C(v26, v27, v28, a1, &qword_1EC4ED538, 0x1E69D8B80);
    v13 = v12;
    v14 = [v12 handle];

    sub_1CFCA0138();
    sub_1CFCA0178();
    sub_1CFCA0188();
    sub_1CFCA0148();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1CFC9FFA8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF4A0, &qword_1CFCA6F88);
      v7 = sub_1CFC9F9F8();
      sub_1CFCA0038();
      v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1CFC4CEAC(v26, v27, v28);
        return;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1CFC4CEAC(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        sub_1CFC4CEAC(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1CFC4B1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v81 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF430, &qword_1CFCA6ED0);
  MEMORY[0x1EEE9AC00](v73);
  v3 = &v63 - v2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF438, &qword_1CFCA6ED8);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v63 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF440, &qword_1CFCA6EE0);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v63 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF448, &qword_1CFCA6EE8);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v63 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF450, &qword_1CFCA6EF0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v63 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF458, &qword_1CFCA6EF8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF460, &unk_1CFCA6F00);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - v11;
  v12 = sub_1CFC9D848();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  swift_getKeyPath();
  v25 = sub_1CFC9CC28();

  if (v25)
  {
    v26 = v75;
    sub_1CFC4C250(&qword_1EC4EE3A0, &qword_1CFCA5830, MEMORY[0x1E69CA888], v15);
    sub_1CFC9D828();
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v27 = sub_1CFC9D818();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v26 = v75;
  }

  v28 = v21;
  sub_1CFBA29FC(v24, v21, &qword_1EC4EF410, &qword_1CFCA6D88);
  v29 = sub_1CFC9D818();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v21, 1, v29) == 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
    (*(*(v31 - 8) + 16))(v3, v76, v31);
    goto LABEL_6;
  }

  sub_1CFBA29FC(v21, v18, &qword_1EC4EF410, &qword_1CFCA6D88);
  v37 = (*(v30 + 88))(v18, v29);
  if (v37 != *MEMORY[0x1E69CA878])
  {
    if (v37 == *MEMORY[0x1E69CA880])
    {
      KeyPath = swift_getKeyPath();
      v44 = swift_allocObject();
      *(v44 + 16) = 1;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
      v46 = v65;
      (*(*(v45 - 8) + 16))(v65, v76, v45);
      v47 = v70;
      v48 = (v46 + *(v71 + 36));
      *v48 = KeyPath;
      v48[1] = sub_1CFBB9A70;
      v48[2] = v44;
      sub_1CFBA29FC(v46, v47, &qword_1EC4EF440, &qword_1CFCA6EE0);
      swift_storeEnumTagMultiPayload();
      sub_1CFC4BFB0();
      sub_1CFC4C094();
      v49 = v72;
      sub_1CFC9E798();
      sub_1CFBA29FC(v49, v79, &qword_1EC4EF458, &qword_1CFCA6EF8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC4BF24();
      sub_1CFC4C178();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v49, &qword_1EC4EF458, &qword_1CFCA6EF8);
      v33 = v46;
      v34 = &qword_1EC4EF440;
      v35 = &qword_1CFCA6EE0;
      goto LABEL_7;
    }

    (*(v30 + 8))(v18, v29);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
    (*(*(v62 - 8) + 16))(v3, v76, v62);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10, MEMORY[0x1E697FDF8]);
    v32 = v74;
    sub_1CFC9E798();
    sub_1CFBA29FC(v32, v79, &qword_1EC4EF438, &qword_1CFCA6ED8);
    swift_storeEnumTagMultiPayload();
    sub_1CFC4BF24();
    sub_1CFC4C178();
    sub_1CFC9E798();
    v33 = v32;
    v34 = &qword_1EC4EF438;
    v35 = &qword_1CFCA6ED8;
LABEL_7:
    sub_1CFBC2FB0(v33, v34, v35);
    v36 = v24;
    goto LABEL_15;
  }

  (*(v30 + 96))(v18, v29);
  v38 = *v18;
  v39 = *(v26 + *(type metadata accessor for SensitiveContentButtonBadgeModifier(0) + 20));
  v64 = v24;
  if (v39)
  {
    v40 = -10.0;
    v41 = sub_1CFC9F518();
  }

  else
  {
    v40 = 10.0;
    v41 = sub_1CFC9F528();
  }

  v50 = v41;
  v51 = v42;
  v52 = sub_1CFC9F168();

  sub_1CFC9F538();
  sub_1CFC9DF68();
  *&v96[38] = v100;
  *&v96[22] = v99;
  *&v96[6] = v98;
  *(v84 + 10) = *v96;
  v97 = 1;
  *&v83 = v38;
  *(&v83 + 1) = v52;
  *&v84[0] = 0;
  WORD4(v84[0]) = 1;
  *(&v84[1] + 10) = *&v96[16];
  *(&v84[2] + 10) = *&v96[32];
  *(&v84[3] + 1) = *(&v100 + 1);
  v85 = *&v40;
  *&v86 = v50;
  *(&v86 + 1) = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
  v54 = v66;
  (*(*(v53 - 8) + 16))(v66, v76, v53);
  v55 = (v54 + *(v68 + 36));
  v56 = v85;
  v55[4] = v84[3];
  v55[5] = v56;
  v55[6] = v86;
  v57 = v84[0];
  *v55 = v83;
  v55[1] = v57;
  v58 = v84[2];
  v55[2] = v84[1];
  v55[3] = v58;
  *&v91[14] = *&v96[46];
  *v91 = *&v96[32];
  v90 = *&v96[16];
  v87[0] = v38;
  v87[1] = v52;
  v87[2] = 0;
  v88 = 1;
  v89 = *v96;
  v92 = v40;
  v93 = 0;
  v94 = v50;
  v95 = v51;
  sub_1CFBA29FC(&v83, &v82, &qword_1EC4EF470, &qword_1CFCA6F18);
  sub_1CFBC2FB0(v87, &qword_1EC4EF470, &qword_1CFCA6F18);
  v59 = v67;
  sub_1CFBCCE88(v54, v67, &qword_1EC4EF460, &unk_1CFCA6F00);
  sub_1CFBA29FC(v59, v70, &qword_1EC4EF460, &unk_1CFCA6F00);
  swift_storeEnumTagMultiPayload();
  sub_1CFC4BFB0();
  sub_1CFC4C094();
  v60 = v72;
  sub_1CFC9E798();
  sub_1CFBA29FC(v60, v79, &qword_1EC4EF458, &qword_1CFCA6EF8);
  swift_storeEnumTagMultiPayload();
  sub_1CFC4BF24();
  sub_1CFC4C178();
  sub_1CFC9E798();

  sub_1CFBC2FB0(v60, &qword_1EC4EF458, &qword_1CFCA6EF8);
  sub_1CFBC2FB0(v59, &qword_1EC4EF460, &unk_1CFCA6F00);
  v36 = v64;
LABEL_15:
  sub_1CFBC2FB0(v36, &qword_1EC4EF410, &qword_1CFCA6D88);
  return sub_1CFBC2FB0(v28, &qword_1EC4EF410, &qword_1CFCA6D88);
}

void sub_1CFC4BDB0(id a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a1 siriDisplayName];
    if (!v4)
    {
      v4 = [a1 value];
    }

    v5 = v4;
    sub_1CFC9F768();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DD0;
  v7 = [a1 value];
  v8 = sub_1CFC9F768();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_1CFBB6864(inited);
  swift_setDeallocating();
  sub_1CFBB6A98(inited + 32);
  sub_1CFC9D7D8();
}

uint64_t sub_1CFC4BEE0()
{
  swift_getKeyPath();
  v0 = sub_1CFC9CC28();

  return v0 & 1;
}

unint64_t sub_1CFC4BF24()
{
  result = qword_1EE04D338;
  if (!qword_1EE04D338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF458, &qword_1CFCA6EF8);
    sub_1CFC4BFB0();
    sub_1CFC4C094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D338);
  }

  return result;
}

unint64_t sub_1CFC4BFB0()
{
  result = qword_1EE04D4E8;
  if (!qword_1EE04D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF460, &unk_1CFCA6F00);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10, MEMORY[0x1E697FDF8]);
    sub_1CFBA57C0(&qword_1EE04D380, &qword_1EC4EF470, &qword_1CFCA6F18, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4E8);
  }

  return result;
}

unint64_t sub_1CFC4C094()
{
  result = qword_1EE04D4F0;
  if (!qword_1EE04D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF440, &qword_1CFCA6EE0);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10, MEMORY[0x1E697FDF8]);
    sub_1CFBA57C0(&qword_1EE04D218, &qword_1EC4EE440, &qword_1CFCA6F20, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4F0);
  }

  return result;
}

unint64_t sub_1CFC4C178()
{
  result = qword_1EE04D350;
  if (!qword_1EE04D350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF438, &qword_1CFCA6ED8);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D350);
  }

  return result;
}

uint64_t sub_1CFC4C250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1CFC9E4E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1CFBA29FC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1CFC9FAE8();
    v19 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1CFC4C450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1CFBA29FC(v2, &v13 - v9, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v10, a1, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  sub_1CFC9FAE8();
  v12 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1CFC4C66C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D3872530](a1, a2, v11);
      sub_1CFBA2D80(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1CFBA2D80(0, a5, a6);
    if (sub_1CFC9FFB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1CFC9FFC8();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1CFC9FDD8();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1CFC9FDE8();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void *sub_1CFC4C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF478, &qword_1CFCA6F58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v62 = sub_1CFC9D7E8();
  v9 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v12;
  v52 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CFC9FF98();
    sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
    sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
    result = sub_1CFC9FA08();
    a1 = v65;
    v14 = v66;
    v16 = v67;
    v15 = v68;
    v17 = v69;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v15 = 0;
  }

  v51 = v16;
  v21 = (v16 + 64) >> 6;
  v55 = (v9 + 48);
  v56 = (v9 + 56);
  v53 = MEMORY[0x1E69E7CC0];
  v48 = v9;
  v49 = (v9 + 32);
  v54 = xmmword_1CFCA1DD0;
  v59 = a1;
  v60 = v8;
  v57 = v21;
  v58 = v14;
LABEL_8:
  v22 = v15;
  if (a1 < 0)
  {
    do
    {
      v27 = sub_1CFCA0018();
      if (!v27)
      {
        goto LABEL_27;
      }

      v64 = v27;
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      swift_dynamicCast();
      v26 = v70;
      v15 = v22;
      v25 = v17;
      if (!v70)
      {
        goto LABEL_27;
      }

LABEL_17:
      v63 = v25;
      v28 = v26;
      v29 = v28;
      if (!a3)
      {
        v30 = [v28 value];
        sub_1CFC9F768();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
      inited = swift_initStackObject();
      *(inited + 16) = v54;
      v32 = a3;

      v33 = [v29 value];
      v34 = sub_1CFC9F768();
      v36 = v35;

      *(inited + 32) = v34;
      *(inited + 40) = v36;
      sub_1CFBB6864(inited);
      swift_setDeallocating();
      sub_1CFBB6A98(inited + 32);
      v37 = v60;
      sub_1CFC9D7D8();

      v38 = v62;
      (*v56)(v37, 0, 1, v62);

      if ((*v55)(v37, 1, v38) != 1)
      {
        v39 = *v49;
        v40 = v47;
        v41 = v62;
        (*v49)(v47, v37, v62);
        v39(v50, v40, v41);
        v42 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1CFBB6DB4(0, v42[2] + 1, 1, v42);
        }

        a3 = v32;
        v44 = v42[2];
        v43 = v42[3];
        v14 = v58;
        if (v44 >= v43 >> 1)
        {
          v42 = sub_1CFBB6DB4((v43 > 1), v44 + 1, 1, v42);
        }

        v42[2] = v44 + 1;
        v45 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v53 = v42;
        result = (v39)(v42 + v45 + *(v48 + 72) * v44, v50, v62);
        a1 = v59;
        v21 = v57;
        v17 = v63;
        goto LABEL_8;
      }

      result = sub_1CFBC2FB0(v37, &qword_1EC4EF478, &qword_1CFCA6F58);
      v22 = v15;
      v17 = v63;
      a3 = v32;
      v14 = v58;
      a1 = v59;
      v21 = v57;
    }

    while (v59 < 0);
  }

  v23 = v22;
  v24 = v17;
  v15 = v22;
  if (v17)
  {
LABEL_13:
    v25 = (v24 - 1) & v24;
    v26 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_27:
    sub_1CFC4CEA4(a1);
    return v53;
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v21)
    {
      goto LABEL_27;
    }

    v24 = *(v14 + 8 * v15);
    ++v23;
    if (v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC4CE54(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFBA2D80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1CFC4CEAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1CFC4CEB8()
{
  result = qword_1EE04D300;
  if (!qword_1EE04D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF4A8, &unk_1CFCA6F90);
    sub_1CFC4BF24();
    sub_1CFC4C178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D300);
  }

  return result;
}

uint64_t sub_1CFC4CF94@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1CFC4D070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 48);
  return result;
}

double sub_1CFC4D140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CFC9E4E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CFC9E678();
  v37 = 0;
  sub_1CFC4D6F4(a2, a1, &v40);
  v49 = v42;
  v50 = v43;
  v47 = v40;
  v48 = v41;
  v52[1] = v41;
  v52[2] = v42;
  v52[3] = v43;
  v52[4] = v44;
  v51 = v44;
  v52[0] = v40;
  sub_1CFBA29FC(&v47, &v35, &qword_1EC4EF538, &qword_1CFCA7060);
  sub_1CFBC2FB0(v52, &qword_1EC4EF538, &qword_1CFCA7060);
  *&v36[23] = v48;
  *&v36[39] = v49;
  *&v36[55] = v50;
  *&v36[71] = v51;
  *&v36[7] = v47;
  v10 = v37;
  sub_1CFC9CD28();
  v11 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF540, &qword_1CFCA7068);
  sub_1CFC9CD28();
  v12 = BYTE8(v40);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((BYTE8(v40) & 1) == 0)
  {
    sub_1CFC9DE18();
    *(&v14 + 1) = v15;
    *(&v13 + 1) = v16;
  }

  v30 = v14;
  v31 = v13;
  v32 = v12;
  v38 = v12;
  sub_1CFC9F538();
  sub_1CFC9E268();
  *&v39[55] = v43;
  *&v39[71] = v44;
  *&v39[87] = v45;
  *&v39[103] = v46;
  *&v39[7] = v40;
  *&v39[23] = v41;
  *&v39[39] = v42;
  v17 = *a2;
  if (*(a2 + 8) == 1)
  {
    v34 = v17 & 1;
  }

  else
  {

    sub_1CFC9FAE8();
    v18 = sub_1CFC9EB68();
    v29 = v6;
    v19 = v10;
    v20 = v18;
    sub_1CFC9D858();

    v10 = v19;
    sub_1CFC9E4D8();
    swift_getAtKeyPath();
    sub_1CFC07CFC(v17, 0);
    (*(v7 + 8))(v9, v29);
  }

  sub_1CFBA2D80(0, &qword_1EE04CF28, 0x1E69DC888);
  sub_1CFC9CD28();
  v21 = sub_1CFC9F0C8();
  v22 = sub_1CFC9EBB8();
  *(a3 + 49) = *&v36[32];
  v23 = *&v36[64];
  *(a3 + 65) = *&v36[48];
  *(a3 + 81) = v23;
  v24 = *&v36[16];
  *(a3 + 17) = *v36;
  *a3 = v33;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v36[79];
  *(a3 + 33) = v24;
  *(a3 + 104) = v11;
  v25 = v30;
  *(a3 + 112) = v31;
  *(a3 + 128) = v25;
  *(a3 + 144) = v32;
  *(a3 + 209) = *&v39[64];
  *(a3 + 225) = *&v39[80];
  *(a3 + 241) = *&v39[96];
  v26 = *&v39[111];
  *(a3 + 145) = *v39;
  *(a3 + 161) = *&v39[16];
  *(a3 + 177) = *&v39[32];
  result = *&v39[48];
  *(a3 + 193) = *&v39[48];
  *(a3 + 256) = v26;
  *(a3 + 264) = v21;
  *(a3 + 272) = v22;
  return result;
}