void sub_21D54CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v36 - v5;
  v6 = sub_21DBF76AC();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0, &qword_21DC19590);
  MEMORY[0x28223BE20](v39);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8, &unk_21DC15CC0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_21DBF9D8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v38 = v22;
      v23 = *(v21 + *(*v21 + 112));
      *v19 = v23;
      (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      (*(v17 + 8))(v19, v16);
      if (v23)
      {
        v37 = v9;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0, &unk_21DC1A7D0);
        v26 = *(v25 + 36);
        sub_21D0D3954(a1 + v26, v15, &qword_27CE5C1B8, &unk_21DC15CC0);
        sub_21D53FFA4(v15);
        sub_21D0D3954(a1 + v26, v12, &qword_27CE5C1B8, &unk_21DC15CC0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v12;
          sub_21DAB7224(*v12);
        }

        else
        {
          v28 = v37;
          sub_21D0D523C(v12, v37, &qword_27CE5C1C0, &qword_21DC19590);
          v29 = v41;
          sub_21D0D3954(a1 + *(v25 + 40), v41, &qword_27CE5C1C8, &unk_21DC15CD0);
          v31 = v42;
          v30 = v43;
          if ((*(v42 + 48))(v29, 1, v43) == 1)
          {
            sub_21D0CF7E0(v29, &qword_27CE5C1C8, &unk_21DC15CD0);
            v32 = objc_opt_self();
            v33 = sub_21DBFA12C();
            v34 = [v32 internalErrorWithDebugDescription_];

            sub_21DAB7224(v34);
          }

          else
          {
            v35 = v40;
            (*(v31 + 32))(v40, v29, v30);
            TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v21, v28, *(v28 + *(v39 + 48)), v35);

            (*(v31 + 8))(v35, v30);
          }

          sub_21D0CF7E0(v28, &qword_27CE5C1C0, &qword_21DC19590);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D54D018(void *a1, uint64_t a2, uint64_t a3)
{
  v122 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v113 - v4;
  v120 = sub_21DBF76AC();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  MEMORY[0x28223BE20](v117);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = &v113 - v10;
  MEMORY[0x28223BE20](v11);
  v121 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v113 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v113 = v8;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    v30 = *(v20 + 8);
    v29 = v20 + 8;
    v30(v22, v19);
    if ((v27 & 1) == 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    v114 = v26;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398, &qword_21DC15EB8);
    v32 = *(v31 + 36);
    v33 = v122;
    sub_21D0D3954(v122 + v32, v18, &qword_27CE5C298, &qword_21DC196B0);
    sub_21D1361E0(v18);
    sub_21D0D3954(v33 + v32, v15, &qword_27CE5C298, &qword_21DC196B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v15;
      sub_21D6578EC(*v15);

      return;
    }

    v115 = v24;
    v35 = v15;
    v36 = v121;
    sub_21D0D523C(v35, v121, &qword_27CE5C2A0, &unk_21DC15DC0);
    sub_21D0D3954(v33 + *(v31 + 40), v5, &qword_27CE5C1C8, &unk_21DC15CD0);
    v37 = v119;
    v38 = v120;
    if ((*(v119 + 48))(v5, 1, v120) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE5C1C8, &unk_21DC15CD0);
      v39 = objc_opt_self();
      v40 = sub_21DBFA12C();
      v41 = [v39 internalErrorWithDebugDescription_];

      sub_21D6578EC(v41);

      v42 = v36;
LABEL_63:
      sub_21D0CF7E0(v42, &qword_27CE5C2A0, &unk_21DC15DC0);
      return;
    }

    v43 = v116;
    (*(v37 + 32))(v116, v5, v38);
    v44 = v117;
    v45 = *(v36 + *(v117 + 48));
    v46 = sub_21DBF773C();
    v47 = *(v46 - 8);
    v26 = v118;
    (*(v47 + 16))(v118, v36, v46);
    *(v26 + *(v44 + 48)) = v45;
    v48 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
    v49 = v114;
    swift_beginAccess();
    v50 = *(v49 + v48);
    if (!v50)
    {
      v52 = v45;

      goto LABEL_13;
    }

    v51 = v45;
    if (v115 != v50)
    {

LABEL_13:

LABEL_62:
      sub_21D0CF7E0(v26, &qword_27CE5C2A0, &unk_21DC15DC0);
      (*(v37 + 8))(v43, v38);
      v42 = v36;
      goto LABEL_63;
    }

    v53 = v51;
    v54 = sub_21DBF6E3C();
    sub_21D4F5F28(v54);
    v56 = v55;

    if (v45)
    {
      v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v58 = v114;
      swift_beginAccess();
      if (*(v58 + v57))
      {
        v59 = v53;

        sub_21D4F9F64(v59, v56);
      }

      else
      {
        v122 = *(v58 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store);
        v60 = objc_opt_self();
        v61 = v53;
        v62 = [v60 fetchOptionsIncludingConcealed];
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v63 = sub_21DBFB12C();
        v64 = swift_allocObject();
        *(v64 + 16) = v62;
        v65 = sub_21D87E81C(v122, sub_21D554248, v64, v61, v63);
        *(v58 + v57) = v65;

        swift_beginAccess();
        v65[3] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v26 = v118;
    }

    else
    {
    }

    v66 = v113;
    sub_21D0D3954(v26, v113, &qword_27CE5C2A0, &unk_21DC15DC0);

    v29 = sub_21DBF716C();
    (*(v47 + 8))(v66, v46);
    if (v29 >> 62)
    {
      goto LABEL_57;
    }

    v67 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v67)
    {
LABEL_60:

LABEL_61:
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v108 = v114;
      *&v125 = *v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB08, &unk_21DC1A8A0);
      v109 = sub_21DBFA1AC();
      v111 = v110;

      *&v125 = v109;
      *(&v125 + 1) = v111;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v112 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v112);
      *(&v113 - 4) = v108;
      *(&v113 - 3) = v26;
      v43 = v116;
      *(&v113 - 2) = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      v36 = v121;
      v38 = v120;
      v37 = v119;
      goto LABEL_62;
    }

LABEL_22:
    *&v125 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v67 & ~(v67 >> 63), 0);
    if (v67 < 0)
    {
      __break(1u);
    }

    else
    {
      v68 = 0;
      v69 = v125;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x223D44740](v68, v29);
        }

        else
        {
          v70 = *(v29 + 8 * v68 + 32);
        }

        v71 = v70;
        v72 = [v70 objectID];
        *&v125 = v69;
        v74 = *(v69 + 16);
        v73 = *(v69 + 24);
        if (v74 >= v73 >> 1)
        {
          v76 = v72;
          sub_21D18E6B8((v73 > 1), v74 + 1, 1);
          v72 = v76;
          v69 = v125;
        }

        ++v68;
        *(v69 + 16) = v74 + 1;
        v75 = v69 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
      }

      while (v67 != v68);

      while (1)
      {
        v26 = v118;
        if (*(v69 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v77 = sub_21DBFC40C();
        }

        else
        {
          v77 = MEMORY[0x277D84F98];
        }

        *&v125 = v77;
        v78 = sub_21DBF8E0C();
        sub_21D1931C0(v78, 1, &v125);

        v79 = v125;
        v80 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v81 = v114;
        swift_beginAccess();
        v29 = *(v81 + v80);
        if (!v29)
        {

          goto LABEL_61;
        }

        sub_21D188810(v79);
        v26 = v82;

        if ((v26 & 0xC000000000000001) != 0)
        {
          if (v26 < 0)
          {
            v83 = v26;
          }

          else
          {
            v83 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v84 = sub_21D883714(v83);
          v122 = 0;

LABEL_54:
          *&v125 = *(v29 + 80);
          MEMORY[0x28223BE20](v85);
          *(&v113 - 2) = v29;
          *(&v113 - 1) = v84;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v26 = v118;
          goto LABEL_61;
        }

        v122 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
        v86 = sub_21DBFC3DC();
        v84 = v86;
        v87 = 0;
        v88 = 1 << *(v26 + 32);
        v89 = -1;
        if (v88 < 64)
        {
          v89 = ~(-1 << v88);
        }

        v90 = v89 & *(v26 + 64);
        v91 = (v88 + 63) >> 6;
        v117 = v86 + 64;
        if (v90)
        {
          break;
        }

LABEL_45:
        v93 = v87;
        while (1)
        {
          v87 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            break;
          }

          if (v87 >= v91)
          {

            goto LABEL_54;
          }

          v94 = *(v26 + 64 + 8 * v87);
          ++v93;
          if (v94)
          {
            v92 = __clz(__rbit64(v94));
            v90 = (v94 - 1) & v94;
            goto LABEL_50;
          }
        }

LABEL_56:
        __break(1u);
LABEL_57:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_60;
        }

        v67 = sub_21DBFBD7C();
        if (v67)
        {
          goto LABEL_22;
        }

        v69 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v92 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
LABEL_50:
        v95 = v92 | (v87 << 6);
        v96 = *(*(v26 + 56) + 8 * v95);
        v97 = *(*(v26 + 48) + 8 * v95);
        v98 = v96;

        v124[3] = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v124[4] = &protocol witness table for REMReminder;
        v124[0] = v98;
        v123 = 3;
        v99 = v98;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v124, &v123, &v125);
        v100 = v126;
        v101 = v127;
        v102 = v128;
        v103 = v125;
        *(v117 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
        *(*(v84 + 6) + 8 * v95) = v97;
        v104 = *(v84 + 7) + 48 * v95;
        *v104 = v99;
        *(v104 + 8) = v103;
        *(v104 + 24) = v100;
        *(v104 + 32) = v101;
        *(v104 + 40) = v102;
        v105 = *(v84 + 2);
        v106 = __OFADD__(v105, 1);
        v107 = v105 + 1;
        if (v106)
        {
          break;
        }

        *(v84 + 2) = v107;
        if (!v90)
        {
          goto LABEL_45;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54DF20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v90 - v4;
  v100 = sub_21DBF76AC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0, &unk_21DC19260);
  MEMORY[0x28223BE20](v96);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v90 - v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8, &unk_21DC15CF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v90 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v93 = v8;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    v30 = *(v20 + 8);
    v29 = v20 + 8;
    v30(v22, v19);
    if (v27)
    {
      v92 = v5;
      v94 = v26;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200, &qword_21DC15D18);
      v32 = v24;
      v33 = *(v31 + 36);
      v34 = v101;
      sub_21D0D3954(v101 + v33, v18, &qword_27CE5C1D8, &unk_21DC15CF0);
      sub_21D5401D8(v18);
      sub_21D0D3954(v34 + v33, v15, &qword_27CE5C1D8, &unk_21DC15CF0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v15;
        sub_21D504124(*v15);

        return;
      }

      v91 = v32;
      v24 = v98;
      sub_21D0D523C(v15, v98, &qword_27CE5C1E0, &unk_21DC19260);
      v36 = v92;
      sub_21D0D3954(v34 + *(v31 + 40), v92, &qword_27CE5C1C8, &unk_21DC15CD0);
      v37 = v99;
      v38 = v100;
      if ((*(v99 + 48))(v36, 1, v100) == 1)
      {
        sub_21D0CF7E0(v36, &qword_27CE5C1C8, &unk_21DC15CD0);
        v39 = objc_opt_self();
        v40 = sub_21DBFA12C();
        v41 = [v39 internalErrorWithDebugDescription_];

        sub_21D504124(v41);

        v42 = v24;
LABEL_43:
        sub_21D0CF7E0(v42, &qword_27CE5C1E0, &unk_21DC19260);
        return;
      }

      v26 = v95;
      (*(v37 + 32))(v95, v36, v38);
      v43 = v96;
      v44 = *(v24 + *(v96 + 48));
      v45 = sub_21DBF757C();
      v46 = *(v45 - 8);
      v47 = v97;
      (*(v46 + 16))(v97, v24, v45);
      *(v47 + *(v43 + 48)) = v44;
      v48 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor;
      v49 = v94;
      swift_beginAccess();
      v50 = *(v49 + v48);
      if (!v50)
      {
        v52 = v44;

        goto LABEL_13;
      }

      v51 = v44;
      if (v91 != v50)
      {

LABEL_13:

LABEL_42:
        sub_21D0CF7E0(v47, &qword_27CE5C1E0, &unk_21DC19260);
        (*(v37 + 8))(v26, v38);
        v42 = v24;
        goto LABEL_43;
      }

      v53 = v51;
      v54 = sub_21DBF6E3C();
      sub_21D4F5F28(v54);
      v56 = v55;

      if (v44)
      {
        v101 = v56;
        v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v58 = v94;
        swift_beginAccess();
        if (*(v58 + v57))
        {
          v59 = v53;

          sub_21D4F9F64(v59, v101);
        }

        else
        {
          v60 = *(v58 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
          v61 = v53;
          v62 = sub_21DBFB12C();
          v63 = swift_allocObject();
          *(v63 + 16) = 0;
          v64 = v60;
          v24 = v98;
          v65 = sub_21D87E81C(v64, sub_21D1947D8, v63, v61, v62);
          *(v58 + v57) = v65;

          swift_beginAccess();
          v65[3] = &protocol witness table for TTRShowCompletedByDateBucketsDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v66 = v93;
      sub_21D0D3954(v97, v93, &qword_27CE5C1E0, &unk_21DC19260);

      v29 = sub_21DBF716C();
      (*(v46 + 8))(v66, v45);
      if (!(v29 >> 62))
      {
        v67 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v67 = sub_21DBFBD7C();
      if (!v67)
      {

        v69 = MEMORY[0x277D84F90];
LABEL_30:
        v37 = v99;
        v26 = v95;
        v47 = v97;
        if (*(v69 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v78 = sub_21DBFC40C();
        }

        else
        {
          v78 = MEMORY[0x277D84F98];
        }

        v104[0] = v78;
        v79 = sub_21DBF8E0C();
        sub_21D1931C0(v79, 1, v104);

        v80 = v104[0];
        v81 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v82 = v94;
        swift_beginAccess();
        if (*(v82 + v81))
        {

          sub_21D188810(v80);
          v84 = v83;

          TTRBatchFetchManager<A>.override(objects:)(v84);
        }

        else
        {
        }

        goto LABEL_41;
      }

LABEL_21:
      v104[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v68 = 0;
      v69 = v104[0];
      v70 = &off_278331000;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x223D44740](v68, v29);
        }

        else
        {
          v71 = *(v29 + 8 * v68 + 32);
        }

        v72 = v71;
        v73 = [v71 v70[425]];
        v104[0] = v69;
        v75 = *(v69 + 16);
        v74 = *(v69 + 24);
        if (v75 >= v74 >> 1)
        {
          v77 = v73;
          sub_21D18E6B8((v74 > 1), v75 + 1, 1);
          v70 = &off_278331000;
          v73 = v77;
          v69 = v104[0];
        }

        ++v68;
        *(v69 + 16) = v75 + 1;
        v76 = v69 + 16 * v75;
        *(v76 + 32) = v73;
        *(v76 + 40) = v72;
      }

      while (v67 != v68);

      goto LABEL_30;
    }

LABEL_40:

    v37 = v99;
    v47 = v97;
LABEL_41:
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_21DBFBEEC();
    v85 = v94;
    v102 = *v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D328, &unk_21DC19270);
    v86 = sub_21DBFA1AC();
    v88 = v87;

    v102 = v86;
    v103 = v88;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v89 = sub_21DBFAEDC();
    v101 = &v90;
    MEMORY[0x28223BE20](v89);
    *(&v90 - 4) = v85;
    *(&v90 - 3) = v47;
    *(&v90 - 2) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    v38 = v100;
    goto LABEL_42;
  }
}

void sub_21D54EB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8, &qword_21DC15EF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0, &qword_21DC15EF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v47 = v6;
  v19 = *(v18 + *(*v18 + 112));
  *v16 = v19;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v20 = v19;
  LOBYTE(v19) = sub_21DBF9DAC();
  v22 = *(v14 + 8);
  v21 = (v14 + 8);
  v22(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0, &unk_21DC15F00);
  v24 = *(v23 + 36);
  sub_21D0D3954(a1 + v24, v12, &qword_27CE5C3D0, &qword_21DC15EF0);
  sub_21D54040C(v12);
  sub_21D0D3954(a1 + v24, v9, &qword_27CE5C3D0, &qword_21DC15EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v9;
    if (qword_27CE569A8 == -1)
    {
LABEL_6:
      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE5DA68);
      v26 = v21;
      v27 = sub_21DBF84AC();
      v28 = sub_21DBFAEBC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v48 = v30;
        *v29 = 136315138;
        swift_getErrorValue();
        v31 = sub_21DBFC75C();
        v33 = sub_21D0CDFB4(v31, v32, &v48);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_21D0C9000, v27, v28, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x223D46520](v30, -1, -1);
        MEMORY[0x223D46520](v29, -1, -1);
      }

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v34 = v47;
  sub_21D0D523C(v9, v47, &qword_27CE5C3D8, &qword_21DC15EF8);
  if (*(a1 + *(v23 + 40)))
  {
    v35 = objc_opt_self();
    v36 = sub_21DBFA12C();
    v37 = [v35 internalErrorWithDebugDescription_];

    if (qword_27CE569A8 != -1)
    {
      swift_once();
    }

    v38 = sub_21DBF84BC();
    __swift_project_value_buffer(v38, qword_27CE5DA68);
    v39 = v37;
    v40 = sub_21DBF84AC();
    v41 = sub_21DBFAEBC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = sub_21DBFC75C();
      v46 = sub_21D0CDFB4(v44, v45, &v48);

      *(v42 + 4) = v46;
      v34 = v47;
      _os_log_impl(&dword_21D0C9000, v40, v41, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223D46520](v43, -1, -1);
      MEMORY[0x223D46520](v42, -1, -1);
    }
  }

  else
  {
    sub_21D552610(v34);
  }

  sub_21D0CF7E0(v34, &qword_27CE5C3D8, &qword_21DC15EF8);
}

void sub_21D54F19C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v3 = sub_21DBF719C();
  v99 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_21DBF6DBC();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v103 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v94 - v7;
  v106 = sub_21DBF76AC();
  v108 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8, &unk_21DC15E20);
  MEMORY[0x28223BE20](v104);
  v100 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v107 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0, &qword_21DC15E18);
  MEMORY[0x28223BE20](v15);
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v94 - v19;
  v21 = sub_21DBF9D8C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v96 = v3;
    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (!v27)
    {

      return;
    }

    v28 = v27;
    v29 = *(v26 + *(*v26 + 112));
    *v24 = v29;
    (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
    v30 = v29;
    LOBYTE(v29) = sub_21DBF9DAC();
    (*(v22 + 8))(v24, v21);
    if (v29)
    {
      v97 = v28;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308, &qword_21DC1A830);
      v32 = *(v31 + 36);
      v33 = v110;
      sub_21D0D3954(v110 + v32, v20, &qword_27CE5C2F0, &qword_21DC15E18);
      sub_21D540640(v20);
      sub_21D0D3954(v33 + v32, v17, &qword_27CE5C2F0, &qword_21DC15E18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *v17;
        sub_21D7D309C(*v17);

        return;
      }

      v95 = v26;
      v26 = v107;
      sub_21D0D523C(v17, v107, &qword_27CE5C2F8, &unk_21DC15E20);
      sub_21D0D3954(v33 + *(v31 + 40), v8, &qword_27CE5C1C8, &unk_21DC15CD0);
      v35 = v108;
      v17 = v106;
      v36 = (*(v108 + 48))(v8, 1, v106);
      v37 = v97;
      if (v36 == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE5C1C8, &unk_21DC15CD0);
        v38 = objc_opt_self();
        v39 = sub_21DBFA12C();
        v40 = [v38 internalErrorWithDebugDescription_];

        sub_21D7D309C(v40);

        v41 = v26;
LABEL_44:
        sub_21D0CF7E0(v41, &qword_27CE5C2F8, &unk_21DC15E20);
        return;
      }

      v42 = v105;
      (*(v35 + 32))(v105, v8, v17);
      v43 = v104;
      v44 = *(v26 + *(v104 + 48));
      v45 = v109;
      sub_21D0D3954(v26, v109, &qword_27CE5DAE0, &qword_21DC1A838);
      *(v45 + *(v43 + 48)) = v44;
      v46 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor;
      swift_beginAccess();
      v47 = *(v37 + v46);
      if (!v47 || v95 != v47)
      {
        v48 = v44;

LABEL_43:
        sub_21D0CF7E0(v109, &qword_27CE5C2F8, &unk_21DC15E20);
        (*(v35 + 8))(v42, v17);
        v41 = v26;
        goto LABEL_44;
      }

      v49 = v100;
      sub_21D0D3954(v109, v100, &qword_27CE5C2F8, &unk_21DC15E20);
      v50 = *(v49 + *(v43 + 48));
      v51 = v44;

      v52 = v101;
      v53 = v102;
      if ((*(v101 + 48))(v49, 1, v102) == 1)
      {

        sub_21D0CF7E0(v49, &qword_27CE5DAE0, &qword_21DC1A838);
        v42 = v105;
        goto LABEL_43;
      }

      (*(v52 + 32))(v103, v49, v53);
      v54 = sub_21DBF6E3C();
      sub_21D4F5F28(v54);
      v56 = v55;

      if (v44)
      {
        v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        if (*(v37 + v57))
        {
          v58 = v51;

          sub_21D4F9F64(v58, v56);
        }

        else
        {
          v60 = *(v37 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
          v61 = v51;
          v62 = sub_21DBFB12C();
          v63 = v37;
          v64 = swift_allocObject();
          *(v64 + 16) = 0;
          v65 = sub_21D87E81C(v60, sub_21D554248, v64, v61, v62);
          *(v63 + v57) = v65;

          swift_beginAccess();
          v65[3] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v66 = v98;
      MEMORY[0x223D3F550](v59);
      v28 = sub_21DBF716C();
      (*(v99 + 8))(v66, v96);
      if (!(v28 >> 62))
      {
        v67 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v67 = sub_21DBFBD7C();
      if (!v67)
      {

        v69 = MEMORY[0x277D84F90];
LABEL_31:
        v26 = v107;
        v17 = v106;
        v77 = v97;
        if (*(v69 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v78 = sub_21DBFC40C();
        }

        else
        {
          v78 = MEMORY[0x277D84F98];
        }

        v113[0] = v78;
        v79 = sub_21DBF8E0C();
        sub_21D1931C0(v79, 1, v113);

        v80 = v113[0];
        v81 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        if (*(v77 + v81))
        {

          sub_21D188810(v80);
          v83 = v82;

          TTRBatchFetchManager<A>.override(objects:)(v83);

          v77 = v97;
        }

        else
        {
        }

        goto LABEL_42;
      }

LABEL_22:
      v113[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v68 = 0;
      v69 = v113[0];
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x223D44740](v68, v28);
        }

        else
        {
          v70 = *(v28 + 8 * v68 + 32);
        }

        v71 = v70;
        v72 = [v70 objectID];
        v113[0] = v69;
        v74 = *(v69 + 16);
        v73 = *(v69 + 24);
        if (v74 >= v73 >> 1)
        {
          v76 = v72;
          sub_21D18E6B8((v73 > 1), v74 + 1, 1);
          v72 = v76;
          v69 = v113[0];
        }

        ++v68;
        *(v69 + 16) = v74 + 1;
        v75 = v69 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
      }

      while (v67 != v68);

      goto LABEL_31;
    }

LABEL_41:

    v77 = v97;
LABEL_42:
    v84 = v103;
    v85 = sub_21DBF6DAC();
    v86 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
    swift_beginAccess();
    v87 = *(v77 + v86);
    *(v77 + v86) = v85;
    v88 = v85;

    v111 = 0;
    v112 = 0xE000000000000000;
    sub_21DBFBEEC();
    v111 = *v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE8, &qword_21DC1A840);
    v89 = sub_21DBFA1AC();
    v91 = v90;

    v111 = v89;
    v112 = v91;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v92 = sub_21DBFAEDC();
    v110 = &v94;
    MEMORY[0x28223BE20](v92);
    *(&v94 - 4) = v77;
    *(&v94 - 3) = v88;
    *(&v94 - 2) = v84;
    v93 = v105;
    *(&v94 - 1) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
    v42 = v93;

    (*(v101 + 8))(v103, v102);
    v35 = v108;
    goto LABEL_43;
  }
}

void sub_21D54FFDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8, &unk_21DC15CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v88 - v4;
  v6 = sub_21DBF76AC();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  MEMORY[0x28223BE20](v93);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v95 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v20 = sub_21DBF9D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v90 = v9;
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v28 = *(v25 + *(*v25 + 112));
    *v23 = v28;
    (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
    v29 = v28;
    LOBYTE(v28) = sub_21DBF9DAC();
    v31 = *(v21 + 8);
    v30 = v21 + 8;
    v31(v23, v20);
    if (v28)
    {
      v91 = v27;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8, &unk_21DC15DE0);
      v33 = v25;
      v34 = *(v32 + 36);
      v35 = v98;
      sub_21D0D3954(v98 + v34, v19, &qword_27CE5C298, &qword_21DC196B0);
      sub_21D1361E0(v19);
      sub_21D0D3954(v35 + v34, v16, &qword_27CE5C298, &qword_21DC196B0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v16;
        sub_21D8C8E30(*v16);

        return;
      }

      v89 = v33;
      v25 = v95;
      sub_21D0D523C(v16, v95, &qword_27CE5C2A0, &unk_21DC15DC0);
      sub_21D0D3954(v35 + *(v32 + 40), v5, &qword_27CE5C1C8, &unk_21DC15CD0);
      v38 = v96;
      v37 = v97;
      if ((*(v96 + 48))(v5, 1, v97) == 1)
      {
        sub_21D0CF7E0(v5, &qword_27CE5C1C8, &unk_21DC15CD0);
        v39 = objc_opt_self();
        v40 = sub_21DBFA12C();
        v41 = [v39 internalErrorWithDebugDescription_];

        sub_21D8C8E30(v41);

        v42 = v25;
LABEL_43:
        sub_21D0CF7E0(v42, &qword_27CE5C2A0, &unk_21DC15DC0);
        return;
      }

      v27 = v92;
      (*(v38 + 32))(v92, v5, v37);
      v43 = v93;
      v44 = *(v25 + *(v93 + 48));
      v45 = sub_21DBF773C();
      v46 = *(v45 - 8);
      v47 = v94;
      (*(v46 + 16))(v94, v25, v45);
      *(v47 + *(v43 + 48)) = v44;
      v48 = *(v91 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
      if (!v48)
      {
        v50 = v44;

        goto LABEL_13;
      }

      v49 = v44;
      if (v89 != v48)
      {

LABEL_13:

LABEL_42:
        sub_21D0CF7E0(v47, &qword_27CE5C2A0, &unk_21DC15DC0);
        (*(v38 + 8))(v27, v37);
        v42 = v25;
        goto LABEL_43;
      }

      v51 = v49;
      v52 = sub_21DBF6E3C();
      sub_21D4F5F28(v52);
      v54 = v53;

      if (v44)
      {
        v98 = v54;
        v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v56 = v91;
        swift_beginAccess();
        if (*(v56 + v55))
        {
          v57 = v51;

          sub_21D4F9F64(v57, v98);
        }

        else
        {
          v58 = *(v56 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
          v59 = v51;
          v60 = sub_21DBFB12C();
          v61 = swift_allocObject();
          *(v61 + 16) = 0;
          v62 = v58;
          v25 = v95;
          v63 = sub_21D87E81C(v62, sub_21D554248, v61, v59, v60);
          *(v56 + v55) = v63;

          swift_beginAccess();
          v63[3] = &protocol witness table for TTRShowSiriFoundInAppsDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v64 = v90;
      sub_21D0D3954(v94, v90, &qword_27CE5C2A0, &unk_21DC15DC0);

      v30 = sub_21DBF716C();
      (*(v46 + 8))(v64, v45);
      if (!(v30 >> 62))
      {
        v65 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v65 = sub_21DBFBD7C();
      if (!v65)
      {

        v67 = MEMORY[0x277D84F90];
LABEL_30:
        v38 = v96;
        v27 = v92;
        v47 = v94;
        if (*(v67 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
          v76 = sub_21DBFC40C();
        }

        else
        {
          v76 = MEMORY[0x277D84F98];
        }

        v101[0] = v76;
        v77 = sub_21DBF8E0C();
        sub_21D1931C0(v77, 1, v101);

        v78 = v101[0];
        v79 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v80 = v91;
        swift_beginAccess();
        if (*(v80 + v79))
        {

          sub_21D188810(v78);
          v82 = v81;

          TTRBatchFetchManager<A>.override(objects:)(v82);
        }

        else
        {
        }

        goto LABEL_41;
      }

LABEL_21:
      v101[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v66 = 0;
      v67 = v101[0];
      v68 = &off_278331000;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223D44740](v66, v30);
        }

        else
        {
          v69 = *(v30 + 8 * v66 + 32);
        }

        v70 = v69;
        v71 = [v69 v68[425]];
        v101[0] = v67;
        v73 = *(v67 + 16);
        v72 = *(v67 + 24);
        if (v73 >= v72 >> 1)
        {
          v75 = v71;
          sub_21D18E6B8((v72 > 1), v73 + 1, 1);
          v68 = &off_278331000;
          v71 = v75;
          v67 = v101[0];
        }

        ++v66;
        *(v67 + 16) = v73 + 1;
        v74 = v67 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
      }

      while (v65 != v66);

      goto LABEL_30;
    }

LABEL_40:

    v38 = v96;
    v47 = v94;
LABEL_41:
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_21DBFBEEC();
    v83 = v91;
    v99 = *v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8, &unk_21DC1A820);
    v84 = sub_21DBFA1AC();
    v86 = v85;

    v99 = v84;
    v100 = v86;
    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
    v87 = sub_21DBFAEDC();
    v98 = &v88;
    MEMORY[0x28223BE20](v87);
    *(&v88 - 4) = v83;
    *(&v88 - 3) = v47;
    *(&v88 - 2) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    v37 = v97;
    goto LABEL_42;
  }
}

uint64_t sub_21D550BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_173_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_180;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D550F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_97_1;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_104_1;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D5512B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_298_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_305;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D53D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_21D551724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_270;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_277;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D553894;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_124;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D553894;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_131;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D552CA8;
  *(v14 + 24) = v8;
  v31 = sub_21D552CB4;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_53_1;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D552CA8;
  *(v20 + 24) = v8;
  v31 = sub_21D552CB4;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_59_0;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

void sub_21D552174(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v14 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v16 = [v14 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v13 + 6, v13[9]);
    [v16 removeObserver_];

    swift_unknownObjectRelease();
    swift_beginAccess();
    swift_weakAssign();
    if (qword_27CE57600 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE67878);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAE9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v18, v19, "Removing undo manager observer because target is deallocated", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_19;
  }

  v6 = Strong;
  sub_21DBF4D3C();
  if (!v21[3])
  {
    sub_21D0CF7E0(v21, &qword_27CE5C690, &unk_21DC11AB0);
    goto LABEL_18;
  }

  sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    a4(v6);
LABEL_19:

    return;
  }

  v7 = v22;
  if (sub_21DBC127C() < 1)
  {

    goto LABEL_18;
  }

  if (qword_27CE57600 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE67878);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEAC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Ignoring undo manager change notification", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }
}

uint64_t sub_21D5524F8(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 40);
  v4 = *(a2 + 41);
  v7 = *a2;
  v8 = v2;
  v9 = *(a2 + 24);
  v10 = v3;
  v11 = v4;
  v5 = *(result + 80);
  if (v5)
  {
    v6 = *(result + 88);

    v5(&v7);

    return sub_21D0D0E88(v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D552580(uint64_t result, uint64_t *a2, uint64_t (*a3)(void (*)(void), uint64_t))
{
  v3 = *(a2 + 8);
  v4 = a2[2];
  v5 = *(a2 + 24);
  v6 = *(a2 + 25);
  v10 = *a2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = *(result + 64);
  if (v7)
  {
    v8 = *(result + 72);

    v7(&v10);

    return a3(v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D552610(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DA68);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTREditTodaySectionsMonitorableDataView: did fetch data", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  sub_21D0EB8DC(a1, v2 + v8, &qword_27CE5C3D8, &qword_21DC15EF8);
  swift_endAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D55278C(void *a1)
{
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5DA68);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of TTREditTodaySectionsInteractorType.saveNewOrdering(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1237C4;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for TTREditTodaySectionsInteractor(uint64_t a1)
{
  result = qword_27CE5DAA8;
  if (!qword_27CE5DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D552AD4(uint64_t a1)
{
  sub_21D552BB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D552BB4(uint64_t a1)
{
  if (!qword_27CE5DAB8)
  {
    sub_21DBF760C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5DAB8);
    }
  }
}

double sub_21D552D5C(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {

      return result;
    }

    v15 = *(v14 + 40);
    *v11 = v15;
    (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
    v16 = v15;
    LOBYTE(v15) = sub_21DBF9DAC();
    (*(v9 + 8))(v11, v8);
    if (v15)
    {
      swift_beginAccess();
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_21D43DE58(a1, a2 & 1);
      sub_21D43DE58(a1, a2 & 1);
      *(v14 + 16) = a1;
      *(v14 + 24) = a2 & 1;
      sub_21D43DEB8(v17, v18);
      if ((a2 & 1) == 0)
      {
        swift_beginAccess();
        *(v14 + 32) = a1;
        sub_21DBF8E0C();

        if (a3)
        {
          v30 = objc_opt_self();
          v31 = sub_21DBFA12C();
          v32 = [v30 internalErrorWithDebugDescription_];

          if (qword_27CE56750 != -1)
          {
            swift_once();
          }

          v33 = sub_21DBF84BC();
          __swift_project_value_buffer(v33, qword_27CE5C180);
          v34 = v32;
          v35 = sub_21DBF84AC();
          v36 = sub_21DBFAEBC();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v43 = v38;
            *v37 = 136315138;
            swift_getErrorValue();
            v39 = sub_21DBFC74C();
            v41 = sub_21D0CDFB4(v39, v40, &v43);

            *(v37 + 4) = v41;
            _os_log_impl(&dword_21D0C9000, v35, v36, "TTRTemplatesListMonitorableDataView: did hit error {error: %s}", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x223D46520](v38, -1, -1);
            MEMORY[0x223D46520](v37, -1, -1);
          }
        }

        else
        {
          sub_21D42D000(a1);
        }

        v28 = a1;
        v29 = 0;
        return sub_21D43DEB8(v28, v29);
      }

      if (qword_27CE56750 == -1)
      {
LABEL_6:
        v19 = sub_21DBF84BC();
        __swift_project_value_buffer(v19, qword_27CE5C180);
        v20 = a1;
        v21 = sub_21DBF84AC();
        v22 = sub_21DBFAEBC();
        sub_21D43DEB8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v44[0] = v24;
          *v23 = 136315138;
          swift_getErrorValue();
          v25 = sub_21DBFC74C();
          v27 = sub_21D0CDFB4(v25, v26, v44);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_21D0C9000, v21, v22, "TTRTemplatesListMonitorableDataView: did hit error {error: %s}", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x223D46520](v24, -1, -1);
          MEMORY[0x223D46520](v23, -1, -1);
        }

        v28 = a1;
        v29 = 1;
        return sub_21D43DEB8(v28, v29);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

void sub_21D553270(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_9:

    return;
  }

  v16 = *(v15 + 56);
  *v13 = v16;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v17 = v16;
  LOBYTE(v16) = sub_21DBF9DAC();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  sub_21D43A0E8(a1, a2, a3 & 1);
  sub_21D43A0E8(a1, a2, a3 & 1);
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3 & 1;
  sub_21D43A134(v18, v19, v20);
  if (a3)
  {
    if (qword_27CE57638 == -1)
    {
LABEL_6:
      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE67958);
      v22 = a1;
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEBC();
      sub_21D43A134(a1, a2, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v50[0] = v26;
        *v25 = 136446210;
        swift_getErrorValue();
        v27 = sub_21DBFC75C();
        v29 = sub_21D0CDFB4(v27, v28, v50);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRReminderDetailDatabaseMonitor: did hit error {error: %{public}s}", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x223D46520](v26, -1, -1);
        MEMORY[0x223D46520](v25, -1, -1);
      }

      sub_21D43A134(a1, a2, 1);
      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  v30 = *(v15 + 40);
  v31 = *(v15 + 48);
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  sub_21D15751C(a1);
  v32 = a2;
  sub_21D55381C(v30, v31);
  if ((a4 & 1) == 0)
  {
    if (a1 != 1)
    {
      v49 = a1;
      v46 = a1;
      sub_21DBF906C();
      sub_21D157878(a1);

      sub_21D157878(a1);
      return;
    }

    goto LABEL_9;
  }

  v33 = objc_opt_self();
  v34 = sub_21DBFA12C();
  v35 = [v33 internalErrorWithDebugDescription_];

  if (qword_27CE57638 != -1)
  {
    swift_once();
  }

  v36 = sub_21DBF84BC();
  __swift_project_value_buffer(v36, qword_27CE67958);
  v37 = v35;
  v38 = sub_21DBF84AC();
  v39 = sub_21DBFAEBC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136446210;
    swift_getErrorValue();
    v42 = sub_21DBFC75C();
    v44 = sub_21D0CDFB4(v42, v43, &v49);
    v48 = v32;
    v45 = v44;

    *(v40 + 4) = v45;
    _os_log_impl(&dword_21D0C9000, v38, v39, "TTRReminderDetailDatabaseMonitor: did hit error {error: %{public}s}", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223D46520](v41, -1, -1);
    MEMORY[0x223D46520](v40, -1, -1);

    sub_21D157878(a1);
  }

  else
  {

    sub_21D157878(a1);
  }
}

void sub_21D55381C(void *a1, void *a2)
{
  if (a2 != 1)
  {
    sub_21D157878(a1);
  }
}

double sub_21D553AD4(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {

      return result;
    }

    v15 = *(v14 + 40);
    *v11 = v15;
    (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
    v16 = v15;
    LOBYTE(v15) = sub_21DBF9DAC();
    (*(v9 + 8))(v11, v8);
    if (v15)
    {
      swift_beginAccess();
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_21D43DE58(a1, a2 & 1);
      sub_21D43DE58(a1, a2 & 1);
      *(v14 + 16) = a1;
      *(v14 + 24) = a2 & 1;
      sub_21D43DEB8(v17, v18);
      if ((a2 & 1) == 0)
      {
        swift_beginAccess();
        *(v14 + 32) = a1;
        sub_21DBF8E0C();

        if (a3)
        {
          v30 = objc_opt_self();
          v31 = sub_21DBFA12C();
          v32 = [v30 internalErrorWithDebugDescription_];

          if (qword_27CE56A90 != -1)
          {
            swift_once();
          }

          v33 = sub_21DBF84BC();
          __swift_project_value_buffer(v33, qword_27CE5EC48);
          v34 = v32;
          v35 = sub_21DBF84AC();
          v36 = sub_21DBFAEBC();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v43 = v38;
            *v37 = 136315138;
            swift_getErrorValue();
            v39 = sub_21DBFC74C();
            v41 = sub_21D0CDFB4(v39, v40, &v43);

            *(v37 + 4) = v41;
            _os_log_impl(&dword_21D0C9000, v35, v36, "TTRIReminderSectionPickerMonitorableDataView: did hit error {error: %s}", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x223D46520](v38, -1, -1);
            MEMORY[0x223D46520](v37, -1, -1);
          }
        }

        else
        {
          sub_21D5E4350(a1);
        }

        v28 = a1;
        v29 = 0;
        return sub_21D43DEB8(v28, v29);
      }

      if (qword_27CE56A90 == -1)
      {
LABEL_6:
        v19 = sub_21DBF84BC();
        __swift_project_value_buffer(v19, qword_27CE5EC48);
        v20 = a1;
        v21 = sub_21DBF84AC();
        v22 = sub_21DBFAEBC();
        sub_21D43DEB8(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v44[0] = v24;
          *v23 = 136315138;
          swift_getErrorValue();
          v25 = sub_21DBFC74C();
          v27 = sub_21D0CDFB4(v25, v26, v44);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_21D0C9000, v21, v22, "TTRIReminderSectionPickerMonitorableDataView: did hit error {error: %s}", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x223D46520](v24, -1, -1);
          MEMORY[0x223D46520](v23, -1, -1);
        }

        v28 = a1;
        v29 = 1;
        return sub_21D43DEB8(v28, v29);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_241Tm()
{

  sub_21D43DEB8(*(v0 + 24), *(v0 + 32));
  sub_21D43DEB8(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

id UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_280D17220 & 1) == 0)
    {
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = sub_21DBFA12C();

      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v7 = [v8 initWithTitle:v9 style:2 target:sub_21DBFC62C() action:a4];

      goto LABEL_8;
    }
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = [v6 initWithBarButtonSystemItem:0 target:sub_21DBFC62C() action:a4];
LABEL_8:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v7;
}

id UIBarButtonItem.ttr_view.getter()
{
  v1 = [v0 view];

  return v1;
}

id UIBarButtonItem.ttr_viewForPresenting.getter()
{
  v1 = [v0 _viewForPresenting];

  return v1;
}

uint64_t TTRRemindersInteraction.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRRemindersInteraction.deleteInteractions(for:)(void *a1)
{
  return sub_21D554B7C(a1, &unk_282EC3B30, sub_21D226DA8, &block_descriptor_48);
}

{
  return sub_21D554B7C(a1, &unk_282EC3BD0, sub_21D555CE4, &block_descriptor_12_1);
}

uint64_t sub_21D5544BC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F468);
  v1 = __swift_project_value_buffer(v0, qword_280D0F468);
  if (qword_280D0C890 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRRemindersInteraction.donateReminderCreation(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF9D2C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D851F0], v10, v12);
  v22[1] = v15;
  LOBYTE(v15) = sub_21DBF9DAC();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = (*(v17 + 40))(v16, v17);
    if (v18)
    {
      v19 = v18;
      if ([v18 length] < 1)
      {
      }

      else
      {
        sub_21D0D32E4(a1, v27);
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        sub_21D0D0FD0(v27, v20 + 24);
        aBlock[4] = sub_21D554B48;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_6_2;
        v21 = _Block_copy(aBlock);

        sub_21DBF9D4C();
        v25 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
        sub_21D0CD8F0();
        sub_21DBFBCBC();
        MEMORY[0x223D438F0](0, v9, v6, v21);
        _Block_release(v21);

        (*(v24 + 8))(v6, v4);
        (*(v23 + 8))(v9, v7);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t TTRRemindersInteraction.donateReminderUpdate(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_21D5558E0(v4, v1, v2, v3);
}

void sub_21D5549B4(void *a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 objectID];
  v8 = [v7 uuid];

  sub_21DBF568C();
  v9 = sub_21DBF565C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D00;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  v14 = sub_21DBFA5DC();

  [v12 deleteInteractionsWithIdentifiers:v14 completion:0];
}

uint64_t sub_21D554B7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23[1] = a2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF9D5C();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D851F0], v13, v15);
  v23[0] = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    aBlock[4] = v24;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v25;
    v21 = _Block_copy(aBlock);
    v22 = a1;
    sub_21DBF9D4C();
    v27 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v12, v9, v21);
    _Block_release(v21);
    (*(v7 + 8))(v9, v6);
    (*(v10 + 8))(v12, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D554EB4(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = sub_21DBF56BC();
  v2 = *(v33 - 8);
  *&v3 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 0;
  v6 = [a1 fetchRemindersWithError_];
  v7 = v34[0];
  if (!v6)
  {
    v27 = v34[0];
    v28 = sub_21DBF52DC();

    swift_willThrow();
    return;
  }

  v8 = v6;
  sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v9 = sub_21DBFA5EC();
  v10 = v7;

  if (v9 >> 62)
  {
    v11 = sub_21DBFBD7C();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      v34[0] = MEMORY[0x277D84F90];
      sub_21D18E678(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
      }

      v12 = 0;
      v13 = v34[0];
      v14 = v9;
      v31 = v9 & 0xC000000000000001;
      v32 = v9;
      v15 = (v2 + 8);
      v16 = v11;
      do
      {
        if (v31)
        {
          v17 = MEMORY[0x223D44740](v12, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v12 + 32);
        }

        v18 = v17;
        v19 = [v17 objectID];
        v20 = [v19 uuid];

        sub_21DBF568C();
        v21 = sub_21DBF565C();
        v23 = v22;

        (*v15)(v5, v33);
        v34[0] = v13;
        v25 = v13[2];
        v24 = v13[3];
        if (v25 >= v24 >> 1)
        {
          sub_21D18E678((v24 > 1), v25 + 1, 1);
          v13 = v34[0];
        }

        ++v12;
        v13[2] = v25 + 1;
        v26 = &v13[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v14 = v32;
      }

      while (v16 != v12);
    }
  }

  v29 = objc_opt_self();
  v30 = sub_21DBFA5DC();

  [v29 deleteInteractionsWithIdentifiers:v30 completion:0];
}

void sub_21D5551E4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D0F460 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F468);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
      v10 = sub_21DBFA1AC();
      v12 = sub_21D0CDFB4(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v5, v6, "error donating interaction: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_280D0F460 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F468);
    oslog = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v14, "no error donating interaction to CoreDuet", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = oslog;
  }
}

void sub_21D555484(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = sub_21DBF56BC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 32))(v12, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v15 = sub_21DBFA12C();

  v36 = [v14 initWithSpokenPhrase_];

  v16 = sub_21DBF509C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v11, 1, 1, v16);
  v37 = v8;
  v18(v8, 1, 1, v16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = [v21 uuid];

  sub_21DBF568C();
  v33 = sub_21DBF565C();
  (*(v34 + 8))(v5, v35);
  sub_21D0D8CF0(0, &qword_280D176C8, 0x277CD4220);
  v23 = sub_21DBFA5DC();
  v24 = *(v17 + 48);
  v25 = 0;
  if (v24(v11, 1, v16) != 1)
  {
    v25 = sub_21DBF4EDC();
    (*(v17 + 8))(v11, v16);
  }

  v26 = v37;
  if (v24(v37, 1, v16) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_21DBF4EDC();
    (*(v17 + 8))(v26, v16);
  }

  v28 = objc_allocWithZone(MEMORY[0x277CD4228]);
  v29 = sub_21DBFA12C();

  v30 = v28;
  v31 = v36;
  v32 = [v30 initWithTitle:v36 tasks:v23 groupName:0 createdDateComponents:v25 modifiedDateComponents:v27 identifier:v29];

  *v38 = v32;
}

uint64_t TTRRemindersInteraction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D5558E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF9D2C();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D5C();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32[3] = a3;
  v32[4] = a4;
  __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a3 - 8) + 16))();
  v17 = *(a2 + 16);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D851F0], v13);
  v24[1] = v17;
  LOBYTE(v17) = sub_21DBF9DAC();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = (*(a4 + 40))(a3, a4);
    if (v19)
    {
      v20 = v19;
      if ([v19 length] < 1)
      {
      }

      else
      {
        sub_21D0D32E4(v32, v31);
        v21 = swift_allocObject();
        *(v21 + 16) = a2;
        sub_21D0D0FD0(v31, v21 + 24);
        aBlock[4] = sub_21D556974;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_23_1;
        v22 = _Block_copy(aBlock);

        sub_21DBF9D4C();
        v29 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
        sub_21D0CD8F0();
        v23 = v28;
        sub_21DBFBCBC();
        MEMORY[0x223D438F0](0, v12, v9, v22);
        _Block_release(v22);

        (*(v27 + 8))(v9, v23);
        (*(v25 + 8))(v12, v26);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of TTRRemindersInteractionType.deleteInteractions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

id sub_21D555D78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = TTRReminderProtocol.spatialEventTrigger()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = TTRReminderProtocol.temporalEventTrigger()();
  v27 = MEMORY[0x277D84F90];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v4, v5);
  if (v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v8 = sub_21DBFA12C();

    [v7 initWithSpokenPhrase_];

    MEMORY[0x223D42D80]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 184))(v26, v9, v10);
  sub_21D0FACE0(v26, &v23);
  if (v24)
  {
    sub_21D0D0FD0(&v23, v22);
    sub_21D555484(v22, &v25);
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_21D45C980(v26);
    v11 = v25;
  }

  else
  {
    sub_21D45C980(v26);
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  sub_21D0D8CF0(0, &qword_280D17810, 0x277CD4188);
  v13 = v11;
  v14 = v2;
  v15 = v3;
  v16 = sub_21DBFA5DC();

  v17 = [v12 initWithTargetTaskList:v13 taskTitles:v16 spatialEventTrigger:v14 temporalEventTrigger:v15 priority:0];

  v18 = qword_280D19F80;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBFA12C();
  [v19 _setLaunchId_];

  return v19;
}

id sub_21D556070(void *a1)
{
  v2 = sub_21DBF56BC();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = TTRReminderProtocol.spatialEventTrigger()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = TTRReminderProtocol.temporalEventTrigger()();
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 48))(v11, v12);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v15 = sub_21DBFA12C();

    v64 = [v14 initWithSpokenPhrase_];
  }

  else
  {
    v64 = 0;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 48))(v16, v17);
  v18 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v19 = sub_21DBFA12C();

  v58 = [v18 initWithSpokenPhrase_];

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 64))(v20, v21);
  v23 = 1;
  if (v22)
  {
    v23 = 2;
  }

  v57 = v23;
  v24 = sub_21DBF509C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v9, 1, 1, v24);
  v63 = v6;
  v26(v6, 1, 1, v24);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 8);
  v59 = v10;
  v30 = v56;
  v31 = v29(v27, v28);
  v32 = [v31 uuid];

  v33 = v60;
  sub_21DBF568C();

  sub_21DBF565C();
  v34 = v9;
  (*(v61 + 8))(v33, v62);
  v35 = *(v25 + 48);
  v36 = v35(v9, 1, v24);
  v37 = 0;
  if (v36 != 1)
  {
    v37 = sub_21DBF4EDC();
    (*(v25 + 8))(v34, v24);
  }

  v38 = v63;
  if (v35(v63, 1, v24) == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_21DBF4EDC();
    (*(v25 + 8))(v38, v24);
  }

  v40 = objc_allocWithZone(MEMORY[0x277CD4220]);
  v41 = sub_21DBFA12C();

  v42 = v58;
  v43 = v59;
  v44 = [v40 initWithTitle:v58 status:v57 taskType:2 spatialEventTrigger:v30 temporalEventTrigger:v59 createdDateComponents:v37 modifiedDateComponents:v39 identifier:v41];

  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  if ((*(v46 + 64))(v45, v46))
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v49 = v64;
  v50 = [v48 initWithTargetTask:v44 taskTitle:v64 status:v47 priority:0 spatialEventTrigger:v30 temporalEventTrigger:v43];
  v51 = qword_280D19F80;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_21DBFA12C();
  [v52 _setLaunchId_];

  return v52;
}

void sub_21D556654(char a1, void *a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v8 = sub_21D555D78(a2);
LABEL_5:
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v8 response:0];

    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = *(v12 + 8);
    v14 = v10;
    v15 = v13(v11, v12);
    v16 = [v15 uuid];

    sub_21DBF568C();
    sub_21DBF565C();
    (*(v5 + 8))(v7, v4);
    v17 = sub_21DBFA12C();

    [v14 setIdentifier_];

    aBlock[4] = sub_21D5551E4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_17_0;
    v18 = _Block_copy(aBlock);
    [v14 donateInteractionWithCompletion_];

    _Block_release(v18);
    return;
  }

  if (a1 == 2)
  {
    v8 = sub_21D556070(a2);
    goto LABEL_5;
  }

  if (qword_280D0F460 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_280D0F468);
  v20 = MEMORY[0x277D84F90];
  v21 = sub_21D17716C(MEMORY[0x277D84F90]);
  v22 = sub_21D17716C(v20);
  sub_21DAEAB00("Trying to donate a user action that doesn't support Siri Donation", 65, 2, v21, v22);
  __break(1u);
}

uint64_t objectdestroy_2Tm_0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocObject();
}

BOOL static TTRReminderCellStyle.CompletedButtonType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 1) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

BOOL sub_21D556A04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v5 = v3 ^ v2;
  v6 = v5 ^ 1;
  if (v3 >= 0x40)
  {
    v6 = 0;
  }

  v7 = (v5 & 1) == 0;
  if ((v3 & 0xC0) != 0x40)
  {
    v7 = 0;
  }

  v8 = v3 == 128;
  if (v4 != 1)
  {
    v7 = v8;
  }

  if (!v4)
  {
    return v6;
  }

  return v7;
}

uint64_t TTRReminderCellStyle.titlePlaceholderText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

void TTRReminderCellStyle.titlePlaceholderText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void sub_21D556B54()
{
  word_280D15940 = 0;
  byte_280D15942 = 1;
  qword_280D15948 = 0;
  qword_280D15950 = 0;
  word_280D15958 = 257;
}

_BYTE *TTRReminderCellStyle.init(completedButtonType:hoverButtonType:allowsEditing:titlePlaceholderText:hasAccessibilityDragSourceDescriptors:hasAccessibilityCustomActions:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  *a8 = *result;
  *(a8 + 1) = v8;
  *(a8 + 2) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 25) = a7;
  return result;
}

double static TTRReminderCellStyle.normal.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D15938 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15940);
  v3 = byte_280D15942;
  v5 = qword_280D15948;
  v4 = qword_280D15950;
  v6 = word_280D15958;
  v7 = HIBYTE(word_280D15958);
  *a1 = word_280D15940;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556C38()
{
  word_280D15968 = 128;
  byte_280D1596A = 1;
  qword_280D15970 = 0;
  qword_280D15978 = 0;
  word_280D15980 = 0;
}

double static TTRReminderCellStyle.placeholder.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D15960 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15968);
  v3 = byte_280D1596A;
  v5 = qword_280D15970;
  v4 = qword_280D15978;
  v6 = word_280D15980;
  v7 = HIBYTE(word_280D15980);
  *a1 = word_280D15968;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556CF8()
{
  word_27CE5DB18 = 64;
  byte_27CE5DB1A = 0;
  qword_27CE5DB20 = 0;
  unk_27CE5DB28 = 0;
  word_27CE5DB30 = 1;
}

double static TTRReminderCellStyle.siriFoundInApps.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569B8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB18);
  v3 = byte_27CE5DB1A;
  v5 = qword_27CE5DB20;
  v4 = unk_27CE5DB28;
  v6 = word_27CE5DB30;
  v7 = HIBYTE(word_27CE5DB30);
  *a1 = word_27CE5DB18;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556DB8()
{
  word_27CE5DB38 = 1;
  byte_27CE5DB3A = 1;
  qword_27CE5DB40 = 0;
  unk_27CE5DB48 = 0;
  word_27CE5DB50 = 1;
}

double static TTRReminderCellStyle.template.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569C0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB38);
  v3 = byte_27CE5DB3A;
  v5 = qword_27CE5DB40;
  v4 = unk_27CE5DB48;
  v6 = word_27CE5DB50;
  v7 = HIBYTE(word_27CE5DB50);
  *a1 = word_27CE5DB38;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556E74()
{
  word_27CE5DB58 = 1;
  byte_27CE5DB5A = 0;
  qword_27CE5DB60 = 0;
  unk_27CE5DB68 = 0;
  word_27CE5DB70 = 0;
}

double static TTRReminderCellStyle.publicTemplate.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569C8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB58);
  v3 = byte_27CE5DB5A;
  v5 = qword_27CE5DB60;
  v4 = unk_27CE5DB68;
  v6 = word_27CE5DB70;
  v7 = HIBYTE(word_27CE5DB70);
  *a1 = word_27CE5DB58;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556F30()
{
  word_27CE5DB78 = 257;
  byte_27CE5DB7A = 0;
  qword_27CE5DB80 = 0;
  unk_27CE5DB88 = 0;
  word_27CE5DB90 = 0;
}

double static TTRReminderCellStyle.recentlyDeleted.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569D0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB78);
  v3 = byte_27CE5DB7A;
  v5 = qword_27CE5DB80;
  v4 = unk_27CE5DB88;
  v6 = word_27CE5DB90;
  v7 = HIBYTE(word_27CE5DB90);
  *a1 = word_27CE5DB78;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D556FEC()
{
  word_27CE5DB98 = 1;
  byte_27CE5DB9A = 1;
  qword_27CE5DBA0 = 0;
  unk_27CE5DBA8 = 0;
  word_27CE5DBB0 = 257;
}

double static TTRReminderCellStyle.sharingExtension.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB98);
  v3 = byte_27CE5DB9A;
  v5 = qword_27CE5DBA0;
  v4 = unk_27CE5DBA8;
  v6 = word_27CE5DBB0;
  v7 = HIBYTE(word_27CE5DBB0);
  *a1 = word_27CE5DB98;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

void sub_21D5570AC()
{
  word_27CE5DBB8 = 65;
  byte_27CE5DBBA = 0;
  qword_27CE5DBC0 = 0;
  unk_27CE5DBC8 = 0;
  word_27CE5DBD0 = 0;
}

double static TTRReminderCellStyle.sharingExtensionSuggestion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE569E0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DBB8);
  v3 = byte_27CE5DBBA;
  v5 = qword_27CE5DBC0;
  v4 = unk_27CE5DBC8;
  v6 = word_27CE5DBD0;
  v7 = HIBYTE(word_27CE5DBD0);
  *a1 = word_27CE5DBB8;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  sub_21DBF8E0C();
  return result;
}

unint64_t sub_21D557194()
{
  result = qword_27CE5DBD8;
  if (!qword_27CE5DBD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellStyle.SuggestedReminderType, &type metadata for TTRReminderCellStyle.SuggestedReminderType, v0, v1);
    atomic_store(result, &qword_27CE5DBD8);
  }

  return result;
}

unint64_t sub_21D5571EC()
{
  result = qword_27CE5DBE0;
  if (!qword_27CE5DBE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellStyle.HoverButtonType, &type metadata for TTRReminderCellStyle.HoverButtonType, v0, v1);
    atomic_store(result, &qword_27CE5DBE0);
  }

  return result;
}

unint64_t sub_21D557244()
{
  result = qword_27CE5DBE8;
  if (!qword_27CE5DBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellStyle.Role, &type metadata for TTRReminderCellStyle.Role, v0, v1);
    atomic_store(result, &qword_27CE5DBE8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellStyle.CompletedButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellStyle.CompletedButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D5575F0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_21D55761C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t Collection<>.isSingleUncommittedReminder.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFAC8C() != 1)
  {
    return 0;
  }

  sub_21DBFACEC();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_21D24BDFC(v8, v12);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
    sub_21D1067F8(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_21D1067F8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      return 1;
    }

    sub_21D1067F8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 0;
  }

  sub_21D5578D8(v8);
  return 0;
}

uint64_t sub_21D5578D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D557A2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_21D557B30()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v1 = sub_21DBFA12C();

  [v0 setTitle_];

  return [v0 setClearsSelectionOnViewWillAppear_];
}

uint64_t sub_21D557C8C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v24 = sub_21DBF9D2C();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v22 - v16;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1, v15);
  sub_21D0CE468();
  v18 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  aBlock[4] = sub_21D558040;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_10_0;
  v19 = _Block_copy(aBlock);
  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D559E00(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v20 = v24;
  sub_21DBFBCBC();
  MEMORY[0x223D43880](v17, v9, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v20);
  (*(v25 + 8))(v9, v26);
  return (v22)(v17, v23);
}

void sub_21D5580A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (!a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
      swift_beginAccess();
      sub_21D0D3954(v6 + v9, v5, &qword_27CE5A018, &unk_21DC0DCB0);
      swift_unknownObjectRetain();
      sub_21D559430(v5, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_21D0CF7E0(v5, &qword_27CE5A018, &unk_21DC0DCB0);
    }
  }
}

id sub_21D5582B0(void *a1, void *a2)
{
  v5 = sub_21DBFA12C();
  v6 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v8 = sub_21DBFA12C();
    v6 = [v7 initWithStyle:0 reuseIdentifier:v8];
  }

  v9 = sub_21DBF5D0C();
  v10 = v9;
  if (v9)
  {
    if (v9 == 1)
    {
      v14 = [v6 textLabel];
      if (!v14)
      {
        v10 = 1;
        goto LABEL_17;
      }

      a2 = v14;
      v2 = 0x800000021DC5FA30;
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  v2 = sub_21DBF5CCC();
  swift_unknownObjectRetain();
  a2 = sub_21D55AC6C();
  swift_unknownObjectRelease();
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 >= a2[2])
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
LABEL_12:
    v16 = v2;
    sub_21DBF516C();
    goto LABEL_13;
  }

  v11 = a2[v2 + 4];

  v12 = [v6 textLabel];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_17;
  }

  a2 = v12;
  v13 = [objc_opt_self() localizedDescriptionForRepeatType_];
  if (v13)
  {
    goto LABEL_14;
  }

  sub_21DBFA16C();
LABEL_13:
  v13 = sub_21DBFA12C();

LABEL_14:
  [a2 setText_];

LABEL_17:
  [v6 setAccessoryType_];
  return v6;
}

void sub_21D5588F8()
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v64);
  v2 = &v52 - v1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v66 = &v52 - v17;
  if ([v0 isViewLoaded])
  {
    v18 = [v0 tableView];
    if (v18)
    {
      v68 = v18;
      v19 = [v18 indexPathsForVisibleRows];
      if (v19)
      {
        v20 = v4;
        v21 = v19;
        v53 = sub_21DBFA5EC();

        swift_unknownObjectRetain();
        v22 = sub_21D55ADA0();
        v24 = v23;
        swift_unknownObjectRelease();
        v25 = v66;
        if (v24)
        {
          v26 = 0;
          v27 = 1;
        }

        else
        {
          v26 = v22;
          v27 = 0;
        }

        MEMORY[0x223D3E470](v26, v27);
        v29 = v3;
        v62 = *(v20 + 56);
        v63 = v20 + 56;
        v62(v25, 0, 1, v3);
        v30 = *(v53 + 16);
        if (v30)
        {
          v65 = v14;
          v58 = v11;
          v56 = v6;
          v31 = *(v20 + 16);
          v32 = v53 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
          v33 = (v20 + 48);
          v54 = (v20 + 48);
          v55 = (v20 + 32);
          v67 = *(v20 + 72);
          v71 = (v20 + 8);
          v72 = v31;
          v60 = v2;
          v61 = v20 + 16;
          v34 = v59;
          v31(v59, v32, v3);
          while (1)
          {
            v37 = sub_21DBF5C6C();
            v38 = [v68 cellForRowAtIndexPath_];

            if (v38)
            {
              break;
            }

LABEL_14:
            (*v71)(v34, v29);
            v32 += v67;
            if (!--v30)
            {
              goto LABEL_26;
            }

            v72(v34, v32, v29);
          }

          v69 = v30;
          v70 = v38;
          v39 = v29;
          v40 = v33;
          v41 = v65;
          v72(v65, v34, v39);
          v62(v41, 0, 1, v39);
          v42 = *(v64 + 48);
          v43 = v60;
          sub_21D0D3954(v41, v60, &unk_27CE58E70, &unk_21DC0A930);
          sub_21D0D3954(v66, v43 + v42, &unk_27CE58E70, &unk_21DC0A930);
          v44 = *v40;
          if ((*v40)(v43, 1, v39) == 1)
          {
            sub_21D0CF7E0(v41, &unk_27CE58E70, &unk_21DC0A930);
            v45 = v44(v43 + v42, 1, v39) == 1;
            v33 = v40;
            v29 = v39;
            v46 = v43;
            v30 = v69;
            if (v45)
            {
              sub_21D0CF7E0(v46, &unk_27CE58E70, &unk_21DC0A930);
              v35 = 3;
              v36 = v70;
LABEL_13:
              [v36 setAccessoryType_];

              goto LABEL_14;
            }
          }

          else
          {
            v47 = v58;
            sub_21D0D3954(v43, v58, &unk_27CE58E70, &unk_21DC0A930);
            if (v44(v43 + v42, 1, v39) != 1)
            {
              v48 = v56;
              (*v55)(v56, v43 + v42, v39);
              sub_21D559E00(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
              v57 = sub_21DBFA10C();
              v49 = *v71;
              v50 = v48;
              v33 = v54;
              (*v71)(v50, v39);
              sub_21D0CF7E0(v65, &unk_27CE58E70, &unk_21DC0A930);
              v49(v47, v39);
              sub_21D0CF7E0(v43, &unk_27CE58E70, &unk_21DC0A930);
              v34 = v59;
              v29 = v39;
              v30 = v69;
              v36 = v70;
              if (v57)
              {
                v35 = 3;
                goto LABEL_13;
              }

              goto LABEL_23;
            }

            v33 = v40;
            sub_21D0CF7E0(v65, &unk_27CE58E70, &unk_21DC0A930);
            (*v71)(v47, v39);
            v46 = v43;
            v34 = v59;
            v29 = v39;
            v30 = v69;
          }

          sub_21D0CF7E0(v46, &qword_27CE5DBF8, &unk_21DC1ABD0);
          v36 = v70;
LABEL_23:
          v35 = sub_21DBF5D0C() == 1;
          goto LABEL_13;
        }

LABEL_26:

        v51 = v66;

        sub_21D0CF7E0(v51, &unk_27CE58E70, &unk_21DC0A930);
      }

      else
      {
        v28 = v68;
      }
    }
  }
}

void sub_21D559028()
{
  v1 = v0;
  v2 = sub_21DBF5B9C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 tableView];
  if (v7)
  {
    v8 = v7;
    v15 = &unk_282EA6D88;
    sub_21D559E00(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70, &unk_21DC0F980);
    sub_21D0D9418(&qword_280D178C8, &unk_27CE67A70, &unk_21DC0F980);
    sub_21DBFBCBC();
    v9 = sub_21DBF5A8C();
    v10 = *(v3 + 8);
    v10(v6, v2);
    [v8 _reloadSectionHeaderFooters_withRowAnimation_];

    v11 = [v1 tableView];
    if (v11)
    {
      v12 = v11;
      v15 = &unk_282EA6DB0;
      sub_21DBFBCBC();
      v13 = sub_21DBF5A8C();
      v10(v6, v2);
      [v12 _reloadSectionHeaderFooters_withRowAnimation_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21D55927C(char a1)
{
  v2 = v1;
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [v2 tableView];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 indexPathForSelectedRow];

  if (!v14)
  {
    return;
  }

  sub_21DBF5CAC();

  (*(v5 + 32))(v11, v7, v4);
  v15 = [v2 tableView];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_21DBF5C6C();
  [v16 deselectRowAtIndexPath:v17 animated:a1 & 1];

  (*(v5 + 8))(v11, v4);
}

uint64_t sub_21D559430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = aBlock - v7;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  sub_21D0D3954(a1, v8, &qword_27CE5A018, &unk_21DC0DCB0);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21D559CF8(v8, v12 + v11);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D559D68;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_49;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21D55973C(uint64_t a1)
{
  result = sub_21DBF5D0C();
  if (result)
  {
    if (result == 1)
    {
      swift_unknownObjectRetain();
      sub_21D55A630();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v2 = sub_21D55AC6C();
  swift_unknownObjectRelease();
  result = sub_21DBF5CCC();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v2 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v3 = *(v2 + 8 * result + 32);

  swift_unknownObjectRetain();
  sub_21D55A4F0(v3);
LABEL_7:

  return swift_unknownObjectRelease();
}

id sub_21D559820(void *a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = *(v4 + 16);
  v39 = a2;
  v18(&v36 - v16, a2, v3, v15);
  v40 = v4;
  v19 = *(v4 + 56);
  v19(v17, 0, 1, v3);
  swift_unknownObjectRetain();
  v20 = sub_21D55ADA0();
  v22 = v21;
  swift_unknownObjectRelease();
  if (v22)
  {
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v23 = v20;
    v24 = 0;
  }

  MEMORY[0x223D3E470](v23, v24);
  v19(v13, 0, 1, v3);
  v25 = *(v6 + 48);
  sub_21D0D3954(v17, v8, &unk_27CE58E70, &unk_21DC0A930);
  sub_21D0D3954(v13, &v8[v25], &unk_27CE58E70, &unk_21DC0A930);
  v26 = v40;
  v27 = *(v40 + 48);
  if (v27(v8, 1, v3) != 1)
  {
    v29 = v38;
    sub_21D0D3954(v8, v38, &unk_27CE58E70, &unk_21DC0A930);
    if (v27(&v8[v25], 1, v3) != 1)
    {
      v31 = &v8[v25];
      v32 = v37;
      (*(v26 + 32))(v37, v31, v3);
      sub_21D559E00(&qword_280D17150, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v33 = v29;
      v34 = sub_21DBFA10C();
      v35 = *(v26 + 8);
      v35(v32, v3);
      sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
      sub_21D0CF7E0(v17, &unk_27CE58E70, &unk_21DC0A930);
      v35(v33, v3);
      sub_21D0CF7E0(v8, &unk_27CE58E70, &unk_21DC0A930);
      if (v34)
      {
        v28 = 3;
        return [v41 setAccessoryType_];
      }

      goto LABEL_10;
    }

    sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
    sub_21D0CF7E0(v17, &unk_27CE58E70, &unk_21DC0A930);
    (*(v26 + 8))(v29, v3);
LABEL_9:
    sub_21D0CF7E0(v8, &qword_27CE5DBF8, &unk_21DC1ABD0);
LABEL_10:
    v28 = sub_21DBF5D0C() == 1;
    return [v41 setAccessoryType_];
  }

  sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
  sub_21D0CF7E0(v17, &unk_27CE58E70, &unk_21DC0A930);
  if (v27(&v8[v25], 1, v3) != 1)
  {
    goto LABEL_9;
  }

  sub_21D0CF7E0(v8, &unk_27CE58E70, &unk_21DC0A930);
  v28 = 3;
  return [v41 setAccessoryType_];
}

uint64_t sub_21D559CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D559D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);

  return sub_21D4592CC();
}

uint64_t sub_21D559E00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D559E74(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v68 = a3;
  LODWORD(v67) = a2;
  v6 = sub_21DBF5C4C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v58 - v11;
  v12 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  sub_21D55B0F8(a1, &v58 - v31);
  if (v67)
  {
    v33 = 1;
    if (!(*(v13 + 48))(v32, 1, v12))
    {
      sub_21D3351BC(v32, v23);
      v67 = sub_21D7DAFA0(*(v4 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate));
      v58 = v34;
      v36 = v35;
      sub_21D3351BC(v23, v17);
      v37 = v12[5];
      if (*&v23[v37] == 3)
      {
        v38 = *&v23[v12[13]];
        if (v38)
        {
          if (*(v38 + 16))
          {
            v39 = *&v23[v12[12]];
            if (v39)
            {
              if (*(v39 + 16))
              {
                *&v17[v37] = 2;
              }
            }
          }
        }
      }

      sub_21D55B1D8(v17, v20);
      sub_21D7D8908(v67, v58, v36 & 1, v29);
      sub_21D335220(v20);
      sub_21D335220(v23);
      v33 = 0;
    }

    (*(v13 + 56))(v29, v33, 1, v12);
    sub_21D55B23C(v29, v32);
  }

  sub_21D55B0F8(v32, v26);
  if ((*(v13 + 48))(v26, 1, v12) == 1)
  {
    sub_21D0CF7E0(v26, &qword_27CE5A018, &unk_21DC0DCB0);
    v40 = 0;
LABEL_16:
    v50 = 0;
    v52 = 0;
    goto LABEL_17;
  }

  v41 = v60;
  sub_21D55B1D8(v26, v60);
  v42 = *(v4 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate);
  v43 = [v42 date];
  v44 = v64;
  sub_21DBF55FC();

  v45 = v61;
  sub_21DBF5C3C();
  v46 = v59;
  v40 = TTRRecurrenceRuleModel.repeatTypeAndEndDate(recurrenceDate:recurrenceTimeZone:)(v59, v44, v45);
  (*(v62 + 8))(v45, v63);
  v47 = v66;
  v48 = *(v65 + 8);
  v48(v44, v66);
  sub_21D0CF7E0(v46, &qword_27CE58D68, &unk_21DC0C060);
  if (v40 != 11)
  {
    sub_21D335220(v41);
    goto LABEL_16;
  }

  v49 = [v42 date];
  sub_21DBF55FC();

  v50 = TTRRecurrenceRuleModel.naturalLanguageString(startDate:)();
  v52 = v51;
  v48(v44, v47);
  sub_21D335220(v41);
LABEL_17:
  v53 = v4[8];
  v54 = (v53 | v52) == 0;
  if (v53 && v52)
  {
    if (v4[7] == v50 && v53 == v52)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_21DBFC64C();
    }
  }

  v55 = v4[6];
  v56 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
  swift_beginAccess();
  sub_21D55B168(v32, v4 + v56);
  swift_endAccess();
  v4[7] = v50;
  v4[8] = v52;

  v4[6] = v40;
  if (v68)
  {
    if (v55 != v40 && swift_unknownObjectWeakLoadStrong())
    {
      sub_21D5588F8();
      swift_unknownObjectRelease();
    }

    if ((v54 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_21D559028();
      swift_unknownObjectRelease();
    }
  }

  return sub_21D0CF7E0(v32, &qword_27CE5A018, &unk_21DC0DCB0);
}

uint64_t sub_21D55A4F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  TTRRecurrenceRuleModel.init(repeatType:)(a1, &v11 - v4);
  sub_21D559E74(v5, 1, 1);
  if (v1[6] == a1)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong navigationController];

      v9 = [v8 popViewControllerAnimated_];
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D55927C(0);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(v5, &qword_27CE5A018, &unk_21DC0DCB0);
}

uint64_t sub_21D55A630()
{
  v1 = v0;
  v2 = sub_21DBF5C4C();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_21DBF563C();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
  swift_beginAccess();
  v13 = (*(v9 + 48))(v1 + v12, 1, v8);
  v14 = 0;
  if (!v13)
  {
    sub_21D3351BC(v1 + v12, v11);
    v14 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
    sub_21D335220(v11);
  }

  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate);
  v16 = [v15 date];
  sub_21DBF55FC();

  v17 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_supportsHourlyRecurrence) == 1)
  {
    v18 = [v15 isAllDay];
  }

  else
  {
    v18 = 1;
  }

  v19 = swift_allocObject();
  swift_weakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v21 = Strong;

  v22 = [v21 navigationController];

  if (!v22)
  {

LABEL_12:
    v22 = v14;
    goto LABEL_13;
  }

  v30 = v18;
  v31 = v2;
  v23 = objc_allocWithZone(TTRICustomRecurrenceViewController);
  v24 = sub_21DBF55BC();
  v25 = sub_21DBF5C0C();
  v26 = [v23 initWithStartDate:v24 timeZone:v25];

  if (v14)
  {
    [v26 setRecurrenceRule_];
  }

  aBlock[4] = sub_21D55B66C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1B6000;
  aBlock[3] = &block_descriptor_50;
  v27 = _Block_copy(aBlock);

  [v26 setCompletionBlock_];
  _Block_release(v27);
  [v26 setProhibitsHourlyRecurrence_];
  [v22 pushViewController:v26 animated:1];

  v2 = v31;
LABEL_13:

  (*(v33 + 8))(v4, v2);
  (*(v5 + 8))(v7, v32);
}

uint64_t sub_21D55AAD4(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TTRRecurrenceRuleModel.init(sourceRule:)(a1, v9);
    sub_21D3351BC(v9, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_21D559E74(v5, 1, 1);

    sub_21D0CF7E0(v5, &qword_27CE5A018, &unk_21DC0DCB0);
    return sub_21D335220(v9);
  }

  return result;
}

uint64_t sub_21D55AC6C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21D55ACCC(v0);
    *(v0 + 72) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D55ACCC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59948, &unk_21DC0CAC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  *(v2 + 32) = 0;
  v6 = v2;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_supportsHourlyRecurrence) == 1)
  {
    v3 = v2;
    if (([*(a1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate) isAllDay] & 1) == 0)
    {
      v4 = sub_21D2132F8(1, 2, 1, v3);
      *(v4 + 2) = 2;
      *(v4 + 5) = 1;
      v6 = v4;
    }
  }

  sub_21D562B98(&unk_282EA6D20);
  return v6;
}

uint64_t sub_21D55ADA0()
{
  v0 = sub_21D55AE0C();
  if (*(v0 + 16) && (v1 = sub_21D181E04(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21D55AE0C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType);
  }

  else
  {
    v3 = v0;
    v4 = sub_21D55AC6C();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59940, &qword_21DC0CAB8);
      v7 = sub_21DBFC40C();
      v4 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F98];
    }

    v9 = v7;
    sub_21D55B2AC(v4, 0, v5, 1, &v9);
    v2 = v9;
    *(v3 + v1) = v9;
  }

  sub_21DBF8E0C();
  return v2;
}

uint64_t sub_21D55AF0C()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule, &qword_27CE5A018, &unk_21DC0DCB0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRecurrenceEditorPresenter(uint64_t a1)
{
  result = qword_27CE5DC20;
  if (!qword_27CE5DC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D55B01C(uint64_t a1)
{
  sub_21D23C48C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21D55B0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B23C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21D55B2AC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = a1;
  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = a3 <= a2 ? a2 : a3;
  if (a2 == a3)
  {
    goto LABEL_6;
  }

  if (a3 < a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= a3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = a5;
  v39 = v12;
  LOBYTE(v13) = a4;
  v8 = a2;
  v9 = a3;
  v6 = *(a1 + 32);
  v14 = *a5;
  a1 = sub_21D181E04();
  v16 = *(v14 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = v15;
  if (*(v14 + 24) < v19)
  {
    sub_21D21A888(v19, v13 & 1);
    a1 = sub_21D181E04();
    if ((v7 & 1) == (v20 & 1))
    {
      goto LABEL_15;
    }

LABEL_13:
    type metadata accessor for REMRepeatType(0);
    a1 = sub_21DBFC70C();
    __break(1u);
  }

  if (v13)
  {
LABEL_15:
    v21 = v9;
    v22 = v8;
    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_19:
  v25 = a1;
  sub_21D22333C();
  a1 = v25;
  v22 = v8;
  v21 = v9;
  if (v7)
  {
LABEL_16:
    v23 = swift_allocError();
    swift_willThrow();

    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_37;
  }

LABEL_20:
  v26 = *v5;
  *(*v5 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  *(v26[6] + 8 * a1) = v6;
  *(v26[7] + 8 * a1) = v22;
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    type metadata accessor for REMRepeatType(0);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v26[2] = v28;
  v13 = v11 - 1;
  if (v11 != 1)
  {
    v8 = 0;
    v39 += ~v22;
    v9 = v22 + 1;
    v11 = v22 + 1 - v21;
    while ((v8 + 1) < *(v10 + 16))
    {
      if (!(v11 + v8))
      {
        goto LABEL_6;
      }

      if (v39 == v8)
      {
        goto LABEL_33;
      }

      v6 = *(v10 + 40 + 8 * v8);
      v29 = *v5;
      v30 = sub_21D181E04();
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v18 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v18)
      {
        goto LABEL_34;
      }

      v7 = v31;
      if (v29[3] < v34)
      {
        sub_21D21A888(v34, 1);
        v30 = sub_21D181E04();
        if ((v7 & 1) != (v35 & 1))
        {
          goto LABEL_13;
        }
      }

      if (v7)
      {
        goto LABEL_16;
      }

      v36 = *v5;
      *(*v5 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v36[6] + 8 * v30) = v6;
      *(v36[7] + 8 * v30) = v9 + v8;
      v37 = v36[2];
      v18 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v18)
      {
        goto LABEL_35;
      }

      v36[2] = v38;
      if (v13 == ++v8)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_36;
  }

LABEL_6:
}

uint64_t sub_21D55B674()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DC30);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DC30);
  if (qword_280D0C890 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRCurrentUserActivityProvider.fetchCurrentUserActivity(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE569E8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DC30);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "Getting NSUserActivity._currentUserActivityUUID", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_21D55C2A0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D55C948;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [v8 _currentUserActivityUUIDWithOptions_completionHandler_];
  _Block_release(v10);
}

void sub_21D55B8F0(void (*a1)(char *, id, uint64_t), uint64_t a2, unint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6)
{
  v101 = a5;
  v98 = a2;
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v87 - v14;
  v92 = v16;
  MEMORY[0x28223BE20](v17);
  v97 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  if (qword_27CE569E8 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  v28 = __swift_project_value_buffer(v27, qword_27CE5DC30);
  v100 = a1;
  sub_21D55CB10(a1, v26);
  sub_21DBF8E0C();
  v29 = a4;
  v99 = v28;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAE9C();

  if (os_log_type_enabled(v30, v31))
  {
    v89 = v31;
    v90 = v15;
    v95 = a6;
    v32 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock[0] = v88;
    *v32 = 136315650;
    sub_21D55CB10(v26, v23);
    v33 = (*(v11 + 48))(v23, 1, v10);
    v94 = v10;
    v91 = v11;
    if (v33 == 1)
    {
      sub_21D0CF7E0(v23, &qword_27CE58370, &unk_21DC091F0);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v35 = sub_21DBF565C();
      v34 = v46;
      (*(v11 + 8))(v23, v10);
    }

    sub_21D0CF7E0(v26, &qword_27CE58370, &unk_21DC091F0);
    v47 = sub_21D0CDFB4(v35, v34, aBlock);

    *(v32 + 4) = v47;
    *(v32 + 12) = 2080;
    v48 = 7104878;
    if (a3)
    {
      v49 = v98;
    }

    else
    {
      v49 = 7104878;
    }

    v50 = 0xE300000000000000;
    if (a3)
    {
      v51 = a3;
    }

    else
    {
      v51 = 0xE300000000000000;
    }

    sub_21DBF8E0C();
    v52 = sub_21D0CDFB4(v49, v51, aBlock);

    *(v32 + 14) = v52;
    *(v32 + 22) = 2080;
    if (a4)
    {
      swift_getErrorValue();
      v48 = sub_21DBFC74C();
      v50 = v53;
    }

    v10 = v94;
    v54 = sub_21D0CDFB4(v48, v50, aBlock);

    *(v32 + 24) = v54;
    _os_log_impl(&dword_21D0C9000, v30, v89, "Got current userActivity {userActivityUUID: %s, userActivityApplicationBundleIdentifier: %s, error: %s}", v32, 0x20u);
    v55 = v88;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);

    a6 = v95;
    v11 = v91;
    v15 = v90;
    v36 = v100;
    if (!a4)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_21D0CF7E0(v26, &qword_27CE58370, &unk_21DC091F0);
    v36 = v100;
    if (!a4)
    {
LABEL_20:
      v56 = v96;
      sub_21D55CB10(v36, v96);
      if ((*(v11 + 48))(v56, 1, v10) == 1)
      {
        sub_21D0CF7E0(v56, &qword_27CE58370, &unk_21DC091F0);
        v57 = sub_21DBF84AC();
        v58 = sub_21DBFAEDC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_21D0C9000, v57, v58, "No current userActivity found. {resolve: nil}", v59, 2u);
          MEMORY[0x223D46520](v59, -1, -1);
        }

        v101(0, 0);
      }

      else
      {
        v60 = v97;
        v100 = *(v11 + 32);
        v100(v97, v56, v10);
        v61 = *(v11 + 16);
        v61(v15, v60, v10);
        v62 = sub_21DBF84AC();
        v63 = v10;
        v64 = sub_21DBFAE9C();
        if (os_log_type_enabled(v62, v64))
        {
          v65 = swift_slowAlloc();
          v94 = v63;
          v66 = v65;
          v67 = swift_slowAlloc();
          v96 = v61;
          v68 = v67;
          aBlock[0] = v67;
          *v66 = 136315138;
          v69 = sub_21DBF565C();
          v95 = a6;
          v71 = v70;
          v72 = *(v11 + 8);
          v98 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v73 = v94;
          v99 = v72;
          v72(v15, v94);
          v74 = sub_21D0CDFB4(v69, v71, aBlock);
          a6 = v95;

          *(v66 + 4) = v74;
          v75 = v64;
          v76 = v11;
          _os_log_impl(&dword_21D0C9000, v62, v75, "Getting NSUserActivity with uuid {uuid: %s}", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          v77 = v68;
          v61 = v96;
          MEMORY[0x223D46520](v77, -1, -1);
          MEMORY[0x223D46520](v66, -1, -1);

          v63 = v73;
        }

        else
        {

          v78 = *(v11 + 8);
          v98 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v99 = v78;
          v78(v15, v63);
          v76 = v11;
        }

        v96 = objc_opt_self();
        v79 = v97;
        v80 = sub_21DBF566C();
        v81 = v93;
        v61(v93, v79, v63);
        v82 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v83 = (v92 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        v100((v84 + v82), v81, v63);
        v85 = (v84 + v83);
        *v85 = v101;
        v85[1] = a6;
        aBlock[4] = sub_21D55CB80;
        aBlock[5] = v84;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D55C8BC;
        aBlock[3] = &block_descriptor_10_1;
        v86 = _Block_copy(aBlock);

        [v96 _fetchUserActivityWithUUID_completionHandler_];
        _Block_release(v86);

        v99(v79, v63);
      }

      return;
    }
  }

  v37 = a4;
  v38 = sub_21DBF84AC();
  v39 = sub_21DBFAEBC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = sub_21DBFC74C();
    v44 = sub_21D0CDFB4(v42, v43, aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_21D0C9000, v38, v39, "Got error in _currentUserActivityUUID. {error: %s}", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223D46520](v41, -1, -1);
    MEMORY[0x223D46520](v40, -1, -1);
  }

  v45 = a4;
  v101(0, a4);
}

void sub_21D55C2A8(void *a1, void *a2, uint64_t a3, void (*a4)(void, void), void *a5)
{
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  if (a2)
  {
    v17 = a2;
    if (qword_27CE569E8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5DC30);
    (*(v11 + 16))(v16, a3, v10);
    v19 = a2;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = a4;
      v24 = v23;
      v56 = v23;
      *v22 = 136315394;
      v25 = sub_21DBF565C();
      v55 = a5;
      v27 = v26;
      (*(v11 + 8))(v16, v10);
      v28 = sub_21D0CDFB4(v25, v27, &v56);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_21DBFC74C();
      v31 = sub_21D0CDFB4(v29, v30, &v56);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_21D0C9000, v20, v21, "Error fetching NSUserActivity from uuid. {uuid: %s, error: %s}", v22, 0x16u);
      swift_arrayDestroy();
      v32 = v24;
      a4 = v54;
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v43 = a2;
    a4(0, a2);
  }

  else if (a1)
  {
    v33 = qword_27CE569E8;
    v34 = a1;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE5DC30);
    v36 = v34;
    v37 = sub_21DBF84AC();
    v38 = sub_21DBFAEDC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = a1;
      v41 = v36;
      _os_log_impl(&dword_21D0C9000, v37, v38, "Successfully obtained userActivity {userActivity: %@}", v39, 0xCu);
      sub_21D0CF7E0(v40, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v40, -1, -1);
      MEMORY[0x223D46520](v39, -1, -1);
    }

    v55 = v36;
    a4(a1, 0);

    v42 = v55;
  }

  else
  {
    v55 = a5;
    if (qword_27CE569E8 != -1)
    {
      swift_once();
    }

    v44 = sub_21DBF84BC();
    __swift_project_value_buffer(v44, qword_27CE5DC30);
    (*(v11 + 16))(v13, a3, v10);
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v47 = 136315138;
      v49 = sub_21DBF565C();
      v51 = v50;
      (*(v11 + 8))(v13, v10);
      v52 = sub_21D0CDFB4(v49, v51, &v56);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_21D0C9000, v45, v46, "No NSUserActivity found for uuid, and no errors given. Maybe the system has purged it. {uuid: %s}", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x223D46520](v48, -1, -1);
      MEMORY[0x223D46520](v47, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    a4(0, 0);
  }
}

void sub_21D55C8BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21D55C948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_21DBF568C();
    v12 = sub_21DBF56BC();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_21DBF56BC();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = sub_21DBFA16C();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  return sub_21D0CF7E0(v10, &qword_27CE58370, &unk_21DC091F0);
}

uint64_t sub_21D55CB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D55CB80(void *a1, void *a2)
{
  v5 = *(sub_21DBF56BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_21D55C2A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t TTRIRemindersListDisclosureView.actionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListDisclosureView.actionDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
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

uint64_t TTRIRemindersListDisclosureView.isExpanded.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id TTRIRemindersListDisclosureView.isExpanded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_21D55CE2C();
}

id sub_21D55CE2C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
  if (v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (v2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed) setAlpha_];
  [v3 setUserInteractionEnabled_];
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  [v6 setAlpha_];
  return [v6 setUserInteractionEnabled_];
}

id (*TTRIRemindersListDisclosureView.isExpanded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D55CF5C;
}

id sub_21D55CF5C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21D55CE2C();
  }

  return result;
}

id TTRIRemindersListDisclosureView.tintColor.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_tintColor);

  return v1;
}

void TTRIRemindersListDisclosureView.tintColor.setter(void *a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_setTintColor_, a1);
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_tintColor);
  [v4 setTintColor_];

  v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_tintColor);
  [v6 setTintColor_];
}

void (*TTRIRemindersListDisclosureView.tintColor.modify(objc_super **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5].super_class = v1;
  ObjectType = swift_getObjectType();
  v4[6].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[5].receiver = [(objc_super *)v4 tintColor];
  return sub_21D55D2B0;
}

void sub_21D55D2B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    *(v2 + 16) = *(v2 + 88);
    objc_msgSendSuper2((v2 + 16), sel_setTintColor_, v3);
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = *(v2 + 96);
    *(v2 + 32) = v5;
    *(v2 + 40) = v4;
    objc_msgSendSuper2((v2 + 32), sel_setTintColor_, v3);

    v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
    *(v2 + 48) = v5;
    *(v2 + 56) = v4;
    v7 = objc_msgSendSuper2((v2 + 48), sel_tintColor);
    [v6 setTintColor_];

    v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
    *(v2 + 64) = v5;
    *(v2 + 72) = v4;
    v9 = objc_msgSendSuper2((v2 + 64), sel_tintColor);
    [v8 setTintColor_];
  }

  free(v2);
}

id TTRIRemindersListDisclosureView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTRIRemindersListDisclosureView.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded] = 0;
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_imageConfiguration;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v4 = sub_21D900614(2);
  v5 = [objc_opt_self() configurationWithFont:v4 scale:1];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage] = 0;
  type metadata accessor for TTRIRemindersListDisclosureButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed] = v7;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded] = v8;
  v9 = *MEMORY[0x277CEC620];
  v10 = *(MEMORY[0x277CEC620] + 8);
  v11 = v7;
  v12 = v8;
  LODWORD(v13) = 1148846080;
  [v11 setLayoutSize:v9 withContentPriority:{v10, v13}];
  v14 = v12;
  LODWORD(v15) = 1148846080;
  [v14 setLayoutSize:v9 withContentPriority:{v10, v15}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC0AA00;
  *(v16 + 32) = v14;
  *(v16 + 40) = v11;
  sub_21D114EC8();
  v17 = sub_21DBFA5DC();

  v23.receiver = v1;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithArrangedSubviews_, v17);

  v19 = *&v18[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed];
  v20 = v18;
  [v19 setBackgroundImage:sub_21D55DFB0() forState:0];
  [*&v20[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded] setBackgroundImage:sub_21D55E0C8() forState:0];
  [v11 setAlpha_];

  [v14 setAlpha_];
  [v20 setHorizontalAlignment_];
  [v20 setVerticalAlignment_];
  [v11 addTarget:v20 action:sel_subtaskDisclosureButtonAction_ forControlEvents:0x2000];
  [v14 addTarget:v20 action:sel_subtaskDisclosureButtonAction_ forControlEvents:0x2000];
  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v20 selector:sel_buttonShapesSettingDidChange name:*MEMORY[0x277D76450] object:0];

  return v20;
}

id TTRIRemindersListDisclosureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListDisclosureView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3 name:*MEMORY[0x277D76450] object:0];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_21D55DB60()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage) = 0;

  [*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed) setBackgroundImage:sub_21D55DFB0() forState:0];
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  v4 = sub_21D55E0C8();

  return [v3 setBackgroundImage:v4 forState:0];
}

id TTRIRemindersListDisclosureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListDisclosureView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

uint64_t sub_21D55DFB0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage);
  if (!result)
  {
    UIAccessibilityButtonShapesEnabled();
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();

    v5 = [v3 __systemImageNamedSwift_];

    if (v5)
    {
      v6 = [v5 imageWithConfiguration_];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;

    return *(v0 + v1);
  }

  return result;
}

uint64_t sub_21D55E0C8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage);
  if (!result)
  {
    UIAccessibilityButtonShapesEnabled();
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();

    v5 = [v3 __systemImageNamedSwift_];

    if (v5)
    {
      v6 = [v5 imageWithConfiguration_];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;

    return *(v0 + v1);
  }

  return result;
}

void _s15RemindersUICore31TTRIRemindersListDisclosureViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded) = 0;
  v2 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_imageConfiguration;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v3 = sub_21D900614(2);
  v4 = [objc_opt_self() configurationWithFont:v3 scale:1];

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage) = 0;
  sub_21DBFC31C();
  __break(1u);
}

Swift::Void __swiftcall UITextField.setTextIfChanged(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = [v1 text];
  if (!v4)
  {
    if (!object)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();
  v8 = v7;

  if (!object)
  {

    v11 = 0;
    goto LABEL_12;
  }

  if (v6 != countAndFlagsBits || v8 != object)
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

LABEL_10:
    v11 = sub_21DBFA12C();
LABEL_12:
    v12 = v11;
    [v1 setText_];

    return;
  }
}

Swift::Void __swiftcall UITextView.setTextIfChanged(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_21DBF8E0C();
  v4 = [v1 text];
  if (!v4)
  {
LABEL_13:
    v11 = sub_21DBFA12C();

    [v1 setText_];

    return;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();
  v8 = v7;

  if (v6 == countAndFlagsBits && v8 == object)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }
}

id UITextInput<>.ttrBeginEditing()()
{
  v1 = [v0 window];
  [v1 makeKeyWindow];

  return [v0 becomeFirstResponder];
}

id UITextInput<>.textRangeForEndOfDocument.getter()
{
  v1 = [v0 endOfDocument];
  v2 = [v0 endOfDocument];
  v3 = [v0 textRangeFromPosition:v1 toPosition:v2];

  return v3;
}

id UITextInput<>.textRange(nsRange:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 beginningOfDocument];
  v6 = [v2 positionFromPosition:v5 offset:a1];

  if (v6)
  {
    v7 = [v2 positionFromPosition:v6 offset:a2];
    if (v7)
    {
      v8 = v7;
      v9 = [v2 textRangeFromPosition:v6 toPosition:v7];

      result = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

void UITextInput<>.replaceRangePreservingSelection(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = UITextInput<>.textRange(nsRange:)(a1, a2);
  if (v7)
  {
    v8 = v7;
    v22 = [v4 selectedTextRange];
    v9 = sub_21DBFA12C();
    [v4 replaceRange:v8 withText:v9];

    if (v22)
    {
      v10 = MEMORY[0x223D42B30](a3, a4);
      v11 = [v8 start];
      v12 = [v8 end];
      v13 = [v4 offsetFromPosition:v11 toPosition:v12];

      v14 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
        __break(1u);
        return;
      }

      v15 = [v22 start];
      v16 = sub_21D55E9A8(v15, v4, v8, v10 - v13);

      if (v16)
      {
        v17 = [v22 end];
        v18 = sub_21D55E9A8(v17, v4, v8, v14);

        if (v18)
        {
          v19 = [v4 textRangeFromPosition:v16 toPosition:v18];
          if (v19)
          {
            v20 = v19;
            [v4 setSelectedTextRange_];

            v16 = v20;
          }

          else
          {
            v20 = v16;
            v16 = v18;
          }
        }
      }

      v21 = v22;
    }

    else
    {
      v21 = v8;
    }
  }
}

id sub_21D55E9A8(void *a1, void *a2, id a3, uint64_t a4)
{
  v8 = [a3 end];
  v9 = [a2 offsetFromPosition:v8 toPosition:a1];

  if ((v9 & 0x8000000000000000) == 0)
  {
    return [a2 positionFromPosition:a1 offset:a4];
  }

  v11 = [a3 start];
  v12 = [a2 offsetFromPosition:v11 toPosition:a1];

  if ((v12 & 0x8000000000000000) != 0)
  {
    return a1;
  }

  v13 = [a3 end];
  v14 = [a2 positionFromPosition:v13 offset:a4];

  return v14;
}

void (*sub_21D55EAD8(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_21D55EB34;
}

void sub_21D55EB34(id *a1)
{
  v1 = *a1;
  [a1[1] setInputAccessoryView_];
}

void (*sub_21D55EB7C(void *a1))(id *)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_21D55EC1C;
}

uint64_t Locale.uses12HourTime.getter()
{
  v0 = objc_opt_self();
  v1 = sub_21DBFA12C();
  v2 = sub_21DBF574C();
  v3 = [v0 dateFormatFromTemplate:v1 options:0 locale:v2];

  if (v3)
  {
    sub_21DBFA16C();

    sub_21D176F0C();
    LOBYTE(v3) = sub_21DBFBBDC();
  }

  return v3 & 1;
}

BOOL Locale.Language.isEquivalentOrMoreSpecific(than:)(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCE0, &qword_21DC1AF30);
  MEMORY[0x28223BE20](v92);
  v93 = v88 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCE8, &qword_21DC1AF38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = v88 - v8;
  MEMORY[0x28223BE20](v9);
  v97 = v88 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = v88 - v12;
  v100 = sub_21DBF579C();
  v106 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v89 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = v88 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCF0, &qword_21DC1AF40);
  MEMORY[0x28223BE20](v94);
  v101 = v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCF8, &qword_21DC1AF48);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = v88 - v20;
  MEMORY[0x28223BE20](v21);
  v99 = v88 - v22;
  MEMORY[0x28223BE20](v23);
  v102 = v88 - v24;
  v104 = sub_21DBF578C();
  v108 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v90 = v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v103 = v88 - v27;
  v28 = sub_21DBF572C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v95 = v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD00, &qword_21DC1AF50);
  MEMORY[0x28223BE20](v31);
  v33 = v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40, &qword_21DC18A98);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v88 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v88 - v41;
  if (sub_21DBF57CC())
  {
    return 1;
  }

  v88[0] = v6;
  v88[1] = v1;
  sub_21DBF57DC();
  v88[2] = a1;
  sub_21DBF57DC();
  v44 = *(v31 + 48);
  sub_21D0D3954(v42, v33, &qword_27CE5CF40, &qword_21DC18A98);
  sub_21D0D3954(v39, &v33[v44], &qword_27CE5CF40, &qword_21DC18A98);
  v45 = *(v29 + 48);
  if (v45(v33, 1, v28) == 1)
  {
    sub_21D0CF7E0(v39, &qword_27CE5CF40, &qword_21DC18A98);
    sub_21D0CF7E0(v42, &qword_27CE5CF40, &qword_21DC18A98);
    if (v45(&v33[v44], 1, v28) == 1)
    {
      sub_21D0CF7E0(v33, &qword_27CE5CF40, &qword_21DC18A98);
      goto LABEL_12;
    }

LABEL_8:
    v46 = &qword_27CE5DD00;
    v47 = &qword_21DC1AF50;
    v48 = v33;
LABEL_9:
    sub_21D0CF7E0(v48, v46, v47);
    return 0;
  }

  sub_21D0D3954(v33, v36, &qword_27CE5CF40, &qword_21DC18A98);
  if (v45(&v33[v44], 1, v28) == 1)
  {
    sub_21D0CF7E0(v39, &qword_27CE5CF40, &qword_21DC18A98);
    sub_21D0CF7E0(v42, &qword_27CE5CF40, &qword_21DC18A98);
    (*(v29 + 8))(v36, v28);
    goto LABEL_8;
  }

  v49 = v95;
  (*(v29 + 32))(v95, &v33[v44], v28);
  sub_21D55FB94(&qword_27CE5DD18, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
  v50 = sub_21DBFA10C();
  v51 = *(v29 + 8);
  v51(v49, v28);
  sub_21D0CF7E0(v39, &qword_27CE5CF40, &qword_21DC18A98);
  sub_21D0CF7E0(v42, &qword_27CE5CF40, &qword_21DC18A98);
  v51(v36, v28);
  sub_21D0CF7E0(v33, &qword_27CE5CF40, &qword_21DC18A98);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v52 = v102;
  sub_21DBF57EC();
  v53 = v108;
  v54 = *(v108 + 48);
  v55 = v104;
  if (v54(v52, 1, v104) == 1)
  {
    v56 = v100;
    v57 = v105;
    v58 = v106;
    v59 = v107;
LABEL_14:
    sub_21D0CF7E0(v52, &qword_27CE5DCF8, &qword_21DC1AF48);
    goto LABEL_15;
  }

  v62 = v103;
  v95 = *(v53 + 32);
  (v95)(v103, v52, v55);
  v63 = v99;
  sub_21DBF57EC();
  v64 = v98;
  (*(v53 + 16))(v98, v62, v55);
  (*(v53 + 56))(v64, 0, 1, v55);
  v65 = *(v94 + 48);
  v66 = v101;
  sub_21D0D3954(v63, v101, &qword_27CE5DCF8, &qword_21DC1AF48);
  v102 = v65;
  v67 = v66;
  sub_21D0D3954(v64, &v65[v66], &qword_27CE5DCF8, &qword_21DC1AF48);
  v68 = v54(v66, 1, v55);
  v69 = v55;
  v58 = v106;
  if (v68 == 1)
  {
    sub_21D0CF7E0(v64, &qword_27CE5DCF8, &qword_21DC1AF48);
    v70 = v101;
    sub_21D0CF7E0(v63, &qword_27CE5DCF8, &qword_21DC1AF48);
    (*(v108 + 8))(v103, v69);
    v71 = v54(&v102[v70], 1, v69);
    v57 = v105;
    v59 = v107;
    if (v71 == 1)
    {
      v52 = v70;
      v56 = v100;
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  v75 = v66;
  v76 = v91;
  sub_21D0D3954(v75, v91, &qword_27CE5DCF8, &qword_21DC1AF48);
  v77 = v102;
  if (v54(&v102[v67], 1, v69) == 1)
  {
    sub_21D0CF7E0(v98, &qword_27CE5DCF8, &qword_21DC1AF48);
    sub_21D0CF7E0(v99, &qword_27CE5DCF8, &qword_21DC1AF48);
    v78 = *(v108 + 8);
    v78(v103, v69);
    v78(v76, v69);
    v70 = v101;
LABEL_25:
    v46 = &qword_27CE5DCF0;
    v47 = &qword_21DC1AF40;
    v48 = v70;
    goto LABEL_9;
  }

  v81 = v90;
  (v95)(v90, &v77[v67], v69);
  sub_21D55FB94(&qword_27CE5DD10, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
  v82 = v67;
  v83 = sub_21DBFA10C();
  v84 = *(v108 + 8);
  v84(v81, v69);
  sub_21D0CF7E0(v98, &qword_27CE5DCF8, &qword_21DC1AF48);
  sub_21D0CF7E0(v99, &qword_27CE5DCF8, &qword_21DC1AF48);
  v84(v103, v69);
  v84(v76, v69);
  sub_21D0CF7E0(v82, &qword_27CE5DCF8, &qword_21DC1AF48);
  v57 = v105;
  v59 = v107;
  v56 = v100;
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v60 = v96;
  sub_21DBF57FC();
  v61 = *(v58 + 48);
  if (v61(v60, 1, v56) == 1)
  {
LABEL_16:
    sub_21D0CF7E0(v60, &qword_27CE5DCE8, &qword_21DC1AF38);
    return 1;
  }

  v108 = *(v58 + 32);
  (v108)(v59, v60, v56);
  v72 = v97;
  sub_21DBF57FC();
  (*(v58 + 16))(v57, v59, v56);
  (*(v58 + 56))(v57, 0, 1, v56);
  v73 = *(v92 + 48);
  v74 = v72;
  v60 = v93;
  sub_21D0D3954(v74, v93, &qword_27CE5DCE8, &qword_21DC1AF38);
  sub_21D0D3954(v57, v60 + v73, &qword_27CE5DCE8, &qword_21DC1AF38);
  if (v61(v60, 1, v56) == 1)
  {
    sub_21D0CF7E0(v57, &qword_27CE5DCE8, &qword_21DC1AF38);
    sub_21D0CF7E0(v97, &qword_27CE5DCE8, &qword_21DC1AF38);
    (*(v58 + 8))(v107, v56);
    if (v61(v60 + v73, 1, v56) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v79 = v88[0];
  sub_21D0D3954(v60, v88[0], &qword_27CE5DCE8, &qword_21DC1AF38);
  if (v61(v60 + v73, 1, v56) == 1)
  {
    sub_21D0CF7E0(v105, &qword_27CE5DCE8, &qword_21DC1AF38);
    sub_21D0CF7E0(v97, &qword_27CE5DCE8, &qword_21DC1AF38);
    v80 = *(v106 + 8);
    v80(v107, v56);
    v80(v79, v56);
LABEL_28:
    v46 = &qword_27CE5DCE0;
    v47 = &qword_21DC1AF30;
    v48 = v60;
    goto LABEL_9;
  }

  v85 = v89;
  (v108)(v89, v60 + v73, v56);
  sub_21D55FB94(&qword_27CE5DD08, MEMORY[0x277CC96C0], MEMORY[0x277CC96C8]);
  v86 = sub_21DBFA10C();
  v87 = *(v106 + 8);
  v87(v85, v56);
  sub_21D0CF7E0(v105, &qword_27CE5DCE8, &qword_21DC1AF38);
  sub_21D0CF7E0(v97, &qword_27CE5DCE8, &qword_21DC1AF38);
  v87(v107, v56);
  v87(v79, v56);
  sub_21D0CF7E0(v60, &qword_27CE5DCE8, &qword_21DC1AF38);
  return (v86 & 1) != 0;
}

uint64_t sub_21D55FB94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D55FBDC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DD20);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DD20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRFeedbackProvider.__allocating_init(hostingViewController:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 0;
  sub_21D55FE70((v2 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject));
  sub_21D5602FC((v2 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject));
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t TTRFeedbackProvider.init(hostingViewController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  sub_21D55FE70((v1 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject));
  sub_21D5602FC((v1 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject));
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_21D55FD98(uint64_t *a1)
{
  v2 = *(v1 + 24);
  if (v2 || (sub_21DBF9DDC(), v3 = sub_21D560D9C(&qword_27CE5DD48, protocol conformance descriptor for TTRFeedbackProvider), v4 = swift_unknownObjectRetain(), v5 = MEMORY[0x223D42580](v4, v3), v6 = *(v1 + 24), *(v1 + 24) = v5, v6, (v2 = *(v1 + 24)) != 0))
  {
    v7 = v2;
    sub_21DBF9DBC();
  }
}

uint64_t sub_21D55FE70@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD68, &qword_21DC1B040);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = sub_21DBF5E0C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D085C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DD70, &qword_21DC1B048);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58250, &qword_21DC1B050);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  v13 = v12 + v11;
  v14 = *(v9 + 48);
  v15 = *MEMORY[0x277D08650];
  v16 = sub_21DBF5E4C();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF516C();
  *(v13 + v14) = v18;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = *(v9 + 48);
  v17(v13 + v10, *MEMORY[0x277D08648], v16);
  *(v13 + v10 + v21) = &unk_282EA6FD0;
  sub_21D178BC0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_21DBF5E2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v24 = objc_allocWithZone(sub_21DBF5E3C());
  v25 = sub_21DBF5E1C();
  v26 = v33;
  *v33 = v25;
  v27 = *MEMORY[0x277D08530];
  v28 = sub_21DBF5DFC();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t sub_21D5602FC@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD68, &qword_21DC1B040);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = sub_21DBF5E0C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D085C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DD70, &qword_21DC1B048);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58250, &qword_21DC1B050);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  v13 = v12 + v11;
  v14 = *(v9 + 48);
  v15 = *MEMORY[0x277D08650];
  v16 = sub_21DBF5E4C();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF516C();
  *(v13 + v14) = v18;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = *(v9 + 48);
  v17(v13 + v10, *MEMORY[0x277D08648], v16);
  *(v13 + v10 + v21) = &unk_282EA7000;
  sub_21D178BC0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_21DBF5E2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v24 = objc_allocWithZone(sub_21DBF5E3C());
  v25 = sub_21DBF5E1C();
  v26 = v33;
  *v33 = v25;
  v27 = *MEMORY[0x277D08530];
  v28 = sub_21DBF5DFC();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t type metadata accessor for TTRFeedbackProvider(uint64_t a1)
{
  result = qword_27CE5DD58;
  if (!qword_27CE5DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRFeedbackProvider.deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  v1 = OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject;
  v2 = sub_21DBF5DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject, v2);
  return v0;
}

uint64_t TTRFeedbackProvider.__deallocating_deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  v1 = OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject;
  v2 = sub_21DBF5DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject, v2);

  return swift_deallocClassInstance();
}

id TTRFeedbackProvider.viewControllerForPresentation(controller:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v1 init];
  }

  return result;
}

id sub_21D5609AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v1 init];
  }

  return result;
}

void sub_21D560A00()
{
  sub_21D560D9C(&qword_27CE5DD48, protocol conformance descriptor for TTRFeedbackProvider);

  JUMPOUT(0x223D425A0);
}

void sub_21D560A9C(void *a1)
{
  v2 = v1;
  if (qword_27CE569F0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DD20);
  v5 = a1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRFeedbackProvider: Evaluation result: %@", v8, 0xCu);
    sub_21D560EB8(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v11 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void sub_21D560BE8(void *a1)
{
  if (qword_27CE569F0 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5DD20);
  v4 = a1;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRFeedbackProvider: Evaluation did fail: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v12 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t sub_21D560D9C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TTRFeedbackProvider(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D560DE8(uint64_t a1)
{
  result = sub_21DBF5DFC();
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

uint64_t sub_21D560EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int __swiftcall TTRReminderListPickerViewModel.numberOfLists(inSectionAt:)(Swift::Int inSectionAt)
{
  if (inSectionAt < 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > inSectionAt)
  {
    return *(*(*v1 + 48 * inSectionAt + 72) + 16);
  }

  __break(1u);
  return inSectionAt;
}

void TTRReminderListPickerViewModel.sectionHeader(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) <= a1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v2 + 48 * a1;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    v8 = *(v3 + 64);
    *(a2 + 32) = v8;
    sub_21D1B201C(v4, v5, v6, v7, v8);
  }
}

double TTRReminderListPickerViewModel.list(at:inSectionAt:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21DBF676C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[1];
  v42 = *v3;
  v43 = v10;
  TTRReminderListPickerViewModel.remListOrCustomSmartList(at:inSectionAt:)(a1, a2, &v69);
  v11 = v69;
  v12 = v70;
  if (v70)
  {
    v13 = v69;
    sub_21DBF674C();
    TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v13, v9, 0, &v42);
  }

  else
  {
    v69 = 0;
    v14 = v11;
    sub_21DBF674C();
    TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v14, &v69, v9, &v42);
  }

  v41 = v42;
  v40 = v43;
  v39 = v44;
  v38 = v45;
  v37 = v46;
  v36 = v47;
  v35 = v48;
  v34 = v49;
  v33 = v50;
  v32 = v51;
  v15 = v52;
  v31 = v53;
  v16 = v54;
  v30 = v55;
  v29 = v56;
  HIDWORD(v28) = v57;
  LODWORD(v28) = v58;
  v17 = v67;
  v18 = v68;
  v19 = [v11 objectID];
  if (v10)
  {
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v20 = v10;
    v21 = v12;
    v22 = v20;
    v23 = sub_21DBFB63C();

    v12 = v21;
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v69) = v16;
  v24 = v40;
  *a3 = v41;
  *(a3 + 8) = v24;
  *(a3 + 16) = v39;
  *(a3 + 24) = v38;
  v25 = v36;
  *(a3 + 40) = v37;
  *(a3 + 48) = v25;
  *(a3 + 56) = v35;
  *(a3 + 72) = v34;
  *(a3 + 88) = v33;
  *(a3 + 104) = v32;
  *(a3 + 120) = v15;
  *(a3 + 128) = v31;
  *(a3 + 144) = v69;
  *(a3 + 145) = v30;
  *(a3 + 146) = v29;
  *(a3 + 147) = BYTE4(v28);
  *(a3 + 148) = v28;
  *(a3 + 152) = v27[3];
  *(a3 + 168) = v27[2];
  *(a3 + 184) = v27[1];
  result = *v27;
  *(a3 + 200) = v27[0];
  *(a3 + 216) = v17;
  *(a3 + 217) = v18;
  *(a3 + 218) = v12;
  *(a3 + 219) = v23 & 1;
  return result;
}

uint64_t TTRReminderListPickerViewModel.remListOrCustomSmartList(at:inSectionAt:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_21DBF648C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v13;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(*v4 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(*v4 + 48 * a2 + 72);
  if (*(v16 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1;
  v18 = *(v9 + 16);
  v18(&v23 - v13, v17, v8, v14);
  (v18)(v11, v15, v8);
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 == *MEMORY[0x277D45028] || v19 == *MEMORY[0x277D45020])
  {
    v21 = v19 != *MEMORY[0x277D45028];
    (*(v9 + 8))(v15, v8);
    result = (*(v9 + 96))(v11, v8);
    *a3 = *v11;
    *(a3 + 8) = v21;
    return result;
  }

LABEL_15:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id static TTRReminderListPickerViewModel.CustomSmartListPredicate.fromSpecificAccountOrExcludeAll(accountID:)@<X0>(id a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  *a2 = v2;
  return a1;
}

void TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)(unint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v115 = a4;
  v113 = sub_21DBF648C();
  v119 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v116 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v107 = (&v101 - v10);
  MEMORY[0x28223BE20](v11);
  v108 = (&v101 - v12);
  MEMORY[0x28223BE20](v13);
  v109 = &v101 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v101 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v101 - v19);
  v120 = sub_21DBF64DC();
  v21 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v30 = *a2;
  v31 = *(a1 + 16);
  if (v31 >= 2)
  {
    v114 = a3;
    v32 = 0;
    v17 = 0;
    v122[0] = MEMORY[0x277D84F90];
    a3 = v21 + 16;
    v33 = v21 + 8;
    while (v32 < *(a1 + 16))
    {
      v34 = v120;
      (*(v21 + 16))(v29, a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v32, v120, v27);
      sub_21D563B3C(v29, v30, &v121);
      ++v32;
      (*v33)(v29, v34);
      sub_21D562230(v121);
      if (v31 == v32)
      {
        sub_21D22BF80(v30);

        v30 = v122[0];
        a3 = v114;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_60:
    swift_once();
    goto LABEL_9;
  }

  if (!v31)
  {
    sub_21D22BF80(*a2);

    v30 = MEMORY[0x277D84F90];
LABEL_58:
    v97 = v115;
    *v115 = v30;
    v97[1] = a3;
    return;
  }

  v35 = v26;
  v36 = v120;
  (*(v21 + 16))(v23, a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v120, v27);

  v37.n128_f64[0] = (*(v21 + 32))(v35, v23, v36);
  v122[0] = v30;
  sub_21D567410(v37, v35, v122);
  v31 = v38;
  v33 = v39;
  v41 = v40;
  sub_21D22BF80(v30);
  v106 = v35;
  if ((v41 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0, &qword_21DC0D160);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21DC08D00;
    v52 = sub_21DBF64CC();
    v53 = [v52 displayName];

    v54 = sub_21DBFA16C();
    v109 = v55;

    if (v31 >> 62)
    {
      v42 = sub_21DBFBD7C();
    }

    else
    {
      v42 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v116;
    v56 = MEMORY[0x277D84F90];
    if (v42)
    {
      v122[0] = MEMORY[0x277D84F90];
      sub_21D18E93C(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        goto LABEL_65;
      }

      v108 = v54;
      v105 = v30;
      v117 = v33;
      v118 = v31;
      v114 = a3;
      v56 = v122[0];
      if ((v31 & 0xC000000000000001) != 0)
      {
        v57 = 0;
        v58 = *MEMORY[0x277D45028];
        v59 = (v119 + 104);
        v116 = (v119 + 32);
        v60 = v113;
        do
        {
          *v20 = MEMORY[0x223D44740](v57, v118);
          (*v59)(v20, v58, v60);
          v122[0] = v56;
          v62 = *(v56 + 16);
          v61 = *(v56 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_21D18E93C((v61 > 1), v62 + 1, 1);
            v56 = v122[0];
          }

          ++v57;
          *(v56 + 16) = v62 + 1;
          (*(v119 + 32))(v56 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v62, v20, v60);
        }

        while (v42 != v57);
      }

      else
      {
        v79 = (v31 + 32);
        LODWORD(v116) = *MEMORY[0x277D45028];
        v111 = *(v119 + 104);
        v112 = v119 + 104;
        v110 = v119 + 32;
        v80 = v113;
        do
        {
          v81 = *v79;
          *v17 = *v79;
          v111(v17, v116, v80);
          v122[0] = v56;
          v83 = *(v56 + 16);
          v82 = *(v56 + 24);
          v84 = v81;
          if (v83 >= v82 >> 1)
          {
            sub_21D18E93C((v82 > 1), v83 + 1, 1);
            v56 = v122[0];
          }

          *(v56 + 16) = v83 + 1;
          (*(v119 + 32))(v56 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v83, v17, v80);
          ++v79;
          --v42;
        }

        while (v42);
      }

      a3 = v114;
      v33 = v117;
      v31 = v118;
      v30 = v105;
      v54 = v108;
    }

    v85 = v109;
    *(v30 + 32) = v54;
    *(v30 + 40) = v85;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 1;
    *(v30 + 72) = v56;
    v86 = v31;
    v87 = v33;
    v88 = 0;
LABEL_57:
    v96 = sub_21D56781C(v86, v87, v88);
    (*(v21 + 8))(v106, v120, v96);
    goto LABEL_58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0, &qword_21DC0D160);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC08D20;
  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_60;
  }

LABEL_9:
  v42 = 0xEB00000000656C62;
  v104 = qword_280D1BAB0;
  v43 = sub_21DBF516C();
  if (v31 >> 62)
  {
    v98 = v43;
    v99 = v44;
    v100 = sub_21DBFBD7C();
    v44 = v99;
    v45 = v100;
    v43 = v98;
  }

  else
  {
    v45 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = MEMORY[0x277D84F90];
  v114 = a3;
  v117 = v33;
  v118 = v31;
  v105 = v30;
  if (v45)
  {
    v102 = v44;
    v103 = v43;
    v122[0] = MEMORY[0x277D84F90];
    sub_21D18E93C(0, v45 & ~(v45 >> 63), 0);
    if ((v45 & 0x8000000000000000) == 0)
    {
      v46 = v122[0];
      if ((v31 & 0xC000000000000001) != 0)
      {
        v47 = 0;
        LODWORD(v116) = *MEMORY[0x277D45028];
        v48 = (v119 + 104);
        v49 = v113;
        do
        {
          *v17 = MEMORY[0x223D44740](v47, v118);
          (*v48)(v17, v116, v49);
          v122[0] = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_21D18E93C((v50 > 1), v51 + 1, 1);
            v46 = v122[0];
          }

          ++v47;
          *(v46 + 16) = v51 + 1;
          (*(v119 + 32))(v46 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v51, v17, v49);
        }

        while (v45 != v47);
      }

      else
      {
        v63 = (v31 + 32);
        LODWORD(v116) = *MEMORY[0x277D45028];
        v111 = *(v119 + 104);
        v112 = v119 + 104;
        v110 = v119 + 32;
        v64 = v113;
        v65 = v108;
        do
        {
          v66 = *v63;
          *v65 = *v63;
          v111(v65, v116, v64);
          v122[0] = v46;
          v67 = *(v46 + 16);
          v68 = *(v46 + 24);
          v69 = v66;
          if (v67 >= v68 >> 1)
          {
            sub_21D18E93C((v68 > 1), v67 + 1, 1);
            v46 = v122[0];
          }

          *(v46 + 16) = v67 + 1;
          (*(v119 + 32))(v46 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v67, v65, v64);
          ++v63;
          --v45;
        }

        while (v45);
      }

      a3 = v114;
      v33 = v117;
      v31 = v118;
      v30 = v105;
      v43 = v103;
      v44 = v102;
      goto LABEL_35;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_35:
  *(v30 + 32) = v43;
  *(v30 + 40) = v44;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = 2;
  *(v30 + 72) = v46;
  v17 = sub_21DBF516C();
  v42 = v70;
  if (v33 >> 62)
  {
    v71 = sub_21DBFBD7C();
  }

  else
  {
    v71 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = MEMORY[0x277D84F90];
  if (!v71)
  {
LABEL_56:
    *(v30 + 80) = v17;
    *(v30 + 88) = v42;
    *(v30 + 96) = 0;
    *(v30 + 104) = 0;
    *(v30 + 112) = 2;
    *(v30 + 120) = v72;
    v86 = v31;
    v87 = v33;
    v88 = 1;
    goto LABEL_57;
  }

  v122[0] = MEMORY[0x277D84F90];
  sub_21D18E93C(0, v71 & ~(v71 >> 63), 0);
  if ((v71 & 0x8000000000000000) == 0)
  {
    v104 = v42;
    v108 = v17;
    v72 = v122[0];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v73 = 0;
      LODWORD(v116) = *MEMORY[0x277D45020];
      v74 = (v119 + 104);
      v75 = v113;
      v76 = v109;
      do
      {
        *v76 = MEMORY[0x223D44740](v73, v117);
        (*v74)(v76, v116, v75);
        v122[0] = v72;
        v78 = *(v72 + 16);
        v77 = *(v72 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_21D18E93C((v77 > 1), v78 + 1, 1);
          v72 = v122[0];
        }

        ++v73;
        *(v72 + 16) = v78 + 1;
        (*(v119 + 32))(v72 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v78, v76, v75);
      }

      while (v71 != v73);
    }

    else
    {
      v89 = (v33 + 32);
      LODWORD(v116) = *MEMORY[0x277D45020];
      v111 = *(v119 + 104);
      v112 = v119 + 104;
      v110 = v119 + 32;
      v90 = v113;
      v91 = v107;
      do
      {
        v92 = *v89;
        *v91 = *v89;
        v111(v91, v116, v90);
        v122[0] = v72;
        v93 = *(v72 + 16);
        v94 = *(v72 + 24);
        v95 = v92;
        if (v93 >= v94 >> 1)
        {
          sub_21D18E93C((v94 > 1), v93 + 1, 1);
          v72 = v122[0];
        }

        *(v72 + 16) = v93 + 1;
        (*(v119 + 32))(v72 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v93, v91, v90);
        ++v89;
        --v71;
      }

      while (v71);
    }

    a3 = v114;
    v33 = v117;
    v31 = v118;
    v42 = v104;
    v30 = v105;
    v17 = v108;
    goto LABEL_56;
  }

LABEL_66:
  __break(1u);

  (*v33)(v42, v122);

  __break(1u);
}

void sub_21D562230(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2111E4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D5623AC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D210A84(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562524(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2120C4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D56261C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D211FB8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D56273C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = sub_21DBFBF9C();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70, &unk_21DC1B248);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_21D562840(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2129B0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562960(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    if (!__OFADD__(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10), v3))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(sub_21DBFBD7C(), v3))
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21DADFE64();
  v4 = *v1;
  v5 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21D565B20(v5 + 8 * *(v5 + 0x10) + 32, (*(v5 + 0x18) >> 1) - *(v5 + 0x10), a1);
  v7 = v6;

  if (v7 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 1)
  {
LABEL_9:
    *v1 = v4;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_21D562AA4(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_21D21329C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[24 * v8 + 32], (a1 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562B98(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_21D2132F8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562CDC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2138B4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58670, &qword_21DC1B1C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562DE0(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D213A0C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58660, &unk_21DC1B1B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D562F40(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D213408(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D563038(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_21D2140D8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D563124(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2142F8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D563244(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D214580(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D56333C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2147F8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D56345C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_21D563628(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D212DD4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D563720(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21D2146A4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21D563898(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(sub_21DBFBD7C(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_21D563998()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DD80);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DD80);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderListPickerViewModel.List.list.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 10) = *(v1 + 202);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 202) = *(v1 + 202);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_21D567868(v21, &v20);
}

void sub_21D563B3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v104 = sub_21DBF648C();
  v113 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v9 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v99 = (&v93 - v11);
  MEMORY[0x28223BE20](v12);
  v100 = (&v93 - v13);
  MEMORY[0x28223BE20](v14);
  v101 = &v93 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v93 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v93 - v21);
  v114 = a2;
  sub_21D567410(v20, a1, &v114);
  v24 = v23;
  v111 = v25;
  v112 = v23;
  v105 = v26;
  if ((v26 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0, &qword_21DC0D160);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_21DC08D00;
    v41 = sub_21DBF64CC();
    v42 = [v41 displayName];

    v43 = sub_21DBFA16C();
    v101 = v44;

    if (v24 >> 62)
    {
      v45 = sub_21DBFBD7C();
    }

    else
    {
      v45 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = MEMORY[0x277D84F90];
    if (v45)
    {
      v114 = MEMORY[0x277D84F90];
      sub_21D18E93C(0, v45 & ~(v45 >> 63), 0);
      if (v45 < 0)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v100 = v43;
      v102 = a3;
      v103 = v4;
      v46 = v114;
      if ((v24 & 0xC000000000000001) != 0)
      {
        v47 = 0;
        v110 = *MEMORY[0x277D45028];
        v48 = (v113 + 104);
        v109 = v113 + 32;
        v49 = v104;
        do
        {
          *v22 = MEMORY[0x223D44740](v47, v112);
          (*v48)(v22, v110, v49);
          v114 = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_21D18E93C((v50 > 1), v51 + 1, 1);
            v46 = v114;
          }

          ++v47;
          *(v46 + 16) = v51 + 1;
          (*(v113 + 32))(v46 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v51, v22, v49);
        }

        while (v45 != v47);
      }

      else
      {
        v74 = (v24 + 32);
        v110 = *MEMORY[0x277D45028];
        v108 = *(v113 + 104);
        v109 = v113 + 104;
        v107 = v113 + 32;
        v75 = v104;
        do
        {
          v76 = *v74;
          *v9 = *v74;
          v108(v9, v110, v75);
          v114 = v46;
          v78 = *(v46 + 16);
          v77 = *(v46 + 24);
          v79 = v76;
          if (v78 >= v77 >> 1)
          {
            sub_21D18E93C((v77 > 1), v78 + 1, 1);
            v46 = v114;
          }

          *(v46 + 16) = v78 + 1;
          (*(v113 + 32))(v46 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v78, v9, v75);
          ++v74;
          --v45;
        }

        while (v45);
      }

      a3 = v102;
      v24 = v112;
      v43 = v100;
    }

    v59 = v106;
    v80 = v101;
    *(v106 + 32) = v43;
    *(v59 + 40) = v80;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 1;
    *(v59 + 72) = v46;
    v64 = v111;
LABEL_51:
    sub_21D56781C(v24, v64, v105 & 1);
    *a3 = v59;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0, &qword_21DC0D160);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_21DC08D20;
  v27 = sub_21DBF64CC();
  v28 = [v27 displayName];

  v29 = sub_21DBFA16C();
  v98 = v30;

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v31 = qword_280D1BAB0;
  v33 = sub_21DBF516C();
  v97 = v31;
  if (v24 >> 62)
  {
    v88 = v32;
    v89 = sub_21DBFBD7C();
    v32 = v88;
    v34 = v89;
  }

  else
  {
    v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  v102 = a3;
  v103 = v4;
  if (!v34)
  {
    goto LABEL_29;
  }

  v96 = v32;
  v114 = MEMORY[0x277D84F90];
  sub_21D18E93C(0, v34 & ~(v34 >> 63), 0);
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v94 = v33;
  v95 = v29;
  v35 = v114;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v36 = 0;
    v110 = *MEMORY[0x277D45028];
    v37 = (v113 + 104);
    v109 = v113 + 32;
    v38 = v104;
    do
    {
      *v18 = MEMORY[0x223D44740](v36, v112);
      (*v37)(v18, v110, v38);
      v114 = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21D18E93C((v39 > 1), v40 + 1, 1);
        v35 = v114;
      }

      ++v36;
      *(v35 + 16) = v40 + 1;
      (*(v113 + 32))(v35 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v40, v18, v38);
    }

    while (v34 != v36);
  }

  else
  {
    v52 = (v24 + 32);
    v110 = *MEMORY[0x277D45028];
    v108 = *(v113 + 104);
    v109 = v113 + 104;
    v107 = v113 + 32;
    v53 = v104;
    v54 = v100;
    do
    {
      v55 = *v52;
      *v54 = *v52;
      v108(v54, v110, v53);
      v114 = v35;
      v56 = *(v35 + 16);
      v57 = *(v35 + 24);
      v58 = v55;
      if (v56 >= v57 >> 1)
      {
        sub_21D18E93C((v57 > 1), v56 + 1, 1);
        v35 = v114;
      }

      *(v35 + 16) = v56 + 1;
      (*(v113 + 32))(v35 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v56, v54, v53);
      ++v52;
      --v34;
    }

    while (v34);
  }

  a3 = v102;
  v33 = v94;
  v29 = v95;
  v32 = v96;
LABEL_29:
  v59 = v106;
  v60 = v98;
  *(v106 + 32) = v29;
  *(v59 + 40) = v60;
  *(v59 + 48) = v33;
  *(v59 + 56) = v32;
  *(v59 + 64) = 0;
  *(v59 + 72) = v35;
  v61 = sub_21DBF516C();
  v63 = v62;
  v64 = v111;
  if (v111 >> 62)
  {
    v90 = v111;
    v91 = v63;
    v92 = sub_21DBFBD7C();
    v63 = v91;
    v64 = v90;
    v65 = v92;
  }

  else
  {
    v65 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = MEMORY[0x277D84F90];
  v24 = v112;
  if (!v65)
  {
LABEL_50:
    *(v59 + 80) = v61;
    *(v59 + 88) = v63;
    *(v59 + 96) = 0;
    *(v59 + 104) = 0;
    *(v59 + 112) = 2;
    *(v59 + 120) = v66;
    goto LABEL_51;
  }

  v100 = v63;
  v67 = v64;
  v114 = MEMORY[0x277D84F90];
  sub_21D18E93C(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v98 = v61;
    v66 = v114;
    if ((v67 & 0xC000000000000001) != 0)
    {
      v68 = 0;
      v110 = *MEMORY[0x277D45020];
      v69 = (v113 + 104);
      v109 = v113 + 32;
      v70 = v104;
      v71 = v101;
      do
      {
        *v71 = MEMORY[0x223D44740](v68, v111);
        (*v69)(v71, v110, v70);
        v114 = v66;
        v73 = *(v66 + 16);
        v72 = *(v66 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_21D18E93C((v72 > 1), v73 + 1, 1);
          v66 = v114;
        }

        ++v68;
        *(v66 + 16) = v73 + 1;
        (*(v113 + 32))(v66 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v73, v71, v70);
      }

      while (v65 != v68);
    }

    else
    {
      v81 = (v67 + 32);
      v110 = *MEMORY[0x277D45020];
      v108 = *(v113 + 104);
      v109 = v113 + 104;
      v107 = v113 + 32;
      v82 = v99;
      v83 = v104;
      do
      {
        v84 = *v81;
        *v82 = *v81;
        v108(v82, v110, v83);
        v114 = v66;
        v86 = *(v66 + 16);
        v85 = *(v66 + 24);
        v87 = v84;
        if (v86 >= v85 >> 1)
        {
          sub_21D18E93C((v85 > 1), v86 + 1, 1);
          v66 = v114;
        }

        *(v66 + 16) = v86 + 1;
        (*(v113 + 32))(v66 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v86, v82, v83);
        ++v81;
        --v65;
      }

      while (v65);
    }

    a3 = v102;
    v64 = v111;
    v24 = v112;
    v59 = v106;
    v61 = v98;
    v63 = v100;
    goto LABEL_50;
  }

LABEL_57:
  __break(1u);
}