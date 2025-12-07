uint64_t sub_21D793214(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21D793298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D793310()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE618D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE618D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D793428(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D793494(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void sub_21D793534(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D793594()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D7935E0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    v6 = 5;
    sub_21D7953A8(&v6);
  }
}

uint64_t sub_21D793650()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D793694(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = 5;
    sub_21D7953A8(&v6);
  }
}

void (*sub_21D793704(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D793798;
}

void sub_21D793798(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  if (a2)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = 5;
    v8 = &v9;
  }

  else
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = 5;
    v8 = &v10;
  }

  sub_21D7953A8(v8);
LABEL_7:

  free(v3);
}

uint64_t sub_21D79381C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = type metadata accessor for TodaySectionsContext();
    result = swift_allocObject();
    v4 = &off_282ED19B0;
  }

  else
  {
    result = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  a1[4] = v4;
  return result;
}

uint64_t TTRShowTodayGroupsDataModelSource.__allocating_init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, char a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationSearchMinRadius) = 500;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store) = a1;
  swift_beginAccess();
  *(v12 + v13) = a2;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped) = a3;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted) = a4;
  v14 = qword_280D1AA10;
  v15 = a1;
  v16 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(0, 255, v17, v18);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 18) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_tipKitContextInstance) = v20;
  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v22 = sub_21DBF70DC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v12 + v21, a5, v22);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v12 + 16) = a6 & 1;
  swift_beginAccess();
  v19[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D7953A8(&v25);

  (*(v23 + 8))(a5, v22);
  return v12;
}

uint64_t TTRShowTodayGroupsDataModelSource.init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, char a3, char a4, uint64_t a5, char a6)
{
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationSearchMinRadius) = 500;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v13) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped) = a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted) = a4;
  v14 = qword_280D1AA10;
  v15 = a1;
  v16 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(0, 255, v17, v18);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_tipKitContextInstance) = v20;
  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v22 = sub_21DBF70DC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v6 + v21, a5, v22);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = a6 & 1;
  swift_beginAccess();
  v19[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D7953A8(&v25);

  (*(v23 + 8))(a5, v22);
  return v6;
}

id sub_21D793E68@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D793EE0@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance);
  if (*(v15 + 40))
  {
    v16 = *MEMORY[0x277D45468];
    v17 = *(v6 + 104);
    v17(v10, v16, v5, v12);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    swift_beginAccess();
    *v10 = *(v15 + 48);
    v17 = *(v6 + 104);
    (v17)(v10, *MEMORY[0x277D45480], v5);
    v34 = v1;
    v35 = v2;
    v20 = v3;
    v21 = *(v6 + 8);
    sub_21DBF8E0C();
    v21(v10, v5);
    v3 = v20;
    v1 = v34;
    v2 = v35;
    v19 = *MEMORY[0x277D45470];
    v18 = v14;
  }

  (v17)(v18, v19, v5);
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowTodayGroupsPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowTodayGroupsPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D79432C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v126 = sub_21DBF721C();
  v100 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v128 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_21DBF724C();
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v125 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60710, &qword_21DC24360);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v97 - v6;
  v131 = sub_21DBFB1AC();
  v103 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v102 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v97 - v9;
  v107 = sub_21DBF729C();
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = (&v97 - v12);
  v13 = sub_21DBF563C();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v122 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F0, &qword_21DC275F8);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = &v97 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8, &unk_21DC27600);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v106 = &v97 - v17;
  v18 = sub_21DBF714C();
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v118 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21DBF734C();
  v20 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21DBF70DC();
  v22 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21DBF738C();
  v110 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DBF71BC();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v97 - v33;
  v109 = sub_21D8526E8((&v97 - v33), v32);
  v35 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  (*(v22 + 16))(v24, v2 + v35, v112);
  v28[2](v30, v34, v27);
  (*(v20 + 104))(v113, *MEMORY[0x277D45500], v114);
  (*(v119 + 104))(v118, *MEMORY[0x277D45458], v120);
  v36 = v26;
  v37 = v121;
  sub_21DBF737C();
  swift_beginAccess();
  v38 = v122;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF736C();
  v113 = v27;
  v112 = v34;
  (*(v123 + 8))(v38, v124);
  v41 = v116;
  v42 = v117;
  (*(v116 + 56))(v37, 0, 1, v117);
  v43 = v106;
  (*(v41 + 32))(v106, v37, v42);
  v44 = v105;
  sub_21DBF76DC();
  v45 = sub_21DBF720C();
  v47 = v108 + 8;
  v46 = *(v108 + 8);
  v46(v44, v107);
  v48 = v41;
  v49 = v43;
  if (!v45)
  {

    (*(v41 + 8))(v43, v42);
    (*(v110 + 8))(v36, v115);
    result = (v28[1])(v112, v113);
    goto LABEL_2;
  }

  v50 = v42;
  v99 = v45;
  v108 = v47;
  v105 = v28;
  v51 = *MEMORY[0x277D44BC0];
  v52 = v104;
  sub_21DBFB1DC();
  v53 = sub_21DBFB1EC();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 48))(v52, 1, v53);
  v56 = v115;
  v57 = v113;
  if (v55 == 1)
  {

    (*(v48 + 8))(v49, v50);
    (*(v110 + 8))(v36, v56);
    v105[1](v112, v57);
    result = sub_21D0CF7E0(v52, &qword_27CE60710, &qword_21DC24360);
LABEL_2:
    v40 = v111;
    v111[2] = 0u;
    v40[3] = 0u;
    *v40 = 0u;
    v40[1] = 0u;
    return result;
  }

  v98 = v36;
  v58 = v102;
  sub_21DBFB1CC();
  (*(v54 + 8))(v52, v53);
  v59 = v131;
  (*(v103 + 32))(v129, v58, v131);
  v60 = v101;
  sub_21DBF76DC();
  v61 = sub_21DBF728C();
  v46(v60, v107);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = 0;
    v64 = v127;
    v124 = v127 + 16;
    v65 = (v100 + 88);
    LODWORD(v123) = *MEMORY[0x277D454B0];
    LODWORD(v122) = *MEMORY[0x277D45498];
    LODWORD(v121) = *MEMORY[0x277D454A0];
    LODWORD(v120) = *MEMORY[0x277D454C0];
    LODWORD(v119) = *MEMORY[0x277D454D0];
    LODWORD(v118) = *MEMORY[0x277D454C8];
    LODWORD(v114) = *MEMORY[0x277D454B8];
    v66 = (v127 + 8);
    v67 = MEMORY[0x277D84F90];
    LODWORD(v108) = *MEMORY[0x277D454A8];
    v68 = v128;
    v69 = v130;
    while (v63 < *(v61 + 16))
    {
      v71 = v125;
      (*(v64 + 16))(v125, v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v69);
      sub_21DBF722C();
      v72 = (*v65)(v68, v126);
      if (v72 == v123 || v72 == v122 || v72 == v121 || v72 == v120 || v72 == v119 || v72 == v118)
      {
        v78 = sub_21DBF723C();
      }

      else
      {
        v78 = MEMORY[0x277D84F90];
        if (v72 != v114 && v72 != v108)
        {
          goto LABEL_52;
        }
      }

      (*v66)(v71, v69);
      v79 = *(v78 + 16);
      v80 = v67[2];
      v81 = v80 + v79;
      if (__OFADD__(v80, v79))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v81 > v67[3] >> 1)
      {
        if (v80 <= v81)
        {
          v83 = v80 + v79;
        }

        else
        {
          v83 = v80;
        }

        v67 = sub_21D21145C(isUniquelyReferenced_nonNull_native, v83, 1, v67);
      }

      v69 = v130;
      v59 = v131;
      if (*(v78 + 16))
      {
        v84 = (v67[3] >> 1) - v67[2];
        sub_21DBF6D7C();
        if (v84 < v79)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        v68 = v128;
        v69 = v130;
        v59 = v131;
        if (v79)
        {
          v85 = v67[2];
          v86 = __OFADD__(v85, v79);
          v87 = v85 + v79;
          if (v86)
          {
            goto LABEL_51;
          }

          v67[2] = v87;
        }
      }

      else
      {

        v68 = v128;
        if (v79)
        {
          goto LABEL_49;
        }
      }

      ++v63;
      v64 = v127;
      v70 = v129;
      if (v62 == v63)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = sub_21DBFC63C();
    __break(1u);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
    v70 = v129;
LABEL_46:

    v88 = v99;
    v89 = v99;
    v90 = sub_21DBFB18C();
    v91 = sub_21DBFB19C();
    v92 = sub_21DBFB17C();
    v94 = v93;

    (*(v103 + 8))(v70, v59);
    (*(v116 + 8))(v106, v117);
    (*(v110 + 8))(v98, v115);
    result = (v105[1])(v112, v113);
    v132 = 0;
    v95 = v111;
    v96 = v109;
    *v111 = v67;
    *(v95 + 1) = v96;
    *(v95 + 2) = v88;
    *(v95 + 24) = 0;
    *(v95 + 4) = v90;
    *(v95 + 20) = v91;
    *(v95 + 6) = v92;
    *(v95 + 7) = v94;
  }

  return result;
}

char *sub_21D795330()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TTRLocationChangeMonitor());
    v7 = TTRLocationChangeMonitor.init(changeRadius:)(25.0, v5, v6);
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_21D7953A8(unsigned __int8 *a1)
{
  v2 = v1;
  v86 = sub_21DBF70DC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21DBF71BC();
  v80 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440, &unk_21DC1A850);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  v94 = sub_21DBF729C();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  v17 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v82 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = &v78 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v24);
  v91 = &v78 - v25;
  v88 = *a1;
  v26 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v89 = v26;
  if (v27)
  {
    v28 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      v95[0] = v88;
      (*(*(v29 + 8) + 16))(v95, ObjectType);
      swift_unknownObjectRelease();
    }

    v26 = v89;
    v31 = *(v2 + v89);
    if (v31)
    {
      v32 = *(*v31 + 96);
      swift_beginAccess();
      sub_21D0D3954(v31 + v32, v16, &qword_27CE5C310, &unk_21DC15E30);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D799A70(v16, v23);
        v77 = v87;
        sub_21D799A70(v23, v87);
        v40 = (v90 + 48);
        v34 = *(v77 + *(v90 + 48));
        v39 = v91;
        v81 = *(v93 + 32);
        v81(v91, v77, v94);
        v38 = v80;
        goto LABEL_13;
      }

      sub_21D0CF7E0(v16, &qword_27CE5C310, &unk_21DC15E30);
      v26 = v89;
    }
  }

  v33 = sub_21DBF72DC();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  sub_21DBF727C();
  v34 = *(v2 + v26);
  if (v34)
  {
    v35 = *(*v34 + 104);
    swift_beginAccess();
    sub_21D0D3954(v34 + v35, v8, &qword_27CE5D440, &unk_21DC1A850);
    v36 = v90;
    v37 = (*(v17 + 48))(v8, 1, v90);
    v38 = v80;
    if (v37 == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5D440, &unk_21DC1A850);
      v34 = 0;
    }

    else
    {
      v34 = *&v8[*(v36 + 48)];
      (*(v93 + 8))(v8, v94);
    }
  }

  else
  {
    v38 = v80;
    v36 = v90;
  }

  v39 = v91;
  v81 = *(v93 + 32);
  v81(v91, v13, v94);
  v40 = (v36 + 48);
LABEL_13:
  *(v39 + *v40) = v34;
  v41 = sub_21D795330();
  v42 = &v41[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult];
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[8];
  sub_21D1B6F48(v43, v44, v45);

  v46 = v92;
  if (v44 == 255)
  {
    v80 = 0;
  }

  else
  {
    if (v44)
    {
      v80 = 0;
    }

    else
    {
      sub_21D1B6F60(v43, 0);
      [v43 radius];
      if (v47 <= 500.0)
      {
        v47 = 500.0;
      }

      [v43 setRadius_];
      v80 = v43;
    }

    sub_21D1B7094(v43, v44);
  }

  v48 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v49 = *(v48 + 8), v50 = swift_getObjectType(), v51 = (*(*(v49 + 8) + 8))(v50), v53 = v52, swift_unknownObjectRelease(), (v53 & 1) != 0))
  {
    v51 = 30;
  }

  v79 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v54 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  v55 = *(v2 + v54);
  v56 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance);
  v57 = *(v56 + 40) == 1;
  v58 = v83;
  v78 = v51;
  if (v57)
  {
    v38[13](v83, *MEMORY[0x277D45468], v46);
  }

  else
  {
    swift_beginAccess();
    *v58 = *(v56 + 48);
    v38[13](v58, *MEMORY[0x277D45480], v46);
    sub_21DBF8E0C();
  }

  v59 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted);
  v60 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v61 = v85;
  v62 = v84;
  v63 = v86;
  (*(v85 + 16))(v84, v2 + v60, v86);
  type metadata accessor for TTRShowTodayGroupsMonitorableDataView(0);
  v64 = swift_allocObject();
  v65 = v79;
  *(v64 + 16) = v79;
  *(v64 + 24) = v55;
  v66 = v80;
  *(v64 + 32) = v80;
  (v38)[4]((v64 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted), v58, v92);
  *(v64 + 40) = v59;
  (*(v61 + 32))(v64 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle, v62, v63);
  *(v64 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = v78;
  v67 = v91;
  v68 = v87;
  sub_21D0D3954(v91, v87, &qword_27CE5C318, &qword_21DC19660);
  v69 = *(v90 + 48);
  v70 = *(v68 + v69);
  v71 = v82;
  v81(v82, v68, v94);
  *(v71 + v69) = v70;
  v72 = v89;
  swift_beginAccess();
  v73 = v66;
  v74 = v65;
  sub_21D4FF544((v2 + v72), v71, v64, v2, v88);
  sub_21D0CF7E0(v71, &qword_27CE5C318, &qword_21DC19660);
  swift_endAccess();
  sub_21D795FD0(v75);

  return sub_21D0CF7E0(v67, &qword_27CE5C318, &qword_21DC19660);
}

uint64_t TTRShowTodayGroupsMonitorableDataView.__allocating_init(store:grouped:currentLocation:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v14 + v15, a4, v16);
  *(v14 + 40) = a5;
  v17 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v14 + v17, a6, v18);
  *(v14 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = a7;
  return v14;
}

void sub_21D795FD0(__n128 a1)
{
  v2 = v1;
  v3 = sub_21DBFBA3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61908, &qword_21DC27870);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61910, &qword_21DC27878);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = sub_21D795330();
  TTRLocationChangeMonitor.startIfPossible()();

  if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription))
  {
    v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
    v36 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription;
    v34 = v3;
    v40 = *(v18 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationChange);
    v19 = objc_opt_self();
    v31 = v19;

    v29 = [v19 mainRunLoop];
    v39 = v29;
    v20 = sub_21DBFBA0C();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v35 = v14;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61918, qword_21DC27880);
    v28 = v6;
    v30 = v16;
    v32 = v4;
    sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
    sub_21D0D0F1C(&qword_280D17968, &qword_27CE61918, qword_21DC27880, MEMORY[0x277CBCD90]);
    v33 = v13;
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650, 0x277CBEB88, MEMORY[0x277CC9E80]);
    sub_21DBF936C();
    sub_21D0CF7E0(v9, &qword_27CE5A0F0, &qword_21DC0E530);

    v21 = v28;
    sub_21DBFBA1C();
    v22 = [v31 mainRunLoop];
    v40 = v22;
    sub_21D0D0F1C(&qword_280D179A8, &qword_27CE61908, &qword_21DC27870, MEMORY[0x277CBCD60]);
    v23 = v30;
    v24 = v38;
    sub_21DBF939C();

    (*(v32 + 8))(v21, v34);
    (*(v37 + 8))(v12, v24);
    swift_allocObject();
    swift_weakInit();
    sub_21D0D0F1C(&qword_280D179C0, &qword_27CE61910, &qword_21DC27878, MEMORY[0x277CBCD20]);
    v25 = v33;
    v26 = sub_21DBF93CC();

    (*(v35 + 8))(v23, v25);
    *(v2 + v36) = v26;
  }
}

uint64_t sub_21D79651C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = 4;
    sub_21D7953A8(&v3);
  }

  return result;
}

void sub_21D7965C4()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
}

uint64_t TTRShowTodayGroupsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTodayGroupsDataModelSource.__deallocating_deinit()
{
  TTRShowTodayGroupsDataModelSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_21D7967B4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D793704(v2);
  return sub_21D25A3E8;
}

Swift::Void __swiftcall TTRShowTodayGroupsDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D7953A8(&v2);
}

uint64_t sub_21D7968B0(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D7953A8(&v3);
}

uint64_t TTRShowTodayGroupsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowTodayGroupsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v18 = sub_21DBF729C();
  v19 = *(v18 - 8);
  v76 = v18;
  v77 = v19;
  (*(v19 + 16))(v17, a2);
  *&v17[*(v9 + 48)] = a3;
  v20 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (!v21)
  {
    v30 = a3;
    return sub_21D0CF7E0(v17, &qword_27CE5C318, &qword_21DC19660);
  }

  v22 = a3;
  if (v21 != a1)
  {
    return sub_21D0CF7E0(v17, &qword_27CE5C318, &qword_21DC19660);
  }

  v75 = v9;
  v72 = v11;
  v74 = v4;
  v23 = v22;
  v73 = a4;
  v24 = sub_21DBF6E3C();
  sub_21D4F5F28(v24);
  v26 = v25;

  if (a3)
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v28 = v74;
    swift_beginAccess();
    if (*(v28 + v27))
    {
      v29 = v23;

      sub_21D4F9F64(v29, v26);
    }

    else
    {
      v31 = v17;
      v32 = *(v28 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v33 = v23;
      v34 = sub_21DBFB12C();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v36 = v32;
      v17 = v31;
      v37 = sub_21D87E81C(v36, sub_21D1947D8, v35, v33, v34);
      *(v28 + v27) = v37;

      swift_beginAccess();
      v37[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }

  v38 = v77;
  sub_21D0D3954(v17, v14, &qword_27CE5C318, &qword_21DC19660);

  v39 = sub_21DBF726C();
  v42 = *(v38 + 8);
  v40 = v38 + 8;
  v41 = v42;
  v42(v14, v76);
  if (!(v39 >> 62))
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_11;
    }

LABEL_30:

    v52 = v73;
    v53 = v74;
LABEL_31:
    v60 = v72;
    sub_21D0D3954(v17, v72, &qword_27CE5C318, &qword_21DC19660);

    v61 = sub_21DBF720C();
    v41(v60, v76);
    v62 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
    swift_beginAccess();
    v63 = *(v53 + v62);
    *(v53 + v62) = v61;

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_21DBFBEEC();
    v78 = *v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0, &qword_21DC1A848);
    v64 = sub_21DBFA1AC();
    v66 = v65;

    v78 = v64;
    v79 = v66;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v67 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v67);
    *(&v69 - 4) = v53;
    *(&v69 - 3) = v17;
    *(&v69 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v17, &qword_27CE5C318, &qword_21DC19660);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v43 = sub_21DBFBD7C();
  if (!v43)
  {
    v70 = v41;
    v77 = v40;
    v71 = v17;

    v45 = MEMORY[0x277D84F90];
LABEL_20:
    v17 = v71;
    v52 = v73;
    v53 = v74;
    if (*(v45 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v54 = sub_21DBFC40C();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v80[0] = v54;
    v55 = sub_21DBF8E0C();
    sub_21D1931C0(v55, 1, v80);

    v56 = v80[0];
    v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v53 + v57))
    {

      sub_21D188810(v56);
      v59 = v58;

      TTRBatchFetchManager<A>.override(objects:)(v59);
    }

    else
    {
    }

    v41 = v70;
    goto LABEL_31;
  }

LABEL_11:
  v70 = v41;
  v77 = v40;
  v71 = v17;
  v80[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v80[0];
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x223D44740](v44, v39);
      }

      else
      {
        v46 = *(v39 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = [v46 objectID];
      v80[0] = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_21D18E6B8((v49 > 1), v50 + 1, 1);
        v45 = v80[0];
      }

      ++v44;
      *(v45 + 16) = v50 + 1;
      v51 = v45 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v47;
    }

    while (v43 != v44);

    goto LABEL_20;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D79710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D7971D8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D797254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660) + 48));

  return TTRShowTodayGroupsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTodayGroupsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0, &qword_21DC1A848);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D7973F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowTodayGroupsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE618D8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x7961646F74, 0xE500000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTodayGroupsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowTodayGroupsPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v59 = retstr;
  v56 = sub_21DBF729C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21DBF563C();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8, &unk_21DC27600);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  v7 = sub_21DBF714C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF734C();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF71BC();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE618D8);
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAEDC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = v13;
    v23 = v18;
    v24 = v16;
    v25 = v11;
    v26 = v15;
    v27 = v6;
    v28 = v22;
    *v22 = 0;
    _os_log_impl(&dword_21D0C9000, v20, v21, "PrintingDataModelSource: fetch Today tree", v22, 2u);
    v29 = v28;
    v6 = v27;
    v15 = v26;
    v11 = v25;
    v16 = v24;
    v18 = v23;
    v13 = v53;
    MEMORY[0x223D46520](v29, -1, -1);
  }

  v88 = v15;

  v30 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v31 = v71;
  (*(v60 + 16))(v61, &v71[OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle], v13);
  (*(v62 + 16))(v63, &v31[v30], v11);
  (*(v64 + 104))(v66, *MEMORY[0x277D45500], v65);
  (*(v68 + 104))(v67, *MEMORY[0x277D45460], v69);
  sub_21DBF737C();
  v32 = v70;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v33 = v74;
  sub_21DBF736C();
  if (v33)
  {
    (*(v72 + 8))(v32, v73);
    (*(v16 + 8))(v18, v88);
  }

  else
  {
    v71 = v18;
    v74 = v16;
    (*(v72 + 8))(v32, v73);
    sub_21D6EEF24(v79);
    v34 = v55;
    v35 = v58;
    v73 = v6;
    sub_21DBF76DC();
    v36 = sub_21DBF725C();
    (*(v54 + 8))(v34, v56);
    v85 = v79[4];
    v86 = v79[5];
    *v87 = v80[0];
    *&v87[10] = *(v80 + 10);
    v81 = v79[0];
    v82 = v79[1];
    v83 = v79[2];
    v84 = v79[3];
    v37 = *MEMORY[0x277D44BC0];
    v38 = REMSmartListType.title.getter(*MEMORY[0x277D44BC0]);
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    v42 = REMSmartListType.color.getter(v37);
    if (!v42)
    {
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v75 = xmmword_280D1BAC8;
      v76 = xmmword_280D1BAD8;
      v77 = xmmword_280D1BAE8;
      v78 = byte_280D1BAF8;
      v42 = TTRListColors.Color.nativeColor.getter();
    }

    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0, &unk_21DC09C30);
    v44 = swift_allocObject();
    v45 = v85;
    v46 = *v87;
    v47 = *&v87[16];
    *(v44 + 112) = v86;
    *(v44 + 128) = v46;
    *(v44 + 144) = v47;
    v48 = v81;
    v49 = v82;
    *(v44 + 16) = xmmword_21DC08D00;
    *(v44 + 32) = v48;
    v50 = v83;
    v51 = v84;
    *(v44 + 48) = v49;
    *(v44 + 64) = v50;
    *(v44 + 80) = v51;
    *(v44 + 96) = v45;
    *(v44 + 160) = v36;
    (*(v57 + 8))(v73, v35);
    (*(v74 + 8))(v71, v88);
    v52 = v59;
    v59->listName._countAndFlagsBits = v40;
    v52->listName._object = v41;
    v52->listColor.super.isa = v43;
    v52->count.value = 0;
    v52->count.is_nil = 1;
    v52->sections._rawValue = v44;
    v52->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t TTRShowTodayGroupsMonitorableDataView.init(store:grouped:currentLocation:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v8 + v13, a4, v14);
  *(v8 + 40) = a5;
  v15 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v16 = sub_21DBF70DC();
  (*(*(v16 - 8) + 32))(v8 + v15, a6, v16);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = a7;
  return v8;
}

id TTRShowTodayGroupsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v74) = a4;
  v56 = a1;
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61900, &qword_21DC27610);
  MEMORY[0x28223BE20](v53);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - v6;
  v7 = sub_21DBF563C();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8, &unk_21DC27600);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v66 = &v50 - v9;
  v10 = sub_21DBF714C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF71BC();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF738C();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v50 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440, &unk_21DC1A850);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v50 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5D440, &unk_21DC1A850);
    if (v74)
    {
      v74 = *(v75 + 16);
      v58 = 0;
      v30 = MEMORY[0x277D45508];
      v31 = v19;
      goto LABEL_11;
    }

    v34 = 0;
    goto LABEL_9;
  }

  v32 = *&v28[*(v29 + 48)];
  v33 = sub_21DBF729C();
  (*(*(v33 - 8) + 8))(v28, v33);
  if ((v74 & 1) == 0)
  {
    v34 = v32;
LABEL_9:
    v31 = v19;
    v74 = [*(v75 + 16) nonUserInteractiveStore];
    goto LABEL_10;
  }

  v74 = *(v75 + 16);
  v31 = v19;
  if (v32)
  {
    v34 = v32;
LABEL_10:
    v58 = v34;
    v30 = MEMORY[0x277D454F8];
    goto LABEL_11;
  }

  v58 = 0;
  v30 = MEMORY[0x277D45508];
LABEL_11:
  v35 = v75;
  *v25 = *(v75 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount);
  (*(v20 + 104))(v25, *v30, v31);
  (*(v14 + 16))(v16, v35 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle, v59);
  (*(v61 + 16))(v60, v35 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted, v62);
  v61 = v20;
  v62 = v25;
  (*(v20 + 16))(v22, v25, v31);
  (*(v64 + 104))(v63, *MEMORY[0x277D45460], v65);
  v36 = v73;
  sub_21DBF737C();
  v37 = v69;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v38 = v31;
  v39 = v66;
  v40 = v74;
  v41 = v58;
  v42 = v72;
  sub_21DBF736C();
  if (v42)
  {

    (*(v70 + 8))(v37, v71);
    (*(v67 + 8))(v36, v68);
  }

  else
  {
    (*(v70 + 8))(v37, v71);
    v74 = v40;
    v43 = v53;
    v44 = *(v53 + 48);
    v45 = v55;
    v46 = v51;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v54;
    sub_21D0D3954(v45, v54, &qword_27CE61900, &qword_21DC27610);
    v40 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF729C();
    (*(*(v48 - 8) + 32))(v56, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE61900, &qword_21DC27610);
    (*(v52 + 8))(v39, v46);
    (*(v67 + 8))(v73, v68);
  }

  (*(v61 + 8))(v62, v38);
  return v40;
}

uint64_t TTRShowTodayGroupsMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowTodayGroupsMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21D798CA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowTodayGroupsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D798D1C(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310, &unk_21DC15E30);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440, &unk_21DC1A850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF729C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C310, &unk_21DC15E30);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C310, &unk_21DC15E30);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5D440, &unk_21DC1A850);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(byte_21DC27898);
      swift_getKeyPath(byte_21DC278C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D0D0F1C(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0, MEMORY[0x277D83970]);
      sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v35;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0, &qword_21DC1A848);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v24;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      (*(v38 + 8))(v15, v21);
    }
  }
}

void sub_21D7993C8(void *a1)
{
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE618D8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x7961646F74, 0xE500000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTodayGroupsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D799924(uint64_t a1)
{
  result = sub_21DBF70DC();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21D799A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318, &qword_21DC19660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(v2, v13, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
  }

  else
  {
    sub_21D799ED4(v2, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v16 = &v13[v14[12]];
    v31 = *v16;
    v30 = v16[8];
    v29 = *(v16 + 1);
    v17 = *(v16 + 4);
    v27 = *(v16 + 5);
    v28 = v17;
    v18 = a1;
    v19 = v14[16];
    LODWORD(v17) = v13[v14[20]];
    v32 = v13[v14[24]];
    v33 = v17;
    sub_21D7A959C(v13, v10, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D0D523C(&v13[v19], v7, &unk_27CE628E0, &unk_21DC17980);
    v20 = &v10[*(v8 + 48)];

    *v20 = v18;
    v20[1] = a2;
    v21 = v2 + v14[12];
    v22 = v14[16];
    v23 = v14[20];
    v24 = v14[24];
    sub_21D799E6C(v10, v2, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    *v21 = v31;
    *(v21 + 8) = v30;
    *(v21 + 16) = v29;
    v25 = v27;
    *(v21 + 32) = v28;
    *(v21 + 40) = v25;
    sub_21D0D523C(v7, v2 + v22, &unk_27CE628E0, &unk_21DC17980);
    v26 = v32;
    *(v2 + v23) = v33;
    *(v2 + v24) = v26;
    (*(v15 + 56))(v2, 0, 1, v14);
    sub_21D799ED4(v10, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  }
}

uint64_t sub_21D799E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D799ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D799F34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, char **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v290) = a7;
  v279 = a4;
  v315 = a2;
  v297 = a8;
  v356 = *MEMORY[0x277D85DE8];
  v12 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v12 - 8);
  v316 = v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v289 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v289);
  v305 = v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v277 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v18 - 8);
  v291 = v277 - v19;
  v319 = sub_21DBF509C();
  v317 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v287 = v277 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v313 = v277 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v23 - 8);
  v293 = v277 - v24;
  v25 = sub_21DBF5C4C();
  v309 = *(v25 - 8);
  v310 = v25;
  MEMORY[0x28223BE20](v25);
  v281 = v277 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v307 = v277 - v28;
  v312 = sub_21DBF563C();
  v308 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v30 = v277 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v324 = v277 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v33 - 8);
  *&v288 = v277 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v292 = v277 - v36;
  MEMORY[0x28223BE20](v37);
  v318 = v277 - v38;
  MEMORY[0x28223BE20](v39);
  v306 = v277 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = v277 - v42;
  v44 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v44 - 8);
  v322 = v277 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v46);
  v314 = v277 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v323 = (v277 - v49);
  v50 = *a5;
  v301 = a5[1];
  v302 = v50;
  v300 = *(a5 + 4);
  v299 = *(a5 + 40);
  v51 = *a6;
  v303 = a3;
  sub_21D0D3954(a3, &v346, &qword_27CE61948, &unk_21DC278E8);
  v304 = v17;
  v280 = v30;
  if (*(&v347 + 1))
  {
    sub_21D0D0FD0(&v346, v353);
  }

  else
  {
    v354 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v355 = &off_282ED2868;
    v52 = swift_allocObject();
    v353[0] = v52;
    *(v52 + 16) = 768;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 40) = 2;
  }

  v53 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  *&v340 = &protocol witness table for REMReminderChangeItem;
  *(&v339 + 1) = v53;
  *&v338 = a1;
  *&v325 = 3;
  v54 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v338, &v325, &v346);
  v55 = v346;
  v298 = v347;
  v320 = v348;
  v321 = *(&v347 + 1);
  v56 = [v54 objectID];
  v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v59 = v323;
  (*(*(v58 - 8) + 56))(v323 + v57, 1, 1, v58);
  *v59 = v56;
  swift_storeEnumTagMultiPayload();
  if (v55)
  {
    v60 = v55;
  }

  else
  {
    v60 = [v54 title];
    if (!v60)
    {
      v60 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v296 = v60;
  v61 = v51;
  if (*(&v55 + 1))
  {
    v62 = v55;
    v63 = *(&v55 + 1);
  }

  else
  {
    v64 = v55;
    v63 = [v54 notes];
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v65 = &selRef__setContentViewMarginType_;
  v66 = &selRef__setContentViewMarginType_;
  v295 = v55;
  v294 = v63;
  if (v61)
  {
    if (v61 != 1)
    {
      v75 = *(&v55 + 1);
      sub_21D568328(v61);
      v74 = v318;
      v73 = v319;
      goto LABEL_24;
    }

    v67 = *(&v55 + 1);
    v68 = [v54 effectiveDisplayDateComponents_forCalendar];
    if (v68)
    {
      v69 = v68;
      sub_21DBF4EFC();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    v76 = v319;
    v77 = v317;
    (*(v317 + 56))(v43, v70, 1, v319);
    v78 = v288;
    sub_21D0D3954(v43, v288, &qword_27CE58D60, &unk_21DC0A690);
    if ((*(v77 + 48))(v78, 1, v76) == 1)
    {
      sub_21D0CF7E0(v43, &qword_27CE58D60, &unk_21DC0A690);
LABEL_26:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
      (*(*(v92 - 8) + 56))(v322, 1, 1, v92);
      LODWORD(v293) = 0;
      LODWORD(v93) = 0;
      v94 = 0;
      while (1)
      {
        v183 = [v54 v65[73]];
        v184 = [v183 supportsLocation];

        if (!v184)
        {
          v284 = 0;
          v285 = 0;
          LODWORD(v283) = 128;
          v286 = 2;
          v287 = 0;
          goto LABEL_88;
        }

        v185 = sub_21D7A5EB4(0x277D44580);
        if (v185 >> 62)
        {
          v193 = v185;
          v194 = sub_21DBFBD7C();
          v185 = v193;
          if (!v194)
          {
LABEL_76:

            goto LABEL_77;
          }
        }

        else if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        if ((v185 & 0xC000000000000001) != 0)
        {
          v186 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_85;
          }

          v186 = *(v185 + 32);
        }

        v187 = v186;

        v188 = [v187 structuredLocation];
        v189 = [v188 displayName];

        if (v189)
        {
          v286 = sub_21DBFA16C();
          v287 = v190;

          v191 = [v187 structuredLocation];
          v285 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v284 = [v187 proximity];

          v192 = v279 & 1;
          goto LABEL_87;
        }

LABEL_77:
        v185 = sub_21D7A5EB4(0x277D44590);
        if (!(v185 >> 62))
        {
          if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          goto LABEL_79;
        }

LABEL_85:
        v198 = v185;
        v199 = sub_21DBFBD7C();
        v185 = v198;
        if (!v199)
        {
LABEL_86:

          v200 = v354;
          v201 = v355;
          __swift_project_boxed_opaque_existential_1(v353, v354);
          v202 = (v201[1])(v200, v201);
          v284 = 0;
          v285 = 0;
          v286 = (v202 & 1) == 0;
          v287 = 0;
          v192 = 128;
          goto LABEL_87;
        }

LABEL_79:
        if ((v185 & 0xC000000000000001) != 0)
        {
          goto LABEL_123;
        }

        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v195 = *(v185 + 32);
          goto LABEL_82;
        }

        __break(1u);
LABEL_125:
        swift_once();
LABEL_60:
        v151 = sub_21DBF516C();
        v153 = v152;
        v154 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v155 = v304;
        v116 = v312;
        v278(v304 + *(v154 + 20), 1, 1, v312);
        *v155 = v151;
        v155[1] = v153;
        (*(*(v154 - 8) + 56))(v155, 0, 1, v154);
LABEL_61:
        v94 = v319;
LABEL_62:
        v156 = v305;
        (v286)(v305, v324, v116);
        v157 = v289;
        (*(v317 + 16))(v156 + *(v289 + 24), v313, v94);
        v158 = v354;
        v159 = v355;
        __swift_project_boxed_opaque_existential_1(v353, v354);
        (v159[5])(&v346, v158, v159);
        v287 = *(&v346 + 1);
        v160 = v346;
        LODWORD(v286) = v347;
        v161 = v311;
        v162 = [v311 accountCapabilities];
        LOBYTE(v158) = [v162 supportsCloudKitSync];

        v163 = v354;
        v164 = v355;
        __swift_project_boxed_opaque_existential_1(v353, v354);
        LOBYTE(v163) = (v164[4])(v163, v164);
        v165 = v354;
        v166 = v355;
        __swift_project_boxed_opaque_existential_1(v353, v354);
        (v166[2])(&v338, v165, v166);
        *(v156 + v157[5]) = v288;
        *(v156 + v157[7]) = v290 & 1;
        v167 = v156 + v157[8];
        v168 = v287;
        *v167 = v160;
        *(v167 + 8) = v168;
        *(v167 + 16) = v286;
        *(v156 + v157[9]) = v158;
        LOBYTE(v167) = v338;
        *(v156 + v157[10]) = v163 & 1;
        *(v156 + v157[11]) = v167;
        v169 = (v156 + v157[12]);
        *v169 = 0;
        v169[1] = 0;
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
        v171 = v322;
        v172 = v322 + v170[12];
        v173 = v170[16];
        v93 = v170[20];
        v174 = v170[24];
        sub_21D799E6C(v156, v322, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v172 = v293;
        *(v172 + 8) = v282;
        v175 = v291;
        *(v172 + 16) = v283;
        *(v172 + 24) = v175;
        v176 = v284;
        *(v172 + 32) = v285;
        *(v172 + 40) = v176;
        v177 = v304;
        sub_21D0D3954(v304, v171 + v173, &unk_27CE628E0, &unk_21DC17980);
        v178 = v354;
        v179 = v355;
        __swift_project_boxed_opaque_existential_1(v353, v354);
        v93[v171] = (v179[3])(v178, v179) & 1;
        *(v171 + v174) = [v161 prefersUrgentPresentationStyleForDateAlarms];
        v180 = v171;
        v54 = v161;
        (*(*(v170 - 1) + 56))(v180, 0, 1, v170);
        LODWORD(v93) = [v161 isOverdue];
        v66 = &selRef__setContentViewMarginType_;
        v181 = [v161 isCompleted];
        v182 = 0;
        if ((v181 & 1) == 0)
        {
          v182 = [v161 isOverdue];
        }

        LODWORD(v293) = v182;
        v94 = v318;

        sub_21D799ED4(v305, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v177, &unk_27CE628E0, &unk_21DC17980);
        (*(v317 + 8))(v313, v319);
        (*(v309 + 8))(v307, v310);
        sub_21D0CF7E0(v306, &qword_27CE58D60, &unk_21DC0A690);
        (*(v308 + 8))(v324, v312);

        v65 = &selRef__setContentViewMarginType_;
      }
    }

    v79 = v287;
    (*(v77 + 32))(v287, v78, v76);
    v80 = objc_allocWithZone(MEMORY[0x277D44600]);
    v81 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
    v82 = sub_21DBFA5DC();
    v83 = [v80 initWithDueDateComponents:v81 alarms:v82];

    v73 = v76;
    v84 = v79;
    v66 = &selRef__setContentViewMarginType_;
    (*(v77 + 8))(v84, v76);
    sub_21D0CF7E0(v43, &qword_27CE58D60, &unk_21DC0A690);
    v72 = v83;
    v74 = v318;
    if (!v83)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v71 = *(&v55 + 1);
    v72 = [v54 displayDate];
    v73 = v319;
    v74 = v318;
    if (!v72)
    {
      goto LABEL_26;
    }
  }

  v61 = v72;
LABEL_24:
  v85 = [v61 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  v86 = [v61 isAllDay];
  v87 = [v54 dueDateComponents];
  v88 = v317;
  v89 = v307;
  if (v87)
  {
    v90 = v87;
    sub_21DBF4EFC();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  (*(v88 + 56))(v74, v91, 1, v73);
  v95 = v74;
  v96 = v306;
  sub_21D0D523C(v95, v306, &qword_27CE58D60, &unk_21DC0A690);
  v97 = v96;
  v98 = v292;
  sub_21D0D3954(v97, v292, &qword_27CE58D60, &unk_21DC0A690);
  if ((*(v88 + 48))(v98, 1, v73) == 1)
  {
    sub_21D0CF7E0(v98, &qword_27CE58D60, &unk_21DC0A690);
    v100 = v309;
    v99 = v310;
    v101 = v293;
    (*(v309 + 56))(v293, 1, 1, v310);
  }

  else
  {
    v102 = v98;
    v101 = v293;
    sub_21DBF507C();
    (*(v88 + 8))(v102, v73);
    v100 = v309;
    v99 = v310;
    if ((*(v309 + 48))(v101, 1, v310) != 1)
    {
      (*(v100 + 32))(v89, v101, v99);
      goto LABEL_34;
    }
  }

  v103 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v100 + 48))(v101, 1, v99) != 1)
  {
    sub_21D0CF7E0(v101, &unk_27CE60DB0, qword_21DC0BF70);
  }

LABEL_34:
  v104 = objc_opt_self();
  v105 = sub_21DBF55BC();
  v106 = sub_21DBF5C0C();
  LODWORD(v288) = v86;
  v107 = [v104 rem:v105 dateComponentsWithDate:v106 timeZone:v86 isAllDay:?];

  sub_21DBF4EFC();
  v66 = objc_opt_self();
  v108 = [v54 recurrenceRules];
  v109 = sub_21DBF55BC();
  v110 = sub_21DBF5C0C();
  *&v346 = 0;
  v293 = [(SEL *)v66 repeatTypeForRecurrenceRules:v108 recurrenceDate:v109 recurrenceTimeZone:v110 getRepeatEnd:&v346];

  v277[1] = v346;
  v292 = v346;
  v111 = [v54 recurrenceRules];
  v311 = v54;
  v318 = v61;
  if (v111)
  {
    v112 = v111;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v113 = sub_21DBFA5EC();
  }

  else
  {
    v113 = 0;
  }

  v114 = v308;
  v115 = v291;
  v116 = v312;
  v286 = *(v308 + 16);
  v287 = v308 + 16;
  (v286)(v291, v324, v312);
  v117 = *(v114 + 56);
  v65 = (v114 + 56);
  v278 = v117;
  v117(v115, 0, 1, v116);
  v54 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v113, v115);
  v93 = v118;

  sub_21D0CF7E0(v115, &qword_27CE58D68, &unk_21DC0C060);
  v119 = v293;
  v291 = v93;
  if (!v93)
  {
    if (v293 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v54 = sub_21DBF516C();
      v291 = v120;
    }

    else
    {
      v121 = [(SEL *)v66 localizedDescriptionForRepeatType:v293];
      v54 = sub_21DBFA16C();
      v291 = v122;
    }
  }

  v123 = [v311 recurrenceRules];
  if (!v123)
  {
    v284 = 0xE000000000000000;
    v285 = 0;
    v94 = v319;
    goto LABEL_53;
  }

  v124 = v123;
  sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
  v125 = sub_21DBFA5EC();

  if (!(v125 >> 62))
  {
    v94 = v319;
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v133 = sub_21DBFBD7C();
  v94 = v319;
  if (!v133)
  {
LABEL_52:

    v284 = 0xE000000000000000;
    v285 = 0;
LABEL_53:
    v134 = [v311 accountCapabilities];
    v135 = [v134 supportsHourlyRecurrence];

    v283 = v54;
    v282 = v135;
    if (!v119)
    {
      v150 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v150 - 8) + 56))(v304, 1, 1, v150);
      goto LABEL_62;
    }

    v136 = v292;
    if (v292)
    {
      v137 = v280;
      sub_21DBF55FC();
      v138 = qword_280D1BAA8;
      v139 = v136;
      if (v138 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v140 = [objc_opt_self() defaultTimeZone];
      v141 = v281;
      sub_21DBF5C2C();

      v142 = sub_21D7A5CB4();
      v144 = v143;

      (*(v309 + 8))(v141, v310);
      v145 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v146 = *(v145 + 20);
      v147 = v304;
      v148 = v312;
      (*(v308 + 32))(v304 + v146, v137, v312);
      v149 = v147 + v146;
      v116 = v148;
      v278(v149, 0, 1, v148);
      *v147 = v142;
      v147[1] = v144;
      (*(*(v145 - 8) + 56))(v147, 0, 1, v145);
      goto LABEL_61;
    }

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_125;
  }

LABEL_46:
  if ((v125 & 0xC000000000000001) != 0)
  {
    v126 = MEMORY[0x223D44740](0, v125);
    goto LABEL_49;
  }

  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v126 = *(v125 + 32);
LABEL_49:
    v127 = v126;

    v128 = sub_21DBF55BC();
    v129 = sub_21DBF5C0C();
    v130 = [(SEL *)v66 shortNaturalLanguageDescriptionForRecurrenceRule:v127 date:v128 timeZone:v129 lowercase:0];

    v131 = sub_21DBFA16C();
    v284 = v132;
    v285 = v131;

    v94 = v319;
    goto LABEL_53;
  }

  __break(1u);
LABEL_123:
  v195 = MEMORY[0x223D44740](0);
LABEL_82:
  v196 = v195;

  v286 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v196 event]);
  v287 = v197;

  v284 = 0;
  v285 = 0;
  v192 = 64;
LABEL_87:
  LODWORD(v283) = v192;
LABEL_88:
  sub_21D7A9558(&v346);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v203 = [v54 flaggedContext];
  LODWORD(v324) = v93;
  if (v203)
  {
    v204 = v203;
    v205 = [v203 flagged];

    v206 = v205 > 0;
  }

  else
  {
    v206 = 2;
  }

  LODWORD(v319) = v206;
  v207 = [v54 objectID];
  v208 = [v207 entityName];

  v209 = sub_21DBFA16C();
  v211 = v210;

  v212 = [objc_opt_self() cdEntityNameForSavedReminder];
  v213 = sub_21DBFA16C();
  v215 = v214;

  if (v209 == v213 && v211 == v215)
  {

    v216 = 0;
  }

  else
  {
    v217 = sub_21DBFC64C();

    v216 = 0;
    if ((v217 & 1) == 0)
    {
      v216 = [v54 isSubtask] ^ 1;
    }
  }

  LODWORD(v317) = v216;
  v218 = [v54 subtaskContext];
  v219 = v218;
  if (v218)
  {
  }

  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  (*(*(v220 - 8) + 56))(v316, 1, 1, v220);
  sub_21D0D3954(v315, &v343, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v344)
  {
    sub_21D0D0FD0(&v343, v345);
  }

  else
  {
    v221 = [v54 listChangeItem];
    v222 = v221;
    if (v221)
    {
      v221 = sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
      v223 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v223 = 0;
      v345[2] = 0;
      v345[1] = 0;
    }

    v345[0] = v222;
    v345[3] = v221;
    v345[4] = v223;
    if (v344)
    {
      sub_21D0CF7E0(&v343, &qword_27CE59DC0, &qword_21DC0FBF0);
    }
  }

  sub_21D0D3954(v345, &v335, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v336)
  {
    sub_21D0D0FD0(&v335, &v330);
    sub_21D0D32E4(&v330, &v338);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v338, &v325);
    __swift_destroy_boxed_opaque_existential_0(&v330);
    v340 = v327;
    v341 = v328;
    v342[0] = v329[0];
    *(v342 + 9) = *(v329 + 9);
    v338 = v325;
    v339 = v326;
  }

  else
  {
    sub_21D0CF7E0(&v335, &qword_27CE59DC0, &qword_21DC0FBF0);
    v338 = xmmword_21DC19C40;
    v339 = 0u;
    v340 = 0u;
    v341 = 0u;
    memset(v342, 0, 25);
  }

  sub_21D0D3954(v345, &v330, &qword_27CE59DC0, &qword_21DC0FBF0);
  v224 = *(&v331 + 1);
  if (*(&v331 + 1))
  {
    v225 = v332;
    __swift_project_boxed_opaque_existential_1(&v330, *(&v331 + 1));
    (*(v225 + 112))(&v325, v224, v225);
    v226 = *(&v326 + 1);
    if (*(&v326 + 1))
    {
      v227 = v327;
      __swift_project_boxed_opaque_existential_1(&v325, *(&v326 + 1));
      LODWORD(v313) = (*(v227 + 16))(v226, v227);
      __swift_destroy_boxed_opaque_existential_0(&v325);
      __swift_destroy_boxed_opaque_existential_0(&v330);
      goto LABEL_114;
    }

    __swift_destroy_boxed_opaque_existential_0(&v330);
    v228 = &qword_27CE5A6E8;
    v229 = &unk_21DC187C0;
    v230 = &v325;
  }

  else
  {
    v228 = &qword_27CE59DC0;
    v229 = &qword_21DC0FBF0;
    v230 = &v330;
  }

  sub_21D0CF7E0(v230, v228, v229);
  LODWORD(v313) = 0;
LABEL_114:
  sub_21D799E6C(v323, v314, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v345, &v325, &qword_27CE59DC0, &qword_21DC0FBF0);
  v231 = *(&v326 + 1);
  if (*(&v326 + 1))
  {
    v232 = v327;
    __swift_project_boxed_opaque_existential_1(&v325, *(&v326 + 1));
    v233 = (*(v232 + 32))(v231, v232);
    v309 = v234;
    v310 = v233;
    __swift_destroy_boxed_opaque_existential_0(&v325);
  }

  else
  {
    sub_21D0CF7E0(&v325, &qword_27CE59DC0, &qword_21DC0FBF0);
    v309 = 0xE000000000000000;
    v310 = 0;
  }

  sub_21D0D3954(v345, &v335, &qword_27CE59DC0, &qword_21DC0FBF0);
  v235 = v336;
  v318 = v94;
  if (v336)
  {
    v236 = v337;
    __swift_project_boxed_opaque_existential_1(&v335, v336);
    v308 = (*(v236 + 8))(v235, v236);
    __swift_destroy_boxed_opaque_existential_0(&v335);
  }

  else
  {
    sub_21D0CF7E0(&v335, &qword_27CE59DC0, &qword_21DC0FBF0);
    v308 = 0;
  }

  LODWORD(v312) = v219 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v345, &v330);
  v304 = v332;
  v292 = v333;
  LODWORD(v291) = v334;
  sub_21D0D3954(&v338, &v325, &unk_27CE5E9E0, &unk_21DC1D600);
  LODWORD(v307) = [v54 v66[178]];
  [v54 priority];
  v305 = REMReminderPriorityLevelForPriority();
  v237 = v65;
  v238 = [v54 v65[73]];
  v290 = [v238 defaultReminderPriorityLevel];

  v239 = type metadata accessor for TTRReminderDetailViewModel(0);
  v240 = v297;
  sub_21D799E6C(v322, v297 + v239[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v241 = v286;
  v242 = v287;
  v244 = v284;
  v243 = v285;
  v245 = v283;
  v246 = [v54 v237 + 4023];
  v247 = v54;
  v248 = v246;
  LODWORD(v306) = [v246 supportsTextStyling];

  v288 = v331;
  v289 = v330;

  sub_21D48C240(v241, v242, v243, v244, v245);
  sub_21D0CF7E0(&v338, &unk_27CE5E9E0, &unk_21DC1D600);

  sub_21D0CF7E0(v303, &qword_27CE61948, &unk_21DC278E8);
  sub_21D0CF7E0(v315, &qword_27CE59DC0, &qword_21DC0FBF0);
  sub_21D799ED4(v322, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v323, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v314, v240, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v240 + v239[5]) = 1;
  v249 = (v240 + v239[6]);
  v250 = v309;
  *v249 = v310;
  v249[1] = v250;
  *(v240 + v239[7]) = v308;
  v251 = v240 + v239[8];
  v252 = v288;
  *v251 = v289;
  *(v251 + 16) = v252;
  v253 = v292;
  *(v251 + 32) = v304;
  *(v251 + 40) = v253;
  *(v251 + 48) = v291;
  v254 = (v240 + v239[9]);
  v255 = v341;
  v254[2] = v340;
  v254[3] = v255;
  v254[4] = v342[0];
  *(v254 + 73) = *(v342 + 9);
  v256 = v339;
  *v254 = v338;
  v254[1] = v256;
  *(v240 + v239[10]) = v313 & 1;
  *(v240 + v239[11]) = v317;
  *(v240 + v239[12]) = v296;
  v257 = (v240 + v239[13]);
  *v257 = 0u;
  v257[1] = 0u;
  *(v240 + v239[14]) = v307;
  *(v240 + v239[15]) = v305;
  *(v240 + v239[16]) = v290;
  *(v240 + v239[17]) = v319;
  *(v240 + v239[18]) = v294;
  v258 = (v240 + v239[19]);
  *v258 = 0u;
  v258[1] = 0u;
  *(v240 + v239[21]) = v324;
  *(v240 + v239[22]) = v293;
  v259 = v240 + v239[23];
  *v259 = v241;
  *(v259 + 8) = v242;
  *(v259 + 16) = v243;
  *(v259 + 24) = v244;
  *(v259 + 32) = v245;
  v260 = v240 + v239[24];
  *v260 = 0;
  *(v260 + 8) = 0;
  v261 = v240 + v239[25];
  *v261 = xmmword_21DC22F10;
  *(v261 + 16) = 0;
  v262 = v240 + v239[26];
  *(v262 + 112) = 0;
  *(v262 + 80) = 0u;
  *(v262 + 96) = 0u;
  *(v262 + 48) = 0u;
  *(v262 + 64) = 0u;
  *(v262 + 16) = 0u;
  *(v262 + 32) = 0u;
  *v262 = 0u;
  v263 = (v240 + v239[27]);
  v264 = v351;
  v263[4] = v350;
  v263[5] = v264;
  v263[6] = v352[0];
  *(v263 + 105) = *(v352 + 9);
  v265 = v347;
  *v263 = v346;
  v263[1] = v265;
  v266 = v349;
  v263[2] = v348;
  v263[3] = v266;
  v267 = v240 + v239[28];
  *v267 = v298;
  v268 = v320;
  *(v267 + 8) = v321;
  *(v267 + 16) = v268;
  v269 = (v240 + v239[29]);
  *v269 = 0u;
  v269[1] = 0u;
  *(v240 + v239[30]) = v306;
  v270 = v240 + v239[31];
  *v270 = 0;
  *(v270 + 8) = v312;
  *(v240 + v239[32]) = 0;
  sub_21D7A959C(v316, v240 + v239[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v271 = (v240 + v239[34]);
  *v271 = 0;
  v271[1] = 0;
  v272 = (v240 + v239[35]);
  *v272 = xmmword_21DC19C40;
  v272[1] = 0u;
  v272[2] = 0u;
  v272[3] = 0u;
  v272[4] = 0u;
  *(v240 + v239[36]) = 0;
  v273 = v240 + v239[37];
  v274 = v301;
  *v273 = v302;
  *(v273 + 16) = v274;
  *(v273 + 32) = v300;
  *(v273 + 40) = v299;
  v275 = v240 + v239[38];
  *(v275 + 64) = 0;
  *(v275 + 32) = 0u;
  *(v275 + 48) = 0u;
  *v275 = 0u;
  *(v275 + 16) = 0u;
  sub_21D0CF7E0(v345, &qword_27CE59DC0, &qword_21DC0FBF0);
  return __swift_destroy_boxed_opaque_existential_0(v353);
}

void sub_21D79C2D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, char ***a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v307 = a8;
  LODWORD(v284) = a7;
  v275 = a4;
  v311 = a2;
  v292 = a9;
  v353 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v312 = v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v283 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v283);
  v300 = v273 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v16 - 8);
  v299 = (v273 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v18 - 8);
  v286 = v273 - v19;
  v20 = sub_21DBF509C();
  v21 = *(v20 - 8);
  v314 = v20;
  v315 = v21;
  MEMORY[0x28223BE20](v20);
  v288 = v273 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v309 = v273 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v25 - 8);
  v287 = v273 - v26;
  v27 = sub_21DBF5C4C();
  v304 = *(v27 - 8);
  v305 = v27;
  MEMORY[0x28223BE20](v27);
  v277 = v273 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v302 = v273 - v30;
  v308 = sub_21DBF563C();
  v303 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v32 = v273 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v321 = v273 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v273 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v285 = v273 - v39;
  MEMORY[0x28223BE20](v40);
  v316 = v273 - v41;
  MEMORY[0x28223BE20](v42);
  v301 = v273 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = v273 - v45;
  v47 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v47 - 8);
  v319 = v273 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v49);
  v310 = v273 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v320 = (v273 - v52);
  v53 = *a5;
  v296 = a5[1];
  v297 = v53;
  v295 = *(a5 + 4);
  v294 = *(a5 + 40);
  v54 = *a6;
  v298 = a3;
  sub_21D0D3954(a3, &v343, &qword_27CE61948, &unk_21DC278E8);
  v276 = v32;
  if (*(&v344 + 1))
  {
    sub_21D0D0FD0(&v343, v350);
  }

  else
  {
    v351 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v352 = &off_282ED2868;
    v55 = swift_allocObject();
    v350[0] = v55;
    *(v55 + 16) = 768;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 40) = 2;
  }

  v56 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  *&v337 = &protocol witness table for REMReminderChangeItem;
  *(&v336 + 1) = v56;
  *&v335 = a1;
  *&v322 = 3;
  v57 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v335, &v322, &v343);
  v313 = *(&v343 + 1);
  v58 = v343;
  v293 = v344;
  v317 = v345;
  v318 = *(&v344 + 1);
  v59 = [v57 objectID];
  v60 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v61 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v62 = v320;
  (*(*(v61 - 8) + 56))(v320 + v60, 1, 1, v61);
  *v62 = v59;
  swift_storeEnumTagMultiPayload();
  if (v58)
  {
    v63 = v58;
    v64 = v54;
    v65 = v314;
  }

  else
  {
    v63 = [v57 title];
    v64 = v54;
    v65 = v314;
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v58 = 0;
    }
  }

  v290 = v58;
  v291 = v63;
  v66 = v313;
  if (v313)
  {
    v67 = v58;
    v68 = v66;
  }

  else
  {
    v69 = v58;
    v68 = [v57 notes];
    if (!v68)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v70 = &selRef__setContentViewMarginType_;
  v289 = v68;
  if (v64)
  {
    if (v64 != 1)
    {
      v77 = v66;
      sub_21D568328(v64);
      goto LABEL_24;
    }

    v71 = v66;
    v72 = [v57 effectiveDisplayDateComponents_forCalendar];
    if (v72)
    {
      v73 = v72;
      sub_21DBF4EFC();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v78 = v315;
    (*(v315 + 56))(v46, v74, 1, v65);
    v79 = v37;
    sub_21D0D3954(v46, v37, &qword_27CE58D60, &unk_21DC0A690);
    if ((*(v78 + 48))(v37, 1, v65) == 1)
    {
      sub_21D0CF7E0(v46, &qword_27CE58D60, &unk_21DC0A690);
      v70 = &selRef__setContentViewMarginType_;
LABEL_26:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
      (*(*(v91 - 8) + 56))(v319, 1, 1, v91);
      LODWORD(v288) = 0;
      v65 = 0;
      v92 = 0;
      while (1)
      {
        v180 = [v57 v70[73]];
        v181 = [v180 supportsLocation];

        if (!v181)
        {
          v278 = 0;
          v279 = 0;
          LODWORD(v277) = 128;
          v280 = 2;
          v281 = 0;
          goto LABEL_87;
        }

        v182 = sub_21D7A5EB4(0x277D44580);
        if (v182 >> 62)
        {
          v190 = v182;
          v191 = sub_21DBFBD7C();
          v182 = v190;
          if (!v191)
          {
LABEL_75:

            goto LABEL_76;
          }
        }

        else if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        if ((v182 & 0xC000000000000001) != 0)
        {
          v183 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_84;
          }

          v183 = *(v182 + 32);
        }

        v184 = v183;

        v185 = [v184 structuredLocation];
        v186 = [v185 displayName];

        if (v186)
        {
          v280 = sub_21DBFA16C();
          v281 = v187;

          v188 = [v184 structuredLocation];
          v279 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v278 = [v184 proximity];

          v189 = v275 & 1;
          goto LABEL_86;
        }

LABEL_76:
        v182 = sub_21D7A5EB4(0x277D44590);
        if (!(v182 >> 62))
        {
          if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }

LABEL_84:
        v195 = v182;
        v196 = sub_21DBFBD7C();
        v182 = v195;
        if (!v196)
        {
LABEL_85:

          v197 = v351;
          v198 = v352;
          __swift_project_boxed_opaque_existential_1(v350, v351);
          v199 = (v198[1])(v197, v198);
          v278 = 0;
          v279 = 0;
          v280 = (v199 & 1) == 0;
          v281 = 0;
          v189 = 128;
          goto LABEL_86;
        }

LABEL_78:
        if ((v182 & 0xC000000000000001) != 0)
        {
          goto LABEL_123;
        }

        if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v192 = *(v182 + 32);
          goto LABEL_81;
        }

        __break(1u);
LABEL_125:
        swift_once();
LABEL_60:
        v149 = sub_21DBF516C();
        v151 = v150;
        v152 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v153 = v299;
        v117 = v308;
        v274(v299 + *(v152 + 20), 1, 1, v308);
        *v153 = v149;
        v153[1] = v151;
        (*(*(v152 - 8) + 56))(v153, 0, 1, v152);
LABEL_61:
        v154 = v300;
        (v282)(v300, v321, v117);
        v155 = v283;
        (*(v315 + 16))(v154 + *(v283 + 24), v309, v65);
        v156 = v351;
        v157 = v352;
        __swift_project_boxed_opaque_existential_1(v350, v351);
        (v157[5])(&v343, v156, v157);
        *&v282 = *(&v343 + 1);
        v158 = v343;
        LODWORD(v277) = v344;
        v57 = v306;
        v159 = [v306 accountCapabilities];
        LOBYTE(v156) = [v159 supportsCloudKitSync];

        v160 = v351;
        v161 = v352;
        __swift_project_boxed_opaque_existential_1(v350, v351);
        LOBYTE(v160) = (v161[4])(v160, v161);
        v163 = v351;
        v162 = v352;
        __swift_project_boxed_opaque_existential_1(v350, v351);
        (v162[2])(&v335, v163, v162);
        *(v154 + v155[5]) = v288;
        *(v154 + v155[7]) = v284 & 1;
        v164 = v154 + v155[8];
        v165 = v282;
        *v164 = v158;
        *(v164 + 8) = v165;
        *(v164 + 16) = v277;
        *(v154 + v155[9]) = v156;
        LOBYTE(v164) = v335;
        *(v154 + v155[10]) = v160 & 1;
        *(v154 + v155[11]) = v164;
        v166 = (v154 + v155[12]);
        *v166 = 0;
        v166[1] = 0;
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
        v168 = v319;
        v169 = v319 + v167[12];
        v170 = v167[16];
        v171 = v167[20];
        v172 = v167[24];
        sub_21D799E6C(v154, v319, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v169 = v279;
        *(v169 + 8) = v278;
        v173 = v286;
        *(v169 + 16) = v285;
        *(v169 + 24) = v173;
        v174 = v280;
        *(v169 + 32) = v281;
        *(v169 + 40) = v174;
        v175 = v299;
        sub_21D0D3954(v299, v168 + v170, &unk_27CE628E0, &unk_21DC17980);
        v176 = v351;
        v177 = v352;
        __swift_project_boxed_opaque_existential_1(v350, v351);
        *(v168 + v171) = (v177[3])(v176, v177) & 1;
        *(v168 + v172) = [v57 prefersUrgentPresentationStyleForDateAlarms];
        (*(*(v167 - 1) + 56))(v168, 0, 1, v167);
        v65 = [v57 isOverdue];
        v178 = [v57 isCompleted];
        v179 = 0;
        if ((v178 & 1) == 0)
        {
          v179 = [v57 isOverdue];
        }

        LODWORD(v288) = v179;
        v92 = v316;

        sub_21D799ED4(v300, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v175, &unk_27CE628E0, &unk_21DC17980);
        (*(v315 + 8))(v309, v314);
        (*(v304 + 8))(v302, v305);
        sub_21D0CF7E0(v301, &qword_27CE58D60, &unk_21DC0A690);
        (*(v303 + 8))(v321, v308);

        v70 = &selRef__setContentViewMarginType_;
      }
    }

    v80 = v288;
    (*(v78 + 32))(v288, v79, v65);
    v81 = objc_allocWithZone(MEMORY[0x277D44600]);
    v82 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
    v83 = sub_21DBFA5DC();
    v84 = [v81 initWithDueDateComponents:v82 alarms:v83];

    (*(v78 + 8))(v80, v65);
    sub_21D0CF7E0(v46, &qword_27CE58D60, &unk_21DC0A690);
    v76 = v84;
    v70 = &selRef__setContentViewMarginType_;
    if (!v84)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v75 = v66;
    v76 = [v57 displayDate];
    if (!v76)
    {
      goto LABEL_26;
    }
  }

  v64 = v76;
LABEL_24:
  v85 = v316;
  v86 = [v64 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  LODWORD(v288) = [v64 isAllDay];
  v87 = [v57 dueDateComponents];
  v88 = v315;
  if (v87)
  {
    v89 = v87;
    sub_21DBF4EFC();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  (*(v88 + 56))(v85, v90, 1, v65);
  v93 = v85;
  v94 = v301;
  sub_21D0D523C(v93, v301, &qword_27CE58D60, &unk_21DC0A690);
  v95 = v94;
  v96 = v285;
  sub_21D0D3954(v95, v285, &qword_27CE58D60, &unk_21DC0A690);
  v97 = (*(v88 + 48))(v96, 1, v65);
  v316 = v64;
  if (v97 == 1)
  {
    sub_21D0CF7E0(v96, &qword_27CE58D60, &unk_21DC0A690);
    v99 = v304;
    v98 = v305;
    v100 = v287;
    (*(v304 + 56))(v287, 1, 1, v305);
  }

  else
  {
    v101 = v96;
    v100 = v287;
    sub_21DBF507C();
    (*(v88 + 8))(v101, v65);
    v99 = v304;
    v98 = v305;
    if ((*(v304 + 48))(v100, 1, v305) != 1)
    {
      (*(v99 + 32))(v302, v100, v98);
      goto LABEL_34;
    }
  }

  v102 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v99 + 48))(v100, 1, v98) != 1)
  {
    sub_21D0CF7E0(v100, &unk_27CE60DB0, qword_21DC0BF70);
  }

LABEL_34:
  v103 = objc_opt_self();
  v104 = sub_21DBF55BC();
  v105 = sub_21DBF5C0C();
  v106 = [v103 rem:v104 dateComponentsWithDate:v105 timeZone:v288 isAllDay:?];

  sub_21DBF4EFC();
  v107 = objc_opt_self();
  v108 = [v57 recurrenceRules];
  v109 = sub_21DBF55BC();
  v110 = sub_21DBF5C0C();
  *&v343 = 0;
  v281 = v107;
  v111 = [v107 repeatTypeForRecurrenceRules:v108 recurrenceDate:v109 recurrenceTimeZone:v110 getRepeatEnd:&v343];

  v273[1] = v343;
  v287 = v343;
  v112 = [v57 recurrenceRules];
  v306 = v57;
  if (v112)
  {
    v113 = v112;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v114 = sub_21DBFA5EC();
  }

  else
  {
    v114 = 0;
  }

  v115 = v303;
  v70 = (v303 + 16);
  v116 = v286;
  v117 = v308;
  *&v282 = *(v303 + 16);
  (v282)(v286, v321, v308);
  v118 = *(v115 + 56);
  v57 = (v115 + 56);
  v274 = v118;
  v118(v116, 0, 1, v117);
  v285 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v114, v116);
  v120 = v119;

  sub_21D0CF7E0(v116, &qword_27CE58D68, &unk_21DC0C060);
  v286 = v120;
  if (!v120)
  {
    if (v111 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v285 = sub_21DBF516C();
      v286 = v121;
    }

    else
    {
      v122 = [v281 localizedDescriptionForRepeatType_];
      v285 = sub_21DBFA16C();
      v286 = v123;
    }
  }

  v124 = [v306 recurrenceRules];
  if (!v124)
  {
    goto LABEL_52;
  }

  v92 = v124;
  sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
  v125 = sub_21DBFA5EC();

  if (!(v125 >> 62))
  {
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_51:

LABEL_52:
    v280 = 0xE000000000000000;
    v281 = 0;
LABEL_53:
    v133 = [v306 accountCapabilities];
    LODWORD(v278) = [v133 supportsHourlyRecurrence];

    v279 = v111;
    if (!v111)
    {
      v148 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v148 - 8) + 56))(v299, 1, 1, v148);
      goto LABEL_61;
    }

    v134 = v287;
    if (v287)
    {
      v135 = v276;
      sub_21DBF55FC();
      v136 = v134;
      v137 = qword_280D1BAA8;
      v138 = v136;
      if (v137 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v139 = [objc_opt_self() defaultTimeZone];
      v140 = v277;
      sub_21DBF5C2C();

      v141 = sub_21D7A5CB4();
      v143 = v142;

      (*(v304 + 8))(v140, v305);
      v144 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v145 = *(v144 + 20);
      v146 = v299;
      v147 = v135;
      v117 = v308;
      (*(v303 + 32))(v299 + v145, v147, v308);
      v274(v146 + v145, 0, 1, v117);
      *v146 = v141;
      v146[1] = v143;
      (*(*(v144 - 8) + 56))(v146, 0, 1, v144);
      v65 = v314;
      goto LABEL_61;
    }

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_125;
  }

LABEL_46:
  if ((v125 & 0xC000000000000001) != 0)
  {
    v126 = MEMORY[0x223D44740](0, v125);
    goto LABEL_49;
  }

  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v126 = *(v125 + 32);
LABEL_49:
    v127 = v126;

    v128 = sub_21DBF55BC();
    v129 = sub_21DBF5C0C();
    v130 = [v281 shortNaturalLanguageDescriptionForRecurrenceRule:v127 date:v128 timeZone:v129 lowercase:0];

    v131 = sub_21DBFA16C();
    v280 = v132;
    v281 = v131;

    v65 = v314;
    goto LABEL_53;
  }

  __break(1u);
LABEL_123:
  v192 = MEMORY[0x223D44740](0);
LABEL_81:
  v193 = v192;

  v280 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v193 event]);
  v281 = v194;

  v278 = 0;
  v279 = 0;
  v189 = 64;
LABEL_86:
  LODWORD(v277) = v189;
LABEL_87:
  sub_21D7A9558(&v343);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v200 = [v57 flaggedContext];
  v316 = v92;
  if (v200)
  {
    v201 = v200;
    v202 = [v200 flagged];

    v203 = v202 > 0;
  }

  else
  {
    v203 = 2;
  }

  LODWORD(v315) = v203;
  v204 = [v57 objectID];
  v205 = [v204 entityName];

  v206 = sub_21DBFA16C();
  v208 = v207;

  v209 = [objc_opt_self() cdEntityNameForSavedReminder];
  v210 = sub_21DBFA16C();
  v212 = v211;

  if (v206 == v210 && v208 == v212)
  {

    v213 = 0;
  }

  else
  {
    v214 = sub_21DBFC64C();

    v213 = 0;
    if ((v214 & 1) == 0)
    {
      v213 = [v57 isSubtask] ^ 1;
    }
  }

  LODWORD(v309) = v213;
  v215 = [v57 subtaskContext];
  v216 = v215;
  if (v215)
  {

    v217 = *&v307[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v314 = (*(v217 + 48))(ObjectType, v217);
  }

  else
  {
    v314 = 0;
  }

  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  (*(*(v219 - 8) + 56))(v312, 1, 1, v219);
  sub_21D0D3954(v311, &v340, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v341)
  {
    sub_21D0D0FD0(&v340, v342);
  }

  else
  {
    v220 = [v57 listChangeItem];
    v221 = v220;
    if (v220)
    {
      v220 = sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
      v222 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v222 = 0;
      v342[2] = 0;
      v342[1] = 0;
    }

    v342[0] = v221;
    v342[3] = v220;
    v342[4] = v222;
    if (v341)
    {
      sub_21D0CF7E0(&v340, &qword_27CE59DC0, &qword_21DC0FBF0);
    }
  }

  sub_21D0D3954(v342, &v332, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v333)
  {
    sub_21D0D0FD0(&v332, &v327);
    sub_21D0D32E4(&v327, &v335);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v335, &v322);
    __swift_destroy_boxed_opaque_existential_0(&v327);
    v337 = v324;
    v338 = v325;
    v339[0] = v326[0];
    *(v339 + 9) = *(v326 + 9);
    v335 = v322;
    v336 = v323;
  }

  else
  {
    sub_21D0CF7E0(&v332, &qword_27CE59DC0, &qword_21DC0FBF0);
    v335 = xmmword_21DC19C40;
    v336 = 0u;
    v337 = 0u;
    v338 = 0u;
    memset(v339, 0, 25);
  }

  sub_21D0D3954(v342, &v327, &qword_27CE59DC0, &qword_21DC0FBF0);
  v223 = *(&v328 + 1);
  if (*(&v328 + 1))
  {
    v224 = v329;
    __swift_project_boxed_opaque_existential_1(&v327, *(&v328 + 1));
    (*(v224 + 14))(&v322, v223, v224);
    v225 = *(&v323 + 1);
    if (*(&v323 + 1))
    {
      v226 = v324;
      __swift_project_boxed_opaque_existential_1(&v322, *(&v323 + 1));
      LODWORD(v308) = (*(v226 + 16))(v225, v226);
      __swift_destroy_boxed_opaque_existential_0(&v322);
      __swift_destroy_boxed_opaque_existential_0(&v327);
      goto LABEL_114;
    }

    __swift_destroy_boxed_opaque_existential_0(&v327);
    v227 = &qword_27CE5A6E8;
    v228 = &unk_21DC187C0;
    v229 = &v322;
  }

  else
  {
    v227 = &qword_27CE59DC0;
    v228 = &qword_21DC0FBF0;
    v229 = &v327;
  }

  sub_21D0CF7E0(v229, v227, v228);
  LODWORD(v308) = 0;
LABEL_114:
  sub_21D799E6C(v320, v310, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v342, &v322, &qword_27CE59DC0, &qword_21DC0FBF0);
  v230 = *(&v323 + 1);
  if (*(&v323 + 1))
  {
    v231 = v324;
    __swift_project_boxed_opaque_existential_1(&v322, *(&v323 + 1));
    v232 = (*(v231 + 32))(v230, v231);
    v303 = v233;
    v304 = v232;
    __swift_destroy_boxed_opaque_existential_0(&v322);
  }

  else
  {
    sub_21D0CF7E0(&v322, &qword_27CE59DC0, &qword_21DC0FBF0);
    v303 = 0xE000000000000000;
    v304 = 0;
  }

  sub_21D0D3954(v342, &v332, &qword_27CE59DC0, &qword_21DC0FBF0);
  v234 = v333;
  LODWORD(v321) = v65;
  if (v333)
  {
    v235 = v334;
    __swift_project_boxed_opaque_existential_1(&v332, v333);
    v302 = (*(v235 + 8))(v234, v235);
    __swift_destroy_boxed_opaque_existential_0(&v332);
  }

  else
  {
    sub_21D0CF7E0(&v332, &qword_27CE59DC0, &qword_21DC0FBF0);
    v302 = 0;
  }

  LODWORD(v305) = v216 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v342, &v327);
  v286 = v330;
  v287 = v329;
  LODWORD(v285) = v331;
  sub_21D0D3954(&v335, &v322, &unk_27CE5E9E0, &unk_21DC1D600);
  LODWORD(v301) = [v57 isCompleted];
  [v57 priority];
  v299 = REMReminderPriorityLevelForPriority();
  v236 = [v57 v70[73]];
  v284 = [v236 defaultReminderPriorityLevel];

  v237 = type metadata accessor for TTRReminderDetailViewModel(0);
  v238 = v292;
  sub_21D799E6C(v319, v292 + v237[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v239 = v280;
  v240 = v281;
  v241 = v278;
  v242 = v279;
  v243 = v277;
  v244 = [v57 v70[73]];
  LODWORD(v300) = [v244 supportsTextStyling];

  v282 = v328;
  v283 = v327;

  sub_21D48C240(v239, v240, v242, v241, v243);
  sub_21D0CF7E0(&v335, &unk_27CE5E9E0, &unk_21DC1D600);

  sub_21D0CF7E0(v298, &qword_27CE61948, &unk_21DC278E8);
  sub_21D0CF7E0(v311, &qword_27CE59DC0, &qword_21DC0FBF0);
  sub_21D799ED4(v319, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v320, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v310, v238, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v238 + v237[5]) = 1;
  v245 = (v238 + v237[6]);
  v246 = v303;
  *v245 = v304;
  v245[1] = v246;
  *(v238 + v237[7]) = v302;
  v247 = v238 + v237[8];
  v248 = v286;
  *(v247 + 32) = v287;
  *(v247 + 40) = v248;
  *(v247 + 48) = v285;
  v249 = v282;
  *v247 = v283;
  *(v247 + 16) = v249;
  v250 = *(v339 + 9);
  v251 = (v238 + v237[9]);
  v252 = v338;
  v251[2] = v337;
  v251[3] = v252;
  v251[4] = v339[0];
  *(v251 + 73) = v250;
  v253 = v336;
  *v251 = v335;
  v251[1] = v253;
  *(v238 + v237[10]) = v308 & 1;
  *(v238 + v237[11]) = v309;
  *(v238 + v237[12]) = v291;
  v254 = (v238 + v237[13]);
  *v254 = 0u;
  v254[1] = 0u;
  *(v238 + v237[14]) = v301;
  *(v238 + v237[15]) = v299;
  *(v238 + v237[16]) = v284;
  *(v238 + v237[17]) = v315;
  *(v238 + v237[18]) = v289;
  v255 = (v238 + v237[19]);
  *v255 = 0u;
  v255[1] = 0u;
  *(v238 + v237[21]) = v321;
  *(v238 + v237[22]) = v288;
  v256 = v238 + v237[23];
  *v256 = v239;
  *(v256 + 8) = v240;
  *(v256 + 16) = v242;
  *(v256 + 24) = v241;
  *(v256 + 32) = v243;
  v257 = v238 + v237[24];
  *v257 = 0;
  *(v257 + 8) = 0;
  v258 = v238 + v237[25];
  *v258 = xmmword_21DC22F10;
  *(v258 + 16) = 0;
  v259 = v238 + v237[26];
  *(v259 + 112) = 0;
  *(v259 + 80) = 0u;
  *(v259 + 96) = 0u;
  *(v259 + 48) = 0u;
  *(v259 + 64) = 0u;
  *(v259 + 16) = 0u;
  *(v259 + 32) = 0u;
  *v259 = 0u;
  v260 = (v238 + v237[27]);
  v261 = v348;
  v260[4] = v347;
  v260[5] = v261;
  v260[6] = v349[0];
  *(v260 + 105) = *(v349 + 9);
  v262 = v344;
  *v260 = v343;
  v260[1] = v262;
  v263 = v346;
  v260[2] = v345;
  v260[3] = v263;
  v264 = v238 + v237[28];
  *v264 = v293;
  v265 = v317;
  *(v264 + 8) = v318;
  *(v264 + 16) = v265;
  v266 = (v238 + v237[29]);
  *v266 = 0u;
  v266[1] = 0u;
  *(v238 + v237[30]) = v300;
  v267 = v238 + v237[31];
  *v267 = v314;
  *(v267 + 8) = v305;
  *(v238 + v237[32]) = 0;
  sub_21D7A959C(v312, v238 + v237[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v268 = (v238 + v237[34]);
  *v268 = 0;
  v268[1] = 0;
  v269 = (v238 + v237[35]);
  *v269 = xmmword_21DC19C40;
  v269[1] = 0u;
  v269[2] = 0u;
  v269[3] = 0u;
  v269[4] = 0u;
  *(v238 + v237[36]) = 0;
  v270 = v238 + v237[37];
  v271 = v296;
  *v270 = v297;
  *(v270 + 16) = v271;
  *(v270 + 32) = v295;
  *(v270 + 40) = v294;
  v272 = v238 + v237[38];
  *(v272 + 64) = 0;
  *(v272 + 32) = 0u;
  *(v272 + 48) = 0u;
  *v272 = 0u;
  *(v272 + 16) = 0u;
  sub_21D0CF7E0(v342, &qword_27CE59DC0, &qword_21DC0FBF0);
  __swift_destroy_boxed_opaque_existential_0(v350);
}

uint64_t TTRReminderDetailViewModel.init(reminderChangeItem:subtasksCount:list:presenterState:shouldShowAsUnauthorizedForPreciseLocation:sectionPickerVisibility:dueDateSource:allowsClearingDueDate:)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, char **a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v280 = a6;
  v316 = a4;
  v289 = a3;
  v290 = a2;
  v299 = a9;
  v359 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v14 - 8);
  v317 = &v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v291);
  v307 = &v278 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v17 - 8);
  v306 = (&v278 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v19 - 8);
  v292 = &v278 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v21 - 8);
  v294 = &v278 - v22;
  v23 = sub_21DBF5C4C();
  v311 = *(v23 - 1);
  v312 = v23;
  MEMORY[0x28223BE20](v23);
  v282 = &v278 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v309 = &v278 - v26;
  v314 = sub_21DBF563C();
  v310 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v28 = &v278 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v326 = &v278 - v30;
  v321 = sub_21DBF509C();
  v319 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v313 = &v278 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v295 = &v278 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v34 - 8);
  v293 = &v278 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v320 = &v278 - v37;
  MEMORY[0x28223BE20](v38);
  v308 = &v278 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v278 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v278 - v44;
  v46 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v46 - 8);
  v324 = &v278 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v48);
  v315 = &v278 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v325 = (&v278 - v51);
  v52 = *a7;
  v303 = a7[1];
  v304 = v52;
  v302 = *(a7 + 4);
  v301 = *(a7 + 40);
  v53 = *a8;
  v305 = a5;
  sub_21D0D3954(a5, &v349, &qword_27CE61948, &unk_21DC278E8);
  v281 = v28;
  if (*(&v350 + 1))
  {
    sub_21D0D0FD0(&v349, v356);
  }

  else
  {
    v357 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v358 = &off_282ED2868;
    v54 = swift_allocObject();
    v356[0] = v54;
    *(v54 + 16) = 768;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 40) = 2;
  }

  v55 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  *&v343 = &protocol witness table for REMReminderChangeItem;
  *(&v342 + 1) = v55;
  *&v341 = a1;
  *&v328 = 3;
  v56 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v341, &v328, &v349);
  v318 = *(&v349 + 1);
  v57 = v349;
  v300 = v350;
  v322 = v351;
  v323 = *(&v350 + 1);
  v58 = [v56 objectID];
  v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v61 = v325;
  (*(*(v60 - 8) + 56))(v325 + v59, 1, 1, v60);
  *v61 = v58;
  swift_storeEnumTagMultiPayload();
  v62 = v57;
  if (v57)
  {
    v63 = v57;
    v64 = v56;
  }

  else
  {
    v63 = [v56 title];
    v62 = 0;
    v64 = v56;
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v62 = 0;
    }
  }

  v297 = v62;
  v298 = v63;
  v65 = v318;
  v66 = v53;
  if (v318)
  {
    v67 = v62;
    v68 = v65;
  }

  else
  {
    v69 = v62;
    v68 = [v64 notes];
    if (!v68)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v70 = &selRef__setContentViewMarginType_;
  v327 = v64;
  v296 = v68;
  if (v66)
  {
    if (v66 != 1)
    {
      v79 = v65;
      sub_21D568328(v66);
      v78 = v320;
      v77 = v321;
      goto LABEL_24;
    }

    v71 = v65;
    v72 = [v64 effectiveDisplayDateComponents_forCalendar];
    if (v72)
    {
      v73 = v72;
      sub_21DBF4EFC();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v80 = v319;
    v81 = v321;
    (*(v319 + 56))(v45, v74, 1, v321);
    sub_21D0D3954(v45, v42, &qword_27CE58D60, &unk_21DC0A690);
    if ((*(v80 + 48))(v42, 1, v81) == 1)
    {
      sub_21D0CF7E0(v45, &qword_27CE58D60, &unk_21DC0A690);
      v70 = &selRef__setContentViewMarginType_;
LABEL_26:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
      (*(*(v93 - 8) + 56))(v324, 1, 1, v93);
      v94 = 0;
      LODWORD(v95) = 0;
      v96 = 0;
      while (1)
      {
        v185 = [v64 v70[73]];
        v186 = [v185 supportsLocation];

        if (!v186)
        {
          v319 = 0;
          v312 = 0;
          v313 = 0;
          LODWORD(v311) = 128;
          v314 = 2;
          goto LABEL_89;
        }

        v187 = sub_21D7A5EB4(0x277D44580);
        if (v187 >> 62)
        {
          v195 = v187;
          v196 = sub_21DBFBD7C();
          v187 = v195;
          if (!v196)
          {
LABEL_77:

            goto LABEL_78;
          }
        }

        else if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        if ((v187 & 0xC000000000000001) != 0)
        {
          v188 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v188 = *(v187 + 32);
        }

        v189 = v188;

        v190 = [v189 structuredLocation];
        v191 = [v190 displayName];

        if (v191)
        {
          v314 = sub_21DBFA16C();
          v319 = v192;

          v193 = [v189 structuredLocation];
          v313 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v312 = [v189 proximity];

          v194 = v280 & 1;
          goto LABEL_88;
        }

LABEL_78:
        v187 = sub_21D7A5EB4(0x277D44590);
        if (!(v187 >> 62))
        {
          if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }

LABEL_86:
        v200 = v187;
        v201 = sub_21DBFBD7C();
        v187 = v200;
        if (!v201)
        {
LABEL_87:

          v202 = v357;
          v203 = v358;
          __swift_project_boxed_opaque_existential_1(v356, v357);
          v204 = (v203[1])(v202, v203);
          v319 = 0;
          v312 = 0;
          v313 = 0;
          v314 = (v204 & 1) == 0;
          v194 = 128;
          goto LABEL_88;
        }

LABEL_80:
        if ((v187 & 0xC000000000000001) != 0)
        {
          goto LABEL_125;
        }

        if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v197 = *(v187 + 32);
          goto LABEL_83;
        }

        __break(1u);
LABEL_127:
        swift_once();
LABEL_62:
        v153 = sub_21DBF516C();
        v155 = v154;
        v156 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v157 = v306;
        v158 = v314;
        v279(v306 + *(v156 + 20), 1, 1, v314);
        *v157 = v153;
        v157[1] = v155;
        (*(*(v156 - 8) + 56))(v157, 0, 1, v156);
        v151 = v158;
LABEL_63:
        v159 = v307;
        v288(v307, v326, v151);
        v160 = v291;
        (v70[2])(v159 + *(v291 + 24), v313, v321);
        v161 = v357;
        v162 = v358;
        __swift_project_boxed_opaque_existential_1(v356, v357);
        (v162[5])(&v349, v161, v162);
        v288 = *(&v349 + 1);
        v163 = v349;
        v164 = v350;
        v165 = [v327 accountCapabilities];
        LOBYTE(v161) = [v165 supportsCloudKitSync];

        v166 = v357;
        v167 = v358;
        __swift_project_boxed_opaque_existential_1(v356, v357);
        LOBYTE(v166) = (v167[4])(v166, v167);
        v168 = v357;
        v169 = v358;
        __swift_project_boxed_opaque_existential_1(v356, v357);
        (v169[2])(&v341, v168, v169);
        *(v159 + v160[5]) = v295;
        *(v159 + v160[7]) = v283 & 1;
        v170 = v159 + v160[8];
        v171 = v288;
        *v170 = v163;
        *(v170 + 8) = v171;
        *(v170 + 16) = v164;
        *(v159 + v160[9]) = v161;
        LOBYTE(v170) = v341;
        *(v159 + v160[10]) = v166 & 1;
        *(v159 + v160[11]) = v170;
        v172 = (v159 + v160[12]);
        *v172 = 0;
        v172[1] = 0;
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
        v174 = v324;
        v175 = v324 + v173[12];
        v176 = v173[16];
        v95 = v173[20];
        v177 = v173[24];
        sub_21D799E6C(v159, v324, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v175 = v294;
        *(v175 + 8) = v284;
        v178 = v292;
        *(v175 + 16) = v287;
        *(v175 + 24) = v178;
        v179 = v285;
        *(v175 + 32) = v286;
        *(v175 + 40) = v179;
        v180 = v306;
        sub_21D0D3954(v306, v174 + v176, &unk_27CE628E0, &unk_21DC17980);
        v181 = v357;
        v182 = v358;
        __swift_project_boxed_opaque_existential_1(v356, v357);
        *(v95 + v174) = (v182[3])(v181, v182) & 1;
        v183 = v327;
        *(v174 + v177) = [v327 prefersUrgentPresentationStyleForDateAlarms];
        v64 = v183;
        (*(*(v173 - 1) + 56))(v174, 0, 1, v173);
        LODWORD(v95) = [v183 isOverdue];
        v94 = 0;
        v184 = v180;
        if (([v183 isCompleted] & 1) == 0)
        {
          v94 = [v183 isOverdue];
        }

        v96 = v320;

        sub_21D799ED4(v307, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v184, &unk_27CE628E0, &unk_21DC17980);
        (*(v319 + 8))(v313, v321);
        (*(v311 + 8))(v309, v312);
        sub_21D0CF7E0(v308, &qword_27CE58D60, &unk_21DC0A690);
        (*(v310 + 8))(v326, v314);

        v70 = &selRef__setContentViewMarginType_;
      }
    }

    v82 = v295;
    (*(v80 + 32))(v295, v42, v81);
    v83 = objc_allocWithZone(MEMORY[0x277D44600]);
    v84 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
    v85 = sub_21DBFA5DC();
    v86 = [v83 initWithDueDateComponents:v84 alarms:v85];

    (*(v80 + 8))(v82, v81);
    sub_21D0CF7E0(v45, &qword_27CE58D60, &unk_21DC0A690);
    v76 = v86;
    v77 = v81;
    v70 = &selRef__setContentViewMarginType_;
    v78 = v320;
    if (!v86)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v75 = v65;
    v76 = [v64 displayDate];
    v77 = v321;
    v78 = v320;
    if (!v76)
    {
      goto LABEL_26;
    }
  }

  v66 = v76;
LABEL_24:
  v87 = [v66 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  LODWORD(v295) = [v66 isAllDay];
  v88 = [v64 dueDateComponents];
  v89 = v311;
  v90 = v319;
  if (v88)
  {
    v91 = v88;
    sub_21DBF4EFC();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  (*(v90 + 56))(v78, v92, 1, v77);
  v97 = v78;
  v98 = v308;
  sub_21D0D523C(v97, v308, &qword_27CE58D60, &unk_21DC0A690);
  v99 = v98;
  v100 = v293;
  sub_21D0D3954(v99, v293, &qword_27CE58D60, &unk_21DC0A690);
  v101 = (*(v90 + 48))(v100, 1, v77);
  v320 = v66;
  if (v101 == 1)
  {
    sub_21D0CF7E0(v100, &qword_27CE58D60, &unk_21DC0A690);
    v102 = v294;
    v103 = v312;
    (*(v89 + 56))(v294, 1, 1, v312);
  }

  else
  {
    v104 = v100;
    v102 = v294;
    sub_21DBF507C();
    (*(v90 + 8))(v104, v77);
    v103 = v312;
    if ((*(v89 + 48))(v102, 1, v312) != 1)
    {
      (*(v89 + 32))(v309, v102, v103);
      goto LABEL_34;
    }
  }

  v105 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v89 + 48))(v102, 1, v103) != 1)
  {
    sub_21D0CF7E0(v102, &unk_27CE60DB0, qword_21DC0BF70);
  }

LABEL_34:
  v106 = objc_opt_self();
  v107 = sub_21DBF55BC();
  v108 = sub_21DBF5C0C();
  v109 = [v106 rem:v107 dateComponentsWithDate:v108 timeZone:v295 isAllDay:?];

  sub_21DBF4EFC();
  v110 = objc_opt_self();
  v95 = &selRef_setQueryFragment_;
  v111 = [v64 recurrenceRules];
  v112 = sub_21DBF55BC();
  v113 = sub_21DBF5C0C();
  *&v349 = 0;
  v294 = [v110 repeatTypeForRecurrenceRules:v111 recurrenceDate:v112 recurrenceTimeZone:v113 getRepeatEnd:&v349];

  v70 = v349;
  v293 = v349;
  v114 = [v64 recurrenceRules];
  if (v114)
  {
    v115 = v114;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v116 = sub_21DBFA5EC();
  }

  else
  {
    v116 = 0;
  }

  v117 = v310;
  v94 = v310 + 16;
  v118 = v292;
  v119 = v314;
  v288 = *(v310 + 16);
  v288(v292, v326, v314);
  v120 = *(v117 + 56);
  v64 = (v117 + 56);
  v279 = v120;
  v120(v118, 0, 1, v119);
  v121 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v116, v118);
  v123 = v122;

  sub_21D0CF7E0(v118, &qword_27CE58D68, &unk_21DC0C060);
  v292 = v123;
  if (v123)
  {
    v287 = v121;
    v96 = v294;
  }

  else
  {
    v96 = v294;
    if (v294 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v287 = sub_21DBF516C();
      v292 = v124;
    }

    else
    {
      v125 = [v110 localizedDescriptionForRepeatType_];
      v287 = sub_21DBFA16C();
      v292 = v126;
    }
  }

  v127 = [v327 recurrenceRules];
  if (!v127)
  {
    goto LABEL_53;
  }

  v128 = v127;
  sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
  v129 = sub_21DBFA5EC();

  if (!(v129 >> 62))
  {
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_52:

LABEL_53:
    v286 = 0;
    *&v285 = 0xE000000000000000;
LABEL_54:
    v283 = a10;
    v136 = [v327 accountCapabilities];
    LODWORD(v284) = [v136 supportsHourlyRecurrence];

    if (v96)
    {
      v137 = v293;
      if (!v293)
      {
        v70 = v319;
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_62;
        }

        goto LABEL_127;
      }

      v138 = v281;
      sub_21DBF55FC();
      v139 = qword_280D1BAA8;
      v140 = v137;
      if (v139 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v141 = [objc_opt_self() defaultTimeZone];
      v142 = v282;
      sub_21DBF5C2C();

      v143 = sub_21D7A5CB4();
      v145 = v144;

      (*(v311 + 8))(v142, v312);
      v146 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v147 = *(v146 + 20);
      v148 = v306;
      v149 = v138;
      v150 = v314;
      (*(v310 + 32))(v306 + v147, v149, v314);
      v279(v148 + v147, 0, 1, v150);
      *v148 = v143;
      v148[1] = v145;
      (*(*(v146 - 8) + 56))(v148, 0, 1, v146);
      v151 = v150;
    }

    else
    {
      v152 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v152 - 8) + 56))(v306, 1, 1, v152);
      v151 = v314;
    }

    v70 = v319;
    goto LABEL_63;
  }

LABEL_47:
  if ((v129 & 0xC000000000000001) != 0)
  {
    v130 = MEMORY[0x223D44740](0, v129);
    goto LABEL_50;
  }

  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v130 = *(v129 + 32);
LABEL_50:
    v131 = v130;

    v132 = sub_21DBF55BC();
    v133 = sub_21DBF5C0C();
    v134 = [v110 shortNaturalLanguageDescriptionForRecurrenceRule:v131 date:v132 timeZone:v133 lowercase:0];

    v286 = sub_21DBFA16C();
    *&v285 = v135;

    goto LABEL_54;
  }

  __break(1u);
LABEL_125:
  v197 = MEMORY[0x223D44740](0);
LABEL_83:
  v198 = v197;

  v314 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v198 event]);
  v319 = v199;

  v312 = 0;
  v313 = 0;
  v194 = 64;
LABEL_88:
  LODWORD(v311) = v194;
LABEL_89:
  sub_21D7A9558(&v349);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v205 = [v64 flaggedContext];
  v320 = v96;
  LODWORD(v326) = v95;
  if (v205)
  {
    v206 = v205;
    v207 = [v205 flagged];

    v208 = v207 > 0;
  }

  else
  {
    v208 = 2;
  }

  LODWORD(v310) = v208;
  v209 = [v64 objectID];
  v210 = [v209 entityName];

  v211 = sub_21DBFA16C();
  v213 = v212;

  v214 = [objc_opt_self() cdEntityNameForSavedReminder];
  v215 = sub_21DBFA16C();
  v217 = v216;

  if (v211 == v215 && v213 == v217)
  {

    v218 = 0;
  }

  else
  {
    v219 = sub_21DBFC64C();

    v218 = 0;
    if ((v219 & 1) == 0)
    {
      v218 = [v64 isSubtask] ^ 1;
    }
  }

  LODWORD(v308) = v218;
  v220 = [v64 subtaskContext];
  v221 = v220;
  if (v220)
  {

    v309 = v290();
  }

  else
  {
    v309 = 0;
  }

  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  (*(*(v222 - 8) + 56))(v317, 1, 1, v222);
  sub_21D0D3954(v316, &v346, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v347)
  {
    sub_21D0D0FD0(&v346, v348);
  }

  else
  {
    v223 = [v64 listChangeItem];
    v224 = v223;
    if (v223)
    {
      v223 = sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
      v225 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v225 = 0;
      v348[2] = 0;
      v348[1] = 0;
    }

    v348[0] = v224;
    v348[3] = v223;
    v348[4] = v225;
    if (v347)
    {
      sub_21D0CF7E0(&v346, &qword_27CE59DC0, &qword_21DC0FBF0);
    }
  }

  sub_21D0D3954(v348, &v338, &qword_27CE59DC0, &qword_21DC0FBF0);
  if (v339)
  {
    sub_21D0D0FD0(&v338, &v333);
    sub_21D0D32E4(&v333, &v341);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v341, &v328);
    __swift_destroy_boxed_opaque_existential_0(&v333);
    v343 = v330;
    v344 = v331;
    v345[0] = v332[0];
    *(v345 + 9) = *(v332 + 9);
    v341 = v328;
    v342 = v329;
  }

  else
  {
    sub_21D0CF7E0(&v338, &qword_27CE59DC0, &qword_21DC0FBF0);
    v341 = xmmword_21DC19C40;
    v342 = 0u;
    v343 = 0u;
    v344 = 0u;
    memset(v345, 0, 25);
  }

  sub_21D0D3954(v348, &v333, &qword_27CE59DC0, &qword_21DC0FBF0);
  v226 = *(&v334 + 1);
  if (*(&v334 + 1))
  {
    v227 = v335;
    __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
    (*(v227 + 112))(&v328, v226, v227);
    v228 = *(&v329 + 1);
    if (*(&v329 + 1))
    {
      v229 = v330;
      __swift_project_boxed_opaque_existential_1(&v328, *(&v329 + 1));
      LODWORD(v307) = (*(v229 + 16))(v228, v229);
      __swift_destroy_boxed_opaque_existential_0(&v328);
      __swift_destroy_boxed_opaque_existential_0(&v333);
      goto LABEL_116;
    }

    __swift_destroy_boxed_opaque_existential_0(&v333);
    v230 = &qword_27CE5A6E8;
    v231 = &unk_21DC187C0;
    v232 = &v328;
  }

  else
  {
    v230 = &qword_27CE59DC0;
    v231 = &qword_21DC0FBF0;
    v232 = &v333;
  }

  sub_21D0CF7E0(v232, v230, v231);
  LODWORD(v307) = 0;
LABEL_116:
  sub_21D799E6C(v325, v315, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v348, &v328, &qword_27CE59DC0, &qword_21DC0FBF0);
  v233 = *(&v329 + 1);
  if (*(&v329 + 1))
  {
    v234 = v330;
    __swift_project_boxed_opaque_existential_1(&v328, *(&v329 + 1));
    v235 = (*(v234 + 32))(v233, v234);
    v294 = v236;
    v295 = v235;
    __swift_destroy_boxed_opaque_existential_0(&v328);
  }

  else
  {
    sub_21D0CF7E0(&v328, &qword_27CE59DC0, &qword_21DC0FBF0);
    v294 = 0xE000000000000000;
    v295 = 0;
  }

  sub_21D0D3954(v348, &v338, &qword_27CE59DC0, &qword_21DC0FBF0);
  v237 = v339;
  LODWORD(v321) = v94;
  if (v339)
  {
    v238 = v340;
    __swift_project_boxed_opaque_existential_1(&v338, v339);
    v293 = (*(v238 + 8))(v237, v238);
    __swift_destroy_boxed_opaque_existential_0(&v338);
  }

  else
  {
    sub_21D0CF7E0(&v338, &qword_27CE59DC0, &qword_21DC0FBF0);
    v293 = 0;
  }

  LODWORD(v306) = v221 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v348, &v333);
  v288 = v336;
  v289 = v335;
  LODWORD(v287) = v337;
  sub_21D0D3954(&v341, &v328, &unk_27CE5E9E0, &unk_21DC1D600);
  v239 = v327;
  LODWORD(v292) = [v327 isCompleted];
  [v239 priority];
  v290 = REMReminderPriorityLevelForPriority();
  v240 = [v239 v70[73]];
  v286 = [v240 defaultReminderPriorityLevel];

  v241 = type metadata accessor for TTRReminderDetailViewModel(0);
  v242 = v299;
  sub_21D799E6C(v324, v299 + v241[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v243 = v313;
  v244 = v314;
  v245 = v319;
  v246 = v312;
  v247 = v311;
  v248 = [v239 v70[73]];
  LODWORD(v291) = [v248 supportsTextStyling];

  v284 = v334;
  v285 = v333;

  sub_21D48C240(v244, v245, v243, v246, v247);
  sub_21D0CF7E0(&v341, &unk_27CE5E9E0, &unk_21DC1D600);

  sub_21D0CF7E0(v305, &qword_27CE61948, &unk_21DC278E8);
  sub_21D0CF7E0(v316, &qword_27CE59DC0, &qword_21DC0FBF0);
  sub_21D799ED4(v324, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v325, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v315, v242, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v242 + v241[5]) = 1;
  v249 = (v242 + v241[6]);
  v250 = v294;
  *v249 = v295;
  v249[1] = v250;
  *(v242 + v241[7]) = v293;
  v251 = v242 + v241[8];
  v252 = v288;
  *(v251 + 32) = v289;
  *(v251 + 40) = v252;
  *(v251 + 48) = v287;
  v253 = v284;
  *v251 = v285;
  *(v251 + 16) = v253;
  v254 = *(v345 + 9);
  v255 = (v242 + v241[9]);
  v256 = v344;
  v255[2] = v343;
  v255[3] = v256;
  v255[4] = v345[0];
  *(v255 + 73) = v254;
  v257 = v342;
  *v255 = v341;
  v255[1] = v257;
  *(v242 + v241[10]) = v307 & 1;
  *(v242 + v241[11]) = v308;
  *(v242 + v241[12]) = v298;
  v258 = (v242 + v241[13]);
  *v258 = 0u;
  v258[1] = 0u;
  *(v242 + v241[14]) = v292;
  *(v242 + v241[15]) = v290;
  *(v242 + v241[16]) = v286;
  *(v242 + v241[17]) = v310;
  *(v242 + v241[18]) = v296;
  v259 = (v242 + v241[19]);
  *v259 = 0u;
  v259[1] = 0u;
  *(v242 + v241[21]) = v326;
  *(v242 + v241[22]) = v321;
  v260 = v242 + v241[23];
  *v260 = v244;
  *(v260 + 8) = v245;
  *(v260 + 16) = v243;
  *(v260 + 24) = v246;
  *(v260 + 32) = v247;
  v261 = v242 + v241[24];
  *v261 = 0;
  *(v261 + 8) = 0;
  v262 = v242 + v241[25];
  *v262 = xmmword_21DC22F10;
  *(v262 + 16) = 0;
  v263 = v242 + v241[26];
  *(v263 + 112) = 0;
  *(v263 + 80) = 0u;
  *(v263 + 96) = 0u;
  *(v263 + 48) = 0u;
  *(v263 + 64) = 0u;
  *(v263 + 16) = 0u;
  *(v263 + 32) = 0u;
  *v263 = 0u;
  v264 = (v242 + v241[27]);
  v265 = v354;
  v264[4] = v353;
  v264[5] = v265;
  v264[6] = v355[0];
  *(v264 + 105) = *(v355 + 9);
  v266 = v350;
  *v264 = v349;
  v264[1] = v266;
  v267 = v352;
  v264[2] = v351;
  v264[3] = v267;
  v268 = v242 + v241[28];
  *v268 = v300;
  v269 = v322;
  *(v268 + 8) = v323;
  *(v268 + 16) = v269;
  v270 = (v242 + v241[29]);
  *v270 = 0u;
  v270[1] = 0u;
  *(v242 + v241[30]) = v291;
  v271 = v242 + v241[31];
  *v271 = v309;
  *(v271 + 8) = v306;
  *(v242 + v241[32]) = 0;
  sub_21D7A959C(v317, v242 + v241[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v272 = (v242 + v241[34]);
  *v272 = 0;
  v272[1] = 0;
  v273 = (v242 + v241[35]);
  *v273 = xmmword_21DC19C40;
  v273[1] = 0u;
  v273[2] = 0u;
  v273[3] = 0u;
  v273[4] = 0u;
  *(v242 + v241[36]) = 0;
  v274 = v242 + v241[37];
  v275 = v303;
  *v274 = v304;
  *(v274 + 16) = v275;
  *(v274 + 32) = v302;
  *(v274 + 40) = v301;
  v276 = v242 + v241[38];
  *(v276 + 64) = 0;
  *(v276 + 32) = 0u;
  *(v276 + 48) = 0u;
  *v276 = 0u;
  *(v276 + 16) = 0u;
  sub_21D0CF7E0(v348, &qword_27CE59DC0, &qword_21DC0FBF0);
  return __swift_destroy_boxed_opaque_existential_0(v356);
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.dateAccessibilityString(for:)()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v0 = sub_21D7A5CB4();

  return v0;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_21DBF5A2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  sub_21DBF597C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_21DBF507C();
    v16 = sub_21DBF5C4C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v2, 1, v16) == 1)
    {
      (*(v11 + 8))(v13, v10);
      sub_21D0CF7E0(v2, &unk_27CE60DB0, qword_21DC0BF70);
      return 0;
    }

    else
    {
      v18 = sub_21DBF5BDC();
      (*(v11 + 8))(v13, v10);
      (*(v17 + 8))(v2, v16);
      return v18;
    }
  }
}

uint64_t TTRReminderDetailViewModel.DueDateState.timeZoneDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(v1, v7, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v9 = 0;
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {

    v10 = *(v8 + 64);
    sub_21D7A959C(v7, v4, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v9 = *&v4[*(v2 + 48)];
    sub_21DBF8E0C();
    sub_21D799ED4(v4, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D0CF7E0(&v7[v10], &unk_27CE628E0, &unk_21DC17980);
  }

  return v9;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.extraShortDescription.getter()
{
  v1 = sub_21DBF5C4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  sub_21D0D3954(v0 + *(v8 + 20), v7, &qword_27CE58D68, &unk_21DC0C060);
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  else
  {
    v12 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v13 = sub_21D7A2630(v4, 1, 0);
    (*(v2 + 8))(v4, v1);
    (*(v10 + 8))(v7, v9);
    return v13;
  }
}

uint64_t TTRReminderDetailViewModel.RecurrenceEndOption.localizedDescription.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 48))(v4, v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [v6 emoji];
  if (!v8)
  {

LABEL_5:
    v16 = type metadata accessor for TTRListBadgeEmblem();
    v17 = a1[3];
    v18 = a1[4];
    v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
    v14 = sub_21D6589DC(v19, v16, v17, v18);
    v20 = v14;
    v10 = REMListBadgeEmblem.name.getter(v20);
    v12 = v21;

    v15 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_21DBFA16C();
  v12 = v11;

  sub_21DBF8E0C();
  v13 = 1;
  v14 = v10;
  v15 = v12;
LABEL_6:
  type metadata accessor for TTRListColors();
  sub_21D0D32E4(a1, v27);
  static TTRListColors.color(for:)(v27, v28);
  sub_21D0CF7E0(v27, &qword_27CE59DC0, &qword_21DC0FBF0);
  v22 = v29;
  v23 = v28[0];
  v24 = v28[1];
  v25 = v28[2];
  v27[0] = v29;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  *(a2 + 64) = v22;
  *(a2 + 65) = v28[0];
  *(a2 + 68) = *(v28 + 3);
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v13;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 TTRReminderDetailViewModel.AppLink.init(appIcon:appName:activityTitle:phoneCallContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a6;
  v8 = *(a6 + 16);
  *(a7 + 40) = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 56) = v8;
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
  v4 = sub_21DBF509C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 TTRReminderDetailViewModel.DatePickerModel.earlyAlert.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.visibleDatePicker.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.timeZoneDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 48));
  sub_21DBF8E0C();
  return v1;
}

void TTRReminderDetailViewModel.DatePickerModel.timeZoneDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21D7A19D0(char a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  v6 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v7 = sub_21D7A5CB4();

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_21D7A1C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 20));

  return a1(v2);
}

uint64_t sub_21D7A1C7C(char a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  v6 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v7 = sub_21D7A5CB4();

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(uint64_t a1)
{
  v39 = a1;
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5C4C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21DBF5A2C();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF509C();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = v37 - v14;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v15 setDateStyle_];
  [v15 setTimeStyle_];
  [v15 setDoesRelativeDateFormatting_];
  v16 = sub_21DBF5C0C();
  [v15 setTimeZone_];

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v17 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF58BC();
  v18 = v2 + 8;
  v19 = *(v2 + 8);
  v37[1] = v18;
  v19(v4, v1);
  (*(v42 + 8))(v7, v5);
  v20 = *(v8 + 8);
  v21 = v41;
  v20(v10, v41);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v22 = v4;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v23 = v40;
  sub_21DBF58BC();
  v19(v22, v1);
  v20(v10, v21);
  v24 = v38;
  v25 = sub_21DBF4F0C();
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = sub_21DBF4F0C();
    if ((v29 & 1) == 0 && v28 != v27)
    {
      [v15 setDoesRelativeDateFormatting_];
    }
  }

  v30 = sub_21DBF55BC();
  v31 = [v15 stringFromDate_];

  v32 = sub_21DBFA16C();
  v33 = *(v43 + 8);
  v34 = v23;
  v35 = v44;
  v33(v34, v44);
  v33(v24, v35);
  return v32;
}

uint64_t TTRReminderDetailViewModel.Person.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.Person.contact.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderDetailViewModel.Person.init(name:contact:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRReminderDetailViewModel.AssigneeCandidateState.assigneeCandidate.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21D1D9A84(v10, &v9);
}

__n128 TTRReminderDetailViewModel.AssigneeCandidateState.init(assigneeCandidate:isAssignee:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v3;
  *(a3 + 96) = *(a1 + 96);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 112) = a2;
  return result;
}

uint64_t TTRReminderDetailViewModel.Recurrence.repeatTypeDescription.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.Recurrence.shortDescription.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEndOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.shortDescription.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D7A2630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  v6 = sub_21DBF5C0C();
  [v5 setTimeZone_];

  v7 = sub_21DBF55BC();
  v8 = [v5 stringFromDate_];

  v9 = sub_21DBFA16C();
  return v9;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.representedOption.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  sub_21D0D3954(v1 + *(v6 + 20), v5, &qword_27CE58D68, &unk_21DC0C060);
  v7 = sub_21DBF563C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  result = sub_21D0CF7E0(v5, &qword_27CE58D68, &unk_21DC0C060);
  *a1 = v8;
  return result;
}

BOOL static TTRReminderDetailViewModel.FlaggedState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL static TTRReminderDetailViewModel.SubtaskState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_21D7A28A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

id TTRReminderDetailViewModel.Attachment.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRReminderDetailViewModel.Attachment.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.Attachment.init(image:name:attachment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TTRReminderDetailViewModel.Attachment.urlForQuickLook.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 fileURL];
    if (v6)
    {
      v7 = v6;
      sub_21DBF546C();

      v8 = sub_21DBF54CC();
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = sub_21DBF54CC();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    return sub_21D0D523C(v4, a1, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t static TTRReminderDetailViewModel.AttachmentState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      sub_21D1D7218(v3, v2);
      v5 = v4;

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_21D7A2B68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      sub_21D1D7218(v3, v2);
      v5 = v4;

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.description.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.badgeSymbolName.getter()
{
  v1 = *(v0 + 56);
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.LocationDetailsModel.badgeBackgroundColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.init(title:subtitle:description:shouldShowAsUnauthorizedForPreciseLocation:badgeSymbolName:badgeBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TTRReminderDetailViewModel.AttachmentData.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v1 + 40))
  {
    v4 = *(v1 + 16);
    MEMORY[0x223D44FA0](0);
    if (v2)
    {
      sub_21DBFC7FC();
      v5 = v2;
      sub_21DBFB64C();

      if (v4)
      {
LABEL_6:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        goto LABEL_10;
      }
    }

    else
    {
      sub_21DBFC7FC();
      if (v4)
      {
        goto LABEL_6;
      }
    }

    sub_21DBFC7FC();
    goto LABEL_10;
  }

  if (*(v1 + 40) == 1)
  {
    MEMORY[0x223D44FA0](1);
    return sub_21DBFB64C();
  }

  MEMORY[0x223D44FA0](2);
LABEL_10:

  return sub_21DBFA27C();
}

uint64_t TTRReminderDetailViewModel.AttachmentData.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)(v5);
  return sub_21DBFC82C();
}

uint64_t sub_21D7A2E90()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)(v5);
  return sub_21DBFC82C();
}

uint64_t sub_21D7A2EF0(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 40);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)(v6);
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.BadgeViewModel.badgeName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

double TTRReminderDetailViewModel.BadgeViewModel.badgeColor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_21D0FB960(v2, v3, v4, v5, v6, v7, v8);
}

void TTRReminderDetailViewModel.BadgeViewModel.badge.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  sub_21D0FB9BC(v2, v3, v4);
}

id TTRReminderDetailViewModel.BadgeViewModel.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  v8 = *MEMORY[0x277D44960];
  v6 = *MEMORY[0x277D44960];
  *a1 = xmmword_21DC0E710;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);

  return v8;
}

__n128 TTRReminderDetailViewModel.BadgeViewModel.init(badgeName:badgeColor:badge:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 48);
  v6 = a4[1].n128_u8[0];
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v7;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 64) = v5;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

id TTRReminderDetailViewModel.SectionPickerVisibility.ttrSectionID.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      *a1 = 0;
      return result;
    }
  }

  else if (!*(v1 + 40))
  {
    v2 = *v1;
    *a1 = *v1;
    return v2;
  }

  *a1 = 1;
  return result;
}

id TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionID.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 40))
  {
    *a1 = *(v1 + 40) == 1;
  }

  else
  {
    v2 = *v1;
    *a1 = *v1;
    return v2;
  }

  return result;
}

uint64_t TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionDisplayName.getter()
{
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v1 = *v0;
LABEL_6:
      sub_21DBF8E0C();
      return v1;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  else
  {
    if (v0[2])
    {
      v1 = v0[1];
      goto LABEL_6;
    }

    return 0;
  }
}

uint64_t TTRReminderDetailViewModel.AppLink.appName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.AppLink.activityTitle.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

double TTRReminderDetailViewModel.AppLink.phoneCallContext.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D3A1244(v2, v3, v4, v5);
}

uint64_t TTRReminderDetailViewModel.AppLink.localizedDescription.getter()
{
  if (v0[7] >= 2uLL)
  {
    v1 = v0[6];
    goto LABEL_5;
  }

  if (v0[4])
  {
    v1 = v0[3];
LABEL_5:
    sub_21DBF8E0C();
    return v1;
  }

  v3 = v0[2];
  if (!v3)
  {
    return 32;
  }

  v4 = v0[1];
  v5 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v5 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21D17A884();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v1 = sub_21DBFA13C();

  return v1;
}

uint64_t TTRReminderDetailViewModel.allowsCommit.setter(char a1)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TTRReminderDetailViewModel.listName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 24));
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 28));
  v2 = v1;
  return v1;
}

double TTRReminderDetailViewModel.listColor.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t TTRReminderDetailViewModel.listBadge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_21D0D3954(v11, &v10, &unk_27CE5E9E0, &unk_21DC1D600);
}

id TTRReminderDetailViewModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 48));

  return v1;
}

double TTRReminderDetailViewModel.titleAugmentation.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5, v6, v7);
}

__n128 TTRReminderDetailViewModel.titleAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 52);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t TTRReminderDetailViewModel.flaggedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

id TTRReminderDetailViewModel.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 72));

  return v1;
}

double TTRReminderDetailViewModel.notesAugmentation.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5, v6, v7);
}

__n128 TTRReminderDetailViewModel.notesAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 76);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

double TTRReminderDetailViewModel.locationState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 92);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  return sub_21D48BB60(v4, v5, v6, v7, v8);
}

double TTRReminderDetailViewModel.locationQuickPicksState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;

  sub_21DBF8E0C();
  return result;
}

void TTRReminderDetailViewModel.locationQuickPicksState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96);

  *v4 = v2;
  *(v4 + 8) = v3;
}

double TTRReminderDetailViewModel.personState.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D7A9604(v4, v5, v6);
}

__n128 TTRReminderDetailViewModel.personState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
  sub_21D7A9648(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTRReminderDetailViewModel.assigneeOptionsState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104));
  v4 = v3[6];
  v6 = v3[4];
  v19 = v3[5];
  v5 = v19;
  v20 = v4;
  v7 = v3[1];
  v16[0] = *v3;
  v8 = v3[2];
  v9 = *v3;
  v16[1] = v3[1];
  v16[2] = v8;
  v10 = v3[4];
  v12 = v3[2];
  v17 = v3[3];
  v11 = v17;
  v18 = v10;
  *(a1 + 32) = v12;
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v7;
  v13 = v3[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  v21 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *(a1 + 64) = v6;
  return sub_21D7A9690(v16, v15);
}

__n128 TTRReminderDetailViewModel.assigneeOptionsState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
  v4 = *(v3 + 96);
  v12[5] = *(v3 + 80);
  v12[6] = v4;
  v13 = *(v3 + 112);
  v5 = *(v3 + 64);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v7 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v7;
  v12[4] = v5;
  sub_21D7A96C8(v12);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v11;
  return result;
}

uint64_t TTRReminderDetailViewModel.assigneeState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 108));
  v4 = v3[5];
  v19[0] = v3[6];
  *(v19 + 9) = *(v3 + 105);
  v5 = v3[3];
  v6 = v3[5];
  v17 = v3[4];
  v7 = v17;
  v18 = v6;
  v8 = v3[1];
  v14[0] = *v3;
  v9 = v14[0];
  v14[1] = v8;
  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  a1[2] = v15;
  a1[3] = v5;
  *a1 = v9;
  a1[1] = v8;
  *(a1 + 105) = *(v3 + 105);
  v11 = *(v3 + 6);
  a1[5] = v4;
  a1[6] = v11;
  a1[4] = v7;
  return sub_21D7A96F8(v14, &v13, v11);
}

__n128 TTRReminderDetailViewModel.assigneeState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 108);
  v4 = *(v3 + 96);
  v12[5] = *(v3 + 80);
  v13[0] = v4;
  *(v13 + 9) = *(v3 + 105);
  v5 = *(v3 + 64);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v7 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v7;
  v12[4] = v5;
  sub_21D7A9730(v12);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v11;
  return result;
}

double TTRReminderDetailViewModel.hashtagsState.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 112);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void TTRReminderDetailViewModel.hashtagsState.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 112);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

double TTRReminderDetailViewModel.hashtagsAugmentation.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 116));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5, v6, v7);
}

__n128 TTRReminderDetailViewModel.hashtagsAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 116);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t TTRReminderDetailViewModel.supportsStylingInNote.setter(char a1)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t TTRReminderDetailViewModel.subtaskState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

double TTRReminderDetailViewModel.attachmentState.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 128));

  sub_21DBF8E0C();
  return result;
}

void TTRReminderDetailViewModel.attachmentState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderDetailViewModel(0) + 128);

  *(v1 + v3) = v2;
}

uint64_t TTRReminderDetailViewModel.assignmentString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 136));
  sub_21DBF8E0C();
  return v1;
}

void TTRReminderDetailViewModel.assignmentString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 136));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRReminderDetailViewModel.locationDetailsState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 140));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21D7A97C8(v10, &v9);
}

__n128 TTRReminderDetailViewModel.locationDetailsState.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 140));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_21D7A9800(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

double TTRReminderDetailViewModel.includedAttachments.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 144));

  sub_21DBF8E0C();
  return result;
}

void TTRReminderDetailViewModel.includedAttachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderDetailViewModel(0) + 144);

  *(v1 + v3) = v2;
}

double TTRReminderDetailViewModel.sectionPickerVisibility.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 148);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_21D7A9830(v4, v5, v6, v7, v8, v9);
}

__n128 TTRReminderDetailViewModel.sectionPickerVisibility.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 148);
  sub_21D7A98A0(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.appLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_21D0D3954(v10, v9, &qword_27CE626B0, &unk_21DC1DC60);
}

__n128 TTRReminderDetailViewModel.appLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_21D0CF7E0(v8, &qword_27CE626B0, &unk_21DC1DC60);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

void TTRReminderDetailViewModel.priorityLevelDisplayString.getter()
{
  v1 = type metadata accessor for TTRReminderDetailViewModel(0);
  v2 = *(v1 + 64);
  v3 = *(v0 + *(v1 + 60));
  if (*(v0 + v2) < v3)
  {
    if (v3 > 1)
    {
      if (v3 == 2 || v3 == 3)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE62E48);
    v5 = MEMORY[0x277D84F90];
    v6 = sub_21D17716C(MEMORY[0x277D84F90]);
    v7 = sub_21D17716C(v5);
    sub_21DAEAB00("unknown priority level", 22, 2, v6, v7);
    __break(1u);
  }
}

uint64_t sub_21D7A4A54()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE61920 = result;
  *algn_27CE61928 = v1;
  return result;
}

uint64_t static TTRReminderDetailViewModel.fixedAttachmentName.getter()
{
  if (qword_27CE56C98 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE61920;
  sub_21DBF8E0C();
  return v0;
}

uint64_t sub_21D7A4B70()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  __swift_allocate_value_buffer(v0, qword_27CE61930);
  v1 = __swift_project_value_buffer(v0, qword_27CE61930);
  v2 = [objc_opt_self() newObjectID];
  v3 = *(v0 + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  result = (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = v2;
  return result;
}

double TTRReminderDetailViewModel.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRReminderDetailViewModel(0);
  v3 = (a1 + v2[34]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[38];
  *(v4 + 64) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  if (qword_27CE56CA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = __swift_project_value_buffer(v5, qword_27CE61930);
  sub_21D799E6C(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[5]) = 1;
  v7 = (a1 + v2[6]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(a1 + v2[7]) = 0;
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_280D1BAC8;
  v9 = xmmword_280D1BAD8;
  v10 = xmmword_280D1BAE8;
  v11 = byte_280D1BAF8;
  v12 = a1 + v2[8];
  *v12 = xmmword_280D1BAC8;
  *(v12 + 16) = v9;
  *(v12 + 32) = v10;
  *(v12 + 48) = v11;
  v13 = (a1 + v2[9]);
  *v13 = xmmword_21DC19C40;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  *(v13 + 73) = 0u;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 1;
  *(a1 + v2[12]) = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v14 = (a1 + v2[13]);
  *v14 = 0u;
  v14[1] = 0u;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v15 = (a1 + v2[19]);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v2[20];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  *(a1 + v2[21]) = 0;
  *(a1 + v2[22]) = 0;
  v18 = a1 + v2[23];
  *v18 = 1;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0x80;
  v19 = a1 + v2[24];
  *v19 = 0;
  *(v19 + 8) = 0;
  if (qword_280D15470 != -1)
  {
    swift_once();
  }

  v21 = qword_280D15480;
  v20 = unk_280D15488;
  v22 = a1 + v2[28];
  *v22 = byte_280D15478;
  *(v22 + 8) = v21;
  *(v22 + 16) = v20;
  v23 = a1 + v2[25];
  *v23 = xmmword_21DC22F10;
  *(v23 + 16) = 0;
  sub_21D7A9558(v36);
  v24 = (a1 + v2[27]);
  v25 = v36[5];
  v24[4] = v36[4];
  v24[5] = v25;
  v24[6] = v37[0];
  *(v24 + 105) = *(v37 + 9);
  v26 = v36[1];
  *v24 = v36[0];
  v24[1] = v26;
  v27 = v36[3];
  v24[2] = v36[2];
  v24[3] = v27;
  v28 = a1 + v2[26];
  *(v28 + 112) = 0;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = a1 + v2[31];
  *v29 = 0;
  *(v29 + 8) = 1;
  *(a1 + v2[32]) = 0;
  v30 = v2[33];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  (*(*(v31 - 8) + 56))(a1 + v30, 1, 1, v31);
  v32 = (a1 + v2[35]);
  *v32 = xmmword_21DC19C40;
  v32[1] = 0u;
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  *(a1 + v2[36]) = 0;
  v33 = (a1 + v2[29]);
  *v33 = 0u;
  v33[1] = 0u;
  *(a1 + v2[30]) = 0;
  v34 = a1 + v2[37];
  *(v34 + 32) = 0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 40) = -1;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return result;
}

id static TTRReminderDetailViewModel.defaultItem(withReminderID:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

__n128 sub_21D7A5174@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t static TTRReminderDetailViewModel.Attachment.identitiesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = [v2 objectID];
  v5 = [v3 objectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t static TTRReminderDetailViewModel.Attachment.contentsEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v8 = v6;
    v9 = v3;
    v10 = sub_21DBFB63C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v2 == v5 && v4 == v7;
  if (v11 || (sub_21DBFC64C() & 1) != 0)
  {
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    return sub_21DBFB63C() & 1;
  }

  return 0;
}

uint64_t sub_21D7A5320(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = [v2 objectID];
  v5 = [v3 objectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t sub_21D7A53BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(v6, v5) & 1;
}

uint64_t static TTRReminderDetailViewModel.AssigneeCandidateState.contentsEqual(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v37 = a1[4];
  v38 = v3;
  v4 = a1[5];
  v39 = a1[6];
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = a2[1];
  v40[0] = *a2;
  v40[1] = v9;
  v10 = a2[5];
  v45 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v43 = a2[4];
  v44 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v41 = a2[2];
  v42 = v13;
  v31 = v37;
  v32 = v4;
  v33 = a1[6];
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v2;
  v24 = v43;
  v25 = v10;
  v26 = a2[6];
  v16 = *(a1 + 112);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v41;
  v23 = v11;
  sub_21D1D9A84(v34, v47);
  sub_21D1D9A84(v40, v47);
  v18 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v27, &v20);
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_21D1D9AE0(v46);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[2] = v29;
  v47[3] = v30;
  sub_21D1D9AE0(v47);
  return v18 & ~(v16 ^ v17) & 1;
}

uint64_t sub_21D7A5538(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v11[6] = *(a1 + 96);
  v12 = *(a1 + 112);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v9[6] = *(a2 + 96);
  v10 = *(a2 + 112);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV2eeoiySbAE_AEtFZ_0(v11, v9) & 1;
}

uint64_t sub_21D7A55BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(a1, v9, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = 0;
  v13 = 0;
  if (result != 1)
  {

    v14 = *(v10 + 64);
    sub_21D7A959C(v9, v6, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v15 = &v6[*(v4 + 48)];
    v12 = *v15;
    v13 = *(v15 + 1);
    sub_21DBF8E0C();
    sub_21D799ED4(v6, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    result = sub_21D0CF7E0(&v9[v14], &unk_27CE628E0, &unk_21DC17980);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

void (*TTRReminderDetailViewModel.DueDateState.timeZoneDescription.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v6[3] = v8;
  v9 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v6[4] = v9;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(v9 - 8) + 64));
  }

  v11 = v10;
  v6[5] = v10;
  v12 = *(*(type metadata accessor for TTRReminderDetailViewModel.DueDateState(0) - 8) + 64);
  if (v4)
  {
    v6[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[6] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[7] = v13;
  sub_21D799E6C(v2, v13, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v6[8] = v15;
  v16 = *(v15 - 8);
  v6[9] = v16;
  v17 = *(v16 + 48);
  v6[10] = v17;
  v6[11] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v14, 1, v15) == 1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {

    v20 = *(v15 + 64);
    sub_21D7A959C(v14, v11, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v21 = (v11 + *(v9 + 48));
    v18 = *v21;
    v19 = v21[1];
    sub_21DBF8E0C();
    sub_21D799ED4(v11, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D0CF7E0(v14 + v20, &unk_27CE628E0, &unk_21DC17980);
  }

  *v6 = v18;
  v6[1] = v19;
  return sub_21D7A5A24;
}

void sub_21D7A5A24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[5];
    v8 = v2[3];
    sub_21DBF8E0C();
    TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(v4, v3);
  }

  else
  {
    v9 = v2[10];
    v10 = v2[8];
    v11 = v2[6];
    sub_21D799E6C((*a1)[2], v11, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    if (v9(v11, 1, v10) == 1)
    {
    }

    else
    {
      v12 = v2[8];
      v13 = v2[9];
      v14 = v2[5];
      v15 = v2[6];
      v16 = v2[3];
      v25 = v2[4];
      v17 = v2[2];
      sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      v18 = v15 + v12[12];
      v30 = *v18;
      v29 = *(v18 + 8);
      v28 = *(v18 + 16);
      v26 = *(v18 + 40);
      v27 = *(v18 + 32);
      v19 = v12[16];
      v31 = *(v15 + v12[24]);
      v32 = *(v15 + v12[20]);
      sub_21D7A959C(v15, v14, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D0D523C(v15 + v19, v16, &unk_27CE628E0, &unk_21DC17980);
      v20 = (v14 + *(v25 + 48));

      *v20 = v4;
      v20[1] = v3;
      v21 = v17 + v12[12];
      v22 = v12[16];
      v23 = v12[20];
      v24 = v12[24];
      sub_21D799E6C(v14, v17, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      *v21 = v30;
      *(v21 + 8) = v29;
      *(v21 + 16) = v28;
      *(v21 + 32) = v27;
      *(v21 + 40) = v26;
      sub_21D0D523C(v16, v17 + v22, &unk_27CE628E0, &unk_21DC17980);
      *(v17 + v23) = v32;
      *(v17 + v24) = v31;
      (*(v13 + 56))(v17, 0, 1, v12);
      sub_21D799ED4(v14, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }

    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[5];
    v8 = v2[3];
  }

  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_21D7A5CB4()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = objc_opt_self();
  v6 = sub_21DBFA12C();
  sub_21DBF57AC();
  v7 = sub_21DBF574C();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  v9 = sub_21DBF5C0C();
  [v4 setTimeZone_];

  v10 = sub_21DBF55BC();
  v11 = [v4 stringFromDate_];

  v12 = sub_21DBFA16C();
  return v12;
}

uint64_t sub_21D7A5EB4(void *a1)
{
  v1 = off_282EEACF8;
  v2 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v3 = v1(v2, &protocol witness table for REMReminderChangeItem);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v14 = MEMORY[0x277D84F90];
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_20:
      v7 = sub_21DBFBD7C();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x223D44740](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v12 = [v10 trigger];

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x223D42D80]();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v4 = v14;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return v4;
}

uint64_t sub_21D7A6098(void *a1)
{
  v1 = off_282EEAC18;
  v2 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v3 = v1(v2, &protocol witness table for REMReminder);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v14 = MEMORY[0x277D84F90];
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_20:
      v7 = sub_21DBFBD7C();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x223D44740](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v12 = [v10 trigger];

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x223D42D80]();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v4 = v14;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return v4;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV05BadgeeF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v27 = *(a2 + 88);
    v28 = *(a2 + 80);
    v29 = *(a2 + 72);
    v30 = *(a1 + 88);
    v31 = a1[10];
    v32 = a1[9];
    if (*a1 != *a2 || v3 != v11)
    {
      v25 = a1[6];
      v26 = a1[2];
      v24 = a1[7];
      v23 = *(a1 + 64);
      v19 = sub_21DBFC64C();
      v10 = v23;
      v9 = v24;
      v7 = v25;
      v4 = v26;
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v27 = *(a2 + 88);
    v28 = *(a2 + 80);
    v29 = *(a2 + 72);
    v30 = *(a1 + 88);
    v31 = a1[10];
    v32 = a1[9];
    if (v11)
    {
LABEL_10:
      v21 = 0;
      return v21 & 1;
    }
  }

  v40 = v4;
  v41 = v5;
  v42 = v6;
  v43 = v8;
  v44 = v7;
  v45 = v9;
  v46 = v10;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  sub_21D0FB960(v4, v5, v6, v8, v7, v9, v10);
  sub_21D0FB960(v12, v13, v14, v15, v16, v17, v18);
  v20 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v40, &v33);
  sub_21D1078C0(v33, v34, v35, v36, v37, v38, v39);
  sub_21D1078C0(v40, v41, v42, v43, v44, v45, v46);
  if (!v20)
  {
    goto LABEL_10;
  }

  v40 = v32;
  v41 = v31;
  LOBYTE(v42) = v30;
  v33 = v29;
  v34 = v28;
  LOBYTE(v35) = v27;
  sub_21D0FB9BC(v32, v31, v30);
  sub_21D0FB9BC(v29, v28, v27);
  v21 = _s15RemindersUICore27TTRListDetailViewModelBadgeO2eeoiySbAC_ACtFZ_0(&v40, &v33);
  sub_21D0FB9F4(v33, v34, v35);
  sub_21D0FB9F4(v40, v41, v42);
  return v21 & 1;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_21DBF55EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((MEMORY[0x223D3D6A0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v7 = v5[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 16);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 16);
  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = v10;
    v12 = *v10;
    v13 = v14[1];
    v17 = v8;
    v15 = *v8;
    v16 = v17[1];
    v19 = v11 != 2 && v15 == v12 && v16 == v13;
    if (!v19 || ((v9 ^ v11) & 1) != 0)
    {
      return 0;
    }
  }

  if (*(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]))
  {
    return 0;
  }

  v20 = v5[11];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 3)
  {
    if (v22 != 3)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v23 = v5[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (!v25)
  {
    return !v27;
  }

  return v27 && (*v24 == *v26 && v25 == v27 || (sub_21DBFC64C() & 1) != 0);
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v8 = v6;
    v9 = v3;
    v10 = sub_21DBFB63C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v2 == v5 && v4 == v7;
  if (v11 || (sub_21DBFC64C() & 1) != 0)
  {
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    return sub_21DBFB63C() & 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV10RecurrenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    if (v4 = *(a1 + 32), v5 = *(a1 + 40), v6 = *(a2 + 32), v7 = *(a2 + 40), *(a1 + 16) == *(a2 + 16)) && *(a1 + 24) == *(a2 + 24) || (v8 = sub_21DBFC64C(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_21DBFC64C();
      }
    }
  }

  return result;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV11PersonStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (!v5)
  {
    if (!v7)
    {
      sub_21D7A9648(v3, 0, v4);
      v9 = v6;
      v10 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v12 = v3;
    v13 = a1[2];
    sub_21D7A9604(v3, a1[1], v4);
    sub_21D7A9604(v6, v7, v8);
    sub_21D7A9648(v12, v5, v13);
    sub_21D7A9648(v6, v7, v8);
    v11 = 0;
    return v11 & 1;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if (v7 == 2)
      {
        sub_21D7A9648(v3, 2uLL, v4);
        v9 = v6;
        v10 = 2;
LABEL_10:
        sub_21D7A9648(v9, v10, v8);
        v11 = 1;
        return v11 & 1;
      }
    }

    else if (v7 >= 3)
    {
      v18[0] = v3;
      v18[1] = v5;
      v18[2] = v4;
      v17[0] = v6;
      v17[1] = v7;
      v17[2] = v8;
      v15 = v3;
      v16 = v4;
      sub_21D7A9604(v6, v7, v8);
      sub_21D7A9604(v15, v5, v16);
      sub_21D7A9604(v15, v5, v16);
      sub_21D7A9604(v6, v7, v8);
      v11 = _s15RemindersUICore23TTRUserActivityMetadataV11PhoneCallerV2eeoiySbAE_AEtFZ_0(v18, v17);
      sub_21D7A9648(v15, v5, v16);
      sub_21D7A9648(v6, v7, v8);
      sub_21D7A9648(v6, v7, v8);
      sub_21D7A9648(v15, v5, v16);
      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v11 = 1;
  sub_21D7A9648(v3, 1uLL, v4);
  sub_21D7A9648(v6, 1uLL, v8);
  return v11 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV13AssigneeStateO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v71 = a1[4];
  v72 = v3;
  v4 = a1[5];
  v73[0] = a1[6];
  *(v73 + 9) = *(a1 + 105);
  v5 = *(a1 + 1);
  v68[0] = *a1;
  v68[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v69 = a1[2];
  v70 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v76 = a2[2];
  v77 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v74 = v9;
  v75 = v12;
  *(v80 + 9) = *(a2 + 105);
  v15 = a2[5];
  v80[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v78 = a2[4];
  v79 = v17;
  v18 = a1[3];
  v81[2] = a1[2];
  v81[3] = v18;
  v19 = a1[1];
  v81[0] = *a1;
  v81[1] = v19;
  *(v82 + 9) = *(a1 + 105);
  v20 = a1[5];
  v81[4] = a1[4];
  v81[5] = v20;
  v82[3] = v10;
  v82[4] = v13;
  v82[0] = a1[6];
  v82[2] = v14;
  *(v83 + 9) = *(a2 + 105);
  v21 = a2[6];
  v82[7] = v15;
  v83[0] = v21;
  v82[5] = v16;
  v82[6] = v78;
  v84[2] = v69;
  v84[3] = v2;
  v84[0] = v8;
  v84[1] = v7;
  v22 = a1[6];
  *&v85[9] = *(a1 + 105);
  v84[5] = v4;
  *v85 = v22;
  v84[4] = v71;
  v23 = sub_21D7B9F38(v84);
  if (!v23)
  {
    nullsub_1();
    v39 = v38;
    v65 = v78;
    v66 = v79;
    v67[0] = v80[0];
    *(v67 + 9) = *(v80 + 9);
    v61 = v74;
    v62 = v75;
    v63 = v76;
    v64 = v77;
    if (!sub_21D7B9F38(&v61))
    {
      nullsub_1();
      v41 = *v39;
      v40 = (v39 + 1);
      v43 = (v42 + 1);
      v44 = *v42;
      sub_21D7A96F8(&v74, v52, v45);
      sub_21D7A96F8(v68, v52, v46);
      sub_21D1D9A84(v40, v52);
      sub_21D1D9A84(v43, v52);
      if (sub_21D1D6D84(v41, v44))
      {
        v52[3] = v40[3];
        v52[4] = v40[4];
        v52[5] = v40[5];
        v52[6] = v40[6];
        v52[0] = *v40;
        v52[1] = v40[1];
        v52[2] = v40[2];
        v47 = v43[5];
        v58 = v43[4];
        v59 = v47;
        v60 = v43[6];
        v48 = v43[1];
        v54 = *v43;
        v55 = v48;
        v49 = v43[3];
        v56 = v43[2];
        v57 = v49;
        v37 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(v52, &v54);
        sub_21D0CF7E0(v81, &qword_27CE619A8, &qword_21DC28548);
        sub_21D1D9AE0(v43);
        sub_21D1D9AE0(v40);
        return v37 & 1;
      }

      sub_21D1D9AE0(v43);
      sub_21D1D9AE0(v40);
LABEL_11:
      sub_21D0CF7E0(v81, &qword_27CE619A8, &qword_21DC28548);
      v37 = 0;
      return v37 & 1;
    }

    goto LABEL_10;
  }

  if (v23 != 1)
  {
    v65 = v78;
    v66 = v79;
    v67[0] = v80[0];
    *(v67 + 9) = *(v80 + 9);
    v61 = v74;
    v62 = v75;
    v63 = v76;
    v64 = v77;
    if (sub_21D7B9F38(&v61) == 2)
    {
      sub_21D0CF7E0(v81, &qword_27CE619A8, &qword_21DC28548);
      v37 = 1;
      return v37 & 1;
    }

    goto LABEL_10;
  }

  nullsub_1();
  v25 = v24;
  v65 = v78;
  v66 = v79;
  v67[0] = v80[0];
  *(v67 + 9) = *(v80 + 9);
  v61 = v74;
  v62 = v75;
  v63 = v76;
  v64 = v77;
  if (sub_21D7B9F38(&v61) != 1)
  {
LABEL_10:
    sub_21D7A96F8(&v74, &v61, v26);
    sub_21D7A96F8(v68, &v61, v50);
    goto LABEL_11;
  }

  nullsub_1();
  v27 = v25[5];
  v58 = v25[4];
  v59 = v27;
  v60 = v25[6];
  v28 = v25[1];
  v54 = *v25;
  v55 = v28;
  v29 = v25[3];
  v56 = v25[2];
  v57 = v29;
  v31 = v30[5];
  v53[4] = v30[4];
  v53[5] = v31;
  v53[6] = v30[6];
  v32 = v30[1];
  v53[0] = *v30;
  v53[1] = v32;
  v33 = v30[3];
  v53[2] = v30[2];
  v53[3] = v33;
  sub_21D7A96F8(&v74, v52, v33);
  sub_21D7A96F8(v68, v52, v34);
  sub_21D7A96F8(&v74, v52, v35);
  sub_21D7A96F8(v68, v52, v36);
  v37 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v54, v53);
  sub_21D0CF7E0(v81, &qword_27CE619A8, &qword_21DC28548);
  sub_21D7A9730(&v74);
  sub_21D7A9730(v68);
  return v37 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV13LocationStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!(v6 >> 6))
  {
    if (v11 < 0x40)
    {
      v15 = v3 == v7 && v2 == v8;
      if (v15 || (sub_21DBFC64C() & 1) != 0)
      {
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v28 = v9;
        sub_21D48BB60(v7, v8, v10, v9, v11);
        sub_21D48BB60(v3, v2, v5, v4, v6);
        v16 = sub_21DBFB63C();
        sub_21D48C240(v3, v2, v5, v4, v6);
        sub_21D48C240(v7, v8, v10, v28, v11);
        v17 = v11 ^ v6 ^ 1;
        if (v4 != v28)
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        return v18 & 1;
      }
    }

    goto LABEL_49;
  }

  if (v6 >> 6 == 1)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      v12 = *a1;
      if (v3 != v7 || v2 != v8)
      {
        v27 = sub_21DBFC64C();
        sub_21D48BB60(v7, v8, v10, v9, v11);
        sub_21D48BB60(v3, v2, v5, v4, v6);
        sub_21D48C240(v3, v2, v5, v4, v6);
        sub_21D48C240(v7, v8, v10, v9, v11);
        return v27 & 1;
      }

      sub_21D48BB60(v12, v2, v10, v9, v11);
      sub_21D48BB60(v3, v2, v5, v4, v6);
      sub_21D48C240(v3, v2, v5, v4, v6);
      v20 = v3;
      v23 = v2;
      v24 = v10;
      v25 = v9;
      v26 = v11;
      goto LABEL_43;
    }

LABEL_49:
    sub_21D48BB60(v7, v8, v10, v9, v11);
    sub_21D48BB60(v3, v2, v5, v4, v6);
    sub_21D48C240(v3, v2, v5, v4, v6);
    sub_21D48C240(v7, v8, v10, v9, v11);
    v18 = 0;
    return v18 & 1;
  }

  if (v5 | v2 | v3 | v4 || v6 != 128)
  {
    if (v6 == 128 && v3 == 1 && (v5 | v2 | v4) == 0)
    {
      if ((v11 & 0xC0) == 0x80 && v11 == 128 && v7 == 1 && !(v10 | v8 | v9))
      {
        v18 = 1;
        sub_21D48C240(1, 0, 0, 0, 0x80u);
        sub_21D48C240(1, 0, 0, 0, 0x80u);
        return v18 & 1;
      }

      goto LABEL_49;
    }

    if ((v11 & 0xC0) != 0x80 || v11 != 128 || v7 != 2 || v10 | v8 | v9)
    {
      goto LABEL_49;
    }

    sub_21D48C240(2, 0, 0, 0, 0x80u);
    v20 = 2;
  }

  else
  {
    v19 = (v11 & 0xC0) == 0x80 && (v10 | v8 | v7 | v9) == 0;
    if (!v19 || v11 != 128)
    {
      goto LABEL_49;
    }

    sub_21D48C240(0, 0, 0, 0, 0x80u);
    v20 = 0;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0x80;
LABEL_43:
  sub_21D48C240(v20, v23, v24, v25, v26);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV14AttachmentDataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v26[0] = *a1;
  v26[1] = v3;
  v26[2] = v5;
  v26[3] = v4;
  v25 = v6;
  v26[4] = v6;
  v27 = v7;
  v28 = v9;
  v29 = v8;
  v30 = v11;
  v31 = v10;
  v32 = v12;
  v33 = v13;
  if (v7)
  {
    if (v7 == 1)
    {
      if (v13 == 1)
      {
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        sub_21D7BB5A4(v9, v8, v11, v10, v12, 1);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 1);
        v14 = sub_21DBFB63C();
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (v13 == 2)
    {
      if (v2 == v9 && v3 == v8)
      {
        sub_21D7BB5A4(v2, v3, v11, v10, v12, 2);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 2);
        v14 = 1;
      }

      else
      {
        v14 = sub_21DBFC64C();
        sub_21D7BB5A4(v9, v8, v11, v10, v12, 2);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 2);
      }

      goto LABEL_22;
    }

LABEL_19:
    sub_21D7BB5A4(v9, v8, v11, v10, v12, v13);
    v18 = v2;
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = v25;
    v23 = v7;
LABEL_20:
    sub_21D7BB5A4(v18, v19, v20, v21, v22, v23);
    goto LABEL_21;
  }

  if (v13)
  {
    goto LABEL_19;
  }

  if (v2)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
      sub_21D7BB5A4(v9, v8, v11, v10, v12, 0);
      sub_21D7BB5A4(v2, v3, v5, v4, v25, 0);
      v15 = v9;
      v16 = v2;
      v17 = sub_21DBFB63C();

      if ((v17 & 1) == 0)
      {
LABEL_21:
        v14 = 0;
        goto LABEL_22;
      }

      if (v5)
      {
        goto LABEL_10;
      }

LABEL_29:
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    sub_21D7BB5A4(0, v8, v11, v10, v12, 0);
    v18 = v2;
LABEL_27:
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = v25;
    v23 = 0;
    goto LABEL_20;
  }

  if (v9)
  {
    sub_21D7BB5A4(v9, v8, v11, v10, v12, 0);
    v18 = 0;
    goto LABEL_27;
  }

  sub_21D7BB5A4(0, v8, v11, v10, v12, 0);
  sub_21D7BB5A4(0, v3, v5, v4, v25, 0);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_10:
  if (!v11 || (v3 != v8 || v5 != v11) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  if (v4 == v10 && v25 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DBFC64C();
  }

LABEL_22:
  sub_21D0CF7E0(v26, &qword_27CE61998, &unk_21DC28528);
  return v14 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV20AssigneeOptionsStateO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v37 = a1[4];
  v38 = v3;
  v4 = a1[5];
  v39 = a1[6];
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v41[2] = a2[2];
  v41[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v41[0] = v9;
  v41[1] = v12;
  v15 = a2[5];
  v44 = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v42 = a2[4];
  v43 = v17;
  v18 = a1[3];
  v46[2] = a1[2];
  v46[3] = v18;
  v19 = a1[1];
  v46[0] = *a1;
  v46[1] = v19;
  v20 = a1[6];
  v21 = a1[4];
  v46[5] = a1[5];
  v46[6] = v20;
  v46[4] = v21;
  v51 = v16;
  v50 = v13;
  v49 = v10;
  v48 = v14;
  v54 = a2[6];
  v53 = v15;
  v52 = v42;
  *&v56[32] = v35;
  *&v56[48] = v2;
  v40 = *(a1 + 14);
  v45 = *(a2 + 14);
  v22 = *(a2 + 14);
  v47 = *(a1 + 14);
  v55 = v22;
  *v56 = v8;
  *&v56[16] = v7;
  v23 = a1[6];
  *&v56[112] = *(a1 + 14);
  *&v56[80] = v4;
  *&v56[96] = v23;
  *&v56[64] = v37;
  v24 = v8;
  if (!v8)
  {
    if (!*&v41[0])
    {
      sub_21D0CF7E0(v46, &qword_27CE619B0, &qword_21DC28550);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_6;
  }

  v25 = a2[5];
  *&v33[64] = a2[4];
  *&v33[80] = v25;
  *&v33[96] = a2[6];
  *&v33[112] = *(a2 + 14);
  v26 = a2[1];
  *v33 = *a2;
  *&v33[16] = v26;
  v27 = a2[3];
  *&v33[32] = a2[2];
  *&v33[48] = v27;
  v28 = *v33;
  if (!*v33)
  {
LABEL_6:
    sub_21D7A9690(v41, v33);
    sub_21D7A9690(v34, v33);
LABEL_8:
    sub_21D0CF7E0(v46, &qword_27CE619B0, &qword_21DC28550);
    v29 = 0;
    return v29 & 1;
  }

  sub_21D7A9690(v41, v32);
  sub_21D7A9690(v34, v32);
  sub_21D1D9A84(&v56[8], v32);
  sub_21D1D9A84(&v33[8], v32);
  if ((sub_21D1D6D84(v24, v28) & 1) == 0)
  {
    sub_21D1D9AE0(&v33[8]);
    sub_21D1D9AE0(&v56[8]);
    goto LABEL_8;
  }

  v32[4] = *&v56[72];
  v32[5] = *&v56[88];
  v32[6] = *&v56[104];
  v32[0] = *&v56[8];
  v32[1] = *&v56[24];
  v32[2] = *&v56[40];
  v32[3] = *&v56[56];
  v31[4] = *&v33[72];
  v31[5] = *&v33[88];
  v31[6] = *&v33[104];
  v31[0] = *&v33[8];
  v31[1] = *&v33[24];
  v31[2] = *&v33[40];
  v31[3] = *&v33[56];
  v29 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(v32, v31);
  sub_21D0CF7E0(v46, &qword_27CE619B0, &qword_21DC28550);
  sub_21D1D9AE0(&v33[8]);
  sub_21D1D9AE0(&v56[8]);
  return v29 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v37 = a1[4];
  v38 = v3;
  v4 = a1[5];
  v39 = a1[6];
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = a2[1];
  v40[0] = *a2;
  v40[1] = v9;
  v10 = a2[5];
  v45 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v43 = a2[4];
  v44 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v41 = a2[2];
  v42 = v13;
  v31 = v37;
  v32 = v4;
  v33 = a1[6];
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v2;
  v24 = v43;
  v25 = v10;
  v26 = a2[6];
  v16 = *(a1 + 112);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v41;
  v23 = v11;
  sub_21D1D9A84(v34, v47);
  sub_21D1D9A84(v40, v47);
  v18 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v27, &v20);
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_21D1D9AE0(v46);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[2] = v29;
  v47[3] = v30;
  sub_21D1D9AE0(v47);
  return v18 & ~(v16 ^ v17) & 1;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV23LocationQuickPicksStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *(a1 + 8);
      v4 = *(a2 + 8);
      sub_21DBF8E0C();
      v5 = sub_21DBF8E0C();
      sub_21D1D5448(v5, v2);
      if (v6)
      {
        if (v3 == 6)
        {

          return v4 == 6;
        }

        if (v4 != 6)
        {
          v8 = sub_21D25BD94(v3, v4);

          return (v8 & 1) != 0;
        }
      }
    }
  }

  else if (!v2)
  {
    swift_bridgeObjectRelease_n();
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO6OptionO2eeoiySbAG_AGtFZ_0(void *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      v33[0] = *a1;
      v33[1] = v2;
      v33[2] = v4;
      v33[3] = v5;
      v33[4] = v6;
      v32[0] = v8;
      v32[1] = v9;
      v32[2] = v10;
      v32[3] = v11;
      v32[4] = v12;
      v16 = v4;
      v17 = v12;
      v18 = v12;
      v19 = v10;
      v20 = v8;
      v28 = v8;
      sub_21D7A9844(v8, v9, v10, v11, v18, 0);
      sub_21D7A9844(v3, v2, v16, v5, v6, 0);
      v21 = v20;
      v22 = v19;
      sub_21D7A9844(v21, v9, v19, v11, v17, 0);
      sub_21D7A9844(v3, v2, v16, v5, v6, 0);
      v23 = _s15RemindersUICore14TTRSectionLiteV2eeoiySbAC_ACtFZ_0(v33, v32);
      sub_21D7A98B4(v3, v2, v16, v5, v6, 0);
      sub_21D7A98B4(v28, v9, v22, v11, v17, 0);
      sub_21D7A98B4(v28, v9, v22, v11, v17, 0);
      sub_21D7A98B4(v3, v2, v16, v5, v6, 0);
      return v23 & 1;
    }

    goto LABEL_10;
  }

  if (v7 != 1)
  {
    if (v13 == 2 && !(v9 | v8 | v10 | v11 | v12))
    {
      sub_21D7A98B4(*a1, v2, v4, v5, v6, 2);
      sub_21D7A98B4(0, 0, 0, 0, v12, 2);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_10;
  }

  if (v13 != 1)
  {
LABEL_10:
    v29 = a2[2];
    v30 = a2[3];
    v24 = *a2;
    sub_21D7A9844(*a2, a2[1], v10, v30, v12, v13);
    sub_21D7A9844(v3, v2, v4, v5, v6, v7);
    sub_21D7A98B4(v3, v2, v4, v5, v6, v7);
    sub_21D7A98B4(v24, v9, v29, v30, v12, v13);
    v23 = 0;
    return v23 & 1;
  }

  v14 = a1[2];
  if (__PAIR128__(v2, v3) == __PAIR128__(v9, v8))
  {
    v15 = a2[2];
    sub_21D7A9844(*a1, v2, v10, v11, v12, 1);
    sub_21D7A9844(v3, v2, v14, v5, v6, 1);
    sub_21D7A98B4(v3, v2, v14, v5, v6, 1);
    sub_21D7A98B4(v3, v2, v15, v11, v12, 1);
LABEL_13:
    v23 = v15 ^ v14 ^ 1;
    return v23 & 1;
  }

  v26 = a2[4];
  v15 = a2[2];
  v27 = *a2;
  v31 = sub_21DBFC64C();
  sub_21D7A9844(v27, v9, v15, v11, v26, 1);
  sub_21D7A9844(v3, v2, v14, v5, v6, 1);
  sub_21D7A98B4(v3, v2, v14, v5, v6, 1);
  sub_21D7A98B4(v27, v9, v15, v11, v26, 1);
  v23 = 0;
  if (v31)
  {
    goto LABEL_13;
  }

  return v23 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 == 255)
  {
    if (v13 == 255)
    {
      sub_21D7A98A0(*a1, v3, v4, v5, v6, 255);
      sub_21D7A98A0(v9, v8, v11, v10, v12, 255);
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_5;
  }

  if (v13 == 255)
  {
LABEL_5:
    v25 = a1[1];
    v27 = a1[3];
    v19 = *(a2 + 8);
    v20 = a1[2];
    v21 = *(a2 + 24);
    v22 = a1[4];
    sub_21D7A9830(*a1, v25, v4, v27, v6, v7);
    sub_21D7A9830(v9, v19, v11, v21, v12, v13);
    sub_21D7A98A0(v2, v25, v20, v27, v22, v7);
    sub_21D7A98A0(v9, v19, v11, v21, v12, v13);
    v18 = 0;
    return v18 & 1;
  }

  v33[0] = *a1;
  v33[1] = v3;
  v33[2] = v4;
  v33[3] = v5;
  v33[4] = v6;
  v34 = v7;
  v31[0] = v9;
  v31[1] = v8;
  v31[2] = v11;
  v31[3] = v10;
  v31[4] = v12;
  v32 = v13;
  v14 = v9;
  v26 = v9;
  v28 = v11;
  v15 = v4;
  v29 = v4;
  v30 = v6;
  v16 = v11;
  v17 = v6;
  sub_21D7A9830(v14, v8, v16, v10, v12, v13);
  sub_21D7A9830(v2, v3, v15, v5, v17, v7);
  sub_21D7A9830(v2, v3, v15, v5, v17, v7);
  sub_21D7A9830(v26, v8, v28, v10, v12, v13);
  v24 = v12;
  v18 = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO6OptionO2eeoiySbAG_AGtFZ_0(v33, v31);
  sub_21D7A98A0(v2, v3, v29, v5, v30, v7);
  sub_21D7A98A0(v26, v8, v28, v10, v24, v13);
  sub_21D7A98A0(v26, v8, v28, v10, v24, v13);
  sub_21D7A98A0(v2, v3, v29, v5, v30, v7);
  return v18 & 1;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV7AppLinkV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v25 = a1[5];
  v26 = a1[6];
  v27 = a1[8];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v20 = a2[7];
  v23 = a2[8];
  v24 = a1[7];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v6 || v3 != v8) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v9 || (v4 != v7 || v5 != v9) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (v24 != 1)
  {
    v11 = v25;
    v10 = v26;
    v32 = v25;
    v33 = v26;
    v12 = v27;
    v34 = v24;
    v35 = v27;
    v14 = v20;
    v13 = v21;
    v15 = v22;
    v17 = v23;
    if (v20 != 1)
    {
      LOBYTE(v28) = v21 & 1;
      v29 = v22;
      v30 = v20;
      v31 = v23;
      sub_21D3A1244(v25, v26, v24, v27);
      sub_21D3A1244(v21, v22, v20, v23);
      sub_21D3A1244(v25, v26, v24, v27);
      v19 = _s15RemindersUICore23TTRUserActivityMetadataV16PhoneCallContextV2eeoiySbAE_AEtFZ_0(&v32, &v28);
      sub_21D1576C8(v29, v30, v31);
      sub_21D1576C8(v33, v34, v35);
      sub_21D3A22A8(v25, v26, v24, v27);
      return v19;
    }

    sub_21D3A1244(v25, v26, v24, v27);
    sub_21D3A1244(v21, v22, 1, v23);
    sub_21D3A1244(v25, v26, v24, v27);
    sub_21D1576C8(v26, v24, v27);
    goto LABEL_22;
  }

  v11 = v25;
  v10 = v26;
  v12 = v27;
  sub_21D3A1244(v25, v26, 1, v27);
  v14 = v20;
  v13 = v21;
  v15 = v22;
  if (v20 != 1)
  {
    v17 = v23;
    sub_21D3A1244(v21, v22, v20, v23);
LABEL_22:
    sub_21D3A22A8(v11, v10, v24, v12);
    sub_21D3A22A8(v13, v15, v14, v17);
    return 0;
  }

  v16 = 1;
  sub_21D3A1244(v21, v22, 1, v23);
  sub_21D3A22A8(v25, v26, 1, v27);
  return v16;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV8URLStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619A0, &qword_21DC28538);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v19 = *(v18 + 56);
  sub_21D799E6C(a1, &v30 - v16, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D799E6C(a2, &v17[v19], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v17, 1, v20) == 1)
  {
    if (v21(&v17[v19], 1, v20) == 1)
    {
LABEL_3:
      sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.URLState);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D799E6C(v17, v14, type metadata accessor for TTRReminderDetailViewModel.URLState);
  if (v21(&v17[v19], 1, v20) != 1)
  {
    v23 = *(v9 + 48);
    sub_21D0D523C(v14, v11, &qword_27CE5EA20, &qword_21DC0D4A0);
    sub_21D0D523C(&v17[v19], &v11[v23], &qword_27CE5EA20, &qword_21DC0D4A0);
    v24 = v31;
    v25 = *(v31 + 48);
    if (v25(v11, 1, v4) == 1)
    {
      if (v25(&v11[v23], 1, v4) == 1)
      {
        sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
        goto LABEL_3;
      }
    }

    else
    {
      sub_21D0D3954(v11, v8, &qword_27CE5EA20, &qword_21DC0D4A0);
      if (v25(&v11[v23], 1, v4) != 1)
      {
        v26 = &v11[v23];
        v27 = v30;
        (*(v24 + 32))(v30, v26, v4);
        sub_21D7BC5F0(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v28 = sub_21DBFA10C();
        v29 = *(v24 + 8);
        v29(v27, v4);
        v29(v8, v4);
        sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v24 + 8))(v8, v4);
    }

    sub_21D0CF7E0(v11, &unk_27CE5F2A0, &unk_21DC09120);
LABEL_13:
    sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.URLState);
    return 0;
  }

  sub_21D0CF7E0(v14, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_6:
  sub_21D0CF7E0(v17, &qword_27CE619A0, &qword_21DC28538);
  return 0;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV13RecurrenceEndV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 || (v14 = sub_21DBFC64C(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0) + 20);
    v17 = *(v11 + 48);
    sub_21D0D3954(a1 + v16, v13, &qword_27CE58D68, &unk_21DC0C060);
    sub_21D0D3954(a2 + v16, &v13[v17], &qword_27CE58D68, &unk_21DC0C060);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE58D68, &unk_21DC0C060);
        return 1;
      }
    }

    else
    {
      sub_21D0D3954(v13, v10, &qword_27CE58D68, &unk_21DC0C060);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_21D7BC5F0(&qword_280D171A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v20 = sub_21DBFA10C();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_21D0CF7E0(v13, &qword_27CE58D68, &unk_21DC0C060);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21D0CF7E0(v13, &qword_27CE5BE10, &qword_21DC28540);
    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV12DueDateStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  MEMORY[0x28223BE20](v4);
  v77 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619B8, &qword_21DC28558);
  MEMORY[0x28223BE20](v79);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v82 = &v59 - v12;
  MEMORY[0x28223BE20](v13);
  v83 = &v59 - v14;
  v15 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619C0, &unk_21DC28560);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - v22;
  v25 = &v59 + *(v24 + 56) - v22;
  sub_21D799E6C(a1, &v59 - v22, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799E6C(a2, v25, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v27 = *(*(v26 - 1) + 48);
  if (v27(v23, 1, v26) == 1)
  {
    if (v27(v25, 1, v26) == 1)
    {
      sub_21D799ED4(v23, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      return 1;
    }

    goto LABEL_6;
  }

  v74 = v17;
  v69 = v8;
  v76 = v23;
  sub_21D799E6C(v23, v20, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v29 = v26[12];
  v73 = *&v20[v29];
  v72 = v20[v29 + 8];
  v30 = *&v20[v29 + 24];
  v71 = *&v20[v29 + 16];
  v31 = *&v20[v29 + 40];
  v70 = *&v20[v29 + 32];
  v75 = v26[16];
  v32 = v26[20];
  v68 = v20[v32];
  v33 = v26[24];
  v67 = v20[v33];
  if (v27(v25, 1, v26) != 1)
  {
    v66 = v31;
    v34 = v30;
    v65 = *&v25[v29];
    v64 = v25[v29 + 8];
    v35 = *&v25[v29 + 24];
    v63 = *&v25[v29 + 16];
    v36 = *&v25[v29 + 32];
    v37 = *&v25[v29 + 40];
    v62 = v36;
    v61 = v25[v32];
    v60 = v25[v33];
    v38 = v74;
    sub_21D7A959C(v25, v74, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v39 = v75;
    v40 = v83;
    sub_21D0D523C(&v20[v75], v83, &unk_27CE628E0, &unk_21DC17980);
    v41 = &v25[v39];
    v42 = v82;
    sub_21D0D523C(v41, v82, &unk_27CE628E0, &unk_21DC17980);
    v43 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V2eeoiySbAE_AEtFZ_0(v20, v38);
    sub_21D799ED4(v20, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    if (!v43)
    {

      sub_21D0CF7E0(v42, &unk_27CE628E0, &unk_21DC17980);
      sub_21D0CF7E0(v40, &unk_27CE628E0, &unk_21DC17980);
      sub_21D799ED4(v38, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D799ED4(v76, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      return 0;
    }

    v90 = v73;
    v91 = v72;
    v92 = v71;
    v93 = v34;
    v94 = v70;
    v95 = v66;
    v84 = v65;
    v85 = v64;
    v86 = v63;
    v87 = v35;
    v88 = v62;
    v89 = v37;
    v44 = _s15RemindersUICore26TTRReminderDetailViewModelV10RecurrenceV2eeoiySbAE_AEtFZ_0(&v90, &v84);

    v45 = v76;
    if (v44)
    {
      v46 = v38;
      v47 = *(v79 + 48);
      v48 = v83;
      v49 = v69;
      sub_21D0D3954(v83, v69, &unk_27CE628E0, &unk_21DC17980);
      sub_21D0D3954(v42, v49 + v47, &unk_27CE628E0, &unk_21DC17980);
      v50 = v80;
      v51 = v42;
      v52 = v81 + 48;
      v53 = *(v81 + 48);
      if (v53(v49, 1, v80) == 1)
      {
        v81 = v52;
        sub_21D0CF7E0(v51, &unk_27CE628E0, &unk_21DC17980);
        sub_21D0CF7E0(v48, &unk_27CE628E0, &unk_21DC17980);
        sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        if (v53(v49 + v47, 1, v50) == 1)
        {
          sub_21D0CF7E0(v49, &unk_27CE628E0, &unk_21DC17980);
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v54 = v78;
      sub_21D0D3954(v49, v78, &unk_27CE628E0, &unk_21DC17980);
      if (v53(v49 + v47, 1, v50) == 1)
      {
        sub_21D0CF7E0(v82, &unk_27CE628E0, &unk_21DC17980);
        sub_21D0CF7E0(v83, &unk_27CE628E0, &unk_21DC17980);
        sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D799ED4(v54, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
LABEL_18:
        sub_21D0CF7E0(v49, &qword_27CE619B8, &qword_21DC28558);
        goto LABEL_21;
      }

      v55 = v49 + v47;
      v56 = v77;
      sub_21D7A959C(v55, v77, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v57 = _s15RemindersUICore26TTRReminderDetailViewModelV13RecurrenceEndV2eeoiySbAE_AEtFZ_0(v54, v56);
      sub_21D799ED4(v56, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      sub_21D0CF7E0(v82, &unk_27CE628E0, &unk_21DC17980);
      sub_21D0CF7E0(v83, &unk_27CE628E0, &unk_21DC17980);
      sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D799ED4(v54, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      sub_21D0CF7E0(v49, &unk_27CE628E0, &unk_21DC17980);
      if (v57)
      {
LABEL_20:
        if (v68 == v61)
        {
          v58 = v67 ^ v60;
          sub_21D799ED4(v45, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          return v58 ^ 1u;
        }
      }
    }

    else
    {
      sub_21D0CF7E0(v42, &unk_27CE628E0, &unk_21DC17980);
      sub_21D0CF7E0(v83, &unk_27CE628E0, &unk_21DC17980);
      sub_21D799ED4(v38, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }

LABEL_21:
    sub_21D799ED4(v45, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    return 0;
  }

  sub_21D0CF7E0(&v20[v75], &unk_27CE628E0, &unk_21DC17980);

  sub_21D799ED4(v20, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  v23 = v76;
LABEL_6:
  sub_21D0CF7E0(v23, &qword_27CE619C0, &unk_21DC28560);
  return 0;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV15identitiesEqualySbAE_AEtFZ_0(id *a1, void **a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  v3 = *a1;
  v4 = v3;
  if (v2)
  {
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v5 = v2;
    v6 = sub_21DBFB63C();

    return v6 & 1;
  }

  else
  {

    return 0;
  }
}

double sub_21D7A9558(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t sub_21D7A959C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_21D7A9604(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v4 = a3;

    sub_21DBF8E0C();
  }

  return result;
}

void sub_21D7A9648(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
  }
}

uint64_t sub_21D7A9760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_21D7A9830(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21D7A9844(result, a2, a3, a4, a5, a6);
  }

  return v6;
}

double sub_21D7A9844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    sub_21DBF8E0C();
    v8 = a1;
  }

  sub_21DBF8E0C();
  return result;
}

double sub_21D7A98A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21D7A98B4(result, a2, a3, a4, a5, a6);
  }

  return v6;
}

double sub_21D7A98B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_21D7A9914()
{
  result = qword_27CE61950;
  if (!qword_27CE61950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderDetailViewModel.DatePickerType, &type metadata for TTRReminderDetailViewModel.DatePickerType, v0, v1);
    atomic_store(result, &qword_27CE61950);
  }

  return result;
}

unint64_t sub_21D7A996C()
{
  result = qword_27CE61958;
  if (!qword_27CE61958)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61960, &qword_21DC27B18);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE61958);
  }

  return result;
}

unint64_t sub_21D7A99D4()
{
  result = qword_27CE61968;
  if (!qword_27CE61968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderDetailViewModel.RecurrenceEndOption, &type metadata for TTRReminderDetailViewModel.RecurrenceEndOption, v0, v1);
    atomic_store(result, &qword_27CE61968);
  }

  return result;
}

unint64_t sub_21D7A9A2C()
{
  result = qword_27CE61970;
  if (!qword_27CE61970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderDetailViewModel.AttachmentData, &type metadata for TTRReminderDetailViewModel.AttachmentData, v0, v1);
    atomic_store(result, &qword_27CE61970);
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = &v11[(v5 + 16) & ~v5];

    return v12;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v325 = v3;
  v326 = v6;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(a1, v3, v52);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v53 = *v3;
        *a1 = *v3;
        v54 = v53;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_92:
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v59 = v58[5];
      v60 = a1 + v59;
      v61 = v3 + v59;
      v62 = *(v3 + v59 + 8);
      if (v62)
      {
        *v60 = *v61;
        *(v60 + 1) = v62;
        v63 = *(v61 + 2);
        v64 = *(v61 + 3);
        v65 = *(v61 + 4);
        v66 = *(v61 + 5);
        v67 = *(v61 + 6);
        v316 = *(v61 + 7);
        v68 = v61[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v63, v64, v65, v66, v67, v316, v68);
        *(v60 + 2) = v63;
        *(v60 + 3) = v64;
        *(v60 + 4) = v65;
        *(v60 + 5) = v66;
        *(v60 + 6) = v67;
        *(v60 + 7) = v316;
        v60[64] = v68;
        *(v60 + 65) = *(v61 + 65);
        v69 = v61[120];
        if (v69 == 255)
        {
          *(v60 + 72) = *(v61 + 72);
          *(v60 + 88) = *(v61 + 88);
          *(v60 + 104) = *(v61 + 104);
          v60[120] = v61[120];
        }

        else
        {
          v70 = *(v61 + 9);
          v317 = *(v61 + 10);
          v71 = *(v61 + 11);
          v72 = *(v61 + 12);
          v73 = *(v61 + 13);
          v74 = *(v61 + 14);
          v75 = v69 & 1;
          sub_21D0FB960(v70, v317, v71, v72, v73, v74, v69 & 1);
          *(v60 + 9) = v70;
          *(v60 + 10) = v317;
          *(v60 + 11) = v71;
          *(v60 + 12) = v72;
          *(v60 + 13) = v73;
          *(v60 + 14) = v74;
          v60[120] = v75;
        }

        v3 = v325;
        v6 = v326;
        v60[121] = v61[121];
        goto LABEL_98;
      }

LABEL_95:
      v76 = *(v61 + 5);
      *(v60 + 4) = *(v61 + 4);
      *(v60 + 5) = v76;
      *(v60 + 6) = *(v61 + 6);
      *(v60 + 106) = *(v61 + 106);
      v77 = *(v61 + 1);
      *v60 = *v61;
      *(v60 + 1) = v77;
      v78 = *(v61 + 3);
      *(v60 + 2) = *(v61 + 2);
      *(v60 + 3) = v78;
LABEL_98:
      *(a1 + v58[6]) = *(v3 + v58[6]);
      *(a1 + v58[7]) = *(v3 + v58[7]);
      *(a1 + v58[8]) = *(v3 + v58[8]);
      *(a1 + v58[9]) = *(v3 + v58[9]);
      *(a1 + v58[10]) = *(v3 + v58[10]);
      v79 = v58[11];
      v80 = *(v3 + v79);
      *(a1 + v79) = v80;
      v81 = v80;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v55 = sub_21DBF563C();
        (*(*(v55 - 8) + 16))(a1, v3, v55);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v56 = *v3;
      *a1 = *v3;
      v57 = v56;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v23 - 8) + 64));
LABEL_100:
    v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v82 = v58[5];
    v60 = a1 + v82;
    v61 = v3 + v82;
    v83 = *(v3 + v82 + 8);
    if (v83)
    {
      *v60 = *v61;
      *(v60 + 1) = v83;
      v84 = *(v61 + 2);
      v85 = *(v61 + 3);
      v86 = *(v61 + 4);
      v87 = *(v61 + 5);
      v88 = *(v61 + 6);
      v89 = *(v61 + 7);
      v318 = v61[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v318);
      *(v60 + 2) = v84;
      *(v60 + 3) = v85;
      *(v60 + 4) = v86;
      *(v60 + 5) = v87;
      *(v60 + 6) = v88;
      *(v60 + 7) = v89;
      v60[64] = v318;
      *(v60 + 65) = *(v61 + 65);
      v90 = v61[120];
      if (v90 == 255)
      {
        *(v60 + 72) = *(v61 + 72);
        *(v60 + 88) = *(v61 + 88);
        *(v60 + 104) = *(v61 + 104);
        v60[120] = v61[120];
      }

      else
      {
        v91 = *(v61 + 9);
        v319 = *(v61 + 10);
        v92 = *(v61 + 11);
        v93 = *(v61 + 12);
        v94 = *(v61 + 13);
        v95 = *(v61 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v319, v92, v93, v94, v95, v90 & 1);
        *(v60 + 9) = v91;
        *(v60 + 10) = v319;
        *(v60 + 11) = v92;
        *(v60 + 12) = v93;
        *(v60 + 13) = v94;
        *(v60 + 14) = v95;
        v60[120] = v96;
      }

      v3 = v325;
      v6 = v326;
      v60[121] = v61[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v21 = v3[2];
      a1[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v3;
    *a1 = *v3;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v3 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v16, v3 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 4)
    {
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v97 = *(v3 + v16);
      *(a1 + v16) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v49 <= 2)
    {
      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v16, v3 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v16, v3 + v16, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v3, 1, v29))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, v3, *(*(v31 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v40 = *(v29 + 20);
        v41 = sub_21DBF6C1C();
        v42 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v42(a1 + v40, v3 + v40, v41);
        (*(v30 + 56))(a1, 0, 1, v29);
      }

      v43 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v44 = (a1 + v43);
      v45 = (v3 + v43);
      v46 = v45[1];
      if (v46)
      {
        *v44 = *v45;
        v44[1] = v46;
        v47 = v45[2];
        v44[2] = v47;
        sub_21DBF8E0C();
        v48 = v47;
      }

      else
      {
        *v44 = *v45;
        v44[2] = v45[2];
      }

      goto LABEL_129;
    case 7:
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v3, 1, v35))
      {
        v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v37 - 8) + 64));
      }

      else
      {
        v50 = sub_21DBF563C();
        (*(*(v50 - 8) + 16))(a1, v3, v50);
        *(a1 + *(v35 + 20)) = *(v3 + *(v35 + 20));
        (*(v36 + 56))(a1, 0, 1, v35);
      }

      v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v51 + 20)) = *(v3 + *(v51 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
  v100 = v6[6];
  *(a1 + v6[5]) = *(v3 + v6[5]);
  v101 = (a1 + v100);
  v102 = (v3 + v100);
  v104 = *v102;
  v103 = v102[1];
  v105 = v6[7];
  v106 = v6[8];
  v107 = *(v3 + v105);
  *v101 = v104;
  v101[1] = v103;
  *(a1 + v105) = v107;
  v108 = a1 + v106;
  v109 = v3 + v106;
  v110 = *(v3 + v106);
  v111 = *(v3 + v106 + 8);
  v112 = *(v3 + v106 + 16);
  v113 = *(v3 + v106 + 24);
  v114 = *(v3 + v106 + 32);
  v115 = *(v3 + v106 + 40);
  v116 = v109[48];
  sub_21DBF8E0C();
  v117 = v107;
  sub_21D0FB960(v110, v111, v112, v113, v114, v115, v116);
  *v108 = v110;
  *(v108 + 1) = v111;
  *(v108 + 2) = v112;
  *(v108 + 3) = v113;
  *(v108 + 4) = v114;
  *(v108 + 5) = v115;
  v108[48] = v116;
  v119 = v325;
  v118 = v326;
  v120 = v326[9];
  v121 = a1 + v120;
  v122 = v325 + v120;
  v123 = *(v325 + v120 + 8);
  if (v123 == 1)
  {
    v124 = *(v122 + 3);
    *(v121 + 2) = *(v122 + 2);
    *(v121 + 3) = v124;
    *(v121 + 4) = *(v122 + 4);
    *(v121 + 73) = *(v122 + 73);
    v125 = *(v122 + 1);
    *v121 = *v122;
    *(v121 + 1) = v125;
  }

  else
  {
    *v121 = *v122;
    *(v121 + 1) = v123;
    v126 = *(v122 + 2);
    v127 = *(v122 + 3);
    v128 = *(v122 + 4);
    v129 = *(v122 + 5);
    v130 = *(v122 + 6);
    v131 = *(v122 + 7);
    v132 = v122[64];
    sub_21DBF8E0C();
    sub_21D0FB960(v126, v127, v128, v129, v130, v131, v132);
    *(v121 + 2) = v126;
    *(v121 + 3) = v127;
    *(v121 + 4) = v128;
    *(v121 + 5) = v129;
    *(v121 + 6) = v130;
    *(v121 + 7) = v131;
    v121[64] = v132;
    v119 = v325;
    v118 = v326;
    v133 = *(v122 + 9);
    v134 = *(v122 + 10);
    LOBYTE(v128) = v122[88];
    sub_21D0FB9BC(v133, v134, v128);
    *(v121 + 9) = v133;
    *(v121 + 10) = v134;
    v121[88] = v128;
  }

  v135 = v118[11];
  *(a1 + v118[10]) = *(v119 + v118[10]);
  *(a1 + v135) = *(v119 + v135);
  v136 = v118[12];
  v137 = v118[13];
  v138 = *(v119 + v136);
  *(a1 + v136) = v138;
  v139 = (a1 + v137);
  v140 = (v119 + v137);
  v141 = *(v119 + v137 + 8);
  v142 = v138;
  if (v141)
  {
    *v139 = *v140;
    v139[1] = v141;
    v143 = v140[3];
    v139[2] = v140[2];
    v139[3] = v143;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v144 = *(v140 + 1);
    *v139 = *v140;
    *(v139 + 1) = v144;
  }

  v145 = v118[15];
  *(a1 + v118[14]) = *(v119 + v118[14]);
  *(a1 + v145) = *(v119 + v145);
  v146 = v118[17];
  *(a1 + v118[16]) = *(v119 + v118[16]);
  *(a1 + v146) = *(v119 + v146);
  v147 = v118[18];
  v148 = v118[19];
  v149 = *(v119 + v147);
  *(a1 + v147) = v149;
  v150 = (a1 + v148);
  v151 = (v119 + v148);
  v152 = *(v119 + v148 + 8);
  v153 = v149;
  if (v152)
  {
    *v150 = *v151;
    v150[1] = v152;
    v154 = v151[3];
    v150[2] = v151[2];
    v150[3] = v154;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v155 = *(v151 + 1);
    *v150 = *v151;
    *(v150 + 1) = v155;
  }

  v156 = v118[20];
  v157 = a1 + v156;
  v158 = v119 + v156;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v160 = *(v159 - 1);
  v324 = a1;
  if ((*(v160 + 48))(v158, 1, v159))
  {
    v161 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v157, v158, *(*(v161 - 8) + 64));
  }

  else
  {
    v320 = v160;
    v162 = sub_21DBF563C();
    v312 = *(v162 - 8);
    v314 = v162;
    v310 = *(v312 + 16);
    v310(v157, v158);
    v163 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v157[v163[5]] = v158[v163[5]];
    v164 = v163[6];
    v165 = sub_21DBF509C();
    (*(*(v165 - 8) + 16))(&v157[v164], &v158[v164], v165);
    v157[v163[7]] = v158[v163[7]];
    v166 = v163[8];
    v167 = &v157[v166];
    v168 = &v158[v166];
    v167[16] = v168[16];
    *v167 = *v168;
    v157[v163[9]] = v158[v163[9]];
    v157[v163[10]] = v158[v163[10]];
    v157[v163[11]] = v158[v163[11]];
    v169 = v163[12];
    v170 = &v157[v169];
    v171 = &v158[v169];
    v172 = *(v171 + 1);
    *v170 = *v171;
    *(v170 + 1) = v172;
    v173 = v159[12];
    v174 = &v157[v173];
    v175 = &v158[v173];
    *v174 = *v175;
    v174[8] = v175[8];
    v176 = *(v175 + 3);
    *(v174 + 2) = *(v175 + 2);
    *(v174 + 3) = v176;
    v177 = *(v175 + 5);
    *(v174 + 4) = *(v175 + 4);
    *(v174 + 5) = v177;
    v178 = v159[16];
    __dst = &v157[v178];
    v179 = &v158[v178];
    v180 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v181 = *(v180 - 8);
    v182 = *(v181 + 48);
    v183 = v180;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v182(v179, 1, v183))
    {
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v179, *(*(v184 - 8) + 64));
      v119 = v325;
      v118 = v326;
    }

    else
    {
      v185 = *(v179 + 1);
      *__dst = *v179;
      *(__dst + 1) = v185;
      v307 = v183;
      v186 = *(v183 + 20);
      v187 = *(v312 + 48);
      sub_21DBF8E0C();
      if (v187(&v179[v186], 1, v314))
      {
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&__dst[v186], &v179[v186], *(*(v188 - 8) + 64));
      }

      else
      {
        (v310)(&__dst[v186], &v179[v186], v314);
        (*(v312 + 56))(&__dst[v186], 0, 1, v314);
      }

      v118 = v326;
      (*(v181 + 56))(__dst, 0, 1, v307);
      v119 = v325;
    }

    v157[v159[20]] = v158[v159[20]];
    v157[v159[24]] = v158[v159[24]];
    (*(v320 + 56))(v157, 0, 1, v159);
    a1 = v324;
  }

  v189 = v118[22];
  *(a1 + v118[21]) = *(v119 + v118[21]);
  *(a1 + v189) = *(v119 + v189);
  v190 = v118[23];
  v191 = a1 + v190;
  v192 = v119 + v190;
  v193 = *v192;
  v194 = *(v192 + 8);
  v195 = *(v192 + 16);
  v196 = *(v192 + 24);
  v197 = *(v192 + 32);
  sub_21D48BB60(*v192, v194, v195, v196, v197);
  *v191 = v193;
  *(v191 + 1) = v194;
  *(v191 + 2) = v195;
  *(v191 + 3) = v196;
  v191[32] = v197;
  v198 = v326;
  v199 = v326[24];
  v200 = v326[25];
  v201 = a1 + v199;
  v202 = v119 + v199;
  *v201 = *v202;
  v201[8] = *(v202 + 8);
  v203 = (a1 + v200);
  v204 = (v119 + v200);
  v205 = *(v119 + v200 + 8);
  sub_21DBF8E0C();
  if (v205 >= 3)
  {
    *v203 = *v204;
    v203[1] = v205;
    v206 = v204[2];
    v203[2] = v206;
    sub_21DBF8E0C();
    v207 = v206;
  }

  else
  {
    *v203 = *v204;
    v203[2] = v204[2];
  }

  v208 = v326[26];
  v209 = a1 + v208;
  v210 = v119 + v208;
  v211 = *(v119 + v208);
  if (v211)
  {
    *v209 = v211;
    v212 = *(v210 + 8);
    sub_21DBF8E0C();
    if (v212)
    {
      v214 = *(v210 + 16);
      v213 = *(v210 + 24);
      *(v209 + 1) = v212;
      *(v209 + 2) = v214;
      v216 = *(v210 + 32);
      v215 = *(v210 + 40);
      *(v209 + 3) = v213;
      *(v209 + 4) = v216;
      v218 = *(v210 + 48);
      v217 = *(v210 + 56);
      *(v209 + 5) = v215;
      *(v209 + 6) = v218;
      v220 = *(v210 + 64);
      v219 = *(v210 + 72);
      *(v209 + 7) = v217;
      *(v209 + 8) = v220;
      v222 = *(v210 + 80);
      v221 = *(v210 + 88);
      *(v209 + 9) = v219;
      *(v209 + 10) = v222;
      v223 = *(v210 + 96);
      *(v209 + 11) = v221;
      *(v209 + 12) = v223;
      v209[104] = *(v210 + 104);
      v224 = *(v210 + 112);
      *(v209 + 14) = v224;
      v225 = v212;
      v226 = v214;
      v119 = v325;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v198 = v326;
      sub_21DBF8E0C();
      v227 = v224;
    }

    else
    {
      v232 = *(v210 + 88);
      *(v209 + 72) = *(v210 + 72);
      *(v209 + 88) = v232;
      *(v209 + 104) = *(v210 + 104);
      v233 = *(v210 + 24);
      *(v209 + 8) = *(v210 + 8);
      *(v209 + 24) = v233;
      v228 = *(v210 + 56);
      *(v209 + 40) = *(v210 + 40);
      *(v209 + 56) = v228;
    }
  }

  else
  {
    v229 = *(v210 + 80);
    *(v209 + 4) = *(v210 + 64);
    *(v209 + 5) = v229;
    *(v209 + 6) = *(v210 + 96);
    *(v209 + 14) = *(v210 + 112);
    v230 = *(v210 + 16);
    *v209 = *v210;
    *(v209 + 1) = v230;
    v228 = *(v210 + 32);
    v231 = *(v210 + 48);
    *(v209 + 2) = v228;
    *(v209 + 3) = v231;
  }

  v234 = v198[27];
  v235 = a1 + v234;
  v236 = v119 + v234;
  v237 = *v236;
  v238 = *(v236 + 8);
  v239 = *(v236 + 16);
  v240 = *(v236 + 24);
  v241 = *(v236 + 32);
  v242 = *(v236 + 40);
  v244 = *(v236 + 48);
  v243 = *(v236 + 56);
  v245 = *(v236 + 64);
  v308 = *(v236 + 72);
  v309 = *(v236 + 80);
  v311 = *(v236 + 88);
  v313 = *(v236 + 96);
  v315 = *(v236 + 104);
  v321 = *(v236 + 112);
  __dsta = *(v236 + 120);
  sub_21D7ABD2C(*v236, v238, v239, v240, v241, v242, v244, v243, v228, v245, v308, v309, v311, v313, v315, v321, __dsta);
  *v235 = v237;
  *(v235 + 1) = v238;
  *(v235 + 2) = v239;
  *(v235 + 3) = v240;
  *(v235 + 4) = v241;
  *(v235 + 5) = v242;
  *(v235 + 6) = v244;
  *(v235 + 7) = v243;
  *(v235 + 8) = v245;
  v12 = v324;
  *(v235 + 9) = v308;
  *(v235 + 10) = v309;
  *(v235 + 11) = v311;
  *(v235 + 12) = v313;
  *(v235 + 13) = v315;
  *(v235 + 14) = v321;
  v235[120] = __dsta;
  v246 = v326[28];
  v247 = v326[29];
  v248 = v324 + v246;
  v249 = v325 + v246;
  *v248 = *v249;
  v250 = *(v249 + 2);
  *(v248 + 1) = *(v249 + 1);
  *(v248 + 2) = v250;
  v251 = (v324 + v247);
  v252 = (v325 + v247);
  v253 = *(v325 + v247 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v253)
  {
    *v251 = *v252;
    v251[1] = v253;
    v254 = v252[2];
    v255 = v252[3];
    v251[2] = v254;
    v251[3] = v255;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v256 = *(v252 + 1);
    *v251 = *v252;
    *(v251 + 1) = v256;
  }

  v257 = v326[31];
  *(v324 + v326[30]) = *(v325 + v326[30]);
  v258 = v324 + v257;
  v259 = v325 + v257;
  *v258 = *v259;
  v258[8] = v259[8];
  v260 = v326[33];
  *(v324 + v326[32]) = *(v325 + v326[32]);
  sub_21DBF8E0C();
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v262 = *(v261 - 8);
  if ((*(v262 + 48))(v325 + v260, 1, v261))
  {
    v263 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(v324 + v260, v325 + v260, *(*(v263 - 8) + 64));
  }

  else
  {
    v264 = sub_21DBF54CC();
    v265 = *(v264 - 8);
    if ((*(v265 + 48))(v325 + v260, 1, v264))
    {
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(v324 + v260, v325 + v260, *(*(v266 - 8) + 64));
    }

    else
    {
      (*(v265 + 16))(v324 + v260, v325 + v260, v264);
      (*(v265 + 56))(v324 + v260, 0, 1, v264);
    }

    (*(v262 + 56))(v324 + v260, 0, 1, v261);
  }

  v267 = v326[34];
  v268 = v326[35];
  v269 = (v324 + v267);
  v270 = (v325 + v267);
  v271 = v270[1];
  *v269 = *v270;
  v269[1] = v271;
  v272 = v324 + v268;
  v273 = v325 + v268;
  v274 = *(v325 + v268 + 8);
  sub_21DBF8E0C();
  if (v274 == 1)
  {
    v275 = *(v273 + 3);
    *(v272 + 2) = *(v273 + 2);
    *(v272 + 3) = v275;
    *(v272 + 4) = *(v273 + 4);
    v276 = *(v273 + 1);
    *v272 = *v273;
    *(v272 + 1) = v276;
  }

  else
  {
    *v272 = *v273;
    *(v272 + 1) = v274;
    v277 = *(v273 + 3);
    *(v272 + 2) = *(v273 + 2);
    *(v272 + 3) = v277;
    v278 = *(v273 + 5);
    *(v272 + 4) = *(v273 + 4);
    *(v272 + 5) = v278;
    v272[48] = v273[48];
    v279 = *(v273 + 8);
    *(v272 + 7) = *(v273 + 7);
    *(v272 + 8) = v279;
    v280 = *(v273 + 9);
    *(v272 + 9) = v280;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v281 = v280;
    v12 = v324;
  }

  v282 = v326[37];
  *(v12 + v326[36]) = *(v325 + v326[36]);
  v283 = v12 + v282;
  v284 = v325 + v282;
  v285 = *(v325 + v282 + 40);
  sub_21DBF8E0C();
  if (v285 == 255)
  {
    v291 = *(v284 + 1);
    *v283 = *v284;
    *(v283 + 1) = v291;
    *(v283 + 25) = *(v284 + 25);
  }

  else
  {
    v286 = *v284;
    v287 = *(v284 + 1);
    v288 = *(v284 + 2);
    v289 = *(v284 + 3);
    v290 = *(v284 + 4);
    sub_21D7A9844(v286, v287, v288, v289, v290, v285);
    *v283 = v286;
    *(v283 + 1) = v287;
    *(v283 + 2) = v288;
    *(v283 + 3) = v289;
    *(v283 + 4) = v290;
    v283[40] = v285;
  }

  v292 = v326[38];
  v293 = v12 + v292;
  v294 = v325 + v292;
  v295 = *(v325 + v292);
  if (v295)
  {
    v296 = *(v294 + 1);
    v297 = *(v294 + 2);
    *v293 = v295;
    *(v293 + 1) = v296;
    v298 = *(v294 + 3);
    v299 = *(v294 + 4);
    *(v293 + 2) = v297;
    *(v293 + 3) = v298;
    *(v293 + 4) = v299;
    v300 = *(v294 + 7);
    v301 = v295;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v300 == 1)
    {
      *(v293 + 40) = *(v294 + 40);
      *(v293 + 56) = *(v294 + 56);
    }

    else
    {
      v293[40] = v294[40];
      if (v300)
      {
        *(v293 + 6) = *(v294 + 6);
        *(v293 + 7) = v300;
        v304 = *(v294 + 8);
        *(v293 + 8) = v304;
        sub_21DBF8E0C();
        v305 = v304;
        return v324;
      }

      else
      {
        *(v293 + 3) = *(v294 + 3);
        *(v293 + 8) = *(v294 + 8);
      }
    }
  }

  else
  {
    v302 = *(v294 + 3);
    *(v293 + 2) = *(v294 + 2);
    *(v293 + 3) = v302;
    *(v293 + 8) = *(v294 + 8);
    v303 = *(v294 + 1);
    *v293 = *v294;
    *(v293 + 1) = v303;
  }

  return v12;
}