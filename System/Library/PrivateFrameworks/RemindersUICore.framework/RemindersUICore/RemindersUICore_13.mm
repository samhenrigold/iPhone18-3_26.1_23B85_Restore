void TTRRemindersListInteractor.updateMembershipsOfRemindersInList(recurrentReminders:clonedByOriginalID:saveRequest:)(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v92 = a3;
  v113 = a2;
  v100 = sub_21DBF563C();
  v90 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF6F8C();
  v9 = *(v8 - 8);
  v116 = v8;
  v117 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF719C();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v96 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF6DBC();
  v94 = *(v14 - 8);
  v95 = v14;
  MEMORY[0x28223BE20](v14);
  v93 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21DBF714C();
  v109 = *(v111 - 1);
  MEMORY[0x28223BE20](v111);
  *&v110 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21DBF734C();
  *&v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v108 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF71BC();
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF70DC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21DBF738C();
  isa = v25[-1].isa;
  v105 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70, &unk_21DC09E80);
  v91 = *(v101 - 8);
  v28 = MEMORY[0x28223BE20](v101);
  v112 = v89 - v29;
  v114 = a1;
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  v115 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v115)
  {
    return;
  }

  while (1)
  {
    v118 = v114 & 0xC000000000000001;
    if ((v114 & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x223D44740](0, v28);
LABEL_6:
    v31 = v30;
    v32 = [v30 list];

    if (!v32)
    {
      return;
    }

    v89[1] = *(v5 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
    (*(v22 + 13))(v24, *MEMORY[0x277D45420], v21);
    (*(v102 + 104))(v20, *MEMORY[0x277D45468], v103);
    (*(v106 + 104))(v108, *MEMORY[0x277D45500], v107);
    (*(v109 + 104))(v110, *MEMORY[0x277D45458], v111);
    sub_21DBF737C();
    v20 = 0;
    sub_21DBF6D0C();
    *&v110 = v32;
    v111 = v5;
    (*(isa + 1))(v27, v105);
    v22 = v93;
    v45 = sub_21DBF76DC();
    v46 = v96;
    MEMORY[0x223D3F550](v45);
    (*(v94 + 8))(v22, v95);
    v24 = sub_21DBF718C();
    (*(v97 + 8))(v46, v98);
    v126[0] = MEMORY[0x277D84F98];
    v4 = *(v24 + 2);
    if (!v4)
    {
      v116 = MEMORY[0x277D84F98];
LABEL_17:

      v48 = v110;
      v49 = v92;
      TTRRemindersListInteractor.undoContext.getter(v126);
      sub_21D0D3954(v126, v125, &unk_27CE60D80, &unk_21DC093F0);
      v50 = [v49 updateList_];
      sub_21D0D3954(v125, v123, &unk_27CE60D80, &unk_21DC093F0);
      v51 = v113;
      v52 = v114;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v53 = qword_280D1AA18;
      sub_21D0CF7E0(v125, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      inited = swift_initStackObject();
      v121 = type metadata accessor for TTRUserDefaults();
      v122 = &protocol witness table for TTRUserDefaults;
      *&v120 = v53;
      v55 = v53;
      sub_21D0CF7E0(v126, &unk_27CE60D80, &unk_21DC093F0);
      *(inited + 64) = 0;
      v111 = v50;
      *(inited + 16) = v50;
      v56 = v124;
      v57 = v123[1];
      *(inited + 24) = v123[0];
      *(inited + 40) = v57;
      *(inited + 56) = v56;
      swift_beginAccess();
      *(inited + 64) = 0;
      v107 = inited;
      sub_21D0D0FD0(&v120, inited + 72);
      v108 = v48;

      v58 = v115;
      if (v115 < 1)
      {
        __break(1u);

        (*v51)(v50, v48);

        __break(1u);
        return;
      }

      v59 = 0;
      v60 = v51 & 0xC000000000000001;
      v61 = v51 & 0xFFFFFFFFFFFFFF8;
      if (v51 < 0)
      {
        v61 = v51;
      }

      v117 = v61;
      v109 = v90 + 8;
      *(&v62 + 1) = 3;
      v110 = xmmword_21DC09CF0;
      *&v62 = 138412290;
      v106 = v62;
      while (2)
      {
        if (v118)
        {
          v64 = MEMORY[0x223D44740](v59, v52);
        }

        else
        {
          v64 = *(v52 + 8 * v59 + 32);
        }

        v65 = v64;
        v66 = [v64 objectID];
        v67 = v66;
        if (v60)
        {
          v68 = v66;
          v69 = sub_21DBFC2CC();

          if (v69)
          {
            v119 = v69;
            sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
            swift_dynamicCast();
            v63 = v120;

            if (!v63)
            {
LABEL_25:
              ++v59;

              if (v58 == v59)
              {

                (*(v91 + 8))(v112, v101);
                return;
              }

              continue;
            }

LABEL_36:
            v72 = [v65 objectID];
            v73 = v72;
            v74 = v116;
            if (*(v116 + 16) && (v75 = sub_21D17E07C(v72), (v76 & 1) != 0))
            {
              v77 = *(*(v74 + 56) + 8 * v75);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
              v78 = swift_initStackObject();
              *(v78 + 16) = v110;
              *(v78 + 32) = [v63 remObjectID];
              sub_21D1CE198(v78);
              swift_setDeallocating();
              swift_arrayDestroy();
              v79 = [v111 sectionsContextChangeItem];
              if (v79)
              {
                v80 = v79;
                v77 = v77;
                v81 = v99;
                sub_21DBF560C();
                sub_21D0D8CF0(0, &qword_27CE59228, 0x277D446B0);
                sub_21DBF815C();

                (*v109)(v81, v100);

                v63 = v80;
                goto LABEL_46;
              }

              if (qword_27CE56580 != -1)
              {
                swift_once();
              }

              v82 = sub_21DBF84BC();
              __swift_project_value_buffer(v82, qword_27CE591E0);
              v83 = sub_21DBF84AC();
              v84 = sub_21DBFAECC();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                v86 = swift_slowAlloc();
                v105 = v77;
                v87 = v86;
                *v85 = v106;
                v88 = [v111 objectID];
                *(v85 + 4) = v88;
                *v87 = v88;
                _os_log_impl(&dword_21D0C9000, v83, v84, "Failed to update memberships of reminders in sections because list does not support sections {listID: %@}", v85, 0xCu);
                sub_21D0CF7E0(v87, &unk_27CE60070, &unk_21DC09550);
                MEMORY[0x223D46520](v87, -1, -1);
                MEMORY[0x223D46520](v85, -1, -1);

                v65 = v83;
              }

              else
              {

                v63 = v83;
LABEL_46:
                v65 = v77;
              }

              v51 = v113;
              v52 = v114;
            }

            else
            {
            }

            v58 = v115;
LABEL_24:

            goto LABEL_25;
          }
        }

        else if (*(v51 + 16))
        {
          v70 = sub_21D17E07C(v66);
          if (v71)
          {
            v63 = *(*(v51 + 56) + 8 * v70);

            if (!v63)
            {
              goto LABEL_25;
            }

            goto LABEL_36;
          }
        }

        break;
      }

      v63 = v67;
      goto LABEL_24;
    }

    v21 = 0;
    v5 = (v117 + 16);
    v27 = (v117 + 8);
    while (v21 < *(v24 + 2))
    {
      v22 = v116;
      v47.n128_f64[0] = (*(v117 + 16))(v11, &v24[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v21], v116);
      sub_21D1FCE38(v126, v11, v47);
      ++v21;
      (*v27)(v11, v22);
      if (v4 == v21)
      {
        v116 = v126[0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_52:
    v115 = sub_21DBFBD7C();
    if (!v115)
    {
      return;
    }
  }

  if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v114 + 32);
    goto LABEL_6;
  }

  __break(1u);
  swift_once();
  v33 = sub_21DBF84BC();
  __swift_project_value_buffer(v33, qword_280D0F228);
  v34 = v4;
  v35 = v20;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEBC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v126[0] = v40;
    *v38 = 138543618;
    v41 = [v34 objectID];
    *(v38 + 4) = v41;
    *v39 = v41;
    *(v38 + 12) = 2082;
    swift_getErrorValue();
    v42 = sub_21DBFC75C();
    v44 = sub_21D0CDFB4(v42, v43, v126);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_21D0C9000, v36, v37, "Failed to fetch sections in list {listID: %{public}@, error: %{public}s}", v38, 0x16u);
    sub_21D0CF7E0(v39, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223D46520](v40, -1, -1);
    MEMORY[0x223D46520](v38, -1, -1);
  }

  else
  {
  }
}

void sub_21D1FCE38(void *a1, uint64_t a2, __n128 a3)
{
  v56 = a1;
  v5 = sub_21DBF6D7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF6F4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF6F7C();
  v14 = *(v13 + 16);
  v53 = v3;
  if (v14)
  {
    v50 = v12;
    v51 = v10;
    v52 = v9;
    v54 = a2;
    v58 = MEMORY[0x277D84F90];
    v15 = v13;
    sub_21DBFC01C();
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v57 = v17;
    v18 = *(v16 + 64);
    v49[1] = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v55 = *(v16 + 56);
    do
    {
      v57(v8, v19, v5);
      sub_21DBF6D5C();
      (*(v16 - 8))(v8, v5);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v19 += v55;
      --v14;
    }

    while (v14);

    isUniquelyReferenced_nonNull_native = v58;
    v10 = v51;
    v9 = v52;
    v12 = v50;
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  sub_21DBF6F5C();
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == *MEMORY[0x277D453E0])
  {
    (*(v10 + 96))(v12, v9);
    v57 = *v12;
  }

  else
  {
    if (v21 != *MEMORY[0x277D453D8])
    {
LABEL_36:
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v45 = sub_21DBF84BC();
      __swift_project_value_buffer(v45, qword_280D0F228);
      v46 = MEMORY[0x277D84F90];
      v47 = sub_21D17716C(MEMORY[0x277D84F90]);
      v48 = sub_21D17716C(v46);
      sub_21DAEAB00("Unknown section type", 20, 2, v47, v48);
      __break(1u);
      return;
    }

    v57 = 0;
  }

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v23 = 0;
    v54 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v55 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    while (1)
    {
      if (v55)
      {
        v26 = MEMORY[0x223D44740](v23, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v23 >= *(v54 + 16))
        {
          goto LABEL_33;
        }

        v26 = *(isUniquelyReferenced_nonNull_native + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v29 = isUniquelyReferenced_nonNull_native;
      v30 = v57;
      v31 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v31;
      v32 = v58;
      v33 = sub_21D17E07C(v27);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_31;
      }

      v39 = v34;
      if (v32[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v33;
          sub_21D221228();
          v33 = v44;
        }
      }

      else
      {
        sub_21D217444(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_21D17E07C(v27);
        if ((v39 & 1) != (v40 & 1))
        {
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          sub_21DBFC70C();
          __break(1u);
          goto LABEL_36;
        }
      }

      isUniquelyReferenced_nonNull_native = v29;
      v41 = v58;
      if (v39)
      {
        v24 = v58[7];
        v25 = *(v24 + 8 * v33);
        *(v24 + 8 * v33) = v57;
      }

      else
      {
        v58[(v33 >> 6) + 8] |= 1 << v33;
        *(v41[6] + 8 * v33) = v27;
        *(v41[7] + 8 * v33) = v57;
        v42 = v41[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_32;
        }

        v41[2] = v43;
      }

      *v56 = v41;
      ++v23;
      if (v28 == i)
      {

        return;
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
    ;
  }
}

void TTRRemindersListInteractor.addAttachments(_:to:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - v6;
  v7 = type metadata accessor for TTRUnsavedAttachment(0);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v37 - v12;
  v14 = [a2 attachmentContext];
  if (v14)
  {

    v43 = a1[2];
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21DC09CF0;
      *(v15 + 32) = a2;
      v38 = v15 + 32;
      v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
      v17 = a2;
      TTRRemindersListInteractor.undoContext.getter(v50);
      v44 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      [v44 setSaveIsNoopIfNoChangedKeys_];
      v40 = v15;
      v42 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        v18 = 0;
        v41 = v40 & 0xC000000000000001;
        v47._rawValue = a1;
        do
        {
          if (v41)
          {
            v21 = MEMORY[0x223D44740](v18, v40);
          }

          else
          {
            v21 = *(v38 + 8 * v18);
          }

          v22 = v21;
          v46 = v18 + 1;
          sub_21D0D3954(v50, aBlock, &unk_27CE60D80, &unk_21DC093F0);
          v23 = v44;
          v24 = [v23 updateReminder_];
          sub_21D0D3954(aBlock, v49, &unk_27CE60D80, &unk_21DC093F0);
          type metadata accessor for TTRReminderEditor();
          v25 = swift_allocObject();
          *(v25 + 72) = 0;
          *(v25 + 16) = v24;
          sub_21D0D3954(v49, v25 + 24, &unk_27CE60D80, &unk_21DC093F0);
          *(v25 + 64) = 0;
          v26 = v24;
          v27 = [v26 fetchedCurrentDueDateDeltaAlert];

          sub_21D0CF7E0(v49, &unk_27CE60D80, &unk_21DC093F0);
          sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
          v28 = *(v25 + 72);
          *(v25 + 72) = v27;

          v29 = v47._rawValue + ((*(v45 + 80) + 32) & ~*(v45 + 80));
          v30 = *(v45 + 72);
          v31 = v43;
          while (1)
          {
            sub_21D107480(v29, v13, type metadata accessor for TTRUnsavedAttachment);
            sub_21D1073B0(v13, v9, type metadata accessor for TTRUnsavedAttachment);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            sub_21D22C2F4(v9, type metadata accessor for TTRUnsavedAttachment);
            if (EnumCaseMultiPayload == 4)
            {
              break;
            }

            v29 += v30;
            if (!--v31)
            {
              goto LABEL_6;
            }
          }

          v19 = sub_21DBF54CC();
          v20 = v39;
          (*(*(v19 - 8) + 56))(v39, 1, 1, v19);
          TTRReminderEditor.edit(url:)(v20);
          sub_21D0CF7E0(v20, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_6:
          TTRReminderEditor.add(attachments:)(v47);

          v18 = v46;
        }

        while (v46 != v42);
      }

      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v33 = sub_21DBFB12C();
      v34 = swift_allocObject();
      v34[3] = 0;
      v34[4] = 0;
      v34[2] = v40;
      aBlock[4] = sub_21D22D514;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D11E5E4;
      aBlock[3] = &block_descriptor_56;
      v35 = _Block_copy(aBlock);

      v36 = v44;
      [v44 saveWithQueue:v33 completion:v35];
      _Block_release(v35);

      sub_21D0CF7E0(v50, &unk_27CE60D80, &unk_21DC093F0);
    }
  }
}

void sub_21D1FD8F0(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v22 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v22 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v15 = sub_21DBFB12C();
    v16 = swift_allocObject();
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = a1;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_298;
    v17 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v22 saveWithQueue:v15 completion:v17];
    _Block_release(v17);

    return;
  }

  v5 = sub_21DBFBD7C();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v18 = a1 & 0xC000000000000001;
    v19 = a1;
    do
    {
      if (v18)
      {
        v7 = MEMORY[0x223D44740](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_21D0D3954(a3, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v9 = v22;
      v10 = [v9 updateReminder_];
      sub_21D0D3954(aBlock, v24, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v11 = swift_allocObject();
      *(v11 + 72) = 0;
      *(v11 + 16) = v10;
      sub_21D0D3954(v24, v11 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v11 + 64) = 0;
      v12 = v10;
      v13 = [v12 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v24, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v14 = *(v11 + 72);
      *(v11 + 72) = v13;

      v24[0] = v11;
      a4(v24);

      a1 = v19;
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

double TTRRemindersListInteractor.removeAttachment(_:from:)(uint64_t a1, id a2)
{
  v4 = [a2 attachmentContext];
  if (!v4)
  {
    return result;
  }

  v6 = v4;
  v7 = [v4 attachments];

  sub_21D0D8CF0(0, &qword_280D0C310, 0x277D445A0);
  v8 = sub_21DBFA5EC();

  v40 = v2;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_27:

    return result;
  }

LABEL_26:
  v9 = sub_21DBFBD7C();
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_4:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D44740](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v14 = [v12 objectID];
    v15 = sub_21DBFB63C();

    if (v15)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = a2;
  v17 = *(v40 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v18 = a2;
  TTRRemindersListInteractor.undoContext.getter(v48);
  v39 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v39 setSaveIsNoopIfNoChangedKeys_];
  v41 = v16;
  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x223D44740](i, v41);
      }

      else
      {
        v21 = *(v41 + 8 * i + 32);
      }

      v22 = v21;
      sub_21D0D3954(v48, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v23 = v39;
      v24 = [v23 updateReminder_];
      sub_21D0D3954(aBlock, &v46, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v25 = swift_allocObject();
      *(v25 + 72) = 0;
      *(v25 + 16) = v24;
      sub_21D0D3954(&v46, v25 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v25 + 64) = 0;
      v26 = v24;
      v27 = [v26 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(&v46, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v28 = *(v25 + 72);
      *(v25 + 72) = v27;

      v29 = [*(v25 + 16) attachmentContext];
      if (v29)
      {
        v30 = v29;
        [v29 removeAttachment_];
        v31 = swift_allocObject();
        *(v31 + 16) = v12;
        v43 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v32 = *(v25 + 16);
        v33 = v12;
        aBlock[0] = [v32 objectID];
        v34 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
        *&v46 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_21DC08D00;
        sub_21D0CEB98(aBlock, v35 + 32);
        sub_21D0CF2E8(&v46, (v35 + 64));
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        sub_21D1C442C(v35, sub_21D228D5C, v31);
      }

      else
      {
      }
    }
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v36 = sub_21DBFB12C();
  v37 = swift_allocObject();
  v37[3] = 0;
  v37[4] = 0;
  v37[2] = v41;
  v44 = sub_21D22D514;
  v45 = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  v43 = &block_descriptor_63;
  v38 = _Block_copy(aBlock);

  [v39 saveWithQueue:v36 completion:v38];
  _Block_release(v38);

  sub_21D0CF7E0(v48, &unk_27CE60D80, &unk_21DC093F0);
  return result;
}

void TTRRemindersListInteractor.paste(_:in:after:with:updateProperties:)(uint64_t a1, uint64_t a2, void *a3, void **a4, void (*a5)(id, uint64_t, uint64_t), uint64_t a6)
{
  v10 = *a4;
  v11 = *(v6 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v12 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v12 setNotifyChangeDelegate_];
  v13 = [v11 refreshList_];
  v14 = v12;
  TTRRemindersListInteractor.undoContext.getter(aBlock);
  sub_21D0D3954(aBlock, v35, &unk_27CE60D80, &unk_21DC093F0);
  v15 = [v14 updateList_];
  sub_21D0D3954(v35, v33, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v16 = qword_280D1AA18;
  sub_21D0CF7E0(v35, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  v17 = swift_allocObject();
  v31 = type metadata accessor for TTRUserDefaults();
  v32 = &protocol witness table for TTRUserDefaults;
  *&v30 = v16;
  v18 = v16;
  sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
  *(v17 + 64) = 0;
  *(v17 + 16) = v15;
  v19 = v33[1];
  *(v17 + 24) = v33[0];
  *(v17 + 40) = v19;
  *(v17 + 56) = v34;
  swift_beginAccess();
  *(v17 + 64) = 0;
  sub_21D0D0FD0(&v30, v17 + 72);

  TTRListEditor.paste(_:after:updateProperties:)(a1, a3, a5, a6);
  if (v10 > 1)
  {
    v21 = v20;
    sub_21D15751C(v10);
    v22 = sub_21D19ED08(v21);

    aBlock[0] = v10;
    TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v22, aBlock, 0);

    sub_21D157878(v10);
  }

  else
  {
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v23 = sub_21DBFB12C();
  v24 = swift_allocObject();
  v24[2] = v13;
  aBlock[4] = sub_21D228D64;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_72;
  v25 = _Block_copy(aBlock);
  v26 = v13;

  [v14 saveWithQueue:v23 completion:v25];
  _Block_release(v25);
}

void sub_21D1FE53C(NSObject *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F228);
    v6 = a1;
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v10 = 136315394;
      swift_getErrorValue();
      v13 = sub_21DBFC74C();
      v15 = sub_21D0CDFB4(v13, v14, &v25);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = [v7 objectID];
      *(v10 + 14) = v16;
      *v11 = v16;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to paste reminders {error: %s, list.objectID: %@}", v10, 0x16u);
      sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

      return;
    }

    v23 = a1;
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F228);
    v18 = a2;
    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v18 objectID];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Pasted reminders {list.objectID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    v23 = oslog;
  }
}

double TTRRemindersListInteractor.confirm(siriFoundInAppsReminder:)(void *a1)
{
  v2 = sub_21D1FF5E0();
  if (v2)
  {
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC09CF0;
    *(v8 + 32) = a1;
    v9 = a1;
    TTRRemindersListInteractor.confirm(siriFoundInAppsReminders:into:)(v8, v7);
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F228);
    oslog = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v4, "No default list to confirm reminder. Giving up.", v5, 2u);
      MEMORY[0x223D46520](v5, -1, -1);
    }
  }

  return result;
}

void TTRRemindersListInteractor.confirm(siriFoundInAppsReminders:into:)(unint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v5 setNotifyChangeDelegate_];
  v16 = [v5 updateList_];
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v12 = sub_21DBFB12C();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_21D228D6C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_78_0;
    v14 = _Block_copy(aBlock);
    sub_21DBF8E0C();
    v15 = a2;

    [v5 saveWithQueue:v12 completion:v14];
    _Block_release(v14);

    return;
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v5 updateReminder_];
      v11 = [v10 confirmForSiriFoundInAppsAppendingToList_];
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D1FECA0(_DWORD *a1, unint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    v7 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F228);
    v9 = v6;
    sub_21DBF8E0C();
    v10 = a3;
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();

    if (os_log_type_enabled(v11, v12))
    {
      v46 = v10;
      LODWORD(oslog) = v12;
      v13 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v13 = 136315650;
      swift_getErrorValue();
      v14 = sub_21DBFC74C();
      v16 = sub_21D0CDFB4(v14, v15, &v50);

      *(v13 + 4) = v16;
      *(v13 + 6) = 2080;
      if (a2 >> 62)
      {
        v17 = sub_21DBFBD7C();
      }

      else
      {
        v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x277D84F90];
      v19 = &off_278331000;
      if (!v17)
      {
LABEL_30:
        v32 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v33 = MEMORY[0x223D42DB0](v18, v32);
        v35 = v34;

        v36 = sub_21D0CDFB4(v33, v35, &v50);

        *(v13 + 14) = v36;
        *(v13 + 11) = 2112;
        v37 = [v46 objectID];
        *(v13 + 3) = v37;
        *v44 = v37;
        _os_log_impl(&dword_21D0C9000, v11, oslog, "Unable to save when confirming reminders {error: %s, reminderIDs: %s, listID: %@}", v13, 0x20u);
        sub_21D0CF7E0(v44, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v44, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v45, -1, -1);
        MEMORY[0x223D46520](v13, -1, -1);

        return;
      }

      v48 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x223D44740](v20, a2);
          }

          else
          {
            v21 = *(a2 + 8 * v20 + 32);
          }

          v22 = v21;
          ++v20;
          v23 = [v21 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v17 != v20);
        v18 = v48;
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_38;
    }

    v31 = v6;

LABEL_28:

    return;
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_280D0F228);
  sub_21DBF8E0C();
  v13 = a3;
  oslog = sub_21DBF84AC();
  LOBYTE(v11) = sub_21DBFAEDC();

  if (!os_log_type_enabled(oslog, v11))
  {
    v31 = oslog;

    goto LABEL_28;
  }

  v6 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v50 = v3;
  *v6 = 136315394;
  if (!(a2 >> 62))
  {
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_38:
  v25 = sub_21DBFBD7C();
LABEL_19:
  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
LABEL_35:
    v38 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v39 = MEMORY[0x223D42DB0](v26, v38);
    v41 = v40;

    v42 = sub_21D0CDFB4(v39, v41, &v50);

    *(v6 + 1) = v42;
    *(v6 + 6) = 2112;
    v43 = [v13 objectID];
    *(v6 + 14) = v43;
    *v19 = v43;
    _os_log_impl(&dword_21D0C9000, oslog, v11, "Successfully confirmed reminders {reminderIDs: %s, listID: %@}", v6, 0x16u);
    sub_21D0CF7E0(v19, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x223D46520](v3, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);

    return;
  }

  v49 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x223D44740](v27, a2);
      }

      else
      {
        v28 = *(a2 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      v30 = [v28 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v25 != v27);
    v26 = v49;
    goto LABEL_35;
  }

  __break(1u);
}

Swift::Void __swiftcall TTRRemindersListInteractor.reject(siriFoundInAppsReminders:)(Swift::OpaquePointer siriFoundInAppsReminders)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v3 setNotifyChangeDelegate_];
  if (!(siriFoundInAppsReminders._rawValue >> 62))
  {
    v4 = *((siriFoundInAppsReminders._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v9 = sub_21DBFB12C();
    v10 = swift_allocObject();
    v10[2]._rawValue = siriFoundInAppsReminders._rawValue;
    v12[4] = sub_21D228D74;
    v12[5] = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_21D11E5E4;
    v12[3] = &block_descriptor_84_0;
    v11 = _Block_copy(v12);
    sub_21DBF8E0C();

    [v3 saveWithQueue:v9 completion:v11];
    _Block_release(v11);

    return;
  }

  v4 = sub_21DBFBD7C();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((siriFoundInAppsReminders._rawValue & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, siriFoundInAppsReminders._rawValue);
      }

      else
      {
        v6 = *(siriFoundInAppsReminders._rawValue + v5 + 4);
      }

      v7 = v6;
      ++v5;
      v8 = [v3 updateReminder_];
      [v8 rejectForSiriFoundInApps];
    }

    while (v4 != v5);
    goto LABEL_10;
  }

  __break(1u);
}

Swift::Void __swiftcall TTRRemindersListInteractor.registerUndo(forEditing:byDraining:)(RemindersUICore::TTRUndoNavigationEditingTarget forEditing, NSUndoManager *byDraining)
{
  v4 = *forEditing.itemIDs._rawValue;
  TTRRemindersListInteractor.undoContext.getter(v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = v4;
    TTRUndoContext.registerUndo(forEditing:byDraining:groupSavesInto:)(&v7, byDraining, *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store), v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_21D0CF7E0(v8, &unk_27CE60D80, &unk_21DC093F0);
  }
}

id sub_21D1FF5E0()
{
  v1 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_defaultListType];
  if (v2)
  {
    if (v2 != 1)
    {
      v8 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
      v23[0] = 0;
      v6 = [v8 fetchDefaultListRequiringCloudKitAccountWithAccountID:v2 error:v23];
      if (!v23[0])
      {
        sub_21D22BF80(v2);
        return v6;
      }

      v7 = v23[0];

      swift_willThrow();
      sub_21D22BF80(v2);
      goto LABEL_9;
    }

    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
    v23[0] = 0;
    v4 = [v3 fetchDefaultListRequiringCloudKitWithError_];
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
    v23[0] = 0;
    v4 = [v5 fetchDefaultListWithError_];
  }

  v6 = v4;
  if (!v23[0])
  {
    return v6;
  }

  v7 = v23[0];

  swift_willThrow();
LABEL_9:
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  v6 = __swift_project_value_buffer(v9, qword_280D0F228);
  v10 = v1;
  v11 = v7;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v23[0] = v15;
    v16 = TTRRemindersListDefaultListType.description.getter();
    v18 = sub_21D0CDFB4(v16, v17, v23);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_21DBFC75C();
    v6 = v20;
    v21 = sub_21D0CDFB4(v19, v20, v23);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_21D0C9000, v12, v13, "Failed to fetch default list {defaultListType: %s, error: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  swift_willThrow();
  return v6;
}

uint64_t TTRRemindersListInteractor.fetchGrocerySuggestedSectionName(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_21DBFA84C();
  v3[9] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x2822009F8](sub_21D1FF968, v5, v4);
}

uint64_t sub_21D1FF968()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_21D1FFA10;
  v3 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2821A7CB8](v3, v2);
}

uint64_t sub_21D1FFA10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_21D1FFB9C;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_21D1FFB38;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D1FFB38()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D1FFB9C()
{
  v17 = v0;

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F228);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC74C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "Failed to fetch suggested Sections Name {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

id TTRRemindersListInteractor.createFallbackListForReminderCreationWhenDefaultListIsMissing()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v26[0] = 0;
  v2 = [v1 fetchDefaultAccountWithError_];
  v3 = v2;
  if (v26[0])
  {
    v4 = v26[0];

    swift_willThrow();
LABEL_3:
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F228);
    v6 = v4;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC75C();
      v13 = sub_21D0CDFB4(v11, v12, v26);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to create default list {error: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (!v2)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F228);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAEBC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v17, v18, "No default account existed when creating new default list", v19, 2u);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    return 0;
  }

  v26[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC09CF0;
  *(v14 + 32) = v3;
  v15 = v3;
  sub_21D200150(v14, v0, v26);

  if (!v26[0])
  {
    sub_21D228DA0();
    v4 = swift_allocError();
    swift_willThrow();
LABEL_21:

    goto LABEL_3;
  }

  v25 = 0;
  v21 = v26[0];
  v22 = [v1 fetchListWithObjectID:v21 error:&v25];
  v23 = v25;
  if (!v22)
  {
    v24 = v23;
    v4 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_21;
  }

  return v22;
}

void sub_21D200150(unint64_t a1, uint64_t a2, void **a3)
{
  v41[5] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v41);
  v35 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v35 setSaveIsNoopIfNoChangedKeys_];
  v30 = a1 >> 62;
  if (a1 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v32 = a1 & 0xC000000000000001;
  v31 = sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  v7 = 0;
  v33 = a1;
  do
  {
    if (v32)
    {
      v8 = MEMORY[0x223D44740](v7, a1);
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    sub_21D0D3954(v41, &v38, &unk_27CE60D80, &unk_21DC093F0);
    v10 = [v35 updateAccount_];

    type metadata accessor for TTRAccountEditor();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v39;
    *(v11 + 24) = v38;
    *(v11 + 40) = v12;
    *(v11 + 56) = v40;
    *(v11 + 64) = 0;
    sub_21DBFA16C();
    v13 = [v10 saveRequest];
    v14 = sub_21DBFA12C();
    v15 = [v13 addListWithName:v14 toAccountChangeItem:v10];

    v16 = [v15 objectID];
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(&v39 + 1) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v18 = *(v11 + 16);
    v19 = v16;
    *&v38 = [v18 objectID];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584D8, &unk_21DC0D0C0);
    *&v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21DC08D00;
    sub_21D0CEB98(&v38, v20 + 32);
    sub_21D0CF2E8(&v36, (v20 + 64));
    __swift_destroy_boxed_opaque_existential_0(&v38);
    sub_21D1C54B4(v20, sub_21D22C66C, v17);

    v21 = *a3;
    *a3 = v19;

    a1 = v33;
  }

  while (v6 != v7);
LABEL_10:
  sub_21D0CF7E0(v41, &unk_27CE60D80, &unk_21DC093F0);
  v41[0] = 0;
  v3 = v35;
  if (![v35 saveSynchronouslyWithError_])
  {
    v29 = v41[0];
    sub_21DBF52DC();

    swift_willThrow();
    return;
  }

  v22 = qword_280D17ED0;
  v23 = v41[0];
  if (v22 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_280D0F228);
  sub_21DBF8E0C();
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAE9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (v30)
    {
      v28 = sub_21DBFBD7C();
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v28;

    _os_log_impl(&dword_21D0C9000, v25, v26, "Did perform synchronous oneshot edit {items.count: %ld}", v27, 0xCu);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  else
  {
  }
}

id TTRRemindersListInteractor.fetchList(with:)(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v16[0] = 0;
  v4 = [v3 fetchListWithObjectID:a1 error:v16];
  v5 = v16[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F228);
    v9 = a1;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Failed to fetch list {objectID: %@}", v12, 0xCu);
      sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    return 0;
  }

  return v4;
}

uint64_t TTRRemindersListInteractor.advanceForward(_:afterDateForReminder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v7);
  v9 = type metadata accessor for TTRReminderEditor();
  v10 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v17);
  v15 = a2;
  v16 = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = *(v8 + 8);
  sub_21DBF8E0C();
  v12(v9, a1, v10, v17, sub_21D228DF4, v14, sub_21D228DFC, v11, v9, &protocol witness table for TTRReminderEditor, v7, v8);

  return sub_21D0CF7E0(v17, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D200978(uint64_t *a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v12 - v6;
  v8 = *a1;
  if (a2)
  {
    v9 = [*(v8 + 16) objectID];
    a2();
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  TTRReminderEditor.advanceForwardRecurrence(after:)(v7);
  return sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
}

void sub_21D200A9C(NSObject *a1, unint64_t a2, char *a3, const char *a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F228);
    sub_21DBF8E0C();
    v9 = v6;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46 = v13;
      *v12 = 136315394;
      swift_getErrorValue();
      v14 = sub_21DBFC75C();
      v16 = sub_21D0CDFB4(v14, v15, &v46);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      if (a2 >> 62)
      {
        v17 = sub_21DBFBD7C();
      }

      else
      {
        v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x277D84F90];
      if (!v17)
      {
LABEL_30:
        v31 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v32 = MEMORY[0x223D42DB0](v18, v31);
        v34 = v33;

        v35 = sub_21D0CDFB4(v32, v34, &v46);

        *(v12 + 14) = v35;
        _os_log_impl(&dword_21D0C9000, v10, v11, a3, v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);

        return;
      }

      v41 = v13;
      v42 = v10;
      oslog = a3;
      v44 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if ((v17 & 0x8000000000000000) == 0)
      {
        v19 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x223D44740](v19, a2);
          }

          else
          {
            v20 = *(a2 + 8 * v19 + 32);
          }

          v21 = v20;
          ++v19;
          v22 = [v20 objectID];

          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        while (v17 != v19);
        v18 = v44;
        v13 = v41;
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_38;
    }

    v30 = v6;

LABEL_28:

    return;
  }

  v42 = a4;
  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_280D0F228);
  sub_21DBF8E0C();
  oslog = sub_21DBF84AC();
  LOBYTE(a3) = sub_21DBFAEDC();

  if (!os_log_type_enabled(oslog, a3))
  {
    v30 = oslog;

    goto LABEL_28;
  }

  v10 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v46 = v6;
  *v10 = 136315138;
  if (!(a2 >> 62))
  {
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_38:
  v24 = sub_21DBFBD7C();
LABEL_19:
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
LABEL_35:
    v36 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v37 = MEMORY[0x223D42DB0](v25, v36);
    v39 = v38;

    v40 = sub_21D0CDFB4(v37, v39, &v46);

    *(v10 + 4) = v40;
    _os_log_impl(&dword_21D0C9000, oslog, a3, v42, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);

    return;
  }

  v45 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x223D44740](v26, a2);
      }

      else
      {
        v27 = *(a2 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = [v27 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v24 != v26);
    v25 = v45;
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t TTRRemindersListInteractor.advanceForwardAndCreateIncompleteClone(_:with:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v5 = a1;
  TTRRemindersListInteractor.undoContext.getter(v7);
  sub_21D1FD8F0(v3, v4, v7, sub_21D228E28);

  return sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t TTRRemindersListInteractor.delete(_:)(void *a1)
{
  v2 = [a1 account];
  TTRRemindersListInteractor.undoContext.getter(v5);
  v3 = a1;
  sub_21D97818C(v2, v5, 0, 0, v3);

  return sub_21D0CF7E0(v5, &unk_27CE60D80, &unk_21DC093F0);
}

void TTRRemindersListInteractor.delete(_:)(void *a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v4 = [a1 accountID];
  v18[0] = 0;
  v5 = [v3 fetchAccountWithObjectID:v4 error:v18];

  if (v5)
  {
    v6 = v18[0];
    TTRRemindersListInteractor.undoContext.getter(v18);
    v7 = a1;
    sub_21D9781E4(v5, v18, 0, 0, v7);

    sub_21D0CF7E0(v18, &unk_27CE60D80, &unk_21DC093F0);
  }

  else
  {
    v8 = v18[0];
    v9 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F228);
    v11 = a1;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAEBC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = [v11 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2112;
      v17 = [v11 accountID];
      *(v14 + 14) = v17;
      v15[1] = v17;
      _os_log_impl(&dword_21D0C9000, v12, v13, "Failed to fetch account of smart list {smartList.objectID: %@, smartList.accountID: %@}", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }
  }
}

uint64_t TTRRemindersListInteractor.removeTemplate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D2014C4, v5, v4);
}

uint64_t sub_21D2014C4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21D2015A0;
  v5 = v0[2];
  v6 = v0[3];

  return TTRRemoveTemplateLowLevelInteractorCapability.removeTemplate(_:fetchAccount:)(v5, v6, &unk_21DC0C0E8, v3);
}

uint64_t sub_21D2015A0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D2016E4, v3, v2);
}

uint64_t sub_21D2016E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D201744(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D201810, v4, v3);
}

uint64_t sub_21D201810()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v4 = [v1 accountID];
  v0[2] = 0;
  v5 = [v3 fetchAccountWithObjectID:v4 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v11 = v0[1];
    v7 = v6;

    return v11(v5);
  }

  else
  {
    v9 = v6;
    sub_21DBF52DC();

    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

void TTRRemindersListInteractor.removeAllAssignments(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = a1;
  v59 = v3 + 32;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v5 = a1;
  TTRRemindersListInteractor.undoContext.getter(v76);
  v62 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v62 setSaveIsNoopIfNoChangedKeys_];
  v60 = v3;
  v61 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v61)
  {
LABEL_46:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v56 = sub_21DBFB12C();
    v57 = swift_allocObject();
    v57[3] = 0;
    v57[4] = 0;
    v57[2] = v60;
    v72 = sub_21D22D514;
    v73 = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    v71 = &block_descriptor_97;
    v58 = _Block_copy(aBlock);

    [v62 saveWithQueue:v56 completion:v58];
    _Block_release(v58);

    sub_21D0CF7E0(v76, &unk_27CE60D80, &unk_21DC093F0);
    return;
  }

  v6 = 0;
  v7 = &selRef__setContentViewMarginType_;
  while (1)
  {
    v8 = (v60 & 0xC000000000000001) != 0 ? MEMORY[0x223D44740](v6, v60) : *(v59 + 8 * v6);
    v9 = v8;
    sub_21D0D3954(v76, aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v10 = v62;
    v11 = [v10 updateReminder_];
    sub_21D0D3954(aBlock, &v74, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v12 = swift_allocObject();
    *(v12 + 72) = 0;
    *(v12 + 16) = v11;
    sub_21D0D3954(&v74, v12 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v12 + 64) = 0;
    v13 = v11;
    v14 = [v13 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(&v74, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v15 = *(v12 + 72);
    *(v12 + 72) = v14;

    v16 = [*(v12 + 16) v7[112]];
    if (v16)
    {
      break;
    }

LABEL_4:
    if (++v6 == v61)
    {
      goto LABEL_46;
    }
  }

  v65 = v12;
  v63 = v16;
  v17 = [v16 assignments];
  v18 = sub_21D0D8CF0(0, &qword_27CE59850, 0x277D44598);
  sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850, 0x277D44598);
  v19 = sub_21DBFAAAC();

  v64 = v6;
  if ((v19 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v19 = v77;
    v20 = v78;
    v21 = v79;
    v22 = v80;
    v23 = v81;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);
  }

  v27 = (v21 + 64) >> 6;
  v28 = v65;
  v67 = v27;
  v68 = v20;
  v66 = v19;
  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v29 = sub_21DBFBDBC();
  if (!v29 || (*&v74 = v29, swift_dynamicCast(), v30 = aBlock[0], v31 = v22, v69 = v23, v20 = v68, !aBlock[0]))
  {
LABEL_44:

    sub_21D0CFAF8(v19);
    v6 = v64;
    goto LABEL_4;
  }

  while (1)
  {
    v34 = [*(v28 + 16) v7[112]];
    if (!v34)
    {

      v22 = v31;
      v23 = v69;
      v27 = v67;
      if (v19 < 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    v35 = v34;
    v36 = [v34 assignments];
    v37 = sub_21DBFAAAC();

    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = v30;
      v39 = sub_21DBFBDCC();

      if (v39)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = v18;
      if (*(v37 + 16))
      {
        v46 = sub_21DBFB62C();
        v47 = -1 << *(v37 + 32);
        v48 = v46 & ~v47;
        if ((*(v37 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
        {
          v49 = ~v47;
          while (1)
          {
            v50 = *(*(v37 + 48) + 8 * v48);
            v51 = sub_21DBFB63C();

            if (v51)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v37 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v7 = &selRef__setContentViewMarginType_;
          v18 = v45;
          v28 = v65;
LABEL_29:
          [v35 removeAssignment_];
          v40 = swift_allocObject();
          *(v40 + 16) = v30;
          v71 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          v41 = *(v28 + 16);
          v42 = v30;
          aBlock[0] = [v41 objectID];
          v43 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
          *&v74 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_21DC08D00;
          sub_21D0CEB98(aBlock, v44 + 32);
          sub_21D0CF2E8(&v74, (v44 + 64));
          __swift_destroy_boxed_opaque_existential_0(aBlock);
          sub_21D1C442C(v44, sub_21D228EEC, v40);

          goto LABEL_41;
        }
      }

LABEL_35:

      v7 = &selRef__setContentViewMarginType_;
      v18 = v45;
      v28 = v65;
    }

    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_280D0F2C0);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAE9C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21D0C9000, v53, v54, "Ignoring remove(assignment:) because the assignment has already been removed", v55, 2u);
      MEMORY[0x223D46520](v55, -1, -1);
    }

LABEL_41:
    v22 = v31;
    v20 = v68;
    v23 = v69;
    v19 = v66;
    v27 = v67;
    if (v66 < 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v32 = v22;
    v33 = v23;
    v31 = v22;
    if (!v23)
    {
      break;
    }

LABEL_25:
    v69 = (v33 - 1) & v33;
    v30 = *(*(v19 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v33)))));
    if (!v30)
    {
      goto LABEL_44;
    }
  }

  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      goto LABEL_44;
    }

    v33 = *(v20 + 8 * v31);
    ++v32;
    if (v33)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t TTRRemindersListInteractor.addAssignee(_:to:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC09CF0;
  *(v4 + 32) = a2;
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v6 = a2;
  TTRRemindersListInteractor.undoContext.getter(v27);
  v23 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v23 setSaveIsNoopIfNoChangedKeys_];
  v24 = v4;
  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    v8 = 0;
    v9 = v4 & 0xC000000000000001;
    do
    {
      if (v9)
      {
        v10 = MEMORY[0x223D44740](v8, v24);
      }

      else
      {
        v10 = *(v24 + 8 * v8 + 32);
      }

      v11 = v10;
      ++v8;
      sub_21D0D3954(v27, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v12 = v23;
      v13 = [v12 updateReminder_];
      sub_21D0D3954(aBlock, v26, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRReminderEditor();
      v14 = swift_allocObject();
      *(v14 + 72) = 0;
      *(v14 + 16) = v13;
      sub_21D0D3954(v26, v14 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v14 + 64) = 0;
      v15 = v13;
      v16 = [v15 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v26, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v17 = *(v14 + 72);
      *(v14 + 72) = v16;

      TTRReminderEditor.addAssignment(assigneeID:originatorID:)(a1, 0);
    }

    while (v7 != v8);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v18 = sub_21DBFB12C();
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v24;
  aBlock[4] = sub_21D22D514;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_107;
  v20 = _Block_copy(aBlock);

  [v23 saveWithQueue:v18 completion:v20];
  _Block_release(v20);

  return sub_21D0CF7E0(v27, &unk_27CE60D80, &unk_21DC093F0);
}

char *TTRRemindersListInteractor.fetchAllHashtagLabels()()
{
  v0 = sub_21DBF6AEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  (*(v1 + 104))(v3, *MEMORY[0x277D45328], v0);
  v4 = sub_21DBF6ADC();
  (*(v1 + 8))(v3, v0);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_21DBFBD7C();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D44740](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 name];
      v12 = sub_21DBFA16C();
      v14 = v13;

      v19 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21D18E678((v15 > 1), v16 + 1, 1);
        v8 = v19;
      }

      ++v7;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v5 != v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListInteractor.fetchAllHashtagLabels(backgroundQueue:callbackQueue:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v7 = sub_21DBF9D2C();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_21D228EF4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_116;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  sub_21DBF9D4C();
  v21 = MEMORY[0x277D84F90];
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_21D202BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_21DBF9D5C();
  v10 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v15 = Strong;
    v16 = TTRRemindersListInteractor.fetchAllHashtagLabels()();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v16;
  aBlock[4] = sub_21D22C63C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_280;
  v18 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v20[2] = v14;
  sub_21D0F1C20(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v12, v9, v18);
  _Block_release(v18);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v20[0]);
}

uint64_t TTRRemindersListInteractor.createList(from:storingUndoStepsIn:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D22D660;

  return sub_21D228F00(a1);
}

uint64_t sub_21D202FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;

  return MEMORY[0x2822009F8](sub_21D22D5E8, 0, 0);
}

uint64_t TTRRemindersListInteractor.createList(fromREMListRepresentationOfPublicTemplate:storingUndoStepsIn:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D203124;

  return sub_21D2296F4(a1);
}

uint64_t sub_21D203124(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21D203224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;

  return MEMORY[0x2822009F8](sub_21D2032B8, 0, 0);
}

uint64_t sub_21D2032B8()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 40) accountID];
  *(v0 + 16) = 0;
  v3 = [v1 fetchAccountWithObjectID:v2 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    **(v0 + 24) = v3;
    v9 = *(v0 + 8);
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    sub_21DBF52DC();

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t TTRRemindersListInteractor.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleID:maxSuggestionsCountPerReminderTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21DBFA84C();
  v5[7] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21D20349C, v7, v6);
}

uint64_t sub_21D20349C()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = xmmword_21DC08D00;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_21DBF8E0C();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_21D2035BC;
  v5 = v0[5];
  v6 = v0[2];

  return MEMORY[0x2821A7CB0](v6, v3, v5, 0, 0x100000000, 1);
}

uint64_t sub_21D2035BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21D203754;
  }

  else
  {

    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21D2036EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D2036EC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_21D203754()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TTRRemindersListInteractor.fetchAutoCategorizationLocalCorrections(of:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21DBF56BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_21DBFA84C();
  v2[8] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[9] = v4;
  v2[10] = v5;

  return MEMORY[0x2822009F8](sub_21D2038EC, v4, v5);
}

uint64_t sub_21D2038EC()
{
  v1 = [*(v0 + 24) sectionContext];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    *(v0 + 96) = *(*(v0 + 32) + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
    v3 = [v2 objectID];
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_21D203A78;

    return MEMORY[0x2821A7CA8](v3);
  }

  else
  {

    v5 = sub_21D177BAC(MEMORY[0x277D84F90]);

    v6 = *(v0 + 8);

    return v6(v5);
  }
}

uint64_t sub_21D203A78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_21D2042E0;
  }

  else
  {
    v8 = v4[13];
    v4[16] = a1;

    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_21D203BD0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

double sub_21D203BD0()
{
  v71 = v0;
  v70[4] = *MEMORY[0x277D85DE8];
  v1 = v0[16];

  if (v1)
  {
    v2 = v1;
    v3 = [v2 memberships];
    sub_21D0D8CF0(0, &qword_27CE59860, 0x277D448D8);
    v4 = sub_21DBF9E6C();

    v5 = *(v4 + 16);

    if (v5)
    {
      v7 = v0[11];
      v6 = v0[12];
      v0[2] = 0;
      v8 = [v6 fetchListSectionsForListSectionContext:v7 error:v0 + 2];
      v9 = v0[2];
      if (!v8)
      {
        v58 = v0[11];
        v59 = v9;
        sub_21DBF52DC();

        swift_willThrow();

        v60 = v0[1];

        v60();
        return result;
      }

      v10 = v8;
      sub_21D0D8CF0(0, &qword_27CE584F8, 0x277D44698);
      v11 = sub_21DBFA5EC();
      v12 = v9;

      v13 = sub_21D1779BC(MEMORY[0x277D84F90]);
      if (v11 >> 62)
      {
        goto LABEL_55;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
      {
        v61 = v2;
        v67 = v0;
        if (i)
        {
          v15 = 0;
          v65 = v11 & 0xFFFFFFFFFFFFFF8;
          v66 = v11 & 0xC000000000000001;
          v62 = v0[6];
          v64 = v11;
          v63 = i;
          while (1)
          {
            if (v66)
            {
              v17 = MEMORY[0x223D44740](v15, v11);
            }

            else
            {
              if (v15 >= *(v65 + 16))
              {
                goto LABEL_52;
              }

              v17 = *(v11 + 8 * v15 + 32);
            }

            v18 = v17;
            v2 = (v15 + 1);
            if (__OFADD__(v15, 1))
            {
              break;
            }

            v19 = [v17 objectID];
            v20 = [v19 uuid];

            sub_21DBF568C();
            v21 = [v18 canonicalName];
            if (!v21)
            {
              v21 = [v18 displayName];
            }

            v22 = v21;
            v23 = sub_21DBFA16C();
            v25 = v24;

            v26 = v0[7];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v70[0] = v13;
            v11 = sub_21D0F55D0(v26);
            v29 = v13[2];
            v30 = (v28 & 1) == 0;
            v31 = v29 + v30;
            if (__OFADD__(v29, v30))
            {
              goto LABEL_53;
            }

            v32 = v28;
            v68 = v15 + 1;
            if (v13[3] >= v31)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21D221388();
                v13 = v70[0];
              }
            }

            else
            {
              v33 = v0[7];
              sub_21D2176AC(v31, isUniquelyReferenced_nonNull_native);
              v13 = v70[0];
              v34 = sub_21D0F55D0(v33);
              if ((v32 & 1) != (v35 & 1))
              {

                sub_21DBFC70C();
                return result;
              }

              v11 = v34;
            }

            v2 = v0[7];
            v36 = v0[5];
            if (v32)
            {
              v16 = (v13[7] + 16 * v11);
              *v16 = v23;
              v16[1] = v25;

              (*(v62 + 8))(v2, v36);
            }

            else
            {
              v13[(v11 >> 6) + 8] |= 1 << v11;
              v0 = v62;
              (*(v62 + 16))(v13[6] + *(v62 + 72) * v11, v2, v36);
              v37 = (v13[7] + 16 * v11);
              *v37 = v23;
              v37[1] = v25;

              (*(v62 + 8))(v2, v36);
              v38 = v13[2];
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (v39)
              {
                goto LABEL_54;
              }

              v13[2] = v40;
            }

            ++v15;
            v11 = v64;
            v0 = v67;
            if (v68 == v63)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:

          v43 = [v61 memberships];
          v44 = sub_21DBF9E6C();

          v69 = sub_21D177BAC(MEMORY[0x277D84F90]);
          v45 = -1;
          v46 = -1 << *(v44 + 32);
          if (-v46 < 64)
          {
            v45 = ~(-1 << -v46);
          }

          v47 = v45 & *(v44 + 64);
          v48 = (63 - v46) >> 6;
          v11 = v0[15];
          sub_21DBF8E0C();
          v49 = 0;
          if (v47)
          {
            while (1)
            {
              v50 = v49;
LABEL_34:
              v51 = __clz(__rbit64(v47)) | (v50 << 6);
              v52 = (*(v44 + 48) + 16 * v51);
              v53 = v52[1];
              v54 = *(*(v44 + 56) + 8 * v51);
              v70[0] = *v52;
              v70[1] = v53;
              v70[2] = v54;
              sub_21DBF8E0C();
              v2 = v54;
              sub_21D204390(&v69, v70, v13);
              if (v11)
              {
                break;
              }

              v47 &= v47 - 1;
              v49 = v50;
              v0 = v67;
              if (!v47)
              {
                goto LABEL_31;
              }
            }

            return result;
          }

LABEL_31:
          while (1)
          {
            v50 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            if (v50 >= v48)
            {
              v55 = v0[11];

              v42 = v69;
              goto LABEL_38;
            }

            v47 = *(v44 + 64 + 8 * v50);
            ++v49;
            if (v47)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        ;
      }
    }
  }

  v41 = v0[11];
  v42 = sub_21D177BAC(MEMORY[0x277D84F90]);

LABEL_38:

  v56 = v0[1];

  v56(v42);
  return result;
}

uint64_t sub_21D2042E0()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21D204390(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v39 = a1;
  v36 = a3;
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = a2[1];
  v38 = *a2;
  v17 = a2[2];
  sub_21DBF8E0C();
  v18 = v17;
  v19 = [v18 identifier];
  if (v19)
  {
    v20 = v19;
    sub_21DBF568C();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_21D0D523C(v12, v15, &qword_27CE58370, &unk_21DC091F0);
  sub_21D0D3954(v15, v9, &qword_27CE58370, &unk_21DC091F0);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58370, &unk_21DC091F0);
    v21 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v21;
    sub_21D476A30(0x6F69746365732A2ALL, 0xEF2A2A7373656C6ELL, v38, v16, isUniquelyReferenced_nonNull_native);

    *v21 = v40;
  }

  else
  {
    v23 = v37;
    (*(v5 + 32))(v37, v9, v4);
    v24 = v36;
    if (*(v36 + 16) && (v25 = sub_21D0F55D0(v23), (v26 & 1) != 0))
    {
      v27 = (*(v24 + 56) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      sub_21DBF8E0C();
      v30 = v39;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v30;
      sub_21D476A30(v28, v29, v38, v16, v31);

      *v30 = v40;
      v23 = v37;
    }

    else
    {
      v32 = v39;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v32;
      sub_21D476A30(0xD000000000000013, 0x800000021DC46760, v38, v16, v33);

      *v32 = v40;
    }

    (*(v5 + 8))(v23, v4);
  }

  return sub_21D0CF7E0(v15, &qword_27CE58370, &unk_21DC091F0);
}

uint64_t TTRRemindersListInteractor.convertListToGroceryList(for:)(void *a1)
{
  TTRRemindersListInteractor.undoContext.getter(v27);
  v2 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v5 = a1;
  v20 = [v4 initWithStore_];
  [v20 setSaveIsNoopIfNoChangedKeys_];
  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      sub_21D0D3954(v27, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v10 = v20;
      v11 = [v10 updateList_];
      sub_21D0D3954(aBlock, v25, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      ++v7;
      v12 = qword_280D1AA18;

      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v13 = swift_allocObject();
      v23 = type metadata accessor for TTRUserDefaults();
      v24 = &protocol witness table for TTRUserDefaults;
      *&v22 = v12;
      *(v13 + 64) = 0;
      *(v13 + 16) = v11;
      v14 = v25[1];
      *(v13 + 24) = v25[0];
      *(v13 + 40) = v14;
      *(v13 + 56) = v26;
      swift_beginAccess();
      *(v13 + 64) = 0;
      sub_21D0D0FD0(&v22, v13 + 72);
      v15 = v12;
      TTRListEditor.edit(shouldCategorizeGroceryItems:)(1);
    }

    while (v6 != v7);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v16 = sub_21DBFB12C();
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = v3;
  aBlock[4] = sub_21D22A10C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_130;
  v18 = _Block_copy(aBlock);

  [v20 saveWithQueue:v16 completion:v18];
  _Block_release(v18);

  return sub_21D0CF7E0(v27, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t TTRRemindersListInteractor.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)(void *a1, int a2, char a3)
{
  v4 = TTRRemindersListInteractor.undoManager.getter();
  v5 = v4;
  if (v4)
  {
    v6 = type metadata accessor for TTRBasicUndoContext();
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v7 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v58[1] = 0;
    v58[2] = 0;
  }

  v58[0] = v4;
  v58[3] = v6;
  v58[4] = v7;
  v40 = v5;
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v39 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    v46 = v9 & 0xC000000000000001;
    v42 = v9;
    v43 = v12;
    v41 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v46)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      sub_21D0D3954(v58, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v17 = v12;
      v18 = [v17 updateList_];
      sub_21D0D3954(aBlock, &v55, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v19 = qword_280D1AA18;

      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v20 = swift_allocObject();
      v53 = type metadata accessor for TTRUserDefaults();
      v54 = &protocol witness table for TTRUserDefaults;
      *&v52 = v19;
      *(v20 + 64) = 0;
      *(v20 + 16) = v18;
      v21 = v56;
      *(v20 + 24) = v55;
      *(v20 + 40) = v21;
      *(v20 + 56) = v57;
      swift_beginAccess();
      *(v20 + 64) = 0;
      sub_21D0D0FD0(&v52, v20 + 72);
      v22 = v19;
      v23 = [v18 autoCategorizeContextChangeItem];
      if (!v23)
      {
        goto LABEL_15;
      }

      v24 = v23;
      if (([v23 shouldAutoCategorizeItems] ^ a2))
      {
        break;
      }

      if (a3)
      {
LABEL_18:
        TTRListEditor.removeExistingSections()();
      }

LABEL_6:
      ++v14;

      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

    v44 = [v24 shouldAutoCategorizeItems];
    [v24 setShouldAutoCategorizeItems_];
    swift_beginAccess();
    sub_21D0D32E4(v20 + 72, aBlock);
    v25 = v49;
    v26 = v50;
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    v27 = [*(v20 + 16) objectID];
    (*(v26 + 6))(1, v27, v25, v26);

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v28 = swift_allocObject();
    *(v28 + 16) = 1;
    v29 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v49 = v29;
    aBlock[0] = [*(v20 + 16) &off_2783316F8];
    v30 = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584F0, &qword_21DC09500);
    *(&v56 + 1) = v31;
    *&v55 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v32 = swift_allocObject();
    v32[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v32 + 2));
    sub_21D0CF2E8(&v55, v32 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v32, sub_21D1CD9EC, v28);
    v12 = v43;

    v33 = swift_allocObject();
    *(v33 + 16) = v44;
    v49 = v29;
    aBlock[0] = [*(v20 + 16) objectID];
    *(&v56 + 1) = v31;
    *&v55 = v30;
    v13 = v41;
    v9 = v42;
    v34 = swift_allocObject();
    v34[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v34 + 2));
    sub_21D0CF2E8(&v55, v34 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v34, sub_21D1CD9F4, v33);

LABEL_15:
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

LABEL_19:
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v35 = sub_21DBFB12C();
  v36 = swift_allocObject();
  v36[3] = 0;
  v36[4] = 0;
  v36[2] = v9;
  v50 = sub_21D22D514;
  v51 = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  v49 = &block_descriptor_137;
  v37 = _Block_copy(aBlock);

  [v12 saveWithQueue:v35 completion:v37];
  _Block_release(v37);

  return sub_21D0CF7E0(v58, &unk_27CE60D80, &unk_21DC093F0);
}

id TTRRemindersListInteractor.undoManager.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v10 - v2);
  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v0, &protocol witness table for TTRRemindersListInteractor, ObjectType, v6);
    swift_unknownObjectRelease();
    v8 = type metadata accessor for TTRRemindersListUndoContext(0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE59370, &unk_21DC0B390);
      return 0;
    }

    else
    {
      v9 = *v3;
      sub_21D22C2F4(v3, type metadata accessor for TTRRemindersListUndoContext);
      return v9;
    }
  }

  return result;
}

void sub_21D2052EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223D44740](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [v3 saveRequest];

  if (v5)
  {
    if (v2)
    {
      v6 = sub_21DBFBD7C();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v7 = sub_21DBFB12C();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v10[4] = sub_21D22BF1C;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21D11E5E4;
    v10[3] = &block_descriptor_194;
    v9 = _Block_copy(v10);

    [v5 saveWithQueue:v7 completion:v9];
    _Block_release(v9);
  }
}

void sub_21D20548C(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F228);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315394;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = a2;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Error saving reminderChangeItems {error: %s, count: %ld}", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      return;
    }

    v17 = a1;
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F228);
    oslog = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&dword_21D0C9000, oslog, v15, "reminderChangeItems saved {count: %ld}", v16, 0xCu);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    v17 = oslog;
  }
}

void *sub_21D20574C(void *a1)
{
  sub_21DBF7A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a1;
  v3 = a1;
  sub_21D1CE198(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = sub_21DBF7A3C();

  v5 = sub_21DBFADFC();
  v6 = sub_21D1AA15C(v5, v4);

  return v6;
}

void sub_21D205A10(uint64_t *a1, id a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [a2 objectID];
  v4 = [*(v2 + 16) saveRequest];
  v5 = [v4 store];

  v10[0] = 0;
  v6 = [v5 fetchReminderWithObjectID:v3 error:v10];

  if (v6)
  {
    v7 = v10[0];
    TTRListEditor.remove(reminder:)(v6);
  }

  else
  {
    v8 = v10[0];
    v9 = sub_21DBF52DC();

    swift_willThrow();
  }
}

void sub_21D205B3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = v99;
  v75 = *a3;
  v79 = *(a3 + 8);
  v77 = *(v6 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v11 = [v77 refreshReminder_];
  v12 = [v11 list];
  v84 = a6;
  sub_21D0D3954(a6, v102, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0D3954(v102, v101, &unk_27CE60D80, &unk_21DC093F0);
  v13 = a5;
  v14 = [v13 updateList_];
  sub_21D0D3954(v101, v99, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  sub_21D0CF7E0(v101, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v97 = type metadata accessor for TTRUserDefaults();
  v98 = &protocol witness table for TTRUserDefaults;
  *&v96 = v15;
  v17 = v15;
  v18 = inited;
  sub_21D0CF7E0(v102, &unk_27CE60D80, &unk_21DC093F0);
  *(inited + 64) = 0;
  *(inited + 16) = v14;
  v19 = v100;
  v20 = v99[1];
  *(inited + 24) = v99[0];
  *(inited + 40) = v20;
  *(inited + 56) = v19;
  swift_beginAccess();
  *(inited + 64) = 0;
  sub_21D0D0FD0(&v96, inited + 72);

  if (a4)
  {
    v21 = [v11 list];
    sub_21D2272C4(a4, v13, inited, v22);

    v23 = [v77 refreshReminder_];
    v11 = v23;
  }

  v24 = &unk_21DC093F0;
  sub_21D0D3954(v84, &v96, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0D3954(&v96, v95, &unk_27CE60D80, &unk_21DC093F0);
  v25 = v13;
  v26 = v11;
  v27 = [v25 updateReminder_];
  sub_21D0D3954(v95, v94, &unk_27CE60D80, &unk_21DC093F0);
  v93[6] = 0;
  sub_21D0D3954(v94, v93, &unk_27CE60D80, &unk_21DC093F0);
  v28 = [v27 fetchedCurrentDueDateDeltaAlert];

  v83 = v25;
  sub_21D0CF7E0(&v96, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v94, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v95, &unk_27CE60D80, &unk_21DC093F0);
  v29 = a1;
  if (v79)
  {
    if (v79 == 1)
    {
      sub_21D157850(v75, 1u);
      v86 = [v83 updateReminder_];

      goto LABEL_60;
    }

    if (!v75)
    {
      sub_21D157850(0, 2u);
      v86 = 0;
LABEL_60:
      v71 = sub_21DBF8E0C();
      v29 = sub_21D1E3EEC(v71, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
      if (v29 >> 62)
      {
        goto LABEL_61;
      }

LABEL_12:
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }

    v86 = 1;
    sub_21D157850(1, 2u);
  }

  else
  {
    sub_21D157850(v75, 0);
    v86 = [v83 updateReminder_];
  }

  sub_21DBF8E0C();
  if (!(a1 >> 62))
  {
    goto LABEL_12;
  }

LABEL_61:
  v30 = sub_21DBFBD7C();
LABEL_13:
  v73 = v26;
  v78 = v27;
  v72 = v28;
  if (v30)
  {
    if (v30 >= 1)
    {
      v31 = 0;
      v80 = v29 & 0xC000000000000001;
      v18 = MEMORY[0x277D84F90];
      v81 = v30;
      v82 = v29;
      while (1)
      {
        if (v80)
        {
          v34 = MEMORY[0x223D44740](v31, v29);
        }

        else
        {
          v34 = *(v29 + 8 * v31 + 32);
        }

        v35 = v34;
        if (*(v84 + 24))
        {
          v36 = v34;
          v37 = [v36 list];
          v38 = [v37 reminderIDsOrdering];

          sub_21D206BC8(&v89, v38, v36, v77);
          v85 = v89;
          v39 = v90;
          v40 = [v36 parentReminder];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_21DC09CF0;
          *(v41 + 32) = [v36 objectID];
          if (v40)
          {
            v42 = [v40 objectID];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_21D2128A4(0, *(v18 + 2) + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
            }

            v44 = *(v18 + 2);
            v43 = *(v18 + 3);
            v45 = v44 + 1;
            if (v44 >= v43 >> 1)
            {
              v18 = sub_21D2128A4((v43 > 1), v44 + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
            }

            v39 |= 0x80u;
          }

          else
          {
            v46 = [v36 list];
            v42 = [v46 objectID];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_21D2128A4(0, *(v18 + 2) + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
            }

            v44 = *(v18 + 2);
            v47 = *(v18 + 3);
            v45 = v44 + 1;
            if (v44 >= v47 >> 1)
            {
              v18 = sub_21D2128A4((v47 > 1), v44 + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
            }
          }

          *(v18 + 2) = v45;
          v48 = &v18[32 * v44];
          *(v48 + 4) = v41;
          *(v48 + 5) = v42;
          *(v48 + 6) = v85;
          v48[56] = v39;
          v27 = v78;
        }

        v49 = [v83 updateReminder_];
        v50 = [v27 subtaskContext];
        if (!v50)
        {
          goto LABEL_18;
        }

        v51 = v50;
        v52 = [v27 listChangeItem];
        if (v52)
        {
          v53 = v52;
          v54 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v49, v52, v51, 0);

          v55 = v79;
          if (!v79)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v54 = v49;
          v55 = v79;
          if (!v79)
          {
LABEL_42:
            v33 = v86;
LABEL_43:
            v32 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
            goto LABEL_17;
          }
        }

        if (v55 == 1)
        {
          v32 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          v33 = v86;
        }

        else
        {
          v33 = 0;
          if (!v86)
          {
            goto LABEL_43;
          }

          v32 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
        }

LABEL_17:
        sub_21D157850(v86, v55);
        [v51 *v32];

LABEL_18:
        ++v31;

        v29 = v82;
        if (v81 == v31)
        {
          goto LABEL_45;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_45:

    sub_21D0D3954(v84, &v87, &unk_27CE60D80, &unk_21DC093F0);
    if (!v88)
    {

      sub_21D0CF7E0(&v87, &unk_27CE60D80, &unk_21DC093F0);
      v63 = v79;
      v15 = v73;
      goto LABEL_58;
    }

    sub_21D0D0FD0(&v87, &v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8, &unk_21DC0D0D0);
    v24 = swift_allocObject();
    v24[1] = xmmword_21DC08D00;
    v10 = a1;
    v15 = v73;
    if (!(a1 >> 62))
    {
      v56 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_48;
    }
  }

  v56 = sub_21DBFBD7C();
LABEL_48:
  v57 = MEMORY[0x277D84F90];
  if (!v56)
  {
LABEL_56:
    v62 = [v15 objectID];
    v63 = v79;
    *(v24 + 4) = v57;
    *(v24 + 5) = v62;
    *(v24 + 6) = v75;
    *(v24 + 56) = v79 | 0x80;
    sub_21D157850(v75, v79);
    sub_21D2080D0(v18);
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(v64);
    v65 = v87;
    v66 = v91;
    v67 = v92;
    __swift_project_boxed_opaque_existential_1(&v89, v91);
    *&v87 = v65;
    v68 = swift_allocObject();
    v68[2] = v74;
    v68[3] = v18;
    v68[4] = v24;
    v69 = v74;
    TTRUndoContext.registerUndo(forEditing:action:)(&v87, sub_21D22D518, v68, v66, v67);

    __swift_destroy_boxed_opaque_existential_0(&v89);
LABEL_58:
    v70 = *MEMORY[0x277D44BF0];
    LOBYTE(v89) = 1;
    TTRListEditor.edit(sortingStyle:reason:)(v70, &v89);
    sub_21D157478(v86, v63);

    sub_21D0CF7E0(v93, &unk_27CE60D80, &unk_21DC093F0);

    return;
  }

  *&v87 = MEMORY[0x277D84F90];
  sub_21DBF8E0C();
  sub_21DBFC01C();
  if ((v56 & 0x8000000000000000) == 0)
  {
    v58 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x223D44740](v58, v10);
      }

      else
      {
        v59 = *(v10 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      v61 = [v59 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v56 != v58);

    v57 = v87;
    goto LABEL_56;
  }

  __break(1u);
}

void sub_21D206674(void *a1, char a2, unint64_t a3, void *a4, uint64_t (*a5)())
{
  if (a3 >> 62)
  {
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v45 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v10 < 0)
    {
      __break(1u);
LABEL_25:
      swift_once();
LABEL_13:
      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_280D0F228);
      sub_21DBF8E0C();
      v17 = a4;
      sub_21D22CD54(a1, 1);
      oslog = sub_21DBF84AC();
      v18 = sub_21DBFAEBC();
      sub_21D1D1F18(a1, 1);

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45 = v21;
        *v19 = 136315650;
        swift_getErrorValue();
        v22 = a5();
        v24 = sub_21D0CDFB4(v22, v23, &v45);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v26 = MEMORY[0x223D42DB0](v11, v25);
        v28 = v27;

        v29 = sub_21D0CDFB4(v26, v28, &v45);

        *(v19 + 14) = v29;
        *(v19 + 22) = 2112;
        v30 = [v17 objectID];
        *(v19 + 24) = v30;
        *v20 = v30;
        _os_log_impl(&dword_21D0C9000, oslog, v18, "Failed to move reminders {error: %s, reminders.objectID: %s, parent.objectID: %@}", v19, 0x20u);
        sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v20, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v21, -1, -1);
        v31 = v19;
LABEL_19:
        MEMORY[0x223D46520](v31, -1, -1);

        return;
      }

      goto LABEL_20;
    }

    v12 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, a3);
      }

      else
      {
        v13 = *(a3 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v10 != v12);
    v11 = v45;
  }

  if (a2)
  {
    if (qword_280D17ED0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_280D0F228);
  sub_21DBF8E0C();
  v33 = a4;
  oslog = sub_21DBF84AC();
  v34 = sub_21DBFAEDC();

  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v35 = 136315394;
    v38 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v39 = MEMORY[0x223D42DB0](v11, v38);
    v41 = v40;

    v42 = sub_21D0CDFB4(v39, v41, &v45);

    *(v35 + 4) = v42;
    *(v35 + 12) = 2112;
    v43 = [v33 objectID];
    *(v35 + 14) = v43;
    *v36 = v43;
    _os_log_impl(&dword_21D0C9000, oslog, v34, "Moved reminders {reminders.objectID: %s, parent.objectID: %@}", v35, 0x16u);
    sub_21D0CF7E0(v36, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x223D46520](v37, -1, -1);
    v31 = v35;
    goto LABEL_19;
  }

LABEL_20:
}

void sub_21D206BC8(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>, void *a4@<X2>)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v8 = [a2 array];
  v9 = sub_21DBFA5EC();

  v10 = sub_21DA4E42C(v9);

  if (!v10)
  {

    goto LABEL_5;
  }

  v11 = [a3 objectID];
  v12 = [a2 indexOfObject_];

  if (v12 == sub_21DBF4B4C())
  {

LABEL_5:
    v13 = 2;
    v14 = 1;
    goto LABEL_6;
  }

  if (v12 < 1)
  {
  }

  else
  {
    v43 = a2;
    v44 = a1;
    v15 = v10 & 0xC000000000000001;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v16 = &selRef__setContentViewMarginType_;
    v17 = v12;
    v18 = v12;
    v45 = a3;
    v46 = a4;
    v48 = v10 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        if (v18 < v17)
        {
          __break(1u);
LABEL_32:

          v13 = 2;
          v14 = 1;
          a1 = v44;
          goto LABEL_6;
        }

        v29 = v17--;
        if (v15)
        {
          v30 = MEMORY[0x223D44740](v17, v10);
        }

        else
        {
          if (v17 >= *(v49 + 16))
          {
            __break(1u);
          }

          v30 = *(v10 + 8 * v29 + 24);
        }

        v31 = v30;
        v50[0] = 0;
        v32 = [a4 v16[107]];
        if (v32)
        {
          break;
        }

        v35 = v50[0];
        v36 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v37 = sub_21DBF84BC();
        __swift_project_value_buffer(v37, qword_280D0F228);
        v38 = v36;
        v39 = v31;
        v40 = sub_21DBF84AC();
        v41 = sub_21DBFAEBC();

        if (os_log_type_enabled(v40, v41))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50[0] = v47;
          *v19 = 136315394;
          swift_getErrorValue();
          v21 = sub_21DBFC75C();
          v23 = v18;
          v24 = v10;
          v25 = sub_21D0CDFB4(v21, v22, v50);

          *(v19 + 4) = v25;
          v10 = v24;
          v18 = v23;
          *(v19 + 12) = 2112;
          *(v19 + 14) = v39;
          *v20 = v39;
          v26 = v39;
          _os_log_impl(&dword_21D0C9000, v40, v41, "Failed to fetch preceding reminder by objectID {error: %s, precedingReminderID: %@}", v19, 0x16u);
          sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
          v27 = v20;
          a3 = v45;
          MEMORY[0x223D46520](v27, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x223D46520](v47, -1, -1);
          v28 = v19;
          a4 = v46;
          MEMORY[0x223D46520](v28, -1, -1);
        }

        else
        {
        }

        v15 = v48;
        v16 = &selRef__setContentViewMarginType_;
        if (!v17)
        {
          goto LABEL_32;
        }
      }

      v14 = v32;
      v33 = v50[0];
      if ([a3 isSubtask])
      {
        break;
      }

      v34 = [v14 isSubtask];

      if (!v34)
      {

        v13 = 1;
        a1 = v44;
        goto LABEL_6;
      }

      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v42 = [v14 isSubtask];

    a1 = v44;
    if (v42)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  v14 = 0;
  v13 = 2;
LABEL_6:
  *a1 = v14;
  *(a1 + 8) = v13;
}

void sub_21D2070A8(void *a1, char a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F228);
    sub_21DBF8E0C();
    v8 = a4;
    sub_21D22CD54(a1, 1);
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v10 = 136315650;
      swift_getErrorValue();
      v13 = sub_21DBFC75C();
      v15 = sub_21D0CDFB4(v13, v14, &v34);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v17 = MEMORY[0x223D42DB0](a3, v16);
      v19 = sub_21D0CDFB4(v17, v18, &v34);

      *(v10 + 14) = v19;
      *(v10 + 22) = 2112;
      v20 = [v8 objectID];
      *(v10 + 24) = v20;
      *v11 = v20;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Failed to move reminders {error: %s, reminders.objectID: %s, targetList.objectID: %@}", v10, 0x20u);
      sub_21D0CF7E0(v11, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v12, -1, -1);
      v21 = v10;
LABEL_10:
      MEMORY[0x223D46520](v21, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F228);
    sub_21DBF8E0C();
    v23 = a4;
    oslog = sub_21DBF84AC();
    v24 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v25 = 136315394;
      v28 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v29 = MEMORY[0x223D42DB0](a3, v28);
      v31 = sub_21D0CDFB4(v29, v30, &v34);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = [v23 objectID];
      *(v25 + 14) = v32;
      *v26 = v32;
      _os_log_impl(&dword_21D0C9000, oslog, v24, "Moved reminders {reminders.objectID: %s, targetList.objectID: %@}", v25, 0x16u);
      sub_21D0CF7E0(v26, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      v21 = v25;
      goto LABEL_10;
    }
  }
}

void sub_21D2074D4(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, char a8@<W7>, char ***a9@<X8>)
{
  v51 = a5;
  v12 = a1;
  v13 = *a2;
  v14 = &selRef__setContentViewMarginType_;
  v46 = [a1 updateReminder_];
  v15 = *(a3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v16 = sub_21D227DC0(v13);
  v17 = v16;
  if (v16 >> 62)
  {
    v18 = sub_21DBFBD7C();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_11:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_3:
  v49 = MEMORY[0x277D84F90];
  v19 = &v49;
  sub_21DBFC01C();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v20 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D44740](v20, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    ++v20;
    v23 = [v12 updateReminder_];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v18 != v20);

  v12 = v49;
LABEL_12:
  v24 = &off_278331000;
  if (*(a4 + 24))
  {
    v25 = v13;
    v26 = [v25 list];
    v27 = [v26 reminderIDsOrdering];

    sub_21D206BC8(&v49, v27, v25, v15);
    v9 = v49;
    LOBYTE(a4) = v50;
    v14 = [v25 parentReminder];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_21DC09CF0;
    v19[4] = [v25 objectID];
    if (!v14)
    {
      v34 = [v25 list];
      v13 = [v34 objectID];

      v35 = v51;
      v33 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_21D2128A4(0, *(v33 + 2) + 1, 1, v33, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
        *v51 = v33;
      }

      v31 = *(v33 + 2);
      v37 = *(v33 + 3);
      v32 = v31 + 1;
      if (v31 >= v37 >> 1)
      {
        v33 = sub_21D2128A4((v37 > 1), v31 + 1, 1, v33, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
        *v51 = v33;
      }

      goto LABEL_22;
    }

    v13 = [v14 objectID];
    v28 = v51;
    v18 = *v51;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v18;
    if (v29)
    {
LABEL_15:
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v43 = sub_21D2128A4((v30 > 1), v31 + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
        *v51 = v43;
      }

      LOBYTE(a4) = a4 | 0x80;
      v33 = *v51;
      v24 = &off_278331000;
LABEL_22:
      *(v33 + 2) = v32;
      v38 = &v33[32 * v31];
      *(v38 + 4) = v19;
      *(v38 + 5) = v13;
      *(v38 + 6) = v9;
      v38[56] = a4;
      goto LABEL_23;
    }

LABEL_25:
    v18 = sub_21D2128A4(0, *(v18 + 16) + 1, 1, v18, &qword_27CE59DA8, &unk_21DC0D0D0, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
    *v51 = v18;
    goto LABEL_15;
  }

LABEL_23:
  v39 = *(a6 + 16);
  LOBYTE(v49) = 0;
  v40 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v46, v12, v39, 0, 0, &v49);
  v49 = a7;
  v50 = a8;
  sub_21D1BF7A0(v40, v41, &v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21DC09CF0;
  *(v42 + 32) = [v46 v24[425]];
  sub_21D1BF9F4(v42);

  *a9 = v40;
}

id sub_21D2079D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_21D207A14(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6, const char *a7, const char *a8)
{
  if (a2)
  {
    if (a3)
    {

      a3(0);
      sub_21D0D0E88(a3, a4);
    }

    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F228);
    sub_21DBF8E0C();
    v15 = a6;
    sub_21D22CD54(a1, 1);
    oslog = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v17 = 136315650;
      swift_getErrorValue();
      v20 = sub_21DBFC75C();
      v22 = sub_21D0CDFB4(v20, v21, &v42);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v24 = MEMORY[0x223D42DB0](a5, v23);
      v26 = sub_21D0CDFB4(v24, v25, &v42);

      *(v17 + 14) = v26;
      *(v17 + 22) = 2112;
      v27 = [v15 objectID];
      *(v17 + 24) = v27;
      *v18 = v27;
      _os_log_impl(&dword_21D0C9000, oslog, v16, a8, v17, 0x20u);
      sub_21D0CF7E0(v18, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v19, -1, -1);
      v28 = v17;
LABEL_14:
      MEMORY[0x223D46520](v28, -1, -1);

      return;
    }
  }

  else
  {
    if (a3)
    {

      a3(1);
      sub_21D0D0E88(a3, a4);
    }

    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F228);
    sub_21DBF8E0C();
    v31 = a6;
    oslog = sub_21DBF84AC();
    v32 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v33 = 136315394;
      v36 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v37 = MEMORY[0x223D42DB0](a5, v36);
      v39 = sub_21D0CDFB4(v37, v38, &v42);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2112;
      v40 = [v31 objectID];
      *(v33 + 14) = v40;
      *v34 = v40;
      _os_log_impl(&dword_21D0C9000, oslog, v32, a7, v33, 0x16u);
      sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      v28 = v33;
      goto LABEL_14;
    }
  }
}

uint64_t sub_21D207E94()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[3] < 0)
  {
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000023, 0x800000021DC46810);
    v5 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v6 = MEMORY[0x223D42DB0](v2, v5);
    MEMORY[0x223D42AA0](v6);

    MEMORY[0x223D42AA0](0xD00000000000001ALL, 0x800000021DC46840);
  }

  else
  {
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC46860);
    v3 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v4 = MEMORY[0x223D42DB0](v2, v3);
    MEMORY[0x223D42AA0](v4);

    MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC46890);
  }

  v7 = [v1 description];
  v8 = sub_21DBFA16C();
  v10 = v9;

  MEMORY[0x223D42AA0](v8, v10);

  MEMORY[0x223D42AA0](0x697469736F70202CLL, 0xEC000000203A6E6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DB8, &unk_21DC0D0E0);
  sub_21DBFC14C();
  return 0;
}

void sub_21D2080D0(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v28 = a1 + 32;
  v3 = &qword_27CE58858;
  while (1)
  {
    v4 = *(v28 + 32 * v1);
    sub_21DBF8E0C();
    v5 = v4 >> 62;
    v6 = v4 >> 62 ? sub_21DBFBD7C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      break;
    }

    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      goto LABEL_34;
    }

LABEL_9:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    v33 = v6;
    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v11 = v2 & 0xFFFFFFFFFFFFFF8, v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v7)
      {
        sub_21DBFBD7C();
      }

      v2 = sub_21DBFBF9C();
      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v5)
    {
      v15 = v11;
      v16 = sub_21DBFBD7C();
      v11 = v15;
      v14 = v16;
      if (v16)
      {
LABEL_20:
        if (((v13 >> 1) - v12) < v33)
        {
          goto LABEL_36;
        }

        v30 = v1;
        v31 = v2;
        v17 = v11 + 8 * v12 + 32;
        v27 = v11;
        if (v5)
        {
          if (v14 < 1)
          {
            goto LABEL_38;
          }

          sub_21D0D0F1C(&unk_27CE5DEB0, v3, &unk_21DC09AA0, MEMORY[0x277D83988]);
          for (i = 0; i != v14; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_21DC09AA0);
            v19 = v3;
            v20 = sub_21D198D24(v32, i, v4);
            v22 = *v21;
            (v20)(v32, 0);
            v3 = v19;
            *(v17 + 8 * i) = v22;
          }
        }

        else
        {
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          swift_arrayInitWithCopy();
        }

        v1 = v30;
        v2 = v31;
        if (v33 >= 1)
        {
          v23 = *(v27 + 16);
          v24 = __OFADD__(v23, v33);
          v25 = v23 + v33;
          if (v24)
          {
            goto LABEL_37;
          }

          *(v27 + 16) = v25;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    if (v33 > 0)
    {
      goto LABEL_35;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v26 = sub_21DBFBD7C();
  v9 = v26 + v6;
  if (!__OFADD__(v26, v6))
  {
    goto LABEL_9;
  }

LABEL_34:
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

uint64_t sub_21D2083DC(uint64_t a1, uint64_t a2)
{
  v17 = MEMORY[0x277D84F98];
  v18 = MEMORY[0x277D84F98];
  v5 = v2;
  sub_21D227210(a1, &v17, v5, &v18);

  v6 = sub_21DBF8E0C();
  v7 = sub_21D198830(v6);

  v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(v7, 1);

  [v8 setNotifyChangeDelegate_];

  v14[2] = &v18;
  v14[3] = &v17;
  v14[4] = v5;
  v14[5] = v8;
  v14[6] = a2;
  sub_21D1E43F4(sub_21D22CF5C, v14, a1);
  sub_21D0D3954(a2, v15, &unk_27CE60D80, &unk_21DC093F0);
  v9 = swift_allocObject();
  v10 = v15[1];
  *(v9 + 16) = v15[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v16;
  *(v9 + 56) = v5;
  *(v9 + 64) = v8;
  *(v9 + 72) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();
  v11 = v5;
  sub_21DBF8E0C();
  v12 = sub_21DBF911C();

  return v12;
}

void sub_21D2085AC(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  v65[1] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = a3;
  sub_21D226ED0(v8, a2, v12);
  if ((v11 & 0x80000000) == 0)
  {
    if (!v4)
    {
      v13 = v10;

      v14 = *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
      v63[0] = 0;
      v15 = [v14 fetchListWithObjectID:v9 error:v63];
      if (v15)
      {
        v16 = v15;
        v17 = *a4;
        if ((*a4 & 0xC000000000000001) == 0)
        {
          v44 = v63[0];
          v45 = v9;
          goto LABEL_26;
        }

        if (v17 < 0)
        {
          v18 = *a4;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        v19 = v63[0];
        v20 = v9;
        v21 = sub_21DBFBD7C();
        if (!__OFADD__(v21, 1))
        {
          *a4 = sub_21D983D98(v18, v21 + 1);
LABEL_26:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63[0] = *a4;
          sub_21D476B80(v16, v9, isUniquelyReferenced_nonNull_native);
          *a4 = v63[0];

          return;
        }

        __break(1u);
        goto LABEL_39;
      }

      v43 = v63[0];
      v5 = sub_21DBF52DC();

      swift_willThrow();
      v10 = v13;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v4)
  {
LABEL_11:

LABEL_12:
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F228);
    v23 = v5;
    sub_21D22CFA4(v8, v9, v10, v11);
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    sub_21D22CFF4(v8, v9, v10, v11);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v61 = v10;
      v27 = swift_slowAlloc();
      v65[0] = v27;
      *v26 = 136315394;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v62 = v5;
      v30 = v9;
      v31 = sub_21D0CDFB4(v28, v29, v65);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v63[0] = v8;
      v63[1] = v30;
      v63[2] = v61;
      v64 = v11;
      v32 = sub_21D207E94();
      v34 = sub_21D0CDFB4(v32, v33, v65);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Skipped moving reminders due to error upon attempt to fetch reminder or list {error: %s, moveReminderArguments: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  v35 = *&v12[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
  v63[0] = 0;
  v36 = [v35 fetchReminderWithObjectID:v9 error:v63];
  if (!v36)
  {
    v47 = v10;
    v48 = v63[0];
    v5 = sub_21DBF52DC();

    v10 = v47;
    swift_willThrow();
    goto LABEL_12;
  }

  v37 = v36;
  v38 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    if (v38 < 0)
    {
      v39 = *a2;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFFFFFFFF8;
    }

    v40 = v63[0];
    v41 = v37;
    v42 = sub_21DBFBD7C();
    if (__OFADD__(v42, 1))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    *a2 = sub_21D984230(v39, v42 + 1);
  }

  else
  {
    v49 = v63[0];
    v50 = v37;
  }

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = *a2;
  sub_21D477448(v37, v9, v51);
  *a2 = v63[0];
  v52 = [v37 list];
  v53 = [v52 objectID];

  v54 = [v37 list];
  if (v54)
  {
    v55 = v54;
    v56 = *a4;
    if ((*a4 & 0xC000000000000001) != 0)
    {
      if (v56 < 0)
      {
        v57 = *a4;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFFFFFFFF8;
      }

      v58 = sub_21DBFBD7C();
      if (__OFADD__(v58, 1))
      {
LABEL_40:
        __break(1u);
      }

      *a4 = sub_21D983D98(v57, v58 + 1);
    }

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = *a4;
    sub_21D476B80(v55, v53, v59);
    *a4 = v63[0];
  }

  else
  {
    v60 = sub_21D983150(v53);
  }
}

void sub_21D208AF4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *a1;
  v11 = *(a1 + 8);
  v65 = *(a1 + 16);
  v66 = a6;
  v13 = *(a1 + 24);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = sub_21D1AA15C(v11, *a2);
    if (!v14)
    {
      return;
    }

    v15 = v14;
    v62 = a4;
    v63 = v13;
    LODWORD(v64) = v13;
    v16 = sub_21D1E3A00(v12, a3);
    v60 = v6;
    sub_21D0D3954(v66, &v75, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(&v75, v74, &unk_27CE60D80, &unk_21DC093F0);
    v17 = a5;
    v18 = v15;
    v19 = [v17 updateList_];
    sub_21D0D3954(v74, v72, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v20 = qword_280D1AA18;
    sub_21D0CF7E0(v74, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v70 = type metadata accessor for TTRUserDefaults();
    v71 = &protocol witness table for TTRUserDefaults;
    *&v69 = v20;
    v22 = v20;
    sub_21D0CF7E0(&v75, &unk_27CE60D80, &unk_21DC093F0);
    *(inited + 64) = 0;
    *(inited + 16) = v19;
    v23 = v73;
    v24 = v72[1];
    *(inited + 24) = v72[0];
    *(inited + 40) = v24;
    *(inited + 56) = v23;
    swift_beginAccess();
    *(inited + 64) = 0;
    sub_21D0D0FD0(&v69, inited + 72);

    v61 = v18;
    if (v64)
    {
      v25 = v60;
      if (v64 == 1)
      {
        sub_21D157850(v65, 1u);
        v26 = [v17 updateReminder_];

LABEL_15:
        v77 = MEMORY[0x277D84F90];
        v32 = sub_21DBF8E0C();
        v30 = sub_21D1E3EEC(v32, sub_21D9D9774, sub_21D565304, sub_21D256E5C);
        v31 = v30;
LABEL_16:
        MEMORY[0x28223BE20](v30);
        v56[2] = v17;
        v56[3] = v62;
        v33 = v66;
        v56[4] = v66;
        v56[5] = &v77;
        v56[6] = inited;
        v56[7] = v26;
        v34 = v63;
        v57 = v63;
        sub_21D173B74(sub_21D22D4D8, v56, v31);
        v64 = v25;

        sub_21D0D3954(v33, &v67, &unk_27CE60D80, &unk_21DC093F0);
        v60 = v26;
        if (!v68)
        {

          sub_21D0CF7E0(&v67, &unk_27CE60D80, &unk_21DC093F0);
          v41 = v61;
LABEL_30:
          v55 = *MEMORY[0x277D44BF0];
          LOBYTE(v69) = 1;
          TTRListEditor.edit(sortingStyle:reason:)(v55, &v69);

          sub_21D157478(v60, v34);

          return;
        }

        sub_21D0D0FD0(&v67, &v69);
        v66 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA8, &unk_21DC0D0D0);
        v58 = swift_allocObject();
        v59 = inited;
        *(v58 + 16) = xmmword_21DC08D00;
        if (v16 >> 62)
        {
          v35 = sub_21DBFBD7C();
          if (v35)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
LABEL_19:
            *&v67 = MEMORY[0x277D84F90];
            sub_21DBFC01C();
            if (v35 < 0)
            {
              __break(1u);
              return;
            }

            v36 = 0;
            do
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x223D44740](v36, v16);
              }

              else
              {
                v37 = *(v16 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              v39 = [v37 objectID];

              sub_21DBFBFEC();
              sub_21DBFC03C();
              sub_21DBFC04C();
              sub_21DBFBFFC();
            }

            while (v35 != v36);

            v40 = v67;
            v34 = v63;
            goto LABEL_29;
          }
        }

        v40 = MEMORY[0x277D84F90];
LABEL_29:
        v42 = v62;
        v43 = v34;
        v44 = [v61 objectID];
        v45 = v58;
        *(v58 + 32) = v40;
        *(v45 + 40) = v44;
        v46 = v65;
        *(v45 + 48) = v65;
        *(v45 + 56) = v43;
        sub_21D157850(v46, v43);
        v47 = v66;
        v48 = v64;
        sub_21D2080D0(v66);
        v64 = v48;
        TTRUndoNavigationEditingTarget.init(reminderIDs:)(v49);
        v50 = v67;
        v51 = v70;
        v52 = v71;
        __swift_project_boxed_opaque_existential_1(&v69, v70);
        *&v67 = v50;
        v53 = swift_allocObject();
        v53[2] = v42;
        v53[3] = v47;
        v53[4] = v45;
        v54 = v42;
        v34 = v63;
        sub_21DBF8E0C();
        TTRUndoContext.registerUndo(forEditing:action:)(&v67, sub_21D22D518, v53, v51, v52);

        v41 = v61;

        __swift_destroy_boxed_opaque_existential_0(&v69);
        goto LABEL_30;
      }

      if (!v65)
      {
        sub_21D157850(0, 2u);
        v26 = 0;
        goto LABEL_15;
      }

      v26 = 1;
      sub_21D157850(1, 2u);
    }

    else
    {
      sub_21D157850(v65, 0);
      v26 = [v17 updateReminder_];

      v25 = v60;
    }

    v77 = MEMORY[0x277D84F90];
    v30 = sub_21DBF8E0C();
    v31 = v16;
    goto LABEL_16;
  }

  v27 = sub_21D1AA254(v11, *a3);
  if (v27)
  {
    v28 = v27;
    v29 = sub_21D1E3A00(v12, a3);
    v75 = v65;
    v76 = v13 & 0x7F;
    sub_21D205B3C(v29, v28, &v75, 0, a5, v66);
  }
}

uint64_t sub_21D2091C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a3 + 24) != 0;
  v14 = (a4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer);
  v15 = *(a4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = v13;
  *(v17 + 32) = sub_21D1D1AB4;
  *(v17 + 40) = v12;
  v18 = *(v16 + 16);

  sub_21DBF8E0C();
  v18(a5, sub_21D22CF90, v17, v15, v16);
}

uint64_t sub_21D2092EC(void *a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(void, void))
{
  if (a2)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_280D0F228);
    sub_21DBF8E0C();
    sub_21D22CD54(a1, 1);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v12 = 136315650;
      swift_getErrorValue();
      v13 = sub_21DBFC74C();
      v35 = a5;
      v15 = sub_21D0CDFB4(v13, v14, &v36);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = MEMORY[0x223D42DB0](a3, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
      v18 = sub_21D0CDFB4(v16, v17, &v36);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2080;
      v19 = sub_21DBFA7BC();
      v21 = sub_21D0CDFB4(v19, v20, &v36);

      *(v12 + 24) = v21;
      a5 = v35;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Failed to move reminders {error: %s, moveReminderArguments: %s, shouldRegisterUndo: %s}", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }
  }

  else
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F228);
    sub_21DBF8E0C();
    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAEDC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315394;
      v27 = MEMORY[0x223D42DB0](a3, &type metadata for TTRRemindersListInteractor.MoveReminderArguments);
      v29 = sub_21D0CDFB4(v27, v28, &v36);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = sub_21DBFA7BC();
      v32 = sub_21D0CDFB4(v30, v31, &v36);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_21D0C9000, v23, v24, "Moved reminders {moveReminderArguments: %s, shouldRegisterUndo: %s}", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v26, -1, -1);
      MEMORY[0x223D46520](v25, -1, -1);
    }
  }

  return a5(a1, a2 & 1);
}

uint64_t sub_21D209690(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = sub_21D2083DC(a3, v15);
  sub_21D0CF7E0(v15, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D2080D0(a4);
  TTRUndoNavigationEditingTarget.init(reminderIDs:)(v8);
  v9 = *&v15[0];
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  *&v15[0] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a4;
  v13 = a2;
  sub_21DBF8E0C();
  TTRUndoContext.registerUndo(forEditing:action:)(v15, sub_21D22CF54, v12, v10, v11);

  return v7;
}

uint64_t sub_21D2097A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D32E4(a1, v6);
  v4 = sub_21D2083DC(a3, v6);
  sub_21D0CF7E0(v6, &unk_27CE60D80, &unk_21DC093F0);
  return v4;
}

double sub_21D209804(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F228);
    v5 = a1;
    oslog = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, oslog, v6, "Failed to save makeTask edit {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return result;
    }

    goto LABEL_10;
  }

  if (qword_280D17ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F228);
  sub_21DBF8E0C();
  oslog = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(a3 + 16);

    _os_log_impl(&dword_21D0C9000, oslog, v15, "Did perform make task {changes.count: %ld}", v16, 0xCu);
    MEMORY[0x223D46520](v16, -1, -1);
LABEL_10:

    return result;
  }

  return result;
}

id TTRRemindersListInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRemindersListInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D209C24()
{
  sub_21D0D32E4(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer, v3);
  type metadata accessor for TTRRemindersListInteractorSectionsCapability();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(v3, v1 + 32);
  swift_beginAccess();
  *(v1 + 24) = &protocol witness table for TTRRemindersListInteractor;
  swift_unknownObjectWeakAssign();
  return v1;
}

double sub_21D209CCC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  TTRRemindersListInteractor.undoContext.getter(v10);
  v4 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = a1;
  v6 = v10[1];
  *(v5 + 40) = v10[0];
  *(v5 + 56) = v6;
  *(v5 + 72) = v11;
  v7 = type metadata accessor for TTRRemindersListAttributeEditor();
  v8 = swift_allocObject();
  v8[5] = v4;
  v8[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v8[2] = v5;
  a2[3] = v7;
  a2[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a2 = v8;

  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D209D98(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v5 = a1;
  TTRRemindersListInteractor.undoContext.getter(v7);
  sub_21D1FD8F0(v3, v4, v7, sub_21D22D510);

  return sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D209E70(unint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  TTRRemindersListInteractor.undoContext.getter(v7);
  _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(a1, a2, v5, v7);

  return sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
}

id sub_21D209F9C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v3 setNotifyChangeDelegate_];
  [v3 setSaveIsNoopIfNoChangedKeys_];
  v4 = [v3 updateReminder_];

  return v4;
}

uint64_t sub_21D20A054(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v5;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59820, &qword_21DC0C0A8);
  swift_allocObject();
  v7 = a2;
  v8 = v5;
  v9 = a1;
  return sub_21DBF911C();
}

id sub_21D20A13C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v7 setNotifyChangeDelegate_];
  v8 = [v7 *a4];

  return v8;
}

uint64_t sub_21D20A1CC(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v5 = *a3;
  v6 = v3;
  return sub_21D1F1024(a1, a2, &v5, 0);
}

uint64_t sub_21D20A204(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1024(a1, a2, &v6, a4);
}

uint64_t sub_21D20A238(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D1F1358(a1, a2, &v6, a4, 0);
}

uint64_t sub_21D20A270(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = v5;
  return sub_21D1F1358(a1, a2, &v7, a4, a5);
}

void sub_21D20A2A4(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v14 = v6;
  v15 = v7;
  v8 = a2;
  sub_21D1F2014(a1, &v16, &v14, a4, 0, 0, 0);

  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;

  sub_21D228360(v9, v10, v11, v12, v13);
}

void sub_21D20A338(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4, id *a5)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v18 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = v8;
  v17 = v9;
  v10 = a2;
  sub_21D1F2014(a1, &v18, &v16, a4, a5, 0, 0);

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;

  sub_21D228360(v11, v12, v13, v14, v15);
}

char *sub_21D20A3D0(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v11 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = v4;
  v10 = v5;
  v6 = a2;
  v7 = sub_21D1F2014(a1, &v11, &v9, 0, 0, 0, 0);
  sub_21D228360(v11, v12, v13, v14, v15);
  return v7;
}

void sub_21D20A460(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v13 = *a6;
  v14 = *(a6 + 8);
  v24 = a5;
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v28 = a8 | 0x80;
  v22 = v13;
  v23 = v14;
  v15 = a4;
  sub_21DBF8E0C();
  v16 = a5;
  sub_21D1F2014(a1, &v24, &v22, a7, 0, a9, a10);

  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;

  sub_21D228360(v17, v18, v19, v20, v21);
}

uint64_t sub_21D20A584(uint64_t *a1, void *a2)
{
  v4 = *a1;
  TTRRemindersListInteractor.undoContext.getter(v9);
  v5 = v10;
  if (!v10)
  {
    return sub_21D0CF7E0(v9, &unk_27CE60D80, &unk_21DC093F0);
  }

  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = v4;
  TTRUndoContext.registerUndo(forEditing:byDraining:groupSavesInto:)(&v8, a2, *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store), v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_21D20A670(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1237C4;

  return TTRRemindersListInteractor.fetchGrocerySuggestedSectionName(with:)(a1, a2);
}

uint64_t sub_21D20A718(void *a1)
{
  v2 = [a1 account];
  TTRRemindersListInteractor.undoContext.getter(v5);
  v3 = a1;
  sub_21D97818C(v2, v5, 0, 0, v3);

  return sub_21D0CF7E0(v5, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D20A7BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D22D660;

  return sub_21D228F00(a1);
}

uint64_t sub_21D20A89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D22D660;

  return sub_21D2296F4(a1);
}

uint64_t sub_21D20A948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D22D660;

  return TTRRemindersListInteractor.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleID:maxSuggestionsCountPerReminderTitle:)(a1, a2, a3, a4);
}

uint64_t sub_21D20AA04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D22D660;

  return TTRRemindersListInteractor.fetchAutoCategorizationLocalCorrections(of:)(a1);
}

uint64_t sub_21D20AAA4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D20AB44, v5, v4);
}

uint64_t sub_21D20AB44()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21D20AC20;
  v5 = v0[2];
  v6 = v0[3];

  return TTRRemoveTemplateLowLevelInteractorCapability.removeTemplate(_:fetchAccount:)(v5, v6, &unk_21DC0CB90, v3);
}

uint64_t sub_21D20AC20()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D22D670, v3, v2);
}

uint64_t sub_21D20AD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_committer), v7);
  v9 = type metadata accessor for TTRReminderEditor();
  v10 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  TTRRemindersListInteractor.undoContext.getter(v17);
  v15 = a2;
  v16 = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = *(v8 + 8);
  sub_21DBF8E0C();
  v12(v9, a1, v10, v17, sub_21D22D664, v14, sub_21D22D66C, v11, v9, &protocol witness table for TTRReminderEditor, v7, v8);

  return sub_21D0CF7E0(v17, &unk_27CE60D80, &unk_21DC093F0);
}

void sub_21D20AEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D22D5D8;
  *(v9 + 24) = v8;
  v11[4] = sub_21D22D170;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D11E5E4;
  v11[3] = &block_descriptor_425;
  v10 = _Block_copy(v11);

  [a3 saveWithQueue:a4 completion:v10];
  _Block_release(v10);
}

void sub_21D20AFE0(unint64_t a1, void *a2, __n128 a3)
{
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a1 & 0xC000000000000001;
    a3.n128_u64[0] = 138412290;
    v31 = a3;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x223D44740](v6, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v6 + 32);
      }

      v8 = v9;
      v10 = [v9 listID];
      v11 = [a2 objectID];
      v12 = v11;
      if (v10)
      {
        if (!v11)
        {
          v12 = v10;
LABEL_21:

LABEL_22:
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v24 = sub_21DBF84BC();
          __swift_project_value_buffer(v24, qword_280D0F228);
          v15 = v8;
          v16 = sub_21DBF84AC();
          v25 = sub_21DBFAEAC();

          if (os_log_type_enabled(v16, v25))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            *v18 = v31.n128_u32[0];
            v26 = [v15 objectID];
            *(v18 + 4) = v26;
            *v19 = v26;
            v21 = v25;
            v22 = v16;
            v23 = "TTRRemindersListInteractor: skip insertion of objectID of reminder being saved because it's from a different list {objectID: %@}";
            goto LABEL_30;
          }

          goto LABEL_5;
        }

        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v13 = sub_21DBFB63C();

        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v11)
      {
        goto LABEL_21;
      }

      if (![a2 optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved_])
      {
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v27 = sub_21DBF84BC();
        __swift_project_value_buffer(v27, qword_280D0F228);
        v28 = a2;
        v16 = sub_21DBF84AC();
        v29 = sub_21DBFAEBC();

        if (!os_log_type_enabled(v16, v29))
        {
          v15 = v16;
          goto LABEL_6;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = v31.n128_u32[0];
        v30 = [v28 objectID];
        *(v18 + 4) = v30;
        *v19 = v30;
        v21 = v29;
        v22 = v16;
        v23 = "TTRRemindersListInteractor: failed to insert objectID of reminder being saved into listChangeItem ordering {listID: %@}";
        goto LABEL_30;
      }

      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_280D0F228);
      v15 = v8;
      v16 = sub_21DBF84AC();
      v17 = sub_21DBFAEAC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = v31.n128_u32[0];
        v20 = [v15 objectID];
        *(v18 + 4) = v20;
        *v19 = v20;
        v21 = v17;
        v22 = v16;
        v23 = "TTRRemindersListInteractor: Ensured objectID of reminder being saved exists in listChangeItem ordering {objectID: %@}";
LABEL_30:
        _os_log_impl(&dword_21D0C9000, v22, v21, v23, v18, 0xCu);
        sub_21D0CF7E0(v19, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v19, -1, -1);
        MEMORY[0x223D46520](v18, -1, -1);
        v15 = v16;
        v7 = a1 & 0xC000000000000001;
        goto LABEL_6;
      }

LABEL_5:
      v8 = v16;
LABEL_6:
      ++v6;

      if (v5 == v6)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t TTRRemindersListInteractor.callbackQueue.getter()
{
  v0 = sub_21DBF9D3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  (*(v1 + 104))(v3, *MEMORY[0x277D851D0], v0);
  v4 = sub_21DBFB15C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double TTRRemindersListInteractor.notifyEvent(fromSaveRequest:)(uint64_t a1, uint64_t a2)
{
  sub_21D1E3C08(a1, a2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v2 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_delegate;
    swift_beginAccess();
    v7 = 32;
    do
    {
      v8 = *(v4 + v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v2, &protocol witness table for TTRRemindersListInteractor, v8, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      v7 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

char **sub_21D20B824(void *a1, uint64_t a2)
{
  v23 = *a2;
  v22 = *(a2 + 8);
  v4 = *(v2 + 16);
  v5 = [*(v4 + 16) saveRequest];
  v6 = [v5 store];
  v7 = [v5 updateReminder_];
  v8 = sub_21D227DC0(a1);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v16 = MEMORY[0x277D84F90];
LABEL_12:
    v17 = *(v4 + 16);
    LOBYTE(v25) = 0;
    v18 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v7, v16, v17, 0, 0, &v25);
    v25 = v23;
    v26 = v22;
    sub_21D1BF7A0(v18, v19, &v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21DC09CF0;
    *(v20 + 32) = [v7 objectID];
    sub_21D1BF9F4(v20);

    return v18;
  }

  v10 = sub_21DBFBD7C();
  v24 = v6;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v25 = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v21 = v4;
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v5 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v10 != v12);

    v16 = v25;
    v4 = v21;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D20BAB8()
{

  return swift_deallocClassInstance();
}

void sub_21D20BAF0(unint64_t a1)
{
  v4 = *(*(*v1 + 16) + 16);
  sub_21D20AFE0(a1, v4, v3);
}

id sub_21D20BB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = TTRListEditor.addNewReminder(with:title:)(a1, a3, a4);
  v8 = v4;
  v9 = v5;
  TTRListEditor.moveWithinList(_:togetherWith:position:)(v6, MEMORY[0x277D84F90], &v8);
  return v6;
}

void *sub_21D20BBE4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [a1 subtaskContext];
  if (v10)
  {

    v11 = [v9 list];
    v12 = v11;
    v41 = a2;
    v42 = v9;
    v39 = v11;
    if (a2)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v13 = v12;
      v14 = a2;
      v15 = [v14 objectID];
      v16 = [v13 objectID];
      v17 = sub_21DBFB63C();

      if (v17)
      {

        v18 = 0;
      }

      else
      {
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v19 = sub_21DBF84BC();
        __swift_project_value_buffer(v19, qword_280D0F228);
        v20 = v13;
        v21 = v14;
        v22 = sub_21DBF84AC();
        v23 = sub_21DBFAECC();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412546;
          v26 = [v20 objectID];
          *(v24 + 4) = v26;
          *v25 = v26;
          *(v24 + 12) = 2112;
          v27 = [v21 objectID];
          *(v24 + 14) = v27;
          v25[1] = v27;
          _os_log_impl(&dword_21D0C9000, v22, v23, "ReminderContainerReminderEditor: invalid list.objectID {expect: %@, given: %@} ", v24, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
          swift_arrayDestroy();
          v28 = v25;
          v9 = v42;
          MEMORY[0x223D46520](v28, -1, -1);
          MEMORY[0x223D46520](v24, -1, -1);
        }

        else
        {
        }

        v18 = 1;
        v14 = v20;
      }
    }

    else
    {
      v14 = v11;
      v18 = 1;
    }

    v29 = [a3 refreshReminder_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v14;
    v31 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v32 = a3;
    v33 = v14;
    v34 = [v31 initWithStore_];
    REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(inited, v18);

    swift_setDeallocating();
    swift_arrayDestroy();
    *(v5 + 24) = [v34 updateList_];
    sub_21D0D3954(a4, v45, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(v45, v44, &unk_27CE60D80, &unk_21DC093F0);
    v35 = [v34 updateReminder_];
    sub_21D0D3954(v44, v43, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v36 = swift_allocObject();
    *(v36 + 72) = 0;
    *(v36 + 16) = v35;
    sub_21D0D3954(v43, v36 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v36 + 64) = 0;
    v37 = [v35 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(v45, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v43, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v44, &unk_27CE60D80, &unk_21DC093F0);
    *(v36 + 72) = v37;

    sub_21D0CF7E0(a4, &unk_27CE60D80, &unk_21DC093F0);
    *(v5 + 16) = v36;
  }

  else
  {

    sub_21D0CF7E0(a4, &unk_27CE60D80, &unk_21DC093F0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_21D20C100()
{

  return swift_deallocClassInstance();
}

void sub_21D20C160(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v9 = *a2;
  v10 = v4;
  if (!sub_21D9D6DF4(a3, a4, &v9))
  {
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F228);
    v6 = MEMORY[0x277D84F90];
    v7 = sub_21D17716C(MEMORY[0x277D84F90]);
    v8 = sub_21D17716C(v6);
    sub_21DAEAB00("Cannot add subtask with reminder editor", 39, 2, v7, v8);
    __break(1u);
  }
}

id sub_21D20C238(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = [*(*(*v2 + 16) + 16) saveRequest];
  v7 = [v6 updateReminder_];
  v10 = v4;
  v11 = v5;
  v8 = TTRReminderEditor.moveAsSubtask(_:position:)(v7, &v10);

  return v7;
}

uint64_t sub_21D20C2DC()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t sub_21D20C348(uint64_t a1)
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

void sub_21D20C388(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v5;
    return;
  }

  v19 = a1;
  v3 = sub_21DBFBD7C();
  a1 = v19;
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = a1;
  v25 = MEMORY[0x277D84F90];
  sub_21D18E980(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v5 = v25;
    v6 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    v7 = 0;
    v8 = v4;
    v21 = v4 & 0xC000000000000001;
    v22 = v6;
    v9 = v4;
    v10 = v3;
    do
    {
      if (v21)
      {
        v11 = MEMORY[0x223D44740](v7, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = [v11 remObjectID];
      v14 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21D18E980((v16 > 1), v17 + 1, 1);
      }

      ++v7;
      *(v25 + 16) = v17 + 1;
      v18 = v25 + (v17 << 6);
      *(v18 + 32) = v13;
      *(v18 + 40) = v24;
      *(v18 + 56) = v14;
      *(v18 + 64) = v22;
      *(v18 + 72) = v23;
      *(v18 + 88) = v15;
      v8 = v9;
    }

    while (v10 != v7);

    a2 = v20;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_21D20C56C(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  v11 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v12 = a1;
  v26 = v9;
  v13 = [v11 initWithStore_];
  [v13 setSaveIsNoopIfNoChangedKeys_];
  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](v15, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_21D0D3954(a2, &aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v18 = [v13 updateTemplate_];

      type metadata accessor for TTRTemplateEditor();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = v28;
      *(v19 + 24) = aBlock;
      *(v19 + 40) = v20;
      *(v19 + 56) = v29;
      *(v19 + 64) = 0;
      v31 = v19;
      a3(&v31);
    }

    while (v14 != v15);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v21 = sub_21DBFB12C();
  v22 = swift_allocObject();
  v22[2] = v10;
  v22[3] = a5;
  v22[4] = a6;
  v29 = sub_21D22D514;
  v30 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_21D11E5E4;
  *(&v28 + 1) = &block_descriptor_391;
  v23 = _Block_copy(&aBlock);
  sub_21D0D0E78(a5, a6);

  [v13 saveWithQueue:v21 completion:v23];
  _Block_release(v23);
}

void sub_21D20C818(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  v11 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v12 = a1;
  v26 = v9;
  v13 = [v11 initWithStore_];
  [v13 setSaveIsNoopIfNoChangedKeys_];
  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](v15, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_21D0D3954(a2, &aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v18 = [v13 updateSmartList_];

      type metadata accessor for TTRSmartListEditor();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = v28;
      *(v19 + 24) = aBlock;
      *(v19 + 40) = v20;
      *(v19 + 56) = v29;
      *(v19 + 64) = 0;
      v31 = v19;
      a3(&v31);
    }

    while (v14 != v15);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v21 = sub_21DBFB12C();
  v22 = swift_allocObject();
  v22[2] = v10;
  v22[3] = a5;
  v22[4] = a6;
  v29 = sub_21D22D514;
  v30 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_21D11E5E4;
  *(&v28 + 1) = &block_descriptor_385;
  v23 = _Block_copy(&aBlock);
  sub_21D0D0E78(a5, a6);

  [v13 saveWithQueue:v21 completion:v23];
  _Block_release(v23);
}

void sub_21D20CAC4(void *a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC09CF0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v10 = a1;
  v27 = v7;
  v30 = [v9 initWithStore_];
  [v30 setSaveIsNoopIfNoChangedKeys_];
  v31 = v8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    v12 = 0;
    v13 = v8 & 0xC000000000000001;
    do
    {
      if (v13)
      {
        v14 = MEMORY[0x223D44740](v12, v31);
      }

      else
      {
        v14 = *(v31 + 8 * v12 + 32);
      }

      v15 = v14;
      sub_21D0D3954(a2, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v16 = v30;
      v17 = [v16 updateList_];
      sub_21D0D3954(aBlock, v36, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      ++v12;
      v18 = qword_280D1AA18;

      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v19 = swift_allocObject();
      v34 = type metadata accessor for TTRUserDefaults();
      v35 = &protocol witness table for TTRUserDefaults;
      *&v33 = v18;
      *(v19 + 64) = 0;
      *(v19 + 16) = v17;
      v20 = v36[1];
      *(v19 + 24) = v36[0];
      *(v19 + 40) = v20;
      *(v19 + 56) = v37;
      swift_beginAccess();
      *(v19 + 64) = 0;
      sub_21D0D0FD0(&v33, v19 + 72);
      *&v36[0] = v19;
      v21 = v18;
      a3(v36);
    }

    while (v11 != v12);
  }

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v22 = sub_21DBFB12C();
  v23 = swift_allocObject();
  v23[2] = v31;
  v23[3] = a5;
  v23[4] = a6;
  aBlock[4] = sub_21D22D514;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_379;
  v24 = _Block_copy(aBlock);
  sub_21D0D0E78(a5, a6);

  [v30 saveWithQueue:v22 completion:v24];
  _Block_release(v24);
}

void sub_21D20CE34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  (*(v11 + 16))(&v31 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = *(v11 + 32);
  v31 = v16;
  v18 = v14;
  v19 = a2;
  v17(v16 + v15, v18, v10);
  v20 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v20 setSaveIsNoopIfNoChangedKeys_];
  if (!(a2 >> 62))
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v28 = sub_21DBFB12C();
    v29 = swift_allocObject();
    v29[2] = v19;
    v29[3] = sub_21D22C45C;
    v29[4] = v31;
    v34 = sub_21D22D514;
    v35 = v29;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v33 = sub_21D11E5E4;
    *(&v33 + 1) = &block_descriptor_264;
    v30 = _Block_copy(&aBlock);
    sub_21DBF8E0C();

    [v20 saveWithQueue:v28 completion:v30];
    _Block_release(v30);

    return;
  }

  v21 = sub_21DBFBD7C();
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v21 >= 1)
  {
    v22 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223D44740](v22, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      sub_21D0D3954(a4, &aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v25 = [v20 updateAccount_];

      type metadata accessor for TTRAccountEditor();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      v27 = v33;
      *(v26 + 24) = aBlock;
      *(v26 + 40) = v27;
      *(v26 + 56) = v34;
      *(v26 + 64) = 0;
      v36 = v26;
      a5(&v36);

      v19 = a2;
    }

    while (v21 != v22);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D20D1B8(unint64_t a1, NSObject *a2, char a3, void (*a4)(void, __n128), uint64_t a5)
{
  v9 = sub_21D20D908(a1, &OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v10 = v9;
  if (v9 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v11 = a5;
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v30 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v14 = objc_allocWithZone(TTRUndoManager);
    v15 = sub_21DBFA12C();
    v16 = [v14 initWithDebugIdentifier_];

    v17 = type metadata accessor for TTRBasicUndoContext();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v33[3] = v17;
    v33[4] = &protocol witness table for TTRBasicUndoContext;
    v33[0] = v18;
    sub_21D0D32E4(v33, aBlock);
    v19 = v16;
    if (a3)
    {
      v20 = sub_21D1F73DC(v10, a2, v30, aBlock, qword_282EADF38, sub_21D22CD60);
    }

    else
    {
      v20 = sub_21D20DD3C(v10, a2, v30, aBlock, qword_282EADF38, sub_21D22CD60);
    }

    v22 = v20;
    v23 = v21;

    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    *(v12 + 16) = v22;
    *(v13 + 16) = v23;
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v24 = sub_21DBFB12C();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3 & 1;
    *(v26 + 32) = v12;
    *(v26 + 40) = v13;
    *(v26 + 48) = a4;
    *(v26 + 56) = v11;
    *(v26 + 64) = v25;
    *(v26 + 72) = v16;
    aBlock[4] = sub_21D22CE20;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_324;
    v27 = _Block_copy(aBlock);
    v28 = v16;
    v29 = a2;

    sub_21D0D0E78(a4, v11);

    [v30 saveWithQueue:v24 completion:v27];

    _Block_release(v27);
    __swift_destroy_boxed_opaque_existential_0(v33);

    return;
  }

  if (a4)
  {
    (a4)(0);
  }
}

void sub_21D20D55C(unint64_t a1, NSObject *a2, char a3, void (*a4)(void, __n128), uint64_t a5)
{
  v9 = sub_21D20D908(a1, &OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v10 = v9;
  if (v9 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v30 = a5;
    v11 = swift_allocObject();
    v12 = swift_allocObject();
    v13 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v14 = objc_allocWithZone(TTRUndoManager);
    v15 = sub_21DBFA12C();
    v16 = [v14 initWithDebugIdentifier_];

    v17 = type metadata accessor for TTRBasicUndoContext();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v33[3] = v17;
    v33[4] = &protocol witness table for TTRBasicUndoContext;
    v33[0] = v18;
    sub_21D0D32E4(v33, aBlock);
    v19 = v16;
    if (a3)
    {
      v20 = sub_21D1F73DC(v10, a2, v13, aBlock, qword_282EADC40, sub_21D22BFA8);
    }

    else
    {
      v20 = sub_21D20DD3C(v10, a2, v13, aBlock, qword_282EADC40, sub_21D22BFA8);
    }

    v22 = v20;
    v23 = v21;

    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    *(v11 + 16) = v22;
    *(v12 + 16) = v23;
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v24 = sub_21DBFB12C();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3 & 1;
    *(v26 + 32) = v11;
    *(v26 + 40) = v12;
    *(v26 + 48) = a4;
    *(v26 + 56) = v30;
    *(v26 + 64) = v25;
    *(v26 + 72) = v16;
    aBlock[4] = sub_21D22BF90;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_209;
    v27 = _Block_copy(aBlock);
    v28 = v16;
    v29 = a2;

    sub_21D0D0E78(a4, v30);

    [v13 saveWithQueue:v24 completion:v27];

    _Block_release(v27);
    __swift_destroy_boxed_opaque_existential_0(v33);

    return;
  }

  if (a4)
  {
    (a4)(0);
  }
}

id sub_21D20D908(unint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + *a2);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v5 = sub_21DBFA5DC();
  v33[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v33];

  v7 = v33[0];
  if (v6)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
    v8 = sub_21DBF9E6C();
    v9 = v7;

    v33[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_30:
      v10 = sub_21DBFBD7C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v10 == v11)
        {

          return v31;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v12 = *(a1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*(v8 + 16))
        {
          v16 = sub_21D17E07C(v12);
          if (v17)
          {
            v15 = *(*(v8 + 56) + 8 * v16);
            v18 = v15;
            goto LABEL_17;
          }
        }

LABEL_5:

        ++v11;
      }

      if (!sub_21DBFC2CC())
      {
        goto LABEL_5;
      }

      swift_dynamicCast();
      v15 = v32;
LABEL_17:

      ++v11;
      if (v15)
      {
        MEMORY[0x223D42D80]();
        if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v31 = v33[0];
        v11 = v14;
      }
    }
  }

  v20 = v33[0];
  v21 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE641B8);
  v23 = v21;
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_21DBFC74C();
    v30 = sub_21D0CDFB4(v28, v29, v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Failed to fetch reminders {error: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21D20DD3C(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v98 = a5;
  v10 = v121;
  v11 = sub_21DBF563C();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v95 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x277D84F90];
  v101 = a4;
  sub_21D0D3954(a4, v124, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0D3954(v124, v123, &unk_27CE60D80, &unk_21DC093F0);
  v13 = a2;
  v14 = a3;
  v15 = [v14 updateList_];
  sub_21D0D3954(v123, v121, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
LABEL_55:
    swift_once();
  }

  v16 = qword_280D1AA18;
  sub_21D0CF7E0(v123, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v119 = type metadata accessor for TTRUserDefaults();
  v120 = &protocol witness table for TTRUserDefaults;
  *&v118 = v16;
  v18 = v16;
  sub_21D0CF7E0(v124, &unk_27CE60D80, &unk_21DC093F0);
  *(inited + 64) = 0;
  *(inited + 16) = v15;
  v19 = v122;
  v20 = *(v10 + 16);
  *(inited + 24) = *v10;
  *(inited + 40) = v20;
  *(inited + 56) = v19;
  swift_beginAccess();
  *(inited + 64) = 0;
  v106 = inited;
  sub_21D0D0FD0(&v118, inited + 72);

  v116 = v14;
  v21 = a1;
  v15 = (a1 >> 62);
  v107 = v13;
  v108 = a1;
  v102 = a1 >> 62;
  if (a1 >> 62)
  {
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = sub_21DBFBD7C();
    if (!v22)
    {
      v103 = 0;
      v112 = 0;
      v23 = MEMORY[0x277D84F90];
      v110 = MEMORY[0x277D84F90];
      v21 = a1;
      a1 = v116;
LABEL_60:
      v48 = v21;
      v49 = sub_21DBFBD7C();
      v21 = v48;
      v47 = v49;
      goto LABEL_61;
    }

    v21 = a1;
  }

  else
  {
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      v103 = 0;
      v112 = 0;
      v23 = MEMORY[0x277D84F90];
      v110 = MEMORY[0x277D84F90];
      a1 = v116;
      goto LABEL_51;
    }
  }

  a1 = v116;
  v112 = 0;
  v109 = v21 & 0xC000000000000001;
  v103 = v22;
  v104 = (v21 + 32);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = __OFSUB__(v22, 1);
    v25 = v22 - 1;
    if (v24)
    {
      break;
    }

    v111 = v25;
    if (v109)
    {
      v26 = MEMORY[0x223D44740]();
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (v25 >= *(v105 + 16))
      {
        goto LABEL_54;
      }

      v26 = *&v104[8 * v25];
    }

    v27 = v26;
    v115 = [a1 updateReminder_];
    v28 = sub_21D22850C(v27);
    v14 = v28;
    if (v28 >> 62)
    {
      v13 = sub_21DBFBD7C();
      v114 = v27;
      if (!v13)
      {
LABEL_21:
        v33 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    else
    {
      v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v114 = v27;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    *&v118 = MEMORY[0x277D84F90];
    v15 = &v118;
    sub_21DBFC01C();
    if (v13 < 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v29 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x223D44740](v29, v14);
      }

      else
      {
        v30 = *(v14 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [a1 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v13 != v29);
    v33 = v118;
LABEL_22:
    v113 = v23;
    v34 = [v115 assignmentContext];
    [v34 removeAllAssignments];

    v110 = v33 >> 62;
    if (v33 >> 62)
    {
      v35 = sub_21DBFBD7C();
      if (v35)
      {
LABEL_24:
        v36 = 0;
        v23 = v33 & 0xC000000000000001;
        while (1)
        {
          if (v23)
          {
            v37 = MEMORY[0x223D44740](v36, v33);
          }

          else
          {
            if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v37 = *(v33 + 8 * v36 + 32);
          }

          v38 = v37;
          a1 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          v39 = [v37 assignmentContext];
          [v39 removeAllAssignments];

          ++v36;
          v40 = a1 == v35;
          a1 = v116;
          if (v40)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    if (v110)
    {
      v41 = sub_21DBFBD7C();
    }

    else
    {
      v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v113;
    if (__OFADD__(v112, v41))
    {
      goto LABEL_49;
    }

    v112 += v41;
    *&v118 = 0;
    BYTE8(v118) = 2;
    v42 = TTRListEditor.move(_:togetherWith:position:)(v115, v33, &v118);

    v13 = v42;
    MEMORY[0x223D42D80]();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v110 = v125;
    v15 = [v114 list];
    v43 = [v13 objectID];
    v44 = v107;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_21D2115B8(0, *(v23 + 16) + 1, 1, v23);
    }

    v10 = *(v23 + 16);
    v45 = *(v23 + 24);
    if (v10 >= v45 >> 1)
    {
      v23 = sub_21D2115B8((v45 > 1), v10 + 1, 1, v23);
    }

    *(v23 + 16) = v10 + 1;
    v46 = (v23 + 32 * v10);
    v46[4] = v15;
    v46[5] = v44;
    v46[6] = v43;
    v46[7] = v14;
    v21 = v108;
    v22 = v111;
    if (!v111)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  if (v102)
  {
    goto LABEL_60;
  }

LABEL_51:
  v47 = *(v105 + 16);
LABEL_61:
  v50 = v21;
  v51 = MEMORY[0x277D84F90];
  v113 = v23;
  if (!v47)
  {
    v56 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  *&v118 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v47 & 0x8000000000000000) != 0)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    v66 = sub_21DBFBD7C();
    if (!v66)
    {
      goto LABEL_112;
    }

LABEL_86:
    v67 = 0;
    v115 = v51;
    v116 = v51 & 0xC000000000000001;
    while (1)
    {
      if (v116)
      {
        v70 = MEMORY[0x223D44740](v67, v51);
      }

      else
      {
        if (v67 >= *(v51 + 16))
        {
          goto LABEL_107;
        }

        v70 = *(v51 + 8 * v67 + 32);
      }

      v71 = v70;
      v23 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_106;
      }

      v51 = v66;
      v72 = [v70 objectID];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v118 = v47;
      v74 = sub_21D17E07C(v72);
      v76 = *(v47 + 16);
      v77 = (v75 & 1) == 0;
      v24 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v24)
      {
        goto LABEL_108;
      }

      v79 = v75;
      if (*(v47 + 24) < v78)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_98;
      }

      v83 = v74;
      sub_21D221228();
      v74 = v83;
      v47 = v118;
      if (v79)
      {
LABEL_87:
        v68 = *(v47 + 56);
        v69 = *(v68 + 8 * v74);
        *(v68 + 8 * v74) = 0;

        goto LABEL_88;
      }

LABEL_99:
      *(v47 + 8 * (v74 >> 6) + 64) |= 1 << v74;
      *(*(v47 + 48) + 8 * v74) = v72;
      *(*(v47 + 56) + 8 * v74) = 0;

      v81 = *(v47 + 16);
      v24 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v24)
      {
        goto LABEL_109;
      }

      *(v47 + 16) = v82;
LABEL_88:
      v66 = v51;
      ++v67;
      v40 = v23 == v51;
      v23 = v113;
      v51 = v115;
      if (v40)
      {
        goto LABEL_112;
      }
    }

    sub_21D217444(v78, isUniquelyReferenced_nonNull_native);
    v74 = sub_21D17E07C(v72);
    if ((v79 & 1) != (v80 & 1))
    {
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }

LABEL_98:
    v47 = v118;
    if (v79)
    {
      goto LABEL_87;
    }

    goto LABEL_99;
  }

  v52 = 0;
  do
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x223D44740](v52, v108);
    }

    else
    {
      v53 = v108[v52 + 4];
    }

    v54 = v53;
    ++v52;
    v55 = [v53 remObjectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v47 != v52);
  v56 = v118;
  v50 = v108;
  v23 = v113;
LABEL_70:
  v57 = [a1 updateList_];
  v58 = sub_21D1BF9F4(v56);

  if (v58)
  {
    goto LABEL_115;
  }

  *&v118 = v51;
  v114 = v57;
  if (v103)
  {
    v51 = 0;
    v59 = v50 & 0xC000000000000001;
    v60 = v50 & 0xFFFFFFFFFFFFFF8;
    v23 = 0x277D44700uLL;
    while (1)
    {
      if (v59)
      {
        v61 = MEMORY[0x223D44740](v51, v108);
      }

      else
      {
        if (v51 >= *(v60 + 16))
        {
          goto LABEL_105;
        }

        v61 = v108[v51 + 4];
      }

      v62 = v61;
      v47 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v63 = [v61 list];
      v64 = [v63 objectID];

      v65 = [v107 objectID];
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      LOBYTE(v63) = sub_21DBFB63C();

      if (v63)
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v51;
      if (v47 == v103)
      {
        v51 = v118;
        v23 = v113;
        goto LABEL_83;
      }
    }

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
    goto LABEL_110;
  }

LABEL_83:
  v47 = sub_21D1778CC(MEMORY[0x277D84F90]);
  if ((v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
  {
    goto LABEL_111;
  }

  v66 = *(v51 + 16);
  if (v66)
  {
    goto LABEL_86;
  }

LABEL_112:

  v57 = v114;
  v84 = [v114 sectionsContextChangeItem];
  if (v84)
  {
    v85 = v84;
    v86 = v95;
    sub_21DBF560C();
    sub_21D1E44CC(v47, v86, sub_21D22BFB0);

    (*(v96 + 8))(v86, v97);
  }

  else
  {
  }

LABEL_115:
  v87 = sub_21DBF8E0C();
  sub_21D20C388(v87, &v118);
  v88 = v118;
  sub_21D0D3954(v101, &v118, &unk_27CE60D80, &unk_21DC093F0);
  v89 = v119;
  if (v119)
  {
    v90 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    v117[0] = v88;
    v91 = swift_allocObject();
    v92 = v99;
    *(v91 + 16) = v23;
    *(v91 + 24) = v92;
    v93 = v92;
    TTRUndoContext.registerUndo(forEditing:action:)(v117, v100, v91, v89, v90);

    __swift_destroy_boxed_opaque_existential_0(&v118);
  }

  else
  {

    sub_21D0CF7E0(&v118, &unk_27CE60D80, &unk_21DC093F0);
  }

  return v110;
}

void sub_21D20E9E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, void *a9)
{
  if (a1)
  {
    v14 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE641B8);

    v16 = a1;
    v17 = a2;

    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v48 = a6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v20 = 136315906;
      swift_getErrorValue();
      v22 = sub_21DBFC74C();
      v24 = sub_21D0CDFB4(v22, v23, v49);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2112;
      v25 = [v17 objectID];
      *(v20 + 14) = v25;
      *v21 = v25;
      *(v20 + 22) = 2048;
      swift_beginAccess();
      v26 = *(a4 + 16);
      if (v26 >> 62)
      {
        v27 = sub_21DBFBD7C();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v48;

      *(v20 + 24) = v27;

      *(v20 + 32) = 2048;
      swift_beginAccess();
      v28 = *(a5 + 16);

      *(v20 + 34) = v28;

      _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to move reminders into list {error: %s, listID: %@, reminderCount: %ld, subtaskCount: %ld}", v20, 0x2Au);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      if (!v48)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!a6)
      {
LABEL_17:

        return;
      }
    }

    v38 = a1;
    a6(a1);

    goto LABEL_17;
  }

  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_27CE641B8);
  v30 = a2;

  v31 = sub_21DBF84AC();
  v32 = sub_21DBFAEDC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412802;
    v35 = [v30 objectID];
    *(v33 + 4) = v35;
    *v34 = v35;
    *(v33 + 12) = 2048;
    swift_beginAccess();
    v36 = *(a4 + 16);
    if (v36 >> 62)
    {
      v37 = sub_21DBFBD7C();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v33 + 14) = v37;

    *(v33 + 22) = 2048;
    swift_beginAccess();
    *(v33 + 24) = *(a5 + 16);

    _os_log_impl(&dword_21D0C9000, v31, v32, "Moved reminders into list {listID: %@, reminderCount: %ld, subtaskCount: %ld}", v33, 0x20u);
    sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v34, -1, -1);
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = TTRRemindersListInteractor.undoManager.getter();
    if (v41)
    {
      v42 = v41;
      v43 = *&v40[OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store];
      if ([a9 canUndo])
      {
        v44 = swift_allocObject();
        *(v44 + 16) = a9;
        *(v44 + 24) = v43;
        sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
        v45 = v43;
        v46 = a9;
        sub_21DBFAE8C();
      }
    }

    if (a6)
    {
      a6(0);
    }
  }

  else if (a6)
  {
    a6(0);
  }
}

void sub_21D20EFCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, void *a9)
{
  if (a1)
  {
    v14 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE641B8);

    v16 = a1;
    v17 = a2;

    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v50 = a6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v20 = 136315906;
      swift_getErrorValue();
      v22 = sub_21DBFC74C();
      v24 = sub_21D0CDFB4(v22, v23, v51);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2112;
      v25 = [v17 objectID];
      *(v20 + 14) = v25;
      *v21 = v25;
      *(v20 + 22) = 2048;
      swift_beginAccess();
      v26 = *(a4 + 16);
      if (v26 >> 62)
      {
        v27 = sub_21DBFBD7C();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v50;

      *(v20 + 24) = v27;

      *(v20 + 32) = 2048;
      swift_beginAccess();
      v28 = *(a5 + 16);

      *(v20 + 34) = v28;

      _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to move reminders into list {error: %s, listID: %@, reminderCount: %ld, subtaskCount: %ld}", v20, 0x2Au);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x223D46520](v49, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      if (!v50)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!a6)
      {
LABEL_17:

        return;
      }
    }

    v38 = a1;
    a6(a1);

    goto LABEL_17;
  }

  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_27CE641B8);
  v30 = a2;

  v31 = sub_21DBF84AC();
  v32 = sub_21DBFAEDC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412802;
    v35 = [v30 objectID];
    *(v33 + 4) = v35;
    *v34 = v35;
    *(v33 + 12) = 2048;
    swift_beginAccess();
    v36 = *(a4 + 16);
    if (v36 >> 62)
    {
      v37 = sub_21DBFBD7C();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v33 + 14) = v37;

    *(v33 + 22) = 2048;
    swift_beginAccess();
    *(v33 + 24) = *(a5 + 16);

    _os_log_impl(&dword_21D0C9000, v31, v32, "Moved reminders into list {listID: %@, reminderCount: %ld, subtaskCount: %ld}", v33, 0x20u);
    sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v34, -1, -1);
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = Strong + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      v44 = (*(v42 + 56))(v40, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v42);
      swift_unknownObjectRelease();
      if (v44)
      {
        v45 = *&v40[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store];
        if ([a9 canUndo])
        {
          v46 = swift_allocObject();
          *(v46 + 16) = a9;
          *(v46 + 24) = v45;
          sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
          v47 = v45;
          v48 = a9;
          sub_21DBFAE8C();
        }
      }
    }

    if (a6)
    {
      a6(0);
    }
  }

  else if (a6)
  {
    a6(0);
  }
}

uint64_t sub_21D20F61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  sub_21D0D32E4(a1, v7);
  v5 = sub_21D20F7A8(a2, 1, v4, v7, &unk_282EADF88, sub_21D22D4F8, &unk_282EADFB0, sub_21D22CDA8, &unk_282EADF60, sub_21D22D4F4);
  sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
  return v5;
}

uint64_t sub_21D20F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  sub_21D0D32E4(a1, v7);
  v5 = sub_21D20F7A8(a2, 1, v4, v7, &unk_282EADC90, sub_21D22BFD8, &unk_282EADCB8, sub_21D22BFE0, &unk_282EADC68, sub_21D22BFD0);
  sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
  return v5;
}

uint64_t sub_21D20F7A8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v145 = *MEMORY[0x277D85DE8];
  v12 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *&v137 = MEMORY[0x277D84FA0];
  v13 = *(a1 + 16);
  v128 = v13;
  v116 = a1;
  if (v13)
  {
    v14 = a1 + 56;
    do
    {
      v15 = *(v14 - 8);
      v16 = *(v14 - 16);
      v17 = *(v14 - 24);
      v18 = v16;
      v19 = v15;
      sub_21DBF8E0C();
      sub_21D29B0D0(&v133, [v17 objectID]);

      sub_21D29B0D0(&v133, [v18 objectID]);

      v14 += 32;
      --v13;
    }

    while (v13);
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(v137);

    *&v137 = MEMORY[0x277D84F90];
    v20 = v128;
    sub_21DBFC01C();
    v21 = (v116 + 48);
    do
    {
      v22 = *v21;
      v21 += 4;
      v23 = v22;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v20;
    }

    while (v20);
  }

  else
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(MEMORY[0x277D84FA0]);
  }

  v24 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v25 = sub_21DBFA5DC();

  *&v137 = 0;
  v26 = [a3 fetchRemindersWithObjectIDs:v25 error:&v137];

  v27 = v137;
  if (!v26)
  {
    v96 = v137;
    v51 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_63;
  }

  v114 = a3;
  v117 = v12;
  v28 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v132 = v28;
  v29 = sub_21DBF9E6C();
  v30 = v27;

  if (!v128)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_67:

    *(swift_allocObject() + 16) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
    swift_allocObject();
    v108 = v117;
    v107 = sub_21DBF911C();
    sub_21D0D3954(a4, &v137, &unk_27CE60D80, &unk_21DC093F0);
    v109 = v138;
    if (v138)
    {
      v110 = v139;
      __swift_project_boxed_opaque_existential_1(&v137, v138);
      *&v133 = v31;
      v111 = swift_allocObject();
      *(v111 + 16) = v116;
      *(v111 + 24) = a2 & 1;
      *(v111 + 32) = v114;
      sub_21DBF8E0C();
      v112 = v114;
      TTRUndoContext.registerUndo(forEditing:action:)(&v133, a8, v111, v109, v110);

      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {

      sub_21D0CF7E0(&v137, &unk_27CE60D80, &unk_21DC093F0);
    }

    return v107;
  }

  v131 = v24;
  v12 = 0;
  v127 = v29 & 0xC000000000000001;
  v31 = MEMORY[0x277D84F90];
  v126 = v29;
  while (1)
  {
    v32 = v116 + 32 + 32 * v12;
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v129 = v35;
    v130 = v34;
    if (v127)
    {
      v37 = v35;
      v38 = v33;
      v39 = v34;
      sub_21DBF8E0C();
      v40 = sub_21DBFC2CC();
      if (v40)
      {
        *&v133 = v40;
        swift_dynamicCast();
        v41 = v137;
        goto LABEL_19;
      }

LABEL_57:
      if (qword_27CE56E90 != -1)
      {
        swift_once();
      }

      v88 = sub_21DBF84BC();
      __swift_project_value_buffer(v88, qword_27CE641B8);
      v89 = v129;
      v90 = v33;
      v91 = v130;
      sub_21DBF8E0C();
      v92 = sub_21DBF84AC();
      v93 = sub_21DBFAEBC();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        *(v94 + 4) = v89;
        *v95 = v89;
        v89 = v89;
        _os_log_impl(&dword_21D0C9000, v92, v93, "TTRMoveRemindersToListInteractorCapability#performUndo: missing reminder {objectID: %@}", v94, 0xCu);
        sub_21D0CF7E0(v95, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v95, -1, -1);
        MEMORY[0x223D46520](v94, -1, -1);
      }

      goto LABEL_12;
    }

    v42 = *v32;
    v43 = *(v29 + 16);
    v44 = v35;
    if (!v43)
    {
      v33 = v42;
      v64 = v42;
      v65 = v130;
      sub_21DBF8E0C();
      goto LABEL_57;
    }

    v45 = v44;
    v46 = v42;
    v47 = v130;
    sub_21DBF8E0C();
    v48 = sub_21D17E07C(v45);
    if ((v49 & 1) == 0)
    {

      v33 = v42;
      goto LABEL_57;
    }

    v41 = *(*(v29 + 56) + 8 * v48);
    v33 = v42;
LABEL_19:

    if (!v41)
    {
      goto LABEL_57;
    }

    v125 = v41;
    v123 = v33;
    if (a2)
    {
      v50 = v33;
    }

    else
    {
      v50 = v130;
    }

    sub_21D0D3954(a4, v144, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0D3954(v144, v143, &unk_27CE60D80, &unk_21DC093F0);
    v51 = v117;
    v120 = v50;
    v52 = [v51 updateList_];
    sub_21D0D3954(v143, v141, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v53 = qword_280D1AA18;

    sub_21D0CF7E0(v143, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v138 = type metadata accessor for TTRUserDefaults();
    v139 = &protocol witness table for TTRUserDefaults;
    *&v137 = v53;
    v55 = v53;
    sub_21D0CF7E0(v144, &unk_27CE60D80, &unk_21DC093F0);
    *(inited + 64) = 0;
    *(inited + 16) = v52;
    v56 = v142;
    v57 = v141[1];
    *(inited + 24) = v141[0];
    *(inited + 40) = v57;
    *(inited + 56) = v56;
    sub_21D0D0FD0(&v137, inited + 72);
    v124 = [v51 updateReminder_];
    if (v36 >> 62)
    {
      v58 = sub_21DBFBD7C();
    }

    else
    {
      v58 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v122 = v52;
    if (!v58)
    {
      v63 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    *&v137 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v58 < 0)
    {
      break;
    }

    v59 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x223D44740](v59, v36);
      }

      else
      {
        v60 = *(v36 + 8 * v59 + 32);
      }

      v61 = v60;
      ++v59;
      v62 = [v51 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v58 != v59);
    v63 = v137;
LABEL_38:
    LOBYTE(v137) = 0;
    v66 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v124, v63, v52, 0, 0, &v137);
    *&v137 = 0;
    BYTE8(v137) = 2;
    sub_21D1BF7A0(v66, v67, &v137);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_21DC09CF0;
    *(v68 + 32) = [v124 objectID];
    sub_21D1BF9F4(v68);

    v69 = [v66 objectID];
    v138 = v131;
    *&v137 = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
    v140 = v70;
    v139 = v132;
    sub_21D22BFF0(&v137, &v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21D2116C4(0, *(v31 + 2) + 1, 1, v31);
    }

    v51 = *(v31 + 2);
    v71 = *(v31 + 3);
    if (v51 >= v71 >> 1)
    {
      v31 = sub_21D2116C4((v71 > 1), v51 + 1, 1, v31);
    }

    sub_21D22C04C(&v137);
    *(v31 + 2) = v51 + 1;
    v72 = &v31[64 * v51];
    v73 = v136;
    v74 = v133;
    v75 = v134;
    *(v72 + 4) = v135;
    *(v72 + 5) = v73;
    *(v72 + 2) = v74;
    *(v72 + 3) = v75;
    if (v36 >> 62)
    {
      v76 = sub_21DBFBD7C();
      v77 = v123;
      if (v76)
      {
LABEL_44:
        if (v76 < 1)
        {
          goto LABEL_72;
        }

        v121 = v66;
        v78 = 0;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x223D44740](v78, v36);
          }

          else
          {
            v79 = *(v36 + 8 * v78 + 32);
          }

          v80 = v79;
          v81 = [v79 remObjectID];
          v138 = v131;
          v139 = v132;
          *&v137 = v81;
          v140 = v70;
          sub_21D22BFF0(&v137, &v133);
          v83 = *(v31 + 2);
          v82 = *(v31 + 3);
          if (v83 >= v82 >> 1)
          {
            v31 = sub_21D2116C4((v82 > 1), v83 + 1, 1, v31);
          }

          ++v78;

          sub_21D22C04C(&v137);
          *(v31 + 2) = v83 + 1;
          v84 = &v31[64 * v83];
          v85 = v136;
          v86 = v133;
          v87 = v134;
          *(v84 + 4) = v135;
          *(v84 + 5) = v85;
          *(v84 + 2) = v86;
          *(v84 + 3) = v87;
        }

        while (v76 != v78);

        goto LABEL_55;
      }
    }

    else
    {
      v76 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v123;
      if (v76)
      {
        goto LABEL_44;
      }
    }

LABEL_55:

    swift_setDeallocating();
    sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
    __swift_destroy_boxed_opaque_existential_0((inited + 72));
LABEL_12:
    v12 = v12 + 1;
    v29 = v126;
    if (v12 == v128)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_63:
  v97 = sub_21DBF84BC();
  __swift_project_value_buffer(v97, qword_27CE641B8);
  v98 = v51;
  v99 = sub_21DBF84AC();
  v100 = sub_21DBFAEBC();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v137 = v102;
    *v101 = 136446210;
    swift_getErrorValue();
    v103 = sub_21DBFC75C();
    v105 = v12;
    v106 = sub_21D0CDFB4(v103, v104, &v137);

    *(v101 + 4) = v106;
    v12 = v105;
    _os_log_impl(&dword_21D0C9000, v99, v100, "TTRMoveRemindersToListInteractorCapability#performUndo: failed to fetch reminders {error: %{public}s}", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    MEMORY[0x223D46520](v102, -1, -1);
    MEMORY[0x223D46520](v101, -1, -1);
  }

  *(swift_allocObject() + 16) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();
  v107 = sub_21DBF911C();

  return v107;
}

uint64_t sub_21D210618(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_21D0D32E4(a1, v9);
  v7 = sub_21D20F7A8(a2, (a3 & 1) == 0, a4, v9, &unk_282EADF88, sub_21D22D4F8, &unk_282EADFB0, sub_21D22CDA8, &unk_282EADF60, sub_21D22D4F4);
  sub_21D0CF7E0(v9, &unk_27CE60D80, &unk_21DC093F0);
  return v7;
}

uint64_t sub_21D2106E4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_21D0D32E4(a1, v9);
  v7 = sub_21D20F7A8(a2, (a3 & 1) == 0, a4, v9, &unk_282EADC90, sub_21D22BFD8, &unk_282EADCB8, sub_21D22BFE0, &unk_282EADC68, sub_21D22BFD0);
  sub_21D0CF7E0(v9, &unk_27CE60D80, &unk_21DC093F0);
  return v7;
}

void sub_21D2107B0(id a1, unint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    v5 = a1;
    if (qword_27CE56E98 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE641D0);
    v7 = a1;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC74C();
      v14 = sub_21D0CDFB4(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to save oneshot edit {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

      if (!a3)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }

    goto LABEL_15;
  }

  if (qword_27CE56E98 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE641D0);
  sub_21DBF8E0C();
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAE9C();
  if (!os_log_type_enabled(v17, v18))
  {

    if (!a3)
    {
      return;
    }

LABEL_15:
    a3(a1);
    return;
  }

  v19 = swift_slowAlloc();
  *v19 = 134217984;
  if (a2 >> 62)
  {
    v20 = sub_21DBFBD7C();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 4) = v20;

  _os_log_impl(&dword_21D0C9000, v17, v18, "Did perform oneshot edit {items.count: %ld}", v19, 0xCu);
  MEMORY[0x223D46520](v19, -1, -1);

  if (a3)
  {
    goto LABEL_15;
  }
}

char *sub_21D210A84(char *result, int64_t a2, char a3, char *a4)
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

void *sub_21D210BA4(void *result, int64_t a2, char a3, void *a4)
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

void *sub_21D210CD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21D210E0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59998, &qword_21DC0CB60);
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

char *sub_21D210F2C(char *result, int64_t a2, char a3, char *a4)
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

char *sub_21D211038(char *result, int64_t a2, char a3, char *a4)
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

char *sub_21D2111E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0, &qword_21DC0D160);
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

void *sub_21D211328(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DF8, &qword_21DC0D148);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59E00, &qword_21DC0D150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D211484(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DE0, &qword_21DC0D118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DE8, &unk_21DC0D120);
    swift_arrayInitWithCopy();
  }

  return v10;
}