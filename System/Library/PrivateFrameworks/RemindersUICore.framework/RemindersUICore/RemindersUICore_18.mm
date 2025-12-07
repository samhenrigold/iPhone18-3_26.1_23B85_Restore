uint64_t sub_21D25D250()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  sub_21D104E74(v0, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRRemindersListViewModel.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21D0CF7E0(v8, &qword_27CE5A388, &unk_21DC0F450);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v3);
    sub_21DBFC14C();
    sub_21D106918(v3, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v10[0];
  }
}

uint64_t sub_21D25D428()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  sub_21D104E74(v0, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAccountsListsViewModel.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21D0CF7E0(v8, &qword_27CE5A388, &unk_21DC0F450);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v3);
    sub_21DBFC14C();
    sub_21D106918(v3, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    return v10[0];
  }
}

uint64_t sub_21D25D600()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F190);
  v1 = __swift_project_value_buffer(v0, qword_280D0F190);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListUncommittedReminder.editingSessionState.getter()
{
  type metadata accessor for TTRRemindersListUncommittedReminder(0);
}

uint64_t TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (&v49 - v18);
  sub_21D0D3954(a1, a4, &qword_27CE5A3A0, qword_21DC0F3A0);
  v20 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  sub_21D104E74(a2, a4 + *(v20 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
  *(a4 + *(v20 + 24)) = a3;

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
    }

    else
    {

      sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F190);
    sub_21D104E74(a2, v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (!os_log_type_enabled(v30, v31))
    {

      sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
      v28 = v10;
      v27 = type metadata accessor for TTRRemindersListViewModel.Item;
      return sub_21D106918(v28, v27);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136315138;
    v34 = sub_21D25D250();
    v36 = v35;
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v37 = sub_21D0CDFB4(v34, v36, &v50);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Invalid item type {item: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);

    v38 = a2;
LABEL_14:
    sub_21D106918(v38, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
  }

  sub_21D2A0DC8(v13, v19, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  if (!a3)
  {
    goto LABEL_6;
  }

  v22 = *(a3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);

  v23 = [v22 objectID];

  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = *v19;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v25 = v24;
  v26 = sub_21DBFB63C();

  if ((v26 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_280D0F190);
    sub_21D104E74(v19, v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v41 = v23;
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAECC();

    sub_21D106918(v19, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (!os_log_type_enabled(v42, v43))
    {

      sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
      v27 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v28 = v16;
      return sub_21D106918(v28, v27);
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412546;
    *(v44 + 4) = v41;
    *v45 = v23;
    *(v44 + 12) = 2112;
    v46 = *v16;
    v47 = v41;
    v48 = v46;
    sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    *(v44 + 14) = v48;
    v45[1] = v48;
    _os_log_impl(&dword_21D0C9000, v42, v43, "reminderChangeItem.objectID does not match item objectID {reminderChangeItem.objectID: %@, item.reminderID.objectID: %@}", v44, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v38 = a2;
    goto LABEL_14;
  }

LABEL_6:
  sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
  v27 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
  v28 = v19;
  return sub_21D106918(v28, v27);
}

uint64_t TTRRemindersListUncommittedSection.init(location:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, a3, &qword_27CE5A3A0, qword_21DC0F3A0);
  v9 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  sub_21D104E74(a2, a3 + *(v9 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
  if (sub_21D2A0AC4(a2))
  {
    v10 = a2;
LABEL_7:
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
  }

  if (qword_280D0F188 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F190);
  sub_21D104E74(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAECC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = sub_21D25D250();
    v18 = v17;
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v19 = sub_21D0CDFB4(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRRemindersListUncommittedSection: Invalid item type {item: %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);

    v10 = a2;
    goto LABEL_7;
  }

  sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(a1, &qword_27CE5A3A0, qword_21DC0F3A0);
  return sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
}

void TTRRemindersListTreeViewModel.AuxiliaryData.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_21D25E130(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21D2A0DC8(a1, a4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  result = type metadata accessor for TTRRemindersListTreeViewModel.Section(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

double sub_21D25E28C(uint64_t (*a1)(void))
{
  a1(0);

  sub_21DBF8E0C();
  return result;
}

void sub_21D25E2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
}

uint64_t TTRRemindersListTreeViewModel.SectionsContainer.init(header:sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D2A0DC8(a1, a3, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  result = type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.RecurrentReminderReplacement.init(cloned:original:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D2A0DC8(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(0);
  return sub_21D2A0DC8(a2, a3 + *(v5 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D29FF8C(a1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t TTRRemindersListTreeViewModel.__allocating_init(sectionsContainers:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21D0D32E4(a2, v21);
  v11 = v22;
  v12 = v23;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D2A00FC(a1, 1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t TTRRemindersListTreeViewModel.replacingPresentationTree(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_21D2A0E74;
  }

  else
  {
    v7 = sub_21D2F8BEC;
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21D0D0E78(a1, a2);

  v9 = sub_21D261CE4();

  v17 = v9;
  (v7)(v16, &v17);
  v15 = v16[0];
  swift_beginAccess();
  v10 = v3[12];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[2];
  sub_21D0D32E4((v3 + 5), v16);
  v13 = swift_allocObject();
  *(v13 + 88) = MEMORY[0x277D84FA0];
  *(v13 + 80) = v9;
  *(v13 + 24) = v15;
  *(v13 + 96) = v10;
  *(v13 + 104) = sub_21D2A0E70;
  *(v13 + 112) = v8;
  swift_beginAccess();
  *(v13 + 88) = v11;
  *(v13 + 16) = v12;
  sub_21D0D0FD0(v16, v13 + 40);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return v13;
}

uint64_t sub_21D25E964@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_21D25E998(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

void *sub_21D25E9D8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;

  v6 = sub_21D261CE4();

  v7 = a1(v6);
  v9 = v8;
  swift_beginAccess();
  v10 = v3[12];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[2];
  sub_21D0D32E4((v3 + 5), v15);
  v13 = swift_allocObject();
  v13[11] = MEMORY[0x277D84FA0];
  v13[10] = v6;
  v13[3] = v7;
  v13[4] = v9;
  v13[12] = v10;
  v13[13] = a1;
  v13[14] = a2;
  swift_beginAccess();
  v13[11] = v11;
  v13[2] = v12;
  sub_21D0D0FD0(v15, (v13 + 5));
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return v13;
}

uint64_t sub_21D25EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D104E74(a1, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  type metadata accessor for TTRRemindersListTreeViewModel();
  v13 = *(a1 + *(type metadata accessor for TTRRemindersListTreeViewModel.Section(0) + 20));
  v19 = a2;
  v20 = a3;
  v21 = v12;
  v22 = a4;
  v14 = sub_21D25F0D0(v13, sub_21D2F89AC, v18);
  sub_21D104E74(a1, a5, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v16 = a5 + *(v15 + 52);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(a5 + *(v15 + 56)) = v14;
  (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
  return sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

uint64_t sub_21D25ED00@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v40 = a5;
  v41 = v15;
  *a1 = v19;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = sub_21DBF6D5C();
  (*(v21 + 8))(v22, a3, v20, v21);

  a1 = sub_21DBF6D5C();
  sub_21D104E74(a3, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *a4;
  v24 = v42;
  *a4 = 0x8000000000000000;
  sub_21D17E07C(a1);
  v26 = *(v24 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    sub_21D221CE4();
    v24 = v42;
    goto LABEL_7;
  }

  LOBYTE(a3) = v25;
  if (*(v24 + 24) < v29)
  {
    sub_21D218088(v29, isUniquelyReferenced_nonNull_native);
    v24 = v42;
    sub_21D17E07C(a1);
    if ((a3 & 1) == (v30 & 1))
    {
      goto LABEL_7;
    }

    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21DBFC70C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v32 = v40;
  v31 = v41;
  *a4 = v24;
  if ((a3 & 1) == 0)
  {
    sub_21D33572C();
    v33 = a1;
  }

  sub_21D29BC6C(v31, v12);
  swift_endAccess();

  sub_21D106918(v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v34 = sub_21DBF6D2C();
  if (v34 < 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_21DBF6D2C();
  }

  sub_21D104E74(v18, v32, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v37 = v32 + *(v36 + 52);
  *v37 = 0;
  *(v37 + 8) = v35;
  *(v37 + 16) = v34 < 1;
  *(v32 + *(v36 + 56)) = MEMORY[0x277D84F90];
  return (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
}

void *sub_21D25F0D0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4C8, &qword_21DC0F9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v39 - v15;
  v48 = sub_21DBF6D7C();
  v17 = MEMORY[0x28223BE20](v48);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v16 + 16);
    v21 = v16 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v51 = (v11 + 48);
    v45 = (v21 - 8);
    v46 = v22;
    v40 = v11;
    v44 = (v11 + 56);
    v24 = *(v21 + 56);
    v42 = MEMORY[0x277D84F90];
    v43 = v24;
    v39 = v13;
    v25 = v48;
    v47 = v21;
    v22(v19, v23, v48, v17);
    while (1)
    {
      v49(v19);
      v27 = *v51;
      if ((*v51)(v6, 1, v10) == 1)
      {
        break;
      }

      v28 = v6;
      sub_21D0D523C(v6, v13, &qword_27CE581C8, &qword_21DC08F80);
      v29 = sub_21DBF6D6C();
      v30 = v13;
      if (v29)
      {
        v31 = sub_21D25F0D0(v29, v49, v50);

        (*v45)(v19, v48);
        v32 = *(v10 + 56);

        *(v30 + v32) = v31;
      }

      else
      {
        (*v45)(v19, v48);
      }

      v13 = v30;
      sub_21D0D3954(v30, v9, &qword_27CE581C8, &qword_21DC08F80);
      (*v44)(v9, 0, 1, v10);
      sub_21D0CF7E0(v30, &qword_27CE581C8, &qword_21DC08F80);
      v33 = v27(v9, 1, v10);
      v6 = v28;
      v25 = v48;
      if (v33 == 1)
      {
        goto LABEL_4;
      }

      sub_21D0D523C(v9, v41, &qword_27CE581C8, &qword_21DC08F80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_21D211A34(0, v42[2] + 1, 1, v42);
      }

      v35 = v42[2];
      v34 = v42[3];
      if (v35 >= v34 >> 1)
      {
        v42 = sub_21D211A34((v34 > 1), v35 + 1, 1, v42);
      }

      v36 = v41;
      v37 = v42;
      v42[2] = v35 + 1;
      sub_21D0D523C(v36, v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, &qword_27CE581C8, &qword_21DC08F80);
      v13 = v39;
LABEL_5:
      v23 += v43;
      if (!--v20)
      {
        return v42;
      }

      v46(v19, v23, v25, v26);
    }

    (*v45)(v19, v25);
    sub_21D0CF7E0(v6, &qword_27CE5A4C8, &qword_21DC0F9B0);
    (*v44)(v9, 1, 1, v10);
LABEL_4:
    sub_21D0CF7E0(v9, &qword_27CE5A4C8, &qword_21DC0F9B0);
    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D25F5D8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + *(type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer(0) + 20));
  swift_beginAccess();
  v12 = sub_21DBF8E0C();
  sub_21D5624A0(v12);
  swift_endAccess();
  v16[2] = a3 + 16;
  v16[3] = a4;
  v16[4] = a5 + 16;
  v13 = sub_21D4E6184(sub_21D2F89B8, v16, v11);
  sub_21D104E74(a1, a6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v15 = a6 + *(result + 52);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(a6 + *(result + 56)) = v13;
  return result;
}

uint64_t sub_21D25F71C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D0, &qword_21DC0F9B8);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_21D0D0F1C(qword_280D10C18, &qword_27CE5A4D0, &qword_21DC0F9B8, protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTree<A>);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_21D25F7C0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v16 = sub_21D2916C8(v10, sub_21D181E00);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v16)
  {
    v30 = v1;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v18 = *(*Strong + 120);
      swift_beginAccess();
      v19 = v32;
      sub_21D104E74(Strong + v18, v32, type metadata accessor for TTRRemindersListViewModel.Item);

      v20 = 0;
    }

    else
    {
      v20 = 1;
      v19 = v32;
    }

    v1 = v30;
  }

  else
  {
    v20 = 1;
    v19 = v32;
  }

  (*(v2 + 56))(v19, v20, 1, v1);
  result = sub_21D261568(v19);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    sub_21D0D3954(v19, v13, &unk_27CE5CD80, &qword_21DC0CE80);

    v23 = 0;
    while (1)
    {
      if (v22 == v23)
      {
        goto LABEL_14;
      }

      sub_21D26181C(v23, v13, v4);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
      v24 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v24)
      {
        break;
      }

      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_14:

        sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D0CF7E0(v32, &unk_27CE5CD80, &qword_21DC0CE80);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
        return (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
      }
    }

    sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
    v28 = *(v27 + 48);
    v29 = v31;
    sub_21D0D523C(v32, v31, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v29 + v28) = v23;
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  return result;
}

uint64_t sub_21D25FC60@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
  v16 = sub_21D2916C8(v10, sub_21D105CF4);
  sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v16)
  {
    v30 = v1;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v18 = *(*Strong + 120);
      swift_beginAccess();
      v19 = v32;
      sub_21D104E74(Strong + v18, v32, type metadata accessor for TTRAccountsListsViewModel.Item);

      v20 = 0;
    }

    else
    {
      v20 = 1;
      v19 = v32;
    }

    v1 = v30;
  }

  else
  {
    v20 = 1;
    v19 = v32;
  }

  (*(v2 + 56))(v19, v20, 1, v1);
  result = sub_21D0E8DA0(v19);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    sub_21D0D3954(v19, v13, &qword_27CE5A490, &unk_21DC0F950);

    v23 = 0;
    while (1)
    {
      if (v22 == v23)
      {
        goto LABEL_14;
      }

      sub_21D107A34(v23, v13, v4);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v7);
      v24 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D106918(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v24)
      {
        break;
      }

      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_14:

        sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
        sub_21D0CF7E0(v32, &qword_27CE5A490, &unk_21DC0F950);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8, &qword_21DC376B0);
        return (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
      }
    }

    sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8, &qword_21DC376B0);
    v28 = *(v27 + 48);
    v29 = v31;
    sub_21D0D523C(v32, v31, &qword_27CE5A490, &unk_21DC0F950);
    *(v29 + v28) = v23;
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  return result;
}

double sub_21D260100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v68 = a3;
  v71 = a1;
  v75 = sub_21DBF5B9C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v67 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v70 = &v61 - v24;
  MEMORY[0x28223BE20](v25);
  v66 = &v61 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  v74 = a2;
  sub_21D0D3954(a2, v19, &unk_27CE5CD80, &qword_21DC0CE80);
  v30 = *(v21 + 48);
  if ((v30)(v19, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D2A0DC8(v19, v29, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D108408(v8, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v16);
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v31 = (v30)(v16, 1, v20);
    sub_21D0CF7E0(v16, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v31 == 1)
    {
      if (qword_27CE56620 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  while (1)
  {
    v42 = v76;
    sub_21D0D3954(v76, v13, &unk_27CE5CD80, &qword_21DC0CE80);
    if ((v30)(v13, 1, v20) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
    }

    else
    {
      v43 = v13;
      v13 = v70;
      sub_21D2A0DC8(v43, v70, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
      v44 = v69;
      sub_21D108408(v8, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v69);
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v45 = (v30)(v44, 1, v20);
      sub_21D0CF7E0(v44, &unk_27CE5CD80, &qword_21DC0CE80);
      if (v45 == 1)
      {
        if (qword_27CE56620 != -1)
        {
          swift_once();
        }

        v46 = sub_21DBF84BC();
        __swift_project_value_buffer(v46, qword_27CE5A918);
        v30 = v67;
        sub_21D104E74(v13, v67, type metadata accessor for TTRRemindersListViewModel.Item);
        v47 = sub_21DBF84AC();
        v48 = sub_21DBFAEBC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v77 = v50;
          *v49 = 136315138;
          v51 = sub_21D25D250();
          v52 = v13;
          v13 = v53;
          v54 = v30;
          v30 = type metadata accessor for TTRRemindersListViewModel.Item;
          sub_21D106918(v54, type metadata accessor for TTRRemindersListViewModel.Item);
          v55 = sub_21D0CDFB4(v51, v13, &v77);

          *(v49 + 4) = v55;
          _os_log_impl(&dword_21D0C9000, v47, v48, "Invalid newParent {newParent: %s}", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x223D46520](v50, -1, -1);
          MEMORY[0x223D46520](v49, -1, -1);

          v56 = v52;
        }

        else
        {

          sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
          v56 = v13;
        }
      }

      else
      {
        v56 = v13;
      }

      sub_21D106918(v56, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21DC08D00;
    *(v57 + 32) = v71;
    v77 = v57;
    sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70, &unk_21DC0F980);
    sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70, &unk_21DC0F980, MEMORY[0x277D83970]);
    v58 = v72;
    v8 = v75;
    sub_21DBFBCBC();
    v29 = sub_21D2920E8(v58, v74);
    (*(v73 + 8))(v58, v8);
    if (!v29)
    {
      return result;
    }

    if (v29 >> 62)
    {
      break;
    }

    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_22:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x223D44740](0, v29);
      goto LABEL_25;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v29 + 32);

LABEL_25:

      sub_21D291750(v60, v42, v68);

      return result;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_5:
    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5A918);
    v33 = v66;
    sub_21D104E74(v29, v66, type metadata accessor for TTRRemindersListViewModel.Item);
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v36;
      v64 = swift_slowAlloc();
      v77 = v64;
      *v36 = 136315138;
      v62 = sub_21D25D250();
      v38 = v37;
      v65 = type metadata accessor for TTRRemindersListViewModel.Item;
      sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
      v39 = sub_21D0CDFB4(v62, v38, &v77);

      v40 = v63;
      *(v63 + 1) = v39;
      _os_log_impl(&dword_21D0C9000, v34, v35, "Invalid oldParent {oldParent: %s}", v40, 0xCu);
      v41 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);

      sub_21D106918(v29, v65);
    }

    else
    {

      sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  if (sub_21DBFBD7C())
  {
    goto LABEL_22;
  }

LABEL_27:

  return result;
}

double sub_21D260B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v68 = a3;
  v71 = a1;
  v75 = sub_21DBF5B9C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v67 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v70 = &v61 - v24;
  MEMORY[0x28223BE20](v25);
  v66 = &v61 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  v74 = a2;
  sub_21D0D3954(a2, v19, &qword_27CE5A490, &unk_21DC0F950);
  v30 = *(v21 + 48);
  if ((v30)(v19, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE5A490, &unk_21DC0F950);
  }

  else
  {
    sub_21D2A0DC8(v19, v29, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D108408(v8, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v16);
    sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v31 = (v30)(v16, 1, v20);
    sub_21D0CF7E0(v16, &qword_27CE5A490, &unk_21DC0F950);
    if (v31 == 1)
    {
      if (qword_27CE56620 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    sub_21D106918(v29, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  while (1)
  {
    v42 = v76;
    sub_21D0D3954(v76, v13, &qword_27CE5A490, &unk_21DC0F950);
    if ((v30)(v13, 1, v20) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
    }

    else
    {
      v43 = v13;
      v13 = v70;
      sub_21D2A0DC8(v43, v70, type metadata accessor for TTRAccountsListsViewModel.Item);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
      v44 = v69;
      sub_21D108408(v8, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v69);
      sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v45 = (v30)(v44, 1, v20);
      sub_21D0CF7E0(v44, &qword_27CE5A490, &unk_21DC0F950);
      if (v45 == 1)
      {
        if (qword_27CE56620 != -1)
        {
          swift_once();
        }

        v46 = sub_21DBF84BC();
        __swift_project_value_buffer(v46, qword_27CE5A918);
        v30 = v67;
        sub_21D104E74(v13, v67, type metadata accessor for TTRAccountsListsViewModel.Item);
        v47 = sub_21DBF84AC();
        v48 = sub_21DBFAEBC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v77 = v50;
          *v49 = 136315138;
          v51 = sub_21D25D428();
          v52 = v13;
          v13 = v53;
          v54 = v30;
          v30 = type metadata accessor for TTRAccountsListsViewModel.Item;
          sub_21D106918(v54, type metadata accessor for TTRAccountsListsViewModel.Item);
          v55 = sub_21D0CDFB4(v51, v13, &v77);

          *(v49 + 4) = v55;
          _os_log_impl(&dword_21D0C9000, v47, v48, "Invalid newParent {newParent: %s}", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x223D46520](v50, -1, -1);
          MEMORY[0x223D46520](v49, -1, -1);

          v56 = v52;
        }

        else
        {

          sub_21D106918(v30, type metadata accessor for TTRAccountsListsViewModel.Item);
          v56 = v13;
        }
      }

      else
      {
        v56 = v13;
      }

      sub_21D106918(v56, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21DC08D00;
    *(v57 + 32) = v71;
    v77 = v57;
    sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70, &unk_21DC0F980);
    sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70, &unk_21DC0F980, MEMORY[0x277D83970]);
    v58 = v72;
    v8 = v75;
    sub_21DBFBCBC();
    v29 = sub_21D292980(v58, v74);
    (*(v73 + 8))(v58, v8);
    if (!v29)
    {
      return result;
    }

    if (v29 >> 62)
    {
      break;
    }

    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_22:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x223D44740](0, v29);
      goto LABEL_25;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v29 + 32);

LABEL_25:

      sub_21D291C1C(v60, v42, v68);

      return result;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_5:
    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5A918);
    v33 = v66;
    sub_21D104E74(v29, v66, type metadata accessor for TTRAccountsListsViewModel.Item);
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v36;
      v64 = swift_slowAlloc();
      v77 = v64;
      *v36 = 136315138;
      v62 = sub_21D25D428();
      v38 = v37;
      v65 = type metadata accessor for TTRAccountsListsViewModel.Item;
      sub_21D106918(v33, type metadata accessor for TTRAccountsListsViewModel.Item);
      v39 = sub_21D0CDFB4(v62, v38, &v77);

      v40 = v63;
      *(v63 + 1) = v39;
      _os_log_impl(&dword_21D0C9000, v34, v35, "Invalid oldParent {oldParent: %s}", v40, 0xCu);
      v41 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);

      sub_21D106918(v29, v65);
    }

    else
    {

      sub_21D106918(v33, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D106918(v29, type metadata accessor for TTRAccountsListsViewModel.Item);
    }
  }

  if (sub_21DBFBD7C())
  {
    goto LABEL_22;
  }

LABEL_27:

  return result;
}

uint64_t sub_21D261568(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_21D0D3954(a1, v5, &unk_27CE5CD80, &qword_21DC0CE80);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_beginAccess();
    v13 = *(v1 + 16);
    if (v13 >> 62)
    {
      return sub_21DBFBD7C();
    }

    else
    {
      return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v15 = sub_21D2916C8(v11, sub_21D181E00);
    if (v15)
    {
      v16 = *(*v15 + 136);
      v17 = v15;
      swift_beginAccess();
      v18 = *(v17 + v16);
      sub_21DBF8E0C();

      if (v18 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v14 = 0;
    }

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  return v14;
}

uint64_t sub_21D26181C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_21D0D3954(a2, v11, &unk_27CE5CD80, &qword_21DC0CE80);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_beginAccess();
    v17 = *(v3 + 16);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D44740](a1);
      goto LABEL_6;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v18 = *(v17 + 8 * a1 + 32);

LABEL_6:
        swift_endAccess();
        v19 = *(*v18 + 120);
        swift_beginAccess();
        sub_21D104E74(v18 + v19, v32, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v13, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v21 = sub_21D2916C8(v16, sub_21D181E00);
  if (!v21)
  {
LABEL_20:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    result = sub_21DBFC31C();
    __break(1u);
    return result;
  }

  v22 = *(*v21 + 136);
  v23 = v21;
  swift_beginAccess();
  v24 = *(v23 + v22);
  sub_21DBF8E0C();

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x223D44740](a1, v24);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v25 = *(v24 + 8 * a1 + 32);
  }

  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v26 = *(*v25 + 120);
  swift_beginAccess();
  v27 = v25 + v26;
  v28 = v31;
  sub_21D104E74(v27, v31, type metadata accessor for TTRRemindersListViewModel.Item);

  return sub_21D2A0DC8(v28, v32, type metadata accessor for TTRRemindersListViewModel.Item);
}

void *sub_21D261CE4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  swift_beginAccess();
  v20 = v0;
  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23[0] = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    result = sub_21D18EB64(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v23[0];
      v18[1] = v1;
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v10, v6);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v7 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (v10 >= *(v19 + 16))
          {
            goto LABEL_18;
          }

          v12 = *(v6 + 8 * v10 + 32);
        }

        sub_21D29655C(v12, v5);

        v23[0] = v11;
        v1 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v1 >= v13 >> 1)
        {
          sub_21D18EB64((v13 > 1), v1 + 1, 1);
          v11 = v23[0];
        }

        ++v10;
        *(v11 + 16) = v1 + 1;
        sub_21D0D523C(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, &qword_27CE581C8, &qword_21DC08F80);
        if (v7 == v10)
        {

          v8 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    v14 = v20;
    swift_beginAccess();
    v15 = v14[4];
    v16 = swift_allocObject();
    v22 = v8;
    v21 = MEMORY[0x277D84F98];
    sub_21DBF8E0C();
    sub_21DB8503C(v11, &v22, &v21);

    v17 = v21;
    v16[2] = v22;
    v16[3] = v17;
    v16[4] = v15;
    return v16;
  }

  return result;
}

void *sub_21D261FB8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  swift_beginAccess();
  v20 = v0;
  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23[0] = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    result = sub_21D0F5590(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v23[0];
      v18[1] = v1;
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v10, v6);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v7 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (v10 >= *(v19 + 16))
          {
            goto LABEL_18;
          }

          v12 = *(v6 + 8 * v10 + 32);
        }

        sub_21D296850(v12, v5);

        v23[0] = v11;
        v1 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v1 >= v13 >> 1)
        {
          sub_21D0F5590((v13 > 1), v1 + 1, 1);
          v11 = v23[0];
        }

        ++v10;
        *(v11 + 16) = v1 + 1;
        sub_21D0D523C(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, &qword_27CE58180, &unk_21DC08F30);
        if (v7 == v10)
        {

          v8 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    v14 = v20;
    swift_beginAccess();
    v15 = v14[4];
    v16 = swift_allocObject();
    v22 = v8;
    v21 = MEMORY[0x277D84F98];
    sub_21DBF8E0C();
    sub_21D0DA894(v11, &v22, &v21);

    v17 = v21;
    v16[2] = v22;
    v16[3] = v17;
    v16[4] = v15;
    return v16;
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return v0;
}

uint64_t TTRRemindersListTreeViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

void TTRRemindersListTreeViewModel.primarySectionItem.getter(char *a1@<X8>)
{
  v52 = a1;
  v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v49 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - v19;
  v56 = v1;
  v57 = *(v6 + 56);
  v58 = v6 + 56;
  v57(&v49 - v19, 1, 1, v5, v18);

  v21 = sub_21D263398(v20);

  v22 = v21;
  sub_21D0CF7E0(v20, &unk_27CE5CD80, &qword_21DC0CE80);
  v23 = *(v21 + 16);
  v59 = v6;
  v62 = v5;
  if (v23)
  {
    v55 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = v22 + v55;
    sub_21D104E74(v22 + v55, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v49 = v22;
      v61 = *(v6 + 72);
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D104E74(v24, v13, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v13, v20, type metadata accessor for TTRRemindersListViewModel.Item);
        (v57)(v20, 0, 1, v62);

        v27 = sub_21D263398(v20);

        sub_21D0CF7E0(v20, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        v28 = *(v27 + 16);
        v29 = v26[2];
        v30 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_30;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v30 > v26[3] >> 1)
        {
          if (v29 <= v30)
          {
            v32 = v29 + v28;
          }

          else
          {
            v32 = v29;
          }

          v26 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v32, 1, v26);
        }

        if (*(v27 + 16))
        {
          if ((v26[3] >> 1) - v26[2] < v28)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v28)
          {
            v33 = v26[2];
            v34 = __OFADD__(v33, v28);
            v35 = v33 + v28;
            if (v34)
            {
              goto LABEL_33;
            }

            v26[2] = v35;
          }
        }

        else
        {

          if (v28)
          {
            goto LABEL_31;
          }
        }

        v24 += v61;
        if (!--v23)
        {

          goto LABEL_21;
        }
      }
    }

    v26 = v22;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

LABEL_21:
  v36 = v26[2];
  v37 = v53;
  v38 = v54;
  v39 = v62;
  if (!v36)
  {
LABEL_26:

    v43 = 1;
    v44 = v52;
LABEL_28:
    (v57)(v44, v43, 1, v39);
    return;
  }

  v40 = 0;
  v41 = (v51 + 56);
  while (v40 < v26[2])
  {
    sub_21D104E74(v26 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v37, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v45 = v50;
      sub_21D2A0DC8(v8, v50, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v46 = v45;
      v47 = v60;
      sub_21D2A0DC8(v46, v60, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      (*v41)(v47, 0, 1, v38);
      sub_21D0CF7E0(v47, &qword_27CE5A3A8, &qword_21DC0F3E8);
      v48 = v52;
      sub_21D2A0DC8(v37, v52, type metadata accessor for TTRRemindersListViewModel.Item);
      v44 = v48;
      v43 = 0;
      goto LABEL_28;
    }

    ++v40;
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v42 = v60;
    (*v41)(v60, 1, 1, v38);
    sub_21D106918(v37, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v42, &qword_27CE5A3A8, &qword_21DC0F3E8);
    if (v36 == v40)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void TTRRemindersListTreeViewModel.sectionItems.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  v31 = v0;
  v29 = *(v2 + 56);
  v30 = v2 + 56;
  v29(v28 - v10, 1, 1, v1, v9);

  v12 = sub_21D263398(v11);

  sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = v12 + v14;
    sub_21D104E74(v12 + v14, v7, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v28[0] = v12;
      v28[1] = v14;
      v32 = *(v2 + 72);
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D104E74(v15, v4, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v4, v11, type metadata accessor for TTRRemindersListViewModel.Item);
        v18 = v1;
        (v29)(v11, 0, 1, v1);

        v19 = sub_21D263398(v11);

        sub_21D0CF7E0(v11, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item);
        v20 = *(v19 + 16);
        v21 = v17[2];
        v22 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v22 > v17[3] >> 1)
        {
          if (v21 <= v22)
          {
            v24 = v21 + v20;
          }

          else
          {
            v24 = v21;
          }

          v17 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v24, 1, v17);
        }

        v1 = v18;
        if (*(v19 + 16))
        {
          if ((v17[3] >> 1) - v17[2] < v20)
          {
            goto LABEL_23;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v25 = v17[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_24;
            }

            v17[2] = v27;
          }
        }

        else
        {

          if (v20)
          {
            goto LABEL_22;
          }
        }

        v15 += v32;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }
  }

  else
  {
LABEL_20:
  }
}

void TTRRemindersListTreeViewModel.primarySectionID.getter(uint64_t a1@<X8>)
{
  v29[2] = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - v11;
  v32 = v1;
  v30 = *(v3 + 56);
  v31 = v3 + 56;
  v30(v29 - v11, 1, 1, v2, v10);

  v13 = sub_21D263398(v12);

  sub_21D0CF7E0(v12, &unk_27CE5CD80, &qword_21DC0CE80);
  v14 = *(v13 + 16);
  if (!v14)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = v13 + v15;
  sub_21D104E74(v13 + v15, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
    v18 = v13;
LABEL_21:
    v34 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
    sub_21DBFA48C();

    return;
  }

  v29[3] = v15;
  v29[1] = v13;
  v33 = *(v3 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v16, v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v5, v12, type metadata accessor for TTRRemindersListViewModel.Item);
    v19 = v2;
    (v30)(v12, 0, 1, v2);

    v20 = sub_21D263398(v12);

    sub_21D0CF7E0(v12, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v21 = *(v20 + 16);
    v22 = v18[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 > v18[3] >> 1)
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v25, 1, v18);
    }

    v2 = v19;
    if (*(v20 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v21)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = v18[2];
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_25;
        }

        v18[2] = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_23;
      }
    }

    v16 += v33;
    if (!--v14)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_21D2631D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v6, v9, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v9, a2, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v10 = 0;
  }

  else
  {
    sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = 1;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
}

uint64_t sub_21D263398(uint64_t a1)
{
  v53 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v52 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v52);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  sub_21D0D3954(v53, v16, &unk_27CE5CD80, &qword_21DC0CE80);
  if ((*(v2 + 48))(v16, 1, v1) == 1)
  {
    sub_21D0CF7E0(v16, &unk_27CE5CD80, &qword_21DC0CE80);
    v22 = v54;
    swift_beginAccess();
    v23 = *(v22 + 16);
    if (v23 >> 62)
    {
      v24 = sub_21DBFBD7C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v55 = MEMORY[0x277D84F90];
      sub_21DBF8E0C();
      sub_21D18EBA4(0, v24 & ~(v24 >> 63), 0);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = v55;
        if ((v23 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v24; ++i)
          {
            v27 = MEMORY[0x223D44740](i, v23);
            v28 = *(*v27 + 120);
            swift_beginAccess();
            sub_21D104E74(v27 + v28, v10, type metadata accessor for TTRRemindersListViewModel.Item);
            swift_unknownObjectRelease();
            v55 = v25;
            v30 = *(v25 + 16);
            v29 = *(v25 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_21D18EBA4((v29 > 1), v30 + 1, 1);
              v25 = v55;
            }

            *(v25 + 16) = v30 + 1;
            sub_21D2A0DC8(v10, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30, type metadata accessor for TTRRemindersListViewModel.Item);
          }
        }

        else
        {
          v41 = 32;
          do
          {
            v42 = *(v23 + v41);
            v43 = *(*v42 + 120);
            swift_beginAccess();
            sub_21D104E74(v42 + v43, v13, type metadata accessor for TTRRemindersListViewModel.Item);
            v55 = v25;
            v45 = *(v25 + 16);
            v44 = *(v25 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_21D18EBA4((v44 > 1), v45 + 1, 1);
              v25 = v55;
            }

            *(v25 + 16) = v45 + 1;
            sub_21D2A0DC8(v13, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v45, type metadata accessor for TTRRemindersListViewModel.Item);
            v41 += 8;
            --v24;
          }

          while (v24);
        }

        return v25;
      }

      __break(1u);
      goto LABEL_37;
    }

    return v25;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v18);
  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v18, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v31 = sub_21D2916C8(v21, sub_21D181E00);
  if (v31)
  {
    v32 = *(*v31 + 136);
    v33 = v31;
    swift_beginAccess();
    v34 = *(v33 + v32);
    sub_21DBF8E0C();

    if (v34 >> 62)
    {
      v35 = sub_21DBFBD7C();
      if (v35)
      {
LABEL_15:
        v55 = MEMORY[0x277D84F90];
        sub_21D18EBA4(0, v35 & ~(v35 >> 63), 0);
        if ((v35 & 0x8000000000000000) == 0)
        {
          v25 = v55;
          if ((v34 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != v35; ++j)
            {
              v37 = MEMORY[0x223D44740](j, v34);
              v38 = *(*v37 + 120);
              swift_beginAccess();
              sub_21D104E74(v37 + v38, v4, type metadata accessor for TTRRemindersListViewModel.Item);
              swift_unknownObjectRelease();
              v55 = v25;
              v40 = *(v25 + 16);
              v39 = *(v25 + 24);
              if (v40 >= v39 >> 1)
              {
                sub_21D18EBA4((v39 > 1), v40 + 1, 1);
                v25 = v55;
              }

              *(v25 + 16) = v40 + 1;
              sub_21D2A0DC8(v4, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v40, type metadata accessor for TTRRemindersListViewModel.Item);
            }
          }

          else
          {
            v46 = 32;
            do
            {
              v47 = *(v34 + v46);
              v48 = *(*v47 + 120);
              swift_beginAccess();
              sub_21D104E74(v47 + v48, v7, type metadata accessor for TTRRemindersListViewModel.Item);
              v55 = v25;
              v50 = *(v25 + 16);
              v49 = *(v25 + 24);
              if (v50 >= v49 >> 1)
              {
                sub_21D18EBA4((v49 > 1), v50 + 1, 1);
                v25 = v55;
              }

              *(v25 + 16) = v50 + 1;
              sub_21D2A0DC8(v7, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v50, type metadata accessor for TTRRemindersListViewModel.Item);
              v46 += 8;
              --v35;
            }

            while (v35);
          }

          sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
          return v25;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_15;
      }
    }

    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
  sub_21DBFC14C();
  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

void TTRRemindersListTreeViewModel.sectionItem(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - v13;
  v41 = v2;
  v39 = *(v6 + 56);
  v40 = v6 + 56;
  v39(v35 - v13, 1, 1, v5, v12);

  v15 = sub_21D263398(v14);

  sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
  v16 = *(v15 + 16);
  if (!v16)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_21:
    MEMORY[0x28223BE20](v21);
    v35[-2] = a1;
    sub_21D22D788(sub_21D2A0E78, v18, a2);

    return;
  }

  v36 = a1;
  v37 = a2;
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = v15;
  v19 = v15 + v17;
  sub_21D104E74(v19, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
LABEL_20:
    a1 = v36;
    a2 = v37;
    goto LABEL_21;
  }

  v22 = v5;
  v35[1] = v18;
  v42 = *(v6 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v17;
    v24 = v38;
    sub_21D104E74(v19, v38, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v24, v14, type metadata accessor for TTRRemindersListViewModel.Item);
    v25 = v22;
    (v39)(v14, 0, 1, v22);

    v26 = sub_21D263398(v14);

    sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = *(v26 + 16);
    v28 = v18[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v29 > v18[3] >> 1)
    {
      if (v28 <= v29)
      {
        v31 = v28 + v27;
      }

      else
      {
        v31 = v28;
      }

      v18 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v31, 1, v18);
    }

    v22 = v25;
    v17 = v23;
    if (*(v26 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v27)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v32 = v18[2];
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_25;
        }

        v18[2] = v34;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_23;
      }
    }

    v19 += v42;
    if (!--v16)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_21D263FE0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v14 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_21D104E74(v33, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v10, v13, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v13, v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v22 = 0;
  }

  else
  {
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = 1;
  }

  v23 = *(v3 + 56);
  v23(v21, v22, 1, v2);
  sub_21D104E74(v34, v18, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v23(v18, 0, 1, v2);
  v24 = *(v5 + 48);
  sub_21D0D3954(v21, v7, &unk_27CE5CD70, &unk_21DC09230);
  sub_21D0D3954(v18, &v7[v24], &unk_27CE5CD70, &unk_21DC09230);
  v25 = *(v3 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v27 = v32;
    sub_21D0D3954(v7, v32, &unk_27CE5CD70, &unk_21DC09230);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v27;
      v29 = v31;
      sub_21D2A0DC8(&v7[v24], v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v26 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v28, v29);
      sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v18, &unk_27CE5CD70, &unk_21DC09230);
      sub_21D0CF7E0(v21, &unk_27CE5CD70, &unk_21DC09230);
      sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v7, &unk_27CE5CD70, &unk_21DC09230);
      return v26 & 1;
    }

    sub_21D0CF7E0(v18, &unk_27CE5CD70, &unk_21DC09230);
    sub_21D0CF7E0(v21, &unk_27CE5CD70, &unk_21DC09230);
    sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_9;
  }

  sub_21D0CF7E0(v18, &unk_27CE5CD70, &unk_21DC09230);
  sub_21D0CF7E0(v21, &unk_27CE5CD70, &unk_21DC09230);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_9:
    sub_21D0CF7E0(v7, &qword_27CE58388, &unk_21DC0F470);
    v26 = 0;
    return v26 & 1;
  }

  sub_21D0CF7E0(v7, &unk_27CE5CD70, &unk_21DC09230);
  v26 = 1;
  return v26 & 1;
}

uint64_t TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v38 = a1;
  v33 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v31[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v31[-v20];
  sub_21D104E74(v38, &v31[-v20], type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = *(v7 + 56);
  v38 = v7 + 56;
  v37(v21, 0, 1, v6);
  sub_21D0D3954(v21, v18, &unk_27CE5CD80, &qword_21DC0CE80);
  v34 = *(v7 + 48);
  v35 = v7 + 48;
  if (v34(v18, 1, v6) == 1)
  {
LABEL_2:
    sub_21D0CF7E0(v21, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0CF7E0(v18, &unk_27CE5CD80, &qword_21DC0CE80);
LABEL_3:
    v22 = 1;
    v23 = v33;
    return v37(v23, v22, 1, v6);
  }

  sub_21D2A0DC8(v18, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D104E74(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0CF7E0(v21, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v32)
    {
      goto LABEL_17;
    }

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_3;
  }

  do
  {
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = *(v36 + 80);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
    swift_beginAccess();
    if (!*(*(v24 + 24) + 16) || (sub_21D181E00(), (v25 & 1) == 0))
    {
      swift_endAccess();
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v21, &unk_27CE5CD80, &qword_21DC0CE80);
      v28 = 1;
      goto LABEL_12;
    }

    swift_endAccess();

    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
    Strong = swift_weakLoadStrong();

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v21, &unk_27CE5CD80, &qword_21DC0CE80);

    if (Strong)
    {
      v27 = *(*Strong + 120);
      swift_beginAccess();
      sub_21D104E74(Strong + v27, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      v28 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v28 = 1;
LABEL_13:
    v37(v15, v28, 1, v6);
    sub_21D0D523C(v15, v21, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D3954(v21, v18, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v34(v18, 1, v6) == 1)
    {
      goto LABEL_2;
    }

    sub_21D2A0DC8(v18, v12, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  while (swift_getEnumCaseMultiPayload() != 1);
  sub_21D0CF7E0(v21, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_17:
  v29 = v33;
  sub_21D2A0DC8(v12, v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v23 = v29;
  v22 = 0;
  return v37(v23, v22, 1, v6);
}

uint64_t TTRRemindersListTreeViewModel.parent(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D2916C8(v4, sub_21D181E00);
  sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v5)
  {

    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v7 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v7, a1, type metadata accessor for TTRRemindersListViewModel.Item);

  v8 = 0;
LABEL_6:
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t TTRRemindersListTreeViewModel.numberOfSubtasks(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D104E74(a1, &v8 - v3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6;
}

uint64_t TTRRemindersListTreeViewModel.subtasks(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D263398(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6;
}

uint64_t TTRRemindersListTreeViewModel.isTopLevelReminder(_:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v12 = sub_21D2916C8(v2, sub_21D181E00);
  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v12)
  {

    goto LABEL_6;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_6:
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v14 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v14, v8, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D104E74(v8, v5, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v5, v11, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v15 = 0;
  }

  else
  {
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 1;
  }

  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = *(v17 - 8);
  v19 = 1;
  (*(v18 + 56))(v11, v15, 1, v17);
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_21D0CF7E0(v11, &qword_27CE5A3A8, &qword_21DC0F3E8);
  return v19;
}

uint64_t TTRRemindersListTreeViewModel.subtaskDisplayCount(of:)()
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

  v4 = v3 + *(*v3 + 128);
  swift_beginAccess();
  v5 = *(v4 + 8);

  return v5;
}

void TTRRemindersListTreeViewModel.remindersWithSubtasks.getter()
{
  v133 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v133);
  v135 = (&v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v128 = &v112 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v129 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v136 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7);
  v113 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v112 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v14 - 8);
  v143 = &v112 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v125 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v132 = &v112 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  MEMORY[0x28223BE20](v24);
  v137 = &v112 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v29);
  v139 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v112 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v34 - 8);
  v123 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v131 = &v112 - v37;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v112 - v40;
  v138 = v0;
  v42 = *(v17 + 56);
  v127 = v17 + 56;
  v126 = v42;
  (v42)(&v112 - v40, 1, 1, v16, v39);

  v43 = sub_21D263398(v41);
  v44 = v16;

  v119 = v41;
  v45 = v41;
  v46 = v43;
  sub_21D0CF7E0(v45, &unk_27CE5CD80, &qword_21DC0CE80);
  v47 = *(v43 + 16);
  v140 = v7;
  v144 = v44;
  v117 = v17;
  if (v47)
  {
    v48 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v49 = v43 + v48;
    sub_21D104E74(v46 + v48, v33, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
    if (EnumCaseMultiPayload)
    {
      v51 = v46;
      v17 = v117;
    }

    else
    {
      v130 = v48;
      v122 = v46;
      v141 = *(v117 + 72);
      v52 = MEMORY[0x277D84F90];
      do
      {
        v53 = v139;
        sub_21D104E74(v49, v139, type metadata accessor for TTRRemindersListViewModel.Item);
        v54 = v119;
        sub_21D104E74(v53, v119, type metadata accessor for TTRRemindersListViewModel.Item);
        v126(v54, 0, 1, v144);

        v55 = sub_21D263398(v54);

        sub_21D0CF7E0(v54, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.Item);
        v56 = *(v55 + 16);
        v57 = v52[2];
        v58 = v57 + v56;
        if (__OFADD__(v57, v56))
        {
          goto LABEL_88;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v52;
        if (!isUniquelyReferenced_nonNull_native || v58 > v52[3] >> 1)
        {
          if (v57 <= v58)
          {
            v61 = v57 + v56;
          }

          else
          {
            v61 = v57;
          }

          v60 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v61, 1, v52);
        }

        if (*(v55 + 16))
        {
          if ((v60[3] >> 1) - v60[2] < v56)
          {
            goto LABEL_90;
          }

          v52 = v60;
          swift_arrayInitWithCopy();

          if (v56)
          {
            v62 = v52[2];
            v63 = __OFADD__(v62, v56);
            v64 = v62 + v56;
            if (v63)
            {
              goto LABEL_91;
            }

            v52[2] = v64;
          }
        }

        else
        {
          v52 = v60;

          if (v56)
          {
            goto LABEL_89;
          }
        }

        v49 += v141;
        --v47;
      }

      while (v47);

      v17 = v117;
      v51 = v52;
    }
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v65 = v138;
  v66 = v144;
  v116 = v51[2];
  if (v116)
  {
    v67 = 0;
    v120 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v114 = v51 + v120;
    v141 = (v129 + 7);
    v130 = (v129 + 6);
    v121 = (v17 + 48);
    v129 = MEMORY[0x277D84F90];
    v115 = v51;
    while (v67 < v51[2])
    {
      v68 = *(v17 + 72);
      v122 = v67;
      v69 = v119;
      sub_21D104E74(&v114[v68 * v67], v119, type metadata accessor for TTRRemindersListViewModel.Item);
      v126(v69, 0, 1, v66);

      v70 = sub_21D263398(v69);

      sub_21D0CF7E0(v69, &unk_27CE5CD80, &qword_21DC0CE80);
      v71 = *(v70 + 16);
      if (v71)
      {
        v118 = v70;
        v72 = v70 + v120;
        v139 = v68;
        while (1)
        {
          sub_21D104E74(v72, v28, type metadata accessor for TTRRemindersListViewModel.Item);
          v74 = *(v65 + 80);
          sub_21D104E74(v28, v23, type metadata accessor for TTRRemindersListViewModel.Item);
          v75 = swift_getEnumCaseMultiPayload();
          if (v75 > 5)
          {
            if (v75 <= 7)
            {
              if (v75 == 6)
              {
                v82 = 1;
              }

              else
              {
                v82 = 2;
              }

              goto LABEL_50;
            }

            if (v75 == 8)
            {
              v82 = 4;
LABEL_50:
              *v13 = v82;
              swift_storeEnumTagMultiPayload();

              sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
              goto LABEL_55;
            }

            if (v75 == 9)
            {
              v78 = 3;
            }

            else
            {
              v78 = 5;
            }

            *v13 = v78;
          }

          else
          {
            if ((v75 - 2) >= 3)
            {
              if (v75 >= 2)
              {

                sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
                *v13 = 0;
              }

              else
              {
                v79 = v136;
                sub_21D2A0DC8(v23, v136, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                sub_21D104E74(v79, v135, type metadata accessor for TTRRemindersListViewModel.SectionID);
                LOBYTE(v79) = swift_getEnumCaseMultiPayload();

                v80 = 1 << v79;
                if (((1 << v79) & 0x17E) != 0)
                {
                  sub_21D106918(v135, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v81 = v128;
                  goto LABEL_52;
                }

                v81 = v128;
                if ((v80 & 0x81) != 0)
                {
LABEL_52:
                  v83 = v136;
                  sub_21D104E74(v136, v81, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  sub_21D106918(v83, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                }

                else
                {
                  sub_21D106918(v136, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                  *v81 = *v135;
                  swift_storeEnumTagMultiPayload();
                }

                sub_21D2A0DC8(v81, v13, type metadata accessor for TTRRemindersListViewModel.SectionID);
              }

              swift_storeEnumTagMultiPayload();
              goto LABEL_55;
            }

            v76 = v134;
            sub_21D2A0DC8(v23, v134, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v77 = v76;
            v68 = v139;
            sub_21D2A0DC8(v77, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          }

          swift_storeEnumTagMultiPayload();

LABEL_55:
          swift_beginAccess();
          if (!*(*(v74 + 24) + 16) || (sub_21D181E00(), (v84 & 1) == 0))
          {
            swift_endAccess();
            sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_29:
            v73 = v143;
            (*v141)(v143, 1, 1, v142);
            goto LABEL_30;
          }

          swift_endAccess();

          sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
          Strong = swift_weakLoadStrong();

          if (!Strong)
          {
            sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
            v65 = v138;
            goto LABEL_29;
          }

          v86 = *(*Strong + 120);
          swift_beginAccess();
          v87 = Strong + v86;
          v88 = v137;
          sub_21D104E74(v87, v137, type metadata accessor for TTRRemindersListViewModel.Item);

          v89 = v132;
          sub_21D104E74(v88, v132, type metadata accessor for TTRRemindersListViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v90 = v89;
            v73 = v143;
            sub_21D2A0DC8(v90, v143, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            v91 = 0;
            v65 = v138;
          }

          else
          {
            sub_21D106918(v89, type metadata accessor for TTRRemindersListViewModel.Item);
            v91 = 1;
            v65 = v138;
            v73 = v143;
          }

          v92 = v142;
          (*v141)(v73, v91, 1, v142);
          sub_21D106918(v137, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((*v130)(v73, 1, v92) != 1)
          {
            sub_21D0CF7E0(v73, &qword_27CE5A3A8, &qword_21DC0F3E8);
            v93 = *(v65 + 80);
            v94 = v131;
            sub_21D104E74(v28, v131, type metadata accessor for TTRRemindersListViewModel.Item);
            v95 = v144;
            v126(v94, 0, 1, v144);
            v96 = v94;
            v97 = v123;
            sub_21D0D3954(v96, v123, &unk_27CE5CD80, &qword_21DC0CE80);
            LODWORD(v95) = (*v121)(v97, 1, v95);

            if (v95 == 1)
            {
              sub_21D0CF7E0(v97, &unk_27CE5CD80, &qword_21DC0CE80);
              swift_beginAccess();
              v98 = *(v93 + 16);
              if (v98 >> 62)
              {
                v99 = sub_21DBFBD7C();
              }

              else
              {
                v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v65 = v138;
              v68 = v139;
            }

            else
            {
              v100 = v113;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v113);
              sub_21D106918(v97, type metadata accessor for TTRRemindersListViewModel.Item);
              sub_21D2A0DC8(v100, v124, type metadata accessor for TTRRemindersListViewModel.ItemID);
              swift_beginAccess();
              v101 = *(v93 + 24);
              if (*(v101 + 16) && (v102 = sub_21D181E00(), (v103 & 1) != 0))
              {
                v104 = *(*(v101 + 56) + 8 * v102);
                swift_endAccess();
                v105 = *(*v104 + 136);
                swift_beginAccess();
                v106 = *(v104 + v105);
                v68 = v139;
                if (v106 >> 62)
                {
                  v99 = sub_21DBFBD7C();
                }

                else
                {
                  v99 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v65 = v138;
              }

              else
              {
                swift_endAccess();
                v99 = 0;
                v65 = v138;
                v68 = v139;
              }

              sub_21D106918(v124, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D0CF7E0(v131, &unk_27CE5CD80, &qword_21DC0CE80);

            if (v99 <= 0)
            {
              sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            else
            {
              sub_21D104E74(v28, v125, type metadata accessor for TTRRemindersListViewModel.Item);
              v107 = v129;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v107 = sub_21D211A80(0, v107[2] + 1, 1, v107);
              }

              v108 = v107;
              v109 = v107[2];
              v129 = v108;
              v110 = v108[3];
              if (v109 >= v110 >> 1)
              {
                v129 = sub_21D211A80((v110 > 1), v109 + 1, 1, v129);
              }

              sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
              v111 = v129;
              v129[2] = v109 + 1;
              sub_21D2A0DC8(v125, v111 + v120 + v109 * v68, type metadata accessor for TTRRemindersListViewModel.Item);
              v65 = v138;
            }

            goto LABEL_31;
          }

          sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
          v68 = v139;
LABEL_30:
          sub_21D0CF7E0(v73, &qword_27CE5A3A8, &qword_21DC0F3E8);
LABEL_31:
          v72 += v68;
          if (!--v71)
          {

            v66 = v144;
            goto LABEL_24;
          }
        }
      }

LABEL_24:
      v67 = v122 + 1;
      v17 = v117;
      v51 = v115;
      if (v122 + 1 == v116)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  else
  {
LABEL_86:
  }
}

BOOL TTRRemindersListTreeViewModel.isReminderWithSubtasks(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return 0;
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6 > 0;
}

void TTRRemindersListTreeViewModel.hasLoadedEditableSectionItems(with:)(void *a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v52 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v12);
  v53 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v52 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8, &qword_21DC0F3E8);
  MEMORY[0x28223BE20](v22 - 8);
  v54 = v52 - v23;
  *v16 = a1;
  v56 = v16;
  swift_storeEnumTagMultiPayload();
  v24 = *(v4 + 56);
  v61 = v4 + 56;
  v62 = v1;
  v60 = v24;
  v24(v19, 1, 1, v3);
  v25 = a1;

  v26 = sub_21D263398(v19);

  sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
  v27 = *(v26 + 16);
  v57 = v4;
  if (v27)
  {
    v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v29 = v26 + v28;
    sub_21D104E74(v26 + v28, v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v30 = v26;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v59 = v28;
      v52[1] = v30;
      v63 = *(v4 + 72);
      v33 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D104E74(v29, v8, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v8, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v34 = v3;
        v60(v19, 0, 1, v3);

        v35 = sub_21D263398(v19);

        sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = *(v35 + 16);
        v37 = v33[2];
        v38 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v38 > v33[3] >> 1)
        {
          if (v37 <= v38)
          {
            v40 = v37 + v36;
          }

          else
          {
            v40 = v37;
          }

          v33 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v40, 1, v33);
        }

        v3 = v34;
        if (*(v35 + 16))
        {
          if ((v33[3] >> 1) - v33[2] < v36)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v36)
          {
            v41 = v33[2];
            v42 = __OFADD__(v41, v36);
            v43 = v41 + v36;
            if (v42)
            {
              goto LABEL_37;
            }

            v33[2] = v43;
          }
        }

        else
        {

          if (v36)
          {
            goto LABEL_35;
          }
        }

        v29 += v63;
        if (!--v27)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v33 = v30;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

LABEL_21:
  MEMORY[0x28223BE20](v32);
  v44 = v56;
  v52[-2] = v56;
  v45 = v58;
  sub_21D22D788(sub_21D2F8BAC, v33, v58);

  sub_21D106918(v44, type metadata accessor for TTRRemindersListViewModel.SectionID);
  if ((*(v57 + 48))(v45, 1, v3) == 1)
  {
    sub_21D0CF7E0(v45, &unk_27CE5CD80, &qword_21DC0CE80);
    return;
  }

  v46 = v55;
  sub_21D104E74(v45, v55, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v54;
    sub_21D2A0DC8(v46, v54, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v48 = 0;
  }

  else
  {
    sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    v48 = 1;
    v47 = v54;
  }

  v49 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v50 = *(v49 - 8);
  (*(v50 + 56))(v47, v48, 1, v49);
  sub_21D106918(v45, type metadata accessor for TTRRemindersListViewModel.Item);
  if ((*(v50 + 48))(v47, 1, v49) == 1)
  {
    sub_21D0CF7E0(v47, &qword_27CE5A3A8, &qword_21DC0F3E8);
    return;
  }

  v51 = v53;
  sub_21D104E74(v47, v53, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D106918(v47, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v64);
  sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.SectionID);
  if (v65 > 1u)
  {
    if (v65 != 2)
    {
      return;
    }
  }

  else if (!v65)
  {

    return;
  }
}

BOOL TTRRemindersListTreeViewModel.hasLoadedReminderItems(with:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  if (*(v3 + 16) && (v4 = sub_21D17E07C(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    return *(v6 + 16) != 0;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t TTRRemindersListTreeViewModel.hasLoadedReminderItems(in:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_21D104E74(a1, &v24 - v17, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v7 + 56))(v18, 0, 1, v6);

  result = sub_21D261568(v18);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    sub_21D0D523C(v18, v15, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v20)
    {
      for (i = 0; v20 != i; ++i)
      {
        sub_21D26181C(i, v15, v12);
        sub_21D2A0DC8(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload < 2)
          {
LABEL_4:
            sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
            swift_storeEnumTagMultiPayload();
            continue;
          }
        }

        else
        {
          if ((EnumCaseMultiPayload - 5) < 4)
          {
            goto LABEL_4;
          }

          if ((EnumCaseMultiPayload - 9) < 2)
          {
            goto LABEL_5;
          }
        }

        sub_21D2A0DC8(v9, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        swift_storeEnumTagMultiPayload();
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 <= 1)
        {
          if (v23 != 1)
          {

            sub_21D0CF7E0(v15, &unk_27CE5CD80, &qword_21DC0CE80);
            sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
            return 1;
          }

LABEL_17:
          sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
          continue;
        }

        if (v23 == 2)
        {
          goto LABEL_17;
        }
      }
    }

    sub_21D0CF7E0(v15, &unk_27CE5CD80, &qword_21DC0CE80);
    return 0;
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.isEffectivelyEmpty.getter()
{
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v29);
  v30 = (&v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  (*(v4 + 56))(&v27 - v15, 1, 1, v3, v14);

  v17 = sub_21D2678E4(v16);

  sub_21D0CF7E0(v16, &unk_27CE5CD80, &qword_21DC0CE80);
  v27 = v17;
  sub_21DBFC10C();
  sub_21DBFC42C();
  v18 = *(v4 + 48);
  if (v18(v12, 1, v3) == 1)
  {
LABEL_2:

    return 1;
  }

  v20 = v28;
  while (1)
  {
    sub_21D2A0DC8(v12, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
        swift_storeEnumTagMultiPayload();
        goto LABEL_6;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_5;
      }
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_13:
    sub_21D2A0DC8(v6, v9, v22);
    swift_storeEnumTagMultiPayload();
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 > 1)
    {
      if (v23 != 5)
      {

        sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
        return 0;
      }

      goto LABEL_6;
    }

    if (!v23)
    {
      v24 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem;
      v25 = v9;
      goto LABEL_28;
    }

    sub_21D2A0DC8(v9, v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v20, v30, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      break;
    }

    if (v26 > 2)
    {
      goto LABEL_27;
    }

    if (v26)
    {
      if (v26 != 2)
      {
        goto LABEL_30;
      }

LABEL_27:
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v25 = v30;
LABEL_28:
      sub_21D106918(v25, v24);
    }

LABEL_6:
    sub_21DBFC42C();
    if (v18(v12, 1, v3) == 1)
    {
      goto LABEL_2;
    }
  }

  if (v26 <= 6)
  {
    goto LABEL_27;
  }

  if (v26 == 7)
  {
    goto LABEL_6;
  }

  if (v26 == 8)
  {

    goto LABEL_6;
  }

LABEL_30:

  return 0;
}

uint64_t sub_21D2678E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21D0D3954(a1, v5, &unk_27CE5CD80, &qword_21DC0CE80);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
    swift_beginAccess();
    v13 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A570, &qword_21DC0FAC8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v15 = sub_21D2916C8(v11, sub_21D181E00);
    if (!v15)
    {
      sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A580, &unk_21DC417F0);
      result = swift_allocObject();
      *(result + 16) = MEMORY[0x277D84F90];
      return result;
    }

    v16 = *(*v15 + 136);
    v17 = v15;
    swift_beginAccess();
    v18 = *(v17 + v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A570, &qword_21DC0FAC8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v18;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A578, &unk_21DC0FAD0);
  result = swift_allocObject();
  *(result + 16) = sub_21D2F8B80;
  *(result + 24) = v19;
  return result;
}

uint64_t sub_21D267C40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21D0D3954(a1, v5, &qword_27CE5A490, &unk_21DC0F950);
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A490, &unk_21DC0F950);
    swift_beginAccess();
    v13 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B0, &qword_21DC0F990);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v15 = sub_21D2916C8(v11, sub_21D105CF4);
    if (!v15)
    {
      sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4C0, &unk_21DC0F9A0);
      result = swift_allocObject();
      *(result + 16) = MEMORY[0x277D84F90];
      return result;
    }

    v16 = *(*v15 + 136);
    v17 = v15;
    swift_beginAccess();
    v18 = *(v17 + v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B0, &qword_21DC0F990);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v18;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();

    sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B8, &qword_21DC0F998);
  result = swift_allocObject();
  *(result + 16) = sub_21D2F89A0;
  *(result + 24) = v19;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.hasSubtasks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8, &unk_21DC0F3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = v37 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v37 - v21;
  (*(v9 + 56))(v37 - v21, 1, 1, v8, v20);

  v23 = sub_21D2678E4(v22);

  sub_21D0CF7E0(v22, &unk_27CE5CD80, &qword_21DC0CE80);

  v37[1] = v23;
  v41 = sub_21DBFC10C();
  sub_21DBFC42C();
  v24 = *(v9 + 48);
  v40 = v9 + 48;
  if (v24(v18, 1, v8) != 1)
  {
    while (1)
    {
      sub_21D2A0DC8(v18, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      v28 = *(v1 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
      swift_beginAccess();
      if (!*(*(v28 + 24) + 16) || (sub_21D181E00(), (v29 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_5:
        v27 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
        (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
        goto LABEL_6;
      }

      v30 = v1;
      swift_endAccess();

      sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      Strong = swift_weakLoadStrong();

      if (!Strong)
      {
        goto LABEL_5;
      }

      v32 = *(*Strong + 120);
      swift_beginAccess();
      v33 = Strong + v32;
      v34 = v39;
      sub_21D104E74(v33, v39, type metadata accessor for TTRRemindersListViewModel.Item);

      sub_21D104E74(v34, v38, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_15;
      }

      v1 = v30;
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_19;
      }

LABEL_16:
      v36 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      swift_storeEnumTagMultiPayload();
      sub_21D106918(v39, type metadata accessor for TTRRemindersListViewModel.Item);
      (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
      if (swift_getEnumCaseMultiPayload() < 3)
      {
        sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        sub_21D106918(v15, type metadata accessor for TTRRemindersListViewModel.Item);
        v25 = 1;
        goto LABEL_3;
      }

LABEL_6:
      sub_21D106918(v15, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC42C();
      if (v24(v18, 1, v8) == 1)
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload < 2)
    {
LABEL_15:
      sub_21D106918(v38, type metadata accessor for TTRRemindersListViewModel.Item);
      v1 = v30;
      goto LABEL_16;
    }

    v1 = v30;
LABEL_19:
    sub_21D2A0DC8(v38, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_16;
  }

LABEL_2:
  v25 = 0;
LABEL_3:

  return v25;
}

uint64_t TTRRemindersListTreeViewModel.isSubtask(_:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v9 = sub_21D2916C8(v2, sub_21D181E00);
  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v9)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v11 = *(*Strong + 120);
      swift_beginAccess();
      sub_21D104E74(Strong + v11, v5, type metadata accessor for TTRRemindersListViewModel.Item);

      TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v8);
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() < 3)
      {
        sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListTreeViewModel.isItemExpandable(_:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  if ((*(v7 + 16))(a1, ObjectType, v7))
  {
    return 0;
  }

  TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v6);
  if (swift_getEnumCaseMultiPayload() > 4)
  {
    return 0;
  }

  sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
  return 1;
}

uint64_t TTRRemindersListTreeViewModel.parentOfSubtask(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (TTRRemindersListTreeViewModel.isSubtask(_:)())
  {

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
    v5 = sub_21D2916C8(v4, sub_21D181E00);
    sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v5)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v7 = *(*Strong + 120);
        swift_beginAccess();
        sub_21D104E74(Strong + v7, a1, type metadata accessor for TTRRemindersListViewModel.Item);

        v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
        return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
      }
    }

    else
    {
    }

    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_21D268BC0(uint64_t a1, int a2)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v61 = &v53[-v7];
  MEMORY[0x28223BE20](v8);
  v57 = &v53[-v9];
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v53[-v16];
  v62 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v18 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v55 = &v53[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v53[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v53[-v26];
  v28 = v2;

  v59 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
  v29 = sub_21D2916C8(v17, sub_21D181E00);
  sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v29)
  {

LABEL_18:
    LOBYTE(Strong) = 0;
    return Strong & 1;
  }

  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v31 = *(*Strong + 120);
    swift_beginAccess();
    sub_21D104E74(Strong + v31, v24, type metadata accessor for TTRRemindersListViewModel.Item);

    v32 = v27;
    sub_21D2A0DC8(v24, v27, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload - 2 < 3)
    {
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
      v34 = v28;
LABEL_11:
      v45 = v61;
      sub_21D104E74(v27, v61, type metadata accessor for TTRRemindersListViewModel.Item);
      v46 = v62;
      (*(v18 + 56))(v45, 0, 1, v62);
      v38 = v60;
      sub_21D26B570(v45, v34, v60);
      sub_21D0CF7E0(v45, &unk_27CE5CD80, &qword_21DC0CE80);
      if ((*(v18 + 48))(v38, 1, v46) == 1)
      {
        goto LABEL_12;
      }

      v47 = v38;
      v48 = v56;
      sub_21D2A0DC8(v47, v56, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
      v49 = v58;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v58);
      v50 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v17, v49);
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v50)
      {
        LOBYTE(Strong) = sub_21D268BC0(v27, 0);
        sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.Item);
        return Strong & 1;
      }

      sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = v27;
LABEL_17:
      sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_18;
    }

    v34 = v28;
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_11;
    }

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
    v35 = v61;
    sub_21D104E74(v27, v61, type metadata accessor for TTRRemindersListViewModel.Item);
    v36 = *(v18 + 56);
    v37 = v62;
    (v36)(v35, 0, 1, v62);
    v38 = v57;
    sub_21D26B570(v35, v28, v57);
    sub_21D0CF7E0(v35, &unk_27CE5CD80, &qword_21DC0CE80);
    if ((*(v18 + 48))(v38, 1, v37) == 1)
    {
LABEL_12:
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v38, &unk_27CE5CD80, &qword_21DC0CE80);
      goto LABEL_18;
    }

    v60 = v36;
    v39 = v38;
    v40 = v55;
    sub_21D2A0DC8(v39, v55, type metadata accessor for TTRRemindersListViewModel.Item);
    v41 = v59;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
    v42 = v58;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v58);
    v43 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v17, v42);
    sub_21D106918(v42, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if ((v43 & 1) == 0)
    {
      sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = v32;
      goto LABEL_17;
    }

    if (v54)
    {
      sub_21D104E74(v41, v35, type metadata accessor for TTRRemindersListViewModel.Item);
      (v60)(v35, 0, 1, v62);

      v44 = sub_21D261568(v35);

      sub_21D0CF7E0(v35, &unk_27CE5CD80, &qword_21DC0CE80);
      sub_21D106918(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      LOBYTE(Strong) = v44 == 0;
    }

    else
    {
      sub_21D106918(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      LOBYTE(Strong) = 1;
    }
  }

  return Strong & 1;
}

uint64_t sub_21D2693D4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v0);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v17 = sub_21D2916C8(v10, sub_21D181E00);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v17)
  {

    return 0;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  v19 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v19, v13, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D2A0DC8(v13, v16, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v4);
  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_11:
    v24 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem;
    v25 = v4;
LABEL_12:
    sub_21D106918(v25, v24);
    return 0;
  }

  sub_21D2A0DC8(v4, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v21 = v26;
  sub_21D104E74(v7, v26, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v22 = swift_getEnumCaseMultiPayload();
  result = 1;
  if (v22 > 4)
  {
    if (v22 <= 7)
    {
      if (v22 == 5 || v22 == 6)
      {
        goto LABEL_20;
      }

      return result;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID;
    v25 = v21;
    goto LABEL_12;
  }

  if (v22 > 1 || v22)
  {
LABEL_20:
    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return 1;
  }

  return result;
}

void TTRRemindersListTreeViewModel.locationAfterLastTopLevelItemInLastSection(passing:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62 = a3;
  v63 = a2;
  v67 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v69 = &v57 - v21;
  v71 = *(v10 + 56);
  v72 = v10 + 56;
  v71(v8, 1, 1, v9, v20);

  v22 = sub_21D263398(v8);

  sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
  v23 = *(v22 + 16);
  if (v23)
  {
    v65 = v8;
    v24 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = v22;
    sub_21D104E74(v24, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v57 = v22;
      v58 = v10;
      v66 = *(v10 + 72);
      v70 = MEMORY[0x277D84F90];
      while (1)
      {
        v27 = v64;
        sub_21D104E74(v24, v64, type metadata accessor for TTRRemindersListViewModel.Item);
        v28 = v4;
        v29 = v65;
        sub_21D104E74(v27, v65, type metadata accessor for TTRRemindersListViewModel.Item);
        (v71)(v29, 0, 1, v9);

        v30 = sub_21D263398(v29);

        sub_21D0CF7E0(v29, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.Item);
        v31 = *(v30 + 16);
        v32 = v70[2];
        v33 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v70;
        if (!isUniquelyReferenced_nonNull_native || v33 > v70[3] >> 1)
        {
          if (v32 <= v33)
          {
            v36 = v32 + v31;
          }

          else
          {
            v36 = v32;
          }

          v35 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v36, 1, v70);
        }

        v4 = v28;
        v37 = *(v30 + 16);
        v70 = v35;
        if (v37)
        {
          if ((v35[3] >> 1) - v35[2] < v31)
          {
            goto LABEL_31;
          }

          swift_arrayInitWithCopy();

          if (v31)
          {
            v38 = v70[2];
            v39 = __OFADD__(v38, v31);
            v40 = v38 + v31;
            if (v39)
            {
              goto LABEL_32;
            }

            v70[2] = v40;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_30;
          }
        }

        v24 += v66;
        if (!--v23)
        {

          v10 = v58;
          v25 = v70;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_20:
    v8 = v65;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v41 = v25[2];
  if (v41)
  {
    v42 = v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v41 - 1);
    v43 = v61;
    sub_21D104E74(v42, v61, type metadata accessor for TTRRemindersListViewModel.Item);

    v44 = v43;
    v45 = v69;
    sub_21D2A0DC8(v44, v69, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v45, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    (v71)(v8, 0, 1, v9);

    v46 = sub_21D261568(v8);

    sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v46 < 0)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v47 = v68;
    do
    {
      v48 = v46;
      if (!v46)
      {
        break;
      }

      --v46;
      sub_21D104E74(v69, v8, type metadata accessor for TTRRemindersListViewModel.Item);
      (v71)(v8, 0, 1, v9);

      sub_21D26181C(v48 - 1, v8, v47);

      sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
      v49 = v67(v47);
      sub_21D106918(v47, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    while ((v49 & 1) == 0);
    v50 = v9;
    v51 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    v53 = v69;
    sub_21D104E74(v69, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v54 = v71;
    (v71)(v8, 0, 1, v50);
    v55 = v60;
    v54(v60, 1, 1, v50);
    sub_21D0F02F4(v8, v55, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v55 + *(v59 + 36)) = v48;
    (*(v51 + 32))(v55, ObjectType, v51);
    sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v55, &qword_27CE58900, &unk_21DC207C0);
  }

  else
  {

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
    (*(*(v56 - 8) + 56))(v62, 1, 1, v56);
  }
}

uint64_t TTRRemindersListTreeViewModel.relativeInsertionPosition(forInsertingAt:skipping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0, &qword_21DC09B48);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  sub_21D0D3954(a1, v10, &qword_27CE58900, &unk_21DC207C0);
  sub_21D0D3954(v10, v6, &unk_27CE5CD80, &qword_21DC0CE80);
  v15 = *&v10[*(v8 + 44)];

  sub_21D0CF7E0(v10, &qword_27CE58900, &unk_21DC207C0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_21D0F02F4(v6, v14, &unk_27CE5CD80, &qword_21DC0CE80);
  *&v14[*(v12 + 44)] = v15;
  sub_21D26A1DC(v14, v19, v18);

  return sub_21D0CF7E0(v14, &qword_27CE588F0, &qword_21DC09B48);
}

unint64_t sub_21D26A1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A560, &qword_21DC0FAB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  result = sub_21D261568(a1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0, &qword_21DC09B48);
    v19 = *(a1 + *(v18 + 36));
    if (v19 <= v17)
    {
      v28[2] = 0;
      v28[3] = v19;
      MEMORY[0x28223BE20](v18);
      v28[-4] = v3;
      v28[-3] = a1;
      v28[-2] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4F0, &unk_21DC0F9E0);
      v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      sub_21D0D0F1C(&qword_27CE5A4F8, &qword_27CE5A4F0, &unk_21DC0F9E0, MEMORY[0x277D84440]);
      sub_21DBFA48C();
      sub_21D0D523C(v15, v12, &unk_27CE5CD80, &qword_21DC0CE80);
      if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568, &qword_21DC0FAC0);
        (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      }

      else
      {
        sub_21D2A0DC8(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568, &qword_21DC0FAC0);
        swift_storeEnumTagMultiPayload();
        (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568, &qword_21DC0FAC0);
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v9, 1, v25) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v27(v9, 1, v25) != 1)
        {
          sub_21D0CF7E0(v9, &qword_27CE5A560, &qword_21DC0FAB8);
        }
      }

      else
      {
        sub_21D0D523C(v9, a3, &qword_27CE5A568, &qword_21DC0FAC0);
      }

      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568, &qword_21DC0FAC0);
      v21 = *(*(v20 - 8) + 56);

      return v21(a3, 1, 1, v20);
    }
  }

  return result;
}

unint64_t sub_21D26A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  result = sub_21D0E8DA0(a1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
    v19 = *(a1 + *(v18 + 36));
    if (v19 <= v17)
    {
      v28[2] = 0;
      v28[3] = v19;
      MEMORY[0x28223BE20](v18);
      v28[-4] = v3;
      v28[-3] = a1;
      v28[-2] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4F0, &unk_21DC0F9E0);
      v22 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      sub_21D0D0F1C(&qword_27CE5A4F8, &qword_27CE5A4F0, &unk_21DC0F9E0, MEMORY[0x277D84440]);
      sub_21DBFA48C();
      sub_21D0D523C(v15, v12, &qword_27CE5A490, &unk_21DC0F950);
      if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
        (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      }

      else
      {
        sub_21D2A0DC8(v12, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
        swift_storeEnumTagMultiPayload();
        (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v9, 1, v25) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v27(v9, 1, v25) != 1)
        {
          sub_21D0CF7E0(v9, &qword_27CE5A4E8, &qword_21DC0F9D8);
        }
      }

      else
      {
        sub_21D0D523C(v9, a3, &qword_27CE5A500, &qword_21DC29A80);
      }

      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
      v21 = *(*(v20 - 8) + 56);

      return v21(a3, 1, 1, v20);
    }
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.presentationLocation(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;

  sub_21D25F7C0(v8);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5A3C0, &qword_21DC0F400);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  else
  {
    v21 = *&v8[*(v18 + 48)];
    v22 = *(v9 + 48);
    v27 = a1;
    sub_21D0D523C(v8, v11, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v11[v22] = v21;
    v23 = *&v11[*(v9 + 48)];
    sub_21D0D523C(v11, v17, &unk_27CE5CD80, &qword_21DC0CE80);
    v24 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v17, v14, &unk_27CE5CD80, &qword_21DC0CE80);
    v26 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    sub_21D0F02F4(v14, v5, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v5[*(v28 + 36)] = v23;
    (*(v24 + 32))(v5, ObjectType, v24);
    sub_21D0CF7E0(v17, &unk_27CE5CD80, &qword_21DC0CE80);
    return sub_21D0CF7E0(v5, &qword_27CE58900, &unk_21DC207C0);
  }
}

uint64_t TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D0, &qword_21DC0F418);
  sub_21DBFA53C();
  sub_21D25B6A0(v6);
  v4 = v3;

  return v4;
}

void sub_21D26AF7C(uint64_t a1, void **a2, void *a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *a2;
  swift_beginAccess();
  if (*(a3[12] + 16) && (sub_21D17E07C(v12), (v13 & 1) != 0))
  {
    swift_endAccess();

    v14 = v12;
    v15 = sub_21DBF8E0C();
    sub_21D2A06F4(v15, a3, v14);
    v17 = v16;

    v18 = *(v17 + 16);
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_endAccess();
    v17 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  v19 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  do
  {
    sub_21D104E74(v19, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D29BEAC(v11, v8);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v19 += v20;
    --v18;
  }

  while (v18);
LABEL_8:
}

uint64_t TTRRemindersListTreeViewModel.existingReminderIDs(having:)(void *a1)
{
  swift_beginAccess();
  if (*(v1[12] + 16) && (sub_21D17E07C(a1), (v3 & 1) != 0))
  {
    swift_endAccess();

    v4 = a1;
    v5 = sub_21DBF8E0C();
    sub_21D2A06F4(v5, v1, v4);
    v7 = v6;

    return v7;
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x277D84F90];
  }
}

double TTRRemindersListTreeViewModel.firstReminderItem(with:in:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2[12] + 16) && (sub_21D17E07C(a1), (v4 & 1) != 0))
  {
    swift_endAccess();

    v5 = a1;
    v6 = sub_21DBF8E0C();
    sub_21D2A06F4(v6, v2, v5);
  }

  else
  {
    v7 = swift_endAccess();
  }

  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D8, &qword_21DC0F420);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21D0D0F1C(&qword_27CE5A3E0, &qword_27CE5A3D8, &qword_21DC0F420, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  return result;
}

uint64_t sub_21D26B3E8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();

  v9 = sub_21DAEB4C0(v8);

  if (v9)
  {
    sub_21D2A0DC8(v8, a3, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = 0;
  }

  else
  {
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = 1;
  }

  return (*(v6 + 56))(a3, v10, 1, v5);
}

uint64_t sub_21D26B570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = (*(v7 + 24))(a1, ObjectType, v7);
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, a1, ObjectType, v7);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

BOOL sub_21D26B6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return 0;
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6 > 0;
}

uint64_t sub_21D26B7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D104E74(a1, &v8 - v3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6;
}

uint64_t sub_21D26B8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D263398(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80, &qword_21DC0CE80);
  return v6;
}

double sub_21D26BA34(void *a1, uint64_t a2)
{
  TTRRemindersListTreeViewModel.existingReminderIDs(having:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D8, &qword_21DC0F420);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21D0D0F1C(&qword_27CE5A3E0, &qword_27CE5A3D8, &qword_21DC0F420, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  return result;
}

uint64_t TTRRemindersListTreeViewModel.insertNewItem(_:at:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_21D104E74(a1, &v11 - v6, type metadata accessor for TTRRemindersListViewModel.Item);
  v8 = &v7[*(v5 + 60)];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v7[*(v5 + 64)] = MEMORY[0x277D84F90];
  v9 = *&a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0) + 36)];

  sub_21D26BC40(v7, a2, v9);

  return sub_21D0CF7E0(v7, &qword_27CE581C8, &qword_21DC08F80);
}

void sub_21D26BC40(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = MEMORY[0x277D84F98];
  v16[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587E8, &unk_21DC09A28);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  sub_21D0D3954(a1, v9 + v8, &qword_27CE581C8, &qword_21DC08F80);
  sub_21DB8503C(v9, v16, &v17);
  swift_setDeallocating();
  sub_21D0CF7E0(v9 + v8, &qword_27CE581C8, &qword_21DC08F80);
  swift_deallocClassInstance();
  v10 = v16[0];
  if (!(v16[0] >> 62))
  {
    if (*((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v11 = MEMORY[0x223D44740](0, v10);
    goto LABEL_6;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);

    swift_endAccess();
    __break(1u);
    return;
  }

  v11 = *(v10 + 32);

LABEL_6:

  v12 = sub_21D291750(v11, a2, a3);
  v13 = v17;
  if (v12)
  {
    swift_beginAccess();
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_21D2A2E5C(v13, sub_21D29FEF4, 0, isUniquelyReferenced_nonNull_native, &v15);

    *(v3 + 24) = v15;
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t TTRRemindersListTreeViewModel.delete(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D26C21C(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3C0, &qword_21DC0F400);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80, &qword_21DC0CE80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80, &qword_21DC0CE80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t sub_21D26C21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v8 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  sub_21D104E74(a1, v10 + v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = sub_21D26C578(v10);

  if (*(v11 + 2))
  {
    sub_21D0D3954(&v11[(*(v5 + 80) + 32) & ~*(v5 + 80)], v7, &qword_27CE59D70, &unk_21DC0D058);

    v12 = sub_21DBF5ABC();
    if (v13)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }

    else
    {
      v18 = v12;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      v20 = *(v19 + 48);
      sub_21D0D3954(v7, a2, &unk_27CE5CD80, &qword_21DC0CE80);
      *(a2 + v20) = v18;
      (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    }

    return sub_21D0CF7E0(v7, &qword_27CE59D70, &unk_21DC0D058);
  }

  else
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

char *TTRRemindersListTreeViewModel.delete(_:)(uint64_t a1)
{

  v2 = sub_21D26C578(a1);

  return v2;
}

char *sub_21D26C578(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v155 - v5;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
  v164 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v155 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058);
  v157 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v175 = &v155 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v155 - v12;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v191);
  v190 = &v155 - v14;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v192);
  v16 = &v155 - v15;
  v194 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v208 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v163 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v195 = &v155 - v19;
  MEMORY[0x28223BE20](v20);
  v177 = (&v155 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v155 - v23;
  v189 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v189);
  v199 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v176 = &v155 - v27;
  v28 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v28 - 8);
  v180 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v182 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v204 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v203 = (&v155 - v33);
  MEMORY[0x28223BE20](v34);
  v206 = &v155 - v35;
  MEMORY[0x28223BE20](v36);
  v205 = &v155 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v155 - v39;
  MEMORY[0x28223BE20](v41);
  v211 = &v155 - v42;
  MEMORY[0x28223BE20](v43);
  v184 = &v155 - v44;
  v197 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v45 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v170 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v159 = &v155 - v48;
  MEMORY[0x28223BE20](v49);
  v193 = &v155 - v50;
  MEMORY[0x28223BE20](v51);
  v202 = &v155 - v52;
  MEMORY[0x28223BE20](v53);
  v185 = &v155 - v54;
  v55 = *(a1 + 16);
  v186 = v2;
  v181 = v6;
  v174 = v45;
  if (v55 >= 2)
  {
    v165 = v24;
    v167 = v55;
    v173 = v13;
    v212 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
    sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    v56 = sub_21DBFA49C();
    v57 = 0;
    v58 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v168 = *(v45 + 72);
    v158 = v58;
    v166 = a1 + v58;
    v209 = v56 + 56;
    v210 = v56;
    v179 = 0x800000021DC43E30;
    v178 = 0x800000021DC43E00;
    v196 = 0x800000021DC43DE0;
    v188 = (v208 + 48);
    v160 = MEMORY[0x277D84F90];
    v198 = v30;
    v59 = v206;
    v60 = v184;
    v61 = v193;
    v187 = v40;
    while (1)
    {
      v183 = v57;
      sub_21D104E74(v166 + v168 * v57, v185, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v60);
      swift_beginAccess();
      v62 = *(v2 + 24);
      if (!*(v62 + 16) || (v63 = sub_21D181E00(), (v64 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v60, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_4:
        sub_21D106918(v185, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_5;
      }

      v65 = *(*(v62 + 56) + 8 * v63);
      swift_endAccess();

      sub_21D106918(v60, type metadata accessor for TTRRemindersListViewModel.ItemID);

      v169 = 0;
      v161 = v65;
      v67 = v192;
LABEL_11:
      v69 = v66;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_113:

      v2 = v186;
      if (v169)
      {
        goto LABEL_4;
      }

      sub_21D2A0DC8(v185, v159, type metadata accessor for TTRRemindersListViewModel.Item);
      v126 = v160;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18EBA4(0, *(v126 + 16) + 1, 1);
        v126 = v213;
      }

      v129 = *(v126 + 16);
      v128 = *(v126 + 24);
      if (v129 >= v128 >> 1)
      {
        sub_21D18EBA4((v128 > 1), v129 + 1, 1);
        v126 = v213;
      }

      *(v126 + 16) = v129 + 1;
      v160 = v126;
      sub_21D2A0DC8(v159, v126 + v158 + v129 * v168, type metadata accessor for TTRRemindersListViewModel.Item);
      v59 = v206;
LABEL_5:
      v57 = v183 + 1;
      if (v183 + 1 == v167)
      {

        result = v160;
        v55 = *(v160 + 16);
        v6 = v181;
        if (!v55)
        {
          goto LABEL_131;
        }

LABEL_120:
        v131 = 0;
        v132 = (v164 + 48);
        v133 = MEMORY[0x277D84F90];
        v134 = v174;
        while (v131 < *(result + 2))
        {
          v135 = result;
          v136 = v170;
          sub_21D104E74(&result[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v131], v170, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D25F7C0(v6);
          v6 = v181;
          sub_21D106918(v136, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((*v132)(v6, 1, v172) == 1)
          {
            sub_21D0CF7E0(v6, &qword_27CE5A3C0, &qword_21DC0F400);
          }

          else
          {
            v137 = v6;
            v138 = v162;
            sub_21D0D523C(v137, v162, &qword_27CE59D88, &qword_21DC0F410);
            sub_21D0D523C(v138, v171, &qword_27CE59D88, &qword_21DC0F410);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v133 = sub_21D211AA8(0, v133[2] + 1, 1, v133);
            }

            v140 = v133[2];
            v139 = v133[3];
            if (v140 >= v139 >> 1)
            {
              v133 = sub_21D211AA8((v139 > 1), v140 + 1, 1, v133);
            }

            v133[2] = v140 + 1;
            sub_21D0D523C(v171, v133 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v140, &qword_27CE59D88, &qword_21DC0F410);
            v6 = v181;
          }

          ++v131;
          result = v135;
          v134 = v174;
          if (v55 == v131)
          {
            goto LABEL_132;
          }
        }

        __break(1u);
        return result;
      }
    }

    v200 = v69;
    v71 = *(*Strong + 120);
    v72 = Strong;
    swift_beginAccess();
    v201 = v72;
    v73 = v72 + v71;
    v74 = v202;
    sub_21D104E74(v73, v202, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v74, v61, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v81 = v211;
          v82 = 1;
        }

        else
        {
          v81 = v211;
          v82 = 2;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            v77 = v211;
            v78 = 3;
          }

          else
          {
            v77 = v211;
            v78 = 5;
          }

          *v77 = v78;
          goto LABEL_33;
        }

        v81 = v211;
        v82 = 4;
      }

      *v81 = v82;
      swift_storeEnumTagMultiPayload();
      sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_34:
      sub_21D106918(v202, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v210 + 16))
      {
        v68 = 0;
        goto LABEL_10;
      }

      v85 = v210;
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)(&v212);
      v86 = sub_21DBFC82C();
      v87 = -1 << *(v85 + 32);
      v88 = v86 & ~v87;
      if (((*(v209 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
      {
        v68 = 0;
        goto LABEL_112;
      }

      v207 = ~v87;
      v208 = *(v182 + 72);
      while (1)
      {
        sub_21D104E74(*(v210 + 48) + v208 * v88, v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v91 = *(v67 + 48);
        sub_21D104E74(v40, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v211, &v16[v91], type metadata accessor for TTRRemindersListViewModel.ItemID);
        v92 = swift_getEnumCaseMultiPayload();
        if (v92 > 1)
        {
          break;
        }

        v93 = v205;
        if (v92)
        {
          sub_21D104E74(v16, v59, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v98 = &v16[v91];
            v99 = v199;
            sub_21D2A0DC8(v98, v199, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            if (sub_21DBFB63C())
            {
              v100 = v59;
              v101 = *(v189 + 20);
              v102 = *(v191 + 48);
              v103 = v190;
              sub_21D0D3954(v100 + v101, v190, &unk_27CE5CD70, &unk_21DC09230);
              sub_21D0D3954(v99 + v101, v103 + v102, &unk_27CE5CD70, &unk_21DC09230);
              v104 = *v188;
              v105 = v194;
              if ((*v188)(v103, 1, v194) == 1)
              {
                v106 = v104(v103 + v102, 1, v105) == 1;
                v107 = v103;
                if (v106)
                {
                  sub_21D0CF7E0(v103, &unk_27CE5CD70, &unk_21DC09230);
                  v67 = v192;
                  v59 = v206;
                  v40 = v187;
LABEL_108:
                  sub_21D106918(v99, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_109:
                  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_110:
                  sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v68 = 1;
                  v169 = 1;
LABEL_111:
                  v60 = v184;
LABEL_112:
                  v61 = v193;
LABEL_10:
                  sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.ItemID);

                  v66 = v201;
                  if (v68)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_11;
                }

LABEL_75:
                sub_21D0CF7E0(v107, &qword_27CE58388, &unk_21DC0F470);
                v67 = v192;
                v59 = v206;
                v40 = v187;
              }

              else
              {
                v116 = v173;
                sub_21D0D3954(v103, v173, &unk_27CE5CD70, &unk_21DC09230);
                if (v104(v103 + v102, 1, v105) == 1)
                {
                  sub_21D106918(v116, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v107 = v103;
                  v99 = v199;
                  goto LABEL_75;
                }

                v124 = v163;
                sub_21D2A0DC8(v103 + v102, v163, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v125 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v116, v124);
                sub_21D106918(v124, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v116, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v103, &unk_27CE5CD70, &unk_21DC09230);
                v67 = v192;
                v99 = v199;
                v59 = v206;
                v40 = v187;
                if (v125)
                {
                  goto LABEL_108;
                }
              }
            }

            sub_21D106918(v99, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_103;
          }

          v89 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
          v90 = v59;
LABEL_38:
          sub_21D106918(v90, v89);
LABEL_39:
          sub_21D0CF7E0(v16, &qword_27CE58AD0, &qword_21DC0A050);
          goto LABEL_40;
        }

        sub_21D104E74(v16, v205, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload())
        {
          v89 = type metadata accessor for TTRRemindersListViewModel.SectionID;
          v90 = v93;
          goto LABEL_38;
        }

        v113 = v195;
        sub_21D2A0DC8(&v16[v91], v195, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v114 = v93;
        v115 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v93, v113);
        sub_21D106918(v113, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v59 = v206;
        sub_21D106918(v114, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (v115)
        {
          goto LABEL_110;
        }

LABEL_40:
        sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v88 = (v88 + 1) & v207;
        if (((*(v209 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
        {
          v68 = 0;
          goto LABEL_111;
        }
      }

      if (v92 == 2)
      {
        v94 = v203;
        sub_21D104E74(v16, v203, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v95 = *v94;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v96 = *&v16[v91];
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v97 = sub_21DBFB63C();

          v59 = v206;
          if (v97)
          {
            goto LABEL_109;
          }

          goto LABEL_103;
        }

        v59 = v206;
      }

      else
      {
        sub_21D104E74(v16, v204, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v108 = *v204;
          if (v108 > 2)
          {
            if (v108 == 3)
            {
              v111 = 0xD00000000000001FLL;
              v117 = &v210;
            }

            else
            {
              if (v108 == 4)
              {
                v112 = 0xE700000000000000;
                v111 = 0x6D657449706974;
                goto LABEL_79;
              }

              v111 = 0xD00000000000001DLL;
              v117 = &v211;
            }

            v112 = *(v117 - 32);
          }

          else
          {
            v109 = 0xD000000000000012;
            if (v108 == 1)
            {
              v109 = 0x7367617468736168;
            }

            v110 = 0xEC0000006D657449;
            if (v108 != 1)
            {
              v110 = v196;
            }

            if (*v204)
            {
              v111 = v109;
            }

            else
            {
              v111 = 0x6574656C706D6F63;
            }

            if (*v204)
            {
              v112 = v110;
            }

            else
            {
              v112 = 0xED00006D65744964;
            }
          }

LABEL_79:
          v118 = v16[v91];
          if (v118 > 2)
          {
            if (v118 == 3)
            {
              v121 = 0xD00000000000001FLL;
              v122 = &v210;
            }

            else
            {
              if (v118 == 4)
              {
                v120 = 0xE700000000000000;
                if (v111 == 0x6D657449706974)
                {
                  goto LABEL_98;
                }

                goto LABEL_99;
              }

              v121 = 0xD00000000000001DLL;
              v122 = &v211;
            }

            v120 = *(v122 - 32);
            if (v111 == v121)
            {
              goto LABEL_98;
            }

            goto LABEL_99;
          }

          if (v16[v91])
          {
            if (v118 == 1)
            {
              v119 = 0x7367617468736168;
            }

            else
            {
              v119 = 0xD000000000000012;
            }

            if (v118 == 1)
            {
              v120 = 0xEC0000006D657449;
            }

            else
            {
              v120 = v196;
            }

            if (v111 != v119)
            {
              goto LABEL_99;
            }

LABEL_98:
            if (v112 == v120)
            {

              v59 = v206;
              goto LABEL_109;
            }
          }

          else
          {
            v120 = 0xED00006D65744964;
            if (v111 == 0x6574656C706D6F63)
            {
              goto LABEL_98;
            }
          }

LABEL_99:
          v123 = sub_21DBFC64C();

          v59 = v206;
          if (v123)
          {
            goto LABEL_109;
          }

LABEL_103:
          sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_40;
        }
      }

      goto LABEL_39;
    }

    if ((EnumCaseMultiPayload - 2) < 3)
    {
      v76 = v176;
      sub_21D2A0DC8(v61, v176, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D2A0DC8(v76, v211, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_33:
      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
      *v211 = 0;
      goto LABEL_33;
    }

    v79 = v180;
    sub_21D2A0DC8(v61, v180, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v79, v177, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v80 = 1 << swift_getEnumCaseMultiPayload();
    if ((v80 & 0x17E) != 0)
    {
      sub_21D106918(v177, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    else if ((v80 & 0x81) == 0)
    {
      sub_21D106918(v180, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v84 = v165;
      *v165 = *v177;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v83 = v180;
    v84 = v165;
    sub_21D104E74(v180, v165, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v83, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_32:
    sub_21D2A0DC8(v84, v211, type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_33;
  }

  sub_21DBF8E0C();
  result = a1;
  if (v55)
  {
    goto LABEL_120;
  }

LABEL_131:
  v133 = MEMORY[0x277D84F90];
LABEL_132:

  MEMORY[0x28223BE20](v141);
  *(&v155 - 4) = v197;
  *(&v155 - 3) = &type metadata for TTRRemindersListTreeViewModel.AuxiliaryData;
  *(&v155 - 2) = sub_21D2F89FC(&qword_280D142C8, type metadata accessor for TTRRemindersListViewModel.Item, protocol conformance descriptor for TTRRemindersListViewModel.Item);
  *(&v155 - 1) = &protocol witness table for TTRRemindersListTreeViewModel.AuxiliaryData;
  KeyPath = swift_getKeyPath(byte_21DC0FA60, &v155 - 4);
  v143 = sub_21D293244(v133, KeyPath);

  v144 = *(v143 + 2);
  if (v144)
  {
    v145 = *(v156 + 28);
    v146 = &v143[(*(v157 + 80) + 32) & ~*(v157 + 80)];
    v147 = *(v157 + 72);
    v211 = v143;
    sub_21DBF8E0C();
    v148 = v175;
    do
    {
      sub_21D0D3954(v146, v148, &qword_27CE59D70, &unk_21DC0D058);
      v150 = v148 + v145;
      v151 = v148;
      v152 = v186;
      v153 = sub_21D2920E8(v150, v151);
      if (v153)
      {
        v154 = v153;

        sub_21D3041B8(v154, v152);
      }

      v148 = v175;
      sub_21D0CF7E0(v175, &unk_27CE5CD80, &qword_21DC0CE80);
      v149 = sub_21DBF5B9C();
      (*(*(v149 - 8) + 8))(v148 + v145, v149);
      v146 += v147;
      --v144;
    }

    while (v144);
    v143 = v211;
  }

  return v143;
}

BOOL TTRRemindersListTreeViewModel.move(_:to:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v71 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D58, &qword_21DC0D040);
  v67 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v73 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v70 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  v52 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v74 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0, &qword_21DC09B48);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v60 = v2;
  sub_21D0D3954(v68, v22, &qword_27CE58900, &unk_21DC207C0);
  sub_21D0D3954(v22, v18, &unk_27CE5CD80, &qword_21DC0CE80);
  v26 = *&v22[*(v20 + 44)];

  sub_21D0CF7E0(v22, &qword_27CE58900, &unk_21DC207C0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_21D0F02F4(v18, v25, &unk_27CE5CD80, &qword_21DC0CE80);
  *&v25[*(v23 + 36)] = v26;
  v28 = sub_21D26E840(v71, v25);

  sub_21D0CF7E0(v25, &qword_27CE588F0, &qword_21DC09B48);
  if (v28)
  {
    v54 = v28;
    v29 = v28[2];
    v30 = v53;
    v59 = v23;
    v31 = v73;
    v32 = v70;
    v33 = v52;
    v58 = v18;
    if (v29)
    {
      v34 = *(v61 + 48);
      v56 = *(v61 + 64);
      v57 = v34;
      v35 = v54 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v55 = *(v67 + 72);
      do
      {
        v71 = v35;
        v68 = v29;
        sub_21D0D3954(v35, v74, &qword_27CE59D58, &qword_21DC0D040);
        v36 = v61;
        v37 = *(v61 + 48);
        v38 = v30;
        v39 = *(v61 + 64);
        sub_21D2A0DC8(v74, v33, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v74 + v57, v33 + v37, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0D523C(v74 + v56, v33 + v39, &qword_27CE588F0, &qword_21DC09B48);
        v63 = *(v60 + 80);
        sub_21D0D3954(v33, v32, &qword_27CE59D58, &qword_21DC0D040);
        v40 = &v70[*(v36 + 48)];
        v67 = *(v36 + 64);
        v41 = v59;
        v64 = *(v40 + *(v59 + 36));

        sub_21D0CF7E0(v40, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0D3954(v33, v31, &qword_27CE59D58, &qword_21DC0D040);
        v42 = *(v36 + 48);
        v66 = *(v36 + 64);
        v43 = v58;
        sub_21D0D3954(&v73[v42], v58, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D0CF7E0(&v73[v42], &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0D3954(v33, v72, &qword_27CE59D58, &qword_21DC0D040);
        v65 = *(v36 + 48);
        v44 = v72 + *(v36 + 64);
        v45 = *(v44 + *(v41 + 36));
        sub_21D0CF7E0(v44, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0D3954(v33, v38, &qword_27CE59D58, &qword_21DC0D040);
        v62 = *(v36 + 48);
        v46 = *(v36 + 64);
        sub_21D0D3954(v38 + v46, v69, &unk_27CE5CD80, &qword_21DC0CE80);
        v47 = v38 + v46;
        v30 = v38;
        v48 = v72;
        v49 = v69;
        sub_21D0CF7E0(v47, &qword_27CE588F0, &qword_21DC09B48);
        v50 = v45;
        v32 = v70;
        sub_21D260100(v64, v43, v50, v49);

        sub_21D0CF7E0(v49, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D0CF7E0(v43, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D0CF7E0(v33, &qword_27CE59D58, &qword_21DC0D040);
        v31 = v73;
        sub_21D0CF7E0(v30 + v62, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v48 + v65, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v31 + v66, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D106918(v31, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v32 + v67, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
        v35 = v71 + v55;
        v29 = v68 - 1;
      }

      while (v68 != 1);
    }

    v28 = v54;
  }

  return v28 != 0;
}

void *sub_21D26E840(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A548, &unk_21DC0FA40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D68, &qword_21DC0D050);
  v59 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - v17;
  v53 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v53);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v51 = (v18 + 56);
    v23 = *(v18 + 72);
    v63 = (v59 + 56);
    v64 = v23;
    v62 = (v59 + 48);
    v67 = MEMORY[0x277D84F90];
    v52 = v2;
    do
    {
      sub_21D104E74(v22, v20, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D25F7C0(v6);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A3C0, &qword_21DC0F400);
        v25 = 1;
      }

      else
      {
        v26 = *&v6[*(v24 + 48)];
        v60 = v22;
        v61 = v21;
        v27 = v58;
        v28 = *(v58 + 48);
        v29 = v6;
        v30 = v20;
        v31 = v6;
        v32 = v57;
        sub_21D0D523C(v29, v57, &unk_27CE5CD80, &qword_21DC0CE80);
        *(v32 + v28) = v26;
        v33 = *(v32 + *(v27 + 48));
        v34 = v32;
        v6 = v31;
        v35 = v66;
        v20 = v30;
        v36 = v55;
        sub_21D0D523C(v34, v55, &unk_27CE5CD80, &qword_21DC0CE80);
        v37 = &v14[*(v35 + 48)];
        sub_21D104E74(v30, v14, type metadata accessor for TTRRemindersListViewModel.Item);
        v38 = v36;
        v39 = v56;
        sub_21D0D523C(v38, v56, &unk_27CE5CD80, &qword_21DC0CE80);
        (*v51)(v37, 1, 1, v53);
        v40 = v39;
        v21 = v61;
        sub_21D0F02F4(v40, v37, &unk_27CE5CD80, &qword_21DC0CE80);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0, &qword_21DC09B48);
        v25 = 0;
        *(v37 + *(v41 + 36)) = v33;
        v22 = v60;
      }

      v42 = v66;
      (*v63)(v14, v25, 1, v66);
      sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((*v62)(v14, 1, v42) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A548, &unk_21DC0FA40);
      }

      else
      {
        v43 = v54;
        sub_21D0D523C(v14, v54, &qword_27CE59D68, &qword_21DC0D050);
        sub_21D0D523C(v43, v65, &qword_27CE59D68, &qword_21DC0D050);
        v44 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_21D211ACC(0, v67[2] + 1, 1, v67);
        }

        v46 = v67[2];
        v45 = v67[3];
        if (v46 >= v45 >> 1)
        {
          v67 = sub_21D211ACC((v45 > 1), v46 + 1, 1, v67);
        }

        v47 = v67;
        v67[2] = v46 + 1;
        sub_21D0D523C(v65, v47 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, &qword_27CE59D68, &qword_21DC0D050);
        v22 = v44;
      }

      v22 += v64;
      --v21;
    }

    while (v21);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v48 = sub_21D26FE28(v67, v50);

  return v48;
}

void *sub_21D26EEBC(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A508, &unk_21DC0F9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A510, &unk_21DC376A0);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A518, &qword_21DC0FA00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B10, &qword_21DC0CD50);
  v59 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - v17;
  v53 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v53);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v51 = (v18 + 56);
    v23 = *(v18 + 72);
    v63 = (v59 + 56);
    v64 = v23;
    v62 = (v59 + 48);
    v67 = MEMORY[0x277D84F90];
    v52 = v2;
    do
    {
      sub_21D104E74(v22, v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D25FC60(v6);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8, &qword_21DC376B0);
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A508, &unk_21DC0F9F0);
        v25 = 1;
      }

      else
      {
        v26 = *&v6[*(v24 + 48)];
        v60 = v22;
        v61 = v21;
        v27 = v58;
        v28 = *(v58 + 48);
        v29 = v6;
        v30 = v20;
        v31 = v6;
        v32 = v57;
        sub_21D0D523C(v29, v57, &qword_27CE5A490, &unk_21DC0F950);
        *(v32 + v28) = v26;
        v33 = *(v32 + *(v27 + 48));
        v34 = v32;
        v6 = v31;
        v35 = v66;
        v20 = v30;
        v36 = v55;
        sub_21D0D523C(v34, v55, &qword_27CE5A490, &unk_21DC0F950);
        v37 = &v14[*(v35 + 48)];
        sub_21D104E74(v30, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
        v38 = v36;
        v39 = v56;
        sub_21D0D523C(v38, v56, &qword_27CE5A490, &unk_21DC0F950);
        (*v51)(v37, 1, 1, v53);
        v40 = v39;
        v21 = v61;
        sub_21D0F02F4(v40, v37, &qword_27CE5A490, &unk_21DC0F950);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
        v25 = 0;
        *(v37 + *(v41 + 36)) = v33;
        v22 = v60;
      }

      v42 = v66;
      (*v63)(v14, v25, 1, v66);
      sub_21D106918(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      if ((*v62)(v14, 1, v42) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A518, &qword_21DC0FA00);
      }

      else
      {
        v43 = v54;
        sub_21D0D523C(v14, v54, &qword_27CE59B10, &qword_21DC0CD50);
        sub_21D0D523C(v43, v65, &qword_27CE59B10, &qword_21DC0CD50);
        v44 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_21D2147B0(0, v67[2] + 1, 1, v67);
        }

        v46 = v67[2];
        v45 = v67[3];
        if (v46 >= v45 >> 1)
        {
          v67 = sub_21D2147B0((v45 > 1), v46 + 1, 1, v67);
        }

        v47 = v67;
        v67[2] = v46 + 1;
        sub_21D0D523C(v65, v47 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, &qword_27CE59B10, &qword_21DC0CD50);
        v22 = v44;
      }

      v22 += v64;
      --v21;
    }

    while (v21);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v48 = sub_21D270B00(v67, v50);

  return v48;
}

void TTRRemindersListTreeViewModel.moveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v47 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v52 = v2;
  v19 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v56) = 0;
  v21 = *(v19 + 24);
  v53 = a1;
  v22 = v21(a1, &v56, ObjectType, v19);
  if (*(v22 + 16))
  {
    v47 = v6;
    v48 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_21D0D3954(v22 + v48, v15, &qword_27CE58900, &unk_21DC207C0);

    sub_21D0D523C(v15, v18, &qword_27CE58900, &unk_21DC207C0);
    LOBYTE(v56) = 1;
    v23 = v55;
    v24 = v21(v55, &v56, ObjectType, v19);
    if (*(v24 + 16))
    {
      v25 = v49;
      sub_21D0D3954(v24 + v48, v49, &qword_27CE58900, &unk_21DC207C0);

      v26 = v50;
      sub_21D0D523C(v25, v50, &qword_27CE58900, &unk_21DC207C0);
      v27 = *(v51 + 36);
      v28 = *&v18[v27];
      v29 = *(v26 + v27);

      sub_21D260100(v28, v18, v29, v26);

      sub_21D0CF7E0(v26, &qword_27CE58900, &unk_21DC207C0);
      v30 = v18;
      v31 = &qword_27CE58900;
      v32 = &unk_21DC207C0;
      goto LABEL_11;
    }

    sub_21D0CF7E0(v18, &qword_27CE58900, &unk_21DC207C0);

    v6 = v47;
  }

  else
  {

    v23 = v55;
  }

  v33 = v54;
  if (qword_280D0F188 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_280D0F190);
  sub_21D0D3954(v53, v33, &qword_27CE59D38, &qword_21DC0D020);
  sub_21D0D3954(v23, v6, &qword_27CE59D38, &qword_21DC0D020);
  v35 = sub_21DBF84AC();
  v36 = sub_21DBFAECC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136315394;
    v39 = sub_21D296FBC();
    v56 = 0x64657669726564;
    v57 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v39);

    v40 = v56;
    v41 = v57;
    sub_21D0CF7E0(v33, &qword_27CE59D38, &qword_21DC0D020);
    v42 = sub_21D0CDFB4(v40, v41, &v58);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_21D296FBC();
    v56 = 0x64657669726564;
    v57 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v43);

    v44 = v56;
    v45 = v57;
    sub_21D0CF7E0(v6, &qword_27CE59D38, &qword_21DC0D020);
    v46 = sub_21D0CDFB4(v44, v45, &v58);

    *(v37 + 14) = v46;
    _os_log_impl(&dword_21D0C9000, v35, v36, "Failed to convert from derived tree's source/destination locations. This move is probably not supported {source: %s, destination: %s}", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v38, -1, -1);
    MEMORY[0x223D46520](v37, -1, -1);

    return;
  }

  sub_21D0CF7E0(v6, &qword_27CE59D38, &qword_21DC0D020);
  v30 = v33;
  v31 = &qword_27CE59D38;
  v32 = &qword_21DC0D020;
LABEL_11:
  sub_21D0CF7E0(v30, v31, v32);
}

void *TTRRemindersListTreeViewModel.steps(forMoving:to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0, &qword_21DC1A330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48, &qword_21DC0D030);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0, &qword_21DC1A330, MEMORY[0x277D83970]);
  v3 = sub_21DBFA43C();
  if (!v3)
  {
    return 0;
  }

  v4 = sub_21D270494(v3, a2);

  return v4;
}

uint64_t sub_21D26FBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  TTRRemindersListTreeViewModel.presentationLocation(of:)(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3E8, &qword_21DC0F428);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48, &qword_21DC0D030);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    sub_21D0D523C(v6, v10, &qword_27CE59D38, &qword_21DC0D020);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48, &qword_21DC0D030);
    v14 = *(v13 + 48);
    sub_21D104E74(a1, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D523C(v10, a2 + v14, &qword_27CE59D38, &qword_21DC0D020);
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

void *sub_21D26FE28(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D58, &qword_21DC0D040);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A550, &unk_21DC0FA50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D68, &qword_21DC0D050);
  v42 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v41 = &v37 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0, &qword_21DC09B48);
  v13 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  sub_21D0D3954(a2, &v37 - v17, &qword_27CE588F0, &qword_21DC09B48);
  sub_21DBF8E0C();
  v44 = sub_21D211AF0(0, v19, 0, MEMORY[0x277D84F90]);
  if (v19)
  {
    v54 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v20 = 0;
      v50 = v18;
      v51 = (v13 + 7);
      v21 = *(v53 + 36);
      v46 = v12;
      v47 = 1;
      v13 = &qword_27CE588F0;
      v49 = v15;
      v22 = v54;
      v40 = v21;
      while (1)
      {
        if (v20 == v22)
        {
          goto LABEL_18;
        }

        if (v20 >= *(a1 + 16))
        {
          goto LABEL_19;
        }

        v23 = a1;
        v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v24 = v15;
        v15 = *(v42 + 72);
        v48 = v20;
        v25 = v18;
        v26 = v41;
        sub_21D0D3954(a1 + v45 + v15 * v20, v41, &qword_27CE59D68, &qword_21DC0D050);
        v27 = *(v52 + 48);
        sub_21D2A0DC8(v26, v12, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v26 + v27, v24, &qword_27CE588F0, &qword_21DC09B48);
        v12 = *v51;
        (*v51)(v8, 1, 1, v53);
        a1 = &qword_27CE5A550;
        sub_21D293F9C(v25, v24, v8, &qword_27CE5A550, &unk_21DC0FA50, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0CF7E0(v8, &qword_27CE5A550, &unk_21DC0FA50);
        if (!sub_21D297174(v24, v25, &qword_27CE588F0, &qword_21DC09B48))
        {
          v28 = *(v38 + 48);
          v39 = *(v38 + 64);
          v29 = v43;
          sub_21D104E74(v46, v43, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0D3954(v24, v29 + v28, &qword_27CE588F0, &qword_21DC09B48);
          sub_21D0D3954(v25, v29 + v39, &qword_27CE588F0, &qword_21DC09B48);
          v30 = v44;
          a1 = v44[2];
          v31 = v44[3];
          if (a1 >= v31 >> 1)
          {
            v30 = sub_21D211AF0((v31 > 1), a1 + 1, 1, v44);
          }

          v30[2] = a1 + 1;
          v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v44 = v30;
          sub_21D0D523C(v43, v30 + v32 + *(v37 + 72) * a1, &qword_27CE59D58, &qword_21DC0D040);
        }

        if (++v48 != v54)
        {
          break;
        }

LABEL_14:
        v15 = v49;
        sub_21D0CF7E0(v49, &qword_27CE588F0, &qword_21DC09B48);
        v12 = v46;
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
        v18 = v50;
        v33 = *&v50[v40];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_20;
        }

        *&v50[v40] = v35;
        v20 = v48;
        ++v47;
        v22 = v54;
        a1 = v23;
        if (v48 == v54)
        {
          goto LABEL_16;
        }
      }

      a1 = v48;
      v18 = (v23 + v45 + v15 * v47);
      while (1)
      {
        sub_21D0D3954(v50, v8, &qword_27CE588F0, &qword_21DC09B48);
        v12(v8, 0, 1, v53);
        if (a1 >= *(v23 + 16))
        {
          break;
        }

        ++a1;
        sub_21D293F9C(&v18[*(v52 + 48)], v49, v8, &qword_27CE5A550, &unk_21DC0FA50, &qword_27CE588F0, &qword_21DC09B48);
        sub_21D0CF7E0(v8, &qword_27CE5A550, &unk_21DC0FA50);
        v18 += v15;
        if (v54 == a1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      a1 = sub_21D256C2C(a1);
    }
  }

LABEL_16:
  sub_21D0CF7E0(v18, &qword_27CE588F0, &qword_21DC09B48);

  return v44;
}

void *sub_21D270494(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48, &qword_21DC0D030);
  v42 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v41 = &v37 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v13 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  sub_21D0D3954(a2, &v37 - v17, &qword_27CE59D38, &qword_21DC0D020);
  sub_21DBF8E0C();
  v44 = sub_21D211B38(0, v19, 0, MEMORY[0x277D84F90]);
  if (v19)
  {
    v54 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v20 = 0;
      v50 = v18;
      v51 = (v13 + 7);
      v21 = *(v53 + 36);
      v46 = v12;
      v47 = 1;
      v13 = &qword_27CE59D38;
      v49 = v15;
      v22 = v54;
      v40 = v21;
      while (1)
      {
        if (v20 == v22)
        {
          goto LABEL_18;
        }

        if (v20 >= *(a1 + 16))
        {
          goto LABEL_19;
        }

        v23 = a1;
        v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v24 = v15;
        v15 = *(v42 + 72);
        v48 = v20;
        v25 = v18;
        v26 = v41;
        sub_21D0D3954(a1 + v45 + v15 * v20, v41, &qword_27CE59D48, &qword_21DC0D030);
        v27 = *(v52 + 48);
        sub_21D2A0DC8(v26, v12, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v26 + v27, v24, &qword_27CE59D38, &qword_21DC0D020);
        v12 = *v51;
        (*v51)(v8, 1, 1, v53);
        a1 = &qword_27CE5A3E8;
        sub_21D293F9C(v25, v24, v8, &qword_27CE5A3E8, &qword_21DC0F428, &qword_27CE59D38, &qword_21DC0D020);
        sub_21D0CF7E0(v8, &qword_27CE5A3E8, &qword_21DC0F428);
        if (!sub_21D297174(v24, v25, &qword_27CE59D38, &qword_21DC0D020))
        {
          v28 = *(v38 + 48);
          v39 = *(v38 + 64);
          v29 = v43;
          sub_21D104E74(v46, v43, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0D3954(v24, v29 + v28, &qword_27CE59D38, &qword_21DC0D020);
          sub_21D0D3954(v25, v29 + v39, &qword_27CE59D38, &qword_21DC0D020);
          v30 = v44;
          a1 = v44[2];
          v31 = v44[3];
          if (a1 >= v31 >> 1)
          {
            v30 = sub_21D211B38((v31 > 1), a1 + 1, 1, v44);
          }

          v30[2] = a1 + 1;
          v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v44 = v30;
          sub_21D0D523C(v43, v30 + v32 + *(v37 + 72) * a1, &qword_27CE59D08, &qword_21DC0CFD0);
        }

        if (++v48 != v54)
        {
          break;
        }

LABEL_14:
        v15 = v49;
        sub_21D0CF7E0(v49, &qword_27CE59D38, &qword_21DC0D020);
        v12 = v46;
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
        v18 = v50;
        v33 = *&v50[v40];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_20;
        }

        *&v50[v40] = v35;
        v20 = v48;
        ++v47;
        v22 = v54;
        a1 = v23;
        if (v48 == v54)
        {
          goto LABEL_16;
        }
      }

      a1 = v48;
      v18 = (v23 + v45 + v15 * v47);
      while (1)
      {
        sub_21D0D3954(v50, v8, &qword_27CE59D38, &qword_21DC0D020);
        v12(v8, 0, 1, v53);
        if (a1 >= *(v23 + 16))
        {
          break;
        }

        ++a1;
        sub_21D293F9C(&v18[*(v52 + 48)], v49, v8, &qword_27CE5A3E8, &qword_21DC0F428, &qword_27CE59D38, &qword_21DC0D020);
        sub_21D0CF7E0(v8, &qword_27CE5A3E8, &qword_21DC0F428);
        v18 += v15;
        if (v54 == a1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      a1 = sub_21D256C40(a1);
    }
  }

LABEL_16:
  sub_21D0CF7E0(v18, &qword_27CE59D38, &qword_21DC0D020);

  return v44;
}

void *sub_21D270B00(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00, &qword_21DC0CD40);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A520, &qword_21DC0FA08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B10, &qword_21DC0CD50);
  v49 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v43 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_21DC0F960;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  v13 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = *(a1 + 16);
  sub_21D0D3954(a2, &v43 - v17, &qword_27CE59A08, &unk_21DC0F960);
  sub_21DBF8E0C();
  v52 = sub_21D2147D4(0, v19, 0, MEMORY[0x277D84F90]);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v20 = v51;
      v21 = 0;
      v13 += 7;
      v22 = *(v58 + 36);
      v55 = 1;
      v46 = v22;
      v47 = v19;
      while (1)
      {
        if (v21 == v19)
        {
          goto LABEL_19;
        }

        if (v21 >= *(a1 + 16))
        {
          goto LABEL_20;
        }

        v23 = a1;
        v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v24 = a1 + v53;
        a1 = v20;
        v25 = v12;
        v12 = *(v49 + 72);
        v56 = v21;
        v26 = v48;
        sub_21D0D3954(v24 + v12 * v21, v48, &qword_27CE59B10, &qword_21DC0CD50);
        v54 = *(v57 + 48);
        sub_21D2A0DC8(v26, v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0D523C(v26 + v54, v15, &qword_27CE59A08, v25);
        v27 = v20;
        v28 = *v13;
        (*v13)(v8, 1, 1, v58);
        sub_21D294CA0(v18, v15, v8);
        sub_21D0CF7E0(v8, &qword_27CE5A520, &qword_21DC0FA08);
        if (sub_21D297734(v15, v18))
        {
          v29 = v56;
          v19 = v47;
        }

        else
        {
          v30 = *(v45 + 48);
          v54 = *(v45 + 64);
          v31 = v27;
          v32 = v50;
          sub_21D104E74(v31, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0D3954(v15, v32 + v30, &qword_27CE59A08, &unk_21DC0F960);
          sub_21D0D3954(v18, v32 + v54, &qword_27CE59A08, &unk_21DC0F960);
          v33 = v52;
          a1 = v52[2];
          v34 = v52[3];
          v35 = a1 + 1;
          if (a1 >= v34 >> 1)
          {
            v41 = sub_21D2147D4((v34 > 1), a1 + 1, 1, v52);
            v35 = a1 + 1;
            v33 = v41;
          }

          v29 = v56;
          v19 = v47;
          v33[2] = v35;
          v36 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v52 = v33;
          sub_21D0D523C(v50, v33 + v36 + *(v44 + 72) * a1, &qword_27CE59B00, &qword_21DC0CD40);
        }

        v56 = v29 + 1;
        if (v29 + 1 != v19)
        {
          break;
        }

LABEL_15:
        v12 = &unk_21DC0F960;
        sub_21D0CF7E0(v15, &qword_27CE59A08, &unk_21DC0F960);
        v20 = v51;
        sub_21D106918(v51, type metadata accessor for TTRAccountsListsViewModel.Item);
        v38 = *&v18[v46];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_21;
        }

        *&v18[v46] = v40;
        v21 = v56;
        ++v55;
        a1 = v23;
        if (v56 == v19)
        {
          goto LABEL_17;
        }
      }

      v37 = v56;
      a1 = v23 + v53 + v12 * v55;
      while (1)
      {
        sub_21D0D3954(v18, v8, &qword_27CE59A08, &unk_21DC0F960);
        v28(v8, 0, 1, v58);
        if (v37 >= *(v23 + 16))
        {
          break;
        }

        ++v37;
        sub_21D294CA0(a1 + *(v57 + 48), v15, v8);
        sub_21D0CF7E0(v8, &qword_27CE5A520, &qword_21DC0FA08);
        a1 += v12;
        if (v19 == v37)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      a1 = sub_21D256D94(a1);
    }
  }

LABEL_17:
  sub_21D0CF7E0(v18, &qword_27CE59A08, &unk_21DC0F960);

  return v52;
}

uint64_t TTRRemindersListTreeViewModel.insert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v9 = *(a1 + *(v8 + 24));
  sub_21D104E74(a1 + *(v8 + 20), v7, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(a1, &v7[*(v5 + 64)], &qword_27CE5A3A0, qword_21DC0F3A0);
  v10 = &v7[*(v5 + 60)];
  *v10 = v9;
  *(v10 + 1) = 0;
  v10[16] = 1;

  sub_21D271278(v7, a2);
  return sub_21D0CF7E0(v7, &qword_27CE5CDA0, &unk_21DC09B90);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  sub_21D104E74(a1 + *(v8 + 20), v7, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(a1, &v7[*(v5 + 64)], &qword_27CE5A3A0, qword_21DC0F3A0);
  v9 = &v7[*(v5 + 60)];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_21D271278(v7, a2);
  return sub_21D0CF7E0(v7, &qword_27CE5CDA0, &unk_21DC09B90);
}

uint64_t sub_21D271278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410, &unk_21DC0F460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D272718(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538, &qword_21DC0FA30);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A410, &unk_21DC0F460);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80, &qword_21DC0CE80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80, &qword_21DC0CE80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t TTRRemindersListTreeViewModel.actualInsertionLocation(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v17 = 1;
  v7 = (*(v5 + 24))(a1, &v17, ObjectType, v5);
  if (*(v7 + 16))
  {
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    v16 = *(v9 - 8);
    sub_21D0D3954(v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), a2, &qword_27CE58900, &unk_21DC207C0);

    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

void TTRRemindersListTreeViewModel.unadjustInsertionLocation(_:forMoving:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v66 = a3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  MEMORY[0x28223BE20](v77);
  v76 = &v65 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20);
  v92 = &v65 - v21;
  MEMORY[0x28223BE20](v22);
  v72 = &v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8, &qword_21DC0F428);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v65 - v25;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v27 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v71 = &v65 - v28;
  v89 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v89);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v65 - v33;
  v85 = *(a2 + 16);
  if (v85)
  {
    v35 = 0;
    v84 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v83 = *(v32 + 72);
    v88 = (v32 + 56);
    v70 = (v27 + 48);
    v68 = v27;
    v69 = (v27 + 56);
    v78 = MEMORY[0x277D84F90];
    v81 = v26;
    v82 = v13;
    while (1)
    {
      v91 = v35;
      sub_21D104E74(v84 + v83 * v35, v34, type metadata accessor for TTRRemindersListViewModel.Item);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      v37 = sub_21D2916C8(v10, sub_21D181E00);
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v37 && (Strong = swift_weakLoadStrong(), , Strong))
      {
        v39 = *(*Strong + 120);
        swift_beginAccess();
        v40 = Strong + v39;
        v41 = v92;
        sub_21D104E74(v40, v92, type metadata accessor for TTRRemindersListViewModel.Item);

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v41 = v92;
      }

      v87 = *v88;
      v87(v41, v42, 1, v89);
      v43 = sub_21D261568(v41);
      if (v43 < 0)
      {
LABEL_28:
        __break(1u);
        return;
      }

      v44 = v43;
      sub_21D0D3954(v41, v19, &unk_27CE5CD80, &qword_21DC0CE80);

      v45 = 0;
      while (1)
      {
        if (v44 == v45)
        {

          sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
          sub_21D0CF7E0(v92, &unk_27CE5CD80, &qword_21DC0CE80);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
          v49 = v82;
          (*(*(v48 - 8) + 56))(v82, 1, 1, v48);
          goto LABEL_19;
        }

        sub_21D26181C(v45, v19, v30);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
        v46 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
        sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v46)
        {
          break;
        }

        if (__OFADD__(v45++, 1))
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      sub_21D0CF7E0(v19, &unk_27CE5CD80, &qword_21DC0CE80);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      v51 = *(v50 + 48);
      v49 = v82;
      sub_21D0D523C(v92, v82, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v49 + v51) = v45;
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
LABEL_19:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      if ((*(*(v52 - 8) + 48))(v49, 1, v52) == 1)
      {
        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v49, &qword_27CE5A3C0, &qword_21DC0F400);
        v36 = v81;
        (*v69)(v81, 1, 1, v86);
      }

      else
      {
        v53 = *(v49 + *(v52 + 48));
        v54 = v75;
        v55 = *(v75 + 48);
        v56 = v74;
        sub_21D0D523C(v49, v74, &unk_27CE5CD80, &qword_21DC0CE80);
        *(v56 + v55) = v53;
        v80 = *(v56 + *(v54 + 48));
        v57 = v72;
        sub_21D0D523C(v56, v72, &unk_27CE5CD80, &qword_21DC0CE80);
        v58 = *(v90 + 32);
        ObjectType = swift_getObjectType();
        v59 = v73;
        sub_21D0D3954(v57, v73, &unk_27CE5CD80, &qword_21DC0CE80);
        v60 = v76;
        v87(v76, 1, 1, v89);
        sub_21D0F02F4(v59, v60, &unk_27CE5CD80, &qword_21DC0CE80);
        v36 = v81;
        *(v60 + *(v77 + 36)) = v80;
        (*(v58 + 32))(v60, ObjectType, v58);
        sub_21D0CF7E0(v57, &unk_27CE5CD80, &qword_21DC0CE80);
        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v60, &qword_27CE58900, &unk_21DC207C0);
        if ((*v70)(v36, 1, v86) != 1)
        {
          sub_21D0D523C(v36, v71, &qword_27CE59D38, &qword_21DC0D020);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_21D211B5C(0, v78[2] + 1, 1, v78);
          }

          v61 = v68;
          v63 = v78[2];
          v62 = v78[3];
          if (v63 >= v62 >> 1)
          {
            v78 = sub_21D211B5C((v62 > 1), v63 + 1, 1, v78);
          }

          v64 = v78;
          v78[2] = v63 + 1;
          sub_21D0D523C(v71, v64 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v63, &qword_27CE59D38, &qword_21DC0D020);
          goto LABEL_5;
        }
      }

      sub_21D0CF7E0(v36, &qword_27CE5A3E8, &qword_21DC0F428);
LABEL_5:
      v35 = v91 + 1;
      if (v91 + 1 == v85)
      {
        goto LABEL_27;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_27:
  sub_21D272330(v67, v78, v66);
}

void sub_21D272330(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020) - 8);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

    if (sub_21D295994(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a1))
    {
      v9 = v12;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  sub_21D0D3954(a1, v7, &unk_27CE5CD80, &qword_21DC0CE80);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  v16 = *(a1 + *(v15 + 36));
  v17 = v16 + v8;
  if (!__OFADD__(v16, v8))
  {
    v18 = v15;
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v20 = v21;
    (*(*(v19 - 8) + 56))(v21, 1, 1, v19);
    sub_21D0F02F4(v7, v20, &unk_27CE5CD80, &qword_21DC0CE80);
    *(v20 + *(v18 + 36)) = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_21D272524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960) - 8);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

    if (sub_21D295F78(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a1))
    {
      v9 = v12;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  sub_21D0D3954(a1, v7, &qword_27CE5A490, &unk_21DC0F950);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  v16 = *(a1 + *(v15 + 36));
  v17 = v16 + v8;
  if (!__OFADD__(v16, v8))
  {
    v18 = v15;
    v19 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v20 = v21;
    (*(*(v19 - 8) + 56))(v21, 1, 1, v19);
    sub_21D0F02F4(v7, v20, &qword_27CE5A490, &unk_21DC0F950);
    *(v20 + *(v18 + 36)) = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_21D272718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583F0, &unk_21DC09280);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v73 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8, &qword_21DC08F80);
  MEMORY[0x28223BE20](v78);
  v79 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F8, &qword_21DC0F438);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v75);
  v74 = &v73 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  sub_21D104E74(a1, &v73 - v25, type metadata accessor for TTRRemindersListViewModel.Item);
  v81 = v26;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
  sub_21D108408(v12, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v17);
  sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
  LODWORD(v26) = (*(v19 + 48))(v17, 1, v18);
  sub_21D0CF7E0(v17, &unk_27CE5CD80, &qword_21DC0CE80);
  if (v26 == 1)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
    v28 = a1;
    sub_21D274B48(a1 + *(v27 + 56), v8);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430);
    if ((*(*(v29 - 8) + 48))(v8, 1, v29) != 1)
    {
      v52 = *&v8[*(v29 + 48)];
      v54 = v74;
      v53 = v75;
      v55 = *(v75 + 48);
      sub_21D0D523C(v8, v74, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v54 + v55) = v52;
      v56 = *(v54 + *(v53 + 48));
      v57 = v54;
      v58 = v77;
      sub_21D0D523C(v57, v77, &unk_27CE5CD80, &qword_21DC0CE80);
      v59 = v81;
      v60 = v79;
      sub_21D104E74(v81, v79, type metadata accessor for TTRRemindersListViewModel.Item);
      v61 = v28 + *(v27 + 52);
      v62 = *(v61 + 16);
      v63 = v78;
      v64 = v60 + *(v78 + 52);
      *v64 = *v61;
      *(v64 + 16) = v62;
      *(v60 + *(v63 + 56)) = MEMORY[0x277D84F90];

      v65 = v56;
      sub_21D26BC40(v60, v58, v56);
      sub_21D0CF7E0(v60, &qword_27CE581C8, &qword_21DC08F80);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      v66 = v28;
      v67 = v80;
      sub_21D0D3954(v66, v80, &qword_27CE5CDA0, &unk_21DC09B90);
      (*(*(v27 - 8) + 56))(v67, 0, 1, v27);
      swift_beginAccess();
      sub_21D17CA40(v67, v12);
      swift_endAccess();
      sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.Item);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538, &qword_21DC0FA30);
      v69 = *(v68 + 48);
      v70 = v82;
      sub_21D0D523C(v58, v82, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v70 + v69) = v65;
      return (*(*(v68 - 8) + 56))(v70, 0, 1, v68);
    }

    sub_21D0CF7E0(v8, &qword_27CE5A3F8, &qword_21DC0F438);
    v30 = v81;
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE5A918);
    v32 = v76;
    sub_21D104E74(v30, v76, type metadata accessor for TTRRemindersListViewModel.Item);
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAE9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83[0] = v36;
      *v35 = 136315138;
      v37 = sub_21D25D250();
      v39 = v38;
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      v40 = sub_21D0CDFB4(v37, v39, v83);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21D0C9000, v33, v34, "Unable to determine target location for new temporary item {item: %s}", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223D46520](v36, -1, -1);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    else
    {

      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v41 = v30;
  }

  else
  {
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE5A918);
    v43 = v81;
    sub_21D104E74(v81, v23, type metadata accessor for TTRRemindersListViewModel.Item);
    v44 = sub_21DBF84AC();
    v45 = sub_21DBFAE9C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v83[0] = v47;
      *v46 = 136315138;
      v48 = sub_21D25D250();
      v50 = v49;
      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = sub_21D0CDFB4(v48, v50, v83);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_21D0C9000, v44, v45, "Temporary item already exists {item: %s}", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v46, -1, -1);
    }

    else
    {

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v41 = v43;
  }

  sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.Item);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538, &qword_21DC0FA30);
  return (*(*(v72 - 8) + 56))(v82, 1, 1, v72);
}

void TTRRemindersListTreeViewModel.resolve(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a1;
  v138 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = (&v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v133 = &v120 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v122 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v125 = &v120 - v8;
  MEMORY[0x28223BE20](v9);
  v127 = &v120 - v10;
  MEMORY[0x28223BE20](v11);
  v124 = &v120 - v12;
  MEMORY[0x28223BE20](v13);
  v126 = &v120 - v14;
  v141 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v136 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v121 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v19);
  v120 = &v120 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v120 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  MEMORY[0x28223BE20](v27);
  v131 = &v120 - v28;
  MEMORY[0x28223BE20](v29);
  v123 = &v120 - v30;
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v31 - 8);
  v135 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38, &qword_21DC0D020);
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v120 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v40 - 8);
  v132 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v120 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v120 - v46;
  v48 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v140, v50, type metadata accessor for TTRRemindersListReminderCreationLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D2A0DC8(v50, v23, type metadata accessor for TTRRemindersListViewModel.Item);

      v64 = v133;
      sub_21D25F7C0(v133);

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
      v65 = v139;
      if ((*(v137 + 48))(v64, 1, v139) == 1)
      {
        sub_21D0CF7E0(v64, &qword_27CE5A3C0, &qword_21DC0F400);
        v66 = v138;
LABEL_19:
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
        v62 = *(*(v97 - 8) + 56);
        v63 = v66;
LABEL_42:
        v115 = 1;
LABEL_45:
        v62(v63, v115, 1, v97);
        return;
      }

      v86 = v126;
      sub_21D0D523C(v64, v126, &qword_27CE59D88, &qword_21DC0F410);
      v87 = v124;
      sub_21D0D3954(v86, v124, &qword_27CE59D88, &qword_21DC0F410);
      v88 = v136;
      v89 = v141;
      v90 = (*(v136 + 48))(v87, 1, v141);
      v66 = v138;
      if (v90 != 1)
      {
        v91 = v87;
        v92 = v120;
        sub_21D2A0DC8(v91, v120, type metadata accessor for TTRRemindersListViewModel.Item);
        v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48);
        sub_21D2A0DC8(v92, v66, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v88 + 56))(v66, 0, 1, v89);
        v94 = *(v86 + *(v65 + 48));
        sub_21D0CF7E0(v86, &qword_27CE59D88, &qword_21DC0F410);
        if (!__OFADD__(v94, 1))
        {
          *(v66 + v93) = v94 + 1;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
          swift_storeEnumTagMultiPayload();
          v62 = *(*(v61 - 8) + 56);
          v63 = v66;
          goto LABEL_44;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_21D2A0DC8(v50, v18, type metadata accessor for TTRRemindersListViewModel.Item);

      v80 = v134;
      sub_21D25F7C0(v134);

      sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.Item);
      v81 = v139;
      v82 = (*(v137 + 48))(v80, 1, v139);
      v66 = v138;
      if (v82 == 1)
      {
        v83 = &qword_27CE5A3C0;
        v84 = &qword_21DC0F400;
        v85 = v80;
LABEL_18:
        sub_21D0CF7E0(v85, v83, v84);
        goto LABEL_19;
      }

      v86 = v127;
      sub_21D0D523C(v80, v127, &qword_27CE59D88, &qword_21DC0F410);
      v87 = v125;
      sub_21D0D3954(v86, v125, &qword_27CE59D88, &qword_21DC0F410);
      v95 = v136;
      v96 = v141;
      if ((*(v136 + 48))(v87, 1, v141) != 1)
      {
        v99 = v87;
        v100 = v121;
        sub_21D2A0DC8(v99, v121, type metadata accessor for TTRRemindersListViewModel.Item);
        v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48);
        sub_21D2A0DC8(v100, v66, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v95 + 56))(v66, 0, 1, v96);
        v102 = v122;
        sub_21D0D523C(v86, v122, &qword_27CE59D88, &qword_21DC0F410);
        *(v66 + v101) = *(v102 + *(v81 + 48));
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
        swift_storeEnumTagMultiPayload();
        (*(*(v103 - 8) + 56))(v66, 0, 1, v103);
        sub_21D0CF7E0(v102, &unk_27CE5CD80, &qword_21DC0CE80);
        return;
      }
    }

    sub_21D0CF7E0(v86, &qword_27CE59D88, &qword_21DC0F410);
    v83 = &unk_27CE5CD80;
    v84 = &qword_21DC0CE80;
    v85 = v87;
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430);
    v53 = *&v50[*(v52 + 48)];
    v139 = v52;
    v140 = v53;
    sub_21D0D523C(v50, v47, &unk_27CE5CD80, &qword_21DC0CE80);
    v54 = *(v142 + 32);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v47, v44, &unk_27CE5CD80, &qword_21DC0CE80);
    (*(v136 + 56))(v35, 1, 1, v141);
    sub_21D0F02F4(v44, v35, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v35[*(v33 + 36)] = v140;
    v143[0] = 1;
    v56 = (*(v54 + 24))(v35, v143, ObjectType, v54);
    sub_21D0CF7E0(v35, &qword_27CE59D38, &qword_21DC0D020);
    if (*(v56 + 16))
    {
      v57 = v129;
      sub_21D0D3954(v56 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v129, &qword_27CE58900, &unk_21DC207C0);

      sub_21D0CF7E0(v47, &unk_27CE5CD80, &qword_21DC0CE80);
      sub_21D0D523C(v57, v39, &qword_27CE58900, &unk_21DC207C0);
      v58 = v138;
      v59 = *(v139 + 48);
      sub_21D0D3954(v39, v138, &unk_27CE5CD80, &qword_21DC0CE80);
      v60 = *&v39[*(v130 + 36)];
      sub_21D0CF7E0(v39, &qword_27CE58900, &unk_21DC207C0);
      *(v58 + v59) = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
      swift_storeEnumTagMultiPayload();
      v62 = *(*(v61 - 8) + 56);
      v63 = v58;
LABEL_44:
      v115 = 0;
      v97 = v61;
      goto LABEL_45;
    }

    v98 = v47;
    goto LABEL_41;
  }

  v67 = v50;
  v68 = v135;
  sub_21D2A0DC8(v67, v135, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v69 = v141;
  v70 = v136;
  v139 = *(v136 + 56);
  v140 = v136 + 56;
  (v139)(v44, 1, 1, v141);

  v71 = sub_21D263398(v44);

  sub_21D0CF7E0(v44, &unk_27CE5CD80, &qword_21DC0CE80);
  v72 = *(v71 + 16);
  if (!v72)
  {

    v79 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v74 = v71 + v73;
  v75 = v71 + v73;
  v134 = v71;
  v76 = v131;
  sub_21D104E74(v75, v131, type metadata accessor for TTRRemindersListViewModel.Item);
  v77 = swift_getEnumCaseMultiPayload();
  v78 = sub_21D106918(v76, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v77)
  {
    v79 = v134;
LABEL_39:
    MEMORY[0x28223BE20](v78);
    *(&v120 - 2) = v68;
    v114 = v132;
    sub_21D22D788(sub_21D2F8BAC, v79, v132);

    sub_21D106918(v68, type metadata accessor for TTRRemindersListViewModel.SectionID);
    if ((*(v70 + 48))(v114, 1, v69) != 1)
    {
      v116 = v114;
      v117 = v123;
      sub_21D2A0DC8(v116, v123, type metadata accessor for TTRRemindersListViewModel.Item);
      v118 = v117;
      v119 = v138;
      sub_21D2A0DC8(v118, v138, type metadata accessor for TTRRemindersListViewModel.Item);
      (v139)(v119, 0, 1, v69);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
      swift_storeEnumTagMultiPayload();
      v62 = *(*(v61 - 8) + 56);
      v63 = v119;
      goto LABEL_44;
    }

    v98 = v114;
LABEL_41:
    sub_21D0CF7E0(v98, &unk_27CE5CD80, &qword_21DC0CE80);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
    v62 = *(*(v97 - 8) + 56);
    v63 = v138;
    goto LABEL_42;
  }

  v137 = v73;
  v104 = *(v70 + 72);
  v79 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v74, v26, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v26, v44, type metadata accessor for TTRRemindersListViewModel.Item);
    (v139)(v44, 0, 1, v69);

    v105 = sub_21D263398(v44);

    sub_21D0CF7E0(v44, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.Item);
    v106 = *(v105 + 16);
    v107 = v79[2];
    v108 = v107 + v106;
    if (__OFADD__(v107, v106))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v108 > v79[3] >> 1)
    {
      if (v107 <= v108)
      {
        v110 = v107 + v106;
      }

      else
      {
        v110 = v107;
      }

      v79 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v110, 1, v79);
    }

    v69 = v141;
    if (*(v105 + 16))
    {
      if ((v79[3] >> 1) - v79[2] < v106)
      {
        goto LABEL_48;
      }

      swift_arrayInitWithCopy();

      if (v106)
      {
        v111 = v79[2];
        v112 = __OFADD__(v111, v106);
        v113 = v111 + v106;
        if (v112)
        {
          goto LABEL_49;
        }

        v79[2] = v113;
      }
    }

    else
    {

      if (v106)
      {
        goto LABEL_47;
      }
    }

    v74 += v104;
    if (!--v72)
    {

      v68 = v135;
      v70 = v136;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t TTRRemindersListTreeViewModel.resolve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v49 = &v47 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for TTRRemindersListSectionCreationLocation(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v27, type metadata accessor for TTRRemindersListSectionCreationLocation);
  v28 = (v9 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v27, v21, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D25F7C0(v5);

    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item);
    v29 = v50;
    if ((*v28)(v5, 1, v50) == 1)
    {
      v30 = v5;
LABEL_6:
      sub_21D0CF7E0(v30, &qword_27CE5A3C0, &qword_21DC0F400);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
      return (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
    }

    sub_21D0D523C(v5, v13, &qword_27CE59D88, &qword_21DC0F410);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48);
    v35 = v49;
    sub_21D0D3954(v13, v49, &qword_27CE59D88, &qword_21DC0F410);
    v36 = v35;
    v37 = v51;
    sub_21D0D523C(v36, v51, &unk_27CE5CD80, &qword_21DC0CE80);
    v38 = v13;
    v39 = v48;
    sub_21D0D523C(v38, v48, &qword_27CE59D88, &qword_21DC0F410);
    *(v37 + v34) = *(v39 + *(v29 + 48));
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    return sub_21D0CF7E0(v39, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    sub_21D2A0DC8(v27, v24, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D25F7C0(v8);

    sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = v50;
    if ((*v28)(v8, 1, v50) == 1)
    {
      v30 = v8;
      goto LABEL_6;
    }

    sub_21D0D523C(v8, v18, &qword_27CE59D88, &qword_21DC0F410);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48);
    v42 = v49;
    sub_21D0D3954(v18, v49, &qword_27CE59D88, &qword_21DC0F410);
    v43 = v42;
    v44 = v51;
    sub_21D0D523C(v43, v51, &unk_27CE5CD80, &qword_21DC0CE80);
    v45 = *&v18[*(v31 + 48)];
    result = sub_21D0CF7E0(v18, &qword_27CE59D88, &qword_21DC0F410);
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    else
    {
      *(v44 + v41) = v45 + 1;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    }
  }

  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F8, &qword_21DC0F438);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D274B48(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3F8, &qword_21DC0F438);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80, &qword_21DC0CE80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80, &qword_21DC0CE80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80, &qword_21DC0CE80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80, &qword_21DC0CE80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900, &unk_21DC207C0);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t sub_21D274B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v41 = a1;
  sub_21D0D3954(a1, v11, &qword_27CE5A3A0, qword_21DC0F3A0);
  sub_21D0D523C(v11, v20, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D0D523C(v20, v23, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D0D3954(v23, v17, &unk_27CE5CD80, &qword_21DC0CE80);
  v24 = *(v6 + 48);
  if (v24(v17, 1, v5) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  else
  {
    v25 = v37;
    sub_21D2A0DC8(v17, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    v26 = v38;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v38);
    sub_21D108408(v26, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v14);
    sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v25, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = v24(v14, 1, v5);
    sub_21D0CF7E0(v14, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v27 == 1)
    {
      sub_21D0CF7E0(v23, &unk_27CE5CD80, &qword_21DC0CE80);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430);
      return (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
    }
  }

  v30 = sub_21D261568(v23);
  v31 = v39;
  sub_21D0D3954(v41, v39, &qword_27CE5A3A0, qword_21DC0F3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430) + 48));
    result = sub_21D0CF7E0(v31, &unk_27CE5CD80, &qword_21DC0CE80);
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (v30 >= (v32 & ~(v32 >> 63)))
    {
      v30 = v32 & ~(v32 >> 63);
    }
  }

  else
  {
    sub_21D0CF7E0(v31, &unk_27CE5CD80, &qword_21DC0CE80);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0, &qword_21DC0F430);
  v34 = *(v33 + 48);
  v35 = v42;
  sub_21D0D523C(v23, v42, &unk_27CE5CD80, &qword_21DC0CE80);
  *(v35 + v34) = v30;
  return (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
}

void *TTRRemindersListTreeViewModel.uncommittedSections.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &v84 - v4;
  v105 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v105);
  v93 = (&v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v107 = (&v84 - v7);
  v106 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v8 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v84 - v11;
  v117 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v117);
  v95 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v100 = &v84 - v16;
  MEMORY[0x28223BE20](v17);
  v103 = &v84 - v18;
  MEMORY[0x28223BE20](v19);
  v118 = &v84 - v20;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v21 - 8);
  v97 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v110 = &v84 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A400, &unk_21DC0F440);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v84 - v26;
  v111 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  v28 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v102 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v116 = &v84 - v31;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v32 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v34 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v84 - v36;

  sub_21D276254();
  v39 = v38;

  v41 = v39;
  v42 = *(v39 + 16);
  if (!v42)
  {

    return MEMORY[0x277D84F90];
  }

  v90 = v2;
  v91 = v0;
  v43 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v98 = v41;
  v44 = v41 + v43;
  v114 = *(v32 + 72);
  v115 = (v8 + 56);
  v108 = (v8 + 48);
  v113 = (v28 + 56);
  v45 = MEMORY[0x277D84F90];
  v109 = v28;
  v112 = (v28 + 48);
  *&v40 = 136315138;
  v92 = v40;
  v46 = v106;
  v47 = v110;
  v48 = v111;
  do
  {
    v119 = v45;
    sub_21D0D3954(v44, v37, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21D0D3954(v37, v34, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21D104E74(v34, v118, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload > 8)
      {
        sub_21D0CF7E0(v34, &qword_27CE5CDA0, &unk_21DC09B90);
        sub_21D0CF7E0(v37, &qword_27CE5CDA0, &unk_21DC09B90);
      }

      else
      {
LABEL_11:
        sub_21D0CF7E0(v34, &qword_27CE5CDA0, &unk_21DC09B90);
        sub_21D0CF7E0(v37, &qword_27CE5CDA0, &unk_21DC09B90);
        sub_21D106918(v118, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      (*v115)(v47, 1, 1, v46);
LABEL_13:
      v45 = v119;
LABEL_14:
      (*v113)(v27, 1, 1, v48);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D2A0DC8(v118, v47, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v53 = *v115;
      (*v115)(v47, 0, 1, v46);
    }

    else
    {
      v53 = *v115;
      (*v115)(v47, 1, 1, v46);
      sub_21D106918(v118, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v54 = *v108;
    if ((*v108)(v47, 1, v46) == 1)
    {
      sub_21D0CF7E0(v34, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D0CF7E0(v37, &qword_27CE5CDA0, &unk_21DC09B90);
      v48 = v111;
      goto LABEL_13;
    }

    v55 = v47;
    v56 = v104;
    sub_21D2A0DC8(v55, v104, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v56, v107, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v56, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v57 = swift_getEnumCaseMultiPayload();
    if (v57 <= 4)
    {
      v46 = v106;
      v45 = v119;
      if (v57 <= 1)
      {
        if (v57)
        {
LABEL_42:
        }
      }

      else
      {
LABEL_43:
        sub_21D106918(v107, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

LABEL_44:
      sub_21D0CF7E0(v34, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D0CF7E0(v37, &qword_27CE5CDA0, &unk_21DC09B90);
      v47 = v110;
      v48 = v111;
      goto LABEL_14;
    }

    v58 = v53;
    v46 = v106;
    v59 = v103;
    v45 = v119;
    if (v57 <= 6)
    {
      goto LABEL_43;
    }

    if (v57 == 7)
    {
      goto LABEL_44;
    }

    if (v57 == 8)
    {
      goto LABEL_42;
    }

    sub_21D0D3954(&v34[*(v96 + 56)], v101, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D104E74(v34, v59, type metadata accessor for TTRRemindersListViewModel.Item);
    v46 = v106;
    sub_21D0D3954(v101, v102, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D104E74(v59, v102 + *(v111 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v59, v100, type metadata accessor for TTRRemindersListViewModel.Item);
    v60 = swift_getEnumCaseMultiPayload();
    v61 = v97;
    if (v60 > 8)
    {
      goto LABEL_35;
    }

    if ((v60 - 2) < 7)
    {
      sub_21D106918(v100, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_35:
      v58(v61, 1, 1, v46);
      v62 = v99;
      goto LABEL_36;
    }

    if (v60)
    {
      sub_21D2A0DC8(v100, v97, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v58(v61, 0, 1, v46);
    }

    else
    {
      v58(v97, 1, 1, v46);
      sub_21D106918(v100, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v76 = v54(v61, 1, v46);
    v62 = v99;
    if (v76 != 1)
    {
      v77 = v61;
      v78 = v94;
      sub_21D2A0DC8(v77, v94, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D104E74(v78, v93, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v79 = swift_getEnumCaseMultiPayload();
      if (v79 > 6)
      {
        v48 = v111;
        if (v79 == 7)
        {
          goto LABEL_57;
        }

        if (v79 != 8)
        {
          v81 = *v93;
          sub_21D106918(v94, type metadata accessor for TTRRemindersListViewModel.SectionHeader);

          v75 = type metadata accessor for TTRRemindersListViewModel.Item;
          v74 = v103;
LABEL_48:
          sub_21D106918(v74, v75);
          sub_21D0CF7E0(v101, &qword_27CE5A3A0, qword_21DC0F3A0);
          goto LABEL_49;
        }
      }

      else
      {
        if ((v79 - 2) < 5)
        {
          sub_21D106918(v93, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_57:
          sub_21D106918(v94, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          goto LABEL_36;
        }

        if (!v79)
        {
          goto LABEL_57;
        }
      }

      v82 = *v93;
      sub_21D106918(v94, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

LABEL_36:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v63 = sub_21DBF84BC();
    __swift_project_value_buffer(v63, qword_280D0F190);
    v64 = v103;
    sub_21D104E74(v103, v62, type metadata accessor for TTRRemindersListViewModel.Item);
    v65 = sub_21DBF84AC();
    v66 = sub_21DBFAECC();
    if (os_log_type_enabled(v65, v66))
    {
      v88 = v66;
      v67 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v126 = v87;
      v89 = v67;
      *v67 = v92;
      sub_21D104E74(v62, v95, type metadata accessor for TTRRemindersListViewModel.Item);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
      if (swift_dynamicCast())
      {
        sub_21D0D0FD0(v120, &v122);
        v86 = v125;
        __swift_project_boxed_opaque_existential_1(&v122, v124);
        v85 = sub_21DBFC5BC();
        v69 = v68;
        __swift_destroy_boxed_opaque_existential_0(&v122);
      }

      else
      {
        v121 = 0;
        memset(v120, 0, sizeof(v120));
        sub_21D0CF7E0(v120, &qword_27CE5A388, &unk_21DC0F450);
        v122 = 0;
        v123 = 0xE000000000000000;
        v70 = v90;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v90);
        sub_21DBFC14C();
        v62 = v99;
        sub_21D106918(v70, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v69 = v123;
        v85 = v122;
      }

      v48 = v111;
      v86 = type metadata accessor for TTRRemindersListViewModel.Item;
      sub_21D106918(v62, type metadata accessor for TTRRemindersListViewModel.Item);
      v71 = sub_21D0CDFB4(v85, v69, &v126);

      v72 = v89;
      *(v89 + 1) = v71;
      _os_log_impl(&dword_21D0C9000, v65, v88, "TTRRemindersListUncommittedSection: Invalid item type {item: %s}", v72, 0xCu);
      v73 = v87;
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x223D46520](v73, -1, -1);
      MEMORY[0x223D46520](v72, -1, -1);

      v74 = v103;
      v75 = v86;
      goto LABEL_48;
    }

    sub_21D106918(v64, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v101, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D106918(v62, type metadata accessor for TTRRemindersListViewModel.Item);
    v48 = v111;
LABEL_49:
    sub_21D0CF7E0(v34, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21D0CF7E0(v37, &qword_27CE5CDA0, &unk_21DC09B90);
    sub_21D2A0DC8(v102, v27, type metadata accessor for TTRRemindersListUncommittedSection);
    (*v113)(v27, 0, 1, v48);
    v47 = v110;
    v45 = v119;
LABEL_15:
    if ((*v112)(v27, 1, v48) == 1)
    {
      sub_21D0CF7E0(v27, &qword_27CE5A400, &unk_21DC0F440);
    }

    else
    {
      sub_21D2A0DC8(v27, v116, type metadata accessor for TTRRemindersListUncommittedSection);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_21D211B80(0, v45[2] + 1, 1, v45);
      }

      v51 = v45[2];
      v50 = v45[3];
      v52 = v109;
      if (v51 >= v50 >> 1)
      {
        v80 = sub_21D211B80((v50 > 1), v51 + 1, 1, v45);
        v52 = v109;
        v45 = v80;
      }

      v45[2] = v51 + 1;
      sub_21D2A0DC8(v116, v45 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, type metadata accessor for TTRRemindersListUncommittedSection);
      v47 = v110;
      v48 = v111;
    }

    v44 += v114;
    --v42;
  }

  while (v42);

  return v45;
}

void sub_21D276254()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A540, &qword_21DC0FA38);
  MEMORY[0x28223BE20](v54);
  v61 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v60 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v62 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  swift_beginAccess();

  v10 = sub_21DBF8E0C();
  v11 = sub_21D2A3638(v10, v0);

  v51 = v0;
  *(v0 + 32) = v11;

  v12 = v11[2];
  if (v12)
  {
    v64 = MEMORY[0x277D84F90];
    sub_21D18EC2C(0, v12, 0);
    v13 = v64;
    v59 = v11 + 8;
    v14 = sub_21DBFBCCC();
    v15 = 0;
    v63 = *(v11 + 9);
    v48 = v11 + 9;
    v16 = &unk_21DC09B90;
    v56 = v11;
    v49 = v12;
    v50 = v9;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v11 + 32))
    {
      v18 = v14 >> 6;
      if ((v59[v14 >> 6] & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (v63 != *(v11 + 9))
      {
        goto LABEL_28;
      }

      v58 = v13;
      v19 = v16;
      v20 = v54;
      v21 = *(v54 + 48);
      v22 = v52;
      sub_21D104E74(v11[6] + *(v53 + 72) * v14, v52, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v23 = v11[7];
      v57 = *(v60 + 72);
      sub_21D0D3954(v23 + v57 * v14, v22 + v21, &qword_27CE5CDA0, v16);
      v24 = v61;
      sub_21D2A0DC8(v22, v61, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v25 = *(v20 + 48);
      sub_21D0D523C(v22 + v21, v24 + v25, &qword_27CE5CDA0, v16);
      sub_21D0D3954(v24 + v25, v62, &qword_27CE5CDA0, v16);
      v26 = v55;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v55);
      v27 = v51;
      swift_beginAccess();
      v28 = *(v27 + 24);
      if (*(v28 + 16) && (v29 = sub_21D181E00(), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);
        swift_endAccess();

        sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v32 = (v31 + *(*v31 + 128));
        swift_beginAccess();
        v33 = *v32;
        v34 = v32[1];
        LOBYTE(v32) = *(v32 + 16);

        v35 = v62 + *(v47 + 52);

        *v35 = v33;
        *(v35 + 8) = v34;
        v16 = v19;
        *(v35 + 16) = v32;
      }

      else
      {
        swift_endAccess();
        sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v36 = v50;
      sub_21D0D523C(v62, v50, &qword_27CE5CDA0, v16);
      sub_21D0CF7E0(v61, &qword_27CE5A540, &qword_21DC0FA38);
      v13 = v58;
      v64 = v58;
      v38 = *(v58 + 16);
      v37 = *(v58 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_21D18EC2C((v37 > 1), v38 + 1, 1);
        v13 = v64;
      }

      *(v13 + 16) = v38 + 1;
      sub_21D0D523C(v36, v13 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v38 * v57, &qword_27CE5CDA0, v16);
      v11 = v56;
      v17 = 1 << *(v56 + 32);
      if (v14 >= v17)
      {
        goto LABEL_29;
      }

      v39 = v59[v18];
      if ((v39 & (1 << v14)) == 0)
      {
        goto LABEL_30;
      }

      if (v63 != *(v56 + 9))
      {
        goto LABEL_31;
      }

      v40 = v39 & (-2 << (v14 & 0x3F));
      if (v40)
      {
        v17 = __clz(__rbit64(v40)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v18 << 6;
        v42 = v18 + 1;
        v43 = &v48[v18];
        while (v42 < (v17 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_21D15746C(v14, v63, 0);
            v17 = __clz(__rbit64(v44)) + v41;
            goto LABEL_24;
          }
        }

        sub_21D15746C(v14, v63, 0);
LABEL_24:
        v11 = v56;
      }

      ++v15;
      v14 = v17;
      if (v15 == v49)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
  }
}

void *TTRRemindersListTreeViewModel.uncommittedReminders.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A408, &qword_21DC18E70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v25 - v1;
  v3 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;

  sub_21D276254();
  v13 = v12;

  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *(v7 + 80);
    v25[1] = v14;
    v17 = v14 + ((v16 + 32) & ~v16);
    v27 = v4;
    v29 = (v4 + 48);
    v18 = MEMORY[0x277D84F90];
    v19 = *(v7 + 72);
    v20 = v3;
    v28 = v3;
    v26 = v19;
    do
    {
      sub_21D0D3954(v17, v11, &qword_27CE5CDA0, &unk_21DC09B90);
      v21 = v30;
      sub_21D0D3954(v11, v30, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D276CAC(v21, v2);
      sub_21D0CF7E0(v11, &qword_27CE5CDA0, &unk_21DC09B90);
      if ((*v29)(v2, 1, v20) == 1)
      {
        sub_21D0CF7E0(v2, &qword_27CE5A408, &qword_21DC18E70);
      }

      else
      {
        sub_21D2A0DC8(v2, v31, type metadata accessor for TTRRemindersListUncommittedReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_21D211BA8(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_21D211BA8((v22 > 1), v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        sub_21D2A0DC8(v31, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for TTRRemindersListUncommittedReminder);
        v20 = v28;
        v19 = v26;
      }

      v17 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_21D276CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0, qword_21DC0F3A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v66);
  v69 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_21D104E74(a1, v21, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v63 = v16;
    v64 = v14;
    v61 = v18;
    v62 = v5;
    v65 = v25;
    if (EnumCaseMultiPayload <= 1)
    {
LABEL_11:
      sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_12;
    }

    sub_21D2A0DC8(v21, v69, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v27 = swift_getEnumCaseMultiPayload();
    if ((v27 - 1) >= 2)
    {
      v39 = v67;
      if (v27)
      {
        sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
      }

      else
      {
        sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
        sub_21D106918(v69, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_13;
    }

    v28 = v15;
    v29 = v65;
    sub_21D2A0DC8(v69, v65, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0, &unk_21DC09B90);
    v31 = v68;
    v32 = *(v68 + *(v30 + 52));
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);

      v34 = [v33 objectID];
      if (!v34 || (v35 = v34, v36 = *v65, sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700), v37 = v36, v38 = sub_21DBFB63C(), v37, v29 = v65, v35, (v38 & 1) == 0))
      {
        if (qword_280D0F188 != -1)
        {
          swift_once();
        }

        v43 = sub_21DBF84BC();
        __swift_project_value_buffer(v43, qword_280D0F190);
        v44 = sub_21DBF84AC();
        v45 = sub_21DBFAECC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = v29;
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_21D0C9000, v44, v45, "TTRRemindersListUncommittedReminder: invalid reminderChangeItem", v47, 2u);
          MEMORY[0x223D46520](v47, -1, -1);

          sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
          v48 = v46;
        }

        else
        {

          sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
          v48 = v29;
        }

        goto LABEL_31;
      }

      v69 = v33;
      v31 = v68;
    }

    else
    {
      v69 = 0;
    }

    v49 = *(v30 + 56);
    sub_21D0D3954(v31 + v49, v8, &qword_27CE5A3A0, qword_21DC0F3A0);
    sub_21D0D523C(v8, v11, &unk_27CE5CD80, &qword_21DC0CE80);
    v50 = v64;
    sub_21D0D523C(v11, v64, &unk_27CE5CD80, &qword_21DC0CE80);
    v51 = (*(v63 + 48))(v50, 1, v28);
    sub_21D0CF7E0(v50, &unk_27CE5CD80, &qword_21DC0CE80);
    if (v51 != 1)
    {
      v58 = v62;
      sub_21D0D3954(v31 + v49, v62, &qword_27CE5A3A0, qword_21DC0F3A0);
      v59 = v61;
      sub_21D104E74(v31, v61, type metadata accessor for TTRRemindersListViewModel.Item);
      v39 = v67;
      TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)(v58, v59, v32, v67);

      sub_21D0CF7E0(v31, &qword_27CE5CDA0, &unk_21DC09B90);
      sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v40 = 0;
      goto LABEL_14;
    }

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_280D0F190);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAECC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v69;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21D0C9000, v53, v54, "TTRRemindersListUncommittedReminder: parent should be non-nil", v57, 2u);
      MEMORY[0x223D46520](v57, -1, -1);
    }

    sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
    v48 = v65;
LABEL_31:
    sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v40 = 1;
    v39 = v67;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    goto LABEL_11;
  }

  sub_21D0CF7E0(v68, &qword_27CE5CDA0, &unk_21DC09B90);
LABEL_12:
  v39 = v67;
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v40 = 1;
LABEL_14:
  v41 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  return (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
}

uint64_t TTRRemindersListTreeViewModel.sortUncommittedRemindersByLocation(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948, &qword_21DC09BA8);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = *(a1 + 16);
  if (v20 < 2)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v53 = v8;
    v54 = v4;
    v49 = v11;
    v58 = v5;
    v61 = MEMORY[0x277D84F90];
    sub_21D18ECB0(0, v20, 0);
    v21 = v61;
    v50 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = a1 + v50;
    v23 = (v6 + 48);
    v48 = v6;
    v24 = (v6 + 32);
    v57 = *(v9 + 72);
    do
    {
      v25 = v60;
      sub_21D104E74(v22, v60, type metadata accessor for TTRRemindersListUncommittedReminder);
      v26 = *(v56 + 20);

      v27 = (v25 + v26);
      v28 = v54;
      sub_21D277B50(v27, v54);

      v29 = *v23;
      v30 = v58;
      if ((*v23)(v28, 1, v58) == 1)
      {
        v31 = v53;
        MEMORY[0x223D3E4E0](&unk_282EA65A8);
        if (v29(v28, 1, v30) != 1)
        {
          sub_21D0CF7E0(v28, &unk_27CE58E70, &unk_21DC0A930);
        }
      }

      else
      {
        v31 = v53;
        (*v24)(v53, v28, v30);
      }

      v32 = *(v59 + 48);
      sub_21D2A0DC8(v60, v19, type metadata accessor for TTRRemindersListUncommittedReminder);
      (*v24)(&v19[v32], v31, v30);
      v61 = v21;
      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_21D18ECB0((v33 > 1), v34 + 1, 1);
        v21 = v61;
      }

      *(v21 + 16) = v34 + 1;
      v35 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v36 = *(v55 + 72);
      sub_21D0D523C(v19, v21 + v35 + v36 * v34, &qword_27CE58948, &qword_21DC09BA8);
      v22 += v57;
      --v20;
    }

    while (v20);
    v61 = v21;
    sub_21DBF8E0C();
    sub_21D27C7A4(&v61);

    v37 = v61;
    v38 = *(v61 + 16);
    if (v38)
    {
      v61 = MEMORY[0x277D84F90];
      sub_21D18EC6C(0, v38, 0);
      a1 = v61;
      v60 = v37;
      v39 = v37 + v35;
      v40 = v49;
      v41 = (v48 + 8);
      do
      {
        v42 = v51;
        sub_21D0D3954(v39, v51, &qword_27CE58948, &qword_21DC09BA8);
        v43 = v52;
        sub_21D0D523C(v42, v52, &qword_27CE58948, &qword_21DC09BA8);
        v44 = *(v59 + 48);
        sub_21D2A0DC8(v43, v40, type metadata accessor for TTRRemindersListUncommittedReminder);
        (*v41)(v43 + v44, v58);
        v61 = a1;
        v46 = *(a1 + 16);
        v45 = *(a1 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_21D18EC6C((v45 > 1), v46 + 1, 1);
          a1 = v61;
        }

        *(a1 + 16) = v46 + 1;
        sub_21D2A0DC8(v40, a1 + v50 + v46 * v57, type metadata accessor for TTRRemindersListUncommittedReminder);
        v39 += v36;
        --v38;
      }

      while (v38);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

uint64_t sub_21D277B50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a1;
  v66 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v65 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v73);
  v72 = &v65 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v80 = &v65 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = &v65 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - v31;
  sub_21D104E74(v81, &v65 - v31, type metadata accessor for TTRRemindersListViewModel.Item);
  v75 = *(v14 + 56);
  v76 = v14 + 56;
  v75(v32, 0, 1, v13);
  v77 = v32;
  sub_21D0D3954(v32, v29, &unk_27CE5CD80, &qword_21DC0CE80);
  v33 = *(v14 + 48);
  v79 = v13;
  v70 = v33;
  v71 = v14 + 48;
  if (v33(v29, 1, v13) == 1)
  {
    v81 = MEMORY[0x277D84F90];
LABEL_3:
    sub_21D0CF7E0(v29, &unk_27CE5CD80, &qword_21DC0CE80);
LABEL_27:
    if (*(v81 + 2))
    {
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8, &qword_21DC0F9D0);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8, &qword_21DC0F9D0, MEMORY[0x277D84440]);
      v62 = v66;
      sub_21DBF5D3C();
      sub_21D0CF7E0(v77, &unk_27CE5CD80, &qword_21DC0CE80);
      v63 = 0;
    }

    else
    {
      sub_21D0CF7E0(v77, &unk_27CE5CD80, &qword_21DC0CE80);

      v63 = 1;
      v62 = v66;
    }

    v64 = sub_21DBF5D5C();
    return (*(*(v64 - 8) + 56))(v62, v63, 1, v64);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
    v68 = v3;
    v69 = v29;
    v67 = v19;
    while (1)
    {
      sub_21D2A0DC8(v29, v19, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
      v34 = sub_21D2916C8(v9, sub_21D181E00);
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v34 && (Strong = swift_weakLoadStrong(), , Strong))
      {
        v36 = *(*Strong + 120);
        swift_beginAccess();
        v37 = Strong + v36;
        v38 = v80;
        sub_21D104E74(v37, v80, type metadata accessor for TTRRemindersListViewModel.Item);

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v80;
      }

      v75(v38, v39, 1, v79);
      result = sub_21D261568(v38);
      if (result < 0)
      {
        break;
      }

      v41 = result;
      sub_21D0D3954(v38, v22, &unk_27CE5CD80, &qword_21DC0CE80);

      v42 = 0;
      while (1)
      {
        if (v41 == v42)
        {

          sub_21D0CF7E0(v22, &unk_27CE5CD80, &qword_21DC0CE80);
          sub_21D0CF7E0(v80, &unk_27CE5CD80, &qword_21DC0CE80);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
          v46 = v74;
          (*(*(v45 - 8) + 56))(v74, 1, 1, v45);
          goto LABEL_18;
        }

        sub_21D26181C(v42, v22, v16);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
        v43 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
        sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
        result = sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v43)
        {
          break;
        }

        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          goto LABEL_31;
        }
      }

      sub_21D0CF7E0(v22, &unk_27CE5CD80, &qword_21DC0CE80);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      v48 = *(v47 + 48);
      v46 = v74;
      sub_21D0D523C(v80, v74, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v46 + v48) = v42;
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
LABEL_18:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      if ((*(*(v49 - 8) + 48))(v46, 1, v49) == 1)
      {
        sub_21D0CF7E0(v46, &qword_27CE5A3C0, &qword_21DC0F400);
        sub_21D106918(v19, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_27;
      }

      v50 = *(v46 + *(v49 + 48));
      v51 = v73;
      v52 = *(v73 + 48);
      v53 = v46;
      v54 = v72;
      sub_21D0D523C(v53, v72, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v54 + v52) = v50;
      v55 = *(v54 + *(v51 + 48));
      sub_21D0D523C(v54, v78, &unk_27CE5CD80, &qword_21DC0CE80);
      v56 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_21D211BD0(0, *(v56 + 2) + 1, 1, v56);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v81 = sub_21D211BD0((v57 > 1), v58 + 1, 1, v56);
      }

      else
      {
        v81 = v56;
      }

      v59 = v77;
      sub_21D0CF7E0(v77, &unk_27CE5CD80, &qword_21DC0CE80);
      v60 = v81;
      *(v81 + 2) = v58 + 1;
      *&v60[8 * v58 + 32] = v55;
      v61 = v67;
      sub_21D106918(v67, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v78, v59, &unk_27CE5CD80, &qword_21DC0CE80);
      v29 = v69;
      v19 = v61;
      sub_21D0D3954(v59, v69, &unk_27CE5CD80, &qword_21DC0CE80);
      if (v70(v29, 1, v79) == 1)
      {
        goto LABEL_3;
      }
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_21D2784E8(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v93 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v93 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0, &qword_21DC0F400);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v93 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8, &qword_21DC0F408);
  MEMORY[0x28223BE20](v96);
  v95 = &v93 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v112 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v93 - v16;
  MEMORY[0x28223BE20](v17);
  v107 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v19 - 8);
  v106 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v93 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v93 - v24;
  MEMORY[0x28223BE20](v25);
  v115 = &v93 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v30);
  v100 = &v93 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v93 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v93 - v36;
  sub_21D104E74(v116, &v93 - v36, type metadata accessor for TTRRemindersListViewModel.Item);
  v103 = *(v13 + 56);
  v104 = v13 + 56;
  v103(v37, 0, 1, v12);
  v102 = *(*v2 + 104);
  v98 = v37;
  sub_21D0D3954(v37, v34, &unk_27CE5CD80, &qword_21DC0CE80);
  v38 = *(v13 + 48);
  v108 = v12;
  v116 = v38;
  if (v38(v34, 1, v12) == 1)
  {
    v101 = MEMORY[0x277D84F90];
LABEL_3:
    v39 = &unk_27CE5CD80;
    v40 = &qword_21DC0CE80;
    v41 = v34;
LABEL_28:
    sub_21D0CF7E0(v41, v39, v40);
    if (*(v101 + 2))
    {
      v117 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8, &qword_21DC0F9D0);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8, &qword_21DC0F9D0, MEMORY[0x277D84440]);
      v82 = v93;
      sub_21DBF5D3C();
      sub_21D0CF7E0(v98, &unk_27CE5CD80, &qword_21DC0CE80);
      v83 = 0;
    }

    else
    {
      sub_21D0CF7E0(v98, &unk_27CE5CD80, &qword_21DC0CE80);

      v83 = 1;
      v82 = v93;
    }

    v84 = sub_21DBF5D5C();
    (*(*(v84 - 8) + 56))(v82, v83, 1, v84);
  }

  else
  {
    v101 = MEMORY[0x277D84F90];
    v110 = v2;
    v42 = v113;
    v43 = v107;
    v99 = v29;
    v94 = v34;
    while (1)
    {
      sub_21D2A0DC8(v34, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D297CFC(v43, v29);
      v114 = sub_21D46F07C(v29);
      if (v114 < 0)
      {
        break;
      }

      sub_21D0D3954(v29, v115, &unk_27CE5CD80, &qword_21DC0CE80);

      v44 = 0;
      v45 = v108;
      while (1)
      {
        if (v114 == v44)
        {

          sub_21D0CF7E0(v115, &unk_27CE5CD80, &qword_21DC0CE80);
          sub_21D0CF7E0(v99, &unk_27CE5CD80, &qword_21DC0CE80);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
          v66 = v97;
          (*(*(v65 - 8) + 56))(v97, 1, 1, v65);
          goto LABEL_19;
        }

        v46 = v111;
        sub_21D0D3954(v115, v111, &unk_27CE5CD80, &qword_21DC0CE80);
        if (v116(v46, 1, v45) == 1)
        {
          sub_21D0CF7E0(v46, &unk_27CE5CD80, &qword_21DC0CE80);
          if (v44)
          {
            goto LABEL_33;
          }

          v47 = v2[2];
          v49 = *(v47 + 16);
          v48 = *(v47 + 24);
          ObjectType = swift_getObjectType();
          v51 = v2 + v102;
          v52 = v106;
          sub_21D5EF860(v49, v51, v45, ObjectType, v48);
          if (v116(v52, 1, v45) == 1)
          {
            sub_21D0CF7E0(v52, &unk_27CE5CD80, &qword_21DC0CE80);
            if (qword_27CE56BF8 != -1)
            {
              swift_once();
            }

            v89 = sub_21DBF84BC();
            __swift_project_value_buffer(v89, qword_27CE60258);
            v90 = MEMORY[0x277D84F90];
            v91 = sub_21D17716C(MEMORY[0x277D84F90]);
            v92 = sub_21D17716C(v90);
            sub_21DAEAB00("TTRTreeStorageSubtreeView: missing root item", 44, 2, v91, v92, v93);
            goto LABEL_39;
          }

          sub_21D2A0DC8(v52, v42, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          v53 = v46;
          v54 = v112;
          sub_21D2A0DC8(v53, v112, type metadata accessor for TTRRemindersListViewModel.Item);
          v55 = v2[2];
          v56 = v105;
          sub_21D104E74(v54, v105, type metadata accessor for TTRRemindersListViewModel.Item);
          v103(v56, 0, 1, v45);
          v58 = *(v55 + 16);
          v57 = *(v55 + 24);
          v109 = swift_getObjectType();
          v117 = v58;
          v59 = *(*(v57 + 8) + 8);
          v60 = v8;
          v61 = v5;
          v62 = *(v59 + 32);
          swift_unknownObjectRetain();
          v62(v44, v56, v109, v59);
          v42 = v113;
          v5 = v61;
          v8 = v60;
          v45 = v108;
          sub_21D0CF7E0(v56, &unk_27CE5CD80, &qword_21DC0CE80);
          v43 = v107;
          sub_21D106918(v112, type metadata accessor for TTRRemindersListViewModel.Item);
          swift_unknownObjectRelease();
        }

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
        v63 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, v5);
        sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v42, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v63)
        {
          break;
        }

        v64 = __OFADD__(v44++, 1);
        v2 = v110;
        if (v64)
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      v2 = v110;

      sub_21D0CF7E0(v115, &unk_27CE5CD80, &qword_21DC0CE80);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      v114 = *(v67 + 48);
      v68 = v97;
      sub_21D0D523C(v99, v97, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v68 + v114) = v44;
      v66 = v68;
      (*(*(v67 - 8) + 56))(v68, 0, 1, v67);
LABEL_19:
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88, &qword_21DC0F410);
      if ((*(*(v69 - 8) + 48))(v66, 1, v69) == 1)
      {
        sub_21D106918(v43, type metadata accessor for TTRRemindersListViewModel.Item);
        v39 = &qword_27CE5A3C0;
        v40 = &qword_21DC0F400;
        v41 = v66;
        goto LABEL_28;
      }

      v70 = *(v66 + *(v69 + 48));
      v71 = v96;
      v72 = *(v96 + 48);
      v73 = v66;
      v74 = v95;
      sub_21D0D523C(v73, v95, &unk_27CE5CD80, &qword_21DC0CE80);
      *(v74 + v72) = v70;
      v114 = *(v74 + *(v71 + 48));
      sub_21D0D523C(v74, v100, &unk_27CE5CD80, &qword_21DC0CE80);
      v75 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_21D211BD0(0, *(v75 + 2) + 1, 1, v75);
      }

      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      if (v77 >= v76 >> 1)
      {
        v101 = sub_21D211BD0((v76 > 1), v77 + 1, 1, v75);
      }

      else
      {
        v101 = v75;
      }

      v78 = v98;
      sub_21D0CF7E0(v98, &unk_27CE5CD80, &qword_21DC0CE80);
      v43 = v107;
      sub_21D106918(v107, type metadata accessor for TTRRemindersListViewModel.Item);
      v79 = v100;
      v80 = v101;
      *(v101 + 2) = v77 + 1;
      *&v80[8 * v77 + 32] = v114;
      sub_21D0D523C(v79, v78, &unk_27CE5CD80, &qword_21DC0CE80);
      v34 = v94;
      sub_21D0D3954(v78, v94, &unk_27CE5CD80, &qword_21DC0CE80);
      v81 = v116(v34, 1, v108);
      v29 = v99;
      if (v81 == 1)
      {
        goto LABEL_3;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    if (qword_27CE56BF8 != -1)
    {
      swift_once();
    }

    v85 = sub_21DBF84BC();
    __swift_project_value_buffer(v85, qword_27CE60258);
    v86 = MEMORY[0x277D84F90];
    v87 = sub_21D17716C(MEMORY[0x277D84F90]);
    v88 = sub_21D17716C(v86);
    sub_21DAEAB00("TTRTreeStorageSubtreeView: invalid index for top level", 54, 2, v87, v88, v93);
LABEL_39:
    __break(1u);
  }
}