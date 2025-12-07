uint64_t sub_269E1A3C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v70 = a5;
  v67 = a3;
  v71 = type metadata accessor for SleepWidgetEntry(0);
  MEMORY[0x28223BE20](v71);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v72 = sub_269E50B9C();
  v13 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269E5101C();
  v74 = *(v19 - 8);
  v75 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v63 - v23;
  v73 = v12;
  if (a2)
  {
    v68 = v13;
    v25 = a2;
    sub_269E50FFC();
    v26 = a2;
    v27 = sub_269E5100C();
    v28 = sub_269E51EAC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v65 = v18;
      v69 = v22;
      v30 = v29;
      v64 = swift_slowAlloc();
      v76 = v64;
      *v30 = 136446466;
      *(v30 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v76);
      *(v30 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v63 = &v63;
      v66 = a4;
      MEMORY[0x28223BE20](ErrorValue);
      v33 = v28;
      v34 = v15;
      v35 = a1;
      (*(v36 + 16))(&v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      v37 = sub_269E51D0C();
      v39 = sub_269E47920(v37, v38, &v76);
      a4 = v66;

      *(v30 + 14) = v39;
      a1 = v35;
      v15 = v34;
      _os_log_impl(&dword_269DE5000, v27, v33, "[%{public}s] Error getting sleep widget viewModel: %{public}s", v30, 0x16u);
      v40 = v64;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v40, -1, -1);
      v41 = v30;
      v22 = v69;
      v18 = v65;
      MEMORY[0x26D654490](v41, -1, -1);
    }

    else
    {
    }

    (*(v74 + 8))(v24, v75);
    v12 = v73;
    v13 = v68;
  }

  sub_269E50FFC();
  sub_269E1D5A0(a1, v18, type metadata accessor for SleepWidgetViewModel);
  v42 = v22;
  v43 = sub_269E5100C();
  v44 = sub_269E51ECC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68 = a1;
    v66 = v46;
    v76 = v46;
    *v45 = 136446466;
    *(v45 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v76);
    *(v45 + 12) = 2082;
    v69 = v42;
    v47 = SleepWidgetViewModel.description.getter();
    v48 = v18;
    v49 = v15;
    v50 = v13;
    v51 = a4;
    v53 = v52;
    sub_269E1D450(v48, type metadata accessor for SleepWidgetViewModel);
    v54 = sub_269E47920(v47, v53, &v76);
    a4 = v51;
    v13 = v50;
    v15 = v49;

    *(v45 + 14) = v54;
    _os_log_impl(&dword_269DE5000, v43, v44, "[%{public}s] Returning sleep widget viewModel: %{public}s", v45, 0x16u);
    v55 = v66;
    swift_arrayDestroy();
    a1 = v68;
    MEMORY[0x26D654490](v55, -1, -1);
    v56 = v45;
    v12 = v73;
    MEMORY[0x26D654490](v56, -1, -1);

    (*(v74 + 8))(v69, v75);
  }

  else
  {

    sub_269E1D450(v18, type metadata accessor for SleepWidgetViewModel);
    (*(v74 + 8))(v42, v75);
  }

  sub_269E50B8C();
  v57 = v72;
  if ((*(a1 + 8) & 1) != 0 || (*a1 - 6) > 0xFFFFFFFFFFFFFFFBLL)
  {
    (*(v13 + 56))(v12, 1, 1, v72);
  }

  else
  {
    type metadata accessor for SleepWidgetTimelineProvider(0);
    Calendar.midnight(after:)(v12);
  }

  (*(v13 + 16))(v9, v15, v57);
  v58 = v71;
  v59 = MEMORY[0x277CC9578];
  sub_269E1D4B0(v12, &v9[*(v71 + 20)], &qword_281573C60, MEMORY[0x277CC9578]);
  sub_269E1D5A0(a1, &v9[*(v58 + 24)], type metadata accessor for SleepWidgetViewModel);
  v60 = *(v58 + 28);
  sub_269E18F30(a1, &v9[v60]);
  v61 = sub_269E51BEC();
  (*(*(v61 - 8) + 56))(&v9[v60], 0, 1, v61);
  a4(v9);
  sub_269E1D450(v9, type metadata accessor for SleepWidgetEntry);
  sub_269E1D530(v12, &qword_281573C60, v59);
  return (*(v13 + 8))(v15, v57);
}

uint64_t sub_269E1ABE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269E1AC7C(a1);
}

uint64_t sub_269E1AC7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SleepWidgetEntry(0);
  v2[5] = swift_task_alloc();
  v3 = sub_269E5101C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269E1AD78, 0, 0);
}

uint64_t sub_269E1AD78(uint64_t a1)
{
  v18 = v1;
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v17);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] fetching current entry for relevance...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[10] = v10;
  v11 = v1[3];
  v12 = swift_task_alloc();
  v1[11] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = 1;
  v13 = swift_task_alloc();
  v1[12] = v13;
  *v13 = v1;
  v13[1] = sub_269E1AF80;
  v15 = v1[4];
  v14 = v1[5];

  return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269E1D304, v12, v15);
}

uint64_t sub_269E1AF80()
{

  return MEMORY[0x2822009F8](sub_269E1B098, 0, 0);
}

uint64_t sub_269E1B098(uint64_t a1)
{
  v14 = v1;
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v13);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] determining relevance for entry...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v5(v6, v7);
  v10 = v1[5];
  sub_269DF453C(v1[2]);
  sub_269E1D450(v10, type metadata accessor for SleepWidgetEntry);

  v11 = v1[1];

  return v11();
}

void sub_269E1B250(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v5 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E1D310(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  v16 = *(a2 + 24);
  v26 = *(a2 + 16);
  v15 = v26;
  v27 = v16;
  sub_269E1D5A0(a2, v8, type metadata accessor for SleepWidgetTimelineProvider);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_269E1D3E8(v8, v19 + v17);
  v20 = (v19 + v18);
  *v20 = sub_269E1D378;
  v20[1] = v14;
  v21 = v15;
  v22 = v16;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(v25, sub_269E1D44C, v19);

  v23 = v26;
}

uint64_t sub_269E1B4B4(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetEntry(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269E1D5A0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetEntry);
  sub_269E1D310(0);
  return sub_269E51DEC();
}

SleepWidgetUI::SleepWidget __swiftcall SleepWidget.init()()
{
  v1 = v0;
  v2 = sub_269E51CDC();
  *v1 = v2;
  v1[1] = v3;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t SleepWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_269E50BDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepWidgetTimelineProvider(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E1C040(0);
  v52 = v8;
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C370(0);
  v57 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C440(0);
  v59 = v14;
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C550(0);
  v64 = v16;
  v58 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C698(0);
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x28223BE20](v18);
  v62 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C810(0);
  v63 = v20;
  v61 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v60 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v1);

  sub_269E50BEC();
  (*(v2 + 8))(v4, v1);
  v22 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v7 = v22;
  v23 = objc_allocWithZone(MEMORY[0x277D62528]);
  v24 = v22;
  v25 = sub_269E51CCC();
  v26 = [v23 initWithIdentifier:v25 healthStore:v24 options:1];

  v7[1] = v26;
  v7[2] = v24;
  v7[3] = v26;
  sub_269E1C0A4(0);
  sub_269E1C230();
  sub_269E1D29C(qword_281572CC0, type metadata accessor for SleepWidgetTimelineProvider, &unk_269E54940);
  v27 = v26;
  sub_269E51B8C();
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v68 = sub_269E50A7C();
  v69 = v28;
  v29 = sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
  v30 = sub_269DF0E28();
  v31 = MEMORY[0x277D837D0];
  v32 = v52;
  sub_269E5138C();

  (*(v51 + 8))(v10, v32);
  v72 = sub_269E50A7C();
  v73 = v33;
  v68 = v32;
  v69 = v31;
  v70 = v29;
  v71 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v53;
  v36 = v57;
  sub_269E5135C();

  (*(v54 + 8))(v13, v36);
  _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v68 = v36;
  v69 = v31;
  v70 = OpaqueTypeConformance2;
  v71 = v30;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = v59;
  sub_269E5136C();

  (*(v56 + 8))(v35, v39);
  v68 = v39;
  v69 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v62;
  v42 = v64;
  sub_269E5139C();
  (*(v58 + 8))(v38, v42);
  v43 = MEMORY[0x277D84560];
  sub_269E1D01C(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  sub_269E51B3C();
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269E1D01C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v43);
  v44 = sub_269E51B0C();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_269E528D0;
  (*(v45 + 104))(v47 + v46, *MEMORY[0x277CE3B68], v44);
  v68 = v42;
  v69 = v40;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  v49 = v66;
  sub_269E5137C();

  (*(v65 + 8))(v41, v49);
  sub_269E1CB98(v67);
  return (*(v61 + 8))(v48, v63);
}

void sub_269E1C040(uint64_t a1)
{
  if (!qword_281571DE8)
  {
    sub_269E1C0A4(255);
    sub_269E1C230();
    v1 = sub_269E51B9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571DE8);
    }
  }
}

void sub_269E1C0A4(uint64_t a1)
{
  if (!qword_281572428)
  {
    sub_269E1C144(255);
    sub_269E1D1E8(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572428);
    }
  }
}

void sub_269E1C144(uint64_t a1)
{
  if (!qword_281571F80)
  {
    type metadata accessor for SleepWidgetView(255);
    sub_269E50B9C();
    sub_269E1D29C(&qword_281572B80, type metadata accessor for SleepWidgetView, &protocol conformance descriptor for SleepWidgetView);
    sub_269E1D29C(&qword_281573C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_269E5192C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F80);
    }
  }
}

unint64_t sub_269E1C230()
{
  result = qword_281572430;
  if (!qword_281572430)
  {
    sub_269E1C0A4(255);
    sub_269E1D29C(&qword_281571F88, sub_269E1C144, MEMORY[0x277CE1148]);
    sub_269E1C2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572430);
  }

  return result;
}

unint64_t sub_269E1C2E0()
{
  result = qword_2815720E0;
  if (!qword_2815720E0)
  {
    sub_269E1D1E8(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720E0);
  }

  return result;
}

void sub_269E1C370(uint64_t a1)
{
  if (!qword_281572268)
  {
    sub_269E1C040(255);
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572268);
    }
  }
}

void sub_269E1C440(uint64_t a1)
{
  if (!qword_2815722A8)
  {
    sub_269E1C370(255);
    sub_269E1C040(255);
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722A8);
    }
  }
}

void sub_269E1C550(uint64_t a1)
{
  if (!qword_281572290)
  {
    sub_269E1C440(255);
    sub_269E1C370(255);
    sub_269E1C040(255);
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572290);
    }
  }
}

void sub_269E1C698(uint64_t a1)
{
  if (!qword_281572248)
  {
    sub_269E1C550(255);
    sub_269E1C440(255);
    sub_269E1C370(255);
    sub_269E1C040(255);
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572248);
    }
  }
}

void sub_269E1C810(uint64_t a1)
{
  if (!qword_281572278)
  {
    sub_269E1C698(255);
    sub_269E1C550(255);
    sub_269E1C440(255);
    sub_269E1C370(255);
    sub_269E1C040(255);
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572278);
    }
  }
}

void sub_269E1C9C0(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(type metadata accessor for SleepWidgetEntry(0) + 24);
  v5 = type metadata accessor for SleepWidgetView(0);
  sub_269E1D5A0(a1 + v4, &a2[v5[7]], type metadata accessor for SleepWidgetViewModel);
  *a2 = swift_getKeyPath();
  sub_269E1D01C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *&a2[v6] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = &a2[v5[6]];
  *v7 = swift_getKeyPath();
  sub_269E1C144(0);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  v7[32] = 0;
  v9 = *(v8 + 52);
  v10 = sub_269E50B9C();
  (*(*(v10 - 8) + 16))(&a2[v9], a1, v10);
  v11 = sub_269E5107C();

  sub_269E1C0A4(0);
  *&a2[*(v12 + 36)] = v11;
}

id sub_269E1CB98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v11 = result;
    v12 = [result hksp_supportsSleepWidget];

    v38[0] = a1;
    v38[1] = v1;
    if (v12)
    {
      sub_269E50FFC();
      v13 = sub_269E5100C();
      v14 = sub_269E51E9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v39);
        _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] sleep widget supported", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x26D654490](v16, -1, -1);
        MEMORY[0x26D654490](v15, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_269E50FFC();
      v17 = sub_269E5100C();
      v18 = sub_269E51ECC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v39);
        _os_log_impl(&dword_269DE5000, v17, v18, "[%{public}s] sleep widget not supported", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x26D654490](v20, -1, -1);
        MEMORY[0x26D654490](v19, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }

    sub_269E1C810(0);
    sub_269E1C698(255);
    v22 = v21;
    sub_269E1C550(255);
    v24 = v23;
    sub_269E1C440(255);
    v26 = v25;
    sub_269E1C370(255);
    v28 = v27;
    sub_269E1C040(255);
    v30 = v29;
    v31 = sub_269E1D29C(&qword_281571DF0, sub_269E1C040, MEMORY[0x277CE3D88]);
    v32 = sub_269DF0E28();
    v33 = MEMORY[0x277D837D0];
    v39 = v30;
    v40 = MEMORY[0x277D837D0];
    v41 = v31;
    v42 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v28;
    v40 = v33;
    v41 = OpaqueTypeConformance2;
    v42 = v32;
    v35 = swift_getOpaqueTypeConformance2();
    v39 = v26;
    v40 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v39 = v24;
    v40 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v39 = v22;
    v40 = v37;
    swift_getOpaqueTypeConformance2();
    return sub_269E513AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E1CFE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_269E1D01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E1D0D4(uint64_t a1)
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v2 <= 0x3F)
    {
      sub_269E1D1E8(319, &qword_281572B88, type metadata accessor for SleepWidgetViewModel, &protocol witness table for SleepWidgetViewModel, type metadata accessor for SleepWidgetRelevanceProvider);
      if (v3 <= 0x3F)
      {
        sub_269E50C8C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_269E1D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_269E1D29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E1D310(uint64_t a1)
{
  if (!qword_281571D30)
  {
    type metadata accessor for SleepWidgetEntry(255);
    v1 = sub_269E51DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_281571D30);
    }
  }
}

uint64_t sub_269E1D378(uint64_t a1)
{
  sub_269E1D310(0);

  return sub_269E1B4B4(a1);
}

uint64_t sub_269E1D3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E1D450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E1D4B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E1D01C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E1D530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E1D01C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E1D5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = (type metadata accessor for SleepWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[10];
  v7 = sub_269E50C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269E1D728(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for SleepWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269E1A3C4(a1, a2, v2 + v6, v8, v9);
}

void sub_269E1D7D8(uint64_t a1)
{
  if (!qword_28035EE28)
  {
    type metadata accessor for SleepWidgetEntry(255);
    sub_269E1D29C(&qword_281572AD8, type metadata accessor for SleepWidgetEntry, &unk_269E54998);
    v1 = sub_269E51C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EE28);
    }
  }
}

void sub_269E1D89C(uint64_t a1)
{
  sub_269E50B9C();
  if (v1 <= 0x3F)
  {
    sub_269E1D01C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SleepWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_269E1D01C(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id SleepScoreWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_269DF6E4C(v2, v3, v4, v5);
}

uint64_t SleepScoreWidgetViewModel.init(summaryResults:algorithmVersion:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for SleepScoreWidgetViewModel(0) + 20);
  v7 = sub_269E50CDC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t type metadata accessor for SleepScoreWidgetViewModel(uint64_t a1)
{
  result = qword_281573220;
  if (!qword_281573220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E1DA9C@<X0>(uint64_t a1@<X8>)
{
  sub_269E1E718(0, &unk_281573CE0, MEMORY[0x277D625A8]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_269E50CCC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = *v1;
  if (*v1)
  {
    v24 = v9;
    v25 = v12;
    v13 = v1[2];
    v14 = v1[3];
    v26 = v1[1];
    v15 = v26;
    v27 = v13;
    v28 = v14;
    v16 = *(type metadata accessor for SleepScoreWidgetViewModel(0) + 20);
    v17 = v14;

    v18 = v15;
    SleepDaySummaryResults.lastSleepScoreSummary(algorithmVersion:)(v1 + v16, v5);
    v19 = v26;
    v20 = v28;

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v11, v5, v6);
      (*(v7 + 16))(v24, v11, v6);
      sub_269E50D6C();
      return (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_269E1E76C(v5, &unk_281573CE0, MEMORY[0x277D625A8]);
  v22 = sub_269E50D8C();
  return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
}

uint64_t sub_269E1DD50()
{
  v17 = sub_269E51CBC();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269E50CAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1E718(0, &qword_28035EE48, MEMORY[0x277D626B8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_269E50D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1DA9C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_269E1E76C(v9, &qword_28035EE48, MEMORY[0x277D626B8]);
    sub_269E51CAC();
    v14 = sub_269E35418(v2);
    (*(v0 + 8))(v2, v17);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_269E50D7C();
    v14 = sub_269E50C9C();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t SleepScoreWidgetViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 16);
  sub_269E5222C();
  sub_269E0EE0C(a1, v3);
  sub_269E5222C();
  if (v4)
  {
    v7 = v4;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v6);
  if (v5)
  {
    sub_269E5222C();
    v8 = v5;
    sub_269E51F7C();
  }

  else
  {
LABEL_6:
    sub_269E5222C();
  }

  type metadata accessor for SleepScoreWidgetViewModel(0);
  sub_269E50CDC();
  sub_269E1E7C8(&qword_28035EE38, MEMORY[0x277D625B8], MEMORY[0x277D625C0]);
  return sub_269E51C4C();
}

uint64_t SleepScoreWidgetViewModel.hashValue.getter()
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v1);
  return sub_269E5223C();
}

uint64_t sub_269E1E1EC()
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v1);
  return sub_269E5223C();
}

uint64_t sub_269E1E230(uint64_t a1)
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v2);
  return sub_269E5223C();
}

uint64_t SleepScoreWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_28035E8A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2803610A8;

  return v0;
}

id sub_269E1E2E4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_269DF6E4C(v2, v3, v4, v5);
}

uint64_t sub_269E1E304()
{
  if (qword_28035E8A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2803610A8;

  return v0;
}

BOOL _s13SleepWidgetUI0a5ScoreB9ViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    v20 = *a1;
    v21 = v2;
    v22 = v5;
    v23 = v4;
    if (v7)
    {
      v16 = v7;
      v17 = v6;
      v18 = v9;
      v19 = v8;
      sub_269DF6E4C(v3, v2, v5, v4);
      sub_269DF6E4C(v7, v6, v9, v8);
      sub_269DF6E4C(v3, v2, v5, v4);
      v10 = _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(&v20, &v16);
      v11 = v17;
      v12 = v19;

      v13 = v21;
      v14 = v23;

      sub_269DF6EA0(v3, v2, v5, v4);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_269DF6E4C(v3, v2, v5, v4);
    sub_269DF6E4C(0, v6, v9, v8);
    sub_269DF6E4C(v3, v2, v5, v4);

LABEL_8:
    sub_269DF6EA0(v3, v2, v5, v4);
    sub_269DF6EA0(v7, v6, v9, v8);
    return 0;
  }

  sub_269DF6E4C(0, v2, v5, v4);
  if (v7)
  {
    sub_269DF6E4C(v7, v6, v9, v8);
    goto LABEL_8;
  }

  sub_269DF6E4C(0, v6, v9, v8);
  sub_269DF6EA0(0, v2, v5, v4);
LABEL_10:
  type metadata accessor for SleepScoreWidgetViewModel(0);
  sub_269E50CDC();
  sub_269E1E7C8(&qword_28035EE50, MEMORY[0x277D625B8], MEMORY[0x277D625C8]);
  sub_269E51D8C();
  sub_269E51D8C();
  return v20 == v16;
}

void sub_269E1E644(uint64_t a1)
{
  sub_269E1E6C8();
  if (v1 <= 0x3F)
  {
    sub_269E50CDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E1E6C8()
{
  if (!qword_281573CD8)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281573CD8);
    }
  }
}

void sub_269E1E718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E51F9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269E1E76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E1E718(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E1E7C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL SleepWidgetModelProviding.hasDataLastNight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v10, a1);
  v2 = v10;
  if (!v10)
  {
    return 0;
  }

  v4 = v11;
  v3 = v12;
  v5 = v13;
  if (!v11)
  {
    sub_269DF6EA0(v10, 0, v12, v13);
    return 0;
  }

  [v11 sleepDuration];
  if (v6 > COERCE_DOUBLE(1) && v6 > 0.0)
  {
    sub_269DF6EA0(v2, v4, v3, v5);
    return 1;
  }

  [v4 inBedDuration];
  v9 = v8;
  sub_269DF6EA0(v2, v4, v3, v5);
  return v9 > COERCE_DOUBLE(1) && v9 > 0.0;
}

uint64_t SleepWidgetModelProviding.hasAsleepDataLastNight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v9, a1);
  v2 = v9;
  if (v9)
  {
    v4 = v10;
    v3 = v11;
    v5 = v12;
    if (v10)
    {
      [v10 sleepDuration];
      v7 = v6;
      sub_269DF6EA0(v2, v4, v3, v5);
      if (v7 > COERCE_DOUBLE(1) && v7 > 0.0)
      {
        return 1;
      }
    }

    else
    {
      sub_269DF6EA0(v9, 0, v11, v12);
    }
  }

  return 0;
}

uint64_t SleepWidgetModelProviding.summaryDurationTitle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(&v22);
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = v24;
    v8 = v25;
    if (v25 && (v9 = [v25 averageSleepDuration]) != 0)
    {
      v10 = v9;
      [v9 _value];
      v12 = v11;

      sub_269DF6EA0(v5, v6, v7, v8);
      if (v12 > COERCE_DOUBLE(1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_269DF6EA0(v5, v6, v7, v8);
    }
  }

  (v4)(&v22, a1, a2);
  v13 = v22;
  if (v22)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    if (v25 && (v17 = [v25 averageInBedDuration]) != 0)
    {
      v18 = v17;
      [v17 _value];
      v20 = v19;

      sub_269DF6EA0(v13, v14, v15, v16);
      if (v20 > COERCE_DOUBLE(1))
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_269DF6EA0(v13, v14, v15, v16);
    }
  }

LABEL_14:
  if (qword_281571CB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t SleepWidgetModelProviding.summaryDurationText.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(&v30);
  v5 = v30;
  if (v30)
  {
    v6 = v31;
    v7 = v32;
    v8 = v33;
    if (v33 && (v9 = [v33 averageSleepDuration]) != 0)
    {
      v10 = v9;
      [v9 _value];
      v12 = v11;

      sub_269DF6EA0(v5, v6, v7, v8);
      if (v12 > COERCE_DOUBLE(1))
      {
        sub_269E51E2C();
        v14 = v13;
        v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
        [v15 setUnitsStyle_];
        [v15 setAllowedUnits_];
        v16 = [v15 stringFromTimeInterval_];
        if (v16)
        {
LABEL_6:
          v17 = v16;
          v18 = sub_269E51CDC();

          return v18;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_269DF6EA0(v5, v6, v7, v8);
    }
  }

  (v4)(&v30, a1, a2);
  v20 = v30;
  if (v30)
  {
    v21 = v31;
    v22 = v32;
    v23 = v33;
    if (!v33 || (v24 = [v33 averageInBedDuration]) == 0)
    {
      sub_269DF6EA0(v20, v21, v22, v23);
      return 0;
    }

    v25 = v24;
    [v24 _value];
    v27 = v26;

    sub_269DF6EA0(v20, v21, v22, v23);
    if (v27 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v29 = v28;
      v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v15 setUnitsStyle_];
      [v15 setAllowedUnits_];
      v16 = [v15 stringFromTimeInterval_];
      if (v16)
      {
        goto LABEL_6;
      }

LABEL_13:
    }
  }

  return 0;
}

uint64_t sub_269E1EFA8(uint64_t a1)
{
  result = sub_269E5103C();
  if (v2 <= 0x3F)
  {
    result = sub_269E510EC();
    if (v3 <= 0x3F)
    {
      result = sub_269E51ADC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_269E1F060@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v61 = sub_269E5146C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20144(0);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Specs(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E201DC(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20404(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2042C(0);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21F38(0, &qword_28035EEE0, sub_269E2042C, sub_269E20454, MEMORY[0x277CE3A78]);
  v56 = v20;
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v54 = &v53 - v21;
  *v11 = sub_269E5134C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_269E22140(0, &qword_28035EF08, sub_269E20298);
  sub_269E1F6C0(v1, &v11[*(v22 + 44)]);
  v23 = sub_269E514DC();
  sub_269E5102C();
  v24 = &v11[*(v9 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = sub_269E5150C();
  type metadata accessor for SleepScoreWidgetSmallView(0);
  sub_269E2EB30(v7);
  sub_269E510CC();
  sub_269E22524(v7, type metadata accessor for Specs);
  sub_269E5102C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_269E218E0(v11, v15, sub_269E201DC);
  v38 = &v15[*(v13 + 44)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_269E5199C();
  v39 = 1;
  sub_269E5111C();
  sub_269E218E0(v15, v19, sub_269E20404);
  v40 = &v19[*(v17 + 36)];
  v41 = v69;
  *(v40 + 4) = v68;
  *(v40 + 5) = v41;
  *(v40 + 6) = v70;
  v42 = v65;
  *v40 = v64;
  *(v40 + 1) = v42;
  v43 = v67;
  *(v40 + 2) = v66;
  *(v40 + 3) = v43;
  v44 = HKSPSleepURL();
  v45 = v57;
  if (v44)
  {
    v46 = v44;
    sub_269E50AFC();

    v39 = 0;
  }

  v47 = sub_269E50B0C();
  (*(*(v47 - 8) + 56))(v45, v39, 1, v47);
  v48 = sub_269E20454();
  v49 = v54;
  sub_269E5173C();
  sub_269E22524(v45, sub_269E20144);
  sub_269E22524(v19, sub_269E2042C);
  v50 = v58;
  sub_269E5145C();
  v62 = v17;
  v63 = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v56;
  sub_269E517CC();
  (*(v60 + 8))(v50, v61);
  return (*(v55 + 8))(v49, v51);
}

uint64_t sub_269E1F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v62 = a2;
  sub_269E203BC(0);
  v60 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v63 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v52 - v5;
  v56 = type metadata accessor for Specs(0);
  MEMORY[0x28223BE20](v56);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_269E50E6C();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20178(0, &qword_28035EE48, MEMORY[0x277D626B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  sub_269E20324(0);
  v15 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E202FC(0);
  v53 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E202D4(0);
  v55 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v59 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v24);
  v57 = &v52 - v27;
  sub_269E51E1C();
  v58 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = v64;
  sub_269E1DA9C(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D62708], v54);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  v30 = &v17[*(v15 + 36)];
  sub_269E20178(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  sub_269E50EAC();
  *v30 = KeyPath;
  sub_269E519CC();
  sub_269E5111C();
  sub_269E218E0(v17, v20, sub_269E20324);
  v31 = &v20[*(v53 + 36)];
  v32 = v70;
  *(v31 + 4) = v69;
  *(v31 + 5) = v32;
  *(v31 + 6) = v71;
  v33 = v66;
  *v31 = v65;
  *(v31 + 1) = v33;
  v34 = v68;
  *(v31 + 2) = v67;
  *(v31 + 3) = v34;
  type metadata accessor for SleepScoreWidgetSmallView(0);
  sub_269E2EB30(v7);
  sub_269E510CC();
  sub_269E22524(v7, type metadata accessor for Specs);
  sub_269E519BC();
  sub_269E5111C();
  sub_269E218E0(v20, v26, sub_269E202FC);
  v35 = &v26[*(v55 + 36)];
  v36 = v77;
  *(v35 + 4) = v76;
  *(v35 + 5) = v36;
  *(v35 + 6) = v78;
  v37 = v73;
  *v35 = v72;
  *(v35 + 1) = v37;
  v38 = v75;
  *(v35 + 2) = v74;
  *(v35 + 3) = v38;
  v39 = v57;
  sub_269E218E0(v26, v57, sub_269E202D4);
  v40 = v61;
  sub_269E2199C(v28, v61, type metadata accessor for SleepScoreWidgetViewModel);
  v41 = swift_getKeyPath();
  *(v40 + *(type metadata accessor for SleepScoreWidgetSystemSmallTitleView(0) + 20)) = v41;
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v41) = sub_269E514FC();
  sub_269E5102C();
  v42 = v40 + *(v60 + 36);
  *v42 = v41;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  v47 = v59;
  sub_269E2199C(v39, v59, sub_269E202D4);
  v48 = v63;
  sub_269E2199C(v40, v63, sub_269E203BC);
  v49 = v62;
  sub_269E2199C(v47, v62, sub_269E202D4);
  sub_269E21E74(0, &qword_28035EE98, sub_269E202D4, sub_269E203BC);
  sub_269E2199C(v48, v49 + *(v50 + 48), sub_269E203BC);
  sub_269E22524(v40, sub_269E203BC);
  sub_269E22524(v39, sub_269E202D4);
  sub_269E22524(v48, sub_269E203BC);
  sub_269E22524(v47, sub_269E202D4);
}

uint64_t sub_269E1FF48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SleepScoreWidgetSystemSmallTitleView(0);
  sub_269E22584(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_269E218E0(v9, a1, type metadata accessor for Specs);
  }

  sub_269E51EBC();
  v12 = sub_269E5149C();
  sub_269E50FEC();

  sub_269E512BC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void sub_269E20178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E20204(uint64_t a1)
{
  if (!qword_28035EE88)
  {
    sub_269E20298(255);
    sub_269E224DC(&qword_28035EEC8, sub_269E20298, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EE88);
    }
  }
}

void sub_269E20324(uint64_t a1)
{
  if (!qword_28035EEB0)
  {
    sub_269E50E8C();
    sub_269E20178(255, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EEB0);
    }
  }
}

unint64_t sub_269E20454()
{
  result = qword_28035EEE8;
  if (!qword_28035EEE8)
  {
    sub_269E2042C(255);
    sub_269E204D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EEE8);
  }

  return result;
}

unint64_t sub_269E204D4()
{
  result = qword_28035EEF0;
  if (!qword_28035EEF0)
  {
    sub_269E20404(255);
    sub_269E2058C(&qword_28035EEF8, sub_269E201DC, &qword_28035EF00, sub_269E20204);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EEF0);
  }

  return result;
}

uint64_t sub_269E2058C(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_269E224DC(a3, a4, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E2062C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53[2] = a1;
  sub_269DFE53C(0);
  v53[1] = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Specs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21D48(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21FC4(0);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21FEC(0);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E22078(0);
  v56 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E220A8(0, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  v57 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v53 - v21;
  v23 = sub_269E5134C();
  sub_269E1FF48(v7);
  v24 = sub_269E510CC();
  sub_269E22524(v7, type metadata accessor for Specs);
  v25 = 0x4008000000000000;
  if (v24)
  {
    v25 = 0xC010000000000000;
  }

  *v10 = v23;
  *(v10 + 1) = v25;
  v10[16] = 0;
  sub_269E22140(0, &qword_28035EF78, sub_269E21DDC);
  sub_269E20CD8(v2, &v10[*(v26 + 44)]);
  sub_269E221A4(0, &qword_28035EF80, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269E528E0;
  v28 = sub_269E5151C();
  *(inited + 32) = v28;
  v29 = sub_269E5153C();
  *(inited + 33) = v29;
  v30 = sub_269E5152C();
  sub_269E5152C();
  if (sub_269E5152C() != v28)
  {
    v30 = sub_269E5152C();
  }

  sub_269E5152C();
  if (sub_269E5152C() != v29)
  {
    v30 = sub_269E5152C();
  }

  v31 = v57;
  sub_269E5102C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_269E221F4(v10, v13, sub_269E21D48);
  v40 = &v13[*(v54 + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_269E519CC();
  sub_269E5111C();
  sub_269E221F4(v13, v16, sub_269E21FC4);
  v41 = &v16[*(v55 + 36)];
  v42 = v64;
  *(v41 + 4) = v63;
  *(v41 + 5) = v42;
  *(v41 + 6) = v65;
  v43 = v60;
  *v41 = v59;
  *(v41 + 1) = v43;
  v44 = v62;
  *(v41 + 2) = v61;
  *(v41 + 3) = v44;
  KeyPath = swift_getKeyPath();
  sub_269E221F4(v16, v19, sub_269E21FEC);
  v46 = &v19[*(v56 + 36)];
  *v46 = KeyPath;
  v46[8] = 1;
  v47 = swift_getKeyPath();
  sub_269E221F4(v19, v22, sub_269E22078);
  v48 = &v22[*(v31 + 36)];
  *v48 = v47;
  v48[1] = 0x3FE0000000000000;
  v49 = *MEMORY[0x277CDFA10];
  v50 = sub_269E510EC();
  v51 = v58;
  (*(*(v50 - 8) + 104))(v58, v49, v50);
  sub_269E224DC(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E2225C();
    sub_269E224DC(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    sub_269E5179C();
    sub_269E22524(v51, sub_269DFE53C);
    return sub_269DEB5A8(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E20CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a1;
  v86 = a2;
  v81 = sub_269E51ADC();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21EF0(0);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v83 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = v72 - v6;
  v87 = sub_269E5161C();
  v7 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Specs(0);
  v10 = MEMORY[0x28223BE20](v77);
  v78 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v72 - v12;
  v14 = sub_269E51CBC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v82 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E51CAC();
  v18 = sub_269E35418(v17);
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v91 = v18;
  v92 = v20;
  v72[1] = sub_269DF0E28();
  v21 = sub_269E516CC();
  v23 = v22;
  v25 = v24;
  sub_269E1FF48(v13);
  sub_269E5164C();
  v26 = v87;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v87);
  sub_269E5163C();

  (*(v7 + 8))(v9, v26);
  sub_269E515CC();
  sub_269E515FC();

  v72[0] = type metadata accessor for Specs;
  sub_269E22524(v13, type metadata accessor for Specs);
  v27 = sub_269E516AC();
  v29 = v28;
  LOBYTE(v20) = v30;
  KeyPath = v31;
  sub_269E00F48(v21, v23, v25 & 1);

  sub_269E1FF48(v13);
  v32 = sub_269E518AC();
  sub_269E22524(v13, type metadata accessor for Specs);
  v91 = v32;
  v76 = sub_269E5169C();
  v75 = v33;
  v73 = v34;
  v87 = v35;
  sub_269E00F48(v27, v29, v20 & 1);

  KeyPath = swift_getKeyPath();
  v91 = sub_269E1DD50();
  v92 = v36;
  v37 = sub_269E516CC();
  v39 = v38;
  LOBYTE(v21) = v40;
  sub_269E1FF48(v13);
  sub_269E215B0();
  sub_269E22524(v13, v72[0]);
  v41 = sub_269E516AC();
  v43 = v42;
  v45 = v44;
  sub_269E00F48(v37, v39, v21 & 1);

  v46 = v78;
  sub_269E1FF48(v78);
  v47 = v79;
  sub_269E51ABC();
  sub_269E224DC(&qword_28035EA08, MEMORY[0x277CE3AF8], MEMORY[0x277CE3B18]);
  v48 = v81;
  LOBYTE(v37) = sub_269E51C9C();
  (*(v80 + 8))(v47, v48);
  if (v37)
  {
    v49 = sub_269E5187C();
  }

  else
  {
    v49 = sub_269E5182C();
  }

  v50 = v49;
  sub_269E22524(v46, type metadata accessor for Specs);
  v91 = v50;
  v51 = sub_269E5169C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_269E00F48(v41, v43, v45 & 1);

  v58 = swift_getKeyPath();
  v91 = v51;
  v92 = v53;
  v55 &= 1u;
  v93 = v55;
  v94 = v57;
  v95 = v58;
  v96 = 2;
  v97 = 0;
  sub_269E083BC(0);
  sub_269E088AC();
  v59 = v89;
  sub_269E5172C();
  sub_269E00F48(v51, v53, v55);

  LOBYTE(v91) = v73 & 1;
  v90 = 0;
  v61 = v83;
  v60 = v84;
  v62 = *(v84 + 16);
  v63 = v85;
  v62(v83, v59, v85);
  LOBYTE(v57) = v91;
  v64 = v90;
  v65 = v86;
  v66 = v76;
  v67 = v75;
  *v86 = v76;
  v65[1] = v67;
  *(v65 + 16) = v57;
  v68 = KeyPath;
  v65[3] = v87;
  v65[4] = v68;
  v65[5] = 1;
  *(v65 + 48) = v64;
  sub_269E21E74(0, &qword_28035EF38, sub_269E083BC, sub_269E21EF0);
  v62(v65 + *(v69 + 48), v61, v63);
  sub_269E00F58(v66, v67, v57);
  v70 = *(v60 + 8);

  v70(v89, v63);
  v70(v61, v63);
  sub_269E00F48(v66, v67, v91);
}

uint64_t sub_269E215B0()
{
  v0 = sub_269E5161C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E5166C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A90], v7);
  v11 = *MEMORY[0x277CE09A0];
  v12 = sub_269E5159C();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  sub_269E515EC();
  sub_269E22524(v6, sub_269E1506C);
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_269E5163C();

  (*(v1 + 8))(v3, v0);
  sub_269E515CC();
  v14 = sub_269E515FC();

  return v14;
}

uint64_t sub_269E21890()
{
  sub_269E5118C();
  type metadata accessor for Specs(0);
  sub_269E5119C();
  return sub_269E5126C();
}

uint64_t sub_269E218E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E21948()
{
  sub_269E5118C();
  type metadata accessor for Specs(0);
  sub_269E5119C();
  return sub_269E5126C();
}

uint64_t sub_269E2199C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_269E20178(0, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_269E20178(0, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_269E21C78(uint64_t a1)
{
  type metadata accessor for SleepScoreWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_269E20178(319, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E21D48(uint64_t a1)
{
  if (!qword_28035EF28)
  {
    sub_269E21DDC(255);
    sub_269E224DC(&qword_28035EF48, sub_269E21DDC, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EF28);
    }
  }
}

void sub_269E21E18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269E21E74(255, a3, a4, a5);
    v6 = sub_269E519DC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E21E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E21F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E22014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_269E510FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E220A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_269E221A4(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_269E510FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269E22140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E221A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269E221F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269E2225C()
{
  result = qword_28035EF88;
  if (!qword_28035EF88)
  {
    v1 = MEMORY[0x277D85048];
    sub_269E220A8(255, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
    sub_269E22328();
    sub_269E22478(&qword_2815720C8, &qword_2815720C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF88);
  }

  return result;
}

unint64_t sub_269E22328()
{
  result = qword_28035EF90;
  if (!qword_28035EF90)
  {
    sub_269E22078(255);
    sub_269E223C0();
    sub_269E22478(&qword_28035EFB0, &qword_28035EF68, MEMORY[0x277D839B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF90);
  }

  return result;
}

unint64_t sub_269E223C0()
{
  result = qword_28035EF98;
  if (!qword_28035EF98)
  {
    sub_269E21FEC(255);
    sub_269E2058C(&qword_28035EFA0, sub_269E21FC4, &qword_28035EFA8, sub_269E21D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF98);
  }

  return result;
}

uint64_t sub_269E22478(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269E221A4(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E224DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E22524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E22584(uint64_t a1, uint64_t a2)
{
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepWidgetRelevanceProvider.widgetRelevance(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_269E5096C();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50B9C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_269E5097C();
  MEMORY[0x28223BE20](v6 - 8);
  v29[1] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v33 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  v14 = sub_269E509EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  (*(*(a1 + 24) + 16))(*(a1 + 16));
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_269E22E54(v13, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v22 = v31;
    sub_269E5095C();
    sub_269E5094C();
    (*(v32 + 8))(v22, v34);
    v23 = *(v15 + 8);
    v23(v18, v14);
    v24 = v30;
    sub_269E51AEC();
    sub_269E258C8(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_269E528D0;
    v27 = v26 + v25;
    v28 = v33;
    (*(v9 + 16))(v27, v24, v33);
    sub_269E51B4C();
    (*(v9 + 8))(v24, v28);
    return (v23)(v20, v14);
  }
}

uint64_t SleepStageWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v10 == 3)
  {
    if (v6)
    {
LABEL_3:
      if (v9)
      {
        v11 = v7;
        v12 = v9;

        v13 = [v12 averageSleepDuration];
        if (v13)
        {
          v14 = v13;
          [v13 _value];
        }
      }

      else
      {
        v19 = v7;
      }

      sub_269E51BDC();
      sub_269DF6EA0(v6, v7, v8, v9);
      v20 = sub_269E51BEC();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v5, 0, 1, v20);
      return (*(v21 + 32))(a1, v5, v20);
    }
  }

  else if (v10 != 2 && v6 != 0)
  {
    goto LABEL_3;
  }

  v16 = sub_269E51BEC();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v5, 1, 1, v16);
  sub_269E51BDC();
  result = (*(v17 + 48))(v5, 1, v16);
  if (result != 1)
  {
    return sub_269E22E54(v5, &qword_281571DE0, MEMORY[0x277CE3E20]);
  }

  return result;
}

uint64_t sub_269E22E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E258C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SleepStageWidgetViewModel.relevantDateInterval.getter@<X0>(char *a1@<X8>)
{
  v44 = sub_269E5101C();
  v3 = *(v44 - 8);
  v4 = MEMORY[0x28223BE20](v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_269E509EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  if (*(v1 + 32) == 2 || !*v1)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    v45[0] = *v1;
    v45[1] = v19;
    v46 = v20;
    v47 = v21;
    sub_269E23458(v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v43 = *(v13 + 32);
      v43(v18, v11, v12);
      sub_269E50FFC();
      (*(v13 + 16))(v16, v18, v12);
      v22 = sub_269E5100C();
      v23 = sub_269E51ECC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v40 = v23;
        v25 = v24;
        v41 = swift_slowAlloc();
        v45[0] = v41;
        *v25 = 136446466;
        *(v25 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D30, v45);
        *(v25 + 12) = 2080;
        v39 = v22;
        v26 = sub_269E5098C();
        v42 = a1;
        v28 = v27;
        (*(v13 + 8))(v16, v12);
        v29 = sub_269E47920(v26, v28, v45);
        a1 = v42;

        *(v25 + 14) = v29;
        v30 = v39;
        _os_log_impl(&dword_269DE5000, v39, v40, "[%{public}s] relevant for dates %s, privacy: .public)", v25, 0x16u);
        v31 = v41;
        swift_arrayDestroy();
        MEMORY[0x26D654490](v31, -1, -1);
        MEMORY[0x26D654490](v25, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }

      (*(v3 + 8))(v8, v44);
      v43(a1, v18, v12);
      v37 = 0;
      return (*(v13 + 56))(a1, v37, 1, v12);
    }
  }

  v32 = a1;
  sub_269E22E54(v11, &qword_281573CB8, MEMORY[0x277CC88A8]);
  sub_269E50FFC();
  v33 = sub_269E5100C();
  v34 = sub_269E51ECC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D30, v45);
    _os_log_impl(&dword_269DE5000, v33, v34, "[%{public}s] not relevant", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D654490](v36, -1, -1);
    MEMORY[0x26D654490](v35, -1, -1);
  }

  (*(v3 + 8))(v6, v44);
  v37 = 1;
  a1 = v32;
  return (*(v13 + 56))(a1, v37, 1, v12);
}

uint64_t sub_269E23458@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = sub_269E50B9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  MEMORY[0x28223BE20](v18);
  v23 = &v34 - v22;
  v24 = *(v1 + 8);
  if (!v24)
  {
    goto LABEL_7;
  }

  v34 = v21;
  v35 = a1;
  v25 = [v24 creationInterval];
  if (v25)
  {
    v26 = v25;
    sub_269E5099C();

    v27 = sub_269E509EC();
    (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  }

  else
  {
    v27 = sub_269E509EC();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  }

  sub_269E259C0(v6, v8);
  sub_269E509EC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    sub_269E22E54(v8, &qword_281573CB8, MEMORY[0x277CC88A8]);
    a1 = v35;
LABEL_7:
    v29 = sub_269E509EC();
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  sub_269E509AC();
  (*(v28 + 8))(v8, v27);
  (*(v10 + 32))(v23, v20, v9);
  sub_269E50B4C();
  v31 = *(v10 + 16);
  v31(v14, v23, v9);
  v31(v34, v17, v9);
  v32 = v35;
  sub_269E509BC();
  v33 = *(v10 + 8);
  v33(v17, v9);
  v33(v23, v9);
  return (*(v28 + 56))(v32, 0, 1, v27);
}

uint64_t SleepScoreWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  if (*v1)
  {
    v6 = v1[3];
    if (v6)
    {
      v7 = [v6 averageSleepDuration];
      if (v7)
      {
        v8 = v7;
        [v7 _value];
      }
    }

    sub_269E51BDC();
    v9 = sub_269E51BEC();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v5, 0, 1, v9);
    return (*(v10 + 32))(a1, v5, v9);
  }

  else
  {
    v12 = sub_269E51BEC();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 1, 1, v12);
    sub_269E51BDC();
    result = (*(v13 + 48))(v5, 1, v12);
    if (result != 1)
    {
      return sub_269E22E54(v5, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  return result;
}

uint64_t SleepScoreWidgetViewModel.relevantDateInterval.getter@<X0>(char *a1@<X8>)
{
  v44 = sub_269E5101C();
  v3 = *(v44 - 8);
  v4 = MEMORY[0x28223BE20](v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_269E509EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  if (*v1)
  {
    v20 = v1[2];
    v19 = v1[3];
    v21 = v1[1];
    v45[0] = *v1;
    v45[1] = v21;
    v46 = v20;
    v47 = v19;
    sub_269E23458(v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v43 = *(v13 + 32);
      v43(v18, v11, v12);
      sub_269E50FFC();
      (*(v13 + 16))(v16, v18, v12);
      v22 = sub_269E5100C();
      v23 = sub_269E51ECC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v40 = v23;
        v25 = v24;
        v41 = swift_slowAlloc();
        v45[0] = v41;
        *v25 = 136446466;
        *(v25 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D50, v45);
        *(v25 + 12) = 2080;
        v39 = v22;
        v26 = sub_269E5098C();
        v42 = a1;
        v28 = v27;
        (*(v13 + 8))(v16, v12);
        v29 = sub_269E47920(v26, v28, v45);
        a1 = v42;

        *(v25 + 14) = v29;
        v30 = v39;
        _os_log_impl(&dword_269DE5000, v39, v40, "[%{public}s] relevant for dates %s, privacy: .public)", v25, 0x16u);
        v31 = v41;
        swift_arrayDestroy();
        MEMORY[0x26D654490](v31, -1, -1);
        MEMORY[0x26D654490](v25, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }

      (*(v3 + 8))(v8, v44);
      v43(a1, v18, v12);
      v37 = 0;
      return (*(v13 + 56))(a1, v37, 1, v12);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  v32 = a1;
  sub_269E22E54(v11, &qword_281573CB8, MEMORY[0x277CC88A8]);
  sub_269E50FFC();
  v33 = sub_269E5100C();
  v34 = sub_269E51ECC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D50, v45);
    _os_log_impl(&dword_269DE5000, v33, v34, "[%{public}s] not relevant", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D654490](v36, -1, -1);
    MEMORY[0x26D654490](v35, -1, -1);
  }

  (*(v3 + 8))(v6, v44);
  v37 = 1;
  a1 = v32;
  return (*(v13 + 56))(a1, v37, 1, v12);
}

uint64_t sub_269E24088@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  if (*v1)
  {
    v6 = v1[3];
    if (v6)
    {
      v7 = [v6 averageSleepDuration];
      if (v7)
      {
        v8 = v7;
        [v7 _value];
      }
    }

    sub_269E51BDC();
    v9 = sub_269E51BEC();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v5, 0, 1, v9);
    return (*(v10 + 32))(a1, v5, v9);
  }

  else
  {
    v12 = sub_269E51BEC();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 1, 1, v12);
    sub_269E51BDC();
    result = (*(v13 + 48))(v5, 1, v12);
    if (result != 1)
    {
      return sub_269E22E54(v5, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  return result;
}

uint64_t SleepWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  if ((*(v1 + 8) & 1) != 0 || (*v1 - 2) < 2 || *v1 != 6)
  {

    return sub_269E51BDC();
  }

  else
  {
    v7 = (v1 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
    if (*v7)
    {
      v8 = v7[3];
      if (v8)
      {
        v9 = [v8 averageSleepDuration];
        if (v9)
        {
          v10 = v9;
          [v9 _value];
        }
      }

      sub_269E51BDC();
      v11 = sub_269E51BEC();
      v12 = *(v11 - 8);
      (*(v12 + 56))(v5, 0, 1, v11);
      return (*(v12 + 32))(a1, v5, v11);
    }

    else
    {
      v13 = sub_269E51BEC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v5, 1, 1, v13);
      sub_269E51BDC();
      result = (*(v14 + 48))(v5, 1, v13);
      if (result != 1)
      {
        return sub_269E22E54(v5, &qword_281571DE0, MEMORY[0x277CE3E20]);
      }
    }
  }

  return result;
}

uint64_t SleepWidgetViewModel.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_269E5101C();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - v5;
  v6 = sub_269E509EC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  sub_269E258C8(0, &qword_281572DD0, type metadata accessor for SleepWidgetRelevantState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SleepWidgetRelevantState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E24B48(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_269E22E54(v15, &qword_281572DD0, type metadata accessor for SleepWidgetRelevantState);
    sub_269E50FFC();
    v20 = sub_269E5100C();
    v21 = sub_269E51ECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E56D70, &v40);
      _os_log_impl(&dword_269DE5000, v20, v21, "[%{public}s] not relevant", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D654490](v23, -1, -1);
      MEMORY[0x26D654490](v22, -1, -1);
    }

    (*(v37 + 8))(v4, v38);
    v24 = 1;
    v25 = v6;
  }

  else
  {
    sub_269E25554(v15, v19);
    sub_269E25078();
    sub_269E50FFC();
    (*(v7 + 16))(v10, v12, v6);
    v26 = sub_269E5100C();
    v27 = sub_269E51ECC();
    v25 = v6;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v28 = 136446466;
      *(v28 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E56D70, &v40);
      *(v28 + 12) = 2080;
      v29 = sub_269E5098C();
      v31 = v30;
      (*(v7 + 8))(v10, v25);
      v32 = sub_269E47920(v29, v31, &v40);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_269DE5000, v26, v27, "[%{public}s] relevant for dates %s, privacy: .public)", v28, 0x16u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v33, -1, -1);
      MEMORY[0x26D654490](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v37 + 8))(v36, v38);
    sub_269E255B8(v19);
    (*(v7 + 32))(v39, v12, v25);
    v24 = 0;
  }

  return (*(v7 + 56))(v39, v24, 1, v25);
}

uint64_t sub_269E24B48@<X0>(char *a1@<X8>)
{
  sub_269E258C8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v40 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v40 - v10;
  v12 = sub_269E50B9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  if ((v1[1] & 1) == 0)
  {
    v25 = *v1;
    if (*v1 == 6)
    {
      v28 = (v1 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
      v29 = *v28;
      if (!*v28)
      {
        goto LABEL_15;
      }

      v31 = v28[1];
      v30 = v28[2];
      v32 = v28[3];
      v40[0] = *v28;
      v40[1] = v31;
      v41 = v30;
      v42 = v32;
      v33 = v32;

      v34 = v31;
      sub_269E25298(v6);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {
        sub_269E22E54(v6, &qword_281573C60, MEMORY[0x277CC9578]);
        sub_269DF6EA0(v29, v31, v30, v32);
        goto LABEL_15;
      }

      v39 = *(v13 + 32);
      v39(v16, v6, v12);
      sub_269DF6EA0(v29, v31, v30, v32);
      v39(a1, v16, v12);
      v37 = type metadata accessor for SleepWidgetRelevantState(0);
    }

    else if (v25 == 4)
    {
      v27 = type metadata accessor for SleepWidgetViewModel(0);
      sub_269E2592C(v1 + *(v27 + 48), v9);
      if ((*(v13 + 48))(v9, 1, v12) == 1)
      {
        sub_269E22E54(v9, &qword_281573C60, MEMORY[0x277CC9578]);
        goto LABEL_15;
      }

      v36 = *(v13 + 32);
      v36(v19, v9, v12);
      v36(a1, v19, v12);
      v37 = type metadata accessor for SleepWidgetRelevantState(0);
    }

    else
    {
      if (v25 != 3)
      {
        goto LABEL_2;
      }

      v26 = type metadata accessor for SleepWidgetViewModel(0);
      sub_269E2592C(v1 + *(v26 + 44), v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_269E22E54(v11, &qword_281573C60, MEMORY[0x277CC9578]);
LABEL_15:
        v35 = type metadata accessor for SleepWidgetRelevantState(0);
        return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
      }

      v38 = *(v13 + 32);
      v38(v21, v11, v12);
      v38(a1, v21, v12);
      v37 = type metadata accessor for SleepWidgetRelevantState(0);
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
  }

LABEL_2:
  v22 = type metadata accessor for SleepWidgetRelevantState(0);
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

uint64_t sub_269E25078()
{
  v1 = type metadata accessor for SleepWidgetRelevantState(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50B9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_269E25864(v0, v3);
  (*(v5 + 32))(v16, v3, v4);
  sub_269E50B4C();
  v17 = *(v5 + 16);
  v17(v11, v16, v4);
  v17(v8, v14, v4);
  sub_269E509BC();
  v18 = *(v5 + 8);
  v18(v14, v4);
  return (v18)(v16, v4);
}

uint64_t sub_269E25298@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(v1 + 8);
  if (v9)
  {
    v10 = [v9 creationInterval];
    if (v10)
    {
      v11 = v10;
      sub_269E5099C();

      v12 = sub_269E509EC();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v12 = sub_269E509EC();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_269E259C0(v6, v8);
    sub_269E509EC();
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v8, 1, v12) == 1)
    {
      sub_269E22E54(v8, &qword_281573CB8, MEMORY[0x277CC88A8]);
      v13 = 1;
    }

    else
    {
      sub_269E509AC();
      (*(v14 + 8))(v8, v12);
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  v15 = sub_269E50B9C();
  return (*(*(v15 - 8) + 56))(a1, v13, 1, v15);
}

uint64_t type metadata accessor for SleepWidgetRelevantState(uint64_t a1)
{
  result = qword_281572DD8;
  if (!qword_281572DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E25554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetRelevantState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E255B8(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetRelevantState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E25648(unsigned int *a1, int a2)
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

_WORD *sub_269E25698(_WORD *result, int a2, int a3)
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

void sub_269E2577C(uint64_t a1)
{
  sub_269E2581C(319, &qword_281573C70);
  if (v1 <= 0x3F)
  {
    sub_269E2581C(319, &qword_281573C78);
    if (v2 <= 0x3F)
    {
      sub_269E2581C(319, &qword_281573C80);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_269E2581C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269E50B9C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_269E25864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetRelevantState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E258C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E2592C(uint64_t a1, uint64_t a2)
{
  sub_269E258C8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E259C0(uint64_t a1, uint64_t a2)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E25A54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_269E0DB4C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_269E51B0C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_269E25B80(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_269E0DFD4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269E25C74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_269E00F68(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269E25E80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SleepScoreWidgetView(0);
  sub_269E00F68(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SleepScoreWidgetView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SleepScoreWidgetView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  return sub_269E27514(a1, a2 + v4[7], type metadata accessor for SleepScoreWidgetViewModel);
}

uint64_t SleepScoreWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_269E272BC(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E263F4(v1, v13);
  v14 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(v11 + 44)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  v18 = _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E25E80(v7);
  v19 = sub_269E02FE0(v7, v18);

  (*(v4 + 8))(v7, v3);
  if (v19)
  {
    sub_269E25E80(v9);
  }

  else
  {
    sub_269E25C74(v9);
  }

  sub_269E27490(0, &qword_28035EFE0, sub_269E272BC, sub_269E03738, MEMORY[0x277CDFAB8]);
  v21 = (a1 + *(v20 + 36));
  sub_269E03738(0);
  (*(v4 + 32))(v21 + *(v22 + 28), v9, v3);
  *v21 = v17;
  return sub_269E27514(v13, a1, sub_269E272BC);
}

uint64_t sub_269E263F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_269E27B40(0, &qword_28035F030, MEMORY[0x277CE0330]);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v4;
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v43 - v6;
  v51 = type metadata accessor for SleepScoreWidgetSmallView(0);
  MEMORY[0x28223BE20](v51);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SleepScoreWidgetRectangularView(0);
  MEMORY[0x28223BE20](v49);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E273BC(0, &qword_28035F038, MEMORY[0x277CE0330]);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v43 - v11;
  sub_269E27490(0, &qword_28035F040, type metadata accessor for SleepScoreWidgetCircularView, type metadata accessor for SleepScoreWidgetRectangularView, MEMORY[0x277CE0330]);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v47 = &v43 - v13;
  sub_269E27448(0);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SleepScoreWidgetCircularView(0);
  MEMORY[0x28223BE20](v46);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269E51B0C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  sub_269E2739C(0);
  MEMORY[0x28223BE20](v25 - 8);
  v57 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v55 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E25E80(v22);
  v28 = sub_269E02FE0(v22, v27);

  v29 = *(v19 + 8);
  v29(v22, v18);
  if (v28)
  {
    sub_269E25E80(v24);
  }

  else
  {
    sub_269E25C74(v24);
  }

  v30 = (*(v19 + 88))(v24, v18);
  if (v30 == *MEMORY[0x277CE3B68])
  {
    v31 = type metadata accessor for SleepScoreWidgetView(0);
    sub_269E27D00(a1 + *(v31 + 28), v8, type metadata accessor for SleepScoreWidgetViewModel);
    v32 = *(v51 + 20);
    *&v8[v32] = swift_getKeyPath();
    sub_269E27338(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E27D00(v8, v52, type metadata accessor for SleepScoreWidgetSmallView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView, &unk_269E54B70);
    v33 = v53;
    sub_269E513BC();
    sub_269E27BA8(v33, v58);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v34 = v57;
    sub_269E513BC();
    sub_269E27C28(v33);
    sub_269E27CA0(v8, type metadata accessor for SleepScoreWidgetSmallView);
  }

  else if (v30 == *MEMORY[0x277CE3B90])
  {
    v35 = type metadata accessor for SleepScoreWidgetView(0);
    sub_269E27D00(a1 + *(v35 + 28), v17, type metadata accessor for SleepScoreWidgetViewModel);
    sub_269E27D00(v17, v47, type metadata accessor for SleepScoreWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView, &unk_269E55F50);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView, &unk_269E5544C);
    v36 = v48;
    sub_269E513BC();
    sub_269E27D00(v36, v58, sub_269E27448);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v34 = v57;
    sub_269E513BC();
    sub_269E27CA0(v36, sub_269E27448);
    sub_269E27CA0(v17, type metadata accessor for SleepScoreWidgetCircularView);
  }

  else if (v30 == *MEMORY[0x277CE3B98])
  {
    v37 = type metadata accessor for SleepScoreWidgetView(0);
    v38 = v44;
    sub_269E27D00(a1 + *(v37 + 28), v44, type metadata accessor for SleepScoreWidgetViewModel);
    v39 = *(v49 + 20);
    *(v38 + v39) = swift_getKeyPath();
    sub_269E27338(0, &qword_28035F048, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E27D00(v38, v47, type metadata accessor for SleepScoreWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView, &unk_269E55F50);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView, &unk_269E5544C);
    v40 = v48;
    sub_269E513BC();
    sub_269E27D00(v40, v58, sub_269E27448);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v34 = v57;
    sub_269E513BC();
    sub_269E27CA0(v40, sub_269E27448);
    sub_269E27CA0(v38, type metadata accessor for SleepScoreWidgetRectangularView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView, &unk_269E54B70);
    v41 = v53;
    sub_269E513BC();
    sub_269E27BA8(v41, v58);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v34 = v57;
    sub_269E513BC();
    sub_269E27C28(v41);
    v29(v24, v18);
  }

  sub_269E27514(v34, v60, sub_269E2739C);
}

uint64_t _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269E528E0;
  v8 = *(v4 + 104);
  v8(v7 + v6, *MEMORY[0x277CE3B90], v3);
  v8(v7 + v6 + v5, *MEMORY[0x277CE3B98], v3);
  v22 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269E528D0;
  v8(v9 + v6, *MEMORY[0x277CE3B68], v3);
  sub_269E25A54(v9);
  sub_269E50FFC();
  v10 = v22;

  v11 = sub_269E5100C();
  v12 = sub_269E51E9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E54EE0, &v21);
    *(v13 + 12) = 2082;
    v15 = MEMORY[0x26D653A40](v10, v3);
    v17 = sub_269E47920(v15, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_269DE5000, v11, v12, "[%{public}s] supportedFamilies: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v14, -1, -1);
    MEMORY[0x26D654490](v13, -1, -1);
  }

  (*(v19 + 8))(v2, v20);
  return v10;
}

uint64_t type metadata accessor for SleepScoreWidgetView(uint64_t a1)
{
  result = qword_281573378;
  if (!qword_281573378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E27338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E273BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E27448(255);
    v7 = v6;
    sub_269E27B40(255, &qword_28035EFD8, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E27490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269E27514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269E275C0(uint64_t a1)
{
  sub_269E27338(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SleepScoreWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_269E276B0()
{
  result = qword_28035EFE8;
  if (!qword_28035EFE8)
  {
    sub_269E27490(255, &qword_28035EFE0, sub_269E272BC, sub_269E03738, MEMORY[0x277CDFAB8]);
    sub_269E277A4();
    sub_269E27A2C(&qword_2815720B8, sub_269E03738, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFE8);
  }

  return result;
}

unint64_t sub_269E277A4()
{
  result = qword_28035EFF0;
  if (!qword_28035EFF0)
  {
    sub_269E272BC(255);
    sub_269E27854();
    sub_269E27A2C(&qword_2815720A0, sub_269DFB55C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFF0);
  }

  return result;
}

unint64_t sub_269E27854()
{
  result = qword_28035EFF8;
  if (!qword_28035EFF8)
  {
    sub_269E27304(255);
    sub_269E278CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFF8);
  }

  return result;
}

unint64_t sub_269E278CC()
{
  result = qword_28035F000;
  if (!qword_28035F000)
  {
    sub_269E2739C(255);
    sub_269E2794C();
    sub_269E27A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F000);
  }

  return result;
}

unint64_t sub_269E2794C()
{
  result = qword_28035F008;
  if (!qword_28035F008)
  {
    sub_269E27448(255);
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView, &unk_269E55F50);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView, &unk_269E5544C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F008);
  }

  return result;
}

uint64_t sub_269E27A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E27A74()
{
  result = qword_28035F020;
  if (!qword_28035F020)
  {
    sub_269E27B40(255, &qword_28035EFD8, MEMORY[0x277CE0338]);
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView, &unk_269E54B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F020);
  }

  return result;
}

void sub_269E27B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepScoreWidgetSmallView(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E27BA8(uint64_t a1, uint64_t a2)
{
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E27C28(uint64_t a1)
{
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E27CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E27D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E27D68()
{
  v0 = sub_269E50C8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v4 = objc_allocWithZone(MEMORY[0x277D12820]);
  v5 = sub_269E50C1C();
  v6 = [v4 initWithCalendar_];

  result = (*(v1 + 8))(v3, v0);
  qword_280361090 = v6;
  return result;
}

uint64_t type metadata accessor for OccurrenceSleepWidgetRectangularView(uint64_t a1)
{
  result = qword_281573C10;
  if (!qword_281573C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E27EE0(uint64_t a1)
{
  sub_269E2892C(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E27F90(uint64_t a1)
{
  result = sub_269E287C4(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView, &unk_269E54FD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E28004()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_269E51EBC();
    v6 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_269E2814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_269E28614(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_269E51E1C();
  v25 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v14 = sub_269E512FC();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_269E28004())
  {
    v15 = 12;
  }

  else
  {
    v15 = 6;
  }

  sub_269E2897C(0, &qword_28035F0A8, sub_269E286A8, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  v17 = &v14[*(v16 + 44)];
  v18 = type metadata accessor for OccurrenceSleepWidgetRectangularView(0);
  sub_269E289E8(a1 + *(v18 + 20), v8, type metadata accessor for SleepWidgetViewModel);
  LOBYTE(v18) = *(a1 + *(v18 + 24));
  *&v8[v3[7]] = swift_getKeyPath();
  sub_269E286DC(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8[v3[5]] = v18;
  *&v8[v3[6]] = v15;
  sub_269E289E8(v8, v6, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E289E8(v6, v17, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E28740(0);
  v20 = v17 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 0;
  sub_269E28A50(v8, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E28A50(v6, type metadata accessor for ScheduleOccurrenceSectionView);

  sub_269E289E8(v14, v12, sub_269E28614);
  v21 = v26;
  sub_269E289E8(v12, v26, sub_269E28614);
  sub_269E285F4(0);
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_269E28A50(v14, sub_269E28614);
  sub_269E28A50(v12, sub_269E28614);
}

void sub_269E28520(uint64_t a1@<X8>)
{
  *a1 = sub_269E5133C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_269E2897C(0, &qword_28035F058, sub_269E285C0, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_269E2814C(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  sub_269E2880C(0);
  v6 = (a1 + *(v5 + 36));
  *v6 = KeyPath;
  v6[1] = 0x3FE3333333333333;
}

void sub_269E28614(uint64_t a1)
{
  if (!qword_28035F070)
  {
    sub_269E286A8(255);
    sub_269E287C4(&qword_28035F088, sub_269E286A8, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F070);
    }
  }
}

void sub_269E286DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E28760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269E287C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E2880C(uint64_t a1)
{
  if (!qword_28035F090)
  {
    sub_269E28898(255);
    sub_269E2892C(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F090);
    }
  }
}

void sub_269E28898(uint64_t a1)
{
  if (!qword_28035F098)
  {
    sub_269E285C0(255);
    sub_269E287C4(&qword_28035F0A0, sub_269E285C0, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F098);
    }
  }
}

void sub_269E2892C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269E2897C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_269E5109C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269E289E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E28A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269E28AB0()
{
  result = qword_28035F0B0;
  if (!qword_28035F0B0)
  {
    sub_269E2880C(255);
    sub_269E287C4(&qword_28035F0B8, sub_269E28898, MEMORY[0x277CE1198]);
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F0B0);
  }

  return result;
}

uint64_t sub_269E28B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_269E295F0();
  v7 = 0;
  v8 = v6[2];
  while (v8 != v7)
  {
    v9 = &v6[v7++];
    if (*(v9[4] + 16))
    {
      v10 = 0;
      do
      {
        v11 = v6[v10++ + 4];
        v12 = (v11 + 40);
        v13 = *(v11 + 16) + 1;
        while (--v13)
        {
          v15 = *(v12 - 1);
          v14 = *v12;
          v12 += 3;
          if (v14 > v15)
          {

            return 0;
          }
        }
      }

      while (v10 != v8);
      break;
    }
  }

  return 1;
}

uint64_t sub_269E28C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_269E295F0();
  v7 = v6[2];
  if (v7)
  {
    v8 = 0.0;
    v9 = v6 + 4;
    v10 = 1;
    do
    {
      if (*(*v9 + 16))
      {
        v11 = *(*v9 + 32);
        if (v10)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          if (v11 >= v8)
          {
            v11 = v8;
          }
        }

        v8 = v11;
      }

      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0.0;
  }

  return *&v8;
}

uint64_t sub_269E28CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_269E295F0();
  v7 = v6[2];
  if (v7)
  {
    v8 = 0.0;
    v9 = v6 + 4;
    v10 = 1;
    do
    {
      v11 = *(*v9 + 16);
      if (v11)
      {
        v12 = *(*v9 + 24 * v11 + 16);
        if (v10)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          if (v12 < v8)
          {
            v12 = v8;
          }
        }

        v8 = v12;
      }

      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0.0;
  }

  return *&v8;
}

uint64_t sub_269E28D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2) != *(v3 - 2);
    if (*(v4 - 1) != *(v3 - 1))
    {
      v5 = 1;
    }

    v6 = v5 | *v4 ^ *v3;
    if (v6)
    {
      break;
    }

    v3 += 3;
    v4 += 3;
    --v2;
  }

  while (v2);
  return (v6 ^ 1) & 1;
}

uint64_t sub_269E28DF4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_269E29A10();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D653D70](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D653D70](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_269E51F6C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_269E51F6C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_269E5204C();
  }

  result = sub_269E5204C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_269E29034()
{
  v1 = *v0;
  v18 = *(*v0 + 16);
  if (!v18)
  {
    v3 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      ++v2;

      v4 = sub_269E295F0();
      v5 = v4[2];
      if (v5)
      {
        break;
      }

LABEL_5:
      if (v2 == v18)
      {
        goto LABEL_21;
      }
    }

    v6 = 1;
    v7 = 0.0;
    v8 = 4;
    do
    {
      v9 = v4[v8];
      if (*(v9 + 16))
      {
        if (v6)
        {
          v6 = 0;
          v7 = *(v9 + 32);
        }

        else
        {
          v6 = 0;
          if (*(v9 + 32) < v7)
          {
            v7 = *(v9 + 32);
          }
        }
      }

      ++v8;
      --v5;
    }

    while (v5);

    if (v6)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_269E0E218(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_269E0E218((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    *&v3[8 * v11 + 32] = v7;
  }

  while (v2 != v18);
LABEL_21:
  v12 = *(v3 + 2);
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_22:
  v13 = *(v3 + 4);
  v14 = v12 - 1;
  if (v12 != 1)
  {
    v15 = (v3 + 40);
    do
    {
      v16 = *v15++;
      v17 = v16;
      if (v16 < v13)
      {
        v13 = v17;
      }

      --v14;
    }

    while (v14);
  }

LABEL_29:
}

void sub_269E292D4()
{
  v1 = *v0;
  v21 = *(*v0 + 16);
  if (!v21)
  {
    v3 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v20 = *v0;
  do
  {
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      ++v2;

      v4 = sub_269E295F0();
      v5 = v4[2];
      if (v5)
      {
        break;
      }

LABEL_5:
      v1 = v20;
      if (v2 == v21)
      {
        goto LABEL_21;
      }
    }

    v6 = 1;
    v7 = 0.0;
    v8 = 4;
    do
    {
      v9 = v4[v8];
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 24 * v10;
        if (v6)
        {
          v6 = 0;
          v7 = *(v11 + 16);
        }

        else
        {
          v6 = 0;
          if (v7 <= *(v11 + 16))
          {
            v7 = *(v11 + 16);
          }
        }
      }

      ++v8;
      --v5;
    }

    while (v5);

    if (v6)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_269E0E218(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_269E0E218((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    *&v3[8 * v13 + 32] = v7;
    v1 = v20;
  }

  while (v2 != v21);
LABEL_21:
  v14 = *(v3 + 2);
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_22:
  v15 = *(v3 + 4);
  v16 = v14 - 1;
  if (v14 != 1)
  {
    v17 = (v3 + 40);
    do
    {
      v18 = *v17++;
      v19 = v18;
      if (v15 < v18)
      {
        v15 = v19;
      }

      --v16;
    }

    while (v16);
  }

LABEL_29:
}

uint64_t static Segment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269E295BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_269E295F0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  v7 = sub_269E0DD48(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_269E0DD48((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v7[v9 + 4] = v2;
  v12 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_269E0DD48((v8 > 1), v9 + 2, 1, v7);
  }

  v7[2] = v12;
  v7[v11 + 4] = v1;
  v13 = v7[3];
  v14 = v9 + 3;
  if ((v9 + 3) > (v13 >> 1))
  {
    v7 = sub_269E0DD48((v13 > 1), v9 + 3, 1, v7);
  }

  v7[2] = v14;
  v7[v12 + 4] = v4;
  v15 = v7[3];
  v16 = v9 + 4;
  if ((v9 + 4) > (v15 >> 1))
  {
    v7 = sub_269E0DD48((v15 > 1), v9 + 4, 1, v7);
  }

  v7[2] = v16;
  v7[v14 + 4] = v3;
  v17 = v7[3];
  v18 = v9 + 5;
  if ((v9 + 5) > (v17 >> 1))
  {
    v7 = sub_269E0DD48((v17 > 1), v9 + 5, 1, v7);
  }

  v7[2] = v18;
  v7[v16 + 4] = v6;
  v19 = v7[3];
  v20 = v9 + 6;
  if (v20 > (v19 >> 1))
  {
    v7 = sub_269E0DD48((v19 > 1), v20, 1, v7);
  }

  v7[2] = v20;
  v7[v18 + 4] = v5;
  return v7;
}

uint64_t _s13SleepWidgetUI0aB8ChartBarV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((sub_269E28D64(*a1, *a2) & 1) == 0 || (sub_269E28D64(v2, v7) & 1) == 0 || (sub_269E28D64(v4, v9) & 1) == 0 || (sub_269E28D64(v3, v8) & 1) == 0 || (sub_269E28D64(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_269E28D64(v5, v10);
}

uint64_t sub_269E298C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_269E29910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269E2996C(uint64_t *a1, int a2)
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

uint64_t sub_269E299B4(uint64_t result, int a2, int a3)
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

unint64_t sub_269E29A10()
{
  result = qword_281573CC0;
  if (!qword_281573CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281573CC0);
  }

  return result;
}

uint64_t type metadata accessor for SleepWidgetCircularView(uint64_t a1)
{
  result = qword_281572E68;
  if (!qword_281572E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E29AD0(uint64_t a1)
{
  result = sub_269E2CA60(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView, &unk_269E55200);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E29B28(uint64_t a1)
{
  result = sub_269E2CA60(&qword_28035F0C0, type metadata accessor for SleepWidgetCircularView, &unk_269E551C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E29B9C@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v107 = type metadata accessor for BedtimeSleepWidgetView(0);
  v2 = MEMORY[0x28223BE20](v107);
  v106 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v109 = &v101 - v4;
  v112 = type metadata accessor for GreetingSleepWidgetView(0);
  v5 = MEMORY[0x28223BE20](v112);
  v121 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v101 - v8;
  MEMORY[0x28223BE20](v7);
  v110 = &v101 - v9;
  v10 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v119 = v11;
  MEMORY[0x28223BE20](v11);
  v118 = &v101 - v12;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v10);
  v113 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = &v101 - v14;
  sub_269E01714(0);
  v117 = v15;
  MEMORY[0x28223BE20](v15);
  v116 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v101 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v104 = &v101 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v105 = &v101 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v101 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v101 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v102 = &v101 - v35;
  MEMORY[0x28223BE20](v34);
  v103 = &v101 - v36;
  v37 = type metadata accessor for UpcomingSleepWidgetView(0);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v108 = &v101 - v41;
  sub_269E0178C();
  v114 = v42;
  v43 = MEMORY[0x28223BE20](v1);
  v45 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v101 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v54 = &v101 - v53;
  if ((*(v1 + 8) & 1) != 0 || (v60 = *v50, *v50 > 7))
  {
LABEL_2:
    v55 = v51;
    v56 = v121;
    sub_269E2C9F8(v50, v121, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v56, v111, type metadata accessor for GreetingSleepWidgetView);
    sub_269E2CA60(qword_281573920, type metadata accessor for GreetingSleepWidgetView, &unk_269E556B8);
    v122 = sub_269E5196C();
    v57 = HKSPSleepURL();
    if (v57)
    {
      v58 = v57;
      sub_269E50AFC();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v69 = v118;
    v71 = v115;
    v72 = sub_269E50B0C();
    (*(*(v72 - 8) + 56))(v20, v59, 1, v72);
    sub_269DF0960(v20, v23);
    v73 = MEMORY[0x277CE11C8];
    v74 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v23);

    sub_269E2C814(v121, type metadata accessor for GreetingSleepWidgetView);
    v75 = v114;
    (*(v55 + 16))(v71, v45, v114);
    swift_storeEnumTagMultiPayload();
    v122 = v73;
    v123 = v74;
    swift_getOpaqueTypeConformance2();
    v76 = v116;
    sub_269E513BC();
    v54 = v45;
    goto LABEL_22;
  }

  if (((1 << v60) & 0xC2) != 0)
  {
    v55 = v51;
    v77 = v110;
    sub_269E2C9F8(v50, v110, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v77, v111, type metadata accessor for GreetingSleepWidgetView);
    sub_269E2CA60(qword_281573920, type metadata accessor for GreetingSleepWidgetView, &unk_269E556B8);
    v122 = sub_269E5196C();
    v78 = HKSPSleepURL();
    if (v78)
    {
      v79 = v78;
      sub_269E50AFC();

      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v87 = v115;
    v88 = sub_269E50B0C();
    (*(*(v88 - 8) + 56))(v30, v80, 1, v88);
    sub_269DF0960(v30, v33);
    v89 = MEMORY[0x277CE11C8];
    v90 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v33);

    sub_269E2C814(v110, type metadata accessor for GreetingSleepWidgetView);
    v91 = v114;
    (*(v55 + 16))(v87, v49, v114);
    swift_storeEnumTagMultiPayload();
    v122 = v89;
    v123 = v90;
    swift_getOpaqueTypeConformance2();
    v76 = v116;
    sub_269E513BC();
    v54 = v49;
    v75 = v91;
    v69 = v118;
  }

  else
  {
    if (((1 << v60) & 0xC) == 0)
    {
      if (((1 << v60) & 0x30) != 0)
      {
        v54 = v52;
        v121 = v51;
        v61 = v109;
        sub_269E2C9F8(v50, v109, type metadata accessor for SleepWidgetViewModel);
        KeyPath = swift_getKeyPath();
        v63 = v107;
        *(v61 + *(v107 + 20)) = KeyPath;
        v64 = MEMORY[0x277CDF458];
        sub_269E2C994(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        *(v61 + *(v63 + 24)) = swift_getKeyPath();
        sub_269E2C994(0, qword_281572618, MEMORY[0x277CC9788], v64);
        swift_storeEnumTagMultiPayload();
        sub_269E2C9F8(v61, v106, type metadata accessor for BedtimeSleepWidgetView);
        sub_269E2CA60(qword_281573AF0, type metadata accessor for BedtimeSleepWidgetView, &unk_269E532A8);
        v122 = sub_269E5196C();
        v65 = HKSPSleepURL();
        if (v65)
        {
          v66 = v104;
          v67 = v65;
          sub_269E50AFC();

          v68 = 0;
          v69 = v118;
          v70 = v115;
        }

        else
        {
          v68 = 1;
          v69 = v118;
          v70 = v115;
          v66 = v104;
        }

        v97 = sub_269E50B0C();
        (*(*(v97 - 8) + 56))(v66, v68, 1, v97);
        v98 = v105;
        sub_269DF0960(v66, v105);
        v99 = MEMORY[0x277CE11C8];
        sub_269E5173C();
        sub_269DF0A3C(v98);

        sub_269E2C814(v109, type metadata accessor for BedtimeSleepWidgetView);
        v55 = v121;
        v75 = v114;
        (*(v121 + 16))(v70, v54, v114);
        swift_storeEnumTagMultiPayload();
        v122 = v99;
        v123 = MEMORY[0x277CE11C0];
        swift_getOpaqueTypeConformance2();
        v76 = v116;
        sub_269E513BC();
        goto LABEL_22;
      }

      goto LABEL_2;
    }

    v121 = v51;
    v81 = v108;
    sub_269E2C9F8(v50, v108, type metadata accessor for SleepWidgetViewModel);
    *(v81 + *(v37 + 20)) = swift_getKeyPath();
    v82 = MEMORY[0x277CDF458];
    sub_269E2C994(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v81 + *(v37 + 24)) = swift_getKeyPath();
    sub_269E2C994(0, qword_281572618, MEMORY[0x277CC9788], v82);
    swift_storeEnumTagMultiPayload();
    sub_269E2C9F8(v81, v40, type metadata accessor for UpcomingSleepWidgetView);
    sub_269E2CA60(qword_2815737F8, type metadata accessor for UpcomingSleepWidgetView, &unk_269E55548);
    v122 = sub_269E5196C();
    v83 = HKSPSleepURL();
    if (v83)
    {
      v84 = v102;
      v85 = v83;
      sub_269E50AFC();

      v86 = 0;
      v69 = v118;
    }

    else
    {
      v86 = 1;
      v69 = v118;
      v84 = v102;
    }

    v92 = sub_269E50B0C();
    (*(*(v92 - 8) + 56))(v84, v86, 1, v92);
    v93 = v103;
    sub_269DF0960(v84, v103);
    v94 = MEMORY[0x277CE11C8];
    v95 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v93);

    sub_269E2C814(v108, type metadata accessor for UpcomingSleepWidgetView);
    v55 = v121;
    v96 = v114;
    (*(v121 + 16))(v115, v54, v114);
    swift_storeEnumTagMultiPayload();
    v122 = v94;
    v123 = v95;
    swift_getOpaqueTypeConformance2();
    v76 = v116;
    v75 = v96;
    sub_269E513BC();
  }

LABEL_22:
  sub_269DEBC30(v76, v69);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v76);
  return (*(v55 + 8))(v54, v75);
}

uint64_t sub_269E2AB34@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v105 = type metadata accessor for GreetingSleepWidgetRectangularView(0);
  v2 = MEMORY[0x28223BE20](v105);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v104 = &v96 - v6;
  MEMORY[0x28223BE20](v5);
  v102 = &v96 - v7;
  v8 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v113 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v96 - v10;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v8);
  v106 = v11;
  MEMORY[0x28223BE20](v11);
  v109 = &v96 - v12;
  sub_269E01714(0);
  v111 = v13;
  MEMORY[0x28223BE20](v13);
  v110 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v96 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v98 = &v96 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v100 = &v96 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v101 = &v96 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v96 = &v96 - v31;
  MEMORY[0x28223BE20](v30);
  v97 = &v96 - v32;
  v33 = type metadata accessor for OccurrenceSleepWidgetRectangularView(0);
  v34 = MEMORY[0x28223BE20](v33);
  v103 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v96 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v96 - v39;
  sub_269E0178C();
  v107 = *(v41 - 8);
  v108 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v96 - v47;
  MEMORY[0x28223BE20](v46);
  v51 = &v96 - v50;
  if ((*(v1 + 8) & 1) != 0 || (v55 = *v1, *v1 > 7uLL))
  {
LABEL_2:
    sub_269E2C9F8(v1, &v4[*(v105 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v4 = swift_getKeyPath();
    v4[8] = 0;
    sub_269E2C9F8(v4, v104, type metadata accessor for GreetingSleepWidgetRectangularView);
    sub_269E2CA60(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView, &unk_269E545D0);
    v115 = sub_269E5196C();
    v52 = HKSPSleepURL();
    if (v52)
    {
      v53 = v52;
      sub_269E50AFC();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v65 = v109;
    v66 = sub_269E50B0C();
    (*(*(v66 - 8) + 56))(v18, v54, 1, v66);
    sub_269DF0960(v18, v21);
    v67 = MEMORY[0x277CE11C8];
    v68 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v21);

    sub_269E2C814(v4, type metadata accessor for GreetingSleepWidgetRectangularView);
    v70 = v107;
    v69 = v108;
    (*(v107 + 16))(v65, v44, v108);
    swift_storeEnumTagMultiPayload();
    v115 = v67;
    v116 = v68;
    swift_getOpaqueTypeConformance2();
    v71 = v110;
    sub_269E513BC();
    v51 = v44;
    v62 = v112;
    goto LABEL_12;
  }

  if (((1 << v55) & 0xC2) != 0)
  {
    v73 = v102;
    sub_269E2C9F8(v1, &v102[*(v105 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v73 = swift_getKeyPath();
    *(v73 + 8) = 0;
    sub_269E2C9F8(v73, v104, type metadata accessor for GreetingSleepWidgetRectangularView);
    sub_269E2CA60(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView, &unk_269E545D0);
    v115 = sub_269E5196C();
    v74 = HKSPSleepURL();
    if (v74)
    {
      v75 = v100;
      v76 = v74;
      sub_269E50AFC();

      v77 = 0;
      v62 = v112;
      v78 = v109;
    }

    else
    {
      v77 = 1;
      v62 = v112;
      v78 = v109;
      v75 = v100;
    }

    v83 = sub_269E50B0C();
    (*(*(v83 - 8) + 56))(v75, v77, 1, v83);
    v84 = v75;
    v85 = v101;
    sub_269DF0960(v84, v101);
    v86 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v85);

    sub_269E2C814(v73, type metadata accessor for GreetingSleepWidgetRectangularView);
    v87 = v107;
    v69 = v108;
    (*(v107 + 16))(v78, v48, v108);
    swift_storeEnumTagMultiPayload();
    v115 = MEMORY[0x277CE11C8];
    v116 = v86;
    swift_getOpaqueTypeConformance2();
    v71 = v110;
    v70 = v87;
    sub_269E513BC();
    v51 = v48;
  }

  else
  {
    if (((1 << v55) & 0xC) == 0)
    {
      if (((1 << v55) & 0x30) != 0)
      {
        v51 = v49;
        v56 = v103;
        sub_269E2C9F8(v1, v103 + *(v33 + 20), type metadata accessor for SleepWidgetViewModel);
        v57 = *(v1 + *(type metadata accessor for SleepWidgetViewModel(0) + 28));
        *v56 = swift_getKeyPath();
        *(v56 + 8) = 0;
        *(v56 + *(v33 + 24)) = v57;
        sub_269E2C9F8(v56, v38, type metadata accessor for OccurrenceSleepWidgetRectangularView);
        sub_269E2CA60(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView, &unk_269E54FD4);
        v115 = sub_269E5196C();
        v58 = HKSPSleepURL();
        if (v58)
        {
          v59 = v98;
          v60 = v58;
          sub_269E50AFC();

          v61 = 0;
          v62 = v112;
          v63 = v109;
        }

        else
        {
          v61 = 1;
          v62 = v112;
          v63 = v109;
          v59 = v98;
        }

        v64 = v99;
        v93 = sub_269E50B0C();
        (*(*(v93 - 8) + 56))(v59, v61, 1, v93);
        sub_269DF0960(v59, v64);
        v94 = MEMORY[0x277CE11C8];
        sub_269E5173C();
        sub_269DF0A3C(v64);

        sub_269E2C814(v103, type metadata accessor for OccurrenceSleepWidgetRectangularView);
        v95 = v107;
        v69 = v108;
        (*(v107 + 16))(v63, v51, v108);
        swift_storeEnumTagMultiPayload();
        v115 = v94;
        v116 = MEMORY[0x277CE11C0];
        v70 = v95;
        swift_getOpaqueTypeConformance2();
        v71 = v110;
        sub_269E513BC();
        goto LABEL_12;
      }

      goto LABEL_2;
    }

    sub_269E2C9F8(v1, &v40[*(v33 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v40[*(v33 + 24)] = 3;
    sub_269E2C9F8(v40, v38, type metadata accessor for OccurrenceSleepWidgetRectangularView);
    sub_269E2CA60(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView, &unk_269E54FD4);
    v115 = sub_269E5196C();
    v79 = HKSPSleepURL();
    if (v79)
    {
      v80 = v96;
      v81 = v79;
      sub_269E50AFC();

      v82 = 0;
      v62 = v112;
      v70 = v107;
    }

    else
    {
      v82 = 1;
      v62 = v112;
      v70 = v107;
      v80 = v96;
    }

    v88 = sub_269E50B0C();
    (*(*(v88 - 8) + 56))(v80, v82, 1, v88);
    v89 = v80;
    v90 = v97;
    sub_269DF0960(v89, v97);
    v91 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v90);

    sub_269E2C814(v40, type metadata accessor for OccurrenceSleepWidgetRectangularView);
    v92 = v108;
    (*(v70 + 16))(v109, v51, v108);
    swift_storeEnumTagMultiPayload();
    v115 = MEMORY[0x277CE11C8];
    v116 = v91;
    swift_getOpaqueTypeConformance2();
    v71 = v110;
    v69 = v92;
    sub_269E513BC();
  }

LABEL_12:
  sub_269DEBC30(v71, v62);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v71);
  return (*(v70 + 8))(v51, v69);
}

uint64_t sub_269E2B9B4@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v103 = type metadata accessor for BedtimeSleepWidgetCircularView(0);
  v2 = MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v105 = &v98 - v4;
  v108 = type metadata accessor for GreetingSleepWidgetCircularView(0);
  v5 = MEMORY[0x28223BE20](v108);
  v118 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v107 = &v98 - v8;
  MEMORY[0x28223BE20](v7);
  v106 = &v98 - v9;
  v10 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v116 = v11;
  MEMORY[0x28223BE20](v11);
  v115 = &v98 - v12;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v10);
  v109 = v13;
  MEMORY[0x28223BE20](v13);
  v112 = &v98 - v14;
  sub_269E01714(0);
  v114 = v15;
  MEMORY[0x28223BE20](v15);
  v113 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v98 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v100 = &v98 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v101 = &v98 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v104 = &v98 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v98 = &v98 - v34;
  MEMORY[0x28223BE20](v33);
  v99 = &v98 - v35;
  v36 = type metadata accessor for UpcomingSleepWidgetCircularView(0);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v98 - v40;
  sub_269E0178C();
  v111 = v42;
  v110 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v1);
  v45 = &v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v98 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v53 = &v98 - v52;
  if ((*(v1 + 8) & 1) != 0 || (v58 = *v50, *v50 > 7))
  {
LABEL_2:
    v54 = v118;
    sub_269E2C9F8(v50, v118, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v54, v107, type metadata accessor for GreetingSleepWidgetCircularView);
    sub_269E2CA60(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView, &unk_269E5306C);
    v119 = sub_269E5196C();
    v55 = HKSPSleepURL();
    if (v55)
    {
      v56 = v55;
      sub_269E50AFC();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v64 = v115;
    v66 = sub_269E50B0C();
    (*(*(v66 - 8) + 56))(v20, v57, 1, v66);
    sub_269DF0960(v20, v23);
    v67 = MEMORY[0x277CE11C8];
    v68 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v23);

    sub_269E2C814(v118, type metadata accessor for GreetingSleepWidgetCircularView);
    v69 = v110;
    v70 = v111;
    (*(v110 + 16))(v112, v45, v111);
    swift_storeEnumTagMultiPayload();
    v119 = v67;
    v120 = v68;
    v71 = v69;
    swift_getOpaqueTypeConformance2();
    v72 = v113;
    sub_269E513BC();
    v53 = v45;
    goto LABEL_22;
  }

  if (((1 << v58) & 0xC2) != 0)
  {
    v73 = v106;
    sub_269E2C9F8(v50, v106, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v73, v107, type metadata accessor for GreetingSleepWidgetCircularView);
    sub_269E2CA60(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView, &unk_269E5306C);
    v119 = sub_269E5196C();
    v74 = HKSPSleepURL();
    if (v74)
    {
      v75 = v74;
      sub_269E50AFC();

      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    v64 = v115;
    v81 = v112;
    v82 = sub_269E50B0C();
    (*(*(v82 - 8) + 56))(v30, v76, 1, v82);
    v83 = v104;
    sub_269DF0960(v30, v104);
    v84 = MEMORY[0x277CE11C8];
    v85 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v83);

    sub_269E2C814(v106, type metadata accessor for GreetingSleepWidgetCircularView);
    v87 = v110;
    v86 = v111;
    (*(v110 + 16))(v81, v49, v111);
    swift_storeEnumTagMultiPayload();
    v119 = v84;
    v120 = v85;
    v71 = v87;
    v70 = v86;
    swift_getOpaqueTypeConformance2();
    v72 = v113;
    sub_269E513BC();
    v53 = v49;
  }

  else
  {
    if (((1 << v58) & 0xC) == 0)
    {
      if (((1 << v58) & 0x30) != 0)
      {
        v53 = v51;
        v59 = v105;
        sub_269E2C9F8(v50, v105, type metadata accessor for SleepWidgetViewModel);
        sub_269E2C9F8(v59, v102, type metadata accessor for BedtimeSleepWidgetCircularView);
        sub_269E2CA60(&qword_28035F0C8, type metadata accessor for BedtimeSleepWidgetCircularView, &unk_269E5534C);
        v119 = sub_269E5196C();
        v60 = HKSPSleepURL();
        if (v60)
        {
          v61 = v100;
          v62 = v60;
          sub_269E50AFC();

          v63 = 0;
          v64 = v115;
          v65 = v112;
        }

        else
        {
          v63 = 1;
          v64 = v115;
          v65 = v112;
          v61 = v100;
        }

        v93 = sub_269E50B0C();
        (*(*(v93 - 8) + 56))(v61, v63, 1, v93);
        v94 = v61;
        v95 = v101;
        sub_269DF0960(v94, v101);
        sub_269E5173C();
        sub_269DF0A3C(v95);

        sub_269E2C814(v105, type metadata accessor for BedtimeSleepWidgetCircularView);
        v71 = v110;
        v96 = v65;
        v70 = v111;
        (*(v110 + 16))(v96, v53, v111);
        swift_storeEnumTagMultiPayload();
        v119 = MEMORY[0x277CE11C8];
        v120 = MEMORY[0x277CE11C0];
        swift_getOpaqueTypeConformance2();
        v72 = v113;
        sub_269E513BC();
        goto LABEL_22;
      }

      goto LABEL_2;
    }

    sub_269E2C9F8(v50, v41, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v41, v39, type metadata accessor for UpcomingSleepWidgetCircularView);
    sub_269E2CA60(&qword_28035F0D0, type metadata accessor for UpcomingSleepWidgetCircularView, &unk_269E55EDC);
    v119 = sub_269E5196C();
    v77 = HKSPSleepURL();
    if (v77)
    {
      v78 = v98;
      v79 = v77;
      sub_269E50AFC();

      v80 = 0;
      v70 = v111;
    }

    else
    {
      v80 = 1;
      v70 = v111;
      v78 = v98;
    }

    v88 = sub_269E50B0C();
    (*(*(v88 - 8) + 56))(v78, v80, 1, v88);
    v89 = v78;
    v90 = v99;
    sub_269DF0960(v89, v99);
    v91 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v90);

    sub_269E2C814(v41, type metadata accessor for UpcomingSleepWidgetCircularView);
    v92 = v110;
    (*(v110 + 16))(v112, v53, v70);
    swift_storeEnumTagMultiPayload();
    v119 = MEMORY[0x277CE11C8];
    v120 = v91;
    v71 = v92;
    swift_getOpaqueTypeConformance2();
    v72 = v113;
    sub_269E513BC();
    v64 = v115;
  }

LABEL_22:
  sub_269DEBC30(v72, v64);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v72);
  return (*(v71 + 8))(v53, v70);
}

uint64_t sub_269E2C814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E2C8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_269E2C994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E2C9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E2CA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E2CAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for BedtimeSleepWidgetCircularView(uint64_t a1)
{
  result = qword_281573B50;
  if (!qword_281573B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E2CB84(uint64_t a1)
{
  result = sub_269E2CE9C(&qword_28035F0C8, type metadata accessor for BedtimeSleepWidgetCircularView, &unk_269E5534C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E2CBF8@<X0>(uint64_t a1@<X8>)
{
  v7[0] = a1;
  v1 = sub_269E51A8C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_269E50FBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  sub_269E50F6C();
  (*(v3 + 8))(v5, v2);
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v7[1] = MEMORY[0x277D84F90];
  sub_269E2CE9C(&qword_281571E30, MEMORY[0x277D12700], MEMORY[0x277D12708]);
  sub_269E2CE44(0);
  sub_269E2CE9C(&qword_281571D78, sub_269E2CE44, MEMORY[0x277D83970]);

  sub_269E51FEC();
  return sub_269E51A7C();
}

void sub_269E2CE44(uint64_t a1)
{
  if (!qword_281571D80)
  {
    sub_269E51A8C();
    v1 = sub_269E51DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_281571D80);
    }
  }
}

uint64_t sub_269E2CE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E2CF4C(uint64_t a1)
{
  type metadata accessor for SleepScoreWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_269E2E2C8(319, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E2D028(uint64_t a1)
{
  result = sub_269E51ADC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_269E2D0C0()
{
  result = qword_28035F100;
  if (!qword_28035F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F100);
  }

  return result;
}

uint64_t sub_269E2D114@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_269E2E2C8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - v3;
  v4 = sub_269E51C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E32C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E7F8(0);
  v27 = v13;
  v25 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  v29 = v1;
  sub_269E2E2C8(0, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
  sub_269E20324(0);
  sub_269E2E638();
  sub_269E2E6C0();
  sub_269E518FC();
  sub_269E51C0C();
  v16 = sub_269E2EF68(&qword_28035F160, sub_269E2E32C, MEMORY[0x277CDEFF0]);
  v17 = sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
  sub_269E5176C();
  (*(v5 + 8))(v7, v4);
  (*(v10 + 8))(v12, v9);
  v18 = HKSPSleepURL();
  if (v18)
  {
    v19 = v26;
    v20 = v18;
    sub_269E50AFC();

    v21 = 0;
  }

  else
  {
    v21 = 1;
    v19 = v26;
  }

  v22 = sub_269E50B0C();
  (*(*(v22 - 8) + 56))(v19, v21, 1, v22);
  v31 = v9;
  v32 = v4;
  v33 = v16;
  v34 = v17;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_269E5173C();
  sub_269E2ED4C(v19, &qword_281573C88, MEMORY[0x277CC9260]);
  return (*(v25 + 8))(v15, v23);
}

uint64_t sub_269E2D5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v103 = a2;
  sub_269E2E2C8(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v78[-v3];
  v5 = sub_269E5166C();
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v105 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s13SleepWidgetUI5SpecsVMa_0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_269E51CBC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E2E458(0);
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v107 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v109 = &v78[-v16];
  sub_269E51E1C();
  v100 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E51CAC();
  v17 = sub_269E35418(v12);
  v19 = v18;
  (*(v10 + 8))(v12, v9);
  *&v120 = v17;
  *(&v120 + 1) = v19;
  v99 = sub_269DF0E28();
  v20 = sub_269E516CC();
  v83 = v21;
  v79 = v22;
  v81 = v23;
  v24 = *(type metadata accessor for SleepScoreWidgetRectangularView(0) + 20);
  v97 = _s13SleepWidgetUI5SpecsVMa_0;
  v98 = v24;
  v96 = _s13SleepWidgetUI5SpecsVMa_0;
  v25 = v104;
  sub_269E2EB64(&qword_28035F048, _s13SleepWidgetUI5SpecsVMa_0, _s13SleepWidgetUI5SpecsVMa_0, v104);
  v93 = *MEMORY[0x277CE0A68];
  v26 = v108;
  v27 = *(v108 + 104);
  v94 = v108 + 104;
  v95 = v27;
  v28 = v105;
  v80 = v5;
  v27(v105);
  v91 = *MEMORY[0x277CE09A0];
  v29 = v91;
  v30 = sub_269E5159C();
  v31 = *(v30 - 8);
  v90 = *(v31 + 104);
  v92 = v31 + 104;
  v32 = v29;
  v33 = v30;
  v85 = v30;
  v90(v4, v32);
  v34 = *(v31 + 56);
  v88 = v31 + 56;
  v89 = v34;
  v34(v4, 0, 1, v33);
  sub_269E515EC();
  v87 = MEMORY[0x277CE09A8];
  sub_269E2ED4C(v4, &qword_281572070, MEMORY[0x277CE09A8]);
  v35 = *(v26 + 8);
  v108 = v26 + 8;
  v86 = v35;
  v35(v28, v5);
  sub_269E515BC();
  sub_269E515FC();

  v84 = _s13SleepWidgetUI5SpecsVMa_0;
  sub_269E2EDBC(v25, _s13SleepWidgetUI5SpecsVMa_0);
  LOBYTE(v19) = v79;
  v36 = v83;
  v37 = sub_269E516AC();
  v39 = v38;
  LOBYTE(v25) = v40;
  v82 = v4;
  sub_269E00F48(v20, v36, v19 & 1);

  *&v120 = sub_269E5180C();
  v41 = sub_269E5169C();
  v43 = v42;
  LOBYTE(v36) = v44;
  v46 = v45;
  sub_269E00F48(v37, v39, v25 & 1);

  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  LOBYTE(v115) = v36 & 1;
  v112 = 0;
  *&v120 = v41;
  *(&v120 + 1) = v43;
  LOBYTE(v121) = v36 & 1;
  *(&v121 + 1) = v46;
  *&v122 = KeyPath;
  *(&v122 + 1) = 1;
  LOBYTE(v123) = 0;
  *(&v123 + 1) = v48;
  v124 = 0x3FE3333333333333;
  sub_269E2E4DC(0);
  sub_269E2E5B8();
  sub_269E5172C();
  v113[2] = v122;
  v113[3] = v123;
  v114 = v124;
  v113[0] = v120;
  v113[1] = v121;
  v83 = sub_269E2E4DC;
  sub_269E2EDBC(v113, sub_269E2E4DC);
  *&v120 = sub_269E1DD50();
  *(&v120 + 1) = v49;
  v50 = sub_269E516CC();
  v52 = v51;
  LOBYTE(v25) = v53;
  v54 = v104;
  sub_269E2EB64(&qword_28035F048, v97, v96, v104);
  v55 = v105;
  v56 = v80;
  v95(v105, v93, v80);
  v57 = v82;
  v58 = v85;
  (v90)(v82, v91, v85);
  v89(v57, 0, 1, v58);
  sub_269E515EC();
  sub_269E2ED4C(v57, &qword_281572070, v87);
  v86(v55, v56);
  sub_269E515BC();
  sub_269E515FC();

  sub_269E2EDBC(v54, v84);
  v108 = sub_269E516AC();
  v105 = v59;
  v106 = v60;
  LOBYTE(v56) = v61;
  sub_269E00F48(v50, v52, v25 & 1);

  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  LOBYTE(v41) = v56 & 1;
  LOBYTE(v120) = v56 & 1;
  LOBYTE(v115) = 0;
  v65 = v101;
  v64 = v102;
  v66 = *(v101 + 16);
  v67 = v107;
  v66(v107, v109, v102);
  v68 = v103;
  v66(v103, v67, v64);
  sub_269E2E3E8(0);
  v70 = v68 + *(v69 + 48);
  v71 = v105;
  v72 = v106;
  *&v115 = v108;
  *(&v115 + 1) = v105;
  LOBYTE(v116) = v41;
  *(&v116 + 1) = v111[0];
  DWORD1(v116) = *(v111 + 3);
  *(&v116 + 1) = v106;
  *&v117 = v62;
  *(&v117 + 1) = 1;
  LOBYTE(v118) = 0;
  *(&v118 + 1) = *v110;
  DWORD1(v118) = *&v110[3];
  *(&v118 + 1) = v63;
  v119 = 0x3FE3333333333333;
  *(v70 + 64) = 0x3FE3333333333333;
  v74 = v116;
  v73 = v117;
  *v70 = v115;
  *(v70 + 16) = v74;
  v75 = v118;
  *(v70 + 32) = v73;
  *(v70 + 48) = v75;
  sub_269E2EE1C(&v115, &v120);
  v76 = *(v65 + 8);
  v76(v109, v64);
  *&v120 = v108;
  *(&v120 + 1) = v71;
  LOBYTE(v121) = v41;
  *(&v121 + 1) = v111[0];
  DWORD1(v121) = *(v111 + 3);
  *(&v121 + 1) = v72;
  *&v122 = v62;
  *(&v122 + 1) = 1;
  LOBYTE(v123) = 0;
  *(&v123 + 1) = *v110;
  DWORD1(v123) = *&v110[3];
  *(&v123 + 1) = v63;
  v124 = 0x3FE3333333333333;
  sub_269E2EDBC(&v120, v83);
  v76(v107, v64);
}

uint64_t sub_269E2DF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E50E6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E2C8(0, &qword_28035EE48, MEMORY[0x277D626B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E1DA9C(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277D62708], v2);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  sub_269E20324(0);
  v11 = (a1 + *(v10 + 36));
  sub_269E2E2C8(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  sub_269E50ECC();

  *v11 = KeyPath;
  return result;
}

id sub_269E2E188@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result isAppleWatch];

    sub_269E5124C();
    sub_269E2EF68(&qword_2815722C0, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
    v5 = sub_269E512DC();
    if (v15)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = MEMORY[0x26D652F10](v5);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _s13SleepWidgetUI5SpecsVMa_0(0);
    result = sub_269E5126C();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269E2E2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E2E32C(uint64_t a1)
{
  if (!qword_28035F108)
  {
    sub_269E2E2C8(255, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
    sub_269E20324(255);
    sub_269E2E638();
    sub_269E2E6C0();
    v1 = sub_269E5190C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F108);
    }
  }
}

void sub_269E2E3E8(uint64_t a1)
{
  if (!qword_28035F118)
  {
    sub_269E2E458(255);
    sub_269E2E4DC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035F118);
    }
  }
}

void sub_269E2E458(uint64_t a1)
{
  if (!qword_28035F120)
  {
    sub_269E2E4DC(255);
    sub_269E2E5B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F120);
    }
  }
}

void sub_269E2E4DC(uint64_t a1)
{
  if (!qword_28035F128)
  {
    sub_269E083BC(255);
    sub_269E2E568(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F128);
    }
  }
}

void sub_269E2E568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E2E5B8()
{
  result = qword_28035F130;
  if (!qword_28035F130)
  {
    sub_269E2E4DC(255);
    sub_269E088AC();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F130);
  }

  return result;
}

unint64_t sub_269E2E638()
{
  result = qword_28035F138;
  if (!qword_28035F138)
  {
    sub_269E2E2C8(255, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F138);
  }

  return result;
}

unint64_t sub_269E2E6C0()
{
  result = qword_28035F140;
  if (!qword_28035F140)
  {
    sub_269E20324(255);
    sub_269E2EF68(&qword_28035F148, MEMORY[0x277D62710], MEMORY[0x277D62700]);
    sub_269E2E770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F140);
  }

  return result;
}

unint64_t sub_269E2E770()
{
  result = qword_28035F150;
  if (!qword_28035F150)
  {
    sub_269E2E2C8(255, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F150);
  }

  return result;
}

void sub_269E2E7F8(uint64_t a1)
{
  if (!qword_28035F158)
  {
    sub_269E2E32C(255);
    sub_269E51C1C();
    sub_269E2EF68(&qword_28035F160, sub_269E2E32C, MEMORY[0x277CDEFF0]);
    sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8], MEMORY[0x277CE3ED0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F158);
    }
  }
}

uint64_t sub_269E2E90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  sub_269E2E2C8(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_269E2EEE8(v2, &v15 - v10, &qword_281572610, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E51ADC();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269E2EB64@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_269E512CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E2C8(0, a1, a2, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  sub_269E2EEE8(v8, &v19 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_269E2EE80(v16, a4, a3);
  }

  sub_269E51EBC();
  v18 = sub_269E5149C();
  sub_269E50FEC();

  sub_269E512BC();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_269E2ED4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E2E2C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E2EDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E2EE1C(uint64_t a1, uint64_t a2)
{
  sub_269E2E4DC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E2EE80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E2EEE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E2E2C8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E2EF68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E2EFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for UpcomingSleepWidgetView(uint64_t a1)
{
  result = qword_2815737E8;
  if (!qword_2815737E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E2F088(uint64_t a1)
{
  type metadata accessor for SleepWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_269E2EFC4(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_269E2EFC4(319, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_269E2F1A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDFA28];
  sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for UpcomingSleepWidgetView(0);
  sub_269E317DC(v1 + *(v11 + 20), v10, &qword_281572600, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E510EC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_269E2F3CC(uint64_t a1@<X8>)
{
  sub_269DFE53C(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E30E2C(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_269E5134C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_269E314B4(0);
  sub_269E2F63C(v1, &v8[*(v9 + 44)]);
  v10 = *MEMORY[0x277CDF998];
  v11 = sub_269E510EC();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_269E31170(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_269E51C9C())
  {
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C, MEMORY[0x277CE1198]);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    sub_269E5179C();
    sub_269E316AC(v5, sub_269DFE53C);
    sub_269DEC69C(v8);
    KeyPath = swift_getKeyPath();
    sub_269E3151C(0);
    v14 = (a1 + *(v13 + 36));
    *v14 = KeyPath;
    v14[1] = 0x3FE0000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269E2F63C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v130 = a2;
  sub_269E3123C(0);
  v128 = v3;
  MEMORY[0x28223BE20](v3);
  v127 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E311B8(0);
  v131 = v5;
  v129 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v141 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = v116 - v8;
  v9 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  MEMORY[0x28223BE20](v121);
  v124 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE6F4(0);
  v123 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v140 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v122 = v116 - v16;
  MEMORY[0x28223BE20](v15);
  v144 = v116 - v17;
  sub_269DFE53C(0);
  v119 = v18;
  MEMORY[0x28223BE20](v18);
  v134 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269E510EC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v116 - v25;
  v27 = type metadata accessor for HeaderView(0);
  MEMORY[0x28223BE20](v27);
  v29 = (v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E08998(0);
  v136 = v30;
  MEMORY[0x28223BE20](v30);
  v137 = (v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E0895C(0);
  v132 = v32;
  MEMORY[0x28223BE20](v32);
  v133 = v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E30FB0(0);
  v139 = v34;
  v126 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v138 = v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v143 = v116 - v37;
  sub_269E51E1C();
  v125 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v38 = sub_269E50A7C();
  v40 = v39;
  *v29 = swift_getKeyPath();
  sub_269E2EFC4(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v41 = (v29 + *(v27 + 20));
  *v41 = v38;
  v41[1] = v40;
  LOBYTE(v38) = sub_269E5150C();
  sub_269E2F1A0(v26);
  v42 = *MEMORY[0x277CDFA10];
  v142 = a1;
  v43 = (v21 + 104);
  v44 = *(v21 + 104);
  v44(v24, v42, v20);
  sub_269E510DC();
  v45 = v24;
  v46 = v26;
  v49 = *(v21 + 8);
  v48 = v21 + 8;
  v47 = v49;
  v117 = v45;
  v49();
  v118 = v46;
  (v49)(v46, v20);
  sub_269E5102C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v137;
  sub_269E3170C(v29, v137, type metadata accessor for HeaderView);
  v59 = v58 + v136[9];
  *v59 = v38;
  *(v59 + 1) = v51;
  *(v59 + 2) = v53;
  *(v59 + 3) = v55;
  *(v59 + 4) = v57;
  v59[40] = 0;
  LOBYTE(v38) = sub_269E514FC();
  sub_269E5102C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v133;
  sub_269E3170C(v58, v133, sub_269E08998);
  v69 = v68 + *(v132 + 36);
  *v69 = v38;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  v70 = v134;
  v136 = v44;
  v137 = v43;
  v44(v134, v42, v20);
  sub_269E31170(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E310F0();
    sub_269E31170(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    sub_269E5179C();
    sub_269E316AC(v70, sub_269DFE53C);
    sub_269E316AC(v68, sub_269E0895C);
    v72 = v120;
    sub_269E31774(v142, v120, type metadata accessor for SleepWidgetViewModel);
    if (sub_269E30914())
    {
      v73 = 17;
    }

    else
    {
      v73 = 16;
    }

    KeyPath = swift_getKeyPath();
    v75 = v121;
    v76 = *(v121 + 28);
    v135 = v47;
    v77 = v118;
    v78 = v48;
    v79 = v124;
    *&v124[v76] = KeyPath;
    sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E3170C(v72, v79, type metadata accessor for SleepWidgetViewModel);
    *(v79 + *(v75 + 20)) = 3;
    *(v79 + *(v75 + 24)) = v73;
    v80 = sub_269E5150C();
    sub_269E2F1A0(v77);
    v82 = v117;
    LODWORD(v134) = *MEMORY[0x277CDF988];
    v81 = v134;
    (v136)(v117, v134, v20);
    v133 = sub_269E31170(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    sub_269E51C8C();
    v83 = v135;
    v116[1] = v78;
    (v135)(v82, v20);
    (v83)(v77, v20);
    sub_269E5102C();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v122;
    sub_269E3170C(v79, v122, type metadata accessor for ScheduleOccurrenceSectionView);
    v93 = v92 + *(v123 + 36);
    *v93 = v80;
    *(v93 + 8) = v85;
    *(v93 + 16) = v87;
    *(v93 + 24) = v89;
    *(v93 + 32) = v91;
    *(v93 + 40) = 0;
    sub_269E3170C(v92, v144, sub_269DFE6F4);
    v94 = v127;
    sub_269E30454(v142, v127);
    sub_269E2F1A0(v77);
    v95 = v81;
    v96 = v136;
    (v136)(v82, v95, v20);
    sub_269E51C8C();
    v97 = v135;
    (v135)(v82, v20);
    (v97)(v77, v20);
    sub_269E3140C();
    sub_269E5171C();
    sub_269E316AC(v94, sub_269E3123C);
    sub_269E2F1A0(v77);
    v96(v82, v134, v20);
    LODWORD(v142) = sub_269E51C8C();
    (v97)(v82, v20);
    (v97)(v77, v20);
    v98 = v126;
    v99 = *(v126 + 16);
    v100 = v138;
    v101 = v139;
    v99(v138, v143, v139);
    v147 = 0;
    v137 = sub_269DFE6F4;
    v102 = v140;
    sub_269E31774(v144, v140, sub_269DFE6F4);
    v103 = v129;
    v136 = *(v129 + 16);
    v104 = v131;
    (v136)(v141, v145, v131);
    v146 = (v142 & 1) == 0;
    v105 = v130;
    v99(v130, v100, v101);
    sub_269E30EF4(0);
    v107 = v106;
    v108 = &v105[*(v106 + 48)];
    v109 = v147;
    *v108 = 0;
    v108[8] = v109;
    sub_269E31774(v102, &v105[*(v106 + 64)], v137);
    v110 = v141;
    (v136)(&v105[*(v107 + 80)], v141, v104);
    v111 = &v105[*(v107 + 96)];
    v112 = v146;
    *v111 = 0;
    v111[8] = 0;
    v111[9] = v112;
    v113 = *(v103 + 8);
    v113(v145, v104);
    sub_269E316AC(v144, sub_269DFE6F4);
    v114 = *(v98 + 8);
    v115 = v139;
    v114(v143, v139);
    v113(v110, v104);
    sub_269E316AC(v140, sub_269DFE6F4);
    v114(v138, v115);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E30454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v36);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE6F4(0);
  v37 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  sub_269E51E1C();
  v38 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E519BC();
  sub_269E5111C();
  *&v39[55] = v44;
  *&v39[71] = v45;
  *&v39[87] = v46;
  *&v39[103] = v47;
  *&v39[7] = v41;
  *&v39[23] = v42;
  v40 = 0;
  *&v39[39] = v43;
  sub_269E31774(a1, v5, type metadata accessor for SleepWidgetViewModel);
  v18 = *(a1 + *(v36 + 28));
  if (sub_269E30914())
  {
    v19 = 17;
  }

  else
  {
    v19 = 16;
  }

  *&v8[v6[7]] = swift_getKeyPath();
  sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_269E3170C(v5, v8, type metadata accessor for SleepWidgetViewModel);
  v8[v6[5]] = v18;
  *&v8[v6[6]] = v19;
  v20 = sub_269E5150C();
  sub_269E5102C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_269E3170C(v8, v15, type metadata accessor for ScheduleOccurrenceSectionView);
  v29 = &v15[*(v37 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_269E3170C(v15, v17, sub_269DFE6F4);
  sub_269E31774(v17, v12, sub_269DFE6F4);
  v30 = *&v39[80];
  *(a2 + 73) = *&v39[64];
  *(a2 + 89) = v30;
  *(a2 + 105) = *&v39[96];
  v31 = *&v39[16];
  *(a2 + 9) = *v39;
  *(a2 + 25) = v31;
  v32 = *&v39[48];
  *(a2 + 41) = *&v39[32];
  *a2 = 0;
  *(a2 + 8) = 0;
  v33 = *&v39[111];
  *(a2 + 57) = v32;
  *(a2 + 120) = v33;
  *(a2 + 128) = 0x3FF0000000000000;
  sub_269E312A4(0);
  sub_269E31774(v12, a2 + *(v34 + 48), sub_269DFE6F4);
  sub_269E316AC(v17, sub_269DFE6F4);
  sub_269E316AC(v12, sub_269DFE6F4);
}

BOOL sub_269E30914()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_269E2F1A0(&v13 - v5);
  v7 = *(v1 + 104);
  v7(v4, *MEMORY[0x277CDF988], v0);
  sub_269E31170(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v8 = sub_269E51C8C();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8)
  {
    if (sub_269E30B78())
    {
      return 0;
    }

    sub_269E2F1A0(v6);
    v7(v4, *MEMORY[0x277CDF9D8], v0);
    v10 = sub_269E51C7C();
  }

  else
  {
    sub_269E2F1A0(v6);
    v7(v4, *MEMORY[0x277CDF9F0], v0);
    v10 = sub_269E51C8C();
  }

  v11 = v10;
  v9(v4, v0);
  v9(v6, v0);
  return (v11 & 1) != 0;
}

uint64_t sub_269E30B78()
{
  v17 = sub_269E512CC();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CC9788];
  sub_269E2EFC4(0, qword_281572618, MEMORY[0x277CC9788], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_269E50BCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UpcomingSleepWidgetView(0);
  sub_269E317DC(v0 + *(v12 + 24), v7, qword_281572618, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v14 = sub_269E50BBC();
  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

void sub_269E30E2C(uint64_t a1)
{
  if (!qword_28035F170)
  {
    sub_269E30EC0(255);
    sub_269E31170(&qword_28035F1D8, sub_269E30EC0, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F170);
    }
  }
}

void sub_269E30EF4(uint64_t a1)
{
  if (!qword_28035F180)
  {
    sub_269E30FB0(255);
    v1 = MEMORY[0x277CE1180];
    sub_269DFE6F4(255);
    sub_269E311B8(255);
    sub_269E2E568(255, &qword_28035EA40, v1, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_28035F180);
    }
  }
}

void sub_269E30FB0(uint64_t a1)
{
  if (!qword_28035F188)
  {
    sub_269E0895C(255);
    sub_269DFE53C(255);
    sub_269E310F0();
    sub_269E31170(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F188);
    }
  }
}

void sub_269E31084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_269E310F0()
{
  result = qword_2815723F8;
  if (!qword_2815723F8)
  {
    sub_269E0895C(255);
    sub_269E08BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723F8);
  }

  return result;
}

uint64_t sub_269E31170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E311B8(uint64_t a1)
{
  if (!qword_28035F190)
  {
    sub_269E3123C(255);
    sub_269E3140C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F190);
    }
  }
}

void sub_269E312A4(uint64_t a1)
{
  if (!qword_28035F1A8)
  {
    sub_269E31314(255);
    sub_269DFE6F4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035F1A8);
    }
  }
}

void sub_269E31314(uint64_t a1)
{
  if (!qword_28035F1B0)
  {
    sub_269E313B4();
    sub_269E31084(255, &qword_28035F1C0, MEMORY[0x277CE0508], MEMORY[0x277CE0500], MEMORY[0x277CE0498]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F1B0);
    }
  }
}

void sub_269E313B4()
{
  if (!qword_28035F1B8)
  {
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F1B8);
    }
  }
}

unint64_t sub_269E3140C()
{
  result = qword_28035F1C8;
  if (!qword_28035F1C8)
  {
    sub_269E3123C(255);
    sub_269E31170(&qword_28035F1D0, sub_269E31270, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F1C8);
  }

  return result;
}

void sub_269E314B4(uint64_t a1)
{
  if (!qword_28035F1E0)
  {
    sub_269E30EC0(255);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F1E0);
    }
  }
}

void sub_269E3151C(uint64_t a1)
{
  if (!qword_28035F1F0)
  {
    sub_269E315A8(255);
    sub_269E2E568(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F1F0);
    }
  }
}

void sub_269E315A8(uint64_t a1)
{
  if (!qword_28035F1F8)
  {
    sub_269E30E2C(255);
    sub_269DFE53C(255);
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C, MEMORY[0x277CE1198]);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F1F8);
    }
  }
}

uint64_t sub_269E316AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E3170C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E31774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E317DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E2EFC4(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_269E3185C()
{
  result = qword_28035F200;
  if (!qword_28035F200)
  {
    sub_269E3151C(255);
    sub_269E30E2C(255);
    sub_269DFE53C(255);
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C, MEMORY[0x277CE1198]);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F200);
  }

  return result;
}

unint64_t sub_269E319C0()
{
  result = qword_281573C20;
  if (!qword_281573C20)
  {
    sub_269E50FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573C20);
  }

  return result;
}

uint64_t type metadata accessor for GreetingSleepWidgetView(uint64_t a1)
{
  result = qword_2815738E8;
  if (!qword_2815738E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E31AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v4 = *v3;
  if (*v3)
  {
    v6 = v3[2];
    v5 = v3[3];
    v7 = v3[1];
    v10[0] = v4;
    v10[1] = v7;
    v11 = v6;
    v12 = v5;
    sub_269E0B178(&v13);
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v10[0] = v8;
  return sub_269E49E94(v10, 0, a2);
}

uint64_t sub_269E31B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *(a2 + 24) = type metadata accessor for SleepWidgetViewModel(0);
  *(a2 + 32) = &protocol witness table for SleepWidgetViewModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_269E31CE0(v2, boxed_opaque_existential_1, type metadata accessor for SleepWidgetViewModel);
  sub_269E31CE0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GreetingSleepWidgetView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_269E31D48(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = swift_getKeyPath();
  *(a2 + 48) = v8;
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  *(a2 + 40) = sub_269E31DAC;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_269E31CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E31D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GreetingSleepWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E31DAC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for GreetingSleepWidgetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269E31AA8(v4, a1);
}

void sub_269E31E1C(uint64_t a1)
{
  if (!qword_281572EA8)
  {
    v2 = type metadata accessor for SleepWidgetChartView(255);
    v3 = sub_269E31EB0(&qword_281572A30, type metadata accessor for SleepWidgetChartView, &unk_269E56428);
    v5 = type metadata accessor for SleepWidgetResultsView(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_281572EA8);
    }
  }
}

uint64_t sub_269E31EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Calendar.midnight(after:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_269E50C6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3216C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E50B9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_269E50C3C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_269DFEA3C(v9);
    v14 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_269E50BFC();
    (*(v11 + 8))(v13, v10);
    v14 = 0;
  }

  return (*(v11 + 56))(a2, v14, 1, v10);
}

void sub_269E3216C(uint64_t a1)
{
  if (!qword_281573C60)
  {
    sub_269E50B9C();
    v1 = sub_269E51F9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281573C60);
    }
  }
}

void sub_269E3220C(uint64_t a1)
{
  sub_269E34FE4(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E34FE4(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E32314(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  sub_269E34E94(0);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_269E50E4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v2;
  v16(v13, v2, v9);
  v17 = MEMORY[0x277D626D0];
  v26 = sub_269E34CD4(&qword_281573C30, MEMORY[0x277D626D0], MEMORY[0x277D626E0]);
  sub_269E51FBC();
  v18 = v17;
  v19 = v29;
  sub_269E34CD4(&qword_281573C38, v18, MEMORY[0x277D626D8]);
  v27 = a2;
  v20 = sub_269E51C9C();
  v21 = *(v19 + 48);
  *v8 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v10 + 32))(&v8[v21], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v22 = v27;
    v16(&v8[v21], v27, v9);
    v16(v13, v22, v9);
    sub_269E51FCC();
  }

  v23 = v30;
  sub_269E34F00(v8, v30);
  v24 = *v23;
  (*(v10 + 32))(v31, &v23[*(v19 + 48)], v9);
  return v24;
}

uint64_t sub_269E325FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_269E34F64(v2, &v15 - v10, &qword_281572608, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E51B0C();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269E32820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3AF8];
  sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for SleepStageResultsView(0);
  sub_269E34F64(v1 + *(v11 + 20), v10, &qword_281572610, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E51ADC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269E32A4C@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = MEMORY[0x277CE0330];
  sub_269E3497C(0, &qword_281572238, type metadata accessor for SleepStageBarView, MEMORY[0x277CE0330]);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v86 - v4;
  sub_269E34948(0);
  v111 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE0330];
  sub_269E35394(0, &qword_2815721E8, sub_269E349E8, sub_269E34948, MEMORY[0x277CE0330]);
  v108 = v8;
  MEMORY[0x28223BE20](v8);
  v110 = &v86 - v9;
  sub_269E35394(0, &qword_2815721F0, sub_269E34A30, MEMORY[0x277D626E8], v7);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v106 = &v86 - v11;
  sub_269E349E8(0);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_269E50BCC();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SleepStageBarView(0);
  MEMORY[0x28223BE20](v99);
  v95 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E3497C(0, &qword_281572208, sub_269E34A64, v2);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v102 = &v86 - v17;
  sub_269E35394(0, &qword_281572240, MEMORY[0x277D626E8], type metadata accessor for SleepStageBarView, v7);
  v96 = v18;
  MEMORY[0x28223BE20](v18);
  v97 = &v86 - v19;
  sub_269E34A64(0);
  v100 = v20;
  MEMORY[0x28223BE20](v20);
  v98 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269E51ADC();
  v89 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269E51B0C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_269E50E4C();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_269E50DAC();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_269E50E5C();
  v91 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v90 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E34A30(0);
  v103 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = (&v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v1 + *(type metadata accessor for SleepStageResultsView(0) + 24);
  if (*(v39 + 32) <= 1u)
  {
    if (*(v39 + 32))
    {
      v45 = v99;
      v46 = v95;
      sub_269E346D0(v95 + *(v99 + 32));
      *v46 = swift_getKeyPath();
      v47 = MEMORY[0x277CDF458];
      sub_269E34FE4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      *(v46 + v45[5]) = swift_getKeyPath();
      sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], v47);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v49 = v45[6];
      *(v46 + v49) = swift_getKeyPath();
      sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], v47);
      swift_storeEnumTagMultiPayload();
      v50 = v46 + v45[7];
      *v50 = KeyPath;
      v50[8] = 0;
      v51 = v45[9];
      sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
      v52 = v92;
      sub_269E50BAC();
      HKSPIsRemoveSpacesForTimeFormatEnabled();
      v53 = sub_269E51EDC();
      (*(v93 + 8))(v52, v94);
      *(v46 + v51) = v53;
      sub_269E34DCC(v46, v97, type metadata accessor for SleepStageBarView);
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
      v54 = v98;
      sub_269E513BC();
      sub_269E34DCC(v54, v102, sub_269E34A64);
      swift_storeEnumTagMultiPayload();
      sub_269E34BF4();
      sub_269E34AAC();
      sub_269E513BC();
      sub_269E34E34(v54, sub_269E34A64);
      sub_269E34E34(v46, type metadata accessor for SleepStageBarView);
    }

    else
    {
      sub_269E33DF8(v34);
      sub_269E325FC(v28);
      sub_269E32820(v24);
      sub_269E3400C(v24, v31);
      (*(v89 + 8))(v24, v22);
      (*(v26 + 8))(v28, v25);
      v40 = objc_allocWithZone(sub_269E50EFC());
      sub_269E50EEC();
      v41 = v90;
      sub_269E50DBC();
      v42 = v91;
      v43 = v104;
      (*(v91 + 16))(v97, v41, v104);
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
      v44 = v98;
      sub_269E513BC();
      sub_269E34DCC(v44, v102, sub_269E34A64);
      swift_storeEnumTagMultiPayload();
      sub_269E34BF4();
      sub_269E34AAC();
      sub_269E513BC();
      sub_269E34E34(v44, sub_269E34A64);
      (*(v42 + 8))(v41, v43);
    }

    goto LABEL_7;
  }

  if (*(v39 + 32) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_269E34BF4();
    sub_269E34AAC();
    sub_269E513BC();
LABEL_7:
    v55 = sub_269E34A30;
    sub_269E34DCC(v38, v106, sub_269E34A30);
    swift_storeEnumTagMultiPayload();
    sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
    v56 = v107;
    sub_269E513BC();
    v57 = sub_269E349E8;
    sub_269E34DCC(v56, v110, sub_269E349E8);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_269E34B00();
    sub_269E34D1C();
    sub_269E513BC();
    sub_269E34E34(v56, v57);
    v58 = v38;
    return sub_269E34E34(v58, v55);
  }

  v61 = *v39;
  v60 = *(v39 + 8);
  if (!*v39 || !v60)
  {
    v67 = *(v39 + 16);
    v68 = *(v39 + 24);
    goto LABEL_15;
  }

  if (![v60 hasSleepStageData])
  {
    v61 = *v39;
    v60 = *(v39 + 8);
    v74 = *(v39 + 32);
    v67 = *(v39 + 16);
    v68 = *(v39 + 24);
    if (v74 != 3)
    {
      if (v74 == 2 || !v61)
      {
        goto LABEL_27;
      }

LABEL_16:
      if (v60)
      {
        v69 = v60;
        v70 = v68;

        v71 = v69;
        v72 = v69;
        [v72 sleepDuration];
        if (v73 > COERCE_DOUBLE(1) && v73 > 0.0)
        {
          sub_269DF6EA0(v61, v71, v67, v68);
LABEL_26:
          v77 = v99;
          v38 = v95;
          sub_269E346D0(v95 + *(v99 + 32));
          *v38 = swift_getKeyPath();
          v78 = MEMORY[0x277CDF458];
          sub_269E34FE4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
          swift_storeEnumTagMultiPayload();
          *(v38 + v77[5]) = swift_getKeyPath();
          sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], v78);
          swift_storeEnumTagMultiPayload();
          v79 = swift_getKeyPath();
          v80 = v77[6];
          *(v38 + v80) = swift_getKeyPath();
          sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], v78);
          swift_storeEnumTagMultiPayload();
          v81 = v38 + v77[7];
          *v81 = v79;
          v81[8] = 0;
          v82 = v77[9];
          sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
          v83 = v92;
          sub_269E50BAC();
          HKSPIsRemoveSpacesForTimeFormatEnabled();
          v84 = sub_269E51EDC();
          (*(v93 + 8))(v83, v94);
          *(v38 + v82) = v84;
          v55 = type metadata accessor for SleepStageBarView;
          sub_269E34DCC(v38, v87, type metadata accessor for SleepStageBarView);
          swift_storeEnumTagMultiPayload();
          sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
          sub_269E34AAC();
          v56 = v88;
          sub_269E513BC();
          v57 = sub_269E34948;
          sub_269E34DCC(v56, v110, sub_269E34948);
          goto LABEL_8;
        }

        [v72 inBedDuration];
        v76 = v75;
        sub_269DF6EA0(v61, v71, v67, v68);
        if (v76 > COERCE_DOUBLE(1) && v76 > 0.0)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
      sub_269E34AAC();
      v85 = v88;
      sub_269E513BC();
      v55 = sub_269E34948;
      sub_269E34DCC(v85, v110, sub_269E34948);
      swift_storeEnumTagMultiPayload();
      sub_269E34B00();
      sub_269E34D1C();
      sub_269E513BC();
      v58 = v85;
      return sub_269E34E34(v58, v55);
    }

LABEL_15:
    if (!v61)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_269E33DF8(v34);
  sub_269E325FC(v28);
  sub_269E32820(v24);
  sub_269E3400C(v24, v31);
  (*(v89 + 8))(v24, v22);
  (*(v26 + 8))(v28, v25);
  v62 = objc_allocWithZone(sub_269E50EFC());
  sub_269E50EEC();
  v63 = v90;
  sub_269E50DBC();
  v64 = v91;
  v65 = v104;
  (*(v91 + 16))(v106, v63, v104);
  swift_storeEnumTagMultiPayload();
  sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
  sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
  v66 = v107;
  sub_269E513BC();
  sub_269E34DCC(v66, v110, sub_269E349E8);
  swift_storeEnumTagMultiPayload();
  sub_269E34B00();
  sub_269E34D1C();
  sub_269E513BC();
  sub_269E34E34(v66, sub_269E349E8);
  return (*(v64 + 8))(v63, v65);
}

uint64_t sub_269E33DF8@<X0>(uint64_t a1@<X8>)
{
  sub_269E34FE4(0, &qword_281573C40, MEMORY[0x277D626C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = (v1 + *(type metadata accessor for SleepStageResultsView(0) + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 32);
  if (v9 == 3)
  {
    if (v8)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
LABEL_6:
      v11 = v7;
      sub_269E51F1C();

      v12 = sub_269E50DAC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v5, 0, 1, v12);
      return (*(v13 + 32))(a1, v5, v12);
    }
  }

  else if (v9 != 2 && v8 != 0 && v7 != 0)
  {
    goto LABEL_6;
  }

  v17 = sub_269E50DAC();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, 1, 1, v17);
  sub_269E50D9C();
  result = (*(v18 + 48))(v5, 1, v17);
  if (result != 1)
  {
    return sub_269E35048(v5);
  }

  return result;
}

uint64_t sub_269E3400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v46 = a1;
  v47 = sub_269E51ADC();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269E50E4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v59 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = v42 - v7;
  v8 = sub_269E51B0C();
  v61 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v58 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v42 - v11;
  v13 = MEMORY[0x277D626D0];
  sub_269E34FE4(0, &qword_281571BE8, MEMORY[0x277D626D0], MEMORY[0x277D84560]);
  v15 = v14;
  v16 = *(v4 + 72);
  v60 = v4;
  v17 = *(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_269E528D0;
  v55 = (v17 + 32) & ~v17;
  sub_269E50DFC();
  v64 = v18;
  v19 = sub_269E34CD4(&qword_281573C30, MEMORY[0x277D626D0], MEMORY[0x277D626E0]);
  sub_269E34FE4(0, &qword_281571DB0, v13, MEMORY[0x277D83940]);
  v21 = v20;
  v22 = sub_269E0482C();
  v52 = v3;
  v53 = v21;
  v54 = v19;
  sub_269E51FEC();
  v23 = v61;
  v50 = *(v61 + 16);
  v51 = v61 + 16;
  v50(v12, v62, v8);
  v24 = *(v23 + 88);
  v43 = v12;
  v56 = v8;
  v49 = v24;
  v25 = v24(v12, v8);
  v48 = *MEMORY[0x277CE3B98];
  v42[4] = v16;
  v42[3] = v15;
  v42[2] = v17;
  v42[1] = v22;
  if (v25 == v48)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_269E546C0;
    sub_269E50E0C();
    sub_269E50E1C();
    sub_269E50DEC();
    v64 = v26;
    v27 = v59;
    v30 = v52;
    sub_269E51FEC();
    v31 = v57;
    sub_269E32314(v57, v27);
    v32 = *(v60 + 8);
    v32(v27, v30);
    v32(v31, v30);
    v33 = v61;
    v34 = v56;
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_269E528E0;
    sub_269E50E3C();
    sub_269E50E2C();
    v64 = v28;
    v29 = v59;
    v30 = v52;
    sub_269E51FEC();
    v31 = v57;
    sub_269E32314(v57, v29);
    v32 = *(v60 + 8);
    v32(v29, v30);
    v32(v31, v30);
    v33 = v61;
    v34 = v56;
    (*(v61 + 8))(v43, v56);
  }

  v35 = v58;
  v50(v58, v62, v34);
  v36 = v49(v35, v34);
  if (v36 != v48 && v36 != *MEMORY[0x277CE3B68])
  {
    return (*(v33 + 8))(v35, v34);
  }

  v38 = v44;
  sub_269E51ABC();
  v39 = sub_269E51AAC();
  result = (*(v45 + 8))(v38, v47);
  if (v39)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_269E528E0;
    sub_269E50DCC();
    sub_269E50E2C();
    v64 = v40;
    v41 = v59;
    sub_269E51FEC();
    sub_269E32314(v31, v41);
    v32(v41, v30);
    return (v32)(v31, v30);
  }

  return result;
}

uint64_t sub_269E346D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E509EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SleepStageResultsView(0) + 24);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  if (v12 != 3)
  {
    if (v12 != 2 && v8 != 0 && v9 != 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    sub_269E509DC();
    result = type metadata accessor for SleepStageBarViewModel(0);
    v17 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_18;
  }

LABEL_6:
  v14 = v9;
  sub_269DF6E4C(v8, v9, v10, v11);
  sub_269E51F0C();
  v31 = a1;
  if (v10 == 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = sub_269E350F4(&unk_287AB3338);
  v30 = v3;
  v33 = v15;
  v17 = HKSleepDaySummary.segments(_:highlightBehavior:)(v16, &v33);

  v18 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
  v29 = v11;
  sub_269E0F23C();
  v19 = sub_269E51E3C();

  sub_269E0AC2C(v19);
  v21 = v20;

  v22 = sub_269E0F2A4(v21);

  v32[0] = v15;
  a1 = v31;
  v23 = HKSleepDaySummary.segments(_:highlightBehavior:)(v22, v32);

  sub_269DF6EA0(v8, v9, v10, v29);
  (*(v4 + 32))(a1, v6, v30);
  result = type metadata accessor for SleepStageBarViewModel(0);
LABEL_19:
  v27 = (a1 + *(result + 20));
  *v27 = v17;
  v27[1] = v23;
  v28 = MEMORY[0x277D84F90];
  v27[2] = MEMORY[0x277D84F90];
  v27[3] = v28;
  v27[4] = v28;
  v27[5] = v28;
  return result;
}

void sub_269E3497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, &type metadata for SleepStageEmptyView);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_269E34AAC()
{
  result = qword_2815736B0[0];
  if (!qword_2815736B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815736B0);
  }

  return result;
}

unint64_t sub_269E34B00()
{
  result = qword_281572100;
  if (!qword_281572100)
  {
    sub_269E349E8(255);
    sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572100);
  }

  return result;
}

unint64_t sub_269E34BF4()
{
  result = qword_2815721E0;
  if (!qword_2815721E0)
  {
    sub_269E34A64(255);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
    sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721E0);
  }

  return result;
}

uint64_t sub_269E34CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E34D1C()
{
  result = qword_2815721D0;
  if (!qword_2815721D0)
  {
    sub_269E34948(255);
    sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView, &unk_269E53374);
    sub_269E34AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721D0);
  }

  return result;
}

uint64_t sub_269E34DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E34E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269E34E94(uint64_t a1)
{
  if (!qword_281571D48)
  {
    sub_269E50E4C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281571D48);
    }
  }
}

uint64_t sub_269E34F00(uint64_t a1, uint64_t a2)
{
  sub_269E34E94(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E34F64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E34FE4(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_269E34FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E35048(uint64_t a1)
{
  sub_269E34FE4(0, &qword_281573C40, MEMORY[0x277D626C0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E350F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269E0F61C(0);
    v3 = sub_269E5209C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_269E5220C();
      MEMORY[0x26D653EA0](v10);
      result = sub_269E5223C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
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
        *(v17 + 8 * v13) = v10;
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

uint64_t sub_269E3524C(uint64_t a1)
{
  result = sub_269E509EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269E352C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E35394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269E35418(uint64_t a1)
{
  v2 = sub_269E50BCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_269E51CBC();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_269DF6A7C(0, qword_281571C10, 0x277CCA8D8);
  if (!sub_269E51F4C())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  sub_269E50BAC();
  return sub_269E51CFC();
}

uint64_t sub_269E355AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v8 = sub_269E5100C();
  v9 = sub_269E51ECC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v23);
    _os_log_impl(&dword_269DE5000, v8, v9, "[%{public}s] Returning placeholder for sleep score widget...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D654490](v11, -1, -1);
    MEMORY[0x26D654490](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_269E50B7C();
  v12 = type metadata accessor for SleepScoreWidgetEntry(0);
  v13 = v12[5];
  sub_269E50B7C();
  v14 = sub_269E50B9C();
  (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
  v15 = *(type metadata accessor for SleepScoreWidgetTimelineProvider(0) + 24);
  v16 = (a1 + v12[6]);
  v17 = *(type metadata accessor for SleepScoreWidgetViewModel(0) + 20);
  v18 = sub_269E50CDC();
  (*(*(v18 - 8) + 16))(&v16[v17], v2 + v15, v18);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v19 = v12[7];
  v20 = sub_269E51BEC();
  return (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
}

uint64_t sub_269E3585C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v8 = sub_269E5100C();
  v9 = sub_269E51ECC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v14);
    _os_log_impl(&dword_269DE5000, v8, v9, "[%{public}s] Returning snapshot for sleep score widget", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D654490](v11, -1, -1);
    MEMORY[0x26D654490](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

uint64_t sub_269E35A18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a5;
  v10 = sub_269E5101C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a6;
    v24 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v27);
    _os_log_impl(&dword_269DE5000, v14, v15, v25, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    v19 = v17;
    a6 = v23;
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  sub_269E51BFC();
  sub_269E3625C(1, a6, v20);
}

uint64_t sub_269E35C28(uint64_t a1, void (*a2)(void))
{
  v46 = a1;
  sub_269E39CE4(0);
  v4 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_269E50B9C();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E51BCC();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v14;
  v15 = sub_269E5101C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v19 = sub_269E5100C();
  v20 = sub_269E51ECC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v9;
    v24 = v23;
    v49 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v49);
    _os_log_impl(&dword_269DE5000, v19, v20, "[%{public}s] Returning timeline for sleep score widget", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v9 = v38;
    MEMORY[0x26D654490](v24, -1, -1);
    v25 = v22;
    a2 = v39;
    MEMORY[0x26D654490](v25, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v26 = type metadata accessor for SleepScoreWidgetEntry(0);
  v27 = v46;
  sub_269E39A9C(v46 + *(v26 + 20), v8, &qword_281573C60, MEMORY[0x277CC9578]);
  v28 = v41;
  v29 = (*(v41 + 48))(v8, 1, v9);
  v30 = v43;
  if (v29 == 1)
  {
    sub_269E39C04(v8, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v31 = v40;
    (*(v28 + 32))(v40, v8, v9);
    sub_269E51BAC();
    (*(v28 + 8))(v31, v9);
  }

  sub_269E3953C(0, &qword_28035F218, type metadata accessor for SleepScoreWidgetEntry, MEMORY[0x277D84560]);
  v32 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_269E528D0;
  sub_269E39C74(v27, v33 + v32, type metadata accessor for SleepScoreWidgetEntry);
  v35 = v44;
  v34 = v45;
  (*(v44 + 16))(v42, v30, v45);
  sub_269E3871C(&qword_28035F208, type metadata accessor for SleepScoreWidgetEntry, &unk_269E55980);
  v36 = v47;
  sub_269E51C2C();
  a2(v36);
  (*(v48 + 8))(v36, v4);
  return (*(v35 + 8))(v30, v34);
}

uint64_t sub_269E3625C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v29 = sub_269E50CDC();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = type metadata accessor for SleepScoreWidgetTimelineProvider(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = *(v10 + 36);
  v28 = *(v10 + 32);
  v12 = v3 + v11;
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_269E39C74(v4, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreWidgetTimelineProvider);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_269E39B1C(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SleepScoreWidgetTimelineProvider);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v32;
  *v17 = v31;
  v17[1] = v18;

  result = sub_269E50CEC();
  v20 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v13;
    v34 = v14;
    v21 = v29;
    (*(v5 + 16))(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v28, v29);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    *(v23 + 24) = v14;
    (*(v5 + 32))(v23 + v22, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = sub_269E398D8;
    v24[1] = v16;
    v25 = v13;
    v26 = v14;

    sub_269E45B8C(v30 & 1, v20, 132, sub_269E39988, v23);
  }

  return result;
}

uint64_t sub_269E36514(void *a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v90 = a5;
  v91 = a4;
  v83 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v93 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v77 - v11;
  v87 = type metadata accessor for SleepScoreWidgetEntry(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], v7);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v77 - v17;
  v86 = sub_269E50B9C();
  v84 = *(v86 - 8);
  v18 = MEMORY[0x28223BE20](v86);
  v95 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v81 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v22 = MEMORY[0x28223BE20](v81);
  v96 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v77 - v25;
  MEMORY[0x28223BE20](v24);
  v82 = &v77 - v26;
  v27 = sub_269E5101C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v77 - v32;
  v94 = a1;
  v92 = v31;
  if (a2)
  {
    v79 = v21;
    v34 = a2;
    sub_269E50FFC();
    v35 = a2;
    v36 = sub_269E5100C();
    v37 = sub_269E51EAC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v97[0] = v77;
      *v38 = 136446466;
      *(v38 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, v97);
      *(v38 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v78 = v16;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v41 + 16))(&v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      v42 = sub_269E51D0C();
      v44 = sub_269E47920(v42, v43, v97);

      *(v38 + 14) = v44;
      v16 = v78;
      _os_log_impl(&dword_269DE5000, v36, v37, "[%{public}s] Error getting sleep score widget viewModel: %{public}s", v38, 0x16u);
      v45 = v77;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v45, -1, -1);
      v46 = v38;
      a1 = v94;
      MEMORY[0x26D654490](v46, -1, -1);
    }

    else
    {
    }

    v28[1](v33, v27);
    v21 = v79;
    v31 = v92;
  }

  sub_269E50FFC();
  v47 = v82;
  sub_269E39C74(a1, v82, type metadata accessor for SleepScoreWidgetViewModel);
  v48 = sub_269E5100C();
  v49 = sub_269E51ECC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v79 = v28;
    v51 = v50;
    v52 = swift_slowAlloc();
    v97[0] = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, v97);
    *(v51 + 12) = 2082;
    sub_269E39C74(v47, v80, type metadata accessor for SleepScoreWidgetViewModel);
    v53 = sub_269E51D0C();
    v54 = v27;
    v55 = v16;
    v56 = v21;
    v58 = v57;
    sub_269E39A3C(v47, type metadata accessor for SleepScoreWidgetViewModel);
    v59 = sub_269E47920(v53, v58, v97);
    v21 = v56;
    v16 = v55;

    *(v51 + 14) = v59;
    _os_log_impl(&dword_269DE5000, v48, v49, "[%{public}s] Returning sleep score widget viewModel: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v52, -1, -1);
    MEMORY[0x26D654490](v51, -1, -1);

    (*(v79 + 1))(v92, v54);
  }

  else
  {

    sub_269E39A3C(v47, type metadata accessor for SleepScoreWidgetViewModel);
    v28[1](v31, v27);
  }

  v60 = v86;
  sub_269E50B8C();
  type metadata accessor for SleepScoreWidgetTimelineProvider(0);
  v61 = v85;
  Calendar.midnight(after:)(v85);
  v62 = v84;
  (*(v84 + 16))(v95, v21, v60);
  sub_269E39A9C(v61, v16, &qword_281573C60, MEMORY[0x277CC9578]);
  v63 = v94;
  sub_269E39C74(v94, v96, type metadata accessor for SleepScoreWidgetViewModel);
  v64 = v89;
  if (*v63)
  {
    v65 = v63[3];
    if (v65)
    {
      v66 = [v65 averageSleepDuration];
      if (v66)
      {
        v67 = v66;
        [v66 _value];
      }
    }

    v68 = v93;
    sub_269E51BDC();
    v69 = sub_269E51BEC();
    v70 = *(v69 - 8);
    (*(v70 + 56))(v68, 0, 1, v69);
    (*(v70 + 32))(v64, v68, v69);
  }

  else
  {
    v69 = sub_269E51BEC();
    v71 = *(v69 - 8);
    v72 = v93;
    (*(v71 + 56))(v93, 1, 1, v69);
    sub_269E51BDC();
    if ((*(v71 + 48))(v72, 1, v69) != 1)
    {
      sub_269E39C04(v93, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  sub_269E51BEC();
  (*(*(v69 - 8) + 56))(v64, 0, 1, v69);
  v73 = v88;
  (*(v62 + 32))(v88, v95, v60);
  v74 = v87;
  v75 = MEMORY[0x277CC9578];
  sub_269E39B84(v16, v73 + *(v87 + 20), &qword_281573C60, MEMORY[0x277CC9578]);
  sub_269E39B1C(v96, v73 + *(v74 + 24), type metadata accessor for SleepScoreWidgetViewModel);
  sub_269E39B84(v64, v73 + *(v74 + 28), &qword_281571DE0, MEMORY[0x277CE3E20]);
  v91(v73);
  sub_269E39A3C(v73, type metadata accessor for SleepScoreWidgetEntry);
  sub_269E39C04(v61, &qword_281573C60, v75);
  return (*(v62 + 8))(v21, v60);
}

uint64_t sub_269E37120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269E371B8(a1);
}

uint64_t sub_269E371B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SleepScoreWidgetEntry(0);
  v2[5] = swift_task_alloc();
  v3 = sub_269E5101C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269E372B4, 0, 0);
}

uint64_t sub_269E372B4(uint64_t a1)
{
  v18 = v1;
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v17);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] fetching current entry for relevance...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[10] = v10;
  v11 = v1[3];
  v12 = swift_task_alloc();
  v1[11] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = 1;
  v13 = swift_task_alloc();
  v1[12] = v13;
  *v13 = v1;
  v13[1] = sub_269E374BC;
  v15 = v1[4];
  v14 = v1[5];

  return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269E397F4, v12, v15);
}

uint64_t sub_269E374BC()
{

  return MEMORY[0x2822009F8](sub_269E375D4, 0, 0);
}

uint64_t sub_269E375D4(uint64_t a1)
{
  v14 = v1;
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v13);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] determining relevance for entry...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v5(v6, v7);
  v10 = v1[5];
  sub_269DF4554(v1[2]);
  sub_269E39A3C(v10, type metadata accessor for SleepScoreWidgetEntry);

  v11 = v1[1];

  return v11();
}

uint64_t sub_269E3778C(uint64_t a1, uint64_t a2, int a3)
{
  sub_269E39800(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_269E3625C(a3, sub_269E39868, v10);
}

uint64_t sub_269E378D0(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreWidgetEntry(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269E39C74(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreWidgetEntry);
  sub_269E39800(0);
  return sub_269E51DEC();
}

SleepWidgetUI::SleepScoreWidget __swiftcall SleepScoreWidget.init()()
{
  v1 = v0;
  v2 = sub_269E51CDC();
  *v1 = v2;
  v1[1] = v3;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t SleepScoreWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v75 = sub_269E51CBC();
  v68 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50BDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreWidgetTimelineProvider(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E3852C(0);
  v71 = v11;
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38814(0);
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  MEMORY[0x28223BE20](v13);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E388E4(0);
  v17 = *(v16 - 8);
  v78 = v16;
  v79 = v17;
  MEMORY[0x28223BE20](v16);
  v70 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E389F4(0);
  v20 = *(v19 - 8);
  v80 = v19;
  v81 = v20;
  MEMORY[0x28223BE20](v19);
  v73 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38B3C(0);
  v84 = v22;
  v86 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v74 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38CB4(0);
  v85 = v24;
  v83 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v82 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *v1;
  (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4);

  sub_269E50BEC();
  (*(v5 + 8))(v7, v4);
  v26 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v10 = v26;
  v27 = objc_allocWithZone(MEMORY[0x277D62528]);
  v28 = v26;
  v29 = sub_269E51CCC();
  v30 = [v27 initWithIdentifier:v29 healthStore:v28 options:1];

  v10[1] = v30;
  sub_269E50D4C();
  v31 = v30;
  sub_269E50D3C();
  sub_269E50D2C();

  v32 = (v10 + *(v8 + 28));
  *v32 = v28;
  v32[1] = v31;
  sub_269E38590(0);
  sub_269E38764();
  sub_269E3871C(&qword_281573430, type metadata accessor for SleepScoreWidgetTimelineProvider, &unk_269E55928);
  sub_269E51B8C();
  v33 = v3;
  sub_269E51CAC();
  v34 = sub_269E35418(v3);
  v36 = v35;
  v37 = *(v68 + 8);
  v38 = v75;
  v37(v3, v75);
  v88 = v34;
  v89 = v36;
  v39 = sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
  v40 = sub_269DF0E28();
  v41 = v69;
  v42 = v71;
  v43 = v66;
  sub_269E5138C();

  (*(v72 + 8))(v43, v42);
  sub_269E51CAC();
  v44 = sub_269E35418(v33);
  v46 = v45;
  v37(v33, v38);
  v92 = v44;
  v93 = v46;
  v88 = v42;
  v47 = MEMORY[0x277D837D0];
  v89 = MEMORY[0x277D837D0];
  v90 = v39;
  v91 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v70;
  v50 = v76;
  sub_269E5135C();

  (*(v77 + 8))(v41, v50);
  _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v88 = v50;
  v89 = v47;
  v90 = OpaqueTypeConformance2;
  v91 = v40;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v73;
  v53 = v78;
  sub_269E5136C();

  (*(v79 + 8))(v49, v53);
  v88 = v53;
  v89 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v74;
  v56 = v80;
  sub_269E5139C();
  (*(v81 + 8))(v52, v56);
  v57 = MEMORY[0x277D84560];
  sub_269E3953C(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  sub_269E51B3C();
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269E3953C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v57);
  v58 = sub_269E51B0C();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_269E528D0;
  (*(v59 + 104))(v61 + v60, *MEMORY[0x277CE3B68], v58);
  v88 = v56;
  v89 = v54;
  swift_getOpaqueTypeConformance2();
  v62 = v82;
  v63 = v84;
  sub_269E5137C();

  (*(v86 + 8))(v55, v63);
  sub_269E3903C(v87);
  return (*(v83 + 8))(v62, v85);
}

void sub_269E3852C(uint64_t a1)
{
  if (!qword_281571E08)
  {
    sub_269E38590(255);
    sub_269E38764();
    v1 = sub_269E51B9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571E08);
    }
  }
}

void sub_269E38590(uint64_t a1)
{
  if (!qword_281572448)
  {
    sub_269E38630(255);
    sub_269E39720(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572448);
    }
  }
}

void sub_269E38630(uint64_t a1)
{
  if (!qword_281571FA0)
  {
    type metadata accessor for SleepScoreWidgetView(255);
    sub_269E50B9C();
    sub_269E3871C(qword_281573388, type metadata accessor for SleepScoreWidgetView, &protocol conformance descriptor for SleepScoreWidgetView);
    sub_269E3871C(&qword_281573C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_269E5192C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FA0);
    }
  }
}

uint64_t sub_269E3871C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E38764()
{
  result = qword_281572450;
  if (!qword_281572450)
  {
    sub_269E38590(255);
    sub_269E3871C(&qword_281571FA8, sub_269E38630, MEMORY[0x277CE1148]);
    sub_269E1C2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572450);
  }

  return result;
}

void sub_269E38814(uint64_t a1)
{
  if (!qword_281572270)
  {
    sub_269E3852C(255);
    sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572270);
    }
  }
}

void sub_269E388E4(uint64_t a1)
{
  if (!qword_2815722B0)
  {
    sub_269E38814(255);
    sub_269E3852C(255);
    sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722B0);
    }
  }
}

void sub_269E389F4(uint64_t a1)
{
  if (!qword_281572298)
  {
    sub_269E388E4(255);
    sub_269E38814(255);
    sub_269E3852C(255);
    sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572298);
    }
  }
}

void sub_269E38B3C(uint64_t a1)
{
  if (!qword_281572250)
  {
    sub_269E389F4(255);
    sub_269E388E4(255);
    sub_269E38814(255);
    sub_269E3852C(255);
    sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572250);
    }
  }
}

void sub_269E38CB4(uint64_t a1)
{
  if (!qword_281572280)
  {
    sub_269E38B3C(255);
    sub_269E389F4(255);
    sub_269E388E4(255);
    sub_269E38814(255);
    sub_269E3852C(255);
    sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572280);
    }
  }
}