uint64_t TTRShowGroupPrintingDataModelSource.__allocating_init(group:store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_showCompleted;
  v10 = sub_21DBF71BC();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_sortingStyle;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 32))(v8 + v11, a4, v12);
  return v8;
}

uint64_t sub_21D1860F4(unsigned __int8 *a1)
{
  v2 = v1;
  v88 = sub_21DBF70DC();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21DBF71BC();
  v5 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v90 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8, &unk_21DC09580);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v76 - v14;
  v16 = sub_21DBF745C();
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21DBF73CC();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *a1;
  v19 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (*(v2 + v19))
  {
    v20 = v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v15;
      v22 = v8;
      v23 = v19;
      v24 = v12;
      v25 = v7;
      v26 = v5;
      v27 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      v96[0] = v89;
      v29 = *(v27 + 8);
      v5 = v26;
      v7 = v25;
      v12 = v24;
      v19 = v23;
      v8 = v22;
      v15 = v21;
      (*(v29 + 16))(v96, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v30 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v31 = *(v2 + v30);
  if (v31)
  {
    v32 = v31;
    v33 = v83;
    sub_21DBF6E9C();
    v80 = v32;
    v34 = sub_21DBFB60C();
    MEMORY[0x223D3FB50](v33, v34);
    v35 = *(v2 + v19);
    if (v35)
    {
      v36 = v5;
      v37 = *(*v35 + 104);
      swift_beginAccess();
      sub_21D0D3954(v35 + v37, v15, &qword_27CE585C8, &unk_21DC09580);
      if ((*(v8 + 48))(v15, 1, v7) == 1)
      {
        sub_21D0CF7E0(v15, &qword_27CE585C8, &unk_21DC09580);
        v38 = 0;
        v5 = v36;
        v39 = v93;
      }

      else
      {
        v38 = *&v15[*(v7 + 48)];
        v40 = v93;
        (*(v91 + 8))(v15, v93);
        v39 = v40;
        v5 = v36;
      }
    }

    else
    {
      v38 = 0;
      v39 = v93;
    }

    v81 = v19;
    v82 = v7;
    v41 = *(v7 + 48);
    v78 = *(v91 + 16);
    v76 = v91 + 16;
    v78(v12, v92, v39);
    v83 = v12;
    *&v12[v41] = v38;
    v42 = v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v79 = v38;
    if (Strong)
    {
      v44 = *(v42 + 1);
      v45 = swift_getObjectType();
      v46 = v38;
      v47 = v45;
      v48 = *(v44 + 8);
      v49 = *(v48 + 8);
      v50 = v46;
      v51 = v49(v47, v48);
      LOBYTE(v48) = v52;
      swift_unknownObjectRelease();
      v53 = v84;
      if ((v48 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v54 = v38;
      v53 = v84;
    }

    v51 = 30;
LABEL_17:
    v77 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
    v55 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_showCompletedContextInstance);
    v56 = *(v55 + 40) == 1;
    v84 = v51;
    if (v56)
    {
      (*(v5 + 104))(v90, *MEMORY[0x277D45468], v53);
    }

    else
    {
      swift_beginAccess();
      *v90 = *(v55 + 48);
      (*(v5 + 104))();
      sub_21DBF8E0C();
    }

    v57 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_countCompleted);
    v58 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v59 = v87;
    v60 = v2 + v58;
    v61 = v86;
    v62 = v88;
    (*(v87 + 16))(v86, v60, v88);
    type metadata accessor for TTRShowGroupMonitorableDataView(0);
    v63 = swift_allocObject();
    v64 = v80;
    v65 = v77;
    *(v63 + 16) = v80;
    *(v63 + 24) = v65;
    (*(v5 + 32))(v63 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_showCompleted, v90, v53);
    *(v63 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_countCompleted) = v57;
    (*(v59 + 32))(v63 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_sortingStyle, v61, v62);
    *(v63 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_remindersToPrefetchCount) = v84;
    v66 = *(v82 + 48);
    v67 = v85;
    v68 = v83;
    v78(v85, v83, v93);
    *(v67 + v66) = v79;
    v69 = v81;
    swift_beginAccess();
    v70 = v64;
    v71 = v65;
    sub_21D4FB13C((v2 + v69), v67, v63, v2, v89);
    sub_21D0CF7E0(v67, &qword_27CE585A0, &qword_21DC19750);
    swift_endAccess();
    v94 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520, &unk_21DC09530);
    v94 = sub_21DBFA1AC();
    v95 = v72;
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v73 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v73);
    *(&v76 - 2) = v2;
    *(&v76 - 1) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    sub_21D0CF7E0(v68, &qword_27CE585A0, &qword_21DC19750);
    return (*(v91 + 8))(v92, v93);
  }

  if (*(v2 + v19))
  {

    sub_21D737CA0();
  }

  *(v2 + v19) = 0;

  v75 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v2 + v75) = 0;
}

uint64_t TTRShowGroupMonitorableDataView.__allocating_init(group:store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  LOBYTE(a4) = *a4;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v12 + v13, a3, v14);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_countCompleted) = a4;
  v15 = OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_sortingStyle;
  v16 = sub_21DBF70DC();
  (*(*(v16 - 8) + 32))(v12 + v15, a5, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_remindersToPrefetchCount) = a6;
  return v12;
}

uint64_t sub_21D186C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_21D186D08(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v1 + v4))
    {
      v5 = a1;

      v6 = sub_21DBF6E3C();
      sub_21D4F5F28(v6);
      v8 = v7;

      sub_21D4F9F64(v5, v8);
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v10 = a1;
      v11 = sub_21DBFB12C();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = sub_21D87E81C(v9, sub_21D1947D8, v12, v10, v11);
      *(v2 + v4) = v13;

      swift_beginAccess();
      v13[3] = &protocol witness table for TTRShowGroupDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v14 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager;
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager))
    {

      v15 = sub_21DBF769C();
      sub_21D4F5F28(v15);
      v17 = v16;

      sub_21D4F9F90(a1, v17);
    }

    else
    {
      v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v19 = sub_21DBFB12C();
      *(v2 + v14) = sub_21D87E844(v18, sub_21D883290, 0, a1, v19);
    }

    v20 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager;
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager))
    {

      v21 = sub_21DBF769C();
      sub_21D4F5F28(v21);
      v23 = v22;

      sub_21D4FA2F8(a1, v23);
    }

    else
    {
      v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v25 = sub_21DBFB12C();
      *(v2 + v20) = sub_21D87E86C(v24, sub_21D8833F0, 0, a1, v25);
    }
  }
}

uint64_t sub_21D187058()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate);
}

uint64_t TTRShowGroupDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowGroupDataModelSource.__deallocating_deinit()
{
  TTRShowGroupDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowGroupDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
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
  sub_21D1860F4(&v2);
}

uint64_t sub_21D1872E0(char a1)
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
  return sub_21D1860F4(&v3);
}

uint64_t TTRShowGroupDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowGroupDataModelSourceDeleteCompletedContext.init(group:)(void *a1)
{
  v3 = sub_21DBF806C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 objectID];

  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D45958], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete, v7, v3);
  return v1;
}

uint64_t TTRShowGroupDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowGroupDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D1875A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21D187628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF745C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3FB60]();
    (*(v13 + 24))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t TTRShowGroupDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
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

uint64_t TTRShowGroupDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v112 = a4;
  v111 = sub_21DBF73DC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v119 = &v96[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v120 = &v96[-v11];
  v121 = sub_21DBF740C();
  v123 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v116 = &v96[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v122 = &v96[-v14];
  v113 = sub_21DBF745C();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v96[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v118 = &v96[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v96[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  MEMORY[0x28223BE20](v21);
  v108 = &v96[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v117 = &v96[-v24];
  MEMORY[0x28223BE20](v25);
  v27 = &v96[-v26];
  MEMORY[0x28223BE20](v28);
  v30 = &v96[-v29];
  v31 = sub_21DBF73CC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v114 = v31;
  v33(v30, a2);
  *(v30 + *(v21 + 48)) = a3;
  v34 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = *(v5 + v34);
  if (!v35)
  {
    v49 = a3;
    return sub_21D0CF7E0(v30, &qword_27CE585A0, &qword_21DC19750);
  }

  v36 = a3;
  if (v35 == a1)
  {
    sub_21D186D08(a3);
    sub_21D0D3954(v30, v27, &qword_27CE585A0, &qword_21DC19750);

    MEMORY[0x223D3FB60]();
    v37 = *(v32 + 8);
    v107 = v32 + 8;
    v106 = v37;
    v37(v27, v114);
    v38 = sub_21DBF742C();
    v39 = *(v115 + 8);
    v115 += 8;
    v101 = v39;
    v39(v20, v113);
    v104 = v5;
    v103 = v30;
    v105 = v21;
    v100 = v27;
    if (v38 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        v40 = sub_21DBFBD7C();
        if (!v40)
        {

          v42 = MEMORY[0x277D84F90];
LABEL_15:
          v50 = v104;
          v30 = v103;
          v21 = v105;
          if (*(v42 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
            v51 = sub_21DBFC40C();
          }

          else
          {
            v51 = MEMORY[0x277D84F98];
          }

          v127 = v51;
          v52 = sub_21DBF8E0C();
          sub_21D1931C0(v52, 1, &v127);

          v53 = v127;
          v54 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
          swift_beginAccess();
          if (*(v50 + v54))
          {

            sub_21D188810(v53);
            v56 = v55;

            TTRBatchFetchManager<A>.override(objects:)(v56);
          }

          else
          {
          }

          goto LABEL_25;
        }

LABEL_5:
        v127 = MEMORY[0x277D84F90];
        sub_21D18E6B8(0, v40 & ~(v40 >> 63), 0);
        if (v40 < 0)
        {
          goto LABEL_69;
        }

        v41 = 0;
        v42 = v127;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x223D44740](v41, v38);
          }

          else
          {
            v43 = *(v38 + 8 * v41 + 32);
          }

          v44 = v43;
          v45 = [v43 objectID];
          v127 = v42;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_21D18E6B8((v46 > 1), v47 + 1, 1);
            v42 = v127;
          }

          ++v41;
          *(v42 + 16) = v47 + 1;
          v48 = v42 + 16 * v47;
          *(v48 + 32) = v45;
          *(v48 + 40) = v44;
        }

        while (v40 != v41);

        goto LABEL_15;
      }
    }

    else
    {
      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_5;
      }
    }

LABEL_25:
    v99 = 0;
    v57 = v117;
    sub_21D0D3954(v30, v117, &qword_27CE585A0, &qword_21DC19750);

    v58 = v118;
    MEMORY[0x223D3FB60]();
    v106(v57, v114);
    a2 = sub_21DBF6E3C();
    v101(v58, v113);
    v126[0] = MEMORY[0x277D84F90];
    v59 = *(a2 + 2);
    if (v59)
    {
      v60 = 0;
      v118 = (v123 + 16);
      v61 = (v110 + 88);
      v62 = *MEMORY[0x277D45520];
      LODWORD(v117) = *MEMORY[0x277D45510];
      v38 = v123 + 8;
      v97 = *MEMORY[0x277D45518];
      v30 = v59;
      v98 = v59 - 1;
      v102 = MEMORY[0x277D84F90];
      v21 = v111;
      v63 = v121;
      do
      {
        v64 = v60;
        while (1)
        {
          if (v64 >= *(a2 + 2))
          {
            __break(1u);
            goto LABEL_68;
          }

          (*(v123 + 16))(v122, &a2[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v64], v63);
          v60 = v64 + 1;
          v65 = v120;
          sub_21DBF73FC();
          v66 = (*v61)(v65, v21);
          if (v66 == v62)
          {
            break;
          }

          if (v66 != v117)
          {
            if (v66 != v97)
            {
LABEL_72:
              sub_21DBFC63C();
              __break(1u);
              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            break;
          }

          v63 = v121;
          (*v38)(v122, v121);
          ++v64;
          if (v30 == v60)
          {
            goto LABEL_39;
          }
        }

        v67 = v122;
        sub_21DBF73EC();
        v68 = (*v38)(v67, v121);
        MEMORY[0x223D42D80](v68);
        if (*((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
          v21 = v111;
        }

        sub_21DBFA6CC();
        v102 = v126[0];
        v63 = v121;
      }

      while (v98 != v64);
    }

    else
    {
      v102 = MEMORY[0x277D84F90];
    }

LABEL_39:

    v21 = v104;
    if (!*(v104 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager))
    {
      v30 = v103;
      v38 = v105;
      v72 = v109;
      a2 = v108;
      v71 = MEMORY[0x277D84F90];
      goto LABEL_44;
    }

    v69 = v102;
    v30 = v103;
    v38 = v105;
    a2 = v108;
    if (v102 >> 62)
    {
      goto LABEL_70;
    }

    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v70 = v69;
    while (1)
    {
      v71 = MEMORY[0x277D84F90];

      sub_21D71B048(v70);

      v72 = v109;
LABEL_44:

      sub_21D0D3954(v30, a2, &qword_27CE585A0, &qword_21DC19750);

      MEMORY[0x223D3FB60]();
      v106(a2, v114);
      v38 = sub_21DBF6E3C();
      v101(v72, v113);
      v126[0] = v71;
      v73 = *(v38 + 16);
      if (!v73)
      {
        break;
      }

      v74 = 0;
      v122 = (v123 + 16);
      v75 = (v110 + 88);
      v76 = *MEMORY[0x277D45520];
      LODWORD(v120) = *MEMORY[0x277D45510];
      LODWORD(v118) = *MEMORY[0x277D45518];
      v77 = (v123 + 8);
      v115 = v73 - 1;
      v117 = MEMORY[0x277D84F90];
LABEL_46:
      v30 = v74;
      v21 = v111;
      a2 = v121;
      v78 = v116;
      while (v30 < *(v38 + 16))
      {
        (*(v123 + 16))(v78, v38 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v30, a2);
        v79 = v119;
        sub_21DBF73FC();
        v80 = (*v75)(v79, v21);
        if (v80 != v76)
        {
          if (v80 == v120)
          {
            v81 = v116;
            sub_21DBF73EC();
            v82 = (*v77)(v81, v121);
            MEMORY[0x223D42D80](v82);
            if (*((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            v74 = v30 + 1;
            sub_21DBFA6CC();
            v117 = v126[0];
            v83 = v115 == v30;
            v21 = v104;
            v30 = v103;
            if (v83)
            {
              goto LABEL_60;
            }

            goto LABEL_46;
          }

          a2 = v121;
          v78 = v116;
          if (v80 != v118)
          {
            goto LABEL_72;
          }
        }

        ++v30;
        (*v77)(v78, a2);
        if (v73 == v30)
        {
          v21 = v104;
          v30 = v103;
          goto LABEL_60;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

      sub_21DBF8E0C();
      v70 = sub_21DBFC33C();
    }

    v117 = v71;
LABEL_60:

    if (*(v21 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager))
    {
      v84 = v117;
      v85 = v105;
      v86 = v100;
      if (v117 >> 62)
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

        sub_21DBF8E0C();
        v87 = sub_21DBFC33C();
      }

      else
      {

        sub_21DBF8E0C();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v87 = v84;
      }

      sub_21D71B3CC(v87);
    }

    else
    {
      v85 = v105;
      v86 = v100;
    }

    sub_21D0D3954(v30, v86, &qword_27CE585A0, &qword_21DC19750);

    v88 = sub_21DBF73BC();
    v106(v86, v114);
    v89 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
    swift_beginAccess();
    v90 = *(v21 + v89);
    *(v21 + v89) = v88;

    v124 = 0;
    v125 = 0xE000000000000000;
    sub_21DBFBEEC();
    v124 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520, &unk_21DC09530);
    v91 = sub_21DBFA1AC();
    v93 = v92;

    v124 = v91;
    v125 = v93;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v94 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v94);
    *&v96[-32] = v21;
    *&v96[-24] = v30;
    *&v96[-16] = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }

  return sub_21D0CF7E0(v30, &qword_27CE585A0, &qword_21DC19750);
}

void sub_21D188810(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F8, &qword_21DC250B0);
  v3 = sub_21DBFC40C();
LABEL_6:
  if (sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700) == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      v9 = sub_21DBFC21C();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v9 | 0x8000000000000000;
    }

    else
    {
      v40 = -1 << *(a1 + 32);
      v11 = ~v40;
      v10 = a1 + 64;
      v41 = -v40;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v12 = v42 & *(a1 + 64);
      v13 = a1;
    }

    v43 = (v11 + 64) >> 6;

    sub_21DBF8E0C();
    v44 = 0;
    for (i = v13; ; v13 = i)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v58 = sub_21DBFC2DC();
        if (!v58)
        {
          v39 = v13;
          goto LABEL_61;
        }

        v65 = v58;
        swift_dynamicCast();
        sub_21DBF635C();
        swift_dynamicCast();
        v57 = v65;
        v56 = v66;
        v51 = v44;
        v53 = v12;
        if (!v66)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v50 = v12;
        v51 = v44;
        if (!v12)
        {
          v52 = v44;
          do
          {
            v51 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_65;
            }

            if (v51 >= v43)
            {
              goto LABEL_60;
            }

            v50 = *(v10 + 8 * v51);
            ++v52;
          }

          while (!v50);
          v13 = i;
        }

        v53 = (v50 - 1) & v50;
        v54 = (v51 << 9) | (8 * __clz(__rbit64(v50)));
        v55 = *(*(v13 + 56) + v54);
        v56 = *(*(v13 + 48) + v54);
        v57 = v55;
        if (!v56)
        {
LABEL_60:
          v39 = i;
LABEL_61:
          sub_21D0CFAF8(v39);

          return;
        }
      }

      v59 = sub_21D17E07C(v56);
      if (v60)
      {
        v45 = *(v3 + 48);
        v46 = *(v45 + 8 * v59);
        *(v45 + 8 * v59) = v56;
        v47 = v59;

        v48 = *(v3 + 56);
        v49 = *(v48 + 8 * v47);
        *(v48 + 8 * v47) = v57;
      }

      else
      {
        v61 = *(v3 + 16);
        if (v61 >= *(v3 + 24))
        {
          goto LABEL_66;
        }

        *(v3 + 64 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        *(*(v3 + 48) + 8 * v59) = v56;
        *(*(v3 + 56) + 8 * v59) = v57;
        *(v3 + 16) = v61 + 1;
      }

      v44 = v51;
      v12 = v53;
    }
  }

  if (v2)
  {
    v4 = sub_21DBFC21C();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v6 = ~v14;
    v5 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v7 = v16 & *(a1 + 64);
    v8 = a1;
  }

  v17 = (v6 + 64) >> 6;
  v18 = v3 + 64;

  sub_21DBF8E0C();
  v19 = 0;
  v62 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v30 = sub_21DBFC2DC();
    if (!v30)
    {
      v39 = v8;
      goto LABEL_61;
    }

    v64 = v30;
    swift_dynamicCast();
    sub_21DBF635C();
    swift_dynamicCast();
    v29 = v64;
    v28 = v66;
    v22 = v19;
    v24 = v7;
    if (!v66)
    {
LABEL_38:
      v39 = v62;
      goto LABEL_61;
    }

LABEL_29:
    v31 = sub_21DBFB62C();
    v32 = -1 << *(v3 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      do
      {
        if (++v34 == v36 && (v35 & 1) != 0)
        {
          __break(1u);
          goto LABEL_64;
        }

        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v34);
      }

      while (v38 == -1);
      v20 = __clz(__rbit64(~v38)) + (v34 << 6);
    }

    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v3 + 48) + 8 * v20) = v28;
    *(*(v3 + 56) + 8 * v20) = v29;
    ++*(v3 + 16);
    v19 = v22;
    v7 = v24;
    v8 = v62;
  }

  v21 = v7;
  v22 = v19;
  if (v7)
  {
LABEL_25:
    v24 = (v21 - 1) & v21;
    v25 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v26 = *(*(v8 + 48) + v25);
    v27 = *(*(v8 + 56) + v25);
    v28 = v26;
    v29 = v27;
    if (!v28)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v23 = v19;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      goto LABEL_38;
    }

    v21 = *(v5 + 8 * v22);
    ++v23;
    if (v21)
    {
      v8 = v62;
      goto LABEL_25;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_21D188D70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587F8, &qword_21DC09A40);
    v2 = sub_21DBFC40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  sub_21DBF8E0C();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_21DBF8E0C();
        v17 = sub_21DBF5DDC();
        v18 = sub_21D0CEF70(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21D188F84(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E8, &unk_21DC090C0);
    v4 = sub_21DBFC40C();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  sub_21DBF8E0C();
  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_21D0D8CF0(0, a2, a3);
        sub_21DBF8E0C();
        v20 = v19;
        swift_dynamicCast();
        sub_21D0CF2E8(&v29, v31);
        sub_21D0CF2E8(v31, v32);
        sub_21D0CF2E8(v32, &v30);
        v21 = sub_21D0CEF70(v18, v17);
        if (v22)
        {
          v10 = (v4[6] + 16 * v21);
          *v10 = v18;
          v10[1] = v17;
          v11 = v21;

          v12 = (v4[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          sub_21D0CF2E8(&v30, v12);
          v9 = v13;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_20;
          }

          *(v4 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v4[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          sub_21D0CF2E8(&v30, (v4[7] + 32 * v21));
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v4[2] = v26;
          v9 = v13;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21D1891FC(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280, &qword_21DC09A00);
    v3 = sub_21DBFC40C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  sub_21DBF8E0C();
  v9 = 0;
  while (v6)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a1 + 48) + v12);
    v29 = *(*(a1 + 56) + v12);
    v14 = v29;
    sub_21D0D8CF0(0, a2, a3);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_21D0CF2E8((v30 + 8), v28);
    sub_21D0CF2E8(v28, v30);
    sub_21DBFA16C();
    sub_21DBFC7DC();
    sub_21DBFA27C();
    v17 = sub_21DBFC82C();

    v18 = -1 << *(v3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v8 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v8 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v8 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v6 &= v6 - 1;
    *(*(v3 + 48) + 8 * v10) = v15;
    sub_21D0CF2E8(v30, (*(v3 + 56) + 32 * v10));
    ++*(v3 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_21D1894AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v6 = sub_21DBF745C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v15 = result;
  if (result)
  {
    v16 = *(v13 + 8);
    v22[0] = swift_getObjectType();
    v22[1] = v4;
    v17 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
    swift_beginAccess();
    v18 = *(a1 + v17);
    sub_21D0D3954(v23, v12, &qword_27CE585A0, &qword_21DC19750);
    v19 = *&v12[*(v10 + 48)];
    v20 = v18;

    MEMORY[0x223D3FB60]();
    v21 = sub_21DBF73CC();
    (*(*(v21 - 8) + 8))(v12, v21);
    (*(v16 + 24))(v18, v9, v24, v22[0], v16);
    swift_unknownObjectRelease();

    result = (*(v7 + 8))(v9, v6);
  }

  *v25 = v15 == 0;
  return result;
}

uint64_t sub_21D189714()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
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

uint64_t sub_21D189790(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = *&a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750) + 48)];

  return TTRShowGroupDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowGroupDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520, &unk_21DC09530);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D189934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowGroupDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56558 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE58508);
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
    type metadata accessor for TTRShowGroupDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowGroupDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowGroupPrintingDataModelSource.init(group:store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8 = OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_showCompleted;
  v9 = sub_21DBF71BC();
  (*(*(v9 - 8) + 32))(v5 + v8, a3, v9);
  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_sortingStyle;
  v11 = sub_21DBF70DC();
  (*(*(v11 - 8) + 32))(v5 + v10, a4, v11);
  return v5;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowGroupPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v63 = retstr;
  v80 = sub_21DBF6F1C();
  v72 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21DBF6F2C();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = (v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_21DBF6E6C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF714C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF734C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v77 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585B0, &qword_21DC09568);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = v61 - v12;
  if (qword_27CE56558 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v81 = v6;
    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE58508);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "PrintingDataModelSource: fetch Group tree", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    v17 = *(v2 + 16);
    v74 = *(v2 + 24);
    v75 = OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_sortingStyle;
    v18 = *MEMORY[0x277D45500];
    v19 = *(v10 + 104);
    v20 = v77;
    v76 = v9;
    v19(v77, v18, v9);
    v21 = v78;
    v9 = v81;
    (*(v7 + 104))(v78, *MEMORY[0x277D45460], v81);
    v22 = v107;
    sub_21DBF6F3C();
    if (v22)
    {
      (*(v7 + 8))(v21, v9);
      (*(v10 + 8))(v20, v76);
      return;
    }

    v61[0] = v17;
    v61[1] = 0;
    v23 = *(v7 + 8);
    v7 += 8;
    v23(v21, v9);
    (*(v10 + 8))(v20, v76);
    v10 = v67;
    v24 = sub_21DBF76DC();
    v25 = v69;
    MEMORY[0x223D3F610](v24);
    v68[1](v10, v70);
    v26 = sub_21DBF6E3C();
    (*(v71 + 8))(v25, v73);
    v27 = *(v26 + 16);
    if (!v27)
    {

      v28 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v106 = MEMORY[0x277D84F90];
    sub_21D18E6F8(0, v27, 0);
    v28 = v106;
    v6 = *(v72 + 80);
    v71 = type metadata accessor for TTRListColors();
    if (*(v26 + 16))
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v29 = 0;
  v30 = v26 + ((v6 + 32) & ~v6);
  v31 = *(v72 + 16);
  v32 = *(v72 + 72);
  v72 += 16;
  v68 = (v72 - 8);
  v69 = v31;
  v66 = v32;
  v67 = (v27 - 1);
  v70 = v26;
  while (1)
  {
    v77 = v29;
    v78 = v28;
    v73 = v30;
    v69(v79);
    v33 = sub_21DBF6EFC();
    static TTRListColors.color(for:)(v33, v97);

    v35 = v97[0];
    v34 = v97[1];
    v10 = v97[3];
    v74 = v97[2];
    v36 = v97[4];
    v7 = v97[5];
    v9 = v98;
    v37 = sub_21DBF6EEC();
    v75 = v38;
    v76 = v37;
    v107 = v35;
    v81 = v34;
    v39 = v34;
    v40 = v74;
    sub_21D0FB960(v35, v39, v74, v10, v36, v7, v9);
    LOBYTE(v35) = sub_21DBF6EBC();
    v41 = sub_21DBF6F0C();
    if (v35)
    {
      v43 = Array<A>.replacingSubtasksWithNil()(v41, v42);
      sub_21D1078C0(v107, v81, v40, v10, v36, v7, v9);

      v2 = v43;
    }

    else
    {
      v2 = v41;
      sub_21D1078C0(v107, v81, v40, v10, v36, v7, v9);
    }

    *&v82 = v76;
    *(&v82 + 1) = v75;
    *&v83 = v107;
    *(&v83 + 1) = v81;
    *&v84 = v40;
    *(&v84 + 1) = v10;
    *&v85 = v36;
    *(&v85 + 1) = v7;
    LOBYTE(v86[0]) = v9;
    *(v86 + 1) = 50331648;
    v6 = &v95;
    *(v86 + 5) = v95;
    BYTE7(v86[0]) = v96;
    *(v86 + 8) = 0u;
    *(&v86[1] + 8) = 0u;
    *(&v86[2] + 8) = 0u;
    WORD4(v86[3]) = 255;
    nullsub_1();
    v103 = v86[0];
    v104 = v86[1];
    *v105 = v86[2];
    *&v105[10] = *(&v86[2] + 10);
    v99 = v82;
    v100 = v83;
    v101 = v84;
    v102 = v85;
    (*v68)(v79, v80);
    v89 = v101;
    v90 = v102;
    v93 = *v105;
    v94 = *&v105[16];
    v91 = v103;
    v92 = v104;
    v87 = v99;
    v88 = v100;
    v28 = v78;
    v106 = v78;
    v45 = *(v78 + 2);
    v44 = *(v78 + 3);
    if (v45 >= v44 >> 1)
    {
      v6 = &v106;
      sub_21D18E6F8((v44 > 1), v45 + 1, 1);
      v28 = v106;
    }

    *(v28 + 2) = v45 + 1;
    v46 = &v28[136 * v45];
    v47 = v87;
    v48 = v88;
    v49 = v90;
    *(v46 + 4) = v89;
    *(v46 + 5) = v49;
    *(v46 + 2) = v47;
    *(v46 + 3) = v48;
    v50 = v91;
    v51 = v92;
    v52 = v94;
    *(v46 + 8) = v93;
    *(v46 + 9) = v52;
    *(v46 + 6) = v50;
    *(v46 + 7) = v51;
    *(v46 + 20) = v2;
    if (v67 == v77)
    {
      break;
    }

    v29 = v77 + 1;
    v30 = v73 + v66;
    if ((v77 + 1) >= *(v70 + 16))
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v53 = v61[0];
  v54 = REMSmartListType.color.getter(*MEMORY[0x277D44B80]);
  if (!v54)
  {
    if (qword_280D1BAC0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v99 = xmmword_280D1BAC8;
    v100 = xmmword_280D1BAD8;
    v101 = xmmword_280D1BAE8;
    LOBYTE(v102) = byte_280D1BAF8;
    v54 = TTRListColors.Color.nativeColor.getter();
  }

  v55 = v54;
  v56 = [v53 name];
  v57 = sub_21DBFA16C();
  v59 = v58;

  (*(v62 + 8))(v65, v64);
  v60 = v63;
  v63->listName._countAndFlagsBits = v57;
  v60->listName._object = v59;
  v60->listColor.super.isa = v55;
  v60->count.value = 0;
  v60->count.is_nil = 1;
  v60->sections._rawValue = v28;
  v60->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
}

RemindersUICore::TTRTipKitDataModelSourceContextKeyCondition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowGroupTipKitDataModelSource.hasCompletedReminders()()
{
  v2 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v11 = 0;
  v4 = [v3 fetchCompletedRemindersCountWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v11;
    v7 = [v5 longLongValue];

    if (v7 <= 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *v2 = v9;
  }

  else
  {
    v10 = v11;
    sub_21DBF52DC();

    swift_willThrow();
  }

  return result;
}

uint64_t TTRShowGroupTipKitDataModelSource.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRShowGroupTipKitDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRShowGroupMonitorableDataView.init(group:store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v11 = *a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12 = OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_showCompleted;
  v13 = sub_21DBF71BC();
  (*(*(v13 - 8) + 32))(v7 + v12, a3, v13);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_countCompleted) = v11;
  v14 = OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v7 + v14, a5, v15);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_remindersToPrefetchCount) = a6;
  return v7;
}

uint64_t TTRShowGroupMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v60 = a1;
  v61 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585B8, &qword_21DC09570);
  MEMORY[0x28223BE20](v57);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - v9;
  v71 = sub_21DBF714C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF70DC();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21DBF738C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C0, &qword_21DC09578);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v73 = &v55 - v14;
  v77 = sub_21DBF71BC();
  v15 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v62 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = sub_21DBF734C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v63 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v55 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8, &unk_21DC09580);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v55 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0, &unk_21DC15F10);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE585C8, &unk_21DC09580);
    if (a4)
    {
      v30 = *(v5 + 24);
      v75 = 0;
      v76 = v30;
      v31 = v77;
      goto LABEL_9;
    }

    v75 = 0;
LABEL_8:
    v31 = v77;
    v76 = [*(v5 + 24) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v32 = *(v29 + 48);
  v33 = a4;
  v34 = *&v28[v32];
  v35 = sub_21DBF73CC();
  (*(*(v35 - 8) + 8))(v28, v35);
  v75 = v34;
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

  v76 = *(v5 + 24);
  v31 = v77;
  if (!v34)
  {
    v75 = 0;
  }

LABEL_9:
  *v25 = *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_remindersToPrefetchCount);
  v36 = v25;
  v37 = v21;
  v38 = *(v21 + 104);
  v78 = v36;
  v39 = v20;
  v38();
  v40 = OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_showCompleted;
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_countCompleted) && *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_countCompleted) != 1)
  {
    (*(v15 + 16))(v19, v5 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_showCompleted, v31);
    v41 = (*(v15 + 88))(v19, v31);
    if (v41 == *MEMORY[0x277D45478] || v41 == *MEMORY[0x277D45480])
    {
      (*(v15 + 8))(v19, v31);
    }

    else if (v41 != *MEMORY[0x277D45470] && v41 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  v42 = *(v5 + 16);
  (*(v65 + 16))(v64, v5 + OBJC_IVAR____TtC15RemindersUICore31TTRShowGroupMonitorableDataView_sortingStyle, v66);
  (*(v15 + 16))(v62, v5 + v40, v77);
  (*(v37 + 16))(v63, v78, v39);
  (*(v69 + 104))(v68, *MEMORY[0x277D45450], v71);
  v43 = v67;
  sub_21DBF737C();
  v45 = v73;
  v44 = v74;
  v47 = v75;
  v46 = v76;
  sub_21DBF747C();
  if (v44)
  {

    (*(v70 + 8))(v43, v72);
    (*(v37 + 8))(v78, v39);
  }

  else
  {
    (*(v70 + 8))(v43, v72);
    v48 = v57;
    v49 = *(v57 + 48);
    v77 = v39;
    v50 = v59;
    v51 = v56;
    v76 = v46;
    sub_21DBF76DC();
    *(v50 + v49) = sub_21DBF76BC();
    v52 = v58;
    sub_21D0D3954(v50, v58, &qword_27CE585B8, &qword_21DC09570);
    v42 = *(v52 + *(v48 + 48));
    v53 = sub_21DBF73CC();
    (*(*(v53 - 8) + 32))(v60, v52, v53);
    sub_21DBF76CC();

    sub_21D0CF7E0(v50, &qword_27CE585B8, &qword_21DC09570);
    (*(v55 + 8))(v45, v51);
    (*(v37 + 8))(v78, v77);
  }

  return v42;
}

uint64_t sub_21D18B258(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  return v2;
}

uint64_t sub_21D18B324(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_21D18B418(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowGroupMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D18B48C(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(a2 + 64);
  sub_21DBF8E0C();
  v9 = a4(a3, v8);

  v10 = *a1;
  *a1 = v9;
}

double sub_21D18B510(void **a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 64);
  if (*(v6 + 16))
  {
    sub_21DBF8E0C();
    v7 = sub_21D17E07C(a3);
    if (v8)
    {
      v9 = *(v6 + 56) + 48 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v16 = v10;
      v17 = v11;
      v18 = v12;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  a1[5] = v15;
  return sub_21D19510C(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_21D18B65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v6 = v5;
  v8 = sub_21DBF9D2C();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF9D5C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v6 + 80);
  v22 = v6;
  v23 = a1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v24 == 1)
  {
    v17[1] = *(v6 + 88);
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = v18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v19;
    v16 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v24 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v13, v10, v16);
    _Block_release(v16);
    (*(v21 + 8))(v10, v8);
    (*(v11 + 8))(v13, v20);
  }

  return result;
}

BOOL sub_21D18B998(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 72);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  swift_beginAccess();
  sub_21D29B0D0(&v8, a2);
  v6 = v8;
  swift_endAccess();

  return v5 == 0;
}

uint64_t sub_21D18BA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v7 = sub_21DBF9D2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = v12;
    v22 = v11;
    v25 = *(result + 80);
    v16 = result;
    sub_21DBF5EFC();
    v20 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21DBF814C();

    v17 = aBlock[0];
    v23 = *(v16 + 88);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    aBlock[4] = a4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v20;
    v19 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v25 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v14, v10, v19);
    _Block_release(v19);
    (*(v8 + 8))(v10, v7);
    (*(v21 + 8))(v14, v22);
  }

  return result;
}

uint64_t sub_21D18BD78(uint64_t a1, void *a2)
{
  v4 = sub_21DBF9D2C();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v49 = v9 + 16;
  aBlock[0] = MEMORY[0x277D84FA0];
  v10 = a2[10];
  v60[0] = v10;
  v56 = aBlock;
  v57 = a2;
  v11 = sub_21DBF5EFC();
  sub_21DBF8E0C();

  sub_21DBF814C();

  v12 = sub_21DBF8E0C();
  v13 = sub_21D19ED08(v12);

  v60[0] = v13;
  sub_21D9F84C8(aBlock[0], v14);
  v15 = sub_21D198698(v60[0]);

  v16 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
  if (!v16)
  {
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_32;
  }

LABEL_6:
  v50 = v9;
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v51 = v4;
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_280D0F108);
  sub_21DBF8E0C();
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAE9C();
  v20 = os_log_type_enabled(v18, v19);
  v48 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (v16)
    {
      v22 = sub_21DBFBD7C();
    }

    else
    {
      v22 = *(v15 + 16);
    }

    *(v21 + 4) = v22;

    _os_log_impl(&dword_21D0C9000, v18, v19, "TTRBatchFetchManager fetching {objectsReallyToFetch: %ld}", v21, 0xCu);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }

  v23 = a2[6];
  v24 = a2[5];
  swift_beginAccess();
  v25 = a2[4];

  v26 = v25;
  v27 = v23(v24, v15, v26);

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = sub_21DBFBD7C();
  }

  else
  {
    v28 = *(v27 + 16);
  }

  if (v16)
  {
    if (v28 != sub_21DBFBD7C())
    {
      goto LABEL_19;
    }
  }

  else if (v28 != *(v15 + 16))
  {
LABEL_19:
    swift_bridgeObjectRetain_n();

    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v46 = v30;
      v47 = v29;
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v31 = 136315650;
      v58 = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584F0, &qword_21DC09500);
      v32 = sub_21DBFA1AC();
      v34 = sub_21D0CDFB4(v32, v33, aBlock);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2048;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v35 = sub_21DBFBD7C();
      }

      else
      {
        v35 = *(v27 + 16);
      }

      *(v31 + 14) = v35;

      *(v31 + 22) = 2048;
      v37 = v47;
      if (v16)
      {
        v38 = sub_21DBFBD7C();
      }

      else
      {
        v38 = *(v15 + 16);
      }

      *(v31 + 24) = v38;

      _os_log_impl(&dword_21D0C9000, v37, v46, "TTRBatchFetchManager failed to fetch some objects {type: %s, fetched: %ld, expect: %ld}", v31, 0x20u);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_30;
  }

LABEL_30:
  aBlock[0] = v10;
  MEMORY[0x28223BE20](v36);
  *(&v44 - 4) = v27;
  *(&v44 - 3) = a2;
  *(&v44 - 2) = v49;

  sub_21DBF814C();

  v9 = v50;
  v4 = v51;
LABEL_33:
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = v9;
  aBlock[4] = sub_21D195374;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_109;
  v41 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v58 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v42 = v52;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v8, v42, v41);
  _Block_release(v41);
  (*(v55 + 8))(v42, v4);
  (*(v53 + 8))(v8, v54);
}

uint64_t sub_21D18C6EC(uint64_t a1, void *a2)
{
  v4 = sub_21DBF9D2C();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v49 = v9 + 16;
  aBlock[0] = MEMORY[0x277D84FA0];
  v10 = a2[10];
  v60[0] = v10;
  v56 = aBlock;
  v57 = a2;
  v11 = sub_21DBF5EFC();
  sub_21DBF8E0C();

  sub_21DBF814C();

  v12 = sub_21DBF8E0C();
  v13 = sub_21D19ED08(v12);

  v60[0] = v13;
  sub_21D9F84C8(aBlock[0], v14);
  v15 = sub_21D198698(v60[0]);

  v16 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
  if (!v16)
  {
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_32;
  }

LABEL_6:
  v50 = v9;
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v51 = v4;
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_280D0F108);
  sub_21DBF8E0C();
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAE9C();
  v20 = os_log_type_enabled(v18, v19);
  v48 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (v16)
    {
      v22 = sub_21DBFBD7C();
    }

    else
    {
      v22 = *(v15 + 16);
    }

    *(v21 + 4) = v22;

    _os_log_impl(&dword_21D0C9000, v18, v19, "TTRBatchFetchManager fetching {objectsReallyToFetch: %ld}", v21, 0xCu);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }

  v23 = a2[6];
  v24 = a2[5];
  swift_beginAccess();
  v25 = a2[4];

  v26 = v25;
  v27 = v23(v24, v15, v26);

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = sub_21DBFBD7C();
  }

  else
  {
    v28 = *(v27 + 16);
  }

  if (v16)
  {
    if (v28 != sub_21DBFBD7C())
    {
      goto LABEL_19;
    }
  }

  else if (v28 != *(v15 + 16))
  {
LABEL_19:
    swift_bridgeObjectRetain_n();

    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v46 = v30;
      v47 = v29;
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v31 = 136315650;
      v58 = sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E0, &unk_21DC094F0);
      v32 = sub_21DBFA1AC();
      v34 = sub_21D0CDFB4(v32, v33, aBlock);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2048;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v35 = sub_21DBFBD7C();
      }

      else
      {
        v35 = *(v27 + 16);
      }

      *(v31 + 14) = v35;

      *(v31 + 22) = 2048;
      v37 = v47;
      if (v16)
      {
        v38 = sub_21DBFBD7C();
      }

      else
      {
        v38 = *(v15 + 16);
      }

      *(v31 + 24) = v38;

      _os_log_impl(&dword_21D0C9000, v37, v46, "TTRBatchFetchManager failed to fetch some objects {type: %s, fetched: %ld, expect: %ld}", v31, 0x20u);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_30;
  }

LABEL_30:
  aBlock[0] = v10;
  MEMORY[0x28223BE20](v36);
  *(&v44 - 4) = v27;
  *(&v44 - 3) = a2;
  *(&v44 - 2) = v49;

  sub_21DBF814C();

  v9 = v50;
  v4 = v51;
LABEL_33:
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = v9;
  aBlock[4] = sub_21D195374;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_84;
  v41 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v58 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v42 = v52;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v8, v42, v41);
  _Block_release(v41);
  (*(v55 + 8))(v42, v4);
  (*(v53 + 8))(v8, v54);
}

uint64_t sub_21D18D060(uint64_t a1, void *a2)
{
  v4 = sub_21DBF9D2C();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v49 = (v8 + 16);
  aBlock[0] = MEMORY[0x277D84FA0];
  v9 = a2[10];
  v61[0] = v9;
  v57 = aBlock;
  v58 = a2;
  v10 = sub_21DBF5EFC();
  sub_21DBF8E0C();

  sub_21DBF814C();

  v11 = sub_21DBF8E0C();
  v12 = sub_21D19ED08(v11);

  v61[0] = v12;
  sub_21D9F84C8(aBlock[0], v13);
  v14 = sub_21D198698(v61[0]);

  v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v15)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_6;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_27;
  }

LABEL_6:
  v50 = v8;
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v48 = v10;
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F108);
  sub_21DBF8E0C();
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAE9C();
  v19 = os_log_type_enabled(v17, v18);
  v51 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v15)
    {
      v21 = sub_21DBFBD7C();
    }

    else
    {
      v21 = *(v14 + 16);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_21D0C9000, v17, v18, "TTRBatchFetchManager fetching {objectsReallyToFetch: %ld}", v20, 0xCu);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  else
  {
  }

  v22 = a2[6];
  v23 = a2[5];
  swift_beginAccess();
  v24 = a2[4];

  v25 = v24;
  v26 = v22(v23, v14, v25);

  v47 = v26;
  v27 = *(v26 + 16);
  v4 = v51;
  if (v15)
  {
    v28 = sub_21DBFBD7C();
  }

  else
  {
    v28 = *(v14 + 16);
  }

  if (v27 == v28)
  {
  }

  else
  {
    v30 = v47;
    swift_bridgeObjectRetain_n();

    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();
    if (os_log_type_enabled(v31, v32))
    {
      v46 = v32;
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v33 = 136315650;
      v59 = &type metadata for TTRReminderAndComputedProperties;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589F8, &qword_21DC09CB8);
      v34 = sub_21DBFA1AC();
      v36 = sub_21D0CDFB4(v34, v35, aBlock);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2048;
      v37 = v30[2];

      *(v33 + 14) = v37;

      *(v33 + 22) = 2048;
      if (v15)
      {
        v38 = sub_21DBFBD7C();
      }

      else
      {
        v38 = *(v14 + 16);
      }

      v4 = v51;

      *(v33 + 24) = v38;

      _os_log_impl(&dword_21D0C9000, v31, v46, "TTRBatchFetchManager failed to fetch some objects {type: %s, fetched: %ld, expect: %ld}", v33, 0x20u);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  aBlock[0] = v9;
  MEMORY[0x28223BE20](v29);
  *(&v45 - 4) = v47;
  *(&v45 - 3) = a2;
  *(&v45 - 2) = v49;

  sub_21DBF814C();

  v8 = v50;
LABEL_28:
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = v8;
  aBlock[4] = sub_21D1948F8;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_59;
  v41 = _Block_copy(aBlock);

  v42 = v52;
  sub_21DBF9D4C();
  v59 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v43 = v53;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v42, v43, v41);
  _Block_release(v41);
  (*(v56 + 8))(v43, v4);
  (*(v54 + 8))(v42, v55);
}

uint64_t sub_21D18D9A8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_21DBFC21C();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
  }

  v12 = (v6 + 64) >> 6;
  sub_21DBF8E0C();
  v13 = 0;
  v48 = v8;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v16 = v13;
    v17 = v7;
    v18 = v13;
    if (!v7)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v12)
        {
          goto LABEL_36;
        }

        v17 = *(v5 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v45 = sub_21DBFBD7C();
      if (v45 >= v8)
      {
        return sub_21DBD1A84(v8, v45);
      }

      goto LABEL_44;
    }

LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(v8 + 48) + v20);
    v22 = *(*(v8 + 56) + v20);
    v23 = v21;
    v24 = v22;
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_19:
    swift_beginAccess();
    v28 = *(a2 + 64);
    if ((v28 & 0xC000000000000001) != 0)
    {
      if (v28 < 0)
      {
        v8 = *(a2 + 64);
      }

      else
      {
        v8 = v28 & 0xFFFFFFFFFFFFFF8;
      }

      v29 = v23;
      v30 = sub_21DBFBD7C();
      if (__OFADD__(v30, 1))
      {
        goto LABEL_41;
      }

      *(a2 + 64) = sub_21D983D98(v8, v30 + 1);
    }

    else
    {
      v31 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + 64);
    v8 = v49;
    *(a2 + 64) = 0x8000000000000000;
    v33 = sub_21D17E07C(v23);
    v35 = *(v8 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_40;
    }

    v39 = v34;
    if (*(v8 + 24) < v38)
    {
      sub_21D215CA0(v38, isUniquelyReferenced_nonNull_native);
      v8 = v49;
      v33 = sub_21D17E07C(v23);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_45;
      }

LABEL_31:
      v41 = v49;
      if (v39)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v8 = &v49;
    v44 = v33;
    sub_21D220520();
    v33 = v44;
    v41 = v49;
    if (v39)
    {
LABEL_8:
      v14 = v41[7];
      v15 = *(v14 + 8 * v33);
      *(v14 + 8 * v33) = v24;

      goto LABEL_9;
    }

LABEL_32:
    v41[(v33 >> 6) + 8] |= 1 << v33;
    *(v41[6] + 8 * v33) = v23;
    *(v41[7] + 8 * v33) = v24;
    v42 = v41[2];
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v37)
    {
      goto LABEL_42;
    }

    v41[2] = v43;
LABEL_9:
    *(a2 + 64) = v41;
    swift_endAccess();

    v13 = v18;
    v7 = v19;
    v8 = v48;
  }

  v25 = sub_21DBFC2DC();
  if (v25)
  {
    v27 = v26;
    v49 = v25;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v23 = v50;
    v49 = v27;
    sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    swift_dynamicCast();
    v24 = v50;
    v18 = v13;
    v19 = v7;
    if (v23)
    {
      goto LABEL_19;
    }
  }

LABEL_36:
  sub_21D0CFAF8(v48);

  v8 = sub_21D194ADC(a3, a2, &qword_280D17690, 0x277D44660);

  if (*a3 >> 62)
  {
    goto LABEL_43;
  }

  v45 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45 >= v8)
  {
    return sub_21DBD1A84(v8, v45);
  }

LABEL_44:
  __break(1u);
LABEL_45:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D18DDB0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_21DBFC21C();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
  }

  v12 = (v6 + 64) >> 6;
  sub_21DBF8E0C();
  v13 = 0;
  v48 = v8;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v16 = v13;
    v17 = v7;
    v18 = v13;
    if (!v7)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v12)
        {
          goto LABEL_36;
        }

        v17 = *(v5 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v45 = sub_21DBFBD7C();
      if (v45 >= v8)
      {
        return sub_21DBD1A84(v8, v45);
      }

      goto LABEL_44;
    }

LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(v8 + 48) + v20);
    v22 = *(*(v8 + 56) + v20);
    v23 = v21;
    v24 = v22;
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_19:
    swift_beginAccess();
    v28 = *(a2 + 64);
    if ((v28 & 0xC000000000000001) != 0)
    {
      if (v28 < 0)
      {
        v8 = *(a2 + 64);
      }

      else
      {
        v8 = v28 & 0xFFFFFFFFFFFFFF8;
      }

      v29 = v23;
      v30 = sub_21DBFBD7C();
      if (__OFADD__(v30, 1))
      {
        goto LABEL_41;
      }

      *(a2 + 64) = sub_21D983FE4(v8, v30 + 1);
    }

    else
    {
      v31 = v23;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + 64);
    v8 = v49;
    *(a2 + 64) = 0x8000000000000000;
    v33 = sub_21D17E07C(v23);
    v35 = *(v8 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_40;
    }

    v39 = v34;
    if (*(v8 + 24) < v38)
    {
      sub_21D215CB4(v38, isUniquelyReferenced_nonNull_native);
      v8 = v49;
      v33 = sub_21D17E07C(v23);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_45;
      }

LABEL_31:
      v41 = v49;
      if (v39)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v8 = &v49;
    v44 = v33;
    sub_21D220534();
    v33 = v44;
    v41 = v49;
    if (v39)
    {
LABEL_8:
      v14 = v41[7];
      v15 = *(v14 + 8 * v33);
      *(v14 + 8 * v33) = v24;

      goto LABEL_9;
    }

LABEL_32:
    v41[(v33 >> 6) + 8] |= 1 << v33;
    *(v41[6] + 8 * v33) = v23;
    *(v41[7] + 8 * v33) = v24;
    v42 = v41[2];
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v37)
    {
      goto LABEL_42;
    }

    v41[2] = v43;
LABEL_9:
    *(a2 + 64) = v41;
    swift_endAccess();

    v13 = v18;
    v7 = v19;
    v8 = v48;
  }

  v25 = sub_21DBFC2DC();
  if (v25)
  {
    v27 = v26;
    v49 = v25;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v23 = v50;
    v49 = v27;
    sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
    swift_dynamicCast();
    v24 = v50;
    v18 = v13;
    v19 = v7;
    if (v23)
    {
      goto LABEL_19;
    }
  }

LABEL_36:
  sub_21D0CFAF8(v48);

  v8 = sub_21D194ADC(a3, a2, &qword_280D0C320, 0x277D447F8);

  if (*a3 >> 62)
  {
    goto LABEL_43;
  }

  v45 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45 >= v8)
  {
    return sub_21DBD1A84(v8, v45);
  }

LABEL_44:
  __break(1u);
LABEL_45:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D18E1B8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v41 = (v5 + 63) >> 6;
  sub_21DBF8E0C();
  v8 = 0;
  for (i = v4; ; v4 = i)
  {
    if (!v7)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v41)
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v10);
        ++v8;
        if (v7)
        {
          v8 = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v38 = sub_21DBFBD7C();
      if (v38 >= v3)
      {
        return sub_21DBD1A84(v3, v38);
      }

      goto LABEL_29;
    }

LABEL_11:
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = *(a1 + 56) + 48 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v47 = *(v13 + 24);
    v18 = *(v13 + 32);
    v17 = *(v13 + 40);
    v19 = v12;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (!v12)
    {
      break;
    }

    v46 = v20;
    swift_beginAccess();
    v23 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + 64);
    v3 = v49;
    *(a2 + 64) = 0x8000000000000000;
    v25 = sub_21D17E07C(v23);
    v27 = v3[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (v3[3] < v30)
    {
      sub_21D2159CC(v30, isUniquelyReferenced_nonNull_native);
      v3 = v49;
      v25 = sub_21D17E07C(v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      v33 = v49;
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v3 = &v49;
    v37 = v25;
    sub_21D220360();
    v25 = v37;
    v33 = v49;
    if (v31)
    {
LABEL_4:
      v9 = v33[7] + 48 * v25;
      v3 = *v9;
      v42 = *(v9 + 8);
      v43 = *(v9 + 16);
      *v9 = v46;
      *(v9 + 8) = v14;
      *(v9 + 16) = v16;
      *(v9 + 24) = v47;
      *(v9 + 32) = v18;
      *(v9 + 40) = v17;

      goto LABEL_5;
    }

LABEL_18:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    *(v33[6] + 8 * v25) = v23;
    v34 = v33[7] + 48 * v25;
    *v34 = v46;
    *(v34 + 8) = v14;
    *(v34 + 16) = v16;
    *(v34 + 24) = v47;
    *(v34 + 32) = v18;
    *(v34 + 40) = v17;
    v35 = v33[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_27;
    }

    v33[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    *(a2 + 64) = v33;
    swift_endAccess();
  }

LABEL_22:

  v3 = sub_21D194E00(a3, a2);

  if (*a3 >> 62)
  {
    goto LABEL_28;
  }

  v38 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38 >= v3)
  {
    return sub_21DBD1A84(v3, v38);
  }

LABEL_29:
  __break(1u);
LABEL_30:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D18E518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = *(v4 + 8);
    v7 = sub_21DBF8E0C();
    v6(v7, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D18E5D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_21D18E658(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18F9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18E678(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18FAF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E698(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18FBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E6B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191950(a1, a2, a3, *v3, &qword_27CE589D8, &qword_21DC09C48, &qword_27CE589E0, qword_21DC09C50);
  *v3 = result;
  return result;
}

char *sub_21D18E6F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18FD44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58708, &qword_21DC09920, MEMORY[0x277D453C0]);
  *v3 = result;
  return result;
}

char *sub_21D18E75C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18FE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E77C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58908, &unk_21DC09B60, type metadata accessor for TTRRemindersListViewModel.ItemID);
  *v3 = result;
  return result;
}

char *sub_21D18E7C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D18FFAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E7E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192D88(a1, a2, a3, *v3, &qword_27CE58690, &qword_21DC09898, &qword_27CE58698, &qword_21DC098A0);
  *v3 = result;
  return result;
}

char *sub_21D18E820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1925C4(a1, a2, a3, *v3, &qword_27CE587C8, &qword_21DC09A08);
  *v3 = result;
  return result;
}

void *sub_21D18E850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1900B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18E870(char *a1, int64_t a2, char a3)
{
  result = sub_21D0FF6B0(a1, a2, a3, *v3, &qword_27CE58630, &qword_21DC0CAB0);
  *v3 = result;
  return result;
}

char *sub_21D18E8A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191178(a1, a2, a3, *v3, &qword_27CE586A8, &qword_21DC098B0, &type metadata for TTRIQuickBarTabBar.Item);
  *v3 = result;
  return result;
}

char *sub_21D18E8D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1901EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E8F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58640, &qword_21DC09848, type metadata accessor for TTRIQuickBarQuickPickItem);
  *v3 = result;
  return result;
}

void *sub_21D18E93C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE589C0, &unk_21DC09C20, MEMORY[0x277D45030]);
  *v3 = result;
  return result;
}

char *sub_21D18E980(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18E9A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E9C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18E9E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D19066C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EA00(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58998, &unk_21DC09BF0, &qword_27CE589A0, &qword_21DC0D130);
  *v3 = result;
  return result;
}

void *sub_21D18EA40(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58988, &qword_21DC09BE0, &qword_27CE58990, &qword_21DC09BE8);
  *v3 = result;
  return result;
}

void *sub_21D18EA80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58970, &qword_21DC27570, type metadata accessor for TTRRecurrenceRuleModel);
  *v3 = result;
  return result;
}

char *sub_21D18EAC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1907C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18EAE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1908CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EB04(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58958, &qword_21DC09BB8, &qword_27CE65260, &unk_21DC09040);
  *v3 = result;
  return result;
}

char *sub_21D18EB44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1909EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EB64(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE587E8, &unk_21DC09A28, &qword_27CE581C8, &qword_21DC08F80);
  *v3 = result;
  return result;
}

void *sub_21D18EBA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58928, &qword_21DC09B80, type metadata accessor for TTRRemindersListViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_21D18EBE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58950, &qword_21DC09BB0, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  *v3 = result;
  return result;
}

void *sub_21D18EC2C(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58930, &qword_21DC09B88, &qword_27CE5CDA0, &unk_21DC09B90);
  *v3 = result;
  return result;
}

void *sub_21D18EC6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58938, &unk_21DC207D0, type metadata accessor for TTRRemindersListUncommittedReminder);
  *v3 = result;
  return result;
}

void *sub_21D18ECB0(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58940, &qword_21DC09BA0, &qword_27CE58948, &qword_21DC09BA8);
  *v3 = result;
  return result;
}

char *sub_21D18ECF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190B1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18ED10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190C3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18ED30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18ED50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18ED70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D190F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18ED90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191F70(a1, a2, a3, *v3, &qword_27CE58800, &qword_21DC09A48, &type metadata for TTRHashtagSpecifier);
  *v3 = result;
  return result;
}

void *sub_21D18EDC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE586A0, &qword_21DC098A8, type metadata accessor for TTRISubtaskListViewModel.Subtask);
  *v3 = result;
  return result;
}

char *sub_21D18EE0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18EE2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191178(a1, a2, a3, *v3, &qword_27CE58920, &qword_21DC09B78, &type metadata for TTRILabeledIconsViewItem);
  *v3 = result;
  return result;
}

char *sub_21D18EE64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1912A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18EE84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1913AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18EEA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1914CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EEC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191950(a1, a2, a3, *v3, &unk_27CE5EB30, &unk_21DC0CA60, &unk_27CE5DDC0, &qword_21DC098D0);
  *v3 = result;
  return result;
}

char *sub_21D18EF04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1915EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18EF24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EF44(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE588F8, &unk_21DC09B50, &qword_27CE58900, &unk_21DC207C0);
  *v3 = result;
  return result;
}

void *sub_21D18EF84(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE588E8, &qword_21DC09B40, &qword_27CE588F0, &qword_21DC09B48);
  *v3 = result;
  return result;
}

char *sub_21D18EFC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18EFE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191950(a1, a2, a3, *v3, &qword_27CE587B8, &qword_21DC099F0, &qword_27CE587C0, &qword_21DC099F8);
  *v3 = result;
  return result;
}

void *sub_21D18F024(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE588D8, &qword_21DC09B30, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
  *v3 = result;
  return result;
}

void *sub_21D18F068(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE588E0, &qword_21DC09B38, MEMORY[0x277D45728]);
  *v3 = result;
  return result;
}

void *sub_21D18F0AC(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE588D0, &unk_21DC09B20, &qword_27CE61E70, &unk_21DC2A2D0);
  *v3 = result;
  return result;
}

void *sub_21D18F0EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F10C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE588B8, &qword_21DC1A000, type metadata accessor for TTRRemindersListHighlightTarget.TargetItem);
  *v3 = result;
  return result;
}

void *sub_21D18F150(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F170(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191D08(a1, a2, a3, *v3, &qword_27CE58658, &unk_21DC09860, &qword_27CE58660, &unk_21DC1B1B0);
  *v3 = result;
  return result;
}

void *sub_21D18F1B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191D08(a1, a2, a3, *v3, &qword_27CE58648, &qword_21DC09850, &qword_27CE58650, &qword_21DC09858);
  *v3 = result;
  return result;
}

char *sub_21D18F1F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1927D8(a1, a2, a3, *v3, &qword_27CE58790, &qword_21DC099B8, &type metadata for TTRReminderLocationPickerModel.Item);
  *v3 = result;
  return result;
}

char *sub_21D18F228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191950(a1, a2, a3, *v3, &qword_27CE58718, &unk_21DC09930, &qword_27CE58720, &qword_21DC0CB50);
  *v3 = result;
  return result;
}

void *sub_21D18F288(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58898, &unk_21DC09AE0, MEMORY[0x277D453F8]);
  *v3 = result;
  return result;
}

char *sub_21D18F2CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191F70(a1, a2, a3, *v3, &qword_27CE586B8, &unk_21DC098C0, &type metadata for TTRISectionPickerCellStateAdaptor.State);
  *v3 = result;
  return result;
}

char *sub_21D18F304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D19207C(a1, a2, a3, *v3, &qword_27CE588B0, &unk_21DC09B00, &type metadata for TTRIRemindersListSmallImageAttachmentsView.ViewModel);
  *v3 = result;
  return result;
}

char *sub_21D18F33C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D19207C(a1, a2, a3, *v3, &qword_27CE588A8, &qword_21DC09AF8, &type metadata for TTRIRemindersListLargeImageAttachmentsView.ViewModel);
  *v3 = result;
  return result;
}

void *sub_21D18F374(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58710, &qword_21DC09928, MEMORY[0x277D453D0]);
  *v3 = result;
  return result;
}

char *sub_21D18F3B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18F3D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1922A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18F3F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1923B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18F418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1924A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58870, &qword_21DC09AB8, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
  *v3 = result;
  return result;
}

char *sub_21D18F47C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1925C4(a1, a2, a3, *v3, &qword_27CE58860, &qword_21DC2FB10);
  *v3 = result;
  return result;
}

void *sub_21D18F4AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192D88(a1, a2, a3, *v3, &qword_27CE58850, &qword_21DC09A98, &qword_27CE58858, &unk_21DC09AA0);
  *v3 = result;
  return result;
}

void *sub_21D18F4EC(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58840, &qword_21DC09A88, &qword_27CE58848, &qword_21DC09A90);
  *v3 = result;
  return result;
}

void *sub_21D18F52C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE586F8, &qword_21DC09910, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
  *v3 = result;
  return result;
}

char *sub_21D18F570(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1926CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D18F590(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1927D8(a1, a2, a3, *v3, &qword_27CE58830, &qword_21DC09A78, &type metadata for TTRListColors.Color);
  *v3 = result;
  return result;
}

void *sub_21D18F5C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58688, &qword_21DC09890, MEMORY[0x277D45040]);
  *v3 = result;
  return result;
}

char *sub_21D18F60C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D1928FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F62C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE587D0, &unk_21DC09A10, MEMORY[0x277D45A10]);
  *v3 = result;
  return result;
}

void *sub_21D18F670(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192B20(a1, a2, a3, *v3, &qword_27CE58618, &qword_21DC09820, &qword_27CE58620, &qword_21DC09828);
  *v3 = result;
  return result;
}

void *sub_21D18F6B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE587B0, &unk_21DC099E0, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  *v3 = result;
  return result;
}

void *sub_21D18F6F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE587A8, &qword_21DC0CC40, type metadata accessor for TTRAccountsListsViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_21D18F738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE587A0, &unk_21DC099D0, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  *v3 = result;
  return result;
}

char *sub_21D18F77C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F79C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192B20(a1, a2, a3, *v3, &qword_27CE586D8, &qword_21DC098F0, &qword_27CE586E0, &qword_21DC098F8);
  *v3 = result;
  return result;
}

void *sub_21D18F7DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D191950(a1, a2, a3, *v3, &qword_27CE58740, &unk_21DC0CC90, &qword_27CE58748, &qword_21DC09960);
  *v3 = result;
  return result;
}

char *sub_21D18F81C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F83C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192D88(a1, a2, a3, *v3, &qword_27CE58770, &qword_21DC09990, &qword_27CE58778, &unk_21DC09998);
  *v3 = result;
  return result;
}

char *sub_21D18F87C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D18F89C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &unk_27CE65F10, &qword_21DC09980, type metadata accessor for TTRUnsavedAttachment);
  *v3 = result;
  return result;
}

void *sub_21D18F8E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58760, &qword_21DC09978, type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel);
  *v3 = result;
  return result;
}

void *sub_21D18F924(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58758, &qword_21DC09970, type metadata accessor for TTRTemplatesListViewModel.Template);
  *v3 = result;
  return result;
}

void *sub_21D18F968(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D192FE4(a1, a2, a3, *v3, &qword_27CE58750, &qword_21DC09968, MEMORY[0x277D45308]);
  *v3 = result;
  return result;
}

void *sub_21D18F9AC(void *a1, int64_t a2, char a3)
{
  result = sub_21D0F53A8(a1, a2, a3, *v3, &qword_27CE58730, &qword_21DC09948, &qword_27CE58738, &unk_21DC09950);
  *v3 = result;
  return result;
}

char *sub_21D18F9EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21D18FAF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D18FBFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A00, &qword_21DC09CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58320, &qword_21DC09100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D18FD44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0, &unk_21DC09C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D18FE8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8, &qword_21DC34FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D18FFAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58628, &unk_21DC09830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D1900B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1901EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58638, &qword_21DC09840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190314(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190420(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589B8, &qword_21DC09C18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21D190524(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58978, &unk_21DC09BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58980, &unk_21DC0D100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D19066C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589A8, &qword_21DC09C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589B0, &unk_21DC09C08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1907C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960, &qword_21DC0CEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21D1908CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58678, &unk_21DC09880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1909EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58868, &qword_21DC09AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190B1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58810, &unk_21DC0CCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190C3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190D48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828, &qword_21DC09A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190E68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58820, &qword_21DC09A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D190F74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58818, &qword_21DC09A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21D191078(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587F0, &qword_21DC09A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_21D191178(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 88);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[88 * v11])
    {
      memmove(v15, v16, 88 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21D1912A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58838, &qword_21DC09A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1913AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586C0, &qword_21DC098D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1914CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586C8, &unk_21DC098E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1915EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58728, &qword_21DC09940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_21D191708(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58918, &qword_21DC09B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D191828(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586D0, &qword_21DC0CAE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D191950(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21D191A84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588C0, &qword_21DC09B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588C8, &qword_21DC09B18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D191BD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58668, &unk_21DC09870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58670, &qword_21DC1B1C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D191D08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21D191E50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586B0, &qword_21DC098B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D191F70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21D19207C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21D192188(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58890, &qword_21DC09AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1922A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680, &qword_21DC0C030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1923B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58888, &qword_21DC09AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21D1924A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58878, &qword_21DC09AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1925C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_21D1926CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58700, &qword_21DC09918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D1927D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21D1928FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587E0, &qword_21DC09A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D192A1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586E8, &unk_21DC09900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_21D192B20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21D192C68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58768, &qword_21DC09988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D192D88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21D192EBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587D8, &qword_21DC0CDD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D192FE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_21D1931C0(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_21D17E07C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_21D2159B8(v16, v6 & 1);
    v11 = sub_21D17E07C(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v11 = sub_21DBFC70C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_21D22034C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_21D17E07C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_21D2159B8(v32, 1);
        v28 = sub_21D17E07C(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t *sub_21D193548(void *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v6 = a2;
  v8 = ~a2;
  v9 = *a4;
  v24[3] = type metadata accessor for TTRUserDefaults();
  v24[4] = &protocol witness table for TTRUserDefaults;
  v24[0] = a3;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[6] = MEMORY[0x277D84FA0];
  if (v8)
  {
    v10 = *&a3[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
    if (v10)
    {
      BYTE8(v23[0]) = v6;
      sub_21D157850(a1, v6);
      TTRUserDefaults.ShowCompletedType.key.getter();
      v11 = sub_21DBFA12C();

      v12 = [v10 BOOLForKey_];
      sub_21D195308(a1, v6);
    }

    else
    {
      v12 = 0;
    }

    *(a4 + 40) = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a1;
    *(v13 + 32) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a1;
    *(v14 + 32) = v6;
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a1;
    *(v15 + 32) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120, &qword_21DC09CC0);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[11] = 0;
    v16[12] = 0;
    v16[9] = v15;
    v16[10] = 0;
    v16[4] = sub_21D1952BC;
    v16[5] = v13;
    v16[6] = sub_21D1952C8;
    v16[7] = v14;
    v16[8] = sub_21D1952D4;
    a4[4] = v16;
    v17 = swift_allocObject();
    swift_weakInit();
    sub_21D0D32E4(v24, v23);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    *(v18 + 32) = v6;
    sub_21D0D0FD0(v23, v18 + 40);
    *(v18 + 80) = v9;
    sub_21D1952F4(a1, v6);
    sub_21D1952F4(a1, v6);
    v19 = a3;
    sub_21D1952F4(a1, v6);
    v20 = v19;
    sub_21D1952F4(a1, v6);
    v21 = v20;

    sub_21D0D0CE4(sub_21D1952E0, v18);

    sub_21D195308(a1, v6);
  }

  else
  {
    *(a4 + 40) = 0;
    a4[4] = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  return a4;
}

void sub_21D1938F4(uint64_t a1@<X0>, char **a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D198698(v4);

  if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *(a1 + 72) = v6;

  *a2 = v5;
}

void sub_21D1939A4(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0, &unk_21DC15F10);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8, &unk_21DC09580);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF73CC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE585D0, &unk_21DC15F10);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE585D0, &unk_21DC15F10);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0, &qword_21DC19750);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE585C8, &unk_21DC09580);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(byte_21DC09C68);
      swift_getKeyPath(byte_21DC09C98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D183A0C();
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
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520, &unk_21DC09530);
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

void sub_21D194030(void *a1)
{
  if (qword_27CE56558 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE58508);
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
    type metadata accessor for TTRShowGroupDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowGroupDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D1944A4(uint64_t a1)
{
  result = sub_21DBF806C();
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

uint64_t sub_21D194568(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D1946BC(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_21D194820@<W0>(_BYTE *a1@<X8>)
{
  result = sub_21D18B998(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_21D194914(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_24:
    v20 = sub_21DBFBD7C();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    if (v20 == v7)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v7, a1);
    }

    else
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = *(a2 + 64);
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      v11 = v9;
      v12 = sub_21DBFC2CC();

      if (!v12)
      {
        break;
      }

      sub_21D0D8CF0(0, a3, a4);
      swift_dynamicCast();
      v13 = v21;
      goto LABEL_14;
    }

    if (!*(v10 + 16))
    {
      goto LABEL_21;
    }

    sub_21DBF8E0C();
    v14 = sub_21D17E07C(v9);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v13 = *(*(v10 + 56) + 8 * v14);
LABEL_14:

    if (!v13)
    {
      goto LABEL_21;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_23;
    }
  }

LABEL_21:

  return v7;
}

unint64_t sub_21D194ADC(unint64_t *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v9 = *a1;
  result = sub_21D194914(*a1, a2, a3, a4);
  v12 = result;
  if (v4)
  {
    return v12;
  }

  if (v11)
  {
    if (v9 >> 62)
    {
      return sub_21DBFBD7C();
    }

    return *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v34 = a3;
  v35 = a4;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  while (1)
  {
    if (v9 >> 62)
    {
      if (v13 == sub_21DBFBD7C())
      {
        return v12;
      }
    }

    else if (v13 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D44740](v13, v9);
      goto LABEL_16;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v15 = *(v9 + 8 * v13 + 32);
LABEL_16:
    v16 = v15;
    v17 = *(a2 + 64);
    if ((v17 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      v18 = v16;
      v19 = sub_21DBFC2CC();

      if (!v19)
      {
        goto LABEL_7;
      }

      sub_21D0D8CF0(0, v34, v35);
      swift_dynamicCast();
      v20 = v36;
    }

    else
    {
      if (!*(v17 + 16))
      {
        goto LABEL_8;
      }

      sub_21DBF8E0C();
      v21 = sub_21D17E07C(v16);
      if ((v22 & 1) == 0)
      {
LABEL_7:

LABEL_8:

        goto LABEL_9;
      }

      v20 = *(*(v17 + 56) + 8 * v21);
    }

    if (!v20)
    {
      goto LABEL_8;
    }

    if (v12 != v13)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223D44740](v12, v9);
        v24 = MEMORY[0x223D44740](v13, v9);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v25)
        {
          goto LABEL_55;
        }

        if (v13 >= v25)
        {
          goto LABEL_56;
        }

        v26 = *(v9 + 32 + 8 * v13);
        v23 = *(v9 + 32 + 8 * v12);
        v24 = v26;
      }

      v27 = v24;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
      {
        v9 = sub_21D256E5C();
        v28 = (v9 >> 62) & 1;
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = v9 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v27;

      if ((v9 & 0x8000000000000000) != 0 || v28)
      {
        v9 = sub_21D256E5C();
        v29 = v9 & 0xFFFFFFFFFFFFFF8;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_47:
          __break(1u);
          return v12;
        }
      }

      else if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      if (v13 >= *(v29 + 16))
      {
        goto LABEL_53;
      }

      v31 = v29 + 8 * v13;
      v32 = *(v31 + 32);
      *(v31 + 32) = v23;

      *v33 = v9;
    }

    v14 = __OFADD__(v12++, 1);
    if (v14)
    {
      goto LABEL_52;
    }

LABEL_9:
    v14 = __OFADD__(v13++, 1);
    if (v14)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return sub_21DBFBD7C();
}

unint64_t sub_21D194E00(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v26 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v26)
  {
    goto LABEL_67;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_60;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    if (!*(*(a2 + 64) + 16))
    {

LABEL_17:
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      while (1)
      {
        if (v3 >> 62)
        {
          if (v12 == sub_21DBFBD7C())
          {
            return v6;
          }
        }

        else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        v4 = v3 & 0xC000000000000001;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D44740](v12, v3);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            v5 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v13 = *(v3 + 8 * v12 + 32);
        }

        v8 = v13;
        if (*(*(a2 + 64) + 16))
        {
          sub_21DBF8E0C();
          sub_21D17E07C(v8);
          v15 = v14;

          if (v15)
          {
            if (v6 != v12)
            {
              if (v4)
              {
                v16 = MEMORY[0x223D44740](v6, v3);
                v17 = MEMORY[0x223D44740](v12, v3);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_64;
                }

                v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v18)
                {
                  goto LABEL_65;
                }

                if (v12 >= v18)
                {
                  goto LABEL_66;
                }

                v19 = *(v3 + 32 + 8 * v12);
                v16 = *(v3 + 32 + 8 * v6);
                v17 = v19;
              }

              v20 = v17;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_21D256E5C();
                v21 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v21) = 0;
              }

              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v20;

              if ((v3 & 0x8000000000000000) != 0 || v21)
              {
                v3 = sub_21D256E5C();
                v4 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_54:
                  __break(1u);
                  return sub_21DBFBD7C();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_54;
              }

              if (v12 >= *(v4 + 16))
              {
                goto LABEL_63;
              }

              v23 = v4 + 8 * v12;
              v24 = *(v23 + 32);
              *(v23 + 32) = v16;

              *a1 = v3;
            }

            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
LABEL_20:
        }

        v11 = __OFADD__(v12++, 1);
        if (v11)
        {
          goto LABEL_59;
        }
      }
    }

    sub_21DBF8E0C();
    sub_21D17E07C(v8);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_61;
    }
  }

  if (v26)
  {
    return sub_21DBFBD7C();
  }

  else
  {
    return *(v4 + 16);
  }
}

double sub_21D19510C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t objectdestroy_40Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

id sub_21D1952F4(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21D157850(result, a2);
  }

  return result;
}

void sub_21D195308(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_21D157478(a1, a2);
  }
}

void **assignWithCopy for TTREditingOption(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for TTREditingOption(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellInlineHashtagVisibility(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellInlineHashtagVisibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D1954D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21DBFA3CC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D195518(uint64_t a1)
{
  v2 = sub_21DBFBCCC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 5;
  }

  v4 = *(a1 + 36);

  return sub_21D199144(v2, v4, 0, a1);
}

uint64_t sub_21D195590(uint64_t a1)
{
  v2 = sub_21DBFBCCC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_21D365A4C(v2, *(a1 + 36), 0, a1);
  sub_21DBF8E0C();
  return v4;
}

uint64_t sub_21D19560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFBCCC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_21D365708(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_21D1956C8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFBD0C();
    v5 = v4;
    v6 = sub_21DBFBDDC();
    v8 = v7;
    v9 = MEMORY[0x223D44500](v3, v5, v6, v7);
    sub_21D15746C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_21D15746C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_21DBFBCCC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_21D3657B8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_21D15746C(v3, v5, v2 != 0);
  return v12;
}

void *sub_21D1957E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_21DBFBCCC();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 4;
  }

  else
  {
    result = sub_21D3659F8(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21D195860(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFC20C();
    v5 = v4;
    v6 = sub_21DBFC2FC();
    v8 = v7;
    v9 = MEMORY[0x223D44A10](v3, v5, v6, v7);
    sub_21D15746C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_21D15746C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_21DBFBCCC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_21D994528(&v13, v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_21D15746C(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_21D195990()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58A08);
  v1 = __swift_project_value_buffer(v0, qword_27CE58A08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRParticipantModel.displayName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantModel.firstName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantModel.lastName.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantModel.emailAddress.getter()
{
  v1 = *(v0 + 48);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantModel.phoneNumber.getter()
{
  v1 = *(v0 + 64);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantModel.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  if (v1[1])
  {
    sub_21DBFC7FC();
    sub_21DBFA27C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_21DBFC7FC();
    if (v2)
    {
LABEL_3:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_21DBFC7FC();
  if (v3)
  {
LABEL_4:
    sub_21DBFC7FC();
    sub_21DBFA27C();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_21DBFC7FC();
    if (v5)
    {
      goto LABEL_6;
    }

    return sub_21DBFC7FC();
  }

LABEL_11:
  sub_21DBFC7FC();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_21DBFC7FC();
  sub_21DBFA27C();
  if (!v5)
  {
    return sub_21DBFC7FC();
  }

LABEL_6:
  sub_21DBFC7FC();

  return sub_21DBFA27C();
}

uint64_t TTRParticipantModel.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D195CE4()
{
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D195D28(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)(v2);
  return sub_21DBFC82C();
}

void __swiftcall TTRParticipantModel.init(displayName:firstName:lastName:address:)(RemindersUICore::TTRParticipantModel *__return_ptr retstr, Swift::String_optional displayName, Swift::String_optional firstName, Swift::String_optional lastName, Swift::String_optional address)
{
  object = firstName.value._object;
  countAndFlagsBits = firstName.value._countAndFlagsBits;
  v7 = displayName.value._object;
  v8 = displayName.value._countAndFlagsBits;
  if (address.value._object)
  {
    v24 = lastName;
    sub_21DBFA1BC();

    v10 = sub_21DBFA12C();
    v11 = [v10 rem_hasMailto];

    v12 = sub_21DBFA12C();
    v13 = v12;
    if (v11)
    {

      v14 = [v13 rem_removingMailto];

      v15 = sub_21DBFA16C();
      v17 = v16;

      v18 = 0;
      v19 = 0;
    }

    else
    {
      v20 = [v12 rem_hasTel];

      if (v20)
      {
        v21 = sub_21DBFA12C();

        v22 = [v21 rem_removingTel];

        v18 = sub_21DBFA16C();
        v19 = v23;
      }

      else
      {

        v18 = 0;
        v19 = 0;
      }

      v15 = 0;
      v17 = 0;
    }

    lastName = v24;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v17 = 0;
  }

  retstr->displayName.value._countAndFlagsBits = v8;
  retstr->displayName.value._object = v7;
  retstr->firstName.value._countAndFlagsBits = countAndFlagsBits;
  retstr->firstName.value._object = object;
  retstr->lastName = lastName;
  retstr->emailAddress.value._countAndFlagsBits = v15;
  retstr->emailAddress.value._object = v17;
  retstr->phoneNumber.value._countAndFlagsBits = v18;
  retstr->phoneNumber.value._object = v19;
}

void TTRParticipantModel.init(sharee:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 displayName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v35 = v7;
  }

  else
  {
    v6 = 0;
    v35 = 0;
  }

  v8 = [a1 firstName];
  if (v8)
  {
    v9 = v8;
    v34 = sub_21DBFA16C();
    v11 = v10;
  }

  else
  {
    v34 = 0;
    v11 = 0;
  }

  v12 = [a1 lastName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_21DBFA16C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 address];
  if (v17)
  {
    v33 = v6;
    v18 = v17;
    sub_21DBFA16C();

    sub_21DBFA1BC();

    v19 = sub_21DBFA12C();
    v20 = [v19 rem_hasMailto];

    v21 = sub_21DBFA12C();
    v22 = v21;
    if (v20)
    {

      v23 = [v22 rem_removingMailto];

      v24 = sub_21DBFA16C();
      v26 = v25;

      v27 = 0;
      v28 = 0;
    }

    else
    {
      v29 = [v21 rem_hasTel];

      if (v29)
      {
        v30 = sub_21DBFA12C();

        v31 = [v30 rem_removingTel];

        v27 = sub_21DBFA16C();
        v28 = v32;
      }

      else
      {

        v27 = 0;
        v28 = 0;
      }

      v24 = 0;
      v26 = 0;
    }

    v6 = v33;
  }

  else
  {

    v27 = 0;
    v28 = 0;
    v24 = 0;
    v26 = 0;
  }

  *a2 = v6;
  a2[1] = v35;
  a2[2] = v34;
  a2[3] = v11;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = v24;
  a2[7] = v26;
  a2[8] = v27;
  a2[9] = v28;
}