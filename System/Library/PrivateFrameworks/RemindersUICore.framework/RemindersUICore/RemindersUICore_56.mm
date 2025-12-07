void sub_21D628D9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FF10);
  v43[9] = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  if (!*(v4 + 16) || (v5 = [objc_opt_self() daemonUserDefaults], v6 = objc_msgSend(v5, sel_enableAutoCompleteReminders), v5, !v6))
  {
    v11 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions) || ([v11[1] setHidden_], !*v11))
    {
LABEL_23:
      v38 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
      if (v38)
      {
        v39 = v38;

        v40 = &v39[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
        v41 = *&v39[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
        v42 = *&v39[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange + 8];
        *v40 = 0;
        *(v40 + 1) = 0;
        sub_21D0D0E88(v41, v42);

        return;
      }

      goto LABEL_26;
    }

    v12 = *v11;
    sub_21D6AC05C();
    v14 = v13;
    if (v13 >> 62)
    {
      v15 = sub_21DBFBD7C();
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_9:
        if (v15 < 1)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x223D44740](i, v14);
          }

          else
          {
            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          [*&v17[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
        }
      }
    }

    goto LABEL_23;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions + 8);
  if (v7)
  {
    v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions + 8);
    v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions + 8);
    sub_21D62B200(v1);
    v10 = v20;
    v7 = 0;
    v9 = v21;
    v8 = v19;
  }

  sub_21D639460(v7, v8);
  [v9 setHidden_];
  v22 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView;
  v23 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment);
    v25 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
    swift_beginAccess();
    v26 = *&v10[v25];
    *&v10[v25] = v24;
    v27 = v10;
    if ((sub_21D110D14(v26, 0.0000000149011612, v24) & 1) == 0)
    {
      [v27 setNeedsLayout];
    }

    v28 = *(v1 + v22);
    if (v28)
    {
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = &v28[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
      v31 = *&v28[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
      v32 = *&v28[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange + 8];
      *v30 = sub_21D6394A0;
      v30[1] = v29;
      v33 = v28;

      sub_21D0D0E88(v31, v32);

      v34 = *(v1 + v2);
      swift_getKeyPath(byte_21DC1FEE8);
      v43[8] = v34;

      sub_21DBF5D9C();

      v35 = *(v34 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
      v36 = *(v34 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
      sub_21DBF8E0C();

      MEMORY[0x28223BE20](v37);
      v43[2] = v4;
      v43[3] = v27;
      v43[4] = v1;
      v43[5] = v35;
      v43[6] = v36;
      TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)(sub_21D6394A8, v43);

      sub_21D5D3E40();
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_21D629228(uint64_t a1)
{

  v2 = sub_21D2414F0();

  [*(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) setUserInteractionEnabled_];
  sub_21D62E958(1u);
  if (v3)
  {
    v4 = v3;
    sub_21D62E390(v3);
  }

  sub_21D62EAA4(2u);
  v6 = v5;
  [v5 setUserInteractionEnabled_];
}

uint64_t sub_21D6292FC()
{
  v1 = sub_21DBF858C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F280, &qword_21DC1FFC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v35 = sub_21DBF85BC();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF856C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v0;
  v14 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  if (*(v14 + 2) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C38, &unk_21DC0CEC8);
    sub_21DBF85DC();
    *(swift_allocObject() + 16) = xmmword_21DC08D00;
    (*(v11 + 104))(v13, *MEMORY[0x277D74A88], v10);
    v15 = sub_21DBF859C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_21DBF85AC();
    sub_21DBF854C();
    (*(v7 + 8))(v9, v35);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v32 = v13;
    v33 = v2;
    v16 = *(v36 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath(byte_21DC1FFD0);
    v37 = v16;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

    sub_21DBF5D9C();

    v17 = *(v16 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories);

    if (v17 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C38, &unk_21DC0CEC8);
      v30 = *(*(sub_21DBF85DC() - 8) + 72);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21DC08D20;
      v28 = *MEMORY[0x277D74A88];
      v29 = v1;
      v18 = *(v11 + 104);
      v26 = v10;
      v27 = v18;
      v19 = v32;
      v18(v32);
      v20 = sub_21DBF859C();
      v25 = *(*(v20 - 8) + 56);
      v25(v6, 1, 1, v20);
      sub_21DBF85AC();
      sub_21DBF854C();
      (*(v7 + 8))(v9, v35);
      v21 = *(v11 + 8);
      v22 = v26;
      v21(v19, v26);
      v27(v19, v28, v22);
      v25(v6, 1, 1, v20);
      v23 = v34;
      sub_21DBF857C();
      sub_21DBF85CC();
      (*(v33 + 8))(v23, v29);
      v21(v19, v22);
    }
  }

  return sub_21DBFB4DC();
}

void sub_21D62994C(void *a1, uint64_t a2, void **a3, int a4)
{
  v5 = v4;
  LODWORD(v122) = a4;
  v125 = a1;
  v118 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v8 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v112 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v116);
  v11 = v105 - v10;
  *&v134 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v115 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = (v105 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v15 - 8);
  v124 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v105 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v105 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v105 - v29;
  v31 = *(a2 + 8);
  v129 = *a2;
  v128 = v31;
  v32 = *(a2 + 24);
  v127 = *(a2 + 16);
  v126 = v32;
  v33 = a3[1];
  v132 = *a3;
  v131 = v33;
  v130 = a3[2];
  v34 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v35 = sub_21D62AB60(2, type metadata accessor for TTRIRemindersListDescriptionAndTagsView);
  v123 = v35;
  v119 = v11;
  v117 = v8;
  v121 = v27;
  v120 = v24;
  if (v35)
  {
    v36 = v35;
    v135 = v35;
  }

  else
  {
    v135 = sub_21D62ACD0();
    v36 = 0;
  }

  v37 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_");
  v140 = v37;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  v38 = v36;

  sub_21DBF5D9C();

  v39 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v37 + v39, v30, &qword_27CE5A0B8, &qword_21DC0E120);

  v40 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v40 - 8) + 48))(v30, 1, v40) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5A0B8, &qword_21DC0E120);
LABEL_11:
    v53 = v38;
    goto LABEL_37;
  }

  v138 = v40;
  v139 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v136);
  sub_21D6397E0(v30, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v136, &v140);
  v42 = (v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
  swift_beginAccess();
  v43 = *v42;
  if (!*v42)
  {
    __swift_destroy_boxed_opaque_existential_0(&v140);
    goto LABEL_11;
  }

  v111 = v5;
  v44 = v42[1];
  v45 = v141;
  v46 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  v47 = *(v46 + 272);
  swift_unknownObjectRetain();
  v47(&v136, v45, v46);
  v107 = v136;
  v109 = *(&v136 + 1);
  v108 = v137;
  ObjectType = swift_getObjectType();
  (*(v44 + 160))(v135, ObjectType, v44);
  v110 = ObjectType;
  if (v122)
  {
    v122 = v34;
    (*(v44 + 16))(ObjectType, v44);
    v49 = (*(v133 + 48))(v19, 1, v134);
    v106 = v38;
    v105[1] = v43;
    if (v49)
    {
      sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
      v50 = 1;
      v51 = v119;
      v52 = v121;
    }

    else
    {
      v55 = v113;
      sub_21D639848(v19, v113, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
      v52 = v121;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v121);
      sub_21D6398B0(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      v50 = 0;
      v51 = v119;
    }

    v56 = v117;
    v113 = *(v117 + 56);
    v57 = v118;
    (v113)(v52, v50, 1, v118);
    v58 = v141;
    v59 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141);
    v60 = v115;
    (*(v59 + 8))(v58, v59);
    v61 = v120;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v120);
    v62 = v60;
    v63 = v52;
    sub_21D6398B0(v62, type metadata accessor for TTRRemindersListViewModel.Item);
    (v113)(v61, 0, 1, v57);
    v64 = *(v116 + 48);
    sub_21D0D3954(v52, v51, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D0D3954(v61, v51 + v64, &qword_27CE5FB90, &unk_21DC09290);
    v65 = *(v56 + 48);
    if (v65(v51, 1, v57) == 1)
    {
      sub_21D0CF7E0(v61, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D0CF7E0(v63, &qword_27CE5FB90, &unk_21DC09290);
      v66 = v65(v51 + v64, 1, v57);
      v5 = v111;
      v53 = v106;
      v67 = v51;
      v34 = v122;
      if (v66 == 1)
      {
        sub_21D0CF7E0(v67, &qword_27CE5FB90, &unk_21DC09290);
        v54 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v68 = v114;
      sub_21D0D3954(v51, v114, &qword_27CE5FB90, &unk_21DC09290);
      v69 = v65(v51 + v64, 1, v57);
      v5 = v111;
      v53 = v106;
      v67 = v51;
      if (v69 != 1)
      {
        v70 = v112;
        sub_21D6397E0(v51 + v64, v112, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v54 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v68, v70);
        sub_21D6398B0(v70, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v120, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D0CF7E0(v121, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D6398B0(v68, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v51, &qword_27CE5FB90, &unk_21DC09290);
        v34 = v122;
        goto LABEL_21;
      }

      sub_21D0CF7E0(v120, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D0CF7E0(v121, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D6398B0(v68, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v34 = v122;
    }

    sub_21D0CF7E0(v67, &qword_27CE5F2E0, &unk_21DC0F9C0);
    v54 = 0;
    goto LABEL_21;
  }

  v54 = 0;
  v5 = v111;
  v53 = v38;
LABEL_21:
  v71 = v141;
  v72 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  v73 = v124;
  (*(v72 + 8))(v71, v72);
  (*(v133 + 56))(v73, 0, 1, v134);
  v74 = v110;
  (*(v44 + 24))(v73, v110, v44);
  if (v54)
  {
  }

  else
  {
    *&v136 = v107;
    *(&v136 + 1) = v109;
    v137 = v108;
    (*(v44 + 48))(&v136, v74, v44);
  }

  v75 = *(v44 + 72);
  v76 = v125;
  v77 = v125;
  v75(v76, v74, v44);
  v78 = v141;
  v79 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  (*(v79 + 16))(&v136, v78, v79);
  v80 = BYTE2(v136);

  (*(v44 + 184))(v80, v74, v44);
  if (v123 && (v81 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView, swift_beginAccess(), (v82 = *&v53[v81]) != 0) && ([v82 isEditing] & 1) != 0)
  {
    v83 = 0;
  }

  else
  {
    v84 = v141;
    v85 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141);
    (*(v85 + 272))(&v136, v84, v85);
    if (v136 == 1)
    {
      if (v137 >> 62)
      {
        v86 = sub_21DBFBD7C();
      }

      else
      {
        v86 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v86 == 0;
    }

    else
    {

      v83 = 1;
    }
  }

  (*(v44 + 176))(v83, v74, v44);
  *&v136 = v129;
  *(&v136 + 1) = v128;
  v137 = v127;
  v138 = v126;
  v87 = *(v44 + 96);
  sub_21D60E630(v129, v128, v127, v126);
  v87(&v136, v74, v44);
  v88 = v132;
  if (v132)
  {
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = sub_21D6397D8;
    v91 = v131;
    v92 = v131;
    v93 = v130;
    v94 = v130;
  }

  else
  {
    v92 = 0;
    v94 = 0;
    v90 = 0;
    v89 = 0;
    v91 = v131;
    v93 = v130;
  }

  *&v136 = v88;
  *(&v136 + 1) = v92;
  v137 = v94;
  v138 = v90;
  v139 = v89;
  v95 = *(v44 + 120);
  sub_21D639788(v88, v91, v93);
  v95(&v136, v74, v44);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v140);
LABEL_37:
  v134 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  if (*(v34 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_42;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v96 = sub_21DBF84BC();
    __swift_project_value_buffer(v96, qword_280D0F148);
    v97 = sub_21DBF84AC();
    v98 = sub_21DBFAECC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_21D0C9000, v97, v98, "makeVisible called outside of performSubviewUpdates", v99, 2u);
      MEMORY[0x223D46520](v99, -1, -1);
    }

LABEL_42:
    v100 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v101 = *(v34 + v100);
    v102 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v100) = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_21D256D30(v101);
      *(v34 + v100) = v101;
    }

    if (v101[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v104 = v101[12];
  v101[12] = v102;
  v101[13] = 0;
  *(v101 + 7) = v134;
  *(v34 + v100) = v101;
  swift_endAccess();
  sub_21D157878(v104);
}

uint64_t sub_21D62A97C(char a1, void *a2)
{
  v3 = v2;
  LOBYTE(v4) = a1;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F148);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "cachedView called outside of performSubviewUpdates", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

LABEL_6:
    v9 = v4;
    v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
    swift_beginAccess();
    v10 = *(v3 + v4);
    if (*(v10 + 16) > v9)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v11 = *(v10 + 32 * v9 + 32);
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D62AB60(char a1, uint64_t (*a2)(void, __n128))
{
  v4 = v2;
  LOBYTE(v5) = a1;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F148);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "cachedView called outside of performSubviewUpdates", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

LABEL_6:
    v10 = v5;
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
    swift_beginAccess();
    v11 = *(v4 + v5);
    if (*(v11 + 16) > v10)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v12 = *(v11 + 32 * v10 + 32);
  if (v12)
  {
    (a2)(0);
    v13 = v12;
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

_BYTE *sub_21D62ACD0()
{
  v0 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDescriptionAndTagsView()) init];
  v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_textDragAndDropDisabled] = 1;
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 textDragInteraction];
    if (v4)
    {
      v5 = v4;
      [v4 setEnabled_];
      [v3 removeInteraction_];
    }

    [v3 setTextDropDelegate_];
  }

  return v0;
}

void sub_21D62ADC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 144))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21D62AE80(_BYTE *a1, char *a2)
{
  v3 = *a2;
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
      swift_getKeyPath(off_27832E360[v3]);
      swift_retain_n();

      swift_getAtKeyPath();

      if (v9)
      {

        swift_setAtReferenceWritableKeyPath();
      }

      else
      {
      }

      v5 = *(v2 + v4);
      swift_getKeyPath(byte_21DC1FEE8);
      sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

      sub_21DBF5D9C();

      if (*(v5 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8))
      {
        KeyPath = swift_getKeyPath(byte_21DC1FEE8);
        MEMORY[0x28223BE20](KeyPath);

        sub_21DBF5D8C();
      }

      swift_getKeyPath(byte_21DC1FF10);

      sub_21DBF5D9C();

      v7 = *(v5 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
      sub_21DBF8E0C();

      v8 = sub_21D1D56D8(v7, MEMORY[0x277D84F90]);

      if (v8)
      {
      }

      else
      {

        sub_21D23F4D4(MEMORY[0x277D84F90]);
      }
    }
  }

  else if (*a1)
  {
    swift_getKeyPath(off_27832E360[v3]);
    swift_retain_n();

    swift_getAtKeyPath();

    if (v9 == 1)
    {
    }

    else
    {

      swift_setAtReferenceWritableKeyPath();
    }
  }

  sub_21D61F4C0(1);
}

void sub_21D62B200(uint64_t a1)
{
  v23 = 0;
  v2 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView());
  v3 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)(&v23);
  [v3 setDebugBoundingBoxesEnabled_];
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView;
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = [v5 numberOfColumns];
  v7 = v3;
  v8 = sub_21D4422C0(v7, v6);

  v9 = *(a1 + v4);
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = [v9 numberOfRows];
  v11 = *(a1 + v4);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v10;
  if (v8 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v22 = v11;
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    v13 = v11;
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  }

  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v14 = sub_21DBFA5DC();

  v15 = [v11 addRowWithArrangedSubviews_];
  swift_unknownObjectRelease();

  v16 = *(a1 + v4);
  if (v16)
  {
    v17 = v16;

    v18 = [v17 rowAtIndex_];

    v19 = (a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    v20 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    v21 = v19[1];
    *v19 = v7;
    v19[1] = v18;
    v7;
    swift_unknownObjectRetain();
    sub_21D5C5F74(v20, v21);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_21D62B430(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
    swift_beginAccess();
    v6 = *&v4[v5];
    *&v4[v5] = a2;
    if ((sub_21D110D14(v6, 0.0000000149011612, a2) & 1) == 0)
    {
      [v4 setNeedsLayout];
    }
  }
}

void sub_21D62B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v29 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates;
  v30 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView;
  v35 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  v9 = a1 + 32;
  v28 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout;
  v10 = 7;
  while (v7 >= v8)
  {
    TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(v7);
LABEL_3:
    v10 += 4;
    v9 += 192;
    ++v7;
    if (v10 == 19)
    {
      return;
    }
  }

  v34 = v9;
  sub_21D1D9BE4(v9, v42);
  v11 = sub_21D68D3D0(v7);
  [*(a3 + v30) frame];
  MinX = CGRectGetMinX(v43);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = *(a2 + v28);
    v15 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row());
    if (v14)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 0.0;
    }

    v13 = sub_21D6ACE54(v16);
    swift_unknownObjectWeakAssign();
    v17 = &v13[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate];
    swift_beginAccess();
    *(v17 + 1) = &protocol witness table for TTRIRemindersListReminderCell_collectionView;
    swift_unknownObjectWeakAssign();
    v11 = 0;
  }

  sub_21D1D9BE4(v42, v37);
  v38 = a4;
  v39 = a5;
  v40 = v8 - 1 == v7;
  v41 = MinX;
  sub_21D6394B8(v37, v36);
  v18 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  v33 = v11;
  sub_21DBF8E0C();
  sub_21D0EB8DC(v36, &v13[v18], &qword_27CE5F290, &qword_21DC20000);
  swift_endAccess();
  sub_21D6ACB60();
  sub_21D0CF7E0(v36, &qword_27CE5F290, &qword_21DC20000);
  if ((*(a2 + v29) & 1) == 0)
  {
    if (qword_27CE56B90 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE5FD40);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "makeVisible called outside of performSubviewUpdates", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }
  }

  swift_beginAccess();
  v23 = *(a2 + v35);
  v24 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v35) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_21D256D44(v23);
    *(a2 + v35) = v23;
  }

  if (v7 < v23[2])
  {
    v26 = &v23[v10];
    v27 = v23[v10 - 3];
    *(v26 - 3) = v24;
    *(v26 - 2) = 0;
    *(v26 - 1) = 0;
    *v26 = 0;
    *(a2 + v35) = v23;
    swift_endAccess();
    sub_21D157878(v27);

    sub_21D639514(v37);
    sub_21D1D9C40(v42);
    v9 = v34;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_21D62B8B8(char a1, void *a2)
{
  if (a1)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 88))(v3, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21D17A884();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_21DBFA17C();

  sub_21D176F0C();
  sub_21DBFBB8C();
  v10 = sub_21DBFBB5C();

  return v10;
}

id sub_21D62BAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if (qword_280D176B8 != -1)
  {
    v17 = IsBoldTextEnabled;
    swift_once();
    IsBoldTextEnabled = v17;
  }

  if (IsBoldTextEnabled)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  v6 = sub_21D900614(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 40) = v6;
  sub_21DBF8E0C();
  v9 = v8;
  v10 = v6;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v13 = sub_21DBF9E5C();

  v14 = [v11 initWithString:v12 attributes:v13];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *a2 = v3;
  a2[1] = v14;
  a2[2] = sub_21D639780;
  a2[3] = v15;
  return v3;
}

void sub_21D62BD50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 160))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21D62BE10(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v160) = a2;
  v5 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
  v164 = *(v5 - 8);
  v165 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v148 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v153);
  v156 = &v141 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v152 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300, &qword_21DC16A60);
  MEMORY[0x28223BE20](v16 - 8);
  v161 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = &v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v20 - 8);
  v150 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v158 = &v141 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v141 - v25;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 312))(v27, v28);
  v154 = v9;
  v155 = v8;
  v159 = v26;
  if (v29)
  {
    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v31 = sub_21DBFA12C();
    v32 = [v30 initWithString_];
  }

  else
  {
    v33 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v33);
    v32 = (*(v34 + 112))(v33, v34);
  }

  v35 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v36 = sub_21D62AB60(1, type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView);
  v37 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule;
  swift_beginAccess();
  *&v167 = v37;
  sub_21D0D3954(v37, &v172, &unk_27CE62920, &unk_21DC2BF30);
  v38 = v172;
  sub_21D0CF7E0(&v172, &unk_27CE62920, &unk_21DC2BF30);
  if (!v38)
  {
    goto LABEL_19;
  }

  v39 = sub_21D2413A4();

  if ((v39 & 1) == 0)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    v40 = [v32 string];
    v41 = sub_21DBFA16C();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {
LABEL_19:
      if (v36)
      {
        [v36 setAttributedText_];
      }

      sub_21D6A46B0(1u);
      goto LABEL_49;
    }
  }

  v142 = v7;
  v145 = v35;
  v166 = v36;
  v168 = v32;
  v157 = v3;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v45 = 9;
  }

  else
  {
    v45 = 6;
  }

  if (qword_280D176B8 != -1)
  {
    v140 = v45;
    swift_once();
    v45 = v140;
  }

  v162 = a1;
  v46 = sub_21D900614(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
  inited = swift_initStackObject();
  v48 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v49 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_21DC08D20;
  v50 = *v49;
  *(inited + 40) = v46;
  *(inited + 48) = v50;
  v51 = objc_opt_self();
  v52 = v50;
  v53 = v48;
  v143 = v52;
  v54 = v53;
  v147 = v46;
  *(inited + 56) = [v51 secondaryLabelColor];
  v55 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310, &unk_21DC0FE30);
  swift_arrayDestroy();
  v56 = swift_initStackObject();
  v169 = xmmword_21DC08D00;
  *(v56 + 16) = xmmword_21DC08D00;
  *(v56 + 32) = v54;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v56 + 40) = sub_21D900614(7);
  v163 = sub_21D177570(v56);
  swift_setDeallocating();
  sub_21D0CF7E0(v56 + 32, &unk_27CE5F310, &unk_21DC0FE30);
  v57 = v162[3];
  v58 = v162[4];
  __swift_project_boxed_opaque_existential_1(v162, v57);
  v59 = *(v58 + 272);
  v146 = v55;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v59(&v172, v57, v58);
  v144 = v173;

  v60 = swift_initStackObject();
  *(v60 + 16) = v169;
  v61 = v143;
  *(v60 + 32) = v143;
  v62 = v61;
  *(v60 + 40) = [v51 secondaryLabelColor];
  v143 = sub_21D177570(v60);
  swift_setDeallocating();
  sub_21D0CF7E0(v60 + 32, &unk_27CE5F310, &unk_21DC0FE30);
  v63 = swift_initStackObject();
  *(v63 + 16) = v169;
  *(v63 + 32) = v62;
  v64 = v62;
  *(v63 + 40) = [v51 secondaryLabelColor];
  v65 = sub_21D177570(v63);
  swift_setDeallocating();
  sub_21D0CF7E0(v63 + 32, &unk_27CE5F310, &unk_21DC0FE30);
  v66 = swift_initStackObject();
  *(v66 + 16) = v169;
  *(v66 + 32) = v64;
  *(v66 + 40) = [v51 linkColor];
  v67 = sub_21D177570(v66);
  swift_setDeallocating();
  sub_21D0CF7E0(v66 + 32, &unk_27CE5F310, &unk_21DC0FE30);
  v68 = swift_initStackObject();
  *(v68 + 16) = v169;
  *(v68 + 32) = v64;
  *(v68 + 40) = [v51 magentaColor];
  v69 = sub_21D177570(v68);
  swift_setDeallocating();
  sub_21D0CF7E0(v68 + 32, &unk_27CE5F310, &unk_21DC0FE30);
  v70 = type metadata accessor for TTRReminderTextStorage();
  v71 = objc_allocWithZone(v70);
  v72 = v146;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = v146;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = v143;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = v163;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = v65;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = v67;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v144;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = v69;
  v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = 0;
  v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = 0;
  v171.receiver = v71;
  v171.super_class = v70;
  v73 = objc_msgSendSuper2(&v171, sel_init);
  v74 = v168;
  if (v168)
  {
    v75 = v168;
    v76 = v157;
    v77 = v166;
    v78 = 0x277CCA000;
  }

  else
  {
    v78 = 0x277CCA000uLL;
    v75 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    v74 = 0;
    v76 = v157;
    v77 = v166;
  }

  v79 = v74;
  [v73 insertAttributedString:v75 atIndex:0];

  v80 = [objc_allocWithZone(*(v78 + 2200)) initWithAttributedString_];
  v168 = v79;
  *&v169 = v80;
  v81 = v162;
  if (v77)
  {
    v82 = v77;
  }

  else
  {
    v82 = sub_21D62E02C(v76, v147);
  }

  v36 = v77;
  v83 = v82;
  sub_21D62E390(v83);
  v84 = *v167;
  if (*v167)
  {
    v85 = *(v167 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v87 = *(v85 + 64);
    v163 = v84;
    v143 = ObjectType;
    v144 = v85;
    v87(v83);
    v141 = v73;
    v166 = v36;
    *&v167 = v83;
    if (v160)
    {
      v88 = v151;
      (*(v144 + 8))(v143);
      if ((*(v164 + 48))(v88, 1, v165))
      {
        sub_21D0CF7E0(v88, &unk_27CE5F300, &qword_21DC16A60);
        v89 = 1;
        v90 = v159;
      }

      else
      {
        v94 = v149;
        sub_21D639848(v88, v149, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v88, &unk_27CE5F300, &qword_21DC16A60);
        v90 = v159;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v159);
        sub_21D6398B0(v94, type metadata accessor for TTRRemindersListViewModel.Item);
        v89 = 0;
      }

      v95 = v154;
      v96 = v155;
      v160 = *(v154 + 56);
      (v160)(v90, v89, 1, v155);
      v97 = v81[3];
      v98 = v81[4];
      __swift_project_boxed_opaque_existential_1(v81, v97);
      v99 = v152;
      (*(v98 + 8))(v97, v98);
      v100 = v158;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v158);
      v101 = v99;
      v102 = v90;
      sub_21D6398B0(v101, type metadata accessor for TTRRemindersListViewModel.Item);
      (v160)(v100, 0, 1, v96);
      v103 = *(v153 + 48);
      v104 = v90;
      v105 = v156;
      sub_21D0D3954(v104, v156, &qword_27CE5FB90, &unk_21DC09290);
      v160 = v103;
      sub_21D0D3954(v100, &v103[v105], &qword_27CE5FB90, &unk_21DC09290);
      v106 = *(v95 + 48);
      if (v106(v105, 1, v96) == 1)
      {
        sub_21D0CF7E0(v100, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D0CF7E0(v102, &qword_27CE5FB90, &unk_21DC09290);
        v107 = v106(&v160[v105], 1, v96);
        v72 = v146;
        if (v107 == 1)
        {
          sub_21D0CF7E0(v105, &qword_27CE5FB90, &unk_21DC09290);
          v83 = v167;
LABEL_51:
          v110 = [v83 attributedText];

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v108 = v150;
      sub_21D0D3954(v105, v150, &qword_27CE5FB90, &unk_21DC09290);
      v109 = v160;
      if (v106(&v160[v105], 1, v96) == 1)
      {
        sub_21D0CF7E0(v158, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D0CF7E0(v159, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D6398B0(v108, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v72 = v146;
LABEL_37:
        sub_21D0CF7E0(v105, &qword_27CE5F2E0, &unk_21DC0F9C0);
        v83 = v167;
        goto LABEL_38;
      }

      v137 = v148;
      sub_21D6397E0(&v109[v105], v148, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v138 = v108;
      v139 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v108, v137);
      sub_21D6398B0(v137, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v158, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D0CF7E0(v159, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D6398B0(v138, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v105, &qword_27CE5FB90, &unk_21DC09290);
      v72 = v146;
      v83 = v167;
      if (v139)
      {
        goto LABEL_51;
      }
    }

LABEL_38:

    v110 = v169;
LABEL_39:
    v111 = v81[3];
    v112 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v111);
    v113 = v142;
    (*(v112 + 8))(v111, v112);
    v114 = v81[3];
    v115 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v114);
    (*(v115 + 16))(&v172, v114, v115);
    v116 = BYTE2(v172);

    v117 = v81[3];
    v118 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v117);
    (*(v118 + 272))(v170, v117, v118);
    v119 = v170[1];

    v120 = v81[3];
    v121 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v120);
    v122 = (*(v121 + 280))(v120, v121);
    v123 = v165;
    v125 = v165[6];
    v124 = v165[7];
    *(v113 + v165[5]) = v116;
    *(v113 + v125) = v110;
    *(v113 + v124) = v72;
    *(v113 + v123[8]) = v119;
    *(v113 + v123[9]) = v122 & 1;
    v126 = v161;
    sub_21D639848(v113, v161, type metadata accessor for TTRIReminderCellNotesViewModel);
    (*(v164 + 56))(v126, 0, 1, v123);
    (*(v144 + 16))(v126, v143);
    swift_unknownObjectRelease();
    sub_21D6398B0(v113, type metadata accessor for TTRIReminderCellNotesViewModel);
    v76 = v157;
    v36 = v166;
    v83 = v167;
    v73 = v141;
    goto LABEL_40;
  }

  v91 = v81[3];
  v92 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v91);
  (*(v92 + 272))(&v172, v91, v92);
  v93 = v173;

  v170[0] = v93;
  sub_21D6C3690(v169, v72, v163, v170);

  sub_21D62E390(v83);
LABEL_40:
  v167 = *(v76 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  v127 = v145;
  if (*(v145 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_45;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v128 = sub_21DBF84BC();
    __swift_project_value_buffer(v128, qword_280D0F148);
    v129 = sub_21DBF84AC();
    v130 = sub_21DBFAECC();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_21D0C9000, v129, v130, "makeVisible called outside of performSubviewUpdates", v131, 2u);
      MEMORY[0x223D46520](v131, -1, -1);
    }

LABEL_45:
    v132 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v133 = *(v127 + v132);
    v134 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v127 + v132) = v133;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v133 = sub_21D256D30(v133);
      *(v127 + v132) = v133;
    }

    if (v133[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v136 = v133[8];
  v133[8] = v134;
  v133[9] = 0;
  *(v133 + 5) = v167;
  *(v127 + v132) = v133;
  swift_endAccess();
  sub_21D157878(v136);

  v32 = v168;
LABEL_49:
}

id sub_21D62D088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if (qword_280D176B8 != -1)
  {
    v6 = IsBoldTextEnabled;
    swift_once();
    IsBoldTextEnabled = v6;
  }

  if (IsBoldTextEnabled)
  {
    v3 = 9;
  }

  else
  {
    v3 = 6;
  }

  v4 = sub_21D900614(v3);
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

void sub_21D62D18C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E8, &unk_21DC22410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 288))(v78, v13, v14);
  if (v78[1] < 2uLL)
  {
    goto LABEL_5;
  }

  v74 = v9;
  v73 = v6;
  v75 = v78[0];
  v16 = v78[2];
  v15 = v78[3];
  v17 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  *&v76 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("Pj%_");
  v77 = v18;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v19 = *(v18 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing);

  if (v19 & 1) != 0 || (v20 = *(v76 + v17), swift_getKeyPath(byte_21DC1FA90), v77 = v20, , sub_21DBF5D9C(), , v21 = *(v20 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode), , (v21))
  {

LABEL_5:
    sub_21D6A46B0(0xAu);
    return;
  }

  if (v15)
  {

    v75 = v16;
  }

  v22 = v12;
  v23 = v76;
  v24 = *(v76 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v25 = sub_21D62A97C(10, 0x277D75220);
  if (!v25)
  {
    v25 = sub_21D62E6D0(v23, v26);
  }

  v72 = v25;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v70 = v22;
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v69 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  v28 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v29 = qword_280D176B8;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_21D900614(1);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 40) = v31;
  v71 = sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
  v32 = swift_initStackObject();
  v33 = *MEMORY[0x277CCA298];
  *(v32 + 32) = *MEMORY[0x277CCA298];
  *(v32 + 16) = v69;
  *(v32 + 64) = MEMORY[0x277D83E88];
  *(v32 + 40) = 2;
  v34 = v33;
  sub_21D11274C(v32);
  swift_setDeallocating();
  sub_21D0CF7E0(v32 + 32, &unk_27CE5F2C0, &qword_21DC09050);
  v35 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v36 = sub_21DBFA12C();

  v37 = [v35 initWithString_];

  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v40 = sub_21DBF9E5C();

  v41 = [v38 initWithString:v39 attributes:v40];

  v42 = v37;
  v43 = sub_21DBFA12C();
  v44 = [v42 rangeOfString_];
  v46 = v45;

  if (v44 == sub_21DBF4B4C())
  {

    v47 = v72;
    v48 = v41;
  }

  else
  {
    v49 = sub_21DBFA12C();
    [v42 replaceCharactersInRange:v44 withString:{v46, v49}];

    v50 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v51 = sub_21DBF9E5C();

    v52 = [v50 initWithString:v42 attributes:v51];

    [v52 insertAttributedString:v41 atIndex:v44];
    v48 = v52;
    v47 = v72;
  }

  v53 = v70;
  sub_21DBFB97C();
  v54 = sub_21DBFB95C();
  v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
  v56 = v76;
  if (v55)
  {
    sub_21D0D3954(v53, v74, &unk_27CE5F2F0, qword_21DC0FEA0);
    sub_21DBFB98C();
    sub_21D0CF7E0(v53, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  else
  {
    v57 = v48;
    v58 = v73;
    sub_21DBF515C();
    v59 = sub_21DBF514C();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    sub_21DBFB86C();
    sub_21DBFB98C();
  }

  v76 = *(v56 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  if (*(v24 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_25;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v60 = sub_21DBF84BC();
    __swift_project_value_buffer(v60, qword_280D0F148);
    v61 = sub_21DBF84AC();
    v62 = sub_21DBFAECC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_21D0C9000, v61, v62, "makeVisible called outside of performSubviewUpdates", v63, 2u);
      MEMORY[0x223D46520](v63, -1, -1);
    }

LABEL_25:
    v64 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v65 = *(v24 + v64);
    v66 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + v64) = v65;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_21D256D30(v65);
      *(v24 + v64) = v65;
    }

    if (v65[2] >= 0xBuLL)
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v68 = v65[44];
  v65[44] = v66;
  v65[45] = 1;
  *(v65 + 23) = v76;
  *(v24 + v64) = v65;
  swift_endAccess();
  sub_21D157878(v68);
}

int *sub_21D62DB40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v36, v8, v9);
  v34 = BYTE2(v36[0]);

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v33 = (*(v11 + 32))(v10, v11);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v32 = (*(v13 + 40))(v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 160))(v14, v15);
  v18 = v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 272))(v35, v19, v20);
  v21 = v35[1];

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 216))(v22, v23);
  v25 = *(a2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC20100);
  v36[5] = v25;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v26 = *(v25 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible);

  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v27 = sub_21D900614(1);
  result = type metadata accessor for TTRReminderCellTitleViewModel(0);
  v29 = result[7];
  v30 = result[9];
  *(a3 + result[5]) = v34;
  *(a3 + v29) = v33;
  *(a3 + result[6]) = v27;
  v31 = a3 + v30;
  *(a3 + result[8]) = v32 & 1;
  *v31 = v16;
  *(v31 + 8) = v18 & 1;
  *(a3 + result[10]) = v21;
  *(a3 + result[11]) = v24;
  *(a3 + result[12]) = v26;
  return result;
}

void sub_21D62DE5C(void *a1)
{
  [a1 setTextContainerInset_];
  v2 = [a1 textContainer];
  [v2 setLineFragmentPadding_];

  v3 = [a1 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    [v3 setUsesFontLeading_];
  }

  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [a1 setBackgroundColor_];

  [a1 setAdjustsFontForContentSizeCategory_];
  v7 = [v5 secondaryLabelColor];
  [a1 setTextColor_];

  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v8 = sub_21D900614(6);
  [a1 setFont_];

  v9 = [a1 textContainer];
  [v9 setLineBreakMode_];
}

id sub_21D62E02C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
  v22 = 0;
  v5 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 8, 0, &v22, 0);
  sub_21D62DE5C(v5);
  v6 = [v5 textDragInteraction];
  if (v6)
  {
    v7 = v6;
    [v6 setEnabled_];
    [v5 removeInteraction_];
  }

  [v5 setTextDropDelegate_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 placeholderTextColor];
  v13 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  *(inited + 40) = v12;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 80) = a2;
  v15 = v14;
  v16 = a2;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v19 = sub_21DBF9E5C();

  v20 = [v17 initWithString:v18 attributes:v19];

  [v5 setAttributedPlaceholder_];
  return v5;
}

id sub_21D62E390(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;

  v12 = sub_21D2414F0();

  if (v12)
  {
    v13 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      [a1 setUserInteractionEnabled_];
      v14 = *(v2 + v11);
      swift_getKeyPath("@o%_");
      v18[0] = v14;
      sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

      sub_21DBF5D9C();

      v15 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
      swift_beginAccess();
      sub_21D0D3954(v14 + v15, v6, &qword_27CE5A0B8, &qword_21DC0E120);

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A0B8, &qword_21DC0E120);
        v16 = 0;
      }

      else
      {
        sub_21D6397E0(v6, v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
        sub_21DAFD730(v7, v18);
        v16 = BYTE2(v18[0]);

        sub_21D6398B0(v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
      }

      return [a1 setEditable_];
    }

    else
    {
      [a1 setUserInteractionEnabled_];
      return [a1 setEditable_];
    }
  }

  else
  {

    return [a1 setUserInteractionEnabled_];
  }
}

void *sub_21D62E6D0(uint64_t a1, __n128 a2)
{
  v3 = sub_21DBFB83C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21DBFB7CC();
  sub_21DBFB82C();
  (*(v4 + 104))(v6, *MEMORY[0x277D74FF8], v3);
  sub_21DBFB85C();
  sub_21D0D8CF0(0, &qword_280D0C1C0, 0x277D75220);
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_21DBFB96C();
  v15 = [v14 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setNumberOfLines_];
  }

  v17 = [v14 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setLineBreakMode_];
  }

  [v14 addTarget:a1 action:sel_suggestedSectionButtonAction_ forControlEvents:0x2000];
  (*(v8 + 8))(v13, v7);
  return v14;
}

void sub_21D62E958(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 32 * v2 + 32);
    if (v5)
    {
      v6 = v5;
      if (([v6 isHidden] & 1) != 0 || (objc_opt_self(), !swift_dynamicCastObjCClass()))
      {
      }
    }
  }
}

void sub_21D62EA00(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 32 * v2 + 32);
    if (v5)
    {
      v6 = v5;
      if (([v6 isHidden] & 1) != 0 || (type metadata accessor for TTRIRemindersListDescriptionAndTagsView(), !swift_dynamicCastClass()))
      {
      }
    }
  }
}

void sub_21D62EAA4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 32 * v2 + 32);
    if (v5)
    {
      v6 = v5;
      if ([v6 isHidden])
      {
      }
    }
  }
}

uint64_t sub_21D62EB34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v5 + 8), v7 = swift_getObjectType(), LOBYTE(v6) = (*(v6 + 48))(v0, v7, v6), result = swift_unknownObjectRelease(), (v6 & 1) != 0))
  {
    v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath("@o%_");
    v23 = v9;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

    sub_21DBF5D9C();

    v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    sub_21D0D3954(v9 + v10, v4, &qword_27CE5A0B8, &qword_21DC0E120);

    v11 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
    {
      return sub_21D0CF7E0(v4, &qword_27CE5A0B8, &qword_21DC0E120);
    }

    else
    {
      v25 = v11;
      v26 = &protocol witness table for TTRRemindersListViewModel.Reminder;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      sub_21D6397E0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
      sub_21D0D0FD0(&v24, v27);
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_21DAFD730(v11, &v24);
      v13 = v24;

      if (v13 >> 6)
      {
        if (v13 >> 6 == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v14 = *(v5 + 8);
            ObjectType = swift_getObjectType();
            v22 = v13 & 1;
            (*(v14 + 120))(v1, &v22, ObjectType, v14);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v22 = 0;
          TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(&v22);
        }
      }

      else if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v5 + 8);
        v17 = swift_getObjectType();
        v18 = v28;
        v19 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v20 = (*(v19 + 40))(v18, v19);
        (*(v16 + 56))(v1, (v20 & 1) == 0, v17, v16);
        swift_unknownObjectRelease();
      }

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }
  }

  return result;
}

double sub_21D62EED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v6);
  v23[0] = v9;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v9 + v10, v3, &qword_27CE5A0B8, &qword_21DC0E120);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8, &qword_21DC0E120);
  }

  else
  {
    sub_21D6397E0(v3, v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFE90C(v4, v23);
    v11 = v23[0];
    v12 = v23[1];
    sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v12 >= 2)
    {

      v18 = v22;
      v19 = v22 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 176))(v18, v11, v12, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return result;
    }
  }

  if (qword_27CE56AF8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  __swift_project_value_buffer(v13, qword_27CE5EFD0);
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Should not be able to trigger SuggestedSectionButtonAction as button should be hidden when no suggestion available", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  return result;
}

uint64_t sub_21D62F2A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_21D0CF7E0(v9, &qword_27CE5C690, &unk_21DC11AB0);
}

void *TTRIRemindersListReminderCell_collectionView.customAccessibilityElement.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListReminderCell_collectionView.customAccessibilityElement.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v6);
  v13[1] = v9;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v9 + v10, v3, &qword_27CE5A0B8, &qword_21DC0E120);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8, &qword_21DC0E120);
    return 0;
  }

  else
  {
    sub_21D6397E0(v3, v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v12 = sub_21DAFD7DC(v4);
    sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return v12;
  }
}

void TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityIdentifier_, v5);
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v3[7] = swift_getObjectType();
  *v4 = TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.getter();
  v4[1] = v5;
  return sub_21D62F8B8;
}

void sub_21D62F8B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {
      sub_21DBF8E0C();
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityIdentifier_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 32), sel_setAccessibilityIdentifier_, v5);
  }

  free(v2);
}

BOOL TTRIRemindersListReminderCell_collectionView.isAccessibilityElement.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FA90);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v3)
  {
    return 1;
  }

  if ([*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) isFirstResponder])
  {
    return 0;
  }

  sub_21D62E958(1u);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isFirstResponder];

    if (v7)
    {
      return 0;
    }
  }

  v8 = [objc_opt_self() currentRequest];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 technology];

    v11 = sub_21DBFA16C();
    v13 = v12;
    if (v11 == sub_21DBFA16C() && v13 == v14)
    {

      return 1;
    }

    v15 = sub_21DBFC64C();

    if (v15)
    {
      return 1;
    }
  }

  return UIAccessibilityIsSwitchControlRunning();
}

id TTRIRemindersListReminderCell_collectionView.accessibilityAttributedLabel.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4 || (v5 = v4, v6 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter(), v5, (result = v6) == 0))
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel_accessibilityAttributedLabel);
  }

  return result;
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityAttributedLabel.modify(char **a1))(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!v8 || (v9 = v8, v10 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter(), v9, !v10))
  {
    *(v6 + 3) = v2;
    *(v6 + 4) = ObjectType;
    v10 = objc_msgSendSuper2((v6 + 24), sel_accessibilityAttributedLabel);
  }

  *(v6 + 5) = v10;
  return sub_21D62FE70;
}

void sub_21D62FE70(uint64_t a1)
{
  v1 = *a1;

  free(v1);
}

Swift::String __swiftcall TTRIRemindersListReminderCell_collectionView._accessibilityBriefLabel()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, sel_accessibilityAttributedLabel);
  if (v7)
  {
    v6 = v7;
LABEL_5:
    v8 = [v6 string];

    goto LABEL_7;
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel__accessibilityBriefLabel);
  v8 = v9;
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_7:
  v11 = sub_21DBFA16C();
  v13 = v12;

  v9 = v11;
  v10 = v13;
LABEL_9:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

char *TTRIRemindersListReminderCell_collectionView.accessibilityElements.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FA90);
  *&v75 = v2;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v3)
  {
    return 0;
  }

  sub_21D62E958(1u);
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  if (([v7 isFirstResponder] & 1) == 0 && (!v6 || !objc_msgSend(v6, sel_isFirstResponder)))
  {
    v13 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (!v14)
    {

      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680, &qword_21DC0C030);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC08D00;
    *(v15 + 56) = type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    *(v15 + 32) = v14;
    v16 = v14;

    return v15;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680, &qword_21DC0C030);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 56) = type metadata accessor for TTRIReminderTitleTextView();
  *(v9 + 32) = v7;
  v77 = v9;
  if (v6)
  {
    v76 = sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40);
    *&v75 = v6;
    v10 = v7;
    v11 = v6;
    v12 = sub_21D213408(1, 2, 1, v9);
    *(v12 + 2) = 2;
    sub_21D0CF2E8(&v75, v12 + 4);
    v77 = v12;
  }

  else
  {
    v17 = v7;
  }

  v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  v19 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v20 = *&v18[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v21 = v18;

  sub_21D442E44(2u, v20, v21);

  v22 = *&v18[v19];
  swift_beginAccess();
  v23 = *(v22 + 40);
  if (*(v23 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_61;
  }

  sub_21D0D3954(v23 + 160, &v75, &unk_27CE5F120, &unk_21DC16030);
  if (v75)
  {
    v24 = v75;
    sub_21D0CF7E0(&v75, &unk_27CE5F120, &unk_21DC16030);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21DC08D00;
    v26 = sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v27 = v25;
    *(v25 + 56) = v26;
    *(v25 + 32) = v24;
  }

  else
  {
    sub_21D0CF7E0(&v75, &unk_27CE5F120, &unk_21DC16030);
    v27 = MEMORY[0x277D84F90];
  }

  sub_21D562F40(v27);
  v28 = sub_21D62AB60(3, type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView);
  if (v28)
  {
    v29 = v28;
    v76 = type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView();
    *&v75 = v29;
    v30 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21D213408(0, *(v30 + 2) + 1, 1, v30);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_21D213408((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    sub_21D0CF2E8(&v75, &v30[32 * v32 + 32]);
    v77 = v30;
  }

  v33 = [objc_opt_self() currentRequest];
  if (!v33)
  {
    if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
    {
      goto LABEL_34;
    }

LABEL_30:
    v41 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton);
    v76 = type metadata accessor for TTRIReminderCompletionButton();
    *&v75 = v41;
    v8 = v77;
    v42 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_31:
      v44 = *(v8 + 16);
      v43 = *(v8 + 24);
      if (v44 >= v43 >> 1)
      {
        v8 = sub_21D213408((v43 > 1), v44 + 1, 1, v8);
      }

      *(v8 + 16) = v44 + 1;
      sub_21D0CF2E8(&v75, (v8 + 32 * v44 + 32));
      v77 = v8;
      goto LABEL_34;
    }

LABEL_61:
    v8 = sub_21D213408(0, *(v8 + 16) + 1, 1, v8);
    goto LABEL_31;
  }

  v34 = v33;
  v35 = [v33 technology];

  v36 = sub_21DBFA16C();
  v38 = v37;
  if (v36 == sub_21DBFA16C() && v38 == v39)
  {
    goto LABEL_24;
  }

  v40 = sub_21DBFC64C();

  if (v40)
  {
    goto LABEL_29;
  }

  v50 = sub_21DBFA16C();
  v52 = v51;
  if (v50 == sub_21DBFA16C() && v52 == v53)
  {
    goto LABEL_24;
  }

  v54 = sub_21DBFC64C();

  if (v54)
  {
    goto LABEL_29;
  }

  v55 = sub_21DBFA16C();
  v57 = v56;
  if (v55 == sub_21DBFA16C() && v57 == v58)
  {
    goto LABEL_24;
  }

  v59 = sub_21DBFC64C();

  if (v59)
  {
    goto LABEL_29;
  }

  v60 = sub_21DBFA16C();
  v62 = v61;
  if (v60 == sub_21DBFA16C() && v62 == v63)
  {
    goto LABEL_24;
  }

  v64 = sub_21DBFC64C();

  if (v64)
  {
    goto LABEL_29;
  }

  v65 = sub_21DBFA16C();
  v67 = v66;
  if (v65 == sub_21DBFA16C() && v67 == v68)
  {
    goto LABEL_24;
  }

  v69 = sub_21DBFC64C();

  if (v69)
  {
LABEL_29:

    goto LABEL_30;
  }

  v70 = sub_21DBFA16C();
  v72 = v71;
  if (v70 == sub_21DBFA16C() && v72 == v73)
  {
LABEL_24:

    goto LABEL_30;
  }

  v74 = sub_21DBFC64C();

  if (v74)
  {
    goto LABEL_30;
  }

LABEL_34:
  v45 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v45)
  {
LABEL_37:

    return v77;
  }

  v46 = v45;
  if ([swift_unknownObjectRetain() isHidden])
  {

    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v76 = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
  *&v75 = v46;
  v47 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_21D213408(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_21D213408((v48 > 1), v49 + 1, 1, v47);
  }

  swift_unknownObjectRelease();

  *(v47 + 2) = v49 + 1;
  sub_21D0CF2E8(&v75, &v47[32 * v49 + 32]);
  v77 = v47;
  return v47;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell_collectionView.accessibilityActivate()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath(byte_21DC1FA90);
  v58[0] = v4;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v5)
  {
    v57.receiver = v1;
    v57.super_class = ObjectType;
    LOBYTE(Strong) = objc_msgSendSuper2(&v57, sel_accessibilityActivate);
    return Strong & 1;
  }

  v7 = *&v1[v3];
  swift_getKeyPath(byte_21DC1FAB8);
  v58[0] = v7;

  sub_21DBF5D9C();

  v8 = *(v7 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped);

  if ((v8 & 1) == 0)
  {
    v12 = [objc_opt_self() currentRequest];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 technology];

      v15 = sub_21DBFA16C();
      v17 = v16;
      if (v15 == sub_21DBFA16C() && v17 == v18)
      {
        goto LABEL_9;
      }

      v20 = sub_21DBFC64C();

      if (v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v22 = sub_21DBFA16C();
      v24 = v23;
      if (v22 == sub_21DBFA16C() && v24 == v25)
      {
        goto LABEL_9;
      }

      v26 = sub_21DBFC64C();

      if (v26)
      {
        goto LABEL_14;
      }

      v27 = sub_21DBFA16C();
      v29 = v28;
      if (v27 == sub_21DBFA16C() && v29 == v30)
      {
        goto LABEL_9;
      }

      v31 = sub_21DBFC64C();

      if (v31)
      {
        goto LABEL_14;
      }

      v32 = sub_21DBFA16C();
      v34 = v33;
      if (v32 == sub_21DBFA16C() && v34 == v35)
      {
        goto LABEL_9;
      }

      v36 = sub_21DBFC64C();

      if (v36)
      {
        goto LABEL_14;
      }

      v37 = sub_21DBFA16C();
      v39 = v38;
      if (v37 == sub_21DBFA16C() && v39 == v40)
      {
        goto LABEL_9;
      }

      v41 = sub_21DBFC64C();

      if (v41)
      {
        goto LABEL_14;
      }

      v42 = sub_21DBFA16C();
      v44 = v43;
      if (v42 == sub_21DBFA16C() && v44 == v45)
      {
LABEL_9:

LABEL_15:
        LOBYTE(v58[0]) = 0;
        TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(v58);
        goto LABEL_16;
      }

      v46 = sub_21DBFC64C();

      if (v46)
      {
        goto LABEL_14;
      }

      v47 = sub_21DBFA16C();
      v49 = v48;
      if (v47 == sub_21DBFA16C() && v49 == v50)
      {
        goto LABEL_35;
      }

      v51 = sub_21DBFC64C();

      if (v51)
      {

        goto LABEL_12;
      }

      v52 = sub_21DBFA16C();
      v54 = v53;
      if (v52 == sub_21DBFA16C() && v54 == v55)
      {
LABEL_35:
      }

      else
      {
        v56 = sub_21DBFC64C();

        if ((v56 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      goto LABEL_15;
    }

LABEL_12:
    v58[3] = ObjectType;
    v58[0] = v1;
    v19 = v1;
    sub_21D62EB34();
    sub_21D0CF7E0(v58, &qword_27CE5C690, &unk_21DC11AB0);
LABEL_16:
    LOBYTE(Strong) = 1;
    return Strong & 1;
  }

  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(v9 + 1);
    v11 = swift_getObjectType();
    LOBYTE(v10) = (*(v10 + 240))(v11, v10);
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v10;
  }

  return Strong & 1;
}

id TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.getter()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton];
  [v2 frame];
  CGRectGetMidX(v15);
  [v0 accessibilityFrame];
  CGRectGetMidY(v16);
  [*&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] accessibilityActivationPoint];
  v3 = [objc_opt_self() currentRequest];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 technology];

    v6 = sub_21DBFA16C();
    v8 = v7;
    if (v6 == sub_21DBFA16C() && v8 == v9)
    {

      goto LABEL_10;
    }

    v11 = sub_21DBFC64C();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (!UIAccessibilityIsSwitchControlRunning())
  {
    goto LABEL_11;
  }

LABEL_10:
  v12 = *&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath(byte_21DC1FA90);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v13 = *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v13)
  {
LABEL_11:
    swift_getKeyPath(byte_21DC1FA90);
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

    sub_21DBF5D9C();
  }

  return [v2 accessibilityActivationPoint];
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.modify(void *a1))()
{
  TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.getter();
  *a1 = v2;
  a1[1] = v3;
  return nullsub_1;
}

unint64_t TTRIRemindersListReminderCell_collectionView.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_accessibilityTraits);
  if ([v0 isSelected])
  {
    v2 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v1) == 0)
    {
      v2 = 0;
    }

    v1 |= v2;
  }

  return v1;
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityTraits.modify(objc_super *a1))()
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  v5 = [(objc_super *)a1 accessibilityTraits];
  if ([v2 isSelected])
  {
    v6 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v5) == 0)
    {
      v6 = 0;
    }

    v5 |= v6;
  }

  a1[1].receiver = v5;
  return nullsub_1;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell_collectionView.accessibilityPerformEscape()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
  if ([v3 isFirstResponder])
  {
    [v3 resignFirstResponder];
    return 1;
  }

  sub_21D62E958(1u);
  if (v5)
  {
    v6 = v5;
    if ([v5 isFirstResponder])
    {
      [v6 resignFirstResponder];

      return 1;
    }
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_accessibilityPerformEscape);
}

id TTRIRemindersListReminderCell_collectionView.accessibilityDragSourceDescriptors.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath("@o%_", v7);
  v17 = v10;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v11 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v10 + v11, v4, &qword_27CE5A0B8, &qword_21DC0E120);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A0B8, &qword_21DC0E120);
  }

  else
  {
    sub_21D6397E0(v4, v9, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v5, &v17);
    v12 = v18;

    sub_21D6398B0(v9, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v19.receiver = v1;
  v19.super_class = ObjectType;
  result = objc_msgSendSuper2(&v19, sel_accessibilityDragSourceDescriptors, ObjectType);
  if (result)
  {
    v14 = result;
    sub_21D0D8CF0(0, &unk_27CE5FB40, 0x277D750B8);
    v15 = sub_21DBFA5EC();

    return v15;
  }

  return result;
}

id sub_21D6318CC(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  v9 = a3();

  if (v9)
  {
    sub_21D0D8CF0(0, a4, a5);
    v10 = sub_21DBFA5DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t TTRIRemindersListReminderCell_collectionView.accessibilityCustomActions.getter()
{
  v1 = v0;
  v2 = sub_21DBF54CC();
  v216 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v213 = &v195[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = v3;
  MEMORY[0x28223BE20](v4);
  v217 = &v195[-v5];
  v212 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v215 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v218 = &v195[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v195[-v9];
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v12 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath(byte_21DC1FA90, v8);
  *&v251 = v12;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v13 = *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  result = 0;
  if (v13)
  {
    return result;
  }

  v15 = *&v1[v11];
  swift_getKeyPath("@o%_");
  *&v249[0] = v15;

  sub_21DBF5D9C();

  v16 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v15 + v16, v10, &qword_27CE5A0B8, &qword_21DC0E120);

  v17 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5A0B8, &qword_21DC0E120);
    return 0;
  }

  *(&v252 + 1) = v17;
  *&v253 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v251);
  sub_21D6397E0(v10, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v251, v267);
  v19 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v267);
    return 0;
  }

  v21 = Strong;
  v22 = *(v19 + 1);
  ObjectType = swift_getObjectType();
  if (((*(v22 + 264))(ObjectType, v22) & 1) != 0 || (v199 = v21, v229 = v1, v24 = v268, v25 = v269, __swift_project_boxed_opaque_existential_1(v267, v268), (*(v25 + 16))(&v251, v24, v25), v26 = BYTE9(v252), , v26 != 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v266 = MEMORY[0x277D84F90];
  if (qword_27CE57310 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v226 = objc_opt_self();
    v27 = [v226 configurationWithPointSize_];
    v28 = sub_21DBFA12C();
    v225 = objc_opt_self();
    v29 = [v225 _systemImageNamed_withConfiguration_];

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = objc_allocWithZone(MEMORY[0x277D75088]);

    v32 = sub_21DBFA12C();
    *&v253 = sub_21D638838;
    *(&v253 + 1) = v30;
    *&v251 = MEMORY[0x277D85DD0];
    *(&v251 + 1) = 1107296256;
    *&v252 = sub_21D1A62AC;
    *(&v252 + 1) = &block_descriptor_69;
    v33 = _Block_copy(&v251);
    v34 = [v31 initWithName:v32 image:v29 actionHandler:v33];

    _Block_release(v33);

    v35 = v34;
    MEMORY[0x223D42D80]();
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v198 = v35;
    sub_21DBFA6CC();
    v36 = v268;
    v37 = v269;
    __swift_project_boxed_opaque_existential_1(v267, v268);
    if ((*(v37 + 224))(v36, v37))
    {
      if (qword_27CE57318 != -1)
      {
        swift_once();
      }

      v38 = [v226 configurationWithPointSize_];
      v39 = sub_21DBFA12C();
      v40 = [v225 _systemImageNamed_withConfiguration_];

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(MEMORY[0x277D75088]);

      v43 = sub_21DBFA12C();
      *&v253 = sub_21D63898C;
      *(&v253 + 1) = v41;
      *&v251 = MEMORY[0x277D85DD0];
      *(&v251 + 1) = 1107296256;
      *&v252 = sub_21D1A62AC;
      *(&v252 + 1) = &block_descriptor_64;
      v44 = _Block_copy(&v251);
      v45 = [v42 initWithName:v43 image:v40 actionHandler:v44];

      _Block_release(v44);

      v46 = v45;
      MEMORY[0x223D42D80]();
      if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    v47 = v268;
    v48 = v269;
    __swift_project_boxed_opaque_existential_1(v267, v268);
    v49 = (*(v48 + 112))(v47, v48);
    if (!v49)
    {
      goto LABEL_26;
    }

    v50 = v49;
    v51 = [v49 string];

    v52 = sub_21DBFA16C();
    v54 = v53;

    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {
LABEL_26:
      if (qword_27CE57320 == -1)
      {
        goto LABEL_27;
      }

LABEL_122:
      swift_once();
      goto LABEL_27;
    }

    if (qword_27CE57328 != -1)
    {
      goto LABEL_122;
    }

LABEL_27:
    sub_21DBF8E0C();
    v56 = [v226 configurationWithPointSize_];
    v57 = sub_21DBFA12C();

    v58 = [v225 _systemImageNamed_withConfiguration_];

    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = objc_allocWithZone(MEMORY[0x277D75088]);

    v61 = sub_21DBFA12C();

    *&v253 = sub_21D638840;
    *(&v253 + 1) = v59;
    *&v251 = MEMORY[0x277D85DD0];
    *(&v251 + 1) = 1107296256;
    *&v252 = sub_21D1A62AC;
    *(&v252 + 1) = &block_descriptor_21;
    v62 = _Block_copy(&v251);
    v63 = [v60 initWithName:v61 image:v58 actionHandler:v62];

    _Block_release(v62);

    v64 = v63;
    MEMORY[0x223D42D80]();
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v197 = v64;
    sub_21DBFA6CC();
    v65 = v266;
    v66 = v268;
    v67 = v269;
    __swift_project_boxed_opaque_existential_1(v267, v268);
    v68 = (*(v67 + 160))(v66, v67);
    if ((v69 & 1) != 0 || v68 < 1 || (v70 = v268, v71 = v269, __swift_project_boxed_opaque_existential_1(v267, v268), (*(v71 + 176))(v249, v70, v71), LOBYTE(v249[0]) == 2))
    {
LABEL_32:
      v72 = v65;
      goto LABEL_33;
    }

    if (v249[0])
    {

      sub_21D2416E8(&v251);

      if (!v251)
      {
        goto LABEL_32;
      }

      if (v251 == 1)
      {
        if (qword_27CE57330 == -1)
        {
          goto LABEL_116;
        }
      }

      else if (qword_27CE57338 == -1)
      {
LABEL_116:
        sub_21DBF8E0C();
        UIAccessibilityButtonShapesEnabled();
        v186 = [v226 configurationWithPointSize_];
        v187 = sub_21DBFA12C();

        v188 = [v225 _systemImageNamed_withConfiguration_];

        v189 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v190 = objc_allocWithZone(MEMORY[0x277D75088]);

        v191 = sub_21DBFA12C();

        *&v253 = sub_21D638984;
        *(&v253 + 1) = v189;
        *&v251 = MEMORY[0x277D85DD0];
        *(&v251 + 1) = 1107296256;
        *&v252 = sub_21D1A62AC;
        *(&v252 + 1) = &block_descriptor_60_0;
        v192 = _Block_copy(&v251);
        v193 = [v190 initWithName:v191 image:v188 actionHandler:v192];

        _Block_release(v192);

        v194 = v193;
        MEMORY[0x223D42D80]();
        if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v72 = v266;
        goto LABEL_33;
      }

      swift_once();
      goto LABEL_116;
    }

    if (qword_27CE57340 != -1)
    {
      swift_once();
    }

    v178 = [v226 configurationWithPointSize_];
    v179 = sub_21DBFA12C();
    v180 = [v225 _systemImageNamed_withConfiguration_];

    v181 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v182 = objc_allocWithZone(MEMORY[0x277D75088]);

    v183 = sub_21DBFA12C();
    *&v253 = sub_21D63897C;
    *(&v253 + 1) = v181;
    *&v251 = MEMORY[0x277D85DD0];
    *(&v251 + 1) = 1107296256;
    *&v252 = sub_21D1A62AC;
    *(&v252 + 1) = &block_descriptor_56_1;
    v184 = _Block_copy(&v251);
    [v182 initWithName:v183 image:v180 actionHandler:v184];

    _Block_release(v184);

    MEMORY[0x223D42D80](v185);
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v72 = v266;
LABEL_33:
    v73 = v268;
    v74 = v269;
    __swift_project_boxed_opaque_existential_1(v267, v268);
    (*(v74 + 264))(&v234, v73, v74);
    v249[12] = v246;
    v249[13] = v247;
    v249[8] = v242;
    v249[9] = v243;
    v249[10] = v244;
    v249[11] = v245;
    v249[4] = v238;
    v249[5] = v239;
    v249[6] = v240;
    v249[7] = v241;
    v249[0] = v234;
    v249[1] = v235;
    v249[2] = v236;
    v249[3] = v237;
    v263 = v246;
    v264 = v247;
    v259 = v242;
    v260 = v243;
    v261 = v244;
    v262 = v245;
    v255 = v238;
    v256 = v239;
    v257 = v240;
    v258 = v241;
    v251 = v234;
    v252 = v235;
    v250 = v248;
    v265 = v248;
    v253 = v236;
    v254 = v237;
    if (sub_21D4B9498(&v251) == 1)
    {
      v75 = v217;
    }

    else
    {
      sub_21D0CF7E0(v249, &unk_27CE5FB50, &qword_21DC1FAE0);
      v75 = v217;
      if (qword_27CE57360 != -1)
      {
        swift_once();
      }

      v76 = [v226 configurationWithPointSize_];
      v77 = sub_21DBFA12C();
      v78 = [v225 _systemImageNamed_withConfiguration_];

      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = objc_allocWithZone(MEMORY[0x277D75088]);

      v81 = sub_21DBFA12C();
      *&v236 = sub_21D638974;
      *(&v236 + 1) = v79;
      *&v234 = MEMORY[0x277D85DD0];
      *(&v234 + 1) = 1107296256;
      *&v235 = sub_21D1A62AC;
      *(&v235 + 1) = &block_descriptor_52_1;
      v82 = _Block_copy(&v234);
      v83 = [v80 initWithName:v81 image:v78 actionHandler:v82];

      _Block_release(v82);

      v84 = v83;
      MEMORY[0x223D42D80]();
      if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v72 = v266;
    }

    v85 = v268;
    v86 = v269;
    __swift_project_boxed_opaque_existential_1(v267, v268);
    v87 = (*(v86 + 120))(v85, v86);
    if (!v87)
    {
      break;
    }

    v88 = *(v87 + 16);
    v196 = v88 != 0;
    v208 = v88;
    if (!v88)
    {
LABEL_69:

      v139 = v196;
      goto LABEL_71;
    }

    v89 = 0;
    v90 = *&v229[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
    v206 = v87 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
    v207 = v90;
    v204 = 0x800000021DC63DF0;
    v205 = "Cell content stack view";
    v211 = (v216 + 16);
    v203 = v216 + 32;
    v224 = &v235;
    v200 = (v216 + 8);
    v223 = xmmword_21DC08D00;
    v201 = v87;
    v202 = v2;
    while (v89 < *(v87 + 16))
    {
      v91 = v218;
      sub_21D639848(v206 + *(v215 + 72) * v89, v218, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v92 = *v211;
      (*v211)(v75, &v91[*(v212 + 20)], v2);
      v228 = sub_21DBF53EC();
      v230 = v93;
      if (!v93)
      {
        v228 = sub_21DBF535C();
        v230 = v94;
      }

      v210 = v89;
      if (qword_27CE57378 != -1)
      {
        swift_once();
      }

      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v95 = swift_allocObject();
      *(v95 + 16) = v223;
      *(v95 + 56) = MEMORY[0x277D837D0];
      v221 = sub_21D17A884();
      *(v95 + 64) = v221;
      v96 = v230;
      *(v95 + 32) = v228;
      *(v95 + 40) = v96;
      sub_21DBF8E0C();
      sub_21DBFA17C();
      v97 = [v226 configurationWithPointSize_];
      v98 = sub_21DBFA12C();
      v99 = [v225 _systemImageNamed_withConfiguration_];

      v100 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v101 = v213;
      v92(v213, v75, v2);
      v102 = v216;
      v103 = (*(v216 + 80) + 24) & ~*(v216 + 80);
      v104 = swift_allocObject();
      *(v104 + 16) = v100;
      (*(v102 + 32))(v104 + v103, v101, v2);
      v105 = objc_allocWithZone(MEMORY[0x277D75088]);

      v106 = sub_21DBFA12C();

      *&v236 = sub_21D6388F4;
      *(&v236 + 1) = v104;
      *&v234 = MEMORY[0x277D85DD0];
      *(&v234 + 1) = 1107296256;
      *&v235 = sub_21D1A62AC;
      *(&v235 + 1) = &block_descriptor_41_0;
      v107 = _Block_copy(&v234);
      v108 = [v105 initWithName:v106 image:v99 actionHandler:v107];

      _Block_release(v107);

      v109 = v108;
      MEMORY[0x223D42D80]();
      if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v209 = v109;
      sub_21DBFA6CC();
      v72 = v266;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v220 = sub_21DBF516C();
      v227 = v110;
      sub_21D6A4844();
      v112 = v111;
      v113 = v229;
      if (v111 >> 62)
      {
        v114 = sub_21DBFBD7C();
        if (!v114)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v114 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v114)
        {
          goto LABEL_43;
        }
      }

      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      if (v114 < 1)
      {
        goto LABEL_120;
      }

      v115 = 0;
      v116 = *v218;
      v231 = v112 & 0xC000000000000001;
      v232 = v116;
      v233 = v114;
      v219 = v112;
      do
      {
        if (v231)
        {
          v117 = MEMORY[0x223D44740](v115, v112);
        }

        else
        {
          v117 = *(v112 + 8 * v115 + 32);
        }

        v118 = v117;
        v119 = *&v117[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
        v120 = sub_21DBFB63C();

        if ((v120 & 1) != 0 && (v121 = [v113 superview]) != 0)
        {
          v122 = v121;
          [v118 accessibilityActivationPoint];
          [v122 convertPoint:0 fromView:?];
          v124 = v123;
          v126 = v125;

          v127 = swift_allocObject();
          *(v127 + 16) = v223;
          v128 = v221;
          *(v127 + 56) = MEMORY[0x277D837D0];
          *(v127 + 64) = v128;
          *(v127 + 32) = v228;
          *(v127 + 40) = v230;
          sub_21DBF8E0C();
          sub_21DBFA17C();
          v129 = [v226 configurationWithPointSize_];
          v130 = sub_21DBFA12C();
          v131 = [v225 _systemImageNamed_withConfiguration_];

          v132 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v133 = swift_allocObject();
          v133[2] = v132;
          v133[3] = v124;
          v133[4] = v126;
          v134 = objc_allocWithZone(MEMORY[0x277D75088]);

          v135 = sub_21DBFA12C();

          *&v236 = sub_21D638968;
          *(&v236 + 1) = v133;
          *&v234 = MEMORY[0x277D85DD0];
          *(&v234 + 1) = 1107296256;
          *&v235 = sub_21D1A62AC;
          *(&v235 + 1) = &block_descriptor_48_1;
          v136 = _Block_copy(&v234);
          v137 = [v134 initWithName:v135 image:v131 actionHandler:v136];

          _Block_release(v136);

          v138 = v137;
          MEMORY[0x223D42D80]();
          if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v72 = v266;
          v113 = v229;
          v112 = v219;
        }

        else
        {
        }

        ++v115;
      }

      while (v233 != v115);
LABEL_43:
      v89 = v210 + 1;

      v75 = v217;
      v2 = v202;
      (*v200)(v217, v202);
      sub_21D6398B0(v218, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v87 = v201;
      if (v89 == v208)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  v139 = 0;
LABEL_71:
  v140 = v268;
  v141 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  v142 = (*(v141 + 128))(v140, v141);
  if (v142)
  {
    v143 = *(v142 + 16);

    if (v143)
    {
      if (qword_27CE57358 != -1)
      {
        swift_once();
      }

      v144 = [v226 configurationWithPointSize_];
      v145 = sub_21DBFA12C();
      v146 = [v225 _systemImageNamed_withConfiguration_];

      v147 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v148 = objc_allocWithZone(MEMORY[0x277D75088]);

      v149 = sub_21DBFA12C();
      *&v236 = sub_21D6388EC;
      *(&v236 + 1) = v147;
      *&v234 = MEMORY[0x277D85DD0];
      *(&v234 + 1) = 1107296256;
      *&v235 = sub_21D1A62AC;
      *(&v235 + 1) = &block_descriptor_34_1;
      v150 = _Block_copy(&v234);
      v151 = [v148 initWithName:v149 image:v146 actionHandler:v150];

      _Block_release(v150);

      v152 = v151;
      MEMORY[0x223D42D80]();
      if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

LABEL_79:
      v153 = v268;
      v154 = v269;
      __swift_project_boxed_opaque_existential_1(v267, v268);
      if ((*(v154 + 144))(v153, v154))
      {
        if (qword_27CE57350 == -1)
        {
LABEL_83:
          sub_21DBF8E0C();
          v155 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v156 = objc_allocWithZone(MEMORY[0x277D75088]);

          v157 = sub_21DBFA12C();

          *&v236 = sub_21D6388E4;
          *(&v236 + 1) = v155;
          *&v234 = MEMORY[0x277D85DD0];
          *(&v234 + 1) = 1107296256;
          *&v235 = sub_21D1A62AC;
          *(&v235 + 1) = &block_descriptor_30;
          v158 = _Block_copy(&v234);
          v159 = [v156 initWithName:v157 actionHandler:v158];

          _Block_release(v158);

          v160 = v159;
          MEMORY[0x223D42D80]();
          if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v72 = v266;
          goto LABEL_86;
        }
      }

      else if (qword_27CE57348 == -1)
      {
        goto LABEL_83;
      }

      swift_once();
      goto LABEL_83;
    }
  }

  if (v139)
  {
    goto LABEL_79;
  }

LABEL_86:
  v161 = v268;
  v162 = v269;
  __swift_project_boxed_opaque_existential_1(v267, v268);
  (*(v162 + 240))(&v234, v161, v162);
  v163 = v234;
  if (v234)
  {
    if (v235)
    {
      v164 = *(&v234 + 1);
      v165 = v235;
    }

    else
    {
      if (qword_27CE57388 != -1)
      {
        swift_once();
      }

      v164 = qword_27CE66E50;
      v165 = *algn_27CE66E58;
      sub_21DBF8E0C();
    }

    v166 = qword_27CE57380;
    sub_21DBF8E0C();
    if (v166 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_21DC08D00;
    *(v167 + 56) = MEMORY[0x277D837D0];
    *(v167 + 64) = sub_21D17A884();
    *(v167 + 32) = v164;
    *(v167 + 40) = v165;
    sub_21DBFA17C();
    v168 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v169 = objc_allocWithZone(MEMORY[0x277D75088]);

    v170 = sub_21DBFA12C();

    *&v236 = sub_21D63889C;
    *(&v236 + 1) = v168;
    *&v234 = MEMORY[0x277D85DD0];
    *(&v234 + 1) = 1107296256;
    *&v235 = sub_21D1A62AC;
    *(&v235 + 1) = &block_descriptor_26_0;
    v171 = _Block_copy(&v234);
    v172 = [v169 initWithName:v170 actionHandler:v171];

    _Block_release(v171);

    v173 = v172;
    MEMORY[0x223D42D80]();
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    sub_21D6388A4(v163);

    v72 = v266;
  }

  if (qword_280D168D8 != -1)
  {
    swift_once();
  }

  v174 = qword_280D168E0;
  v175 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v176 = sub_21D63910C(v267, v174, sub_21D638848, v175, &unk_282EC99F8, sub_21D639AEC, &block_descriptor_210_1);

  if (v176)
  {
    v177 = v176;
    MEMORY[0x223D42D80]();
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    swift_unknownObjectRelease();
    v72 = v266;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v267);
  return v72;
}

BOOL sub_21D633E9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 0;
    TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(&v4);
  }

  return Strong != 0;
}

void sub_21D633F00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
    v5 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
    v6 = *&v4[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
    v7 = v4;

    sub_21D442E44(2u, v6, v7);

    v8 = *&v4[v5];
    swift_beginAccess();
    v9 = *(v8 + 40);
    if (*(v9 + 16) < 3uLL)
    {
      __break(1u);
    }

    else
    {
      sub_21D0D3954(v9 + 160, v14, &unk_27CE5F120, &unk_21DC16030);
      if (v14[0])
      {
        v10 = v14[0];
        sub_21D0CF7E0(v14, &unk_27CE5F120, &unk_21DC16030);
        v11 = &v7[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 1);
          ObjectType = swift_getObjectType();
          (*(v12 + 16))(v7, v10, ObjectType, v12);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        sub_21D0CF7E0(v14, &unk_27CE5F120, &unk_21DC16030);
      }
    }
  }
}

id sub_21D63409C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView;
  if (![*(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) canBecomeFirstResponder])
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack;
  v6 = *&v3[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
  sub_21D62E958(1u);
  v8 = v7;

  if (v8)
  {
  }

  else
  {
    [*&v3[v4] becomeFirstResponder];
  }

  v10 = *&v3[v5];
  sub_21D62E958(1u);
  v12 = v11;

  if (v12)
  {
    v9 = [v12 becomeFirstResponder];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

uint64_t TTRIRemindersListReminderCell_collectionView.subtasksExpandedState.getter@<X0>(char *a1@<X8>)
{

  sub_21D2416E8(a1);
}

BOOL sub_21D6341F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
    v5 = v4 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(v4, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  return v3 != 0;
}

uint64_t sub_21D6342B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 144))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D63437C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
    sub_21D6BB93C();
  }

  return v3 != 0;
}

uint64_t sub_21D6343F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v7 = *(v6 + 8);

  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 232))(a3, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9 & 1;
}

id sub_21D6344C8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = [Strong ttriAccessibilityShowContextMenuAtPoint_];

  return v8;
}

uint64_t sub_21D63454C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v28 = v10;
  v15 = *(result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_");
  v29 = v15;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v16 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v15 + v16, v4, &qword_27CE5A0B8, &qword_21DC0E120);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_21D0CF7E0(v4, &qword_27CE5A0B8, &qword_21DC0E120);
    return 0;
  }

  sub_21D6397E0(v4, v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21DAFE108(v5);
  if (!v17)
  {
LABEL_11:

    sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return 0;
  }

  if (!*(v17 + 16))
  {

    goto LABEL_11;
  }

  sub_21D639848(v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v12, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);

  v18 = *v12;
  sub_21D6398B0(v12, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
  sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v19 = &v14[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    v21 = *&v14[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
    sub_21D62EAA4(9u);
    v23 = v22;

    if (v23)
    {
      swift_getObjectType();
      v24 = swift_conformsToProtocol2();
      if (v24)
      {
        v25 = v23;
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 168))(v14, v18, v26, v24, ObjectType, v20);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21D6349F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 224))(ObjectType, v5);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D634AB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 160))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v3 != 0;
}

BOOL sub_21D634B78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    memset(v3, 0, sizeof(v3));
    sub_21D62EED0();

    sub_21D0CF7E0(v3, &qword_27CE5C690, &unk_21DC11AB0);
  }

  return Strong != 0;
}

void TTRIRemindersListReminderCell_collectionView._accessibilityInternalTextLinks()()
{
  v1 = [v0 _accessibleSubviews];
  if (!v1)
  {
    goto LABEL_47;
  }

  v2 = v1;
  v3 = sub_21DBFA5EC();

  v4 = *(v3 + 16);
  if (!v4)
  {

    return;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = MEMORY[0x277D84F90];
  v30 = *(v3 + 16);
  v31 = v3;
  v29 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_21D0CEB98(v6 + 32 * v5, v34);
    sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [v33 _accessibilityInternalTextLinks];
    if (!v8)
    {

      goto LABEL_5;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &unk_27CE5F130, 0x277D74008);
    v10 = sub_21DBFA5EC();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_21DBFBD7C();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v14 = sub_21DBFBD7C();
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v12;
    v15 = __OFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      goto LABEL_42;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v13)
      {
LABEL_19:
        sub_21DBFBD7C();
      }

LABEL_20:
      v7 = sub_21DBFBF9C();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_21:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v11)
    {
      v20 = sub_21DBFBD7C();
      if (v20)
      {
LABEL_23:
        if (((v19 >> 1) - v18) < v32)
        {
          goto LABEL_44;
        }

        v21 = v17 + 8 * v18 + 32;
        if (v11)
        {
          if (v20 < 1)
          {
            goto LABEL_46;
          }

          sub_21D0D0F1C(&unk_27CE5F140, &unk_27CE5FB60, &unk_21DC22110, MEMORY[0x277D83988]);
          for (i = 0; i != v20; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB60, &unk_21DC22110);
            v24 = sub_21D198D24(v34, i, v10);
            v26 = *v25;
            (v24)(v34, 0);
            *(v21 + 8 * i) = v26;
          }

          v22 = v32;
          if (v32 <= 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = v32;
          swift_arrayInitWithCopy();

          if (v32 <= 0)
          {
LABEL_36:
            v4 = v30;
            v3 = v31;
            v6 = v29;
            goto LABEL_5;
          }
        }

        v27 = *(v17 + 16);
        v15 = __OFADD__(v27, v22);
        v28 = v27 + v22;
        if (v15)
        {
          goto LABEL_45;
        }

        *(v17 + 16) = v28;
        goto LABEL_36;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_23;
      }
    }

    v4 = v30;
    v3 = v31;
    v6 = v29;
    if (v32 > 0)
    {
      goto LABEL_43;
    }

LABEL_5:
    if (++v5 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall TTRIRemindersListReminderCell_collectionView._privateAccessibilityCustomActions()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath(byte_21DC1FA90);
  v13 = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v4 & 1) != 0 || (v6 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()) && (v7 = *(v6 + 1), v8 = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 264))(v8, v7), swift_unknownObjectRelease(), (v7))
  {
    v9 = 0;
  }

  else
  {
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel__privateAccessibilityCustomActions);
    if (v9)
    {
      v10 = v9;
      sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
      v11 = sub_21DBFA5EC();

      v9 = v11;
    }
  }

  result.value._rawValue = v9;
  result.is_nil = v5;
  return result;
}

void sub_21D635290()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate);
  sub_21D470EDC(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_21D5C5F74(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions + 8));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule, &unk_27CE5F240, &unk_21DC104A0);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule, &unk_27CE62920, &unk_21DC2BF30);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule, &unk_27CE5EB40, &unk_21DC1D730);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement);
}

void TTRIRemindersListReminderCell_collectionView.viewForAnchoringPopover.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  v2 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v4 = v1;

  sub_21D442E44(2u, v3, v4);

  v5 = *&v1[v2];
  swift_beginAccess();
  v6 = *(v5 + 40);
  if (*(v6 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v6 + 160, v8, &unk_27CE5F120, &unk_21DC16030);
    if (v8[0])
    {
      v7 = v8[0];
    }

    sub_21D0CF7E0(v8, &unk_27CE5F120, &unk_21DC16030);
  }
}

id TTRIRemindersListReminderCell_collectionView.attributedTitle.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) attributedText];

  return v1;
}

void TTRIRemindersListReminderCell_collectionView.rect(for:in:)(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  if (v7 <= 1)
  {
    if (*a1)
    {
      v59 = *&v3[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
      [*&v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] bounds];
      [v4 convertRect:v59 fromCoordinateSpace:?];
      v82 = CGRectInset(v81, 0.0, -12.0);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
      [v4 bounds];
      v86.origin.x = v64;
      v86.origin.y = v65;
      v86.size.width = v66;
      v86.size.height = v67;
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      *&v19 = CGRectIntersection(v83, v86);
    }

    else
    {
      [v3 bounds];
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v23 = *&v3[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
    v24 = [v23 selectedTextRange];
    if (!v24)
    {
      v39 = 0uLL;
      v8 = 1;
      v70 = 0uLL;
      goto LABEL_17;
    }

    v10 = v24;
    v25 = [v24 end];
    [v23 caretRectForPosition_];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v4 convertRect:v23 fromCoordinateSpace:{v27, v29, v31, v33}];
    v74 = CGRectInset(v73, 0.0, -12.0);
    v11 = v74.origin.x;
    v12 = v74.origin.y;
    v13 = v74.size.width;
    v14 = v74.size.height;
    [v4 bounds];
    goto LABEL_10;
  }

  if (v7 != 3)
  {
    v8 = 1;
    sub_21D62E958(1u);
    v39 = 0uLL;
    if (v38)
    {
      v10 = v38;
      v40 = [v38 selectedTextRange];
      if (!v40)
      {

        v70 = 0uLL;
        v39 = 0uLL;
        goto LABEL_17;
      }

      v41 = v40;
      v42 = [v40 end];
      [v10 caretRectForPosition_];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [v4 convertRect:v10 fromCoordinateSpace:{v44, v46, v48, v50}];
      v78 = CGRectInset(v77, 0.0, -12.0);
      v51 = v78.origin.x;
      v52 = v78.origin.y;
      v53 = v78.size.width;
      v54 = v78.size.height;
      [v4 bounds];
      v85.origin.x = v55;
      v85.origin.y = v56;
      v85.size.width = v57;
      v85.size.height = v58;
      v79.origin.x = v51;
      v79.origin.y = v52;
      v79.size.width = v53;
      v79.size.height = v54;
      v80 = CGRectIntersection(v79, v85);
      v34 = v80.origin.x;
      v35 = v80.origin.y;
      v36 = v80.size.width;
      v37 = v80.size.height;

      goto LABEL_14;
    }

LABEL_20:
    v70 = 0uLL;
    goto LABEL_17;
  }

  v8 = 1;
  sub_21D62EAA4(1u);
  if (!v9)
  {
    v39 = 0uLL;
    goto LABEL_20;
  }

  v10 = v9;
  [v9 bounds];
  [v4 convertRect:v10 fromCoordinateSpace:?];
  v72 = CGRectInset(v71, 0.0, -12.0);
  v11 = v72.origin.x;
  v12 = v72.origin.y;
  v13 = v72.size.width;
  v14 = v72.size.height;
  [v4 bounds];
LABEL_10:
  v84.origin.x = v15;
  v84.origin.y = v16;
  v84.size.width = v17;
  v84.size.height = v18;
  v75.origin.x = v11;
  v75.origin.y = v12;
  v75.size.width = v13;
  v75.size.height = v14;
  v76 = CGRectIntersection(v75, v84);
  v34 = v76.origin.x;
  v35 = v76.origin.y;
  v36 = v76.size.width;
  v37 = v76.size.height;
LABEL_14:

  v22 = v37;
  v21 = v36;
  v20 = v35;
  v19 = v34;
LABEL_16:
  [a2 convertRect:v4 fromCoordinateSpace:{v19, v20, v21, v22}];
  v8 = 0;
  *(&v39 + 1) = v68;
  *(&v70 + 1) = v69;
LABEL_17:
  *a3 = v39;
  *(a3 + 16) = v70;
  *(a3 + 32) = v8;
}

id sub_21D635B74()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) attributedText];

  return v1;
}

double sub_21D635BE0@<D0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  TTRIRemindersListReminderCell_collectionView.rect(for:in:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView.cellTitleDidUpdateAutoCompleteReminderSuggestions(_:query:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC1FAF0, v15);
}

uint64_t sub_21D635DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_21DBFA84C();
  v7[7] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D635E58, v9, v8);
}

uint64_t sub_21D635E58()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FEE8);
  v0[2] = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  swift_retain_n();
  sub_21DBF5D9C();

  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  sub_21DBF8E0C();

  if (!v4)
  {
LABEL_7:
    v8 = v0[4];

    sub_21DBF8E0C();
    sub_21D23F2C4(v8, v1);

    goto LABEL_9;
  }

  if (v5 != v0[4] || v4 != v1)
  {
    v7 = sub_21DBFC64C();

    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = v0[6];
  swift_getKeyPath(byte_21DC1FF10);
  v0[2] = v3;

  sub_21DBF5D9C();

  v10 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  v11 = sub_21D1D56D8(v10, v9);

  if ((v11 & 1) == 0)
  {

    v12 = sub_21DBF8E0C();
    sub_21D23F4D4(v12);
  }

  sub_21D61F4C0(2);
  v13 = v0[1];

  return v13();
}

uint64_t TTRIRemindersListReminderCell_collectionView.handleIfNecessary(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1, a2);
  LOBYTE(a2) = v7;

  return a2 & 1;
}

uint64_t sub_21D63613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC1FEE0, v15);
}

uint64_t sub_21D636298(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1, a2);
  LOBYTE(a2) = v7;

  return a2 & 1;
}

void *TTRIRemindersListReminderCell_collectionView.nextKeyViewForCellNotes(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v2 = v1;
  return v1;
}

void *sub_21D636364()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v2 = v1;
  return v1;
}

void sub_21D6363A4(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  v5 = *a3;
  v4 = a4;
  sub_21D62AE80(&v5, &v4);
}

void sub_21D6363E0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *a3;
  v6 = a6;
  sub_21D62AE80(&v7, &v6);
}

uint64_t sub_21D636414(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 152))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D6364AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 128))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView.largeImageAttachmentsView(_:didTapImage:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 168))(v2, a2, a1, &protocol witness table for TTRIRemindersListLargeImageAttachmentsView, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D636610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 168))(v5, a2, a1, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView._scribbleInteraction(_:willBeginWritingInElement:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 192))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView._scribbleInteraction(_:didFinishWritingInElement:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 200))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void TTRIRemindersListReminderCell_collectionView.autoCompleteReminderSuggestionTapped(suggestion:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = &v2[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  swift_beginAccess();
  if (*v7)
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 56);
    swift_unknownObjectRetain();
    v10(a1, ObjectType, v8);
    v11 = sub_21DBFA89C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_21DBFA84C();
    v12 = v2;
    v13 = sub_21DBFA83C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    sub_21D1B5178(0, 0, v6, &unk_21DC1FB00, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D636AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_21DBFA84C();
  *(v4 + 32) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D636B80, v6, v5);
}

uint64_t sub_21D636B80()
{
  v1 = v0[3];

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FEE8);
  v0[2] = v2;
  v3 = v0 + 2;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8))
  {
    swift_getKeyPath(byte_21DC1FEE8);
    v4 = swift_task_alloc();
    v4[3] = 0;
    v4[4] = 0;
    v4[2] = v2;
    *v3 = v2;

    sub_21DBF5D8C();
  }

  swift_getKeyPath(byte_21DC1FF10);
  *v3 = v2;

  sub_21DBF5D9C();

  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  v6 = sub_21D1D56D8(v5, MEMORY[0x277D84F90]);

  if ((v6 & 1) == 0)
  {

    sub_21D23F4D4(MEMORY[0x277D84F90]);
  }

  sub_21D61F4C0(2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21D636DF4(const char *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(a1);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v5 = *(v4 + *a2);

  return v5;
}

uint64_t TTRIRemindersListReminderCell_collectionView.completed.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v6);
  v13[1] = v9;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v9 + v10, v3, &qword_27CE5A0B8, &qword_21DC0E120);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8, &qword_21DC0E120);
    v11 = 0;
  }

  else
  {
    sub_21D6397E0(v3, v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v11 = sub_21DAFD898(v4);
    sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  return v11 & 1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.ttrAccessibilitySectionName.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 248))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TTRIRemindersListReminderCell_collectionView.ttrAccessibilityIsGroceryList.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 256))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.reminderListCellAccessibilityCustomRotors()()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 208))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_21D637300()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D63734C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21D637450(uint64_t a1, uint64_t a2, const char *a3, void *a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(a3, a2);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v7 = *(v6 + *a4);

  return v7;
}

uint64_t sub_21D637520@<X0>(char *a1@<X8>)
{

  sub_21D2416E8(a1);
}

uint64_t sub_21D637570()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 248))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21D63761C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 256))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21D6376BC()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 208))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_21D6378DC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentGridView;
  result = sub_21D63815C();
  *(a1 + 32) = result;
  return result;
}

uint64_t (*sub_21D637928(uint64_t *a1))()
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
  *(v2 + 24) = &type metadata for ContentConfigurationForContentGridView;
  *(v2 + 32) = sub_21D63815C();
  return sub_21D6379A0;
}

void sub_21D6379A0(void **a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_0(*a1);

  free(v1);
}

uint64_t sub_21D6379DC(uint64_t a1)
{
  sub_21D0D32E4(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E90, &qword_21DC0A958);
  return swift_dynamicCast();
}

id sub_21D637A2C()
{
  type metadata accessor for ContentGridView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_21D639008(&unk_280D16850, type metadata accessor for ContentGridView, byte_21DC1FE28);
  return v0;
}

unint64_t sub_21D637AC4(unint64_t result, void *a2)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_21D637AD8(result, a2);
  }

  return result;
}

unint64_t sub_21D637AD8(unint64_t result, void *a2)
{
  if (!(result >> 62))
  {
    return a2;
  }

  return result;
}

void sub_21D637AE8(unint64_t result, void *a2)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    sub_21D637AFC(result, a2);
  }
}

void sub_21D637AFC(unint64_t a1, void *a2)
{
  if (!(a1 >> 62))
  {
  }
}

uint64_t (*sub_21D637B0C(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  sub_21DBF8E0C();
  return sub_21D6395C0;
}

uint64_t sub_21D637B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D637BFC(a2);
  }

  return result;
}

void sub_21D637BFC(uint64_t a1)
{
  if (v1[7])
  {
    swift_beginAccess();
    v3 = qword_27CE56F50;
    sub_21DBF8E0C();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE64A20);
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v7 = 136315650;
      if (v1[6])
      {
        v8 = v1[5];
        v9 = v1[6];
      }

      else
      {
        v9 = 0x800000021DC64200;
        v8 = 0xD000000000000055;
      }

      sub_21DBF8E0C();
      v10 = sub_21D0CDFB4(v8, v9, &v19);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      sub_21D19FAB0();
      v11 = sub_21DBFAABC();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v7 + 14) = v13;
      *(v7 + 22) = 2080;
      v14 = sub_21DBFAABC();
      v16 = v15;

      v17 = sub_21D0CDFB4(v14, v16, &v19);

      *(v7 + 24) = v17;
      _os_log_impl(&dword_21D0C9000, v5, v6, "%s: @Observable object changed during update unexpectedly. This may result in an update loop {tryingToAdd: %s, whileUpdating: %s}", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }

  sub_21D6380AC(a1);
}

BOOL sub_21D637E90()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 16) + 16);
  if (v2)
  {
    if (qword_27CE56F50 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE64A20);

    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      if (*(v1 + 48))
      {
        v8 = *(v1 + 40);
        v9 = *(v1 + 48);
      }

      else
      {
        v9 = 0x800000021DC64200;
        v8 = 0xD000000000000055;
      }

      sub_21DBF8E0C();
      v10 = sub_21D0CDFB4(v8, v9, &v16);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      sub_21D19FAB0();
      sub_21DBF8E0C();
      v11 = sub_21DBFAABC();
      v13 = v12;

      v14 = sub_21D0CDFB4(v11, v13, &v16);

      *(v6 + 14) = v14;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  return v2 == 0;
}

void sub_21D6380AC(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_21DBF8E0C();
  sub_21D3235FC(v2);
  swift_endAccess();
  if (*(v1[2] + 16) && !v1[8])
  {
    swift_beginAccess();
    v3 = v1[3];
    if (v3)
    {
      v4 = v1[4];

      v3(v5);
      sub_21D0D0E88(v3, v4);
    }
  }
}

unint64_t sub_21D63815C()
{
  result = qword_280D16FB8[0];
  if (!qword_280D16FB8[0])
  {
    result = swift_getWitnessTable(byte_21DC1FE68, &type metadata for ContentConfigurationForContentGridView, v0, v1);
    atomic_store(result, qword_280D16FB8);
  }

  return result;
}

void sub_21D638208(void *a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (v4)
  {
    v6 = v5;
    sub_21D470EDC(v4);
    if (v6 == 1)
    {
      v7 = *MEMORY[0x277D76438];
      if (qword_27CE57420 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBFA12C();
      UIAccessibilityPostNotification(v7, v8);

      v9 = a2();
      if (v9)
      {
        if (qword_27CE56928 != -1)
        {
          v14 = v9;
          swift_once();
          v9 = v14;
        }

        v10 = qword_27CE5C838;
        v11 = v9;

        v12 = sub_21DBFC69C();
        objc_setAssociatedObject(a1, v10, v12, 1);
        swift_unknownObjectRelease();
        sub_21D470EDC(v11);
      }

      else
      {
        if (qword_27CE56928 != -1)
        {
          swift_once();
        }

        v13 = qword_27CE5C838;

        objc_setAssociatedObject(a1, v13, 0, 1);
      }
    }
  }
}

uint64_t sub_21D6383DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FEB8);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 136))(v0, v2 ^ 1u, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void _s15RemindersUICore44TTRIRemindersListReminderCell_collectionViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  *v2 = 0;
  *(v2 + 2) = 0;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  type metadata accessor for TTRIRemindersListReminderCellObservableViewModel(0);
  swift_allocObject();
  *(v0 + v4) = sub_21D240014();
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F040, &qword_21DC1FA78);
  v6 = swift_allocObject();
  v7 = *(*v6 + 104);
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  swift_storeEnumTagMultiPayload();
  *(v1 + v5) = v6;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F050, &unk_21DC1FA80);
  v10 = swift_allocObject();
  *(v10 + 40) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 40) = 0xD000000000000018;
  *(v10 + 48) = 0x800000021DC63D90;
  if (qword_280D0E1F0 != -1)
  {
    swift_once();
  }

  *(v10 + 16) = qword_280D0E1F8;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_indentationColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow) = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_unsupportedTextDropHandler;
  v12 = objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler());
  sub_21DBF8E0C();
  *(v1 + v11) = [v12 init];
  v13 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing) = xmmword_21DC1F990;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment) = 0;
  v14 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v15 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule);
  *v15 = 0u;
  v15[1] = 0u;
  v15[2] = 0u;
  v16 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement) = 0;
  sub_21DBFC31C();
  __break(1u);
}

unint64_t sub_21D638850(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBFC45C();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

double sub_21D6388A4(void *a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_21D6388F4(uint64_t a1)
{
  v3 = *(sub_21DBF54CC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21D6343F0(a1, v4, v5);
}

uint64_t sub_21D638994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D635DBC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21D638A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D636AE8(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListReminderCell_collectionView.UpdateFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListReminderCell_collectionView.UpdateFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21D638F44(uint64_t a1)
{
  result = sub_21D19FAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D638FB4()
{
  result = qword_280D0E1D8;
  if (!qword_280D0E1D8)
  {
    result = swift_getWitnessTable(aGad, &type metadata for TTRIRemindersListReminderCell_collectionView.UpdateFlag, v0, v1);
    atomic_store(result, &qword_280D0E1D8);
  }

  return result;
}

uint64_t sub_21D639008(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t objectdestroy_66Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21D63910C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 288))(&v29, v13, v14);
  v15 = v30;
  if (v30 < 2)
  {
    return 0;
  }

  v25 = a7;
  v26 = a2;
  v17 = v32;
  if (v32)
  {
    v18 = v31;

    v15 = v17;
  }

  else
  {
    v18 = v29;
  }

  if (qword_27CE57390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_21D17A884();
  *(v19 + 32) = v18;
  *(v19 + 40) = v15;
  sub_21DBF8E0C();
  sub_21DBFA13C();

  sub_21D0D32E4(a1, v28);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  sub_21D0D0FD0(v28, (v20 + 4));
  v20[9] = v18;
  v20[10] = v15;
  v21 = objc_allocWithZone(MEMORY[0x277D75088]);

  v22 = sub_21DBFA12C();

  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A62AC;
  aBlock[3] = v25;
  v23 = _Block_copy(aBlock);
  v24 = [v21 initWithName:v22 image:v26 actionHandler:v23];

  _Block_release(v23);

  return v24;
}

uint64_t objectdestroy_164Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

void *sub_21D639460(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t objectdestroy_142Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_21D6396C0(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_21D639710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2D0, &unk_21DC20040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21D639788(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_21D6397E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D639848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6398B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_21D639910(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

void sub_21D639AF0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_29;
  }

  v3 = v0;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5 || ([v5 isEditing] & 1) == 0)
  {
    v6 = *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_hashtagsAttributedText);
    if (v6)
    {
      v7 = *(v3 + v1);
      if (v7)
      {
        v8 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
        swift_beginAccess();
        v9 = *(v7 + v8);
        if (v9)
        {
          v10 = v6;
          v11 = [v9 attributedText];
          if (v11)
          {
            v12 = v11;
            sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
            v13 = v10;
            v14 = sub_21DBFB63C();

            if (v14)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v15 = v6;
        }

        v16 = *(v3 + v1);
        if (v16)
        {
          v17 = v16;
          v18 = sub_21D639E18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21DC08D00;
          v20 = *MEMORY[0x277D740A8];
          *(inited + 32) = *MEMORY[0x277D740A8];
          v21 = v20;
          if (UIAccessibilityIsBoldTextEnabled())
          {
            v22 = sub_21D639F14();
          }

          else
          {
            v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont);
          }

          *(inited + 40) = v22;
          v23 = sub_21D177570(inited);
          swift_setDeallocating();
          sub_21D63B658(inited + 32);
          TTRIRemindersListDescriptionAndTagsView.setHashtagsAttributedText(_:baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(v6, v18, v23);

          v24 = *(v3 + v1);
          if (v24)
          {
            v25 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
            swift_beginAccess();
            v26 = *(v24 + v25);
            if (v26)
            {
              v27 = v26;
              if ([v27 isHidden])
              {
                v28 = [v6 string];
                v29 = sub_21DBFA16C();
                v31 = v30;

                v32 = HIBYTE(v31) & 0xF;
                if ((v31 & 0x2000000000000000) == 0)
                {
                  v32 = v29 & 0xFFFFFFFFFFFFLL;
                }

                if (v32)
                {
                  [v27 setHidden_];
                }
              }
            }

            v33 = *(v3 + v1);
            if (v33)
            {
              v34 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
              swift_beginAccess();
              v35 = v33[v34];
              v33[v34] = 1;
              v13 = v6;
              if ((v35 & 1) == 0)
              {
                v13 = v33;
                [v13 setNeedsLayout];
                [v13 invalidateIntrinsicContentSize];
              }

LABEL_26:

              return;
            }

LABEL_32:
            __break(1u);
            return;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }
}

unint64_t sub_21D639E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = v2;
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = &OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsBoldFont;
  if (!IsBoldTextEnabled)
  {
    v5 = &OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsFont;
  }

  v6 = *(v0 + *v5);
  v7 = *MEMORY[0x277D740C0];
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedTagsColor);
  *(inited + 56) = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310, &unk_21DC0FE30);
  swift_arrayDestroy();
  return v12;
}

objc_class *sub_21D639F14()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont);
  }

  else
  {
    v4 = v0;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21D900614(6);
    isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

    v7 = *(v4 + v1);
    *(v4 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_21D63A0FC(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v3)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (v6 && (sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40), v7 = v4, v8 = v6, v9 = sub_21DBFB63C(), v8, v7, (v9 & 1) != 0))
    {
      v10 = (*(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar);
      if (*v10)
      {
        v11 = v10[1];
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(v7, &protocol witness table for UITextView, ObjectType, v11);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D63A270(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_userPressedReturn) = 0;
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = [v7 attributedText];
      if (v11)
      {
        v12 = v11;
        v23 = 1;
        sub_21D60D50C(&v23);
        v13 = v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter;
        v14 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v14 + 48))(v12, ObjectType, v14);

        v16 = [v7 attributedText];
        if (v16)
        {
          v17 = v16;
          v18 = [v7 selectedRange];
          v20 = v19;
          v21 = *(v13 + 8);
          v22 = swift_getObjectType();
          (*(v21 + 72))(v17, v18, v20, 0, v22, v21);

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_21D63A498(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = [v7 attributedText];
      if (v11)
      {
        v12 = v11;
        v13 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 56))(v12, ObjectType, v13);
        sub_21D60CBE4();
        v17 = 3;
        sub_21D60D50C(&v17);

        if (*(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar))
        {
          v15 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar + 8);
          v16 = swift_getObjectType();
          (*(v15 + 24))(v7, &protocol witness table for UITextView, v16, v15);
        }

        return;
      }

LABEL_9:
      __break(1u);
    }
  }
}

void sub_21D63A68C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330, 0x277D75C40);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      v10 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail;
      v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
      v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 8);
      v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 16);
      v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 24);
      v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 32);
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0;
      sub_21D300ED0(v11, v12, v13, v14, v15);
      v16 = [v7 markedTextRange];
      v17 = v16;
      if (v16)
      {
      }

      v34 = v15;
      v18 = v13;
      v19 = v12;
      v20 = v11;
      v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v22 = [v7 attributedText];
      if (v22)
      {
        v23 = v22;
        LOBYTE(v35[0]) = 2;
        sub_21D60D50C(v35);
        v24 = v21 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter;
        v25 = *(v21 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        v35[0] = v20;
        v35[1] = v19;
        v35[2] = v18;
        v35[3] = v14;
        v35[4] = v34;
        (*(v25 + 88))(v23, v35, v17 != 0, ObjectType, v25);

        v27 = [v7 attributedText];
        if (v27)
        {
          v28 = v27;
          v29 = [v7 selectedRange];
          v31 = v30;
          v32 = *(v24 + 8);
          v33 = swift_getObjectType();
          (*(v32 + 72))(v28, v29, v31, 0, v33, v32);

          sub_21D300F14(v20);
          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_21D63A97C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5)
  {
    return;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v6 = v5;
  if (sub_21DBFB63C())
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((*(v6 + v7) & 1) == 0)
    {
      v8 = [v6 selectedRange];
      v10 = v9;
      v11 = [v6 textStorage];
      v12.location = v8;
      v12.length = v10;
      v13 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v12, v11);

      if (v13.location != v8 || v13.length != v10)
      {
        [v6 setSelectedRange_];
      }
    }

    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
    v16 = v6;
    v17 = [v16 attributedText];
    if (v17)
    {
      v6 = v17;
      v18 = [v16 selectedRange];
      v20 = v19;

      v21 = *(v15 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 72))(v6, v18, v20, 0, ObjectType, v21);

      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:
}

uint64_t sub_21D63ABE4(uint64_t result, uint64_t a2, NSUInteger a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5;
  v12 = result;
  v13 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v14 = *(v6 + v13);
  if (v14)
  {
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v15 = v14;
    if ((sub_21DBFB63C() & 1) == 0)
    {
LABEL_8:

      return 0;
    }

    if (a4 == 10 && a5 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
    {
      *(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_userPressedReturn) = 1;
      v16 = *(*(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 64))(ObjectType, v16);
      goto LABEL_8;
    }

    v18 = *(*(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
    result = [v15 attributedText];
    if (result)
    {
      v19 = result;
      v20 = swift_getObjectType();
      v21 = (*(v18 + 80))(v19, a2, a3, a4, a5, v20, v18);

      v22 = [v12 textStorage];
      TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)(v22, a2, a3, a4, a5, &v27);

      if (v28 - 1 < 2)
      {
        [v12 setSelectedRange_];
        goto LABEL_8;
      }

      if (!v28)
      {
        sub_21D6C4004(v27, *(&v27 + 1), v23);
        goto LABEL_8;
      }

      if (v27 != 0 || (v21 & 1) == 0)
      {
        goto LABEL_8;
      }

      result = [v12 attributedText];
      if (result)
      {
        v24 = result;

        v25 = (v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
        v26 = *(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
        *v25 = v24;
        v25[1] = a2;
        v25[2] = a3;
        v25[3] = a4;
        v25[4] = a5;
        sub_21DBF8E0C();
        sub_21D300F14(v26);
        return 1;
      }

LABEL_22:
      __break(1u);
      return result;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return 0;
}

void sub_21D63AF48(char *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView) = result;

    v5 = &result[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate];
    swift_beginAccess();
    *(v5 + 1) = &off_282EC9BF0;
    swift_unknownObjectWeakAssign();
    v6 = result;
    sub_21D6B4200();
  }
}

void sub_21D63AFE0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (a1)
  {
    if (v5)
    {
      v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5;
  v8 = sub_21D639E18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = v10;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v12 = sub_21D639F14();
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont);
  }

  *(inited + 40) = v12;
  v13 = sub_21D177570(inited);
  swift_setDeallocating();
  sub_21D63B658(inited + 32);
  v14 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v15 = *&v7[v14];
  if (v15)
  {
    v16 = *&v7[v14];
  }

  else
  {
    v16 = sub_21D6B5BE0();
    v17 = [v16 attributedText];
    if (!v17)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v18 = v17;
    if (qword_280D0F940 != -1)
    {
      swift_once();
    }

    v21[0] = qword_280D0F948;
    sub_21DBF8E0C();
    sub_21D6C3690(v18, v8, v13, v21);

    sub_21D6C39DC();
    v15 = 0;
  }

  v19 = v15;
  [v16 setHidden_];

  v5 = *(v2 + v4);
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
LABEL_16:
  swift_beginAccess();
  v20 = *&v5[v6];
  if (v20)
  {
    [v20 setHidden_];
  }
}

void sub_21D63B22C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v13 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (v13)
    {
      v6 = v5;
      if ([v6 isEditing])
      {
        v7 = [*&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage] string];
        v8 = sub_21DBFA16C();
        v10 = v9;

        TTRReminderCellTextHighlights.rebased(forCurrentText:)(v8, v10, v14);

        sub_21D98115C(v14[2]);

        sub_21D6C4EA8(v3);
        v11 = *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
        if (v11 >> 62)
        {
          sub_21D0D8CF0(0, &qword_280D0C2B0, 0x277D75C38);
          sub_21DBF8E0C();
          v12 = sub_21DBFC33C();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_21DBFC65C();
          sub_21D0D8CF0(0, &qword_280D0C2B0, 0x277D75C38);
          v12 = v11;
        }

        sub_21D6C5B68(v12);

        return;
      }
    }

    else
    {
      v6 = v5;
      sub_21D98115C(MEMORY[0x277D84FA0]);
      sub_21D6C4EA8(MEMORY[0x277D84F90]);
    }
  }
}

void sub_21D63B43C(uint64_t *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v3)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (v8)
    {
      v19 = v4;
      v20 = v5;
      v21 = v6;
      v9 = v8;
      v22.hashtagsToAdd._rawValue = &v19;
      TTRReminderTextStorage.applyHashtagUpdate(_:)(v22);
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = v9;
      v12 = [v11 attributedText];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 selectedRange];
        v16 = v15;

        v17 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v17 + 72))(v13, v14, v16, 0, ObjectType, v17);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_21D63B658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310, &unk_21DC0FE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D63B6C0(void *a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1;
  v6 = a1;
  v7 = v3;
  TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(a1);

  v8 = *(v4 + v2);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  TTRIRemindersListDescriptionAndTagsView.updateDescriptionHiddenState()();

  v10 = *(v4 + v2);
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  v12 = v10[v11];
  v10[v11] = 1;
  if (v12 != 1)
  {
    v13 = v10;
    [v13 setNeedsLayout];
    [v13 invalidateIntrinsicContentSize];
  }
}

void sub_21D63B7A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!v7 || (v8 = [v7 attributedText]) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v9 = *(v1 + v2);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = [*(v9 + v10) selectedRange];
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 96))(a1, v8, v12, v14, v11 == 0, ObjectType, v15);
}

uint64_t sub_21D63B934@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21D0D3954(v2, &v14 - v9, &qword_27CE5F388, &qword_21DC20240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21DBF97BC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21DBFAECC();
    v13 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21D63BB34()
{
  v1 = sub_21DBF96CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TTRAutoCategorizationOverlayView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21DBFAECC();
    v7 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t TTRAutoCategorizationOverlayView.init(titleString:subtitleString:shouldShowArrow:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = swift_getKeyPath(byte_21DC20210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TTRAutoCategorizationOverlayView(0);
  v17 = a8 + v16[5];
  result = swift_getKeyPath(byte_21DC20248);
  *v17 = result;
  v17[8] = 0;
  v19 = (a8 + v16[6]);
  *v19 = a1;
  v19[1] = a2;
  v20 = (a8 + v16[7]);
  *v20 = a3;
  v20[1] = a4;
  *(a8 + v16[8]) = a5;
  v21 = (a8 + v16[9]);
  *v21 = a6;
  v21[1] = a7;
  return result;
}

uint64_t TTRAutoCategorizationOverlayView.body.getter@<X0>(void *a1@<X8>)
{
  v102 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F390, &qword_21DC20278);
  MEMORY[0x28223BE20](v100);
  v101 = &v71 - v2;
  v76 = sub_21DBF9A0C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F398, &qword_21DC20280);
  MEMORY[0x28223BE20](v99);
  v77 = &v71 - v4;
  v5 = sub_21DBF95AC();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3A0, &qword_21DC20288);
  MEMORY[0x28223BE20](v90);
  v92 = &v71 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3A8, &qword_21DC20290);
  MEMORY[0x28223BE20](v91);
  v73 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3B0, &qword_21DC20298);
  MEMORY[0x28223BE20](v9);
  v79 = &v71 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3B8, &qword_21DC202A0);
  MEMORY[0x28223BE20](v81);
  v72 = &v71 - v11;
  v12 = type metadata accessor for TTRAutoCategorizationOverlayView(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3C0, &qword_21DC202A8);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3C8, &qword_21DC202B0);
  MEMORY[0x28223BE20](v83);
  v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3D0, &qword_21DC202B8);
  MEMORY[0x28223BE20](v22 - 8);
  v82 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v85 = &v71 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3D8, &qword_21DC202C0);
  MEMORY[0x28223BE20](v87);
  v80 = &v71 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3E0, &qword_21DC202C8);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v71 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3E8, &qword_21DC202D0);
  MEMORY[0x28223BE20](v93);
  v94 = &v71 - v28;
  sub_21D63D8A8(v1, &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = swift_allocObject();
  sub_21D63D90C(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v103 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3F0, &qword_21DC202D8);
  sub_21D0D0F1C(&qword_27CE5F3F8, &qword_27CE5F3F0, &qword_21DC202D8, MEMORY[0x277CE1198]);
  sub_21DBF9B8C();
  v31 = sub_21DBF985C();
  v32 = &v18[*(v16 + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_21DC201F0;
  *(v32 + 24) = xmmword_21DC201F0;
  v32[40] = 0;
  v33 = *(v13 + 40);
  v98 = v1;
  v34 = *(v1 + v33);
  if (v34)
  {
    v35 = v72;
    v36 = &v72[*(v81 + 36)];
    sub_21DBF9C6C();
    v37 = sub_21DBF985C();
    v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F428, &qword_21DC202E8) + 36)] = v37;
    sub_21D0D3954(v18, v35, &qword_27CE5F3C0, &qword_21DC202A8);
    sub_21D0D3954(v35, v79, &qword_27CE5F3B8, &qword_21DC202A0);
    swift_storeEnumTagMultiPayload();
    sub_21D63D9E4();
    sub_21D63DA9C();
    v38 = v78;
    sub_21DBF97FC();
    sub_21D0CF7E0(v35, &qword_27CE5F3B8, &qword_21DC202A0);
    sub_21D0CF7E0(v18, &qword_27CE5F3C0, &qword_21DC202A8);
    v39 = v84;
    sub_21D0D523C(v38, v84, &qword_27CE5F3C8, &qword_21DC202B0);
    sub_21D0D3954(v39, v92, &qword_27CE5F3C8, &qword_21DC202B0);
    swift_storeEnumTagMultiPayload();
    sub_21D63DB54();
    sub_21D63DC0C();
    v40 = v82;
    sub_21DBF97FC();
  }

  else
  {
    sub_21D0D3954(v18, v79, &qword_27CE5F3C0, &qword_21DC202A8);
    swift_storeEnumTagMultiPayload();
    sub_21D63D9E4();
    sub_21D63DA9C();
    v41 = v78;
    sub_21DBF97FC();
    sub_21D0CF7E0(v18, &qword_27CE5F3C0, &qword_21DC202A8);
    v39 = v84;
    sub_21D0D523C(v41, v84, &qword_27CE5F3C8, &qword_21DC202B0);
    v42 = [objc_opt_self() tertiarySystemBackgroundColor];
    v43 = sub_21DBF9ABC();
    v44 = sub_21DBF985C();
    v45 = v73;
    sub_21D0D3954(v39, v73, &qword_27CE5F3C8, &qword_21DC202B0);
    v46 = v45 + *(v91 + 36);
    *v46 = v43;
    *(v46 + 8) = v44;
    sub_21D0D3954(v45, v92, &qword_27CE5F3A8, &qword_21DC20290);
    swift_storeEnumTagMultiPayload();
    sub_21D63DB54();
    sub_21D63DC0C();
    v40 = v82;
    sub_21DBF97FC();
    sub_21D0CF7E0(v45, &qword_27CE5F3A8, &qword_21DC20290);
  }

  sub_21D0CF7E0(v39, &qword_27CE5F3C8, &qword_21DC202B0);
  v47 = v40;
  v48 = v85;
  sub_21D0D523C(v47, v85, &qword_27CE5F3D0, &qword_21DC202B8);
  v49 = v87;
  v50 = v80;
  v51 = &v80[*(v87 + 36)];
  v52 = *(sub_21DBF95BC() + 20);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_21DBF979C();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #14.0 }

  *v51 = _Q0;
  *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678, &qword_21DC13E88) + 36)] = 256;
  sub_21D0D523C(v48, v50, &qword_27CE5F3D0, &qword_21DC202B8);
  v60 = v95;
  sub_21DBF959C();
  v61 = sub_21D63DC98();
  v62 = sub_21D63DFB0(&qword_27CE5F460, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v63 = v86;
  v64 = v97;
  sub_21DBF99AC();
  (*(v96 + 8))(v60, v64);
  sub_21D0CF7E0(v50, &qword_27CE5F3D8, &qword_21DC202C0);
  sub_21D63BB34();
  v104 = v49;
  v105 = v64;
  v106 = v61;
  v107 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v94;
  v66 = v89;
  sub_21DBF99EC();
  (*(v88 + 8))(v63, v66);
  if (v34)
  {
    sub_21D0D3954(v65, v101, &qword_27CE5F3E8, &qword_21DC202D0);
    swift_storeEnumTagMultiPayload();
    sub_21D63DDDC();
    sub_21D63DE68();
    sub_21DBF97FC();
  }

  else
  {
    (*(v75 + 104))(v74, *MEMORY[0x277CE0EE0], v76);
    v67 = sub_21DBF9A9C();
    v68 = v77;
    sub_21D0D3954(v65, v77, &qword_27CE5F3E8, &qword_21DC202D0);
    v69 = v68 + *(v99 + 36);
    *v69 = v67;
    *(v69 + 8) = xmmword_21DC20200;
    *(v69 + 24) = 0x4000000000000000;
    sub_21D0D3954(v68, v101, &qword_27CE5F398, &qword_21DC20280);
    swift_storeEnumTagMultiPayload();
    sub_21D63DDDC();
    sub_21D63DE68();
    sub_21DBF97FC();
    sub_21D0CF7E0(v68, &qword_27CE5F398, &qword_21DC20280);
  }

  return sub_21D0CF7E0(v65, &qword_27CE5F3E8, &qword_21DC202D0);
}

double sub_21D63CB98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21DBF97CC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4B0, &qword_21DC203D8);
  return sub_21D63CBEC(a1, (a2 + *(v4 + 44)));
}

double sub_21D63CBEC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4B8, &qword_21DC203E0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = (&v42 - v6);
  v7 = sub_21DBF987C();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21DBF98DC();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF97BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  type metadata accessor for TTRAutoCategorizationOverlayView(0);
  sub_21DBF8E0C();
  v47 = a1;
  sub_21D63B934(v18);
  (*(v13 + 104))(v15, *MEMORY[0x277CE0220], v12);
  LOBYTE(a1) = sub_21DBF94CC();
  v19 = *(v13 + 8);
  v19(v15, v12);
  v19(v18, v12);
  if (a1)
  {
    sub_21DBF9A7C();
  }

  else
  {
    sub_21DBF9A8C();
  }

  v20 = sub_21DBF993C();
  v22 = v21;
  v24 = v23;

  v25 = v43;
  (*(v9 + 104))(v11, *MEMORY[0x277CE0A58], v43);
  v26 = v44;
  sub_21DBF986C();
  sub_21DBF98BC();
  (*(v45 + 8))(v26, v46);
  (*(v9 + 8))(v11, v25);
  v27 = sub_21DBF994C();
  v29 = v28;
  LODWORD(v46) = v30;
  v32 = v31;

  sub_21D3CE120(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath(byte_21DC203E8);
  v34 = sub_21DBF972C();
  v35 = v48;
  *v48 = v34;
  *(v35 + 8) = 0;
  *(v35 + 16) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4C0, &qword_21DC20418);
  sub_21D63D0F8(v47, (v35 + *(v36 + 44)));
  v37 = v49;
  sub_21D0D3954(v35, v49, &qword_27CE5F4B8, &qword_21DC203E0);
  v38 = v42;
  *v42 = v27;
  v38[1] = v29;
  v39 = v46 & 1;
  *(v38 + 16) = v46 & 1;
  v38[3] = v32;
  v38[4] = KeyPath;
  v38[5] = 1;
  *(v38 + 48) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4C8, &unk_21DC20420);
  sub_21D0D3954(v37, v38 + *(v40 + 48), &qword_27CE5F4B8, &qword_21DC203E0);
  sub_21D3D0EA8(v27, v29, v39);
  sub_21DBF8E0C();

  sub_21D0CF7E0(v35, &qword_27CE5F4B8, &qword_21DC203E0);
  sub_21D0CF7E0(v37, &qword_27CE5F4B8, &qword_21DC203E0);
  sub_21D3CE120(v27, v29, v39);

  return result;
}

double sub_21D63D0F8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a1;
  v73 = a2;
  v2 = sub_21DBF97BC();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v59 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B750, &qword_21DC14028);
  MEMORY[0x28223BE20](v59);
  v70 = (&v59 - v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B760, &qword_21DC20430);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4D0, &qword_21DC20438);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v59 - v13;
  v69 = sub_21DBF987C();
  v14 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF98DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TTRAutoCategorizationOverlayView(0);
  sub_21DBF8E0C();
  sub_21DBF9A7C();
  v21 = sub_21DBF993C();
  v23 = v22;
  v25 = v24;
  KeyPath = v26;

  (*(v18 + 104))(v20, *MEMORY[0x277CE0AC0], v17);
  sub_21DBF986C();
  v27 = 1;
  sub_21DBF98BC();
  (*(v14 + 8))(v16, v69);
  (*(v18 + 8))(v20, v17);
  v28 = sub_21DBF994C();
  v30 = v29;
  v32 = v31;
  v69 = v33;

  sub_21D3CE120(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath(byte_21DC203E8);
  if (*(v66 + *(v67 + 32)) == 1)
  {
    v34 = sub_21DBF9ADC();
    v35 = v70;
    v36 = v70 + *(v59 + 36);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B758, &qword_21DC14030) + 28);
    v38 = *MEMORY[0x277CE1050];
    v39 = sub_21DBF9B1C();
    (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
    *v36 = swift_getKeyPath("Hf%_");
    *v35 = v34;
    v40 = v62;
    sub_21D63B934(v62);
    v42 = v63;
    v41 = v64;
    v43 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x277CE0220], v65);
    LOBYTE(v34) = sub_21DBF94CC();
    v44 = *(v41 + 8);
    v44(v42, v43);
    v44(v40, v43);
    if (v34)
    {
      v45 = sub_21DBF9A7C();
    }

    else
    {
      v45 = sub_21DBF9A8C();
    }

    v46 = v45;
    v47 = v75;
    v48 = swift_getKeyPath(" f%_");
    v49 = v61;
    sub_21D0D523C(v70, v61, &qword_27CE5B750, &qword_21DC14028);
    v50 = (v49 + *(v74 + 36));
    *v50 = v48;
    v50[1] = v46;
    v51 = v49;
    v52 = v60;
    sub_21D0D523C(v51, v60, &qword_27CE5B760, &qword_21DC20430);
    sub_21D0D523C(v52, v47, &qword_27CE5B760, &qword_21DC20430);
    v27 = 0;
  }

  v53 = v75;
  (*(v71 + 56))(v75, v27, 1, v74);
  v54 = v72;
  sub_21D0D3954(v53, v72, &qword_27CE5F4D0, &qword_21DC20438);
  v55 = v73;
  *v73 = v28;
  v55[1] = v30;
  *(v55 + 16) = v32 & 1;
  v56 = KeyPath;
  v55[3] = v69;
  v55[4] = v56;
  v55[5] = 1;
  *(v55 + 48) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4D8, &unk_21DC20440);
  sub_21D0D3954(v54, v55 + *(v57 + 48), &qword_27CE5F4D0, &qword_21DC20438);
  sub_21D3D0EA8(v28, v30, v32 & 1);
  sub_21DBF8E0C();

  sub_21D0CF7E0(v53, &qword_27CE5F4D0, &qword_21DC20438);
  sub_21D0CF7E0(v54, &qword_27CE5F4D0, &qword_21DC20438);
  sub_21D3CE120(v28, v30, v32 & 1);

  return result;
}

uint64_t type metadata accessor for TTRAutoCategorizationOverlayView(uint64_t a1)
{
  result = qword_27CE5F488;
  if (!qword_27CE5F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D63D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCategorizationOverlayView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D63D90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCategorizationOverlayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D63D9E4()
{
  result = qword_27CE5F400;
  if (!qword_27CE5F400)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3B8, &qword_21DC202A0);
    v4[0] = sub_21D63DA9C();
    v4[1] = sub_21D0D0F1C(&qword_27CE5F420, &qword_27CE5F428, &qword_21DC202E8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F400);
  }

  return result;
}

unint64_t sub_21D63DA9C()
{
  result = qword_27CE5F408;
  if (!qword_27CE5F408)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3C0, &qword_21DC202A8);
    v4[0] = sub_21D0D0F1C(&qword_27CE5F410, &qword_27CE5F418, &qword_21DC202E0, MEMORY[0x277CDF028]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F408);
  }

  return result;
}

unint64_t sub_21D63DB54()
{
  result = qword_27CE5F430;
  if (!qword_27CE5F430)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3A8, &qword_21DC20290);
    v4[0] = sub_21D63DC0C();
    v4[1] = sub_21D0D0F1C(&qword_27CE5F440, &qword_27CE5F448, &unk_21DC202F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F430);
  }

  return result;
}

unint64_t sub_21D63DC0C()
{
  result = qword_27CE5F438;
  if (!qword_27CE5F438)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3C8, &qword_21DC202B0);
    v4[0] = sub_21D63D9E4();
    v4[1] = sub_21D63DA9C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CE5F438);
  }

  return result;
}

unint64_t sub_21D63DC98()
{
  result = qword_27CE5F450;
  if (!qword_27CE5F450)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D8, &qword_21DC202C0);
    v4[0] = sub_21D63DD50();
    v4[1] = sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678, &qword_21DC13E88, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F450);
  }

  return result;
}

unint64_t sub_21D63DD50()
{
  result = qword_27CE5F458;
  if (!qword_27CE5F458)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D0, &qword_21DC202B8);
    v4[0] = sub_21D63DB54();
    v4[1] = sub_21D63DC0C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CE5F458);
  }

  return result;
}

unint64_t sub_21D63DDDC()
{
  result = qword_27CE5F468;
  if (!qword_27CE5F468)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F398, &qword_21DC20280);
    v4[0] = sub_21D63DE68();
    v4[1] = MEMORY[0x277CDF760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F468);
  }

  return result;
}

unint64_t sub_21D63DE68()
{
  result = qword_27CE5F470;
  if (!qword_27CE5F470)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3E8, &qword_21DC202D0);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D8, &qword_21DC202C0);
    v4[3] = sub_21DBF95AC();
    v4[4] = sub_21D63DC98();
    v4[5] = sub_21D63DFB0(&qword_27CE5F460, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21D63DFB0(&qword_27CE5F478, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CE5F470);
  }

  return result;
}

uint64_t sub_21D63DFB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *initializeBufferWithCopyOfBuffer for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    v4 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF97BC();
      (*(*(v7 - 8) + 16))(v4, a2, v7);
    }

    else
    {
      *v4 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    v10 = v4 + v9;
    v11 = a2 + v9;
    v12 = *v11;
    v13 = v11[8];
    sub_21D3C890C(*v11, v13);
    *v10 = v12;
    v10[8] = v13;
    v14 = a3[6];
    v15 = a3[7];
    v16 = (v4 + v14);
    v17 = (a2 + v14);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = (v4 + v15);
    v20 = (a2 + v15);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = a3[9];
    *(v4 + a3[8]) = *(a2 + a3[8]);
    v23 = (v4 + v22);
    v24 = (a2 + v22);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return v4;
}

uint64_t destroy for TTRAutoCategorizationOverlayView(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21DBF97BC();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  sub_21D3C8A88(*(a1 + *(a2 + 20)), *(a1 + *(a2 + 20) + 8));
}

void *initializeWithCopy for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21DBF97BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = v9[8];
  sub_21D3C890C(*v9, v11);
  *v8 = v10;
  v8[8] = v11;
  v12 = a3[6];
  v13 = a3[7];
  v14 = (a1 + v12);
  v15 = (a2 + v12);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = (a1 + v13);
  v18 = (a2 + v13);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

void *assignWithCopy for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5F388, &qword_21DC20240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_21DBF97BC();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = v9[8];
  sub_21D3C890C(*v9, v11);
  v12 = *v8;
  v13 = v8[8];
  *v8 = v10;
  v8[8] = v11;
  sub_21D3C8A88(v12, v13);
  v14 = a3[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v15[1] = v16[1];
  sub_21DBF8E0C();

  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  *v18 = *v19;
  v18[1] = v19[1];
  sub_21DBF8E0C();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v20 = a3[9];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;

  return a1;
}

char *initializeWithTake for TTRAutoCategorizationOverlayView(char *a1, char *a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21DBF97BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = a3[5];
  v9 = a3[6];
  v10 = &a1[v8];
  v11 = &a2[v8];
  *v10 = *v11;
  v10[8] = v11[8];
  *&a1[v9] = *&a2[v9];
  v12 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v12] = a2[v12];
  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for TTRAutoCategorizationOverlayView(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5F388, &qword_21DC20240);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388, &qword_21DC20240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF97BC();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = a3[5];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *v10;
  LOBYTE(v10) = v10[8];
  v12 = *v9;
  v13 = v9[8];
  *v9 = v11;
  v9[8] = v10;
  sub_21D3C8A88(v12, v13);
  v14 = a3[6];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[7];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v23 = *v21;
  v22 = *(v21 + 1);
  *v20 = v23;
  *(v20 + 1) = v22;

  v24 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v24] = *&a2[v24];

  return a1;
}

void sub_21D63E834(uint64_t a1)
{
  sub_21D63E8EC(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D63E8EC(uint64_t a1)
{
  if (!qword_27CE5F498)
  {
    sub_21DBF97BC();
    v1 = sub_21DBF94EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5F498);
    }
  }
}

unint64_t sub_21D63E944()
{
  result = qword_27CE5F4A0;
  if (!qword_27CE5F4A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F4A8, &qword_21DC203D0);
    v4[0] = sub_21D63DDDC();
    v4[1] = sub_21D63DE68();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CE5F4A0);
  }

  return result;
}

id TTRSingleColorGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRSingleColorGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 clearColor];
  v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient] = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0392156863 alpha:1.0];
  v13 = [v10 blackColor];
  *v11 = v12;
  v11[1] = v13;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode] = 27;
  v14 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  v15 = [v10 whiteColor];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.980392157 alpha:1.0];
  *v14 = v15;
  v14[1] = v16;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode] = 26;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TTRSingleColorGradientView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 setClipsToBounds_];
  return v17;
}

id TTRSingleColorGradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRSingleColorGradientView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 clearColor];
  v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0392156863 alpha:1.0];
  v7 = [v4 blackColor];
  *v5 = v6;
  v5[1] = v7;
  *&v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode] = 27;
  v8 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  v9 = [v4 whiteColor];
  v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.980392157 alpha:1.0];
  *v8 = v9;
  v8[1] = v10;
  *&v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode] = 26;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TTRSingleColorGradientView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    [v13 setClipsToBounds_];
  }

  return v12;
}

id TTRSingleColorGradientView.GradientSettings.lighteningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

id TTRSingleColorGradientView.GradientSettings.darkeningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

void sub_21D63EDE8(void **a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v6 = v2;
  if ((sub_21DBFB63C() & 1) == 0)
  {
    [v3 setNeedsDisplay];
  }
}

id sub_21D63EE8C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21D63EEE0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v6 = a1;
  if ((sub_21DBFB63C() & 1) == 0)
  {
    [v2 setNeedsDisplay];
  }
}

void (*sub_21D63EF8C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21D63F028;
}

void sub_21D63F028(id **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 3;
  v4 = *v5;
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = *&v6[v7];
  *&v6[v7] = *v5;
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    if ((sub_21DBFB63C() & 1) == 0)
    {
      [v3[4] setNeedsDisplay];
    }

    v10 = *v5;
  }

  else
  {
    if ((sub_21DBFB63C() & 1) == 0)
    {
      [v3[4] setNeedsDisplay];
    }
  }

  free(v3);
}

void sub_21D63F108(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_21D63F178()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D63F1BC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    [v1 setNeedsDisplay];
  }
}

void (*sub_21D63F22C(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D63F2C0;
}

void sub_21D63F2C0(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsDisplay];
  }

  free(v1);
}

RemindersUICore::TTRSingleColorGradientView::LinearGradient __swiftcall TTRSingleColorGradientView.LinearGradient.init(from:to:)(UIColor from, UIColor to)
{
  v2->super.isa = from.super.isa;
  v2[1].super.isa = to.super.isa;
  result.to = to;
  result.from = from;
  return result;
}

uint64_t static TTRSingleColorGradientView.LinearGradient.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D63F468(uint64_t *a1, uint64_t *a2)
{
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

void (*sub_21D63F4F8(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D10EC0C(v7, v8);
  return sub_21D63F594;
}

uint64_t sub_21D63F5A0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21D63F5F0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D640D1C;
}

id sub_21D63F684@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *a3 = *v4;
  a3[1] = v6;
  return sub_21D10EC0C(v5, v6);
}

void sub_21D63F6D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *a2 + *a5;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  *v8 = v7;
  *(v8 + 8) = v6;
  sub_21D10EC0C(v7, v6);
  sub_21D10EC0C(v9, v10);
  sub_21D0D9834(v9, v10);
  v11[0] = v9;
  v11[1] = v10;
  sub_21D63F784(v11, a5);
  sub_21D0D9834(v9, v10);
}

void sub_21D63F784(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v2[*a2];
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  if (!*v6)
  {
    sub_21D10EC0C(0, v6[1]);
    if (!v5)
    {
      sub_21D10EC0C(0, v4);
      sub_21D0D9834(0, v7);
      return;
    }

    sub_21D10EC0C(v5, v4);
    goto LABEL_9;
  }

  if (!v5)
  {
    sub_21D10EC0C(*v6, v6[1]);
    sub_21D10EC0C(0, v4);
    sub_21D10EC0C(v8, v7);

LABEL_9:
    sub_21D0D9834(v8, v7);
    v10 = v5;
    v11 = v4;
    goto LABEL_11;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v5, v4);
  sub_21D10EC0C(v8, v7);
  if (sub_21DBFB63C())
  {
    v9 = sub_21DBFB63C();
    sub_21D0D9834(v8, v7);
    sub_21D0D9834(v5, v4);

    sub_21D0D9834(v8, v7);
    if (v9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_21D0D9834(v8, v7);
  sub_21D0D9834(v5, v4);

  v10 = v8;
  v11 = v7;
LABEL_11:
  sub_21D0D9834(v10, v11);
LABEL_12:
  [v3 setNeedsDisplay];
}

id sub_21D63F950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *a2 = *v4;
  a2[1] = v6;
  return sub_21D10EC0C(v5, v6);
}

void sub_21D63F9AC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  sub_21D10EC0C(v7, v8);
  sub_21D0D9834(v7, v8);
  v9[0] = v7;
  v9[1] = v8;
  sub_21D63F784(v9, a2);
  sub_21D0D9834(v7, v8);
}

void (*sub_21D63FA48(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D10EC0C(v7, v8);
  return sub_21D63FAE4;
}

void sub_21D63FAF0(uint64_t a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  v7 = v5[4];
  v8 = v5[5] + v5[6];
  v10 = *v8;
  v9 = *(v8 + 8);
  *v8 = v6;
  *(v8 + 8) = v7;
  if (a2)
  {
    sub_21D10EC0C(v6, v7);
    sub_21D10EC0C(v10, v9);
    sub_21D0D9834(v10, v9);
    v13 = v10;
    v14 = v9;
    sub_21D63F784(&v13, a3);
    sub_21D0D9834(v10, v9);
    v11 = v5[3];
    v12 = v5[4];
  }

  else
  {
    sub_21D10EC0C(v10, v9);
    sub_21D0D9834(v10, v9);
    v13 = v10;
    v14 = v9;
    sub_21D63F784(&v13, a3);
    v11 = v10;
    v12 = v9;
  }

  sub_21D0D9834(v11, v12);

  free(v5);
}

void sub_21D63FBDC(int *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = v5;
  if (v5 != v8)
  {
    [v6 setNeedsDisplay];
  }
}

uint64_t sub_21D63FC48()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D63FC98(int a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  if (v5 != a1)
  {
    [v2 setNeedsDisplay];
  }
}

uint64_t (*sub_21D63FD00(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D63FD94;
}

void sub_21D63FD98(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsDisplay];
  }

  free(v1);
}

void sub_21D63FDF8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v17 = *(a1 + 40);
  v7 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  *v7 = v2;
  *(v7 + 1) = v3;
  sub_21D10EC0C(v2, v3);
  sub_21D10EC0C(v5, v6);
  sub_21D10EC0C(v8, v9);
  sub_21D0D9834(v8, v9);
  v19[0] = v8;
  v19[1] = v9;
  sub_21D63F784(v19, &OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient);
  sub_21D0D9834(v8, v9);
  v10 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  swift_beginAccess();
  v11 = *&v1[v10];
  *&v1[v10] = v4;
  if (v4 != v11)
  {
    [v1 setNeedsDisplay];
  }

  v12 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  swift_beginAccess();
  v13 = *v12;
  v14 = *(v12 + 1);
  *v12 = v5;
  *(v12 + 1) = v6;
  sub_21D10EC0C(v13, v14);
  sub_21D0D9834(v13, v14);
  v18[0] = v13;
  v18[1] = v14;
  sub_21D63F784(v18, &OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient);
  sub_21D0D9834(v13, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  swift_beginAccess();
  v16 = *&v1[v15];
  *&v1[v15] = v17;
  if (v17 != v16)
  {
    [v1 setNeedsDisplay];
  }
}

id TTRSingleColorGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSingleColorGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D6400AC(CGContext *a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  [*&v1[v11] setFill];
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  CGContextFillRect(a1, v40);
  v12 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  if (v1[v12] == 1)
  {
    CGContextSaveGState(a1);
    v13 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
    swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 1);
      v16 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
      swift_beginAccess();
      LODWORD(v16) = *&v1[v16];
      v17 = v14;
      v18 = v15;
      CGContextSetBlendMode(a1, v16);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21DC0AA00;
      v21 = DeviceRGB;
      *(v20 + 32) = [v17 CGColor];
      *(v20 + 40) = [v18 CGColor];
      type metadata accessor for CGColor(0);
      v22 = sub_21DBFA5DC();

      v23 = CGGradientCreateWithColors(v21, v22, dbl_282EA73F8);

      if (v23)
      {
        v38.y = v6 + v10;
        v36.x = v4;
        v36.y = v6;
        v38.x = v4;
        CGContextDrawLinearGradient(a1, v23, v36, v38, 0);
      }

      sub_21D0D9834(v14, v15);
    }

    v24 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
    swift_beginAccess();
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v24 + 1);
      v27 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
      swift_beginAccess();
      v28 = *&v1[v27];
      v29 = v25;
      v30 = v26;
      CGContextSetBlendMode(a1, v28);
      v31 = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21DC0AA00;
      v33 = v31;
      *(v32 + 32) = [v29 CGColor];
      *(v32 + 40) = [v30 CGColor];
      type metadata accessor for CGColor(0);
      v34 = sub_21DBFA5DC();

      v35 = CGGradientCreateWithColors(v33, v34, dbl_282EA7428);

      if (v35)
      {
        v39.y = v6 + v10;
        v37.x = v4;
        v37.y = v6;
        v39.x = v4;
        CGContextDrawLinearGradient(a1, v35, v37, v39, 0);
      }

      sub_21D0D9834(v25, v26);
    }

    CGContextRestoreGState(a1);
  }
}

void keypath_get_8Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void destroy for TTRListBadgeView.GradientSettings(uint64_t a1)
{
  if (*a1)
  {
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    v3 = *(a1 + 32);
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    *a1 = v4;
    *(a1 + 8) = v5;
    v6 = v4;
    v7 = v5;
  }

  else
  {
    *a1 = *a2;
  }

  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 32);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    v10 = v8;
    v11 = v9;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      *(a1 + 8) = v7;
      v9 = v7;

      goto LABEL_8;
    }

    sub_21D640A9C(a1);
  }

  else if (v5)
  {
    *a1 = v5;
    v10 = *(a2 + 8);
    *(a1 + 8) = v10;
    v11 = v5;
    v12 = v10;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v13 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  v14 = *(a2 + 24);
  if (!v13)
  {
    if (v14)
    {
      *(a1 + 24) = v14;
      v19 = *(a2 + 32);
      *(a1 + 32) = v19;
      v20 = v14;
      v21 = v19;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_15;
  }

  if (!v14)
  {
    sub_21D640A9C((a1 + 24));
    goto LABEL_14;
  }

  *(a1 + 24) = v14;
  v15 = v14;

  v16 = *(a2 + 32);
  v17 = *(a1 + 32);
  *(a1 + 32) = v16;
  v18 = v16;

LABEL_15:
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (*a2)
    {
      *a1 = *a2;

      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_6;
    }

    sub_21D640A9C(a1);
  }

  *a1 = *a2;
LABEL_6:
  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  if (!v7)
  {
LABEL_10:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_11;
  }

  if (!v6)
  {
    sub_21D640A9C((a1 + 24));
    goto LABEL_10;
  }

  *(a1 + 24) = v6;

  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

LABEL_11:
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.GradientSettings(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 44))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.GradientSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_21D640D20()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F510);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F510);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMAlarmProximity.localizedString.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    case 0:
      if (qword_280D1BAA8 == -1)
      {
LABEL_9:
        sub_21DBF516C();
        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_9;
  }

  if (qword_27CE56B08 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5F510);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  v4 = sub_21D17716C(v2);
  sub_21DAEAB00("unknown alarm proximity level", 29, 2, v3, v4);
  __break(1u);
}

unint64_t sub_21D6410AC()
{
  result = qword_27CE5F528;
  if (!qword_27CE5F528)
  {
    type metadata accessor for REMAlarmProximity(255);
    result = swift_getWitnessTable(aU_0, v3, v0, v1);
    atomic_store(result, &qword_27CE5F528);
  }

  return result;
}

unint64_t sub_21D641108()
{
  result = qword_27CE5F530;
  if (!qword_27CE5F530)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F538, &qword_21DC20590);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE5F530);
  }

  return result;
}

void sub_21D64116C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F578, &qword_21DC20790);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  v12 = *(v6 + 56);
  sub_21D10521C(a1, v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  *v11 = sub_21D29B520(&v11[v12], v4) & 1;
  sub_21D0D523C(v11, v8, &qword_27CE5F578, &qword_21DC20790);
  LODWORD(a1) = *v8;
  sub_21D30D8FC(&v8[*(v6 + 56)], type metadata accessor for TTRRemindersListViewModel.ItemID);
  swift_endAccess();
  if (a1 == 1)
  {
    v13._object = 0x800000021DC49D80;
    v13._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v13);
  }
}

uint64_t sub_21D641330()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F540);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F540);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D6413F8()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  __swift_allocate_value_buffer(v0, qword_27CE5F558);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F558);
  if (qword_27CE56E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8EC18);
  return sub_21D10521C(v2, v1, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

char *sub_21D64149C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_21D0CE468();
    v3 = sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F580, &qword_21DC20798);
    swift_allocObject();
    v1 = sub_21D1DD9E0(sub_21D64B370, v2, v3);

    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_21D64157C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D6415DC(v2);
  }

  return result;
}

uint64_t sub_21D6415DC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_21DBF8E0C();

  sub_21D64C634(v4, a1, v1, (v3 + 16));

  if (*(*(v3 + 16) + 16))
  {
    v5 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v6 = sub_21DBFA12C();

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v3;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D64CA88;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_47_0;
    v9 = _Block_copy(aBlock);

    [v5 withActionName:v6 block:{v9, 0x800000021DC4F4C0}];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_21D6418B8(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588, &unk_21DC207A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0);
  v8 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 160);
  if (v11)
  {
    v12 = *(v1 + 160);
  }

  else
  {
    v12 = sub_21D641CD4(v1);
  }

  a1(v12);
  if (v11)
  {
  }

  else
  {
    if (*(v1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE5F540);
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAE9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21D0C9000, v15, v16, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v17, 2u);
        MEMORY[0x223D46520](v17, -1, -1);
      }
    }

    else
    {
      v18 = *(v12 + 16);
      v19 = *(v18 + 104);
      v20 = *(v18 + 112);

      v21 = sub_21D25E9D8(v19, v20);

      LOBYTE(v18) = sub_21D64B378(v21);
      *(v12 + 16) = v21;

      *(v12 + 24) = (*(v12 + 24) | v18) & 1;
      v22 = *(v12 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v22)
      {
        v23 = *(v12 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost + 8);

        v22(v12);

        sub_21D0D0E88(v22, v23);
      }

      else
      {
      }
    }

    *(v2 + 160) = 0;

    sub_21DABA628(v6);
    if ((*(v8 + 48))(v6, 1, updated) == 1)
    {

      return sub_21D0CF7E0(v6, &qword_27CE5F588, &unk_21DC207A0);
    }

    else
    {
      sub_21D105834(v6, v10, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v25 + 24);
          ObjectType = swift_getObjectType();
          (*(v26 + 8))(v25, v10, ObjectType, v26);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v10, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}