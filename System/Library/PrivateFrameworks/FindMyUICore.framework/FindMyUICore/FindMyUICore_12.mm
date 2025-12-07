uint64_t sub_24B123AE4()
{
  v1 = v0;
  v2 = sub_24B2D24A4();
  v72 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - v5;
  MEMORY[0x28223BE20](v6);
  v69 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v8);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_24B2D5C34();
  v76 = v73;
  v77 = v74;
  MEMORY[0x24C23BC10](0x203A64697575, 0xE600000000000000);
  v18 = sub_24B2D24B4();
  MEMORY[0x24C23BC10](v18);

  MEMORY[0x24C23BC10](0x203A656D616E0ALL, 0xE700000000000000);
  v19 = type metadata accessor for DataControllerSessionMetrics(0);
  MEMORY[0x24C23BC10](*(v1 + v19[5]), *(v1 + v19[5] + 8));
  MEMORY[0x24C23BC10](0xD00000000000001FLL, 0x800000024B2DBA50);
  sub_24B124330();
  v20 = sub_24B2D5FA4();
  MEMORY[0x24C23BC10](v20);

  MEMORY[0x24C23BC10](0x695474726174730ALL, 0xEC000000203A656DLL);
  v21 = v19[7];
  v22 = sub_24B2D5FA4();
  MEMORY[0x24C23BC10](v22);

  MEMORY[0x24C23BC10](0x656D6954646E650ALL, 0xEA0000000000203ALL);
  v23 = v19[8];
  sub_24AFF249C(v0 + v23, v17);
  v65 = v17;
  v71 = v8;
  v24 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v24);

  MEMORY[0x24C23BC10](0xD000000000000012, 0x800000024B2DBA70);
  v25 = v72;
  sub_24AFF249C(v0 + v23, v14);
  v70 = *(v25 + 48);
  v26 = v70(v14, 1, v2);
  v67 = v21;
  if (v26 == 1)
  {
    sub_24B124388(v14);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v29 = v69;
    (*(v25 + 32))(v69, v14, v2);
    sub_24B2D2314();
    sub_24B2D2314();
    v27 = sub_24B2D62A4();
    v28 = v30;
    (*(v25 + 8))(v29, v2);
  }

  v31 = v2;
  v73 = v27;
  v74 = v28;
  v75 = v26 == 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5E0, &unk_24B2EBB50);
  v32 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v32);

  MEMORY[0x24C23BC10](0xD000000000000013, 0x800000024B2DBA90);
  LOBYTE(v73) = *(v1 + v19[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8A8, &qword_24B2E4EE8);
  v33 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v33);

  MEMORY[0x24C23BC10](0xD000000000000016, 0x800000024B2DBAB0);
  v34 = v19[10];
  v35 = v65;
  sub_24AFF249C(v1 + v34, v65);
  v36 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v36);

  MEMORY[0x24C23BC10](0xD000000000000019, 0x800000024B2DBAD0);
  v37 = v66;
  sub_24AFF249C(v1 + v34, v66);
  v38 = v70(v37, 1, v31);
  if (v38 == 1)
  {
    sub_24B124388(v37);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = v72;
    v42 = v63;
    (*(v72 + 32))(v63, v37, v31);
    sub_24B2D2314();
    sub_24B2D2314();
    v39 = sub_24B2D62A4();
    v40 = v43;
    (*(v41 + 8))(v42, v31);
  }

  v73 = v39;
  v74 = v40;
  v75 = v38 == 1;
  v44 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v44);

  MEMORY[0x24C23BC10](0xD000000000000017, 0x800000024B2DBAF0);
  v45 = v1 + v19[11];
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v73 = v46;
  LOBYTE(v74) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8498, &qword_24B2EBB60);
  v47 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v47);

  MEMORY[0x24C23BC10](0xD000000000000018, 0x800000024B2DBB10);
  v48 = v19[12];
  sub_24AFF249C(v1 + v48, v35);
  v49 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v49);

  MEMORY[0x24C23BC10](0xD00000000000001BLL, 0x800000024B2DBB30);
  v50 = v68;
  sub_24AFF249C(v1 + v48, v68);
  v51 = v70(v50, 1, v31);
  if (v51 == 1)
  {
    sub_24B124388(v50);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = v72;
    v55 = v64;
    (*(v72 + 32))(v64, v50, v31);
    sub_24B2D2314();
    sub_24B2D2314();
    v52 = sub_24B2D62A4();
    v53 = v56;
    (*(v54 + 8))(v55, v31);
  }

  v73 = v52;
  v74 = v53;
  v75 = v51 == 1;
  v57 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v57);

  MEMORY[0x24C23BC10](0xD000000000000019, 0x800000024B2DBB50);
  v58 = v1 + v19[13];
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v73 = v59;
  LOBYTE(v74) = v58;
  v60 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v60);

  return v76;
}

uint64_t sub_24B1242F0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

unint64_t sub_24B124330()
{
  result = qword_27EFC8688;
  if (!qword_27EFC8688)
  {
    sub_24B2D24A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8688);
  }

  return result;
}

uint64_t sub_24B124388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsPublisher.publish.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsPublisher.init(publish:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MetricsPublisher.logging()@<X0>(void (**a1)(uint64_t a1)@<X8>)
{
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B2D3174();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v5, v2);
  *a1 = sub_24B1246F4;
  a1[1] = v11;
  return result;
}

void sub_24B12459C(uint64_t a1)
{
  sub_24B0C43AC(a1, v12);
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 24))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v12);
    v10 = sub_24AFF321C(v7, v9, &v11);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_24AFD2000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v12);
  }
}

void sub_24B1246F4(uint64_t a1)
{
  sub_24B2D3184();

  sub_24B12459C(a1);
}

uint64_t sub_24B1247B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1F24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetailsItemInfo.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1F24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for DetailsItemInfo(uint64_t a1)
{
  result = qword_27EFCC638;
  if (!qword_27EFCC638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailsItemInfo.init(model:locationState:userLocation:etaState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v68 = a3;
  v59 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5F8, &unk_24B2EC140);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600, &unk_24B2EC120);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v59 - v21;
  v22 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608, &qword_24B2EC150);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v31 = sub_24B2D1F24();
  v60 = *(v31 - 8);
  v61 = v31;
  v32 = *(v60 + 16);
  v69 = a1;
  v33 = a1;
  v34 = v59;
  v32(a5, v33);
  sub_24B008890(v34, v30, &qword_27EFCC608, &qword_24B2EC150);
  v35 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v30, 1, v35) == 1)
  {
    sub_24AFF8258(v30, &qword_27EFCC608, &qword_24B2EC150);
    v37 = 0;
  }

  else
  {
    sub_24B125280(&v30[*(v35 + 20)], v24);
    sub_24B1252E4(v30, type metadata accessor for ItemsLocationsProvider.LocationState);
    v37 = *v24;
    sub_24B1252E4(v24, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
  }

  v70 = type metadata accessor for DetailsItemInfo(0);
  v71 = a5;
  *(a5 + v70[5]) = v37;
  sub_24B008890(v34, v27, &qword_27EFCC608, &qword_24B2EC150);
  if (v36(v27, 1, v35) == 1)
  {
    sub_24AFF8258(v27, &qword_27EFCC608, &qword_24B2EC150);
    v38 = sub_24B2D1944();
    v39 = v72;
    (*(*(v38 - 8) + 56))(v72, 1, 1, v38);
  }

  else
  {
    sub_24B125280(&v27[*(v35 + 20)], v24);
    sub_24B1252E4(v27, type metadata accessor for ItemsLocationsProvider.LocationState);
    v39 = v72;
    sub_24B0391CC(&v24[*(v22 + 20)], v72, &qword_27EFCB288, &unk_24B2EBD20);
  }

  v41 = v67;
  v40 = v68;
  v43 = v63;
  v42 = v64;
  v44 = v62;
  sub_24B008890(v39, v71 + v70[6], &qword_27EFCB288, &unk_24B2EBD20);
  sub_24B008890(v40, v44, &qword_27EFCE590, &unk_24B2EC160);
  sub_24B008890(v39, v19, &qword_27EFCB288, &unk_24B2EBD20);
  v45 = sub_24B2D1944();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v19, 1, v45) == 1)
  {
    sub_24AFF8258(v19, &qword_27EFCB288, &unk_24B2EBD20);
    v47 = 1;
  }

  else
  {
    sub_24B2D18B4();
    (*(v46 + 8))(v19, v45);
    v47 = 0;
  }

  v48 = sub_24B2D1C44();
  (*(*(v48 - 8) + 56))(v42, v47, 1, v48);
  sub_24B008890(v41, v43, &qword_27EFCC5F8, &unk_24B2EC140);
  v49 = type metadata accessor for ETAProvider.ETAState(0);
  if ((*(*(v49 - 8) + 48))(v43, 1, v49) == 1)
  {
    sub_24AFF8258(v43, &qword_27EFCC5F8, &unk_24B2EC140);
    v50 = sub_24B2D17E4();
    (*(*(v50 - 8) + 56))(v66, 1, 1, v50);
  }

  else
  {
    v51 = *(v49 + 20);
    v52 = sub_24B2D17E4();
    v53 = *(v52 - 8);
    v54 = v43 + v51;
    v55 = v66;
    (*(v53 + 16))(v66, v54, v52);
    sub_24B1252E4(v43, type metadata accessor for ETAProvider.ETAState);
    (*(v53 + 56))(v55, 0, 1, v52);
  }

  v56 = v72;
  v57 = v65;
  sub_24B2D17F4();
  sub_24AFF8258(v41, &qword_27EFCC5F8, &unk_24B2EC140);
  sub_24AFF8258(v40, &qword_27EFCE590, &unk_24B2EC160);
  sub_24AFF8258(v34, &qword_27EFCC608, &qword_24B2EC150);
  (*(v60 + 8))(v69, v61);
  sub_24AFF8258(v56, &qword_27EFCB288, &unk_24B2EBD20);
  return sub_24B0391CC(v57, v71 + v70[7], &qword_27EFCB278, &unk_24B2EC3C0);
}

uint64_t sub_24B125280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1252E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DetailsItemInfo.hash(into:)(uint64_t a1)
{
  v2 = sub_24B2D1824();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_24B2D1944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  sub_24B2D1F24();
  sub_24B12608C(&qword_27EFCC610, MEMORY[0x277D08EA8], MEMORY[0x277D08EB0]);
  sub_24B2D5254();
  v14 = type metadata accessor for DetailsItemInfo(0);
  sub_24B2D6104();
  sub_24B008890(v1 + *(v14 + 24), v13, &qword_27EFCB288, &unk_24B2EBD20);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_24B2D6104();
    sub_24B12608C(&qword_27EFCC618, MEMORY[0x277D08CD0], MEMORY[0x277D08CD8]);
    sub_24B2D5254();
    (*(v8 + 8))(v10, v7);
  }

  sub_24B008890(v1 + *(v14 + 28), v6, &qword_27EFCB278, &unk_24B2EC3C0);
  v16 = v21;
  v15 = v22;
  if ((*(v21 + 48))(v6, 1, v22) == 1)
  {
    return sub_24B2D6104();
  }

  v18 = v20;
  (*(v16 + 32))(v20, v6, v15);
  sub_24B2D6104();
  sub_24B12608C(&qword_27EFCC620, MEMORY[0x277D08C90], MEMORY[0x277D08C98]);
  sub_24B2D5254();
  return (*(v16 + 8))(v18, v15);
}

uint64_t DetailsItemInfo.hashValue.getter()
{
  sub_24B2D60E4();
  DetailsItemInfo.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B12579C()
{
  sub_24B2D60E4();
  DetailsItemInfo.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B1257E0(uint64_t a1)
{
  sub_24B2D60E4();
  DetailsItemInfo.hash(into:)(v2);
  return sub_24B2D6124();
}

BOOL _s12FindMyUICore15DetailsItemInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1824();
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC658, &qword_24B2EBD18);
  MEMORY[0x28223BE20](v49);
  v50 = &v42 - v9;
  v10 = sub_24B2D1944();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660, &unk_24B2EC990);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  if ((MEMORY[0x24C2385A0](a1, a2, v18) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for DetailsItemInfo(0);
  if (*(a1 + *(v21 + 20)) != *(a2 + *(v21 + 20)))
  {
    return 0;
  }

  v43 = v6;
  v44 = v21;
  v47 = v4;
  v22 = *(v21 + 24);
  v23 = *(v17 + 48);
  v45 = a1;
  sub_24B008890(a1 + v22, v20, &qword_27EFCB288, &unk_24B2EBD20);
  v46 = a2;
  sub_24B008890(a2 + v22, &v20[v23], &qword_27EFCB288, &unk_24B2EBD20);
  v24 = *(v11 + 48);
  if (v24(v20, 1, v10) != 1)
  {
    sub_24B008890(v20, v16, &qword_27EFCB288, &unk_24B2EBD20);
    if (v24(&v20[v23], 1, v10) != 1)
    {
      (*(v11 + 32))(v13, &v20[v23], v10);
      sub_24B12608C(&qword_27EFCC670, MEMORY[0x277D08CD0], MEMORY[0x277D08CE0]);
      v28 = sub_24B2D52A4();
      v29 = *(v11 + 8);
      v29(v13, v10);
      v29(v16, v10);
      sub_24AFF8258(v20, &qword_27EFCB288, &unk_24B2EBD20);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v11 + 8))(v16, v10);
LABEL_8:
    v25 = &qword_27EFCC660;
    v26 = &unk_24B2EC990;
    v27 = v20;
LABEL_16:
    sub_24AFF8258(v27, v25, v26);
    return 0;
  }

  if (v24(&v20[v23], 1, v10) != 1)
  {
    goto LABEL_8;
  }

  sub_24AFF8258(v20, &qword_27EFCB288, &unk_24B2EBD20);
LABEL_10:
  v30 = *(v44 + 28);
  v31 = v50;
  v32 = *(v49 + 48);
  sub_24B008890(v45 + v30, v50, &qword_27EFCB278, &unk_24B2EC3C0);
  sub_24B008890(v46 + v30, v31 + v32, &qword_27EFCB278, &unk_24B2EC3C0);
  v33 = v51;
  v34 = *(v51 + 48);
  v35 = v47;
  if (v34(v31, 1, v47) == 1)
  {
    if (v34(v31 + v32, 1, v35) == 1)
    {
      sub_24AFF8258(v31, &qword_27EFCB278, &unk_24B2EC3C0);
      return 1;
    }

    goto LABEL_15;
  }

  v36 = v48;
  sub_24B008890(v31, v48, &qword_27EFCB278, &unk_24B2EC3C0);
  if (v34(v31 + v32, 1, v35) == 1)
  {
    (*(v33 + 8))(v36, v35);
LABEL_15:
    v25 = &qword_27EFCC658;
    v26 = &qword_24B2EBD18;
    v27 = v31;
    goto LABEL_16;
  }

  v38 = v31 + v32;
  v39 = v43;
  (*(v33 + 32))(v43, v38, v35);
  sub_24B12608C(&qword_27EFCC668, MEMORY[0x277D08C90], MEMORY[0x277D08CA8]);
  v40 = sub_24B2D52A4();
  v41 = *(v33 + 8);
  v41(v39, v35);
  v41(v36, v35);
  sub_24AFF8258(v31, &qword_27EFCB278, &unk_24B2EC3C0);
  return (v40 & 1) != 0;
}

void sub_24B125F5C(uint64_t a1)
{
  sub_24B2D1F24();
  if (v1 <= 0x3F)
  {
    sub_24B126038(319, &qword_27EFCC648, MEMORY[0x277D08CD0]);
    if (v2 <= 0x3F)
    {
      sub_24B126038(319, &qword_27EFCC650, MEMORY[0x277D08C90]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B126038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D5A84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B12608C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B1260D4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24B2D60E4(), sub_24B03ABC8(v16), v8 = sub_24B2D6124(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    do
    {
      sub_24B128C78(*(a2 + 48) + v12 * v10, v7, _s14descr285E46659O16SubscriptionDataOMa);
      v13 = sub_24B0401A4(v7, a1);
      sub_24B128CE0(v7, _s14descr285E46659O16SubscriptionDataOMa);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24B12625C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ItemsProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v34 = &v31 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24B2D60E4();
  sub_24B128C78(v42, v20, type metadata accessor for ItemsProvider.Subscription);
  v40 = *(v7 + 48);
  v41 = v7 + 48;
  if (v40(v20, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v20, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B128C30(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v21 = v34;
  v22 = sub_24B2D6124();
  v23 = -1 << *(a2 + 32);
  v24 = v22 & ~v23;
  v39 = a2 + 56;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v37 = ~v23;
  v38 = *(v13 + 72);
  v32 = (v7 + 32);
  v35 = (v7 + 8);
  v31 = v3;
  while (1)
  {
    sub_24B128C78(*(a2 + 48) + v38 * v24, v21, type metadata accessor for ItemsProvider.Subscription);
    v25 = *(v3 + 48);
    sub_24B128C78(v21, v5, type metadata accessor for ItemsProvider.Subscription);
    sub_24B128C78(v42, &v5[v25], type metadata accessor for ItemsProvider.Subscription);
    v26 = v40;
    if (v40(v5, 1, v6) == 1)
    {
      sub_24B128CE0(v21, type metadata accessor for ItemsProvider.Subscription);
      if (v26(&v5[v25], 1, v6) == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    sub_24B128C78(v5, v15, type metadata accessor for ItemsProvider.Subscription);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      sub_24B128CE0(v21, type metadata accessor for ItemsProvider.Subscription);
      (*v35)(v15, v6);
LABEL_8:
      sub_24AFF8258(v5, &qword_27EFCC6E0, &unk_24B2F0100);
      goto LABEL_9;
    }

    (*v32)(v36, &v5[v25], v6);
    sub_24B128C30(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v45 == v43 && v46 == v44)
    {
      break;
    }

    v33 = sub_24B2D6004();
    v27 = a2;
    v28 = *v35;
    (*v35)(v36, v6);
    v21 = v34;
    sub_24B128CE0(v34, type metadata accessor for ItemsProvider.Subscription);

    v28(v15, v6);
    v3 = v31;
    if (v33)
    {
      goto LABEL_20;
    }

    a2 = v27;
    sub_24B128CE0(v5, type metadata accessor for ItemsProvider.Subscription);
LABEL_9:
    v24 = (v24 + 1) & v37;
    if (((*(v39 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  v30 = *v35;
  (*v35)(v36, v6);
  sub_24B128CE0(v34, type metadata accessor for ItemsProvider.Subscription);

  v30(v15, v6);
LABEL_20:
  sub_24B128CE0(v5, type metadata accessor for ItemsProvider.Subscription);
  return 1;
}

uint64_t sub_24B1268E4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for PeopleProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v34 = &v31 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24B2D60E4();
  sub_24B128C78(v42, v20, type metadata accessor for PeopleProvider.Subscription);
  v40 = *(v7 + 48);
  v41 = v7 + 48;
  if (v40(v20, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v20, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B128C30(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v21 = v34;
  v22 = sub_24B2D6124();
  v23 = -1 << *(a2 + 32);
  v24 = v22 & ~v23;
  v39 = a2 + 56;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v37 = ~v23;
  v38 = *(v13 + 72);
  v32 = (v7 + 32);
  v35 = (v7 + 8);
  v31 = v3;
  while (1)
  {
    sub_24B128C78(*(a2 + 48) + v38 * v24, v21, type metadata accessor for PeopleProvider.Subscription);
    v25 = *(v3 + 48);
    sub_24B128C78(v21, v5, type metadata accessor for PeopleProvider.Subscription);
    sub_24B128C78(v42, &v5[v25], type metadata accessor for PeopleProvider.Subscription);
    v26 = v40;
    if (v40(v5, 1, v6) == 1)
    {
      sub_24B128CE0(v21, type metadata accessor for PeopleProvider.Subscription);
      if (v26(&v5[v25], 1, v6) == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    sub_24B128C78(v5, v15, type metadata accessor for PeopleProvider.Subscription);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      sub_24B128CE0(v21, type metadata accessor for PeopleProvider.Subscription);
      (*v35)(v15, v6);
LABEL_8:
      sub_24AFF8258(v5, &qword_27EFCC6D0, &qword_24B2EBE70);
      goto LABEL_9;
    }

    (*v32)(v36, &v5[v25], v6);
    sub_24B128C30(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v45 == v43 && v46 == v44)
    {
      break;
    }

    v33 = sub_24B2D6004();
    v27 = a2;
    v28 = *v35;
    (*v35)(v36, v6);
    v21 = v34;
    sub_24B128CE0(v34, type metadata accessor for PeopleProvider.Subscription);

    v28(v15, v6);
    v3 = v31;
    if (v33)
    {
      goto LABEL_20;
    }

    a2 = v27;
    sub_24B128CE0(v5, type metadata accessor for PeopleProvider.Subscription);
LABEL_9:
    v24 = (v24 + 1) & v37;
    if (((*(v39 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  v30 = *v35;
  (*v35)(v36, v6);
  sub_24B128CE0(v34, type metadata accessor for PeopleProvider.Subscription);

  v30(v15, v6);
LABEL_20:
  sub_24B128CE0(v5, type metadata accessor for PeopleProvider.Subscription);
  return 1;
}

BOOL sub_24B126F6C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v3);
  v4 = sub_24B2D6124();
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

void *DetailsItemInfo.locateActions(allowedActions:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v55 - v5;
  Action = type metadata accessor for ItemLocateAction(0);
  v7 = *(Action - 8);
  v63 = Action;
  v64 = v7;
  MEMORY[0x28223BE20](Action);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v58 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  v57 = &v55 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v55 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v55 - v22;
  v24 = sub_24B2D1824();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DetailsItemInfo(0);
  sub_24B008890(v2 + *(v28 + 28), v23, &qword_27EFCB278, &unk_24B2EC3C0);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    if (sub_24B2D1804())
    {
      v39 = a1;
      if (sub_24B126F6C(0, a1))
      {
        if (!sub_24B126F6C(1u, a1))
        {
          (*(v25 + 8))(v27, v24);
          return MEMORY[0x277D84F90];
        }

        v40 = v55;
        *v55 = 0;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006C04(0, 1, 1, MEMORY[0x277D84F90]);
        v42 = v36[2];
        v41 = v36[3];
LABEL_35:
        if (v42 >= v41 >> 1)
        {
          v36 = sub_24B006C04((v41 > 1), v42 + 1, 1, v36);
        }

        (*(v25 + 8))(v27, v24);
        v36[2] = v42 + 1;
        v45 = v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v42;
        goto LABEL_38;
      }

      if (sub_24B126F6C(2u, a1))
      {
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48);
        v51 = v56;
        sub_24B2D1814();
        *(v51 + v50) = sub_24B2D1804() & 1;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006C04(0, 1, 1, MEMORY[0x277D84F90]);
        v53 = v36[2];
        v52 = v36[3];
        if (v53 >= v52 >> 1)
        {
          v36 = sub_24B006C04((v52 > 1), v53 + 1, 1, v36);
        }

        v36[2] = v53 + 1;
        sub_24B128918(v51, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      if (sub_24B126F6C(1u, v39))
      {
        v40 = v57;
        goto LABEL_32;
      }
    }

    else
    {
      if (sub_24B126F6C(2u, a1))
      {
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48);
        v47 = v58;
        sub_24B2D1814();
        *(v47 + v46) = sub_24B2D1804() & 1;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006C04(0, 1, 1, MEMORY[0x277D84F90]);
        v49 = v36[2];
        v48 = v36[3];
        if (v49 >= v48 >> 1)
        {
          v36 = sub_24B006C04((v48 > 1), v49 + 1, 1, v36);
        }

        v36[2] = v49 + 1;
        sub_24B128918(v47, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v49);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      if (sub_24B126F6C(1u, a1))
      {
        v40 = v59;
LABEL_32:
        *v40 = 0;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_24B006C04(0, v36[2] + 1, 1, v36);
        }

        v42 = v36[2];
        v41 = v36[3];
        goto LABEL_35;
      }
    }

    (*(v25 + 8))(v27, v24);
    return v36;
  }

  sub_24AFF8258(v23, &qword_27EFCB278, &unk_24B2EC3C0);
  v29 = a1;
  if (sub_24B126F6C(2u, a1))
  {
    v30 = sub_24B2D1F54();
    v31 = v61;
    (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
    v32 = v60;
    sub_24B008890(v2 + *(v28 + 24), v60, &qword_27EFCB288, &unk_24B2EBD20);
    v33 = sub_24B2D1944();
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33) == 1;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48);
    sub_24AFF8258(v32, &qword_27EFCB288, &unk_24B2EBD20);
    *(v31 + v35) = v34;
    swift_storeEnumTagMultiPayload();
    v36 = sub_24B006C04(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_24B006C04((v37 > 1), v38 + 1, 1, v36);
    }

    v36[2] = v38 + 1;
    sub_24B128918(v31, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v38);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  if (sub_24B126F6C(1u, v29))
  {
    v40 = v62;
    *v62 = 0;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_24B006C04(0, v36[2] + 1, 1, v36);
    }

    v44 = v36[2];
    v43 = v36[3];
    if (v44 >= v43 >> 1)
    {
      v36 = sub_24B006C04((v43 > 1), v44 + 1, 1, v36);
    }

    v36[2] = v44 + 1;
    v45 = v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v44;
LABEL_38:
    sub_24B128918(v40, v45);
  }

  return v36;
}

uint64_t type metadata accessor for ItemLocateAction(uint64_t a1)
{
  result = qword_27EFCC6A0;
  if (!qword_27EFCC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B127934@<X0>(char *a1@<X8>)
{
  v2 = v1;
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v2, v6, type metadata accessor for ItemLocateAction);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_24AFF8258(v6, &qword_27EFCB280, &qword_24B2F4430);
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t ItemLocateAction.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t ItemLocateAction.primaryLabel.getter()
{
  v1 = sub_24B2D2534();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24B2D2204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24B2D5344();
  MEMORY[0x28223BE20](v6 - 8);
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B128C78(v0, v9, type metadata accessor for ItemLocateAction);
  v10 = (v3 + 104);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B2D52E4();
    *v5 = type metadata accessor for UIBaseModule();
    (*v10)(v5, *MEMORY[0x277CC9120], v2);
    sub_24B2D2524();
    sub_24B2D2224();
    return sub_24AFF8258(v9, &qword_27EFCB280, &qword_24B2F4430);
  }

  else
  {
    sub_24B2D52E4();
    *v5 = type metadata accessor for UIBaseModule();
    (*v10)(v5, *MEMORY[0x277CC9120], v2);
    sub_24B2D2524();
    return sub_24B2D2224();
  }
}

uint64_t ItemLocateAction.secondaryLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B2D1F54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v2, v10, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1 && (*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24B2D1F34();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_24B2D21F4();
  }

  v11 = sub_24B2D2214();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t ItemLocateAction.compactLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v1, v8, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return ItemLocateAction.primaryLabel.getter();
  }

  v9 = sub_24B2D1F54();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return ItemLocateAction.primaryLabel.getter();
  }

  ItemLocateAction.secondaryLabel.getter(v5);
  v11 = sub_24B2D2214();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v5, 1, v11) == 1)
  {
    ItemLocateAction.primaryLabel.getter();
    if (v13(v5, 1, v11) != 1)
    {
      sub_24AFF8258(v5, &qword_27EFCB270, &unk_24B2EBD40);
    }
  }

  else
  {
    (*(v12 + 32))(a1, v5, v11);
  }

  return sub_24AFF8258(v8, &qword_27EFCB280, &qword_24B2F4430);
}

uint64_t ItemLocateAction.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v2, v15, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B12897C(v15, v12);
    sub_24B008890(v12, v9, &qword_27EFCB280, &qword_24B2F4430);
    v16 = sub_24B2D1F54();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_24AFF8258(v9, &qword_27EFCB280, &qword_24B2F4430);
      v18 = sub_24B2D1BB4();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v6, 1, 1, v18);
      sub_24B2D1AD4();
      sub_24AFF8258(v12, &qword_27EFCB280, &qword_24B2F4430);
      if ((*(v19 + 48))(v6, 1, v18) != 1)
      {
        sub_24AFF8258(v6, &qword_27EFC8A80, &qword_24B2E8E00);
      }
    }

    else
    {
      sub_24B2D1F44();
      (*(v17 + 8))(v9, v16);
      v18 = sub_24B2D1BB4();
      v22 = *(v18 - 8);
      (*(v22 + 56))(v6, 0, 1, v18);
      sub_24AFF8258(v12, &qword_27EFCB280, &qword_24B2F4430);
      (*(v22 + 32))(a1, v6, v18);
    }

    sub_24B2D1BB4();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v20 = sub_24B2D1BB4();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

uint64_t ItemLocateAction.isDisabled.getter()
{
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v0, v3, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  v4 = v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48)];
  sub_24AFF8258(v3, &qword_27EFCB280, &qword_24B2F4430);
  return v4;
}

BOOL ItemLocateAction.isHidden(visibleIfDisabled:)(uint64_t a1)
{
  Action = type metadata accessor for ItemLocateAction(0);
  MEMORY[0x28223BE20](Action);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B128C78(v1, &v13 - v7, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48)];
    sub_24AFF8258(v8, &qword_27EFCB280, &qword_24B2F4430);
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*v8 != 1)
  {
    return 0;
  }

  sub_24B128C78(v1, v5, type metadata accessor for ItemLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AFF8258(v5, &qword_27EFCB280, &qword_24B2F4430);
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  return !sub_24B126F6C(v11, a1);
}

uint64_t sub_24B12884C@<X0>(char *a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B128C78(v6, v5, type metadata accessor for ItemLocateAction);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_24AFF8258(v5, &qword_27EFCB280, &qword_24B2F4430);
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_24B128918(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for ItemLocateAction(0);
  (*(*(Action - 8) + 32))(a2, a1, Action);
  return a2;
}

uint64_t sub_24B12897C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B1289F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCC680;
  if (!qword_27EFCC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC680);
  }

  return result;
}

unint64_t sub_24B128A48()
{
  result = qword_27EFCC688;
  if (!qword_27EFCC688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC690, &qword_24B2EBDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC688);
  }

  return result;
}

unint64_t sub_24B128AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCC698;
  if (!qword_27EFCC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC698);
  }

  return result;
}

void sub_24B128B04(uint64_t a1)
{
  sub_24B128B78();
  if (v1 <= 0x3F)
  {
    sub_24B128BA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B128B78()
{
  result = qword_27EFCC6B0;
  if (!qword_27EFCC6B0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EFCC6B0);
  }

  return result;
}

void sub_24B128BA8(uint64_t a1)
{
  if (!qword_27EFCC6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB280, &qword_24B2F4430);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFCC6B8);
    }
  }
}

uint64_t sub_24B128C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B128C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B128CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B128D48(uint64_t a1)
{
  v44 = sub_24B2D1DA4();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = v7;
    v31[1] = v1;
    v46 = MEMORY[0x277D84F90];
    sub_24B007954(0, v8, 0);
    v45 = v46;
    v42 = a1 + 56;
    v10 = sub_24B2D5B54();
    result = sub_24B2D5694();
    v11 = 0;
    v41 = v3 + 16;
    v35 = (v3 + 8);
    v36 = result;
    v32 = a1 + 64;
    v33 = v8;
    v38 = a1;
    v34 = v3;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = *(a1 + 36);
      v15 = *(a1 + 48) + *(v3 + 72) * v10;
      v16 = *(v3 + 16);
      v16(v43, v15, v44);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v17 = v37;
      v19 = v43;
      v18 = v44;
      v16(v37, v43, v44);

      (*v35)(v19, v18);
      v20 = v45;
      v46 = v45;
      v22 = *(v45 + 16);
      v21 = *(v45 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24B007954((v21 > 1), v22 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v45 = v20;
      result = sub_24B138384(v17, v20 + v23 + *(v39 + 72) * v22, type metadata accessor for ItemsLocationsProvider.Subscription);
      a1 = v38;
      v12 = 1 << *(v38 + 32);
      if (v10 >= v12)
      {
        goto LABEL_25;
      }

      v24 = *(v42 + 8 * v14);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (v40 != *(v38 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v12 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v33;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v13 = v33;
        v28 = (v32 + 8 * v14);
        while (v27 < (v12 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_24B040A60(v10, v40, 0);
            v12 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_24B040A60(v10, v40, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v3 = v34;
      if (v11 == v13)
      {
        return v45;
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
  }

  return result;
}

uint64_t ItemDetailsController.itemIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_itemIdentifier;
  v4 = sub_24B2D1DA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemDetailsController.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B1383EC(&qword_27EFCC6F8, type metadata accessor for ItemDetailsController, &protocol conformance descriptor for ItemDetailsController);
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController__state;
  swift_beginAccess();
  return sub_24B1382BC(v5 + v3, a1, type metadata accessor for ItemDetailsController.State);
}

uint64_t sub_24B1292C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B1383EC(&qword_27EFCC6F8, type metadata accessor for ItemDetailsController, &protocol conformance descriptor for ItemDetailsController);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController__state;
  swift_beginAccess();
  return sub_24B1382BC(v3 + v4, a2, type metadata accessor for ItemDetailsController.State);
}

uint64_t sub_24B12939C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ItemDetailsController.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B1382BC(a1, v6, type metadata accessor for ItemDetailsController.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B1383EC(&qword_27EFCC6F8, type metadata accessor for ItemDetailsController, &protocol conformance descriptor for ItemDetailsController);
  sub_24B2D2574();

  return sub_24B138324(v6, type metadata accessor for ItemDetailsController.State);
}

uint64_t type metadata accessor for ItemDetailsController(uint64_t a1)
{
  result = qword_27EFCC728;
  if (!qword_27EFCC728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B129538(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController__state;
  swift_beginAccess();
  sub_24B138258(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t ItemDetailsController.__allocating_init(itemIdentifier:initialState:dependencies:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  ItemDetailsController.init(itemIdentifier:initialState:dependencies:)(a1, a2, a3);
  return v6;
}

uint64_t ItemDetailsController.init(itemIdentifier:initialState:dependencies:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v12 = sub_24B2D24B4();
  v14 = v13;
  v15 = *(v9 + 8);
  v16 = *a3;
  v22 = a3[1];
  v23 = v16;
  v15(v11, v8);
  *(v4 + 16) = v12;
  *(v4 + 24) = v14;
  sub_24B2D3174();
  *(v4 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  *(v4 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_observationTask) = 0;
  sub_24B2D25B4();
  v17 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_itemIdentifier;
  v18 = sub_24B2D1DA4();
  (*(*(v18 - 8) + 32))(v4 + v17, a1, v18);
  sub_24B138384(a2, v4 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController__state, type metadata accessor for ItemDetailsController.State);
  v19 = (v4 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies);
  v20 = v22;
  *v19 = v23;
  v19[1] = v20;
  return v4;
}

uint64_t ItemDetailsController.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_observationTask))
  {

    sub_24B2D5764();
  }

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies;
  v3 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  swift_retain_n();

  sub_24B2D12C4();

  v7 = *(v2 + 8);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v8;
  swift_retain_n();

  sub_24B2D12C4();

  v11 = *(v2 + 16);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;
  swift_retain_n();

  sub_24B2D12C4();

  v15 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_itemIdentifier;
  v16 = sub_24B2D1DA4();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);

  v17 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_logger;
  v18 = sub_24B2D3184();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  sub_24B138324(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController__state, type metadata accessor for ItemDetailsController.State);

  v19 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController___observationRegistrar;
  v20 = sub_24B2D25C4();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  return v1;
}

uint64_t ItemDetailsController.__deallocating_deinit()
{
  ItemDetailsController.deinit();

  return swift_deallocClassInstance();
}

double sub_24B129B68()
{
  v1 = v0;
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v23 = v4;
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v24 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_observationTask;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_observationTask))
  {

    sub_24B2D5764();
  }

  *(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 1;
  v9 = sub_24B2D56D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies);
  v12 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies + 8);
  v13 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies + 16);
  v21 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies + 24);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_itemIdentifier, v2);
  v14 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v15 = v23 + v14 + 7;
  v22 = v8;
  v23 = v1;
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v11;
  *(v17 + 5) = v12;
  *(v17 + 6) = v13;
  *(v17 + 7) = v10;
  (*(v3 + 32))(&v17[v14], v5, v2);
  *&v17[v16] = v21;

  v18 = v22;
  v19 = sub_24AFFBE08(0, 0, v22, &unk_24B2EC118, v17);
  sub_24AFF8258(v18, &qword_27EFC8580, &qword_24B2E0010);
  *(v23 + v24) = v19;

  return result;
}

uint64_t sub_24B129E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[39] = a8;
  v8[40] = v19;
  v8[37] = a6;
  v8[38] = a7;
  v8[35] = a4;
  v8[36] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600, &unk_24B2EC120);
  v8[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  v8[42] = swift_task_alloc();
  v10 = type metadata accessor for DetailsItemInfo(0);
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868, &unk_24B2EC130);
  v8[46] = swift_task_alloc();
  v8[47] = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5F8, &unk_24B2EC140);
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v11 = sub_24B2D1DA4();
  v8[56] = v11;
  v8[57] = *(v11 - 8);
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D8, &qword_24B2EC3D0);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608, &qword_24B2EC150);
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = type metadata accessor for ItemsProvider.InfoState.Result(0);
  v8[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v12 = sub_24B2D1F24();
  v8[72] = v12;
  v8[73] = *(v12 - 8);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = type metadata accessor for ItemDetailsController.State(0);
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878, &qword_24B2F0430);
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  v8[87] = swift_task_alloc();
  v13 = sub_24B2D3184();
  v8[88] = v13;
  v8[89] = *(v13 - 8);
  v8[90] = swift_task_alloc();
  v8[91] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC888, &qword_24B2EC178);
  v8[92] = swift_task_alloc();
  v8[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC890, &qword_24B2EC180);
  v8[94] = swift_task_alloc();
  v8[95] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC898, &qword_24B2EC188);
  v8[96] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0, &unk_24B2EC190);
  v8[97] = v14;
  v8[98] = *(v14 - 8);
  v8[99] = swift_task_alloc();
  v15 = sub_24B2D2504();
  v8[100] = v15;
  v8[101] = *(v15 - 8);
  v8[102] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8, &unk_24B2ED230);
  v8[103] = v16;
  v8[104] = *(v16 - 8);
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v8[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B12A61C, a4, 0);
}

uint64_t sub_24B12A61C(uint64_t a1)
{
  v2 = *(v1 + 816);
  v3 = *(v1 + 808);
  v4 = *(v1 + 800);
  v5 = *(v1 + 792);
  v6 = *(v1 + 784);
  v7 = *(v1 + 280);
  v12 = *(v1 + 288);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v1 + 196) = *MEMORY[0x277D85778];
  v9 = *(v6 + 104);
  *(v1 + 864) = v9;
  *(v1 + 872) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  sub_24B2D5744();

  v10 = *(v3 + 8);
  *(v1 + 880) = v10;
  *(v1 + 888) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);

  return MEMORY[0x2822009F8](sub_24B12A770, v12, 0);
}

uint64_t sub_24B12A770(uint64_t a1)
{
  v12 = *(v1 + 880);
  v2 = *(v1 + 864);
  v3 = *(v1 + 196);
  v4 = *(v1 + 816);
  v5 = *(v1 + 792);
  v6 = *(v1 + 776);
  v7 = *(v1 + 288);
  v10 = *(v1 + 800);
  v11 = *(v1 + 296);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B12A894, v11, 0);
}

uint64_t sub_24B12A894(uint64_t a1)
{
  v11 = *(v1 + 880);
  v2 = *(v1 + 864);
  v3 = *(v1 + 196);
  v4 = *(v1 + 816);
  v10 = *(v1 + 800);
  v5 = *(v1 + 792);
  v6 = *(v1 + 776);
  v7 = *(v1 + 296);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v11(v4, v10);

  return MEMORY[0x2822009F8](sub_24B12A9B8, 0, 0);
}

uint64_t sub_24B12A9B8()
{
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8, &unk_24B2ED230, MEMORY[0x277D857C0]);
  sub_24B2D3144();
  sub_24B039184(&qword_27EFCC8B8, &qword_27EFCC898, &qword_24B2EC188, MEMORY[0x277CEF700]);
  sub_24B2D57D4();
  v0[29] = &unk_285E48B48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0, &qword_24B2EC1A0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0, &qword_24B2EC1A0, MEMORY[0x277CEF6C8]);
  sub_24B039184(&qword_27EFCC8D0, &qword_27EFCC890, &qword_24B2EC180, MEMORY[0x277CEF6C0]);
  sub_24B2D3134();
  v1 = sub_24B2D30C4();
  v0[112] = v1;
  v0[30] = v1;
  v0[113] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  v0[114] = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  v0[115] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[116] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
  *v2 = v0;
  v2[1] = sub_24B12ACD8;

  return MEMORY[0x282141C10](v0 + 22, v3);
}

uint64_t sub_24B12ACD8()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_24B12B3C0;
  }

  else
  {
    v2 = sub_24B12ADEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B12AE08()
{
  v1 = *(v0 + 192);
  if (v1 == 255)
  {
    v11 = *(v0 + 856);
    v12 = *(v0 + 848);
    v13 = *(v0 + 840);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v16 = *(v0 + 768);
    v17 = *(v0 + 752);
    v18 = *(v0 + 736);

    sub_24AFF8258(v18, &qword_27EFCC888, &qword_24B2EC178);
    sub_24AFF8258(v17, &qword_27EFCC890, &qword_24B2EC180);
    sub_24AFF8258(v16, &qword_27EFCC898, &qword_24B2EC188);
    v19 = *(v14 + 8);
    v19(v13, v15);
    v19(v12, v15);
    v19(v11, v15);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 712) + 16))(*(v0 + 720), Strong + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_logger, *(v0 + 704));

      sub_24B138120(v3, v2);
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 272) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 200);
          v10 = (v0 + 208);
          *(v0 + 200) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 216);
          v10 = (v0 + 224);
          *(v0 + 216) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v25 = *v9;
        v26 = *v10;
        v27 = *(v0 + 720);
        v28 = *(v0 + 712);
        v29 = *(v0 + 704);
        v30 = sub_24AFF321C(v25, v26, (v0 + 272));

        *(v7 + 4) = v30;
        _os_log_impl(&dword_24AFD2000, v5, v6, "ItemDetailsController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v28 + 8))(v27, v29);
      }

      else
      {
        v22 = *(v0 + 720);
        v23 = *(v0 + 712);
        v24 = *(v0 + 704);
        sub_24B138128(v3, v2, v1);

        (*(v23 + 8))(v22, v24);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v31 = *(v0 + 280);

    return MEMORY[0x2822009F8](sub_24B12B44C, v31, 0);
  }
}

uint64_t sub_24B12B3C0()
{
  *(v0 + 248) = *(v0 + 936);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B12B44C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280) + *(v0 + 904);
  *(v0 + 193) = *(v2 + 16);
  *(v0 + 944) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B12B4D0, v1, 0);
}

uint64_t sub_24B12B4D0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288) + *(v0 + 912);
  *(v0 + 952) = *(v2 + 8);
  *(v0 + 194) = *(v2 + 16);
  *(v0 + 960) = *(v2 + 24);
  *(v0 + 968) = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_24B12B57C, v1, 0);
}

uint64_t sub_24B12B57C()
{
  sub_24B008890(v0[37] + v0[115], v0[87], &qword_27EFCC880, &qword_24B2EC170);

  return MEMORY[0x2822009F8](sub_24B12B600, 0, 0);
}

void sub_24B12B600()
{
  v1 = *(v0 + 194);
  v2 = *(v0 + 193);
  if (*(*(v0 + 944) + 16) && (v3 = sub_24B181698(*(v0 + 312)), (v4 & 1) != 0))
  {
    v5 = v3;
    v6 = *(v0 + 680);
    v7 = *(*(v0 + 944) + 56);
    v8 = type metadata accessor for ItemsProvider.InfoState(0);
    v9 = *(v8 - 8);
    sub_24B1382BC(v7 + *(v9 + 72) * v5, v6, type metadata accessor for ItemsProvider.InfoState);
    (*(v9 + 56))(v6, 0, 1, v8);
  }

  else
  {
    v10 = *(v0 + 680);
    v8 = type metadata accessor for ItemsProvider.InfoState(0);
    (*(*(v8 - 8) + 56))(v10, 1, 1, v8);
  }

  v11 = *(v0 + 680);
  v12 = *(v0 + 672);
  sub_24B008890(*(v0 + 696) + *(*(v0 + 688) + 48), *(v0 + 664), &qword_27EFCE590, &unk_24B2EC160);
  sub_24B008890(v11, v12, &qword_27EFCC878, &qword_24B2F0430);
  type metadata accessor for ItemsProvider.InfoState(0);
  v13 = (*(*(v8 - 8) + 48))(v12, 1, v8);
  v14 = *(v0 + 672);
  if (v13 == 1)
  {
    v15 = *(v0 + 584);
    v16 = *(v0 + 576);
    v17 = *(v0 + 568);
    sub_24AFF8258(v14, &qword_27EFCC878, &qword_24B2F0430);
    (*(v15 + 56))(v17, 1, 1, v16);
LABEL_11:
    v24 = v2 & v1;
    v25 = *(v0 + 624);
    v26 = *(v0 + 608);
    v27 = *(v0 + 344);
    v28 = *(v0 + 352);
    sub_24AFF8258(*(v0 + 568), &qword_27EFCC870, &qword_24B2EC158);
    (*(v28 + 56))(&v25[*(v26 + 20)], 1, 1, v27);
    *v25 = v24 & 1;
    *(v0 + 1008) = *(v0 + 936);
    Strong = swift_weakLoadStrong();
    *(v0 + 1016) = Strong;
    if (Strong)
    {
      sub_24B2D5694();
      *(v0 + 1024) = sub_24B2D5684();
      v30 = sub_24B2D5604();
      v32 = v31;
      v33 = sub_24B12CC84;
      v34 = v30;
      v35 = v32;
LABEL_13:

      MEMORY[0x2822009F8](v33, v34, v35);
      return;
    }

    v36 = *(v0 + 696);
    v37 = *(v0 + 680);
    v38 = *(v0 + 664);
    sub_24B138324(*(v0 + 624), type metadata accessor for ItemDetailsController.State);
    sub_24AFF8258(v38, &qword_27EFCE590, &unk_24B2EC160);
    sub_24AFF8258(v37, &qword_27EFCC878, &qword_24B2F0430);
    sub_24AFF8258(v36, &qword_27EFCC880, &qword_24B2EC170);
    v39 = swift_task_alloc();
    *(v0 + 928) = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
    *v39 = v0;
    v39[1] = sub_24B12ACD8;
    v41 = v0 + 176;

LABEL_55:
    MEMORY[0x282141C10](v41, v40);
    return;
  }

  sub_24B1382BC(v14 + *(v8 + 20), *(v0 + 552), type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v0 + 584) + 32))(*(v0 + 560), *(v0 + 552), *(v0 + 576));
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v0 + 672);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  (*(v20 + 56))(v23, v18, 1, v21);
  sub_24B0391CC(v23, v22, &qword_27EFCC870, &qword_24B2EC158);
  sub_24B138324(v19, type metadata accessor for ItemsProvider.InfoState);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    goto LABEL_11;
  }

  (*(*(v0 + 584) + 32))(*(v0 + 600), *(v0 + 568), *(v0 + 576));
  v42 = sub_24B2D1DB4();
  v43 = *(v42 + 16);
  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = v42;
  v45 = *(v0 + 456);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80A8, &qword_24B2DFD08);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v41 = _swift_stdlib_malloc_size(v48);
  if (!v46)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v41 - v47 == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_54;
  }

  v48[2] = v43;
  v48[3] = 2 * ((v41 - v47) / v46);
  sub_24B0363C4(v0 + 16, v48 + v47, v43, v44);
  v50 = v49;
  v51 = *(v0 + 16);

  sub_24B0363BC(v51);
  if (v50 != v43)
  {
    __break(1u);
LABEL_25:
    v48 = MEMORY[0x277D84F90];
  }

  v52 = *(v0 + 936);
  *(v0 + 264) = v48;
  sub_24B13EFD0((v0 + 264));
  *(v0 + 976) = v52;
  if (!v52)
  {

    v53 = *(v0 + 264);
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = 0;
      v56 = *(v0 + 960);
      v57 = *(*(v0 + 456) + 80);
      v58 = v53 + ((v57 + 32) & ~v57);
      while (v55 < *(v53 + 16))
      {
        (*(*(v0 + 456) + 16))(*(v0 + 472), v58 + *(*(v0 + 456) + 72) * v55, *(v0 + 448));
        if (*(v56 + 16))
        {
          v61 = sub_24B181698(*(v0 + 472));
          if (v62)
          {
            v63 = *(v0 + 960);
            v64 = *(v0 + 528);
            v65 = *(v0 + 488);
            v66 = *(v0 + 472);
            v67 = *(v0 + 448);
            v68 = *(v0 + 456);
            v69 = v61;

            v70 = *(v63 + 56);
            v71 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
            v72 = *(v71 - 8);
            sub_24B1382BC(v70 + *(v72 + 72) * v69, v64, type metadata accessor for ItemsLocationsProvider.LocationState);
            (*(v72 + 56))(v64, 0, 1, v71);
            sub_24AFF8258(v64, &qword_27EFCC608, &qword_24B2EC150);
            (*(v68 + 32))(v65, v66, v67);
            v73 = 0;
            goto LABEL_38;
          }
        }

        ++v55;
        v59 = *(v0 + 528);
        (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
        v60 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v41 = sub_24AFF8258(v59, &qword_27EFCC608, &qword_24B2EC150);
        if (v54 == v55)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_37:

    v73 = 1;
LABEL_38:
    v74 = *(v0 + 480);
    v75 = *(v0 + 488);
    v76 = *(v0 + 448);
    v77 = *(v0 + 456);
    (*(v77 + 56))(v75, v73, 1, v76);
    sub_24B008890(v75, v74, &qword_27EFC85D8, &qword_24B2EC3D0);
    if ((*(v77 + 48))(v74, 1, v76) == 1)
    {
      v78 = *(v0 + 536);
      v79 = *(v0 + 488);
    }

    else
    {
      v80 = *(v0 + 960);
      (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 480), *(v0 + 448));
      if (*(v80 + 16))
      {
        v81 = sub_24B181698(*(v0 + 464));
        if (v82)
        {
          v83 = v81;
          v84 = *(v0 + 536);
          v111 = *(v0 + 488);
          v86 = *(v0 + 456);
          v85 = *(v0 + 464);
          v87 = *(v0 + 448);
          v88 = *(*(v0 + 960) + 56);
          v89 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
          v90 = *(v89 - 8);
          sub_24B1382BC(v88 + *(v90 + 72) * v83, v84, type metadata accessor for ItemsLocationsProvider.LocationState);
          (*(v86 + 8))(v85, v87);
          sub_24AFF8258(v111, &qword_27EFC85D8, &qword_24B2EC3D0);
          (*(v90 + 56))(v84, 0, 1, v89);
          goto LABEL_45;
        }
      }

      v78 = *(v0 + 536);
      v91 = *(v0 + 488);
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
      v79 = v91;
    }

    sub_24AFF8258(v79, &qword_27EFC85D8, &qword_24B2EC3D0);
    v89 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
    (*(*(v89 - 8) + 56))(v78, 1, 1, v89);
LABEL_45:
    v92 = *(v0 + 520);
    sub_24B008890(*(v0 + 536), v92, &qword_27EFCC608, &qword_24B2EC150);
    type metadata accessor for ItemsLocationsProvider.LocationState(0);
    *(v0 + 984) = v89;
    v93 = *(v89 - 8);
    v94 = *(v93 + 48);
    *(v0 + 992) = v94;
    *(v0 + 1000) = (v93 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v95 = v94(v92, 1, v89);
    v96 = *(v0 + 520);
    if (v95 == 1)
    {
      v97 = &qword_27EFCC608;
      v98 = &qword_24B2EC150;
    }

    else
    {
      v99 = *(v0 + 416);
      v100 = *(v0 + 392);
      v101 = *(v0 + 376);
      v102 = *(v89 + 20);
      v103 = *(v0 + 520);
      sub_24B1382BC(v96 + v102, v100, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
      sub_24B138324(v103, type metadata accessor for ItemsLocationsProvider.LocationState);
      sub_24B0391CC(v100 + *(v101 + 20), v99, &qword_27EFCB288, &unk_24B2EBD20);
      v104 = sub_24B2D1944();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v99, 1, v104) != 1)
      {
        v107 = *(v0 + 416);
        sub_24B2D18B4();
        (*(v105 + 8))(v107, v104);
        v106 = 0;
        goto LABEL_51;
      }

      v96 = *(v0 + 416);
      v97 = &qword_27EFCB288;
      v98 = &unk_24B2EBD20;
    }

    sub_24AFF8258(v96, v97, v98);
    v106 = 1;
LABEL_51:
    v108 = *(v0 + 656);
    v109 = *(v0 + 320);
    v110 = sub_24B2D1C44();
    (*(*(v110 - 8) + 56))(v108, v106, 1, v110);
    v33 = sub_24B12C2B0;
    v34 = v109;
    v35 = 0;
    goto LABEL_13;
  }
}

uint64_t sub_24B12C2B0()
{
  v1 = v0[82];
  sub_24B188104(v0[83], v1, v0[55]);
  sub_24AFF8258(v1, &qword_27EFCE590, &unk_24B2EC160);

  return MEMORY[0x2822009F8](sub_24B12C340, 0, 0);
}

uint64_t sub_24B12C340()
{
  v72 = *(v0 + 992);
  v1 = *(v0 + 648);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 536);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  v7 = *(v0 + 440);
  v64 = *(v0 + 432);
  v66 = *(v0 + 664);
  v68 = *(v0 + 360);
  v70 = *(v0 + 984);
  v8 = *(*(v0 + 584) + 16);
  v8(v2, *(v0 + 600), v3);
  sub_24B008890(v4, v5, &qword_27EFCC608, &qword_24B2EC150);
  sub_24B008890(v66, v1, &qword_27EFCE590, &unk_24B2EC160);
  sub_24B008890(v7, v64, &qword_27EFCC5F8, &unk_24B2EC140);
  v8(v68, v2, v3);
  sub_24B008890(v5, v6, &qword_27EFCC608, &qword_24B2EC150);
  if (v72(v6, 1, v70) == 1)
  {
    sub_24AFF8258(*(v0 + 504), &qword_27EFCC608, &qword_24B2EC150);
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 504);
    v11 = *(v0 + 384);
    sub_24B1382BC(v10 + *(*(v0 + 984) + 20), v11, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
    sub_24B138324(v10, type metadata accessor for ItemsLocationsProvider.LocationState);
    v9 = *v11;
    sub_24B138324(v11, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
  }

  v12 = *(v0 + 992);
  v13 = *(v0 + 984);
  v14 = *(v0 + 512);
  v15 = *(v0 + 496);
  *(*(v0 + 360) + *(*(v0 + 344) + 20)) = v9;
  sub_24B008890(v14, v15, &qword_27EFCC608, &qword_24B2EC150);
  if (v12(v15, 1, v13) == 1)
  {
    v16 = *(v0 + 408);
    sub_24AFF8258(*(v0 + 496), &qword_27EFCC608, &qword_24B2EC150);
    v17 = sub_24B2D1944();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = *(v0 + 496);
    v19 = *(v0 + 408);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    sub_24B1382BC(v18 + *(*(v0 + 984) + 20), v20, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
    sub_24B138324(v18, type metadata accessor for ItemsLocationsProvider.LocationState);
    sub_24B0391CC(v20 + *(v21 + 20), v19, &qword_27EFCB288, &unk_24B2EBD20);
  }

  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  sub_24B008890(v24, *(v0 + 360) + *(*(v0 + 344) + 24), &qword_27EFCB288, &unk_24B2EBD20);
  sub_24B008890(v22, v23, &qword_27EFCE590, &unk_24B2EC160);
  sub_24B008890(v24, v25, &qword_27EFCB288, &unk_24B2EBD20);
  v26 = sub_24B2D1944();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_24AFF8258(*(v0 + 400), &qword_27EFCB288, &unk_24B2EBD20);
    v28 = 1;
  }

  else
  {
    v29 = *(v0 + 400);
    sub_24B2D18B4();
    (*(v27 + 8))(v29, v26);
    v28 = 0;
  }

  v30 = *(v0 + 632);
  v32 = *(v0 + 424);
  v31 = *(v0 + 432);
  v33 = sub_24B2D1C44();
  (*(*(v33 - 8) + 56))(v30, v28, 1, v33);
  sub_24B008890(v31, v32, &qword_27EFCC5F8, &unk_24B2EC140);
  v34 = type metadata accessor for ETAProvider.ETAState(0);
  v35 = (*(*(v34 - 8) + 48))(v32, 1, v34);
  v36 = *(v0 + 424);
  v37 = *(v0 + 328);
  if (v35 == 1)
  {
    sub_24AFF8258(*(v0 + 424), &qword_27EFCC5F8, &unk_24B2EC140);
    v38 = sub_24B2D17E4();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    v39 = *(v34 + 20);
    v40 = sub_24B2D17E4();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v37, v36 + v39, v40);
    sub_24B138324(v36, type metadata accessor for ETAProvider.ETAState);
    (*(v41 + 56))(v37, 0, 1, v40);
  }

  v42 = *(v0 + 648);
  v73 = *(v0 + 624);
  v74 = *(v0 + 608);
  v62 = *(v0 + 592);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v63 = *(v0 + 536);
  v45 = *(v0 + 512);
  v46 = *(v0 + 432);
  v61 = *(v0 + 440);
  v47 = *(v0 + 408);
  v48 = *(v0 + 368);
  v67 = *(v0 + 360);
  v69 = *(v0 + 600);
  v49 = *(v0 + 352);
  v65 = *(v0 + 344);
  v71 = *(v0 + 193) & *(v0 + 194);
  v50 = *(v0 + 336);
  sub_24B2D17F4();
  sub_24AFF8258(v47, &qword_27EFCB288, &unk_24B2EBD20);
  sub_24AFF8258(v46, &qword_27EFCC5F8, &unk_24B2EC140);
  sub_24AFF8258(v42, &qword_27EFCE590, &unk_24B2EC160);
  sub_24AFF8258(v45, &qword_27EFCC608, &qword_24B2EC150);
  v51 = *(v43 + 8);
  v51(v62, v44);
  sub_24AFF8258(v61, &qword_27EFCC5F8, &unk_24B2EC140);
  sub_24AFF8258(v63, &qword_27EFCC608, &qword_24B2EC150);
  v51(v69, v44);
  sub_24B0391CC(v50, v67 + *(v65 + 28), &qword_27EFCB278, &unk_24B2EC3C0);
  sub_24B138384(v67, v48, type metadata accessor for DetailsItemInfo);
  (*(v49 + 56))(v48, 0, 1, v65);
  *v73 = v71 & 1;
  sub_24B0391CC(v48, &v73[*(v74 + 20)], &qword_27EFCC868, &unk_24B2EC130);
  *(v0 + 1008) = *(v0 + 976);
  Strong = swift_weakLoadStrong();
  *(v0 + 1016) = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    *(v0 + 1024) = sub_24B2D5684();
    v54 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B12CC84, v54, v53);
  }

  else
  {

    v55 = *(v0 + 696);
    v56 = *(v0 + 680);
    v57 = *(v0 + 664);
    sub_24B138324(*(v0 + 624), type metadata accessor for ItemDetailsController.State);
    sub_24AFF8258(v57, &qword_27EFCE590, &unk_24B2EC160);
    sub_24AFF8258(v56, &qword_27EFCC878, &qword_24B2F0430);
    sub_24AFF8258(v55, &qword_27EFCC880, &qword_24B2EC170);
    v58 = swift_task_alloc();
    *(v0 + 928) = v58;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
    *v58 = v0;
    v58[1] = sub_24B12ACD8;

    return MEMORY[0x282141C10](v0 + 176, v59);
  }
}

uint64_t sub_24B12CC84()
{
  v1 = *(v0 + 1016);
  v6 = *(v0 + 193);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);

  sub_24B1382BC(v2, v3, type metadata accessor for ItemDetailsController.State);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v0 + 256) = v1;
  sub_24B1383EC(&qword_27EFCC6F8, type metadata accessor for ItemDetailsController, &protocol conformance descriptor for ItemDetailsController);
  sub_24B2D2574();

  sub_24B138324(v3, type metadata accessor for ItemDetailsController.State);
  if (v6 == 1)
  {
    sub_24B12CF88(*(v0 + 624));
  }

  return MEMORY[0x2822009F8](sub_24B12CE5C, 0, 0);
}

uint64_t sub_24B12CE5C(__n128 a1)
{
  v2 = v1[87];
  v3 = v1[85];
  v4 = v1[83];
  sub_24B138324(v1[78], type metadata accessor for ItemDetailsController.State);
  sub_24AFF8258(v4, &qword_27EFCE590, &unk_24B2EC160);
  sub_24AFF8258(v3, &qword_27EFCC878, &qword_24B2F0430);
  sub_24AFF8258(v2, &qword_27EFCC880, &qword_24B2EC170);
  v5 = swift_task_alloc();
  v1[116] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
  *v5 = v1;
  v5[1] = sub_24B12ACD8;

  return MEMORY[0x282141C10](v1 + 22, v6);
}

uint64_t sub_24B12CF88(uint64_t a1)
{
  v3 = sub_24B2D1F24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868, &unk_24B2EC130);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v27[-v14];
  v16 = type metadata accessor for ItemDetailsController.State(0);
  sub_24B008890(a1 + *(v16 + 20), v9, &qword_27EFCC868, &unk_24B2EC130);
  v17 = type metadata accessor for DetailsItemInfo(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFCC868, &unk_24B2EC130);
    v18 = 1;
  }

  else
  {
    (*(v4 + 16))(v15, v9, v3);
    sub_24B138324(v9, type metadata accessor for DetailsItemInfo);
    v18 = 0;
  }

  (*(v4 + 56))(v15, v18, 1, v3);
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_isAutomaticSubscriptionsForwardingEnabled) != 1)
  {
    goto LABEL_8;
  }

  sub_24B008890(v15, v12, &qword_27EFCC870, &qword_24B2EC158);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v12, v3);
    v19 = sub_24B2D1DB4();
    v20 = sub_24B128D48(v19);

    v21 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies + 8);
    v22 = sub_24B1D0B08(v20);

    v24 = *(v1 + 16);
    v23 = *(v1 + 24);
    v25 = swift_allocObject();
    v25[2] = v21;
    v25[3] = v22;
    v25[4] = v24;
    v25[5] = v23;

    sub_24B2D12C4();

    (*(v4 + 8))(v6, v3);
LABEL_8:
    v12 = v15;
    return sub_24AFF8258(v12, &qword_27EFCC870, &qword_24B2EC158);
  }

  sub_24AFF8258(v15, &qword_27EFCC870, &qword_24B2EC158);
  return sub_24AFF8258(v12, &qword_27EFCC870, &qword_24B2EC158);
}

Swift::Void __swiftcall ItemDetailsController.onAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v27);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemDetailsController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B129B68();
  v10 = v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies;
  v11 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies);
  v12 = OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_itemIdentifier;
  v13 = sub_24B2D1DA4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, v1 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80F8, &qword_24B2DFD58);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24B2DE430;
  sub_24B1382BC(v5, v18 + v17, type metadata accessor for ItemsProvider.Subscription);
  v19 = sub_24B134B58(v18);
  swift_setDeallocating();
  sub_24B138324(v18 + v17, type metadata accessor for ItemsProvider.Subscription);
  swift_deallocClassInstance();
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v19;
  v20[4] = v16;
  v20[5] = v15;

  sub_24B2D12C4();

  sub_24B138324(v5, type metadata accessor for ItemsProvider.Subscription);
  v21 = *(v10 + 16);
  v23 = *(v1 + 16);
  v22 = *(v1 + 24);
  v24 = sub_24B137700(&unk_285E48B80, &qword_27EFCC848, &qword_24B2EC0E0);
  v25 = swift_allocObject();
  v25[2] = v21;
  v25[3] = v24;
  v25[4] = v23;
  v25[5] = v22;

  sub_24B2D12C4();
}

Swift::Void __swiftcall ItemDetailsController.onDisappear()()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v19);
    _os_log_impl(&dword_24AFD2000, v2, v3, "ItemDetailsController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_observationTask))
  {

    sub_24B2D5764();
  }

  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies;
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21ItemDetailsController_dependencies);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v8;

  sub_24B2D12C4();

  v11 = *(v6 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;

  sub_24B2D12C4();

  v15 = *(v6 + 16);
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = v16;

  sub_24B2D12C4();
}

uint64_t sub_24B12DA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_24B2D2504();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B12DB38, v3, 0);
}

uint64_t sub_24B12DB38()
{
  v116 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17] + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  v107 = *(v3 + 16);
  v107(v1, v4, v2);

  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  if (os_log_type_enabled(v5, v6))
  {
    v104 = v0[22];
    v111 = v0[21];
    v113 = v0[25];
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    v96 = v0[15];
    v98 = v0[16];
    v10 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v115 = v101;
    *v10 = 136447235;
    sub_24B2D12A4();
    v11 = sub_24B2D24B4();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_24AFF321C(v11, v13, &v115);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_24B137F64(v15, v16, v17);
    v18 = sub_24B2D57F4();
    v20 = sub_24AFF321C(v18, v19, &v115);

    *(v10 + 24) = v20;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    v0[12] = v96;
    v0[13] = v98;

    v21 = sub_24B2D53C4();
    v23 = sub_24AFF321C(v21, v22, &v115);

    *(v10 + 44) = v23;
    _os_log_impl(&dword_24AFD2000, v5, v6, "Provider(%{public}s):addSubscriptions\n- requestedSubscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v10, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v101, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);

    v24 = *(v104 + 8);
    v24(v113, v111);
  }

  else
  {
    v25 = v0[25];
    v26 = v0[21];
    v27 = v0[22];

    v24 = *(v27 + 8);
    v24(v25, v26);
  }

  v28 = v0[14];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838, &unk_24B2F1230);
  v29 = *(v4 + *(v114 + 40));
  swift_bridgeObjectRetain_n();

  v112 = sub_24B25A538(v30, v29);
  v31 = *(v28 + 16);
  v32 = v0[14];
  if (*(v29 + 16) <= v31 >> 3)
  {
    v115 = v0[14];

    sub_24B2A3C4C(v29, v35);
    v34 = v115;
  }

  else
  {

    v34 = sub_24B2A8558(v29, v32, v33);
  }

  v36 = v0[21];
  if (*(v34 + 16))
  {
    v107(v0[23], v4, v0[21]);

    v37 = sub_24B2D3164();
    v38 = sub_24B2D5934();

    v109 = v38;
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[21];
    if (v39)
    {
      v99 = v0[23];
      v102 = v0[21];
      v108 = v4;
      v42 = v0[19];
      v43 = v0[20];
      v44 = v0[18];
      v92 = v0[15];
      v93 = v0[16];
      v105 = v24;
      v45 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v115 = v94;
      *v45 = 136447235;
      sub_24B2D12A4();
      v46 = sub_24B2D24B4();
      v48 = v47;
      (*(v42 + 8))(v43, v44);
      v49 = sub_24AFF321C(v46, v48, &v115);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      sub_24B137F64(v50, v51, v52);
      v53 = sub_24B2D57F4();
      v55 = v54;

      v56 = sub_24AFF321C(v53, v55, &v115);

      *(v45 + 24) = v56;
      *(v45 + 32) = 2160;
      v4 = v108;
      *(v45 + 34) = 1752392040;
      *(v45 + 42) = 2081;
      v0[8] = v92;
      v0[9] = v93;

      v57 = sub_24B2D53C4();
      v59 = sub_24AFF321C(v57, v58, &v115);

      *(v45 + 44) = v59;
      _os_log_impl(&dword_24AFD2000, v37, v109, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s", v45, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v94, -1, -1);
      MEMORY[0x24C23D530](v45, -1, -1);

      v105(v99, v102);
    }

    else
    {

      v24(v40, v41);
    }

    v79 = *(v29 + 16);

    if (!v79)
    {
      sub_24B2010E4();
    }
  }

  else
  {
    v106 = v24;
    v60 = v0[24];

    v107(v60, v4, v36);

    v61 = sub_24B2D3164();
    v62 = sub_24B2D5934();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[24];
    v65 = v0[21];
    if (v63)
    {
      v110 = v0[21];
      v66 = v0[19];
      v67 = v0[20];
      v103 = v0[24];
      v68 = v0[16];
      v95 = v0[18];
      v97 = v0[15];
      v69 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v115 = v100;
      *v69 = 136446723;
      sub_24B2D12A4();
      v70 = sub_24B2D24B4();
      v72 = v71;
      (*(v66 + 8))(v67, v95);
      v73 = sub_24AFF321C(v70, v72, &v115);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2160;
      *(v69 + 14) = 1752392040;
      *(v69 + 22) = 2081;
      v0[10] = v97;
      v0[11] = v68;

      v74 = sub_24B2D53C4();
      v76 = sub_24AFF321C(v74, v75, &v115);

      *(v69 + 24) = v76;
      _os_log_impl(&dword_24AFD2000, v61, v62, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v100, -1, -1);
      MEMORY[0x24C23D530](v69, -1, -1);

      v77 = v110;
      v78 = v103;
    }

    else
    {

      v78 = v64;
      v77 = v65;
    }

    v106(v78, v77);
  }

  v80 = *(v4 + *(v114 + 36));
  if (*(v80 + 16) && (v81 = sub_24B1833D4(), (v82 & 1) != 0))
  {
    v83 = *(*(v80 + 56) + 8 * v81);
  }

  else
  {
    v83 = MEMORY[0x277D84FA0];
  }

  v85 = v0[15];
  v84 = v0[16];
  v86 = v0[14];

  v87 = sub_24B25A538(v86, v83);
  swift_beginAccess();
  v88 = *(v114 + 36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v4 + v88);
  *(v4 + v88) = 0x8000000000000000;
  sub_24B1C94C8(v87, v85, v84, isUniquelyReferenced_nonNull_native);

  *(v4 + v88) = v115;
  sub_24B297650();
  *(v4 + *(v114 + 40)) = v112;

  sub_24B2978F4();
  swift_endAccess();

  v90 = v0[1];

  return v90();
}

uint64_t sub_24B12E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_24B2D2504();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B12E5F4, v3, 0);
}

uint64_t sub_24B12E5F4()
{
  v112 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17];
  v5 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v0[26] = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v108 = *(v3 + 16);
  v108(v1, v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v99 = v0[22];
    v102 = v0[21];
    v104 = v0[25];
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    v92 = v0[15];
    v94 = v0[16];
    v12 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v111 = v96;
    *v12 = 136447235;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_24AFF321C(v13, v15, &v111);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for PeopleProvider.Subscription(0);
    sub_24B1383EC(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
    v17 = sub_24B2D57F4();
    v19 = sub_24AFF321C(v17, v18, &v111);

    *(v12 + 24) = v19;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v0[12] = v92;
    v0[13] = v94;

    v20 = sub_24B2D53C4();
    v22 = sub_24AFF321C(v20, v21, &v111);

    *(v12 + 44) = v22;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):addSubscriptions\n- requestedSubscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v12, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v96, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v23 = *(v99 + 8);
    v23(v104, v102);
  }

  else
  {
    v24 = v0[25];
    v25 = v0[21];
    v26 = v0[22];

    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v27 = v0[14];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8, &unk_24B2EC060);
  v0[27] = v28;
  v29 = *(v6 + *(v28 + 40));
  swift_bridgeObjectRetain_n();

  sub_24B25A550(v30, v29);
  v0[28] = v31;
  v32 = *(v27 + 16);
  v33 = v0[14];
  if (*(v29 + 16) <= v32 >> 3)
  {
    v111 = v0[14];

    sub_24B2A4074(v29);
    v34 = v111;
  }

  else
  {

    v34 = sub_24B2AB678(v29, v33);
  }

  v0[29] = v34;
  v35 = v0[21];
  if (*(v34 + 16))
  {
    v108(v0[23], v6, v0[21]);

    v36 = sub_24B2D3164();
    v37 = sub_24B2D5934();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[23];
    v40 = v0[21];
    if (v38)
    {
      v106 = v0[21];
      v109 = v23;
      v42 = v0[19];
      v41 = v0[20];
      v103 = v0[23];
      v43 = v0[18];
      v95 = v0[15];
      v97 = v0[16];
      v44 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v111 = v100;
      *v44 = 136447235;
      sub_24B2D12A4();
      v45 = sub_24B2D24B4();
      v93 = v37;
      v47 = v46;
      (*(v42 + 8))(v41, v43);
      v48 = sub_24AFF321C(v45, v47, &v111);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B1383EC(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
      v49 = sub_24B2D57F4();
      v51 = sub_24AFF321C(v49, v50, &v111);

      *(v44 + 24) = v51;
      *(v44 + 32) = 2160;
      *(v44 + 34) = 1752392040;
      *(v44 + 42) = 2081;
      v0[8] = v95;
      v0[9] = v97;

      v52 = sub_24B2D53C4();
      v54 = sub_24AFF321C(v52, v53, &v111);

      *(v44 + 44) = v54;
      _os_log_impl(&dword_24AFD2000, v36, v93, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s", v44, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v100, -1, -1);
      MEMORY[0x24C23D530](v44, -1, -1);

      v109(v103, v106);
    }

    else
    {

      v23(v39, v40);
    }

    v73 = *(v29 + 16);

    v74 = swift_task_alloc();
    v0[30] = v74;
    *v74 = v0;
    v74[1] = sub_24B12F054;

    return sub_24B1EC900(v34, v73 == 0);
  }

  else
  {
    v55 = v0[24];

    v108(v55, v6, v35);

    v56 = sub_24B2D3164();
    v57 = sub_24B2D5934();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[24];
    v60 = v0[21];
    if (v58)
    {
      v105 = v0[24];
      v107 = v0[21];
      v61 = v0[19];
      v62 = v0[20];
      v63 = v0[16];
      v98 = v0[18];
      v101 = v0[15];
      v64 = swift_slowAlloc();
      v110 = v23;
      v111 = swift_slowAlloc();
      v65 = v111;
      *v64 = 136446723;
      sub_24B2D12A4();
      v66 = sub_24B2D24B4();
      v68 = v67;
      (*(v61 + 8))(v62, v98);
      v69 = sub_24AFF321C(v66, v68, &v111);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2160;
      *(v64 + 14) = 1752392040;
      *(v64 + 22) = 2081;
      v0[10] = v101;
      v0[11] = v63;

      v70 = sub_24B2D53C4();
      v72 = sub_24AFF321C(v70, v71, &v111);

      *(v64 + 24) = v72;
      _os_log_impl(&dword_24AFD2000, v56, v57, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v65, -1, -1);
      MEMORY[0x24C23D530](v64, -1, -1);

      v110(v105, v107);
    }

    else
    {

      v23(v59, v60);
    }

    v76 = v0[27];
    v77 = *(v0[17] + v0[26] + *(v76 + 36));
    if (*(v77 + 16) && (v78 = sub_24B1833D4(), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);
    }

    else
    {
      v80 = MEMORY[0x277D84FA0];
    }

    v82 = v0[27];
    v81 = v0[28];
    v83 = v0[16];
    v84 = v0[17] + v0[26];
    v86 = v0[14];
    v85 = v0[15];

    sub_24B25A550(v86, v80);
    v88 = v87;
    swift_beginAccess();
    v89 = *(v76 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v84 + v89);
    *(v84 + v89) = 0x8000000000000000;
    sub_24B1C9710(v88, v85, v83, isUniquelyReferenced_nonNull_native);

    *(v84 + v89) = v111;
    sub_24B2978AC();
    *(v84 + *(v82 + 40)) = v81;

    sub_24B297F4C();
    swift_endAccess();

    v91 = v0[1];

    return v91();
  }
}

uint64_t sub_24B12F054()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);

    return MEMORY[0x2822009F8](sub_24B12F1EC, v6, 0);
  }
}

uint64_t sub_24B12F1EC()
{
  v1 = v0[27];
  v2 = *(v0[17] + v0[26] + *(v1 + 36));
  if (*(v2 + 16) && (v3 = sub_24B1833D4(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[16];
  v9 = v0[17] + v0[26];
  v11 = v0[14];
  v10 = v0[15];

  sub_24B25A550(v11, v5);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v1 + 36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + v14);
  *(v9 + v14) = 0x8000000000000000;
  sub_24B1C9710(v13, v10, v8, isUniquelyReferenced_nonNull_native);

  *(v9 + v14) = v18;
  sub_24B2978AC();
  *(v9 + *(v7 + 40)) = v6;

  sub_24B297F4C();
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B12F38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_24B2D2504();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B12F4C4, v3, 0);
}

uint64_t sub_24B12F4C4()
{
  v112 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17];
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v0[26] = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v108 = *(v3 + 16);
  v108(v1, v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v99 = v0[22];
    v102 = v0[21];
    v104 = v0[25];
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    v92 = v0[15];
    v94 = v0[16];
    v12 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v111 = v96;
    *v12 = 136447235;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_24AFF321C(v13, v15, &v111);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for PeopleLocationsProvider.Subscription(0);
    sub_24B1383EC(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
    v17 = sub_24B2D57F4();
    v19 = sub_24AFF321C(v17, v18, &v111);

    *(v12 + 24) = v19;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v0[12] = v92;
    v0[13] = v94;

    v20 = sub_24B2D53C4();
    v22 = sub_24AFF321C(v20, v21, &v111);

    *(v12 + 44) = v22;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):addSubscriptions\n- requestedSubscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v12, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v96, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v23 = *(v99 + 8);
    v23(v104, v102);
  }

  else
  {
    v24 = v0[25];
    v25 = v0[21];
    v26 = v0[22];

    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v27 = v0[14];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0, &qword_24B2EC040);
  v0[27] = v28;
  v29 = *(v6 + *(v28 + 40));
  swift_bridgeObjectRetain_n();

  sub_24B25A778(v30, v29);
  v0[28] = v31;
  v32 = *(v27 + 16);
  v33 = v0[14];
  if (*(v29 + 16) <= v32 >> 3)
  {
    v111 = v0[14];

    sub_24B2A3E6C(v29);
    v34 = v111;
  }

  else
  {

    v34 = sub_24B2AA7D8(v29, v33);
  }

  v0[29] = v34;
  v35 = v0[21];
  if (*(v34 + 16))
  {
    v108(v0[23], v6, v0[21]);

    v36 = sub_24B2D3164();
    v37 = sub_24B2D5934();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[23];
    v40 = v0[21];
    if (v38)
    {
      v106 = v0[21];
      v109 = v23;
      v42 = v0[19];
      v41 = v0[20];
      v103 = v0[23];
      v43 = v0[18];
      v95 = v0[15];
      v97 = v0[16];
      v44 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v111 = v100;
      *v44 = 136447235;
      sub_24B2D12A4();
      v45 = sub_24B2D24B4();
      v93 = v37;
      v47 = v46;
      (*(v42 + 8))(v41, v43);
      v48 = sub_24AFF321C(v45, v47, &v111);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B1383EC(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
      v49 = sub_24B2D57F4();
      v51 = sub_24AFF321C(v49, v50, &v111);

      *(v44 + 24) = v51;
      *(v44 + 32) = 2160;
      *(v44 + 34) = 1752392040;
      *(v44 + 42) = 2081;
      v0[8] = v95;
      v0[9] = v97;

      v52 = sub_24B2D53C4();
      v54 = sub_24AFF321C(v52, v53, &v111);

      *(v44 + 44) = v54;
      _os_log_impl(&dword_24AFD2000, v36, v93, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s", v44, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v100, -1, -1);
      MEMORY[0x24C23D530](v44, -1, -1);

      v109(v103, v106);
    }

    else
    {

      v23(v39, v40);
    }

    v73 = *(v29 + 16);

    v74 = swift_task_alloc();
    v0[30] = v74;
    *v74 = v0;
    v74[1] = sub_24B12FF24;

    return sub_24B1FA3E8(v34, v73 == 0);
  }

  else
  {
    v55 = v0[24];

    v108(v55, v6, v35);

    v56 = sub_24B2D3164();
    v57 = sub_24B2D5934();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[24];
    v60 = v0[21];
    if (v58)
    {
      v105 = v0[24];
      v107 = v0[21];
      v61 = v0[19];
      v62 = v0[20];
      v63 = v0[16];
      v98 = v0[18];
      v101 = v0[15];
      v64 = swift_slowAlloc();
      v110 = v23;
      v111 = swift_slowAlloc();
      v65 = v111;
      *v64 = 136446723;
      sub_24B2D12A4();
      v66 = sub_24B2D24B4();
      v68 = v67;
      (*(v61 + 8))(v62, v98);
      v69 = sub_24AFF321C(v66, v68, &v111);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2160;
      *(v64 + 14) = 1752392040;
      *(v64 + 22) = 2081;
      v0[10] = v101;
      v0[11] = v63;

      v70 = sub_24B2D53C4();
      v72 = sub_24AFF321C(v70, v71, &v111);

      *(v64 + 24) = v72;
      _os_log_impl(&dword_24AFD2000, v56, v57, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v65, -1, -1);
      MEMORY[0x24C23D530](v64, -1, -1);

      v110(v105, v107);
    }

    else
    {

      v23(v59, v60);
    }

    v76 = v0[27];
    v77 = *(v0[17] + v0[26] + *(v76 + 36));
    if (*(v77 + 16) && (v78 = sub_24B1833D4(), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);
    }

    else
    {
      v80 = MEMORY[0x277D84FA0];
    }

    v82 = v0[27];
    v81 = v0[28];
    v83 = v0[16];
    v84 = v0[17] + v0[26];
    v86 = v0[14];
    v85 = v0[15];

    sub_24B25A778(v86, v80);
    v88 = v87;
    swift_beginAccess();
    v89 = *(v76 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v84 + v89);
    *(v84 + v89) = 0x8000000000000000;
    sub_24B1C96E0(v88, v85, v83, isUniquelyReferenced_nonNull_native);

    *(v84 + v89) = v111;
    sub_24B297888();
    *(v84 + *(v82 + 40)) = v81;

    sub_24B297D1C();
    swift_endAccess();

    v91 = v0[1];

    return v91();
  }
}

uint64_t sub_24B12FF24()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);

    return MEMORY[0x2822009F8](sub_24B1300BC, v6, 0);
  }
}

uint64_t sub_24B1300BC()
{
  v1 = v0[27];
  v2 = *(v0[17] + v0[26] + *(v1 + 36));
  if (*(v2 + 16) && (v3 = sub_24B1833D4(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[16];
  v9 = v0[17] + v0[26];
  v11 = v0[14];
  v10 = v0[15];

  sub_24B25A778(v11, v5);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v1 + 36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + v14);
  *(v9 + v14) = 0x8000000000000000;
  sub_24B1C96E0(v13, v10, v8, isUniquelyReferenced_nonNull_native);

  *(v9 + v14) = v18;
  sub_24B297888();
  *(v9 + *(v7 + 40)) = v6;

  sub_24B297D1C();
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B13025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_24B2D2504();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B130394, v3, 0);
}

uint64_t sub_24B130394()
{
  v112 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v0[26] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v108 = *(v3 + 16);
  v108(v1, v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v99 = v0[22];
    v102 = v0[21];
    v104 = v0[25];
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    v92 = v0[15];
    v94 = v0[16];
    v12 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v111 = v96;
    *v12 = 136447235;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_24AFF321C(v13, v15, &v111);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for ItemsProvider.Subscription(0);
    sub_24B1383EC(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
    v17 = sub_24B2D57F4();
    v19 = sub_24AFF321C(v17, v18, &v111);

    *(v12 + 24) = v19;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v0[12] = v92;
    v0[13] = v94;

    v20 = sub_24B2D53C4();
    v22 = sub_24AFF321C(v20, v21, &v111);

    *(v12 + 44) = v22;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):addSubscriptions\n- requestedSubscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v12, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v96, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v23 = *(v99 + 8);
    v23(v104, v102);
  }

  else
  {
    v24 = v0[25];
    v25 = v0[21];
    v26 = v0[22];

    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v27 = v0[14];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  v0[27] = v28;
  v29 = *(v6 + *(v28 + 40));
  swift_bridgeObjectRetain_n();

  sub_24B25A7B8(v30, v29);
  v0[28] = v31;
  v32 = *(v27 + 16);
  v33 = v0[14];
  if (*(v29 + 16) <= v32 >> 3)
  {
    v111 = v0[14];

    sub_24B2A4484(v29);
    v34 = v111;
  }

  else
  {

    v34 = sub_24B2AD7AC(v29, v33);
  }

  v0[29] = v34;
  v35 = v0[21];
  if (*(v34 + 16))
  {
    v108(v0[23], v6, v0[21]);

    v36 = sub_24B2D3164();
    v37 = sub_24B2D5934();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[23];
    v40 = v0[21];
    if (v38)
    {
      v106 = v0[21];
      v109 = v23;
      v42 = v0[19];
      v41 = v0[20];
      v103 = v0[23];
      v43 = v0[18];
      v95 = v0[15];
      v97 = v0[16];
      v44 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v111 = v100;
      *v44 = 136447235;
      sub_24B2D12A4();
      v45 = sub_24B2D24B4();
      v93 = v37;
      v47 = v46;
      (*(v42 + 8))(v41, v43);
      v48 = sub_24AFF321C(v45, v47, &v111);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B1383EC(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
      v49 = sub_24B2D57F4();
      v51 = sub_24AFF321C(v49, v50, &v111);

      *(v44 + 24) = v51;
      *(v44 + 32) = 2160;
      *(v44 + 34) = 1752392040;
      *(v44 + 42) = 2081;
      v0[8] = v95;
      v0[9] = v97;

      v52 = sub_24B2D53C4();
      v54 = sub_24AFF321C(v52, v53, &v111);

      *(v44 + 44) = v54;
      _os_log_impl(&dword_24AFD2000, v36, v93, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s", v44, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v100, -1, -1);
      MEMORY[0x24C23D530](v44, -1, -1);

      v109(v103, v106);
    }

    else
    {

      v23(v39, v40);
    }

    v73 = *(v29 + 16);

    v74 = swift_task_alloc();
    v0[30] = v74;
    *v74 = v0;
    v74[1] = sub_24B130DF4;

    return sub_24B1A9AD0(v34, v73 == 0);
  }

  else
  {
    v55 = v0[24];

    v108(v55, v6, v35);

    v56 = sub_24B2D3164();
    v57 = sub_24B2D5934();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[24];
    v60 = v0[21];
    if (v58)
    {
      v105 = v0[24];
      v107 = v0[21];
      v61 = v0[19];
      v62 = v0[20];
      v63 = v0[16];
      v98 = v0[18];
      v101 = v0[15];
      v64 = swift_slowAlloc();
      v110 = v23;
      v111 = swift_slowAlloc();
      v65 = v111;
      *v64 = 136446723;
      sub_24B2D12A4();
      v66 = sub_24B2D24B4();
      v68 = v67;
      (*(v61 + 8))(v62, v98);
      v69 = sub_24AFF321C(v66, v68, &v111);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2160;
      *(v64 + 14) = 1752392040;
      *(v64 + 22) = 2081;
      v0[10] = v101;
      v0[11] = v63;

      v70 = sub_24B2D53C4();
      v72 = sub_24AFF321C(v70, v71, &v111);

      *(v64 + 24) = v72;
      _os_log_impl(&dword_24AFD2000, v56, v57, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v65, -1, -1);
      MEMORY[0x24C23D530](v64, -1, -1);

      v110(v105, v107);
    }

    else
    {

      v23(v59, v60);
    }

    v76 = v0[27];
    v77 = *(v0[17] + v0[26] + *(v76 + 36));
    if (*(v77 + 16) && (v78 = sub_24B1833D4(), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);
    }

    else
    {
      v80 = MEMORY[0x277D84FA0];
    }

    v82 = v0[27];
    v81 = v0[28];
    v83 = v0[16];
    v84 = v0[17] + v0[26];
    v86 = v0[14];
    v85 = v0[15];

    sub_24B25A7B8(v86, v80);
    v88 = v87;
    swift_beginAccess();
    v89 = *(v76 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v84 + v89);
    *(v84 + v89) = 0x8000000000000000;
    sub_24B1C9E88(v88, v85, v83, isUniquelyReferenced_nonNull_native);

    *(v84 + v89) = v111;
    sub_24B2978D0();
    *(v84 + *(v82 + 40)) = v81;

    sub_24B2983AC();
    swift_endAccess();

    v91 = v0[1];

    return v91();
  }
}

uint64_t sub_24B130DF4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);

    return MEMORY[0x2822009F8](sub_24B130F8C, v6, 0);
  }
}

uint64_t sub_24B130F8C()
{
  v1 = v0[27];
  v2 = *(v0[17] + v0[26] + *(v1 + 36));
  if (*(v2 + 16) && (v3 = sub_24B1833D4(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[16];
  v9 = v0[17] + v0[26];
  v11 = v0[14];
  v10 = v0[15];

  sub_24B25A7B8(v11, v5);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v1 + 36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + v14);
  *(v9 + v14) = 0x8000000000000000;
  sub_24B1C9E88(v13, v10, v8, isUniquelyReferenced_nonNull_native);

  *(v9 + v14) = v18;
  sub_24B2978D0();
  *(v9 + *(v7 + 40)) = v6;

  sub_24B2983AC();
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B13112C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B13124C, v2, 0);
}

uint64_t sub_24B13124C()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B13844C;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B28CA18(v26, v25, v24);
}

uint64_t sub_24B131540(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B131660, v2, 0);
}

uint64_t sub_24B131660()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B13844C;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B28DC6C(v26, v25, v24);
}

uint64_t sub_24B131954(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B131A74, v2, 0);
}

uint64_t sub_24B131A74()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B13844C;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B28F4FC(v26, v25, v24);
}

uint64_t sub_24B131D68(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B131E88, v2, 0);
}

uint64_t sub_24B131E88()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B13844C;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B29146C(v26, v25, v24);
}

uint64_t sub_24B13217C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B13229C, v2, 0);
}

uint64_t sub_24B13229C()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B13844C;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B2933DC(v26, v25, v24);
}

uint64_t sub_24B132590(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_24B2D2504();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1326B0, v2, 0);
}

uint64_t sub_24B1326B0()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v31 = v0[13];
    v32 = v0[15];
    v9 = v0[11];
    v28 = v0[10];
    v10 = v0[8];
    v29 = v0[7];
    v30 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446723;
    sub_24B2D12A4();
    v13 = sub_24B2D24B4();
    v15 = v14;
    (*(v9 + 8))(v8, v28);
    v16 = sub_24AFF321C(v13, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v0[5] = v29;
    v0[6] = v10;

    v17 = sub_24B2D53C4();
    v19 = sub_24AFF321C(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24B1329A4;
  v24 = v0[8];
  v25 = v0[7];
  v26 = MEMORY[0x277D84FA0];

  return sub_24B29534C(v26, v25, v24);
}

uint64_t sub_24B1329A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B132AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B12DA00(a2, a3, a4);
}

uint64_t sub_24B132B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B12E4BC(a2, a3, a4);
}

uint64_t sub_24B132C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B12F38C(a2, a3, a4);
}

uint64_t sub_24B132CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFD370;

  return sub_24B13025C(a2, a3, a4);
}

uint64_t sub_24B132DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B13112C(a2, a3);
}

uint64_t sub_24B132E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B131540(a2, a3);
}

uint64_t sub_24B132F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B131954(a2, a3);
}

uint64_t sub_24B132FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B131D68(a2, a3);
}

uint64_t sub_24B133058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B13217C(a2, a3);
}

uint64_t sub_24B133104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B132590(a2, a3);
}

uint64_t sub_24B1331B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B133104(v2, v3, v4);
}

uint64_t sub_24B133258()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B133058(v2, v3, v4);
}

uint64_t sub_24B133300()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B132DA8(v2, v3, v4);
}

uint64_t sub_24B1333A8(uint64_t a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650, &qword_24B2EC1D0);
  MEMORY[0x28223BE20](v83);
  v3 = &v68 - v2;
  v71 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v71);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v68 - v7;
  v8 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v68 - v11;
  v12 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v68 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataOMa(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  MEMORY[0x28223BE20](v24);
  v77 = &v68 - v25;
  MEMORY[0x28223BE20](v26);
  v31 = &v68 - v30;
  v32 = *(a1 + 16);
  if (v32)
  {
    v80 = v27;
    v81 = v28;
    v75 = v5;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0, &qword_24B2EC1D8);
    v34 = sub_24B2D5C04();
    v35 = 0;
    v84 = v34 + 56;
    v73 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v85 = *(v33 + 72);
    v79 = v18;
    v82 = v31;
    v74 = v32;
    while (1)
    {
      v78 = v35;
      sub_24B1382BC(v73 + v85 * v35, v31, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B1382BC(v31, v77, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v38 = v70;
        sub_24B138384(v77, v70, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        sub_24B1383EC(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        sub_24B2D6104();
        v39 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_14:
        sub_24B138324(v38, v39);
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 3)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        MEMORY[0x24C23C8D0](1);
      }

LABEL_15:
      v40 = sub_24B2D6124();
      v41 = ~(-1 << *(v34 + 32));
      v42 = v40 & v41;
      v43 = (v40 & v41) >> 6;
      v44 = *(v84 + 8 * v43);
      v45 = 1 << (v40 & v41);
      if ((v45 & v44) == 0)
      {
LABEL_16:
        *(v84 + 8 * v43) = v44 | v45;
        result = sub_24B138384(v31, *(v34 + 48) + v42 * v85, _s14descr285E46659O16SubscriptionDataOMa);
        v47 = *(v34 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        v36 = v74;
        if (!v48)
        {
          *(v34 + 16) = v49;
          goto LABEL_4;
        }

        __break(1u);
        return result;
      }

      while (1)
      {
        sub_24B1382BC(*(v34 + 48) + v42 * v85, v23, _s14descr285E46659O16SubscriptionDataOMa);
        v50 = *(v83 + 48);
        sub_24B1382BC(v23, v3, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B1382BC(v31, &v3[v50], _s14descr285E46659O16SubscriptionDataOMa);
        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 1)
        {
          break;
        }

        if (v51)
        {
          v59 = v41;
          v60 = v34;
          v61 = v81;
          sub_24B1382BC(v3, v81, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v62 = v76;
            sub_24B138384(&v3[v50], v76, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            sub_24B2D1704();
            sub_24B1383EC(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
            v63 = sub_24B2D52A4();
            v64 = v62;
            v18 = v79;
            sub_24B138324(v64, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B138324(v61, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            v34 = v60;
            v41 = v59;
            v31 = v82;
            if (v63)
            {
              goto LABEL_3;
            }

LABEL_39:
            sub_24B138324(v3, _s14descr285E46659O16SubscriptionDataOMa);
            goto LABEL_20;
          }

          sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B138324(v61, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          v34 = v60;
          v41 = v59;
          v31 = v82;
        }

        else
        {
          v52 = v80;
          sub_24B1382BC(v3, v80, _s14descr285E46659O16SubscriptionDataOMa);
          if (!swift_getEnumCaseMultiPayload())
          {
            v65 = v72;
            sub_24B138384(&v3[v50], v72, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2D1704();
            sub_24B1383EC(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
            v66 = sub_24B2D52A4();
            v67 = v65;
            v18 = v79;
            sub_24B138324(v67, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B138324(v52, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            v31 = v82;
            if (v66)
            {
              goto LABEL_3;
            }

            goto LABEL_39;
          }

          sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B138324(v52, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          v31 = v82;
        }

LABEL_19:
        sub_24AFF8258(v3, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_20:
        v42 = (v42 + 1) & v41;
        v43 = v42 >> 6;
        v44 = *(v84 + 8 * (v42 >> 6));
        v45 = 1 << v42;
        if ((v44 & (1 << v42)) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v51 != 2)
      {
        if (v51 == 3)
        {
          sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_19;
      }

      sub_24B1382BC(v3, v18, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B138324(v18, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        goto LABEL_19;
      }

      v53 = v18;
      v54 = v75;
      sub_24B138384(&v3[v50], v75, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D1704();
      sub_24B1383EC(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v55 = sub_24B2D52A4();
      sub_24B138324(v23, _s14descr285E46659O16SubscriptionDataOMa);
      if ((v55 & 1) == 0)
      {
        sub_24B138324(v54, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_41:
        sub_24B138324(v53, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B138324(v3, _s14descr285E46659O16SubscriptionDataOMa);
        v18 = v53;
        v31 = v82;
        goto LABEL_20;
      }

      v56 = *(v71 + 20);
      v57 = *(v53 + v56);
      v58 = *(v54 + v56);
      sub_24B138324(v54, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v57 != v58)
      {
        goto LABEL_41;
      }

      sub_24B138324(v53, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      v18 = v53;
      v31 = v82;
LABEL_3:
      sub_24B138324(v3, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B138324(v31, _s14descr285E46659O16SubscriptionDataOMa);
      v36 = v74;
LABEL_4:
      v35 = v78 + 1;
      if (v78 + 1 == v36)
      {
        return v34;
      }
    }

    if (EnumCaseMultiPayload)
    {
      v38 = v69;
      sub_24B138384(v77, v69, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      MEMORY[0x24C23C8D0](3);
      sub_24B2D1704();
      sub_24B1383EC(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      v39 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
    }

    else
    {
      v38 = v68;
      sub_24B138384(v77, v68, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      MEMORY[0x24C23C8D0](2);
      sub_24B2D1704();
      sub_24B1383EC(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      v39 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
    }

    goto LABEL_14;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B13405C(uint64_t a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v51);
  v3 = &v41 - v2;
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v41 - v8;
  v9 = type metadata accessor for PeopleProvider.Subscription(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8, &unk_24B2EC070);
    v56 = a1;
    v23 = sub_24B2D5C04();
    v24 = 0;
    v55 = v23 + 56;
    v44 = v56 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v56 = *(v10 + 72);
    v25 = v23;
    v54 = (v5 + 48);
    v47 = (v5 + 32);
    v50 = (v5 + 8);
    v43 = v22;
    v42 = v18;
    v46 = v23;
    while (1)
    {
      v45 = v24;
      sub_24B1382BC(v44 + v56 * v24, v21, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1382BC(v21, v18, type metadata accessor for PeopleProvider.Subscription);
      v53 = *v54;
      if (v53(v18, 1, v4) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v27 = v41;
        (*v47)(v41, v18, v4);
        MEMORY[0x24C23C8D0](1);
        sub_24B1383EC(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
        sub_24B2D5254();
        (*v50)(v27, v4);
      }

      v28 = sub_24B2D6124();
      v29 = -1 << *(v25 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      v32 = *(v55 + 8 * (v30 >> 6));
      v33 = 1 << v30;
      if (((1 << v30) & v32) != 0)
      {
        break;
      }

LABEL_22:
      *(v55 + 8 * v31) = v32 | v33;
      result = sub_24B138384(v21, *(v25 + 48) + v30 * v56, type metadata accessor for PeopleProvider.Subscription);
      v38 = *(v25 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        __break(1u);
        return result;
      }

      *(v25 + 16) = v40;
LABEL_5:
      v24 = v45 + 1;
      if (v45 + 1 == v43)
      {
        return v25;
      }
    }

    v52 = ~v29;
    while (1)
    {
      sub_24B1382BC(*(v25 + 48) + v30 * v56, v15, type metadata accessor for PeopleProvider.Subscription);
      v34 = *(v51 + 48);
      sub_24B1382BC(v15, v3, type metadata accessor for PeopleProvider.Subscription);
      sub_24B1382BC(v21, &v3[v34], type metadata accessor for PeopleProvider.Subscription);
      v35 = v53;
      if (v53(v3, 1, v4) == 1)
      {
        sub_24B138324(v15, type metadata accessor for PeopleProvider.Subscription);
        if (v35(&v3[v34], 1, v4) == 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_24B1382BC(v3, v12, type metadata accessor for PeopleProvider.Subscription);
        if (v35(&v3[v34], 1, v4) != 1)
        {
          (*v47)(v49, &v3[v34], v4);
          sub_24B1383EC(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v59 == v57 && v60 == v58)
          {
            v26 = *v50;
            (*v50)(v49, v4);
            sub_24B138324(v15, type metadata accessor for PeopleProvider.Subscription);

            v26(v12, v4);
            v25 = v46;
LABEL_4:
            sub_24B138324(v3, type metadata accessor for PeopleProvider.Subscription);
            sub_24B138324(v21, type metadata accessor for PeopleProvider.Subscription);
            v18 = v42;
            goto LABEL_5;
          }

          v48 = sub_24B2D6004();
          v36 = *v50;
          (*v50)(v49, v4);
          sub_24B138324(v15, type metadata accessor for PeopleProvider.Subscription);

          v36(v12, v4);
          v25 = v46;
          if (v48)
          {
            goto LABEL_4;
          }

          sub_24B138324(v3, type metadata accessor for PeopleProvider.Subscription);
          goto LABEL_13;
        }

        sub_24B138324(v15, type metadata accessor for PeopleProvider.Subscription);
        (*v50)(v12, v4);
      }

      sub_24AFF8258(v3, &qword_27EFCC6D0, &qword_24B2EBE70);
LABEL_13:
      v30 = (v30 + 1) & v52;
      v31 = v30 >> 6;
      v32 = *(v55 + 8 * (v30 >> 6));
      v33 = 1 << v30;
      if ((v32 & (1 << v30)) == 0)
      {
        v18 = v42;
        goto LABEL_22;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B134838(uint64_t a1)
{
  v2 = sub_24B2D6204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC778, &qword_24B2EBFF8);
    v9 = sub_24B2D5C04();
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
      sub_24B1383EC(&qword_27EFCC780, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v16 = sub_24B2D5244();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24B1383EC(&qword_27EFCC788, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_24B2D52A4();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_24B134B58(uint64_t a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v51);
  v3 = &v41 - v2;
  v4 = sub_24B2D1DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v41 - v8;
  v9 = type metadata accessor for ItemsProvider.Subscription(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860, &unk_24B2EC100);
    v56 = a1;
    v23 = sub_24B2D5C04();
    v24 = 0;
    v55 = v23 + 56;
    v44 = v56 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v56 = *(v10 + 72);
    v25 = v23;
    v54 = (v5 + 48);
    v47 = (v5 + 32);
    v50 = (v5 + 8);
    v43 = v22;
    v42 = v18;
    v46 = v23;
    while (1)
    {
      v45 = v24;
      sub_24B1382BC(v44 + v56 * v24, v21, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1382BC(v21, v18, type metadata accessor for ItemsProvider.Subscription);
      v53 = *v54;
      if (v53(v18, 1, v4) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v27 = v41;
        (*v47)(v41, v18, v4);
        MEMORY[0x24C23C8D0](1);
        sub_24B1383EC(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
        sub_24B2D5254();
        (*v50)(v27, v4);
      }

      v28 = sub_24B2D6124();
      v29 = -1 << *(v25 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      v32 = *(v55 + 8 * (v30 >> 6));
      v33 = 1 << v30;
      if (((1 << v30) & v32) != 0)
      {
        break;
      }

LABEL_22:
      *(v55 + 8 * v31) = v32 | v33;
      result = sub_24B138384(v21, *(v25 + 48) + v30 * v56, type metadata accessor for ItemsProvider.Subscription);
      v38 = *(v25 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        __break(1u);
        return result;
      }

      *(v25 + 16) = v40;
LABEL_5:
      v24 = v45 + 1;
      if (v45 + 1 == v43)
      {
        return v25;
      }
    }

    v52 = ~v29;
    while (1)
    {
      sub_24B1382BC(*(v25 + 48) + v30 * v56, v15, type metadata accessor for ItemsProvider.Subscription);
      v34 = *(v51 + 48);
      sub_24B1382BC(v15, v3, type metadata accessor for ItemsProvider.Subscription);
      sub_24B1382BC(v21, &v3[v34], type metadata accessor for ItemsProvider.Subscription);
      v35 = v53;
      if (v53(v3, 1, v4) == 1)
      {
        sub_24B138324(v15, type metadata accessor for ItemsProvider.Subscription);
        if (v35(&v3[v34], 1, v4) == 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_24B1382BC(v3, v12, type metadata accessor for ItemsProvider.Subscription);
        if (v35(&v3[v34], 1, v4) != 1)
        {
          (*v47)(v49, &v3[v34], v4);
          sub_24B1383EC(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v59 == v57 && v60 == v58)
          {
            v26 = *v50;
            (*v50)(v49, v4);
            sub_24B138324(v15, type metadata accessor for ItemsProvider.Subscription);

            v26(v12, v4);
            v25 = v46;
LABEL_4:
            sub_24B138324(v3, type metadata accessor for ItemsProvider.Subscription);
            sub_24B138324(v21, type metadata accessor for ItemsProvider.Subscription);
            v18 = v42;
            goto LABEL_5;
          }

          v48 = sub_24B2D6004();
          v36 = *v50;
          (*v50)(v49, v4);
          sub_24B138324(v15, type metadata accessor for ItemsProvider.Subscription);

          v36(v12, v4);
          v25 = v46;
          if (v48)
          {
            goto LABEL_4;
          }

          sub_24B138324(v3, type metadata accessor for ItemsProvider.Subscription);
          goto LABEL_13;
        }

        sub_24B138324(v15, type metadata accessor for ItemsProvider.Subscription);
        (*v50)(v12, v4);
      }

      sub_24AFF8258(v3, &qword_27EFCC6E0, &unk_24B2F0100);
LABEL_13:
      v30 = (v30 + 1) & v52;
      v31 = v30 >> 6;
      v32 = *(v55 + 8 * (v30 >> 6));
      v33 = 1 << v30;
      if ((v32 & (1 << v30)) == 0)
      {
        v18 = v42;
        goto LABEL_22;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t objectdestroyTm_18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B135368(uint64_t a1)
{
  result = sub_24B2D1DA4();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D3184();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ItemDetailsController.State(319);
      if (v4 <= 0x3F)
      {
        result = sub_24B2D25C4();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24B1354FC(uint64_t a1)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800, &unk_24B2F5680);
  MEMORY[0x28223BE20](v103);
  v3 = &v89 - v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808, &unk_24B2EC080);
  MEMORY[0x28223BE20](v114);
  v5 = &v89 - v4;
  v6 = sub_24B2D14C4();
  v115 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24B2D15F4();
  v108 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v89 - v10;
  MEMORY[0x28223BE20](v11);
  v94 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v93 = &v89 - v19;
  v20 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v107 = &v89 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  MEMORY[0x28223BE20](v31);
  v118 = &v89 - v33;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84FA0];
  }

  v109 = v3;
  v97 = v15;
  v35 = a1;
  v36 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818, &unk_24B2EC090);
  v90 = v34;
  v37 = sub_24B2D5C04();
  v38 = 0;
  v113 = v37;
  v116 = v37 + 56;
  v92 = v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v117 = *(v36 + 72);
  v106 = (v108 + 32);
  v105 = (v115 + 48);
  v95 = (v115 + 32);
  v98 = (v115 + 8);
  v39 = (v108 + 8);
  v108 = v6;
  v100 = v22;
  v40 = v107;
  v91 = v30;
  v104 = v27;
  v102 = v20;
  v101 = v39;
LABEL_7:
  v99 = v38;
  v41 = v118;
  sub_24B1382BC(v92 + v117 * v38, v118, type metadata accessor for ContactsProvider.Subscription);
  sub_24B2D60E4();
  sub_24B1382BC(v41, v30, type metadata accessor for ContactsProvider.Subscription);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();

    v42 = v113;
  }

  else
  {
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
    v44 = v93;
    sub_24B0391CC(v30, v93, &qword_27EFCC810, &qword_24B2F5690);
    (*v106)(v94, &v30[v43], v112);
    MEMORY[0x24C23C8D0](0);
    v45 = v89;
    sub_24B008890(v44, v89, &qword_27EFCC810, &qword_24B2F5690);
    if ((*v105)(v45, 1, v6) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v46 = v96;
      (*v95)(v96, v45, v6);
      sub_24B2D6104();
      sub_24B1383EC(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
      sub_24B2D5254();
      (*v98)(v46, v6);
    }

    v40 = v107;
    v42 = v113;
    sub_24B1383EC(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
    v47 = v94;
    v48 = v112;
    sub_24B2D5254();
    (*v39)(v47, v48);
    sub_24AFF8258(v93, &qword_27EFCC810, &qword_24B2F5690);
    v27 = v104;
  }

  v49 = sub_24B2D6124();
  v115 = ~(-1 << *(v42 + 32));
  v50 = v49 & v115;
  v51 = (v49 & v115) >> 6;
  v52 = *(v116 + 8 * v51);
  v53 = 1 << (v49 & v115);
  if ((v53 & v52) != 0)
  {
    do
    {
      sub_24B1382BC(*(v42 + 48) + v50 * v117, v27, type metadata accessor for ContactsProvider.Subscription);
      v58 = &v5[*(v114 + 48)];
      sub_24B1382BC(v27, v5, type metadata accessor for ContactsProvider.Subscription);
      sub_24B1382BC(v118, v58, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B1382BC(v5, v22, type metadata accessor for ContactsProvider.Subscription);
        v60 = *v22;
        v59 = v22[1];
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);

          v42 = v113;
          goto LABEL_17;
        }

        v61 = *v58;
        v62 = *(v58 + 1);
        if (v60 == v61 && v59 == v62)
        {

          sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);
LABEL_4:
          sub_24B138324(v5, type metadata accessor for ContactsProvider.Subscription);
LABEL_5:
          sub_24B138324(v118, type metadata accessor for ContactsProvider.Subscription);
LABEL_6:
          v38 = v99 + 1;
          v6 = v108;
          v30 = v91;
          if (v99 + 1 == v90)
          {
            return v113;
          }

          goto LABEL_7;
        }

        v64 = sub_24B2D6004();

        sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);
        if (v64)
        {
          goto LABEL_4;
        }

        sub_24B138324(v5, type metadata accessor for ContactsProvider.Subscription);
        v42 = v113;
      }

      else
      {
        sub_24B1382BC(v5, v40, type metadata accessor for ContactsProvider.Subscription);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);
          (*v39)((v40 + v65), v112);
          sub_24AFF8258(v40, &qword_27EFCC810, &qword_24B2F5690);
LABEL_17:
          sub_24AFF8258(v5, &qword_27EFCC808, &unk_24B2EC080);
          goto LABEL_18;
        }

        v66 = *v106;
        v67 = v112;
        (*v106)(v110, (v40 + v65), v112);
        v66(v111, &v58[v65], v67);
        v68 = *(v103 + 48);
        v69 = v109;
        sub_24B0391CC(v40, v109, &qword_27EFCC810, &qword_24B2F5690);
        sub_24B0391CC(v58, v69 + v68, &qword_27EFCC810, &qword_24B2F5690);
        v70 = *v105;
        v71 = v108;
        if ((*v105)(v69, 1, v108) == 1)
        {
          v72 = v70(v69 + v68, 1, v71);
          v39 = v101;
          if (v72 != 1)
          {
            v76 = *v101;
            v77 = v112;
            (*v101)(v111, v112);
            v76(v110, v77);
            v27 = v104;
            sub_24B138324(v104, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_35;
          }

          sub_24AFF8258(v69, &qword_27EFCC810, &qword_24B2F5690);
          v27 = v104;
        }

        else
        {
          v73 = v97;
          sub_24B008890(v69, v97, &qword_27EFCC810, &qword_24B2F5690);
          if (v70(v69 + v68, 1, v71) == 1)
          {
            v39 = v101;
            v74 = *v101;
            v75 = v112;
            (*v101)(v111, v112);
            v74(v110, v75);
            v27 = v104;
            sub_24B138324(v104, type metadata accessor for ContactsProvider.Subscription);
            (*v98)(v73, v71);
            v22 = v100;
LABEL_35:
            sub_24AFF8258(v109, &qword_27EFCC800, &unk_24B2F5680);
LABEL_36:
            v40 = v107;
            v42 = v113;
            sub_24B138324(v5, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_18;
          }

          v78 = v96;
          (*v95)(v96, v69 + v68, v71);
          sub_24B1383EC(&qword_27EFCC828, MEMORY[0x277D08B38], MEMORY[0x277D08B48]);
          v79 = sub_24B2D52A4();
          v80 = *v98;
          (*v98)(v78, v71);
          v80(v73, v71);
          sub_24AFF8258(v69, &qword_27EFCC810, &qword_24B2F5690);
          v39 = v101;
          v27 = v104;
          if ((v79 & 1) == 0)
          {
            v87 = *v101;
            v88 = v112;
            (*v101)(v111, v112);
            v87(v110, v88);
            sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);
            v22 = v100;
            goto LABEL_36;
          }
        }

        v81 = v110;
        v82 = v111;
        v83 = MEMORY[0x24C237DB0](v110, v111);
        v84 = *v39;
        v85 = v82;
        v86 = v112;
        (*v39)(v85, v112);
        v84(v81, v86);
        sub_24B138324(v27, type metadata accessor for ContactsProvider.Subscription);
        sub_24B138324(v5, type metadata accessor for ContactsProvider.Subscription);
        v22 = v100;
        v40 = v107;
        v42 = v113;
        if (v83)
        {
          goto LABEL_5;
        }
      }

LABEL_18:
      v50 = (v50 + 1) & v115;
      v51 = v50 >> 6;
      v52 = *(v116 + 8 * (v50 >> 6));
      v53 = 1 << v50;
    }

    while ((v52 & (1 << v50)) != 0);
  }

  *(v116 + 8 * v51) = v52 | v53;
  result = sub_24B138384(v118, *(v42 + 48) + v50 * v117, type metadata accessor for ContactsProvider.Subscription);
  v55 = *(v42 + 16);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (!v56)
  {
    *(v42 + 16) = v57;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1363B8(uint64_t a1)
{
  v36 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v31 - v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0, &qword_24B2EC048);
  v8 = sub_24B2D5C04();
  v9 = 0;
  v10 = *(v2 + 80);
  v32 = v7;
  v33 = a1 + ((v10 + 32) & ~v10);
  v11 = *(v2 + 72);
  v38 = v8 + 56;
  v39 = v11;
  while (2)
  {
    sub_24B1382BC(v33 + v39 * v9, v40, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2D1574();
    sub_24B1383EC(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    sub_24B2D5254();
    v35 = *(v36 + 20);
    sub_24B2D5404();

    v12 = sub_24B2D6124();
    v13 = -1 << *(v8 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = *(v38 + 8 * (v14 >> 6));
    v17 = 1 << v14;
    if (((1 << v14) & v16) == 0)
    {
      goto LABEL_36;
    }

    v34 = v9;
    v37 = ~v13;
    do
    {
      v18 = v8;
      sub_24B1382BC(*(v8 + 48) + v14 * v39, v4, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B1383EC(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v43 == v41 && v44 == v42)
      {
      }

      else
      {
        v20 = sub_24B2D6004();

        if ((v20 & 1) == 0)
        {
          sub_24B138324(v4, type metadata accessor for PeopleLocationsProvider.Subscription);
          goto LABEL_9;
        }
      }

      if (v4[*(v36 + 20)])
      {
        v21 = 0x776F6C6C616873;
      }

      else
      {
        v21 = 1702259052;
      }

      if (v4[*(v36 + 20)])
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      if (*(v40 + v35))
      {
        v23 = 0x776F6C6C616873;
      }

      else
      {
        v23 = 1702259052;
      }

      if (*(v40 + v35))
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      if (v21 == v23 && v22 == v24)
      {

        sub_24B138324(v4, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_4:
        sub_24B138324(v40, type metadata accessor for PeopleLocationsProvider.Subscription);
        v7 = v32;
        v8 = v18;
        v9 = v34;
        goto LABEL_5;
      }

      v26 = sub_24B2D6004();

      sub_24B138324(v4, type metadata accessor for PeopleLocationsProvider.Subscription);
      if (v26)
      {
        goto LABEL_4;
      }

LABEL_9:
      v14 = (v14 + 1) & v37;
      v15 = v14 >> 6;
      v16 = *(v38 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      v8 = v18;
    }

    while ((v16 & (1 << v14)) != 0);
    v7 = v32;
    v9 = v34;
LABEL_36:
    *(v38 + 8 * v15) = v16 | v17;
    result = sub_24B138384(v40, *(v8 + 48) + v14 * v39, type metadata accessor for PeopleLocationsProvider.Subscription);
    v28 = *(v8 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v8 + 16) = v30;
LABEL_5:
      if (++v9 == v7)
      {
        return v8;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B136894(uint64_t a1)
{
  v2 = sub_24B2D3DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E8, &qword_24B2EC1E0);
    v9 = sub_24B2D5C04();
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
      sub_24B1383EC(&qword_27EFCC8F0, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_24B2D5244();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24B1383EC(&qword_27EFCC8F8, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_24B2D52A4();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_24B136BB4(uint64_t a1)
{
  v2 = sub_24B2D1974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B8, &qword_24B2EC028);
    v9 = sub_24B2D5C04();
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
      sub_24B1383EC(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
      v16 = sub_24B2D5244();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24B1383EC(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
          v23 = sub_24B2D52A4();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_24B136ED4(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8, &unk_24B2F2FF0);
  MEMORY[0x28223BE20](v60);
  v3 = &v51 - v2;
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v51 - v8;
  v9 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0, &qword_24B2EC020);
    v63 = v5;
    v22 = sub_24B2D5C04();
    v23 = 0;
    v58 = v22 + 56;
    v24 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v53 = v17;
    v54 = v24;
    v25 = *(v10 + 72);
    v63 += 6;
    v64 = v25;
    v55 = v21;
    while (1)
    {
      v56 = v23;
      sub_24B1382BC(v54 + v64 * v23, v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1382BC(v20, v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v62 = *v63;
      if (v62(v17, 1, v4) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v27 = v17;
        v28 = v52;
        sub_24B138384(v27, v52, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        MEMORY[0x24C23C8D0](1);
        sub_24B2D1704();
        sub_24B1383EC(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        sub_24B138324(v28, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      }

      v29 = v58;
      v30 = sub_24B2D6124();
      v31 = -1 << *(v22 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v29 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        break;
      }

LABEL_18:
      *(v29 + 8 * v33) = v34 | v35;
      result = sub_24B138384(v20, *(v22 + 48) + v32 * v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v48 = *(v22 + 16);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      v26 = v55;
      if (v49)
      {
        __break(1u);
        return result;
      }

      *(v22 + 16) = v50;
LABEL_4:
      v23 = v56 + 1;
      v17 = v53;
      if (v56 + 1 == v26)
      {
        return v22;
      }
    }

    v61 = ~v31;
    while (1)
    {
      sub_24B1382BC(*(v22 + 48) + v32 * v64, v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v36 = *(v60 + 48);
      sub_24B1382BC(v14, v3, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B1382BC(v20, &v3[v36], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v37 = v62;
      if (v62(v3, 1, v4) == 1)
      {
        break;
      }

      sub_24B1382BC(v3, v59, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v37(&v3[v36], 1, v4) == 1)
      {
        sub_24B138324(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B138324(v59, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_11:
        sub_24AFF8258(v3, &qword_27EFCC7A8, &unk_24B2F2FF0);
        goto LABEL_12;
      }

      v38 = v14;
      v39 = v22;
      v40 = v20;
      v41 = v4;
      v42 = v59;
      v43 = v57;
      sub_24B138384(&v3[v36], v57, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v45 = v43;
      v46 = v42;
      v4 = v41;
      v20 = v40;
      v22 = v39;
      v14 = v38;
      v29 = v58;
      sub_24B138324(v45, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B138324(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B138324(v46, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
LABEL_3:
        sub_24B138324(v3, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B138324(v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v26 = v55;
        goto LABEL_4;
      }

      sub_24B138324(v3, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
LABEL_12:
      v32 = (v32 + 1) & v61;
      v33 = v32 >> 6;
      v34 = *(v29 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if ((v34 & (1 << v32)) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_24B138324(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v37(&v3[v36], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B137590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0, &unk_24B2EC010);
    v3 = sub_24B2D5C04();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      sub_24B2D6104();
      result = sub_24B2D6124();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B137700(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v4 = sub_24B2D5C04();
    v5 = v4 + 56;
    while (1)
    {
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124();
      v7 = result & ~(-1 << *(v4 + 32));
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if ((v10 & v9) == 0)
      {
        *(v5 + 8 * v8) = v10 | v9;
        v11 = *(v4 + 16);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v13;
      }

      if (!--v3)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24B1377DC(uint64_t a1)
{
  v2 = sub_24B2D17A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC760, &qword_24B2EBFF0);
    v9 = sub_24B2D5C04();
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
      sub_24B1383EC(&qword_27EFCC768, MEMORY[0x277D08C60], MEMORY[0x277D08C68]);
      v16 = sub_24B2D5244();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24B1383EC(&qword_27EFCC770, MEMORY[0x277D08C60], MEMORY[0x277D08C70]);
          v23 = sub_24B2D52A4();
          v24 = *v15;
          (*v15)(v5, v2);
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

uint64_t sub_24B137B10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24B2D5C04();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](v12);
      result = sub_24B2D6124();
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

uint64_t sub_24B137C44(uint64_t a1)
{
  v2 = sub_24B2D15F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC738, &qword_24B2EBFD8);
    v9 = sub_24B2D5C04();
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
      sub_24B1383EC(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
      v16 = sub_24B2D5244();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24B1383EC(&qword_27EFCC748, MEMORY[0x277D08B70], MEMORY[0x277D08B80]);
          v23 = sub_24B2D52A4();
          v24 = *v15;
          (*v15)(v5, v2);
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

unint64_t sub_24B137F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCC840;
  if (!qword_27EFCC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC840);
  }

  return result;
}

uint64_t sub_24B137FB8(uint64_t a1)
{
  v3 = *(sub_24B2D1DA4() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B129E50(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_24B138128(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24B138140();
  }

  return v3;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B1381AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B29759C(v2, v3, v5, v4);
}

uint64_t sub_24B138258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemDetailsController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1382BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B138324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B138384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1383EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ItemDetailsController.Dependencies.init(itemsProvider:itemsLocationsProvider:userLocationProvider:etaProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static ItemDetailsController.State.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFC76C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ItemDetailsController.State(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFCC900);

  return sub_24B138810(v3, a1);
}

uint64_t ItemDetailsController.State.info.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ItemDetailsController.State(0) + 20);

  return sub_24B138874(v3, a1);
}

uint64_t ItemDetailsController.State.info.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ItemDetailsController.State(0) + 20);

  return sub_24B1388E4(a1, v3);
}

uint64_t sub_24B138734()
{
  v0 = type metadata accessor for ItemDetailsController.State(0);
  __swift_allocate_value_buffer(v0, qword_27EFCC900);
  v1 = __swift_project_value_buffer(v0, qword_27EFCC900);
  v2 = *(v0 + 20);
  v3 = type metadata accessor for DetailsItemInfo(0);
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0;
  return result;
}

uint64_t type metadata accessor for ItemDetailsController.State(uint64_t a1)
{
  result = qword_27EFCC918;
  if (!qword_27EFCC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B138810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemDetailsController.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B138874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868, &unk_24B2EC130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1388E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868, &unk_24B2EC130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_24B13897C(uint64_t a1)
{
  sub_24B1389F8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B1389F8(uint64_t a1)
{
  if (!qword_27EFCC928)
  {
    type metadata accessor for DetailsItemInfo(255);
    v1 = sub_24B2D5A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCC928);
    }
  }
}

void sub_24B138A50(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA00, &qword_24B2EC3A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v40 = type metadata accessor for ListItemInfo(0);
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v35 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA08, &unk_24B2EC3B0);
  MEMORY[0x28223BE20](v42);
  v14 = &v35 - v13;
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  v36 = v9;
  v39 = (v9 + 48);
  v44 = a3;

  v20 = 0;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v20;
    if (!v18)
    {
      break;
    }

    v22 = v8;
    v45 = v4;
LABEL_10:
    v23 = __clz(__rbit64(v18)) | (v20 << 6);
    v24 = v44;
    v25 = *(v44 + 48);
    v26 = sub_24B2D1DA4();
    (*(*(v26 - 8) + 16))(v14, v25 + *(*(v26 - 8) + 72) * v23, v26);
    v27 = *(v24 + 56);
    v28 = type metadata accessor for ItemsProvider.InfoState(0);
    sub_24B140A58(v27 + *(*(v28 - 8) + 72) * v23, &v14[*(v42 + 48)], type metadata accessor for ItemsProvider.InfoState);
    v8 = v22;
    v29 = v45;
    v43(v14);
    v4 = v29;
    if (v29)
    {
      sub_24AFF8258(v14, &qword_27EFCCA08, &unk_24B2EC3B0);

LABEL_19:

      return;
    }

    v18 &= v18 - 1;
    sub_24AFF8258(v14, &qword_27EFCCA08, &unk_24B2EC3B0);
    if ((*v39)(v22, 1, v40) == 1)
    {
      sub_24AFF8258(v22, &qword_27EFCCA00, &qword_24B2EC3A8);
    }

    else
    {
      v30 = v35;
      sub_24B140990(v22, v35, type metadata accessor for ListItemInfo);
      sub_24B140990(v30, v37, type metadata accessor for ListItemInfo);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_24B006CCC(0, v38[2] + 1, 1, v38);
      }

      v32 = v38[2];
      v31 = v38[3];
      if (v32 >= v31 >> 1)
      {
        v38 = sub_24B006CCC((v31 > 1), v32 + 1, 1, v38);
      }

      v33 = v37;
      v34 = v38;
      v38[2] = v32 + 1;
      sub_24B140990(v33, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32, type metadata accessor for ListItemInfo);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      v22 = v8;
      v45 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t ItemsListController.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  KeyPath = swift_getKeyPath();
  sub_24B139084(KeyPath, v6, v7);

  v8 = *(*v1 + 128);
  swift_beginAccess();
  v10 = type metadata accessor for ItemsListController.State(0, v3, v4, v9);
  return (*(*(v10 - 8) + 16))(a1, v1 + v8, v10);
}

uint64_t ItemsListController.state.setter(uint64_t a1)
{
  v3 = *v1;
  sub_24B140484(a1);
  v5 = type metadata accessor for ItemsListController.State(0, *(v3 + 80), *(v3 + 88), v4);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_24B139124(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  swift_beginAccess();
  v7 = type metadata accessor for ItemsListController.State(0, *(v4 + 80), *(v4 + 88), v6);
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

double (*ItemsListController.state.modify(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  KeyPath = swift_getKeyPath();
  sub_24B139084(KeyPath, v4, v5);

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B139448;
}

double sub_24B139448(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();

  return sub_24B139480(v1);
}

double sub_24B139480(void *a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D2594();

  return result;
}

uint64_t sub_24B139548@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 152));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B14085C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4, v5);
}

uint64_t sub_24B1395F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24B140824;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 152));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AFD5880(v3, v4);
  return sub_24AFD5890(v8, v9);
}

uint64_t ItemsListController.didChangeInfoStateList.getter()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  v2 = *v1;
  sub_24AFD5880(*v1, v1[1]);
  return v2;
}

uint64_t ItemsListController.didChangeInfoStateList.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24AFD5890(v6, v7);
}

uint64_t ItemsListController.__allocating_init(initialState:dependencies:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  ItemsListController.init(initialState:dependencies:)(a1, a2);
  return v4;
}

void *ItemsListController.init(initialState:dependencies:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_24B2D2504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 4);
  sub_24B2D24F4();
  v11 = sub_24B2D24B4();
  v13 = v12;
  v14 = *(v7 + 8);
  v15 = *a2;
  v24 = a2[1];
  v25 = v15;
  v14(v9, v6);
  v3[2] = v11;
  v3[3] = v13;
  sub_24B2D2494();
  sub_24B2D3174();
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v16 = (v3 + *(*v3 + 152));
  *v16 = 0;
  v16[1] = 0;
  v17 = *(*v3 + 160);
  v18 = type metadata accessor for DataControllerSessionMetrics(0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  sub_24B2D25B4();
  v19 = *(*v3 + 128);
  v21 = type metadata accessor for ItemsListController.State(0, *(*v3 + 80), *(*v3 + 88), v20);
  (*(*(v21 - 8) + 32))(v3 + v19, a1, v21);
  v22 = v24;
  *(v3 + 2) = v25;
  *(v3 + 3) = v22;
  v3[8] = v10;
  return v3;
}

char *ItemsListController.deinit()
{
  v1 = v0;
  v2 = *v0;
  v38 = v2;
  v36 = type metadata accessor for DataControllerSessionMetrics(0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v37 = *(v2 + 144);
  if (*&v1[v37])
  {

    sub_24B2D5764();
  }

  v13 = *(v1 + 3);
  v12 = *(v1 + 4);
  v14 = *(v1 + 2);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  swift_retain_n();

  sub_24B2D12C4();

  v16 = *(v1 + 5);
  v17 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v18;
  swift_retain_n();

  sub_24B2D12C4();

  v20 = *(v1 + 6);
  v21 = *(v1 + 2);
  v22 = *(v1 + 3);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v22;
  swift_retain_n();

  sub_24B2D12C4();

  v24 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B008890(&v1[v24], v11, qword_27EFCC940, &unk_24B2F5610);
  sub_24B008890(v11, v8, qword_27EFCC940, &unk_24B2F5610);
  if ((*(v3 + 48))(v8, 1, v36) != 1)
  {
    sub_24B140990(v8, v5, type metadata accessor for DataControllerSessionMetrics);
    sub_24B13A0A0(v5, v1);
    sub_24B1409F8(v5, type metadata accessor for DataControllerSessionMetrics);
  }

  sub_24AFF8258(v11, qword_27EFCC940, &unk_24B2F5610);

  v25 = qword_27EFCC930;
  v26 = sub_24B2D24A4();
  (*(*(v26 - 8) + 8))(&v1[v25], v26);
  v27 = qword_27EFCC938;
  v28 = sub_24B2D3184();
  (*(*(v28 - 8) + 8))(&v1[v27], v28);
  v29 = *(*v1 + 128);
  v31 = type metadata accessor for ItemsListController.State(0, *(v38 + 80), *(v38 + 88), v30);
  (*(*(v31 - 8) + 8))(&v1[v29], v31);

  sub_24AFD5890(*&v1[*(*v1 + 152)], *&v1[*(*v1 + 152) + 8]);
  sub_24AFF8258(&v1[v24], qword_27EFCC940, &unk_24B2F5610);
  v32 = *(*v1 + 168);
  v33 = sub_24B2D25C4();
  (*(*(v33 - 8) + 8))(&v1[v32], v33);
  return v1;
}

uint64_t sub_24B13A0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v6[3] = type metadata accessor for DataControllerSessionMetrics(0);
  v6[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  sub_24B140A58(a1, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v3(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t ItemsListController.__deallocating_deinit()
{
  ItemsListController.deinit();

  return swift_deallocClassInstance();
}

double sub_24B13A184()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  sub_24B13A6F0();
  v9 = qword_27EFCC930;
  v10 = type metadata accessor for DataControllerSessionMetrics(0);
  v11 = v10[6];
  v12 = sub_24B2D24A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v8[v11], v1 + v9, v12);
  sub_24B2D2494();
  v14 = *(v13 + 56);
  v14(&v8[v10[8]], 1, 1, v12);
  v14(&v8[v10[10]], 1, 1, v12);
  v14(&v8[v10[12]], 1, 1, v12);
  sub_24B2D24F4();
  v15 = &v8[v10[5]];
  *v15 = 0xD000000000000013;
  *(v15 + 1) = 0x800000024B2EC2D0;
  v8[v10[9]] = 2;
  v16 = &v8[v10[11]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v8[v10[13]];
  *v17 = 0;
  v17[8] = 1;
  (*(*(v10 - 1) + 56))(v8, 0, 1, v10);
  v18 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v8, v1 + v18, qword_27EFCC940, &unk_24B2F5610);
  v19 = swift_endAccess();
  v20 = *v1;
  v21 = *(*v1 + 144);
  if (*(v1 + v21))
  {

    sub_24B2D5764();

    v20 = *v1;
  }

  *(v1 + *(v20 + 136)) = 1;
  MEMORY[0x28223BE20](v19);
  v22 = *(v2 + 80);
  v39 = v22;
  v23 = v22;
  *(&v38 - 1) = v22;
  v24 = *(&v22 + 1);
  KeyPath = swift_getKeyPath();
  sub_24B139084(KeyPath, v26, v27);

  v40 = v1;
  MEMORY[0x28223BE20](v28);
  *(&v38 - 1) = v39;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();

  swift_beginAccess();
  v30 = type metadata accessor for ItemsListController.State(0, v23, v24, v29);
  sub_24B140F4C(v30);
  sub_24B139480(v1);
  v31 = sub_24B2D56D4();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  v32 = swift_allocObject();
  swift_weakInit();
  v38 = *(v1 + 2);
  v33 = v1[6];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v35 = v38;
  *(v34 + 32) = v39;
  *(v34 + 48) = v35;
  *(v34 + 64) = v32;
  *(v34 + 72) = v33;

  v36 = sub_24AFFBE08(0, 0, v5, &unk_24B2EC388, v34);
  sub_24AFF8258(v5, &qword_27EFC8580, &qword_24B2E0010);
  *(v1 + v21) = v36;

  return result;
}

uint64_t sub_24B13A6F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DataControllerSessionMetrics(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v0 + 160);
  swift_beginAccess();
  v39 = v19;
  sub_24B008890(v0 + v19, v14, qword_27EFCC940, &unk_24B2F5610);
  v40 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, qword_27EFCC940, &unk_24B2F5610);
  }

  v36 = v3;
  v37 = v11;
  sub_24B140990(v14, v18, type metadata accessor for DataControllerSessionMetrics);
  v21 = *(v15 + 32);
  sub_24B008890(&v18[v21], v8, &qword_27EFC8450, &qword_24B2DE7A0);
  v22 = sub_24B2D24A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v8, 1, v22);
  sub_24AFF8258(v8, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v25 != 1)
  {
    return sub_24B1409F8(v18, type metadata accessor for DataControllerSessionMetrics);
  }

  v35 = v21;
  v26 = &v18[v21];
  v27 = v38;
  sub_24B008890(v26, v38, &qword_27EFC8450, &qword_24B2DE7A0);
  v28 = v24(v27, 1, v22);
  sub_24AFF8258(v27, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v28 == 1)
  {
    v29 = v36;
    sub_24B2D2494();
    (*(v23 + 56))(v29, 0, 1, v22);
    sub_24B068E10(v29, &v18[v35], &qword_27EFC8450, &qword_24B2DE7A0);
  }

  v30 = v0[7];
  v41[3] = v15;
  v41[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  sub_24B140A58(v18, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v32 = v0;
  v30(v41);
  sub_24B1409F8(v18, type metadata accessor for DataControllerSessionMetrics);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v33 = v37;
  (*(v40 + 56))(v37, 1, 1, v15);
  v34 = v39;
  swift_beginAccess();
  sub_24B068E10(v33, v32 + v34, qword_27EFCC940, &unk_24B2F5610);
  return swift_endAccess();
}

uint64_t sub_24B13AB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  v7[45] = swift_task_alloc();
  v9 = sub_24B2D3184();
  v7[46] = v9;
  v7[47] = *(v9 - 8);
  v7[48] = swift_task_alloc();
  v7[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC888, &qword_24B2EC178);
  v7[50] = swift_task_alloc();
  v7[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC890, &qword_24B2EC180);
  v7[52] = swift_task_alloc();
  v7[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC898, &qword_24B2EC188);
  v7[54] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0, &unk_24B2EC190);
  v7[55] = v10;
  v7[56] = *(v10 - 8);
  v7[57] = swift_task_alloc();
  v11 = sub_24B2D2504();
  v7[58] = v11;
  v7[59] = *(v11 - 8);
  v7[60] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8, &unk_24B2ED230);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B13AE94, a4, 0);
}

uint64_t sub_24B13AE94()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  *(v0 + 528) = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 257) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B13AF28, v2, 0);
}

uint64_t sub_24B13AF28()
{
  v1 = *(v0 + 336);
  v2 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  *(v0 + 536) = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 258) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B13AFBC, 0, 0);
}

uint64_t sub_24B13AFBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[68] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[69] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B13B094;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[41];
    v5 = sub_24B13B124;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B13B094()
{
  v1 = *(v0 + 258);
  v2 = *(v0 + 257);

  sub_24B13C208(v2 & v1 & 1);

  v3 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_24B13B124, v3, 0);
}

uint64_t sub_24B13B124(uint64_t a1)
{
  v3 = *(v1 + 472);
  v2 = *(v1 + 480);
  v5 = *(v1 + 456);
  v4 = *(v1 + 464);
  v6 = *(v1 + 448);
  v7 = *(v1 + 328);
  v12 = *(v1 + 336);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v1 + 260) = *MEMORY[0x277D85778];
  v9 = *(v6 + 104);
  *(v1 + 560) = v9;
  *(v1 + 568) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  sub_24B2D5744();

  v10 = *(v3 + 8);
  *(v1 + 576) = v10;
  *(v1 + 584) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);

  return MEMORY[0x2822009F8](sub_24B13B26C, v12, 0);
}

uint64_t sub_24B13B26C(uint64_t a1)
{
  v12 = *(v1 + 576);
  v2 = *(v1 + 560);
  v3 = *(v1 + 260);
  v4 = *(v1 + 480);
  v5 = *(v1 + 456);
  v6 = *(v1 + 440);
  v10 = *(v1 + 464);
  v11 = *(v1 + 352);
  v7 = *(v1 + 336);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B13B390, v11, 0);
}

uint64_t sub_24B13B390(uint64_t a1)
{
  v11 = *(v1 + 576);
  v2 = *(v1 + 560);
  v3 = *(v1 + 260);
  v4 = *(v1 + 480);
  v5 = *(v1 + 456);
  v10 = *(v1 + 464);
  v6 = *(v1 + 440);
  v7 = *(v1 + 352);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v11(v4, v10);

  return MEMORY[0x2822009F8](sub_24B13B4B0, 0, 0);
}

uint64_t sub_24B13B4B0()
{
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8, &unk_24B2ED230, MEMORY[0x277D857C0]);
  sub_24B2D3144();
  sub_24B039184(&qword_27EFCC8B8, &qword_27EFCC898, &qword_24B2EC188, MEMORY[0x277CEF700]);
  sub_24B2D57D4();
  v0[37] = &unk_285E48BA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0, &qword_24B2EC1A0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0, &qword_24B2EC1A0, MEMORY[0x277CEF6C8]);
  sub_24B039184(&qword_27EFCC8D0, &qword_27EFCC890, &qword_24B2EC180, MEMORY[0x277CEF6C0]);
  sub_24B2D3134();
  v1 = sub_24B2D30C4();
  v0[74] = v1;
  v0[38] = v1;
  v0[75] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[76] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
  *v2 = v0;
  v2[1] = sub_24B13B764;

  return MEMORY[0x282141C10](v0 + 30, v3);
}

uint64_t sub_24B13B764()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_24B13BC64;
  }

  else
  {
    v2 = sub_24B13B878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B13B894()
{
  v1 = *(v0 + 256);
  if (v1 == 255)
  {
    v11 = *(v0 + 520);
    v12 = *(v0 + 504);
    v13 = *(v0 + 512);
    v14 = *(v0 + 488);
    v15 = *(v0 + 496);
    v16 = *(v0 + 432);
    v17 = *(v0 + 416);
    v18 = *(v0 + 400);

    sub_24AFF8258(v18, &qword_27EFCC888, &qword_24B2EC178);
    sub_24AFF8258(v17, &qword_27EFCC890, &qword_24B2EC180);
    sub_24AFF8258(v16, &qword_27EFCC898, &qword_24B2EC188);
    v19 = *(v15 + 8);
    v19(v12, v14);
    v19(v13, v14);
    v19(v11, v14);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 376) + 16))(*(v0 + 384), Strong + qword_27EFCC938, *(v0 + 368));

      sub_24B138120(v3, v2);
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 320) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 264);
          v10 = (v0 + 272);
          *(v0 + 264) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 280);
          v10 = (v0 + 288);
          *(v0 + 280) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v25 = *v9;
        v26 = *v10;
        v28 = *(v0 + 376);
        v27 = *(v0 + 384);
        v29 = *(v0 + 368);
        v30 = sub_24AFF321C(v25, v26, (v0 + 320));

        *(v7 + 4) = v30;
        _os_log_impl(&dword_24AFD2000, v5, v6, "ItemsListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v28 + 8))(v27, v29);
      }

      else
      {
        v23 = *(v0 + 376);
        v22 = *(v0 + 384);
        v24 = *(v0 + 368);
        sub_24B138128(v3, v2, v1);

        (*(v23 + 8))(v22, v24);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v31 = *(v0 + 328);

    return MEMORY[0x2822009F8](sub_24B13BCF0, v31, 0);
  }
}

uint64_t sub_24B13BC64()
{
  *(v0 + 312) = *(v0 + 616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B13BCF0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328) + *(v0 + 528);
  *(v0 + 259) = *(v2 + 16);
  *(v0 + 624) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B13BD74, v1, 0);
}

uint64_t sub_24B13BD74()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336) + *(v0 + 536);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCC9D0, &unk_24B2EC398);

  return MEMORY[0x2822009F8](sub_24B13BE10, v1, 0);
}

uint64_t sub_24B13BE10()
{
  sub_24B008890(v0[44] + v0[75], v0[45], &qword_27EFCC880, &qword_24B2EC170);

  return MEMORY[0x2822009F8](sub_24B13BE90, 0, 0);
}

uint64_t sub_24B13BE90()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 360);
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v2;
  sub_24B138A50(sub_24B140974, v3, v1);
  *(v0 + 632) = v4;

  Strong = swift_weakLoadStrong();
  *(v0 + 640) = Strong;
  if (Strong)
  {
    *(v0 + 656) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 648) = sub_24B2D5684();
    v7 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B13C080, v7, v6);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCC9D0, &unk_24B2EC398);
    sub_24AFF8258(*(v0 + 360), &qword_27EFCC880, &qword_24B2EC170);
    v8 = swift_task_alloc();
    *(v0 + 608) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
    *v8 = v0;
    v8[1] = sub_24B13B764;

    return MEMORY[0x282141C10](v0 + 240, v9);
  }
}

uint64_t sub_24B13C080()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(v0 + 259);

  sub_24B13D594(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCC9D0, &unk_24B2EC398);

  return MEMORY[0x2822009F8](sub_24B13C13C, 0, 0);
}

uint64_t sub_24B13C13C()
{
  sub_24AFF8258(*(v0 + 360), &qword_27EFCC880, &qword_24B2EC170);
  v1 = swift_task_alloc();
  *(v0 + 608) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8D8, &qword_24B2EC1A8);
  *v1 = v0;
  v1[1] = sub_24B13B764;

  return MEMORY[0x282141C10](v0 + 240, v2);
}

uint64_t sub_24B13C208(char a1)
{
  v3 = v1 + *(*v1 + 160);
  swift_beginAccess();
  v4 = type metadata accessor for DataControllerSessionMetrics(0);
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {
    v6 = *(v4 + 36);
    if (*(v3 + v6) == 2)
    {
      *(v3 + v6) = a1 & 1;
    }
  }

  return result;
}

void sub_24B13C2C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a3;
  v151 = a2;
  v165 = a1;
  v156 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600, &unk_24B2EC120);
  MEMORY[0x28223BE20](v4 - 8);
  v149 = &v136 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v6 - 8);
  v150 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v153 = &v136 - v11;
  v137 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
  MEMORY[0x28223BE20](v137);
  v141 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ListItemInfo(0);
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v162 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v14 - 8);
  v142 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v152 = &v136 - v17;
  MEMORY[0x28223BE20](v18);
  v159 = &v136 - v19;
  v169 = sub_24B2D1DA4();
  v167 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v145 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v136 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D8, &qword_24B2EC3D0);
  MEMORY[0x28223BE20](v24 - 8);
  v144 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v140 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608, &qword_24B2EC150);
  MEMORY[0x28223BE20](v28 - 8);
  v147 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v146 = &v136 - v31;
  MEMORY[0x28223BE20](v32);
  v158 = &v136 - v33;
  MEMORY[0x28223BE20](v34);
  v166 = &v136 - v35;
  MEMORY[0x28223BE20](v36);
  v155 = &v136 - v37;
  v38 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v136 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCA08, &unk_24B2EC3B0);
  v48 = v47 - 8;
  MEMORY[0x28223BE20](v47);
  v50 = &v136 - v49;
  v51 = sub_24B2D1F24();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v154 = &v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v161 = &v136 - v55;
  sub_24B008890(v165, v50, &qword_27EFCCA08, &unk_24B2EC3B0);
  v56 = &v50[*(v48 + 56)];
  v57 = type metadata accessor for ItemsProvider.InfoState(0);
  sub_24B140A58(v56 + *(v57 + 20), v40, type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v52 + 32))(v43, v40, v51);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  (*(v52 + 56))(v43, v58, 1, v51);
  sub_24B0391CC(v43, v46, &qword_27EFCC870, &qword_24B2EC158);
  if ((*(v52 + 48))(v46, 1, v51) == 1)
  {
    sub_24AFF8258(v46, &qword_27EFCC870, &qword_24B2EC158);
    sub_24B1409F8(v56, type metadata accessor for ItemsProvider.InfoState);
    (*(v167 + 8))(v50, v169);
    v59 = 1;
    v61 = v156;
    v60 = v157;
    v62 = v160;
LABEL_35:
    (*(v60 + 56))(v61, v59, 1, v62);
    return;
  }

  v138 = v52;
  v63 = *(v52 + 32);
  v139 = v51;
  v63(v161, v46, v51);
  sub_24B1409F8(v56, type metadata accessor for ItemsProvider.InfoState);
  v64 = v167;
  v164 = *(v167 + 8);
  v165 = v167 + 8;
  v164(v50, v169);
  v65 = sub_24B2D1DB4();
  v66 = v65;
  v67 = *(v65 + 16);
  if (v67)
  {
    v68 = sub_24B00758C(*(v65 + 16), 0);
    sub_24B0363C4(&v168, &v68[(*(v64 + 80) + 32) & ~*(v64 + 80)], v67, v66);
    v70 = v69;
    v71 = v168;

    sub_24B0363BC(v71);
    if (v70 == v67)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v68 = MEMORY[0x277D84F90];
LABEL_10:
  v168 = v68;
  v72 = v163;
  sub_24B13EFD0(&v168);
  v163 = v72;
  if (!v72)
  {

    v73 = v168;
    v74 = v168[2];
    if (v74)
    {
      v75 = 0;
      v76 = *(v151 + 24);
      v77 = v168 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      while (v75 < *(v73 + 16))
      {
        (*(v167 + 16))(v23, &v77[*(v167 + 72) * v75], v169);
        if (*(v76 + 16))
        {
          v82 = sub_24B181698(v23);
          if (v83)
          {
            v84 = v82;

            v85 = *(v76 + 56);
            v86 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
            v87 = *(v86 - 8);
            v88 = v85 + *(v87 + 72) * v84;
            v89 = v166;
            sub_24B140A58(v88, v166, type metadata accessor for ItemsLocationsProvider.LocationState);
            (*(v87 + 56))(v89, 0, 1, v86);
            sub_24AFF8258(v89, &qword_27EFCC608, &qword_24B2EC150);
            v90 = v167;
            v91 = v140;
            v92 = v169;
            (*(v167 + 32))(v140, v23, v169);
            v93 = 0;
            goto LABEL_19;
          }
        }

        ++v75;
        v78 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
        v79 = v23;
        v80 = v166;
        (*(*(v78 - 8) + 56))(v166, 1, 1, v78);
        v164(v79, v169);
        v81 = v80;
        v23 = v79;
        sub_24AFF8258(v81, &qword_27EFCC608, &qword_24B2EC150);
        if (v74 == v75)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_18:

    v93 = 1;
    v92 = v169;
    v91 = v140;
    v90 = v167;
LABEL_19:
    (*(v90 + 56))(v91, v93, 1, v92);
    v94 = v144;
    sub_24B008890(v91, v144, &qword_27EFC85D8, &qword_24B2EC3D0);
    v95 = (*(v90 + 48))(v94, 1, v92);
    v96 = v155;
    v97 = v145;
    if (v95 != 1)
    {
      (*(v90 + 32))(v145, v94, v92);
      v98 = *(v151 + 24);
      if (*(v98 + 16))
      {
        v99 = sub_24B181698(v97);
        if (v100)
        {
          v101 = v99;
          v102 = *(v98 + 56);
          v103 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
          v104 = *(v103 - 8);
          sub_24B140A58(v102 + *(v104 + 72) * v101, v96, type metadata accessor for ItemsLocationsProvider.LocationState);
          v164(v97, v92);
          sub_24AFF8258(v91, &qword_27EFC85D8, &qword_24B2EC3D0);
          (*(v104 + 56))(v96, 0, 1, v103);
LABEL_25:
          v105 = *(v138 + 16);
          v106 = v154;
          v107 = v139;
          v105(v154, v161, v139);
          v108 = v96;
          v109 = v158;
          sub_24B008890(v108, v158, &qword_27EFCC608, &qword_24B2EC150);
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
          sub_24B008890(v148 + *(v110 + 48), v159, &qword_27EFCE590, &unk_24B2EC160);
          v105(v162, v106, v107);
          v111 = v146;
          sub_24B008890(v109, v146, &qword_27EFCC608, &qword_24B2EC150);
          type metadata accessor for ItemsLocationsProvider.LocationState(0);
          v112 = *(*(v103 - 8) + 48);
          if (v112(v111, 1, v103) == 1)
          {
            sub_24AFF8258(v111, &qword_27EFCC608, &qword_24B2EC150);
            v113 = 0;
          }

          else
          {
            v114 = v141;
            sub_24B140A58(v111 + *(v103 + 20), v141, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
            sub_24B1409F8(v111, type metadata accessor for ItemsLocationsProvider.LocationState);
            v113 = *v114;
            sub_24B1409F8(v114, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
          }

          v61 = v156;
          v115 = v143;
          v116 = v160;
          v162[*(v160 + 20)] = v113;
          v117 = v147;
          sub_24B008890(v158, v147, &qword_27EFCC608, &qword_24B2EC150);
          v118 = v112(v117, 1, v103);
          v119 = v155;
          if (v118 == 1)
          {
            sub_24AFF8258(v117, &qword_27EFCC608, &qword_24B2EC150);
            v120 = sub_24B2D1944();
            v121 = v153;
            (*(*(v120 - 8) + 56))(v153, 1, 1, v120);
          }

          else
          {
            v122 = v117 + *(v103 + 20);
            v123 = v141;
            sub_24B140A58(v122, v141, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
            sub_24B1409F8(v117, type metadata accessor for ItemsLocationsProvider.LocationState);
            v121 = v153;
            sub_24B0391CC(v123 + *(v137 + 20), v153, &qword_27EFCB288, &unk_24B2EBD20);
          }

          v124 = v152;
          sub_24B008890(v121, &v162[*(v116 + 24)], &qword_27EFCB288, &unk_24B2EBD20);
          sub_24B008890(v159, v124, &qword_27EFCE590, &unk_24B2EC160);
          sub_24B008890(v121, v115, &qword_27EFCB288, &unk_24B2EBD20);
          v125 = sub_24B2D1944();
          v126 = *(v125 - 8);
          if ((*(v126 + 48))(v115, 1, v125) == 1)
          {
            sub_24AFF8258(v115, &qword_27EFCB288, &unk_24B2EBD20);
            v127 = 1;
            v128 = v142;
          }

          else
          {
            v129 = v142;
            sub_24B2D18B4();
            v128 = v129;
            (*(v126 + 8))(v115, v125);
            v127 = 0;
          }

          v130 = sub_24B2D1C44();
          (*(*(v130 - 8) + 56))(v128, v127, 1, v130);
          v131 = sub_24B2D17E4();
          (*(*(v131 - 8) + 56))(v149, 1, 1, v131);
          v132 = v150;
          sub_24B2D17F4();
          sub_24AFF8258(v153, &qword_27EFCB288, &unk_24B2EBD20);
          sub_24AFF8258(v159, &qword_27EFCE590, &unk_24B2EC160);
          sub_24AFF8258(v158, &qword_27EFCC608, &qword_24B2EC150);
          v133 = *(v138 + 8);
          v134 = v139;
          v133(v154, v139);
          sub_24AFF8258(v119, &qword_27EFCC608, &qword_24B2EC150);
          v133(v161, v134);
          v62 = v160;
          v135 = v162;
          sub_24B0391CC(v132, &v162[*(v160 + 28)], &qword_27EFCB278, &unk_24B2EC3C0);
          sub_24B140990(v135, v61, type metadata accessor for ListItemInfo);
          v59 = 0;
          v60 = v157;
          goto LABEL_35;
        }
      }

      v164(v97, v92);
    }

    sub_24AFF8258(v91, &qword_27EFC85D8, &qword_24B2EC3D0);
    v103 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
    (*(*(v103 - 8) + 56))(v96, 1, 1, v103);
    goto LABEL_25;
  }

LABEL_37:

  __break(1u);
}

void sub_24B13D594(char *a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v92) = a3;
  LODWORD(v90) = a2;
  v89 = a1;
  v88 = *v3;
  v5 = v88;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v82 - v7;
  v9 = type metadata accessor for ListItemInfo(0);
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v82 - v18;
  v19 = *(v5 + 80);
  v20 = *(v5 + 88);
  v22 = type metadata accessor for ItemsListController.State(0, v19, v20, v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v85 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - v28;
  v98 = v19;
  v99 = v20;
  KeyPath = swift_getKeyPath();
  sub_24B139084(KeyPath, v31, v32);

  v100 = v3;
  v87 = v19;
  v96 = v19;
  v97 = v20;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();
  v33 = v92;

  swift_beginAccess();
  LOBYTE(v19) = v90;
  sub_24B140F68(v89, v90, v33, v22);
  swift_endAccess();
  sub_24B139480(v3);
  if (v19)
  {
    v90 = v24;
    ItemsListController.state.getter(v29);
    v34 = sub_24B140AC0(&qword_27EFCC9D8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
    v35 = sub_24B140AC0(&qword_27EFCC9E0, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
    v36 = sub_24B140AC0(&qword_27EFCC9E8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
    v37 = sub_24B140AC0(&qword_27EFCC9F0, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
    v38 = sub_24B140AC0(&qword_27EFCC9F8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
    v100 = v95;
    v101 = v87;
    v102 = v34;
    v103 = v35;
    v104 = v36;
    v105 = v37;
    v106 = v38;
    v107 = v20;
    v89 = v20;
    v39 = sub_24B2D19E4();
    v40 = sub_24B2D19A4();
    v41 = *(*(v39 - 8) + 8);
    v41(v29, v39);
    sub_24B13E204(v40);

    v42 = v4 + *(*v4 + 160);
    swift_beginAccess();
    v43 = type metadata accessor for DataControllerSessionMetrics(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      v44 = v85;
      ItemsListController.state.getter(v85);
      v45 = sub_24B2D19A4();
      v41(v44, v39);
      v88 = *(v45 + 16);

      v46 = *(v43 + 40);
      v47 = v86;
      sub_24B008890(&v42[v46], v86, &qword_27EFC8450, &qword_24B2DE7A0);
      v48 = sub_24B2D24A4();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 48))(v47, 1, v48);
      sub_24AFF8258(v47, &qword_27EFC8450, &qword_24B2DE7A0);
      if (v50 == 1)
      {
        v51 = v84;
        sub_24B2D2494();
        (*(v49 + 56))(v51, 0, 1, v48);
        sub_24B068E10(v51, &v42[v46], &qword_27EFC8450, &qword_24B2DE7A0);
        v52 = &v42[*(v43 + 44)];
        *v52 = v88;
        v52[8] = 0;
      }
    }

    swift_endAccess();
    v24 = v90;
    v20 = v89;
    LOBYTE(v33) = v92;
  }

  if ((v33 & 1) == 0)
  {
    return;
  }

  v53 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v54 = type metadata accessor for DataControllerSessionMetrics(0);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54))
  {
LABEL_22:
    swift_endAccess();
    return;
  }

  v88 = v54;
  v89 = v53;
  ItemsListController.state.getter(v24);
  v55 = sub_24B140AC0(&qword_27EFCC9D8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
  v56 = sub_24B140AC0(&qword_27EFCC9E0, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
  v57 = sub_24B140AC0(&qword_27EFCC9E8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
  v58 = sub_24B140AC0(&qword_27EFCC9F0, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
  v59 = sub_24B140AC0(&qword_27EFCC9F8, type metadata accessor for ListItemInfo, &protocol conformance descriptor for ListItemInfo);
  v100 = v95;
  v101 = v87;
  v102 = v55;
  v103 = v56;
  v104 = v57;
  v105 = v58;
  v106 = v59;
  v107 = v20;
  v60 = sub_24B2D19E4();
  v61 = sub_24B2D19A4();
  (*(*(v60 - 8) + 8))(v24, v60);
  v92 = *(v61 + 16);
  if (!v92)
  {
    v63 = MEMORY[0x277D84F90];
LABEL_20:

    v72 = v63[2];

    v73 = v88;
    v74 = *(v88 + 48);
    v75 = v89;
    v76 = v83;
    sub_24B008890(&v89[v74], v83, &qword_27EFC8450, &qword_24B2DE7A0);
    v77 = sub_24B2D24A4();
    v78 = *(v77 - 8);
    v79 = (*(v78 + 48))(v76, 1, v77);
    sub_24AFF8258(v76, &qword_27EFC8450, &qword_24B2DE7A0);
    if (v79 == 1)
    {
      v80 = v84;
      sub_24B2D2494();
      (*(v78 + 56))(v80, 0, 1, v77);
      sub_24B068E10(v80, &v75[v74], &qword_27EFC8450, &qword_24B2DE7A0);
      v81 = &v75[*(v73 + 52)];
      *v81 = v72;
      v81[8] = 0;
    }

    goto LABEL_22;
  }

  v62 = 0;
  v63 = MEMORY[0x277D84F90];
  v90 = v8;
  v64 = v91;
  while (v62 < *(v61 + 16))
  {
    v65 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v66 = *(v94 + 72);
    sub_24B140A58(v61 + v65 + v66 * v62, v64, type metadata accessor for ListItemInfo);
    sub_24B008890(v64 + *(v95 + 24), v8, &qword_27EFCB288, &unk_24B2EBD20);
    v67 = sub_24B2D1944();
    v68 = (*(*(v67 - 8) + 48))(v8, 1, v67);
    sub_24AFF8258(v8, &qword_27EFCB288, &unk_24B2EBD20);
    if (v68 == 1)
    {
      sub_24B1409F8(v64, type metadata accessor for ListItemInfo);
    }

    else
    {
      sub_24B140990(v64, v93, type metadata accessor for ListItemInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007998(0, v63[2] + 1, 1);
        v63 = v100;
      }

      v71 = v63[2];
      v70 = v63[3];
      if (v71 >= v70 >> 1)
      {
        sub_24B007998((v70 > 1), v71 + 1, 1);
        v63 = v100;
      }

      v63[2] = v71 + 1;
      sub_24B140990(v93, v63 + v65 + v71 * v66, type metadata accessor for ListItemInfo);
      v8 = v90;
      v64 = v91;
    }

    if (v92 == ++v62)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_24B13E174()
{
  *(v0 + *(*v0 + 136)) = 0;
  if (*(v0 + *(*v0 + 144)))
  {

    sub_24B2D5764();
  }

  return sub_24B13A6F0();
}

double sub_24B13E204(uint64_t a1)
{
  v73 = sub_24B2D1DA4();
  v61 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_24B2D1F24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v64 = &v60 - v15;
  v16 = type metadata accessor for ListItemInfo(0) - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v67 = v9;
  if (v20)
  {
    v22 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = *(v17 + 72);
    v69 = (v9 + 16);
    v70 = v23;
    v68 = (v9 + 56);
    v24 = (v9 + 48);
    v25 = (v9 + 32);
    v63 = v11;
    do
    {
      sub_24B140A58(v22, v19, type metadata accessor for ListItemInfo);
      (*v69)(v7, v19, v8);
      (*v68)(v7, 0, 1, v8);
      sub_24B1409F8(v19, type metadata accessor for ListItemInfo);
      if ((*v24)(v7, 1, v8) == 1)
      {
        sub_24AFF8258(v7, &qword_27EFCC870, &qword_24B2EC158);
      }

      else
      {
        v26 = *v25;
        v27 = v64;
        (*v25)(v64, v7, v8);
        v26(v71, v27, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_24B006CA4(0, v21[2] + 1, 1, v21);
        }

        v29 = v21[2];
        v28 = v21[3];
        v30 = v21;
        if (v29 >= v28 >> 1)
        {
          v30 = sub_24B006CA4((v28 > 1), v29 + 1, 1, v21);
        }

        v30[2] = v29 + 1;
        v21 = v30;
        v26(v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v29, v71, v8);
        v11 = v63;
      }

      v22 += v70;
      --v20;
    }

    while (v20);
  }

  v31 = v62;
  v32 = v62 + *(*v62 + 152);
  swift_beginAccess();
  v33 = *v32;
  if (*v32)
  {
    v34 = *(v32 + 1);

    v33(v21);
    sub_24AFD5890(v33, v34);
  }

  if (*(v31 + *(*v31 + 136)) == 1)
  {
    v74 = MEMORY[0x277D84F90];
    v35 = v21;
    v36 = v21[2];
    if (v36)
    {
      v37 = *(v67 + 16);
      v38 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v71 = v35;
      v39 = &v35[v38];
      v40 = v11;
      v41 = *(v67 + 72);
      v42 = (v67 + 8);
      do
      {
        v37(v40, v39, v8);
        v43 = sub_24B2D1DB4();
        (*v42)(v40, v8);
        sub_24B03253C(v43);
        v39 += v41;
        --v36;
      }

      while (v36);

      v31 = v62;
    }

    else
    {
    }

    v45 = v74;
    v46 = *(v74 + 16);
    if (v46)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24B007954(0, v46, 0);
      sub_24B2D5694();
      v47 = v74;
      v48 = *(v61 + 16);
      v49 = *(v61 + 80);
      v69 = v45;
      v50 = v45 + ((v49 + 32) & ~v49);
      v70 = *(v61 + 72);
      v71 = v48;
      v51 = (v61 + 32);
      v52 = v65;
      do
      {
        (v71)(v72, v50, v73);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        (*v51)(v52, v72, v73);

        v74 = v47;
        v54 = *(v47 + 16);
        v53 = *(v47 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_24B007954((v53 > 1), v54 + 1, 1);
          v47 = v74;
        }

        *(v47 + 16) = v54 + 1;
        sub_24B140990(v52, v47 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v54, type metadata accessor for ItemsLocationsProvider.Subscription);
        v50 += v70;
        --v46;
      }

      while (v46);

      v31 = v62;
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    v55 = v31[5];
    v56 = sub_24B1D0B08(v47);

    v58 = v31[2];
    v57 = v31[3];
    v59 = swift_allocObject();
    v59[2] = v55;
    v59[3] = v56;
    v59[4] = v58;
    v59[5] = v57;

    sub_24B2D12C4();
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall ItemsListController.onAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for ItemsProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v24);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemsListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B13A184();
  v10 = v1[4];
  v11 = sub_24B2D1DA4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80F8, &qword_24B2DFD58);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B140A58(v5, v15 + v14, type metadata accessor for ItemsProvider.Subscription);
  v16 = sub_24B134B58(v15);
  swift_setDeallocating();
  sub_24B1409F8(v15 + v14, type metadata accessor for ItemsProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B1409F8(v5, type metadata accessor for ItemsProvider.Subscription);
  v18 = v1[6];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E48BE0);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();
}

Swift::Void __swiftcall ItemsListController.onDisappear()()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v18);
    _os_log_impl(&dword_24AFD2000, v2, v3, "ItemsListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  sub_24B13E174();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();
}

void sub_24B13EFD0(uint64_t *a1)
{
  v2 = *(sub_24B2D1DA4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24B215400(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24B13F078(v5);
  *a1 = v3;
}

void sub_24B13F078(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24B2D5F34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24B2D1DA4();
        v6 = sub_24B2D5594();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_24B2D1DA4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24B13F468(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24B13F1A4(0, v2, 1, a1);
  }
}

void sub_24B13F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_24B2D1DA4();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_24B140AC0(qword_27EFCCA10, MEMORY[0x277D08E20], MEMORY[0x277D08E30]);
      v26 = sub_24B2D5284();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24B13F468(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_24B2152D8(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_24B13FE90(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24B2152D8(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_24B21524C(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_24B140AC0(qword_27EFCCA10, MEMORY[0x277D08E20], MEMORY[0x277D08E30]);
      LODWORD(v133) = sub_24B2D5284();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_24B2D5284() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_24B0069D4(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_24B0069D4((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_24B13FE90(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24B2152D8(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_24B21524C(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_24B140AC0(qword_27EFCCA10, MEMORY[0x277D08E20], MEMORY[0x277D08E30]);
    v109 = sub_24B2D5284();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}