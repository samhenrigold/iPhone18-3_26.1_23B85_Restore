uint64_t sub_2758AFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C8, &qword_2759CC590);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6D0, &qword_2759C4310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - v7;
  v8 = sub_2759B85C8();
  MEMORY[0x28223BE20](v8 - 8);
  v37 = sub_2759B8458();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2759BA248();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2759B8468();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = (a1 + *(type metadata accessor for ADPSection(0) + 20));
  v22 = *v20;
  v21 = v20[1];
  v43 = v22;
  v44 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v23 = v47;
  swift_getKeyPath();
  v43 = v23;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v11 = type metadata accessor for iCloudHomeViewModel(0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9120], v37);
  sub_2759B85B8();
  sub_2759B8478();
  v24 = sub_2759B99B8();
  v26 = v25;
  v43 = v24;
  v44 = v25;
  LOBYTE(v9) = v27 & 1;
  v45 = v27 & 1;
  v46 = v28;
  sub_2759B9B38();
  sub_27589F328(v24, v26, v9);

  v29 = v39;
  sub_2759B8E88();
  sub_2759B8598();
  sub_27589B02C(&qword_280A0F6D8, &qword_280A0F6C8, &qword_2759CC590, MEMORY[0x277CE1148]);
  v30 = v38;
  sub_2759B9B38();
  sub_27586BF04(v29, &qword_280A0F6C8, &qword_2759CC590);
  sub_27586FBC8(v19, v17, &qword_280A0F600, &qword_2759C4210);
  v31 = v30;
  v32 = v41;
  sub_27586FBC8(v30, v41, &qword_280A0F6D0, &qword_2759C4310);
  v33 = v42;
  sub_27586FBC8(v17, v42, &qword_280A0F600, &qword_2759C4210);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E0, &unk_2759C4318);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_27586FBC8(v32, v33 + *(v34 + 64), &qword_280A0F6D0, &qword_2759C4310);
  sub_27586BF04(v31, &qword_280A0F6D0, &qword_2759C4310);
  sub_27586BF04(v19, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v32, &qword_280A0F6D0, &qword_2759C4310);
  return sub_27586BF04(v17, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758B0404(char *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = *a2;
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_2759BA4C8();
  v10 = v8;
  v11 = sub_2759BA4B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v10;
  *(v12 + 40) = v7;
  sub_27587D460(0, 0, v6, &unk_2759C4328, v12);
}

double sub_2758B0538(uint64_t a1)
{
  v2 = sub_2759B85C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2759B8458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2759BA248();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2759B8468();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = (a1 + *(type metadata accessor for ADPSection(0) + 20));
  v11 = *v9;
  v10 = v9[1];
  v20 = v11;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v12 = v24;
  swift_getKeyPath();
  v20 = v12;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v6 = type metadata accessor for iCloudHomeViewModel(0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9120], v3);
  sub_2759B85B8();
  sub_2759B8478();
  v13 = sub_2759B99B8();
  v15 = v14;
  v20 = v13;
  v21 = v14;
  v17 = v16 & 1;
  v22 = v16 & 1;
  v23 = v18;
  sub_2759B9B38();
  sub_27589F328(v13, v15, v17);

  return result;
}

double sub_2758B0878(uint64_t a1, __n128 a2)
{
  v3 = sub_2759B83B8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ADPSection(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v30 = v8;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v9 = v34;
  swift_getKeyPath();
  v30 = v9;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v10 = *&v9[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DCF68(v5);
  v11 = sub_2759B99A8();
  v13 = v12;
  v15 = v14;
  sub_2759B98E8();
  v16 = sub_2759B9988();
  v18 = v17;
  v20 = v19;

  sub_27589F328(v11, v13, v15 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v30 = qword_280A239C0;

  v21 = sub_2759B9958();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_27589F328(v16, v18, v20 & 1);

  v30 = v21;
  v31 = v23;
  v32 = v25 & 1;
  v33 = v27;
  sub_2759B9B38();
  sub_27589F328(v21, v23, v25 & 1);

  return result;
}

uint64_t sub_2758B0B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_2759B85C8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2759B8458();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2759BA248();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2759B8468();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v68 = v65 - v16;
  MEMORY[0x28223BE20](v15);
  v72 = v65 - v17;
  v18 = (a1 + *(type metadata accessor for ADPSection(0) + 20));
  v19 = *v18;
  v66 = v18[1];
  v67 = v19;
  v73 = v19;
  v74 = v66;
  v65[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v77;
  swift_getKeyPath();
  v73 = v20;
  v65[0] = sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v7 = type metadata accessor for iCloudHomeViewModel(0);
  (*(v5 + 104))(v7, *MEMORY[0x277CC9120], v4);
  sub_2759B85B8();
  sub_2759B8478();
  v21 = sub_2759B99B8();
  v23 = v22;
  LOBYTE(v5) = v24;
  sub_2759B9858();
  v25 = sub_2759B9988();
  v27 = v26;
  v29 = v28;

  sub_27589F328(v21, v23, v5 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v73 = qword_280A239B8;

  v30 = sub_2759B9958();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_27589F328(v25, v27, v29 & 1);

  v73 = v30;
  v74 = v32;
  v75 = v34 & 1;
  v76 = v36;
  sub_2759B9B38();
  sub_27589F328(v30, v32, v34 & 1);

  v73 = v67;
  v74 = v66;
  sub_2759B9D68();
  v37 = v77;
  swift_getKeyPath();
  v73 = v37;
  sub_2759B8638();

  v38 = *&v37[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DDADC();
  v39 = sub_2759B99B8();
  v41 = v40;
  v43 = v42;
  sub_2759B9858();
  v44 = sub_2759B9988();
  v46 = v45;
  v48 = v47;

  sub_27589F328(v39, v41, v43 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v73 = qword_280A239C0;

  v49 = sub_2759B9958();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_27589F328(v44, v46, v48 & 1);

  v73 = v49;
  v74 = v51;
  v56 = v53 & 1;
  v75 = v53 & 1;
  v76 = v55;
  v57 = v68;
  sub_2759B9B38();
  sub_27589F328(v49, v51, v56);

  v58 = v72;
  v59 = v69;
  sub_27586FBC8(v72, v69, &qword_280A0F600, &qword_2759C4210);
  v60 = v70;
  sub_27586FBC8(v57, v70, &qword_280A0F600, &qword_2759C4210);
  v61 = v71;
  sub_27586FBC8(v59, v71, &qword_280A0F600, &qword_2759C4210);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F758, &qword_2759C43B0);
  v63 = v61 + *(v62 + 48);
  *v63 = 0x4020000000000000;
  *(v63 + 8) = 0;
  sub_27586FBC8(v60, v61 + *(v62 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v57, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v58, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v60, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v59, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758B12E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_2759B85C8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2759B8458();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2759BA248();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2759B8468();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v69 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v67 = v64 - v16;
  MEMORY[0x28223BE20](v15);
  v71 = v64 - v17;
  v18 = (a1 + *(type metadata accessor for ADPSection(0) + 20));
  v19 = *v18;
  v65 = v18[1];
  v66 = v19;
  v72 = v19;
  v73 = v65;
  v64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v76;
  swift_getKeyPath();
  v72 = v20;
  v64[0] = sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v7 = type metadata accessor for iCloudHomeViewModel(0);
  (*(v5 + 104))(v7, *MEMORY[0x277CC9120], v4);
  sub_2759B85B8();
  sub_2759B8478();
  v21 = sub_2759B99B8();
  v23 = v22;
  LOBYTE(v5) = v24;
  sub_2759B9858();
  v25 = sub_2759B9988();
  v27 = v26;
  v29 = v28;

  sub_27589F328(v21, v23, v5 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v72 = qword_280A239B8;

  v30 = sub_2759B9958();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_27589F328(v25, v27, v29 & 1);

  v72 = v30;
  v73 = v32;
  v74 = v34 & 1;
  v75 = v36;
  sub_2759B9B38();
  sub_27589F328(v30, v32, v34 & 1);

  v72 = v66;
  v73 = v65;
  sub_2759B9D68();
  v37 = v76;
  swift_getKeyPath();
  v72 = v37;
  sub_2759B8638();

  v38 = *&v37[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DDADC();
  v39 = sub_2759B99B8();
  v41 = v40;
  v43 = v42;
  sub_2759B9858();
  v44 = sub_2759B9988();
  v46 = v45;
  v48 = v47;

  sub_27589F328(v39, v41, v43 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v72 = qword_280A239C0;

  v49 = sub_2759B9958();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_27589F328(v44, v46, v48 & 1);

  v72 = v49;
  v73 = v51;
  v56 = v53 & 1;
  v74 = v53 & 1;
  v75 = v55;
  v57 = v67;
  sub_2759B9B38();
  sub_27589F328(v49, v51, v56);

  v58 = v71;
  v59 = v68;
  sub_27586FBC8(v71, v68, &qword_280A0F600, &qword_2759C4210);
  v60 = v69;
  sub_27586FBC8(v57, v69, &qword_280A0F600, &qword_2759C4210);
  v61 = v70;
  sub_27586FBC8(v59, v70, &qword_280A0F600, &qword_2759C4210);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F750, &qword_2759C43A8);
  sub_27586FBC8(v60, v61 + *(v62 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v57, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v58, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v60, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v59, &qword_280A0F600, &qword_2759C4210);
}

unint64_t sub_2758B1A88()
{
  result = qword_280A0F620;
  if (!qword_280A0F620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F618, &qword_2759C4228);
    sub_27589B02C(&qword_280A0F628, &qword_280A0F630, &unk_2759C4230, MEMORY[0x277CDF028]);
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F620);
  }

  return result;
}

unint64_t sub_2758B1B74()
{
  result = qword_280A0F650;
  if (!qword_280A0F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F648, &qword_2759C4240);
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248, MEMORY[0x277CE1138]);
    sub_2758B1C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F650);
  }

  return result;
}

unint64_t sub_2758B1C2C()
{
  result = qword_280A0F668;
  if (!qword_280A0F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F670, &qword_2759C4250);
    sub_27589B02C(&qword_280A0F678, &qword_280A0F680, &qword_2759C4258, MEMORY[0x277CDF068]);
    sub_2758B1EFC(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F668);
  }

  return result;
}

unint64_t sub_2758B1D14()
{
  result = qword_280A0F690;
  if (!qword_280A0F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F600, &qword_2759C4210);
    sub_2758B1EFC(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F690);
  }

  return result;
}

uint64_t sub_2758B1DE4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_2758B1EFC(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_2758B1EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758B1F4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DF664(a1, v4, v5, v6, v7);
}

uint64_t sub_2758B2010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADPSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B2074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADPSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B20D8()
{
  v1 = *(type metadata accessor for ADPSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2758AF1D8(v2);
}

unint64_t sub_2758B2140()
{
  result = qword_280A0F6F8;
  if (!qword_280A0F6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F6F0, &qword_2759C4360);
    v1 = MEMORY[0x277CE1138];
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368, MEMORY[0x277CE1138]);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F6F8);
  }

  return result;
}

BOOL sub_2758B2220(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_2759B94D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

id sub_2758B2638()
{
  result = [objc_allocWithZone(type metadata accessor for iCloudHomeDataModelCache()) init];
  qword_2815ADE88 = result;
  return result;
}

void *sub_2758B26E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  v7 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_dataModelCache;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_27586F8A0(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(*(v3 + v6));
  return v11;
}

id sub_2758B27A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudHomeDataModelCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2758B280C()
{
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel, &unk_2759C4478);
  sub_2759B8638();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_2758B28B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel, &unk_2759C4478);
  sub_2759B8638();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_2758B296C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel, &unk_2759C4478);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0F7B0, 0x277D1B1A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void sub_2758B2AFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_2758B318C();
  if (v15)
  {
  }

  else
  {
    sub_2758B2EF4(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v16 = sub_2759B89A8();
      __swift_project_value_buffer(v16, qword_2815ADE70);
      v17 = sub_2759B8988();
      v18 = sub_2759BA648();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_275819000, v17, v18, "No icon url found. Bailing.", v19, 2u);
        MEMORY[0x277C85860](v19, -1, -1);
      }
    }

    else
    {
      v26 = *(v9 + 32);
      v26(v14, v7, v8);
      v20 = sub_2759BA518();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      (*(v9 + 16))(v12, v14, v8);
      sub_2759BA4C8();

      v25 = sub_2759BA4B8();
      v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      *(v23 + 16) = v25;
      *(v23 + 24) = v24;
      v26((v23 + v21), v12, v8);
      *(v23 + v22) = v1;
      sub_27587D460(0, 0, v4, &unk_2759C4548, v23);

      (*(v9 + 8))(v14, v8);
    }
  }
}

uint64_t sub_2758B2EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_icons);
  if (!v9)
  {
    v12 = sub_2759B8508();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
LABEL_7:
    sub_27586BF04(v8, &unk_280A0EB10, &qword_2759C0740);
    sub_2759B8508();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v10 = [v9 iconURL];
  if (v10)
  {
    v11 = v10;
    sub_2759B84C8();

    v12 = sub_2759B8508();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = sub_2759B8508();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_2758B4BD0(v6, v8);
  sub_2759B8508();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  (*(v13 + 32))(a1, v8, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

id sub_2758B318C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  iCloudPlusFeature.init(rawValue:)(v4);
  if (v9 > 3u && (v9 - 6 < 2 || v9 == 4 && (sub_2759B9F98() & 1) == 0))
  {
    return 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_2759BA258();
  v7 = [v5 initWithType_];

  return v7;
}

uint64_t sub_2758B32F0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1[3] = swift_task_alloc();
  sub_2759BA4C8();
  v1[4] = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758B33C0, v3, v2);
}

uint64_t sub_2758B33C0()
{
  v37 = v0;
  v1 = v0[2];

  v2 = *(v1 + 16);
  v3 = *&v2[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
  if (v3)
  {
    v4 = qword_2815ADD30;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v7 = v5;
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      *(v10 + 4) = v7;
      *v11 = v3;
      v12 = v7;
      _os_log_impl(&dword_275819000, v8, v9, "Will perform iCloud feature action: %{public}@", v10, 0xCu);
      sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v35 = 10;
    v15 = &v2[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
    if (v15[1])
    {
      v16 = *v15;
      v17 = v15[1];
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    v24 = v0[3];

    v25._countAndFlagsBits = v16;
    v25._object = v17;
    iCloudPlusFeature.init(rawValue:)(v25);
    sub_27590A460(v7, 1, &v35, &v36, 0);
    v26 = *(v14 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
    v28 = *v15;
    v27 = v15[1];
    swift_bridgeObjectRetain_n();
    v29 = v26;
    sub_2759BA4D8();
    v30 = sub_2759BA518();
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v31;
    *(v32 + 40) = xmmword_2759C43F0;
    strcpy((v32 + 56), "\n\n");
    *(v32 + 64) = 1;
    *(v32 + 72) = 0;
    *(v32 + 80) = v28;
    *(v32 + 88) = v27;
    *(v32 + 96) = 6;

    sub_275931D20(0, 0, v24, &unk_2759C4530, v32);

    swift_bridgeObjectRelease_n();
    sub_27586BF04(v24, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);

    v19 = sub_2759B8988();
    v20 = sub_2759BA648();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v2;
      *v22 = v2;
      v23 = v2;
      _os_log_impl(&dword_275819000, v19, v20, "No action found for feature: %@", v21, 0xCu);
      sub_27586BF04(v22, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_2758B3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5[4] = swift_task_alloc();
  v6 = sub_2759B8508();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = sub_2759BA4C8();
  v5[11] = sub_2759BA4B8();
  v8 = sub_2759BA468();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_2758B398C, v8, v7);
}

uint64_t sub_2758B398C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[14] = __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Downloading icons.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v0[15] = [objc_opt_self() sharedSession];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2758B3B14;
  v6 = v0[9];
  v7 = v0[2];

  return MEMORY[0x28211ED30](v6, v7, 0);
}

uint64_t sub_2758B3B14(void *a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_2758B3FB0;
  }

  else
  {
    v8 = v4[15];

    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_2758B3C40;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2758B3C40()
{
  v35 = v0;

  v1 = sub_2759B84B8();
  v2 = CGImageSourceCreateWithURL(v1, 0);
  if (v2)
  {
    v3 = v2;
    if (CGImageSourceGetCount(v2) >= 1)
    {
      v32 = v0[9];
      v5 = v0[5];
      v4 = v0[6];
      v7 = v0[3];
      v6 = v0[4];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
      v9 = sub_2759BA518();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);

      v10 = ImageAtIndex;
      v11 = sub_2759BA4B8();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      v12[2] = v11;
      v12[3] = v13;
      v12[4] = v7;
      v12[5] = ImageAtIndex;
      sub_27587D460(0, 0, v6, &unk_2759C4558, v12);

      (*(v4 + 8))(v32, v5);
      goto LABEL_8;
    }
  }

  (*(v0[6] + 16))(v0[8], v0[2], v0[5]);
  v14 = sub_2759B8988();
  v15 = sub_2759BA648();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[5];
  v19 = v0[6];
  if (v16)
  {
    v33 = v0[9];
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v21 = 136315138;
    sub_2758B4C40(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_2759BAA98();
    v30 = v1;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_2758937B8(v22, v24, &v34);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_275819000, v14, v15, "Failed to create cgImage for url: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x277C85860](v31, -1, -1);
    MEMORY[0x277C85860](v21, -1, -1);

    v25(v33, v20);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v17, v20);
    v27(v18, v20);
  }

LABEL_8:

  v28 = v0[1];

  return v28();
}

uint64_t sub_2758B3FB0()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];

  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315394;
    sub_2758B4C40(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_2759BAA98();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_2758937B8(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_275819000, v8, v9, "Failed to download icon for url: %s, with error: %@", v15, 0x16u);
    sub_27586BF04(v24, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x277C85860](v25, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2758B4254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758B42EC, v7, v6);
}

uint64_t sub_2758B42EC()
{
  v1 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2759C2410;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v1 scale:1.0];
  v3 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_275861AF8(0, &qword_280A0EC90, 0x277D1B160);
  v4 = sub_2759BA3D8();

  v5 = [v3 initWithImages_];

  sub_2758B296C(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2758B4410()
{

  v1 = OBJC_IVAR____TtC14iCloudSettings16FeatureViewModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureViewModel(uint64_t a1)
{
  result = qword_280A0F790;
  if (!qword_280A0F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758B4520(uint64_t a1)
{
  result = sub_2759B8678();
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

uint64_t sub_2758B45D4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_2758B4634()
{
  v1 = *(v0 + 16);
  result = sub_27588723C(v1);
  if (!v3)
  {
    v4 = (v1 + OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle);
    swift_beginAccess();
    v5 = *v4;

    return v5;
  }

  return result;
}

BOOL sub_2758B46A4()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  return sub_2759AA55C(*(v0 + 16), *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview));
}

uint64_t sub_2758B4768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2758B32F0();
}

uint64_t sub_2758B47F4()
{
  sub_2759BABD8();
  sub_2759BA328();
  sub_2759BA798();
  return sub_2759BAC08();
}

uint64_t sub_2758B4880(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  sub_2759BA798();
  return sub_2759BAC08();
}

uint64_t sub_2758B48D0(uint64_t *a1, void *a2)
{
  v2 = *(*a1 + 40) == *(*a2 + 40) && *(*a1 + 48) == *(*a2 + 48);
  if (!v2 && (sub_2759BAAC8() & 1) == 0)
  {
    return 0;
  }

  sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
  return sub_2759BA788() & 1;
}

uint64_t sub_2758B4998(uint64_t a1)
{
  result = sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel, &unk_2759C4478);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2758B49F0(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758B3844(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2758B4B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758B4254(a1, v4, v5, v7, v6);
}

uint64_t sub_2758B4BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B4C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758B4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_2759B8328();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10D80, &qword_2759C4618);
  v6[34] = swift_task_alloc();
  v8 = sub_2759B8508();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758B4E1C, 0, 0);
}

uint64_t sub_2758B4E1C()
{
  v1 = v0[25];
  v2 = sub_2759BA258();
  v3 = [v1 URLForKey_];
  v0[38] = v3;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2758B4F74;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D0, &unk_2759C4620);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2758B6808;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2758B4F74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_2758B55F8;
  }

  else
  {
    v2 = sub_2758B5084;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2758B5084()
{
  v48 = v0;
  v1 = *(v0 + 168);

  v2 = [v1 absoluteURL];
  if (v2)
  {
    v3 = *(v0 + 232);
    v4 = v2;
    sub_2759B84C8();

    sub_2759B82F8();
    if (v3)
    {
      v5 = *(v0 + 232);
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {

        if (sub_2759BA368())
        {
          v8 = sub_2758B6B00(1uLL, *(v0 + 224), v5, v7);
          v10 = v9;
          v12 = v11;
          v14 = v13;

          MEMORY[0x277C840B0](v8, v10, v12, v14);
        }

        if ((*(*(v0 + 248) + 48))(*(v0 + 272), 1, *(v0 + 240)))
        {
        }

        else
        {
          sub_2759B82E8();
        }
      }
    }

    v22 = *(v0 + 272);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = (*(v24 + 48))(v22, 1, v23);
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    if (v25)
    {
      (*(v27 + 56))(*(v0 + 264), 1, 1, *(v0 + 280));
    }

    else
    {
      v29 = *(v0 + 256);
      (*(v24 + 16))(v29, v22, v23);
      sub_2759B8308();
      (*(v24 + 8))(v29, v23);
      if ((*(v27 + 48))(v28, 1, v26) != 1)
      {
        v42 = *(v0 + 288);
        v44 = *(v0 + 272);
        v43 = *(v0 + 280);
        v45 = *(v0 + 264);
        v46 = *(v0 + 192);
        (*(v42 + 8))(*(v0 + 296), v43);

        (*(v42 + 32))(v46, v45, v43);
        (*(v42 + 56))(v46, 0, 1, v43);
        v39 = v44;
LABEL_24:
        sub_27586BF04(v39, &unk_280A10D80, &qword_2759C4618);
        goto LABEL_25;
      }
    }

    sub_27586BF04(*(v0 + 264), &unk_280A0EB10, &qword_2759C0740);
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_280A238E8);
    v31 = sub_2759B8988();
    v32 = sub_2759BA648();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_275819000, v31, v32, "Failed to create URL from components.", v33, 2u);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    v35 = *(v0 + 288);
    v34 = *(v0 + 296);
    v37 = *(v0 + 272);
    v36 = *(v0 + 280);
    v38 = *(v0 + 192);

    (*(v35 + 8))(v34, v36);
    (*(v35 + 56))(v38, 1, 1, v36);
    v39 = v37;
    goto LABEL_24;
  }

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v15 = sub_2759B89A8();
  __swift_project_value_buffer(v15, qword_280A238E8);

  v16 = sub_2759B8988();
  v17 = sub_2759BA648();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2758937B8(v19, v18, &v47);
    _os_log_impl(&dword_275819000, v16, v17, "URL for key %s is missing. Unable to prepare presentation URL.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x277C85860](v21, -1, -1);
    MEMORY[0x277C85860](v20, -1, -1);
  }

  (*(*(v0 + 288) + 56))(*(v0 + 192), 1, 1, *(v0 + 280));
LABEL_25:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2758B55F8(uint64_t a1)
{
  v18 = v1;
  v2 = v1[38];
  swift_willThrow();

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v3 = v1[39];
  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = v3;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[39];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2759BAB78();
    v14 = sub_2758937B8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_275819000, v6, v7, "Failed to get url from Bag. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  (*(v1[36] + 56))(v1[24], 1, 1, v1[35]);

  v15 = v1[1];

  return v15();
}

void sub_2758B580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 24);
  v13 = sub_2759B84B8();
  v23 = [v12 typeForURL_];

  (*(v9 + 16))(v11, a3, v8);
  v14 = v21;
  (*(v5 + 16))(v7, v22, v21);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v15, v11, v8);
  (*(v5 + 32))(v17 + v16, v7, v14);
  aBlock[4] = sub_2758B694C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B6BB8;
  aBlock[3] = &block_descriptor_3;
  v18 = _Block_copy(aBlock);

  v19 = v23;
  [v23 addFinishBlock_];
  _Block_release(v18);
}

uint64_t sub_2758B5AC8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_280A238E8);
    (*(v9 + 16))(v11, a3, v8);
    v14 = a2;
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315394;
      v20 = sub_2759B8488();
      v22 = v21;
      (*(v9 + 8))(v11, v8);
      v23 = sub_2758937B8(v20, v22, &v30);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_2759BAB78();
      v26 = sub_2758937B8(v24, v25, &v30);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_275819000, v15, v16, "Unable to parse url to determine view controller. %s error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v30 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
    return sub_2759BA478();
  }

  else
  {
    if (a1)
    {
      v27 = [a1 integerValue];
    }

    else
    {
      v27 = 1;
    }

    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
    return sub_2759BA488();
  }
}

uint64_t sub_2758B5DEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758B5E0C, 0, 0);
}

uint64_t sub_2758B5E0C()
{
  v1 = *(v0[3] + 16);
  v2 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v3 = v1;
  v4 = sub_2759B84B8();
  v5 = [v2 initWithURL:v4 bag:v3];
  v0[4] = v5;

  v6 = [v5 perform];
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_2758B5F6C;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000001BLL, 0x80000002759DF970, sub_2758B6A54, v7, v9);
}

uint64_t sub_2758B5F6C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2758B60F0;
  }

  else
  {

    v2 = sub_2758B6088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2758B6088()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2758B60F0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2758B6164(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2758B6A5C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B6BB8;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v10);
}

uint64_t sub_2758B6314(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  if (a2)
  {
    v10 = a2;
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_280A238E8);
    v12 = a2;
    v13 = sub_2759B8988();
    v14 = sub_2759BA648();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = a2;
      v37 = v16;
      *v15 = 136315138;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
      v18 = sub_2759BA2F8();
      v20 = sub_2758937B8(v18, v19, &v37);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_275819000, v13, v14, "Error returned in campaignAttributionTask: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x277C85860](v16, -1, -1);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    v37 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA478();
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v22 = sub_2759B89A8();
    __swift_project_value_buffer(v22, qword_280A238E8);
    v23 = a1;
    v24 = sub_2759B8988();
    v25 = sub_2759BA628();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      if (a1)
      {
        v28 = [v23 redirectURL];
        if (v28)
        {
          v29 = v28;
          sub_2759B84C8();

          v30 = sub_2759B8508();
          (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
        }

        else
        {
          v32 = sub_2759B8508();
          (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
        }

        sub_2758B4BD0(v7, v9);
      }

      else
      {
        v31 = sub_2759B8508();
        (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
      }

      v33 = sub_2759BA2F8();
      v35 = sub_2758937B8(v33, v34, &v37);

      *(v26 + 4) = v35;
      _os_log_impl(&dword_275819000, v24, v25, "Result returned in campaignAttributionTask: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x277C85860](v27, -1, -1);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA488();
  }
}

void sub_2758B677C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2758B6808(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;
    v7 = v9;
    v8 = v10;

    return MEMORY[0x282200958](v7, v8);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v7, v8);
  }

  v13 = *(v9[8] + 40);
  *v13 = a2;
  *(v13 + 8) = a3;
  v14 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_2758B68E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2758B694C(void *a1, void *a2)
{
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2758B5AC8(a1, a2, v2 + v6, v9);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2758B6A5C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);

  return sub_2758B6314(a1, a2);
}

uint64_t sub_2758B6B00(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_2759BA338();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_2758B6BBC()
{
  *(v1 + 96) = v0;

  return MEMORY[0x2822009F8](sub_2758B6C4C, 0, 0);
}

uint64_t sub_2758B6C4C()
{
  v1 = MEMORY[0x277D84F98];
  v0[9] = MEMORY[0x277D84F98];
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  if (v3)
  {
    v4 = [v3 ams_DSID];
    if (v4)
    {
      v5 = v4;
      if (qword_2815ADD20 != -1)
      {
        swift_once();
      }

      v6 = sub_2759B89A8();
      __swift_project_value_buffer(v6, qword_2815ADE58);
      v7 = v5;
      v8 = sub_2759B8988();
      v9 = sub_2759BA668();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v5;
        v12 = v7;
        _os_log_impl(&dword_275819000, v8, v9, "Sending iTunes account dsid: %@", v10, 0xCu);
        sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
        MEMORY[0x277C85860](v11, -1, -1);
        MEMORY[0x277C85860](v10, -1, -1);
      }

      v13 = [v7 stringValue];
      v14 = sub_2759BA298();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906750(v14, v16, 0xD000000000000013, 0x80000002759DFA80, isUniquelyReferenced_nonNull_native);

      v0[9] = v1;
    }

    else
    {
    }
  }

  v18 = v0[12];
  if (*(v18 + 24))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v18 + 24))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  sub_2758CDE88(v19, v20, 0xD000000000000019, 0x80000002759DFA40);
  v21 = v0[9];
  v0[13] = v21;
  swift_beginAccess();
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_2758B6FD0;

  return MEMORY[0x282137738](0x6F4864756F6C4369, 0xED00004C5255656DLL, v21);
}

uint64_t sub_2758B6FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v6 = sub_2758B759C;
  }

  else
  {
    swift_endAccess();

    v6 = sub_2758B7130;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2758B7130()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2759BA298();
    v13 = v12;

    v14 = sub_2758937B8(v11, v13, v40);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudNetworkRequest: fetchiCloudHomeData: response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = sub_2759B8528();
  v0[10] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v0 + 10];

  v18 = v0[10];
  if (v17)
  {
    v19 = v18;
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v20 = v0[11];
    }

    else
    {
      v20 = sub_2758A2A88(MEMORY[0x277D84F90]);
    }

    v27 = sub_2759B8988();
    v28 = sub_2759BA668();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      v31 = sub_2759BA1E8();
      v33 = sub_2758937B8(v31, v32, v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_275819000, v27, v28, "iCloudNetworkRequest: fetchiCloudHomeData: jsonObject: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C85860](v30, -1, -1);
      MEMORY[0x277C85860](v29, -1, -1);
    }

    v34 = v0[16];
    v35 = v0[17];
    v36 = v0[15];
    v37 = objc_allocWithZone(type metadata accessor for iCloudHomeDataModel());
    v38 = iCloudHomeDataModel.init(_:)(v20);

    sub_27585A900(v36, v34);
    v39 = v0[1];

    return v39(v38);
  }

  else
  {
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];
    v24 = v18;
    sub_2759B8448();

    swift_willThrow();
    sub_27585A900(v23, v21);
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2758B759C()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2758B7638()
{
  *(v1 + 152) = v0;

  return MEMORY[0x2822009F8](sub_2758B76C8, 0, 0);
}

uint64_t sub_2758B76C8()
{
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D8, &qword_2759C4698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0xD000000000000019;
  v3 = inited + 32;
  *(inited + 40) = 0x80000002759DFA40;
  v4 = 1702195828;
  if (!*(v1 + 24))
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (*(v1 + 24))
  {
    v5 = 0xE400000000000000;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_2758A30D4(inited);
  v0[20] = v6;
  swift_setDeallocating();
  sub_27586BF04(v3, &qword_280A0FDF0, &unk_2759C46A0);
  swift_beginAccess();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_2758B7880;

  return MEMORY[0x282137738](0xD000000000000019, 0x80000002759DFA60, v6);
}

uint64_t sub_2758B7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;
  v5[25] = v3;

  if (v3)
  {
    v6 = sub_2758B7E4C;
  }

  else
  {
    swift_endAccess();

    v6 = sub_2758B79E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2758B79E0()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2759BA298();
    v13 = v12;

    v14 = sub_2758937B8(v11, v13, v40);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudNetworkRequest: fetchAppsListData: response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = sub_2759B8528();
  v0[17] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v0 + 17];

  v18 = v0[17];
  if (v17)
  {
    v19 = v18;
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v20 = v0[18];
    }

    else
    {
      v20 = sub_2758A2A88(MEMORY[0x277D84F90]);
    }

    v27 = sub_2759B8988();
    v28 = sub_2759BA668();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      v31 = sub_2759BA1E8();
      v33 = sub_2758937B8(v31, v32, v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_275819000, v27, v28, "iCloudNetworkRequest: fetchAppsListData: jsonObject: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C85860](v30, -1, -1);
      MEMORY[0x277C85860](v29, -1, -1);
    }

    v34 = v0[23];
    v35 = v0[24];
    v36 = v0[22];
    v37 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListDataModel());
    v38 = ManageStorageAppsListDataModel.init(_:)(v20);

    sub_27585A900(v36, v34);
    v39 = v0[1];

    return v39(v38);
  }

  else
  {
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[22];
    v24 = v18;
    sub_2759B8448();

    swift_willThrow();
    sub_27585A900(v23, v21);
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2758B7E4C()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2758B7EE8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;

  return MEMORY[0x2822009F8](sub_2758B7F7C, 0, 0);
}

uint64_t sub_2758B7F7C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v2 = sub_2759B84B8();
  v3 = [v1 initWithURL_];
  *(v0 + 72) = v3;

  v4 = sub_2759BA258();
  [v3 setHTTPMethod_];

  v5 = objc_opt_self();
  v6 = sub_2759BA1C8();
  *(v0 + 40) = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:v0 + 40];

  v8 = *(v0 + 40);
  if (v7)
  {
    v9 = sub_2759B8538();
    v11 = v10;

    v12 = sub_2759B8528();
    sub_27585A900(v9, v11);
    [v3 setHTTPBody_];

    swift_beginAccess();
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_2758B820C;

    return MEMORY[0x282137730](v3);
  }

  else
  {
    v14 = v8;
    sub_2759B8448();

    swift_willThrow();
    v15 = *(v0 + 8);

    return v15(0);
  }
}

uint64_t sub_2758B820C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 88) = a3;
  *(v7 + 96) = v3;

  if (v3)
  {
    v8 = sub_2758B85E0;
  }

  else
  {
    swift_endAccess();
    sub_27585A900(a1, a2);
    v8 = sub_2758B8378;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2758B8378()
{
  v1 = (v0 + 88);
  v2 = [*(v0 + 88) statusCode];
  if (v2 == 200)
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_2815ADE58);
    v4 = sub_2759B8988();
    v5 = sub_2759BA668();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_11;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = v6;
LABEL_10:
    MEMORY[0x277C85860](v7, -1, -1);
LABEL_11:
    v1 = (v0 + 72);
    goto LABEL_13;
  }

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v8 = *v1;
  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_2815ADE58);
  v10 = v8;
  v4 = sub_2759B8988();
  v11 = sub_2759BA648();
  if (os_log_type_enabled(v4, v11))
  {
    v12 = *(v0 + 88);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = [v12 statusCode];

    v7 = v13;
    goto LABEL_10;
  }

  v4 = *(v0 + 72);
LABEL_13:
  v14 = *v1;

  v15 = *(v0 + 8);

  return v15(v2 == 200);
}

uint64_t sub_2758B85E0()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2758B867C()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings20iCloudNetworkRequest_networkController;
  v2 = sub_2759B8708();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudNetworkRequest(uint64_t a1)
{
  result = qword_2815ADE40;
  if (!qword_2815ADE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758B8774(uint64_t a1)
{
  result = sub_2759B8708();
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

id ManageStorageAppsListDataModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel__rawJsonObject] = a1;
  v4 = *(a1 + 16);

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = sub_27586F8A0(1936748641, 0xE400000000000000);
    if (v7 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v6, v36), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v8 = v32;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v35 = v5;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = type metadata accessor for ManageStorageApp();
    do
    {
      v12 = *v10;
      v13 = objc_allocWithZone(v11);
      swift_bridgeObjectRetain_n();
      ManageStorageApp.init(_:)(v12);
      MEMORY[0x277C84160]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v5 = v35;

      ++v10;
      --v9;
    }

    while (v9);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps] = v5;
  if (!*(a1 + 16))
  {

LABEL_17:
    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_18;
  }

  v14 = sub_27586F8A0(0xD000000000000013, 0x80000002759DFAA0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v14, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = v32;
  v17 = v33;
LABEL_18:
  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_genericErrorMessage];
  *v18 = v16;
  *(v18 + 1) = v17;
  if (*(a1 + 16) && (v19 = sub_27586F8A0(0xD000000000000017, 0x80000002759DFAC0), (v20 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v19, v36), swift_dynamicCast()))
  {
    v21 = v32;
  }

  else
  {
    v21 = 4;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount] = v21;
  if (*(a1 + 16) && (v22 = sub_27586F8A0(0xD000000000000019, 0x80000002759DFAE0), (v23 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v22, v36), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v32;
    v25 = v33;
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = &v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_secondaryAppsSectionLabel];
  *v26 = v24;
  *(v26 + 1) = v25;
  if (!*(a1 + 16) || (v27 = sub_27586F8A0(0x656D6F6D72656874, 0xEB00000000726574), (v28 & 1) == 0))
  {

    goto LABEL_33;
  }

  sub_275864C94(*(a1 + 56) + 32 * v27, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v29 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_34;
  }

  v29 = v32;
LABEL_34:
  v30 = objc_allocWithZone(type metadata accessor for ManageStorageThermometer());
  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer] = ManageStorageThermometer.init(_:)(v29);

  v34.receiver = v2;
  v34.super_class = type metadata accessor for ManageStorageAppsListDataModel();
  return objc_msgSendSuper2(&v34, sel_init);
}

uint64_t sub_2758B8DE4()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2759BA2D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = objc_opt_self();
  v2 = sub_2759BA1C8();
  v3 = [v1 isValidJSONObject_];

  if (v3)
  {
    v4 = sub_2759BA1C8();
    v16[0] = 0;
    v5 = [v1 dataWithJSONObject:v4 options:1 error:v16];

    v6 = v16[0];
    if (v5)
    {
      v7 = sub_2759B8538();
      v9 = v8;

      sub_2759BA2C8();
      v10 = sub_2759BA2A8();
      v12 = v11;
      sub_27585A900(v7, v9);
      if (v12)
      {
        return v10;
      }
    }

    else
    {
      v14 = v6;
      v15 = sub_2759B8448();

      swift_willThrow();
    }
  }

  return 0xD000000000000020;
}

id sub_2758B90EC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  a4();

  v4 = sub_2759BA3D8();

  return v4;
}

id ManageStorageThermometer.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0xD000000000000015, 0x80000002759DF2B0), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v32), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0xD000000000000012, 0x80000002759DFB60), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v32), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v29;
    v12 = v30;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_dimmedSectionColor];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x62614C6567617375, 0xEA00000000006C65), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v32), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v29;
    v17 = v30;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_usageLabel];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v20 = sub_27586F8A0(0x736E6F6974636573, 0xE800000000000000), (v21 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v20, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v22 = v29;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = MEMORY[0x277D84F90];
LABEL_22:
  v32[0] = v19;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = type metadata accessor for ManageStorageThermometerSection();
    do
    {
      v26 = *v24;
      v27 = objc_allocWithZone(v25);
      swift_bridgeObjectRetain_n();
      ManageStorageThermometerSection.init(_:)(v26);
      MEMORY[0x277C84160]();
      if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v19 = v32[0];

      ++v24;
      --v23;
    }

    while (v23);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections] = v19;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for ManageStorageThermometer();
  return objc_msgSendSuper2(&v31, sel_init);
}

id ManageStorageThermometerSection.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x6449656C646E7562, 0xE800000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v21), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v18;
    v7 = v19;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_bundleId];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x4C79616C70736964, 0xEC0000006C656261), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v21), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v18;
    v12 = v19;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (!*(a1 + 16) || (v14 = sub_27586F8A0(0xD000000000000011, 0x80000002759DFBB0), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_275864C94(*(a1 + 56) + 32 * v14, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v16 = v18;
LABEL_17:
  *&v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_storagePercentage] = v16;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ManageStorageThermometerSection();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_2758B9928@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageThermometerSection();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

void sub_2758B9968(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1 == 0x70756B636162 && a2 == 0xE600000000000000;
  if (v9 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 0;
  }

  else if (a1 == 0x735F796C696D6166 && a2 == 0xEE00676E69726168 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 1;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 2;
  }

  else
  {
    if ((a1 != 0x736567617373656DLL || a2 != 0xE800000000000000) && (sub_2759BAAC8() & 1) == 0)
    {
      if (a1 == 1769105779 && a2 == 0xE400000000000000)
      {
      }

      else
      {
        v11 = sub_2759BAAC8();

        if ((v11 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      a3 = 0;
      a4 = 4;
      goto LABEL_7;
    }

    a3 = 0;
    a4 = 3;
  }

LABEL_7:
  *a5 = a3;
  a5[1] = a4;
}

unint64_t sub_2758B9CB4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x79726F6765746163;
    if (a1 != 10)
    {
      v7 = 0x70416E49776F6873;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (a1 != 7)
    {
      v8 = 0x6E6F69746361;
    }

    if (a1 == 6)
    {
      v8 = 0x734C52556E6F6369;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6562616CLL;
    v2 = 0x6449656C646E7562;
    v3 = 0x636F4C6863746566;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x614C6C6961746564;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id ManageStorageApp.init(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (*(a1 + 16) && (a1 = sub_27586F8A0(0x614C6C6961746564, 0xEB000000006C6562), (v4 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v5 = v64;
    v6 = v65;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];
  *v7 = v5;
  v7[1] = v6;
  if (*(v3 + 16) && (a1 = sub_27586F8A0(0xD000000000000010, 0x80000002759DFC00), (v8 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v9 = v64;
    v10 = v65;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabelColor];
  *v11 = v9;
  v11[1] = v10;
  if (*(v3 + 16) && (a1 = sub_27586F8A0(0x6449656C646E7562, 0xE900000000000073), (v12 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v13 = v64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds;
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds] = v13;
  *&v67[0] = 0xD000000000000010;
  *(&v67[0] + 1) = 0x80000002759DF530;
  MEMORY[0x28223BE20](a1);
  v63 = v67;

  v15 = sub_2758A34DC(sub_275875530, &v62, v13);

  if ((v15 & 1) != 0 && (v16 = [objc_opt_self() sharedManager], v17 = objc_msgSend(v16, sel_appIsNeitherInstalledOrPlaceholder_, *MEMORY[0x277CB89A0]), v16, v17))
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v63 = 0x80000002759DFC60;
    v20 = sub_2759B83C8();
    v22 = v21;
  }

  else if (*(v3 + 16) && (v23 = sub_27586F8A0(0x6C6562616CLL, 0xE500000000000000), (v24 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v23, v67), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v64;
    v22 = v65;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v25 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label];
  *v25 = v20;
  v25[1] = v22;
  if (*(v3 + 16) && (v26 = sub_27586F8A0(0x636F4C6863746566, 0xEC000000796C6C61), (v27 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v26, v67), swift_dynamicCast()))
  {
    v28 = v64;
  }

  else
  {
    v28 = 1;
  }

  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally] = v28;
  v29 = *(v3 + 16);
  if (v29)
  {
    v30 = sub_27586F8A0(0xD000000000000010, 0x80000002759DCD70);
    if ((v31 & 1) != 0 && (sub_275864C94(*(v3 + 56) + 32 * v30, v67), swift_dynamicCast()))
    {
      LOBYTE(v29) = v64;
    }

    else
    {
      LOBYTE(v29) = 0;
    }
  }

  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle] = v29;
  if (*(v3 + 16) && (v32 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000), (v33 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v32, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v34 = v64;
  }

  else
  {
    v34 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v35 = type metadata accessor for ManageStorageAppIconURL(0);
  v36 = objc_allocWithZone(v35);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls] = ManageStorageAppIconURL.init(_:)(v34);
  if (*(v3 + 16) && (v37 = sub_27586F8A0(0xD000000000000012, 0x80000002759DFC20), (v38 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v37, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v39 = v64;
  }

  else
  {
    v39 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v40 = objc_allocWithZone(v35);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailViewIconUrls] = ManageStorageAppIconURL.init(_:)(v39);
  if (*(v3 + 16) && (v41 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v42 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v41, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v64;
  }

  else
  {
    v43 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v44 = objc_allocWithZone(type metadata accessor for ManageStorageAction());
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action] = ManageStorageAction.init(_:)(v43);
  if (*(v3 + 16) && (v45 = sub_27586F8A0(0xD000000000000015, 0x80000002759DFC40), (v46 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v45, v67), (swift_dynamicCast() & 1) != 0))
  {
    v47 = v64;
    v48 = v65;
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_thermometerUsageLabel];
  *v49 = v47;
  v49[1] = v48;
  if (*(v3 + 16) && (v50 = sub_27586F8A0(0x70416E49776F6873, 0xED00007473694C70), (v51 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v50, v67), swift_dynamicCast()))
  {
    v52 = v64;
  }

  else
  {
    v52 = 1;
  }

  v53 = 0x746C7561666564;
  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList] = v52;
  if (*(v3 + 16) && (v54 = sub_27586F8A0(0x79726F6765746163, 0xE800000000000000), (v55 & 1) != 0))
  {
    sub_275864C94(*(v3 + 56) + 32 * v54, v67);

    if (swift_dynamicCast())
    {
      v57 = v64;
      v56 = v65;
      goto LABEL_65;
    }
  }

  else
  {
  }

  v56 = 0xE700000000000000;
  v57 = 0x746C7561666564;
LABEL_65:
  v58 = *&v2[v14];
  if (v58[2])
  {
    v53 = v58[4];
    v59 = v58[5];
  }

  else
  {
    v59 = 0xE700000000000000;
  }

  sub_2758B9968(v57, v56, v53, v59, v67);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category] = v67[0];
  v60 = type metadata accessor for ManageStorageApp();
  v66.receiver = v2;
  v66.super_class = v60;
  return objc_msgSendSuper2(&v66, sel_init);
}

id ManageStorageApp.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2758BA840(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2758BA948@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageApp();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

id sub_2758BA9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_2758BB4AC(a1 + *a3, &v14 - v6);
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2759B84B8();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

id ManageStorageAppIconURL.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  if (*(a1 + 16) && (v8 = sub_27586F8A0(30769, 0xE200000000000000), (v9 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v8, v23), (swift_dynamicCast() & 1) != 0))
  {
    sub_2759B84F8();

    sub_2758B4BD0(v7, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x]);
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x;
    v11 = sub_2759B8508();
    (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v12 = sub_27586F8A0(30770, 0xE200000000000000);
  if (v13)
  {
    sub_275864C94(*(a1 + 56) + 32 * v12, v23);
    if (swift_dynamicCast())
    {
      sub_2759B84F8();

      sub_2758B4BD0(v7, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x]);
      if (!*(a1 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v14 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x;
  v15 = sub_2759B8508();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  if (!*(a1 + 16))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_12:
  v16 = sub_27586F8A0(30771, 0xE200000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_275864C94(*(a1 + 56) + 32 * v16, v23);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v18 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x;
    v19 = sub_2759B8508();
    (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
    goto LABEL_17;
  }

  sub_2759B84F8();

  sub_2758B4BD0(v7, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x]);
LABEL_17:
  v22.receiver = v2;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

id ManageStorageAppIconURL.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14iCloudSettings24ManageStorageAppCategoryO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (!v5)
      {
        sub_27585A8EC(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_27585A8EC(*a1, 1uLL);
        sub_27585A8EC(v4, 1uLL);
        return v8;
      }

LABEL_18:
      sub_27585A8D8(*a2, *(a2 + 8));
      sub_27585A8D8(v2, v3);
      sub_27585A8EC(v2, v3);
      sub_27585A8EC(v4, v5);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        if (v5 == 2)
        {
          sub_27585A8EC(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 3:
        if (v5 == 3)
        {
          sub_27585A8EC(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 4:
        if (v5 == 4)
        {
          sub_27585A8EC(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
LABEL_22:
          sub_27585A8EC(v6, v7);
          return 1;
        }

        goto LABEL_18;
    }
  }

  if (v5 < 5)
  {
    goto LABEL_18;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_27585A8D8(*a1, v3);
    sub_27585A8D8(v2, v3);
    sub_27585A8EC(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_22;
  }

  v10 = sub_2759BAAC8();
  sub_27585A8D8(v4, v5);
  sub_27585A8D8(v2, v3);
  sub_27585A8EC(v2, v3);
  sub_27585A8EC(v4, v5);
  return v10 & 1;
}

uint64_t type metadata accessor for ManageStorageAppIconURL(uint64_t a1)
{
  result = qword_280A0F8A8;
  if (!qword_280A0F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14iCloudSettings24ManageStorageAppCategoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2758BB288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2758BB2E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_2758BB330(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_2758BB394(uint64_t a1)
{
  sub_2758BB454(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2758BB454(uint64_t a1)
{
  if (!qword_2815ADE50)
  {
    sub_2759B8508();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2815ADE50);
    }
  }
}

uint64_t sub_2758BB4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BB52C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  sub_27586FBC8(v1 + *(v10 + 60), v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_2758BB734@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v93 = a6;
  v92 = a5;
  v12 = sub_2759B8508();
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v86 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = v80 - v16;
  MEMORY[0x28223BE20](v15);
  v81 = v80 - v17;
  v100 = 0;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v87 = v102;
  v100 = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_2759B9D58();
  v89 = v102;
  v100 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8B8, &qword_2759C4900);
  sub_2759B9D58();
  v19 = *(&v102 + 1);
  v80[1] = v102;
  *(a7 + 32) = v102;
  *(a7 + 40) = v19;
  v80[2] = v19;
  v100 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8C0, &qword_2759C4908);
  sub_2759B9D58();
  v21 = *(&v102 + 1);
  v80[3] = v102;
  *(a7 + 48) = v102;
  *(a7 + 56) = v21;
  v80[4] = v21;
  v100 = 0;
  v95 = v18;
  sub_2759B9D58();
  v22 = *(&v102 + 1);
  v82 = v102;
  *(a7 + 104) = v102;
  *(a7 + 112) = v22;
  v83 = v22;
  v100 = 0;
  v96 = v20;
  sub_2759B9D58();
  v23 = *(&v102 + 1);
  v84 = v102;
  *(a7 + 120) = v102;
  *(a7 + 128) = v23;
  v85 = v23;
  v100 = 0xD000000000000015;
  v101 = 0x80000002759E00F0;
  sub_2759B9D58();
  v24 = v103;
  *(a7 + 136) = v102;
  *(a7 + 152) = v24;
  v25 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v26 = v25[15];
  *(a7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v27 = (a7 + v25[16]);
  sub_2759B8C08();
  v28 = MEMORY[0x277D233A0];
  sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  *v27 = sub_2759B9168();
  v27[1] = v29;
  v91 = v25;
  v30 = (a7 + v25[17]);
  sub_2759B8BB8();
  sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8], v28);
  *v30 = sub_2759B9168();
  v30[1] = v31;
  if (a2)
  {
    v32 = *&a2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index];
    if (v32 <= 4)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = 6;
    }
  }

  else
  {
    v33 = 6;
  }

  *(a7 + 96) = v33;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = [objc_opt_self() bundleForClass_];
  v35 = sub_2759BA258();

  v36 = sub_2759BA258();
  v37 = &unk_27A667000;
  v38 = [v99 URLForResource:v35 withExtension:v36];

  v39 = MEMORY[0x277CDA710];
  if (v38)
  {
    v40 = v81;
    sub_2759B84C8();

    v41 = a1;
    v42 = a2;
    v43 = a3;
    v44 = a4;
    v45 = v94;
    (*(v97 + 16))(v94, v40, v98);
    v46 = *v39;
    type metadata accessor for MicaPlayerModel(0);
    swift_allocObject();
    v47 = v46;
    v48 = v45;
    a4 = v44;
    a3 = v43;
    a2 = v42;
    a1 = v41;
    v49 = sub_275865450(v48, 1, v47);

    v100 = v49;

    sub_2759B9D58();

    *(a7 + 32) = v102;
    type metadata accessor for InteractiveStorageMicaController(0);
    swift_allocObject();

    v51 = sub_27586A5E4(v50);

    v100 = v51;
    sub_2759B9D58();

    v52 = v40;
    v37 = &unk_27A667000;
    (*(v97 + 8))(v52, v98);

    *(a7 + 48) = v102;
    v53 = a2;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v54 = sub_2759B89A8();
    __swift_project_value_buffer(v54, qword_2815ADE70);
    v53 = a2;
    v55 = sub_2759B8988();
    v56 = sub_2759BA648();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = a1;
      v58 = -1;
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      if (a2)
      {
        v58 = *&v53[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index];
      }

      *(v59 + 4) = v58;
      v60 = v59;

      _os_log_impl(&dword_275819000, v55, v56, "ManageStorageDrilldownAnimationView Unable to resolve caar file url, index: %ld", v60, 0xCu);
      MEMORY[0x277C85860](v60, -1, -1);

      a1 = v57;
    }

    else
    {
    }
  }

  v100 = a1;
  v61 = a1;
  sub_2759B9D58();

  *a7 = v102;
  v100 = a2;
  v62 = v53;
  sub_2759B9D58();

  *(a7 + 16) = v102;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  v63 = sub_2759BA258();
  v64 = sub_2759BA258();
  v65 = [v99 v37[489]];

  if (v65)
  {
    v66 = v86;
    sub_2759B84C8();

    v68 = v97;
    v67 = v98;
    v69 = v94;
    (*(v97 + 16))(v94, v66, v98);
    v70 = *MEMORY[0x277CDA710];
    type metadata accessor for MicaPlayerModel(0);
    swift_allocObject();
    v71 = v70;
    v72 = sub_275865450(v69, 1, v71);

    v100 = v72;

    sub_2759B9D58();

    *(a7 + 104) = v102;
    type metadata accessor for InteractiveStorageMicaController(0);
    swift_allocObject();

    v74 = sub_27586A5E4(v73);

    v100 = v74;
    sub_2759B9D58();

    (*(v68 + 8))(v66, v67);

    *(a7 + 120) = v102;
  }

  v75 = v91;
  *(a7 + 160) = v92;
  v76 = (v93 & 1) == 0;
  *(a7 + v75[18]) = v93 & 1;
  v77 = 0.0;
  if (!v76)
  {
    v77 = 1.0;
  }

  v100 = *&v77;
  sub_2759B9D58();

  v79 = *(&v102 + 1);
  result = *&v102;
  *(a7 + 64) = v102;
  *(a7 + 72) = v79;
  return result;
}

uint64_t sub_2758BC118@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F938, &qword_2759C49E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v25 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F940, &qword_2759C49E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F948, &qword_2759C49F0);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  *v5 = sub_2759BA028();
  v5[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F950, &qword_2759C49F8);
  sub_2758BC394(v1, v5 + *(v12 + 44));
  v10(v5, 0, 1, v9);
  sub_2758BEC5C(v5, v8);
  v13 = [objc_opt_self() mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v26.origin.x = v15;
  v26.origin.y = v17;
  v26.size.width = v19;
  v26.size.height = v21;
  CGRectGetHeight(v26);
  sub_2759BA028();
  sub_2759B8F18();
  sub_27586FBC8(v8, a1, &qword_280A0F940, &qword_2759C49E8);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F958, &unk_2759C4A00) + 36));
  v23 = v25[1];
  *v22 = v25[0];
  v22[1] = v23;
  v22[2] = v25[2];
  return sub_27586BF04(v8, &qword_280A0F940, &qword_2759C49E8);
}

uint64_t sub_2758BC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v3 = sub_2759B9608();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x28223BE20](v3);
  v116 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x28223BE20](v5);
  v119 = &v113 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F968, &qword_2759C4A10);
  MEMORY[0x28223BE20](v126);
  v132 = &v113 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F970, &qword_2759C4A18);
  v130 = *(v8 - 8);
  v131 = v8;
  MEMORY[0x28223BE20](v8);
  v122 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F978, &qword_2759C4A20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v134 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = &v113 - v13;
  v115 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v138 = *(v115 - 8);
  v14 = *(v138 + 64);
  MEMORY[0x28223BE20](v115);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F980, &qword_2759C4A28);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v133 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v137 = &v113 - v19;
  v20 = *(a1 + 88);
  *&v149[0] = *(a1 + 80);
  *(&v149[0] + 1) = v20;
  sub_27589F2D4(v18, v21, v22);

  v23 = sub_2759B99C8();
  v25 = v24;
  v27 = v26;
  LODWORD(v149[0]) = sub_2759B9688();
  v28 = sub_2759B9958();
  v128 = v29;
  v129 = v28;
  v31 = v30;
  v127 = v32;
  sub_27589F328(v23, v25, v27 & 1);

  v123 = objc_opt_self();
  v33 = [v123 mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v151.origin.x = v35;
  v151.origin.y = v37;
  v151.size.width = v39;
  v151.size.height = v41;
  v42 = CGRectGetHeight(v151) * 0.085;
  v43 = *(a1 + 72);
  *&v149[0] = *(a1 + 64);
  *(&v149[0] + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F988, &qword_2759C4A30);
  sub_2759B9D68();
  v44 = v140;
  sub_2758BECCC(a1, &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v138 + 80);
  v46 = (v45 + 16) & ~v45;
  v124 = v14;
  v47 = swift_allocObject();
  v125 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758BED30(v125, v47 + v46);
  LOBYTE(v146) = v31 & 1;
  *&v140 = v129;
  *(&v140 + 1) = v128;
  LOBYTE(v141) = v31 & 1;
  *(&v141 + 1) = v127;
  *&v142 = 0;
  *(&v142 + 1) = v42;
  *&v143 = v44;
  *(&v143 + 1) = sub_2758BED94;
  v144 = v47;
  v145 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F990, &qword_2759C4A38);
  sub_2758BEDAC();
  sub_2759B9B38();
  v149[2] = v142;
  v149[3] = v143;
  v149[4] = v144;
  v150 = v145;
  v149[0] = v140;
  v149[1] = v141;
  sub_27586BF04(v149, &qword_280A0F990, &qword_2759C4A38);
  v138 = a1;
  v140 = *(a1 + 32);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C0, &qword_2759C4A50);
  sub_2759B9D68();
  v113 = v45;
  v114 = v46;
  if (v146)
  {
    type metadata accessor for MicaPlayerModel(0);
    sub_2758BF284(&qword_280A0EA68, type metadata accessor for MicaPlayerModel, &unk_2759C1A50);

    v48 = v132;
    sub_2759B9F78();
    v49 = [v123 mainScreen];
    [v49 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v152.origin.x = v51;
    v152.origin.y = v53;
    v152.size.width = v55;
    v152.size.height = v57;
    CGRectGetHeight(v152);
    sub_2759BA028();
    sub_2759B8F18();
    v58 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36));
    v59 = v147;
    *v58 = v146;
    v58[1] = v59;
    v58[2] = v148;
    *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)) = 256;
    v60 = sub_2759B90B8();
    v61 = sub_2759B97D8();
    v62 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36);
    *v62 = v60;
    *(v62 + 8) = v61;
    v63 = v138;
    v64 = v125;
    sub_2758BECCC(v138, v125);
    v65 = swift_allocObject();
    sub_2758BED30(v64, v65 + v46);
    v66 = (v48 + *(v126 + 36));
    *v66 = sub_2758BF48C;
    v66[1] = v65;
    v66[2] = 0;
    v66[3] = 0;
    v67 = *(v63 + 152);
    v140 = *(v63 + 136);
    *&v141 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
    sub_2759B9D68();
    sub_2758BF024();
    v68 = v122;
    sub_2759B9B38();

    sub_27586BF04(v48, &qword_280A0F968, &qword_2759C4A10);
    v69 = v68;
    v70 = v136;
    sub_2758BF518(v69, v136);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v70 = v136;
    v48 = v132;
  }

  (*(v130 + 56))(v70, v71, 1, v131);
  v140 = *(v138 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  v72 = v139;
  if (!v139)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  *&v140 = v72;
  sub_2758BF284(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8638();

  v73 = *&v72[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages];

  if (!v73)
  {
    goto LABEL_11;
  }

  v140 = *(v138 + 104);
  sub_2759B9D68();
  v74 = v139;
  if (!v139)
  {

LABEL_11:
    v138 = 0;
    goto LABEL_12;
  }

  v75 = v113;
  v76 = ~v113;
  type metadata accessor for MicaPlayerModel(0);
  sub_2758BF284(&qword_280A0EA68, type metadata accessor for MicaPlayerModel, &unk_2759C1A50);

  v132 = v74;
  sub_2759B9F78();
  v77 = [v123 mainScreen];
  [v77 bounds];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;

  v153.origin.x = v79;
  v153.origin.y = v81;
  v153.size.width = v83;
  v153.size.height = v85;
  CGRectGetHeight(v153);
  sub_2759BA028();
  sub_2759B8F18();
  v86 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36));
  v87 = v141;
  *v86 = v140;
  v86[1] = v87;
  v86[2] = v142;
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)) = 256;
  v88 = sub_2759B90B8();
  v89 = sub_2759B97D8();
  v90 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36);
  *v90 = v88;
  *(v90 + 8) = v89;
  v91 = v138;
  v92 = v125;
  sub_2758BECCC(v138, v125);
  v93 = swift_allocObject();
  *(v93 + 16) = v73;
  sub_2758BED30(v92, v93 + ((v75 + 24) & v76));
  v94 = (v48 + *(v126 + 36));
  *v94 = sub_2758BEF48;
  v94[1] = v93;
  v94[2] = 0;
  v94[3] = 0;
  sub_2758BECCC(v91, v92);
  v95 = v114;
  v96 = swift_allocObject();
  sub_2758BED30(v92, v96 + v95);
  v97 = v116;
  sub_2759B96C8();
  sub_2758BF024();
  v98 = v48;
  v99 = v119;
  v100 = v118;
  sub_2759B9A98();

  (*(v117 + 8))(v97, v100);
  sub_27586BF04(v98, &qword_280A0F968, &qword_2759C4A10);
  v101 = sub_27595CE18(*(v91 + 160));
  v102 = *(v91 + *(v115 + 64));
  if (v102)
  {
    v103 = *(v138 + *(v115 + 68));
    v70 = v136;
    if (v103)
    {
      v104 = v101;

      v105 = sub_275964AD0(v104, v102, v103);

      (*(v120 + 8))(v99, v121);
      v138 = v105;

LABEL_12:
      v106 = v137;
      v107 = v133;
      sub_27586FBC8(v137, v133, &qword_280A0F980, &qword_2759C4A28);
      v108 = v134;
      sub_27586FBC8(v70, v134, &qword_280A0F978, &qword_2759C4A20);
      v109 = v70;
      v110 = v135;
      sub_27586FBC8(v107, v135, &qword_280A0F980, &qword_2759C4A28);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D0, &qword_2759C4A88);
      sub_27586FBC8(v108, v110 + *(v111 + 48), &qword_280A0F978, &qword_2759C4A20);
      *(v110 + *(v111 + 64)) = v138;
      sub_27586BF04(v109, &qword_280A0F978, &qword_2759C4A20);
      sub_27586BF04(v106, &qword_280A0F980, &qword_2759C4A28);

      sub_27586BF04(v108, &qword_280A0F978, &qword_2759C4A20);
      return sub_27586BF04(v107, &qword_280A0F980, &qword_2759C4A28);
    }
  }

  else
  {
    sub_2759B8C08();
    sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_2759B9158();
    __break(1u);
  }

  sub_2759B8BB8();
  sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_2758BD20C(uint64_t a1)
{
  sub_2759BA078();
  sub_2759BA068();

  sub_2759B9008();
}

void *sub_2758BD2A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v4)
  {
    v2 = sub_2758BD388();
    sub_275868374(v2);
  }

  result = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  if (*(a1 + *(result + 18)) == 1)
  {
    result = sub_2759B9D68();
    if (v4)
    {
      sub_275864E2C(1000000.0);
    }
  }

  return result;
}

uint64_t sub_2758BD388()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  sub_2758BF588();
  v4 = sub_2759BA408();
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  v5[2] = 5;
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v3;
  v40 = v4;
  v45 = v4;
  v6 = v3;
  v44 = *v2;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  v8 = &v44;
  sub_2759B9D68();
  v39 = v2;
  if (v42)
  {
    v9 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    swift_beginAccess();
    v8 = *&v42[v9];

    v10 = v8 >> 62;
    if (v8 >> 62)
    {
LABEL_49:
      v37 = sub_2759BA9E8();
      if (sub_2759BA9E8() < 0)
      {
        __break(1u);
LABEL_51:
        sub_2759BA3F8();
        goto LABEL_41;
      }

      if (v37 >= 5)
      {
        v38 = 5;
      }

      else
      {
        v38 = v37;
      }

      if (v37 >= 0)
      {
        v12 = v38;
      }

      else
      {
        v12 = 5;
      }

      result = sub_2759BA9E8();
      if (result >= v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v12)
      {
LABEL_7:
        if ((v8 & 0xC000000000000001) == 0 || v12 == 0)
        {
        }

        else
        {
          type metadata accessor for ManageStorageAppViewModel(0);

          sub_2759BA8F8();
          if (v12 != 1)
          {
            sub_2759BA8F8();
            if (v12 != 2)
            {
              sub_2759BA8F8();
              if (v12 != 3)
              {
                sub_2759BA8F8();
                if (v12 != 4)
                {
                  sub_2759BA8F8();
                  if (v12 != 5)
                  {
                    sub_2759BA8F8();
                    sub_2759BA8F8();
                  }
                }
              }
            }
          }
        }

        if (v10)
        {
          sub_2759BA9F8();
          v10 = v19;
          v16 = v20;
          v18 = v21;
        }

        else
        {
          v16 = 0;
          v10 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
          v18 = 2 * v12;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
    return result;
  }

  sub_2758BE504(MEMORY[0x277D84F90]);
  v10 = v14;
  v16 = v15;
  v18 = v17;
LABEL_23:
  v22 = 0;
  v23 = v18 >> 1;
  v1 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v24 = v16;
LABEL_24:
  v25 = v24;
  while (v23 != v25)
  {
    if (v24 < v16 || v25 >= v23)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_47;
    }

    v27 = v25 + 1;
    v28 = *(v10 + 8 * v25);
    v8 = *&v28[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
    ++v22;
    ++v25;
    if (v8)
    {
      v29 = v28;
      v8 = v8;
      if ((v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
      {
        v40 = sub_275893F08(v40);
      }

      if ((v22 - 1) < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x18);
        *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x18) = v8;
        v8 = v40;

        v45 = v40;
        v22 = v26;
        v24 = v27;
        goto LABEL_24;
      }

      goto LABEL_48;
    }
  }

  swift_unknownObjectRelease();
  if (*(v39 + 96) == 6)
  {
  }

  else
  {
    v31 = sub_2759BAAC8();

    if ((v31 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  if (!v41)
  {
    goto LABEL_42;
  }

  v32 = *&v41[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
  v33 = v32;

  if (!v32)
  {
    goto LABEL_42;
  }

  v1 = v33;
  MEMORY[0x277C84160]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_51;
  }

LABEL_41:
  sub_2759BA418();

  v40 = v45;
LABEL_42:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  if (v43)
  {
    v34 = *&v43[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];

    v36 = *&v34[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label];
    v35 = *&v34[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label + 8];
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x277C840E0](v36, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  MEMORY[0x277C840E0](45, 0xE100000000000000);

  sub_2759B9D78();

  return v40;
}

void *sub_2758BDA24(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = sub_2759B8DA8();
  v3 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2759BA968();
    v10 = (a1 + 32);
    v11 = v8;
    do
    {
      v12 = *v10;
      v10 += 2;
      v13 = v12;
      sub_2759BA948();
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v11;
    }

    while (v11);
    v14 = v40;
    v40 = v9;
    sub_2759BA968();
    v15 = (a1 + 40);
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = v16;
      sub_2759BA948();
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v8;
    }

    while (v8);
    v9 = v40;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v18 = v38;
  v19 = *(v38 + 120);
  v20 = *(v38 + 128);
  v40 = v19;
  v41 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v39)
  {
    v34 = v21;
    v22 = v7;
    sub_2758BB52C(v7);
    v23 = *MEMORY[0x277CDF3D0];
    v24 = *(v3 + 104);
    v35 = v14;
    v25 = v20;
    v26 = v19;
    v27 = v36;
    v28 = v37;
    v24(v36, v23, v37);
    v29 = sub_2759B8D98();
    v30 = *(v3 + 8);
    v31 = v27;
    v19 = v26;
    v20 = v25;
    v32 = v35;
    v30(v31, v28);
    v30(v22, v28);
    v18 = v38;
    if ((v29 & 1) == 0)
    {
      v32 = v9;
    }

    sub_275868374(v32);
  }

  else
  {
  }

  result = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  if (*(v18 + *(result + 18)) == 1)
  {
    v40 = v19;
    v41 = v20;
    result = sub_2759B9D68();
    if (v39)
    {
      sub_275864E2C(1000000.0);
    }
  }

  return result;
}

void *sub_2758BDD2C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - v11;
  v29 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  result = sub_2759B9D68();
  if (v28[1])
  {
    sub_2758697F0(a2, a3);
    v15 = v14;
    v17 = v16;

    if ((v17 & 1) == 0 && v15 < *(*(a1 + 160) + 16))
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v18 = sub_2759B89A8();
      __swift_project_value_buffer(v18, qword_2815ADE70);
      v19 = sub_2759B8988();
      v20 = sub_2759BA668();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v15;
        _os_log_impl(&dword_275819000, v19, v20, "User tapped drilldown animation overlay index %ld", v21, 0xCu);
        MEMORY[0x277C85860](v21, -1, -1);
      }

      sub_2759BA4E8();
      v22 = sub_2759BA518();
      (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
      sub_2758BECCC(a1, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2759BA4C8();
      v23 = sub_2759BA4B8();
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      *(v26 + 16) = v23;
      *(v26 + 24) = v27;
      sub_2758BED30(v9, v26 + v24);
      *(v26 + v25) = v15;
      sub_27590A1A4(0, 0, v12, &unk_2759C4AD8, v26);
    }
  }

  return result;
}

uint64_t sub_2758BE040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_2759BA4C8();
  v5[9] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_2758BE0D8, v7, v6);
}

uint64_t sub_2758BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[8];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4[7];
  v7 = *(v6 + 160);
  if (*(v7 + 16) <= v5)
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x2821820A8](a1, a2, a3, a4);
  }

  sub_27586E058(v7 + 40 * v5 + 32, (v4 + 2));
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
  v10 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v11 = (v6 + *(v10 + 64));
  v12 = *v11;
  v4[12] = *v11;
  if (v12)
  {
    v13 = (v4[7] + *(v10 + 68));
    v14 = *v13;
    v4[13] = *v13;
    if (v14)
    {

      v15 = swift_task_alloc();
      v4[14] = v15;
      *v15 = v4;
      v15[1] = sub_2758BE2F4;
      a1 = v12;
      a2 = v14;
      a3 = v8;
      a4 = v9;

      return MEMORY[0x2821820A8](a1, a2, a3, a4);
    }

    sub_2759B8BB8();
    sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);
  }

  else
  {
    sub_2759B8C08();
    sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  }

  return sub_2759B9158();
}

uint64_t sub_2758BE2F4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2758BE484;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_2758BE418;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2758BE418()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2758BE484()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_2758BE504(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2759BA9E8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2758AC6F8(v3, 0);
  sub_2758BE5FC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t type metadata accessor for ManageStorageDrilldownAnimationView(uint64_t a1)
{
  result = qword_280A0F8D8;
  if (!qword_280A0F8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758BE5FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2759BA9E8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2759BA9E8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_27589B02C(&qword_280A0FA38, &qword_280A0FA30, &unk_2759C4AC0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA30, &unk_2759C4AC0);
            v9 = sub_2758ACA04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ManageStorageAppViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2758BE7C8(uint64_t a1)
{
  sub_2758BEAF0(319, &qword_280A0F8E8, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_2758BEAF0(319, &qword_280A0F8F0, &qword_280A0E808, &qword_2759CC1E0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2758BEAF0(319, &qword_280A0F8F8, &qword_280A0F8B8, &qword_2759C4900, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2758BEAF0(319, &qword_280A0F900, &qword_280A0F8C0, &qword_2759C4908, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2758BEAA4(319, &qword_280A0F908, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_2758BEAA4(319, &qword_280A0F910, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_2758BEAF0(319, &qword_280A0F918, &qword_280A0F920, &qword_2759D0380, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_2758BEB54(319);
                if (v8 <= 0x3F)
                {
                  sub_2758BEBAC(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
                  if (v9 <= 0x3F)
                  {
                    sub_2758BEBAC(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
                    if (v10 <= 0x3F)
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
}

void sub_2758BEAA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2759B9D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2758BEAF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2758BEB54(uint64_t a1)
{
  if (!qword_280A0F928)
  {
    sub_2759B8DA8();
    v1 = sub_2759B8DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0F928);
    }
  }
}

void sub_2758BEBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2758BF284(a4, a5, MEMORY[0x277D233A0]);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2758BEC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F938, &qword_2759C49E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BECCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BED30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758BEDAC()
{
  result = qword_280A0F998;
  if (!qword_280A0F998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F990, &qword_2759C4A38);
    sub_2758BEE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F998);
  }

  return result;
}

unint64_t sub_2758BEE38()
{
  result = qword_280A0F9A0;
  if (!qword_280A0F9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9A8, &qword_2759C4A40);
    sub_2758BEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9A0);
  }

  return result;
}

unint64_t sub_2758BEEC4()
{
  result = qword_280A0F9B0;
  if (!qword_280A0F9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9B8, &qword_2759C4A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9B0);
  }

  return result;
}

void *sub_2758BEF48()
{
  v1 = *(type metadata accessor for ManageStorageDrilldownAnimationView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2758BDA24(v2, v3);
}

void *sub_2758BEFAC(CGFloat a1, CGFloat a2)
{
  v5 = *(type metadata accessor for ManageStorageDrilldownAnimationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2758BDD2C(v6, a1, a2);
}

unint64_t sub_2758BF024()
{
  result = qword_280A0F9F0;
  if (!qword_280A0F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F968, &qword_2759C4A10);
    sub_2758BF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9F0);
  }

  return result;
}

unint64_t sub_2758BF0B0()
{
  result = qword_280A0F9F8;
  if (!qword_280A0F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9E8, &unk_2759C4AA0);
    sub_2758BF13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9F8);
  }

  return result;
}

unint64_t sub_2758BF13C()
{
  result = qword_280A0FA00;
  if (!qword_280A0FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9E0, &qword_2759CA1F0);
    sub_2758BF1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA00);
  }

  return result;
}

unint64_t sub_2758BF1C8()
{
  result = qword_280A0FA08;
  if (!qword_280A0FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9D8, &unk_2759C4A90);
    sub_2758BF284(&qword_280A0E970, type metadata accessor for MicaPlayerView, &unk_2759C18C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA08);
  }

  return result;
}

uint64_t sub_2758BF284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758BF4A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ManageStorageDrilldownAnimationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2758BF518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F970, &qword_2759C4A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758BF588()
{
  result = qword_280A0FA20;
  if (!qword_280A0FA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0FA20);
  }

  return result;
}

uint64_t sub_2758BF5D4(uint64_t a1)
{
  v4 = *(type metadata accessor for ManageStorageDrilldownAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758BE040(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2758BF760()
{
  result = qword_280A0FA40;
  if (!qword_280A0FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F958, &unk_2759C4A00);
    sub_27589B02C(&qword_280A0FA48, &qword_280A0F940, &qword_2759C49E8, &unk_2759C32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA40);
  }

  return result;
}

uint64_t sub_2758BF818(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v50[4] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v6 = (v2 + 16);
  v7 = objc_opt_self();
  v8 = sub_2759B8528();
  v50[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:v50];

  if (v9)
  {
    v10 = v50[0];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v11 = v49;
      if (!*(v49 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v12 = v50[0];
    v13 = sub_2759B8448();

    swift_willThrow();
  }

  v11 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v11 + 16))
  {
LABEL_11:

LABEL_12:
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
    if (*(v16 + 16))
    {
      goto LABEL_13;
    }

LABEL_16:
    v19 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_17;
  }

LABEL_7:
  v14 = sub_27586F8A0(1635017060, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_275864C94(*(v11 + 56) + 32 * v14, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v49;
  if (!*(v49 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v17 = sub_27586F8A0(0x726564616568, 0xE600000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_275864C94(*(v16 + 56) + 32 * v17, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = v49;
LABEL_17:
  v20 = MEMORY[0x277D84F90];
  v48 = a1;
  if (*(v19 + 16) && (v21 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000), (v22 & 1) != 0))
  {
    sub_275864C94(*(v19 + 56) + 32 * v21, v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v23 = v49;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:
  v24 = 0;
  v50[0] = v20;
  p_prots = *(v23 + 16);
LABEL_24:
  v26 = v24;
  while (p_prots != v26)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_40;
    }

    v24 = (v26 + 1);
    objc_allocWithZone(type metadata accessor for ManageStorageAppIconURL(0));

    v28 = ManageStorageAppIconURL.init(_:)(v27);
    v26 = v24;
    if (v28)
    {
      MEMORY[0x277C84160]();
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v20 = v50[0];
      goto LABEL_24;
    }
  }

  *(v3 + 32) = v20;
  p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  if (*(v16 + 16))
  {
    v29 = sub_27586F8A0(0x6553656369766564, 0xED00006E6F697463);
    if (v30)
    {
      sub_275864C94(*(v16 + 56) + 32 * v29, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      if (swift_dynamicCast())
      {
        if (*(v49 + 16) && (v31 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v32 & 1) != 0))
        {
          sub_275864C94(*(v49 + 56) + 32 * v31, v50);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA80, &unk_2759C4BD0);
          if (swift_dynamicCast())
          {
            v33 = *(v49 + 16);

            *v6 = v33;
            goto LABEL_43;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_280A0E338 != -1)
  {
    goto LABEL_59;
  }

LABEL_40:
  v34 = sub_2759B89A8();
  __swift_project_value_buffer(v34, qword_280A238A0);
  v35 = sub_2759B8988();
  v36 = sub_2759BA648();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_275819000, v35, v36, "ManageStorageBackupsDataModel: Missing a device section key", v37, 2u);
    MEMORY[0x277C85860](v37, -1, -1);
  }

LABEL_43:
  if (!*(v16 + 16))
  {
    goto LABEL_50;
  }

  v38 = sub_27586F8A0(0xD000000000000016, 0x80000002759E01C0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_275864C94(*(v16 + 56) + 32 * v38, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  if (!*(v49 + 16) || (v40 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v41 & 1) == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  sub_275864C94(*(v49 + 56) + 32 * v40, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA80, &unk_2759C4BD0);
  if (swift_dynamicCast())
  {
    sub_27585A900(v48, a2);
    v42 = *(v49 + 16);

    *(v3 + 24) = v42;
    return v3;
  }

LABEL_51:
  if (p_prots[103] != -1)
  {
    swift_once();
  }

  v43 = sub_2759B89A8();
  __swift_project_value_buffer(v43, qword_280A238A0);
  v44 = sub_2759B8988();
  v45 = sub_2759BA648();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_275819000, v44, v45, "ManageStorageBackupsDataModel: Missing a temporary device section key", v46, 2u);
    MEMORY[0x277C85860](v46, -1, -1);
  }

  sub_27585A900(v48, a2);

  return v3;
}

uint64_t sub_2758BFFA4(uint64_t a1)
{
  v3 = sub_2759B8AF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v168 = (v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v169 = v164 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v177 = (v164 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v171 = v164 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v166 = v164 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v167 = v164 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v175 = v164 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v170 = v164 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v189 = v164 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v164 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v191 = v164 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v164 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v164 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v164 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v176 = v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v174 = v164 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = v164 - v41;
  v180 = v1;
  *(v1 + 16) = 0;
  v165 = (v1 + 16);
  *(v1 + 24) = 0;
  sub_2759B8C18();
  v181 = *(v4 + 48);
  v182 = v4 + 48;
  v43 = v181(v42, 1, v3);
  v178 = a1;
  v179 = v4;
  if (v43)
  {
    sub_27586BF04(v42, &qword_280A10DE0, &unk_2759CF4C0);
LABEL_6:
    v47 = sub_2758A289C(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v190 = v30;
  v44 = *(v4 + 16);
  v44(v35, v42, v3);
  sub_27586BF04(v42, &qword_280A10DE0, &unk_2759CF4C0);
  v44(v33, v35, v3);
  v45 = (*(v4 + 88))(v33, v3);
  v46 = *(v4 + 8);
  if (v45 != *MEMORY[0x277D23270])
  {
    v48 = *(v4 + 8);
    v46(v33, v3);
    type metadata accessor for DecodableStateError(0);
    sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
    v49 = swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
    v44(v51, v35, v3);
    *&v51[v52] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
    swift_willThrow();
    v48(v35, v3);

    v30 = v190;
    goto LABEL_6;
  }

  v46(v35, v3);
  (*(v4 + 96))(v33, v3);
  v47 = *(*v33 + 16);

  v30 = v190;
LABEL_7:
  v53 = MEMORY[0x277D84F90];
  v54 = *(v47 + 16);
  v190 = v3;
  if (v54)
  {
    v55 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000);
    if (v56)
    {
      v57 = *(v47 + 56);
      v58 = v179;
      v188 = v179[9];
      v60 = v179 + 2;
      v59 = v179[2];
      v59(v30, v57 + v188 * v55, v3);

      v61 = v191;
      v59(v191, v30, v3);
      v186 = v58[11];
      v187 = v58 + 11;
      if (v186(v61, v3) == *MEMORY[0x277D23278])
      {
        v62 = v58[12];
        v173 = v58 + 12;
        v172 = v62;
        v62(v61, v3);
        v63 = *(*v61 + 16);

        v64 = v63;
        v65 = v179;

        v66 = v65[1];
        v191 = (v65 + 1);
        v185 = v66;
        v66(v30, v3);
        v67 = *(v64 + 16);
        if (v67)
        {
          v68 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v69 = MEMORY[0x277D84F90];
          v164[1] = v64;
          v70 = v64 + v68;
          v183 = *MEMORY[0x277D23270];
          v71 = v189;
          v184 = v60;
          do
          {
            v59(v25, v70, v3);
            v59(v71, v25, v3);
            v78 = v186(v71, v3);
            if (v78 == v183)
            {
              v185(v25, v3);
              v172(v71, v3);
              v79 = *(*v71 + 16);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_275870B4C(0, *(v69 + 2) + 1, 1, v69);
              }

              v81 = *(v69 + 2);
              v80 = *(v69 + 3);
              if (v81 >= v80 >> 1)
              {
                v69 = sub_275870B4C((v80 > 1), v81 + 1, 1, v69);
              }

              *(v69 + 2) = v81 + 1;
              *&v69[8 * v81 + 32] = v79;
            }

            else
            {
              v72 = v59;
              v73 = v185;
              v185(v71, v3);
              type metadata accessor for DecodableStateError(0);
              sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
              v74 = swift_allocError();
              v76 = v75;
              v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
              v72(v76, v25, v3);
              *(v76 + v77) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
              swift_willThrow();
              v73(v25, v3);
              v59 = v72;
            }

            v71 = v189;
            v70 += v188;
            --v67;
            v3 = v190;
          }

          while (v67);
          v191 = 0;

          goto LABEL_25;
        }

        v191 = 0;
      }

      else
      {
        v82 = v30;
        v83 = v58[1];
        v83(v61, v3);
        type metadata accessor for DecodableStateError(0);
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
        v84 = swift_allocError();
        v86 = v85;
        v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v59(v86, v82, v3);
        *&v86[v87] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v83(v82, v3);
        v191 = 0;
      }

      v69 = MEMORY[0x277D84F90];
LABEL_25:
      v53 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v191 = 0;

  v69 = MEMORY[0x277D84F90];
LABEL_26:
  v88 = 0;
  v89 = v53;
  v192 = v53;
  p_prots = *(v69 + 2);
  v91 = v180;
LABEL_27:
  v92 = v88;
  while (p_prots != v92)
  {
    if (v92 >= *(v69 + 2))
    {
      __break(1u);
LABEL_68:
      swift_once();
      goto LABEL_45;
    }

    v88 = (v92 + 1);

    v94 = sub_2758C17A4(v93);
    v95 = objc_allocWithZone(type metadata accessor for ManageStorageAppIconURL(0));
    v96 = ManageStorageAppIconURL.init(_:)(v94);

    v92 = v88;
    if (v96)
    {
      MEMORY[0x277C84160](v97);
      if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v89 = v192;
      goto LABEL_27;
    }
  }

  *(v91 + 32) = v89;
  v98 = v174;
  sub_2759B8C18();
  v99 = v181(v98, 1, v3);
  p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
  v100 = v175;
  if (v99)
  {
    sub_27586BF04(v98, &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v101 = v179;
    v102 = v179[2];
    v103 = v170;
    v102(v170, v98, v3);
    sub_27586BF04(v98, &qword_280A10DE0, &unk_2759CF4C0);
    v102(v100, v103, v3);
    v104 = v101[11];
    v105 = v104(v100, v3);
    v106 = v101[1];
    if (v105 == *MEMORY[0x277D23270])
    {
      v191 = v101[1];
      v106(v103, v3);
      v107 = v101[12];
      v107(v100, v3);
      v108 = *(*v100 + 16);

      if (*(v108 + 16) && (v109 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v110 & 1) != 0))
      {
        v111 = v167;
        v112 = v190;
        v102(v167, *(v108 + 56) + v179[9] * v109, v190);

        v113 = v166;
        v102(v166, v111, v112);
        if (v104(v113, v112) == *MEMORY[0x277D23278])
        {
          v107(v113, v112);
          v114 = *(*v113 + 16);

          (v191)(v111, v112);
          v115 = *(v114 + 16);

          *v165 = v115;
          v91 = v180;
          v88 = v177;
          v3 = v112;
          v69 = v176;
          p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
          goto LABEL_48;
        }

        v151 = v191;
        (v191)(v113, v112);
        type metadata accessor for DecodableStateError(0);
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
        v152 = v111;
        v153 = swift_allocError();
        v155 = v154;
        v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v102(v155, v152, v112);
        *&v155[v156] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v151(v152, v112);
        v91 = v180;
        v3 = v112;
      }

      else
      {

        v91 = v180;
        v3 = v190;
      }
    }

    else
    {
      v116 = v101[1];
      v106(v100, v3);
      type metadata accessor for DecodableStateError(0);
      sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
      v117 = swift_allocError();
      v118 = v103;
      v120 = v119;
      v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
      v102(v120, v118, v3);
      *&v120[v121] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
      swift_willThrow();
      v116(v118, v3);
    }

    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  }

  v69 = v176;
  v88 = v177;
  if (p_prots[103] != -1)
  {
    goto LABEL_68;
  }

LABEL_45:
  v122 = sub_2759B89A8();
  __swift_project_value_buffer(v122, qword_280A238A0);
  v123 = sub_2759B8988();
  v124 = sub_2759BA648();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&dword_275819000, v123, v124, "ManageStorageBackupsDataModel: Missing a device section key", v125, 2u);
    MEMORY[0x277C85860](v125, -1, -1);
  }

LABEL_48:
  sub_2759B8C18();
  if (v181(v69, 1, v3))
  {
    sub_27586BF04(v69, &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v126 = v179;
    v127 = v179[2];
    v128 = v171;
    v127(v171, v69, v3);
    sub_27586BF04(v69, &qword_280A10DE0, &unk_2759CF4C0);
    v127(v88, v128, v3);
    v129 = v126[11];
    v130 = v129(v88, v3);
    v131 = v126[1];
    if (v130 == *MEMORY[0x277D23270])
    {
      v191 = v126[1];
      v131(v128, v3);
      v189 = v126[12];
      (v189)(v88, v3);
      count = (*v88)[2].count;

      if (*(count + 16) && (v133 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v134 & 1) != 0))
      {
        v135 = v169;
        v136 = v190;
        v127(v169, (*(count + 56) + v179[9] * v133), v190);

        v137 = v168;
        v127(v168, v135, v136);
        if (v129(v137, v136) == *MEMORY[0x277D23278])
        {

          (v189)(v137, v136);
          v138 = (*v137)[2].count;

          (v191)(v169, v136);
          v139 = *(v138 + 16);

          v91 = v180;
          *(v180 + 24) = v139;
          return v91;
        }

        v157 = v191;
        (v191)(v137, v136);
        type metadata accessor for DecodableStateError(0);
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
        v158 = swift_allocError();
        v160 = v159;
        v161 = v136;
        v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v163 = v169;
        v127(v160, v169, v161);
        *&v160[v162] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v157(v163, v161);
      }

      else
      {
      }

      v91 = v180;
    }

    else
    {
      v140 = v126[1];
      v131(v88, v3);
      type metadata accessor for DecodableStateError(0);
      sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError, &unk_2759C5438);
      v141 = swift_allocError();
      v142 = v128;
      v144 = v143;
      v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
      v127(v144, v142, v3);
      *&v144[v145] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
      swift_willThrow();
      v140(v142, v3);
    }

    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  }

  if (p_prots[103] != -1)
  {
    swift_once();
  }

  v146 = sub_2759B89A8();
  __swift_project_value_buffer(v146, qword_280A238A0);
  v147 = sub_2759B8988();
  v148 = sub_2759BA648();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&dword_275819000, v147, v148, "ManageStorageBackupsDataModel: Missing a temporary device section key", v149, 2u);
    MEMORY[0x277C85860](v149, -1, -1);
  }

  return v91;
}

uint64_t sub_2758C14DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
    v2 = sub_2759BAA28();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_275864C94(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2758A2ECC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2758A2ECC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2758A2ECC(v31, v32);
    result = sub_2759BA858();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2758A2ECC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2758C17A4(uint64_t a1)
{
  v2 = sub_2759B8AF8();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F400, &unk_2759C39C0);
    v8 = sub_2759BAA28();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_2758C3B0C(v26, v45);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_2758A2ECC(&v51, v53);
    sub_2758A2ECC(v53, v54);
    sub_2758A2ECC(v54, &v52);
    result = sub_27586F8A0(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_2758A2ECC(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_2758A2ECC(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2758C1BAC()
{
  v1 = sub_2759B8AF8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v29 - v6);
  v31 = v0;
  v8 = sub_2758C1F20();
  v10 = MEMORY[0x277D84F98];
  if (v9)
  {
    v11 = v9;
    v29 = "BACKUP_CAPTION_DEVICES";
    v30 = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = 1;
    *v7 = v12;
    v13 = *(v2 + 104);
    v13(v7, *MEMORY[0x277D23258], v1);
    v14 = *(v2 + 32);
    v14(v5, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v10;
    sub_2759068D8(v5, 0xD000000000000010, v29 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
    v16 = v32;
    v29 = "backupHasCaption";
    v17 = swift_allocObject();
    *(v17 + 16) = v30;
    *(v17 + 24) = v11;
    *v7 = v17;
    v13(v7, *MEMORY[0x277D232A0], v1);
    v14(v5, v7, v1);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v16;
    sub_2759068D8(v5, 0xD000000000000011, v29 | 0x8000000000000000, v18);
    v10 = v32;
  }

  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = *(v31 + 16);
  *v7 = v19;
  v21 = *MEMORY[0x277D23248];
  v22 = *(v2 + 104);
  v22(v7, v21, v1);
  v23 = *(v2 + 32);
  v23(v5, v7, v1);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v10;
  sub_2759068D8(v5, 0x6F43656369766564, 0xEB00000000746E75, v24);
  v25 = v32;
  v30 = "del";
  v26 = swift_allocObject();
  *(v26 + 16) = *(v20 + 24);
  *v7 = v26;
  v22(v7, v21, v1);
  v23(v5, v7, v1);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v25;
  sub_2759068D8(v5, 0xD000000000000014, v30 | 0x8000000000000000, v27);
  return v32;
}

uint64_t sub_2758C1F20()
{
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED80, &unk_2759C4BC0);
  result = swift_allocObject();
  *(result + 16) = xmmword_2759C17A0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v8;
    *(result + 32) = v7;
    v9 = sub_2759BA268();

    return v9;
  }

  return result;
}

uint64_t sub_2758C2094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA70, &qword_2759C4B60);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2758C2190;
  v4 = *(v0 + 24);

  return MEMORY[0x282200600](v0 + 16, v1, v2, 0, 0, &unk_2759C4B70, v4, v1);
}

uint64_t sub_2758C2190()
{

  return MEMORY[0x2822009F8](sub_2758C228C, 0, 0);
}

void *sub_2758C228C()
{
  v32 = v1;
  v31 = *(v1 + 16);

  sub_2758C300C(&v31);

  v2 = 0;
  v3 = v31;
  v4 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = 16 * v2 + 40;
  while (v5 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_23:
      v9 = sub_2759BA9E8();
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_11;
    }

    v8 = *(v3 + v7);
    v7 += 16;
    ++v2;
    if (v8)
    {
      v0 = v8;
      MEMORY[0x277C84160]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v6 = v31;
      goto LABEL_2;
    }
  }

  v0 = v6;

  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  v9 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_24:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_11:
  v28 = v1;
  v31 = v4;
  result = sub_275950970(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = v31;
  v30 = objc_opt_self();
  sub_2758C3C28();
  v12 = 0;
  v13 = v0;
  v29 = v0 & 0xC000000000000001;
  v14 = v0;
  do
  {
    if (v29)
    {
      v15 = MEMORY[0x277C846A0](v12, v13);
    }

    else
    {
      v15 = *(v13 + 8 * v12 + 32);
    }

    v16 = v15;
    v17 = [v30 whiteColor];
    v18 = [v17 CGColor];

    v19 = sub_275908060(v18, 40.0, 40.0);
    if (!sub_27594991C(0x453143314331, 0xE600000000000000, 1.0))
    {
      sub_2759B9C28();
    }

    v20 = sub_2759BA748();
    v21 = [v20 CGColor];

    v22 = sub_275908060(v21, 40.0, 40.0);
    v31 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_275950970((v23 > 1), v24 + 1, 1);
      v11 = v31;
    }

    ++v12;
    *(v11 + 16) = v24 + 1;
    v25 = v11 + 16 * v24;
    *(v25 + 32) = v19;
    *(v25 + 40) = v22;
    v13 = v14;
  }

  while (v9 != v12);

  v1 = v28;
LABEL_25:
  v26 = sub_27595CF50(v11);

  v27 = *(v1 + 8);

  return v27(v26);
}

uint64_t sub_2758C2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA78, &qword_2759C4B90);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758C2734, 0, 0);
}

uint64_t sub_2758C2734()
{
  v1 = *(*(v0 + 104) + 32);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2759BA9E8())
  {
    v3 = 0;
    v25 = i;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v26 = v1;
    while (1)
    {
      if (v28)
      {
        v5 = MEMORY[0x277C846A0](v3, v1);
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v29 = v3 + 1;
      v8 = *(v0 + 112);
      v7 = *(v0 + 120);
      v9 = *(v0 + 104);
      v10 = sub_2759BA518();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v9;
      v12[5] = v6;
      v12[6] = v3;
      sub_2758AD388(v7, v8);
      LODWORD(v7) = (*(v11 + 48))(v8, 1, v10);

      v14 = v6;
      v15 = *(v0 + 112);
      if (v7 == 1)
      {
        sub_27586BF04(*(v0 + 112), &unk_280A0E510, &qword_2759C33C0);
        if (!*v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2759BA508();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_13:
          v16 = 0;
          v18 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_2759BA468();
      v18 = v17;
      swift_unknownObjectRelease();
LABEL_14:
      v19 = **(v0 + 96);
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_2759C4BA0;
      *(v20 + 24) = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
      v21 = v18 | v16;
      if (v18 | v16)
      {
        v21 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      v4 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v19;
      swift_task_create();

      sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
      ++v3;
      v1 = v26;
      if (v29 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
  sub_2759BA498();
  *(v0 + 152) = MEMORY[0x277D84F90];
  v22 = swift_task_alloc();
  *(v0 + 160) = v22;
  *v22 = v0;
  v22[1] = sub_2758C2B28;
  v23 = *(v0 + 128);

  return MEMORY[0x2822002E8](v0 + 72, 0, 0, v23);
}

uint64_t sub_2758C2B28()
{

  return MEMORY[0x2822009F8](sub_2758C2C24, 0, 0);
}

uint64_t sub_2758C2C24()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 88);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    *v10 = v9;

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    if (v1 != 1)
    {
      v14 = *(v0 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 152);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_275870DA8(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      v6 = v14;
      if (v5 >= v4 >> 1)
      {
        v12 = sub_275870DA8((v4 > 1), v5 + 1, 1, v3);
        v6 = v14;
        v3 = v12;
      }

      v3[2] = v5 + 1;
      *&v3[2 * v5 + 4] = v6;
      *(v0 + 152) = v3;
    }

    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_2758C2B28;
    v8 = *(v0 + 128);

    return MEMORY[0x2822002E8](v0 + 72, 0, 0, v8);
  }
}

uint64_t sub_2758C2DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_2758C2E90;

  return sub_2758C3DF4();
}

uint64_t sub_2758C2E90(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2758C2F90, 0, 0);
}

uint64_t sub_2758C2F90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 24);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2758C2FB0()
{

  return swift_deallocClassInstance();
}

void sub_2758C300C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2758C38F0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_2759BAA88();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB0, &qword_2759C2688);
      v7 = sub_2759BA408();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_2758C3160(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_2758C3160(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_2758C38DC(v8);
    }

    v79 = v8 + 16;
    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_2758C36D8((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_275870CA4(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v33 = *(v8 + 3);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      v8 = sub_275870CA4((v33 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = v8 + 32;
    v36 = &v8[16 * v5 + 32];
    *v36 = v9;
    *(v36 + 1) = v7;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[16 * v34];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[16 * v34];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v5 - 16];
        v75 = *v74;
        v76 = &v35[16 * v5];
        v77 = *(v76 + 1);
        sub_2758C36D8((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *(v8 + 2);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v5], v76 + 16, 16 * (v78 - 1 - v5));
        *(v8 + 2) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_2758C36D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_2758C3904(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2758C39F8;

  return v5(v2 + 16);
}

uint64_t sub_2758C39F8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2758C3B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758C3B7C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_27585F7A0;

  return sub_2758C2620(a1, a2, v2);
}

unint64_t sub_2758C3C28()
{
  result = qword_280A0EF48;
  if (!qword_280A0EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0EF48);
  }

  return result;
}

uint64_t sub_2758C3C74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758C2DE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2758C3D3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_2758C3904(a1, v4);
}

uint64_t sub_2758C3DF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v2 = sub_2759B8508();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2758C3F44;

  return sub_2758F6610(v1);
}

uint64_t sub_2758C3F44()
{

  return MEMORY[0x2822009F8](sub_2758C4040, 0, 0);
}

uint64_t sub_2758C4040()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27586BF04(v3, &unk_280A0EB10, &qword_2759C0740);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    v0[9] = [objc_opt_self() sharedSession];
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2758C41D0;
    v7 = v0[7];

    return MEMORY[0x28211ED00](v7, 0);
  }
}

uint64_t sub_2758C41D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 112) = v3;

  if (v3)
  {
    v6 = sub_2758C4644;
  }

  else
  {

    v6 = sub_2758C42F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2758C42F0()
{
  v39 = v0;
  v2 = v0[11];
  v1 = v0[12];
  sub_2758755BC(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_2759B8528();
  v5 = [v3 initWithData_];

  sub_27585A900(v2, v1);
  if (v5)
  {
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];
    (*(v0[4] + 8))(v0[7], v0[3]);
    sub_27585A900(v8, v6);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[3];
    v12 = v0[4];
    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_2815ADE70);
    (*(v12 + 16))(v9, v10, v11);
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[3];
    v23 = v0[4];
    if (v16)
    {
      v37 = v0[12];
      v24 = swift_slowAlloc();
      v36 = v19;
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      sub_2758C496C(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v34 = v17;
      v35 = v21;
      v26 = sub_2759BAA98();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v20, v22);
      v30 = sub_2758937B8(v26, v28, &v38);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_275819000, v14, v15, "ManageStorageDrilldownAnimateOverlayImageDataModel, unable to create image from data, url: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x277C85860](v25, -1, -1);
      MEMORY[0x277C85860](v24, -1, -1);

      sub_27585A900(v36, v37);
      v29(v35, v22);
    }

    else
    {

      sub_27585A900(v19, v18);
      v31 = *(v23 + 8);
      v31(v20, v22);
      v31(v21, v22);
    }

    v5 = 0;
  }

  v32 = v0[1];

  return v32(v5);
}

uint64_t sub_2758C4644()
{
  v31 = v0;

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  (*(v4 + 16))(v3, v2, v5);
  v7 = v1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 112);
  v12 = *(v0 + 56);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 24);
  if (v10)
  {
    v29 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 136315394;
    sub_2758C496C(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_2759BAA98();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_2758937B8(v17, v19, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v27 = v23;
    _os_log_impl(&dword_275819000, v8, v9, "ManageStorageDrilldownAnimateOverlayImageDataModel, error loading icon from url: %s, error: %@", v16, 0x16u);
    sub_27586BF04(v27, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);

    v20(v29, v15);
  }

  else
  {

    v24 = *(v14 + 8);
    v24(v13, v15);
    v24(v12, v15);
  }

  v25 = *(v0 + 8);

  return v25(0);
}

uint64_t sub_2758C496C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

const char *FeatureFlag.domain.getter()
{
  if (*v0)
  {
    return "StorageManagement";
  }

  else
  {
    return "iCloudSettings";
  }
}

const char *FeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "StorageUIV2";
  }

  else
  {
    return "stelvio";
  }
}

uint64_t FeatureFlag.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v7[3] = &type metadata for FeatureFlag;
  v7[4] = sub_2758C4A6C(a1, a2, a3);
  LOBYTE(v7[0]) = v4;
  v5 = sub_2759B86A8();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

unint64_t sub_2758C4A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FA88;
  if (!qword_280A0FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA88);
  }

  return result;
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t sub_2758C4B64()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t sub_2758C4BD8(uint64_t a1)
{
  v2 = *v1;
  sub_2759BABD8();
  MEMORY[0x277C84980](v2);
  return sub_2759BAC08();
}

unint64_t sub_2758C4C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FA90;
  if (!qword_280A0FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA90);
  }

  return result;
}

const char *sub_2758C4C74()
{
  if (*v0)
  {
    return "StorageManagement";
  }

  else
  {
    return "iCloudSettings";
  }
}

const char *sub_2758C4CA4()
{
  if (*v0)
  {
    return "StorageUIV2";
  }

  else
  {
    return "stelvio";
  }
}

uint64_t sub_2758C4CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2758C4D18(a1, a2, a3);
  result = sub_2759B9428();
  qword_280A23890 = result;
  return result;
}

unint64_t sub_2758C4D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FA98;
  if (!qword_280A0FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA98);
  }

  return result;
}

void sub_2758C4DE0(void *a1)
{
  v3 = type metadata accessor for WebViewRepresentable(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  [a1 setDelegate_];
  v6 = sub_2759B84B8();
  sub_2758C77B8(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebViewRepresentable);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2758C7820(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WebViewRepresentable);
  aBlock[4] = sub_2758C7888;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275956A0C;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);

  [a1 loadURL:v6 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2758C4F98(char a1, void *a2, uint64_t a3)
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);
  v7 = a2;
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 10) = v13;
    *v11 = v14;
    _os_log_impl(&dword_275819000, v8, v9, "WebViewRepresentable load finished with success %{BOOL}d error %@", v10, 0x12u);
    sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v15 = type metadata accessor for WebViewRepresentable(0);
  return (*(a3 + *(v15 + 24)))(a1 & 1, a2);
}

id sub_2758C513C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D46238]);

  return [v0 init];
}

uint64_t sub_2758C51C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable, &unk_2759C4F98);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2758C5254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable, &unk_2759C4F98);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2758C52E8(uint64_t a1)
{
  sub_2758C6F80(qword_280A0FB78, type metadata accessor for WebViewRepresentable, &unk_2759C4F98);
  sub_2759B9788();
  __break(1u);
}

uint64_t sub_2758C53E4()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings36ICSRemoteUIWebViewControllerDelegate_dismiss;
  v2 = sub_2759B8F38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2758C54A8(uint64_t a1)
{
  result = sub_2759B8F38();
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

uint64_t sub_2758C5538@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RemoteUIWebView(0);
  sub_2758C7240(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8F38();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2758C5728@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for RemoteUIWebView(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2759B8F38();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WebViewRepresentable(0);
  MEMORY[0x28223BE20](v38);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_2759B8508();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[3];
  if (v15)
  {
    v16 = v14;

    sub_2759B8C38();

    sub_2759B84F8();

    v17 = v12;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      result = sub_27586BF04(v10, &unk_280A0EB10, &qword_2759C0740);
      v19 = 0;
LABEL_6:
      *v42 = v19;
      return result;
    }

    v20 = *(v12 + 32);
    v21 = v16;
    v20(v16, v10, v11);
    v22 = v41;
    (*(v17 + 16))(v41, v16, v11);
    v23 = v35;
    v34 = v17;
    sub_2758C5538(v35);
    type metadata accessor for ICSRemoteUIWebViewControllerDelegate(0);
    v24 = swift_allocObject();
    (*(v36 + 32))(v24 + OBJC_IVAR____TtC14iCloudSettings36ICSRemoteUIWebViewControllerDelegate_dismiss, v23, v37);
    v25 = v40;
    sub_2758C77B8(v2, v40, type metadata accessor for RemoteUIWebView);
    v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v27 = v22;
    v28 = swift_allocObject();
    sub_2758C7820(v25, v28 + v26, type metadata accessor for RemoteUIWebView);
    v29 = v38;
    *(v27 + *(v38 + 20)) = v24;
    v30 = (v27 + *(v29 + 24));
    *v30 = sub_2758C7214;
    v30[1] = v28;
    v31 = sub_27595CE18(v2[7]);
    v32 = v2[5];
    if (v32)
    {
      v33 = v31;

      v19 = sub_275964C9C(v33, v15, v32);

      sub_2758C73B8(v27, type metadata accessor for WebViewRepresentable);
      result = (*(v34 + 8))(v21, v11);
      goto LABEL_6;
    }
  }

  else
  {
    sub_2759B8C08();
    sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_2759B9158();
    __break(1u);
  }

  sub_2759B8BB8();
  sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_2758C5CAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[3])
  {
    sub_2759B8C08();
    sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_2759B9158();
    __break(1u);
    goto LABEL_7;
  }

  if (!a3[5])
  {
LABEL_7:
    sub_2759B8BB8();
    sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  sub_2759BA438();
}

uint64_t sub_2758C5DE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  if (v2 != 1)
  {
    v4 = 0x616F4C6469446E6FLL;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (*a2 != 1)
  {
    v8 = 0x616F4C6469446E6FLL;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_2758C5ED8()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2758C5F6C(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2758C5FEC(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_2758C607C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2758C776C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2758C60AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (v2 != 1)
  {
    v5 = 0x616F4C6469446E6FLL;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2758C60FC()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x616F4C6469446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_2758C6148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2758C776C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2758C6170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758C72B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758C61AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758C72B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2758C61E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v61 = sub_2759B8BD8();
  v48 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2759B8C48();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2759B85A8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB00, &qword_2759C4F20);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = v47 - v8;
  v10 = type metadata accessor for RemoteUIWebView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[2] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  v13 = MEMORY[0x277D233A0];
  sub_2758C6F80(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v14 = sub_2759B9168();
  v12[3] = v14;
  v12[4] = v15;
  sub_2759B8BB8();
  sub_2758C6F80(&qword_280A0F8C8, MEMORY[0x277D232E8], v13);
  v16 = sub_2759B9168();
  v12[5] = v16;
  v12[6] = v17;
  v52 = v10;
  v18 = *(v10 + 36);
  *(v12 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758C72B0(v19, v20, v21);
  v58 = v9;
  v22 = v62;
  sub_2759BAC18();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_27586BF04(v12 + v18, &qword_280A0FAB0, &qword_2759C4DD0);
  }

  else
  {
    v23 = v55;
    v47[1] = v16;
    v47[2] = v14;
    v24 = v56;
    v62 = a1;
    LOBYTE(v63[0]) = 0;
    v25 = sub_2759BAA58();
    v47[0] = v18;
    if (!v26)
    {
      sub_2759B8598();
      v28 = sub_2759B8588();
      v30 = v29;
      (*(v50 + 8))(v23, v51);
      v26 = v30;
      v25 = v28;
    }

    v31 = v12;
    *v12 = v25;
    v12[1] = v26;
    LOBYTE(v63[0]) = 1;
    sub_2758C6F80(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v32 = v54;
    sub_2759BAA78();
    (*(v53 + 32))(v31 + *(v52 + 40), v24, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v64) = 2;
    sub_2758C7304();
    sub_2759BAA68();
    if (*&v63[0])
    {
      v33 = *&v63[0];
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);
    if (v34)
    {
      v53 = v31;
      v64 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v34, 0);
      v35 = v64;
      v36 = v48 + 16;
      v37 = *(v48 + 16);
      v38 = *(v48 + 80);
      v54 = v33;
      v39 = v33 + ((v38 + 32) & ~v38);
      v55 = *(v48 + 72);
      v56 = v37;
      v40 = (v48 + 8);
      v41 = v61;
      do
      {
        v42 = v60;
        v43 = v36;
        (v56)(v60, v39, v41);
        sub_2759B8BC8();
        v41 = v61;
        (*v40)(v42, v61);
        v64 = v35;
        v45 = *(v35 + 16);
        v44 = *(v35 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2759509B0((v44 > 1), v45 + 1, 1);
          v41 = v61;
          v35 = v64;
        }

        *(v35 + 16) = v45 + 1;
        sub_275827D1C(v63, v35 + 40 * v45 + 32);
        v39 += v55;
        --v34;
        v36 = v43;
      }

      while (v34);
      (*(v57 + 8))(v58, v59);

      v46 = v49;
      v31 = v53;
    }

    else
    {

      (*(v57 + 8))(v58, v59);
      v35 = MEMORY[0x277D84F90];
      v46 = v49;
    }

    *(v31 + 56) = v35;
    sub_2758C77B8(v31, v46, type metadata accessor for RemoteUIWebView);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_2758C73B8(v31, type metadata accessor for RemoteUIWebView);
  }
}

uint64_t sub_2758C69D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView, &unk_2759C4EC8);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2758C6A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView, &unk_2759C4E78);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2758C6AD8(uint64_t a1)
{
  v2 = sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView, &unk_2759C4E78);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2758C6B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758C6F80(&qword_280A0FAF0, type metadata accessor for RemoteUIWebView, &unk_2759C4E40);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2758C6BF4()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  v1 = sub_2759B8988();
  v2 = sub_2759BA668();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_275819000, v1, v2, "ICSRemoteUIWebViewControllerDelegate dismissing", v3, 2u);
    MEMORY[0x277C85860](v3, -1, -1);
  }

  return sub_2759B8F28();
}

void sub_2758C6D28(uint64_t a1)
{
  sub_2758C702C(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2758C6EEC(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
    if (v2 <= 0x3F)
    {
      sub_2758C6EEC(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
      if (v3 <= 0x3F)
      {
        sub_2758C6FC8(319);
        if (v4 <= 0x3F)
        {
          sub_2758C702C(319, &qword_280A0FAC8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2759B8C48();
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

void sub_2758C6EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2758C6F80(a4, a5, MEMORY[0x277D233A0]);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2758C6F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2758C6FC8(uint64_t a1)
{
  if (!qword_280A0F918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F920, &qword_2759D0380);
    v1 = sub_2759BA448();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0F918);
    }
  }
}

void sub_2758C702C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2758C70AC(uint64_t a1, uint64_t a2)
{
  sub_2758C6F80(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView, &unk_2759C4EC8);
  sub_2758C6F80(&qword_280A0FAD8, type metadata accessor for RemoteUIWebView, &unk_2759C4E78);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758C7240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758C72B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FB08;
  if (!qword_280A0FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB08);
  }

  return result;
}

unint64_t sub_2758C7304()
{
  result = qword_280A0FB18;
  if (!qword_280A0FB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FB10, &qword_2759C79D0);
    sub_2758C6F80(&qword_280A0FB20, MEMORY[0x277D232F0], MEMORY[0x277D232F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB18);
  }

  return result;
}

uint64_t sub_2758C73B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2758C7450(uint64_t a1)
{
  result = sub_2759B8508();
  if (v2 <= 0x3F)
  {
    result = sub_2758C74EC();
    if (v3 <= 0x3F)
    {
      result = sub_2758C7550();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2758C74EC()
{
  result = qword_280A0FB38;
  if (!qword_280A0FB38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280A0FB38);
  }

  return result;
}

unint64_t sub_2758C7550()
{
  result = qword_280A0FB40;
  if (!qword_280A0FB40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280A0FB40);
  }

  return result;
}

unint64_t sub_2758C75A0()
{
  result = qword_280A0FB48;
  if (!qword_280A0FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FB50, &unk_2759C4F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB48);
  }

  return result;
}

unint64_t sub_2758C7668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FB60;
  if (!qword_280A0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB60);
  }

  return result;
}

unint64_t sub_2758C76C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FB68;
  if (!qword_280A0FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB68);
  }

  return result;
}

unint64_t sub_2758C7718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FB70;
  if (!qword_280A0FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB70);
  }

  return result;
}

unint64_t sub_2758C776C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2758C77B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2758C7820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2758C78B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2758C7A8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2759B89A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2759B8998();
}

uint64_t sub_2758C7B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2758C7B60(uint64_t *a1, int a2)
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

uint64_t sub_2758C7BA8(uint64_t result, int a2, int a3)
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

uint64_t (*sub_2758C7C84())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC08, &unk_2759C5260);
  sub_2759B9D68();
  *(swift_allocObject() + 16) = v1;
  return sub_2758C8304;
}

uint64_t sub_2758C7D0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_2759B9DC8();
  v7 = sub_2759B9648();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_2758C82A0();
  swift_getOpaqueTypeMetadata2();
  v24 = v6;
  v25 = v7;
  v26 = WitnessTable;
  v27 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_2759B9E58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-v15];
  sub_2759BA038();
  v21 = v4;
  v22 = v5;
  v23 = v2;
  sub_2759B9E48();
  swift_getWitnessTable();
  v17 = *(v11 + 16);
  v17(v16, v14, v10);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v17(a2, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_2758C7F44@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22[1] = a2;
  v22[2] = a3;
  v25 = a4;
  v4 = sub_2759B9648();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2759B9DC8();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  WitnessTable = swift_getWitnessTable();
  v22[0] = WitnessTable;
  v11 = sub_2758C82A0();
  v26 = v7;
  v27 = v4;
  v28 = WitnessTable;
  v29 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  sub_2758C7C84();
  sub_2759B9DB8();
  sub_2759B9638();
  sub_2759B9A68();
  (*(v24 + 8))(v6, v4);
  (*(v23 + 8))(v9, v7);
  v19 = *(v13 + 16);
  v19(v18, v16, OpaqueTypeMetadata2);
  v20 = *(v13 + 8);
  v20(v16, OpaqueTypeMetadata2);
  v19(v25, v18, OpaqueTypeMetadata2);
  return (v20)(v18, OpaqueTypeMetadata2);
}

unint64_t sub_2758C82A0()
{
  result = qword_280A0FC00;
  if (!qword_280A0FC00)
  {
    sub_2759B9648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FC00);
  }

  return result;
}

uint64_t sub_2758C8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758C83C8, v6, v5);
}

uint64_t sub_2758C83C8()
{
  v1 = *(v0 + 32);

  v2 = *(v1 + 16);
  if (v2)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v0 + 16) = v2;
    sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
    v4 = v2;
    sub_2759B8628();
  }

  **(v0 + 24) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758C851C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2758C8578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_2758C8628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = swift_task_alloc();
  v3 = *v0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;

  return MEMORY[0x2822009F8](sub_2758C86C4, 0, 0);
}

uint64_t sub_2758C86C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_2759BA4C8();

  v4 = sub_2759BA4B8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_27587DA58(0, 0, v1, &unk_2759C5390, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2758C87E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();
}

uint64_t sub_2758C89A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_2758C8A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2758C8330(a1, v4, v5, v6);
}

uint64_t sub_2758C8B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages);
}

uint64_t sub_2758C8BE4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2758C8D14(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8628();
}

void sub_2758C8CD0(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_2758C8D14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2758C8D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2758C8DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for DecodableStateError(uint64_t a1)
{
  result = qword_280A0FC28;
  if (!qword_280A0FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758C8EC0(uint64_t a1)
{
  sub_2758C8F94(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_2759B8AF8();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_2758C8F94(uint64_t a1)
{
  if (!qword_280A0FC38)
  {
    sub_2759B8AF8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FC40, &qword_2759C5418);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280A0FC38);
    }
  }
}

uint64_t sub_2758C9038(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2758C9088(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[3] = a4;
  v35[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_280A238D0);
  sub_27586E058(v35, &v33);
  sub_27586E058(v35, v32);
  v11 = sub_2759B8988();
  v12 = sub_2759BA638();
  if (os_log_type_enabled(v11, v12))
  {
    v30 = a2;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v33, v34);
    v14 = *(a5 + 8);
    v15 = v14(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v18 = sub_2758937B8(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    if ((*(a5 + 16))(a4, a5))
    {
      sub_2758C945C();
      v19 = sub_2759BA1F8();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
    v24 = sub_2758937B8(v19, v21, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_275819000, v11, v12, "Sending message %s with body %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v29, -1, -1);
    MEMORY[0x277C85860](v13, -1, -1);

    a2 = v30;
    v22 = v14(a4, a5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v33);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v22 = (*(a5 + 8))(a4, a5);
  }

  v25 = v22;
  v26 = v23;
  sub_27586E058(v35, &v33);
  v27 = swift_allocObject();
  sub_275827D1C(&v33, v27 + 16);
  LOBYTE(v25) = a2(v25, v26, sub_2758C9408, v27);

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v25 & 1;
}

uint64_t sub_2758C9408()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_2758C945C()
{
  result = qword_280A0F7B8;
  if (!qword_280A0F7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0F7B8);
  }

  return result;
}

uint64_t sub_2758C94A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2758C94F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for StaticHeaderImageView(uint64_t a1)
{
  result = qword_280A0FC50;
  if (!qword_280A0FC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758C95B0(uint64_t a1)
{
  sub_2758C97E8(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_27585AF74(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DefaultIconLoader();
      if (v3 <= 0x3F)
      {
        sub_2758C97E8(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2758C984C(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2758C97E8(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2758C984C(319, &qword_280A0FC70, &qword_280A0FC78, &qword_2759C5530, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_2758C984C(319, &qword_280A0FC80, &qword_280A0FC88, &qword_2759C5538, MEMORY[0x277CE10B8]);
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

void sub_2758C97E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2758C984C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2758C98B0(uint64_t a1@<X8>)
{
  v50 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCB8, &qword_2759C5660);
  MEMORY[0x28223BE20](v46);
  v42 = v35 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC0, &qword_2759C5668);
  MEMORY[0x28223BE20](v44);
  v45 = v35 - v3;
  v4 = type metadata accessor for StaticHeaderImageView(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCC8, &qword_2759C5670);
  MEMORY[0x28223BE20](v49);
  v40 = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v35 - v8;
  v10 = sub_2759B8A38();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCD0, &qword_2759C5678);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCD8, &qword_2759C5680);
  MEMORY[0x28223BE20](v16);
  v18 = (v35 - v17);
  v19 = v1;
  v52 = *(v1 + *(v4 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCE0, &qword_2759C5688);
  sub_2759B9D68();
  if (v51)
  {
    v20 = v51;
    sub_2759B9C98();

    v21 = sub_2759B9CA8();

    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    sub_2758CD0FC();

    sub_2759B95E8();
  }

  else
  {
    v35[1] = v5;
    v36 = v18;
    v23 = v41;
    v22 = v42;
    v37 = v15;
    v38 = v16;
    v39 = v13;
    sub_27586FBC8(v19 + *(v4 + 40), v9, &qword_280A0E6B0, &qword_2759C0D00);
    if ((*(v47 + 48))(v9, 1, v48) == 1)
    {
      sub_27586BF04(v9, &qword_280A0E6B0, &qword_2759C0D00);
      v24 = v22;
      sub_2759B8E88();
      v25 = &v22[*(v46 + 36)];
      sub_2759B8FD8();
      sub_2759BA4E8();
      sub_2758CCD94(v19, v23);
      v26 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v27 = swift_allocObject();
      sub_2758CCDF8(v23, v27 + v26);
      *v25 = &unk_2759C5698;
      *(v25 + 1) = v27;
      sub_27586FBC8(v24, v45, &qword_280A0FCB8, &qword_2759C5660);
      swift_storeEnumTagMultiPayload();
      sub_2758CCF28();
      sub_2758CD014();
      v28 = v37;
      sub_2759B95E8();
      sub_27586BF04(v24, &qword_280A0FCB8, &qword_2759C5660);
    }

    else
    {
      v29 = v47;
      v30 = v48;
      (*(v47 + 32))(v12, v9);
      v31 = v40;
      v32 = &v40[*(v49 + 36)];
      sub_2759B8FD8();
      sub_2759BA4E8();
      sub_2758CCD94(v19, v23);
      v33 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v34 = swift_allocObject();
      sub_2758CCDF8(v23, v34 + v33);
      *v32 = &unk_2759C56B0;
      *(v32 + 1) = v34;
      (*(v29 + 16))(v31, v12, v30);
      sub_27586FBC8(v31, v45, &qword_280A0FCC8, &qword_2759C5670);
      swift_storeEnumTagMultiPayload();
      sub_2758CCF28();
      sub_2758CD014();
      v28 = v37;
      sub_2759B95E8();
      sub_27586BF04(v31, &qword_280A0FCC8, &qword_2759C5670);
      (*(v29 + 8))(v12, v30);
    }

    sub_27586FBC8(v28, v36, &qword_280A0FCD0, &qword_2759C5678);
    swift_storeEnumTagMultiPayload();
    sub_2758CD0FC();
    sub_2759B95E8();
    sub_27586BF04(v28, &qword_280A0FCD0, &qword_2759C5678);
  }
}