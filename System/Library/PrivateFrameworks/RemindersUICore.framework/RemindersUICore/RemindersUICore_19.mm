uint64_t TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_21D0D3954(a1, v10, &qword_27CE5A3A0, qword_21DC0F3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48)];
    sub_21D0D523C(v10, v16, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D0D523C(v10, v13, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D3954(v13, v16, &unk_27CE5CD80, &qword_21DC0CE80);

    v18 = sub_21D261568(v13);

    result = sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
    v17 = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      goto LABEL_17;
    }
  }

  v20 = sub_21D261568(v16);

  if ((v20 & 0x8000000000000000) == 0)
  {
    if ((v17 & 0x8000000000000000) == 0 && v17 < v20)
    {

      sub_21D26181C(v17, v16, v7);

      v21 = sub_21D2795BC();

      if (v21 != 2 && (v21 & 1) != 0)
      {
        v22 = v26;
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v26);
        sub_21D0CF7E0(v16, &unk_27CE5CD80, &qword_21DC0CE80);
        if (swift_getEnumCaseMultiPayload() <= 2)
        {
          sub_21D106918(v22, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
          v23 = v29;
          sub_21D2A0DC8(v7, v29, type metadata accessor for TTRRemindersListViewModel.Item);
          v24 = v23;
          v25 = 0;
          return (*(v5 + 56))(v24, v25, 1, v28);
        }

        sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_13:
        v25 = 1;
        v24 = v29;
        return (*(v5 + 56))(v24, v25, 1, v28);
      }

      sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21D0CF7E0(v16, &unk_27CE5CD80, &qword_21DC0CE80);
    goto LABEL_13;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21D2795BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583F0, &unk_21DC09280);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D108408(v10, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v13);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
  if (v15 == 1)
  {
    return 2;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
  swift_beginAccess();
  v17 = *(v1 + 32);
  if (*(v17 + 16) && (v18 = sub_21D181E00(), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
    v23 = *(v22 - 8);
    sub_21D0D3954(v21 + *(v23 + 72) * v20, v4, &qword_27CE5CDA0, &unk_21DC09B90);
    (*(v23 + 56))(v4, 0, 1, v22);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  }

  swift_endAccess();
  sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v16 = (*(*(v25 - 8) + 48))(v4, 1, v25) != 1;
  sub_21D0CF7E0(v4, &qword_27CE583F0, &unk_21DC09280);
  return v16;
}

uint64_t sub_21D279998()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A488, &qword_21DC0F948);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D108408(v10, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v13);
  sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
  if (v15 == 1)
  {
    return 2;
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v7);
  swift_beginAccess();
  v17 = *(v1 + 32);
  if (*(v17 + 16) && (v18 = sub_21D105CF4(v7), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0, &unk_21DC08F50);
    v23 = *(v22 - 8);
    sub_21D0D3954(v21 + *(v23 + 72) * v20, v4, &qword_27CE581A0, &unk_21DC08F50);
    (*(v23 + 56))(v4, 0, 1, v22);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0, &unk_21DC08F50);
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  }

  swift_endAccess();
  sub_21D106918(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0, &unk_21DC08F50);
  v16 = (*(*(v25 - 8) + 48))(v4, 1, v25) != 1;
  sub_21D0CF7E0(v4, &qword_27CE5A488, &qword_21DC0F948);
  return v16;
}

uint64_t TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21D0D3954(a1, &v24 - v16, &qword_27CE5A3A0, qword_21DC0F3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48)];
    sub_21D0D523C(v17, v14, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D3954(v14, v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    if ((*(*(v19 - 8) + 48))(v11, 1, v19) == 1)
    {
      sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
      v20 = v11;
LABEL_6:
      sub_21D0CF7E0(v20, &unk_27CE5CD80, &qword_21DC0CE80);
LABEL_7:
      type metadata accessor for TTRRemindersListViewModel.Item(0);
      return (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
      sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_7;
    }

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);

    v22 = sub_21D261568(v14);

    if (v18 != v22)
    {
      v20 = v14;
      goto LABEL_6;
    }

    v23 = v14;
  }

  else
  {
    sub_21D0D523C(v17, v8, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D3954(v8, v5, &unk_27CE5CD80, &qword_21DC0CE80);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
    {
      sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
      v20 = v5;
      goto LABEL_6;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_7;
    }

    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v23 = v8;
  }

  return sub_21D0D523C(v23, v25, &unk_27CE5CD80, &qword_21DC0CE80);
}

uint64_t TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_21D104E74(a1, &v9 - v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_storeEnumTagMultiPayload();
  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)(v6, a2);
  return sub_21D0CF7E0(v6, &qword_27CE5A3A0, qword_21DC0F3A0);
}

void TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)(void *a1, __n128 a2)
{
  v244 = a1;
  v228 = 0;
  v216 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v216);
  v219 = &v200 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v234 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v241 = &v200 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410, &unk_21DC0F460);
  MEMORY[0x28223BE20](v8 - 8);
  v221 = &v200 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v240 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v229 = &v200 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v200 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v17 - 8);
  v210 = &v200 - v18;
  v231 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v231);
  v207 = &v200 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v215 = (&v200 - v21);
  MEMORY[0x28223BE20](v22);
  v235 = (&v200 - v23);
  v209 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v24 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v236 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v220 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v242 = (&v200 - v30);
  MEMORY[0x28223BE20](v31);
  v227 = &v200 - v32;
  MEMORY[0x28223BE20](v33);
  v208 = &v200 - v34;
  MEMORY[0x28223BE20](v35);
  v211 = &v200 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v200 - v38;
  v226 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v226);
  v247 = (&v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v239 = *(v41 - 8);
  MEMORY[0x28223BE20](v41 - 8);
  v212 = (&v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v224 = &v200 - v44;
  MEMORY[0x28223BE20](v45);
  v238 = &v200 - v46;
  MEMORY[0x28223BE20](v47);
  v237 = (&v200 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = (&v200 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v243 = (&v200 - v54);
  MEMORY[0x28223BE20](v55);
  v214 = &v200 - v56;
  MEMORY[0x28223BE20](v57);
  v59 = &v200 - v58;
  v256 = MEMORY[0x277D84FA0];
  v233 = v2;

  sub_21D276254();
  p_isa = v60;

  v63 = p_isa[2];
  v245 = v26;
  v251 = v63;
  v252 = v50;
  v225 = v27;
  if (!v63)
  {

    v64 = MEMORY[0x277D84F90];
LABEL_98:
    p_isa = v244;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v252;
    v66 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_99;
  }

  v205 = v16;
  v64 = 0;
  v232 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  *&v250 = p_isa + v232;
  v222 = (v27 + 56);
  v204 = (v27 + 48);
  v203 = (v24 + 56);
  v202 = (v24 + 48);
  *&v62 = 138412290;
  v206 = v62;
  v246 = MEMORY[0x277D84F90];
  v65 = v26;
  v66 = v247;
  v249 = v52;
  v248 = p_isa;
  while (1)
  {
    if (v64 >= p_isa[2])
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v67 = *(v252 + 72);
    sub_21D0D3954(v250 + v67 * v64, v59, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21D104E74(v59, v39, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v69 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    if (EnumCaseMultiPayload > 3)
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        sub_21D106918(v39, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        goto LABEL_30;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_14;
      }

LABEL_15:
      v69 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_21D2A0DC8(v39, v66, v69);
    swift_storeEnumTagMultiPayload();
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 <= 2)
    {
      break;
    }

    if ((v70 - 3) >= 2)
    {
      goto LABEL_30;
    }

    v73 = v237;
    sub_21D2A0DC8(v66, v237, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v74 = *v73;
    sub_21D106918(v73, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v75 = v244;
    swift_beginAccess();
    v76 = v75[12];
    if (!*(v76 + 16) || (v77 = sub_21D17E07C(v74), (v78 & 1) == 0))
    {
      swift_endAccess();
LABEL_35:
      sub_21D0D3954(v59, v243, &qword_27CE5CDA0, &unk_21DC09B90);
      v96 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v246 = sub_21D211CD4(0, v246[2] + 1, 1, v246);
      }

      v98 = v246[2];
      v97 = v246[3];
      if (v98 >= v97 >> 1)
      {
        v246 = sub_21D211CD4((v97 > 1), v98 + 1, 1, v246);
      }

      sub_21D0CF7E0(v59, &qword_27CE5CDA0, &unk_21DC09B90);
      v99 = v246;
      v246[2] = v98 + 1;
      sub_21D0D523C(v243, v99 + v232 + v98 * v67, &qword_27CE5CDA0, &unk_21DC09B90);
      v52 = v249;
      v65 = v96;
      v66 = v247;
      p_isa = v248;
      goto LABEL_6;
    }

    v79 = *(*(v76 + 56) + 8 * v77);
    swift_endAccess();
    if (!*(v79 + 16))
    {
      goto LABEL_35;
    }

    v80 = v65;
    v81 = v74;
    sub_21D29B0D0(&v254, v81);

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v82 = sub_21DBF84BC();
    __swift_project_value_buffer(v82, qword_280D0F190);
    v83 = v81;
    v84 = sub_21DBF84AC();
    v85 = sub_21DBFAEAC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = v206;
      *(v86 + 4) = v83;
      *v87 = v83;
      v88 = v83;
      _os_log_impl(&dword_21D0C9000, v84, v85, "Removing uncommittedReminder at model update {objectID: %@}", v86, 0xCu);
      sub_21D0CF7E0(v87, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v87, -1, -1);
      MEMORY[0x223D46520](v86, -1, -1);
    }

    else
    {
    }

    sub_21D0CF7E0(v59, &qword_27CE5CDA0, &unk_21DC09B90);
    v52 = v249;
    v65 = v80;
    v66 = v247;
LABEL_5:
    p_isa = v248;
LABEL_6:
    if (++v64 == v251)
    {

      v64 = v246;
      goto LABEL_98;
    }
  }

  if (v70 != 1)
  {
    sub_21D106918(v66, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
LABEL_30:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v89 = sub_21DBF84BC();
    __swift_project_value_buffer(v89, qword_280D0F190);
    v90 = sub_21DBF84AC();
    v91 = sub_21DBFAECC();
    v92 = os_log_type_enabled(v90, v91);
    v52 = v249;
    if (v92)
    {
      v93 = v65;
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_21D0C9000, v90, v91, "temporary item should be uncommittedReminder, placeholderReminder or section(uncommittedEditingSection)", v94, 2u);
      v95 = v94;
      v65 = v93;
      v66 = v247;
      MEMORY[0x223D46520](v95, -1, -1);
    }

LABEL_4:
    sub_21D0CF7E0(v59, &qword_27CE5CDA0, &unk_21DC09B90);
    goto LABEL_5;
  }

  v71 = v236;
  sub_21D2A0DC8(v66, v236, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D104E74(v71, v235, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v72 = swift_getEnumCaseMultiPayload();
  if (v72 <= 4)
  {
    if (v72 > 1)
    {
LABEL_48:
      sub_21D106918(v235, type metadata accessor for TTRRemindersListViewModel.SectionID);
      goto LABEL_49;
    }

    if (!v72)
    {
      goto LABEL_49;
    }

LABEL_47:

    goto LABEL_49;
  }

  if (v72 <= 6)
  {
    goto LABEL_48;
  }

  if (v72 == 7)
  {
LABEL_49:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v109 = sub_21DBF84BC();
    __swift_project_value_buffer(v109, qword_280D0F190);
    v110 = sub_21DBF84AC();
    v111 = sub_21DBFAECC();
    v112 = os_log_type_enabled(v110, v111);
    v52 = v249;
    if (v112)
    {
      v113 = v65;
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_21D0C9000, v110, v111, "temporary section item can only be uncommittedEditingSection", v114, 2u);
      v115 = v114;
      v65 = v113;
      v66 = v247;
      MEMORY[0x223D46520](v115, -1, -1);
    }

    sub_21D106918(v236, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    goto LABEL_4;
  }

  if (v72 == 8)
  {
    goto LABEL_47;
  }

  v100 = *v235;
  *v215 = *v235;
  swift_storeEnumTagMultiPayload();
  v101 = v65;
  v102 = v229;
  v217 = *v222;
  v217(v229, 1, 1, v101);
  v201 = v100;

  v103 = sub_21D263398(v102);

  sub_21D0CF7E0(v102, &unk_27CE5CD80, &qword_21DC0CE80);
  if (!v103[2])
  {

    v103 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v230 = v103[2];
  v218 = v39;
  v104 = (*(v225 + 80) + 32) & ~*(v225 + 80);
  v105 = v103 + v104;
  v106 = v211;
  sub_21D104E74(v103 + v104, v211, type metadata accessor for TTRRemindersListViewModel.Item);
  v107 = swift_getEnumCaseMultiPayload();
  v108 = sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v107)
  {
    v39 = v218;
LABEL_57:
    v66 = v247;
LABEL_74:
    v230 = &v200;
    MEMORY[0x28223BE20](v108);
    v124 = v215;
    *(&v200 - 2) = v215;
    v125 = v205;
    v126 = v228;
    sub_21D22D788(sub_21D2F8BAC, v103, v205);

    sub_21D106918(v124, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v127 = v245;
    v128 = (*v204)(v125, 1, v245);
    v228 = v126;
    if (v128 == 1)
    {
      sub_21D0CF7E0(v125, &unk_27CE5CD80, &qword_21DC0CE80);
      v65 = v127;
    }

    else
    {
      v129 = v125;
      v130 = v208;
      sub_21D104E74(v129, v208, type metadata accessor for TTRRemindersListViewModel.Item);
      v131 = swift_getEnumCaseMultiPayload();
      v132 = v210;
      if (v131 == 1)
      {
        sub_21D2A0DC8(v130, v210, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v133 = 0;
      }

      else
      {
        sub_21D106918(v130, type metadata accessor for TTRRemindersListViewModel.Item);
        v133 = 1;
      }

      v134 = v209;
      (*v203)(v132, v133, 1, v209);
      sub_21D106918(v205, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((*v202)(v132, 1, v134) != 1)
      {
        v135 = v207;
        sub_21D104E74(v132, v207, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v132, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v254);
        sub_21D106918(v135, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (v255 > 1u)
        {
          v65 = v245;
          if (v255 != 2)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v65 = v245;
          if (!v255)
          {

            if (qword_280D0F188 != -1)
            {
              swift_once();
            }

            v136 = sub_21DBF84BC();
            __swift_project_value_buffer(v136, qword_280D0F190);
            v137 = v201;
            v138 = sub_21DBF84AC();
            v139 = sub_21DBFAEAC();

            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v230 = v138;
              v142 = v141;
              *v140 = v206;
              *(v140 + 4) = v137;
              *v141 = v137;
              v143 = v137;
              v144 = v139;
              v145 = v230;
              _os_log_impl(&dword_21D0C9000, v230, v144, "Removing uncommittedEditingSection at model update {objectID: %@}", v140, 0xCu);
              sub_21D0CF7E0(v142, &unk_27CE60070, &unk_21DC09550);
              MEMORY[0x223D46520](v142, -1, -1);
              MEMORY[0x223D46520](v140, -1, -1);
            }

            else
            {
            }

            sub_21D106918(v236, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D0CF7E0(v59, &qword_27CE5CDA0, &unk_21DC09B90);
            v52 = v249;
            v65 = v245;
            goto LABEL_5;
          }
        }

        goto LABEL_89;
      }

      sub_21D0CF7E0(v132, &qword_27CE5A3A8, &qword_21DC0F3E8);
      v65 = v245;
    }

LABEL_89:
    sub_21D0D3954(v59, v214, &qword_27CE5CDA0, &unk_21DC09B90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v246 = sub_21D211CD4(0, v246[2] + 1, 1, v246);
    }

    v147 = v246[2];
    v146 = v246[3];
    v230 = (v147 + 1);
    if (v147 >= v146 >> 1)
    {
      v246 = sub_21D211CD4((v146 > 1), v147 + 1, 1, v246);
    }

    sub_21D106918(v236, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D0CF7E0(v59, &qword_27CE5CDA0, &unk_21DC09B90);
    v148 = v246;
    v246[2] = v230;
    sub_21D0D523C(v214, v148 + v232 + v147 * v67, &qword_27CE5CDA0, &unk_21DC09B90);
    v52 = v249;
    goto LABEL_5;
  }

  v213 = v104;
  v200 = v103;
  v223 = *(v225 + 72);
  v103 = MEMORY[0x277D84F90];
  while (1)
  {
    v116 = v227;
    sub_21D104E74(v105, v227, type metadata accessor for TTRRemindersListViewModel.Item);
    v117 = v229;
    sub_21D104E74(v116, v229, type metadata accessor for TTRRemindersListViewModel.Item);
    v217(v117, 0, 1, v245);

    p_isa = sub_21D263398(v117);

    sub_21D0CF7E0(v117, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D106918(v116, type metadata accessor for TTRRemindersListViewModel.Item);
    v65 = p_isa[2];
    v118 = v103[2];
    v66 = (v118 + v65);
    if (__OFADD__(v118, v65))
    {
      break;
    }

    v119 = swift_isUniquelyReferenced_nonNull_native();
    if (!v119 || v66 > v103[3] >> 1)
    {
      if (v118 <= v66)
      {
        v120 = v118 + v65;
      }

      else
      {
        v120 = v118;
      }

      v103 = sub_21D211A80(v119, v120, 1, v103);
    }

    v39 = v218;
    v66 = v247;
    if (p_isa[2])
    {
      if ((v103[3] >> 1) - v103[2] < v65)
      {
        __break(1u);
LABEL_153:
        __break(1u);
        return;
      }

      swift_arrayInitWithCopy();

      if (v65)
      {
        v121 = v103[2];
        v122 = __OFADD__(v121, v65);
        v123 = v121 + v65;
        if (v122)
        {
          goto LABEL_153;
        }

        v103[2] = v123;
      }
    }

    else
    {

      if (v65)
      {
        goto LABEL_150;
      }
    }

    v105 += v223;
    v230 = (v230 - 1);
    if (!v230)
    {

      goto LABEL_74;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  v64 = sub_21D256C54(v64);
LABEL_99:
  v150 = *(v64 + 16);
  v151 = (v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)));
  v254 = v151;
  v255 = v150;
  sub_21D29801C(&v254, &qword_27CE5CDA0, &unk_21DC09B90, sub_21D299118, sub_21D2983D0);
  v246 = v64;
  v152 = *(v64 + 16);
  v153 = v221;
  if (v152)
  {
    v154 = p_isa;
    v155 = *(v65 + 72);
    do
    {
      sub_21D0D3954(v151, v66, &qword_27CE5CDA0, &unk_21DC09B90);
      p_isa = v154[10];

      sub_21D272718(v66, v153);

      sub_21D0CF7E0(v153, &qword_27CE5A410, &unk_21DC0F460);
      sub_21D0CF7E0(v66, &qword_27CE5CDA0, &unk_21DC09B90);
      v151 += v155;
      --v152;
    }

    while (v152);
  }

  v156 = v233;
  swift_beginAccess();
  v157 = *(v156 + 88);
  v64 = v157 + 56;
  v158 = 1 << *(v157 + 32);
  v159 = -1;
  if (v158 < 64)
  {
    v159 = ~(-1 << v158);
  }

  v160 = v159 & *(v157 + 56);
  v161 = (v158 + 63) >> 6;
  v251 = (v225 + 56);
  v252 = v157;
  v66 = (v225 + 48);
  sub_21DBF8E0C();
  v162 = 0;
  *&v163 = 138412290;
  v250 = v163;
  v164 = v234;
  v65 = v242;
  v165 = v224;
  while (2)
  {
    if (v160)
    {
LABEL_111:
      v168 = v238;
      sub_21D104E74(*(v252 + 48) + *(v239 + 72) * (__clz(__rbit64(v160)) | (v162 << 6)), v238, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D2A0DC8(v168, v165, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v169 = v165;
      sub_21D104E74(v165, v65, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
      v170 = v244[10];

      v171 = v241;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v241);
      swift_beginAccess();
      v172 = *(v170 + 24);
      if (*(v172 + 16) && (v173 = sub_21D181E00(), (v174 & 1) != 0))
      {
        v175 = *(*(v172 + 56) + 8 * v173);
        swift_endAccess();

        sub_21D106918(v171, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v176 = *(*v175 + 120);
        swift_beginAccess();
        v177 = v175 + v176;
        v164 = v234;
        v178 = v240;
        sub_21D104E74(v177, v240, type metadata accessor for TTRRemindersListViewModel.Item);

        v179 = 0;
      }

      else
      {
        swift_endAccess();
        sub_21D106918(v171, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v179 = 1;
        v178 = v240;
      }

      v160 &= v160 - 1;
      v180 = v245;
      (*v251)(v178, v179, 1, v245);

      if ((*v66)(v178, 1, v180) == 1)
      {
        p_isa = v242;
        sub_21D106918(v242, type metadata accessor for TTRRemindersListViewModel.Item);
        v165 = v169;
        sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v166 = v178;
        v65 = p_isa;
        sub_21D0CF7E0(v166, &unk_27CE5CD80, &qword_21DC0CE80);
        continue;
      }

      sub_21D0CF7E0(v178, &unk_27CE5CD80, &qword_21DC0CE80);
      v181 = *(v233 + 80);

      v65 = v242;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v164);
      swift_beginAccess();
      p_isa = *(v181 + 24);
      if (!p_isa[2] || (v182 = sub_21D181E00(), (v183 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v164, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v165 = v169;

        continue;
      }

      p_isa = *(p_isa[7] + 8 * v182);
      swift_endAccess();

      sub_21D106918(v164, type metadata accessor for TTRRemindersListViewModel.ItemID);

      v184 = *(*p_isa + 128);
      swift_beginAccess();
      v185 = *(p_isa + v184);

      if (!v185)
      {
        sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.Item);
        v165 = v169;
        sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v164 = v234;
        continue;
      }

      sub_21D104E74(v185 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v220, type metadata accessor for TTRRemindersListViewModel.Item);
      v186 = swift_getEnumCaseMultiPayload();
      if (v186 <= 3)
      {
        v164 = v234;
        if (v186 >= 2)
        {
          if (v186 == 2)
          {
            LODWORD(v249) = 0;
LABEL_140:
            v198 = v219;
            sub_21D2A0DC8(v220, v219, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            swift_storeEnumTagMultiPayload();
            v199 = swift_getEnumCaseMultiPayload();
            if ((v199 - 1) < 2)
            {
              sub_21D106918(v198, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
              v164 = v234;
LABEL_142:
              p_isa = v244;
              TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)(v185, v188);
LABEL_143:

              sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.Item);
              v165 = v169;
              sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ReminderID);
              continue;
            }

            v164 = v234;
            if (!v199)
            {
              sub_21D106918(v219, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
            }

            goto LABEL_128;
          }

          v187 = 1;
LABEL_139:
          LODWORD(v249) = v187;
          goto LABEL_140;
        }
      }

      else
      {
        v164 = v234;
        if ((v186 - 5) >= 4)
        {
          if ((v186 - 9) >= 2)
          {
            v187 = 2;
            goto LABEL_139;
          }

LABEL_127:
          swift_storeEnumTagMultiPayload();
LABEL_128:
          p_isa = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
          swift_beginAccess();
          if (*(p_isa + v185) != 1)
          {
            if (!*(p_isa + v185))
            {
              goto LABEL_142;
            }

            goto LABEL_143;
          }

          sub_21D29B0D0(&v253, *v169);

          if (qword_280D0F188 != -1)
          {
            swift_once();
          }

          v189 = sub_21DBF84BC();
          __swift_project_value_buffer(v189, qword_280D0F190);
          sub_21D104E74(v169, v212, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v190 = sub_21DBF84AC();
          v191 = sub_21DBFAEAC();
          v249 = v190;
          if (os_log_type_enabled(v190, v191))
          {
            v192 = swift_slowAlloc();
            v248 = v192;
            v243 = swift_slowAlloc();
            *v192 = v250;
            v193 = v212;
            v194 = *v212;
            v247 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
            sub_21D106918(v193, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v195 = v248;
            *(v248 + 4) = v194;
            v196 = v243;
            *v243 = v194;
            v164 = v234;
            v197 = v191;
            p_isa = &v249->isa;
            _os_log_impl(&dword_21D0C9000, v249, v197, "Removing disposable editingSessionState at model update {objectID: %@}", v195, 0xCu);
            sub_21D0CF7E0(v196, &unk_27CE60070, &unk_21DC09550);
            MEMORY[0x223D46520](v196, -1, -1);
            MEMORY[0x223D46520](v248, -1, -1);

            sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.Item);
            v165 = v224;
            sub_21D106918(v224, v247);
          }

          else
          {

            p_isa = type metadata accessor for TTRRemindersListViewModel.ReminderID;
            sub_21D106918(v212, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.Item);
            v165 = v224;
            sub_21D106918(v224, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          }

          continue;
        }
      }

      sub_21D106918(v220, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_127;
    }

    break;
  }

  while (1)
  {
    v167 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      __break(1u);
      goto LABEL_148;
    }

    if (v167 >= v161)
    {
      break;
    }

    v160 = *(v64 + 8 * v167);
    ++v162;
    if (v160)
    {
      v162 = v167;
      goto LABEL_111;
    }
  }
}

BOOL sub_21D27C5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  sub_21D0D3954(a1 + *(v10 + 56), v9, &qword_27CE5A3A0, qword_21DC0F3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48)];
  }

  else
  {
    v11 = 0;
  }

  sub_21D0CF7E0(v9, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D0D3954(a2 + *(v10 + 56), v6, &qword_27CE5A3A0, qword_21DC0F3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48)];
  }

  else
  {
    v12 = 0;
  }

  sub_21D0CF7E0(v6, &unk_27CE5CD80, &qword_21DC0CE80);
  return v11 < v12;
}

void sub_21D27C7A4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948, &qword_21DC09BA8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21D82E440(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21D29801C(v5, &qword_27CE58948, &qword_21DC09BA8, sub_21D2987B0, sub_21D298170);
  *a1 = v3;
}

void TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v51 = &v49 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v49 - v14);
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v22 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  v52 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v49 - v20);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v18);
  v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v21, v18);
  sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if ((v23 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_280D0F190);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "TTRRemindersListTreeViewModel: Invalid editingSessionState.item";
    goto LABEL_13;
  }

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v44 = sub_21DBF84BC();
      __swift_project_value_buffer(v44, qword_280D0F190);
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAECC();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_14;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "TTRRemindersListTreeViewModel: Invalid item type";
      goto LABEL_13;
    }

    v35 = v51;
    sub_21D2A0DC8(v5, v51, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v36 = [v22 objectID];
    v37 = sub_21DBFB63C();

    if (v37)
    {
      v28 = v52;
      if ((TTRRemindersListEditingSessionState.isForNewReminder.getter() & 1) == 0)
      {
        sub_21D104E74(v35, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        swift_beginAccess();
        v46 = v50;
        sub_21D29BEAC(v50, v8);
        swift_endAccess();
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21D106918(v35, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        goto LABEL_38;
      }

      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v38 = sub_21DBF84BC();
      __swift_project_value_buffer(v38, qword_280D0F190);
      v39 = sub_21DBF84AC();
      v40 = sub_21DBFAECC();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_36:

        sub_21D106918(v35, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        return;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "TTRRemindersListTreeViewModel: isForNewReminder is set to true for editing an existing reminder, expect false";
    }

    else
    {
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v45 = sub_21DBF84BC();
      __swift_project_value_buffer(v45, qword_280D0F190);
      v39 = sub_21DBF84AC();
      v40 = sub_21DBFAECC();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_36;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "TTRRemindersListTreeViewModel: Invalid reminderID";
    }

    _os_log_impl(&dword_21D0C9000, v39, v40, v42, v41, 2u);
    MEMORY[0x223D46520](v41, -1, -1);
    goto LABEL_36;
  }

  sub_21D2A0DC8(v5, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v25 = [v22 objectID];
  v26 = *v15;
  sub_21D106918(v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v27 = sub_21DBFB63C();

  if ((v27 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF84BC();
    __swift_project_value_buffer(v43, qword_280D0F190);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "TTRRemindersListTreeViewModel: Invalid objectID";
    goto LABEL_13;
  }

  v28 = v52;
  if ((TTRRemindersListEditingSessionState.isForNewReminder.getter() & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F190);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "TTRRemindersListTreeViewModel: isForNewReminder is set to false for editing a new reminder, expect true";
LABEL_13:
    _os_log_impl(&dword_21D0C9000, v30, v31, v33, v32, 2u);
    MEMORY[0x223D46520](v32, -1, -1);
LABEL_14:

    return;
  }

LABEL_38:

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v21);
  v47 = sub_21D2916C8(v21, sub_21D181E00);

  sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v47)
  {
    v48 = *(*v47 + 128);
    swift_beginAccess();
    *(v47 + v48) = v28;
  }
}

void sub_21D27D10C(uint64_t a1, char a2, void *a3)
{
  v460 = a3;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  v405 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v446 = &v376 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v414 = &v376 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D18, &unk_21DC0CFE0);
  v399 = *(v8 - 8);
  v400 = v8;
  MEMORY[0x28223BE20](v8);
  v411 = &v376 - v9;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v438);
  v437 = &v376 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v11 - 8);
  v425 = &v376 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v407 = &v376 - v14;
  MEMORY[0x28223BE20](v15);
  v415 = &v376 - v16;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v493 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v445 = &v376 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v412 = &v376 - v19;
  MEMORY[0x28223BE20](v20);
  v442 = &v376 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v22 - 8);
  v470 = &v376 - v23;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v466);
  v465 = &v376 - v24;
  v464 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v404 = *(v464 - 8);
  MEMORY[0x28223BE20](v464);
  v444 = &v376 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v450 = &v376 - v27;
  MEMORY[0x28223BE20](v28);
  v403 = &v376 - v29;
  MEMORY[0x28223BE20](v30);
  v406 = &v376 - v31;
  MEMORY[0x28223BE20](v32);
  v419 = &v376 - v33;
  MEMORY[0x28223BE20](v34);
  v424 = &v376 - v35;
  MEMORY[0x28223BE20](v36);
  v481 = &v376 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v38 - 8);
  v410 = &v376 - v39;
  v451 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v451);
  v427 = &v376 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v408 = &v376 - v42;
  MEMORY[0x28223BE20](v43);
  v443 = &v376 - v44;
  v463 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v488 = *(v463 - 8);
  MEMORY[0x28223BE20](v463);
  v439 = &v376 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v469 = &v376 - v47;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v476);
  v49 = &v376 - v48;
  v431 = sub_21DBF5B4C();
  v483 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v418 = &v376 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
  MEMORY[0x28223BE20](v417);
  v432 = &v376 - v51;
  v497 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v457 = *(v497 - 8);
  MEMORY[0x28223BE20](v497);
  v398 = &v376 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v401 = &v376 - v54;
  MEMORY[0x28223BE20](v55);
  v486 = &v376 - v56;
  MEMORY[0x28223BE20](v57);
  v485 = (&v376 - v58);
  MEMORY[0x28223BE20](v59);
  v489 = &v376 - v60;
  MEMORY[0x28223BE20](v61);
  v484 = &v376 - v62;
  MEMORY[0x28223BE20](v63);
  v496 = &v376 - v64;
  MEMORY[0x28223BE20](v65);
  v492 = &v376 - v66;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418, &unk_21DC0F480);
  v482 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v467 = (&v376 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420, &unk_21DC41780);
  MEMORY[0x28223BE20](v68 - 8);
  v441 = &v376 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v428 = (&v376 - v71);
  MEMORY[0x28223BE20](v72);
  v478 = &v376 - v73;
  MEMORY[0x28223BE20](v74);
  v479 = (&v376 - v75);
  v416 = sub_21DBF5B9C();
  v471 = *(v416 - 8);
  MEMORY[0x28223BE20](v416);
  v435 = &v376 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v77 - 8);
  v423 = &v376 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v477 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v495 = (&v376 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v81);
  v397 = &v376 - v82;
  MEMORY[0x28223BE20](v83);
  v395 = &v376 - v84;
  MEMORY[0x28223BE20](v85);
  v396 = &v376 - v86;
  MEMORY[0x28223BE20](v87);
  v394 = &v376 - v88;
  MEMORY[0x28223BE20](v89);
  v426 = &v376 - v90;
  MEMORY[0x28223BE20](v91);
  v452 = &v376 - v92;
  MEMORY[0x28223BE20](v93);
  v409 = &v376 - v94;
  MEMORY[0x28223BE20](v95);
  v440 = &v376 - v96;
  MEMORY[0x28223BE20](v97);
  v421 = &v376 - v98;
  MEMORY[0x28223BE20](v99);
  v433 = &v376 - v100;
  MEMORY[0x28223BE20](v101);
  v453 = &v376 - v102;
  MEMORY[0x28223BE20](v103);
  v105 = &v376 - v104;
  MEMORY[0x28223BE20](v106);
  v474 = &v376 - v107;
  MEMORY[0x28223BE20](v108);
  v110 = &v376 - v109;
  MEMORY[0x28223BE20](v111);
  v113 = &v376 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v114 - 8);
  v402 = &v376 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v413 = &v376 - v117;
  MEMORY[0x28223BE20](v118);
  v120 = &v376 - v119;
  v499[0] = a1;
  v498 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v121 = sub_21DBFA42C();
  v422 = 0;
  v500 = v121;
  v122 = v477;
  v123 = *(v477 + 56);
  v490 = v477 + 56;
  v454 = v123;
  v123(v120, 1, 1, v79);

  v124 = sub_21D263398(v120);
  v125 = v105;

  v447 = v120;
  sub_21D0CF7E0(v120, &unk_27CE5CD80, &qword_21DC0CE80);
  v126 = *(v124 + 16);
  v491 = v110;
  v480 = v79;
  v475 = v125;
  if (v126)
  {
    v127 = v122;
    v128 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v434 = v124;
    v129 = v124 + v128;
    sub_21D104E74(v129, v113, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v113, type metadata accessor for TTRRemindersListViewModel.Item);
    v132 = v479;
    if (EnumCaseMultiPayload)
    {
      v133 = v434;
    }

    else
    {
      v462 = v49;
      v499[0] = MEMORY[0x277D84F90];
      v494 = *(v127 + 72);
      v134 = v480;
      v135 = v447;
      v136 = v454;
      v137 = v495;
      do
      {
        sub_21D104E74(v129, v137, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v495, v135, type metadata accessor for TTRRemindersListViewModel.Item);
        v136(v135, 0, 1, v134);

        v138 = sub_21D263398(v135);
        v137 = v495;

        sub_21D0CF7E0(v135, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v137, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v138);
        v129 += v494;
        --v126;
      }

      while (v126);

      v133 = v499[0];
      v132 = v479;
      v49 = v462;
    }
  }

  else
  {

    v133 = MEMORY[0x277D84F90];
    v132 = v479;
  }

  v139 = v487;
  v140 = v478;
  if (!*(v500 + 16))
  {
    v458 = MEMORY[0x277D84F90];
LABEL_243:

    sub_21D1E41E8(v458);
    return;
  }

  v141 = v133[2];
  if (!v141)
  {
    v420 = 0;
    v458 = MEMORY[0x277D84F90];
    v430 = MEMORY[0x277D84F90];
    goto LABEL_243;
  }

  v420 = 0;
  v391 = 0;
  v473 = (v482 + 56);
  v472 = (v482 + 48);
  v449 = 0x800000021DC43E30;
  v448 = 0x800000021DC43E00;
  v468 = 0x800000021DC43DE0;
  v142 = (v488 + 48);
  v393 = (v493 + 48);
  v385 = (v477 + 48);
  v386 = (v471 + 8);
  v387 = (v483 + 8);
  v488 = (*(v477 + 80) + 32) & ~*(v477 + 80);
  *&v131 = 136315138;
  v392 = v131;
  v430 = MEMORY[0x277D84F90];
  v458 = MEMORY[0x277D84F90];
  v459 = v142;
  while (1)
  {
LABEL_11:
    sub_21D104E74(v133 + v488, v491, type metadata accessor for TTRRemindersListViewModel.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v141 - 1) > v133[3] >> 1)
    {
      v133 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v141, 1, v133);
    }

    v144 = v133 + v488;
    sub_21D106918(v133 + v488, type metadata accessor for TTRRemindersListViewModel.Item);
    v145 = v133[2] - 1;
    v482 = *(v477 + 72);
    if (v482 > 0 || v144 >= &v144[v482 + v145 * v482])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v482)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --v133[2];
    v146 = v474;
    sub_21D104E74(v491, v474, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_21D106918(v146, type metadata accessor for TTRRemindersListViewModel.Item);
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v147 = sub_21DBF84BC();
    __swift_project_value_buffer(v147, qword_280D0F190);
    v148 = sub_21DBF84AC();
    v149 = sub_21DBFAECC();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_21D0C9000, v148, v149, "Unexpected item type", v150, 2u);
      MEMORY[0x223D46520](v150, -1, -1);
    }

    sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.Item);
    if (*(v500 + 16))
    {
      v141 = v133[2];
      v139 = v487;
      if (v141)
      {
        continue;
      }
    }

    goto LABEL_243;
  }

  sub_21D2A0DC8(v146, v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21DBF5B8C();
  v151 = v447;
  sub_21D104E74(v491, v447, type metadata accessor for TTRRemindersListViewModel.Item);
  v454(v151, 0, 1, v480);

  v152 = sub_21D263398(v151);

  sub_21D0CF7E0(v151, &unk_27CE5CD80, &qword_21DC0CE80);
  v153 = 0;
  v154 = *(v152 + 16);
  v456 = v152;
  v455 = v152 + v488;
  v434 = v133;
  v155 = v475;
  v471 = v154;
  v462 = v49;
  if (!v154)
  {
    goto LABEL_31;
  }

LABEL_28:
  if ((v153 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_248;
  }

  if (v153 >= *(v456 + 16))
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v156 = v155;
  v157 = v153 + 1;
  v158 = v455 + v153 * v482;
  v159 = *(v139 + 48);
  v160 = v467;
  *v467 = v153;
  sub_21D104E74(v158, v160 + v159, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D523C(v160, v140, &qword_27CE5A418, &unk_21DC0F480);
  v161 = 0;
  v483 = v157;
  v155 = v156;
  while (1)
  {
    v162 = *v473;
    (*v473)(v140, v161, 1, v139);
    sub_21D0D523C(v140, v132, &qword_27CE5A420, &unk_21DC41780);
    v163 = *v472;
    if ((*v472)(v132, 1, v139) == 1)
    {
      break;
    }

    v164 = *v132;
    sub_21D2A0DC8(v132 + *(v139 + 48), v155, type metadata accessor for TTRRemindersListViewModel.Item);
    v165 = v492;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v492);
    v166 = v500;
    if (!*(v500 + 16) || (ObjectType = v164, sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(v499), v167 = sub_21DBFC82C(), v168 = -1 << *(v166 + 32), v169 = v167 & ~v168, v495 = (v166 + 56), v170 = v476, ((*(v166 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0))
    {
LABEL_103:
      sub_21D106918(v165, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v155 = v475;
      sub_21D106918(v475, type metadata accessor for TTRRemindersListViewModel.Item);
      v139 = v487;
      v140 = v478;
      v132 = v479;
      goto LABEL_104;
    }

    v493 = ~v168;
    v494 = *(v457 + 72);
    while (1)
    {
      v173 = v496;
      sub_21D104E74(*(v166 + 48) + v494 * v169, v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v174 = *(v170 + 48);
      sub_21D104E74(v173, v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D104E74(v165, &v49[v174], type metadata accessor for TTRRemindersListViewModel.ItemID);
      v175 = swift_getEnumCaseMultiPayload();
      if (v175 <= 1)
      {
        break;
      }

      if (v175 != 2)
      {
        v192 = v486;
        sub_21D104E74(v49, v486, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v177 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v178 = v496;
LABEL_66:
          sub_21D106918(v178, v177);
LABEL_67:
          sub_21D0CF7E0(v49, &qword_27CE58AD0, &qword_21DC0A050);
          goto LABEL_38;
        }

        v193 = *v192;
        if (v193 > 2)
        {
          if (v193 == 3)
          {
            v196 = 0xD00000000000001FLL;
            v197 = v448;
          }

          else if (v193 == 4)
          {
            v197 = 0xE700000000000000;
            v196 = 0x6D657449706974;
          }

          else
          {
            v196 = 0xD00000000000001DLL;
            v197 = v449;
          }
        }

        else
        {
          v194 = 0xD000000000000012;
          if (v193 == 1)
          {
            v194 = 0x7367617468736168;
          }

          v195 = v468;
          if (v193 == 1)
          {
            v195 = 0xEC0000006D657449;
          }

          if (*v192)
          {
            v196 = v194;
          }

          else
          {
            v196 = 0x6574656C706D6F63;
          }

          if (*v192)
          {
            v197 = v195;
          }

          else
          {
            v197 = 0xED00006D65744964;
          }
        }

        v201 = v49[v174];
        if (v201 > 2)
        {
          if (v201 == 3)
          {
            v203 = v448;
            if (v196 != 0xD00000000000001FLL)
            {
              goto LABEL_99;
            }
          }

          else if (v201 == 4)
          {
            v203 = 0xE700000000000000;
            if (v196 != 0x6D657449706974)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v203 = v449;
            if (v196 != 0xD00000000000001DLL)
            {
              goto LABEL_99;
            }
          }
        }

        else if (v49[v174])
        {
          if (v201 == 1)
          {
            v202 = 0x7367617468736168;
          }

          else
          {
            v202 = 0xD000000000000012;
          }

          if (v201 == 1)
          {
            v203 = 0xEC0000006D657449;
          }

          else
          {
            v203 = v468;
          }

          if (v196 != v202)
          {
LABEL_99:
            v204 = sub_21DBFC64C();

            sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v204)
            {
              goto LABEL_109;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v203 = 0xED00006D65744964;
          if (v196 != 0x6574656C706D6F63)
          {
            goto LABEL_99;
          }
        }

        if (v197 == v203)
        {

          v208 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v209 = v496;
          goto LABEL_108;
        }

        goto LABEL_99;
      }

      v179 = v485;
      sub_21D104E74(v49, v485, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v180 = *v179;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_67;
      }

      v171 = *&v49[v174];
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v172 = sub_21DBFB63C();

      sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v172)
      {
        goto LABEL_109;
      }

LABEL_37:
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v165 = v492;
LABEL_38:
      v169 = (v169 + 1) & v493;
      if (((*(v495 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    if (!v175)
    {
      v176 = v484;
      sub_21D104E74(v49, v484, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v177 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        v178 = v176;
        goto LABEL_66;
      }

      v198 = &v49[v174];
      v199 = v469;
      sub_21D2A0DC8(v198, v469, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v200 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v176, v199);
      sub_21D106918(v199, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v200)
      {
        goto LABEL_109;
      }

      goto LABEL_37;
    }

    v181 = v489;
    sub_21D104E74(v49, v489, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v177 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v178 = v181;
      goto LABEL_66;
    }

    v182 = v481;
    sub_21D2A0DC8(&v49[v174], v481, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v183 = v181;
    if ((sub_21DBFB63C() & 1) == 0)
    {
      sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v210 = v182;
      goto LABEL_102;
    }

    v184 = *(v464 + 20);
    v185 = *(v466 + 48);
    v186 = v183 + v184;
    v187 = v465;
    sub_21D0D3954(v186, v465, &unk_27CE5CD70, &unk_21DC09230);
    v188 = v463;
    sub_21D0D3954(v182 + v184, v187 + v185, &unk_27CE5CD70, &unk_21DC09230);
    v189 = *v459;
    if ((*v459)(v187, 1, v188) != 1)
    {
      sub_21D0D3954(v187, v470, &unk_27CE5CD70, &unk_21DC09230);
      if (v189(v187 + v185, 1, v188) == 1)
      {
        sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v470, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v191 = v187;
        v170 = v476;
        v49 = v462;
        goto LABEL_76;
      }

      v205 = v439;
      sub_21D2A0DC8(v187 + v185, v439, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v206 = v470;
      v207 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v470, v205);
      sub_21D106918(v205, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v206, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v187, &unk_27CE5CD70, &unk_21DC09230);
      v210 = v481;
      v170 = v476;
      v183 = v489;
      v49 = v462;
      if (v207)
      {
        goto LABEL_107;
      }

LABEL_102:
      sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v183, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_38;
    }

    sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v190 = v189(v187 + v185, 1, v188) == 1;
    v191 = v187;
    v170 = v476;
    v49 = v462;
    if (!v190)
    {
LABEL_76:
      sub_21D0CF7E0(v191, &qword_27CE58388, &unk_21DC0F470);
      v210 = v481;
      v183 = v489;
      goto LABEL_102;
    }

    sub_21D0CF7E0(v187, &unk_27CE5CD70, &unk_21DC09230);
    v210 = v481;
    v183 = v489;
LABEL_107:
    sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v209 = v183;
    v208 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_108:
    sub_21D106918(v209, v208);
LABEL_109:
    sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v211 = v475;
    sub_21D104E74(v475, v453, type metadata accessor for TTRRemindersListViewModel.Item);
    v212 = swift_getEnumCaseMultiPayload();
    if (v212 <= 3)
    {
      v140 = v478;
      v132 = v479;
      if (v212 >= 2)
      {
        goto LABEL_122;
      }

LABEL_114:
      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_115:
      swift_storeEnumTagMultiPayload();
      goto LABEL_116;
    }

    v140 = v478;
    v132 = v479;
    if ((v212 - 5) < 4)
    {
      goto LABEL_114;
    }

    if ((v212 - 9) < 2)
    {
      goto LABEL_115;
    }

LABEL_122:
    v225 = v443;
    sub_21D2A0DC8(v453, v443, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v226 = swift_getEnumCaseMultiPayload();
    if (v226 < 2)
    {
      sub_21D106918(v225, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      sub_21DBF5AFC();
      v227 = v410;
      v228 = v492;
      sub_21D1AAD70(v492, v410);
      sub_21D0CF7E0(v227, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D106918(v228, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v155 = v211;
      sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.Item);
      v139 = v487;
      goto LABEL_104;
    }

    if (v226 == 2)
    {
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

LABEL_116:
    v213 = v433;
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v214 = sub_21DBF84BC();
    __swift_project_value_buffer(v214, qword_280D0F190);
    v215 = v475;
    sub_21D104E74(v475, v213, type metadata accessor for TTRRemindersListViewModel.Item);
    v216 = sub_21DBF84AC();
    v217 = sub_21DBFAECC();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v499[0] = v219;
      *v218 = v392;
      v220 = sub_21D25D250();
      v222 = v221;
      sub_21D106918(v213, type metadata accessor for TTRRemindersListViewModel.Item);
      v223 = sub_21D0CDFB4(v220, v222, v499);

      *(v218 + 4) = v223;
      _os_log_impl(&dword_21D0C9000, v216, v217, "TTRRemindersListTreeViewModel: item does not support indent {item: %s}", v218, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v219);
      v224 = v219;
      v132 = v479;
      MEMORY[0x223D46520](v224, -1, -1);
      MEMORY[0x223D46520](v218, -1, -1);
    }

    else
    {

      sub_21D106918(v213, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21D106918(v492, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
    v139 = v487;
    v140 = v478;
    v155 = v215;
LABEL_104:
    v154 = v471;
    v153 = v483;
    if (v483 != v471)
    {
      goto LABEL_28;
    }

LABEL_31:
    v161 = 1;
    v483 = v154;
  }

  sub_21DBF5B0C();
  v229 = v418;
  sub_21DBF5B6C();
  v230 = v432;
  sub_21DBF5B3C();
  (*v387)(v229, v431);
  v380 = *(v417 + 36);
  v231 = sub_21D2F89FC(&qword_280D1B838, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
  sub_21DBFACAC();
  if (*(v230 + v380) == v499[0])
  {
    goto LABEL_127;
  }

  v456 = v231;
LABEL_131:
  v232 = sub_21DBFAD3C();
  v234 = *v233;
  v378 = v233[1];
  v232(v499, 0);
  sub_21DBFACBC();
  v455 = v234;
  if (__OFSUB__(v234, 1))
  {
    goto LABEL_251;
  }

  v495 = type metadata accessor for TTRRemindersListViewModel.Item;
  v235 = v447;
  sub_21D104E74(v491, v447, type metadata accessor for TTRRemindersListViewModel.Item);
  v454(v235, 0, 1, v480);

  v236 = v421;
  sub_21D26181C(v234 - 1, v235, v421);

  sub_21D0CF7E0(v235, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D104E74(v236, v235, v495);
  v454(v235, 0, 1, v480);

  v495 = sub_21D261568(v235);

  sub_21D0CF7E0(v235, &unk_27CE5CD80, &qword_21DC0CE80);
  v237 = v422;
  sub_21D285AF8(v424);
  v422 = v237;
  if (v237)
  {
    sub_21D106918(v236, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v432, &qword_27CE5A150, &unk_21DC0E6E0);
    (*v386)(v435, v416);
    sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.Item);

    v49 = v422;
    goto LABEL_239;
  }

  v238 = v460[4];
  v483 = v460[3];
  v471 = v238;
  ObjectType = swift_getObjectType();
  sub_21D104E74(v236, v235, type metadata accessor for TTRRemindersListViewModel.Item);
  v239 = v480;
  v240 = v454;
  v454(v235, 0, 1, v480);
  v241 = v437;
  v240(v437, 1, 1, v239);
  sub_21D0F02F4(v235, v241, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v241 + *(v438 + 36)) = v495;
  v242 = v415;
  v389 = *(v471 + 32);
  v390 = v471 + 32;
  v389(v241, ObjectType);
  sub_21D0CF7E0(v241, &qword_27CE58900, &unk_21DC207C0);
  v388 = *v393;
  if (v388(v242, 1, v436) == 1)
  {

    sub_21D0CF7E0(v242, &qword_27CE5A3E8, &qword_21DC0F428);
    sub_21D2A0F60();
    v49 = swift_allocError();
    *v364 = 0;
    swift_willThrow();
    sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v362 = v421;
LABEL_237:
    sub_21D106918(v362, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v432, &qword_27CE5A150, &unk_21DC0E6E0);
    (*v386)(v435, v416);
    sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v365 = v491;
    goto LABEL_238;
  }

  sub_21D0D523C(v242, v442, &qword_27CE59D38, &qword_21DC0D020);
  v243 = v455;
  v244 = v378;
  if (v455 == v378)
  {
    v495 = MEMORY[0x277D84F90];
    goto LABEL_136;
  }

  if (v378 < v455)
  {
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    swift_endAccess();
    v499[0] = 0;
    v499[1] = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v420 = v391 + v378 - v455;
  v495 = MEMORY[0x277D84F90];
  v252 = v447;
  while (1)
  {
    if (v243 == v244)
    {
      goto LABEL_252;
    }

    v253 = v243;
    v494 = type metadata accessor for TTRRemindersListViewModel.Item;
    sub_21D104E74(v491, v252, type metadata accessor for TTRRemindersListViewModel.Item);
    v454(v252, 0, 1, v480);

    v254 = v440;
    v455 = v253;
    sub_21D26181C(v253, v252, v440);

    sub_21D0CF7E0(v252, &unk_27CE5CD80, &qword_21DC0CE80);
    v255 = v409;
    sub_21D104E74(v254, v409, v494);
    v256 = swift_getEnumCaseMultiPayload();
    if (v256 > 3)
    {
      v257 = v408;
      if (v256 != 4)
      {
        if ((v256 - 5) < 4)
        {
LABEL_232:
          sub_21D106918(v255, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        swift_storeEnumTagMultiPayload();
LABEL_234:
        sub_21D2A0F60();
        v49 = swift_allocError();
        *v363 = 1;
        swift_willThrow();
        sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v442, &qword_27CE59D38, &qword_21DC0D020);
        v360 = v424;
        goto LABEL_227;
      }
    }

    else
    {
      v257 = v408;
      if (v256 != 2 && v256 != 3)
      {
        goto LABEL_232;
      }
    }

    sub_21D2A0DC8(v255, v257, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v258 = swift_getEnumCaseMultiPayload();
    if (v258 >= 2)
    {
      if (v258 == 2)
      {
        sub_21D106918(v257, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_234;
    }

    v259 = v406;
    sub_21D2A0DC8(v257, v406, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v259, v419, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v260 = v447;
    sub_21D104E74(v491, v447, type metadata accessor for TTRRemindersListViewModel.Item);
    v261 = v480;
    v262 = v454;
    v454(v260, 0, 1, v480);
    v263 = v437;
    v262(v437, 1, 1, v261);
    v264 = v407;
    sub_21D0F02F4(v260, v263, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v263 + *(v438 + 36)) = v455;
    (v389)(v263, ObjectType, v471);
    sub_21D0CF7E0(v263, &qword_27CE58900, &unk_21DC207C0);
    if (v388(v264, 1, v436) == 1)
    {

      sub_21D0CF7E0(v264, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v49 = swift_allocError();
      *v375 = 0;
      swift_willThrow();
      sub_21D106918(v419, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v442, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v421, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v432, &qword_27CE5A150, &unk_21DC0E6E0);
      (*v386)(v435, v416);
      sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v365 = v491;
LABEL_238:
      sub_21D106918(v365, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_239;
    }

    v265 = v264;
    v266 = v412;
    sub_21D0D523C(v265, v412, &qword_27CE59D38, &qword_21DC0D020);
    v267 = *(v429 + 48);
    v268 = *(v429 + 64);
    v269 = v414;
    sub_21D104E74(v440, v414, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v266, v269 + v267, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v442, v269 + v268, &qword_27CE59D38, &qword_21DC0D020);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v458 = sub_21D211B38(0, v458[2] + 1, 1, v458);
    }

    v270 = v403;
    v272 = v458[2];
    v271 = v458[3];
    v273 = v495;
    if (v272 >= v271 >> 1)
    {
      v458 = sub_21D211B38((v271 > 1), v272 + 1, 1, v458);
    }

    v274 = v458;
    v458[2] = v272 + 1;
    v384 = (*(v405 + 80) + 32) & ~*(v405 + 80);
    v383 = *(v405 + 72);
    sub_21D0D523C(v414, v274 + v384 + v383 * v272, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v419, v270, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v273 = sub_21D211D1C(0, v273[2] + 1, 1, v273);
    }

    v276 = v273[2];
    v275 = v273[3];
    if (v276 >= v275 >> 1)
    {
      v273 = sub_21D211D1C((v275 > 1), v276 + 1, 1, v273);
    }

    v273[2] = v276 + 1;
    v277 = (*(v404 + 80) + 32) & ~*(v404 + 80);
    v495 = v273;
    v382 = v277;
    v381 = *(v404 + 72);
    sub_21D2A0DC8(v270, v273 + v277 + v381 * v276, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (__OFADD__(v391++, 1))
    {
      __break(1u);
      goto LABEL_255;
    }

    v379 = v460[10];
    v279 = v413;
    sub_21D104E74(v440, v413, type metadata accessor for TTRRemindersListViewModel.Item);
    v280 = v480;
    v454(v279, 0, 1, v480);
    v281 = v279;
    v282 = v402;
    sub_21D0D3954(v281, v402, &unk_27CE5CD80, &qword_21DC0CE80);
    LODWORD(v280) = (*v385)(v282, 1, v280);
    v283 = v379;

    if (v280 != 1)
    {
      v295 = v282;
      v296 = v398;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v398);
      sub_21D106918(v295, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D2A0DC8(v296, v401, type metadata accessor for TTRRemindersListViewModel.ItemID);
      swift_beginAccess();
      v297 = *(v283 + 24);
      if (!*(v297 + 16))
      {
        goto LABEL_258;
      }

      v298 = sub_21D181E00();
      if ((v299 & 1) == 0)
      {
        goto LABEL_258;
      }

      v300 = *(*(v297 + 56) + 8 * v298);
      swift_endAccess();
      v301 = *(*v300 + 136);
      swift_beginAccess();
      v493 = *(v300 + v301);
      if (v493 >> 62)
      {
        v302 = sub_21DBFBD7C();
      }

      else
      {
        v302 = *((v493 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v285 = v441;
      if (v302)
      {
        v499[0] = MEMORY[0x277D84F90];
        v303 = v493;
        sub_21DBF8E0C();
        sub_21D18EBA4(0, v302 & ~(v302 >> 63), 0);
        v494 = v302;
        if (v302 < 0)
        {
          goto LABEL_257;
        }

        v287 = v499[0];
        v304 = v396;
        if ((v303 & 0xC000000000000001) != 0)
        {
          v305 = v303;
          v306 = 0;
          do
          {
            v307 = MEMORY[0x223D44740](v306, v305);
            v308 = *(*v307 + 120);
            swift_beginAccess();
            sub_21D104E74(v307 + v308, v304, type metadata accessor for TTRRemindersListViewModel.Item);
            swift_unknownObjectRelease();
            v499[0] = v287;
            v310 = *(v287 + 16);
            v309 = *(v287 + 24);
            if (v310 >= v309 >> 1)
            {
              sub_21D18EBA4((v309 > 1), v310 + 1, 1);
              v287 = v499[0];
            }

            v306 = (v306 + 1);
            *(v287 + 16) = v310 + 1;
            sub_21D2A0DC8(v304, v287 + v488 + v310 * v482, type metadata accessor for TTRRemindersListViewModel.Item);
            v305 = v493;
          }

          while (v494 != v306);
        }

        else
        {
          v317 = 32;
          v318 = v394;
          do
          {
            v319 = *(v493 + v317);
            v320 = *(*v319 + 120);
            swift_beginAccess();
            sub_21D104E74(v319 + v320, v318, type metadata accessor for TTRRemindersListViewModel.Item);
            v499[0] = v287;
            v322 = *(v287 + 16);
            v321 = *(v287 + 24);
            if (v322 >= v321 >> 1)
            {
              sub_21D18EBA4((v321 > 1), v322 + 1, 1);
              v318 = v394;
              v287 = v499[0];
            }

            *(v287 + 16) = v322 + 1;
            sub_21D2A0DC8(v318, v287 + v488 + v322 * v482, type metadata accessor for TTRRemindersListViewModel.Item);
            v317 += 8;
            --v494;
          }

          while (v494);
        }

        sub_21D106918(v401, type metadata accessor for TTRRemindersListViewModel.ItemID);
        goto LABEL_197;
      }

      sub_21D106918(v401, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_186:
      sub_21D0CF7E0(v413, &unk_27CE5CD80, &qword_21DC0CE80);
      v287 = MEMORY[0x277D84F90];
      goto LABEL_198;
    }

    sub_21D0CF7E0(v282, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_beginAccess();
    v493 = *(v283 + 16);
    if (v493 >> 62)
    {
      v284 = sub_21DBFBD7C();
    }

    else
    {
      v284 = *((v493 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v285 = v441;
    if (!v284)
    {

      goto LABEL_186;
    }

    v499[0] = MEMORY[0x277D84F90];
    v286 = v493;
    sub_21DBF8E0C();
    sub_21D18EBA4(0, v284 & ~(v284 >> 63), 0);
    v494 = v284;
    if (v284 < 0)
    {
      goto LABEL_256;
    }

    v287 = v499[0];
    v288 = v397;
    if ((v286 & 0xC000000000000001) != 0)
    {
      v289 = v286;
      v290 = 0;
      do
      {
        v291 = MEMORY[0x223D44740](v290, v289);
        v292 = *(*v291 + 120);
        swift_beginAccess();
        sub_21D104E74(v291 + v292, v288, type metadata accessor for TTRRemindersListViewModel.Item);
        swift_unknownObjectRelease();
        v499[0] = v287;
        v294 = *(v287 + 16);
        v293 = *(v287 + 24);
        if (v294 >= v293 >> 1)
        {
          sub_21D18EBA4((v293 > 1), v294 + 1, 1);
          v287 = v499[0];
        }

        v290 = (v290 + 1);
        *(v287 + 16) = v294 + 1;
        sub_21D2A0DC8(v288, v287 + v488 + v294 * v482, type metadata accessor for TTRRemindersListViewModel.Item);
        v289 = v493;
      }

      while (v494 != v290);
    }

    else
    {
      v311 = 32;
      v312 = v395;
      do
      {
        v313 = *(v493 + v311);
        v314 = *(*v313 + 120);
        swift_beginAccess();
        sub_21D104E74(v313 + v314, v312, type metadata accessor for TTRRemindersListViewModel.Item);
        v499[0] = v287;
        v316 = *(v287 + 16);
        v315 = *(v287 + 24);
        if (v316 >= v315 >> 1)
        {
          sub_21D18EBA4((v315 > 1), v316 + 1, 1);
          v312 = v395;
          v287 = v499[0];
        }

        *(v287 + 16) = v316 + 1;
        sub_21D2A0DC8(v312, v287 + v488 + v316 * v482, type metadata accessor for TTRRemindersListViewModel.Item);
        v311 += 8;
        --v494;
      }

      while (v494);
    }

LABEL_197:
    sub_21D0CF7E0(v413, &unk_27CE5CD80, &qword_21DC0CE80);
    v285 = v441;
    v132 = v479;
LABEL_198:
    v323 = 0;
    ++v455;
    v324 = *(v287 + 16);
    v379 = v287;
    v377 = v287 + v488;
    v325 = v482;
    v493 = v324;
    if (v324)
    {
LABEL_199:
      if ((v323 & 0x8000000000000000) == 0)
      {
        if (v323 < *(v379 + 16))
        {
          v326 = (v323 + 1);
          v327 = v377 + v323 * v325;
          v328 = v487;
          v329 = *(v487 + 48);
          v330 = v467;
          *v467 = v323;
          sub_21D104E74(v327, v330 + v329, type metadata accessor for TTRRemindersListViewModel.Item);
          v331 = v330;
          v332 = v441;
          sub_21D0D523C(v331, v441, &qword_27CE5A418, &unk_21DC0F480);
          v333 = 0;
          v494 = v326;
          v285 = v332;
          v132 = v479;
          goto LABEL_203;
        }

LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        swift_once();
        goto LABEL_240;
      }

LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

LABEL_202:
    v333 = 1;
    v494 = v324;
    v328 = v487;
LABEL_203:
    v162(v285, v333, 1, v328);
    v334 = v285;
    v335 = v428;
    sub_21D0D523C(v334, v428, &qword_27CE5A420, &unk_21DC41780);
    if (v163(v335, 1, v328) != 1)
    {
      break;
    }

    sub_21D0CF7E0(v412, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v419, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
    v243 = v455;
    v244 = v378;
    v252 = v447;
    if (v455 == v378)
    {
      v391 = v420;
LABEL_136:
      v245 = *(v400 + 48);
      v246 = v411;
      sub_21D104E74(v424, v411, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v246 + v245) = v495;
      v247 = v430;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_21D211CF8(0, v247[2] + 1, 1, v247);
      }

      v249 = v247[2];
      v248 = v247[3];
      v430 = v247;
      if (v249 >= v248 >> 1)
      {
        v430 = sub_21D211CF8((v248 > 1), v249 + 1, 1, v430);
      }

      sub_21D0CF7E0(v442, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v421, type metadata accessor for TTRRemindersListViewModel.Item);
      v250 = v430;
      v430[2] = v249 + 1;
      sub_21D0D523C(v411, v250 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v249, &qword_27CE59D18, &unk_21DC0CFE0);
      v251 = v432;
      sub_21DBFACAC();
      if (*(v251 + v380) == v499[0])
      {
LABEL_127:
        sub_21D0CF7E0(v432, &qword_27CE5A150, &unk_21DC0E6E0);
        (*v386)(v435, v416);
        sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.Item);
        if (!*(v500 + 16))
        {
          goto LABEL_243;
        }

        v133 = v434;
        v141 = v434[2];
        v139 = v487;
        v140 = v478;
        if (!v141)
        {
          goto LABEL_243;
        }

        goto LABEL_11;
      }

      goto LABEL_131;
    }
  }

  v336 = *v335;
  v337 = v335 + *(v328 + 48);
  v338 = v452;
  sub_21D2A0DC8(v337, v452, type metadata accessor for TTRRemindersListViewModel.Item);
  v339 = v426;
  sub_21D104E74(v338, v426, type metadata accessor for TTRRemindersListViewModel.Item);
  v340 = swift_getEnumCaseMultiPayload();
  if (v340 <= 3)
  {
    if (v340 != 2 && v340 != 3)
    {
      goto LABEL_224;
    }

LABEL_209:
    v341 = v427;
    sub_21D2A0DC8(v339, v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v342 = swift_getEnumCaseMultiPayload();
    if (v342 >= 2)
    {
      if (v342 == 2)
      {
        sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_226;
    }

    sub_21D2A0DC8(v341, v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v343 = v447;
    sub_21D104E74(v440, v447, type metadata accessor for TTRRemindersListViewModel.Item);
    v344 = v480;
    v345 = v336;
    v346 = v454;
    v454(v343, 0, 1, v480);
    v347 = v437;
    v346(v437, 1, 1, v344);
    sub_21D0F02F4(v343, v347, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v347 + *(v438 + 36)) = v345;
    v348 = v425;
    (v389)(v347, ObjectType, v471);
    sub_21D0CF7E0(v347, &qword_27CE58900, &unk_21DC207C0);
    if (v388(v348, 1, v436) == 1)
    {

      sub_21D0CF7E0(v348, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v49 = swift_allocError();
      *v361 = 0;
      swift_willThrow();
      sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v412, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v419, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v442, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v362 = v421;
      goto LABEL_237;
    }

    v349 = v445;
    sub_21D0D523C(v348, v445, &qword_27CE59D38, &qword_21DC0D020);
    v350 = *(v429 + 48);
    v351 = *(v429 + 64);
    v352 = v446;
    sub_21D104E74(v452, v446, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v349, v352 + v350, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v442, v352 + v351, &qword_27CE59D38, &qword_21DC0D020);
    v354 = v458[2];
    v353 = v458[3];
    if (v354 >= v353 >> 1)
    {
      v458 = sub_21D211B38((v353 > 1), v354 + 1, 1, v458);
    }

    v355 = v458;
    v458[2] = v354 + 1;
    sub_21D0D523C(v446, v355 + v384 + v354 * v383, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v450, v444, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v357 = v495[2];
    v356 = v495[3];
    if (v357 >= v356 >> 1)
    {
      v495 = sub_21D211D1C((v356 > 1), v357 + 1, 1, v495);
    }

    sub_21D0CF7E0(v445, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
    v358 = v495;
    v495[2] = v357 + 1;
    sub_21D2A0DC8(v444, v358 + v382 + v357 * v381, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v285 = v441;
    v132 = v479;
    v325 = v482;
    v324 = v493;
    v323 = v494;
    if (v494 != v493)
    {
      goto LABEL_199;
    }

    goto LABEL_202;
  }

  if (v340 == 4)
  {
    goto LABEL_209;
  }

  if ((v340 - 5) < 4)
  {
LABEL_224:
    sub_21D106918(v339, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  swift_storeEnumTagMultiPayload();
LABEL_226:
  sub_21D2A0F60();
  v49 = swift_allocError();
  *v359 = 1;
  swift_willThrow();

  sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v412, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v419, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v442, &qword_27CE59D38, &qword_21DC0D020);
  v360 = v424;
LABEL_227:
  sub_21D106918(v360, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v421, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v432, &qword_27CE5A150, &unk_21DC0E6E0);
  (*v386)(v435, v416);
  sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_239:
  if (qword_280D0F188 != -1)
  {
    goto LABEL_253;
  }

LABEL_240:
  v366 = sub_21DBF84BC();
  __swift_project_value_buffer(v366, qword_280D0F190);
  v367 = v49;
  v368 = sub_21DBF84AC();
  v369 = sub_21DBFAEBC();

  if (os_log_type_enabled(v368, v369))
  {
    v370 = swift_slowAlloc();
    v371 = swift_slowAlloc();
    v499[0] = v371;
    *v370 = v392;
    swift_getErrorValue();
    v372 = sub_21DBFC74C();
    v374 = sub_21D0CDFB4(v372, v373, v499);

    *(v370 + 4) = v374;
    _os_log_impl(&dword_21D0C9000, v368, v369, "Cannot compute move steps for indenting items {error: %s}", v370, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v371);
    MEMORY[0x223D46520](v371, -1, -1);
    MEMORY[0x223D46520](v370, -1, -1);
  }

  else
  {
  }
}

void TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v480 = a4;
  v479 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D18, &unk_21DC0CFE0);
  v406 = *(v6 - 8);
  v407 = v6;
  MEMORY[0x28223BE20](v6);
  v417 = &v384 - v7;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  v410 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v451 = &v384 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v421 = &v384 - v10;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v440);
  v439 = &v384 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v12 - 8);
  v430 = &v384 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v412 = &v384 - v15;
  MEMORY[0x28223BE20](v16);
  v422 = &v384 - v17;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v502 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v450 = &v384 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v418 = &v384 - v20;
  MEMORY[0x28223BE20](v21);
  v448 = &v384 - v22;
  v431 = sub_21DBF5B4C();
  v501 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v425 = &v384 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
  MEMORY[0x28223BE20](v424);
  v436 = &v384 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v25 - 8);
  v415 = &v384 - v26;
  v457 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v457);
  v435 = &v384 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v414 = &v384 - v29;
  MEMORY[0x28223BE20](v30);
  v445 = &v384 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v32 - 8);
  v468 = &v384 - v33;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v472);
  v471 = &v384 - v34;
  v470 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v409 = *(v470 - 8);
  MEMORY[0x28223BE20](v470);
  v449 = &v384 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v456 = &v384 - v37;
  MEMORY[0x28223BE20](v38);
  v420 = &v384 - v39;
  MEMORY[0x28223BE20](v40);
  v411 = &v384 - v41;
  MEMORY[0x28223BE20](v42);
  v426 = &v384 - v43;
  MEMORY[0x28223BE20](v44);
  v429 = &v384 - v45;
  MEMORY[0x28223BE20](v46);
  v483 = &v384 - v47;
  v469 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  ObjectType = *(v469 - 8);
  MEMORY[0x28223BE20](v469);
  v443 = &v384 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v476 = &v384 - v50;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v500);
  v506 = &v384 - v51;
  v52 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v466 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v405 = &v384 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v416 = &v384 - v55;
  MEMORY[0x28223BE20](v56);
  v489 = &v384 - v57;
  MEMORY[0x28223BE20](v58);
  v488 = (&v384 - v59);
  MEMORY[0x28223BE20](v60);
  v487 = &v384 - v61;
  MEMORY[0x28223BE20](v62);
  v486 = &v384 - v63;
  MEMORY[0x28223BE20](v64);
  v491 = &v384 - v65;
  MEMORY[0x28223BE20](v66);
  v504 = &v384 - v67;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418, &unk_21DC0F480);
  v497 = *(v492 - 8);
  MEMORY[0x28223BE20](v492);
  v473 = (&v384 - v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420, &unk_21DC41780);
  MEMORY[0x28223BE20](v69 - 8);
  v444 = &v384 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v452 = &v384 - v72;
  MEMORY[0x28223BE20](v73);
  v482 = &v384 - v74;
  MEMORY[0x28223BE20](v75);
  v505 = &v384 - v76;
  v423 = sub_21DBF5B9C();
  v494 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v437 = &v384 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v78 - 8);
  v481 = &v384 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v432 = &v384 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v458 = &v384 - v84;
  MEMORY[0x28223BE20](v85);
  v403 = &v384 - v86;
  MEMORY[0x28223BE20](v87);
  v401 = &v384 - v88;
  MEMORY[0x28223BE20](v89);
  v402 = &v384 - v90;
  MEMORY[0x28223BE20](v91);
  v404 = &v384 - v92;
  MEMORY[0x28223BE20](v93);
  v413 = &v384 - v94;
  MEMORY[0x28223BE20](v95);
  v447 = &v384 - v96;
  MEMORY[0x28223BE20](v97);
  v427 = &v384 - v98;
  MEMORY[0x28223BE20](v99);
  v453 = &v384 - v100;
  MEMORY[0x28223BE20](v101);
  v459 = &v384 - v102;
  MEMORY[0x28223BE20](v103);
  v485 = &v384 - v104;
  MEMORY[0x28223BE20](v105);
  v490 = &v384 - v106;
  MEMORY[0x28223BE20](v107);
  v467 = &v384 - v108;
  MEMORY[0x28223BE20](v109);
  v111 = &v384 - v110;
  MEMORY[0x28223BE20](v112);
  v114 = &v384 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v115 - 8);
  v408 = &v384 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v419 = &v384 - v118;
  MEMORY[0x28223BE20](v119);
  v121 = &v384 - v120;
  v508[0] = a1;
  v507 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v496 = v52;
  v122 = v80;
  v123 = sub_21DBFA42C();
  v428 = 0;
  v509 = v123;
  v124 = *(v81 + 56);
  v461 = v81 + 56;
  v464 = v124;
  v124(v121, 1, 1, v80);

  v125 = sub_21D263398(v121);

  v460 = v121;
  sub_21D0CF7E0(v121, &unk_27CE5CD80, &qword_21DC0CE80);
  v126 = v125[2];
  v498 = v122;
  v493 = v81;
  if (v126)
  {
    v127 = v125 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    sub_21D104E74(v127, v114, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v114, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v399 = v125;
      v508[0] = MEMORY[0x277D84F90];
      v503 = *(v81 + 72);
      v130 = v460;
      v131 = v464;
      do
      {
        sub_21D104E74(v127, v111, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v111, v130, type metadata accessor for TTRRemindersListViewModel.Item);
        v131(v130, 0, 1, v498);

        v132 = sub_21D263398(v130);

        sub_21D0CF7E0(v130, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v111, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v132);
        v127 += v503;
        --v126;
      }

      while (v126);

      v125 = v508[0];
    }
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  v133 = v481;
  v134 = v467;
  v135 = v504;
  v136 = v482;
  v137 = v505;
  v138 = v485;
  if (!*(v509 + 16))
  {
    v366 = MEMORY[0x277D84F90];
LABEL_250:

    goto LABEL_251;
  }

  v139 = v125[2];
  if (!v139)
  {
    v434 = 0;
    v463 = MEMORY[0x277D84F90];
    v446 = MEMORY[0x277D84F90];
    goto LABEL_228;
  }

  v434 = 0;
  v397 = 0;
  v478 = (v497 + 56);
  v477 = (v497 + 48);
  v441 = 0x800000021DC43E00;
  v442 = 0x800000021DC43E30;
  v474 = 0x800000021DC43DE0;
  v465 = (ObjectType + 48);
  v400 = v502 + 48;
  v394 = (v493 + 48);
  v395 = (v494 + 8);
  v396 = (v501 + 8);
  v497 = (*(v493 + 80) + 32) & ~*(v493 + 80);
  *&v129 = 136315138;
  v398 = v129;
  v446 = MEMORY[0x277D84F90];
  v463 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      sub_21D104E74(v125 + v497, v134, type metadata accessor for TTRRemindersListViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v139 - 1) > v125[3] >> 1)
      {
        v125 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v139, 1, v125);
      }

      v141 = v125 + v497;
      sub_21D106918(v125 + v497, type metadata accessor for TTRRemindersListViewModel.Item);
      v142 = v125[2] - 1;
      v494 = *(v493 + 72);
      if (v494 > 0 || v141 >= &v141[v494 + v142 * v494])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v494)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v125[2];
      v143 = v490;
      sub_21D104E74(v134, v490, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_21D106918(v143, type metadata accessor for TTRRemindersListViewModel.Item);
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v144 = sub_21DBF84BC();
      __swift_project_value_buffer(v144, qword_280D0F190);
      v145 = sub_21DBF84AC();
      v146 = sub_21DBFAECC();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_21D0C9000, v145, v146, "Unexpected item type", v147, 2u);
        v148 = v147;
        v135 = v504;
        MEMORY[0x223D46520](v148, -1, -1);
      }

      v137 = v505;
LABEL_26:
      sub_21D106918(v134, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v509 + 16))
      {
        goto LABEL_249;
      }

      v139 = v125[2];
      if (!v139)
      {
        goto LABEL_228;
      }
    }

    sub_21D2A0DC8(v143, v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    if ((v479(v133) & 1) == 0)
    {
      sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_26;
    }

    sub_21DBF5B8C();
    v149 = v134;
    v150 = v460;
    sub_21D104E74(v149, v460, type metadata accessor for TTRRemindersListViewModel.Item);
    v464(v150, 0, 1, v498);

    v151 = sub_21D263398(v150);

    sub_21D0CF7E0(v150, &unk_27CE5CD80, &qword_21DC0CE80);
    v152 = 0;
    v153 = *(v151 + 16);
    v455 = v151;
    v454 = (v151 + v497);
    v399 = v125;
    v475 = v153;
    while (2)
    {
      v154 = v492;
      if (v152 == v153)
      {
        v155 = 1;
        v484 = v153;
      }

      else
      {
        if ((v152 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        if (v152 >= *(v455 + 16))
        {
          goto LABEL_256;
        }

        v156 = (v152 + 1);
        v157 = v454 + v152 * v494;
        v158 = *(v492 + 48);
        v159 = v473;
        *v473 = v152;
        sub_21D104E74(v157, v159 + v158, type metadata accessor for TTRRemindersListViewModel.Item);
        v160 = v159;
        v137 = v505;
        sub_21D0D523C(v160, v136, &qword_27CE5A418, &unk_21DC0F480);
        v155 = 0;
        v484 = v156;
        v154 = v492;
      }

      v161 = *v478;
      (*v478)(v136, v155, 1, v154);
      sub_21D0D523C(v136, v137, &qword_27CE5A420, &unk_21DC41780);
      v162 = *v477;
      if ((*v477)(v137, 1, v154) != 1)
      {
        v163 = *v137;
        sub_21D2A0DC8(v137 + *(v154 + 48), v138, type metadata accessor for TTRRemindersListViewModel.Item);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v135);
        v151 = v509;
        if (!*(v509 + 16) || (v462 = v163, sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(v508), v164 = sub_21DBFC82C(), v165 = (v151 + 56), v503 = v151, v166 = -1 << *(v151 + 32), v151 = v164 & ~v166, v502 = v165, v167 = v491, ((*(v165 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0))
        {
LABEL_30:
          v135 = v504;
          sub_21D106918(v504, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D106918(v138, type metadata accessor for TTRRemindersListViewModel.Item);
          v133 = v481;
          v136 = v482;
          goto LABEL_31;
        }

        ObjectType = ~v166;
        v501 = *(v466 + 72);
        while (1)
        {
          sub_21D104E74(*(v503 + 48) + v501 * v151, v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v171 = *(v500 + 48);
          v172 = v506;
          sub_21D104E74(v167, v506, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v173 = v172;
          sub_21D104E74(v504, v172 + v171, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v174 = swift_getEnumCaseMultiPayload();
          if (v174 <= 1)
          {
            break;
          }

          if (v174 != 2)
          {
            v193 = v172;
            v194 = v489;
            sub_21D104E74(v193, v489, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v195 = *v194;
              if (v195 > 2)
              {
                if (v195 == 3)
                {
                  v198 = 0xD00000000000001FLL;
                  v199 = v441;
                }

                else if (v195 == 4)
                {
                  v199 = 0xE700000000000000;
                  v198 = 0x6D657449706974;
                }

                else
                {
                  v198 = 0xD00000000000001DLL;
                  v199 = v442;
                }
              }

              else
              {
                v196 = 0xD000000000000012;
                if (v195 == 1)
                {
                  v196 = 0x7367617468736168;
                }

                v197 = v474;
                if (v195 == 1)
                {
                  v197 = 0xEC0000006D657449;
                }

                if (*v194)
                {
                  v198 = v196;
                }

                else
                {
                  v198 = 0x6574656C706D6F63;
                }

                if (*v194)
                {
                  v199 = v197;
                }

                else
                {
                  v199 = 0xED00006D65744964;
                }
              }

              v206 = *(v506 + v171);
              if (v206 > 2)
              {
                if (v206 == 3)
                {
                  v208 = v441;
                  if (v198 == 0xD00000000000001FLL)
                  {
                    goto LABEL_104;
                  }
                }

                else if (v206 == 4)
                {
                  v208 = 0xE700000000000000;
                  if (v198 == 0x6D657449706974)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  v208 = v442;
                  if (v198 == 0xD00000000000001DLL)
                  {
                    goto LABEL_104;
                  }
                }
              }

              else if (*(v506 + v171))
              {
                if (v206 == 1)
                {
                  v207 = 0x7367617468736168;
                }

                else
                {
                  v207 = 0xD000000000000012;
                }

                if (v206 == 1)
                {
                  v208 = 0xEC0000006D657449;
                }

                else
                {
                  v208 = v474;
                }

                if (v198 != v207)
                {
                  goto LABEL_105;
                }

LABEL_104:
                if (v199 == v208)
                {

                  sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  goto LABEL_112;
                }
              }

              else
              {
                v208 = 0xED00006D65744964;
                if (v198 == 0x6574656C706D6F63)
                {
                  goto LABEL_104;
                }
              }

LABEL_105:
              v209 = sub_21DBFC64C();

              sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v181 = v506;
              if (v209)
              {
                goto LABEL_113;
              }

LABEL_106:
              v210 = v181;
LABEL_109:
              sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ItemID);
              goto LABEL_45;
            }

            v169 = type metadata accessor for TTRRemindersListViewModel.ItemID;
            v170 = v167;
LABEL_43:
            sub_21D106918(v170, v169);
            goto LABEL_44;
          }

          v177 = v172;
          v178 = v488;
          sub_21D104E74(v177, v488, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v179 = *v178;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v180 = *(v173 + v171);
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            v181 = v173;
            v182 = sub_21DBFB63C();

            sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v182)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_44:
          sub_21D0CF7E0(v173, &qword_27CE58AD0, &qword_21DC0A050);
LABEL_45:
          v137 = v505;
          v151 = (v151 + 1) & ObjectType;
          if (((*(v502 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        if (v174)
        {
          v183 = v172;
          v176 = v487;
          sub_21D104E74(v183, v487, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v184 = v173 + v171;
            v185 = v483;
            sub_21D2A0DC8(v184, v483, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            if (sub_21DBFB63C())
            {
              v186 = v185;
              v187 = *(v470 + 20);
              v188 = *(v472 + 48);
              v189 = v471;
              sub_21D0D3954(v176 + v187, v471, &unk_27CE5CD70, &unk_21DC09230);
              sub_21D0D3954(v186 + v187, v189 + v188, &unk_27CE5CD70, &unk_21DC09230);
              v190 = *v465;
              v191 = v469;
              if ((*v465)(v189, 1, v469) == 1)
              {
                sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v226 = v190(v189 + v188, 1, v191) == 1;
                v192 = v189;
                if (v226)
                {
                  sub_21D0CF7E0(v189, &unk_27CE5CD70, &unk_21DC09230);
                  v185 = v483;
                  v138 = v485;
LABEL_111:
                  sub_21D106918(v185, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_112:
                  v181 = v506;
LABEL_113:
                  sub_21D106918(v181, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D104E74(v138, v459, type metadata accessor for TTRRemindersListViewModel.Item);
                  v214 = swift_getEnumCaseMultiPayload();
                  if (v214 <= 3)
                  {
                    v133 = v481;
                    v136 = v482;
                    v137 = v505;
                    v215 = v453;
                    if (v214 >= 2)
                    {
                      goto LABEL_126;
                    }

LABEL_118:
                    sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_119:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_120;
                  }

                  v133 = v481;
                  v136 = v482;
                  v137 = v505;
                  v215 = v453;
                  if ((v214 - 5) < 4)
                  {
                    goto LABEL_118;
                  }

                  if ((v214 - 9) < 2)
                  {
                    goto LABEL_119;
                  }

LABEL_126:
                  v224 = v445;
                  sub_21D2A0DC8(v459, v445, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v225 = swift_getEnumCaseMultiPayload();
                  v226 = v225 == 2;
                  if (v225 < 2)
                  {
                    sub_21D106918(v224, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v227 = v415;
                    v135 = v504;
                    sub_21D1AAD70(v504, v415);
                    sub_21D0CF7E0(v227, &qword_27CE5FB90, &unk_21DC09290);
                    sub_21D106918(v135, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v138, type metadata accessor for TTRRemindersListViewModel.Item);
                    v137 = v505;
                    goto LABEL_31;
                  }

                  v228 = v224;
                  v137 = v505;
                  v215 = v453;
                  if (v226)
                  {
                    sub_21D106918(v228, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_120:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v216 = sub_21DBF84BC();
                  __swift_project_value_buffer(v216, qword_280D0F190);
                  sub_21D104E74(v138, v215, type metadata accessor for TTRRemindersListViewModel.Item);
                  v217 = sub_21DBF84AC();
                  v151 = sub_21DBFAECC();
                  if (os_log_type_enabled(v217, v151))
                  {
                    v218 = swift_slowAlloc();
                    v503 = swift_slowAlloc();
                    v508[0] = v503;
                    *v218 = v398;
                    v219 = sub_21D25D250();
                    v221 = v220;
                    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
                    v222 = sub_21D0CDFB4(v219, v221, v508);

                    *(v218 + 4) = v222;
                    v136 = v482;
                    _os_log_impl(&dword_21D0C9000, v217, v151, "TTRRemindersListTreeViewModel: item does not support indent {item: %s}", v218, 0xCu);
                    v223 = v503;
                    __swift_destroy_boxed_opaque_existential_0(v503);
                    MEMORY[0x223D46520](v223, -1, -1);
                    MEMORY[0x223D46520](v218, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  v135 = v504;
                  sub_21D106918(v504, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v138 = v485;
                  sub_21D106918(v485, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_31:
                  v153 = v475;
                  v152 = v484;
                  continue;
                }

LABEL_82:
                sub_21D0CF7E0(v192, &qword_27CE58388, &unk_21DC0F470);
                v185 = v483;
                v138 = v485;
              }

              else
              {
                sub_21D0D3954(v189, v468, &unk_27CE5CD70, &unk_21DC09230);
                if (v190(v189 + v188, 1, v191) == 1)
                {
                  sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v468, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v192 = v189;
                  goto LABEL_82;
                }

                v211 = v443;
                sub_21D2A0DC8(v189 + v188, v443, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v212 = v468;
                v213 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v468, v211);
                sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v212, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v189, &unk_27CE5CD70, &unk_21DC09230);
                v185 = v483;
                v138 = v485;
                if (v213)
                {
                  goto LABEL_111;
                }
              }
            }

            else
            {
              sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v185, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v210 = v506;
            goto LABEL_109;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v168 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        }

        else
        {
          v175 = v172;
          v176 = v486;
          sub_21D104E74(v175, v486, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (!swift_getEnumCaseMultiPayload())
          {
            v200 = v476;
            sub_21D2A0DC8(v173 + v171, v476, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v201 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v176, v200);
            v202 = v176;
            v181 = v173;
            v203 = v201;
            v204 = v200;
            v138 = v485;
            sub_21D106918(v204, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v205 = v202;
            v167 = v491;
            sub_21D106918(v205, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v203)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v168 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        }

        v169 = v168;
        v170 = v176;
        goto LABEL_43;
      }

      break;
    }

    sub_21DBF5B0C();
    v229 = v425;
    sub_21DBF5B6C();
    v230 = v436;
    sub_21DBF5B3C();
    (*v396)(v229, v431);
    v231 = *(v424 + 36);
    v232 = sub_21D2F89FC(&qword_280D1B838, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
    sub_21DBFACAC();
    if (*(v230 + v231) == v508[0])
    {
      v135 = v504;
      goto LABEL_133;
    }

    v384 = v232;
    v385 = v231;
LABEL_137:
    v233 = sub_21DBFAD3C();
    v235 = *v234;
    v387 = v234[1];
    v233(v508, 0);
    sub_21DBFACBC();
    v475 = v235;
    if (__OFSUB__(v235, 1))
    {
      goto LABEL_259;
    }

    v503 = type metadata accessor for TTRRemindersListViewModel.Item;
    v236 = v460;
    sub_21D104E74(v467, v460, type metadata accessor for TTRRemindersListViewModel.Item);
    v237 = v464;
    v464(v236, 0, 1, v498);

    v238 = v427;
    sub_21D26181C(v235 - 1, v236, v427);

    sub_21D0CF7E0(v236, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D104E74(v238, v236, v503);
    v237(v236, 0, 1, v498);

    v239 = sub_21D261568(v236);

    sub_21D0CF7E0(v236, &unk_27CE5CD80, &qword_21DC0CE80);
    v240 = v428;
    sub_21D285AF8(v429);
    v428 = v240;
    if (v240)
    {
      sub_21D106918(v238, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
      (*v395)(v437, v423);
      sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D106918(v467, type metadata accessor for TTRRemindersListViewModel.Item);

      v151 = v428;
      goto LABEL_245;
    }

    v241 = v495[3];
    v501 = v495[4];
    ObjectType = swift_getObjectType();
    sub_21D104E74(v238, v236, type metadata accessor for TTRRemindersListViewModel.Item);
    v503 = v239;
    v242 = v498;
    v243 = v464;
    v464(v236, 0, 1, v498);
    v244 = v439;
    v243(v439, 1, 1, v242);
    sub_21D0F02F4(v236, v244, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v244 + *(v440 + 36)) = v503;
    v245 = *(v501 + 32);
    v246 = v422;
    v462 = v241;
    v455 = v501 + 32;
    v454 = v245;
    (v245)(v244, ObjectType);
    sub_21D0CF7E0(v244, &qword_27CE58900, &unk_21DC207C0);
    v393 = *v400;
    if (v393(v246, 1, v438) == 1)
    {

      sub_21D0CF7E0(v246, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v372 = 0;
      swift_willThrow();
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v370 = v427;
LABEL_243:
      sub_21D106918(v370, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
      (*v395)(v437, v423);
      sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v373 = v467;
      goto LABEL_244;
    }

    sub_21D0D523C(v246, v448, &qword_27CE59D38, &qword_21DC0D020);
    v247 = v475;
    v248 = v387;
    v133 = v481;
    if (v475 == v387)
    {
      v151 = MEMORY[0x277D84F90];
      v135 = v504;
      goto LABEL_142;
    }

    if (v387 < v475)
    {
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      swift_endAccess();
      v508[0] = 0;
      v508[1] = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
      sub_21DBFC14C();
      MEMORY[0x223D42AA0](125, 0xE100000000000000);
      sub_21DBFC31C();
      __break(1u);
      return;
    }

    v434 = v397 + v387 - v475;
    v151 = MEMORY[0x277D84F90];
LABEL_150:
    v503 = v151;
    if (v247 == v248)
    {
      goto LABEL_260;
    }

    v258 = v247;
    v502 = type metadata accessor for TTRRemindersListViewModel.Item;
    v259 = v460;
    sub_21D104E74(v467, v460, type metadata accessor for TTRRemindersListViewModel.Item);
    v243(v259, 0, 1, v498);

    v260 = v447;
    v475 = v258;
    sub_21D26181C(v258, v259, v447);

    sub_21D0CF7E0(v259, &unk_27CE5CD80, &qword_21DC0CE80);
    v261 = v413;
    sub_21D104E74(v260, v413, v502);
    v262 = swift_getEnumCaseMultiPayload();
    if (v262 > 3)
    {
      if (v262 == 4)
      {
        goto LABEL_156;
      }

      if ((v262 - 5) < 4)
      {
LABEL_238:
        sub_21D106918(v261, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      swift_storeEnumTagMultiPayload();
LABEL_240:
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v371 = 1;
      swift_willThrow();
      sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
      (*v395)(v437, v423);
      v368 = v133;
      goto LABEL_233;
    }

    if (v262 != 2 && v262 != 3)
    {
      goto LABEL_238;
    }

LABEL_156:
    v263 = v414;
    sub_21D2A0DC8(v261, v414, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v264 = swift_getEnumCaseMultiPayload();
    if (v264 >= 2)
    {
      if (v264 == 2)
      {
        sub_21D106918(v263, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_240;
    }

    v265 = v411;
    sub_21D2A0DC8(v263, v411, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v265, v426, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v266 = v460;
    sub_21D104E74(v467, v460, type metadata accessor for TTRRemindersListViewModel.Item);
    v267 = v498;
    v268 = v464;
    v464(v266, 0, 1, v498);
    v269 = v439;
    v268(v439, 1, 1, v267);
    sub_21D0F02F4(v266, v269, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v269 + *(v440 + 36)) = v475;
    v270 = v412;
    v454(v269, ObjectType, v501);
    sub_21D0CF7E0(v269, &qword_27CE58900, &unk_21DC207C0);
    if (v393(v270, 1, v438) == 1)
    {

      sub_21D0CF7E0(v270, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v383 = 0;
      swift_willThrow();
      sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
      (*v395)(v437, v423);
      sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v373 = v467;
LABEL_244:
      sub_21D106918(v373, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_245;
    }

    v271 = v418;
    sub_21D0D523C(v270, v418, &qword_27CE59D38, &qword_21DC0D020);
    v272 = *(v433 + 48);
    v273 = *(v433 + 64);
    v274 = v421;
    sub_21D104E74(v447, v421, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v271, v274 + v272, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v448, v274 + v273, &qword_27CE59D38, &qword_21DC0D020);
    v275 = v463;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_21D211B38(0, v275[2] + 1, 1, v275);
    }

    v276 = v452;
    v277 = v498;
    v279 = v275[2];
    v278 = v275[3];
    v463 = v275;
    v280 = v503;
    if (v279 >= v278 >> 1)
    {
      v463 = sub_21D211B38((v278 > 1), v279 + 1, 1, v463);
    }

    v281 = v463;
    v463[2] = v279 + 1;
    v392 = (*(v410 + 80) + 32) & ~*(v410 + 80);
    v391 = *(v410 + 72);
    sub_21D0D523C(v421, v281 + v392 + v391 * v279, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v426, v420, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_21D211D1C(0, v280[2] + 1, 1, v280);
    }

    v283 = v280[2];
    v282 = v280[3];
    if (v283 >= v282 >> 1)
    {
      v280 = sub_21D211D1C((v282 > 1), v283 + 1, 1, v280);
    }

    v280[2] = v283 + 1;
    v284 = (*(v409 + 80) + 32) & ~*(v409 + 80);
    v503 = v280;
    v390 = v284;
    v389 = *(v409 + 72);
    sub_21D2A0DC8(v420, v280 + v284 + v389 * v283, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (__OFADD__(v397++, 1))
    {
      __break(1u);
      goto LABEL_263;
    }

    v286 = v495[10];
    v287 = v419;
    sub_21D104E74(v447, v419, type metadata accessor for TTRRemindersListViewModel.Item);
    v464(v287, 0, 1, v277);
    v288 = v287;
    v289 = v408;
    sub_21D0D3954(v288, v408, &unk_27CE5CD80, &qword_21DC0CE80);
    v290 = v277;
    v291 = v286;
    LODWORD(v286) = (*v394)(v289, 1, v290);

    v226 = v286 == 1;
    v292 = v416;
    if (v226)
    {
      sub_21D0CF7E0(v289, &unk_27CE5CD80, &qword_21DC0CE80);
      swift_beginAccess();
      v293 = *(v291 + 16);
      if (v293 >> 62)
      {
        v294 = sub_21DBFBD7C();
        v295 = MEMORY[0x277D84F90];
        if (v294)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v294 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v295 = MEMORY[0x277D84F90];
        if (v294)
        {
LABEL_171:
          v388 = v291;
          v508[0] = v295;
          sub_21DBF8E0C();
          sub_21D18EBA4(0, v294 & ~(v294 >> 63), 0);
          if (v294 < 0)
          {
            goto LABEL_264;
          }

          v296 = v508[0];
          v297 = v293;
          v502 = v293;
          if ((v293 & 0xC000000000000001) != 0)
          {
            v484 = v294;
            v298 = 0;
            v299 = v403;
            do
            {
              v300 = MEMORY[0x223D44740](v298, v297);
              v301 = *(*v300 + 120);
              swift_beginAccess();
              sub_21D104E74(v300 + v301, v299, type metadata accessor for TTRRemindersListViewModel.Item);
              swift_unknownObjectRelease();
              v508[0] = v296;
              v303 = *(v296 + 16);
              v302 = *(v296 + 24);
              if (v303 >= v302 >> 1)
              {
                sub_21D18EBA4((v302 > 1), v303 + 1, 1);
                v296 = v508[0];
              }

              v298 = (v298 + 1);
              *(v296 + 16) = v303 + 1;
              sub_21D2A0DC8(v299, v296 + v497 + v303 * v494, type metadata accessor for TTRRemindersListViewModel.Item);
              v297 = v502;
            }

            while (v484 != v298);
            v321 = v296;
          }

          else
          {
            v322 = 32;
            v323 = v401;
            do
            {
              v324 = *(v297 + v322);
              v325 = *(*v324 + 120);
              swift_beginAccess();
              sub_21D104E74(v324 + v325, v323, type metadata accessor for TTRRemindersListViewModel.Item);
              v508[0] = v296;
              v327 = *(v296 + 16);
              v326 = *(v296 + 24);
              if (v327 >= v326 >> 1)
              {
                sub_21D18EBA4((v326 > 1), v327 + 1, 1);
                v323 = v401;
                v296 = v508[0];
              }

              *(v296 + 16) = v327 + 1;
              sub_21D2A0DC8(v323, v296 + v497 + v327 * v494, type metadata accessor for TTRRemindersListViewModel.Item);
              v322 += 8;
              --v294;
              v297 = v502;
            }

            while (v294);
            v321 = v296;

            v138 = v485;
          }

          sub_21D0CF7E0(v419, &unk_27CE5CD80, &qword_21DC0CE80);
          v328 = v492;
          v329 = v444;
          v276 = v452;
          v151 = v503;
          goto LABEL_205;
        }
      }

      sub_21D0CF7E0(v419, &unk_27CE5CD80, &qword_21DC0CE80);
      v321 = MEMORY[0x277D84F90];
      v328 = v492;
      v329 = v444;
      v151 = v503;
      goto LABEL_205;
    }

    v304 = v405;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v405);
    sub_21D106918(v289, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v304, v292, type metadata accessor for TTRRemindersListViewModel.ItemID);
    swift_beginAccess();
    v388 = v291;
    v305 = *(v291 + 24);
    if (!*(v305 + 16))
    {
      goto LABEL_266;
    }

    v306 = sub_21D181E00();
    if ((v307 & 1) == 0)
    {
      goto LABEL_266;
    }

    v308 = *(*(v305 + 56) + 8 * v306);
    swift_endAccess();
    v309 = *(*v308 + 136);
    swift_beginAccess();
    v310 = *(v308 + v309);
    v276 = v452;
    v311 = v404;
    v151 = v503;
    if (v310 >> 62)
    {
      v312 = sub_21DBFBD7C();
      v313 = MEMORY[0x277D84F90];
      if (!v312)
      {
        goto LABEL_204;
      }

LABEL_182:
      v508[0] = v313;
      sub_21DBF8E0C();
      sub_21D18EBA4(0, v312 & ~(v312 >> 63), 0);
      v502 = v312;
      if (v312 < 0)
      {
        goto LABEL_265;
      }

      v321 = v508[0];
      v314 = v310;
      v484 = v310;
      if ((v310 & 0xC000000000000001) != 0)
      {
        v315 = 0;
        v316 = v402;
        do
        {
          v317 = MEMORY[0x223D44740](v315, v314);
          v318 = *(*v317 + 120);
          swift_beginAccess();
          sub_21D104E74(v317 + v318, v316, type metadata accessor for TTRRemindersListViewModel.Item);
          swift_unknownObjectRelease();
          v508[0] = v321;
          v320 = *(v321 + 16);
          v319 = *(v321 + 24);
          if (v320 >= v319 >> 1)
          {
            sub_21D18EBA4((v319 > 1), v320 + 1, 1);
            v321 = v508[0];
          }

          v315 = (v315 + 1);
          *(v321 + 16) = v320 + 1;
          sub_21D2A0DC8(v316, v321 + v497 + v320 * v494, type metadata accessor for TTRRemindersListViewModel.Item);
          v314 = v484;
        }

        while (v502 != v315);

        v151 = v503;
      }

      else
      {
        v330 = 32;
        do
        {
          v331 = *(v314 + v330);
          v332 = *(*v331 + 120);
          swift_beginAccess();
          sub_21D104E74(v331 + v332, v311, type metadata accessor for TTRRemindersListViewModel.Item);
          v508[0] = v321;
          v334 = *(v321 + 16);
          v333 = *(v321 + 24);
          if (v334 >= v333 >> 1)
          {
            sub_21D18EBA4((v333 > 1), v334 + 1, 1);
            v321 = v508[0];
          }

          *(v321 + 16) = v334 + 1;
          sub_21D2A0DC8(v311, v321 + v497 + v334 * v494, type metadata accessor for TTRRemindersListViewModel.Item);
          v330 += 8;
          v502 = (v502 - 1);
          v314 = v484;
        }

        while (v502);

        v138 = v485;
      }

      sub_21D106918(v416, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v419, &unk_27CE5CD80, &qword_21DC0CE80);
      v328 = v492;
      v329 = v444;
      v276 = v452;
    }

    else
    {
      v312 = *((v310 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v313 = MEMORY[0x277D84F90];
      if (v312)
      {
        goto LABEL_182;
      }

LABEL_204:

      sub_21D106918(v416, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v419, &unk_27CE5CD80, &qword_21DC0CE80);
      v321 = MEMORY[0x277D84F90];
      v328 = v492;
      v329 = v444;
    }

LABEL_205:
    v335 = 0;
    ++v475;
    v484 = *(v321 + 16);
    v388 = v321;
    v386 = v321 + v497;
    v336 = v494;
LABEL_206:
    if (v335 == v484)
    {
      v337 = 1;
      v502 = v484;
    }

    else
    {
      if ((v335 & 0x8000000000000000) != 0)
      {
        goto LABEL_257;
      }

      if (v335 >= *(v388 + 16))
      {
        goto LABEL_258;
      }

      v338 = (v335 + 1);
      v339 = v386 + v335 * v336;
      v340 = v492;
      v341 = *(v492 + 48);
      v342 = v473;
      *v473 = v335;
      sub_21D104E74(v339, v342 + v341, type metadata accessor for TTRRemindersListViewModel.Item);
      v343 = v342;
      v329 = v444;
      sub_21D0D523C(v343, v444, &qword_27CE5A418, &unk_21DC0F480);
      v337 = 0;
      v502 = v338;
      v328 = v340;
      v276 = v452;
    }

    v161(v329, v337, 1, v328);
    sub_21D0D523C(v329, v276, &qword_27CE5A420, &unk_21DC41780);
    if (v162(v276, 1, v328) != 1)
    {
      break;
    }

    sub_21D0CF7E0(v418, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item);
    v247 = v475;
    v248 = v387;
    v133 = v481;
    v135 = v504;
    v243 = v464;
    if (v475 != v387)
    {
      goto LABEL_150;
    }

    v397 = v434;
LABEL_142:
    v249 = *(v407 + 48);
    v250 = v417;
    sub_21D104E74(v429, v417, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    *(v250 + v249) = v151;
    v251 = v446;
    v252 = swift_isUniquelyReferenced_nonNull_native();
    v253 = v385;
    if ((v252 & 1) == 0)
    {
      v251 = sub_21D211CF8(0, v251[2] + 1, 1, v251);
    }

    v255 = v251[2];
    v254 = v251[3];
    v446 = v251;
    if (v255 >= v254 >> 1)
    {
      v446 = sub_21D211CF8((v254 > 1), v255 + 1, 1, v446);
    }

    sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.Item);
    v256 = v446;
    v446[2] = v255 + 1;
    sub_21D0D523C(v417, v256 + ((*(v406 + 80) + 32) & ~*(v406 + 80)) + *(v406 + 72) * v255, &qword_27CE59D18, &unk_21DC0CFE0);
    v257 = v436;
    sub_21DBFACAC();
    if (*(v257 + v253) != v508[0])
    {
      goto LABEL_137;
    }

LABEL_133:
    sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
    (*v395)(v437, v423);
    sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v134 = v467;
    sub_21D106918(v467, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!*(v509 + 16))
    {
LABEL_249:
      v366 = v463;
      goto LABEL_250;
    }

    v125 = v399;
    v139 = v399[2];
    v136 = v482;
    v137 = v505;
    if (!v139)
    {
LABEL_228:

      v366 = v463;
LABEL_251:
      sub_21D1E41E8(v366);
      return;
    }
  }

  v344 = *v276;
  v345 = v276 + *(v328 + 48);
  v346 = v458;
  sub_21D2A0DC8(v345, v458, type metadata accessor for TTRRemindersListViewModel.Item);
  v347 = v432;
  sub_21D104E74(v346, v432, type metadata accessor for TTRRemindersListViewModel.Item);
  v348 = swift_getEnumCaseMultiPayload();
  v503 = v151;
  if (v348 <= 3)
  {
    v349 = v435;
    if (v348 != 2 && v348 != 3)
    {
      goto LABEL_230;
    }

    goto LABEL_217;
  }

  v349 = v435;
  if (v348 == 4)
  {
LABEL_217:
    v350 = v349;
    sub_21D2A0DC8(v347, v349, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v351 = swift_getEnumCaseMultiPayload();
    if (v351 >= 2)
    {
      if (v351 == 2)
      {
        sub_21D106918(v435, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_232;
    }

    sub_21D2A0DC8(v350, v456, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v352 = v460;
    sub_21D104E74(v447, v460, type metadata accessor for TTRRemindersListViewModel.Item);
    v353 = v498;
    v354 = v464;
    v464(v352, 0, 1, v498);
    v355 = v439;
    v354(v439, 1, 1, v353);
    sub_21D0F02F4(v352, v355, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v355 + *(v440 + 36)) = v344;
    v356 = v430;
    v454(v355, ObjectType, v501);
    sub_21D0CF7E0(v355, &qword_27CE58900, &unk_21DC207C0);
    if (v393(v356, 1, v438) == 1)
    {

      sub_21D0CF7E0(v356, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v369 = 0;
      swift_willThrow();
      sub_21D106918(v456, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v418, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v370 = v427;
      goto LABEL_243;
    }

    v357 = v450;
    sub_21D0D523C(v356, v450, &qword_27CE59D38, &qword_21DC0D020);
    v358 = *(v433 + 48);
    v359 = *(v433 + 64);
    v360 = v451;
    sub_21D104E74(v458, v451, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v357, v360 + v358, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v448, v360 + v359, &qword_27CE59D38, &qword_21DC0D020);
    v362 = v463[2];
    v361 = v463[3];
    if (v362 >= v361 >> 1)
    {
      v463 = sub_21D211B38((v361 > 1), v362 + 1, 1, v463);
    }

    v276 = v452;
    v151 = v503;
    v363 = v463;
    v463[2] = v362 + 1;
    sub_21D0D523C(v451, v363 + v392 + v362 * v391, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v456, v449, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v365 = *(v151 + 16);
    v364 = *(v151 + 24);
    if (v365 >= v364 >> 1)
    {
      v151 = sub_21D211D1C((v364 > 1), v365 + 1, 1, v151);
    }

    sub_21D0CF7E0(v450, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v456, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v151 + 16) = v365 + 1;
    sub_21D2A0DC8(v449, v151 + v390 + v365 * v389, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v328 = v492;
    v329 = v444;
    v336 = v494;
    v335 = v502;
    goto LABEL_206;
  }

  if ((v348 - 5) < 4)
  {
LABEL_230:
    sub_21D106918(v347, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  swift_storeEnumTagMultiPayload();
LABEL_232:
  sub_21D2A0F60();
  v151 = swift_allocError();
  *v367 = 1;
  swift_willThrow();

  sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v418, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v436, &qword_27CE5A150, &unk_21DC0E6E0);
  (*v395)(v437, v423);
  v368 = v481;
LABEL_233:
  sub_21D106918(v368, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D106918(v467, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_245:
  if (qword_280D0F188 != -1)
  {
LABEL_261:
    swift_once();
  }

  v374 = sub_21DBF84BC();
  __swift_project_value_buffer(v374, qword_280D0F190);
  v375 = v151;
  v376 = sub_21DBF84AC();
  v377 = sub_21DBFAEBC();

  if (os_log_type_enabled(v376, v377))
  {
    v378 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    v508[0] = v379;
    *v378 = v398;
    swift_getErrorValue();
    v380 = sub_21DBFC74C();
    v382 = sub_21D0CDFB4(v380, v381, v508);

    *(v378 + 4) = v382;
    _os_log_impl(&dword_21D0C9000, v376, v377, "Cannot compute move steps for indenting items {error: %s}", v378, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v379);
    MEMORY[0x223D46520](v379, -1, -1);
    MEMORY[0x223D46520](v378, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D28582C@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v2, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
LABEL_8:
    v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

LABEL_10:
  sub_21D2A0DC8(v7, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    goto LABEL_8;
  }

  if (v14)
  {
    if (a1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
    v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  return sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
}

uint64_t sub_21D285AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
LABEL_8:
    sub_21D2A0F60();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

LABEL_9:
  sub_21D2A0DC8(v6, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    goto LABEL_8;
  }

  return sub_21D2A0DC8(v9, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
}

void *sub_21D285D24(void *a1, char a2, void *a3)
{
  v513 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v5 - 8);
  v489 = v398 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v473 = v398 - v8;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D00, &qword_21DC0F490);
  v404 = *(v405 - 1);
  MEMORY[0x28223BE20](v405);
  v406 = v398 - v9;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  v408 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v449 = v398 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v422 = v398 - v12;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v455);
  v441 = v398 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v14 - 8);
  v430 = v398 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v431 = v398 - v17;
  MEMORY[0x28223BE20](v18);
  v409 = v398 - v19;
  MEMORY[0x28223BE20](v20);
  v410 = v398 - v21;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v415 = *(v453 - 8);
  MEMORY[0x28223BE20](v453);
  v448 = v398 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v450 = v398 - v24;
  MEMORY[0x28223BE20](v25);
  v421 = v398 - v26;
  MEMORY[0x28223BE20](v27);
  v426 = v398 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v29 - 8);
  v469 = v398 - v30;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v468);
  v467 = v398 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v32 - 8);
  v507 = v398 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v416 = v398 - v35;
  v456 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v456);
  v437 = v398 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v446 = v398 - v38;
  v487 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v414 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v488 = (v398 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v477 = (v398 - v41);
  MEMORY[0x28223BE20](v42);
  v444 = v398 - v43;
  MEMORY[0x28223BE20](v44);
  v478 = v398 - v45;
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v504);
  v490 = v398 - v46;
  v435 = sub_21DBF5A5C();
  v413 = *(v435 - 8);
  MEMORY[0x28223BE20](v435);
  v407 = v398 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v425 = v398 - v49;
  MEMORY[0x28223BE20](v50);
  v427 = v398 - v51;
  MEMORY[0x28223BE20](v52);
  v411 = v398 - v53;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A430, &qword_21DC0F498);
  MEMORY[0x28223BE20](v419);
  v418 = v398 - v54;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A438, &qword_21DC0F4A0);
  MEMORY[0x28223BE20](v417);
  v434 = v398 - v55;
  v56 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v462 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v496 = (v398 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  v494 = v398 - v59;
  MEMORY[0x28223BE20](v60);
  v493 = (v398 - v61);
  MEMORY[0x28223BE20](v62);
  v495 = v398 - v63;
  MEMORY[0x28223BE20](v64);
  v492 = v398 - v65;
  MEMORY[0x28223BE20](v66);
  v518 = v398 - v67;
  MEMORY[0x28223BE20](v68);
  v516 = v398 - v69;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418, &unk_21DC0F480);
  v424 = *(v515 - 8);
  MEMORY[0x28223BE20](v515);
  v499 = (v398 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420, &unk_21DC41780);
  MEMORY[0x28223BE20](v71 - 8);
  v497 = v398 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v75 = (v398 - v74);
  MEMORY[0x28223BE20](v76);
  v483 = v398 - v77;
  MEMORY[0x28223BE20](v78);
  v482 = (v398 - v79);
  v433 = sub_21DBF5B9C();
  v412 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v451 = v398 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v429 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v486 = v398 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v447 = v398 - v83;
  MEMORY[0x28223BE20](v84);
  v432 = v398 - v85;
  MEMORY[0x28223BE20](v86);
  v457 = v398 - v87;
  MEMORY[0x28223BE20](v88);
  v423 = v398 - v89;
  MEMORY[0x28223BE20](v90);
  v491 = v398 - v91;
  MEMORY[0x28223BE20](v92);
  v428 = v398 - v93;
  MEMORY[0x28223BE20](v94);
  v440 = v398 - v95;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CF0, &qword_21DC0CFB8);
  v460 = *(v461 - 1);
  MEMORY[0x28223BE20](v461);
  v470 = v398 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v420 = v398 - v98;
  v99 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v511 = v398 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v503 = v398 - v103;
  MEMORY[0x28223BE20](v104);
  v106 = v398 - v105;
  MEMORY[0x28223BE20](v107);
  v474 = (v398 - v108);
  MEMORY[0x28223BE20](v109);
  v480 = (v398 - v110);
  MEMORY[0x28223BE20](v111);
  v454 = v398 - v112;
  MEMORY[0x28223BE20](v113);
  v439 = (v398 - v114);
  MEMORY[0x28223BE20](v115);
  v443 = v398 - v116;
  MEMORY[0x28223BE20](v117);
  v445 = v398 - v118;
  MEMORY[0x28223BE20](v119);
  v458 = v398 - v120;
  MEMORY[0x28223BE20](v121);
  v485 = (v398 - v122);
  MEMORY[0x28223BE20](v123);
  v452 = v398 - v124;
  MEMORY[0x28223BE20](v125);
  v436 = v398 - v126;
  MEMORY[0x28223BE20](v127);
  v510 = v398 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v129 - 8);
  v131 = (v398 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v132);
  v134 = v398 - v133;
  MEMORY[0x28223BE20](v135);
  v137 = v398 - v136;
  v520 = a1;
  v519 = a2;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v517 = v56;
  v138 = sub_21DBFA42C();
  v442 = 0;
  v522 = v138;
  v139 = *(v100 + 56);
  v514 = v100 + 56;
  v512 = v139;
  v139(v137, 1, 1, v99);

  v140 = sub_21D263398(v137);

  v476 = v137;
  sub_21D0CF7E0(v137, &unk_27CE5CD80, &qword_21DC0CE80);
  v141 = v140;
  v142 = *(v140 + 16);
  v479 = v100;
  v502 = v99;
  if (!v142)
  {

    v148 = MEMORY[0x277D84F90];
LABEL_8:
    v147 = v497;
    goto LABEL_9;
  }

  v143 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v475 = v141;
  v144 = v141 + v143;
  v145 = v510;
  sub_21D104E74(v141 + v143, v510, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21D106918(v145, type metadata accessor for TTRRemindersListViewModel.Item);
  v147 = v497;
  if (!EnumCaseMultiPayload)
  {
    v520 = MEMORY[0x277D84F90];
    v509 = *(v100 + 72);
    v149 = v476;
    v150 = v512;
    v151 = v511;
    do
    {
      sub_21D104E74(v144, v151, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v511, v149, type metadata accessor for TTRRemindersListViewModel.Item);
      v150(v149, 0, 1, v502);

      v510 = sub_21D263398(v149);
      v151 = v511;

      sub_21D0CF7E0(v149, &unk_27CE5CD80, &qword_21DC0CE80);
      sub_21D106918(v151, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D5624CC(v510);
      v144 += v509;
      --v142;
    }

    while (v142);

    v148 = v520;
    v99 = v502;
    goto LABEL_8;
  }

  v148 = v475;
LABEL_9:
  v152 = v515;
  v153 = v479;
  v154 = v480;
  v472 = *(v148 + 16);
  if (!v472)
  {

    v481 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v155 = 0;
  v459 = (*(v479 + 80) + 32) & ~*(v479 + 80);
  v471 = v148 + v459;
  v511 = (v424 + 56);
  v510 = (v424 + 48);
  v506 = (v479 + 48);
  v481 = MEMORY[0x277D84F90];
  v505 = (v462 + 56);
  v475 = v148;
  do
  {
    if (v155 >= *(v148 + 16))
    {
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
      goto LABEL_276;
    }

    v157 = v153;
    v158 = *(v153 + 72);
    v484 = v155;
    v501 = v158;
    sub_21D104E74(v471 + v158 * v155, v154, type metadata accessor for TTRRemindersListViewModel.Item);
    v159 = v474;
    sub_21D104E74(v154, v474, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D2A0DC8(v159, v473, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v160 = v154;
      v161 = v476;
      sub_21D104E74(v160, v476, type metadata accessor for TTRRemindersListViewModel.Item);
      v512(v161, 0, 1, v99);

      v162 = sub_21D263398(v161);

      sub_21D0CF7E0(v161, &unk_27CE5CD80, &qword_21DC0CE80);
      v163 = 0;
      v164 = *(v162 + 16);
      v500 = v162;
      v498 = v162 + v459;
      v509 = v164;
      if (v164)
      {
LABEL_16:
        if ((v163 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v163 < *(v500 + 16))
        {
          v165 = v498 + v163 * v501;
          v166 = *(v152 + 48);
          v167 = v499;
          *v499 = v163;
          sub_21D104E74(v165, v167 + v166, type metadata accessor for TTRRemindersListViewModel.Item);
          v168 = v167;
          v99 = v502;
          sub_21D0D523C(v168, v147, &qword_27CE5A418, &unk_21DC0F480);
          v169 = 0;
          ++v163;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_253;
      }

      while (1)
      {
        v169 = 1;
        v163 = v164;
LABEL_20:
        (*v511)(v147, v169, 1, v152);
        sub_21D0D523C(v147, v75, &qword_27CE5A420, &unk_21DC41780);
        if ((*v510)(v75, 1, v152) == 1)
        {

          sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v157 = v479;
          goto LABEL_12;
        }

        v508 = *v75;
        sub_21D2A0DC8(v75 + *(v152 + 48), v106, type metadata accessor for TTRRemindersListViewModel.Item);
        v170 = v513[10];
        sub_21D104E74(v106, v134, type metadata accessor for TTRRemindersListViewModel.Item);
        v512(v134, 0, 1, v99);
        sub_21D0D3954(v134, v131, &unk_27CE5CD80, &qword_21DC0CE80);
        if ((*v506)(v131, 1, v99) != 1)
        {
          break;
        }

        sub_21D0CF7E0(v131, &unk_27CE5CD80, &qword_21DC0CE80);
        v171 = v507;
        (*v505)(v507, 1, 1, v517);
        sub_21D0CF7E0(v171, &qword_27CE5FB90, &unk_21DC09290);
        swift_beginAccess();
        v172 = *(v170 + 16);
        if (v172 >> 62)
        {
          v173 = sub_21DBFBD7C();
        }

        else
        {
          v173 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_55:
        sub_21D0CF7E0(v134, &unk_27CE5CD80, &qword_21DC0CE80);

        if (v173 >= 1)
        {
          v194 = v476;
          sub_21D104E74(v106, v476, type metadata accessor for TTRRemindersListViewModel.Item);
          v512(v194, 0, 1, v99);

          *&v465 = sub_21D263398(v194);

          sub_21D0CF7E0(v194, &unk_27CE5CD80, &qword_21DC0CE80);
          v195 = v461[12];
          v464 = v461[16];
          v463 = v461[20];
          v196 = v470;
          sub_21D104E74(v480, v470, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D104E74(v106, v196 + v195, type metadata accessor for TTRRemindersListViewModel.Item);
          *(v464 + v196) = v508;
          *(v463 + v196) = v465;
          v197 = v481;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v197 = sub_21D211D68(0, v197[2] + 1, 1, v197);
          }

          v481 = v197;
          v199 = v197[2];
          v198 = v197[3];
          if (v199 >= v198 >> 1)
          {
            v481 = sub_21D211D68((v198 > 1), v199 + 1, 1, v481);
          }

          sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.Item);
          v200 = v481;
          v481[2] = v199 + 1;
          sub_21D0D523C(v470, v200 + ((*(v460 + 80) + 32) & ~*(v460 + 80)) + *(v460 + 72) * v199, &qword_27CE59CF0, &qword_21DC0CFB8);
        }

        else
        {
          sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        v152 = v515;
        v164 = v509;
        if (v163 != v509)
        {
          goto LABEL_16;
        }
      }

      sub_21D104E74(v131, v503, type metadata accessor for TTRRemindersListViewModel.Item);
      v174 = swift_getEnumCaseMultiPayload();
      if (v174 <= 5)
      {
        if ((v174 - 2) < 3)
        {
          v175 = v486;
          sub_21D2A0DC8(v503, v486, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v176 = v175;
          v177 = v507;
          sub_21D2A0DC8(v176, v507, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v178 = v517;
LABEL_41:
          swift_storeEnumTagMultiPayload();

          goto LABEL_48;
        }

        if (v174 >= 2)
        {

          sub_21D106918(v503, type metadata accessor for TTRRemindersListViewModel.Item);
          v177 = v507;
          *v507 = 0;
          v178 = v517;
LABEL_47:
          swift_storeEnumTagMultiPayload();
LABEL_48:
          sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
          (*v505)(v177, 0, 1, v178);
          v186 = v177;
          v187 = v496;
          sub_21D2A0DC8(v186, v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
          swift_beginAccess();
          v188 = *(v170 + 24);
          if (*(v188 + 16) && (v189 = sub_21D181E00(), (v190 & 1) != 0))
          {
            v191 = *(*(v188 + 56) + 8 * v189);
            swift_endAccess();
            v192 = *(*v191 + 136);
            swift_beginAccess();
            v193 = *(v191 + v192);
            if (v193 >> 62)
            {
              v173 = sub_21DBFBD7C();
            }

            else
            {
              v173 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v99 = v502;
          }

          else
          {
            swift_endAccess();
            v173 = 0;
          }

          sub_21D106918(v187, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v147 = v497;
          goto LABEL_55;
        }

        v180 = v489;
        sub_21D2A0DC8(v503, v489, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D104E74(v180, v488, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v181 = swift_getEnumCaseMultiPayload();

        if (((1 << v181) & 0x17E) != 0)
        {
          sub_21D106918(v488, type metadata accessor for TTRRemindersListViewModel.SectionID);
        }

        else if (((1 << v181) & 0x81) == 0)
        {
          sub_21D106918(v489, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v184 = v477;
          *v477 = *v488;
          swift_storeEnumTagMultiPayload();
          goto LABEL_46;
        }

        v183 = v489;
        v184 = v477;
        sub_21D104E74(v489, v477, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v183, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_46:
        v185 = v184;
        v177 = v507;
        sub_21D2A0DC8(v185, v507, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v178 = v517;
        goto LABEL_47;
      }

      if (v174 <= 7)
      {
        v177 = v507;
        if (v174 != 6)
        {
          *v507 = 2;
          goto LABEL_43;
        }

        v182 = 1;
      }

      else
      {
        v177 = v507;
        if (v174 != 8)
        {
          if (v174 == 9)
          {
            v179 = 3;
          }

          else
          {
            v179 = 5;
          }

          *v507 = v179;
          v178 = v517;
          goto LABEL_41;
        }

        v182 = 4;
      }

      *v177 = v182;
LABEL_43:
      v178 = v517;
      swift_storeEnumTagMultiPayload();

      sub_21D106918(v503, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_48;
    }

    sub_21D106918(v159, type metadata accessor for TTRRemindersListViewModel.Item);
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v201 = sub_21DBF84BC();
    __swift_project_value_buffer(v201, qword_280D0F190);
    v202 = sub_21DBF84AC();
    v203 = sub_21DBFAECC();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_21D0C9000, v202, v203, "Unexpected item type", v204, 2u);
      MEMORY[0x223D46520](v204, -1, -1);
    }

    v152 = v515;
LABEL_12:
    v156 = v484 + 1;
    v154 = v480;
    sub_21D106918(v480, type metadata accessor for TTRRemindersListViewModel.Item);
    v155 = v156;
    v148 = v475;
    v153 = v157;
  }

  while (v156 != v472);

LABEL_74:
  v206 = v442;
  if (!*(v522 + 16))
  {
    v496 = MEMORY[0x277D84F90];
    v463 = MEMORY[0x277D84F90];
    goto LABEL_233;
  }

  v508 = v424 + 56;
  v507 = v424 + 48;
  v498 = 0x800000021DC43E30;
  v497 = 0x800000021DC43E00;
  v503 = 0x800000021DC43DE0;
  v207 = (v414 + 6);
  v414 = (v412 + 16);
  v464 = (v413 + 16);
  v403 = (v413 + 32);
  v477 = v415 + 6;
  v424 = v413 + 8;
  v415 = (v412 + 8);
  *&v205 = 136315138;
  v465 = v205;
  v463 = MEMORY[0x277D84F90];
  v496 = MEMORY[0x277D84F90];
  v500 = v207;
  while (2)
  {
    if (!v481[2])
    {
      goto LABEL_233;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v481 = sub_21D256C7C(v481);
    }

    v208 = v481[2];
    if (!v208)
    {
      goto LABEL_267;
    }

    v209 = v208 - 1;
    v210 = v481 + ((*(v460 + 80) + 32) & ~*(v460 + 80)) + *(v460 + 72) * v209;
    v481[2] = v209;
    v211 = v420;
    sub_21D0D523C(v210, v420, &qword_27CE59CF0, &qword_21DC0CFB8);
    v212 = v461[12];
    v213 = *(v211 + v461[16]);
    v214 = *(v211 + v461[20]);
    sub_21D2A0DC8(v211, v436, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v211 + v212, v452, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D285AF8(v440);
    v131 = v206;
    if (v206)
    {

      sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v436, type metadata accessor for TTRRemindersListViewModel.Item);

      goto LABEL_239;
    }

    v489 = v213;
    v442 = 0;
    sub_21DBF5B8C();
    v215 = 0;
    v216 = *(v214 + 16);
    v217 = v490;
    v218 = v483;
    v131 = v485;
    v501 = v214;
    v506 = v216;
LABEL_84:
    if (v215 == v216)
    {
      v219 = 1;
      v509 = v216;
      v220 = v515;
      v221 = v482;
    }

    else
    {
      v221 = v482;
      if ((v215 & 0x8000000000000000) != 0)
      {
        goto LABEL_261;
      }

      if (v215 >= *(v214 + 16))
      {
        goto LABEL_262;
      }

      v222 = v215 + 1;
      v223 = v214 + ((*(v479 + 80) + 32) & ~*(v479 + 80)) + *(v479 + 72) * v215;
      v220 = v515;
      v224 = *(v515 + 48);
      v225 = v499;
      *v499 = v215;
      sub_21D104E74(v223, v225 + v224, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v225, v218, &qword_27CE5A418, &unk_21DC0F480);
      v219 = 0;
      v509 = v222;
      v217 = v490;
    }

    (*v508)(v218, v219, 1, v220);
    sub_21D0D523C(v218, v221, &qword_27CE5A420, &unk_21DC41780);
    if ((*v507)(v221, 1, v220) != 1)
    {
      v505 = *v221;
      sub_21D2A0DC8(v221 + *(v220 + 48), v131, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v516);
      v226 = v522;
      if (!*(v522 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(&v520), v227 = sub_21DBFC82C(), v228 = -1 << *(v226 + 32), v229 = v227 & ~v228, ((*(v226 + 56 + ((v229 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v229) & 1) == 0))
      {
LABEL_82:
        sub_21D106918(v516, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v131 = v485;
        sub_21D106918(v485, type metadata accessor for TTRRemindersListViewModel.Item);
        v218 = v483;
        goto LABEL_83;
      }

      v510 = ~v228;
      v511 = *(v462 + 72);
      while (2)
      {
        v232 = v518;
        sub_21D104E74(*(v226 + 48) + v511 * v229, v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v233 = *(v504 + 48);
        sub_21D104E74(v232, v217, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v516, v217 + v233, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v234 = swift_getEnumCaseMultiPayload();
        if (v234 <= 1)
        {
          if (!v234)
          {
            v235 = v492;
            sub_21D104E74(v217, v492, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v236 = type metadata accessor for TTRRemindersListViewModel.SectionID;
              v237 = v235;
              goto LABEL_123;
            }

            v256 = v217 + v233;
            v257 = v478;
            sub_21D2A0DC8(v256, v478, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v258 = v235;
            v259 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v235, v257);
            v260 = v257;
            v217 = v490;
            sub_21D106918(v260, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v258, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v259)
            {
              goto LABEL_163;
            }

LABEL_94:
            sub_21D106918(v217, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
            v229 = (v229 + 1) & v510;
            if (((*(v226 + 56 + ((v229 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v229) & 1) == 0)
            {
              goto LABEL_82;
            }

            continue;
          }

          v240 = v495;
          sub_21D104E74(v217, v495, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v241 = v217 + v233;
            v242 = v491;
            sub_21D2A0DC8(v241, v491, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            if (sub_21DBFB63C())
            {
              v243 = *(v466 + 20);
              v244 = *(v468 + 48);
              v245 = v467;
              sub_21D0D3954(v240 + v243, v467, &unk_27CE5CD70, &unk_21DC09230);
              sub_21D0D3954(v242 + v243, v245 + v244, &unk_27CE5CD70, &unk_21DC09230);
              v246 = *v500;
              v247 = v487;
              if ((*v500)(v245, 1, v487) == 1)
              {
                sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v248 = v246(v245 + v244, 1, v247) == 1;
                v249 = v245;
                v214 = v501;
                if (v248)
                {
                  sub_21D0CF7E0(v245, &unk_27CE5CD70, &unk_21DC09230);
                  v217 = v490;
LABEL_162:
                  sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v495, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_163:
                  sub_21D106918(v217, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v131 = v485;
                  sub_21D104E74(v485, v458, type metadata accessor for TTRRemindersListViewModel.Item);
                  v271 = swift_getEnumCaseMultiPayload();
                  if (v271 <= 3)
                  {
                    v218 = v483;
                    v272 = v445;
                    if (v271 >= 2)
                    {
                      goto LABEL_176;
                    }

LABEL_168:
                    sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_169:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_170;
                  }

                  v218 = v483;
                  v272 = v445;
                  if ((v271 - 5) < 4)
                  {
                    goto LABEL_168;
                  }

                  if ((v271 - 9) < 2)
                  {
                    goto LABEL_169;
                  }

LABEL_176:
                  v284 = v446;
                  sub_21D2A0DC8(v458, v446, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v285 = swift_getEnumCaseMultiPayload();
                  if (v285 < 2)
                  {
                    sub_21D106918(v284, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v286 = v416;
                    v287 = v516;
                    sub_21D1AAD70(v516, v416);
                    sub_21D0CF7E0(v286, &qword_27CE5FB90, &unk_21DC09290);
                    sub_21D106918(v287, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
                    v217 = v490;
                    goto LABEL_83;
                  }

                  if (v285 == 2)
                  {
                    sub_21D106918(v446, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_170:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v273 = sub_21DBF84BC();
                  __swift_project_value_buffer(v273, qword_280D0F190);
                  sub_21D104E74(v131, v272, type metadata accessor for TTRRemindersListViewModel.Item);
                  v274 = sub_21DBF84AC();
                  v275 = sub_21DBFAECC();
                  if (os_log_type_enabled(v274, v275))
                  {
                    v276 = swift_slowAlloc();
                    v277 = v272;
                    v278 = swift_slowAlloc();
                    v520 = v278;
                    *v276 = v465;
                    v279 = sub_21D25D250();
                    v281 = v280;
                    v282 = v277;
                    v131 = v485;
                    sub_21D106918(v282, type metadata accessor for TTRRemindersListViewModel.Item);
                    v283 = sub_21D0CDFB4(v279, v281, &v520);
                    v214 = v501;

                    *(v276 + 4) = v283;
                    _os_log_impl(&dword_21D0C9000, v274, v275, "TTRRemindersListTreeViewModel: item does not support outdent {item: %s}", v276, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v278);
                    MEMORY[0x223D46520](v278, -1, -1);
                    MEMORY[0x223D46520](v276, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v272, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  sub_21D106918(v516, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
                  v217 = v490;
LABEL_83:
                  v216 = v506;
                  v215 = v509;
                  goto LABEL_84;
                }

LABEL_133:
                sub_21D0CF7E0(v249, &qword_27CE58388, &unk_21DC0F470);
                v217 = v490;
              }

              else
              {
                sub_21D0D3954(v245, v469, &unk_27CE5CD70, &unk_21DC09230);
                if (v246(v245 + v244, 1, v247) == 1)
                {
                  sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v469, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v249 = v245;
                  v214 = v501;
                  goto LABEL_133;
                }

                v268 = v444;
                sub_21D2A0DC8(v245 + v244, v444, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v269 = v469;
                v270 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v469, v268);
                sub_21D106918(v268, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v269, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v245, &unk_27CE5CD70, &unk_21DC09230);
                v217 = v490;
                v214 = v501;
                if (v270)
                {
                  goto LABEL_162;
                }
              }
            }

            else
            {
              sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v491, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v495, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_94;
          }

          sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v236 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
          v237 = v240;
LABEL_123:
          sub_21D106918(v237, v236);
LABEL_124:
          sub_21D0CF7E0(v217, &qword_27CE58AD0, &qword_21DC0A050);
          goto LABEL_95;
        }

        break;
      }

      if (v234 == 2)
      {
        v238 = v493;
        sub_21D104E74(v217, v493, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v239 = *v238;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v230 = *(v217 + v233);
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v231 = sub_21DBFB63C();

          sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v231)
          {
            goto LABEL_163;
          }

          goto LABEL_94;
        }

        sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_124;
      }

      v250 = v494;
      sub_21D104E74(v217, v494, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v236 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v237 = v518;
        goto LABEL_123;
      }

      v251 = *v250;
      if (v251 > 2)
      {
        if (v251 == 3)
        {
          v254 = 0xD00000000000001FLL;
          v261 = &v520;
        }

        else
        {
          if (v251 == 4)
          {
            v255 = 0xE700000000000000;
            v254 = 0x6D657449706974;
            goto LABEL_137;
          }

          v254 = 0xD00000000000001DLL;
          v261 = &v521;
        }

        v255 = *(v261 - 32);
      }

      else
      {
        v252 = 0xD000000000000012;
        if (v251 == 1)
        {
          v252 = 0x7367617468736168;
        }

        v253 = 0xEC0000006D657449;
        if (v251 != 1)
        {
          v253 = v503;
        }

        if (*v250)
        {
          v254 = v252;
        }

        else
        {
          v254 = 0x6574656C706D6F63;
        }

        if (*v250)
        {
          v255 = v253;
        }

        else
        {
          v255 = 0xED00006D65744964;
        }
      }

LABEL_137:
      v262 = *(v217 + v233);
      if (v262 <= 2)
      {
        if (*(v217 + v233))
        {
          if (v262 == 1)
          {
            v263 = 0x7367617468736168;
          }

          else
          {
            v263 = 0xD000000000000012;
          }

          if (v262 == 1)
          {
            v264 = 0xEC0000006D657449;
          }

          else
          {
            v264 = v503;
          }

          if (v254 != v263)
          {
LABEL_157:
            v267 = sub_21DBFC64C();

            sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v267)
            {
              goto LABEL_163;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v264 = 0xED00006D65744964;
          if (v254 != 0x6574656C706D6F63)
          {
            goto LABEL_157;
          }
        }

LABEL_156:
        if (v255 == v264)
        {

          sub_21D106918(v518, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_163;
        }

        goto LABEL_157;
      }

      if (v262 == 3)
      {
        v265 = 0xD00000000000001FLL;
        v266 = &v520;
      }

      else
      {
        if (v262 == 4)
        {
          v264 = 0xE700000000000000;
          if (v254 != 0x6D657449706974)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        v265 = 0xD00000000000001DLL;
        v266 = &v521;
      }

      v264 = *(v266 - 32);
      if (v254 != v265)
      {
        goto LABEL_157;
      }

      goto LABEL_156;
    }

    sub_21D104E74(v440, v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v288 = v418;
    (*v414)(v418, v451, v433);
    v289 = v419;
    v290 = *(v419 + 36);
    v131 = sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    sub_21DBFAC3C();
    sub_21DBFACAC();
    v291 = v434;
    sub_21D0D3954(v288, v434, &qword_27CE5A430, &qword_21DC0F498);
    v292 = *(v417 + 36);
    v413 = *v464;
    (v413)(v291 + v292, v288 + v290, v435);
    v293 = v292;
    sub_21D0CF7E0(v288, &qword_27CE5A430, &qword_21DC0F498);
    v294 = *(v289 + 40);
    v295 = sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    if (sub_21DBFA10C())
    {
      v206 = v442;
LABEL_182:

      sub_21D0CF7E0(v434, &qword_27CE5A438, &qword_21DC0F4A0);
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v415)(v451, v433);
      sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v436, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v522 + 16))
      {
LABEL_233:

        return v496;
      }

      continue;
    }

    break;
  }

  v510 = 0;
  v459 = 0;
  v401 = v489 + 1;
  v296 = __OFADD__(v489, 1);
  v402 = v296;
  v206 = v442;
  v297 = v476;
  v400 = v131;
  v399 = v293;
  v398[1] = v294;
  v398[0] = v295;
  while (2)
  {
    v298 = v411;
    v299 = v435;
    (v413)(v411, v434 + v293, v435);
    sub_21DBFACBC();
    (*v403)(v427, v298, v299);
    v300 = sub_21DBF5BAC();
    if ((v300 & 0x8000000000000000) != 0)
    {
      goto LABEL_268;
    }

    v301 = v300;
    if (v300 >= *(v501 + 16))
    {
      goto LABEL_269;
    }

    v302 = ((*(v479 + 80) + 32) & ~*(v479 + 80));
    v473 = *(v479 + 72);
    sub_21D104E74(v302 + v501 + v473 * v300, v443, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D285AF8(v423);
    v442 = v206;
    if (v206)
    {

      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
      (*v424)(v427, v435);
      sub_21D0CF7E0(v434, &qword_27CE5A438, &qword_21DC0F4A0);
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v415)(v451, v433);
      sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v436, type metadata accessor for TTRRemindersListViewModel.Item);

      v131 = v442;
      goto LABEL_246;
    }

    v511 = v302;
    v304 = v513[3];
    v303 = v513[4];
    ObjectType = swift_getObjectType();
    sub_21D104E74(v452, v297, type metadata accessor for TTRRemindersListViewModel.Item);
    v306 = v297;
    v307 = v297;
    v308 = v502;
    v131 = v512;
    v512(v306, 0, 1, v502);
    v309 = v301 - v510;
    if (__OFSUB__(v301, v510))
    {
      goto LABEL_270;
    }

    v509 = v301;
    v310 = v441;
    (v131)(v441, 1, 1, v308);
    sub_21D0F02F4(v307, v310, &unk_27CE5CD80, &qword_21DC0CE80);
    v311 = v455;
    *(v310 + *(v455 + 36)) = v309;
    v312 = v303 + 32;
    v313 = *(v303 + 32);
    v314 = v303;
    v315 = v410;
    v475 = v304;
    v505 = v314;
    v489 = v312;
    v488 = v313;
    (v313)(v310, ObjectType);
    v316 = v315;
    sub_21D0CF7E0(v310, &qword_27CE58900, &unk_21DC207C0);
    v317 = *v477;
    v318 = v315;
    v319 = v453;
    if ((*v477)(v318, 1, v453) == 1)
    {

      sub_21D0CF7E0(v316, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v131 = swift_allocError();
      *v396 = 0;
      swift_willThrow();
LABEL_259:
      sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
      (*v424)(v427, v435);
      sub_21D0CF7E0(v434, &qword_27CE5A438, &qword_21DC0F4A0);
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v415)(v451, v433);
      sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
      v386 = v436;
      goto LABEL_245;
    }

    sub_21D0D523C(v316, v426, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D104E74(v436, v307, type metadata accessor for TTRRemindersListViewModel.Item);
    (v131)(v307, 0, 1, v308);
    if (v402)
    {
      goto LABEL_271;
    }

    v320 = v401 + v459;
    if (__OFADD__(v401, v459))
    {
      goto LABEL_272;
    }

    v474 = v317;
    v321 = v441;
    v512(v441, 1, 1, v502);
    sub_21D0F02F4(v476, v321, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v321 + *(v311 + 36)) = v320;
    v322 = v409;
    v488(v321, ObjectType, v505);
    sub_21D0CF7E0(v321, &qword_27CE58900, &unk_21DC207C0);
    if ((v474)(v322, 1, v319) == 1)
    {

      sub_21D0CF7E0(v322, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v131 = swift_allocError();
      *v397 = 0;
      swift_willThrow();
      sub_21D0CF7E0(v426, &qword_27CE59D38, &qword_21DC0D020);
      goto LABEL_259;
    }

    v323 = v421;
    v131 = &qword_27CE59D38;
    sub_21D0D523C(v322, v421, &qword_27CE59D38, &qword_21DC0D020);
    v324 = *(v438 + 48);
    v325 = *(v438 + 64);
    v326 = v422;
    sub_21D104E74(v443, v422, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v426, v326 + v324, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v323, v326 + v325, &qword_27CE59D38, &qword_21DC0D020);
    v327 = v496;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v327 = sub_21D211B38(0, v327[2] + 1, 1, v327);
    }

    v328 = v437;
    v330 = v327[2];
    v329 = v327[3];
    v331 = v455;
    if (v330 >= v329 >> 1)
    {
      v327 = sub_21D211B38((v329 > 1), v330 + 1, 1, v327);
    }

    v327[2] = v330 + 1;
    v472 = (*(v408 + 80) + 32) & ~*(v408 + 80);
    v471 = *(v408 + 72);
    sub_21D0D523C(v422, v327 + v472 + v471 * v330, &qword_27CE59D08, &qword_21DC0CFD0);
    v332 = __OFADD__(v459++, 1);
    if (v332)
    {
      goto LABEL_273;
    }

    v332 = __OFADD__(v510++, 1);
    if (v332)
    {
      goto LABEL_274;
    }

    sub_21DBF5ACC();
    v333 = v407;
    sub_21DBF5A3C();
    v334 = sub_21DBF5A4C();
    v412 = *v424;
    v412(v333, v435);
    v335 = v506;
    if ((v334 & 1) == 0)
    {
      v335 = sub_21DBF5BAC();
    }

    v75 = v439;
    if (v335 <= v509)
    {
      goto LABEL_275;
    }

    v486 = ObjectType;
    v336 = v509 + 1;
    v337 = v501;
    v338 = (v501 + v511 + v473 * (v509 + 1));
    v511 = MEMORY[0x277D84F90];
    v339 = v510;
    v470 = v335;
LABEL_206:
    if (v335 == v336)
    {
      v496 = v327;
      v365 = v405[12];
      v366 = v405[16];
      v367 = v405[20];
      v368 = v406;
      sub_21D104E74(v436, v406, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v428, v368 + v365, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D104E74(v423, v368 + v366, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v368 + v367) = v511;
      v369 = v463;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_21D211D44(0, v369[2] + 1, 1, v369);
      }

      v206 = v442;
      v370 = v369;
      v371 = v369[2];
      v463 = v370;
      v372 = v370[3];
      v510 = v339;
      if (v371 >= v372 >> 1)
      {
        v463 = sub_21D211D44((v372 > 1), v371 + 1, 1, v463);
      }

      v373 = v435;
      v374 = v412;
      v412(v425, v435);
      sub_21D0CF7E0(v421, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D0CF7E0(v426, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
      v374(v427, v373);
      v375 = v428;
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v376 = v463;
      v463[2] = v371 + 1;
      sub_21D0D523C(v406, v376 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v371, &qword_27CE59D00, &qword_21DC0F490);
      sub_21D2A0DC8(v423, v375, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v293 = v399;
      v377 = sub_21DBFA10C();
      v297 = v476;
      v131 = v400;
      if (v377)
      {
        goto LABEL_182;
      }

      continue;
    }

    break;
  }

  if (v336 >= v335)
  {
    goto LABEL_263;
  }

  if (v336 >= *(v337 + 16))
  {
    goto LABEL_264;
  }

  v509 = v336;
  v484 = v338;
  sub_21D104E74(v338, v75, type metadata accessor for TTRRemindersListViewModel.Item);
  v131 = *(v511 + 16);
  sub_21D104E74(v75, v454, type metadata accessor for TTRRemindersListViewModel.Item);
  v340 = swift_getEnumCaseMultiPayload();
  if (v340 >= 4)
  {
    if (v340 <= 4)
    {
      goto LABEL_213;
    }

    if (v340 <= 8)
    {
LABEL_236:

      sub_21D106918(v454, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_238;
  }

  if (v340 <= 1)
  {
    goto LABEL_236;
  }

LABEL_213:
  sub_21D2A0DC8(v454, v328, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v341 = swift_getEnumCaseMultiPayload();
  if (v341 >= 2)
  {
    if (v341 != 2)
    {
LABEL_253:

      goto LABEL_238;
    }

    sub_21D106918(v328, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
LABEL_238:
    v379 = v412;
    sub_21D2A0F60();
    v131 = swift_allocError();
    *v380 = 1;
    swift_willThrow();
    sub_21D106918(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    v381 = v435;
    v379(v425, v435);
    sub_21D0CF7E0(v421, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0CF7E0(v426, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
    v379(v427, v381);
    sub_21D0CF7E0(v434, &qword_27CE5A438, &qword_21DC0F4A0);
    sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v415)(v451, v433);
    sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v436, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_239:

    goto LABEL_246;
  }

  v496 = v327;
  v342 = v328;
  v343 = v432;
  sub_21D2A0DC8(v342, v432, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D2A0DC8(v343, v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v344 = v476;
  sub_21D104E74(v452, v476, type metadata accessor for TTRRemindersListViewModel.Item);
  v345 = v502;
  v346 = v512;
  v512(v344, 0, 1, v502);
  v347 = v509 - v339;
  if (__OFSUB__(v509, v339))
  {
    goto LABEL_265;
  }

  v480 = v131;
  v510 = v339;
  v348 = v441;
  v346(v441, 1, 1, v345);
  sub_21D0F02F4(v344, v348, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v348 + *(v331 + 36)) = v347;
  v349 = v431;
  v488(v348, v486, v505);
  sub_21D0CF7E0(v348, &qword_27CE58900, &unk_21DC207C0);
  v350 = v474;
  if ((v474)(v349, 1, v453) == 1)
  {

    sub_21D0CF7E0(v349, &qword_27CE5A3E8, &qword_21DC0F428);
    sub_21D2A0F60();
    v131 = swift_allocError();
    *v382 = 0;
    swift_willThrow();
    sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v439, type metadata accessor for TTRRemindersListViewModel.Item);
    v383 = v435;
    v384 = v412;
    v412(v425, v435);
    goto LABEL_244;
  }

  v131 = &qword_27CE59D38;
  sub_21D0D523C(v349, v450, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D104E74(v443, v344, type metadata accessor for TTRRemindersListViewModel.Item);
  v346(v344, 0, 1, v345);
  v346(v348, 1, 1, v345);
  sub_21D0F02F4(v344, v348, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v348 + *(v455 + 36)) = v480;
  v351 = v430;
  v488(v348, v486, v505);
  sub_21D0CF7E0(v348, &qword_27CE58900, &unk_21DC207C0);
  if (v350(v351, 1, v453) != 1)
  {
    v352 = v448;
    sub_21D0D523C(v351, v448, &qword_27CE59D38, &qword_21DC0D020);
    v353 = *(v438 + 48);
    v354 = *(v438 + 64);
    v75 = v439;
    v355 = v449;
    sub_21D104E74(v439, v449, type metadata accessor for TTRRemindersListViewModel.Item);
    v356 = v450;
    sub_21D0D3954(v450, v355 + v353, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v352, v355 + v354, &qword_27CE59D38, &qword_21DC0D020);
    v327 = v496;
    v358 = v496[2];
    v357 = v496[3];
    v359 = v356;
    if (v358 >= v357 >> 1)
    {
      v327 = sub_21D211B38((v357 > 1), v358 + 1, 1, v496);
    }

    v328 = v437;
    v360 = v510;
    v327[2] = v358 + 1;
    sub_21D0D523C(v449, v327 + v472 + v358 * v471, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v457, v447, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v331 = v455;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v511 = sub_21D211D1C(0, *(v511 + 16) + 1, 1, v511);
    }

    v363 = *(v511 + 16);
    v362 = *(v511 + 24);
    if (v363 >= v362 >> 1)
    {
      v511 = sub_21D211D1C((v362 > 1), v363 + 1, 1, v511);
    }

    sub_21D0CF7E0(v448, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0CF7E0(v359, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    v364 = v511;
    *(v511 + 16) = v363 + 1;
    sub_21D2A0DC8(v447, v364 + ((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v363, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v336 = v509 + 1;
    v338 = &v484[v473];
    v332 = __OFADD__(v360, 1);
    v339 = v360 + 1;
    v337 = v501;
    v335 = v470;
    if (v332)
    {
      goto LABEL_266;
    }

    goto LABEL_206;
  }

  sub_21D0CF7E0(v351, &qword_27CE5A3E8, &qword_21DC0F428);
  sub_21D2A0F60();
  v131 = swift_allocError();
  *v385 = 0;
  swift_willThrow();
  sub_21D0CF7E0(v450, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v439, type metadata accessor for TTRRemindersListViewModel.Item);
  v383 = v435;
  v384 = v412;
  v412(v425, v435);
LABEL_244:
  sub_21D0CF7E0(v421, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D0CF7E0(v426, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v423, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
  v384(v427, v383);
  sub_21D0CF7E0(v434, &qword_27CE5A438, &qword_21DC0F4A0);
  sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  (*v415)(v451, v433);
  sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v452, type metadata accessor for TTRRemindersListViewModel.Item);
  v386 = v436;
LABEL_245:
  sub_21D106918(v386, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_246:
  if (qword_280D0F188 != -1)
  {
LABEL_276:
    swift_once();
  }

  v387 = sub_21DBF84BC();
  __swift_project_value_buffer(v387, qword_280D0F190);
  v388 = v131;
  v389 = sub_21DBF84AC();
  v390 = sub_21DBFAEBC();

  if (os_log_type_enabled(v389, v390))
  {
    v391 = swift_slowAlloc();
    v392 = swift_slowAlloc();
    v520 = v392;
    *v391 = v465;
    swift_getErrorValue();
    v393 = sub_21DBFC74C();
    v395 = sub_21D0CDFB4(v393, v394, &v520);

    *(v391 + 4) = v395;
    _os_log_impl(&dword_21D0C9000, v389, v390, "Cannot compute move steps for indenting items {error: %s}", v391, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v392);
    MEMORY[0x223D46520](v392, -1, -1);
    MEMORY[0x223D46520](v391, -1, -1);
  }

  else
  {
  }

  return 0;
}

void *TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)(void *a1, char a2, uint64_t (*a3)(void (**)(char *, uint64_t)), char **a4)
{
  v5 = v4;
  v485 = a4;
  v484 = a3;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D00, &qword_21DC0F490);
  v424 = *(v425 - 1);
  MEMORY[0x28223BE20](v425);
  v426 = v420 - v8;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  v428 = *(v459 - 8);
  MEMORY[0x28223BE20](v459);
  v468 = v420 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v442 = v420 - v11;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v476);
  v482 = v420 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v13 - 8);
  v450 = v420 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v451 = v420 - v16;
  MEMORY[0x28223BE20](v17);
  v429 = v420 - v18;
  MEMORY[0x28223BE20](v19);
  v430 = v420 - v20;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v435 = *(v473 - 8);
  MEMORY[0x28223BE20](v473);
  v467 = v420 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v478 = v420 - v23;
  MEMORY[0x28223BE20](v24);
  v441 = v420 - v25;
  MEMORY[0x28223BE20](v26);
  v446 = v420 - v27;
  v456 = sub_21DBF5A5C();
  v434 = *(v456 - 8);
  MEMORY[0x28223BE20](v456);
  v427 = v420 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v445 = v420 - v30;
  MEMORY[0x28223BE20](v31);
  v447 = v420 - v32;
  MEMORY[0x28223BE20](v33);
  v431 = v420 - v34;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A430, &qword_21DC0F498);
  MEMORY[0x28223BE20](v439);
  v438 = v420 - v35;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A438, &qword_21DC0F4A0);
  MEMORY[0x28223BE20](v437);
  v454 = v420 - v36;
  v477 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v477);
  v458 = v420 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v465 = v420 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v40 - 8);
  v494 = v420 - v41;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v493);
  v492 = v420 - v42;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v534);
  v540 = v420 - v43;
  v453 = sub_21DBF5B9C();
  v433 = *(v453 - 8);
  MEMORY[0x28223BE20](v453);
  v470 = v420 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CF0, &qword_21DC0CFB8);
  v474 = *(v475 - 1);
  MEMORY[0x28223BE20](v475);
  v440 = v420 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v483 = v420 - v47;
  v503 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v432 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v462 = v420 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v500 = v420 - v50;
  MEMORY[0x28223BE20](v51);
  v499 = (v420 - v52);
  MEMORY[0x28223BE20](v53);
  v488 = v420 - v54;
  v491 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v449 = *(v491 - 8);
  MEMORY[0x28223BE20](v491);
  v466 = v420 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v452 = v420 - v57;
  MEMORY[0x28223BE20](v58);
  v479 = v420 - v59;
  MEMORY[0x28223BE20](v60);
  v443 = v420 - v61;
  MEMORY[0x28223BE20](v62);
  v448 = v420 - v63;
  MEMORY[0x28223BE20](v64);
  v513 = v420 - v65;
  MEMORY[0x28223BE20](v66);
  v460 = v420 - v67;
  MEMORY[0x28223BE20](v68);
  v497 = v420 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v70 - 8);
  v436 = v420 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v502 = v420 - v73;
  v74 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v489 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v512 = v420 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v511 = (v420 - v77);
  MEMORY[0x28223BE20](v78);
  v519 = v420 - v79;
  MEMORY[0x28223BE20](v80);
  v510 = v420 - v81;
  MEMORY[0x28223BE20](v82);
  v539 = v420 - v83;
  MEMORY[0x28223BE20](v84);
  v538 = v420 - v85;
  MEMORY[0x28223BE20](v86);
  v525 = v420 - v87;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418, &unk_21DC0F480);
  v444 = *(v532 - 8);
  MEMORY[0x28223BE20](v532);
  v517 = (v420 - v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420, &unk_21DC41780);
  MEMORY[0x28223BE20](v89 - 8);
  v505 = v420 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v504 = (v420 - v92);
  MEMORY[0x28223BE20](v93);
  v514 = v420 - v94;
  MEMORY[0x28223BE20](v95);
  v537 = v420 - v96;
  v97 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v97 - 8);
  v501 = v420 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v472 = (v420 - v100);
  v101 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v455 = v420 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v480 = v420 - v105;
  MEMORY[0x28223BE20](v106);
  v461 = v420 - v107;
  MEMORY[0x28223BE20](v108);
  v469 = v420 - v109;
  MEMORY[0x28223BE20](v110);
  v481 = v420 - v111;
  MEMORY[0x28223BE20](v112);
  v506 = v420 - v113;
  MEMORY[0x28223BE20](v114);
  v471 = v420 - v115;
  MEMORY[0x28223BE20](v116);
  v457 = v420 - v117;
  MEMORY[0x28223BE20](v118);
  v521 = v420 - v119;
  MEMORY[0x28223BE20](v120);
  v536 = v420 - v121;
  MEMORY[0x28223BE20](v122);
  *&v486 = v420 - v123;
  MEMORY[0x28223BE20](v124);
  v509 = (v420 - v125);
  MEMORY[0x28223BE20](v126);
  v128 = v420 - v127;
  MEMORY[0x28223BE20](v129);
  v131 = v420 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v132 - 8);
  v524 = v420 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v136 = v420 - v135;
  MEMORY[0x28223BE20](v137);
  v139 = v420 - v138;
  v543 = a1;
  v541 = a2;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v535 = v74;
  v140 = sub_21DBFA42C();
  v464 = 0;
  v141 = v102;
  v545 = v140;
  v142 = v102 + 56;
  v530 = *(v102 + 56);
  v530(v139, 1, 1, v101);

  v143 = sub_21D263398(v139);

  v487 = v139;
  sub_21D0CF7E0(v139, &unk_27CE5CD80, &qword_21DC0CE80);
  v144 = v143;
  v145 = *(v143 + 16);
  v531 = v5;
  v520 = v101;
  v508 = v141;
  if (v145)
  {
    v146 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v147 = v141;
    v498 = v144;
    v148 = v144 + v146;
    sub_21D104E74(v144 + v146, v131, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
    if (EnumCaseMultiPayload)
    {
      v150 = v498;
    }

    else
    {
      v543 = MEMORY[0x277D84F90];
      v151 = *(v147 + 72);
      v152 = v142;
      v153 = v487;
      do
      {
        sub_21D104E74(v148, v128, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v128, v153, type metadata accessor for TTRRemindersListViewModel.Item);
        v530(v153, 0, 1, v520);

        v154 = sub_21D263398(v153);
        v5 = v531;

        sub_21D0CF7E0(v153, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v128, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v154);
        v148 += v151;
        --v145;
      }

      while (v145);

      v150 = v543;
      v142 = v152;
    }
  }

  else
  {

    v150 = MEMORY[0x277D84F90];
  }

  v529 = v142;
  v155 = v532;
  v156 = v520;
  v157 = v486;
  v496 = *(v150 + 16);
  if (v496)
  {
    v158 = 0;
    v463 = ((*(v508 + 80) + 32) & ~*(v508 + 80));
    v495 = v463 + v150;
    v528 = (v444 + 7);
    v527 = (v444 + 6);
    v523 = (v508 + 48);
    v490 = MEMORY[0x277D84F90];
    v522 = (v489 + 56);
    v159 = v472;
    v498 = v150;
    while (v158 < *(v150 + 16))
    {
      v161 = v5;
      v162 = *(v508 + 72);
      v507 = v158;
      v518 = v162;
      v163 = v509;
      sub_21D104E74(v495 + v162 * v158, v509, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v163, v157, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D2A0DC8(v157, v159, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v5 = v161;
        if ((v484(v159) & 1) == 0)
        {
          sub_21D106918(v159, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          goto LABEL_11;
        }

        v164 = v487;
        sub_21D104E74(v509, v487, type metadata accessor for TTRRemindersListViewModel.Item);
        v530(v164, 0, 1, v156);

        v165 = sub_21D263398(v164);

        v166 = v164;
        v167 = v502;
        sub_21D0CF7E0(v166, &unk_27CE5CD80, &qword_21DC0CE80);
        v168 = 0;
        v533 = *(v165 + 16);
        v516 = v165;
        v515 = v463 + v165;
        v169 = v514;
        while (2)
        {
          if (v168 == v533)
          {
            v170 = 1;
            v171 = v533;
          }

          else
          {
            if ((v168 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:

              sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
              sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_252:

              goto LABEL_253;
            }

            if (v168 >= v516[2])
            {
              goto LABEL_259;
            }

            v171 = v168 + 1;
            v172 = &v515[v168 * v518];
            v173 = *(v155 + 48);
            v174 = v517;
            *v517 = v168;
            sub_21D104E74(v172, v174 + v173, type metadata accessor for TTRRemindersListViewModel.Item);
            v156 = v520;
            sub_21D0D523C(v174, v169, &qword_27CE5A418, &unk_21DC0F480);
            v170 = 0;
          }

          (*v528)(v169, v170, 1, v155);
          v175 = v537;
          sub_21D0D523C(v169, v537, &qword_27CE5A420, &unk_21DC41780);
          if ((*v527)(v175, 1, v155) == 1)
          {

            v159 = v472;
            sub_21D106918(v472, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            v5 = v531;
            v157 = v486;
            goto LABEL_11;
          }

          v176 = v169;
          v177 = v167;
          v526 = *v537;
          v178 = v536;
          sub_21D2A0DC8(v537 + *(v155 + 48), v536, type metadata accessor for TTRRemindersListViewModel.Item);
          v179 = v531[10];
          sub_21D104E74(v178, v136, type metadata accessor for TTRRemindersListViewModel.Item);
          v530(v136, 0, 1, v156);
          v180 = v136;
          v181 = v136;
          v182 = v524;
          sub_21D0D3954(v181, v524, &unk_27CE5CD80, &qword_21DC0CE80);
          if ((*v523)(v182, 1, v156) == 1)
          {

            sub_21D0CF7E0(v182, &unk_27CE5CD80, &qword_21DC0CE80);
            (*v522)(v177, 1, 1, v535);
            sub_21D0CF7E0(v177, &qword_27CE5FB90, &unk_21DC09290);
            swift_beginAccess();
            v183 = *(v179 + 16);
            if (v183 >> 62)
            {
              v184 = sub_21DBFBD7C();
            }

            else
            {
              v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v136 = v180;
            v168 = v171;
            v167 = v177;
            v169 = v176;
LABEL_56:
            sub_21D0CF7E0(v136, &unk_27CE5CD80, &qword_21DC0CE80);

            if (v184 > 0)
            {
              v203 = v536;
              v204 = v487;
              sub_21D104E74(v536, v487, type metadata accessor for TTRRemindersListViewModel.Item);
              v530(v204, 0, 1, v156);

              v205 = sub_21D263398(v204);

              sub_21D0CF7E0(v204, &unk_27CE5CD80, &qword_21DC0CE80);
              v206 = v475[12];
              v207 = v475[16];
              v208 = v475[20];
              v209 = v483;
              sub_21D104E74(v509, v483, type metadata accessor for TTRRemindersListViewModel.Item);
              sub_21D104E74(v203, v209 + v206, type metadata accessor for TTRRemindersListViewModel.Item);
              *(v209 + v207) = v526;
              *(v209 + v208) = v205;
              v210 = v490;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v210 = sub_21D211D68(0, v210[2] + 1, 1, v210);
              }

              v490 = v210;
              v212 = v210[2];
              v211 = v210[3];
              v156 = v520;
              v167 = v502;
              if (v212 >= v211 >> 1)
              {
                v490 = sub_21D211D68((v211 > 1), v212 + 1, 1, v490);
              }

              sub_21D106918(v536, type metadata accessor for TTRRemindersListViewModel.Item);
              v213 = v490;
              v490[2] = v212 + 1;
              sub_21D0D523C(v483, v213 + ((*(v474 + 80) + 32) & ~*(v474 + 80)) + *(v474 + 72) * v212, &qword_27CE59CF0, &qword_21DC0CFB8);
            }

            else
            {
              sub_21D106918(v536, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            v155 = v532;
            continue;
          }

          break;
        }

        sub_21D104E74(v182, v521, type metadata accessor for TTRRemindersListViewModel.Item);
        v185 = swift_getEnumCaseMultiPayload();
        v186 = v182;
        if (v185 <= 5)
        {
          v136 = v180;
          if ((v185 - 2) < 3)
          {
            v168 = v171;
            v187 = v497;
            sub_21D2A0DC8(v521, v497, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v188 = v187;
            v167 = v502;
            sub_21D2A0DC8(v188, v502, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v189 = v535;
            swift_storeEnumTagMultiPayload();
            v190 = v179;

            goto LABEL_49;
          }

          if (v185 >= 2)
          {
            v168 = v171;
            v190 = v179;

            sub_21D106918(v521, type metadata accessor for TTRRemindersListViewModel.Item);
            v167 = v177;
            *v177 = 0;
            v189 = v535;
          }

          else
          {
            v192 = v501;
            sub_21D2A0DC8(v521, v501, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D104E74(v192, v499, type metadata accessor for TTRRemindersListViewModel.SectionID);
            LOBYTE(v192) = swift_getEnumCaseMultiPayload();

            v167 = v177;
            v193 = 1 << v192;
            v168 = v171;
            if (((1 << v192) & 0x17E) != 0)
            {
              sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.SectionID);
              v194 = v488;
              v190 = v179;
              goto LABEL_46;
            }

            v194 = v488;
            v190 = v179;
            if ((v193 & 0x81) != 0)
            {
LABEL_46:
              v196 = v501;
              sub_21D104E74(v501, v194, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D106918(v196, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            }

            else
            {
              sub_21D106918(v501, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
              *v194 = *v499;
              swift_storeEnumTagMultiPayload();
            }

            sub_21D2A0DC8(v194, v177, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v189 = v535;
          }

          swift_storeEnumTagMultiPayload();
LABEL_49:
          sub_21D106918(v186, type metadata accessor for TTRRemindersListViewModel.Item);
          (*v522)(v167, 0, 1, v189);
          sub_21D2A0DC8(v167, v525, type metadata accessor for TTRRemindersListViewModel.ItemID);
          swift_beginAccess();
          v197 = *(v190 + 24);
          if (*(v197 + 16) && (v198 = sub_21D181E00(), (v199 & 1) != 0))
          {
            v200 = *(*(v197 + 56) + 8 * v198);
            swift_endAccess();
            v201 = *(*v200 + 136);
            swift_beginAccess();
            v202 = *(v200 + v201);
            if (v202 >> 62)
            {
              v184 = sub_21DBFBD7C();
            }

            else
            {
              v184 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v156 = v520;
          }

          else
          {
            swift_endAccess();
            v184 = 0;
          }

          v169 = v514;
          sub_21D106918(v525, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_56;
        }

        v136 = v180;
        if (v185 <= 7)
        {
          v168 = v171;
          v167 = v177;
          if (v185 == 6)
          {
            v195 = 1;
            goto LABEL_39;
          }

          *v177 = 2;
        }

        else
        {
          v167 = v177;
          v168 = v171;
          if (v185 != 8)
          {
            v190 = v179;
            if (v185 == 9)
            {
              v191 = 3;
            }

            else
            {
              v191 = 5;
            }

            *v177 = v191;
            v189 = v535;
            swift_storeEnumTagMultiPayload();

            goto LABEL_49;
          }

          v195 = 4;
LABEL_39:
          *v167 = v195;
        }

        v189 = v535;
        swift_storeEnumTagMultiPayload();
        v190 = v179;

        sub_21D106918(v521, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_49;
      }

      sub_21D106918(v157, type metadata accessor for TTRRemindersListViewModel.Item);
      v5 = v161;
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v214 = sub_21DBF84BC();
      __swift_project_value_buffer(v214, qword_280D0F190);
      v215 = sub_21DBF84AC();
      v216 = sub_21DBFAECC();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        *v217 = 0;
        _os_log_impl(&dword_21D0C9000, v215, v216, "Unexpected item type", v217, 2u);
        v157 = v486;
        MEMORY[0x223D46520](v217, -1, -1);
      }

      v155 = v532;
LABEL_11:
      v160 = v507 + 1;
      sub_21D106918(v509, type metadata accessor for TTRRemindersListViewModel.Item);
      v158 = v160;
      v150 = v498;
      if (v160 == v496)
      {

        v219 = v490;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    swift_once();
    goto LABEL_254;
  }

  v219 = MEMORY[0x277D84F90];
LABEL_75:
  v220 = v505;
  v221 = v506;
  if (!*(v545 + 16))
  {
LABEL_234:
    v516 = MEMORY[0x277D84F90];
    v484 = MEMORY[0x277D84F90];
LABEL_235:

    return v516;
  }

  v527 = (v444 + 7);
  v526 = (v444 + 6);
  v521 = 0x800000021DC43E30;
  v518 = 0x800000021DC43E00;
  v523 = 0x800000021DC43DE0;
  v222 = (v432 + 6);
  v463 = (v433 + 16);
  v485 = (v434 + 16);
  v432 = (v434 + 32);
  v515 = (v435 + 48);
  v472 = (v434 + 8);
  v444 = (v433 + 8);
  *&v218 = 136315138;
  v486 = v218;
  v484 = MEMORY[0x277D84F90];
  v516 = MEMORY[0x277D84F90];
  v522 = v222;
  while (1)
  {
    if (!v219[2])
    {
      goto LABEL_235;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v223 = v219[2];
      if (!v223)
      {
        goto LABEL_233;
      }

      goto LABEL_80;
    }

    v219 = sub_21D256C7C(v219);
    v223 = v219[2];
    if (!v223)
    {
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

LABEL_80:
    v224 = v223 - 1;
    v225 = v219 + ((*(v474 + 80) + 32) & ~*(v474 + 80)) + *(v474 + 72) * v224;
    v490 = v219;
    v219[2] = v224;
    v226 = v440;
    sub_21D0D523C(v225, v440, &qword_27CE59CF0, &qword_21DC0CFB8);
    v227 = v475[12];
    v514 = *(v226 + v475[16]);
    v228 = *(v226 + v475[20]);
    sub_21D2A0DC8(v226, v457, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v226 + v227, v471, type metadata accessor for TTRRemindersListViewModel.Item);
    v229 = v464;
    sub_21D285AF8(v460);
    v464 = v229;
    if (v229)
    {
      goto LABEL_260;
    }

    sub_21DBF5B8C();
    v230 = 0;
    v231 = v228[2];
    v528 = v228;
    v525 = v231;
LABEL_84:
    if (v230 == v231)
    {
      v232 = 1;
      v533 = v231;
      v233 = v532;
    }

    else
    {
      if ((v230 & 0x8000000000000000) != 0)
      {
        goto LABEL_266;
      }

      if (v230 >= v228[2])
      {
        goto LABEL_267;
      }

      v234 = v230 + 1;
      v235 = v228 + ((*(v508 + 80) + 32) & ~*(v508 + 80)) + *(v508 + 72) * v230;
      v233 = v532;
      v236 = *(v532 + 48);
      v237 = v517;
      *v517 = v230;
      sub_21D104E74(v235, v237 + v236, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v237, v220, &qword_27CE5A418, &unk_21DC0F480);
      v232 = 0;
      v533 = v234;
    }

    v238 = v504;
    (*v527)(v220, v232, 1, v233);
    sub_21D0D523C(v220, v238, &qword_27CE5A420, &unk_21DC41780);
    if ((*v526)(v238, 1, v233) != 1)
    {
      v524 = *v238;
      sub_21D2A0DC8(v238 + *(v233 + 48), v221, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v538);
      v239 = v545;
      if (!*(v545 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(&v543), v240 = sub_21DBFC82C(), v241 = -1 << *(v239 + 32), v242 = v240 & ~v241, ((*(v239 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0))
      {
LABEL_82:
        sub_21D106918(v538, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v221 = v506;
        sub_21D106918(v506, type metadata accessor for TTRRemindersListViewModel.Item);
        v220 = v505;
        goto LABEL_83;
      }

      v536 = ~v241;
      v537 = *(v489 + 72);
      while (2)
      {
        v245 = v539;
        sub_21D104E74(*(v239 + 48) + v537 * v242, v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v246 = *(v534 + 48);
        v247 = v540;
        sub_21D104E74(v245, v540, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v538, v247 + v246, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v248 = swift_getEnumCaseMultiPayload();
        if (v248 <= 1)
        {
          if (!v248)
          {
            v249 = v510;
            sub_21D104E74(v540, v510, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v250 = type metadata accessor for TTRRemindersListViewModel.SectionID;
              goto LABEL_122;
            }

            v271 = v540 + v246;
            v272 = v500;
            sub_21D2A0DC8(v271, v500, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v273 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v249, v272);
            sub_21D106918(v272, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v249, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v273)
            {
              goto LABEL_164;
            }

LABEL_94:
            sub_21D106918(v540, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
            v242 = (v242 + 1) & v536;
            if (((*(v239 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0)
            {
              goto LABEL_82;
            }

            continue;
          }

          v249 = v519;
          sub_21D104E74(v540, v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v253 = v540 + v246;
            v254 = v513;
            sub_21D2A0DC8(v253, v513, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            if (sub_21DBFB63C())
            {
              v255 = *(v491 + 20);
              v256 = *(v493 + 48);
              v257 = v249 + v255;
              v258 = v492;
              sub_21D0D3954(v257, v492, &unk_27CE5CD70, &unk_21DC09230);
              sub_21D0D3954(v254 + v255, v258 + v256, &unk_27CE5CD70, &unk_21DC09230);
              v259 = *v522;
              v260 = v503;
              if ((*v522)(v258, 1, v503) == 1)
              {
                sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v261 = v259(v258 + v256, 1, v260) == 1;
                v262 = v258;
                if (v261)
                {
                  sub_21D0CF7E0(v258, &unk_27CE5CD70, &unk_21DC09230);
LABEL_163:
                  sub_21D106918(v513, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_164:
                  sub_21D106918(v540, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v221 = v506;
                  sub_21D104E74(v506, v481, type metadata accessor for TTRRemindersListViewModel.Item);
                  v284 = swift_getEnumCaseMultiPayload();
                  if (v284 <= 3)
                  {
                    v220 = v505;
                    v285 = v469;
                    if (v284 >= 2)
                    {
                      goto LABEL_177;
                    }

LABEL_169:
                    sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_170:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_171;
                  }

                  v220 = v505;
                  v285 = v469;
                  if ((v284 - 5) < 4)
                  {
                    goto LABEL_169;
                  }

                  if ((v284 - 9) < 2)
                  {
                    goto LABEL_170;
                  }

LABEL_177:
                  v295 = v465;
                  sub_21D2A0DC8(v481, v465, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v296 = swift_getEnumCaseMultiPayload();
                  if (v296 < 2)
                  {
                    sub_21D106918(v295, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v297 = v436;
                    v298 = v538;
                    sub_21D1AAD70(v538, v436);
                    sub_21D0CF7E0(v297, &qword_27CE5FB90, &unk_21DC09290);
                    sub_21D106918(v298, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v221, type metadata accessor for TTRRemindersListViewModel.Item);
                    goto LABEL_83;
                  }

                  v285 = v469;
                  if (v296 == 2)
                  {
                    sub_21D106918(v465, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_171:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v286 = sub_21DBF84BC();
                  __swift_project_value_buffer(v286, qword_280D0F190);
                  sub_21D104E74(v221, v285, type metadata accessor for TTRRemindersListViewModel.Item);
                  v287 = sub_21DBF84AC();
                  v288 = sub_21DBFAECC();
                  if (os_log_type_enabled(v287, v288))
                  {
                    v289 = swift_slowAlloc();
                    v290 = swift_slowAlloc();
                    v543 = v290;
                    *v289 = v486;
                    v291 = sub_21D25D250();
                    v293 = v292;
                    sub_21D106918(v285, type metadata accessor for TTRRemindersListViewModel.Item);
                    v294 = sub_21D0CDFB4(v291, v293, &v543);
                    v221 = v506;

                    *(v289 + 4) = v294;
                    _os_log_impl(&dword_21D0C9000, v287, v288, "TTRRemindersListTreeViewModel: item does not support outdent {item: %s}", v289, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v290);
                    MEMORY[0x223D46520](v290, -1, -1);
                    MEMORY[0x223D46520](v289, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v285, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  sub_21D106918(v538, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v221, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_83:
                  v228 = v528;
                  v231 = v525;
                  v230 = v533;
                  goto LABEL_84;
                }

LABEL_134:
                sub_21D0CF7E0(v262, &qword_27CE58388, &unk_21DC0F470);
              }

              else
              {
                sub_21D0D3954(v258, v494, &unk_27CE5CD70, &unk_21DC09230);
                if (v259(v258 + v256, 1, v260) == 1)
                {
                  sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v494, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v262 = v258;
                  goto LABEL_134;
                }

                v281 = v462;
                sub_21D2A0DC8(v258 + v256, v462, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v282 = v494;
                v283 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v494, v281);
                sub_21D106918(v281, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v282, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v258, &unk_27CE5CD70, &unk_21DC09230);
                if (v283)
                {
                  goto LABEL_163;
                }
              }
            }

            else
            {
              sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v513, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_94;
          }

          sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v250 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_122:
          v269 = v250;
          v270 = v249;
LABEL_124:
          sub_21D106918(v270, v269);
LABEL_125:
          sub_21D0CF7E0(v540, &qword_27CE58AD0, &qword_21DC0A050);
          goto LABEL_95;
        }

        break;
      }

      if (v248 == 2)
      {
        v251 = v511;
        sub_21D104E74(v540, v511, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v252 = *v251;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v243 = *(v540 + v246);
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v244 = sub_21DBFB63C();

          sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v244)
          {
            goto LABEL_164;
          }

          goto LABEL_94;
        }

        sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_125;
      }

      v263 = v512;
      sub_21D104E74(v540, v512, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v269 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v270 = v539;
        goto LABEL_124;
      }

      v264 = *v263;
      if (v264 > 2)
      {
        if (v264 == 3)
        {
          v267 = 0xD00000000000001FLL;
          v274 = &v542;
        }

        else
        {
          if (v264 == 4)
          {
            v268 = 0xE700000000000000;
            v267 = 0x6D657449706974;
            goto LABEL_138;
          }

          v267 = 0xD00000000000001DLL;
          v274 = &v544;
        }

        v268 = *(v274 - 32);
      }

      else
      {
        v265 = 0xD000000000000012;
        if (v264 == 1)
        {
          v265 = 0x7367617468736168;
        }

        v266 = 0xEC0000006D657449;
        if (v264 != 1)
        {
          v266 = v523;
        }

        if (*v263)
        {
          v267 = v265;
        }

        else
        {
          v267 = 0x6574656C706D6F63;
        }

        if (*v263)
        {
          v268 = v266;
        }

        else
        {
          v268 = 0xED00006D65744964;
        }
      }

LABEL_138:
      v275 = *(v540 + v246);
      if (v275 <= 2)
      {
        if (*(v540 + v246))
        {
          if (v275 == 1)
          {
            v276 = 0x7367617468736168;
          }

          else
          {
            v276 = 0xD000000000000012;
          }

          if (v275 == 1)
          {
            v277 = 0xEC0000006D657449;
          }

          else
          {
            v277 = v523;
          }

          if (v267 != v276)
          {
LABEL_158:
            v280 = sub_21DBFC64C();

            sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v280)
            {
              goto LABEL_164;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v277 = 0xED00006D65744964;
          if (v267 != 0x6574656C706D6F63)
          {
            goto LABEL_158;
          }
        }

LABEL_157:
        if (v268 == v277)
        {

          sub_21D106918(v539, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_164;
        }

        goto LABEL_158;
      }

      if (v275 == 3)
      {
        v278 = 0xD00000000000001FLL;
        v279 = &v542;
      }

      else
      {
        if (v275 == 4)
        {
          v277 = 0xE700000000000000;
          if (v267 != 0x6D657449706974)
          {
            goto LABEL_158;
          }

          goto LABEL_157;
        }

        v278 = 0xD00000000000001DLL;
        v279 = &v544;
      }

      v277 = *(v279 - 32);
      if (v267 != v278)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    sub_21D104E74(v460, v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v299 = v438;
    (*v463)(v438, v470, v453);
    v300 = v439;
    v301 = *(v439 + 36);
    v302 = sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    sub_21DBFAC3C();
    v435 = v302;
    sub_21DBFACAC();
    v303 = v454;
    sub_21D0D3954(v299, v454, &qword_27CE5A430, &qword_21DC0F498);
    v304 = *(v437 + 36);
    v434 = *v485;
    (v434)(v303 + v304, v299 + v301, v456);
    v305 = v299;
    v306 = v304;
    sub_21D0CF7E0(v305, &qword_27CE5A430, &qword_21DC0F498);
    v307 = *(v300 + 40);
    v308 = sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    if ((sub_21DBFA10C() & 1) == 0)
    {
      break;
    }

LABEL_182:

    sub_21D0CF7E0(v454, &qword_27CE5A438, &qword_21DC0F4A0);
    sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v444)(v470, v453);
    sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.Item);
    v219 = v490;
    if (!*(v545 + 16))
    {
      goto LABEL_235;
    }
  }

  v533 = 0;
  v483 = 0;
  v422 = v514 + 1;
  v309 = __OFADD__(v514, 1);
  v423 = v309;
  v421 = v306;
  v420[2] = v307;
  v420[1] = v308;
LABEL_188:
  v310 = v431;
  v311 = v456;
  (v434)(v431, v454 + v306, v456);
  sub_21DBFACBC();
  (*v432)(v447, v310, v311);
  v312 = sub_21DBF5BAC();
  if ((v312 & 0x8000000000000000) != 0)
  {
    goto LABEL_272;
  }

  v313 = v312;
  if (v312 >= v528[2])
  {
    goto LABEL_273;
  }

  v314 = (*(v508 + 80) + 32) & ~*(v508 + 80);
  v497 = *(v508 + 72);
  sub_21D104E74(v528 + v314 + v497 * v312, v461, type metadata accessor for TTRRemindersListViewModel.Item);
  v315 = v464;
  sub_21D285AF8(v443);
  v464 = v315;
  if (v315)
  {

    sub_21D106918(v461, type metadata accessor for TTRRemindersListViewModel.Item);
    (*v472)(v447, v456);
    sub_21D0CF7E0(v454, &qword_27CE5A438, &qword_21DC0F4A0);
    sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v444)(v470, v453);
    sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.Item);

    goto LABEL_251;
  }

  v536 = v314;
  v317 = v531[3];
  v316 = v531[4];
  ObjectType = swift_getObjectType();
  v319 = v487;
  sub_21D104E74(v471, v487, type metadata accessor for TTRRemindersListViewModel.Item);
  v320 = v520;
  v321 = v530;
  v530(v319, 0, 1, v520);
  v537 = v313;
  v322 = __OFSUB__(v313, v533);
  v323 = v313 - v533;
  if (v322)
  {
    goto LABEL_274;
  }

  v324 = v482;
  v321(v482, 1, 1, v320);
  sub_21D0F02F4(v319, v324, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v324 + *(v476 + 36)) = v323;
  v325 = v324;
  v326 = *(v316 + 32);
  v327 = v430;
  v524 = v317;
  v514 = ObjectType;
  v328 = ObjectType;
  v329 = v316 + 32;
  v498 = v326;
  v326(v324, v328, v316);
  v330 = v327;
  sub_21D0CF7E0(v325, &qword_27CE58900, &unk_21DC207C0);
  v331 = *v515;
  v332 = v327;
  v333 = v473;
  if ((*v515)(v332, 1, v473) == 1)
  {

    sub_21D0CF7E0(v330, &qword_27CE5A3E8, &qword_21DC0F428);
    sub_21D2A0F60();
    v416 = swift_allocError();
    *v417 = 0;
    v464 = v416;
    swift_willThrow();
LABEL_264:
    sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v461, type metadata accessor for TTRRemindersListViewModel.Item);
    (*v472)(v447, v456);
    sub_21D0CF7E0(v454, &qword_27CE5A438, &qword_21DC0F4A0);
    sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v444)(v470, v453);
    sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
    v401 = v457;
    goto LABEL_247;
  }

  v334 = v316;
  sub_21D0D523C(v330, v446, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D104E74(v457, v319, type metadata accessor for TTRRemindersListViewModel.Item);
  v321(v319, 0, 1, v520);
  if (v423)
  {
    goto LABEL_275;
  }

  v509 = v331;
  v335 = &v422[v483];
  if (__OFADD__(v422, v483))
  {
    goto LABEL_276;
  }

  v336 = v482;
  v530(v482, 1, 1, v520);
  sub_21D0F02F4(v319, v336, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v336 + *(v476 + 36)) = v335;
  v337 = v429;
  v498(v336, v514, v334);
  sub_21D0CF7E0(v336, &qword_27CE58900, &unk_21DC207C0);
  if ((v509)(v337, 1, v333) == 1)
  {

    sub_21D0CF7E0(v337, &qword_27CE5A3E8, &qword_21DC0F428);
    sub_21D2A0F60();
    v418 = swift_allocError();
    *v419 = 0;
    v464 = v418;
    swift_willThrow();
    sub_21D0CF7E0(v446, &qword_27CE59D38, &qword_21DC0D020);
    goto LABEL_264;
  }

  v507 = v329;
  v338 = v441;
  sub_21D0D523C(v337, v441, &qword_27CE59D38, &qword_21DC0D020);
  v339 = *(v459 + 48);
  v340 = *(v459 + 64);
  v341 = v442;
  sub_21D104E74(v461, v442, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v446, v341 + v339, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D0D3954(v338, v341 + v340, &qword_27CE59D38, &qword_21DC0D020);
  v342 = v516;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v342 = sub_21D211B38(0, v342[2] + 1, 1, v342);
  }

  v344 = v342[2];
  v343 = v342[3];
  v345 = v476;
  if (v344 >= v343 >> 1)
  {
    v342 = sub_21D211B38((v343 > 1), v344 + 1, 1, v342);
  }

  v342[2] = v344 + 1;
  v495 = (*(v428 + 80) + 32) & ~*(v428 + 80);
  v496 = *(v428 + 72);
  sub_21D0D523C(v442, v342 + v495 + v496 * v344, &qword_27CE59D08, &qword_21DC0CFD0);
  v322 = __OFADD__(v483++, 1);
  if (v322)
  {
    goto LABEL_277;
  }

  v346 = v533 + 1;
  if (__OFADD__(v533, 1))
  {
    goto LABEL_278;
  }

  sub_21DBF5ACC();
  v347 = v427;
  sub_21DBF5A3C();
  v348 = sub_21DBF5A4C();
  v433 = *v472;
  v433(v347, v456);
  v349 = v525;
  if ((v348 & 1) == 0)
  {
    v349 = sub_21DBF5BAC();
  }

  if (v349 <= v537)
  {
    goto LABEL_279;
  }

  v502 = v334;
  v350 = (v537 + 1);
  v351 = v528;
  v352 = (v528 + v536 + v497 * (v537 + 1));
  v537 = MEMORY[0x277D84F90];
  v353 = v346;
  v354 = v458;
  v488 = v349;
  while (1)
  {
    v516 = v342;
    if (v349 == v350)
    {
      v533 = v353;
      v383 = v425[12];
      v384 = v425[16];
      v385 = v425[20];
      v386 = v426;
      sub_21D104E74(v457, v426, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v448, v386 + v383, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D104E74(v443, v386 + v384, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v386 + v385) = v537;
      v387 = v484;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v387 = sub_21D211D44(0, *(v387 + 2) + 1, 1, v387);
      }

      v220 = v505;
      v221 = v506;
      v484 = v387;
      v389 = *(v387 + 2);
      v388 = *(v387 + 3);
      if (v389 >= v388 >> 1)
      {
        v484 = sub_21D211D44((v388 > 1), v389 + 1, 1, v484);
      }

      v390 = v456;
      v391 = v433;
      v433(v445, v456);
      sub_21D0CF7E0(v441, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D0CF7E0(v446, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v461, type metadata accessor for TTRRemindersListViewModel.Item);
      v391(v447, v390);
      v392 = v448;
      sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v393 = v484;
      *(v484 + 2) = v389 + 1;
      sub_21D0D523C(v426, v393 + ((*(v424 + 80) + 32) & ~*(v424 + 80)) + *(v424 + 72) * v389, &qword_27CE59D00, &qword_21DC0F490);
      sub_21D2A0DC8(v443, v392, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v306 = v421;
      if (sub_21DBFA10C())
      {
        goto LABEL_182;
      }

      goto LABEL_188;
    }

    if (v350 >= v349)
    {
      goto LABEL_268;
    }

    if (v350 >= v351[2])
    {
      goto LABEL_269;
    }

    v536 = v350;
    v355 = v480;
    sub_21D104E74(v352, v480, type metadata accessor for TTRRemindersListViewModel.Item);
    v356 = *(v537 + 16);
    v357 = v355;
    v358 = v455;
    sub_21D104E74(v357, v455, type metadata accessor for TTRRemindersListViewModel.Item);
    v359 = swift_getEnumCaseMultiPayload();
    if (v359 >= 4)
    {
      if (v359 > 4)
      {
        if (v359 > 7)
        {
          v402 = v433;
          if (v359 != 8)
          {

            goto LABEL_248;
          }
        }

        else
        {
          v402 = v433;
        }

        sub_21D106918(v358, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_248;
      }
    }

    else if (v359 <= 1)
    {

      sub_21D106918(v358, type metadata accessor for TTRRemindersListViewModel.Item);
      v402 = v433;
LABEL_248:
      swift_storeEnumTagMultiPayload();
LABEL_250:
      sub_21D2A0F60();
      v403 = swift_allocError();
      *v404 = 1;
      v464 = v403;
      swift_willThrow();
      sub_21D106918(v480, type metadata accessor for TTRRemindersListViewModel.Item);
      v405 = v456;
      v402(v445, v456);
      sub_21D0CF7E0(v441, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D0CF7E0(v446, &qword_27CE59D38, &qword_21DC0D020);
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v461, type metadata accessor for TTRRemindersListViewModel.Item);
      v402(v447, v405);
      sub_21D0CF7E0(v454, &qword_27CE5A438, &qword_21DC0F4A0);
      sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v444)(v470, v453);
      sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_251:

      goto LABEL_252;
    }

    sub_21D2A0DC8(v358, v354, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v360 = swift_getEnumCaseMultiPayload();
    if (v360 >= 2)
    {
      if (v360 == 2)
      {

        sub_21D106918(v354, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      else
      {
      }

      v402 = v433;
      goto LABEL_250;
    }

    v501 = v356;
    v361 = v452;
    sub_21D2A0DC8(v354, v452, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v361, v479, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v362 = v487;
    sub_21D104E74(v471, v487, type metadata accessor for TTRRemindersListViewModel.Item);
    v363 = v520;
    v364 = v530;
    v530(v362, 0, 1, v520);
    v365 = v536 - v353;
    if (__OFSUB__(v536, v353))
    {
      goto LABEL_270;
    }

    v499 = v352;
    v533 = v353;
    v366 = v482;
    v364(v482, 1, 1, v363);
    sub_21D0F02F4(v362, v366, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v366 + *(v345 + 36)) = v365;
    v367 = v451;
    v368 = v498;
    v498(v482, v514, v502);
    v369 = v482;
    sub_21D0CF7E0(v482, &qword_27CE58900, &unk_21DC207C0);
    if ((v509)(v367, 1, v473) == 1)
    {

      sub_21D0CF7E0(v367, &qword_27CE5A3E8, &qword_21DC0F428);
      sub_21D2A0F60();
      v395 = swift_allocError();
      *v396 = 0;
      v464 = v395;
      swift_willThrow();
      sub_21D106918(v479, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v480, type metadata accessor for TTRRemindersListViewModel.Item);
      v397 = v456;
      v398 = v433;
      v433(v445, v456);
      goto LABEL_246;
    }

    sub_21D0D523C(v367, v478, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D104E74(v461, v362, type metadata accessor for TTRRemindersListViewModel.Item);
    v364(v362, 0, 1, v363);
    v364(v369, 1, 1, v363);
    sub_21D0F02F4(v362, v369, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v369 + *(v476 + 36)) = v501;
    v370 = v450;
    v368(v369, v514, v502);
    sub_21D0CF7E0(v369, &qword_27CE58900, &unk_21DC207C0);
    if ((v509)(v370, 1, v473) == 1)
    {
      break;
    }

    v371 = v467;
    sub_21D0D523C(v370, v467, &qword_27CE59D38, &qword_21DC0D020);
    v372 = *(v459 + 48);
    v373 = *(v459 + 64);
    v374 = v468;
    sub_21D104E74(v480, v468, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v478, v374 + v372, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0D3954(v371, v374 + v373, &qword_27CE59D38, &qword_21DC0D020);
    v342 = v516;
    v376 = v516[2];
    v375 = v516[3];
    if (v376 >= v375 >> 1)
    {
      v342 = sub_21D211B38((v375 > 1), v376 + 1, 1, v516);
    }

    v354 = v458;
    v377 = v536;
    v378 = v499;
    v342[2] = v376 + 1;
    sub_21D0D523C(v468, v342 + v495 + v376 * v496, &qword_27CE59D08, &qword_21DC0CFD0);
    sub_21D104E74(v479, v466, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v345 = v476;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v537 = sub_21D211D1C(0, *(v537 + 16) + 1, 1, v537);
    }

    v381 = *(v537 + 16);
    v380 = *(v537 + 24);
    if (v381 >= v380 >> 1)
    {
      v537 = sub_21D211D1C((v380 > 1), v381 + 1, 1, v537);
    }

    sub_21D0CF7E0(v467, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D0CF7E0(v478, &qword_27CE59D38, &qword_21DC0D020);
    sub_21D106918(v479, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v480, type metadata accessor for TTRRemindersListViewModel.Item);
    v382 = v537;
    *(v537 + 16) = v381 + 1;
    sub_21D2A0DC8(v466, v382 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v381, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v350 = (v377 + 1);
    v352 = (v378 + v497);
    v353 = v533 + 1;
    v351 = v528;
    v349 = v488;
    if (__OFADD__(v533, 1))
    {
      goto LABEL_271;
    }
  }

  sub_21D0CF7E0(v370, &qword_27CE5A3E8, &qword_21DC0F428);
  sub_21D2A0F60();
  v399 = swift_allocError();
  *v400 = 0;
  v464 = v399;
  swift_willThrow();
  sub_21D0CF7E0(v478, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v479, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v480, type metadata accessor for TTRRemindersListViewModel.Item);
  v397 = v456;
  v398 = v433;
  v433(v445, v456);
LABEL_246:
  sub_21D0CF7E0(v441, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D0CF7E0(v446, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v461, type metadata accessor for TTRRemindersListViewModel.Item);
  v398(v447, v397);
  sub_21D0CF7E0(v454, &qword_27CE5A438, &qword_21DC0F4A0);
  sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  (*v444)(v470, v453);
  sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v471, type metadata accessor for TTRRemindersListViewModel.Item);
  v401 = v457;
LABEL_247:
  sub_21D106918(v401, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_253:
  if (qword_280D0F188 != -1)
  {
    goto LABEL_280;
  }

LABEL_254:
  v406 = sub_21DBF84BC();
  __swift_project_value_buffer(v406, qword_280D0F190);
  v407 = v464;
  v408 = v464;
  v409 = sub_21DBF84AC();
  v410 = sub_21DBFAEBC();

  if (os_log_type_enabled(v409, v410))
  {
    v411 = swift_slowAlloc();
    v412 = swift_slowAlloc();
    v543 = v412;
    *v411 = v486;
    swift_getErrorValue();
    v413 = sub_21DBFC74C();
    v415 = sub_21D0CDFB4(v413, v414, &v543);

    *(v411 + 4) = v415;
    _os_log_impl(&dword_21D0C9000, v409, v410, "Cannot compute move steps for indenting items {error: %s}", v411, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v412);
    MEMORY[0x223D46520](v412, -1, -1);
    MEMORY[0x223D46520](v411, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListTreeViewModel.diff(with:updatedReminderObjectIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v15[5] = v7;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v15[3] = swift_getObjectType();
  v15[4] = *(v11 + 8);
  v15[0] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v3;
  v12[4] = a1;
  v13 = *(v8 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_21DBF8E0C();

  TTRTreeContentsQueryable<>.diff(with:contentEqualityChecker:)(v15, sub_21D2A0FB4, v12, ObjectType, v13, &protocol witness table for TTRRemindersListViewModel.Item, &v16);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v15);
  *a3 = v16;
  return result;
}

BOOL sub_21D2902C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A530, &unk_21DC0FA20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29[-v13];
  v16 = *(v15 + 56);
  sub_21D104E74(a1, &v29[-v13], type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D104E74(a2, &v14[v16], type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  if (swift_getEnumCaseMultiPayload() == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D2A0DC8(&v14[v16], v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v17 = sub_21D1E21BC(*v11, a3);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v17)
    {
      return 0;
    }
  }

  else
  {
    v18 = _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(a1, a2);
    sub_21D0CF7E0(v14, &qword_27CE5A530, &unk_21DC0FA20);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  v19 = sub_21D2916C8(v8, sub_21D181E00);

  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v19)
  {
    v20 = v19 + *(*v19 + 128);
    swift_beginAccess();
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    v23 = sub_21D2916C8(v8, sub_21D181E00);

    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v23)
    {
      v24 = v23 + *(*v23 + 128);
      swift_beginAccess();
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);

      if (v22)
      {
        return (v26 & 1) != 0;
      }

      if (v21 == v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t TTRRemindersListTreeViewModel.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + 80);
  v9 = MEMORY[0x277D84F90];
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  sub_21D345F70(v3, v4, v4, &v9);
  sub_21D0CF7E0(v3, &unk_27CE5CD80, &qword_21DC0CE80);
  v8 = v9;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v6 = sub_21DBFA07C();

  swift_bridgeObjectRelease_n();
  return v6;
}

uint64_t sub_21D290848(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, __n128), void (*a4)(char *, uint64_t, uint64_t, uint64_t *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v17 = MEMORY[0x277D84F90];
  v13 = a3(0, v10);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  a4(v12, v4, v4, &v17);

  sub_21D0CF7E0(v12, a1, a2);
  v16 = v17;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v14 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_21D2909DC()
{

  v0 = sub_21D290848(&unk_27CE5CD80, &qword_21DC0CE80, type metadata accessor for TTRRemindersListViewModel.Item, sub_21D345F70);

  return v0;
}

uint64_t TTRRemindersListTreeViewModel.editingSessionState(for:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 128);
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

uint64_t TTRRemindersListTreeViewModel.removeEditingSessionState(for:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  result = sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v3)
  {
    v5 = *(*v3 + 128);
    swift_beginAccess();
    *(v3 + v5) = 0;
  }

  return result;
}

uint64_t sub_21D290CA4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  result = sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v3)
  {
    v5 = *(*v3 + 128);
    swift_beginAccess();
    *(v3 + v5) = 0;
  }

  return result;
}

uint64_t TTRRemindersListUncommittedReminder.init(placeholderReminder:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D523C(a2, a3, &qword_27CE5A3A0, qword_21DC0F3A0);
  v5 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  *(a3 + *(v5 + 24)) = 0;
  return sub_21D2A0DC8(a1, a3 + *(v5 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
}

id TTRRemindersListObjectIDOnlyReminderIDProvider.makeReminderID(objectID:sectionID:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;

  return a1;
}

id sub_21D290EE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;

  return a1;
}

id TTRRemindersListObjectIDAndSectionIDCombinedReminderIDProvider.makeReminderID(objectID:sectionID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  sub_21D104E74(a2, &a3[v5], type metadata accessor for TTRRemindersListViewModel.SectionID);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 0, 1, v6);
  *a3 = a1;

  return a1;
}

id sub_21D29103C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  sub_21D104E74(a2, &a3[v5], type metadata accessor for TTRRemindersListViewModel.SectionID);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 0, 1, v6);
  *a3 = a1;

  return a1;
}

uint64_t sub_21D2910F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v7 = v4;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (qword_27CE565F0 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5A660);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "newChild.parentNode should be nil.", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

LABEL_6:
    v14 = *(*v7 + 136);
    swift_beginAccess();
    v15 = *(v7 + v14);
    if (v15 >> 62)
    {
      if (sub_21DBFBD7C() < a2)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < a2)
    {
      goto LABEL_11;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  a3(a2, a2, a1);
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a1;

  a4(inited, v7);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_21D291324(uint64_t a1, uint64_t (*a2)(int64_t), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = v4;
  v7 = sub_21DBF5A5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80, &qword_21DC0A040);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v24 = a1;
  sub_21DBF5A6C();
  v14 = *v5;
  v31 = v5;
  v30 = *(v14 + 136);
  sub_21DBF5B9C();
  sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v29 = (v8 + 8);
  v28 = xmmword_21DC09CF0;
  while (1)
  {
    sub_21DBFACAC();
    sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v15 = sub_21DBFA10C();
    (*v29)(v10, v7);
    if (v15)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA80, &qword_21DC0A040);
      swift_beginAccess();
      sub_21D25CF18(v24, v25, v26);
      swift_endAccess();
      return;
    }

    v16 = sub_21DBFAD3C();
    v18 = *v17;
    v16(v32, 0);
    sub_21DBFACBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    v21 = v30;
    v20 = v31;
    swift_beginAccess();
    v22 = *(v20 + v21);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223D44740](v18);
      goto LABEL_7;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_7:
    *(inited + 32) = v23;
    swift_endAccess();
    v27(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_21D2916C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = a2(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_21D291750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_21D0D3954(a2, v11, &unk_27CE5CD80, &qword_21DC0CE80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_beginAccess();
    v18 = *(v3 + 16);
    if (v18 >> 62)
    {
      if (sub_21DBFBD7C() >= a3)
      {
LABEL_4:
        if ((a3 & 0x8000000000000000) == 0)
        {
          v19 = v34;

          sub_21DBD1550(a3, a3, v19);
          swift_endAccess();

          return 1;
        }

        goto LABEL_16;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  sub_21D2A0DC8(v11, v17, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  v20 = sub_21D2916C8(v8, sub_21D181E00);
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v20)
  {
    sub_21D2910F8(v34, a3, sub_21DBD1550, sub_21D107568);

    sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.Item);
    return 1;
  }

  if (qword_27CE56620 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5A918);
  v23 = v33;
  sub_21D104E74(v17, v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136315138;
    v28 = sub_21D25D250();
    v30 = v29;
    sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = sub_21D0CDFB4(v28, v30, v35);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Cannot find node {item: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  else
  {

    sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.Item);
  return 0;
}

uint64_t sub_21D291C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_21D0D3954(a2, v11, &qword_27CE5A490, &unk_21DC0F950);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5A490, &unk_21DC0F950);
    swift_beginAccess();
    v18 = *(v3 + 16);
    if (v18 >> 62)
    {
      if (sub_21DBFBD7C() >= a3)
      {
LABEL_4:
        if ((a3 & 0x8000000000000000) == 0)
        {
          v19 = v34;

          sub_21DBD157C(a3, a3, v19);
          swift_endAccess();

          return 1;
        }

        goto LABEL_16;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  sub_21D2A0DC8(v11, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
  v20 = sub_21D2916C8(v8, sub_21D105CF4);
  sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v20)
  {
    sub_21D2910F8(v34, a3, sub_21DBD157C, sub_21D107568);

    sub_21D106918(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
    return 1;
  }

  if (qword_27CE56620 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5A918);
  v23 = v33;
  sub_21D104E74(v17, v33, type metadata accessor for TTRAccountsListsViewModel.Item);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136315138;
    v28 = sub_21D25D428();
    v30 = v29;
    sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
    v31 = sub_21D0CDFB4(v28, v30, v35);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Cannot find node {item: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  else
  {

    sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  sub_21D106918(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
  return 0;
}

uint64_t sub_21D2920E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF5A5C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v55 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  sub_21D0D3954(a2, v14, &unk_27CE5CD80, &qword_21DC0CE80);
  v24 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
    v23 = sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v25 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
LABEL_22:
      swift_beginAccess();
      sub_21D25CF18(a1, sub_21DBD14F8, sub_21D256E5C);
      swift_endAccess();
      return v26;
    }

    v27 = v25;
    v59[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v28 = sub_21DBFAD3C();
        v30 = *v29;
        v28(v61, 0);
        swift_beginAccess();
        v31 = *(v3 + 16);
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D44740](v30);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }
        }

        swift_endAccess();
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v27)
        {
          (*(v57 + 8))(v11, v58);
          v26 = v59[0];
          goto LABEL_22;
        }
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v20);
  sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v20, v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v32 = sub_21D2916C8(v23, sub_21D181E00);
  if (v32)
  {
    v33 = v32;
    sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v34 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_23:
      sub_21D291324(a1, sub_21DBD14F8, sub_21D256E5C, sub_21D107550);

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
      return v26;
    }

    v35 = v34;
    v56 = v23;
    v60 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = *(*v33 + 136);
      swift_beginAccess();
      while (1)
      {
        v37 = sub_21DBFAD3C();
        v39 = *v38;
        v37(v61, 0);
        v23 = *(v33 + v36);
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          MEMORY[0x223D44740](v39, v23);
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v39 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v35)
        {
          (*(v57 + 8))(v8, v58);
          v26 = v60;
          v23 = v56;
          goto LABEL_23;
        }
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_27CE56620 != -1)
  {
LABEL_36:
    swift_once();
  }

  v40 = sub_21DBF84BC();
  __swift_project_value_buffer(v40, qword_27CE5A918);
  v41 = v56;
  sub_21D104E74(v23, v56, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAEBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    *v44 = 136315138;
    sub_21D104E74(v41, v54, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v46 = v23;
    v47 = sub_21DBFA1AC();
    v49 = v48;
    sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v50 = sub_21D0CDFB4(v47, v49, v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Cannot find node {itemID: %s}", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v51 = v46;
  }

  else
  {

    sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v51 = v23;
  }

  sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return 0;
}

uint64_t sub_21D292980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF5A5C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v55 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  sub_21D0D3954(a2, v14, &qword_27CE5A490, &unk_21DC0F950);
  v24 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490, &unk_21DC0F950);
    v23 = sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v25 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
LABEL_22:
      swift_beginAccess();
      sub_21D25CF18(a1, sub_21DBD1524, sub_21D256E5C);
      swift_endAccess();
      return v26;
    }

    v27 = v25;
    v59[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v28 = sub_21DBFAD3C();
        v30 = *v29;
        v28(v61, 0);
        swift_beginAccess();
        v31 = *(v3 + 16);
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D44740](v30);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }
        }

        swift_endAccess();
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v27)
        {
          (*(v57 + 8))(v11, v58);
          v26 = v59[0];
          goto LABEL_22;
        }
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v20);
  sub_21D106918(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D2A0DC8(v20, v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v32 = sub_21D2916C8(v23, sub_21D105CF4);
  if (v32)
  {
    v33 = v32;
    sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v34 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_23:
      sub_21D291324(a1, sub_21DBD1524, sub_21D256E5C, sub_21D107550);

      sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      return v26;
    }

    v35 = v34;
    v56 = v23;
    v60 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = *(*v33 + 136);
      swift_beginAccess();
      while (1)
      {
        v37 = sub_21DBFAD3C();
        v39 = *v38;
        v37(v61, 0);
        v23 = *(v33 + v36);
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          MEMORY[0x223D44740](v39, v23);
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v39 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v35)
        {
          (*(v57 + 8))(v8, v58);
          v26 = v60;
          v23 = v56;
          goto LABEL_23;
        }
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_27CE56620 != -1)
  {
LABEL_36:
    swift_once();
  }

  v40 = sub_21DBF84BC();
  __swift_project_value_buffer(v40, qword_27CE5A918);
  v41 = v56;
  sub_21D104E74(v23, v56, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAEBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    *v44 = 136315138;
    sub_21D104E74(v41, v54, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v46 = v23;
    v47 = sub_21DBFA1AC();
    v49 = v48;
    sub_21D106918(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v50 = sub_21D0CDFB4(v47, v49, v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Cannot find node {itemID: %s}", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v51 = v46;
  }

  else
  {

    sub_21D106918(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v51 = v23;
  }

  sub_21D106918(v51, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return 0;
}

void *sub_21D293244(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058);
  v66 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x28223BE20](v4);
  v70 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = 0;
  v19 = 0;
  v69 = 0;
  v20 = MEMORY[0x277D84F98];
  v21 = *(a1 + 16);
  v60 = v14;
  v58 = a1;
  v59 = v21;
  while (1)
  {
    v67 = v19;
    v68 = v18;
    if (v69 == v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
      v69 = v21;
    }

    else
    {
      if (v69 >= v21)
      {
        goto LABEL_26;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      v24 = *(v23 - 8);
      v25 = v69;
      sub_21D0D3954(v58 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v69, v14, &qword_27CE59D88, &qword_21DC0F410);
      v69 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_27;
      }

      (*(v24 + 56))(v14, 0, 1, v23);
    }

    sub_21D0D523C(v14, v17, &qword_27CE5A3C0, &qword_21DC0F400);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      v49 = v20[2];
      if (v49)
      {
        v50 = sub_21D9D6480(v20[2], 0);
        sub_21D9D5368(&v71, v50 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v49, v20);
        v52 = v51;
        v53 = v71;
        sub_21DBF8E0C();
        sub_21D0CFAF8(v53);
        if (v52 != v49)
        {
          goto LABEL_29;
        }

        sub_21D0D0E88(v68, v67);
      }

      else
      {

        sub_21D0D0E88(v68, v67);
        return MEMORY[0x277D84F90];
      }

      return v50;
    }

    v27 = v17;
    sub_21D0D523C(v17, v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v28 = v70;
    swift_getAtKeyPath();
    v29 = v11;
    v30 = v11;
    v31 = v28;
    v32 = v62;
    sub_21D0D3954(v30, v62, &unk_27CE5CD80, &qword_21DC0CE80);
    v33 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v34 = swift_allocObject();
    sub_21D0D523C(v32, v34 + v33, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D0E88(v68, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v20;
    v36 = sub_21D17E4D8(v31);
    v38 = v20[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v37;
    if (v20[3] >= v41)
    {
      v11 = v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v48 = v36;
        sub_21D221CF8();
        v36 = v48;
        v20 = v71;
        if (v42)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_21D21809C(v41, isUniquelyReferenced_nonNull_native);
      v20 = v71;
      v36 = sub_21D17E4D8(v70);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_30;
      }

      v11 = v29;
      if (v42)
      {
        goto LABEL_2;
      }
    }

    v44 = v57;
    v45 = v36;
    sub_21D2F8A44(v57);
    v20[(v45 >> 6) + 8] |= 1 << v45;
    sub_21D0D3954(v70, v20[6] + *(v56 + 72) * v45, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D0D523C(v44, v20[7] + *(v66 + 72) * v45, &qword_27CE59D70, &unk_21DC0D058);
    v46 = v20[2];
    v40 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v40)
    {
      goto LABEL_28;
    }

    v20[2] = v47;
LABEL_2:
    sub_21DBF5AFC();
    sub_21D0CF7E0(v70, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v18 = sub_21D2F8A44;
    v19 = v34;
    v21 = v59;
    v14 = v60;
    v17 = v27;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D293978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  if (a1 < 1)
  {
    return (*(v14 + 56))(a4, 1, 1, v20);
  }

  v28 = v18;
  v30 = &v27 - v19;
  sub_21D26181C(a1 - 1, v29, &v27 - v19);
  v21 = a4;
  if (a3)
  {
    v22 = 0;
    v29 = *(a3 + 16);
    while (v29 != v22)
    {
      sub_21D104E74(a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22++, v16, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
      v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, v9);
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v23)
      {
        (*(v14 + 56))(v21, 1, 1, v28);
        v24 = v30;
        return sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }
    }
  }

  v25 = v30;
  sub_21D104E74(v30, v21, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v14 + 56))(v21, 0, 1, v28);
  v24 = v25;
  return sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t sub_21D293C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  if (a1 <= 0)
  {
    return (*(v14 + 56))(a4, 1, 1, v20);
  }

  v28 = v18;
  v30 = &v27 - v19;
  sub_21D107A34(a1 - 1, v29, &v27 - v19);
  v21 = a4;
  if (a3)
  {
    v22 = 0;
    v29 = *(a3 + 16);
    while (v29 != v22)
    {
      sub_21D104E74(a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22++, v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v12);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
      v23 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v12, v9);
      sub_21D106918(v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v23)
      {
        (*(v14 + 56))(v21, 1, 1, v28);
        v24 = v30;
        return sub_21D106918(v24, type metadata accessor for TTRAccountsListsViewModel.Item);
      }
    }
  }

  v25 = v30;
  sub_21D104E74(v30, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
  (*(v14 + 56))(v21, 0, 1, v28);
  v24 = v25;
  return sub_21D106918(v24, type metadata accessor for TTRAccountsListsViewModel.Item);
}