uint64_t TTRShowTemplateMonitorableDataView.__allocating_init(template:sortingStyle:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

id TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v60) = a4;
  v50 = a1;
  v51 = a2;
  v62[1] = *MEMORY[0x277D85DE8];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F80, &qword_21DC3B118);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v6;
  v45 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF714C();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21DBF70DC();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21DBF763C();
  v14 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC70, &unk_21DC3B120);
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x28223BE20](v17);
  v59 = &v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  sub_21DBFC83C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_21D0CF7E0(v21, &qword_27CE5D3B8, &qword_21DC19588);
    v23 = 0;
  }

  else
  {
    v23 = *&v21[*(v22 + 48)];
    sub_21DAB69FC(v21);
  }

  v24 = *(v61 + 16);
  v25 = [v24 store];
  v56 = v25;
  if (v60)
  {
    v26 = v25;
  }

  else
  {
    v26 = [v25 nonUserInteractiveStore];
  }

  v60 = v26;
  v27 = [v24 objectID];
  (*(v11 + 16))(v13, v61 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v54);
  (*(v8 + 104))(v10, *MEMORY[0x277D45450], v57);
  sub_21DBF762C();
  v29 = v59;
  v28 = v60;
  v30 = v58;
  sub_21DBF6CEC();
  if (v30)
  {
    (*(v14 + 8))(v16, v55);
  }

  else
  {
    (*(v14 + 8))(v16, v55);

    v31 = [v24 objectID];
    v62[0] = 0;
    v32 = [v28 fetchTemplateWithObjectID:v31 error:v62];

    if (v32)
    {
      v33 = *(v45 + 20);
      v34 = v62[0];
      v35 = v47;
      v36 = v53;
      sub_21DBF76DC();
      v37 = sub_21DBF74FC();
      (*(*(v37 - 8) + 56))(&v35[v33], 0, 1, v37);
      *v35 = v32;
      v38 = v48;
      v39 = *(v48 + 48);
      v40 = v29;
      v41 = v49;
      sub_21DAB6934(v35, v49);
      *(v41 + v39) = sub_21DBF76BC();
      v42 = v46;
      sub_21D0D3954(v41, v46, &qword_27CE65F80, &qword_21DC3B118);
      v28 = *(v42 + *(v38 + 48));
      sub_21DAB6998(v42, v50);
      sub_21DBF76CC();

      sub_21D0CF7E0(v41, &qword_27CE65F80, &qword_21DC3B118);
      sub_21DAB69FC(v35);
      (*(v52 + 8))(v40, v36);
    }

    else
    {
      v28 = v62[0];
      sub_21DBF52DC();

      swift_willThrow();
      (*(v52 + 8))(v29, v53);
    }
  }

  return v28;
}

void sub_21DAB4C74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v11 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 24))(a2, a3, a4, a5, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  *a6 = Strong == 0;
}

uint64_t sub_21DAB4D4C(unsigned __int8 *a1)
{
  v2 = v1;
  v43 = sub_21DBF70DC();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v41 = v15;
  if (v17)
  {
    v18 = v2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v44[0] = v15;
      (*(*(v19 + 8) + 16))(v44, ObjectType);
      swift_unknownObjectRelease();
    }

    v21 = *(v2 + v16);
    if (v21)
    {
      v22 = *(*v21 + 104);
      swift_beginAccess();
      sub_21D0D3954(v21 + v22, v14, &qword_27CE5D3B8, &qword_21DC19588);
      if ((*(v7 + 48))(v14, 1, v6) != 1)
      {
        v23 = *&v14[*(v6 + 48)];
        sub_21DAB69FC(v14);
        goto LABEL_8;
      }

      sub_21D0CF7E0(v14, &qword_27CE5D3B8, &qword_21DC19588);
    }
  }

  v23 = 0;
LABEL_8:
  v24 = *(v6 + 48);
  v25 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = v6;
  v28 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
  v29 = sub_21DBF74FC();
  (*(*(v29 - 8) + 56))(&v11[v28], 1, 1, v29);
  *v11 = v26;
  *&v11[v24] = v23;
  v30 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v31 = v40;
  v32 = v43;
  (*(v4 + 16))(v40, v2 + v30, v43);
  type metadata accessor for TTRShowTemplateMonitorableDataView(0);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  (*(v4 + 32))(v33 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v31, v32);
  v34 = *(v27 + 48);
  v35 = v42;
  sub_21DAB6934(v11, v42);
  *(v35 + v34) = v23;
  swift_beginAccess();
  v36 = v23;
  v37 = v26;
  sub_21D50126C((v2 + v16), v35, v33, v2, v41);
  sub_21D0CF7E0(v35, &qword_27CE5C1C0, &qword_21DC19590);
  swift_endAccess();

  return sub_21D0CF7E0(v11, &qword_27CE5C1C0, &qword_21DC19590);
}

uint64_t sub_21DAB5204()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate);
}

uint64_t TTRShowTemplateDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTemplateDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

void sub_21DAB545C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(0, 0, a2, a3, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  *a4 = Strong == 0;
}

double TTRShowTemplateDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v87 = a4;
  v86 = sub_21DBF719C();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v83 - v11;
  v90 = sub_21DBF74FC();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v14);
  v91 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v20 = a2;
  v22 = &v83 - v21;
  sub_21DAB6934(v20, &v83 - v21);
  *&v22[*(v16 + 48)] = a3;
  v23 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v24 = *(v4 + v23);
  if (!v24 || v24 != a1)
  {
    v25 = a3;
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0, &qword_21DC19590);
  }

  sub_21D0D3954(v22, v18, &qword_27CE5C1C0, &qword_21DC19590);
  v27 = *&v18[*(v16 + 48)];
  v28 = a3;

  v29 = v91;
  sub_21DAB6998(v18, v91);
  sub_21D0D3954(v29 + *(v14 + 20), v12, &qword_27CE65F88, &unk_21DC3B130);
  v30 = v89;
  v31 = v90;
  if ((*(v89 + 48))(v12, 1, v90) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE65F88, &unk_21DC3B130);
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE65F38);
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAECC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21D0C9000, v33, v34, "TTRShowTemplateDataModelSource: unexpected nil listModel in didFetch callback", v35, 2u);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    sub_21DAB69FC(v91);
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0, &qword_21DC19590);
  }

  v84 = v4;
  (*(v30 + 32))(v88, v12, v31);
  v36 = sub_21DBF6E3C();
  sub_21D4F5F28(v36);
  v38 = v37;

  if (a3)
  {
    v39 = v22;
    v40 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v41 = v84;
    swift_beginAccess();
    if (*(v41 + v40))
    {
      v42 = v28;

      sub_21D4F9F64(v42, v38);
    }

    else
    {
      v44 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
      swift_beginAccess();
      v45 = *(v41 + v44);
      v46 = v28;
      v47 = [v45 store];
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v48 = sub_21DBFB12C();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      v50 = sub_21D87E81C(v47, sub_21D1947D8, v49, v46, v48);
      *(v41 + v40) = v50;

      swift_beginAccess();
      v50[3] = &protocol witness table for TTRShowTemplateDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v22 = v39;
  }

  else
  {
  }

  MEMORY[0x223D3FCA0](v43);
  v51 = sub_21DBF716C();
  (*(v85 + 8))(v9, v86);
  v83 = v22;
  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_19;
    }

LABEL_35:

LABEL_37:
    v69 = v88;
    v70 = sub_21DBF6C2C();
    v71 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
    v72 = v84;
    swift_beginAccess();
    v73 = *(v72 + v71);
    *(v72 + v71) = v70;

    v74 = v91;
    v75 = *v91;
    v76 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v77 = *(v72 + v76);
    *(v72 + v76) = v75;
    v78 = v75;

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_21DBFBEEC();
    v92 = *v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
    v79 = sub_21DBFA1AC();
    v81 = v80;

    v92 = v79;
    v93 = v81;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v82 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v82);
    *(&v83 - 4) = v72;
    *(&v83 - 3) = v69;
    *(&v83 - 2) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    sub_21DAB69FC(v74);
    (*(v89 + 8))(v69, v90);
    v22 = v83;
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0, &qword_21DC19590);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_35;
  }

  v52 = sub_21DBFBD7C();
  if (!v52)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v62 = sub_21DBFC40C();
      goto LABEL_33;
    }

LABEL_32:
    v62 = MEMORY[0x277D84F98];
LABEL_33:
    v63 = v84;
    v94[0] = v62;
    v64 = sub_21DBF8E0C();
    sub_21D1931C0(v64, 1, v94);

    v65 = v94[0];
    v66 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v63 + v66))
    {

      sub_21D188810(v65);
      v68 = v67;

      TTRBatchFetchManager<A>.override(objects:)(v68);
    }

    else
    {
    }

    goto LABEL_37;
  }

LABEL_19:
  v94[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = v94[0];
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x223D44740](v53, v51);
      }

      else
      {
        v55 = *(v51 + 8 * v53 + 32);
      }

      v56 = v55;
      v57 = [v55 objectID];
      v94[0] = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        v61 = v57;
        sub_21D18E6B8((v58 > 1), v59 + 1, 1);
        v57 = v61;
        v54 = v94[0];
      }

      ++v53;
      *(v54 + 16) = v59 + 1;
      v60 = v54 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
    }

    while (v52 != v53);

    if (*(v54 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_21DAB6010(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = a4;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
    swift_beginAccess();
    v14 = *(a1 + v13);
    v15 = *(v10 + 24);
    v16 = v14;
    v17 = v12;
    v18 = a3;
    v19 = v17;
    v20 = v10;
    a4 = v22;
    v15(v12, v14, a2, v18, ObjectType, v20);

    swift_unknownObjectRelease();
  }

  *a4 = Strong == 0;
}

double sub_21DAB6160()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAB61DC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590) + 48));

  return TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTemplateDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

void sub_21DAB6380(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  *a3 = Strong == 0;
}

void TTRShowTemplateDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_27CE570C0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE65F38);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = [v13 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    MEMORY[0x223D42AA0](v15, v17);

    v18 = sub_21D0CDFB4(0x6574616C706D6574, 0xEA0000000000203ALL, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowTemplateDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTemplateMonitorableDataView.init(template:sortingStyle:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v5 = sub_21DBF70DC();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t TTRShowTemplateMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowTemplateMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DAB6838(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

id sub_21DAB6894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v12 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a2 + 16) = v4;
  *(a2 + 24) = v12;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *a2 = v2;
  *(a2 + 8) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v2;
  v9 = v3;
  v10 = v4;

  return v12;
}

uint64_t sub_21DAB6934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB6998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB69FC(uint64_t a1)
{
  v2 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21DAB6A58(uint64_t a1)
{
  v42 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - v6;
  v47 = sub_21DBF74FC();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v39 - v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v44 = v1;
  v20 = *(v1 + v19);
  if (v20)
  {
    v41 = v3;
    v40 = v2;
    v21 = *(*v20 + 96);
    swift_beginAccess();
    sub_21D0D3954(v20 + v21, v10, &qword_27CE5C1B8, &unk_21DC15CC0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v10, &qword_27CE5C1B8, &unk_21DC15CC0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5D3B8, &qword_21DC19588);
    }

    else
    {

      sub_21DAB6998(v13, v16);
      v23 = v48;
      sub_21DAB6998(v16, v48);
      v24 = v45;
      sub_21D0D3954(v23 + *(v14 + 20), v45, &qword_27CE65F88, &unk_21DC3B130);
      v25 = v49;
      v26 = v47;
      if ((*(v49 + 48))(v24, 1, v47) == 1)
      {
        sub_21DAB69FC(v23);
        sub_21D0CF7E0(v24, &qword_27CE65F88, &unk_21DC3B130);
      }

      else
      {
        (*(v25 + 32))(v46, v24, v26);
        v52[0] = v42;
        swift_getKeyPath(asc_21DC3B2E8);
        swift_getKeyPath(byte_21DC3B318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
        sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0);
        sub_21D183A0C();
        v27 = sub_21DBFA46C();

        v28 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v29 = v44;
        swift_beginAccess();
        if (*(v29 + v28))
        {

          TTRBatchFetchManager<A>.override(objects:)(v27);
        }

        sub_21D183AA0(v27);
        v31 = v30;

        sub_21D19ED38(v31);

        v32 = v41;
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

          v32 = v41;
          v29 = v44;
          v26 = v47;
        }

        v33 = v43;
        sub_21DBF767C();
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_21DBFBEEC();
        v50 = *v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50, &unk_21DC3B0F0);
        v34 = sub_21DBFA1AC();
        v36 = v35;

        v50 = v34;
        v51 = v36;
        MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
        v37 = sub_21DBFAEDC();
        MEMORY[0x28223BE20](v37);
        *(&v39 - 4) = v29;
        v38 = v46;
        *(&v39 - 3) = v46;
        *(&v39 - 2) = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
        sub_21DBF625C();

        sub_21DAB69FC(v48);
        (*(v32 + 8))(v33, v40);
        (*(v49 + 8))(v38, v26);
      }
    }
  }
}

double sub_21DAB7224(void *a1)
{
  v2 = v1;
  if (qword_27CE570C0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE65F38);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33[0] = v32;
    *v8 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, v33);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v34 = 0x6574616C706D6574;
    v35 = 0xEA0000000000203ALL;
    v12 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = [v13 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    MEMORY[0x223D42AA0](v15, v17);

    v18 = sub_21D0CDFB4(v34, v35, v33);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowTemplateDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v32, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v19 = objc_opt_self();
  v20 = sub_21DBF52CC();
  v21 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v22 = [*(v2 + v21) objectID];
  LODWORD(v19) = [v19 isNoSuchObjectError:v20 forObjectID:v22];

  if (v19)
  {

    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = [*(v2 + v21) objectID];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_21D0C9000, v24, v25, "TTRShowTemplateDataModelSource: template got deleted {objectID: %{public}@}", v26, 0xCu);
      sub_21D0CF7E0(v27, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    v29 = v2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      (*(v30 + 40))(ObjectType, v30);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21DAB7884(uint64_t a1)
{
  result = sub_21DBF70DC();
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

void **initializeBufferWithCopyOfBuffer for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_21DBF74FC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t destroy for TTRShowTemplateMonitorableDataView.TemplateModel(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF74FC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **initializeWithCopy for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF74FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **assignWithCopy for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF74FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *initializeWithTake for TTRShowTemplateMonitorableDataView.TemplateModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF74FC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **assignWithTake for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF74FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88, &unk_21DC3B130);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_21DAB810C(uint64_t a1)
{
  sub_21DAB81A8(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAB81A8(uint64_t a1)
{
  if (!qword_27CE65FC0)
  {
    sub_21DBF74FC();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE65FC0);
    }
  }
}

uint64_t sub_21DAB8200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8, &qword_21DC19588);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v67 = a2;
  v53 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v46 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_21DBFBA8C();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v46 - v16;
  v17 = sub_21DBFC38C();
  v52 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v65 = sub_21DBFC37C();
  v49 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v21 = &v46 - v20;
  v22 = sub_21DBF5B9C();
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x28223BE20](v22);
  v54 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  if (v67)
  {
    v24 = 1;
    v25 = a4;
LABEL_16:
    v38 = v25;
    v39 = MEMORY[0x223D42CB0]();
    MEMORY[0x28223BE20](v39);
    *(&v46 - 4) = v38;
    *(&v46 - 3) = a5;
    v40 = v54;
    *(&v46 - 2) = v54;
    v41 = swift_getTupleTypeMetadata2();
    WitnessTable = swift_getWitnessTable(MEMORY[0x277D843F8], v17);
    v44 = sub_21D110EC8(sub_21DAB8CF0, (&v46 - 6), v17, v41, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);
    (*(v52 + 8))(v19, v17);
    v45 = v53;
    *v53 = v24 & 1;
    *(v45 + 1) = v44;
    return (*(v50 + 8))(v40, v51);
  }

  v47 = a4;
  v48 = a5;
  v46 = a1;
  MEMORY[0x223D42CB0](a4, a5);
  sub_21DBFC35C();
  v67 = 0;
  v60 = TupleTypeMetadata2 - 8;
  v61 += 4;
  v55 = (v66 + 8);
  v56 = v21;
  v58 = a3 + 40;
  v59 = (v66 + 32);
  v26 = TupleTypeMetadata2;
  v57 = v19;
LABEL_6:
  v27 = v63;
  sub_21DBFC36C();
  v28 = v62;
  (*v61)(v62, v27, v64);
  if ((*(*(v26 - 8) + 48))(v28, 1, v26) == 1)
  {
    (*(v49 + 8))(v21, v65);
    a5 = v48;
    v25 = v47;
    v24 = v67;
    goto LABEL_16;
  }

  v29 = v17;
  v66 = *v28;
  v30 = v26;
  (*v59)(v12, &v28[*(v26 + 48)], AssociatedTypeWitness);
  v31 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata1();
  v32 = 0;
  v33 = v58;
  while (1)
  {
    if (v32 == sub_21DBFA6DC())
    {
      sub_21DBF5AFC();
LABEL_5:
      AssociatedTypeWitness = v31;
      (*v55)(v12, v31);
      v17 = v29;
      v21 = v56;
      v19 = v57;
      v26 = v30;
      goto LABEL_6;
    }

    v34 = sub_21DBFA6AC();
    result = sub_21DBFA61C();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_18;
    }

    v36 = *(v33 - 8);

    v36(&v68, v12);

    ++v32;
    v33 += 16;
    if (v68)
    {
      v37 = v67;
      if (v68 != 1)
      {
        v37 = 1;
      }

      v67 = v37;
      goto LABEL_5;
    }
  }

  result = sub_21DBFBF7C();
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t TTRProcessMoveSubjects.MoveFilterStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DAB8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v25 = a2;
  v23 = a5;
  v24 = sub_21DBF5B9C();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v22 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  (*(v18 + 16))(v12, a1, TupleTypeMetadata2, v15);
  (*(v13 + 32))(v17, &v12[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
  v22 = *(swift_getTupleTypeMetadata2() + 48);
  v19 = v23;
  (*(v13 + 16))(v23, v17, AssociatedTypeWitness);
  v20 = v24;
  (*(v6 + 16))(v8, v25, v24);
  LOBYTE(v12) = sub_21DBF5B2C();
  (*(v6 + 8))(v8, v20);
  result = (*(v13 + 8))(v17, AssociatedTypeWitness);
  *(v19 + v22) = v12 & 1;
  return result;
}

unint64_t sub_21DAB8D30()
{
  result = qword_27CE65FD0[0];
  if (!qword_27CE65FD0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRProcessMoveSubjects.MoveFilterStatus, &type metadata for TTRProcessMoveSubjects.MoveFilterStatus, v0, v1);
    atomic_store(result, qword_27CE65FD0);
  }

  return result;
}

uint64_t sub_21DAB8DE8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE66058);
  v1 = __swift_project_value_buffer(v0, qword_27CE66058);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersBoardItemCollapsedStates.setCollapsed<A>(_:for:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    return (*(a5 + 40))(a2, a4, a6, a3, a5);
  }

  else
  {
    return (*(a5 + 48))(a2, a4, a6, a3, a5);
  }
}

double TTRRemindersBoardItemCollapsedStates.toggleCollapsed(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 32))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58908, &unk_21DC09B60);
  v7 = *(type metadata accessor for TTRRemindersListViewModel.ItemID(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  sub_21D371AB0(a1, v9 + v8);
  v13 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66070, &unk_21DC3B438);
  v11 = sub_21D0D9418(&qword_27CE66078, &qword_27CE66070, &unk_21DC3B438);
  if (v6)
  {
    (*(a3 + 48))(&v13, v10, v11, a2, a3);
  }

  else
  {
    (*(a3 + 40))(&v13, v10, v11, a2, a3);
  }

  return result;
}

uint64_t sub_21DAB9080@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
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
    v7 = sub_21D0E6070;
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

uint64_t sub_21DAB9114(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
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

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5, v6);
}

double TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.setter(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 32) = a1;

  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);

    v7 = v5(v6);
  }

  else
  {

    v7 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 40) = v7;

  return result;
}

double (*TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DAB941C;
}

double sub_21DAB941C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);

      v9 = v7(v8);

      v5 = *(a1 + 24);
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    swift_beginAccess();
    *(v5 + 40) = v9;
  }

  return result;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRRemindersBoardCollapsedStatesPresenterCapability.init()();
  return v0;
}

void *TTRRemindersBoardCollapsedStatesPresenterCapability.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  v0[2] = 0;
  v0[3] = 0;
  v2 = MEMORY[0x277D84FA0];
  v0[4] = 0;
  v0[5] = v2;
  sub_21D0CE468();
  v3 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v4[5] = sub_21DBF5EEC();
  v4[6] = v5;
  v4[4] = v3;
  v0[6] = v4;
  swift_beginAccess();
  v4[3] = &protocol witness table for TTRRemindersBoardCollapsedStatesPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.isCollapsed(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  sub_21DBF8E0C();
  LOBYTE(a1) = sub_21D1E1F5C(a1, v3);

  return a1 & 1;
}

void TTRRemindersBoardCollapsedStatesPresenterCapability.collapse<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27CE570C8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE66058);
  v9 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("TTRRemindersBoardCollapsedStates collapse items", 47, 2, v9);

  swift_beginAccess();
  v10 = v3[5];
  swift_beginAccess();
  sub_21DBF8E0C();
  sub_21DAB98C8((v4 + 5), a1, a2, a3);
  swift_endAccess();
  v11 = sub_21DBF8E0C();
  sub_21D320EEC(v11, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    swift_beginAccess();
    v14 = v4[2];
    if (v14)
    {
      v15 = v4[3];

      v14(v16);
      sub_21D0D0E88(v14, v15);
    }

    swift_beginAccess();
    if (v4[4])
    {

      v17._object = 0x800000021DC494E0;
      v17._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v17);
    }
  }
}

uint64_t sub_21DAB98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63058, &qword_21DC2E2C0);
  return sub_21DBFAB8C();
}

void TTRRemindersBoardCollapsedStatesPresenterCapability.expand<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27CE570C8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE66058);
  v6 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("TTRRemindersBoardCollapsedStates expand items", 45, 2, v6);

  swift_beginAccess();
  v7 = v3[5];
  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63058, &qword_21DC2E2C0);
  sub_21DBFAB7C();
  swift_endAccess();
  v8 = sub_21DBF8E0C();
  sub_21D320EEC(v8, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v11 = v3[2];
    if (v11)
    {
      v12 = v3[3];

      v11(v13);
      sub_21D0D0E88(v11, v12);
    }

    swift_beginAccess();
    if (v4[4])
    {

      v14._object = 0x800000021DC494E0;
      v14._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v14);
    }
  }
}

void TTRRemindersBoardCollapsedStatesPresenterCapability.pruneNonExistentItemIDs(with:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 40);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  *(v1 + 40) = sub_21DABA250(v2, sub_21DAB9FB4);
  swift_endAccess();

  sub_21D320EEC(v3, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 32))
    {

      v6._object = 0x800000021DC494E0;
      v6._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
    }
  }
}

BOOL sub_21DAB9CA0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 40))(a1, v7, v8);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) == 1;
  sub_21D5578D8(v6);
  return v10;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.deinit()
{
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void (*sub_21DAB9E40(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21DAB9EB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  sub_21DBF8E0C();
  LOBYTE(a1) = sub_21D1E1F5C(a1, v3);

  return a1 & 1;
}

void *sub_21DAB9F24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_21DABA060(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

double _s15RemindersUICore51TTRRemindersBoardCollapsedStatesPresenterCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredJ0C_SStF_0()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);

    v4 = sub_21DBF8E0C();
    v3(v4);
  }

  return result;
}

void sub_21DABA060(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_21D371AB0(*(v30 + 48) + *(v28 + 72) * v20, v8);
    v21 = v29(v8);
    sub_21D371B14(v8);
    if (v4)
    {
      return;
    }

    if ((v21 & 1) == 0)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_21D7C08F0(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_21DABA250(uint64_t a1, uint64_t (*a2)(char *))
{
  v30 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v27 = &v25;
    MEMORY[0x28223BE20](v5);
    v26 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v9);
    v28 = 0;
    v8 = 0;
    v31 = a1;
    v11 = *(a1 + 56);
    a1 += 56;
    v10 = v11;
    v12 = 1 << *(a1 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v19 = v16 | (v8 << 6);
      sub_21D371AB0(*(v31 + 48) + *(v29 + 72) * v19, v7);
      v20 = v30(v7);
      sub_21D371B14(v7);
      if (v2)
      {

        return swift_willThrow();
      }

      if ((v20 & 1) == 0)
      {
        *&v26[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_21D7C08F0(v26, v25, v28, v31);
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return sub_21D7C08F0(v26, v25, v28, v31);
      }

      v18 = *(a1 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_21DAB9F24(v23, v8, a1, v30);

  result = MEMORY[0x223D46520](v23, -1, -1);
  if (!v2)
  {
    return v24;
  }

  return result;
}

uint64_t sub_21DABA628@<X0>(char *a1@<X8>)
{
  if ((*(v1 + 24) & 1) != 0 || *(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_needsReload))
    {
      v3 = 2;
    }

    else
    {
      v3 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_prefersNoAnimation) & 1) == 0;
    }

    v4 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
    swift_beginAccess();
    updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
    sub_21D589C24(v1 + v4, &a1[*(updated + 20)]);
    *a1 = v3;
    return (*(*(updated - 8) + 56))(a1, 0, 1, updated);
  }

  else
  {
    v7 = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

void sub_21DABA780(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges;
  if (*(v4 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges))
  {
    goto LABEL_14;
  }

  v7 = v4[4];
  v6 = v4[5];
  v9 = v4[6];
  v8 = v4[7];
  if (v6)
  {
    if (a2)
    {
      if ((v7 ^ a1))
      {
        sub_21D24A7C4(a1, a2, a3, a4);
        sub_21D24A7C4(v7, v6, v9, v8);
      }

      else
      {
        v10 = ((a1 & 0x100) == 0) ^ BYTE1(v7) & 1;
        sub_21D24A7C4(a1, a2, a3, a4);
        sub_21D24A7C4(v7, v6, v9, v8);
        if (v10 & 1) != 0 && (sub_21D1D7450(v6, a2) & 1) != 0 && (sub_21D322414(v9, a3))
        {
          sub_21D371718(v8, a4);
          v15 = v14;

          sub_21D24A814(v7, v6);
          v16 = v15 ^ 1;
          goto LABEL_15;
        }
      }

      v19 = v7;
      v20 = v6;
      goto LABEL_13;
    }

LABEL_10:
    sub_21D24A7C4(a1, a2, a3, a4);
    sub_21D24A7C4(v7, v6, v9, v8);
    sub_21D24A814(v7, v6);
    v19 = a1;
    v20 = a2;
LABEL_13:
    sub_21D24A814(v19, v20);
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v16 = 0;
LABEL_15:
  *(v4 + v5) = v16 & 1;
  v21 = *(v4 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v21)
  {
    v22 = *(v4 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

    v21(v4);

    sub_21D0D0E88(v21, v22);
  }
}

uint64_t sub_21DABA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v11 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  v13 = (v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  *v13 = 0;
  v13[1] = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_needsReload) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_prefersNoAnimation) = 0;
  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

uint64_t sub_21DABAA88()
{

  sub_21D24A814(*(v0 + 32), *(v0 + 40));
  sub_21DABAD50(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost), *(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRSECreateRemindersPresentationTreeTransaction(uint64_t a1)
{
  result = qword_27CE66080;
  if (!qword_27CE66080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DABAB68(uint64_t a1)
{
  sub_21D58AE7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21DABAC2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 104);
  v10 = *(v8 + 112);

  v11 = sub_21D25E9D8(v9, v10);

  sub_21D646688(v11, a2, a3, a4);
  LOBYTE(v8) = v12;
  *(a1 + 16) = v11;

  *(a1 + 24) = (*(a1 + 24) | v8) & 1;
  v13 = *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v13)
  {
    v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

    v13(a1);

    return sub_21D0D0E88(v13, v14);
  }

  else
  {
  }
}

uint64_t sub_21DABAD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  LOBYTE(a2) = *a2;
  sub_21DABB41C();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_21DBF8E0C();

  v18 = sub_21DBFB77C();
  v19 = sub_21DABB398();
  if (a2)
  {
    v21 = sub_21D848108(v20);

    [v21 addAction:v18 forControlEvents:64];
    v22 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
    v23 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
    v25 = sub_21D848108(v24);

    sub_21DBFB97C();
    v26 = sub_21DBFB95C();
    if ((*(*(v26 - 8) + 48))(v11, 1, v26))
    {
      sub_21D303258(v11, v37);
      sub_21DBFB98C();

      sub_21D3032C8(v11);
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFB92C();
      sub_21DBFB98C();
    }

    v32 = *(v5 + v22);
    v34 = sub_21D848108(v33);
  }

  else
  {
    v27 = sub_21D847E38();

    [v27 addAction:v18 forControlEvents:64];
    v28 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
    v29 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
    v30 = sub_21D847E38();

    sub_21DBFB97C();
    v31 = sub_21DBFB95C();
    if ((*(*(v31 - 8) + 48))(v16, 1, v31))
    {
      sub_21D303258(v16, v37);
      sub_21DBFB98C();

      sub_21D3032C8(v16);
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFB92C();
      sub_21DBFB98C();
    }

    v32 = *(v5 + v28);
    v34 = sub_21D847E38();
  }

  v35 = v34;

  [v35 setHidden_];
}

uint64_t TTRIPermissionsWarmingSheetViewController.Buttons.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

id sub_21DABB398()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIPermissionsWarmingSheetView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_21DABB41C()
{
  result = qword_280D0C1D0;
  if (!qword_280D0C1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C1D0);
  }

  return result;
}

void (*TTRIPermissionsWarmingSheetViewController.title.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = sub_21DABB398();
  v4 = sub_21D847A30();

  v5 = [v4 text];
  if (v5)
  {
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DABB50C;
}

uint64_t sub_21DABB53C(uint64_t (*a1)(void))
{
  v2 = sub_21DABB398();
  v3 = a1();

  v4 = [v3 text];
  if (!v4)
  {
    return 0;
  }

  v5 = sub_21DBFA16C();

  return v5;
}

void sub_21DABB5C8(uint64_t *a1@<X8>)
{
  v2 = sub_21DABB398();
  v3 = sub_21D847BF4();

  v4 = [v3 text];
  if (v4)
  {
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

void sub_21DABB650(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_21DABB398();
  v3 = sub_21D847BF4();

  if (v1)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setText_];
}

void sub_21DABB6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_21DABB398();
  v6 = a3();

  if (a2)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];
}

void (*TTRIPermissionsWarmingSheetViewController.message.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = sub_21DABB398();
  v4 = sub_21D847BF4();

  v5 = [v4 text];
  if (v5)
  {
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DABB83C;
}

void sub_21DABB854(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (a2)
  {
    sub_21DBF8E0C();
    v6 = v5;
    v9 = a3();

    if (v4)
    {
      v7 = sub_21DBFA12C();
    }

    else
    {
      v7 = 0;
    }

    [v9 setText_];
  }

  else
  {
    v8 = v5;
    v9 = a3();

    if (v4)
    {
      v7 = sub_21DBFA12C();
    }

    else
    {
      v7 = 0;
    }

    [v9 setText_];
  }
}

id TTRIPermissionsWarmingSheetViewController.headerImage.getter()
{
  v0 = sub_21DABB398();
  v1 = sub_21D8478FC();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  v2 = objc_msgSendSuper2(&v4, sel_image);

  return v2;
}

void sub_21DABB9D0(void *a1@<X8>)
{
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for TTRISizedToFitImageView();
  v4 = objc_msgSendSuper2(&v5, sel_image);

  *a1 = v4;
}

void sub_21DABBA48(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v4, sel_setImage_, v1);
  sub_21DAD34C4();
}

void TTRIPermissionsWarmingSheetViewController.headerImage.setter(void *a1)
{
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v4, sel_setImage_, a1);
  sub_21DAD34C4();
}

void (*TTRIPermissionsWarmingSheetViewController.headerImage.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3].super_class = v1;
  v5 = sub_21DABB398();
  v6 = sub_21D8478FC();

  v7 = type metadata accessor for TTRISizedToFitImageView();
  v4[4].receiver = v7;
  v4->receiver = v6;
  v4->super_class = v7;
  v8 = [(objc_super *)v4 image];

  v4[3].receiver = v8;
  return sub_21DABBBE8;
}

void sub_21DABBBE8(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  v4 = (*a1)[4].receiver;
  v5 = *((*a1)[3].super_class + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (a2)
  {
    v6 = receiver;
    v7 = v5;
    v8 = sub_21D8478FC();

    v2[1].receiver = v8;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setImage_, v6);
    sub_21DAD34C4();

    v9 = v2[3].receiver;
  }

  else
  {
    v10 = v5;
    v9 = sub_21D8478FC();

    v2[2].receiver = v9;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setImage_, receiver);
    sub_21DAD34C4();
  }

  free(v2);
}

char *TTRIPermissionsWarmingSheetViewController.__allocating_init(title:message:headerImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(v5) initWithNibName:0 bundle:0];
  v10 = sub_21DABB398();
  v11 = sub_21D847A30();

  if (a2)
  {
    v12 = sub_21DBFA12C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText_];

  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
  v14 = *&v9[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView];
  v15 = sub_21D847BF4();

  if (a4)
  {
    v16 = sub_21DBFA12C();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  v17 = *&v9[v13];
  v18 = sub_21D8478FC();

  v20.receiver = v18;
  v20.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v20, sel_setImage_, a5);
  sub_21DAD34C4();

  return v9;
}

Swift::Void __swiftcall TTRIPermissionsWarmingSheetViewController.loadView()()
{
  v1 = sub_21DABB398();
  [v0 setView_];
}

id TTRIPermissionsWarmingSheetViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TTRIPermissionsWarmingSheetViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView] = 0;
  if (a2)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id TTRIPermissionsWarmingSheetViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIPermissionsWarmingSheetViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TTRIPermissionsWarmingSheetViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21DABC2A0()
{
  result = qword_27CE66098[0];
  if (!qword_27CE66098[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIPermissionsWarmingSheetViewController.Buttons, &type metadata for TTRIPermissionsWarmingSheetViewController.Buttons, v0, v1);
    atomic_store(result, qword_27CE66098);
  }

  return result;
}

BOOL TTRReminderHashtagData.shouldShowStructuredTagField.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

uint64_t TTRReminderHashtagData.init(supportsHashtags:inlineHashtagVisibility:tags:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TTRReminderHashtagData.ttrAccessibilityTagSummary.getter()
{
  v1.value = 5;
  v1.is_nil = 0;
  return TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(v1)._countAndFlagsBits;
}

uint64_t TTRReminderHashtagData.detailText.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      return 0;
    }

    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v2;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  v2 = sub_21DBFA13C();

  return v2;
}

double TTRReminderHashtagData.inlineHashtagVisibility.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);
  sub_21DBF8E0C();
  return result;
}

void sub_21DABC590()
{
  byte_280D15478 = 0;
  qword_280D15480 = 0;
  unk_280D15488 = MEMORY[0x277D84F90];
}

double static TTRReminderHashtagData.unsupported.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D15470 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_280D15480;
  v2 = unk_280D15488;
  *a1 = byte_280D15478;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void TTRReminderHashtagData.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

Swift::String __swiftcall TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(Swift::Int_optional withTagLimit)
{
  v2 = *(v1 + 16);
  v3 = v2 >> 62;
  if (withTagLimit.is_nil)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    value = withTagLimit.value;
    v4 = sub_21DBFBD7C();
    if (v4 < value)
    {
      goto LABEL_4;
    }

LABEL_25:
    if (qword_27CE57558 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D83B88];
    *(v27 + 16) = xmmword_21DC08D00;
    v29 = MEMORY[0x277D83C10];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = v4;
    v30 = sub_21DBFA13C();
    v32 = v31;

    v25 = v32;
    v24 = v30;
    goto LABEL_28;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= withTagLimit.value)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v3)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v6 = 0;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;
    v34 = xmmword_21DC08D00;
    v35 = v2;
    while (1)
    {
      if (v37)
      {
        v11 = MEMORY[0x223D44740](v6, v2);
      }

      else
      {
        if (v6 >= *(v36 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v2 + 8 * v6 + 32);
      }

      v12 = v11;
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = [objc_opt_self() currentRequest];
      if (v14 && (v15 = v14, v16 = [v14 technology], v15, LOBYTE(v15) = AXTechnology.ttrShouldUseSpeakableStrings.getter(v16), v16, (v15 & 1) != 0))
      {
        v17 = i;
        if (qword_27CE57550 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
        v18 = swift_allocObject();
        *(v18 + 16) = v34;
        v19 = [v12 name];
        v20 = sub_21DBFA16C();
        v22 = v21;

        *(v18 + 56) = MEMORY[0x277D837D0];
        *(v18 + 64) = sub_21D17A884();
        *(v18 + 32) = v20;
        *(v18 + 40) = v22;
        v8 = sub_21DBFA13C();
        v10 = v23;
        i = v17;
        v2 = v35;
      }

      else
      {
        v7 = [v12 name];
        sub_21DBFA16C();

        v8 = sub_21DBFA22C();
        v10 = v9;
      }

      MEMORY[0x223D42AA0](v8, v10);

      ++v6;
      if (v13 == i)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_28:
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t _s15RemindersUICore22TTRReminderHashtagDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v5 = *(a2 + 1);
  v4 = *(a2 + 2);
  if (*(a1 + 1))
  {
    if (v5)
    {
      sub_21DBF8E0C();
      v6 = sub_21DBF8E0C();
      v7 = sub_21D3220EC(v6, v5);

      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_9:

  return sub_21D1D7630(v3, v4);
}

uint64_t sub_21DABCAF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderHashtagData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderHashtagData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(*v5 + 80);
  if (!*(a2 + 8))
  {
    v13 = sub_21DABEB58(a1, 1, a3, a4, v8);
    sub_21DABCD90(v13, v7, &v18);

    if (v18)
    {
      v14 = v19;
      *a5 = v18;
      *(a5 + 8) = v14;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) != 1)
  {
    v15 = sub_21DABEB58(a1, 0, a3, a4, v8);
    v21 = v7;
    sub_21DABE1E0(v15, &v21, &v18);

    v16 = v19;
    if (v19)
    {
      v17 = *(&v19 + 1);
      *a5 = v18;
      *(a5 + 8) = v16;
      *(a5 + 16) = v17;
      *(a5 + 24) = 0;
      v12 = 2;
      goto LABEL_10;
    }

LABEL_9:
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v12 = -1;
    goto LABEL_10;
  }

  v9 = sub_21DABEB58(a1, 0, a3, a4, v8);
  sub_21DABD8C4(v9, v7, &v18);

  if (!v18)
  {
    goto LABEL_9;
  }

  v10 = v20;
  v11 = v19;
  *a5 = v18;
  *(a5 + 8) = v11;
  *(a5 + 24) = v10;
  v12 = 1;
LABEL_10:
  *(a5 + 32) = v12;
}

void sub_21DABCD90(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v97 = a2;
  v4 = a1;
  v83 = a3;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  v87 = sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = sub_21DBFBA8C();
  v12 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v80 - v16;
  v17 = sub_21DBF9E3C();
  v18 = 0;
  v98 = TupleTypeMetadata2 - 8;
  v101 = MEMORY[0x277D84F90];
  v102 = v17;
  v94 = (v12 + 32);
  v92 = (v6 + 32);
  v84 = MEMORY[0x277D84F90];
  v89 = (v6 + 8);
  v81 = (v6 + 16);
  v86 = v5;
  v90 = v14;
  v91 = v4;
  v88 = v10;
  v93 = TupleTypeMetadata2;
LABEL_2:
  v19 = v96;
  while (1)
  {
    if (v18 == sub_21DBFA6DC())
    {
      v99 = v18;
      v20 = *(TupleTypeMetadata2 - 8);
      (*(v20 + 56))(v14, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v21 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v21)
      {
        v22 = *(TupleTypeMetadata2 - 8);
        (*(v22 + 16))(v14, v4 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, TupleTypeMetadata2);
        v23 = __OFADD__(v18, 1);
        v24 = v18 + 1;
        if (v23)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v66 = sub_21DBFBF7C();
        v22 = *(TupleTypeMetadata2 - 8);
        if (*(v22 + 64) != 8)
        {
          goto LABEL_43;
        }

        v100[0] = v66;
        (*(v22 + 16))(v14, v100, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v19 = v96;
        v23 = __OFADD__(v18, 1);
        v24 = v18 + 1;
        if (v23)
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return;
        }
      }

      v99 = v24;
      v20 = v22;
      (*(v22 + 56))(v14, 0, 1, TupleTypeMetadata2);
    }

    (*v94)(v19, v14, v95);
    if ((*(v20 + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v25 = *&v19[*(TupleTypeMetadata2 + 48)];
    (*v92)(v10, v19, v5);
    v26 = [v25 list];
    v27 = &off_278331000;
    v28 = [v26 objectID];

    v29 = v97;
    v30 = [v97 objectID];
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v31 = v10;
    v32 = sub_21DBFB63C();

    if (v32)
    {
      (*v89)(v31, v5);

      v4 = v91;
      v10 = v31;
      goto LABEL_4;
    }

    v100[3] = v87;
    v100[4] = &protocol witness table for REMReminder;
    v100[0] = v25;
    v85 = __swift_project_boxed_opaque_existential_1(v100, v87);
    v33 = v25;
    v34 = [v33 list];
    v35 = [v34 objectID];

    v36 = [v29 objectID];
    v37 = sub_21DBFB63C();

    if (v37)
    {
      goto LABEL_35;
    }

    v38 = [v33 objectID];
    v39 = [v38 entityName];

    v40 = sub_21DBFA16C();
    v42 = v41;

    v43 = objc_opt_self();
    v44 = [v43 cdEntityNameForSavedReminder];
    v45 = sub_21DBFA16C();
    v47 = v46;

    if (v40 == v45 && v42 == v47)
    {

LABEL_17:
      v10 = v88;
      v5 = v86;
      (*v89)(v88, v86);
LABEL_18:

      __swift_destroy_boxed_opaque_existential_0(v100);
      v4 = v91;
LABEL_4:
      v14 = v90;
      v19 = v96;
      v18 = v99;
      TupleTypeMetadata2 = v93;
    }

    else
    {
      v48 = sub_21DBFC64C();

      if (v48)
      {
        goto LABEL_17;
      }

      v49 = [v97 objectID];
      v50 = [v49 entityName];

      v51 = sub_21DBFA16C();
      v53 = v52;

      v54 = [v43 cdEntityName];
      v55 = sub_21DBFA16C();
      v57 = v56;

      if (v51 == v55 && v53 == v57)
      {

        v5 = v86;
        TupleTypeMetadata2 = v93;
      }

      else
      {
        v58 = sub_21DBFC64C();

        v5 = v86;
        TupleTypeMetadata2 = v93;
        if ((v58 & 1) == 0)
        {
          v59 = [v33 accountID];
          v60 = v97;
          v61 = [v97 accountID];
          v62 = sub_21DBFB63C();

          if (v62)
          {
            v67 = [v60 account];
            v68 = [v67 capabilities];

            LOBYTE(v67) = [v68 supportsMoveAcrossLists];
            v27 = &off_278331000;
            if (v67)
            {
              v69 = [v60 account];
              v70 = [v69 capabilities];

              LOBYTE(v69) = [v70 supportsMoveAcrossSharedLists];
              if ((v69 & 1) == 0)
              {
                v71 = [*v85 list];
                v72 = [v71 isShared];

                if ((v72 & 1) == 0)
                {
                  [v60 isShared];
                }
              }
            }

LABEL_35:
            __swift_destroy_boxed_opaque_existential_0(v100);
            v10 = v88;
            (*v81)(v82, v88, v5);
            sub_21DBFA74C();
            sub_21DBFA6FC();
            v73 = [v33 v27[425]];
            MEMORY[0x223D42D80]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

            (*v89)(v10, v5);
            v84 = v101;
            v14 = v90;
            v4 = v91;
            v18 = v99;
            TupleTypeMetadata2 = v93;
            goto LABEL_2;
          }

          v63 = [v33 account];
          v64 = [v60 account];
          v65 = [v63 canCopyReminderLosslesslyToAccount_];

          v27 = &off_278331000;
          if (v65)
          {
            goto LABEL_35;
          }

          v10 = v88;
          (*v89)(v88, v5);
          goto LABEL_18;
        }
      }

      v10 = v88;
      (*v89)(v88, v5);

      __swift_destroy_boxed_opaque_existential_0(v100);
      v14 = v90;
      v4 = v91;
      v19 = v96;
      v18 = v99;
    }
  }

  v74 = v102;
  v100[0] = v102;
  v75 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v75);
  if (sub_21DBFACFC())
  {

    v76 = 0;
    v74 = 0;
    v77 = 0;
    v78 = v83;
  }

  else
  {
    v76 = v97;
    v79 = v97;
    v78 = v83;
    v77 = v84;
  }

  *v78 = v76;
  v78[1] = v74;
  v78[2] = v77;
}

void sub_21DABD8C4(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v73 = a2;
  v6 = *v3;
  v65 = sub_21DBF563C();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  v72 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = sub_21DBFBA8C();
  v17 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v58 - v21;
  v23 = [v73 customContext];
  if (v23 && (v24 = v23, v25 = sub_21DBFB4FC(), v24, (v66 = v25) != 0))
  {
    v74 = v15;
    v60 = v12;
    v61 = a3;
    v26 = v72;
    v27 = sub_21DBF9E3C();
    v28 = 0;
    v79 = MEMORY[0x277D84F90];
    v80 = v27;
    v75 = TupleTypeMetadata2 - 8;
    v68 = (v9 + 32);
    v69 = (v17 + 32);
    v67 = (v9 + 8);
    v78 = MEMORY[0x277D84FA0];
    v62 = MEMORY[0x277D84F90];
    ++v63;
    v59 = (v9 + 16);
LABEL_5:
    v29 = v71;
    while (1)
    {
      if (v28 == sub_21DBFA6DC())
      {
        v30 = *(TupleTypeMetadata2 - 8);
        (*(v30 + 56))(v29, 1, 1, TupleTypeMetadata2);
      }

      else
      {
        v31 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v31)
        {
          v32 = *(TupleTypeMetadata2 - 8);
          (*(v32 + 16))(v29, a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, TupleTypeMetadata2);
          v33 = __OFADD__(v28++, 1);
          if (v33)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v47 = sub_21DBFBF7C();
          v32 = *(TupleTypeMetadata2 - 8);
          if (*(v32 + 64) != 8)
          {
            goto LABEL_34;
          }

          v76 = v47;
          (*(v32 + 16))(v29, &v76, TupleTypeMetadata2);
          swift_unknownObjectRelease();
          v33 = __OFADD__(v28++, 1);
          if (v33)
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            return;
          }
        }

        v30 = v32;
        (*(v32 + 56))(v29, 0, 1, TupleTypeMetadata2);
        v26 = v72;
      }

      (*v69)(v22, v29, v70);
      if ((*(v30 + 48))(v22, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v34 = a1;
      v35 = *&v22[*(TupleTypeMetadata2 + 48)];
      v36 = v74;
      (*v68)(v74, v22, v26);
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v37 = v26;
      v38 = [v35 accountID];
      v39 = [v73 accountID];
      v40 = sub_21DBFB63C();

      if ((v40 & 1) == 0)
      {
        (*v67)(v36, v37);

        a1 = v34;
        v26 = v37;
        goto LABEL_5;
      }

      type metadata accessor for TTRReminderEditor();
      v41 = v64;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      static TTRReminderEditor.canMatch(reminder:to:now:)(v35, v66, v41, &v76);
      (*v63)(v41, v65);
      v42 = v76;
      a1 = v34;
      if (!v77)
      {

        v48 = sub_21D9D830C(v42, 0);
        v26 = v72;
        (*v67)(v74, v72, v48);
        goto LABEL_5;
      }

      v29 = v71;
      v43 = v72;
      if (v77 == 1)
      {
        (*v59)(v60, v74, v72);
        v62 = sub_21DBFA74C();
        sub_21DBF8E0C();
        sub_21DBFA6FC();
        v44 = [v35 objectID];
        MEMORY[0x223D42D80]();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v62 = v79;
        sub_21D3237F4(v42);

        v45 = sub_21D9D830C(v42, 1u);
        (*v67)(v74, v43, v45);
        a1 = v34;
        v26 = v43;
      }

      else
      {
        (*v59)(v60, v74, v72);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v46 = [v35 objectID];
        MEMORY[0x223D42D80]();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        (*v67)(v74, v43);
        v62 = v79;
        v26 = v43;
      }
    }

    v49 = v80;
    v76 = v80;
    v50 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v50);
    v51 = sub_21DBFACFC();

    v52 = v78;
    if (v51)
    {

      v53 = v61;
      *v61 = 0u;
      v53[1] = 0u;
    }

    else
    {
      v54 = v61;
      v55 = v62;
      v56 = v73;
      *v61 = v73;
      v54[1] = v49;
      v54[2] = v55;
      v54[3] = v52;

      v57 = v56;
    }
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

void sub_21DABE1E0(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *a2;
  if (*a2 > 2u || *a2)
  {
    v8 = sub_21DBFC64C();

    if ((v8 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }
  }

  else
  {
  }

  v19 = a1;
  MEMORY[0x28223BE20](v9);
  v10 = *(v6 + 80);
  sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  swift_getTupleTypeMetadata2();
  v11 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v11);
  v14 = sub_21D0E5014(sub_21DABF3C8, v18, v11, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  v19 = a1;
  MEMORY[0x28223BE20](v14);
  v18[2] = v10;
  v15 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v17 = sub_21D0E5014(sub_21DABF3E8, v18, v11, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
  *a3 = v7;
  a3[1] = v14;
  a3[2] = v17;
}

void TTRMoveRemindersToListPresenterCapability.showSmartListAddInfoAlertIfNeeded(_:)(void (*a1)(void))
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v2 = qword_280D1AA18;
  v3 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  v4 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v4 || (v5 = sub_21DBFA12C(), v6 = [v4 BOOLForKey_], v5, (v6 & 1) == 0))
  {
    a1();
    v7 = *(v2 + v3);
    if (v7)
    {
      v8 = sub_21DBFA12C();
      [v7 setBool:1 forKey:v8];
    }
  }
}

id sub_21DABE5F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result objectID];
  }

  *a2 = result;
  return result;
}

void sub_21DABE63C(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    v23 = a2;
    if (a3)
    {
      v11 = [v23 parentReminder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 objectID];

        if (v13)
        {
          v14 = sub_21D1E21BC(v13, a4);

          if (v14)
          {
            sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);

            return;
          }
        }
      }
    }

    sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    (*(*(a5 - 8) + 16))(a6, a1, a5);
    *(a6 + v17) = v23;
    v18 = *(*(v16 - 8) + 56);
    v19 = a6;
    v20 = 0;
    v21 = v16;
  }

  else
  {
    sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
    v22 = swift_getTupleTypeMetadata2();
    v18 = *(*(v22 - 8) + 56);
    v21 = v22;
    v19 = a6;
    v20 = 1;
  }

  v18(v19, v20, 1, v21);
}

uint64_t sub_21DABE8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2, v7);

  return (*(*(a2 - 8) + 32))(a3, v9, a2);
}

uint64_t sub_21DABE9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1, TupleTypeMetadata2, v7);
  v11 = *&v9[*(TupleTypeMetadata2 + 48)];
  v12 = [v11 objectID];

  *a3 = v12;
  return (*(*(a2 - 8) + 8))(v9, a2);
}

uint64_t sub_21DABEB58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v18 = a5;
  v19 = a3;
  v20 = a4;
  v6 = sub_21DBFA74C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66320, &qword_21DC3B8F0);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v6);
  v10 = sub_21D0E5014(sub_21DABF408, v17, v6, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);
  v21 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66328, &qword_21DC3B8F8);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v12 = sub_21DABF448();
  sub_21D183A0C();
  sub_21DBFA42C();
  v21 = a1;
  v25 = v10;
  v13 = swift_getWitnessTable(MEMORY[0x277D83970], v6);
  sub_21DBFC6EC();

  v25 = v27;
  v26 = v28;
  v21 = v6;
  v22 = v11;
  v23 = v13;
  v24 = v12;
  v14 = sub_21DBFBF5C();
  sub_21D0D8CF0(255, &qword_280D17860, 0x277D44750);
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable(MEMORY[0x277D84120], v14);
  v15 = sub_21DBFA4EC();

  return v15;
}

double sub_21DABEE30(id *a1)
{

  return result;
}

void *sub_21DABEE74(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DABEEC4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DABEF38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double sub_21DABEFA0(id *a1)
{

  return result;
}

void *sub_21DABEFEC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DABF044(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DABF0D0(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  return a1;
}

double sub_21DABF158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    if (a5 == 1)
    {
      v6 = a1;
      sub_21DBF8E0C();
    }

    else
    {
      if (a5)
      {
        return result;
      }

      v5 = a1;
    }
  }

  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

double sub_21DABF1FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21DABF28C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21DABF158(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t sub_21DABF2F0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21DABF158(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21DABF1FC(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t sub_21DABF364(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21DABF1FC(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t sub_21DABF408@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

unint64_t sub_21DABF448()
{
  result = qword_27CE66330;
  if (!qword_27CE66330)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66328, &qword_21DC3B8F8);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE66330);
  }

  return result;
}

uint64_t sub_21DABF4BC(uint64_t a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66320, &qword_21DC3B8F0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v4;
}

void TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v193) = a2;
  v174 = sub_21DBF4CAC();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v179 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v172 = &v169 - v8;
  v177 = sub_21DBF580C();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40, &qword_21DC18A98);
  MEMORY[0x28223BE20](v10 - 8);
  v178 = &v169 - v11;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v195 = &v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v169 - v19;
  v21 = sub_21DBF563C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v193)
  {
    v25 = sub_21DAC0E60();
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = v26;
LABEL_75:
      *a3 = v25;
      *(a3 + 8) = v30;
      *(a3 + 16) = v27;
      *(a3 + 24) = v28;
      *(a3 + 32) = v29;
      return;
    }
  }

  v190 = a1;
  v180 = a3;
  v191 = v3;
  sub_21D0D3954(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, v20, &qword_27CE58D68, &unk_21DC0C060);
  v31 = *(v22 + 48);
  v32 = v31(v20, 1, v21);
  v193 = v15;
  v183 = v12;
  v182 = v13;
  v192 = v21;
  v181 = v22;
  v194 = v24;
  if (v32 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v31(v20, 1, v21) != 1)
    {
      sub_21D0CF7E0(v20, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
  }

  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
  v33 = sub_21DBF5A0C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v188 = v36 + 2 * v35;
  v37 = v35;
  v185 = v35;
  v38 = swift_allocObject();
  v187 = xmmword_21DC08D20;
  *(v38 + 16) = xmmword_21DC08D20;
  v186 = *MEMORY[0x277CC9988];
  v39 = *(v34 + 104);
  v39(v38 + v36);
  v184 = *MEMORY[0x277CC9978];
  v39(v38 + v36 + v37);
  sub_21D1D0F50(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = v191;
  sub_21DBF58DC();

  v171 = sub_21DBF4F7C();
  LOBYTE(v37) = v41;
  v170 = sub_21DBF4F2C();
  v43 = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = v187;
  v45 = v44 + v36;
  (v39)(v45, v186, v33);
  (v39)(v45 + v185, v184, v33);
  sub_21D1D0F50(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v193;
  sub_21DBF58DC();

  v47 = sub_21DBF4F7C();
  v49 = v48;
  v50 = sub_21DBF4F2C();
  if (v37)
  {
    v52 = v192;
    if ((v49 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v52 = v192;
    if ((v49 & 1) != 0 || v171 != v47)
    {
      goto LABEL_20;
    }
  }

  if (v43)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v53 = sub_21DAC0CBC();
    v54 = sub_21DBF55BC();
    v55 = [v53 _attributedStringWithFieldsFromDate_];

    if (v55)
    {
      goto LABEL_21;
    }

    v56 = *(v40 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter);
    v57 = sub_21DBF55BC();
    v58 = [v56 stringFromDate_];
LABEL_33:
    v92 = v58;

    v93 = sub_21DBFA16C();
    v30 = v94;

    v95 = *(v182 + 8);
    v96 = v183;
    v95(v46, v183);
    v95(v195, v96);
    (*(v181 + 8))(v194, v52);
    v25 = v93;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    a3 = v180;
    goto LABEL_75;
  }

  if ((v51 & 1) == 0 && v170 == v50)
  {
    goto LABEL_18;
  }

LABEL_20:
  v59 = sub_21DAC0CD0();
  v60 = sub_21DBF55BC();
  v55 = [v59 _attributedStringWithFieldsFromDate_];

  if (!v55)
  {
    v56 = *(v40 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter);
    v57 = sub_21DBF55BC();
    v58 = [v56 stringFromDate_];
    goto LABEL_33;
  }

LABEL_21:
  v61 = v55;
  v62 = [v61 string];
  v63 = sub_21DBFA16C();
  v30 = v64;

  v65 = sub_21DBFA12C();
  v198 = MEMORY[0x277D84F90];
  v66 = [v61 string];
  v67 = sub_21DBFA16C();
  v69 = v68;

  v70 = MEMORY[0x223D42B30](v67, v69);

  v71 = swift_allocObject();
  v71[2] = sub_21DAC1CDC;
  v71[3] = 0;
  v71[4] = &v198;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_21D1A6510;
  *(v72 + 24) = v71;
  v204 = sub_21D24B3B4;
  v205 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v201 = 1107296256;
  v202 = sub_21D1A6068;
  v203 = &block_descriptor_145;
  v73 = _Block_copy(&aBlock);

  [v61 enumerateAttribute:v65 inRange:0 options:v70 usingBlock:{0, v73}];

  _Block_release(v73);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v74 = v198;

  if (v74[2] != 1)
  {

    goto LABEL_51;
  }

  v75 = v74[4];
  v76 = v74[5];

  v198 = v75;
  v199 = v76;
  v77 = [v61 string];
  if (!v77)
  {
    sub_21DBFA16C();
    v77 = sub_21DBFA12C();
  }

  v78 = [objc_allocWithZone(MEMORY[0x277CCAB68]) initWithString_];

  v79 = v175;
  sub_21DBF581C();
  v80 = v178;
  sub_21DBF57DC();
  (*(v176 + 8))(v79, v177);
  v81 = sub_21DBF572C();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v80, 1, v81);
  v84 = v179;
  if (v83 == 1)
  {
    sub_21D0CF7E0(v80, &qword_27CE5CF40, &qword_21DC18A98);
    goto LABEL_27;
  }

  v97 = sub_21DBF571C();
  v99 = v98;
  (*(v82 + 8))(v80, v81);
  if (v97 == 24938 && v99 == 0xE200000000000000 || (sub_21DBFC64C() & 1) != 0 || v97 == 28523 && v99 == 0xE200000000000000)
  {
  }

  else
  {
    v168 = sub_21DBFC64C();

    if ((v168 & 1) == 0)
    {
LABEL_27:
      v85 = 0;
      v86 = v198;
      if (v198)
      {
LABEL_28:
        v87 = v199;
        v88 = v86 + v199;
        v89 = v78;
        if (v88 == [v89 length])
        {
          v90 = [v89 length];

          v91 = __OFSUB__(v90, v87);
          v28 = &v90[-v87];
          if (v91)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v27 = 0;
          goto LABEL_57;
        }

LABEL_51:
        v115 = *(v182 + 8);
        v116 = v183;
        v115(v193, v183);
        v115(v195, v116);
        (*(v181 + 8))(v194, v192);
        v27 = 0;
        v28 = 0;
        v29 = 1;
        a3 = v180;
        v25 = v63;
        goto LABEL_75;
      }

LABEL_56:
      v27 = v199;
      v120 = [v78 length];
      v28 = &v120[-v27];
      if (__OFSUB__(v120, v27))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_57:
      v121 = v63;
      v190 = v78;
      if ((v85 & 1) == 0)
      {

        v196 = v27;
        v197 = v28;
        v122 = v198 == 0;
        v123 = 2 * (v198 != 0);
        v124 = swift_allocObject();
        *(v124 + 16) = v78;
        *(v124 + 24) = &unk_282EA6548;
        *(v124 + 32) = &v196;
        *(v124 + 40) = v122;
        *(v124 + 48) = &v198;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_21DAC20D0;
        *(v125 + 24) = v124;
        v204 = sub_21D301E58;
        v205 = v125;
        aBlock = MEMORY[0x277D85DD0];
        v201 = 1107296256;
        v202 = sub_21D472CC4;
        v203 = &block_descriptor_12_7;
        v126 = _Block_copy(&aBlock);
        v127 = v78;

        [v61 enumerateAttributesInRange:v27 options:v28 usingBlock:{v123, v126}];
        _Block_release(v126);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v121 = sub_21DBFA16C();
        v30 = v129;
        v27 = v196;
        v28 = v197;
        v84 = v179;
      }

      v191 = v121;
      v130 = sub_21DBFA12C();
      v131 = [v130 substringWithRange_];

      v132 = sub_21DBFA16C();
      v134 = v133;

      v135 = v198;
      if (v198)
      {
        v136 = sub_21DBF4BBC();
        MEMORY[0x28223BE20](v136);
        *(&v169 - 2) = v84;
        sub_21D3F7D48(sub_21D24B3BC, (&v169 - 4), v132, v134);
        if (v137)
        {

          v138 = 0;
          v139 = 0xE000000000000000;
          v140 = v84;
        }

        else
        {
          sub_21DBFA29C();
          v145 = sub_21DBFA3FC();
          v147 = v146;
          v149 = v148;
          v189 = v135;
          v150 = v84;
          v152 = v151;

          v138 = MEMORY[0x223D429B0](v145, v147, v149, v152);
          v139 = v153;

          v140 = v150;
          v135 = v189;
        }

        v154 = v174;
        v155 = v173;
      }

      else
      {
        v141 = v172;
        v142 = sub_21DBF4BBC();
        MEMORY[0x28223BE20](v142);
        *(&v169 - 2) = v141;
        v143 = sub_21D3F7414(sub_21D24B3BC, (&v169 - 4), v132, v134);
        if (v144)
        {

          v138 = 0;
          v139 = 0xE000000000000000;
        }

        else
        {
          v156 = sub_21D3F7BA8(v143, v132, v134);
          v158 = v157;
          v160 = v159;
          v162 = v161;

          v138 = MEMORY[0x223D429B0](v156, v158, v160, v162);
          v139 = v163;
        }

        v154 = v174;
        v155 = v173;
        v140 = v172;
      }

      (*(v155 + 8))(v140, v154);
      v164 = MEMORY[0x223D42B30](v138, v139);

      v165 = *(v182 + 8);
      v166 = v183;
      v165(v193, v183);
      v165(v195, v166);
      (*(v181 + 8))(v194, v192);
      v167 = &v28[-v164];
      if (!__OFSUB__(v28, v164))
      {
        a3 = v180;
        v25 = v191;
        if (v167 < 1)
        {
LABEL_74:
          v29 = 0;
          goto LABEL_75;
        }

        v91 = __OFSUB__(v28, v167);
        v28 = v164;
        if (!v91)
        {
          if (v135)
          {
            goto LABEL_74;
          }

          v91 = __OFADD__(v27, v167);
          v27 += v167;
          if (!v91)
          {
            goto LABEL_74;
          }

          goto LABEL_88;
        }

        goto LABEL_84;
      }

      goto LABEL_81;
    }
  }

  v100 = v198;
  v101 = v199;
  v102 = sub_21DBFA12C();
  v103 = sub_21DBFA12C();
  [v78 replaceOccurrencesOfString:v102 withString:v103 options:260 range:{v100 + v101, 1}];

  v104 = sub_21DBFA12C();
  v105 = sub_21DBFA12C();
  v106 = v100 - 1;
  v107 = v78;
  v108 = __OFSUB__(v100, 1);
  if (__OFSUB__(v100, 1))
  {
    goto LABEL_82;
  }

  v109 = v107;
  v110 = [v107 replaceOccurrencesOfString:v104 withString:v105 options:260 range:{v106 & ~(v106 >> 63), 1}];

  if (v110 == 1)
  {
    v100 = (v100 - 1);
    v198 = v106;
    v91 = __OFSUB__(v106--, 1);
    v108 = v91;
  }

  if (v108)
  {
    goto LABEL_83;
  }

  v78 = v109;
  v111 = [v109 substringWithRange_];
  v112 = sub_21DBFA16C();
  v114 = v113;

  if (v112 == 32 && v114 == 0xE100000000000000)
  {

    goto LABEL_55;
  }

  v117 = sub_21DBFC64C();

  if (v117)
  {
LABEL_55:
    v63 = sub_21DBFA16C();
    v30 = v119;
    v86 = v198;
    v85 = 1;
    if (v198)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

  v118 = sub_21DBFA12C();
  [v109 insertString:v118 atIndex:v100];

  if (!__OFADD__(v100, 1))
  {
    v198 = (v100 + 1);
    goto LABEL_55;
  }

LABEL_89:
  __break(1u);
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v2 = sub_21DBF582C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v4 = sub_21DBF5A2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, &qword_27CE58D68, &unk_21DC0C060);

  return v0;
}

id sub_21DAC0B58()
{
  v0 = sub_21DBF5C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_21DBF5C3C();
  v5 = sub_21DBF5C0C();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  v6 = sub_21DBF574C();
  [v4 setLocale_];

  v7 = sub_21DBF594C();
  [v4 setCalendar_];

  return v4;
}

id sub_21DAC0CE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_21DAC0B58();
    v6 = sub_21DBFA12C();
    [v5 setLocalizedDateFormatFromTemplate_];

    [v5 setFormattingContext_];
    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_21DAC0DBC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_21DAC0B58();
    [v7 setDateStyle_];
    [v7 setFormattingContext_];
    [v7 setDoesRelativeDateFormatting_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

uint64_t sub_21DAC0E60()
{
  v0 = sub_21DAC0D9C();
  v1 = sub_21DBF55BC();
  v2 = [v0 stringFromDate_];

  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = sub_21DAC0DAC();
  v7 = sub_21DBF55BC();
  v8 = [v6 stringFromDate_];

  v9 = sub_21DBFA16C();
  v11 = v10;

  if (v3 == v9 && v5 == v11)
  {

LABEL_5:

    return 0;
  }

  v12 = sub_21DBFC64C();

  if (v12)
  {
    goto LABEL_5;
  }

  return v3;
}

id sub_21DAC0FD8(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = sub_21DAC0B58();
    v10 = sub_21DBFA12C();
    [v9 *a4];

    v11 = *(v4 + v5);
    *(v4 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

uint64_t sub_21DAC10B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.__allocating_init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v8 + v11, a2, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v8;
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.monthHeaderTitleString(for:)(uint64_t a1)
{
  v3 = sub_21DBF5A0C();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, v8, &qword_27CE58D68, &unk_21DC0C060);
  v13 = *(v10 + 48);
  v14 = v13(v8, 1, v9);
  v48 = v10;
  v49 = v9;
  v45 = v12;
  if (v14 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v13(v8, 1, v9) != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v15 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v42 = *MEMORY[0x277CC9988];
  v17 = v46;
  v16 = v47;
  v18 = *(v46 + 104);
  v18(v5);
  v41 = v15;
  v43 = sub_21DBF5A1C();
  v19 = *(v17 + 8);
  v19(v5, v16);
  v40 = v19;
  (v18)(v5, *MEMORY[0x277CC9968], v16);
  v44 = sub_21DBF5A1C();
  v19(v5, v16);
  v20 = sub_21DAC0FB8();
  v39[1] = a1;
  v21 = sub_21DBF55BC();
  v22 = [v20 stringFromDate_];

  v23 = sub_21DBFA16C();
  v46 = v24;

  (v18)(v5, v42, v16);
  v25 = v45;
  v26 = sub_21DBF5A1C();
  v40(v5, v16);
  if (v43 != v26)
  {
    v29 = sub_21DAC0F9C();
    v30 = sub_21DBF55BC();
    v31 = [v29 stringFromDate_];

    v32 = sub_21DBFA16C();
    v34 = v33;

    if (v44 == 1)
    {
      v35 = _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO5month_4yearS2S_SStFZ_0(v23, v46, v32, v34);
    }

    else
    {
      v35 = _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO11restOfMonth_4yearS2S_SStFZ_0(v23, v46, v32, v34);
    }

    v23 = v35;

LABEL_15:
    v28 = v48;
    v27 = v49;

    goto LABEL_16;
  }

  if (v44 != 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21DC08D00;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_21D17A884();
    v37 = v46;
    *(v36 + 32) = v23;
    *(v36 + 40) = v37;
    v23 = sub_21DBFA17C();
    goto LABEL_15;
  }

  v28 = v48;
  v27 = v49;
LABEL_16:
  (*(v28 + 8))(v25, v27);
  return v23;
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.yearHeaderTitleString(for:)()
{
  v1 = sub_21DBF5A0C();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF732C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3FAB0](v9);
  v29 = v0;
  v12 = sub_21DAC0F9C();
  v13 = sub_21DBF55BC();
  v14 = [v12 stringFromDate_];

  v15 = sub_21DBFA16C();
  v30 = v16;
  v31 = v15;

  sub_21DBF72EC();
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 == *MEMORY[0x277D454D8])
  {
    v18 = v28;
    v19 = *(v28 + 104);
    v19(v3, *MEMORY[0x277CC9968], v1);
    v27 = sub_21DBF5A1C();
    v20 = *(v18 + 8);
    v20(v3, v1);
    v19(v3, *MEMORY[0x277CC9998], v1);
    v21 = sub_21DBF5A1C();
    v20(v3, v1);
    v23 = v30;
    v22 = v31;
    if (v27 != 1 || v21 != 1)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21DC08D00;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_21D17A884();
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;
      v22 = sub_21DBFA17C();
    }

    goto LABEL_8;
  }

  v22 = v31;
  if (v17 == *MEMORY[0x277D454E0])
  {
LABEL_8:
    (*(v32 + 8))(v11, v33);
    return v22;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DAC1CDC(uint64_t a1)
{
  sub_21D0D3954(a1, &v5, &qword_27CE5C690, &unk_21DC11AB0);
  if (!v6)
  {
    sub_21D0CF7E0(&v5, &qword_27CE5C690, &unk_21DC11AB0);
LABEL_9:
    v1 = 0;
    return v1 & 1;
  }

  sub_21D0CF2E8(&v5, v7);
  sub_21D0CEB98(v7, &v5);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    goto LABEL_9;
  }

  if (v3 == 69 && v4 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);

    v1 = 1;
  }

  else
  {
    if (v3 == 99 && v4 == 0xE100000000000000)
    {

      v1 = 1;
    }

    else
    {
      v1 = sub_21DBFC64C();
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v1 & 1;
}

void sub_21DAC1E2C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v37 = a8;
  v35[1] = a6;
  v36 = a7;
  v38 = a4;
  v13 = sub_21DBF4CAC();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a5 substringWithRange_];
  v19 = sub_21DBFA16C();
  v21 = v20;

  v39 = v19;
  v40 = v21;
  sub_21DBF4BBC();
  sub_21D176F0C();
  v22 = sub_21DBFBB3C();
  v24 = v23;
  (*(v14 + 8))(v17, v13);

  if (*(a1 + 16) || (v26 = v36, v27 = v37, v28 = a3 - 1, a3 <= 1))
  {

    goto LABEL_9;
  }

  v39 = v22;
  v40 = v24;
  MEMORY[0x28223BE20](v25);
  v35[-2] = &v39;
  v30 = sub_21D17B510(sub_21D8F91AC, &v35[-4], v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = sub_21DBFA12C();
  [a5 replaceCharactersInRange:a2 withString:{a3, v31}];

  v32 = *(v26 + 8);
  v33 = __OFSUB__(v32, v28);
  v34 = v32 - v28;
  if (v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v26 + 8) = v34;
  if (v27)
  {
LABEL_9:
    *v38 = 1;
    return;
  }

  if (!__OFSUB__(*a9, v28))
  {
    *a9 -= v28;
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.__deallocating_deinit()
{
  TTRDateBucketSectionHeaderTitleFormatterBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRDateBucketSectionHeaderTitleFormatterBase(uint64_t a1)
{
  result = qword_280D0E480;
  if (!qword_280D0E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DAC2158(uint64_t a1)
{
  sub_21DBF582C();
  if (v1 <= 0x3F)
  {
    sub_21DBF5A2C();
    if (v2 <= 0x3F)
    {
      sub_21D4D5850(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t TTREditTodaySectionsViewModel.init(isPlaceholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = result;
  return result;
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0) + 20));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0) + 24));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAC23E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTREditTodaySectionsViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_21DAC3574(v1, &v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21DAC3654(v4);
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBF5EBC();
    (*(v6 + 8))(v4, v5);
  }

  return v7 & 1;
}

uint64_t TTREditTodaySectionsViewModel.OptimisticApply.init(cellOrdering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_21DAC35E4(a1, a2);
}

uint64_t TTREditTodaySectionsViewModel.cellViewModels.getter()
{
  v1 = sub_21DBFB32C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v49 = MEMORY[0x277D84F90];
  sub_21D18F8E0(0, v11, 0);
  v13 = 0;
  v43 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v42 = v2 + 16;
  v12 = v49;
  v41 = v2 + 88;
  v40 = *MEMORY[0x277D45A18];
  v38 = *MEMORY[0x277D45A20];
  v32 = 0x800000021DC58960;
  v33 = "Sections UI for Today list";
  v31 = *MEMORY[0x277D45A28];
  v30[4] = "EMINDERS_DESCRIPTION";
  v30[5] = " UI for Today list";
  v30[3] = 0x800000021DC58A20;
  v30[2] = "Sections UI for Today list";
  v30[1] = 0x800000021DC588D0;
  v36 = 0x800000021DC58850;
  v37 = "name alert restore button";
  v39 = (v2 + 32);
  v44 = v11;
  v45 = v10;
  v34 = v6;
  v35 = v2;
  while (v13 < *(v10 + 16))
  {
    v14 = *(v2 + 16);
    v14(v6, v43 + *(v2 + 72) * v13, v1);
    v15 = v48;
    v14(v48, v6, v1);
    v16 = (*(v2 + 88))(v15, v1);
    if (v16 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    if (v16 == v38)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_9:
        v17 = sub_21DBF516C();
        v19 = v18;
        v20 = 0;
        v21 = 0;
        goto LABEL_14;
      }

LABEL_18:
      swift_once();
      goto LABEL_9;
    }

    if (v16 != v31)
    {
      goto LABEL_22;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF516C();
    v19 = v22;
    v20 = sub_21DBF516C();
    v21 = v23;
    v6 = v34;
    v2 = v35;
LABEL_14:
    (*v39)(v9, v6, v1);
    v24 = v47;
    v25 = &v9[*(v47 + 20)];
    *v25 = v17;
    v25[1] = v19;
    v26 = &v9[*(v24 + 24)];
    *v26 = v20;
    v26[1] = v21;
    v49 = v12;
    v28 = *(v12 + 16);
    v27 = *(v12 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_21D18F8E0((v27 > 1), v28 + 1, 1);
      v12 = v49;
    }

    ++v13;
    *(v12 + 16) = v28 + 1;
    sub_21DAC36BC(v9, v12 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28);
    v10 = v45;
    if (v44 == v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_22:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DAC2C68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v1, v3, v5);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == *MEMORY[0x277D45A18])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D45A20])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_6:
      v10 = sub_21DBF516C();
      v12 = v11;
      v13 = 0;
      v14 = 0;
LABEL_11:
      (v8)(a1, v1, v3);
      result = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
      v18 = (a1 + *(result + 20));
      *v18 = v10;
      v18[1] = v12;
      v19 = (a1 + *(result + 24));
      *v19 = v13;
      v19[1] = v14;
      return result;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D45A28])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF516C();
    v12 = v15;
    v13 = sub_21DBF516C();
    v14 = v16;
    goto LABEL_11;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t TTREditTodaySectionsViewModel.init(itemIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t TTREditTodaySectionsViewModel.optimisticApply(forMovingItemsAt:to:)@<X0>(char *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v11[1] = *v3;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66348, &qword_21DC3B980);
  sub_21DAC3778(&qword_27CE66350, MEMORY[0x277D83960]);
  sub_21DBFA0BC();
  sub_21DBFB32C();
  sub_21DAC3720();
  sub_21DBF5ECC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v9(a3, 1, 1, v8);
  return sub_21DAC35E4(v7, a3);
}

uint64_t TTREditTodaySectionsViewModel.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  sub_21DAC3574(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DBF8E0C();
    result = sub_21DAC3654(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v16[1] = v12;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66348, &qword_21DC3B980);
    sub_21DBFB32C();
    sub_21DAC3778(&qword_27CE66360, MEMORY[0x277D83970]);
    sub_21DAC3720();
    v15 = sub_21DBFA45C();

    result = (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  return result;
}

uint64_t sub_21DAC3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFB32C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t _s15RemindersUICore29TTREditTodaySectionsViewModelV04CellfG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_21DBFB31C())
  {
    v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_21DBFC64C() & 1) != 0)
    {
      v10 = *(v4 + 24);
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_21DBFC64C() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21DAC3574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAC35E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAC3654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DAC36BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DAC3720()
{
  result = qword_27CE66358;
  if (!qword_27CE66358)
  {
    v3 = sub_21DBFB32C();
    result = swift_getWitnessTable(MEMORY[0x277D45A30], v3, v0, v1);
    atomic_store(result, &qword_27CE66358);
  }

  return result;
}

uint64_t sub_21DAC3778(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66348, &qword_21DC3B980);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditTodaySectionsViewModel.CellViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBFB32C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (a1 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (a1 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

double destroy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1)
{
  v2 = sub_21DBFB32C();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t initializeWithCopy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  v10 = *(a3 + 24);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  v12 = *(a3 + 24);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v16 = *v14;
  v15 = v14[1];
  *v13 = v16;
  v13[1] = v15;

  return a1;
}

uint64_t sub_21DAC3C0C(uint64_t a1)
{
  result = sub_21DBFB32C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditTodaySectionsViewModel.OptimisticApply(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTREditTodaySectionsViewModel.OptimisticApply(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340, &qword_21DC3B978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338, &qword_21DC3B970) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_21DAC4530(uint64_t a1)
{
  sub_21DAC45BC(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAC45BC(uint64_t a1)
{
  if (!qword_27CE66388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66340, &qword_21DC3B978);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE66388);
    }
  }
}

uint64_t TTRReminderDetailEditingSession.__allocating_init(item:acquirerName:interactor:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);
  v17 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v17 = a2;
  v17[1] = a3;
  v18 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  *v18 = a4;
  v18[1] = a5;
  *(v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = a6;
  v19 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v19 = a7;
  v19[1] = a8;
  return v16;
}

uint64_t TTRReminderDetailEditingSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderDetailEditingSession.acquirerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

id TTRReminderDetailEditingSession.pendingMoveTargetList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(&v11, ObjectType, v1);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  if (v12 == 255)
  {
    sub_21D157864(v11, 255);
    sub_21D575DF4(v5, v6, v7, v8);
    return 0;
  }

  v9 = v11;
  sub_21D157864(v3, v4);
  sub_21D575DF4(v5, v6, v7, v8);
  if (v4)
  {
    sub_21D157864(v3, v4);
    return 0;
  }

  return v3;
}

void sub_21DAC48B0(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = v2;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = v2;
    v5(&v7, ObjectType, v3);
  }
}

void TTRReminderDetailEditingSession.pendingMoveTargetList.setter(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = a1;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = a1;
    v5(&v7, ObjectType, v3);
  }
}

void (*TTRReminderDetailEditingSession.pendingMoveTargetList.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  a1[1] = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  (*(v3 + 64))(&v12);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  if (v13 == 255)
  {
    sub_21D157864(v12, 255);
    sub_21D575DF4(v6, v7, v8, v9);
    goto LABEL_5;
  }

  v10 = v12;
  sub_21D157864(v4, v5);
  sub_21D575DF4(v6, v7, v8, v9);
  if (v5)
  {
    sub_21D157864(v4, v5);
LABEL_5:
    v4 = 0;
  }

  *a1 = v4;
  return sub_21DAC4AF0;
}

void sub_21DAC4AF0(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      v12 = *a1;
      v13 = 0;
      v5 = *(v4 + 104);
      v11 = v2;
      v5(&v12, v3, v4);

      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v2)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v12 = *a1;
    v13 = 0;
    v9 = *(v8 + 104);
    v10 = v2;
    v9(&v12, v7, v8);
  }
}

unint64_t TTRReminderDetailEditingSession.reminder.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  result = sub_21D306CD8();
  a1[3] = result;
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v5;
  return result;
}

uint64_t TTRReminderDetailEditingSession.reminderChangeItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t TTRReminderDetailEditingSession.attributeEditor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

double TTRReminderDetailEditingSession.sharedProperties.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

double sub_21DAC4D68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;
  sub_21DBF8E0C();

  return result;
}

double TTRReminderDetailEditingSession.sharedProperties.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

void (*TTRReminderDetailEditingSession.sharedProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  sub_21DBF8E0C();
  return sub_21D6547D8;
}

uint64_t TTRReminderDetailEditingSession.init(item:acquirerName:interactor:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);
  v17 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v17 = a2;
  v17[1] = a3;
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  *v18 = a4;
  v18[1] = a5;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = a6;
  v19 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v19 = a7;
  v19[1] = a8;
  return v8;
}

Swift::Void __swiftcall TTRReminderDetailEditingSession.setNeedsDisplay(_:)(RemindersUICore::TTRRemindersListEditingSessionDisplayTargets a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = *a1.rawValue;
  v2(&v3);
}

Swift::Void __swiftcall TTRReminderDetailEditingSession.finish(options:)(RemindersUICore::TTRRemindersListEditingSessionFinishingOption options)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  v2(&v3);
}

uint64_t TTRReminderDetailEditingSession.finishAndForceSave()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderDetailEditingSession.finishAndForceSaveAsync()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderDetailEditingSession.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRReminderDetailEditingSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21DAC5270@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21DAC52FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

unint64_t sub_21DAC5338@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  result = sub_21D306CD8();
  a1[3] = result;
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v5;
  return result;
}

uint64_t sub_21DAC53AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

void sub_21DAC53FC(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = a1;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = a1;
    v5(&v7, ObjectType, v3);
  }
}

void (*sub_21DAC5494(void *a1))(void *a1)
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
  v2[4] = TTRReminderDetailEditingSession.pendingMoveTargetList.modify(v2);
  return sub_21D4C30A8;
}

uint64_t sub_21DAC5504()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

double sub_21DAC5560@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  sub_21DBF8E0C();
  return result;
}

double sub_21DAC55B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

void (*sub_21DAC5608(uint64_t **a1))(void *a1)
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
  v2[4] = TTRReminderDetailEditingSession.sharedProperties.modify(v2);
  return sub_21D4C3D30;
}

uint64_t sub_21DAC5678(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_21DAC56C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  return v1(&v3);
}

uint64_t sub_21DAC5708(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t sub_21DAC575C(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t type metadata accessor for TTRReminderDetailEditingSession(uint64_t a1)
{
  result = qword_27CE663A8;
  if (!qword_27CE663A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DAC5808(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v3 <= 0x3F)
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

uint64_t sub_21DAC5928()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE663B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE663B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.parent.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_21DBFBA8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBFBA8C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a3, v9, v10);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t TTRTreeDiffResult.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch(255, *(a1 + 16), a3, a4);
  v4 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v4);
  return sub_21DBFACFC() & 1;
}

uint64_t TTRTreeDiffResult.containsInsertions.getter(uint64_t a1)
{
  TTRTreeDiffResult.insertedElements.getter(a1);
  v1 = sub_21DBFBE5C();
  swift_getWitnessTable(MEMORY[0x277D84060], v1);
  v2 = sub_21DBFA58C();

  return v2 & 1;
}

uint64_t sub_21DAC5C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21DBF5F9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  (*(v8 + 16))(&v21 - v10, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D44D80])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *(swift_getTupleTypeMetadata2() + 48);
    v14 = *(a2 - 8);
    (*(v14 + 32))(a3, &v11[v13], a2);
    return (*(v14 + 56))(a3, 0, 1, a2);
  }

  if (v12 == *MEMORY[0x277D44D78])
  {
    v16 = *(a2 - 8);
  }

  else if (v12 == *MEMORY[0x277D44D68])
  {
    (*(v8 + 96))(v11, v7);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v16 = *(a2 - 8);
    (*(v16 + 8))(&v11[*(TupleTypeMetadata3 + 64)], a2);
  }

  else
  {
    if (v12 != *MEMORY[0x277D44D70])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    (*(v8 + 96))(v11, v7);
    v18 = swift_getTupleTypeMetadata3();
    v19 = *(v18 + 48);
    v16 = *(a2 - 8);
    v20 = *(v16 + 8);
    v20(&v11[*(v18 + 64)], a2);
    v20(&v11[v19], a2);
  }

  return (*(v16 + 56))(a3, 1, 1, a2);
}

uint64_t sub_21DAC5FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v11 = sub_21DBFBE3C();
  sub_21DBF8E0C();

  swift_getWitnessTable(MEMORY[0x277D84058], v11);

  return sub_21DBFBE7C();
}

uint64_t sub_21DAC60A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = v6;
  v7 = sub_21DAC5FA8(a3, v5, a1, v6);

  return v7;
}

uint64_t sub_21DAC611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21DBF5F9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  (*(v8 + 16))(&v21 - v10, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D44D80])
  {
    (*(v8 + 96))(v11, v7);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = *(a2 - 8);
    v15 = *(TupleTypeMetadata2 + 48);
LABEL_3:
    (*(v14 + 8))(&v11[v15], a2);
    return (*(v14 + 56))(a3, 1, 1, a2);
  }

  if (v12 == *MEMORY[0x277D44D78])
  {
    v14 = *(a2 - 8);
    return (*(v14 + 56))(a3, 1, 1, a2);
  }

  if (v12 == *MEMORY[0x277D44D68])
  {
    (*(v8 + 96))(v11, v7);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v14 = *(a2 - 8);
    v15 = *(TupleTypeMetadata3 + 64);
    goto LABEL_3;
  }

  if (v12 == *MEMORY[0x277D44D70])
  {
    (*(v8 + 96))(v11, v7);
    v18 = swift_getTupleTypeMetadata3();
    v19 = *(v18 + 64);
    v20 = *(a2 - 8);
    (*(v20 + 32))(a3, &v11[*(v18 + 48)], a2);
    (*(v20 + 56))(a3, 0, 1, a2);
    return (*(v20 + 8))(&v11[v19], a2);
  }

  else
  {
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

uint64_t TTRTreeDiffResult.init(forInserting:at:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v52 = a3;
  v53 = a5;
  v8 = sub_21DBFBA8C();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v46 - v9;
  v10 = sub_21DBFA74C();
  v11 = sub_21DBF5B9C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v10);
  v13 = sub_21DAC68F8();
  v55 = v10;
  v56 = v11;
  v49 = v11;
  v57 = WitnessTable;
  v58 = v13;
  v14 = sub_21DBFBF5C();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = sub_21DBFA6DC();
  v54 = a2;
  if (v18 != sub_21DBF5AAC())
  {
    if (qword_27CE570D8 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE663B8);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v47 = a1;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "items and indexes are of different lengths", v22, 2u);
      v24 = v23;
      a1 = v47;
      MEMORY[0x223D46520](v24, -1, -1);
    }
  }

  v55 = a1;
  v25 = v49;
  sub_21DBFC6EC();

  MEMORY[0x28223BE20](v26);
  *(&v46 - 2) = a4;
  MEMORY[0x28223BE20](v27);
  *(&v46 - 4) = a4;
  *(&v46 - 3) = sub_21DAC6A34;
  *(&v46 - 2) = v28;
  v29 = sub_21DBF5F9C();
  v30 = swift_getWitnessTable(MEMORY[0x277D84120], v14);
  v32 = sub_21D110EC8(sub_21DAC6A3C, (&v46 - 6), v14, v29, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
  (*(v15 + 8))(v17, v14);
  v35 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(255, a4, v33, v34);
  sub_21DBFC5CC();
  swift_allocObject();
  v36 = sub_21DBFA60C();
  v38 = v37;
  v40 = v50;
  v39 = v51;
  v41 = v48;
  v42 = v52;
  (*(v50 + 16))(v48, v52, v51);
  TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v41, v32, a4, v38);
  sub_21D23C8B4(v36, v35);
  v44 = v43;
  (*(v40 + 8))(v42, v39);
  result = (*(*(v25 - 8) + 8))(v54, v25);
  *v53 = v44;
  return result;
}

unint64_t sub_21DAC68F8()
{
  result = qword_280D1B830;
  if (!qword_280D1B830)
  {
    v3 = sub_21DBF5B9C();
    result = swift_getWitnessTable(MEMORY[0x277CC9A48], v3, v0, v1);
    atomic_store(result, &qword_280D1B830);
  }

  return result;
}

uint64_t sub_21DAC6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  *a4 = a2;
  (*(*(a3 - 8) + 16))(&a4[v8], a1, a3);
  v9 = *MEMORY[0x277D44D80];
  v10 = sub_21DBF5F9C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a4, v9, v10);
}

uint64_t sub_21DAC6A3C(uint64_t a1)
{
  v3 = *(v1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t TTRTreeDiffResult.init(forDeletingItemsAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a2;
  v33 = a4;
  v30 = a1;
  v31 = sub_21DBFBA8C();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA88, &unk_21DC1D670);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_21DBF5B9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  v35 = a3;
  v14 = sub_21DBF5F9C();
  v15 = sub_21D0D0F1C(&qword_280D0C168, &qword_27CE5EA88, &unk_21DC1D670, MEMORY[0x277D84450]);
  v29 = sub_21D0E5014(sub_21DAC93F0, v34, v9, v14, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  sub_21DAC9474(v11);
  v19 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(255, a3, v17, v18);
  sub_21DBFC5CC();
  swift_allocObject();
  v20 = sub_21DBFA60C();
  v22 = v21;
  v23 = v31;
  v24 = v32;
  (*(v6 + 16))(v8, v32, v31);
  TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v8, v29, a3, v22);
  sub_21D23C8B4(v20, v19);
  v26 = v25;
  (*(v6 + 8))(v24, v23);
  result = (*(v13 + 8))(v30, v12);
  *v33 = v26;
  return result;
}

uint64_t TTRTreeDiffResult.appending(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, *(a2 + 16), a3, a4);
  result = sub_21DBFA66C();
  *a5 = result;
  return result;
}

void TTRTreeDiffResult.mapElement<A>(transform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = *v5;
  v16 = *(a3 + 16);
  v17 = a4;
  v18 = a1;
  v19 = a2;
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch(255, v16, a3, a4);
  v8 = sub_21DBFA74C();
  v11 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a4, v9, v10);
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v8);
  v14 = sub_21D0E5014(sub_21DAC94DC, &v15, v8, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  *a5 = v14;
}

uint64_t sub_21DAC6EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v29 = sub_21DBFBA8C();
  v12 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = a3;
  sub_21DBFBA8C();
  sub_21D10AA90(sub_21DACA098, v36, MEMORY[0x277D84A98], a5, v18, v17);
  v28 = v6;
  v41 = *(a1 + *(type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a4, v19, v20) + 28));
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  sub_21DBF5F9C();
  v21 = sub_21DBFA74C();
  v22 = sub_21DBF5F9C();
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v21);
  v25 = sub_21D0E5014(sub_21DACA110, v31, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

  (*(v12 + 32))(v14, v17, v29);
  return TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v14, v25, a5, v30);
}

uint64_t sub_21DAC7140@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v42 = a1;
  v43 = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v21, v18);
  v22 = (*(v16 + 88))(v20, a3);
  v23 = v22;
  if (v22 == *MEMORY[0x277D44D80])
  {
    (*(v16 + 96))(v20, a3);
    v24 = *v20;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v9 + 32))(v14, &v20[*(TupleTypeMetadata2 + 48)], v8);
    swift_getTupleTypeMetadata2();
    *a5 = v24;
    v42(v14);
    (*(v9 + 8))(v14, v8);
    v26 = a5;
LABEL_9:
    v36 = sub_21DBF5F9C();
    return (*(*(v36 - 8) + 104))(v26, v23, v36);
  }

  v40 = a2;
  v41 = a5;
  if (v22 == *MEMORY[0x277D44D78])
  {
    (*(v16 + 96))(v20, a3);
    v26 = v41;
    *v41 = *v20;
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D44D68])
  {
    (*(v16 + 96))(v20, a3);
    v27 = *v20;
    v28 = *(v20 + 1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(v9 + 32))(v14, &v20[*(TupleTypeMetadata3 + 64)], v8);
    swift_getTupleTypeMetadata3();
    v26 = v41;
    v30 = v42;
    *v41 = v27;
    v26[1] = v28;
    v30(v14);
    (*(v9 + 8))(v14, v8);
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D44D70])
  {
    (*(v16 + 96))(v20, a3);
    v39 = *v20;
    v31 = swift_getTupleTypeMetadata3();
    v32 = *(v31 + 64);
    v33 = *(v9 + 32);
    v33(v14, &v20[*(v31 + 48)], v8);
    v33(v11, &v20[v32], v8);
    swift_getTupleTypeMetadata3();
    v26 = v41;
    *v41 = v39;
    v34 = v42;
    v42(v14);
    v34(v11);
    v35 = *(v9 + 8);
    v35(v11, v8);
    v35(v14, v8);
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t TTRTreeDiffResult.shortSummary.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v143 = sub_21DBFBA8C();
  v4 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v102 - v5;
  v6 = sub_21DBF5F9C();
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v102 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v102 - v13;
  v103 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - v17;
  v148 = v3;
  v21 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, v3, v19, v20);
  v109 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v146 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v22;
  MEMORY[0x28223BE20](v23);
  v115 = &v102 - v24;
  v25 = *v1;
  v152 = *v1;
  if (TTRTreeDiffResult.isEmpty.getter(a1, v26, v27, v28))
  {
    return 0x61647075206F6E28;
  }

  sub_21DBF8E0C();
  v30 = v25;
  if (!sub_21DBFA6DC())
  {

    v112 = 0;
    v113 = 0;
    v127 = 0;
    v122 = 0;
    v80 = 0;
    v82 = 0;
    v81 = 0;
    v83 = 0;
    goto LABEL_49;
  }

  v112 = 0;
  v113 = 0;
  v126 = 0;
  v127 = 0;
  v121 = 0;
  v122 = 0;
  v110 = 0;
  v111 = 0;
  v118 = 0;
  v119 = 0;
  v128 = 0;
  v129 = 0;
  v123 = 0;
  v124 = 0;
  v116 = 0;
  v117 = 0;
  v31 = 0;
  v107 = (v109 + 32);
  v108 = (v109 + 16);
  *&v150 = v144 + 16;
  v140 = (v4 + 16);
  v141 = (v144 + 32);
  v139 = v148 - 8;
  v138 = *MEMORY[0x277D44D80];
  v136 = (v144 + 88);
  v137 = (v4 + 8);
  v130 = *MEMORY[0x277D44D78];
  v125 = *MEMORY[0x277D44D68];
  v120 = *MEMORY[0x277D44D70];
  v134 = v18;
  v135 = (v144 + 8);
  v132 = v14;
  v133 = (v144 + 96);
  v104 = (v109 + 8);
  v105 = v30;
  v131 = v11;
  v106 = v21;
  while (1)
  {
    v33 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v33)
    {
      (*(v109 + 16))(v115, v30 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v31, v21);
      v34 = __OFADD__(v31, 1);
      v35 = v31 + 1;
      if (v34)
      {
        break;
      }

      goto LABEL_8;
    }

    v78 = v31;
    v79 = sub_21DBFBF7C();
    if (v102 != 8)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    v152 = v79;
    (*v108)(v115, &v152, v21);
    swift_unknownObjectRelease();
    v35 = v31 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

LABEL_8:
    v114 = v35;
    v36 = v146;
    (*v107)(v146, v115, v21);
    v37 = *&v36[*(v21 + 28)];
    sub_21DBF8E0C();
    v38 = v145;
    if (sub_21DBFA6DC())
    {
      v39 = 0;
      do
      {
        v45 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v45)
        {
          v46 = *(v144 + 16);
          v46(v18, &v37[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v39], v38);
          v47 = (v39 + 1);
          if (__OFADD__(v39, 1))
          {
            goto LABEL_61;
          }
        }

        else
        {
          v77 = sub_21DBFBF7C();
          if (v103 != 8)
          {
            __break(1u);
            goto LABEL_73;
          }

          v152 = v77;
          v46 = *v150;
          (*v150)(v18, &v152, v38);
          swift_unknownObjectRelease();
          v47 = (v39 + 1);
          if (__OFADD__(v39, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        v149 = v47;
        v48 = v37;
        (*v141)(v14, v18, v38);
        v37 = v14;
        v49 = v142;
        v50 = v143;
        (*v140)(v142, v146, v143);
        v147 = *(v148 - 8);
        v51 = (*(v147 + 48))(v49, 1);
        (*v137)(v49, v50);
        if (v51 == 1)
        {
          v51 = v131;
          v46(v131, v37, v38);
          v52 = (*v136)(v51, v38);
          v14 = v37;
          if (v52 == v138)
          {
            (*v135)(v37, v38);
            (*v133)(v51, v38);
            v40 = v128 + 1;
            if (__OFADD__(v128, 1))
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v37 = v48;
            v53 = v148;
            v54 = v128 + 1;
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v56 = v53;
            v14 = v132;
            (*(v147 + 8))(v51 + *(TupleTypeMetadata2 + 48), v56);
            v127 = v54;
            v128 = v54;
            goto LABEL_12;
          }

          v37 = v48;
          if (v52 != v130)
          {
            v38 = v145;
            if (v52 == v125)
            {
              (*v135)(v14, v145);
              (*v133)(v51, v38);
              v40 = v117 + 1;
              if (__OFADD__(v117, 1))
              {
                goto LABEL_70;
              }

              v61 = v148;
              v62 = v117 + 1;
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
              v64 = v61;
              v14 = v132;
              (*(v147 + 8))(v51 + *(TupleTypeMetadata3 + 64), v64);
              v112 = v62;
              v117 = v62;
            }

            else
            {
              if (v52 != v120)
              {
                goto LABEL_74;
              }

              (*v135)(v14, v145);
              (*v133)(v51, v38);
              v40 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_69;
              }

              v71 = v148;
              v72 = v116 + 1;
              v73 = swift_getTupleTypeMetadata3();
              v74 = *(v73 + 48);
              v75 = *(v147 + 8);
              v75(&v131[*(v73 + 64)], v71);
              v76 = v71;
              v14 = v132;
              v75(&v131[v74], v76);
              v113 = v72;
              v116 = v72;
            }

            goto LABEL_12;
          }

          v38 = v145;
          (*v135)(v14, v145);
          v40 = v123 + 1;
          if (__OFADD__(v123, 1))
          {
            goto LABEL_65;
          }

          v122 = ++v123;
        }

        else
        {
          v46(v8, v37, v38);
          v57 = (*v136)(v8, v38);
          v14 = v37;
          if (v57 == v138)
          {
            (*v135)(v37, v38);
            (*v133)(v8, v38);
            v40 = v129;
            v38 = v129 + 1;
            if (__OFADD__(v129, 1))
            {
              goto LABEL_64;
            }

            v37 = v48;
            v58 = v148;
            v59 = swift_getTupleTypeMetadata2();
            v60 = v58;
            v14 = v132;
            (*(v147 + 8))(v8 + *(v59 + 48), v60);
            v126 = v38;
            v129 = v38;
LABEL_12:
            v38 = v145;
            goto LABEL_13;
          }

          v37 = v48;
          if (v57 != v130)
          {
            if (v57 == v125)
            {
              (*v135)(v14, v38);
              (*v133)(v8, v38);
              v40 = v119;
              v38 = v119 + 1;
              if (__OFADD__(v119, 1))
              {
                goto LABEL_68;
              }

              v41 = v148;
              v42 = swift_getTupleTypeMetadata3();
              v43 = v41;
              v14 = v132;
              (*(v147 + 8))(v8 + *(v42 + 64), v43);
              v110 = v38;
              v119 = v38;
            }

            else
            {
              if (v57 != v120)
              {
                goto LABEL_74;
              }

              (*v135)(v14, v38);
              (*v133)(v8, v38);
              v40 = v118 + 1;
              if (__OFADD__(v118, 1))
              {
                goto LABEL_67;
              }

              v65 = v118 + 1;
              v66 = v148;
              v67 = swift_getTupleTypeMetadata3();
              v68 = *(v67 + 48);
              v69 = *(v147 + 8);
              v69(v8 + *(v67 + 64), v66);
              v70 = v66;
              v14 = v132;
              v69(v8 + v68, v70);
              v111 = v65;
              v118 = v65;
            }

            goto LABEL_12;
          }

          (*v135)(v14, v38);
          v40 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
            goto LABEL_66;
          }

          v121 = ++v124;
        }

LABEL_13:
        v44 = sub_21DBFA6DC();
        ++v39;
        v18 = v134;
      }

      while (v149 != v44);
    }

    v21 = v106;
    (*v104)(v146, v106);
    v30 = v105;
    v32 = sub_21DBFA6DC();
    v31 = v114;
    if (v114 == v32)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_47:

  v81 = v110;
  v80 = v111;
  v82 = v126;
  v83 = v121;
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE663D0, &qword_21DC3BAF8);
  inited = swift_initStackObject();
  v150 = xmmword_21DC0AFB0;
  *(inited + 16) = xmmword_21DC0AFB0;
  *(inited + 32) = 68;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v83;
  *(inited + 56) = 77;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = v81;
  *(inited + 80) = 73;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v82;
  *(inited + 104) = 82;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = v80;
  v85 = swift_initStackObject();
  *(v85 + 32) = 68;
  *(v85 + 16) = v150;
  v86 = v122;
  *(v85 + 40) = 0xE100000000000000;
  *(v85 + 48) = v86;
  *(v85 + 56) = 77;
  *(v85 + 64) = 0xE100000000000000;
  *(v85 + 72) = v112;
  *(v85 + 80) = 73;
  v87 = v127;
  *(v85 + 88) = 0xE100000000000000;
  *(v85 + 96) = v87;
  *(v85 + 104) = 82;
  *(v85 + 112) = 0xE100000000000000;
  *(v85 + 120) = v113;
  v37 = sub_21DAC8670(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE663D8, &unk_21DC3BB00);
  swift_arrayDestroy();
  v88 = sub_21DAC8670(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v88 + 2))
  {
    v152 = 0x3A6E6F6974636573;
    v153 = 0xEA00000000007B20;
    v151 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v89 = sub_21DBFA07C();
    v91 = v90;

    MEMORY[0x223D42AA0](v89, v91);

    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    v14 = v152;
    v51 = v153;
    v39 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v39 + 16);
    v40 = *(v39 + 24);
    v38 = v8 + 1;
    if (v8 >= v40 >> 1)
    {
LABEL_71:
      v39 = sub_21D210A84((v40 > 1), v38, 1, v39);
    }

    *(v39 + 16) = v38;
    v92 = (v39 + 16 * v8);
    *(v92 + 4) = v14;
    *(v92 + 5) = v51;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v14 = 0x61647075206F6E28;
  if (*(v37 + 2))
  {
    v152 = 0x7B203A776F72;
    v153 = 0xE600000000000000;
    v151 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v93 = sub_21DBFA07C();
    v95 = v94;

    MEMORY[0x223D42AA0](v93, v95);

    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    v96 = v152;
    v97 = v153;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_21D210A84(0, *(v39 + 16) + 1, 1, v39);
    }

    v99 = *(v39 + 16);
    v98 = *(v39 + 24);
    if (v99 >= v98 >> 1)
    {
      v39 = sub_21D210A84((v98 > 1), v99 + 1, 1, v39);
    }

    *(v39 + 16) = v99 + 1;
    v100 = (v39 + 16 * v99);
    *(v100 + 4) = v96;
    *(v100 + 5) = v97;
LABEL_60:
    v152 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v101 = sub_21DBFA07C();

    return v101;
  }

  else
  {

    if (*(v39 + 16))
    {
      goto LABEL_60;
    }

LABEL_62:

    return v14;
  }
}

char *sub_21DAC8670(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = MEMORY[0x277D84F90];
  v4 = result + 48;
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83BF8];
LABEL_2:
  v7 = &v4[24 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      return v3;
    }

    if (v1 >= v2)
    {
      break;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v9 = *v7;
    v7 += 3;
    ++v1;
    if (v9 >= 1)
    {
      v16 = *(v7 - 5);
      v17 = *(v7 - 4);
      swift_bridgeObjectRetain_n();
      MEMORY[0x223D42AA0](8250, 0xE200000000000000);
      v10 = v6;
      v11 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v11);

      result = swift_isUniquelyReferenced_nonNull_native();
      v12 = v5;
      if ((result & 1) == 0)
      {
        result = sub_21D210A84(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v14 = *(v3 + 2);
      v13 = *(v3 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_21D210A84((v13 > 1), v14 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v14 + 1;
      v15 = &v3[16 * v14];
      *(v15 + 4) = v16;
      *(v15 + 5) = v17;
      v1 = v8;
      v5 = v12;
      v6 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21DAC87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = v13;
  v14[7] = a2;
  v14[8] = a3;
  sub_21DBF8E0C();

  result = sub_21DBFBE4C();
  *a6 = result;
  return result;
}

void sub_21DAC88D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a5;
  v51 = a4;
  v40 = a8;
  v52 = a7;
  v49 = sub_21DBFBA8C();
  v12 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v39 - v13;
  v15 = sub_21DBF5F9C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v21 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a6, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v44 = &v39 - v23;
  v46 = a2;
  v45 = v24;
  v25 = sub_21DBFA6DC();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v43 = a1;
  v26 = *(a1 + 16);
  v42 = v25;
  if (v26 < v25)
  {
    v41 = (v22 + 8);
    v48 = v52 - 8;
    while (2)
    {
      v27 = v44;
      v28 = v45;
      sub_21DBFA78C();
      v47 = *v41;
      sub_21DBF8E0C();
      v47(v27, v28);
      v29 = sub_21DBFA6DC();
      swift_beginAccess();
      swift_beginAccess();
      while (*(a3 + 16) < v29)
      {
        sub_21DBFA78C();
        v30 = *(a3 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_14;
        }

        *(a3 + 16) = v32;
        v51(v18);
        (*(v16 + 8))(v18, v15);
        v33 = *(v52 - 8);
        if ((*(v33 + 48))(v14, 1) != 1)
        {

          v37 = v40;
          v38 = v52;
          (*(v33 + 32))(v40, v14, v52);
          (*(v33 + 56))(v37, 0, 1, v38);
          return;
        }

        (*(v12 + 8))(v14, v49);
      }

      v34 = v43;
      v35 = *(v43 + 16);
      v31 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v31)
      {
LABEL_14:
        __break(1u);
        return;
      }

      *(v43 + 16) = v36;
      *(a3 + 16) = 0;
      if (*(v34 + 16) < v42)
      {
        continue;
      }

      break;
    }
  }

  (*(*(v52 - 8) + 56))(v40, 1, 1);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.debugDescription.getter(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + *(a1 + 28));
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = v3;
  v13 = *(a1 + 16);
  sub_21DBF5F9C();
  v4 = sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83970], v4);
  v5 = MEMORY[0x277D837D0];
  sub_21DBFA53C();

  v7 = v17;
  v6 = v18;
  v12[2] = v13;
  sub_21DBFBA8C();
  sub_21D10AA90(sub_21DAC951C, v12, MEMORY[0x277D84A98], v5, v8, &v17);
  if (v18)
  {
    v9 = v17;
  }

  else
  {
    v9 = 7104878;
  }

  if (v18)
  {
    v10 = v18;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v17 = 40;
  v18 = 0xE100000000000000;
  MEMORY[0x223D42AA0](v9, v10);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  MEMORY[0x223D42AA0](v7, v6);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v17;
}

double sub_21DAC8F0C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DBF5F9C();
  v4 = sub_21DBF5F8C();
  MEMORY[0x223D42AA0](v4);

  return result;
}

uint64_t static TTRTreeDiffResult.ParentAndPatch<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v32 - v14;
  v17 = *(v16 + 48);
  v38 = v10;
  v18 = *(v10 + 16);
  v34 = a1;
  v18(&v32 - v14, a1, v9, v13);
  v35 = a2;
  (v18)(&v15[v17], a2, v9);
  v39 = v7;
  v19 = *(v7 + 48);
  if (v19(v15, 1, a3) == 1)
  {
    if (v19(&v15[v17], 1, a3) == 1)
    {
      (*(v38 + 8))(v15, v9);
      v22 = v40;
LABEL_9:
      type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a3, v20, v21);
      v30 = sub_21DBF5F9C();
      v41 = v22;
      swift_getWitnessTable(MEMORY[0x277D44D88], v30, &v41);
      v24 = sub_21DBFA75C();
      return v24 & 1;
    }

    goto LABEL_6;
  }

  v23 = v37;
  (v18)(v37, v15, v9);
  if (v19(&v15[v17], 1, a3) == 1)
  {
    (*(v39 + 8))(v23, a3);
LABEL_6:
    (*(v36 + 8))(v15, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v25 = v39;
  v26 = &v15[v17];
  v27 = v33;
  (*(v39 + 32))(v33, v26, a3);
  v22 = v40;
  v28 = sub_21DBFA10C();
  v29 = *(v25 + 8);
  v29(v27, a3);
  v29(v23, a3);
  (*(v38 + 8))(v15, v9);
  if (v28)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
  return v24 & 1;
}

uint64_t static TTRTreeDiffResult<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch(0, a3, a3, a4);
  v7 = a4;
  swift_getWitnessTable(protocol conformance descriptor for <A> TTRTreeDiffResult<A>.ParentAndPatch, v5, &v7);
  return sub_21DBFA75C() & 1;
}

uint64_t sub_21DAC93F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v4 = *MEMORY[0x277D44D78];
  v5 = sub_21DBF5F9C();
  return (*(*(v5 - 8) + 104))(a2, v4, v5);
}

uint64_t sub_21DAC9474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA88, &unk_21DC1D670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DAC951C@<X0>(void *a2@<X8>)
{
  result = sub_21DBFC5EC();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_21DAC9570(uint64_t a1)
{
  result = sub_21DBFBA8C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21DAC960C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21DAC977C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return result;
}

void *sub_21DAC9854(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();
  return a1;
}

void *sub_21DAC997C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();

  return a1;
}

void *sub_21DAC9B30(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_21DAC9CDC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_21DAC9E4C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_21DACA098@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  (*(v1 + 32))();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21DACA110@<X0>(void *a1@<X8>)
{
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v7 = sub_21DBF5F9C();
  return sub_21DAC7140(v6, v5, v7, v4, a1);
}

Swift::Void __swiftcall TTRITipKitSignal.donate(signalContext:)(Swift::String_optional signalContext)
{
  object = signalContext.value._object;
  v3 = *v1;
  v4 = *MEMORY[0x277D44908];
  sub_21DBFA16C();
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](46, 0xE100000000000000);

  if (v3 > 3)
  {
    v11 = 0xEF73676174687361;
    v12 = 0x482E646574696465;
    if (v3 != 6)
    {
      v12 = 0x522E646574696465;
      v11 = 0xEF7265646E696D65;
    }

    v13 = 0x800000021DC43B90;
    v14 = 0xD00000000000001ELL;
    if (v3 != 4)
    {
      v14 = 0xD000000000000016;
      v13 = 0x800000021DC43BB0;
    }

    if (v3 <= 5)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x800000021DC43B50;
    if (v3 != 2)
    {
      v5 = 0xD00000000000001ALL;
      v6 = 0x800000021DC43B70;
    }

    v7 = 0xD000000000000014;
    v8 = 0x800000021DC43B10;
    if (v3)
    {
      v7 = 0xD000000000000013;
      v8 = 0x800000021DC43B30;
    }

    if (v3 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v9, v10);

  v15 = v4;
  v16 = sub_21DBFA12C();

  if (object)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CF1938]) initWithIdentifier:v16 bundleID:v15 context:v17];

  v19 = [objc_opt_self() discoverabilitySignal];
  v20 = [v19 source];
  [v20 sendEvent_];
}

uint64_t TTRITipKitSignal.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x482E646574696465;
    if (v1 != 6)
    {
      v5 = 0x522E646574696465;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 2)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000014;
    if (*v0)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

RemindersUICore::TTRITipKitSignal_optional __swiftcall TTRITipKitSignal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_21DACA604(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v9 = 0xEF73676174687361;
    v10 = 0x482E646574696465;
    if (v2 != 6)
    {
      v10 = 0x522E646574696465;
      v9 = 0xEF7265646E696D65;
    }

    v11 = 0x800000021DC43B90;
    v12 = 0xD00000000000001ELL;
    if (v2 != 4)
    {
      v12 = 0xD000000000000016;
      v11 = 0x800000021DC43BB0;
    }

    if (*v1 <= 5u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (*v1 <= 5u)
    {
      v9 = v11;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000021DC43B50;
    if (v2 != 2)
    {
      v3 = 0xD00000000000001ALL;
      v4 = 0x800000021DC43B70;
    }

    v5 = 0xD000000000000014;
    v6 = 0x800000021DC43B10;
    if (*v1)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000021DC43B30;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

unint64_t sub_21DACA968()
{
  result = qword_27CE663E0;
  if (!qword_27CE663E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITipKitSignal, &type metadata for TTRITipKitSignal, v0, v1);
    atomic_store(result, &qword_27CE663E0);
  }

  return result;
}

Swift::Void __swiftcall TTRIExpandingTextView.forceContentOffset(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIExpandingTextView();
  objc_msgSendSuper2(&v4, sel_setContentOffset_, x, y);
}

uint64_t sub_21DACAB4C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins;
  swift_beginAccess();
  return *v1;
}

void sub_21DACAB98(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

LABEL_7:
    [v2 invalidateIntrinsicContentSize];
    return;
  }

  if (v7 != a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
    goto LABEL_7;
  }
}

void (*sub_21DACAC30(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21DACACD0;
}

void sub_21DACACD0(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[6] + (*a1)[5];
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = v3[8];
  *v3 = v2;
  v3[8] = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] invalidateIntrinsicContentSize];
LABEL_9:

  free(v1);
}

id sub_21DACAD50()
{
  result = [v0 font];
  v2 = result;
  if (result)
  {
    [result ascender];
    [v2 descender];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
    v5 = v4;
    UICeilToScale();

    return v5;
  }

  return result;
}

void sub_21DACAE40()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  if ((v2[8] & 1) == 0 && (v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] & 1) == 0)
  {
    if (qword_27CE570E0 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE663E8);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "maxLineHeightFactor requires isForUseInNUIContainerView == true", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  [v1 setScrollEnabled_];
  sub_21DACB010();
  [v1 setShowsVerticalScrollIndicator_];
  [v1 setShowsHorizontalScrollIndicator_];
  [v1 setTextContainerInset_];
  v7 = [v1 textContainer];
  [v7 setLineFragmentPadding_];
}

id sub_21DACB010()
{
  v1 = v0;
  result = [v0 isScrollEnabled];
  if (result && v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] == 1)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver;
    if (!*&v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver])
    {
      v4 = [objc_opt_self() defaultCenter];
      v5 = *MEMORY[0x277D741D8];
      v6 = [v1 textStorage];
      v29[3] = sub_21DACC354();
      v29[0] = v6;
      v7 = [objc_opt_self() mainQueue];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21D0DB414(v29, aBlock);
      v9 = v26;
      if (v26)
      {
        v10 = __swift_project_boxed_opaque_existential_1(aBlock, v26);
        v24[1] = v24;
        v11 = v7;
        v12 = v5;
        v13 = *(v9 - 1);
        v14 = MEMORY[0x28223BE20](v10);
        v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v16, v14);

        v17 = sub_21DBFC62C();
        (*(v13 + 8))(v16, v9);
        v5 = v12;
        v7 = v11;
        __swift_destroy_boxed_opaque_existential_0(aBlock);
      }

      else
      {

        v17 = 0;
      }

      v27 = sub_21DACC3A0;
      v28 = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0EE46C;
      v26 = &block_descriptor_146;
      v18 = _Block_copy(aBlock);

      v19 = [v4 addObserverForName:v5 object:v17 queue:v7 usingBlock:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;
      sub_21DBF902C();
      swift_allocObject();
      v23 = sub_21DBF903C();

      swift_unknownObjectRelease();
      sub_21D1A8418(v29);
      *&v1[v3] = v23;
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  }

  return result;
}

id TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)(char a1, uint64_t a2, char a3, void *a4)
{
  v8 = &v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v8 = 0;
  v8[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = a1;
  swift_beginAccess();
  *v8 = a2;
  v8[8] = a3 & 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for TTRIExpandingTextView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_textContainer_, a4, 0.0, 0.0, 0.0, 0.0);
  sub_21DACAE40();

  return v9;
}

uint64_t sub_21DACB4E0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE663E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE663E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRIExpandingTextView.__allocating_init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)(char a1, uint64_t a2, char a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v10 = 0;
  v10[8] = 1;
  *&v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = a1;
  swift_beginAccess();
  *v10 = a2;
  v10[8] = a3 & 1;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_textContainer_, a4, 0.0, 0.0, 0.0, 0.0);
  sub_21DACAE40();

  return v11;
}

id TTRIExpandingTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIExpandingTextView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = 0;
  swift_beginAccess();
  *v3 = 0;
  v3[8] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIExpandingTextView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21DACAE40();
  }

  return v5;
}

void sub_21DACBA94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

id TTRIExpandingTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id TTRIExpandingTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRIExpandingTextView.contentSize.setter(double a1, double a2)
{
  [v2 contentSize];
  v6 = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for TTRIExpandingTextView();
  objc_msgSendSuper2(&v11, sel_setContentSize_, a1, a2);
  if ((*(v2 + OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView) & 1) == 0)
  {
    v7 = [v2 font];
    if (v7)
    {
      v8 = v7;
      [v7 lineHeight];
      v10 = v9;

      if (v10 < vabdd_f64(v6, a2))
      {
        [v2 invalidateIntrinsicContentSize];
      }
    }
  }
}

id sub_21DACBD5C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_21DACBDA8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v4, *a1);
}

id TTRIExpandingTextView.contentOffset.setter(double a1, double a2)
{
  result = [v2 isScrollEnabled];
  if (result)
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for TTRIExpandingTextView();
    return objc_msgSendSuper2(&v6, sel_setContentOffset_, a1, a2);
  }

  return result;
}

CGSize __swiftcall TTRIExpandingTextView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = type metadata accessor for TTRIExpandingTextView();
  v24.receiver = v1;
  v24.super_class = v4;
  objc_msgSendSuper2(&v24, sel_sizeThatFits_, width, height);
  if (v5 > width)
  {
    v23.receiver = v1;
    v23.super_class = v4;
    objc_msgSendSuper2(&v23, sel_sizeThatFits_, width + -5.0, height);
  }

  v7 = v5;
  v8 = v6;
  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  if ((v9[8] & 1) == 0)
  {
    v10 = *v9;
    v11 = [v1 font];
    if (v11)
    {
      v12 = v11;
      [v11 lineHeight];
      v14 = v13;
      [v12 leading];
      v16 = v14 + v15;
      v17 = [v1 isScrollEnabled];

      v18 = 0.6;
      if (!v17)
      {
        v18 = 0.0;
      }

      v19 = v16 * (v18 + v10);
      if (v19 >= v8)
      {
        v19 = v8;
      }

      v8 = v16;
      if (fabs(v19) >= 0.0000000149011612)
      {
        v8 = v19;
      }
    }
  }

  v20 = ceil(v8);
  v21 = v7;
  result.height = v20;
  result.width = v21;
  return result;
}

Swift::Bool __swiftcall TTRIExpandingTextView.accessibilityActivate()()
{
  v1 = [v0 canBecomeFirstResponder];
  if (v1)
  {
    v2 = v1;
    [v0 becomeFirstResponder];
    LOBYTE(v1) = v2;
  }

  return v1;
}

unint64_t TTRIExpandingTextView.accessibilityTraits.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TTRIExpandingTextView();
  v1 = objc_msgSendSuper2(&v5, sel_accessibilityTraits);
  v2 = [objc_opt_self() textArea];
  v3 = -1;
  if ((v2 & v1) != 0)
  {
    v3 = ~v2;
  }

  return v3 & v1;
}

unint64_t sub_21DACC354()
{
  result = qword_280D0C318;
  if (!qword_280D0C318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C318);
  }

  return result;
}

void TTRTemplateSharingViewModel.init(forPublicLinkManagementWithConfiguration:contentAttributes:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 shouldIncludeHashtags];
  v7 = [a1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
  v8 = [a1 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

  *a3 = 1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 18) = v8;
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init(forPublicLinkCreationWithContentAttributes:)(RemindersUICore::TTRTemplateSharingTemplateContentAttributes forPublicLinkCreationWithContentAttributes)
{
  v2 = *forPublicLinkCreationWithContentAttributes.rawValue;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 256;
  *(v1 + 18) = 0;
  result.purpose = forPublicLinkCreationWithContentAttributes.rawValue;
  *result.gap1 = *(&forPublicLinkCreationWithContentAttributes.rawValue + 1);
  *&result.gap1[4] = *(&forPublicLinkCreationWithContentAttributes.rawValue + 5);
  result.gap1[6] = HIBYTE(forPublicLinkCreationWithContentAttributes.rawValue);
  return result;
}

uint64_t TTRTemplateSharingViewModel.Purpose.viewTitle.getter()
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

uint64_t TTRTemplateSharingViewModel.Purpose.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init(purpose:contentAttributes:includesTags:includesDateAndTime:includesLocations:)(RemindersUICore::TTRTemplateSharingViewModel::Purpose purpose, RemindersUICore::TTRTemplateSharingTemplateContentAttributes contentAttributes, Swift::Bool includesTags, Swift::Bool includesDateAndTime, Swift::Bool includesLocations)
{
  v6 = *contentAttributes.rawValue;
  *v5 = *purpose;
  *(v5 + 8) = v6;
  *(v5 + 16) = includesTags;
  *(v5 + 17) = includesDateAndTime;
  *(v5 + 18) = includesLocations;
  result.contentAttributes = contentAttributes;
  result.includesTags = includesTags;
  result.purpose = purpose;
  return result;
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 15) = 0;
  return result;
}

id TTRTemplateSharingViewModel.makePublicLinkConfiguration()()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = objc_allocWithZone(MEMORY[0x277D448B0]);

  return [v4 initWithShouldIncludeHashtags:v1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v3];
}

uint64_t TTRTemplateSharingViewModel.localizedMessageForIncludePropertiesAlert.getter()
{
  if (v0[17] == 1)
  {
    if (v0[16])
    {
      if (v0[18])
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v0[18])
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_23:
    swift_once();
    return sub_21DBF516C();
  }

  if (v0[16])
  {
    if (v0[18])
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_23;
  }

  if (v0[18])
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t TTRTemplateSharingAction.description.getter()
{
  v1 = 0x4C20657461657243;
  v2 = 0x6E694C20646E6553;
  if (*v0 != 2)
  {
    v2 = 0x61685320706F7453;
  }

  if (*v0)
  {
    v1 = 0x4C20657461647055;
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

uint64_t TTRTemplateSharingAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DACCD4C()
{
  v1 = 0x4C20657461657243;
  v2 = 0x6E694C20646E6553;
  if (*v0 != 2)
  {
    v2 = 0x61685320706F7453;
  }

  if (*v0)
  {
    v1 = 0x4C20657461647055;
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

uint64_t _s15RemindersUICore27TTRTemplateSharingViewModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (v3 && ((a1[16] ^ a2[16]) & 1) == 0 && ((a1[17] ^ a2[17]) & 1) == 0)
  {
    v2 = a2[18] ^ a1[18] ^ 1;
  }

  return v2 & 1;
}

unint64_t sub_21DACCE34()
{
  result = qword_27CE66418;
  if (!qword_27CE66418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingViewModel.Purpose, &type metadata for TTRTemplateSharingViewModel.Purpose, v0, v1);
    atomic_store(result, &qword_27CE66418);
  }

  return result;
}

unint64_t sub_21DACCE8C()
{
  result = qword_27CE66420;
  if (!qword_27CE66420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingAction, &type metadata for TTRTemplateSharingAction, v0, v1);
    atomic_store(result, &qword_27CE66420);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRTemplateSharingViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTemplateSharingViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 TTRAssigneeCandidateData.init(id:contact:contactInfo:isMe:avatarImage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v6 = *(a3 + 48);
  *(a6 + 48) = *(a3 + 32);
  *(a6 + 64) = v6;
  *(a6 + 80) = *(a3 + 64);
  result = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = result;
  *(a6 + 96) = a4;
  *(a6 + 104) = a5;
  return result;
}

uint64_t TTRAssigneeCandidateData.displayDescription.getter()
{
  if (*(v0 + 96) == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  if (*(v0 + 40))
  {
    v2 = *(v0 + 32);
LABEL_9:
    sub_21DBF8E0C();
    return v2;
  }

  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    sub_21DBF8E0C();
    goto LABEL_9;
  }

  if (*(v0 + 72))
  {
    v3 = *(v0 + 64);
LABEL_14:
    sub_21DBF8E0C();
    return v3;
  }

  if (*(v0 + 88))
  {
    v3 = *(v0 + 80);
    goto LABEL_14;
  }

  v4 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();

  swift_bridgeObjectRelease_n();
  return v5;
}

void *TTRAssigneeCandidate.id.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t sub_21DACD200(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    goto LABEL_6;
  }

  if (!*a1 || (v2 = *(a2 + 96), v3 = *(a1 + 96), v4 = *(a1 + 56), *&v15[32] = *(a1 + 40), *&v15[48] = v4, *&v15[64] = *(a1 + 72), *&v15[80] = *(a1 + 88), v5 = *(a1 + 24), *v15 = *(a1 + 8), *&v15[16] = v5, (v2 & 1) != 0))
  {
    v6 = 0;
    return v6 & 1;
  }

  if (v3)
  {
LABEL_6:
    v6 = 1;
    return v6 & 1;
  }

  v8 = *(a2 + 64);
  v14[9] = *(a2 + 48);
  v14[10] = v8;
  v14[11] = *(a2 + 80);
  v9 = *(a2 + 32);
  v14[7] = *(a2 + 16);
  v14[8] = v9;
  sub_21D1D9A84(a2, v14);
  sub_21D1D9A84(a1, v14);
  v12 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  v14[2] = *&v15[40];
  v14[3] = *&v15[56];
  v14[4] = *&v15[72];
  v14[0] = *&v15[8];
  v14[1] = *&v15[24];
  v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  if (v12._countAndFlagsBits != v13._countAndFlagsBits || (v6 = 0, v12._object != v13._object))
  {
    v6 = sub_21DBFC64C();
  }

  sub_21D1D9AE0(a1);
  sub_21D1D9AE0(a2);

  return v6 & 1;
}

uint64_t static TTRAssignment.assignmentString(isAssignedToMe:isAssignedByMe:assigneeDescription:originatorDescription:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_14;
    }

    if (!a6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

LABEL_14:
      swift_once();
      return sub_21DBF516C();
    }

    v12 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v12 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = a5;
    *(v14 + 40) = a6;
    v15 = sub_21DBFA17C();

    return v15;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D00;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21D17A884();
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;
    sub_21DBF8E0C();
    v9 = sub_21DBFA17C();

    return v9;
  }
}

uint64_t sub_21DACD710(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return v2 & 1;
  }

  if (!*a2)
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  v5 = *(a2 + 56);
  *&v16[32] = *(a2 + 40);
  *&v16[48] = v5;
  *&v16[64] = *(a2 + 72);
  *&v16[80] = *(a2 + 88);
  v6 = *(a2 + 24);
  *v16 = *(a2 + 8);
  *&v16[16] = v6;
  if (v3)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v9 = *(a1 + 4);
    v15[9] = *(a1 + 3);
    v15[10] = v9;
    v15[11] = *(a1 + 5);
    v10 = *(a1 + 2);
    v15[7] = *(a1 + 1);
    v15[8] = v10;
    sub_21D1D9A84(a1, v15);
    sub_21D1D9A84(a2, v15);
    v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    v15[2] = *&v16[40];
    v15[3] = *&v16[56];
    v15[4] = *&v16[72];
    v15[0] = *&v16[8];
    v15[1] = *&v16[24];
    if (v13 == TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0))
    {

      sub_21D1D9AE0(a2);
      sub_21D1D9AE0(a1);

      v7 = 1;
    }

    else
    {
      v14 = sub_21DBFC64C();

      sub_21D1D9AE0(a2);
      sub_21D1D9AE0(a1);

      v7 = v14 ^ 1;
    }
  }

  return v7 & 1;
}

uint64_t sub_21DACD8B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return v2 & 1;
  }

  if (!*a1)
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v3 = *(a2 + 96);
  v4 = *(a1 + 96);
  v5 = *(a1 + 56);
  *&v16[32] = *(a1 + 40);
  *&v16[48] = v5;
  *&v16[64] = *(a1 + 72);
  *&v16[80] = *(a1 + 88);
  v6 = *(a1 + 24);
  *v16 = *(a1 + 8);
  *&v16[16] = v6;
  if (v3)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v9 = *(a2 + 4);
    v15[9] = *(a2 + 3);
    v15[10] = v9;
    v15[11] = *(a2 + 5);
    v10 = *(a2 + 2);
    v15[7] = *(a2 + 1);
    v15[8] = v10;
    sub_21D1D9A84(a2, v15);
    sub_21D1D9A84(a1, v15);
    v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    v15[2] = *&v16[40];
    v15[3] = *&v16[56];
    v15[4] = *&v16[72];
    v15[0] = *&v16[8];
    v15[1] = *&v16[24];
    if (v13 == TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0))
    {

      sub_21D1D9AE0(a1);
      sub_21D1D9AE0(a2);

      v7 = 1;
    }

    else
    {
      v14 = sub_21DBFC64C();

      sub_21D1D9AE0(a1);
      sub_21D1D9AE0(a2);

      v7 = v14 ^ 1;
    }
  }

  return v7 & 1;
}