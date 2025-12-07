uint64_t TTRShowTaggedMonitorableDataView.init(store:hashtagLabels:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  *(v6 + 16) = a1;
  v12 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels;
  v13 = sub_21DBF6C1C();
  (*(*(v13 - 8) + 32))(v6 + v12, a2, v13);
  v14 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted;
  v15 = sub_21DBF71BC();
  (*(*(v15 - 8) + 32))(v6 + v14, a3, v15);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = a4;
  v16 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle;
  v17 = sub_21DBF70DC();
  (*(*(v17 - 8) + 32))(v6 + v16, a5, v17);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = a6;
  return v6;
}

void *TTRShowTaggedMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v50 = a1;
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64790, &qword_21DC34288);
  MEMORY[0x28223BE20](v48);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - v9;
  v53 = sub_21DBF6C1C();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF74BC();
  v54 = *(v12 - 1);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80, &unk_21DC299E0);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v44 - v15;
  v57 = sub_21DBF6A9C();
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8, &qword_21DC34290);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  sub_21DBFC83C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
  {
    sub_21D0CF7E0(v24, &qword_27CE5D3E8, &qword_21DC34290);
    if (a4)
    {
      v26 = *(v5 + 16);
      v27 = 0;
LABEL_6:
      v30 = MEMORY[0x277D45508];
      goto LABEL_11;
    }

    v27 = 0;
    goto LABEL_9;
  }

  v28 = *&v24[*(v25 + 48)];
  v29 = sub_21DBF700C();
  (*(*(v29 - 8) + 8))(v24, v29);
  if ((a4 & 1) == 0)
  {
    v27 = v28;
LABEL_9:
    v26 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_10;
  }

  v26 = *(v5 + 16);
  v27 = v28;
  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_10:
  v30 = MEMORY[0x277D454F8];
LABEL_11:
  *v21 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount);
  (*(v58 + 104))(v21, *v30, v59);
  v31 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels;
  v32 = *(v60 + 104);
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) == 1)
  {
    v32(v18, *MEMORY[0x277D45318], v57);
    *(v5 + v31) = 0;
    v33 = v18;
  }

  else
  {
    v33 = v18;
    v32(v18, *MEMORY[0x277D45310], v57);
  }

  v34 = v52;
  (*(v10 + 16))(v52, v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v53);
  sub_21D999290(v34, v14);
  v35 = v27;
  v36 = v56;
  sub_21DBF702C();
  if (v36)
  {

    (*(v54 + 8))(v14, v55);
    (*(v60 + 8))(v33, v57);
  }

  else
  {
    (*(v54 + 8))(v14, v55);
    v37 = v48;
    v38 = *(v48 + 48);
    v55 = v35;
    v56 = v33;
    v40 = v45;
    v39 = v46;
    sub_21DBF76DC();
    *(v39 + v38) = sub_21DBF76BC();
    v41 = v49;
    sub_21D0D3954(v39, v49, &qword_27CE64790, &qword_21DC34288);
    v14 = *(v41 + *(v37 + 48));
    v42 = sub_21DBF700C();
    (*(*(v42 - 8) + 32))(v50, v41, v42);
    sub_21DBF76CC();

    sub_21D0CF7E0(v39, &qword_27CE64790, &qword_21DC34288);
    (*(v47 + 8))(v16, v40);
    (*(v60 + 8))(v56, v57);
  }

  (*(v58 + 8))(v21, v59);
  return v14;
}

uint64_t sub_21D99D6FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *a1;
  v8 = sub_21DBF6C1C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *a2;
  v10 = sub_21DBF71BC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *a3;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  return v3;
}

uint64_t sub_21D99D808(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *a1;
  v8 = sub_21DBF6C1C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *a2;
  v10 = sub_21DBF71BC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *a3;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t sub_21D99D934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowTaggedMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

double TTRShowTaggedDataModelSourceHashtagContext.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRShowTaggedDataModelSourceHashtagContext.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v4 = sub_21DBF6C1C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D99DB48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v5 = sub_21DBF6C1C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21D99DBD4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  v12 = *(v5 + 16);
  v12(&v18[-v10], a1, v4, v9);
  v13 = *a2;
  v14 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (v12)(v7, v13 + v14, v4);
  swift_beginAccess();
  (*(v5 + 24))(v13 + v14, v11, v4);
  swift_endAccess();
  v15 = sub_21D99DED4(v7);
  v16 = *(v5 + 8);
  v16(v7, v4, v15);
  return (v16)(v11, v4);
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.selection.setter(uint64_t a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  v8 = sub_21D99DED4(v6);
  v9 = *(v4 + 8);
  v9(a1, v3, v8);
  return (v9)(v6, v3);
}

double sub_21D99DED4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_21D59E1F4();
  v8 = sub_21DBFA10C();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*TTRShowTaggedDataModelSourceHashtagContext.selection.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_21DBF6C1C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_21D99E1C0;
}

void sub_21D99E1C0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    v11 = sub_21D99DED4(v6);
    v12 = *(v9 + 8);
    v12(v6, v8, v11);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_21D99DED4(v7);
    v12 = *(v9 + 8);
  }

  (v12)(v7, v8);
  (v12)(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

double TTRShowTaggedDataModelSourceHashtagContext.allHashtagLabels.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.init(selection:allHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = a2;
  return v2;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.deinit()
{
  sub_21D157444(v0 + 16);
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v2 = sub_21DBF6C1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v2 = sub_21DBF6C1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D99E548@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v4 = sub_21DBF6C1C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D99E5D0(uint64_t a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  v8 = sub_21D99DED4(v6);
  v9 = *(v4 + 8);
  v9(a1, v3, v8);
  return (v9)(v6, v3);
}

void (*sub_21D99E72C(uint64_t **a1))(void *a1)
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
  v2[4] = TTRShowTaggedDataModelSourceHashtagContext.selection.modify(v2);
  return sub_21D25A3E8;
}

double sub_21D99E79C()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

void sub_21D99E804(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268, &qword_21DC195E0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8, &qword_21DC34290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF700C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C268, &qword_21DC195E0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C268, &qword_21DC195E0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270, &unk_21DC15D90);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5D3E8, &qword_21DC34290);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(a0_3);
      swift_getKeyPath(asc_21DC34540);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788, &qword_21DC34280);
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

id sub_21D99EEB0(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223D44740](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_21D29B0D0(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_21DBFBD7C();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_21D99EFA4(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v6;
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF6C1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  (*(v12 + 16))(v15, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v11, v13);
  (*(v8 + 16))(v10, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v7);
  v23 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v3);
  v21 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount);
  type metadata accessor for TTRShowTaggedMonitorableDataView(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  v17 = v24;
  *(v16 + 16) = v24;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v15, v11);
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v10, v7);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = v23;
  (*(v4 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v22, v3);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = v21;
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = v25;
  v18 = v17;
  return v16;
}

void sub_21D99F2CC(void *a1)
{
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE646E0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowTaggedDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTaggedDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D99F710(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v3 <= 0x3F)
    {
      result = sub_21DBF70DC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D99F878(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v3 <= 0x3F)
    {
      result = sub_21DBF70DC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D99F9D8(uint64_t a1)
{
  result = sub_21DBF6C1C();
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

RemindersUICore::TTRHashtagAssociationAffectedObjectCounts __swiftcall TTRHashtagAssociationAffectedObjectCounts.init(reminders:customSmartLists:)(Swift::Int reminders, Swift::Int customSmartLists)
{
  *v2 = reminders;
  v2[1] = customSmartLists;
  result.customSmartLists = customSmartLists;
  result.reminders = reminders;
  return result;
}

RemindersUICore::TTRHashtagAssociationDeleteTagConfirmationMessage __swiftcall TTRHashtagAssociationDeleteTagConfirmationMessage.init(affectedObjectCounts:deletableCustomSmartLists:)(RemindersUICore::TTRHashtagAssociationAffectedObjectCounts affectedObjectCounts, Swift::OpaquePointer deletableCustomSmartLists)
{
  *v2 = *affectedObjectCounts.reminders;
  *(v2 + 16) = affectedObjectCounts.customSmartLists;
  result.affectedObjectCounts = affectedObjectCounts;
  result.deletableCustomSmartLists = deletableCustomSmartLists;
  return result;
}

__n128 TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t static TTRHashtagAssociationDeleteTagConfirmationMessage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21D1D5420(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D99FBA4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21D1D5420(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

__n128 TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t sub_21D99FCF4()
{
  result = qword_27CE647D8;
  if (!qword_27CE647D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent, &type metadata for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent, v0, v1);
    atomic_store(result, &qword_27CE647D8);
  }

  return result;
}

uint64_t sub_21D99FD88(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D99FD60(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagAssociationOperation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D99FD60(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D99FD7C();
  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationOperation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D99FD7C();
  return a1;
}

void *assignWithCopy for TTRHashtagAssociationDeleteTagConfirmationMessage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationDeleteTagConfirmationMessage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

Swift::Void __swiftcall TTRSmartListSectionEditor.edit(displayName:)(Swift::String displayName)
{
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 displayName];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CE56F20 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE647E0);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v4 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating smart list section's display name {smartListSectionID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v16 = sub_21DBFA12C();
    [v4 setDisplayName_];

    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    sub_21D183198(sub_21D902584, v17);
  }
}

uint64_t sub_21D9A01C4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE647E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE647E0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSmartListSectionEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v6 + 64) = a3;
  return v6;
}

uint64_t TTRSmartListSectionEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = 0;
  *(v3 + 16) = a1;
  v5 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v5;
  *(v3 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v3 + 64) = a3;
  return v3;
}

uint64_t TTRSmartListSectionEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80, &unk_21DC093F0);

  return swift_deallocClassInstance();
}

id static TTRSmartListSectionEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

uint64_t TTRSmartListSectionEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateSmartListSection_];

  v9 = swift_allocObject();
  *(v9 + 64) = 0;
  *(v9 + 16) = v8;
  v10 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a3 + 32);
  swift_beginAccess();
  *(v9 + 64) = a4;
  return v9;
}

void sub_21D9A05D8(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateSmartListSection_];

  v11 = swift_allocObject();
  *(v11 + 64) = 0;
  *(v11 + 16) = v10;
  v12 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a3 + 32);
  swift_beginAccess();
  *(v11 + 64) = a4;
  *a5 = v11;
}

id static TTRSmartListSectionEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedSmartListSectionChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateSmartListSection_];

  return v2;
}

id static TTRSmartListSectionEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRSmartListSectionEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id TTRSmartListSectionEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

uint64_t TTRSmartListSectionEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 16) = a1;
  v5 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v4 + 64) = 0;
  return v4;
}

id sub_21D9A0884@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21D9A0934(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D9A08B4(void *a1, id a2)
{
  v2 = [a2 _trackedSmartListSectionChangeItemForObjectID_];

  return v2;
}

id sub_21D9A08F4(void *a1, id a2)
{
  v2 = [a2 updateSmartListSection_];

  return v2;
}

id sub_21D9A0934(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchSmartListSectionWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21D9A09F4(uint64_t a1, uint64_t a2)
{
  result = sub_21D9A0ABC(&qword_27CE647F8, a2, type metadata accessor for TTRSmartListSectionEditor, protocol conformance descriptor for TTRSmartListSectionEditor);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_21D9A0ABC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Array<A>.replacingSubtasksWithNil()(uint64_t a1, __n128 a2)
{
  v3 = sub_21DBF6D7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21D18E718(0, v10, 0);
    v11 = v25;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v23 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v24 = v13;
    v14 = a1 + v23;
    v15 = *(v12 + 56);
    v21 = (v12 - 8);
    v22 = v15;
    v20 = (v12 + 16);
    do
    {
      v24(v6, v14, v3);
      sub_21DBF6D5C();
      sub_21DBF6D1C();
      sub_21DBF6D2C();
      sub_21DBF6D3C();
      (*v21)(v6, v3);
      v25 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21D18E718((v16 > 1), v17 + 1, 1);
        v11 = v25;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v22;
      (*v20)(v11 + v23 + v17 * v22, v9, v3);
      v14 += v18;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRRemindersListEditingSessionProviderCapability.init()();
  return v0;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32[-v16];
  a5(&v33, a1, a2, a3, v15);
  v18 = v33;
  if (!v33)
  {
    return 0;
  }

  v19 = v34;

  if (v19)
  {
    sub_21D9A1B40(0, v18);
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  sub_21D1D3F20(v18 + v20, v17);
  v21 = type metadata accessor for TTRRemindersListUndoContext(0);
  v22 = (*(*(v21 - 8) + 48))(v17, 1, v21);
  sub_21D1D4958(v17);
  if (v22 == 1)
  {
    swift_beginAccess();
    sub_21D5F3A70(a4, v18 + v20);
    swift_endAccess();
  }

  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    sub_21D9A1DD0(v18, a4);
  }

  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v24 = *(v18 + v23);
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_21D210A84(0, *(v24 + 2) + 1, 1, v24);
    *(v18 + v23) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_21D210A84((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = a2;
  *(v28 + 5) = a3;
  *(v18 + v23) = v24;
  swift_endAccess();
  type metadata accessor for TTRRemindersListConcreteEditingSession(0);
  swift_allocObject();
  sub_21DBF8E0C();
  v29 = TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)(a2, a3, v18, 1);

  v30 = v29 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  *(v30 + 8) = a8;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.init(sessionState:isExisting:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.scheduleConclusionForFinishedEditingSession(_:options:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a2;
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F500);

  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName), *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8), v24);
    *(v11 + 12) = 2080;
    sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v6);
    v13 = sub_21D25D250();
    v15 = v14;
    sub_21D106FD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = sub_21D0CDFB4(v13, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Reminder Editing Session: finish {acquirer: %s, item: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1 || !sub_21D9A2548(a1))
  {
    return 0;
  }

  v17 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
    swift_beginAccess();
    *(v17 + v22) = 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
  swift_beginAccess();
  *(v17 + v21) = 1;
  if ((v7 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v7 & 4) != 0)
  {
LABEL_10:
    v18 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
    swift_beginAccess();
    *(v17 + v18) = 1;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  if (!*(*(v17 + v19) + 16))
  {
    sub_21D9A1B40(1, v17);
  }

  return 1;
}

uint64_t sub_21D9A13E4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F500);
  v1 = __swift_project_value_buffer(v0, qword_280D0F500);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersUICore::TTRRemindersListEditingSessionProviderCapability::EditingSessionStatesConclusion __swiftcall TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.init(toBeDeleted:toBeSaved:)(Swift::OpaquePointer toBeDeleted, Swift::OpaquePointer toBeSaved)
{
  v2->_rawValue = toBeDeleted._rawValue;
  v2[1]._rawValue = toBeSaved._rawValue;
  result.toBeSaved = toBeSaved;
  result.toBeDeleted = toBeDeleted;
  return result;
}

uint64_t sub_21D9A14D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D1CDA04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D9A1568(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t sub_21D9A1718@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D9A17AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1, *(v0 + 40));
  return v1;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  sub_21D0CE468();
  v3 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D8AE0(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v4[5] = sub_21DBF5EEC();
  v4[6] = v2;
  v4[4] = v3;
  *(v0 + 48) = v4;
  swift_beginAccess();
  v4[3] = &protocol witness table for TTRRemindersListEditingSessionProviderCapability;
  swift_unknownObjectWeakAssign();
  return v0;
}

void sub_21D9A1B40(char a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 56);
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v8, v6);
      swift_unknownObjectRelease();
      if (v10 == a2)
      {
LABEL_12:

        if ((a1 & 1) == 0)
        {
          if (qword_280D0F4F8 != -1)
          {
            swift_once();
          }

          v11 = sub_21DBF84BC();
          __swift_project_value_buffer(v11, qword_280D0F500);
          v12 = sub_21DBF84AC();
          v13 = sub_21DBFAE9C();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_21D0C9000, v12, v13, "Reminder Editing Session: Removing editing session from needsSave pool", v14, 2u);
            MEMORY[0x223D46520](v14, -1, -1);
          }

          swift_beginAccess();
          sub_21DBCEEE0(v8);
          swift_endAccess();
        }

        return;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (*(v6 + 8 * v8 + 32) == a2)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_24;
    }
  }

  if (a1)
  {
    swift_beginAccess();

    MEMORY[0x223D42D80](v15);
    if (*((*(v3 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    swift_endAccess();
    v16._object = 0x800000021DC72340;
    v16._countAndFlagsBits = 0xD00000000000001DLL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v16);
  }
}

void sub_21D9A1DD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_21DBFB34C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64800, &unk_21DC34970);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - v15);
  v37 = a2;
  sub_21D1D3F20(a2, &v30 - v15);
  v17 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_21D1D4958(v16);
  }

  else
  {
    v32 = v5;
    v33 = v9;
    v18 = *v16;
    sub_21D106FD8(v16, type metadata accessor for TTRRemindersListUndoContext);
    v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
    swift_beginAccess();
    if (*(a1 + v19))
    {
    }

    else
    {
      v20 = [objc_opt_self() defaultCenter];
      v30 = a1;
      v21 = v18;
      v31 = v21;
      sub_21DBFB35C();

      sub_21D0D8AE0(&qword_280D0C280, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
      v22 = v36;
      sub_21DBF92CC();
      (*(v35 + 8))(v8, v6);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v25 = v30;
      swift_weakInit();
      sub_21D1D3F20(v37, v13);
      v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v23;
      *(v27 + 24) = v24;
      sub_21D9A3844(v13, v27 + v26);
      *(v27 + ((v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
      sub_21D0D0F1C(&qword_280D0C5A0, &qword_27CE64800, &unk_21DC34970, MEMORY[0x277CBCC58]);
      v28 = v33;
      v29 = sub_21DBF93CC();

      (*(v38 + 8))(v22, v28);
      *(v25 + v19) = v29;
    }
  }
}

uint64_t sub_21D9A229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (qword_280D0F4F8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_280D0F500);

      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAE9C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19[0] = v13;
        *v12 = 136315138;
        v14 = sub_21D25D250();
        v16 = sub_21D0CDFB4(v14, v15, v19);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v10, v11, "Reminder Editing Session: detected first edit {item: %s}", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }

      swift_beginAccess();
      v17 = *(v6 + 16);
      v18 = *(v6 + 24);
      sub_21D0D0E78(v17, v18);
      sub_21D9A3960(v17, v18, v8, a4);
      sub_21D0D0E88(v17, v18);
    }
  }

  return result;
}

uint64_t *TTRRemindersListEditingSessionProviderCapability.deinit()
{
  sub_21D0D0E88(v0[2], v0[3]);
  sub_21D0D0E88(v0[4], v0[5]);

  return v0;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.__deallocating_deinit()
{
  sub_21D0D0E88(v0[2], v0[3]);
  sub_21D0D0E88(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

BOOL sub_21D9A2548(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v48[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v48[-v9];
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8);
  v13 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  sub_21D1D338C(v13 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, &v48[-v9]);
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v53[0] = v12;
  v53[1] = v11;
  v52 = v53;
  sub_21DBF8E0C();
  sub_21D3F7CA4(sub_21D17B73C, v51, v15);
  v17 = v16;
  LODWORD(v19) = v18;

  if ((v19 & 1) == 0)
  {
    v50 = v12;
    swift_beginAccess();
    sub_21DBCEEF8(v17);
    swift_endAccess();

    if (qword_280D0F4F8 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_280D0F500);
    sub_21D1D338C(v10, v7);
    sub_21DBF8E0C();

    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAE9C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = v19;
      v19 = v34;
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v19 = 136315650;
      *(v19 + 4) = sub_21D0CDFB4(v50, v11, v53);
      *(v19 + 12) = 2080;
      v36 = sub_21DBF8E0C();
      v37 = MEMORY[0x223D42DB0](v36, MEMORY[0x277D837D0]);
      v39 = v38;

      v40 = sub_21D0CDFB4(v37, v39, v53);

      *(v19 + 14) = v40;
      *(v19 + 22) = 2080;
      v41 = sub_21D25D250();
      v43 = v42;
      sub_21D106FD8(v7, type metadata accessor for TTRRemindersListViewModel.Item);
      v44 = sub_21D0CDFB4(v41, v43, v53);

      *(v19 + 24) = v44;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Reminder Editing Session: Removed acquirer from editing session {removing: %s, remaining: %s, item: %s}", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v35, -1, -1);
      v45 = v19;
      LOBYTE(v19) = v49;
      MEMORY[0x223D46520](v45, -1, -1);

      goto LABEL_13;
    }

    v46 = v7;
LABEL_12:
    sub_21D106FD8(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_13;
  }

  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_280D0F500);
  sub_21D1D338C(v10, v4);
  sub_21DBF8E0C();
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAECC();

  if (!os_log_type_enabled(v21, v22))
  {

    v46 = v4;
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v25 = v12;
  v26 = v24;
  v53[0] = v24;
  *v23 = 136315394;
  *(v23 + 4) = sub_21D0CDFB4(v25, v11, v53);
  *(v23 + 12) = 2080;
  v27 = sub_21D25D250();
  v29 = v28;
  sub_21D106FD8(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v30 = sub_21D0CDFB4(v27, v29, v53);

  *(v23 + 14) = v30;
  _os_log_impl(&dword_21D0C9000, v21, v22, "Reminder Editing Session: acquirer to be removed is not found {acquirerName: %s, item: %s}", v23, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v26, -1, -1);
  MEMORY[0x223D46520](v23, -1, -1);

LABEL_13:
  sub_21D106FD8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  return (v19 & 1) == 0;
}

void _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredJ0C_SStF_0()
{
  v41 = sub_21DBF4CAC();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (v3 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v4 = *(v0 + 56);
  v5 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  v44 = v5;
  v45 = v5;
  if (v4 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v0;
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v39 = (v1 + 8);
    v9 = MEMORY[0x277D84F90];
    v10 = &OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
    v11 = &OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
    v42 = MEMORY[0x277D84F90];
    v38 = v6;
    v37 = v4;
    do
    {
      if (v8)
      {
        v13 = MEMORY[0x223D44740](v7, v4);
      }

      else
      {
        v13 = *(v4 + 8 * v7 + 32);
      }

      v14 = *v10;
      swift_beginAccess();
      if (*(v13 + v14))
      {
        goto LABEL_8;
      }

      v15 = *v11;
      swift_beginAccess();
      if (*(v13 + v15) != 1)
      {
        goto LABEL_21;
      }

      v16 = [*(v13 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) titleAsString];
      if (!v16)
      {
        goto LABEL_8;
      }

      v17 = v16;
      v18 = v8;
      v19 = v10;
      v20 = sub_21DBFA16C();
      v22 = v21;

      v43[2] = v20;
      v43[3] = v22;
      v23 = v9;
      v24 = v11;
      v25 = v40;
      sub_21DBF4C5C();
      sub_21D176F0C();
      v26 = sub_21DBFBB3C();
      v28 = v27;
      v29 = v25;
      v11 = v24;
      v9 = v23;
      (*v39)(v29, v41);

      v30 = HIBYTE(v28) & 0xF;
      v31 = (v28 & 0x2000000000000000) == 0;
      v10 = v19;
      v8 = v18;
      v4 = v37;
      v6 = v38;
      if (v31)
      {
        v30 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
LABEL_8:

        MEMORY[0x223D42D80](v12);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v9 = v45;
      }

      else
      {
LABEL_21:

        MEMORY[0x223D42D80](v32);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v42 = v44;
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
  }

  v33 = v36;
  swift_beginAccess();
  v34 = *(v33 + 32);
  if (v34)
  {
    v35 = *(v33 + 40);
    v43[0] = v9;
    v43[1] = v42;

    v34(v43);
    sub_21D0D0E88(v34, v35);
  }
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC18prepareToForceSave_14isAsynchronousSbAA0cd8ConcreteeF0C_SbtF_0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F500);

  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_21D0CDFB4(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName), *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8), v30);
    *(v10 + 12) = 2080;
    sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v6);
    v12 = sub_21D25D250();
    v14 = v13;
    sub_21D106FD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = sub_21D0CDFB4(v12, v14, v30);

    *(v10 + 14) = v15;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Reminder Editing Session: finish and force save session {acquirer: %s, item: %s, isAsync: %{BOOL}d}", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1 || !sub_21D9A2548(a1))
  {
    return 0;
  }

  v16 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (*(v18 + 16))
  {
    sub_21DBF8E0C();
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAECC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x223D42DB0](v18, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_21D0CDFB4(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Reminder Editing Session: session is still held by some acquirers, force saving may cause problems {acquirers: %s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v21, -1, -1);
    }

    else
    {
    }
  }

  v28 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  swift_beginAccess();
  if (*(v16 + v28))
  {

    sub_21DBF901C();
  }

  return 1;
}

void _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToCommityyAA0cdeF5StateCF_0(uint64_t a1)
{
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F500);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    v7 = TTRRemindersListEditingSessionState.debugDescription.getter();
    v9 = sub_21D0CDFB4(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Reminder Editing Session: commit sessionState {sessionState: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
  swift_beginAccess();
  if (*(a1 + v10))
  {
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Reminder Editing Session: Attempting to save a sessionState twice", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  swift_beginAccess();
  if (*(a1 + v14))
  {

    sub_21DBF901C();
  }
}

void _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToDeleteyyAA0cdeF5StateCF_0(uint64_t a1)
{
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F500);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    v7 = TTRRemindersListEditingSessionState.debugDescription.getter();
    v9 = sub_21D0CDFB4(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Reminder Editing Session: perform deletion {sessionState: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  if (*(*(a1 + v10) + 16))
  {
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Reminder Editing Session: session is still held by some acquirers, item deletion may cause problems", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  swift_beginAccess();
  if (*(a1 + v14))
  {

    sub_21DBF901C();
  }
}

uint64_t assignWithCopy for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_21D9A3844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9A38B4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21D9A229C(a1, v4, v5, v6);
}

void sub_21D9A3960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&aBlock[-1] - v9);
  if (a1)
  {
    sub_21D1D3F20(a4, &aBlock[-1] - v9);
    v11 = type metadata accessor for TTRRemindersListUndoContext(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
    {
      sub_21D1D4958(v10);
    }

    else
    {
      v12 = *v10;
      sub_21D0D0E78(a1, a2);
      v13 = v12;
      sub_21D106FD8(v10, type metadata accessor for TTRRemindersListUndoContext);
      v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
      swift_beginAccess();
      if (*(a3 + v14))
      {

        sub_21D0D0E88(a1, a2);
      }

      else
      {
        v30 = v13;
        if (qword_280D0F4F8 != -1)
        {
          swift_once();
        }

        v15 = sub_21DBF84BC();
        __swift_project_value_buffer(v15, qword_280D0F500);

        v16 = sub_21DBF84AC();
        v17 = sub_21DBFAE9C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          v20 = sub_21D25D250();
          v22 = sub_21D0CDFB4(v20, v21, aBlock);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_21D0C9000, v16, v17, "Reminder Editing Session: register undo for adding new reminder {item: %s}", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x223D46520](v19, -1, -1);
          MEMORY[0x223D46520](v18, -1, -1);
        }

        *(a3 + v14) = 1;
        v23 = objc_opt_self();
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v24 = sub_21DBFA12C();

        v25 = swift_allocObject();
        v25[2] = a3;
        v25[3] = a1;
        v25[4] = a2;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_21D9A3E5C;
        *(v26 + 24) = v25;
        aBlock[4] = sub_21D0E6070;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0E6204;
        aBlock[3] = &block_descriptor_125;
        v27 = _Block_copy(aBlock);
        sub_21D0D0E78(a1, a2);

        [v23 withActionName:v24 block:v27];

        _Block_release(v27);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v29 = v30;
          if ([v30 groupingLevel] >= 1)
          {
            [v29 endUndoGrouping];
            [v29 beginUndoGrouping];
          }

          sub_21D0D0E88(a1, a2);
        }
      }
    }
  }
}

void sub_21D9A3E5C()
{
  v1 = *(v0 + 24);
  v2 = [*(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];
  v1();
}

uint64_t TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84F90];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223D44740](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 isUnsupported])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TTRReminderDetailSubject.init(reminderChangeItem:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t TTRReminderDetailInteractor.__allocating_init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(uint64_t a1, void *a2, __int128 *a3, _OWORD *a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(a1, a2, a3, a4, a5);
  return v10;
}

double TTRReminderDetailInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    swift_getObjectType();
    swift_beginAccess();
    v5 = *(v4 + 16);
    v6 = *(v2 + 40);
    v5();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21D9A415C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64808);
  v1 = __swift_project_value_buffer(v0, qword_27CE64808);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRReminderDetailOptimisticReminder.reminder.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRReminderDetailOptimisticReminder.init(reminder:saveDidFinish:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRReminderDetailSubject.init(initialReminderChangeItem:reminderChangeItemPublisher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRReminderDetailSubject.init(reminderChangeItemSubject:)@<X0>(void *a2@<X8>)
{
  sub_21DBF909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64820, &qword_21DC34980);
  sub_21D0D0F1C(&qword_280D0C438, &qword_27CE64820, &qword_21DC34980, MEMORY[0x277CBCE48]);
  v3 = sub_21DBF920C();

  *a2 = v5;
  a2[1] = v3;
  return result;
}

void (*TTRReminderDetailInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D9A43FC;
}

void sub_21D9A43FC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + 24);
      swift_getObjectType();
      swift_beginAccess();
      v6 = *(v5 + 16);
      v7 = *(v4 + 40);
      v6();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(uint64_t a1, void *a2, __int128 *a3, _OWORD *a4, uint64_t *a5)
{
  v6 = v5;
  v9 = *a1;
  v32 = *(a1 + 8);
  v10 = a3[3];
  v36 = a3[2];
  v37 = v10;
  v38 = a3[4];
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  v12 = *a5;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 2;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0;
  *(v6 + 208) = 0;
  *(v6 + 40) = v9;
  *(v6 + 32) = a2;
  v13 = v9;
  v14 = a2;
  v33 = v13;
  *(v6 + 48) = [v13 accountCapabilities];
  swift_beginAccess();
  v15 = *(v6 + 40);
  v16 = type metadata accessor for TTRBasicUndoContext();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v40[3] = v16;
  v40[4] = &protocol witness table for TTRBasicUndoContext;
  v40[0] = v17;
  sub_21D0D3954(v40, v39, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v18 = swift_allocObject();
  *(v18 + 72) = 0;
  *(v18 + 16) = v15;
  sub_21D0D3954(v39, v18 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v18 + 64) = 0;
  v19 = v14;
  v20 = [v15 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v40, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v39, &unk_27CE60D80, &unk_21DC093F0);
  *(v18 + 72) = v20;
  *(v6 + 56) = v18;
  *(v6 + 176) = v12;
  *(v6 + 72) = _s15RemindersUICore48TTRReminderDetailPendingMoveInteractorCapabilityC18reminderChangeItem11undoManager07pendingF7ContextACSo011REMReminderjK0C_So06NSUndoM0CAC0efO0VtcfC_0(*(v6 + 40), v19, &v34);
  type metadata accessor for TTRReminderDetailDatabaseMonitor();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 32) = 1;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 40) = 0;
  *(v6 + 80) = v21;
  v22 = *(v6 + 72);
  swift_beginAccess();
  *(v22 + 24) = &protocol witness table for TTRReminderDetailInteractor;
  swift_unknownObjectWeakAssign();
  *(*(v6 + 80) + 24) = &off_282EDEC10;
  swift_unknownObjectWeakAssign();
  v23 = *(v6 + 128);
  v34 = *(v6 + 112);
  v35 = v23;
  v24 = *(v6 + 160);
  v36 = *(v6 + 144);
  v37 = v24;
  v25 = a4[1];
  *(v6 + 112) = *a4;
  *(v6 + 128) = v25;
  v26 = a4[3];
  *(v6 + 144) = a4[2];
  *(v6 + 160) = v26;
  sub_21D0CF7E0(&v34, &qword_27CE59DD8, &qword_21DC0D110);
  swift_beginAccess();
  v27 = *(v6 + 32);
  v28 = v27;
  sub_21D550F48(v27, v6, sub_21D9AA3B0, 0);

  sub_21DBF902C();
  swift_allocObject();
  *(v6 + 64) = sub_21DBF903C();

  v29 = *(v6 + 40);
  sub_21D9A497C(v29, 0xD000000000000019, 0x800000021DC72360);

  if (v32)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828, &unk_21DC37D70);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828, &unk_21DC37D70, MEMORY[0x277CBCD90]);
    v30 = sub_21DBF91AC();
  }

  else
  {

    v30 = 0;
  }

  *(v6 + 104) = v30;

  return v6;
}

double sub_21D9A497C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE64808);
  sub_21DBF8E0C();
  v9 = a1;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAEDC();

  v12 = &off_278331000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v58 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_21D0CDFB4(a2, a3, &v58);
    *(v13 + 12) = 2112;
    v16 = [v9 objectID];
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&dword_21D0C9000, v10, v11, "TTRReminderDetailInteractor: apply new REMReminderChangeItem instance {reason: %s, objectID: %@}", v13, 0x16u);
    sub_21D0CF7E0(v14, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v17 = v15;
    v12 = &off_278331000;
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  swift_beginAccess();
  v18 = *(v4 + 32);
  v19 = [v9 v12[425]];
  *(&v59 + 1) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *&v58 = v19;
  v20 = [v18 canUndo];
  if ((v20 & 1) != 0 || (v20 = [v18 canRedo], v20))
  {
    MEMORY[0x28223BE20](v20);
    v21 = sub_21D3FC320(sub_21D3FC4F8);

    __swift_destroy_boxed_opaque_existential_0(&v58);
    if (v21)
    {
      v22 = v9;
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEDC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = [v22 v12[425]];
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRReminderDetailInteractor: reapplied edits on new REMReminderChangeItem instance {objectID: %@}", v25, 0xCu);
        sub_21D0CF7E0(v26, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v26, -1, -1);
        MEMORY[0x223D46520](v25, -1, -1);
      }
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  v28 = v9;
  sub_21D9A5334(v28);
  v29 = [v28 accountCapabilities];
  swift_beginAccess();
  v30 = *(v4 + 48);
  *(v4 + 48) = v29;

  v31 = *(v4 + 32);
  v32 = type metadata accessor for TTRBasicUndoContext();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(&v59 + 1) = v32;
  v60 = &protocol witness table for TTRBasicUndoContext;
  *&v58 = v33;
  sub_21D0D3954(&v58, v66, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v34 = swift_allocObject();
  *(v34 + 72) = 0;
  *(v34 + 16) = v28;
  sub_21D0D3954(v66, v34 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v34 + 64) = 0;
  v35 = v28;
  v36 = v31;
  v37 = [v35 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(&v58, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v66, &unk_27CE60D80, &unk_21DC093F0);
  *(v34 + 72) = v37;
  *(v4 + 56) = v34;

  v38 = *(v4 + 32);
  v39 = *(v4 + 72);
  v57 = *(v39 + 112);
  v40 = *(v39 + 128);
  v41 = *(v39 + 136);
  v42 = *(v39 + 144);
  v43 = *(v39 + 160);
  v44 = *(v39 + 168);
  LOBYTE(v37) = *(v39 + 152);
  v58 = *(v39 + 48);
  v56 = v58;
  v59 = v57;
  v60 = v40;
  v61 = v41;
  v62 = v42;
  v63 = v37;
  v64 = v43;
  v65 = v44;
  v45 = v35;
  v46 = v38;
  sub_21D0D0E78(v56, *(&v56 + 1));
  v47 = v57;
  sub_21D575E44(*(&v57 + 1), v40, v41, v42);
  v48 = v44;
  v49 = v43;
  v50 = _s15RemindersUICore48TTRReminderDetailPendingMoveInteractorCapabilityC18reminderChangeItem11undoManager07pendingF7ContextACSo011REMReminderjK0C_So06NSUndoM0CAC0efO0VtcfC_0(v45, v46, &v58);
  *(v4 + 72) = v50;

  swift_beginAccess();
  *(v50 + 24) = &protocol witness table for TTRReminderDetailInteractor;
  swift_unknownObjectWeakAssign();

  if (!*(v4 + 96))
  {
    v53 = sub_21D9A5C04();
    v54 = *(v4 + 88);
    *(v4 + 88) = v53;
    v52 = *(v4 + 96);
    *(v4 + 96) = 0;
    v51 = v54;
    goto LABEL_16;
  }

  if (*(v4 + 96) == 1)
  {
    sub_21D9A5668(v66);
    v51 = *(v4 + 88);
    *(v4 + 88) = v66[0];
    v52 = *(v4 + 96);
    *(v4 + 96) = 1;
LABEL_16:
    sub_21D9B10D8(v51, v52);
  }

  sub_21D9AA568();
  sub_21DBC9BC0(v45);
  return sub_21D9A6950(0);
}

void sub_21D9A4FC0(uint64_t a1, void **a2)
{
  v3 = *a2;
  swift_beginAccess();
  if (v3 != *(a1 + 40))
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE64808);
    v5 = v3;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = [v5 objectID];
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_21D0C9000, v6, v7, "TTRReminderDetailInteractor: received updated REMReminderChangeItem instance {objectID: %@}", v8, 0xCu);
      sub_21D0CF7E0(v9, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    sub_21D9A497C(v5, 0xD000000000000023, 0x800000021DC72500);
  }
}

uint64_t static TTRReminderDetailInteractor.hasUncommittedChanges(initial:current:)(void *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;

  sub_21D0D8CF0(0, &qword_27CE5A390, 0x277D447C8);
  LOBYTE(a2) = sub_21DBFB63C();

  return (a2 ^ 1) & 1;
}

id static TTRReminderDetailInteractor.makeSaveRequest(store:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v1 setSaveIsNoopIfNoChangedKeys_];
  return v1;
}

id TTRReminderDetailInteractor.undoManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

id TTRReminderDetailInteractor.reminderChangeItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_21D9A5334(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    swift_getObjectType();
    v6 = *(v5 + 16);
    v7 = *(v1 + 40);
    v6();

    swift_unknownObjectRelease();
  }
}

id TTRReminderDetailInteractor.attributeEditor.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  swift_beginAccess();
  v4 = *(v1 + 40);
  *(v3 + 32) = v4;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v5 = type metadata accessor for TTRBasicUndoContext();
  v6 = swift_allocObject();
  *(v6 + 16) = v13;
  v7 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = v6;
  v8[8] = v5;
  v8[9] = &protocol witness table for TTRBasicUndoContext;
  v9 = type metadata accessor for TTRRemindersListAttributeEditor();
  v10 = swift_allocObject();
  v10[5] = v7;
  v10[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v10[2] = v8;
  a1[3] = v9;
  a1[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a1 = v10;
  v11 = v4;

  return v13;
}

id TTRReminderDetailInteractor.originalAccountCapabilities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void TTRReminderDetailInteractor.subtasks.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 88);
  if (!*(v1 + 96))
  {
    if (!v3)
    {
      v4 = MEMORY[0x277D84F90];
      *(v1 + 88) = MEMORY[0x277D84F90];
      *(v1 + 96) = 1;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_7:
    sub_21D9A5668(&v8);
    v4 = v8;
    v5 = *(v1 + 88);
    *(v1 + 88) = v8;
    v6 = *(v1 + 96);
    *(v1 + 96) = 1;
    sub_21DBF8E0C();
    v3 = v5;
    v7 = v6;
LABEL_8:
    sub_21D9B10D8(v3, v7);
    *a1 = v4;
    return;
  }

  if (*(v1 + 96) != 1)
  {
    goto LABEL_7;
  }

  *a1 = v3;

  sub_21DBF8E0C();
}

void sub_21D9A5668(void *a1@<X8>)
{
  v2 = v1;
  v39[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = [*(v1 + 40) saveRequest];
  v5 = [v4 store];

  v6 = [*(v2 + 40) objectID];
  v39[0] = 0;
  v7 = [v5 fetchReminderWithObjectID:v6 error:v39];

  if (!v7)
  {
    v22 = v39[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
LABEL_16:
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE64808);
    v27 = v23;

    v28 = sub_21DBF84AC();
    v29 = sub_21DBFAEBC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v5;
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v30 = 136315394;
      swift_getErrorValue();
      v33 = sub_21DBFC74C();
      v35 = sub_21D0CDFB4(v33, v34, v39);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      v36 = [*(v2 + 40) objectID];
      *(v30 + 14) = v36;
      *v31 = v36;
      _os_log_impl(&dword_21D0C9000, v28, v29, "Failed to fetch reminder when loading subtasks in reminder detail {error: %s, objectID: %@}", v30, 0x16u);
      sub_21D0CF7E0(v31, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v30, -1, -1);

LABEL_22:
      v24 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

LABEL_21:
    goto LABEL_22;
  }

  v8 = v39[0];
  v9 = [v7 subtaskContext];
  if (!v9)
  {

    goto LABEL_21;
  }

  v10 = v9;
  v39[0] = 0;
  v11 = [v9 fetchRemindersForMovingWithError_];
  v12 = v39[0];
  if (!v11)
  {
    v25 = v39[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_16;
  }

  v13 = v11;
  sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v14 = sub_21DBFA5EC();
  v15 = v12;

  if (v14 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_25:

    goto LABEL_22;
  }

LABEL_6:
  v37 = v5;
  v39[0] = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if (v16 < 0)
  {
    __break(1u);
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D44740](v17, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = [*(v2 + 40) saveRequest];
    v21 = [v20 updateReminder_];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v16 != v17);

  v24 = v39[0];
LABEL_23:
  *a1 = v24;
}

uint64_t TTRReminderDetailInteractor.subtasksCount.getter(uint64_t a1)
{
  v2 = *(v1 + 88);
  if (*(v1 + 96))
  {
    if (*(v1 + 96) == 1)
    {
      v3 = TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter();
      if (v3 >> 62)
      {
        v2 = sub_21DBFBD7C();
      }

      else
      {
        v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v2 = sub_21D9A5C04();
      v4 = *(v1 + 88);
      *(v1 + 88) = v2;
      v5 = *(v1 + 96);
      *(v1 + 96) = 0;
      sub_21D9B10D8(v4, v5);
    }
  }

  return v2;
}

id sub_21D9A5C04()
{
  v24[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v1 = [*(v0 + 40) saveRequest];
  v2 = [v1 store];

  v3 = [*(v0 + 40) objectID];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
  v24[0] = 0;
  v5 = [v4 fetchRemindersCountWithParentReminderID:v3 error:v24];
  if (v5)
  {
    v6 = v5;
    v7 = v24[0];
    v8 = [v6 integerValue];
  }

  else
  {
    v9 = v24[0];
    v10 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE64808);
    v12 = v10;
    v13 = v3;
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v16 = 136315394;
      swift_getErrorValue();
      v18 = sub_21DBFC74C();
      v20 = sub_21D0CDFB4(v18, v19, v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v13;
      v21 = v13;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Failed to fetch subtasks count when loading subtasks count in reminder detail {error: %s, parentReminderID: %@}", v16, 0x16u);
      sub_21D0CF7E0(v17, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223D46520](v23, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

id TTRReminderDetailInteractor.effectiveList.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = v2[20];
  v8 = v2[14];
  v4 = v2[8];
  *a1 = v3;
  a1[1] = v8;
  a1[2] = v4;
  v5 = v4;
  v6 = v3;

  return v8;
}

double TTRReminderDetailInteractor.pendingMoveTarget.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = 1;
    v5 = *(v2 + 160);
  }

  else
  {
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = a1;
      v7 = v5;
      a1 = v6;
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }
  }

  v8 = *(v2 + 120);
  v9 = *(v2 + 128);
  v10 = *(v2 + 136);
  v11 = *(v2 + 144);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = *(v2 + 152);
  v12 = v3;

  return sub_21D575E44(v8, v9, v10, v11);
}

id TTRReminderDetailInteractor.pendingMoveContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 48);
  v12 = *(v2 + 112);
  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  v7 = *(v2 + 168);
  v11 = *(v2 + 160);
  *a1 = v3;
  *(a1 + 16) = v12;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(v2 + 152);
  *(a1 + 64) = v11;
  *(a1 + 72) = v7;
  sub_21D0D0E78(v3, *(&v3 + 1));
  v8 = v12;
  sub_21D575E44(*(&v12 + 1), v4, v5, v6);
  v9 = v7;

  return v11;
}

uint64_t TTRReminderDetailInteractor.hasUncommittedChanges.getter()
{

  v1 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v1)
  {
    return 1;
  }

  return sub_21D9B0EC0(v0);
}

uint64_t TTRReminderDetailInteractor.authorizationRelatedPropertyChanges.getter()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v3 displayDate];
    swift_beginAccess();
    v5 = [*(v0 + 40) displayDate];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v29 = 0;
        goto LABEL_10;
      }

      sub_21D0D8CF0(0, &qword_27CE5CC20, 0x277D44600);
      v29 = sub_21DBFB63C();
    }

    else
    {
      if (!v5)
      {
        v29 = 1;
LABEL_11:
        v8 = [v3 alarms];
        if (v8)
        {
          v9 = v8;
          sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
          sub_21DBFA5EC();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64838, &unk_21DC34988);
        sub_21D0D8CF0(0, &qword_280D17828, 0x277D44588);
        sub_21D0D0F1C(&qword_280D178B0, &qword_27CE64838, &unk_21DC34988, MEMORY[0x277D83970]);
        sub_21D9B10EC();
        v10 = sub_21DBFA42C();

        v11 = [*(v2 + 40) alarms];
        if (v11)
        {
          v12 = v11;
          sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
          sub_21DBFA5EC();
        }

        v13 = sub_21DBFA42C();

        v14 = sub_21D32283C(v10, v13);

        v7 = MEMORY[0x277D84FA0];
        if ((v29 & 1) == 0)
        {
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v15 = sub_21DBFC82C();
          v16 = -1 << *(v7 + 32);
          v17 = v15 & ~v16;
          if ((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = *(*(v7 + 48) + v17);
              if (v19 <= 2 && v19 != 1 && v19 != 2)
              {
                break;
              }

              v20 = sub_21DBFC64C();

              if (v20)
              {
                goto LABEL_24;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            v7 = MEMORY[0x277D84FA0];
            if ((v14 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_25;
          }

LABEL_23:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21D9AF740(0, v17, isUniquelyReferenced_nonNull_native);
        }

LABEL_24:
        if ((v14 & 1) == 0)
        {
LABEL_28:
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v22 = sub_21DBFC82C();
          v23 = -1 << *(v7 + 32);
          v24 = v22 & ~v23;
          if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
LABEL_35:
            v27 = swift_isUniquelyReferenced_nonNull_native();
            sub_21D9AF740(1u, v24, v27);

            return v7;
          }

          v25 = ~v23;
          while (*(*(v7 + 48) + v24) > 2u || !*(*(v7 + 48) + v24) || *(*(v7 + 48) + v24) == 2)
          {
            v26 = sub_21DBFC64C();

            if (v26)
            {
              goto LABEL_25;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_25:

        return v7;
      }

      v29 = 0;
    }

    v4 = v6;
LABEL_10:

    goto LABEL_11;
  }

  return MEMORY[0x277D84FA0];
}

void sub_21D9A675C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 trigger];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v3 = 0;
    }
  }

  *a2 = v3;
}

void TTRReminderDetailInteractor.dueDateSource.getter(void *a1@<X8>)
{
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    if (*(v1 + 208))
    {
      v2 = 0;
    }

    else
    {
      v3 = a1;
      v4 = v2;
      a1 = v3;
    }

    *a1 = v2;
  }

  else
  {
    *a1 = v2;

    sub_21D568328(v2);
  }
}

uint64_t TTRReminderDetailInteractor.update(parentList:)(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v3);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(title:)(NSAttributedString title)
{

  v2 = sub_21D9CA3E0(title.super.isa, 0, 1);
  if (v2)
  {
    v3 = v2;
    swift_retain_n();
    sub_21D182E74(sub_21D23298C, v3);
  }

  sub_21D9A6950(1);
}

double sub_21D9A6950(char a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(*(v1 + 56) + 16);
    v7 = *(v4 + 8);
    v8 = v6;
    v7(v6, sub_21D9B1E38, v1, a1 & 1, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(completed:)(Swift::Bool completed)
{
  v1 = completed;

  TTRReminderEditor.edit(completed:trackEditedUsing:)(v1, 0);

  sub_21D9A6950(1);
}

double TTRReminderDetailInteractor.update(priorityLevel:)(uint64_t a1)
{

  v1 = REMReminderDefaultPriorityForPriorityLevel();
  TTRReminderEditor.edit(priority:)(v1);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(isFlagged:)(Swift::Bool isFlagged)
{

  TTRReminderEditor.edit(isFlagged:)(isFlagged);

  sub_21D9A6950(1);
}

double TTRReminderDetailInteractor.update(dueDateComponents:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  LOBYTE(a1) = sub_21D9C50E0(a1, v6);

  sub_21D0CF7E0(v6, &unk_27CE60DA0, &unk_21DC0C0C0);
  if ((a1 & 1) != 0 && (*(v2 + 208) & 1) == 0)
  {
    *(v2 + 208) = 1;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;

    sub_21D182E74(sub_21D9B1154, v9);
  }

  return sub_21D9A6950(1);
}

double TTRReminderDetailInteractor.update(dueDateDeltaAlertInterval:)(void *a1)
{

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(a1);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(prefersUrgentPresentationStyleForDateAlarms:)(Swift::Bool prefersUrgentPresentationStyleForDateAlarms)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v4 + 16);

  LOBYTE(v5) = [v5 prefersUrgentPresentationStyleForDateAlarms];
  [*(v4 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_21D182E74(sub_21D9B1160, v6);

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(recurrenceRules:shouldCopyRecurrenceEnd:)(Swift::OpaquePointer_optional recurrenceRules, Swift::Bool shouldCopyRecurrenceEnd)
{
  is_nil = recurrenceRules.is_nil;
  rawValue = recurrenceRules.value._rawValue;
  if (*(v2 + 176) == 1)
  {
    swift_beginAccess();
    if (([*(v2 + 40) isRecurrent] & 1) == 0 && rawValue && rawValue[2] && (objc_msgSend(*(v2 + 40), sel_isCompleted) & 1) == 0)
    {

      TTRReminderEditor.editDueDateComponentsByPromotingAlternativeDueDateForCalendarIfAvailable()();
    }
  }

  v6.is_nil = is_nil;
  v6.value._rawValue = rawValue;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v6, v5);

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.updateRecurrenceEndToDefault()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for TTRRecurrenceEndModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  swift_beginAccess();
  v16 = [*(v1 + 40) recurrenceRules];
  if (v16)
  {
    v17 = v16;
    v35 = v6;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v18 = sub_21DBFA5EC();

    if (v18 >> 62)
    {
      if (sub_21DBFBD7C())
      {
LABEL_4:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x223D44740](0, v18);
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            swift_once();
LABEL_10:
            v23 = sub_21DBF84BC();
            __swift_project_value_buffer(v23, qword_27CE64808);

            v24 = sub_21DBF84AC();
            v25 = sub_21DBFAECC();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              *v26 = 138412290;
              v28 = [*(v1 + 40) objectID];
              *(v26 + 4) = v28;
              *v27 = v28;
              _os_log_impl(&dword_21D0C9000, v24, v25, "Missing dueDate -- Failed to set endRecurrence to default {reminder.objectID: %@}", v26, 0xCu);
              sub_21D0CF7E0(v27, &unk_27CE60070, &unk_21DC09550);
              MEMORY[0x223D46520](v27, -1, -1);
              MEMORY[0x223D46520](v26, -1, -1);
            }

            return;
          }

          v19 = *(v18 + 32);
        }

        v17 = v19;

        v20 = [*(v1 + 40) dueDateComponents];
        if (v20)
        {
          v21 = v20;
          sub_21DBF4EFC();

          (*(v10 + 16))(v12, v15, v9);
          v22 = v17;
          TTRRecurrenceEndModel.init(_:recurrenceRule:)(v12, v22, v8);
          sub_21D9B1D60(v8, v4, type metadata accessor for TTRRecurrenceEndModel);
          (*(v35 + 56))(v4, 0, 1, v5);

          TTRReminderEditor.edit(recurrenceEnd:)(v4);

          sub_21D9A6950(1);

          sub_21D0CF7E0(v4, &unk_27CE62610, &unk_21DC0DF00);
          sub_21D9B1DC8(v8, type metadata accessor for TTRRecurrenceEndModel);
          (*(v10 + 8))(v15, v9);
          return;
        }

        if (qword_27CE56F30 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_27CE64808);

  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAECC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = [*(v1 + 40) objectID];
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Missing recurrenceRule -- Failed to set endRecurrence to default {reminder.objectID: %@}", v32, 0xCu);
    sub_21D0CF7E0(v33, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(notes:)(NSAttributedString_optional notes)
{
  isa = notes.value.super.isa;

  v2 = sub_21D9C7928(isa);
  if (v2)
  {
    v3 = v2;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.removeAllAssignments()()
{

  TTRReminderEditor.removeAllAssignments()();

  sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(assignee:)(void *a1)
{
  v3 = *(v1 + 72);
  v4 = v3[20];
  v5 = v3[14];
  v6 = v3[8];
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v21);

  sub_21D0D3954(v21, &v16, &qword_27CE59DC0, &qword_21DC0FBF0);
  v10 = v19;
  if (v19)
  {
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v16, v19);
    v12 = *(v11 + 80);

    v13 = v12(v10, v11);
    if (v13)
    {
      v14 = v13;
      v10 = [v13 objectID];

      __swift_destroy_boxed_opaque_existential_0(&v16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v10 = 0;
    }
  }

  else
  {

    sub_21D0CF7E0(&v16, &qword_27CE59DC0, &qword_21DC0FBF0);
  }

  TTRReminderEditor.addAssignment(assigneeID:originatorID:)(a1, v10);

  sub_21D9A6950(1);
  return sub_21D0CF7E0(v21, &qword_27CE59DC0, &qword_21DC0FBF0);
}

double TTRReminderDetailInteractor.update(selectedSectionID:originalSectionID:)(void **a1, id *a2)
{
  v2 = *a1;
  v6[0] = *a2;
  v3 = v6[0];
  v6[1] = v2;
  v6[2] = 0;
  v6[3] = 0;
  v7 = 0;
  v4 = v2;

  sub_21D15751C(v6[0]);
  sub_21DB4C2F8(v6);

  sub_21D157878(v3);
  sub_21D157878(v2);

  return result;
}

double TTRReminderDetailInteractor.update(sectionDisplayName:isFromSuggestion:originalSectionID:)(void *a1, void *a2, char a3, id *a4)
{
  v6[0] = *a4;
  v4 = v6[0];
  v6[1] = 1;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a3;

  sub_21D15751C(v6[0]);
  sub_21DBF8E0C();
  sub_21DB4C2F8(v6);
  sub_21D157878(v4);
  sub_21D157878(1);

  return result;
}

void TTRReminderDetailInteractor.addSection(withDisplayName:originalSectionID:isFromSuggestion:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = [*(v4 + 40) listChangeItem];
  if (v9)
  {
    v10 = v9;
    v23 = a2;
    v11 = [v9 objectID];
    v12 = [v11 entityName];

    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = [objc_opt_self() cdEntityName];
    v17 = sub_21DBFA16C();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
    }

    else
    {
      v21 = sub_21DBFC64C();

      if ((v21 & 1) == 0)
      {
        v24 = v8;
        sub_21D9A8014(a1, v23, &v24, a4 & 1);

        return;
      }
    }

    v22 = [v10 objectID];
    v24 = v8;
    sub_21D9A7AA0(v22, a1, v23, &v24);
  }
}

void sub_21D9A7AA0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v51 = *v4;
  v7 = sub_21DBF619C();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  swift_beginAccess();
  v11 = [v4[5] saveRequest];
  v12 = [v11 store];
  v54 = 0;
  v13 = [v12 fetchTemplateWithObjectID:a1 error:&v54];
  if (v13)
  {
    v14 = v13;
    v50 = v10;
    v15 = v54;
    v16 = [v11 updateTemplate_];
    v17 = [v16 sectionsContextChangeItem];
    if (v17)
    {
      v18 = v17;
      v47 = v16;
      v48 = v12;
      v49 = v4;
      v19 = sub_21DBFA12C();
      v46 = [v11 addTemplateSectionWithDisplayName:v19 toTemplateSectionContextChangeItem:v18];

      v45 = v11;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      sub_21DBF62DC();
      sub_21DBF62CC();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
      v21 = &v9[v20[12]];
      v22 = v20[16];
      v23 = &v9[v20[20]];
      v24 = *MEMORY[0x277D44E60];
      v25 = sub_21DBF613C();
      (*(*(v25 - 8) + 104))(v9, v24, v25);
      *v21 = TTRUserDefaults.activitySessionId.getter();
      v21[1] = v26;
      TTRUserDefaults.activitySessionBeginTime.getter(&v9[v22]);
      v54 = sub_21DBFC8EC();
      v55 = v27;
      MEMORY[0x223D42AA0](0x6C706D6554202D20, 0xEB00000000657461);
      v28 = v55;
      *v23 = v54;
      *(v23 + 1) = v28;
      v29 = v52;
      (*(v52 + 104))(v9, *MEMORY[0x277D44E98], v7);
      sub_21DBF62BC();

      (*(v29 + 8))(v9, v7);
      v30 = v46;
      v31 = [v46 objectID];
      v53 = v50;
      v54 = v31;
      sub_21D9AA810(v14, &v54, &v53, v32);
    }

    else
    {
    }
  }

  else
  {
    v33 = v54;
    v34 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE64808);
    v36 = v34;
    v37 = sub_21DBF84AC();
    v38 = sub_21DBFAEBC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_21DBFC75C();
      v43 = sub_21D0CDFB4(v41, v42, &v54);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_21D0C9000, v37, v38, "Unable to fetch Template {error: %s}", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x223D46520](v40, -1, -1);
      MEMORY[0x223D46520](v39, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D9A8014(uint64_t a1, uint64_t a2, void **a3, int a4)
{
  v9 = sub_21DBF619C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  swift_beginAccess();
  v14 = [*(v4 + 40) listChangeItem];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 sectionsContextChangeItem];
    if (v16)
    {
      v45 = a4;
      v46 = v13;
      v47 = v4;
      v17 = v16;
      v18 = [*(v4 + 40) saveRequest];
      v19 = sub_21DBFA12C();
      v44 = v17;
      v43 = [v18 addListSectionWithDisplayName:v19 toListSectionContextChangeItem:v17];

      v20 = [v15 groceryContextChangeItem];
      if (v20 && (v21 = v20, v22 = [v20 shouldCategorizeGroceryItems], v21, v22))
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_21DBFBEEC();
        v23 = sub_21DBFC8EC();
        v25 = v24;

        v49 = v23;
        v50 = v25;
        v26 = 0x207473694C202D20;
        v27 = 0xEF797265636F7247;
      }

      else
      {
        v49 = sub_21DBFC8EC();
        v50 = v28;
        v26 = 0x7473694C202D20;
        v27 = 0xE700000000000000;
      }

      MEMORY[0x223D42AA0](v26, v27);
      v41 = v50;
      v42 = v49;
      v40[1] = a1;
      v40[2] = a2;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      sub_21DBF62DC();
      sub_21DBF62CC();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
      v30 = &v12[v29[12]];
      v31 = v29[16];
      v32 = &v12[v29[20]];
      v33 = *MEMORY[0x277D44E60];
      v34 = sub_21DBF613C();
      (*(*(v34 - 8) + 104))(v12, v33, v34);
      *v30 = TTRUserDefaults.activitySessionId.getter();
      v30[1] = v35;
      TTRUserDefaults.activitySessionBeginTime.getter(&v12[v31]);
      v36 = v41;
      *v32 = v42;
      *(v32 + 1) = v36;
      (*(v10 + 104))(v12, *MEMORY[0x277D44E98], v9);
      sub_21DBF62BC();

      (*(v10 + 8))(v12, v9);
      v37 = v43;
      if (v45)
      {
        v38 = sub_21DBFA12C();
        [v37 setCanonicalName_];
      }

      v39 = [v37 objectID];
      v48 = v46;
      v49 = v39;
      sub_21D9AAFE8(v15, &v49, &v48);
    }
  }
}

double TTRReminderDetailInteractor.remove(subtask:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!*(v2 + 96))
  {
    if (!v4)
    {
      v4 = MEMORY[0x277D84F90];
      *(v2 + 88) = MEMORY[0x277D84F90];
      *(v2 + 96) = 1;
      v8 = 0;
      v9 = 0;
      goto LABEL_6;
    }

LABEL_5:
    sub_21D9A5668(&v18);
    v4 = v18;
    v6 = *(v2 + 88);
    *(v2 + 88) = v18;
    v7 = *(v2 + 96);
    *(v2 + 96) = 1;
    sub_21DBF8E0C();
    v8 = v6;
    v9 = v7;
LABEL_6:
    v5.n128_f64[0] = sub_21D9B10D8(v8, v9);
    goto LABEL_7;
  }

  if (*(v2 + 96) != 1)
  {
    goto LABEL_5;
  }

  sub_21DBF8E0C();
LABEL_7:
  if (v4 >> 62)
  {
LABEL_27:
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (v10 != v11)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v13 = v11;
      v14 = MEMORY[0x223D44740](v5);
      swift_unknownObjectRelease();
      v11 = v13;
      if (v14 == a1)
      {
LABEL_18:
        v18 = v4;

        v15 = *(v2 + 88);
        *(v2 + 88) = v18;
        v16 = *(v2 + 96);
        *(v2 + 96) = 1;
        sub_21D9B10D8(v15, v16);

        TTRReminderEditor.remove(subtask:)(a1);

        return sub_21D9A6950(1);
      }
    }

    else
    {
      if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (*(v4 + 8 * v11 + 32) == a1)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_26;
    }
  }

  return result;
}

double TTRReminderDetailInteractor.remove(attachment:)(void *a1)
{
  v3 = *(*(v1 + 56) + 16);

  v4 = [v3 attachmentContext];
  if (v4)
  {
    v5 = v4;
    [v4 removeAttachment_];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = a1;
    sub_21D182E74(sub_21D228D5C, v6);
  }

  return sub_21D9A6950(1);
}

double TTRReminderDetailInteractor.move(attachment:siblingTo:isAfter:)(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = (a3 & 1);
  if (a2)
  {
    v4 = a2;
    v5 = a3;
  }

  else
  {
    v5 = 2;
  }

  v8 = v4;
  v9 = v5;
  v6 = a2;

  TTRReminderEditor.move(attachment:position:)(a1, &v8);

  sub_21D157478(v8, v9);

  return sub_21D9A6950(1);
}

double sub_21D9A87B4(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  return sub_21D9A6950(1);
}

void TTRReminderDetailInteractor.newSubtask(at:didCreateSubtaskID:)(uint64_t a1, void (*a2)(void))
{
  v5 = v2;
  v8 = v2[11];
  if (!*(v2 + 96))
  {
    if (!v8)
    {
      v8 = MEMORY[0x277D84F90];
      v2[11] = MEMORY[0x277D84F90];
      *(v2 + 96) = 1;
      v10 = 0;
      v11 = 0;
LABEL_7:
      sub_21D9B10D8(v10, v11);
      v9 = v8 >> 62;
      if (!a1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_21D9A5668(&v22);
    v8 = v22;
    v2 = v2[11];
    v5[11] = v22;
    v3 = *(v5 + 96);
    *(v5 + 96) = 1;
    sub_21DBF8E0C();
    v10 = v2;
    v11 = v3;
    goto LABEL_7;
  }

  if (*(v2 + 96) != 1)
  {
    goto LABEL_6;
  }

  sub_21DBF8E0C();
  v9 = v8 >> 62;
  if (!a1)
  {
LABEL_4:
    v3 = 0;
    v4 = 2;
    goto LABEL_16;
  }

LABEL_8:
  if (!v9)
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= 1)
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = sub_21DBFBD7C();
  if (v12 < 1)
  {
    goto LABEL_31;
  }

LABEL_10:
  v13 = a1 - 1;
  if (a1 < 1 || v12 < a1)
  {

    if (qword_27CE56F30 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D44740](v13, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
    {
      __break(1u);
      return;
    }

    v14 = *(v8 + 8 * v13 + 32);
  }

  v3 = v14;
  v4 = 1;
LABEL_16:
  v22 = v3;
  v23 = v4;

  sub_21D157850(v3, v4);
  v2 = sub_21D9D6DF4(0, 0xE000000000000000, &v22);

  sub_21D157478(v22, v23);
  if (v2)
  {
    v22 = v8;
    if (!v9)
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
LABEL_19:
        v21 = v2;
        sub_21DBD15A8(a1, a1, v21);

        v15 = v5[11];
        v5[11] = v22;
        v16 = *(v5 + 96);
        *(v5 + 96) = 1;
        v17 = [v21 objectID:sub_21D9B10D8(v15];
        a2();

        sub_21D9A6950(1);
        sub_21D157478(v3, v4);
LABEL_23:

        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (sub_21DBFBD7C() >= a1)
    {
      goto LABEL_19;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_21:
    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE64808);
    v21 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();
    if (os_log_type_enabled(v21, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&dword_21D0C9000, v21, v19, "Invalid index %ld for newSubtask", v20, 0xCu);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_23;
  }

  sub_21D157478(v3, v4);
}

uint64_t TTRReminderDetailInteractor.update(title:for:)(void *a1, void *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_21D0D3954(v10, v9, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 16) = a2;
  sub_21D0D3954(v9, v4 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v4 + 64) = 0;
  v5 = [a2 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v10, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v9, &unk_27CE60D80, &unk_21DC093F0);
  *(v4 + 72) = v5;
  v6 = sub_21D9CA3E0(a1, 0, 1);
  if (v6)
  {
    v7 = v6;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v7);
  }

  sub_21D9A6950(1);
}

double sub_21D9A8D08(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  return sub_21D9A6950(1);
}

double TTRReminderDetailInteractor.update(edits:)(void (*a1)(uint64_t))
{

  a1(v2);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.registerUndo(byDraining:)(NSUndoManager *byDraining)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = v3;
  v6 = v4;
  v7 = [v6 saveRequest];
  v8 = [v7 store];

  if ([(NSUndoManager *)byDraining canUndo])
  {
    v9 = swift_allocObject();
    *(v9 + 16) = byDraining;
    *(v9 + 24) = v8;
    sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
    v10 = byDraining;
    v11 = v8;
    sub_21DBFAE8C();
  }
}

void TTRReminderDetailInteractor.save()(void *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v1 + 40);
  v8 = [v7 titleAsString];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = sub_21DBFA16C();
  v12 = v11;

  v51[0] = v10;
  v51[1] = v12;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v13 = sub_21DBFBB3C();
  v15 = v14;
  (*(v4 + 8))(v6, v3);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_5:
    v17 = *(v2 + 72);
    v18 = v17[20];
    v19 = v17[14];
    v20 = v17[8];
    v52[0] = v18;
    v52[1] = v19;
    v52[2] = v20;
    v21 = v20;
    v22 = v18;
    v23 = v19;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v51);

    _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(v51);
    sub_21D0CF7E0(v51, &qword_27CE59DC0, &qword_21DC0FBF0);
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_21DBFA12C();

    v26 = [v24 initWithString_];

    v27 = sub_21D9CA3E0(v26, 0, 1);
    if (v27)
    {
      v28 = v27;
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v28);
    }

    sub_21D9A6950(1);
  }

  v29 = *(v2 + 72);

  v31 = sub_21DB4DCD4(v30, v29, v2);

  v32 = *(v2 + 72);
  v33 = *(v32 + 160);
  if (v33)
  {
    v34 = 1;
    v35 = *(v32 + 160);
  }

  else
  {
    v35 = *(v32 + 112);
    if (v35)
    {
      v36 = v35;
      v34 = 0;
    }

    else
    {
      v34 = -1;
    }
  }

  v37 = *(v32 + 120);
  v38 = *(v32 + 128);
  v39 = *(v32 + 136);
  v40 = *(v32 + 144);
  v41 = *(v32 + 152);
  v42 = v31;
  sub_21D575E44(v37, v38, v39, v40);
  sub_21D575E44(v37, v38, v39, v40);
  v43 = v33;
  sub_21D157864(v35, v34);
  sub_21D575DF4(v37, v38, v39, v40);
  if (v40 != 1)
  {
    if (v38 == 1)
    {
      if (v40)
      {
        v51[0] = v37;
        swift_bridgeObjectRetain_n();
        sub_21D15751C(v37);
        TTRReminderDetailInteractor.addSection(withDisplayName:originalSectionID:isFromSuggestion:)(v39, v40, v51, v41 & 1);
        swift_bridgeObjectRelease_n();
        sub_21D575DF4(v37, 1, v39, v40);
        sub_21D157878(v37);
      }

      else
      {
        sub_21D575DF4(v37, 1, v39, 0);
      }
    }

    else
    {
      v51[0] = v38;
      v52[0] = v37;
      sub_21D15751C(v38);
      sub_21D15751C(v37);
      sub_21D9A9454(v51, v52);
      sub_21D575DF4(v37, v38, v39, v40);
      sub_21D157878(v52[0]);
      sub_21D157878(v38);
    }
  }

  *(swift_allocObject() + 16) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();
  v44 = v42;
  v45 = sub_21DBF911C();
  v46 = [v44 saveRequest];
  v47 = [v46 store];

  v48 = [v47 optimisticallyMaterializeReminderChangeItem_];
  v49 = v50;
  *v50 = v48;
  v49[1] = v45;
}

void sub_21D9A9454(void **a1, void **a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = [*(v2 + 40) listChangeItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectID];
    v8 = [v7 entityName];

    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = [objc_opt_self() cdEntityName];
    v13 = sub_21DBFA16C();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
    }

    else
    {
      v17 = sub_21DBFC64C();

      if ((v17 & 1) == 0)
      {
        v36 = v4;
        v37[0] = v3;
        sub_21D9AAFE8(v6, v37, &v36);

        return;
      }
    }

    v18 = [*(v2 + 40) saveRequest];
    v19 = [v18 store];

    v20 = [v6 objectID];
    v37[0] = 0;
    v21 = [v19 fetchTemplateWithObjectID:v20 error:v37];

    v22 = v37[0];
    if (v21)
    {
      v36 = v4;
      v37[0] = v3;
      v23 = v22;
      sub_21D9AA810(v21, v37, &v36, v24);
    }

    else
    {
      v25 = v37[0];
      v26 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56F30 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE64808);
      v28 = v26;
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAEBC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37[0] = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = sub_21DBFC75C();
        v35 = sub_21D0CDFB4(v33, v34, v37);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_21D0C9000, v29, v30, "Unable to fetch Template {error: %s}", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x223D46520](v32, -1, -1);
        MEMORY[0x223D46520](v31, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_21D9A9800(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v8 = sub_21DBFB12C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D1D1AB4;
  *(v9 + 24) = v6;
  v11[4] = sub_21D9B187C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D11E5E4;
  v11[3] = &block_descriptor_126;
  v10 = _Block_copy(v11);

  [v7 saveWithQueue:v8 completion:v10];
  _Block_release(v10);
}

void sub_21D9A9958(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE64808);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Error saving reminder: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE64808);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAE9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Reminder saved!", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    a2(0, 0);
  }
}

Swift::Void __swiftcall TTRReminderDetailInteractor.discardChanges()()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    swift_beginAccess();
    v4 = *(v0 + 40);
    sub_21D9B1170(v1, v2, v3);
    v5 = v4;
    v6 = [v5 saveRequest];
    v7 = [v6 store];

    v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v8 setSaveIsNoopIfNoChangedKeys_];

    sub_21D25AAE4(v8, v1, v2, v3);
    v12 = *(v0 + 72);
    v14 = v13;

    sub_21DB4CD48(0);
    v15 = *(v12 + 120);
    v16 = *(v12 + 128);
    v17 = *(v12 + 136);
    v18 = *(v12 + 144);
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    *(v12 + 144) = 1;
    *(v12 + 152) = 0;
    sub_21D575DF4(v15, v16, v17, v18);
    v19 = *(v12 + 160);
    *(v12 + 160) = 0;

    swift_beginAccess();
    [*(v0 + 32) removeAllActions];
    sub_21D9A497C(v14, 0x4364726163736964, 0xEE007365676E6168);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE64808);
    oslog = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v10, "TTRReminderDetailInteractor#discardChanges: missing initialReminderSnapshot", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }
}

void TTRReminderDetailInteractor.applySavedResult(_:)(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v3 = *(v1 + 40);
    v4 = v2;
    v5 = v3;
    v6 = [v5 saveRequest];
    v7 = [v6 store];

    v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v8 setSaveIsNoopIfNoChangedKeys_];
    v9 = [v8 updateReminder_];
    v10 = *(v1 + 72);

    v11 = v1;
    sub_21DB4CD48(0);
    v12 = *(v10 + 120);
    v13 = *(v10 + 128);
    v14 = *(v10 + 136);
    v15 = *(v10 + 144);
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    *(v10 + 136) = 0;
    *(v10 + 144) = 1;
    *(v10 + 152) = 0;
    sub_21D575DF4(v12, v13, v14, v15);
    v16 = *(v10 + 160);
    *(v10 + 160) = 0;

    sub_21DBFBEEC();
    sub_21DBFC8EC();

    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC72380);
    v17 = objc_allocWithZone(TTRUndoManager);
    v18 = sub_21DBFA12C();

    v19 = [v17 initWithDebugIdentifier_];

    swift_beginAccess();
    v20 = *(v11 + 32);
    *(v11 + 32) = v19;
    v21 = v19;

    sub_21D550F48(v21, v11, sub_21D9AA3B0, 0);
    sub_21DBF902C();
    swift_allocObject();
    *(v11 + 64) = sub_21DBF903C();

    sub_21D9A497C(v9, 0xD000000000000010, 0x800000021DC723A0);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE64808);
    oslog = sub_21DBF84AC();
    v23 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v23, "TTRReminderDetailInteractor#discardChanges: missing optimistic reminder", v24, 2u);
      MEMORY[0x223D46520](v24, -1, -1);
    }
  }
}

double sub_21D9AA3B0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = *(*(a1 + 56) + 16);
    v6 = *(v3 + 8);
    v7 = v5;
    v6(v5, sub_21D9B1E38, a1, 1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21D9AA478(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [v3 removeObserver_];

  swift_unknownObjectRelease();
  v4 = [v2 defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1 + 6, a1[9]);
  [v4 removeObserver_];

  swift_unknownObjectRelease();
  return result;
}

void sub_21D9AA568()
{
  swift_beginAccess();
  v1 = sub_21D25ACE4(*(v0 + 40));
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  *(v0 + 184) = v1;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_21D6396C0(v2, v3, v4);
}

uint64_t sub_21D9AA74C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!*(a1 + 96))
  {
    if (!v2)
    {
      v2 = MEMORY[0x277D84F90];
      *(a1 + 88) = MEMORY[0x277D84F90];
      *(a1 + 96) = 1;
      v5 = 0;
      v6 = 0;
      goto LABEL_6;
    }

LABEL_5:
    sub_21D9A5668(&v9);
    v2 = v9;
    v3 = *(a1 + 88);
    *(a1 + 88) = v9;
    v4 = *(a1 + 96);
    *(a1 + 96) = 1;
    sub_21DBF8E0C();
    v5 = v3;
    v6 = v4;
LABEL_6:
    sub_21D9B10D8(v5, v6);
    goto LABEL_7;
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_5;
  }

  sub_21DBF8E0C();
LABEL_7:
  v9 = v2;
  v7 = TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter();

  return v7;
}

void sub_21D9AA810(uint64_t a1, void **a2, void **a3, __n128 a4)
{
  v5 = v4;
  v82 = *MEMORY[0x277D85DE8];
  v9 = sub_21DBF6D7C();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a2;
  v11 = *a3;
  swift_beginAccess();
  v12 = [*(v5 + 40) saveRequest];
  swift_beginAccess();
  v13 = *(v5 + 32);
  v14 = type metadata accessor for TTRBasicUndoContext();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(&v76 + 1) = v14;
  *&v77 = &protocol witness table for TTRBasicUndoContext;
  *&v75 = v15;
  sub_21D0D3954(&v75, &v79, &unk_27CE60D80, &unk_21DC093F0);
  v16 = v13;
  v17 = [v12 updateTemplate_];
  sub_21D0CF7E0(&v75, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRTemplateEditor();
  v18 = swift_allocObject();
  v19 = 0;
  *(v18 + 16) = v17;
  v20 = v80;
  *(v18 + 24) = v79;
  *(v18 + 40) = v20;
  *(v18 + 56) = v81;
  *(v18 + 64) = 0;
  if (v11 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64848, &qword_21DC34B88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v22 = *(v5 + 40);
    v23 = v11;
    *(inited + 32) = [v22 remObjectID];
    *(inited + 40) = v11;
    v19 = sub_21D1778CC(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE64850, &qword_21DC34B90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v24 = swift_initStackObject();
  v70 = xmmword_21DC09CF0;
  *(v24 + 16) = xmmword_21DC09CF0;
  *(v24 + 32) = [*(v5 + 40) remObjectID];
  sub_21D1CE198(v24);
  v26 = v25;
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v75 = v74;
  TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v26, &v75, v19);

  v27 = *(v5 + 160);
  v77 = *(v5 + 144);
  v78 = v27;
  v28 = *(v5 + 128);
  v75 = *(v5 + 112);
  v76 = v28;
  v29 = v18;
  v30 = v75;
  if (v75)
  {
    v69 = v29;
    v31 = v77;
    v68 = WORD4(v77);
    v32 = *(&v78 + 1);
    v67 = v78;
    v33 = v12;
    v34 = *(&v75 + 1);
    v35 = v76;
    v36 = v31;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v74 = v33;
    v37 = [v33 store];
    v38 = [*(v5 + 40) remObjectID];
    *&v79 = 0;
    v39 = [v37 fetchReminderWithObjectID:v38 error:&v79];

    v40 = v79;
    if (v39)
    {
      v41 = swift_initStackObject();
      *(v41 + 16) = v70;
      *(v41 + 32) = v39;
      *&v79 = MEMORY[0x277D84F90];
      v42 = v40;
      v64 = v36;
      v66 = v32;
      sub_21DBF8E0C();
      v65 = v30;
      sub_21DBF8E0C();
      *&v70 = v34;
      sub_21DBF8E0C();
      v43 = v39;
      sub_21D18E718(0, 1, 0);
      v44 = v79;
      if ((v41 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223D44740](0, v41);
      }

      else
      {
        v45 = *(v41 + 32);
      }

      v46 = v45;
      v47 = v71;

      v48 = [v46 remObjectID];
      sub_21DBFADFC();

      [v46 isCompleted];
      sub_21DBF6D4C();

      v50 = v44[2];
      v49 = v44[3];
      v51 = v66;
      if (v50 >= v49 >> 1)
      {
        sub_21D18E718((v49 > 1), v50 + 1, 1);
        v44 = v79;
      }

      sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
      v44[2] = v50 + 1;
      (*(v72 + 32))(v44 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v50, v47, v73);
      v79 = xmmword_21DC08D00;
      *&v80 = 0;
      v52 = sub_21D39D1B0(v64, v68, v67, v51, v65, v70, v44, 0, &v79);
      LOBYTE(v79) = 1;
      sub_21D866814(v52);

      sub_21D0CF7E0(&v75, &qword_27CE59DD8, &qword_21DC0D110);
      v12 = v74;
    }

    else
    {
      v53 = v79;
      v54 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56F30 != -1)
      {
        swift_once();
      }

      v55 = sub_21DBF84BC();
      __swift_project_value_buffer(v55, qword_27CE64808);
      v56 = v54;
      v57 = sub_21DBF84AC();
      v58 = sub_21DBFAEBC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v79 = v60;
        *v59 = 136315138;
        swift_getErrorValue();
        v61 = sub_21DBFC75C();
        v63 = sub_21D0CDFB4(v61, v62, &v79);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_21D0C9000, v57, v58, "Unable to fetch reminders {error: %s}", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x223D46520](v60, -1, -1);
        MEMORY[0x223D46520](v59, -1, -1);

        sub_21D0CF7E0(&v75, &qword_27CE59DD8, &qword_21DC0D110);
      }

      else
      {

        sub_21D0CF7E0(&v75, &qword_27CE59DD8, &qword_21DC0D110);
      }

      v12 = v74;
    }
  }

  sub_21D9A6950(1);
}

uint64_t sub_21D9AAFE8(void *a1, void **a2, void **a3)
{
  v5 = *a2;
  v6 = *a3;
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = a1;
  v9 = v7;
  v10 = sub_21D9B0C90(v8, v7);

  v11 = 0;
  if (v6 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64848, &qword_21DC34B88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    swift_beginAccess();
    v13 = *(v3 + 40);
    v14 = v6;
    *(inited + 32) = [v13 remObjectID];
    *(inited + 40) = v6;
    v11 = sub_21D1778CC(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE64850, &qword_21DC34B90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_21DC09CF0;
  swift_beginAccess();
  *(v15 + 32) = [*(v3 + 40) remObjectID];
  sub_21D1CE198(v15);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = v5;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v17, &v25, v11);

  v18 = *(v3 + 40);
  v19 = *(v10 + 16);
  LOBYTE(v25) = 0;
  v20 = v18;
  v21 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v20, MEMORY[0x277D84F90], v19, 0, 0, &v25);
  v25 = 1;
  v26 = 2;
  sub_21D1BF7A0(v21, v22, &v25);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC09CF0;
  *(v23 + 32) = [v20 objectID];
  sub_21D1BF9F4(v23);

  sub_21D9A6950(1);
}

uint64_t sub_21D9AB294(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 208);
    if (v5 != (a3 & 1))
    {
      *(result + 208) = a3 & 1;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      sub_21D182E74(sub_21D9B1E48, v7);
    }
  }

  return result;
}

uint64_t TTRReminderDetailInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D9B10D8(*(v0 + 88), *(v0 + 96));

  sub_21D9B11C0(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_21D22BF80(*(v0 + 176));
  sub_21D6396C0(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  return v0;
}

uint64_t TTRReminderDetailInteractor.__deallocating_deinit()
{
  TTRReminderDetailInteractor.deinit();

  return swift_deallocClassInstance();
}

id sub_21D9AB448()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

id sub_21D9AB490()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

id sub_21D9AB4DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = v2[20];
  v8 = v2[14];
  v4 = v2[8];
  *a1 = v3;
  a1[1] = v8;
  a1[2] = v4;
  v5 = v4;
  v6 = v3;

  return v8;
}

uint64_t sub_21D9AB540()
{

  v1 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v1)
  {
    return 1;
  }

  return sub_21D9B0EC0(v0);
}

void sub_21D9AB5B4(void *a1@<X8>)
{
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    if (*(v1 + 208))
    {
      v2 = 0;
    }

    else
    {
      v3 = a1;
      v4 = v2;
      a1 = v3;
    }

    *a1 = v2;
  }

  else
  {
    *a1 = v2;

    sub_21D568328(v2);
  }
}

uint64_t sub_21D9AB620(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v3);
}

double sub_21D9AB680(uint64_t a1)
{
  v1 = a1;

  TTRReminderEditor.edit(completed:trackEditedUsing:)(v1, 0);

  return sub_21D9A6950(1);
}

double sub_21D9AB6E4(uint64_t a1)
{

  v1 = REMReminderDefaultPriorityForPriorityLevel();
  TTRReminderEditor.edit(priority:)(v1);

  return sub_21D9A6950(1);
}

double sub_21D9AB748(Swift::Bool a1)
{

  TTRReminderEditor.edit(isFlagged:)(a1);

  return sub_21D9A6950(1);
}

double sub_21D9AB7C4(void *a1)
{

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(a1);

  return sub_21D9A6950(1);
}

double sub_21D9AB824(char a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v4 + 16);

  LOBYTE(v5) = [v5 prefersUrgentPresentationStyleForDateAlarms];
  [*(v4 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_21D182E74(sub_21D9B1E4C, v6);

  return sub_21D9A6950(1);
}

double sub_21D9AB94C()
{

  TTRReminderEditor.removeAllAssignments()();

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB9A0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = a3;
  v8 = *a4;

  TTRReminderDetailPendingMoveInteractorCapability.updateSection(sectionDisplayName:isFromSuggestion:originalSectionID:)(a1, a2, v4, &v8);
}

double sub_21D9ABA54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  return sub_21D9A6950(1);
}

double sub_21D9ABADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  return sub_21D9A6950(1);
}

double sub_21D9ABB44(void (*a1)(uint64_t))
{

  a1(v2);

  return sub_21D9A6950(1);
}

void sub_21D9ABBBC(unsigned int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_75;
  }

  if (a3)
  {
    sub_21D8AC658(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_21D8B14F4();
      goto LABEL_75;
    }

    sub_21D8B2954(v5 + 1);
  }

  v7 = *v3;
  sub_21DBFC7DC();
  sub_21D621F3C(a1);
  sub_21DBFA27C();

  v8 = sub_21DBFC82C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v10 == 9)
          {
            v11 = 0xD00000000000001DLL;
            v12 = 0x800000021DC43890;
          }

          else if (v10 == 10)
          {
            v11 = 0xD000000000000017;
            v12 = 0x800000021DC438B0;
          }

          else
          {
            v11 = 0x726F737365636361;
            v12 = 0xEB00000000736569;
          }
        }

        else if (v10 == 6)
        {
          v11 = 0xD000000000000017;
          v12 = 0x800000021DC43840;
        }

        else if (v10 == 7)
        {
          v11 = 0xD000000000000013;
          v12 = 0x800000021DC43860;
        }

        else
        {
          v11 = 0x53746E65746E6F63;
          v12 = 0xEC0000006B636174;
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v10 == 3)
        {
          v12 = 0xE500000000000000;
          v11 = 0x656C746974;
        }

        else if (v10 == 4)
        {
          v11 = 0x6F6E6E4177656976;
          v12 = 0xEE006E6F69746174;
        }

        else
        {
          v11 = 0x65646E496C6C6563;
          v12 = 0xEF6E6F697461746ELL;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x6574656C706D6F63;
        }

        else
        {
          v11 = 0x797469726F697270;
        }

        if (v10 == 1)
        {
          v12 = 0xEF6E6F7474754264;
        }

        else
        {
          v12 = 0xE800000000000000;
        }
      }

      else
      {
        v11 = 0x656E6961746E6F63;
        v12 = 0xED00007765695672;
      }

      v13 = 0xD00000000000001DLL;
      v14 = 0x726F737365636361;
      if (a1 == 10)
      {
        v14 = 0xD000000000000017;
      }

      v15 = 0xEB00000000736569;
      if (a1 == 10)
      {
        v15 = 0x800000021DC438B0;
      }

      if (a1 == 9)
      {
        v16 = 0x800000021DC43890;
      }

      else
      {
        v13 = v14;
        v16 = v15;
      }

      v17 = 0xD000000000000013;
      if (a1 != 7)
      {
        v17 = 0x53746E65746E6F63;
      }

      v18 = 0xEC0000006B636174;
      if (a1 == 7)
      {
        v18 = 0x800000021DC43860;
      }

      if (a1 == 6)
      {
        v17 = 0xD000000000000017;
        v18 = 0x800000021DC43840;
      }

      if (a1 <= 8u)
      {
        v13 = v17;
        v16 = v18;
      }

      v19 = 0x6F6E6E4177656976;
      if (a1 != 4)
      {
        v19 = 0x65646E496C6C6563;
      }

      v20 = 0xEF6E6F697461746ELL;
      if (a1 == 4)
      {
        v20 = 0xEE006E6F69746174;
      }

      if (a1 == 3)
      {
        v19 = 0x656C746974;
        v20 = 0xE500000000000000;
      }

      v21 = 0x797469726F697270;
      if (a1 == 1)
      {
        v21 = 0x6574656C706D6F63;
      }

      v22 = 0xEF6E6F7474754264;
      if (a1 != 1)
      {
        v22 = 0xE800000000000000;
      }

      if (!a1)
      {
        v21 = 0x656E6961746E6F63;
        v22 = 0xED00007765695672;
      }

      if (a1 <= 2u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 5u ? v19 : v13;
      v24 = a1 <= 5u ? v20 : v16;
      if (v11 == v23 && v12 == v24)
      {
        goto LABEL_78;
      }

      v25 = sub_21DBFC64C();

      if (v25)
      {
        goto LABEL_79;
      }

      a2 = (a2 + 1) & v31;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_75:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = a1;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_78:

LABEL_79:
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AC0C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ACA8C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1508();
      goto LABEL_12;
    }

    sub_21D8B2D58(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AC230(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ACAA0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B151C();
      goto LABEL_12;
    }

    sub_21D8B2D6C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21DBF634C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AC390(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8ACAB4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B1530();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B2D80(v13 + 1);
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)(v27);
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AC5D4(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_21D8ACDBC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_21D8B156C();
      a4 = v11;
      goto LABEL_18;
    }

    sub_21D8B3058(v9 + 1);
  }

  v12 = *v5;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v8);
  MEMORY[0x223D44FA0](a2);
  MEMORY[0x223D44FA0](a3 & 1);
  result = sub_21DBFC82C();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    while (1)
    {
      v15 = *(v12 + 48) + 24 * a4;
      v16 = *v15 == v8 && *(v15 + 8) == a2;
      if (v16 && ((*(v15 + 16) ^ a3) & 1) == 0)
      {
        break;
      }

      a4 = (a4 + 1) & v14;
      if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_21DBFC6FC();
    __break(1u);
  }

LABEL_18:
  v17 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v18 = *(v17 + 48) + 24 * a4;
  *v18 = v8;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3 & 1;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_21D9AC810(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21D8AD06C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21D8B16EC();
      goto LABEL_16;
    }

    sub_21D8B32D8(v8 + 1);
  }

  v10 = *v4;
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v11 = sub_21DBFC82C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_21DBFC64C() & 1) != 0)
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
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AC990(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AD2CC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1848();
      goto LABEL_12;
    }

    sub_21D8B3510(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9ACB00(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8AD2E0(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B185C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B3524(v13 + 1);
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.hash(into:)(v27);
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9ACD44(void *a1, unint64_t a2, char a3)
{
  v59 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v57);
  v43 = &v43 - v6;
  v58 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v45 = v3;
  v44 = v7;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    v47 = v15;
    if (a3)
    {
      sub_21D8AD5E8(v18 + 1);
    }

    else
    {
      if (v19 > v18)
      {
        sub_21D8B1AA0();
        goto LABEL_22;
      }

      sub_21D8B37FC(v18 + 1);
    }

    v48 = *v3;
    sub_21DBFC7DC();
    v20 = v59;
    v21 = *v59;
    sub_21DBFB64C();
    v56 = *(v58 + 20);
    sub_21D0D3954(v20 + v56, v17, &unk_27CE5CD70, &unk_21DC09230);
    v23 = *(v11 + 48);
    v22 = v11 + 48;
    v55 = v23;
    if (v23(v17, 1, v10) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v24 = v46;
      sub_21D8B7748(v17, v46, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.SectionID.hash(into:)(v61);
      sub_21D9B1DC8(v24, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    v25 = sub_21DBFC82C();
    v26 = v48;
    v27 = v48 + 56;
    v28 = -1 << *(v48 + 32);
    a2 = v25 & ~v28;
    if ((*(v48 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v53 = v22;
      v54 = v10;
      v29 = ~v28;
      v60 = sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v30 = *(v7 + 72);
      v17 = v43;
      v51 = v30;
      v52 = v29;
      v49 = v21;
      v50 = v27;
      do
      {
        sub_21D9B1D60(*(v26 + 48) + v30 * a2, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        if (sub_21DBFB63C())
        {
          v33 = *(v57 + 48);
          sub_21D0D3954(&v9[*(v58 + 20)], v17, &unk_27CE5CD70, &unk_21DC09230);
          sub_21D0D3954(v59 + v56, &v17[v33], &unk_27CE5CD70, &unk_21DC09230);
          v34 = v54;
          v35 = v55;
          if (v55(v17, 1, v54) == 1)
          {
            v36 = v35(&v17[v33], 1, v34);
            v29 = v52;
            if (v36 == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v37 = v47;
            sub_21D0D3954(v17, v47, &unk_27CE5CD70, &unk_21DC09230);
            if (v35(&v17[v33], 1, v34) != 1)
            {
              v31 = v46;
              sub_21D8B7748(&v17[v33], v46, type metadata accessor for TTRRemindersListViewModel.SectionID);
              v32 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v37, v31);
              sub_21D9B1DC8(v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D9B1DC8(v37, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D0CF7E0(v17, &unk_27CE5CD70, &unk_21DC09230);
              v26 = v48;
              v27 = v50;
              v30 = v51;
              v29 = v52;
              if (v32)
              {
                goto LABEL_26;
              }

              goto LABEL_14;
            }

            sub_21D9B1DC8(v37, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v26 = v48;
            v29 = v52;
          }

          sub_21D0CF7E0(v17, &qword_27CE58388, &unk_21DC0F470);
          v27 = v50;
          v30 = v51;
        }

LABEL_14:
        sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        a2 = (a2 + 1) & v29;
      }

      while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v38 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v59, *(v38 + 48) + *(v44 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_25:
    sub_21D0CF7E0(v17, &unk_27CE5CD70, &unk_21DC09230);
LABEL_26:
    sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_21D9AD3D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_21D8ADAB4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21D8B1ADC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_21D8B3C94(v7 + 1);
  }

  v10 = *v4;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v6);
  MEMORY[0x223D44FA0](a2);
  result = sub_21DBFC82C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AD544(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ADD1C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1C20();
      goto LABEL_12;
    }

    sub_21D8B3ECC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AD6B4(uint64_t a1, unint64_t a2, char a3)
{
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v51);
  v7 = &v39 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v41 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v40 = v17;
      sub_21D8ADD30(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_21D8B1C34();
        goto LABEL_21;
      }

      v40 = v17;
      sub_21D8B3EE0(v20 + 1);
    }

    v22 = *v3;
    sub_21DBFC7DC();
    sub_21D0D3954(v52, v19, &qword_27CE5FB90, &unk_21DC09290);
    v24 = *(v9 + 48);
    v23 = v9 + 48;
    v49 = v24;
    if (v24(v19, 1, v8) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v25 = v44;
      sub_21D8B7748(v19, v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.ItemID.hash(into:)(v53);
      sub_21D9B1DC8(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    v26 = sub_21DBFC82C();
    v27 = -1 << *(v22 + 32);
    a2 = v26 & ~v27;
    v48 = v22 + 56;
    if ((*(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v27;
      v46 = *(v43 + 72);
      v42 = v8;
      do
      {
        sub_21D0D3954(*(v22 + 48) + v46 * a2, v15, &qword_27CE5FB90, &unk_21DC09290);
        v32 = *(v51 + 48);
        sub_21D0D3954(v15, v7, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D0D3954(v52, &v7[v32], &qword_27CE5FB90, &unk_21DC09290);
        v33 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          sub_21D0CF7E0(v15, &qword_27CE5FB90, &unk_21DC09290);
          if (v33(&v7[v32], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_21D0D3954(v7, v50, &qword_27CE5FB90, &unk_21DC09290);
          if (v33(&v7[v32], 1, v8) != 1)
          {
            v28 = v50;
            v29 = v23;
            v30 = v44;
            sub_21D8B7748(&v7[v32], v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v45 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v28, v30);
            v31 = v30;
            v23 = v29;
            v8 = v42;
            sub_21D9B1DC8(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D0CF7E0(v15, &qword_27CE5FB90, &unk_21DC09290);
            sub_21D9B1DC8(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D0CF7E0(v7, &qword_27CE5FB90, &unk_21DC09290);
            if (v45)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_21D0CF7E0(v15, &qword_27CE5FB90, &unk_21DC09290);
          sub_21D9B1DC8(v50, type metadata accessor for TTRRemindersListViewModel.ItemID);
        }

        sub_21D0CF7E0(v7, &qword_27CE5F2E0, &unk_21DC0F9C0);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D66A69C(v52, *(v34 + 48) + *(v43 + 72) * a2);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_24:
    sub_21D0CF7E0(v7, &qword_27CE5FB90, &unk_21DC09290);
LABEL_25:
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_21D9ADC54(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8AE190(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B1E4C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B4308(v13 + 1);
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)(v27);
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRecurrenceRuleModel);
      v20 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRecurrenceRuleModel);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRecurrenceRuleModel);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9ADEE0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v44 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a3)
  {
    sub_21D8AE440(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_21D8B1E9C();
      goto LABEL_54;
    }

    sub_21D8B4584(v6 + 1);
  }

  v8 = *v3;
  v9 = *(v5 + 48);
  v55 = *(v5 + 32);
  v56 = v9;
  v57 = *(v5 + 64);
  v10 = *(v5 + 16);
  v53 = *v5;
  v54 = v10;
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)(v52);
  result = sub_21DBFC82C();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *(v5 + 8);
    v51 = *v5;
    v15 = *(v5 + 24);
    v45 = *(v5 + 16);
    v41 = *(v5 + 32);
    v46 = *(v5 + 40);
    v39 = *(v5 + 48);
    v42 = *(v5 + 56);
    v38 = *(v5 + 64);
    v40 = *(v5 + 72);
    v16 = *(v8 + 48);
    v48 = ~v12;
    v49 = v8 + 56;
    v50 = v15;
    v47 = v16;
    do
    {
      v17 = (v16 + 80 * a2);
      v18 = v17[1];
      v19 = v17[2];
      v21 = v17[3];
      v20 = v17[4];
      v22 = v17[5];
      v23 = v17[6];
      v24 = v17[7];
      v25 = v17[8];
      v26 = v17[9];
      if (v18)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        result = *v17;
        if (*v17 != v51 || v18 != v14)
        {
          result = sub_21DBFC64C();
          v16 = v47;
          v13 = v48;
          v11 = v49;
          v15 = v50;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      if (v21)
      {
        if (!v15)
        {
          goto LABEL_11;
        }

        if (v19 != v45 || v21 != v15)
        {
          result = sub_21DBFC64C();
          v16 = v47;
          v13 = v48;
          v11 = v49;
          v15 = v50;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        if (!v46)
        {
          goto LABEL_11;
        }

        if (v20 != v41 || v22 != v46)
        {
          result = sub_21DBFC64C();
          v16 = v47;
          v13 = v48;
          v11 = v49;
          v15 = v50;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v46)
      {
        goto LABEL_11;
      }

      if (v24)
      {
        if (!v42)
        {
          goto LABEL_11;
        }

        if (v23 != v39 || v24 != v42)
        {
          result = sub_21DBFC64C();
          v16 = v47;
          v13 = v48;
          v11 = v49;
          v15 = v50;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v42)
      {
        goto LABEL_11;
      }

      if (v26)
      {
        if (v40)
        {
          if (v25 == v38 && v26 == v40 || (result = sub_21DBFC64C(), v16 = v47, v13 = v48, v11 = v49, v15 = v50, (result & 1) != 0))
          {
LABEL_53:
            result = sub_21DBFC6FC();
            __break(1u);
            break;
          }
        }
      }

      else if (!v40)
      {
        goto LABEL_53;
      }

LABEL_11:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_54:
  v31 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = (*(v31 + 48) + 80 * a2);
  v33 = v44[4];
  v32[3] = v44[3];
  v32[4] = v33;
  v34 = v44[2];
  v32[1] = v44[1];
  v32[2] = v34;
  *v32 = *v44;
  v35 = *(v31 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v37;
  }

  return result;
}

void sub_21D9AE2A0(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_21D8AE80C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B2038();
      goto LABEL_55;
    }

    sub_21D8B4930(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21D1018B0(*(*v3 + 40), a1);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      if (v12 <= 2)
      {
        if (*(*(v8 + 48) + a2))
        {
          if (v12 == 1)
          {
            v13 = 0x656C756465686373;
          }

          else
          {
            v13 = 7105633;
          }

          if (v12 == 1)
          {
            v14 = 0xE900000000000064;
          }

          else
          {
            v14 = 0xE300000000000000;
          }
        }

        else
        {
          v14 = 0xE500000000000000;
          v13 = 0x7961646F74;
        }
      }

      else if (*(*(v8 + 48) + a2) > 4u)
      {
        if (v12 == 5)
        {
          v13 = 0x6E756F4669726973;
          v14 = 0xEF737070416E4964;
        }

        else
        {
          v13 = 0x6574656C706D6F63;
          v14 = 0xE900000000000064;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x64656767616C66;
        }

        else
        {
          v13 = 0x64656E6769737361;
        }

        if (v12 == 3)
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }
      }

      v15 = 0x6E756F4669726973;
      if (a1 != 5)
      {
        v15 = 0x6574656C706D6F63;
      }

      v16 = 0xEF737070416E4964;
      if (a1 != 5)
      {
        v16 = 0xE900000000000064;
      }

      v17 = 0x64656E6769737361;
      if (a1 == 3)
      {
        v17 = 0x64656767616C66;
      }

      v18 = 0xE700000000000000;
      if (a1 != 3)
      {
        v18 = 0xE800000000000000;
      }

      if (a1 <= 4u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0x656C756465686373;
      if (a1 != 1)
      {
        v19 = 7105633;
      }

      v20 = 0xE300000000000000;
      if (a1 == 1)
      {
        v20 = 0xE900000000000064;
      }

      if (!a1)
      {
        v19 = 0x7961646F74;
        v20 = 0xE500000000000000;
      }

      v21 = a1 <= 2u ? v19 : v15;
      v22 = a1 <= 2u ? v20 : v16;
      if (v13 == v21 && v14 == v22)
      {
        goto LABEL_58;
      }

      v23 = sub_21DBFC64C();

      if (v23)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AE5C8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AEB34(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21D8B204C();
      goto LABEL_12;
    }

    sub_21D8B4C28(v11 + 1);
  }

  v13 = *v3;
  sub_21D9B182C(&qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
  v14 = sub_21DBF9FFC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21D9B182C(&qword_27CE58DB0, MEMORY[0x277D45430], MEMORY[0x277D45440]);
      v22 = sub_21DBFA10C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AE86C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AEE90(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_21D8B2074();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21D8B4F44(v5 + 1);
  }

  v8 = *v3;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v9 = sub_21DBFC82C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for REMReminderPriorityLevel(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AE9C8(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_21D8AF0E0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_21D8B21B4();
      goto LABEL_48;
    }

    sub_21D8B5164(v5 + 1);
  }

  v7 = *v3;
  sub_21DBFC7DC();
  sub_21DBFA27C();

  v8 = sub_21DBFC82C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE700000000000000;
          v12 = 0x646E656B656577;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x57664F7472617473;
          }

          else
          {
            v12 = 0x6D6F74737563;
          }

          if (v11 == 4)
          {
            v13 = 0xEE007961646B6565;
          }

          else
          {
            v13 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x7961646F74;
        }

        else
        {
          v12 = 0x776F72726F6D6F74;
        }

        if (v11 == 1)
        {
          v13 = 0xE500000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        v12 = 1701736302;
      }

      v14 = 0x57664F7472617473;
      if (a1 != 4)
      {
        v14 = 0x6D6F74737563;
      }

      v15 = 0xEE007961646B6565;
      if (a1 != 4)
      {
        v15 = 0xE600000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x646E656B656577;
        v15 = 0xE700000000000000;
      }

      v16 = 0x776F72726F6D6F74;
      if (a1 == 1)
      {
        v16 = 0x7961646F74;
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (!a1)
      {
        v16 = 1701736302;
        v17 = 0xE400000000000000;
      }

      v18 = a1 <= 2u ? v16 : v14;
      v19 = a1 <= 2u ? v17 : v15;
      if (v12 == v18 && v13 == v19)
      {
        goto LABEL_51;
      }

      v20 = sub_21DBFC64C();

      if (v20)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AED7C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v31 = v7;
  v32 = v3;
  if (v17 > v16 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AF3E4(v16 + 1);
  }

  else
  {
    if (v17 > v16)
    {
      sub_21D8B21C8();
      goto LABEL_12;
    }

    sub_21D8B5438(v16 + 1);
  }

  v18 = *v3;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v15);
  TTRRemindersListViewModel.ItemID.hash(into:)(v34);
  sub_21D9B1DC8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v19 = sub_21DBFC82C();
  v20 = -1 << *(v18 + 32);
  a2 = v19 & ~v20;
  if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30[1] = v6;
    v21 = ~v20;
    v22 = *(v7 + 72);
    do
    {
      sub_21D9B1D60(*(v18 + 48) + v22 * a2, v9, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v15);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v12);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D9B1DC8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v33;
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v24, *(v25 + 48) + *(v31 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.Item);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AF088(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21DBF686C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AF75C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21D8B2218();
      goto LABEL_12;
    }

    sub_21D8B5780(v11 + 1);
  }

  v13 = *v3;
  sub_21D9B182C(&unk_280D0C7E8, MEMORY[0x277D45298], MEMORY[0x277D452A0]);
  v14 = sub_21DBF9FFC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21D9B182C(&qword_280D0C7E0, MEMORY[0x277D45298], MEMORY[0x277D452A8]);
      v22 = sub_21DBFA10C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AF32C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AFAB8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21D8B2240();
      goto LABEL_12;
    }

    sub_21D8B5A9C(v11 + 1);
  }

  v13 = *v3;
  sub_21D9B182C(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v14 = sub_21DBF9FFC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21D9B182C(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v22 = sub_21DBFA10C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AF5D0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AFE14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B2268();
      goto LABEL_12;
    }

    sub_21D8B5DB8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AF740(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_21D8B0048(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_21D8B23BC();
      goto LABEL_47;
    }

    sub_21D8B5FD8(v5 + 1);
  }

  v7 = 0xED0000736E6F6974;
  v8 = *v3;
  sub_21DBFC7DC();
  sub_21DBFA27C();

  v9 = sub_21DBFC82C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  v34 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = v8;
    v33 = ~v10;
    v11 = 0xEC000000736D7261;
    v12 = 0x6E6F697461636F6CLL;
    v13 = 0x6C41746E65677275;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v15 = v12;
        }

        else
        {
          v15 = 0x6163696669746F6ELL;
        }

        if (*(*(v8 + 48) + a2))
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = v7;
        }
      }

      else if (v14 == 2)
      {
        v16 = 0xE800000000000000;
        v15 = 0x73746361746E6F63;
      }

      else
      {
        if (v14 == 3)
        {
          v15 = 0xD000000000000010;
        }

        else
        {
          v15 = v13;
        }

        if (v14 == 3)
        {
          v16 = 0x800000021DC43740;
        }

        else
        {
          v16 = v11;
        }
      }

      v17 = 0xD000000000000010;
      v18 = v13;
      if (a1 != 3)
      {
        v17 = v13;
      }

      v19 = v11;
      if (a1 == 3)
      {
        v11 = 0x800000021DC43740;
      }

      if (a1 == 2)
      {
        v17 = 0x73746361746E6F63;
        v11 = 0xE800000000000000;
      }

      v20 = v12;
      v21 = a1 ? v12 : 0x6163696669746F6ELL;
      v22 = v7;
      v23 = a1 ? 0xE800000000000000 : v7;
      v24 = a1 <= 1u ? v21 : v17;
      v25 = a1 <= 1u ? v23 : v11;
      if (v15 == v24 && v16 == v25)
      {
        goto LABEL_50;
      }

      v26 = sub_21DBFC64C();

      if (v26)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v33;
      v7 = v22;
      v8 = v32;
      v11 = v19;
      v12 = v20;
      v13 = v18;
    }

    while (((*(v34 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = a1;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AFAA4(uint64_t a1, unint64_t a2, char a3)
{
  v53 = a1;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v38 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v51);
  v12 = &v38 - v11;
  v46 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v39 = v3;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_21D8B034C(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_21D8B23D0();
      goto LABEL_27;
    }

    sub_21D8B62AC(v15 + 1);
  }

  v17 = *v3;
  sub_21DBFC7DC();
  sub_21D838EC4(v54);
  v18 = sub_21DBFC82C();
  v49 = v17 + 56;
  v50 = v17;
  v19 = -1 << *(v17 + 32);
  a2 = v18 & ~v19;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v48 = ~v19;
    v20 = (v7 + 48);
    v47 = *(v42 + 72);
    v41 = (v7 + 32);
    v45 = (v7 + 8);
    v21 = &qword_27CE5DBF8;
    v40 = v14;
    do
    {
      sub_21D9B1D60(*(v50 + 48) + v47 * a2, v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      v22 = *(v51 + 48);
      sub_21D0D3954(v14, v12, &unk_27CE58E70, &unk_21DC0A930);
      sub_21D0D3954(v53, &v12[v22], &unk_27CE58E70, &unk_21DC0A930);
      v23 = *v20;
      if ((*v20)(v12, 1, v6) == 1)
      {
        if (v23(&v12[v22], 1, v6) != 1)
        {
          goto LABEL_11;
        }

        sub_21D0CF7E0(v12, &unk_27CE58E70, &unk_21DC0A930);
      }

      else
      {
        sub_21D0D3954(v12, v52, &unk_27CE58E70, &unk_21DC0A930);
        if (v23(&v12[v22], 1, v6) == 1)
        {
          (*v45)(v52, v6);
LABEL_11:
          sub_21D0CF7E0(v12, v21, &unk_21DC1ABD0);
          goto LABEL_12;
        }

        v24 = v43;
        (*v41)(v43, &v12[v22], v6);
        sub_21D9B182C(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
        v44 = sub_21DBFA10C();
        v25 = v21;
        v26 = v20;
        v27 = *v45;
        (*v45)(v24, v6);
        v27(v52, v6);
        v20 = v26;
        v21 = v25;
        v14 = v40;
        sub_21D0CF7E0(v12, &unk_27CE58E70, &unk_21DC0A930);
        if ((v44 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (*&v14[*(v46 + 20)] == *(v53 + *(v46 + 20)))
      {
        v28 = *(v46 + 24);
        v29 = &v14[v28];
        v30 = *&v14[v28 + 8];
        v31 = (v53 + v28);
        v32 = v31[1];
        if (v30)
        {
          if (v32 && (*v29 == *v31 && v30 == v32 || (sub_21DBFC64C() & 1) != 0))
          {
LABEL_26:
            sub_21D9B1DC8(v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
            sub_21DBFC6FC();
            __break(1u);
            break;
          }
        }

        else if (!v32)
        {
          goto LABEL_26;
        }
      }

LABEL_12:
      sub_21D9B1DC8(v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      a2 = (a2 + 1) & v48;
    }

    while (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v33 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v53, *(v33 + 48) + *(v42 + 72) * a2, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

void sub_21D9B010C(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t), uint64_t (*a5)(void, __n128), void (*a6)(unint64_t), void (*a7)(void))
{
  v8 = v7;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v13 = a5;
    a4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      a7();
      goto LABEL_16;
    }

    v13 = a5;
    a6(v11 + 1);
  }

  v14 = *v7;
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v15 = sub_21DBFC82C();

  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {
      v18 = sub_21DBFA16C();
      v20 = v19;
      if (v18 == sub_21DBFA16C() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = sub_21DBFC64C();

      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9B039C(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t, unint64_t), unint64_t a5, void (*a6)(uint64_t, unint64_t), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    a4(v9 + 1, a2);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = a7();
      a2 = v11;
      goto LABEL_12;
    }

    a6(v9 + 1, a2);
  }

  v12 = *v7;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v8);
  result = sub_21DBFC82C();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v12 + 48) + a2) != v8)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v8;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9B0500(void *a1, unint64_t a2, char a3)
{
  v60 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v58);
  v56 = &v43 - v6;
  v59 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v7 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v49 = v3;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v44 = v7;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21D8B0FF8(v18 + 1);
    }

    else
    {
      if (v19 > v18)
      {
        sub_21D8B26B8();
        goto LABEL_22;
      }

      sub_21D8B6EBC(v18 + 1);
    }

    v62 = *v49;
    sub_21DBFC7DC();
    v20 = v60;
    v61 = *v60;
    sub_21DBFB64C();
    v55 = *(v59 + 20);
    sub_21D0D3954(v20 + v55, v17, &qword_27CE5EA20, &qword_21DC0D4A0);
    v53 = *(v11 + 48);
    v54 = v11 + 48;
    if (v53(v17, 1, v10) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v21 = v48;
      (*(v11 + 32))(v48, v17, v10);
      sub_21DBFC7FC();
      sub_21D9B182C(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_21DBFA00C();
      (*(v11 + 8))(v21, v10);
    }

    v22 = sub_21DBFC82C();
    v23 = v62 + 56;
    v24 = -1 << *(v62 + 32);
    a2 = v22 & ~v24;
    if ((*(v62 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v25 = ~v24;
      v26 = sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v43 = (v11 + 32);
      v7 = *(v7 + 72);
      v46 = (v11 + 8);
      v27 = &qword_27CE5EA20;
      v28 = v10;
      v47 = v26;
      v51 = v7;
      v52 = v25;
      v45 = v9;
      v50 = v23;
      do
      {
        sub_21D9B1D60(*(v62 + 48) + v7 * a2, v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        if (sub_21DBFB63C())
        {
          v32 = *(v58 + 48);
          v7 = v56;
          sub_21D0D3954(&v9[*(v59 + 20)], v56, v27, &qword_21DC0D4A0);
          sub_21D0D3954(v60 + v55, v7 + v32, v27, &qword_21DC0D4A0);
          v33 = v53;
          if (v53(v7, 1, v28) == 1)
          {
            v34 = v33(v7 + v32, 1, v28);
            v23 = v50;
            v25 = v52;
            if (v34 == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v35 = v27;
            v36 = v28;
            v37 = v57;
            sub_21D0D3954(v7, v57, v35, &qword_21DC0D4A0);
            if (v33(v7 + v32, 1, v36) != 1)
            {
              v29 = v48;
              (*v43)(v48, v7 + v32, v36);
              sub_21D9B182C(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
              v30 = sub_21DBFA10C();
              v31 = *v46;
              (*v46)(v29, v36);
              v31(v57, v36);
              sub_21D0CF7E0(v7, v35, &qword_21DC0D4A0);
              v23 = v50;
              v7 = v51;
              v25 = v52;
              v28 = v36;
              v27 = v35;
              v9 = v45;
              if (v30)
              {
                goto LABEL_26;
              }

              goto LABEL_14;
            }

            (*v46)(v37, v36);
            v23 = v50;
            v25 = v52;
            v28 = v36;
            v27 = v35;
            v9 = v45;
          }

          sub_21D0CF7E0(v7, &unk_27CE5F2A0, &unk_21DC09120);
          v7 = v51;
        }

LABEL_14:
        sub_21D9B1DC8(v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        a2 = (a2 + 1) & v25;
      }

      while (((*(v23 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v38 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v60, *(v38 + 48) + *(v44 + 72) * a2, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_25:
    sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_26:
    sub_21D9B1DC8(v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_21D9B0C90(uint64_t a1, void *a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = type metadata accessor for TTRBasicUndoContext();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v6 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v4;
  v19[3] = v5;
  v19[4] = v6;
  sub_21D0D3954(v19, v17, &unk_27CE60D80, &unk_21DC093F0);
  v7 = qword_280D1AA10;
  v8 = a2;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_280D1AA18;
  sub_21D0CF7E0(v19, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  v10 = swift_allocObject();
  v15 = type metadata accessor for TTRUserDefaults();
  v16 = &protocol witness table for TTRUserDefaults;
  *&v14 = v9;
  *(v10 + 64) = 0;
  *(v10 + 16) = a1;
  v11 = v17[1];
  *(v10 + 24) = v17[0];
  *(v10 + 40) = v11;
  *(v10 + 56) = v18;
  swift_beginAccess();
  *(v10 + 64) = 0;
  sub_21D0D15E0(&v14, v10 + 72);
  v12 = v9;
  return v10;
}

double _s15RemindersUICore27TTRReminderDetailInteractorC43pendingMoveCapabilityEffectiveListDidChangeyyAA0cd7PendinggeH0CF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(*(v0 + 56) + 16);
    v5 = *(v2 + 8);
    v6 = v4;
    v5(v4, sub_21D9B1874, v0, 1, ObjectType, v2);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D9B0EC0(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = v2;
  }

  swift_beginAccess();
  v4 = [*(a1 + 40) storage];
  v5 = v4;
  if (v2)
  {
    v6 = v2;

    sub_21D0D8CF0(0, &qword_27CE5A390, 0x277D447C8);
    v7 = sub_21DBFB63C();

    v8 = v7 ^ 1;
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

id sub_21D9B0FE8(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v9[0] = 0;
  v5 = [a2 fetchReminderWithObjectID:a1 fetchOptions:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v5;
}

double sub_21D9B10D8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_21D9B10EC()
{
  result = qword_27CE64840;
  if (!qword_27CE64840)
  {
    v3 = sub_21D0D8CF0(255, &qword_280D17828, 0x277D44588);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CE64840);
  }

  return result;
}

id sub_21D9B1170(id result, void *a2, void *a3)
{
  if (result)
  {
    v3 = result;
    v4 = a3;
    v5 = v3;

    return a2;
  }

  return result;
}

void sub_21D9B11C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t assignWithCopy for TTRReminderDetailOptimisticReminder(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailSubject(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

double sub_21D9B1764(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t assignWithCopy for SubtasksLoadState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9B1764(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D9B10D8(v5, v6);
  return a1;
}

uint64_t assignWithTake for SubtasksLoadState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D9B10D8(v4, v5);
  return a1;
}

uint64_t sub_21D9B182C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21D9B1884(void *a1)
{
  v2 = v1;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE64808);
  v5 = a1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = [v5 objectID];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRReminderDetailInteractor: received updated REMReminderChangeItem from database monitor {objectID: %@}", v8, 0xCu);
    sub_21D0CF7E0(v9, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v11 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v11 & 1) != 0 || (sub_21D9B0EC0(v2))
  {
    v12 = v5;
    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = [v12 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "TTRReminderDetailInteractor: not applying REMReminderChangeItem from database monitor because hasUncommittedChanges is true {objectID: %@}", v14, 0xCu);
      sub_21D0CF7E0(v15, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }
  }

  else
  {
    v17 = [v5 store];
    v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v18 setSaveIsNoopIfNoChangedKeys_];

    oslog = [v18 updateReminder_];
    sub_21D9A497C(oslog, 0x6573616261746164, 0xEF726F74696E6F4DLL);
  }
}

double sub_21D9B1BA4()
{
  v1 = v0;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE64808);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_beginAccess();
    v7 = [*(v1 + 40) objectID];
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRReminderDetailInteractor: database monitor reported reminderDidBecomeNotFound {objectID: %@}", v5, 0xCu);
    sub_21D0CF7E0(v6, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D9B1D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9B1DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D9B1E50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v4;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v54 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
    v6 = v54;
    if (v47)
    {
      v7 = sub_21DBFBD0C();
    }

    else
    {
      v7 = sub_21DBFBCCC();
      v8 = *(a1 + 36);
    }

    v51 = v7;
    v52 = v8;
    v53 = v47 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v42 = a1 + 56;
      v43 = v10;
      v40[1] = v1;
      v41 = a1 + 64;
      v44 = v5;
      v45 = a1;
      while (v9 < v5)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v51;
        v48 = v52;
        v49 = v53;
        sub_21D3656F4(v51, v52, v53, a1);
        v15 = v14;
        v16 = [v14 name];
        v17 = sub_21DBFA16C();
        v19 = v18;

        v50[0] = v17;
        v50[1] = v19;
        v20 = v6;
        v21 = v46;
        sub_21DBF57AC();
        v22 = sub_21DBF582C();
        (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
        sub_21D176F0C();
        v23 = sub_21DBFBBEC();
        v25 = v24;
        v26 = v21;
        v6 = v20;
        sub_21D0CF7E0(v26, &unk_27CE65010, &qword_21DC08D60);

        v54 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21D18E678((v27 > 1), v28 + 1, 1);
          v6 = v54;
        }

        *(v6 + 16) = v28 + 1;
        v29 = v6 + 16 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        if (v47)
        {
          a1 = v45;
          if (!v49)
          {
            goto LABEL_42;
          }

          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58, &unk_21DC11840);
          v11 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v11(v50, 0);
          if (v9 == v5)
          {
LABEL_34:
            sub_21D15746C(v51, v52, v53);
            return;
          }
        }

        else
        {
          a1 = v45;
          if (v49)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v30 = 1 << *(v45 + 32);
          if (v13 >= v30)
          {
            goto LABEL_38;
          }

          v31 = v13 >> 6;
          v32 = *(v42 + 8 * (v13 >> 6));
          if (((v32 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v45 + 36) != v48)
          {
            goto LABEL_40;
          }

          v33 = v32 & (-2 << (v13 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_21D15746C(v13, v48, 0);
                v30 = __clz(__rbit64(v37)) + v34;
                goto LABEL_33;
              }
            }

            sub_21D15746C(v13, v48, 0);
          }

LABEL_33:
          v39 = *(a1 + 36);
          v51 = v30;
          v52 = v39;
          v53 = 0;
          v5 = v44;
          if (v9 == v44)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_21D9B2298(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_21DBFBD0C();
    }

    else
    {
      v3 = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_21D3656F4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_21DBFA16C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21D18E678((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58, &unk_21DC11840);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_21D15746C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_21D15746C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_21D15746C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void TTRReminderEditor.remove(subtask:)(uint64_t a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateReminder_];

  TTRReminderEditor.remove(subtask:)(v4);
}

uint64_t sub_21D9B26A0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x223D44740](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        v4 = v15;
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void static TTRReminderEditor.dueDateComponents(from:isAllDay:timeZone:)(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_21DBF509C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF5C4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF55BC();
  sub_21D0D3954(a2, v9, &unk_27CE60DB0, qword_21DC0BF70);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v16 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v15(v9, 1, v10) != 1)
    {
      sub_21D0CF7E0(v9, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v17 = objc_opt_self();
  v18 = sub_21DBF5C0C();
  (*(v11 + 8))(v13, v10);
  v19 = [v17 rem:v14 dateComponentsWithDate:v18 timeZone:a1 & 1 isAllDay:?];

  v20 = v29;
  sub_21DBF4EFC();

  if (a1)
  {
    v21 = sub_21DBF4EDC();
    v22 = [v21 rem_strippingTimeZone];

    v23 = v26;
    sub_21DBF4EFC();

    v25 = v27;
    v24 = v28;
    (*(v27 + 8))(v20, v28);
    (*(v25 + 32))(v20, v23, v24);
  }
}

Swift::Void __swiftcall TTRReminderEditor.edit(title:locale:registeringUndo:)(NSAttributedString title, Swift::String_optional locale, Swift::Bool registeringUndo)
{
  if (locale.value._object)
  {
    countAndFlagsBits = locale.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (locale.value._object <= 1)
  {
    object = 1;
  }

  else
  {
    object = locale.value._object;
  }

  sub_21DBF8E0C();
  v7 = sub_21D9CA3E0(title.super.isa, countAndFlagsBits, object);

  if (registeringUndo)
  {
    if (v7)
    {
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v7);
    }
  }

  else
  {
  }
}

id TTRReminderEditor.moveAsSubtask(_:position:)(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(v2 + 16);
  v7 = [v6 subtaskContext];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 listChangeItem];
    if (v9)
    {
      v10 = v9;
      v11 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(a1, v9, v8, 0);

      if (v5)
      {
LABEL_4:
        if (v5 == 1)
        {
          v12 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          v13 = v4;
LABEL_12:
          sub_21D157850(v4, v5);
          [v8 *v12];

          return v11;
        }

        v13 = 0;
        if (v4)
        {
          v12 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          goto LABEL_12;
        }

LABEL_11:
        v12 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a1;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v13 = v4;
    goto LABEL_11;
  }

  return 0;
}

uint64_t TTRReminderEditor.edit(dueDateComponents:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  LOBYTE(a1) = sub_21D9C50E0(a1, v4);
  sub_21D0CF7E0(v4, &unk_27CE60DA0, &unk_21DC0C0C0);
  return a1 & 1;
}

id TTRReminderEditor.edit(url:)(uint64_t a1)
{
  v53 = a1;
  v2 = sub_21DBF54CC();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v48 = &v43[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v7);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v43[-v16];
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v43[-v20];
  v51 = v1;
  result = [*(v1 + 16) attachmentContext];
  if (result)
  {
    v46 = v11;
    v47 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v49 = result;
    v23 = [result urlAttachments];
    sub_21D0D8CF0(0, &qword_280D17820, 0x277D448E8);
    v24 = sub_21DBFA5EC();

    if (v24 >> 62)
    {
      result = sub_21DBFBD7C();
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v52;
    v45 = v4;
    if (result)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D44740](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v26 = *(v24 + 32);
      }

      v27 = v26;

      v28 = [v27 url];

      sub_21DBF546C();
      (*(v25 + 56))(v21, 0, 1, v2);
    }

    else
    {

      (*(v25 + 56))(v21, 1, 1, v2);
    }

    v29 = *(v7 + 48);
    sub_21D0D3954(v53, v9, &qword_27CE5EA20, &qword_21DC0D4A0);
    sub_21D0D3954(v21, &v9[v29], &qword_27CE5EA20, &qword_21DC0D4A0);
    v30 = *(v25 + 48);
    if (v30(v9, 1, v2) == 1)
    {
      if (v30(&v9[v29], 1, v2) == 1)
      {

        sub_21D0CF7E0(v9, &qword_27CE5EA20, &qword_21DC0D4A0);
        return sub_21D0CF7E0(v21, &qword_27CE5EA20, &qword_21DC0D4A0);
      }
    }

    else
    {
      v31 = v17;
      sub_21D0D3954(v9, v17, &qword_27CE5EA20, &qword_21DC0D4A0);
      if (v30(&v9[v29], 1, v2) != 1)
      {
        v41 = v48;
        (*(v25 + 32))(v48, &v9[v29], v2);
        sub_21D9D77FC(&qword_280D171D0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v44 = sub_21DBFA10C();
        v42 = *(v25 + 8);
        v42(v41, v2);
        v42(v31, v2);
        sub_21D0CF7E0(v9, &qword_27CE5EA20, &qword_21DC0D4A0);
        if (v44)
        {

          return sub_21D0CF7E0(v21, &qword_27CE5EA20, &qword_21DC0D4A0);
        }

LABEL_16:
        v32 = v50;
        sub_21D0D3954(v53, v50, &qword_27CE5EA20, &qword_21DC0D4A0);
        if (v30(v32, 1, v2) == 1)
        {
          sub_21D0CF7E0(v32, &qword_27CE5EA20, &qword_21DC0D4A0);
          v33 = v49;
          [v49 removeURLAttachments];
        }

        else
        {
          v34 = v52;
          v35 = v45;
          (*(v52 + 32))(v45, v32, v2);
          v36 = sub_21DBF53FC();
          v33 = v49;

          (*(v34 + 8))(v35, v2);
        }

        v37 = v46;
        v38 = v47;
        sub_21D0D3954(v21, v47, &qword_27CE5EA20, &qword_21DC0D4A0);
        v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
        v40 = swift_allocObject();
        sub_21D0D523C(v38, v40 + v39, &qword_27CE5EA20, &qword_21DC0D4A0);
        sub_21D182E74(sub_21D9D70F4, v40);

        return sub_21D0CF7E0(v21, &qword_27CE5EA20, &qword_21DC0D4A0);
      }

      (*(v25 + 8))(v17, v2);
    }

    sub_21D0CF7E0(v9, &unk_27CE5F2A0, &unk_21DC09120);
    goto LABEL_16;
  }

  return result;
}