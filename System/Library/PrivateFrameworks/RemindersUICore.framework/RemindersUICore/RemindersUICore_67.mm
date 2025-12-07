unint64_t sub_21D732494()
{
  result = qword_27CE60CE0;
  if (!qword_27CE60CE0)
  {
    result = swift_getWitnessTable(byte_21DC262DC, &type metadata for ViewAsKey, v0, v1);
    atomic_store(result, &qword_27CE60CE0);
  }

  return result;
}

unint64_t sub_21D732534()
{
  result = qword_27CE60CE8;
  if (!qword_27CE60CE8)
  {
    result = swift_getWitnessTable(byte_21DC262B4, &type metadata for ViewAsKey, v0, v1);
    atomic_store(result, &qword_27CE60CE8);
  }

  return result;
}

void REMAlarmProximity.localizedLabelFormatString.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_8:
        sub_21DBF516C();
        return;
      }

LABEL_9:
      swift_once();
      goto LABEL_8;
    }

    if (qword_27CE56C60 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE60CF0);
    v2 = MEMORY[0x277D84F90];
    v3 = sub_21D17716C(MEMORY[0x277D84F90]);
    v4 = sub_21D17716C(v2);
    sub_21DAEAB00("unknown proximity", 17, 2, v3, v4);
    __break(1u);
  }
}

uint64_t REMAlarmLocationTrigger.localizedDescription.getter()
{
  REMAlarmProximity.localizedLabelFormatString.getter([v0 proximity]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21DC08D00;
  v2 = [v0 structuredLocation];
  v3 = [v2 displayName];

  if (v3)
  {
    v4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_21D17A884();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  v7 = sub_21DBFA17C();

  return v7;
}

uint64_t sub_21D7328E4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60CF0);
  v1 = __swift_project_value_buffer(v0, qword_27CE60CF0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMAlarmLocationTrigger.localizedLabelFormatString.getter()
{
  v1 = [v0 proximity];
  if (v1)
  {
    if (v1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (v1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_8:
        sub_21DBF516C();
        return;
      }

LABEL_9:
      swift_once();
      goto LABEL_8;
    }

    if (qword_27CE56C60 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE60CF0);
    v3 = MEMORY[0x277D84F90];
    v4 = sub_21D17716C(MEMORY[0x277D84F90]);
    v5 = sub_21D17716C(v3);
    sub_21DAEAB00("unknown proximity", 17, 2, v4, v5);
    __break(1u);
  }
}

uint64_t REMAlarmLocationTrigger.locationName.getter()
{
  v1 = [v0 structuredLocation];
  v2 = [v1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21D732C44()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60D08);
  v1 = __swift_project_value_buffer(v0, qword_27CE60D08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListEditableSectionNameEditingState.isEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v12);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D106D98(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
  v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_21D106D98(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106D98(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return v15 & 1;
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  return sub_21D1052EC(v1 + v3, a1, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D45E4C8(a1, v1 + v3);
  return swift_endAccess();
}

void (*TTRRemindersListEditableSectionNameEditingPresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

void (*TTRRemindersListEditableSectionNameEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1E55F4;
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  a1[3] = _s15RemindersUICore12EditingStateVMa_0(0);
  a1[4] = &off_282ECF8A0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D1052EC(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_0);
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.__allocating_init(item:interactor:presenterManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_shouldSkipCommitting) = 0;
  sub_21D1052EC(a1, v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v10 = (v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_interactor);
  *v10 = a2;
  v10[1] = a3;
  v11 = v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager;
  swift_beginAccess();
  *(v11 + 8) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v12 = v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  sub_21D105694(a1, v9 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v12 + *(_s15RemindersUICore12EditingStateVMa_0(0) + 20)) = 0;
  return v9;
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.init(item:interactor:presenterManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_shouldSkipCommitting) = 0;
  sub_21D1052EC(a1, v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v10 = (v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_interactor);
  *v10 = a2;
  v10[1] = a3;
  v11 = v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager;
  swift_beginAccess();
  *(v11 + 8) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v12 = v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  sub_21D105694(a1, v5 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v12 + *(_s15RemindersUICore12EditingStateVMa_0(0) + 20)) = 0;
  return v5;
}

Swift::Void __swiftcall TTRRemindersListEditableSectionNameEditingPresenter.requestEndEditing()()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRRemindersListEditableSectionNameEditingPresenter.requestAbortEditing()()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CE56C68 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE60D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v7 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D1052EC(v1 + v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v8 = sub_21D25D250();
  v10 = v9;
  sub_21D106D98(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  v11 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D25A49C(inited + 32);
  sub_21DAEACDC("Reminder List abort editing section's display name {item: %@}", 61, 2, v11);

  v12 = v1 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  if (*(v12 + *(_s15RemindersUICore12EditingStateVMa_0(0) + 20)) == 1)
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_shouldSkipCommitting) = 1;
    v13 = v1 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(v1, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRRemindersListEditableSectionNameEditingPresenter.requestHandleBeginEditingDisplayName()()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CE56C68 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE60D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v7 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D1052EC(v1 + v7, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v8 = sub_21D25D250();
  v10 = v9;
  sub_21D106D98(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  v11 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D25A49C(inited + 32);
  sub_21DAEACDC("Reminder List begin editing section's display name {item: %@}", 61, 2, v11);

  v12 = v1 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  v13 = _s15RemindersUICore12EditingStateVMa_0(0);
  if ((*(v12 + *(v13 + 20)) & 1) == 0)
  {
    v14 = v13;
    v15 = v1 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 32))(v1, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    *(v12 + *(v14 + 20)) = 1;
    if (qword_27CE56DF0 != -1)
    {
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
    __swift_project_value_buffer(v18, qword_27CE63538);
    sub_21DBF8E9C();
  }
}

Swift::Void __swiftcall TTRRemindersListEditableSectionNameEditingPresenter.requestEndEditingDisplayName(newDisplayName:listLayout:)(Swift::String newDisplayName, RemindersUICore::TTRRemindersListLayout listLayout)
{
  v3 = v2;
  v4 = listLayout;
  object = newDisplayName._object;
  countAndFlagsBits = newDisplayName._countAndFlagsBits;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v4;
  if (qword_27CE56C68 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE60D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v13 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D1052EC(v3 + v13, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v14 = sub_21D25D250();
  v16 = v15;
  sub_21D106D98(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  v17 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D25A49C(inited + 32);
  sub_21DAEACDC("Reminder List end editing section's display name {item: %@}", 59, 2, v17);

  v18 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_shouldSkipCommitting;
  if ((*(v3 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_shouldSkipCommitting) & 1) == 0)
  {
    v32[0] = v10;
    v19 = sub_21D733D3C(countAndFlagsBits, object, v32);
    v21 = v20;
    if (v19 == countAndFlagsBits && v20 == object || (v22 = v19, (sub_21DBFC64C() & 1) != 0) || (v23 = v3 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v3, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, v22, v21, ObjectType, v24);

      swift_unknownObjectRelease();
    }
  }

  v26 = v3 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  v27 = _s15RemindersUICore12EditingStateVMa_0(0);
  if (*(v26 + *(v27 + 20)) == 1)
  {
    v28 = v3 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 40))(v3, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, v30, v29);
      swift_unknownObjectRelease();
    }
  }

  *(v3 + v18) = 0;
  *(v26 + *(v27 + 20)) = 0;
}

uint64_t sub_21D733D3C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v50 = a1;
  v51 = a2;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v47) = *a3;
  v8 = sub_21D7347D0();
  v10 = v9;

  v48 = v8;
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v52 = v12;
  v53 = v13;
  sub_21DBF8E0C();
  sub_21DBF4C5C();
  sub_21D176F0C();
  v14 = sub_21DBFBB3C();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v7, v4);

  if ((v16 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v50;
  v53 = v51;
  sub_21DBF4C5C();
  v19 = sub_21DBFBB3C();
  v21 = v20;
  v22 = v7;
  v23 = v19;
  v24 = v49;
  v17(v22, v4);
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  sub_21D7347D0();
  v27 = v26;

  if (v27)
  {

    if (v25)
    {

LABEL_43:
      v41 = *(v24 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_interactor + 8);
      ObjectType = swift_getObjectType();
      (*(v41 + 32))(v23, v21, v27, ObjectType, v41);

      return v23;
    }

    if (v10)
    {
      v33 = v48;
      if (v23 == v48 && v10 == v21)
      {
      }

      else
      {
        v35 = sub_21DBFC64C();

        if ((v35 & 1) == 0)
        {

          return v33;
        }
      }

      if (HIDWORD(v47))
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
LABEL_42:
        v23 = sub_21DBF516C();
        v21 = v40;
        goto LABEL_43;
      }

      swift_once();
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  v28 = v18;

  sub_21D7347D0();
  v30 = v29;
  v32 = v31;

  if ((v32 & 1) != 0 && !v25)
  {

LABEL_31:

    return 0;
  }

  if (!v25)
  {
    if (v28)
    {
LABEL_29:

      return v14;
    }

    v44 = v24 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return v23;
    }

    v45 = *(v44 + 8);
    v46 = swift_getObjectType();
    (*(v45 + 32))(v24, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, v46, v45);
LABEL_48:
    swift_unknownObjectRelease();
    return v23;
  }

  if (v14 == v23 && v16 == v21)
  {
    goto LABEL_29;
  }

  v36 = sub_21DBFC64C();

  if ((v36 & 1) == 0)
  {
    v37 = v24 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v37 + 8);
      v39 = swift_getObjectType();
      (*(v38 + 24))(v24, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, v23, v21, v39, v38);
      goto LABEL_48;
    }
  }

  return v23;
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.updateItemAfterStateChangeIfNeeded(viewModelItem:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  sub_21D1052EC(a1, v13, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for TTRRemindersListViewModel.Item;
    v27 = v13;
    return sub_21D106D98(v27, v28);
  }

  v45 = a1;
  sub_21D105694(v13, v22, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D105694(v22, v25, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v26 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D1052EC(v1 + v26, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D105694(v10, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D106D98(v25, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v28 = type metadata accessor for TTRRemindersListViewModel.Item;
    v27 = v7;
    return sub_21D106D98(v27, v28);
  }

  sub_21D105694(v7, v16, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D105694(v16, v19, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  if (_s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v25, v19))
  {
    sub_21D106D98(v19, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v27 = v25;
    v28 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    return sub_21D106D98(v27, v28);
  }

  v44 = v1;
  if (qword_27CE56C68 != -1)
  {
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_27CE60D08);
  v32 = v45;
  v31 = v46;
  sub_21D1052EC(v45, v46, type metadata accessor for TTRRemindersListViewModel.Item);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEDC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v31;
    v37 = swift_slowAlloc();
    v47[0] = v37;
    *v35 = 136315138;
    v38 = sub_21D25D250();
    v40 = v39;
    sub_21D106D98(v36, type metadata accessor for TTRRemindersListViewModel.Item);
    v41 = sub_21D0CDFB4(v38, v40, v47);
    v32 = v45;

    *(v35 + 4) = v41;
    _os_log_impl(&dword_21D0C9000, v33, v34, "TTRRemindersListEditableSectionNameEditingPresenter: update item after state change with new item {item: %%@}, userInfo: [item: %s]", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x223D46520](v37, -1, -1);
    MEMORY[0x223D46520](v35, -1, -1);
  }

  else
  {

    sub_21D106D98(v31, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  sub_21D106D98(v19, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D106D98(v25, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v42 = v44;
  swift_beginAccess();
  sub_21D735188(v32, v42 + v26);
  return swift_endAccess();
}

uint64_t sub_21D7347D0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D1052EC(v0 + v11, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter(v7);
  sub_21D106D98(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    if (qword_27CE56C68 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE60D08);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAECC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "attempting to use a non section in TTRRemindersListEditableSectionNameEditingPresenter", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    return 0;
  }

  sub_21D105694(v7, v4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v28);
  v16 = v28;
  if (v29 > 1u)
  {
    if (v29 != 2)
    {
      if (qword_27CE56C68 != -1)
      {
        swift_once();
      }

      v22 = sub_21DBF84BC();
      __swift_project_value_buffer(v22, qword_27CE60D08);
      v16 = sub_21DBF84AC();
      v23 = sub_21DBFAECC();
      if (os_log_type_enabled(v16, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21D0C9000, v16, v23, "attempting to use a non objectID section identifier in TTRRemindersListEditableSectionNameEditingPresenter", v24, 2u);
        MEMORY[0x223D46520](v24, -1, -1);
      }
    }

    sub_21D106D98(v4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    return 0;
  }

  if (v29)
  {

    sub_21D106D98(v4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    return 0;
  }

  else
  {
    v17 = &v4[*(v1 + 20)];
    v18 = *(v17 + 5);
    v26[4] = *(v17 + 4);
    v26[5] = v18;
    v27[0] = *(v17 + 6);
    *(v27 + 10) = *(v17 + 106);
    v19 = *(v17 + 1);
    v26[0] = *v17;
    v26[1] = v19;
    v20 = *(v17 + 3);
    v26[2] = *(v17 + 2);
    v26[3] = v20;
    if (sub_21D1D9A6C(v26) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *&v26[0];
      sub_21DBF8E0C();
    }

    sub_21D106D98(v4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    return v21;
  }
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.deinit()
{
  sub_21D106D98(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate);
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager);
  swift_unknownObjectRelease();
  sub_21D106D98(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state, _s15RemindersUICore12EditingStateVMa_0);
  return v0;
}

uint64_t TTRRemindersListEditableSectionNameEditingPresenter.__deallocating_deinit()
{
  sub_21D106D98(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate);
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_presenterManager);
  swift_unknownObjectRelease();
  sub_21D106D98(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state, _s15RemindersUICore12EditingStateVMa_0);

  return swift_deallocClassInstance();
}

uint64_t sub_21D734D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  sub_21D45E4C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_21D734E9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D734F08(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

uint64_t sub_21D734FA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_state;
  a1[3] = _s15RemindersUICore12EditingStateVMa_0(0);
  a1[4] = &off_282ECF8A0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D1052EC(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_0);
}

uint64_t sub_21D735020@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_item;
  swift_beginAccess();
  return sub_21D1052EC(v1 + v3, a1, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t sub_21D73508C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore51TTRRemindersListEditableSectionNameEditingPresenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &protocol witness table for TTRRemindersListEditableSectionNameEditingPresenter, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D735188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D735340(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    result = _s15RemindersUICore12EditingStateVMa_0(319);
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

void **sub_21D735454(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106D98(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

void *sub_21D736AEC(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106D98(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D737C0C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D737F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_21DBF9D2C();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + *(*v3 + 112));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_21DBF9DAC();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = *(*(v3 + *(*v3 + 128)) + 16);
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = a2;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v24;
    v21 = _Block_copy(aBlock);
    v22 = v19;

    sub_21DBF9D4C();
    v28 = MEMORY[0x277D84F90];
    sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v10, v7, v21);
    _Block_release(v21);

    (*(v27 + 8))(v7, v5);
    (*(v25 + 8))(v10, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*TTRAccountsListsInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
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

char *TTRAccountsListsInteractor.__allocating_init(store:committer:cloudKitMigrationManager:cloudKitNetworkActivityMonitor:perWindowLastSelectedListStorage:userDefaults:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_21D0D23C0(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v16;
}

uint64_t TTRAccountListsMonitorableDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_21D7384D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *a2;
    swift_beginAccess();
    if ((v5[v6] & 1) == 0)
    {
      sub_21DBFBEEC();
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98, &unk_21DC266E8);
      sub_21DBFA1AC();

      MEMORY[0x223D42AA0](0xD00000000000002ELL, 0x800000021DC6A010);
      v7 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();
    }
  }
}

uint64_t sub_21D73865C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 48))(a1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t TTRAccountsListsInteractor.isSettingSmartListsDisplayOrderInUserDefaults.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRAccountsListsInteractor.isSettingSmartListsDisplayOrderInUserDefaults.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TTRAccountsListsInteractor.smartListsDisplayOrderInUserDefaults.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 40))(v2, v3);
  return swift_endAccess();
}

uint64_t TTRAccountsListsInteractor.isSettingSmartListsVisibilityInUserDefaults.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRAccountsListsInteractor.isSettingSmartListsVisibilityInUserDefaults.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TTRAccountsListsInteractor.smartListsVisibilityInUserDefaults.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 64))(v2, v3);
  return swift_endAccess();
}

Swift::Void __swiftcall TTRAccountsListsInteractor.setPredefinedSmartListVisibility(_:for:)(RemindersUICore::TTRListType::PredefinedSmartListVisibility _, RemindersUICore::TTRListType::PredefinedSmartListType a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _;
  v161 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D50, &unk_21DC20AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v146 - v7;
  v9 = sub_21DBFAE6C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v154 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = *v4;
  v156 = *v4;
  v15 = *&v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store];
  v158[0] = 0;
  v16 = [v15 fetchPrimaryActiveCloudKitAccountWithError_];
  v17 = &unk_280D17000;
  if (!v16)
  {
    v48 = v158[0];
    v49 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v50 = sub_21DBF84BC();
    __swift_project_value_buffer(v50, qword_280D0F300);
    v51 = v49;
    v52 = sub_21DBF84AC();
    v53 = sub_21DBFAEBC();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v156;
    if (!v54)
    {

      goto LABEL_97;
    }

    v154 = v3;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v158[0] = v57;
    v58 = 0xE500000000000000;
    *v56 = 136315650;
    v59 = 0x6E756F4669726973;
    v60 = 0xEF737070416E4964;
    if (v55 != 5)
    {
      v59 = 0x6574656C706D6F63;
      v60 = 0xE900000000000064;
    }

    v61 = 0xE700000000000000;
    v62 = 0x64656767616C66;
    if (v55 != 3)
    {
      v62 = 0x64656E6769737361;
      v61 = 0xE800000000000000;
    }

    if (v55 <= 4)
    {
      v59 = v62;
      v60 = v61;
    }

    v63 = 0x656C756465686373;
    v64 = 0xE300000000000000;
    if (v55 == 1)
    {
      v64 = 0xE900000000000064;
    }

    else
    {
      v63 = 7105633;
    }

    if (v55)
    {
      v58 = v64;
    }

    else
    {
      v63 = 0x7961646F74;
    }

    if (v55 <= 2)
    {
      v65 = v63;
    }

    else
    {
      v65 = v59;
    }

    if (v55 <= 2)
    {
      v66 = v58;
    }

    else
    {
      v66 = v60;
    }

    v67 = sub_21D0CDFB4(v65, v66, v158);

    *(v56 + 4) = v67;
    *(v56 + 12) = 2080;
    v68 = 0x6E6564646968;
    if (v13 != 2)
    {
      v68 = 0x6D6F74737563;
    }

    v69 = 0xE700000000000000;
    v70 = 0x656C6269736976;
    if (!v13)
    {
      v70 = 0x656E696665646E75;
      v69 = 0xE900000000000064;
    }

    if (v13 <= 1)
    {
      v71 = v70;
    }

    else
    {
      v71 = v68;
    }

    if (v13 <= 1)
    {
      v72 = v69;
    }

    else
    {
      v72 = 0xE600000000000000;
    }

    v73 = sub_21D0CDFB4(v71, v72, v158);

    *(v56 + 14) = v73;
    *(v56 + 22) = 2080;
    swift_getErrorValue();
    v74 = sub_21DBFC75C();
    v76 = sub_21D0CDFB4(v74, v75, v158);

    *(v56 + 24) = v76;
    _os_log_impl(&dword_21D0C9000, v52, v53, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): failed to fetch primary CK account {smartListType: %s, visibility: %s, error: %s}", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v57, -1, -1);
    MEMORY[0x223D46520](v56, -1, -1);

LABEL_94:
    v3 = v154;
    v17 = &unk_280D17000;
LABEL_97:
    if (v17[480] != -1)
    {
      swift_once();
    }

    v102 = sub_21DBF84BC();
    __swift_project_value_buffer(v102, qword_280D0F300);
    v103 = sub_21DBF84AC();
    v104 = sub_21DBFAEDC();
    if (os_log_type_enabled(v103, v104))
    {
      v154 = v3;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v158[0] = v106;
      v107 = 0xE500000000000000;
      *v105 = 136315394;
      v108 = 0x6E756F4669726973;
      v109 = 0xEF737070416E4964;
      if (v55 != 5)
      {
        v108 = 0x6574656C706D6F63;
        v109 = 0xE900000000000064;
      }

      v110 = 0xE700000000000000;
      v111 = 0x64656767616C66;
      if (v55 != 3)
      {
        v111 = 0x64656E6769737361;
        v110 = 0xE800000000000000;
      }

      if (v55 <= 4)
      {
        v108 = v111;
        v109 = v110;
      }

      v112 = 0x656C756465686373;
      v113 = 0xE300000000000000;
      if (v55 == 1)
      {
        v113 = 0xE900000000000064;
      }

      else
      {
        v112 = 7105633;
      }

      if (v55)
      {
        v107 = v113;
      }

      else
      {
        v112 = 0x7961646F74;
      }

      if (v55 <= 2)
      {
        v114 = v112;
      }

      else
      {
        v114 = v108;
      }

      if (v55 <= 2)
      {
        v115 = v107;
      }

      else
      {
        v115 = v109;
      }

      v116 = sub_21D0CDFB4(v114, v115, v158);

      *(v105 + 4) = v116;
      *(v105 + 12) = 2080;
      v117 = 0x6E6564646968;
      if (v13 != 2)
      {
        v117 = 0x6D6F74737563;
      }

      v118 = 0xE700000000000000;
      v119 = 0x656C6269736976;
      if (!v13)
      {
        v119 = 0x656E696665646E75;
        v118 = 0xE900000000000064;
      }

      if (v13 <= 1)
      {
        v120 = v119;
      }

      else
      {
        v120 = v117;
      }

      if (v13 <= 1)
      {
        v121 = v118;
      }

      else
      {
        v121 = 0xE600000000000000;
      }

      v122 = sub_21D0CDFB4(v120, v121, v158);

      *(v105 + 14) = v122;
      _os_log_impl(&dword_21D0C9000, v103, v104, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): persist visibility of pre-defined smart list to user defaults only {smartListType: %s, visibility: %s}", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v106, -1, -1);
      MEMORY[0x223D46520](v105, -1, -1);

      v3 = v154;
    }

    else
    {
    }

    v123 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults];
    swift_beginAccess();
    v124 = *(v123 + 3);
    v125 = *(v123 + 4);
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v125 + 64))(&v157, v124, v125);
    swift_endAccess();
    v126 = v157;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158[0] = v126;
    sub_21D478B7C(v13, v55, isUniquelyReferenced_nonNull_native);
    v128 = v158[0];

    v158[0] = v128;
    sub_21D73A4D8(v158, 1);

    return;
  }

  v18 = v16;
  LODWORD(v155) = v13;
  v19 = v158[0];
  v20 = [v18 capabilities];
  v21 = [v20 supportsPinnedLists];

  if ((v21 & 1) == 0)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v77 = sub_21DBF84BC();
    __swift_project_value_buffer(v77, qword_280D0F300);
    v78 = v18;
    v79 = sub_21DBF84AC();
    v80 = sub_21DBFAEDC();

    v81 = os_log_type_enabled(v79, v80);
    v55 = v156;
    if (!v81)
    {

      v13 = v155;
      goto LABEL_97;
    }

    v154 = v3;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v158[0] = v84;
    *v82 = 138412802;
    v85 = [v78 objectID];
    *(v82 + 4) = v85;
    v86 = 0xE500000000000000;
    *v83 = v85;
    *(v82 + 12) = 2080;
    v87 = 0x6E756F4669726973;
    v88 = 0xEF737070416E4964;
    if (v55 != 5)
    {
      v87 = 0x6574656C706D6F63;
      v88 = 0xE900000000000064;
    }

    v89 = 0xE700000000000000;
    v90 = 0x64656767616C66;
    if (v55 != 3)
    {
      v90 = 0x64656E6769737361;
      v89 = 0xE800000000000000;
    }

    if (v55 <= 4)
    {
      v87 = v90;
      v88 = v89;
    }

    v91 = 0x656C756465686373;
    v92 = 0xE300000000000000;
    if (v55 == 1)
    {
      v92 = 0xE900000000000064;
    }

    else
    {
      v91 = 7105633;
    }

    if (v55)
    {
      v86 = v92;
    }

    else
    {
      v91 = 0x7961646F74;
    }

    if (v55 <= 2)
    {
      v93 = v91;
    }

    else
    {
      v93 = v87;
    }

    if (v55 <= 2)
    {
      v94 = v86;
    }

    else
    {
      v94 = v88;
    }

    v95 = sub_21D0CDFB4(v93, v94, v158);

    *(v82 + 14) = v95;
    *(v82 + 22) = 2080;
    v96 = 0x6E6564646968;
    if (v155 != 2)
    {
      v96 = 0x6D6F74737563;
    }

    v97 = 0xE700000000000000;
    v98 = 0x656C6269736976;
    if (!v155)
    {
      v98 = 0x656E696665646E75;
      v97 = 0xE900000000000064;
    }

    if (v155 <= 1)
    {
      v99 = v98;
    }

    else
    {
      v99 = v96;
    }

    if (v155 <= 1)
    {
      v100 = v97;
    }

    else
    {
      v100 = 0xE600000000000000;
    }

    v101 = sub_21D0CDFB4(v99, v100, v158);

    *(v82 + 24) = v101;
    _os_log_impl(&dword_21D0C9000, v79, v80, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): primary CK account does not support pinned lists {accountID: %@, smartListType: %s, visibility: %s}", v82, 0x20u);
    sub_21D0CF7E0(v83, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v83, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v84, -1, -1);
    MEMORY[0x223D46520](v82, -1, -1);

    v13 = v155;
    goto LABEL_94;
  }

  v22 = **(&unk_27832EAE0 + v14);
  v23 = sub_21DBFB04C();
  v24 = v155;
  if (v23)
  {
    v25 = v22;
    sub_21DBFAE5C();
    v26 = v10;
    v27 = *(v10 + 48);
    v28 = v9;
    if (v27(v8, 1, v9) != 1)
    {
      (*(v26 + 32))(v154, v8, v9);
      v129 = sub_21DBFB73C();
      v130 = v156;
      v131 = v129;
      v153 = v25;
      sub_21D0D32E4(&v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer], v158);
      v149 = v160;
      v151 = v159;
      __swift_project_boxed_opaque_existential_1(v158, v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_21DC09CF0;
      v150 = v132;
      *(v132 + 32) = v131;
      v133 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v152 = v131;
      if (Strong)
      {
        v148 = v28;
        v135 = *(v133 + 1);
        ObjectType = swift_getObjectType();
        v147 = *(v135 + 56);
        v137 = v131;
        v138 = v135;
        v28 = v148;
        v139 = v147(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v138);
        LOBYTE(v24) = v155;
        v140 = v139;
        swift_unknownObjectRelease();
      }

      else
      {
        v142 = v131;
        v140 = 0;
      }

      v143 = type metadata accessor for TTRSmartListEditor();
      v155 = &v146;
      MEMORY[0x28223BE20](v143);
      v144 = swift_allocObject();
      *(v144 + 16) = v130;
      *(v144 + 17) = v24;
      TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v143, v150, v15, v140, sub_21D748C40, &v145, sub_21D748C48, v144, v151, v143, v149, &protocol witness table for TTRSmartListEditor);

      (*(v26 + 8))(v154, v28);
      __swift_destroy_boxed_opaque_existential_0(v158);
      return;
    }

    sub_21D0CF7E0(v8, &unk_27CE60D50, &unk_21DC20AB0);
  }

  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_280D0F300);
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAECC();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v156;
  if (v32)
  {
    v34 = 0xE900000000000064;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v158[0] = v36;
    v37 = 0xE500000000000000;
    *v35 = 136315394;
    v38 = 0x6E756F4669726973;
    v39 = 0xEF737070416E4964;
    if (v33 != 5)
    {
      v38 = 0x6574656C706D6F63;
      v39 = 0xE900000000000064;
    }

    v40 = 0xE700000000000000;
    v41 = 0x64656767616C66;
    if (v33 != 3)
    {
      v41 = 0x64656E6769737361;
      v40 = 0xE800000000000000;
    }

    if (v33 <= 4)
    {
      v38 = v41;
      v39 = v40;
    }

    v42 = 0x656C756465686373;
    v43 = 0xE300000000000000;
    if (v33 == 1)
    {
      v43 = 0xE900000000000064;
    }

    else
    {
      v42 = 7105633;
    }

    if (v33)
    {
      v37 = v43;
    }

    else
    {
      v42 = 0x7961646F74;
    }

    if (v33 <= 2)
    {
      v44 = v42;
    }

    else
    {
      v44 = v38;
    }

    if (v33 <= 2)
    {
      v45 = v37;
    }

    else
    {
      v45 = v39;
    }

    v46 = sub_21D0CDFB4(v44, v45, v158);

    *(v35 + 4) = v46;
    *(v35 + 12) = 2080;
    if (v24 > 1)
    {
      v34 = 0xE600000000000000;
      if (v24 == 2)
      {
        v47 = 0x6E6564646968;
      }

      else
      {
        v47 = 0x6D6F74737563;
      }
    }

    else if (v24)
    {
      v34 = 0xE700000000000000;
      v47 = 0x656C6269736976;
    }

    else
    {
      v47 = 0x656E696665646E75;
    }

    v141 = sub_21D0CDFB4(v47, v34, v158);

    *(v35 + 14) = v141;
    _os_log_impl(&dword_21D0C9000, v30, v31, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): called unexpectedly for unsupported smart list type {smartListType: %s, visibility: %s}", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v36, -1, -1);
    MEMORY[0x223D46520](v35, -1, -1);
  }
}

uint64_t TTRAccountsListsInteractor.undoManager.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(v0, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_21D739EC0(NSObject *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F300);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      v13 = 0xE500000000000000;
      *v11 = 136315650;
      v14 = 0x6E756F4669726973;
      v15 = 0xEF737070416E4964;
      if (a2 != 5)
      {
        v14 = 0x6574656C706D6F63;
        v15 = 0xE900000000000064;
      }

      v16 = 0xE700000000000000;
      v17 = 0x64656767616C66;
      if (a2 != 3)
      {
        v17 = 0x64656E6769737361;
        v16 = 0xE800000000000000;
      }

      if (a2 <= 4u)
      {
        v14 = v17;
        v15 = v16;
      }

      v18 = 0x656C756465686373;
      v19 = 0xE300000000000000;
      if (a2 == 1)
      {
        v19 = 0xE900000000000064;
      }

      else
      {
        v18 = 7105633;
      }

      if (a2)
      {
        v13 = v19;
      }

      else
      {
        v18 = 0x7961646F74;
      }

      if (a2 <= 2u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (a2 <= 2u)
      {
        v21 = v13;
      }

      else
      {
        v21 = v15;
      }

      v22 = sub_21D0CDFB4(v20, v21, &v54);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2080;
      v23 = 0x6E6564646968;
      if (a3 != 2)
      {
        v23 = 0x6D6F74737563;
      }

      v24 = 0xE700000000000000;
      v25 = 0x656C6269736976;
      if (!a3)
      {
        v25 = 0x656E696665646E75;
        v24 = 0xE900000000000064;
      }

      if (a3 <= 1u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      if (a3 <= 1u)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      v28 = sub_21D0CDFB4(v26, v27, &v54);

      *(v11 + 14) = v28;
      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v29 = sub_21DBFC75C();
      v31 = sub_21D0CDFB4(v29, v30, &v54);

      *(v11 + 24) = v31;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): failed to save user-defined visibility of pre-defined smart list {smartListType: %s, visibility: %s, error: %s}", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);

      return;
    }

    v52 = a1;

LABEL_68:

    return;
  }

  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_280D0F300);
  oslog = sub_21DBF84AC();
  v33 = sub_21DBFAEDC();
  if (!os_log_type_enabled(oslog, v33))
  {
    v52 = oslog;

    goto LABEL_68;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v54 = v35;
  v36 = 0xE500000000000000;
  *v34 = 136315394;
  v37 = 0x6E756F4669726973;
  v38 = 0xEF737070416E4964;
  if (a2 != 5)
  {
    v37 = 0x6574656C706D6F63;
    v38 = 0xE900000000000064;
  }

  v39 = 0xE700000000000000;
  v40 = 0x64656767616C66;
  if (a2 != 3)
  {
    v40 = 0x64656E6769737361;
    v39 = 0xE800000000000000;
  }

  if (a2 <= 4u)
  {
    v37 = v40;
    v38 = v39;
  }

  v41 = 0x656C756465686373;
  v42 = 0xE300000000000000;
  if (a2 == 1)
  {
    v42 = 0xE900000000000064;
  }

  else
  {
    v41 = 7105633;
  }

  if (a2)
  {
    v36 = v42;
  }

  else
  {
    v41 = 0x7961646F74;
  }

  if (a2 <= 2u)
  {
    v43 = v41;
  }

  else
  {
    v43 = v37;
  }

  if (a2 <= 2u)
  {
    v44 = v36;
  }

  else
  {
    v44 = v38;
  }

  v45 = sub_21D0CDFB4(v43, v44, &v54);

  *(v34 + 4) = v45;
  *(v34 + 12) = 2080;
  v46 = 0x6E6564646968;
  if (a3 != 2)
  {
    v46 = 0x6D6F74737563;
  }

  v47 = 0xE700000000000000;
  v48 = 0x656C6269736976;
  if (!a3)
  {
    v48 = 0x656E696665646E75;
    v47 = 0xE900000000000064;
  }

  if (a3 <= 1u)
  {
    v49 = v48;
  }

  else
  {
    v49 = v46;
  }

  if (a3 <= 1u)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0xE600000000000000;
  }

  v51 = sub_21D0CDFB4(v49, v50, &v54);

  *(v34 + 14) = v51;
  _os_log_impl(&dword_21D0C9000, oslog, v33, "TTRAccountsListInteractor#setPredefinedSmartListVisibility(_:for:): user-defined visibility of pre-defined smart list saved {smartListType: %s, visibility: %s}", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v35, -1, -1);
  MEMORY[0x223D46520](v34, -1, -1);
}

void sub_21D73A4D8(uint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21DBF9D5C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults];
  swift_beginAccess();
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  (*(v13 + 64))(v42, v14, v13);
  swift_endAccess();
  sub_21D3714C0(v42[0], v11);
  LOBYTE(v13) = v15;

  if ((v13 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
    v36 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsVisibilityInUserDefaults;
    swift_beginAccess();
    v3[v16] = 1;
    swift_beginAccess();
    v17 = v12[3];
    v18 = v12[4];
    __swift_mutable_project_boxed_opaque_existential_1(v12, v17);
    v41 = v11;
    v35 = a2;
    v19 = v3;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v23 = *(v18 + 72);
    sub_21DBF8E0C();
    v23(&v41, v17, v18);
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    swift_endAccess();
    *(v19 + v36) = 0;
    if (v35)
    {
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v28 = sub_21DBFB12C();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      aBlock[4] = sub_21D749D5C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_194_0;
      v30 = _Block_copy(aBlock);
      v31 = v27;

      v32 = v37;
      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
      v33 = v39;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v32, v33, v30);
      _Block_release(v30);

      (*(v25 + 8))(v33, v24);
      (*(v38 + 8))(v32, v26);
    }
  }
}

void TTRAccountsListsInteractor.setPinnedListOrdering(_:undoPolicy:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v81 = a1;
  v87 = *MEMORY[0x277D85DE8];
  v78 = sub_21DBFB1BC();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v6 = (v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = (v74 - v9);
  v11 = *a2;
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v84[0] = 0;
  v13 = [v12 fetchPrimaryActiveCloudKitAccountWithError_];
  v14 = &unk_280D17000;
  if (!v13)
  {
    v34 = v84[0];
    v35 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_280D0F300);
    v37 = v35;
    v38 = sub_21DBF84AC();
    v39 = sub_21DBFAEBC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v84[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_21DBFC75C();
      v44 = sub_21D0CDFB4(v42, v43, v84);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_21D0C9000, v38, v39, "TTRAccountsListInteractor#setPinnedListOrdering: failed to fetch primary CK account {error: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v45 = v41;
      v14 = &unk_280D17000;
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v15 = v13;
  v16 = v84[0];
  v17 = [v15 capabilities];
  v18 = [v17 supportsPinnedLists];

  if ((v18 & 1) == 0)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v46 = sub_21DBF84BC();
    __swift_project_value_buffer(v46, qword_280D0F300);
    v47 = v15;
    v48 = sub_21DBF84AC();
    v49 = sub_21DBFAEDC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = [v47 objectID];
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&dword_21D0C9000, v48, v49, "TTRAccountsListInteractor#setPinnedListOrdering: primary CK account does not support pinned lists {accountID: %@}", v50, 0xCu);
      sub_21D0CF7E0(v51, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v51, -1, -1);
      MEMORY[0x223D46520](v50, -1, -1);
    }

    else
    {
    }

LABEL_15:
    v53 = 0;
    if (v14[480] != -1)
    {
LABEL_40:
      swift_once();
    }

    v54 = sub_21DBF84BC();
    __swift_project_value_buffer(v54, qword_280D0F300);
    v55 = sub_21DBF84AC();
    v56 = sub_21DBFAEDC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21D0C9000, v55, v56, "TTRAccountsListInteractor#setPinnedListOrdering: persist predefinedSmartList ordering to user defaults only", v57, 2u);
      MEMORY[0x223D46520](v57, -1, -1);
    }

    v74[1] = v3;

    v58 = *(v81 + 16);
    if (!v58)
    {
      v75._rawValue = MEMORY[0x277D84F90];
      goto LABEL_35;
    }

    v74[0] = v53;
    v82 = v6;
    v83 = v10;
    v53 = 0;
    v59 = (v80 + 88);
    v79 = *MEMORY[0x277D45A00];
    v77 = *MEMORY[0x277D45A08];
    v10 = (v80 + 8);
    v76 = (v80 + 96);
    v75._rawValue = MEMORY[0x277D84F90];
    v6 = v78;
    while (1)
    {
      v3 = v53;
      while (1)
      {
        if (v3 >= v58)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v61 = *(v80 + 16);
        v62 = v83;
        v61(v83, v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v3, v6);
        v53 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_39;
        }

        v63 = v6;
        v64 = v82;
        v61(v82, v62, v63);
        v65 = (*v59)(v64, v63);
        if (v65 == v79)
        {
          break;
        }

        if (v65 != v77)
        {
          sub_21DBFC63C();
          __break(1u);
          return;
        }

        rawValue = v10->_rawValue;
        v6 = v78;
        (v10->_rawValue)(v83, v78);
        rawValue(v82, v6);
LABEL_22:
        ++v3;
        if (v53 == v58)
        {
          goto LABEL_35;
        }
      }

      (*v76)(v64, v63);
      TTRListType.PredefinedSmartListType.init(remSmartListType:)(v64->_rawValue);
      (v10->_rawValue)(v62, v63);
      v60 = v84[0];
      v6 = v63;
      if (LOBYTE(v84[0]) == 7)
      {
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75._rawValue = sub_21D0F4EB4(0, *(v75._rawValue + 2) + 1, 1, v75._rawValue);
      }

      v68 = *(v75._rawValue + 2);
      v67 = *(v75._rawValue + 3);
      if (v68 >= v67 >> 1)
      {
        v75._rawValue = sub_21D0F4EB4((v67 > 1), v68 + 1, 1, v75._rawValue);
      }

      v69 = v75._rawValue;
      *(v75._rawValue + 2) = v68 + 1;
      v69[v68 + 32] = v60;
      if (v53 == v58)
      {
LABEL_35:
        TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(v75);
        sub_21D73B4C8(v84, 1);

        return;
      }
    }
  }

  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v84);
  v19 = v85;
  v20 = v86;
  v21 = __swift_project_boxed_opaque_existential_1(v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC09CF0;
  *(v22 + 32) = v15;
  v23 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v83 = v21;
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    v82 = v19;
    v80 = v11;
    v26 = ObjectType;
    v27 = v3;
    v28 = v20;
    v29 = *(v24 + 56);
    v30 = v15;
    v31 = v27;
    v19 = v82;
    v32 = v29(v31, &protocol witness table for TTRAccountsListsInteractor, v26, v24);
    v20 = v28;
    v33 = v32;
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = v15;
    v33 = 0;
  }

  v71 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v71);
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v72, v22, v12, v33, sub_21D748C54, &v73, sub_21D73B234, 0, v19, v72, v20, &protocol witness table for TTRAccountEditor);

  __swift_destroy_boxed_opaque_existential_0(v84);
}

void sub_21D73B234(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F300);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC75C();
      v11 = sub_21D0CDFB4(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRAccountsListInteractor#setPinnedListOrdering: failed to save ordering {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v15 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F300);
    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "TTRAccountsListInteractor#setPinnedListOrdering: ordering saved", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = oslog;
  }
}

void sub_21D73B4C8(uint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21DBF9D5C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = &v3[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults];
  swift_beginAccess();
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  (*(v13 + 40))(v42, v14, v13);
  swift_endAccess();
  sub_21D1D7854(v42[0], v11);
  LOBYTE(v13) = v15;

  if ((v13 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
    v36 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_isSettingSmartListsDisplayOrderInUserDefaults;
    swift_beginAccess();
    v3[v16] = 1;
    swift_beginAccess();
    v17 = v12[3];
    v18 = v12[4];
    __swift_mutable_project_boxed_opaque_existential_1(v12, v17);
    v41 = v11;
    v35 = a2;
    v19 = v3;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v23 = *(v18 + 48);
    sub_21DBF8E0C();
    v23(&v41, v17, v18);
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v19;
    swift_endAccess();
    *(v19 + v36) = 0;
    if (v35)
    {
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v28 = sub_21DBFB12C();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      aBlock[4] = sub_21D749D2C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_188;
      v30 = _Block_copy(aBlock);
      v31 = v27;

      v32 = v37;
      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
      v33 = v39;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v32, v33, v30);
      _Block_release(v30);

      (*(v25 + 8))(v33, v24);
      (*(v38 + 8))(v32, v26);
    }
  }
}

uint64_t TTRAccountsListsInteractor.lastSelectedListInWindow.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage + 8);
    ObjectType = swift_getObjectType();
    return (*(v3 + 8))(ObjectType, v3);
  }

  else
  {
    v6 = type metadata accessor for TTRListType(0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_21D73B9CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    return (*(v4 + 8))(ObjectType, v4);
  }

  else
  {
    v7 = type metadata accessor for TTRListType(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_21D73BA90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_21D0D3954(a1, &v14 - v8, &qword_27CE650E0, &unk_21DC1BD10);
  v10 = (*a2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage);
  if (*v10)
  {
    v11 = v10[1];
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v9, v6, &qword_27CE650E0, &unk_21DC1BD10);
    (*(v11 + 16))(v6, ObjectType, v11);
  }

  return sub_21D0CF7E0(v9, &qword_27CE650E0, &unk_21DC1BD10);
}

uint64_t TTRAccountsListsInteractor.globalLastSelectedList.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

uint64_t sub_21D73BC60(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

uint64_t sub_21D73BCF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_21D0D3954(a1, &v15 - v8, &qword_27CE650E0, &unk_21DC1BD10);
  v10 = *a2;
  sub_21D0D3954(v9, v6, &qword_27CE650E0, &unk_21DC1BD10);
  v11 = v10 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 24))(v6, v12, v13);
  swift_endAccess();
  return sub_21D0CF7E0(v9, &qword_27CE650E0, &unk_21DC1BD10);
}

uint64_t TTRAccountsListsInteractor.saveLastSelectedListType(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v20 = a1;
  sub_21D0D4B04(a1, &v20 - v10, type metadata accessor for TTRListType);
  v12 = type metadata accessor for TTRListType(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage))
  {
    v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_perWindowLastSelectedListStorage + 8);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v11, v8, &qword_27CE650E0, &unk_21DC1BD10);
    (*(v14 + 16))(v8, ObjectType, v14);
  }

  sub_21D0CF7E0(v11, &qword_27CE650E0, &unk_21DC1BD10);
  sub_21D0D4B04(v20, v8, type metadata accessor for TTRListType);
  v13(v8, 0, 1, v12);
  sub_21D0D3954(v8, v5, &qword_27CE650E0, &unk_21DC1BD10);
  v16 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  (*(v18 + 24))(v5, v17, v18);
  swift_endAccess();
  return sub_21D0CF7E0(v8, &qword_27CE650E0, &unk_21DC1BD10);
}

id TTRAccountsListsInteractor.createNewList(account:)(void *a1)
{
  v3 = [a1 store];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v5 = [v4 updateAccount_];
  v6 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 56))(v1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v8);
  swift_unknownObjectRelease();
  if (!v10)
  {
    v11 = 0;
    Strong = 0;
    goto LABEL_6;
  }

  v11 = type metadata accessor for TTRBasicUndoContext();
  Strong = swift_allocObject();
  *(Strong + 16) = v10;
  v12 = &protocol witness table for TTRBasicUndoContext;
LABEL_7:
  v17[0] = Strong;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = v11;
  v17[4] = v12;
  v13 = [v5 saveRequest];
  v14 = sub_21DBFA12C();
  v15 = [v13 addListWithName:v14 toAccountChangeItem:v5];

  sub_21D0CF7E0(v17, &unk_27CE60D80, &unk_21DC093F0);
  return v15;
}

id TTRAccountsListsInteractor.createNewListInDefaultAccount()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v19[0] = 0;
  v2 = [v1 fetchDefaultAccountWithError_];
  v3 = v2;
  if (v19[0])
  {
    v4 = v19[0];

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = v4;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (!os_log_type_enabled(v7, v8))
    {

      return 0;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21DBFC74C();
    v13 = sub_21D0CDFB4(v11, v12, v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "Cannot fetch default list {error: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
    if (v2)
    {
      v14 = TTRAccountsListsInteractor.createNewList(account:)(v2);

      return v14;
    }

    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F300);
    v6 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v17, "No default account for creating in new list", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }
  }

  return 0;
}

id TTRAccountsListsInteractor.createNewCustomSmartList(in:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v4 = [v3 updateAccount_];
  v5 = sub_21DBFA12C();
  v6 = [v3 addCustomSmartListWithName:v5 toAccountChangeItem:v4 smartListObjectID:0];

  return v6;
}

void *TTRAccountsListsInteractor.createNewCustomSmartListAllowingUndo(in:name:filter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = v9 + 16;
  sub_21D0D32E4(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v37);
  v34 = v39;
  v35 = v38;
  v36 = __swift_project_boxed_opaque_existential_1(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC09CF0;
  *(v11 + 32) = a1;
  v33 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v12 = v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = a2;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = a1;
    v16 = a4;
    v17 = ObjectType;
    v32 = v9;
    v18 = a3;
    v19 = *(v13 + 56);
    v20 = v15;
    v21 = v17;
    a4 = v16;
    v22 = v13;
    a2 = v31;
    v23 = v19(v4, &protocol witness table for TTRAccountsListsInteractor, v21, v22);
    a3 = v18;
    v10 = v9 + 16;
    v24 = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = a1;
    v24 = 0;
  }

  v26 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v26);
  v30[2] = v10;
  v30[3] = a2;
  v30[4] = a3;
  v30[5] = a4;

  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v26, v11, v33, v24, sub_21D748C90, v30, sub_21D748C9C, v9, v35, v26, v34, &protocol witness table for TTRAccountEditor);

  __swift_destroy_boxed_opaque_existential_0(v37);
  swift_beginAccess();
  v27 = *(v9 + 16);
  v28 = v27;

  return v27;
}

void sub_21D73C890(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = TTRAccountEditor.addAndSaveNewCustomSmartList(name:filter:)(a3, a4, a5);
  swift_beginAccess();
  v7 = *a2;
  *a2 = v6;
}

void sub_21D73C8F0(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F300);
    v5 = a1;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC74C();
      v12 = sub_21D0CDFB4(v10, v11, v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Failed to create custom smart list {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);

      return;
    }

    v20 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F300);

    oslog = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
      v17 = sub_21DBFBA5C();
      v19 = sub_21D0CDFB4(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, oslog, v14, "Created custom smart list {customSmartListID: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);

      return;
    }

    v20 = oslog;
  }
}

void sub_21D73CC38(uint64_t *a1, void *a2, uint64_t a3)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v65 = *a1;
  v5 = [*(*a1 + 16) saveRequest];
  v6 = [v5 store];

  v7 = [a2 objectID];
  v68[0] = 0;
  v8 = [v6 fetchListWithObjectID:v7 error:v68];

  v9 = v68[0];
  if (!v8)
  {
    v17 = v68[0];
    v18 = sub_21DBF52DC();

    swift_willThrow();
    return;
  }

  v62 = 0;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v68[0] = MEMORY[0x277D84F90];
    v12 = v9;
    sub_21DBFC01C();
    v13 = (a3 + 32);
    do
    {
      v14 = *v13;
      v13 += 2;
      v15 = [v14 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v10;
    }

    while (v10);
    v16 = v68[0];
  }

  else
  {
    v19 = v68[0];
    v16 = MEMORY[0x277D84F90];
  }

  v20 = [*(v65 + 16) saveRequest];
  v21 = [v20 store];

  v22 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v23 = sub_21DBFA5DC();
  v68[0] = 0;
  v24 = [v21 fetchListsWithObjectIDs:v23 error:v68];

  v25 = v68[0];
  v66 = v16;
  if (!v24)
  {
    v48 = v68[0];
    v29 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

  sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
  v26 = sub_21DBF9E6C();
  v27 = v25;

  v68[0] = v11;
  v28 = v16;
  v63 = v8;
  v29 = (v16 & 0xFFFFFFFFFFFFFF8);
  if (v16 >> 62)
  {
    goto LABEL_49;
  }

  v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
  v8 = 0;
  v31 = v28 & 0xC000000000000001;
  v22 = v26 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  if (v30)
  {
    while (1)
    {
      if (v31)
      {
        v42 = MEMORY[0x223D44740](v8, v28);
      }

      else
      {
        if (v8 >= v29[2])
        {
          goto LABEL_48;
        }

        v42 = *(v28 + 8 * v8 + 32);
      }

      v43 = v42;
      v44 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v30 = sub_21DBFBD7C();
        goto LABEL_11;
      }

      if (v22)
      {
        if (sub_21DBFC2CC())
        {
          swift_dynamicCast();
          v41 = v67;

          goto LABEL_24;
        }
      }

      else if (*(v26 + 16))
      {
        v45 = sub_21D17E07C(v42);
        if (v46)
        {
          v41 = *(*(v26 + 56) + 8 * v45);
          v47 = v41;
        }

        else
        {

          v41 = 0;
        }

        v28 = v66;
        goto LABEL_24;
      }

      v41 = 0;
LABEL_24:
      ++v8;
      if (v41)
      {
        MEMORY[0x223D42D80]();
        if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v64 = v68[0];
        v8 = v44;
        v28 = v66;
        if (v30 == v44)
        {
          break;
        }
      }

      else if (v30 == v8)
      {
        break;
      }
    }
  }

  if (v64 >> 62)
  {
    v32 = sub_21DBFBD7C();
    v33 = v63;
    if (v32)
    {
      goto LABEL_14;
    }

LABEL_51:

    v35 = MEMORY[0x277D84F90];
LABEL_52:
    TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(v33, v35, 1);

    return;
  }

  v32 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v63;
  if (!v32)
  {
    goto LABEL_51;
  }

LABEL_14:
  v68[0] = MEMORY[0x277D84F90];
  sub_21D18EB44(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v68[0];
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223D44740](v34, v64);
      }

      else
      {
        v36 = *(v64 + 8 * v34 + 32);
      }

      v68[0] = v35;
      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v40 = v36;
        sub_21D18EB44((v37 > 1), v38 + 1, 1);
        v36 = v40;
        v35 = v68[0];
      }

      ++v34;
      v35[2] = v38 + 1;
      v39 = &v35[2 * v38];
      v39[4] = v36;
      *(v39 + 40) = 0;
    }

    while (v32 != v34);

    goto LABEL_52;
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_44:
  v49 = sub_21DBF84BC();
  __swift_project_value_buffer(v49, qword_280D0F300);
  v50 = v29;
  sub_21DBF8E0C();
  v51 = sub_21DBF84AC();
  v52 = sub_21DBFAEBC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v53 = 136315394;
    swift_getErrorValue();
    v55 = sub_21DBFC74C();
    v57 = sub_21D0CDFB4(v55, v56, v68);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = MEMORY[0x223D42DB0](v66, v22);
    v60 = v59;

    v61 = sub_21D0CDFB4(v58, v60, v68);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_21D0C9000, v51, v52, "Failed to get list for undelete {error: %s, sublistIDs: %s}", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v54, -1, -1);
    MEMORY[0x223D46520](v53, -1, -1);
  }

  else
  {
  }
}

void TTRAccountsListsInteractor.createNewGroceriesList(account:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v59 = sub_21DBF619C();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = TTRAccountsListsInteractor.createNewList(account:)(a1);
  v65 = 0;
  aBlock = 0u;
  v64 = 0u;
  sub_21D0D3954(&aBlock, v70, &unk_27CE60D80, &unk_21DC093F0);
  v10 = qword_280D1AA10;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_280D1AA18;
  sub_21D0CF7E0(&aBlock, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  v13 = swift_allocObject();
  v68 = type metadata accessor for TTRUserDefaults();
  v69 = &protocol witness table for TTRUserDefaults;
  *&v67 = v12;
  *(v13 + 64) = 0;
  *(v13 + 16) = v11;
  v14 = v70[1];
  *(v13 + 24) = v70[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v71;
  v58 = v13;
  swift_beginAccess();
  *(v13 + 64) = 0;
  sub_21D0D0FD0(&v67, v13 + 72);
  v15 = v12;
  TTRListEditor.setSuggestedGroceryListProperties()();
  v16 = (v4 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v57 = v11;
  v17 = v16[3];
  v18 = v16[4];
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  (*(v18 + 128))(1, v17, v18);
  swift_endAccess();
  sub_21DBF62DC();
  sub_21DBF62CC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
  v20 = &v8[*(v19 + 48)];
  v21 = &v8[*(v19 + 80)];
  v22 = *MEMORY[0x277D44E48];
  v23 = sub_21DBF613C();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  swift_beginAccess();
  v24 = v16[3];
  v25 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v24);
  *v20 = (*(*(v25 + 8) + 8))(v24);
  *(v20 + 1) = v26;
  v27 = v16[3];
  v28 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v27);
  (*(*(v28 + 8) + 32))(v27);
  swift_endAccess();
  *v21 = sub_21DBFC8EC();
  v21[1] = v29;
  v30 = *MEMORY[0x277D44E98];
  v56 = *(v6 + 104);
  v31 = v59;
  v56(v8, v30, v59);
  sub_21DBF62BC();

  v55 = *(v6 + 8);
  v55(v8, v31);
  sub_21DBF62CC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D90, &unk_21DC0AFD0);
  v33 = &v8[v32[12]];
  v54[1] = v32[16];
  v34 = &v8[v32[20]];
  v35 = *MEMORY[0x277D458F8];
  v36 = sub_21DBF802C();
  (*(*(v36 - 8) + 104))(v8, v35, v36);
  swift_beginAccess();
  v37 = v16[3];
  v38 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v37);
  *v33 = (*(*(v38 + 8) + 8))(v37);
  *(v33 + 1) = v39;
  v40 = v16[3];
  v41 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v40);
  (*(*(v41 + 8) + 32))(v40);
  swift_endAccess();
  *v34 = sub_21DBFC8EC();
  v34[1] = v42;
  v56(v8, *MEMORY[0x277D44EA0], v31);
  sub_21DBF62BC();

  v55(v8, v31);
  v43 = v57;
  v44 = [v57 saveRequest];
  v45 = [v44 store];

  v46 = v43;
  v47 = [v43 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v48 = sub_21DBFB12C();
  v49 = swift_allocObject();
  v49[2] = v45;
  v49[3] = v46;
  v50 = v61;
  v49[4] = v60;
  v49[5] = v50;
  v65 = sub_21D7491C8;
  v66 = v49;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_21D11E5E4;
  *(&v64 + 1) = &block_descriptor_86;
  v51 = _Block_copy(&aBlock);
  v52 = v46;
  v53 = v45;

  [v47 saveWithQueue:v48 completion:v51];
  _Block_release(v51);
}

void sub_21D73DA8C(void *a1, void *a2, id a3, void (*a4)(id))
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = a1;
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC74C();
      v12 = sub_21D0CDFB4(v10, v11, v30);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v7, "Error saving new list: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v15 = [a3 objectID];
    v30[0] = 0;
    v16 = [a2 fetchListWithObjectID:v15 error:v30];

    if (v16)
    {
      v17 = v30[0];
      a4(v16);
    }

    else
    {
      v18 = v30[0];
      v19 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_280D17F00 != -1)
      {
        swift_once();
      }

      v20 = sub_21DBF84BC();
      __swift_project_value_buffer(v20, qword_280D0F300);
      v21 = v19;
      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = sub_21DBFC74C();
        v28 = sub_21D0CDFB4(v26, v27, v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_21D0C9000, v22, v23, "Error fetching newly created list: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_21D73DE98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v6 = sub_21DBFB12C();
  v8[4] = a2;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D11E5E4;
  v8[3] = a3;
  v7 = _Block_copy(v8);
  [v5 saveWithQueue:v6 completion:v7];
  _Block_release(v7);
}

void sub_21D73DF7C(void *a1)
{
  if (a1)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F300);
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
      v7 = sub_21DBFC74C();
      v9 = sub_21D0CDFB4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, oslog, v4, "Error saving new list: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    else
    {
    }
  }
}

id TTRAccountsListsInteractor.changeItem(for:)(uint64_t a1)
{
  return sub_21D73E13C(a1, &selRef_updateAccount_);
}

{
  return sub_21D73E13C(a1, &selRef_updateList_);
}

{
  return sub_21D73E13C(a1, &selRef_updateSmartList_);
}

id sub_21D73E13C(uint64_t a1, SEL *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v5 setSaveIsNoopIfNoChangedKeys_];
  v6 = [v5 *a2];

  return v6;
}

double sub_21D73E1D0(uint64_t a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v4 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *v6;
      v9 = *(v6 - 1);
      if (v8)
      {
        MEMORY[0x223D42D80]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v4 = v36;
      }

      else
      {
        MEMORY[0x223D42D80]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v7 = v37;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v33);
    v12 = v34;
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v14 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v17 = (*(v15 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    v18 = type metadata accessor for TTRListEditor();
    MEMORY[0x28223BE20](v18);
    v31 = v32 & 1;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v19, v7, v13, v17, sub_21D749CC4, v30, 0, 0, v12, v19, v11, &protocol witness table for TTRListEditor);

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
  }

  if (v4 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_22;
    }

LABEL_28:

    return result;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_22:
  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v33);
  v21 = v34;
  v20 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v23 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v26 = (*(v24 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, v25, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  v27 = type metadata accessor for TTRSmartListEditor();
  MEMORY[0x28223BE20](v27);
  v31 = v32 & 1;
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v28, v4, v22, v26, sub_21D749CF4, v30, 0, 0, v21, v28, v20, &protocol witness table for TTRSmartListEditor);

  __swift_destroy_boxed_opaque_existential_0(v33);
  return result;
}

uint64_t TTRAccountsListsInteractor.delete(_:keepSublists:)(void *a1, int a2)
{
  v3 = v2;
  v24 = a2;
  sub_21DBF60DC();
  v5 = sub_21DBF60CC();
  type metadata accessor for TTRRemindersInteraction();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  sub_21D0D32E4(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v27);
  v8 = v28;
  v7 = v29;
  v25 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v13 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for TTRAccountEditor();
  MEMORY[0x28223BE20](v17);
  v21[2] = a1;
  v22 = v24 & 1;
  v23 = inited;
  sub_21D0D32E4(a1, v26);
  v18 = swift_allocObject();
  sub_21D0D0FD0(v26, v18 + 16);
  TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v17, v11, v12, v16, sub_21D7491D4, v21, sub_21D7491E4, v18, v8, v17, v7, &protocol witness table for TTRAccountEditor);
  swift_setDeallocating();
  v19 = *(inited + 16);

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

double sub_21D73E854(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = [*(v5 + 16) objectID];
  v8 = (*(v6 + 56))();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    v11 = &selRef__setContentViewMarginType_;
    do
    {
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = v13;
      if (v12)
      {
        TTRAccountEditor.removeCustomSmartList(_:)(v13);
      }

      else
      {
        v15 = v13;
        if ([v15 v11[258]])
        {
          v16 = a4;
          v17 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          v18 = [v15 objectID];
          v19 = (*(v17 + 64))();

          TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(v15, v19, a3 & 1);
          a4 = v16;
          v11 = &selRef__setContentViewMarginType_;
        }

        else
        {
          TTRAccountEditor.removeList(_:)(v15);
        }

        TTRRemindersInteraction.deleteInteractions(for:)(v15);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_21D73EA14(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    sub_21D0D32E4(a2, v28);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v11 = sub_21DBFC5BC();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v28);
      v14 = sub_21D0CDFB4(v11, v13, &v27);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_21DBFC74C();
      v17 = sub_21D0CDFB4(v15, v16, &v27);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to delete items {%s, error: %s}", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F300);
    sub_21D0D32E4(a2, v28);
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v23 = sub_21DBFC5BC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v28);
      v26 = sub_21D0CDFB4(v23, v25, &v27);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Delete items {%s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v21, -1, -1);

      return;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t TTRAccountsListsInteractor.rename(list:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *a1;
  v6 = *(a1 + 8);
  v7 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer;
  if (v6)
  {
    sub_21D0D32E4(v7, v47);
    v8 = v48;
    v9 = v49;
    v45 = __swift_project_boxed_opaque_existential_1(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC09CF0;
    *(v10 + 32) = v46;
    v11 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v12 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v43 = v9;
      ObjectType = swift_getObjectType();
      v44 = v8;
      v15 = a2;
      v16 = a3;
      v17 = *(v13 + 56);
      v18 = v46;
      v19 = v17(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v13);
      a3 = v16;
      a2 = v15;
      v20 = v19;
      v8 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v46;
      v20 = 0;
    }

    v34 = type metadata accessor for TTRSmartListEditor();
    MEMORY[0x28223BE20](v34);
    v41 = a2;
    v42 = a3;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v35, v10, v11, v20, sub_21D65397C, v40, 0, 0, v8, v35, v9, &protocol witness table for TTRSmartListEditor);
  }

  else
  {
    sub_21D0D32E4(v7, v47);
    v21 = v48;
    v22 = v49;
    v45 = __swift_project_boxed_opaque_existential_1(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21DC09CF0;
    *(v23 + 32) = v46;
    v24 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v25 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      v43 = v22;
      v27 = swift_getObjectType();
      v44 = v21;
      v28 = a2;
      v29 = a3;
      v30 = *(v26 + 56);
      v31 = v46;
      v32 = v30(v3, &protocol witness table for TTRAccountsListsInteractor, v27, v26);
      a3 = v29;
      a2 = v28;
      v20 = v32;
      v21 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v46;
      v20 = 0;
    }

    v37 = type metadata accessor for TTRListEditor();
    MEMORY[0x28223BE20](v37);
    v41 = a2;
    v42 = a3;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v38, v23, v24, v20, sub_21D1CD938, v40, 0, 0, v21, v38, v22, &protocol witness table for TTRListEditor);
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

void TTRAccountsListsInteractor.add(lists:to:)(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = 1;
  v6 = 512;
  sub_21D73F164(a1, v4, a2, &v5, MEMORY[0x277D84FA0]);
}

uint64_t sub_21D73F164(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v63 = a5;
  v65 = a3;
  v66 = a1;
  v62 = *a4;
  v6 = *(a4 + 8);
  v60 = *(a4 + 9);
  v61 = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_11:
    v23 = v64;
    v22 = v65;
    if (v65)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v24 = v65;
      v25 = [v24 accountID];
      v26 = [a2 objectID];
      v27 = sub_21DBFB63C();

      if ((v27 & 1) == 0)
      {
        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v37 = sub_21DBF84BC();
        __swift_project_value_buffer(v37, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v38 = [v19 objectID];
          *(v33 + 4) = v38;
          *v34 = v38;
          v36 = "Failed to move lists into group -- group is from a different ccount  {group.objectID: %@}";
          goto LABEL_36;
        }

LABEL_38:

        return 0;
      }

      v28 = [v24 sublistContext];
      if (!v28)
      {
        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v53 = sub_21DBF84BC();
        __swift_project_value_buffer(v53, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v54 = [v19 objectID];
          *(v33 + 4) = v54;
          *v34 = v54;
          v36 = "Group does not support sublists -- failed to move lists into group {group.objectID: %@}";
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      if (v7)
      {
        v29 = (v66 + 40);
        while (*v29 == 1 || ([*(v29 - 1) isGroup] & 1) == 0)
        {
          v29 += 2;
          if (!--v7)
          {
            goto LABEL_27;
          }
        }

        if (qword_280D17F00 != -1)
        {
          swift_once();
        }

        v30 = sub_21DBF84BC();
        __swift_project_value_buffer(v30, qword_280D0F300);
        v19 = v24;
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = [v19 objectID];
          *(v33 + 4) = v35;
          *v34 = v35;
          v36 = "Trying to move a group into a group -- failed to move lists into group {group.objectID: %@}";
LABEL_36:
          _os_log_impl(&dword_21D0C9000, v31, v32, v36, v33, 0xCu);
          sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v34, -1, -1);
          MEMORY[0x223D46520](v33, -1, -1);

          goto LABEL_37;
        }

        goto LABEL_38;
      }

LABEL_27:
    }

    sub_21D0D32E4(v64 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_committer, v67);
    v40 = v68;
    v39 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21DC09CF0;
    *(v41 + 32) = a2;
    v42 = [a2 store];
    v43 = v23 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v46 = (*(v44 + 56))(v23, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
    }

    v47 = type metadata accessor for TTRAccountEditor();
    MEMORY[0x28223BE20](v47);
    v55[2] = v22;
    v55[3] = v62;
    v56 = v61;
    v57 = v60;
    v58 = v66;
    v59 = v63;
    v48 = swift_allocObject();
    v49 = v22;
    v50 = v48;
    *(v48 + 16) = v49;
    v51 = v49;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v47, v41, v42, v46, sub_21D749C84, v55, sub_21D749C94, v50, v40, v47, v39, &protocol witness table for TTRAccountEditor);

    __swift_destroy_boxed_opaque_existential_0(v67);
    return 1;
  }

  v8 = (v66 + 40);
  v9 = *(a1 + 16);
  while (1)
  {
    v14 = *(v8 - 1);
    if (*v8 == 1)
    {
      break;
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v10 = v14;
    v11 = [v10 accountID];
    v12 = [a2 objectID];
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_4:
    v8 += 16;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  v15 = v14;
  v16 = [a2 capabilities];
  v17 = [v16 supportsCustomSmartLists];

  if (v17)
  {
    goto LABEL_4;
  }

LABEL_7:
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_280D0F300);
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to move lists; lists do not come from a single account", v21, 2u);
    MEMORY[0x223D46520](v21, -1, -1);
  }

LABEL_37:

  return 0;
}

uint64_t TTRAccountsListsInteractor.move(lists:asSublistsOf:position:unpinningLists:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = [a2 account];
  v11 = v7;
  v12 = v8;
  LOBYTE(a4) = sub_21D73F164(a1, v9, a2, &v11, a4);

  return a4 & 1;
}

uint64_t TTRAccountsListsInteractor.move(lists:asTopLevelListsIn:position:unpinningLists:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D73F164(a1, a2, 0, &v6, a4) & 1;
}

Swift::Bool __swiftcall TTRAccountsListsInteractor.move(remindersWithIDs:to:)(Swift::OpaquePointer remindersWithIDs, RemindersUICore::TTRListType::PredefinedSmartListType to)
{
  v3 = v2;
  v4 = to;
  rawValue = remindersWithIDs._rawValue;
  v172 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v124 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v124 - v9;
  v165 = sub_21DBF5C4C();
  v11 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v145 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v153 = &v124 - v14;
  v152 = sub_21DBF5A2C();
  v15 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_21DBF509C();
  v17 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v144 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v150 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v155 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v23 - 8);
  v146 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = (&v124 - v26);
  MEMORY[0x28223BE20](v27);
  v163 = (&v124 - v28);
  v164 = sub_21DBF563C();
  v29 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v147 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v149 = &v124 - v32;
  MEMORY[0x28223BE20](v33);
  v162 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v161 = &v124 - v36;
  if (*v4 > 2u || *v4)
  {
    v37 = sub_21DBFC64C();

    result = 0;
    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  v140 = v10;
  v39 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v41 = sub_21DBFA5DC();
  *&aBlock = 0;
  v42 = [v39 fetchRemindersWithObjectIDs:v41 error:&aBlock];

  v43 = aBlock;
  if (v42)
  {
    v142 = v40;
    v44 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
    v156 = v44;
    v40 = sub_21DBF9E6C();
    v45 = v43;

    v137 = v3;
    v136 = v7;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v46 = sub_21DBFC21C();
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v40 = v46 | 0x8000000000000000;
    }

    else
    {
      v60 = -1 << *(v40 + 32);
      v47 = v40 + 64;
      v48 = ~v60;
      v61 = -v60;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v49 = v62 & *(v40 + 64);
    }

    v63 = v15;
    v143 = 0;
    v64 = 0;
    v141 = v48;
    v65 = (v48 + 64) >> 6;
    v157 = (v29 + 32);
    v158 = (v11 + 56);
    v159 = (v29 + 8);
    v139 = (v11 + 8);
    v135 = (v63 + 8);
    v138 = (v17 + 8);
    v132 = (v11 + 48);
    v131 = (v11 + 32);
    v134 = (v17 + 16);
    v133 = (v17 + 56);
    do
    {
      while (1)
      {
        if (v40 < 0)
        {
          if (!sub_21DBFC2DC())
          {
            goto LABEL_45;
          }

          v73 = v72;
          swift_unknownObjectRelease();
          v167 = v73;
          swift_dynamicCast();
          v71 = aBlock;
          if (!aBlock)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v69 = v64;
          v70 = v49;
          if (!v49)
          {
            while (1)
            {
              v64 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                break;
              }

              if (v64 >= v65)
              {
                goto LABEL_45;
              }

              v70 = *(v47 + 8 * v64);
              ++v69;
              if (v70)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_52;
          }

LABEL_23:
          v49 = (v70 - 1) & v70;
          v71 = *(*(v40 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v70)))));
          if (!v71)
          {
            goto LABEL_45;
          }
        }

        v74 = [v71 displayDate];
        if (!v74 || (v75 = v74, v76 = [v74 date], v75, v77 = v162, sub_21DBF55FC(), v76, v78 = v161, v79 = v164, (*v157)(v161, v77, v164), v80 = v163, (*v158)(v163, 1, 1, v165), v42 = sub_21DAF79F0(v80), sub_21D0CF7E0(v80, &unk_27CE60DB0, qword_21DC0BF70), (*v159)(v78, v79), (v42 & 1) == 0))
        {
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v66 = [v71 list];
          v67 = [v66 objectID];

          v42 = [objc_opt_self() siriFoundInAppsListID];
          v68 = sub_21DBFB63C();

          if ((v68 & 1) == 0)
          {
            break;
          }
        }
      }

      v81 = v137;
      v82 = v137 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong() && (v83 = *(v82 + 8), ObjectType = swift_getObjectType(), v85 = (*(v83 + 56))(v81, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v83), swift_unknownObjectRelease(), v85))
      {
        v86 = type metadata accessor for TTRBasicUndoContext();
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(&v169 + 1) = v86;
        v170 = &protocol witness table for TTRBasicUndoContext;
        *&aBlock = v87;
      }

      else
      {
        v170 = 0;
        aBlock = 0u;
        v169 = 0u;
      }

      sub_21D0D3954(&aBlock, &v167, &unk_27CE60D80, &unk_21DC093F0);
      v88 = v142;
      v128 = v88;
      v89 = v71;
      v130 = v89;
      v90 = [v88 updateReminder_];
      sub_21D0D3954(&v167, v166, &unk_27CE60D80, &unk_21DC093F0);
      v129 = type metadata accessor for TTRReminderEditor();
      v91 = swift_allocObject();
      *(v91 + 72) = 0;
      *(v91 + 16) = v90;
      sub_21D0D3954(v166, v91 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v91 + 64) = 0;
      v92 = [v90 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(&aBlock, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(v166, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(&v167, &unk_27CE60D80, &unk_21DC093F0);
      v128 = v91;
      *(v91 + 72) = v92;
      v93 = v151;
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v125 = objc_opt_self();
      v94 = [v125 defaultTimeZone];
      v95 = v153;
      sub_21DBF5C2C();

      v96 = v149;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v97 = v150;
      sub_21DBF58BC();
      v127 = *v159;
      v127(v96, v164);
      v126 = *v139;
      v126(v95, v165);
      (*v135)(v93, v152);
      static TTRReminderEditor.todayDueDateComponents(now:)(v155);
      v98 = *v138;
      v99 = v154;
      (*v138)(v97, v154);
      v100 = [v130 displayDate];
      v129 = v98;
      if (v100)
      {
        v101 = v100;
        if ([v100 isAllDay])
        {
        }

        else
        {
          v102 = [v101 date];
          sub_21DBF55FC();

          v103 = v148;
          v104 = v165;
          (*v158)(v148, 1, 1, v165);
          v124 = sub_21DBF55BC();
          v105 = v103;
          v106 = v146;
          sub_21D0D3954(v105, v146, &unk_27CE60DB0, qword_21DC0BF70);
          v107 = *v132;
          if ((*v132)(v106, 1, v104) == 1)
          {
            v108 = [v125 defaultTimeZone];
            v125 = v107;
            v109 = v145;
            sub_21DBF5C2C();

            v110 = v146;
            if ((v125)(v146, 1, v104) != 1)
            {
              sub_21D0CF7E0(v110, &unk_27CE60DB0, qword_21DC0BF70);
            }
          }

          else
          {
            v109 = v145;
            (*v131)(v145, v106, v104);
          }

          v111 = objc_opt_self();
          v112 = sub_21DBF5C0C();
          v126(v109, v104);
          v113 = v124;
          v114 = [v111 rem:v124 dateComponentsWithDate:v112 timeZone:0 isAllDay:?];

          v115 = v144;
          sub_21DBF4EFC();

          sub_21D0CF7E0(v148, &unk_27CE60DB0, qword_21DC0BF70);
          v127(v147, v164);
          sub_21DBF4F5C();
          sub_21DBF4F6C();
          sub_21DBF4FCC();
          sub_21DBF4FDC();
          sub_21DBF4FEC();
          sub_21DBF4FFC();
          sub_21DBF507C();
          sub_21DBF508C();

          v116 = v115;
          v99 = v154;
          v129(v116, v154);
        }
      }

      v117 = v140;
      (*v134)(v140, v155, v99);
      (*v133)(v117, 0, 1, v99);
      v118 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
      v42 = v136;
      (*(*(v118 - 8) + 56))(v136, 1, 1, v118);
      sub_21D9C50E0(v117, v42);

      sub_21D0CF7E0(v42, &unk_27CE60DA0, &unk_21DC0C0C0);
      sub_21D0CF7E0(v117, &qword_27CE58D60, &unk_21DC0A690);
      v129(v155, v99);
    }

    while (!__OFADD__(v143++, 1));
    __break(1u);
LABEL_45:
    sub_21D0CFAF8(v40);
    if (v143 >= 1)
    {
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v120 = sub_21DBFB12C();
      v121 = swift_allocObject();
      *(v121 + 16) = rawValue;
      v170 = sub_21D7491EC;
      v171 = v121;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v169 = sub_21D11E5E4;
      *(&v169 + 1) = &block_descriptor_22_2;
      v122 = _Block_copy(&aBlock);
      sub_21DBF8E0C();

      v123 = v142;
      [v142 saveWithQueue:v120 completion:v122];

      _Block_release(v122);
      return 1;
    }
  }

  else
  {
    v50 = aBlock;
    v42 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
LABEL_52:
      swift_once();
    }

    v51 = sub_21DBF84BC();
    __swift_project_value_buffer(v51, qword_280D0F300);
    v52 = v42;
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAEBC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v57 = sub_21DBFC74C();
      v59 = sub_21D0CDFB4(v57, v58, &aBlock);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_21D0C9000, v53, v54, "Failed to fetch reminder {error: %s}", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x223D46520](v56, -1, -1);
      MEMORY[0x223D46520](v55, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

void sub_21D740E48(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    sub_21DBF8E0C();
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315394;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v28);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v15 = MEMORY[0x223D42DB0](a2, v14);
      v17 = sub_21D0CDFB4(v15, v16, &v28);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to set reminders to today {error: %s, reminderIDs %s}", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F300);
    sub_21DBF8E0C();
    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v23 = MEMORY[0x223D42DB0](a2, v22);
      v25 = sub_21D0CDFB4(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Set reminders to today {reminderIDs: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void TTRAccountsListsInteractor.recover(remindersWithIDs:to:)(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  v5 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v6 = sub_21DBFA5DC();
  v7 = [objc_opt_self() fetchOptionsIncludingConcealed];
  *&v31 = 0;
  v8 = [v4 fetchRemindersWithObjectIDs:v6 fetchOptions:v7 error:&v31];

  v9 = v31;
  if (v8)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
    v10 = sub_21DBF9E6C();
    v11 = v9;

    v12 = sub_21D198B0C(v10);

    v13 = v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v14 = *(v13 + 8), ObjectType = swift_getObjectType(), v16 = (*(v14 + 56))(v2, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v14), swift_unknownObjectRelease(), v16))
    {
      v17 = type metadata accessor for TTRBasicUndoContext();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(&v32 + 1) = v17;
      v33 = &protocol witness table for TTRBasicUndoContext;
      *&v31 = v18;
    }

    else
    {
      v16 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }

    v19 = v16;
    _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(v12, a2, v5, &v31);

    sub_21D0CF7E0(&v31, &unk_27CE60D80, &unk_21DC093F0);
  }

  else
  {
    v20 = v31;
    v21 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F300);
    v23 = v21;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v31 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v30 = sub_21D0CDFB4(v28, v29, &v31);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Failed to fetch deleted reminders for recovery {error: %s}", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

double TTRAccountsListsInteractor.permanentlyHideAllInRecentlyDeletedList(with:)(uint64_t a1, __n128 a2)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v67 = sub_21DBF6D7C();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF773C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF734C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0, &unk_21DC15DD0);
  v64 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  (*(v9 + 104))(v11, *MEMORY[0x277D45500], v8, v13);
  v17 = a1;
  sub_21DBF748C();
  v28 = v67;
  v61 = 0;
  v62 = v16;
  v66 = v17;
  (*(v9 + 8))(v11, v8);
  v29 = v65;
  sub_21DBF76DC();
  (*(v64 + 8))(v15, v12);
  v30 = sub_21DBF718C();
  (*(v68 + 8))(v29, v69);
  v31 = *(v30 + 16);
  if (v31)
  {
    v72[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v32 = v28;
    v33 = *(v63 + 16);
    v68 = v30;
    v69 = v33;
    v34 = v30 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v35 = *(v63 + 72);
    v36 = (v63 + 8);
    do
    {
      (v69)(v5, v34, v32);
      sub_21DBF6D5C();
      (*v36)(v5, v32);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v34 += v35;
      --v31;
    }

    while (v31);

    v37 = v72[0];
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v38 = v37 >> 62;
  v39 = v62;
  v69 = v37;
  if (v37 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  }

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v40 = sub_21DBFA5DC();

  v41 = [objc_opt_self() fetchOptionsIncludingConcealed];
  v72[0] = 0;
  v42 = [v39 fetchRemindersWithObjectIDs:v40 fetchOptions:v41 error:v72];

  v43 = v72[0];
  if (!v42)
  {
    v50 = v72[0];

    v51 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  v44 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
  v67 = v44;
  v45 = sub_21DBF9E6C();
  v46 = v43;

  v72[0] = MEMORY[0x277D84F90];
  v47 = v69;
  if (v38)
  {
    v48 = v69 & 0xFFFFFFFFFFFFFF8;
    v49 = sub_21DBFBD7C();
  }

  else
  {
    v48 = v69 & 0xFFFFFFFFFFFFFF8;
    v49 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  v51 = (v47 & 0xC000000000000001);
  v53 = v45 & 0xFFFFFFFFFFFFFF8;
  if (v45 < 0)
  {
    v53 = v45;
  }

  v68 = v53;
  v65 = MEMORY[0x277D84F90];
  if (!v49)
  {
LABEL_21:

    sub_21DBFB72C();

    return result;
  }

  while (v51)
  {
    v54 = MEMORY[0x223D44740](v52, v47);
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_42;
    }

LABEL_28:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v56 = v54;
      v57 = sub_21DBFC2CC();

      if (v57)
      {
        v70 = v57;
        swift_dynamicCast();
        v57 = v71;
      }
    }

    else
    {
      if (!*(v45 + 16))
      {

        ++v52;
        goto LABEL_24;
      }

      v58 = v54;
      v59 = sub_21D17E07C(v58);
      if (v60)
      {
        v57 = *(*(v45 + 56) + 8 * v59);
      }

      else
      {

        v57 = 0;
      }
    }

    v47 = v69;
    ++v52;
    if (v57)
    {
      MEMORY[0x223D42D80]();
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v65 = v72[0];
      v52 = v55;
      v47 = v69;
      if (v49 == v55)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_24:
      if (v49 == v52)
      {
        goto LABEL_21;
      }
    }
  }

  if (v52 >= *(v48 + 16))
  {
    goto LABEL_43;
  }

  v54 = *(v47 + 8 * v52 + 32);
  v55 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_28;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_3:
  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_280D0F300);
  v19 = v51;
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAEBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v72[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_21DBFC74C();
    v26 = sub_21D0CDFB4(v24, v25, v72);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v20, v21, "Failed to fetch reminders in recently deleted list for permanently hide {error: %s}", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  else
  {
  }

  return result;
}

void sub_21D741F34(void *a1, char a2)
{
  if (a2)
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F300);
    v4 = a1;
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = sub_21D0CDFB4(v8, v9, &v12);

      *(v6 + 4) = v10;
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t TTRAccountsListsInteractor.sortingCapabilityAndSortingStyle(for:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFAE6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRListType.SortingCapability(0);
  v13 = MEMORY[0x28223BE20](v37);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *a3;
  v36 = a1;
  if (v16 > 2)
  {
    if ((v16 - 3) < 3)
    {
      v33 = v16;
      v17 = MEMORY[0x277D45408];
      goto LABEL_6;
    }

    v29 = MEMORY[0x277D45420];
LABEL_13:
    (*(v7 + 104))(a2, *v29, v6, v13);
    v22 = v38;
    (*(v7 + 16))(v38, a2, v6);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return sub_21D0D6754(v22, v36, type metadata accessor for TTRListType.SortingCapability);
  }

  if (v16 >= 2)
  {
    v29 = MEMORY[0x277D45418];
    goto LABEL_13;
  }

  v33 = v16;
  v17 = MEMORY[0x277D45400];
LABEL_6:
  v18 = *MEMORY[0x277D454E8];
  v19 = sub_21DBF733C();
  v20 = *(*(v19 - 8) + 104);
  v32 = v18;
  v20(a2, v18, v19);
  v21 = *v17;
  v34 = *(v7 + 104);
  v34(a2, v21, v6);
  v22 = v38;
  (*(v7 + 16))(v38, a2, v6);
  swift_storeEnumTagMultiPayload();
  if (((1 << v15) & 0x19) != 0)
  {
    (*(v10 + 104))(v12, **(&unk_27832EB18 + v15), v9);
    v23 = sub_21DBFB73C();
    (*(v10 + 8))(v12, v9);
    v24 = [v23 sortingStyle];
    v25 = v35;
    sub_21DBFAF7C();

    v26 = *(v7 + 8);
    v26(a2, v6);
    (*(v7 + 32))(a2, v25, v6);
    v27 = v34;
    v34(v25, *MEMORY[0x277D45420], v6);
    LOBYTE(v24) = MEMORY[0x223D3F870](a2, v25);

    v26(v25, v6);
    sub_21D0D8E4C(v38, type metadata accessor for TTRListType.SortingCapability);
    if ((v24 & 1) == 0)
    {
LABEL_17:
      v22 = v38;
      *v38 = 1;
      goto LABEL_18;
    }

    v26(a2, v6);
    if (v33 < 2)
    {
      v28 = MEMORY[0x277D45400];
    }

    else
    {
      if (v33 - 3 >= 2)
      {
        v28 = MEMORY[0x277D45418];
        goto LABEL_16;
      }

      v28 = MEMORY[0x277D45408];
    }

    v30 = sub_21DBF733C();
    (*(*(v30 - 8) + 104))(a2, v32, v30);
LABEL_16:
    v27(a2, *v28, v6);
    goto LABEL_17;
  }

  return sub_21D0D6754(v22, v36, type metadata accessor for TTRListType.SortingCapability);
}

uint64_t TTRAccountsListsInteractor.setSortingStyle(_:for:)(uint64_t a1, char *a2)
{
  v4 = sub_21DBFAE6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, **(&unk_27832EB40 + *a2), v4, v6);
  v9 = sub_21DBFB73C();
  v10 = (*(v5 + 8))(v8, v4);
  MEMORY[0x28223BE20](v10);
  *&v12[-1] = a1;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_21D20C818(v9, v12, sub_21D74A6A4, &v12[-2], 0, 0);

  return sub_21D0CF7E0(v12, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t sub_21D742C74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *, uint64_t, void *, void, void))
{
  v5[2] = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  a4(a2, v6, a3, v5, 0, 0);
  return sub_21D0CF7E0(v6, &unk_27CE60D80, &unk_21DC093F0);
}

void sub_21D742CDC(uint64_t a1, uint64_t a2, void (*a3)(id, char *))
{
  v4 = sub_21DBF709C();
  v5 = 3;
  a3(v4, &v5);
}

Swift::Void __swiftcall TTRAccountsListsInteractor.addReminder(title:)(Swift::String title)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  *&aBlock = 0;
  v3 = [v2 fetchDefaultListWithError_];
  v4 = v3;
  if (aBlock)
  {
    v5 = aBlock;

    swift_willThrow();
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F300);
    v7 = v5;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&aBlock = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC74C();
      v14 = sub_21D0CDFB4(v12, v13, &aBlock);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to add reminder {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

LABEL_6:
      return;
    }
  }

  else
  {
    if (!v3)
    {
      if (qword_280D17F00 != -1)
      {
        swift_once();
      }

      v35 = sub_21DBF84BC();
      __swift_project_value_buffer(v35, qword_280D0F300);
      v7 = sub_21DBF84AC();
      v36 = sub_21DBFAEBC();
      if (os_log_type_enabled(v7, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_21D0C9000, v7, v36, "No default list to add new reminder. Giving up.", v37, 2u);
        MEMORY[0x223D46520](v37, -1, -1);
      }

      goto LABEL_6;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_21D0D3954(v46, v45, &unk_27CE60D80, &unk_21DC093F0);
    v15 = v4;
    v16 = [v7 updateList:v15];
    sub_21D0D3954(v45, v43, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v17 = qword_280D1AA18;
    sub_21D0CF7E0(v45, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    *(&v39 + 1) = type metadata accessor for TTRUserDefaults();
    v40 = &protocol witness table for TTRUserDefaults;
    *&aBlock = v17;
    v19 = v17;
    sub_21D0CF7E0(v46, &unk_27CE60D80, &unk_21DC093F0);
    *(inited + 64) = 0;
    *(inited + 16) = v16;
    v20 = v44;
    v21 = v43[1];
    *(inited + 24) = v43[0];
    *(inited + 40) = v21;
    *(inited + 56) = v20;
    swift_beginAccess();
    *(inited + 64) = 0;
    sub_21D0D0FD0(&aBlock, inited + 72);

    v22 = TTRListEditor.addNewReminder(with:title:)(0, 0, 0xE000000000000000);
    v40 = 0;
    aBlock = 0u;
    v39 = 0u;
    sub_21D0D3954(&aBlock, v42, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v23 = swift_allocObject();
    *(v23 + 72) = 0;
    *(v23 + 16) = v22;
    sub_21D0D3954(v42, v23 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v23 + 64) = 0;
    v24 = v22;
    v25 = [v24 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(&aBlock, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v42, &unk_27CE60D80, &unk_21DC093F0);
    *(v23 + 72) = v25;
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_21DBFA12C();
    v28 = [v26 initWithString_];

    v29 = sub_21D9CA3E0(v28, 0, 1);
    if (v29)
    {
      v30 = v29;
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v30);
    }

    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v31 = sub_21DBFB12C();
    v32 = swift_allocObject();
    *(v32 + 16) = v15;
    *(v32 + 24) = v24;
    v40 = sub_21D749254;
    v41 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_21D11E5E4;
    *(&v39 + 1) = &block_descriptor_28_1;
    v33 = _Block_copy(&aBlock);
    v8 = v15;
    v34 = v24;

    [v7 saveWithQueue:v31 completion:v33];
    _Block_release(v33);
  }
}

void sub_21D7433A8(NSObject *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F300);
    v7 = a1;
    v8 = a2;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v11 = 136315394;
      swift_getErrorValue();
      v14 = sub_21DBFC74C();
      v16 = sub_21D0CDFB4(v14, v15, &v29);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = [v8 objectID];
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Failed to add reminder to list {error: %s, listID: %@}", v11, 0x16u);
      sub_21D0CF7E0(v12, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);

      return;
    }

    v27 = a1;
  }

  else
  {
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F300);
    v20 = a2;
    v21 = a3;
    oslog = sub_21DBF84AC();
    v22 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      v25 = [v21 objectID];
      *(v23 + 4) = v25;
      *v24 = v25;
      *(v23 + 12) = 2112;
      v26 = [v20 objectID];
      *(v23 + 14) = v26;
      v24[1] = v26;
      _os_log_impl(&dword_21D0C9000, oslog, v22, "Added reminder to list {reminderID: %@, listID: %@}", v23, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    v27 = oslog;
  }
}

uint64_t TTRAccountsListsInteractor.showsCompleted(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  sub_21D0D32E4(v1 + v4, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = [v2 objectID];
  v9 = v3;
  LOBYTE(v2) = (*(v6 + 104))(&v8, v5, v6);
  sub_21D157478(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v2 & 1;
}

uint64_t TTRAccountsListsInteractor.toggleShowsCompleted(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults;
  swift_beginAccess();
  sub_21D0D32E4(v1 + v4, v17);
  v5 = v18;
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_21D0D32E4(v1 + v4, &v13);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(&v13, v15);
  v11 = [v2 objectID];
  v12 = v3;
  v9 = (*(v8 + 104))(&v11, v7, v8);
  sub_21D157478(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = [v2 objectID];
  v14 = v3;
  (*(v6 + 112))((v9 & 1) == 0, &v13, v5, v6);
  sub_21D157478(v13, v14);
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t TTRAccountsListsInteractor.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)(void *a1, int a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), ObjectType = swift_getObjectType(), v9 = (*(v7 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = type metadata accessor for TTRBasicUndoContext();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(&v62 + 1) = v10;
    v63 = &protocol witness table for TTRBasicUndoContext;
    *&v61 = v11;
  }

  else
  {
    v9 = 0;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
  }

  v43 = v9;
  v12 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  *(v13 + 32) = a1;
  v14 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v15 = a1;
  v42 = v12;
  v16 = [v14 initWithStore_];
  [v16 setSaveIsNoopIfNoChangedKeys_];
  v50 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
    v17 = 0;
    v49 = v13 & 0xC000000000000001;
    v46 = a3;
    v44 = v13;
    v45 = v16;
    while (1)
    {
      if (v49)
      {
        v18 = MEMORY[0x223D44740](v17, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      sub_21D0D3954(&v61, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v20 = v16;
      v21 = [v20 updateList_];
      sub_21D0D3954(aBlock, &v58, &unk_27CE60D80, &unk_21DC093F0);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v22 = qword_280D1AA18;

      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      type metadata accessor for TTRListEditor();
      v23 = swift_allocObject();
      v56 = type metadata accessor for TTRUserDefaults();
      v57 = &protocol witness table for TTRUserDefaults;
      *&v55 = v22;
      *(v23 + 64) = 0;
      *(v23 + 16) = v21;
      v24 = v59;
      *(v23 + 24) = v58;
      *(v23 + 40) = v24;
      *(v23 + 56) = v60;
      swift_beginAccess();
      *(v23 + 64) = 0;
      sub_21D0D0FD0(&v55, v23 + 72);
      v25 = v22;
      v26 = [v21 autoCategorizeContextChangeItem];
      if (!v26)
      {
        goto LABEL_16;
      }

      v27 = v26;
      if (([v26 shouldAutoCategorizeItems] ^ a2))
      {
        break;
      }

      if (a3)
      {
LABEL_19:
        TTRListEditor.removeExistingSections()();
      }

LABEL_7:
      ++v17;

      if (v50 == v17)
      {
        goto LABEL_20;
      }
    }

    v47 = [v27 shouldAutoCategorizeItems];
    [v27 setShouldAutoCategorizeItems_];
    swift_beginAccess();
    sub_21D0D32E4(v23 + 72, aBlock);
    v28 = v52;
    v29 = v53;
    __swift_project_boxed_opaque_existential_1(aBlock, v52);
    v30 = [*(v23 + 16) objectID];
    (*(v29 + 6))(1, v30, v28, v29);

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v31 = swift_allocObject();
    *(v31 + 16) = 1;
    v32 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v52 = v32;
    aBlock[0] = [*(v23 + 16) &off_2783316F8];
    v33 = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584F0, &qword_21DC09500);
    *(&v59 + 1) = v34;
    *&v58 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v35 = swift_allocObject();
    v35[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v35 + 2));
    sub_21D0CF2E8(&v58, v35 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v35, sub_21D1CD9EC, v31);

    v36 = swift_allocObject();
    *(v36 + 16) = v47;
    v52 = v32;
    aBlock[0] = [*(v23 + 16) objectID];
    *(&v59 + 1) = v34;
    *&v58 = v33;
    a3 = v46;
    v13 = v44;
    v16 = v45;
    v37 = swift_allocObject();
    v37[1] = xmmword_21DC08D00;
    sub_21D0CEB98(aBlock, (v37 + 2));
    sub_21D0CF2E8(&v58, v37 + 4);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    sub_21D1C3EB8(v37, sub_21D1CD9F4, v36);

LABEL_16:
    if (a3)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

LABEL_20:
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v38 = sub_21DBFB12C();
  v39 = swift_allocObject();
  v39[3] = 0;
  v39[4] = 0;
  v39[2] = v13;
  v53 = sub_21D1D1AC8;
  v54 = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  v52 = &block_descriptor_34_2;
  v40 = _Block_copy(aBlock);

  [v16 saveWithQueue:v38 completion:v40];
  _Block_release(v40);

  return sub_21D0CF7E0(&v61, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t TTRAccountsListsInteractor.tagReminders(_:withHashtagName:)(char **a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if ((a1[1] & 1) == 0)
  {
    sub_21DBF8E0C();
LABEL_5:
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
    v14 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v15 = *(v14 + 8), ObjectType = swift_getObjectType(), v17 = (*(v15 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v15), swift_unknownObjectRelease(), v17))
    {
      v18 = type metadata accessor for TTRBasicUndoContext();
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(&v34 + 1) = v18;
      v35 = &protocol witness table for TTRBasicUndoContext;
      *&v33 = v19;
    }

    else
    {
      v17 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    sub_21DBF8E0C();
    v20 = v17;
    sub_21D977EE8(v6, v13, &v33, a2, a3);

    sub_21D0CF7E0(&v33, &unk_27CE60D80, &unk_21DC093F0);

    return 1;
  }

  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v8 = sub_21DBFA5DC();
  *&v33 = 0;
  v9 = [v7 fetchRemindersWithObjectIDs:v8 error:&v33];

  v10 = v33;
  if (v9)
  {
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
    v11 = sub_21DBF9E6C();
    v12 = v10;

    v6 = sub_21D198B0C(v11);

    goto LABEL_5;
  }

  v22 = v33;
  v23 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_280D0F300);
  v25 = v23;
  v26 = sub_21DBF84AC();
  v27 = sub_21DBFAEBC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v33 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = sub_21DBFC74C();
    v32 = sub_21D0CDFB4(v30, v31, &v33);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_21D0C9000, v26, v27, "Failed to fetch reminders for tagging {error: %s}", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D46520](v29, -1, -1);
    MEMORY[0x223D46520](v28, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21D7444B8@<X0>(id a1@<X1>, uint64_t a2@<X0>, char *a3@<X8>)
{
  v5 = [a1 objectID];
  v6 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16) && (v8 = sub_21D17E07C(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + v8);
  }

  else
  {
    v10 = 2;
  }

  result = swift_endAccess();
  *a3 = v10;
  return result;
}

Swift::Void __swiftcall TTRAccountsListsInteractor.registerUndoFor(listDetailUndoManager:)(NSUndoManager *listDetailUndoManager)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 56))(v2, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store);
      if ([(NSUndoManager *)listDetailUndoManager canUndo])
      {
        v9 = swift_allocObject();
        *(v9 + 16) = listDetailUndoManager;
        *(v9 + 24) = v8;
        sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
        v10 = listDetailUndoManager;
        v11 = v8;
        sub_21DBFAE8C();
      }
    }
  }
}

Swift::Void __swiftcall TTRAccountsListsInteractor.pauseUpdates()()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D737F20(&unk_282ED0390, sub_21D74A5F8, &block_descriptor_176);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TTRAccountsListsInteractor.resumeUpdates()()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D0D4B6C(1);
  }

  else
  {
    __break(1u);
  }
}

double sub_21D744778(uint64_t a1, uint64_t a2)
{
  sub_21DBFBEEC();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98, &unk_21DC266E8);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD00000000000002ELL, 0x800000021DC6A010);
  sub_21DBFAEDC();
  sub_21DBF626C();

  return result;
}

uint64_t sub_21D74485C(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(a1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D744900(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *a1;
  v10 = [*(*a1 + 16) saveRequest];
  v11 = v10;
  if (a2)
  {
    v12 = [v10 updateList_];
    v13 = [v12 sublistContext];

    v14 = BYTE1(a4);
    if (BYTE1(a4))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_21D749C9C(a3, a4, 0);
    v15 = &selRef_updateSmartList_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_updateList_;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = BYTE1(a4);
  if (!BYTE1(a4))
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14 == 1)
  {
    sub_21D749C9C(a3, a4, 1u);
    v15 = &selRef_updateSmartList_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_updateList_;
    }

LABEL_10:
    v16 = [v11 *v15];

    goto LABEL_12;
  }

  v16 = (a3 | a4) != 0;
  sub_21D749C9C(a3, a4, 2u);
LABEL_12:
  v40 = *(a5 + 16);
  if (v40)
  {
    v41 = v13;
    v17 = 0;
    v38 = v11;
    v39 = a5 + 32;
LABEL_16:
    v44 = v14;
    v19 = v39 + 16 * v17;
    v42 = *(v19 + 8);
    v43 = v17 + 1;
    v20 = *v19;
    v21 = 1 << *(a6 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a6 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v20;
    sub_21DBF8E0C();
    v26 = 0;
    while (v23)
    {
      v27 = v26;
LABEL_26:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = *(*(a6 + 48) + ((v27 << 10) | (16 * v28)));
      v30 = [v29 objectID];
      v31 = [v25 objectID];
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v32 = sub_21DBFB63C();

      if (v32)
      {
        v33 = 1;
LABEL_29:

        v34 = v38;
        if (v42)
        {
          v35 = [v38 updateSmartList_];
          if (!v33)
          {
LABEL_34:
            v46 = v16;
            v47 = v44;
            if (v41)
            {
              v36 = v41;
              sub_21D2557D8(v16, v44);
              _s15RemindersUICore16TTRAccountEditorC4move4list2to19positionWithinGroupySo24REMMergeableOrderingNode_p_So31REMListSublistContextChangeItemCAA28TTRRelativeInsertionPositionOySoAH_pGtF_0(v35, v36, &v46);
            }

            else
            {
              swift_getObjectType();
              sub_21D2557D8(v16, v44);
              v18 = swift_unknownObjectRetain();
              sub_21D255460(v18, &v46, v37);

              swift_unknownObjectRelease();
            }

            sub_21D749CB0(v46, v47);
            sub_21D749CB0(v16, v44);
            v14 = 1;
            v16 = v35;
            v17 = v43;
            if (v43 == v40)
            {

              v16 = v35;
              goto LABEL_38;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v35 = [v38 updateList_];
          if ((v33 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        [v35 setIsPinned_];
        goto LABEL_34;
      }
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v33 = 0;
        goto LABEL_29;
      }

      v23 = *(a6 + 56 + 8 * v27);
      ++v26;
      if (v23)
      {
        v26 = v27;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {

    v34 = v13;
LABEL_38:

    sub_21D749CB0(v16, v14);
  }
}

void sub_21D744D44(NSObject *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_280D17F00 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F300);
    v6 = a1;
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315394;
      if (a2)
      {
        a2 = [v7 objectID];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
      v12 = sub_21DBFBA5C();
      v14 = v13;

      v15 = sub_21D0CDFB4(v12, v14, &v30);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_21DBFC74C();
      v18 = sub_21D0CDFB4(v16, v17, &v30);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to move lists {group.objectID: %s, error: %s}", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

      return;
    }

    v28 = a1;

LABEL_16:

    return;
  }

  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_280D0F300);
  v20 = a2;
  oslog = sub_21DBF84AC();
  v21 = sub_21DBFAEDC();

  if (!os_log_type_enabled(oslog, v21))
  {
    v28 = oslog;

    goto LABEL_16;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v30 = v23;
  *v22 = 136315138;
  if (a2)
  {
    a2 = [v20 objectID];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
  v24 = sub_21DBFBA5C();
  v26 = v25;

  v27 = sub_21D0CDFB4(v24, v26, &v30);

  *(v22 + 4) = v27;
  _os_log_impl(&dword_21D0C9000, oslog, v21, "Moved lists {group.objectID: %s}", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v23);
  MEMORY[0x223D46520](v23, -1, -1);
  MEMORY[0x223D46520](v22, -1, -1);
}

void sub_21D745138(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_21DBF8E0C();
  v5 = sub_21DBF8E0C();
  sub_21D996E30(v5, v4);
  *a3 = v6;
}

uint64_t sub_21D745184@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v58 - v8;
  v9 = sub_21DBF6A2C();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF69DC();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF687C();
  v13 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v58 - v16;
  v17 = sub_21DBF684C();
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  v72 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF686C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21D0D4B04(a3, a4, type metadata accessor for TTRAccountsListsInteractor.FetchResult);
  }

  v58 = a4;
  v24 = *(v20 + 104);
  v24(v22, *MEMORY[0x277D45290], v19);
  v25 = sub_21D1E2F40(v22, v23);
  v26 = *(v20 + 8);
  v26(v22, v19);
  v24(v22, *MEMORY[0x277D45288], v19);
  v66 = sub_21D1E2F40(v22, v23);
  v26(v22, v19);
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v65 = v13;
  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_280D0F300);
  v28 = sub_21DBF84AC();
  v29 = sub_21DBFAE9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v76 = v31;
    *v30 = 136315394;
    if (v25)
    {
      v32 = 1702195828;
    }

    else
    {
      v32 = 0x65736C6166;
    }

    if (v25)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_21D0CDFB4(v32, v33, &v76);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = v66;
    if (v66)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v66)
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_21D0CDFB4(v36, v37, &v76);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_21D0C9000, v28, v29, "TTRAccountsListsInteractor: fetch cachable properties {reminderCounts: %s, smartListHashtagLabels: %s}", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v31, -1, -1);
    MEMORY[0x223D46520](v30, -1, -1);

    v39 = v72;
    v40 = Strong;
  }

  else
  {

    v39 = v72;
    v40 = Strong;
    v35 = v66;
  }

  v42 = *(v65 + 104);
  v43 = *MEMORY[0x277D452C0];
  v44 = *MEMORY[0x277D452B0];
  LODWORD(v72) = v25;
  if (v25)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  v46 = v69;
  v42(v67, v45, v69);
  if (v35)
  {
    v47 = v43;
  }

  else
  {
    v47 = v44;
  }

  v42(v68, v47, v46);
  sub_21DBF682C();
  sub_21DBF6A3C();
  v48 = *&v40[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_store];
  v49 = v71;
  v50 = v75;
  sub_21DBF681C();
  v75 = v50;
  if (v50)
  {

    return (*(v73 + 8))(v39, v74);
  }

  else
  {

    v51 = v61;
    sub_21DBF6A1C();
    (*(v59 + 8))(v49, v60);
    if (v72)
    {
      v52 = v64;
      sub_21DBF68FC();
      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v64;
    }

    v54 = v66;
    v55 = sub_21DBF680C();
    (*(*(v55 - 8) + 56))(v52, v53, 1, v55);
    if (v54)
    {
      v56 = sub_21DBF689C();
    }

    else
    {

      v56 = 0;
    }

    (*(v62 + 8))(v51, v63);
    (*(v73 + 8))(v39, v74);
    v57 = v58;
    sub_21D749EC4(v52, v58);
    result = type metadata accessor for TTRAccountsListsInteractor.FetchResult(0);
    *(v57 + *(result + 20)) = v56;
  }

  return result;
}

void sub_21D745934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21DBFBEEC();
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98, &unk_21DC266E8);
    sub_21DBFA1AC();

    MEMORY[0x223D42AA0](0xD000000000000016, 0x800000021DC6A040);
    v4 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }
}

uint64_t sub_21D745AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v8 = result;
  if (result)
  {
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = MEMORY[0x28223BE20](ObjectType);
    v12 = a2;
    (*(v9 + 16))(a1, &protocol witness table for TTRAccountsListsInteractor, sub_21D749EBC, v11);
    result = swift_unknownObjectRelease();
  }

  *a3 = v8 == 0;
  return result;
}

uint64_t sub_21D745BAC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_21D0D3954(a2, v5, &unk_27CE60F50, &qword_21DC26760);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE60F50, &qword_21DC26760);
LABEL_5:
    v15 = 0;
    goto LABEL_7;
  }

  (*(v7 + 32))(v12, v5, v6);
  sub_21DBF68FC();
  sub_21D0D8E04(&qword_280D0C808, MEMORY[0x277D45278], MEMORY[0x277D45280]);
  v13 = sub_21DBFA10C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if (v13)
  {
    v14(v12, v6);
    goto LABEL_5;
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_21DBF690C();
  v14(v12, v6);
  v15 = 1;
LABEL_7:
  v16 = *(a2 + *(type metadata accessor for TTRAccountsListsInteractor.FetchResult(0) + 20));
  if (v16)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBF689C();
    v18 = sub_21D1D57A4(v17, v16);

    if (v18)
    {
    }

    else
    {
      sub_21DBF68AC();
      return 1;
    }
  }

  return v15;
}

id TTRAccountsListsInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRAccountsListsInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D746064()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_userDefaults);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 16))(v2, v3);
  return swift_endAccess();
}

id sub_21D7460FC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v4 = [v3 updateAccount_];
  v5 = sub_21DBFA12C();
  v6 = [v3 addCustomSmartListWithName:v5 toAccountChangeItem:v4 smartListObjectID:0];

  return v6;
}

void sub_21D746208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v8 = sub_21DBFB12C();
  v10[4] = a4;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D11E5E4;
  v10[3] = a5;
  v9 = _Block_copy(v10);
  [v7 saveWithQueue:v8 completion:v9];
  _Block_release(v9);
}

id sub_21D746310(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v7 setSaveIsNoopIfNoChangedKeys_];
  v8 = [v7 *a4];

  return v8;
}

void sub_21D7463B4(uint64_t a1, id a2)
{
  v4 = [a2 account];
  v5 = 1;
  v6 = 512;
  sub_21D73F164(a1, v4, a2, &v5, MEMORY[0x277D84FA0]);
}

uint64_t sub_21D746440(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = [a2 account];
  v11 = v7;
  v12 = v8;
  LOBYTE(a4) = sub_21D73F164(a1, v9, a2, &v11, a4);

  return a4 & 1;
}

uint64_t sub_21D7464D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v6 = *a3;
  v7 = v4;
  return sub_21D73F164(a1, a2, 0, &v6, a4) & 1;
}

uint64_t sub_21D746530()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_dataViewMonitor))
  {

    sub_21D737F20(&unk_282ED0390, sub_21D74A5F8, &block_descriptor_176);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D7465A4()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(v0, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21D7466C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _OWORD *, uint64_t, void *, void, void))
{
  v7[2] = a1;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  a6(a2, v8, a5, v7, 0, 0);
  return sub_21D0CF7E0(v8, &unk_27CE60D80, &unk_21DC093F0);
}

uint64_t TTRAccountsListsInteractor.cloudKitMigrationManagerDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF9D2C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DBF9D5C();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_21DBF9DAC();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = sub_21D0FC144();
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v19 = sub_21DBFB12C();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v18;
    aBlock[4] = sub_21D749278;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_66_3;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v6, v21);
    _Block_release(v21);

    (*(v24 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_21D746B04(char *a1, uint64_t a2)
{
  v120 = sub_21DBF9D2C();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DBF9D5C();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21DBF9D1C();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v110 = (&v104 - v8);
  v111 = sub_21DBF9D7C();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21DBFB27C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
  swift_beginAccess();
  *&a1[v11] = a2;
  sub_21DBF8E0C();

  aBlock = 0;
  v132 = 0xE000000000000000;
  sub_21DBFBEEC();
  ObjectType = swift_getObjectType();
  aBlock = ObjectType;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60E98, &unk_21DC266E8);
  v12 = sub_21DBFA1AC();
  v14 = v13;

  aBlock = v12;
  v132 = v14;
  MEMORY[0x223D42AA0](0xD000000000000028, 0x800000021DC69F90);
  sub_21DBFAEDC();
  v130 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
  v121 = 0;

  if (qword_280D17A38 != -1)
  {
LABEL_96:
    swift_once();
  }

  v15 = sub_21DBF84BC();
  v16 = __swift_project_value_buffer(v15, qword_27CE8ECE8);
  v17 = a1;
  v125 = v16;
  v126 = v17;
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEDC();

  v20 = os_log_type_enabled(v18, v19);
  v128 = v11;
  v129 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
    sub_21DBF8E0C();
    v23 = sub_21DBF9E7C();
    v25 = v24;
    v11 = v128;
    a1 = v129;

    v26 = sub_21D0CDFB4(v23, v25, &aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v18, v19, "cloudKitMigrationManagerDidChange: Updated accountsEligibleForMigration_cached %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  v27 = *&a1[v11];
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;
  v127 = 0x800000021DC63B60;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  while (v30)
  {
LABEL_13:
    v35 = __clz(__rbit64(v30)) | (v32 << 6);
    a1 = *(*(v27 + 48) + 8 * v35);
    v11 = *(*(v27 + 56) + v35);
    if (v11 > 3)
    {
      if (v11 == 4 || v11 == 5)
      {
LABEL_28:
        v41 = a1;
        goto LABEL_29;
      }

LABEL_19:
      aBlock = 0;
      v132 = 0xE000000000000000;
      v38 = a1;
      sub_21DBFBEEC();

      aBlock = 0xD000000000000024;
      v132 = v127;
      if (v11)
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (v11)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v39, v40);

      v37 = v132;
      if (aBlock != 0x6572676F72506E69)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (v11 == 2)
    {
      goto LABEL_28;
    }

    if (v11 != 3)
    {
      goto LABEL_19;
    }

    v36 = a1;
    v37 = 0xEA00000000007373;
LABEL_26:
    if (v37 == 0xEA00000000007373)
    {

LABEL_54:

      goto LABEL_55;
    }

LABEL_29:
    v42 = sub_21DBFC64C();

    if (v42)
    {

LABEL_53:

      goto LABEL_54;
    }

    if (v11 > 3)
    {
      if (v11 == 4 || v11 == 5)
      {
        goto LABEL_7;
      }

LABEL_36:
      aBlock = 0;
      v132 = 0xE000000000000000;
      sub_21DBFBEEC();

      aBlock = 0xD000000000000024;
      v132 = v127;
      if (v11)
      {
        v43 = 1702195828;
      }

      else
      {
        v43 = 0x65736C6166;
      }

      if (v11)
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v43, v44);

      v45 = v132;
      if (aBlock != 0x6C69617641746F6ELL)
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    v45 = 0xEC000000656C6261;
LABEL_45:
    if (v45 == 0xEC000000656C6261)
    {

LABEL_55:
      if (!*&v126[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer])
      {
        v104 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer;
        v53 = sub_21DBF84AC();
        v54 = sub_21DBFAEDC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_21D0C9000, v53, v54, "accountsEligibleForMigration contains at least one incomplete account. Scheduling update in 5s.", v55, 2u);
          MEMORY[0x223D46520](v55, -1, -1);
        }

        sub_21D0D8CF0(0, &qword_27CE60EA0, 0x277D85CA0);
        aBlock = MEMORY[0x277D84F90];
        sub_21D0D8E04(&qword_27CE60EA8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EB0, &unk_21DC266F8);
        sub_21D0D0F1C(&qword_27CE60EB8, &qword_27CE60EB0, &unk_21DC266F8, MEMORY[0x277D83970]);
        v56 = v105;
        v57 = v107;
        sub_21DBFBCBC();
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v58 = sub_21DBFB12C();
        v59 = sub_21DBFB28C();

        (*(v106 + 8))(v56, v57);
        v60 = swift_getObjectType();
        v61 = v108;
        sub_21DBF9D6C();
        v62 = v110;
        *v110 = 5;
        v63 = *MEMORY[0x277D85188];
        v64 = v113;
        v65 = *(v113 + 104);
        v66 = v114;
        v65(v62, v63, v114);
        v67 = v112;
        *v112 = 30;
        v65(v67, v63, v66);
        MEMORY[0x223D43C40](v61, v62, v67, v60);
        v68 = *(v64 + 8);
        v68(v67, v66);
        v68(v62, v66);
        (*(v109 + 8))(v61, v111);
        v69 = swift_allocObject();
        v70 = v126;
        *(v69 + 16) = v126;
        v135 = sub_21D749C3C;
        v136 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v132 = 1107296256;
        v133 = sub_21D0D74FC;
        v134 = &block_descriptor_161;
        v71 = _Block_copy(&aBlock);
        v72 = v70;
        v73 = v115;
        sub_21DBF9D4C();
        v74 = v117;
        sub_21D748154();
        sub_21DBFB29C();
        _Block_release(v71);
        (*(v119 + 8))(v74, v120);
        (*(v116 + 8))(v73, v118);

        *&v70[v104] = v59;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_21DBFB2BC();
        swift_unknownObjectRelease();
      }

      v75 = sub_21DBF84AC();
      v76 = sub_21DBFAEDC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_21D0C9000, v75, v76, "accountsEligibleForMigration contains at least one incomplete account. Timer already running.", v77, 2u);
        MEMORY[0x223D46520](v77, -1, -1);
      }

      v52 = v128;
      v51 = v129;
      goto LABEL_62;
    }

LABEL_7:
    v30 &= v30 - 1;
    v33 = sub_21DBFC64C();

    if (v33)
    {
      goto LABEL_53;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 64 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_13;
    }
  }

  v46 = sub_21DBF84AC();
  v47 = sub_21DBFAEDC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_21D0C9000, v46, v47, "accountsEligibleForMigration has no accounts .inProgress. Stopping update timer.", v48, 2u);
    MEMORY[0x223D46520](v48, -1, -1);
  }

  v49 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer;
  v50 = v126;
  v52 = v128;
  v51 = v129;
  if (*&v126[OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_migrationPollingTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21DBFB2AC();
    swift_unknownObjectRelease();
  }

  *&v50[v49] = 0;
  swift_unknownObjectRelease();
LABEL_62:
  v78 = *&v51[v52];
  v79 = 1 << *(v78 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v78 + 64);
  v82 = (v79 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  a1 = 0xE500000000000000;
  while (2)
  {
    if (!v81)
    {
      while (1)
      {
        v85 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v85 >= v82)
        {

          return result;
        }

        v81 = *(v78 + 64 + 8 * v85);
        ++v11;
        if (v81)
        {
          v11 = v85;
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

LABEL_72:
    v86 = __clz(__rbit64(v81)) | (v11 << 6);
    v87 = *(*(v78 + 48) + 8 * v86);
    v88 = *(*(v78 + 56) + v86);
    if (v88 > 3)
    {
      if (v88 != 4)
      {
        if (v88 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_78;
      }

      v93 = v87;
      v92 = 0xE500000000000000;
      goto LABEL_87;
    }

    if (v88 == 2 || v88 == 3)
    {
LABEL_65:
      v83 = v87;
      goto LABEL_66;
    }

LABEL_78:
    aBlock = 0;
    v132 = 0xE000000000000000;
    v89 = v87;
    sub_21DBFBEEC();

    aBlock = 0xD000000000000024;
    v132 = v127;
    if (v88)
    {
      v90 = 1702195828;
    }

    else
    {
      v90 = 0x65736C6166;
    }

    if (v88)
    {
      v91 = 0xE400000000000000;
    }

    else
    {
      v91 = 0xE500000000000000;
    }

    MEMORY[0x223D42AA0](v90, v91);

    v92 = v132;
    if (aBlock == 0x726F727265)
    {
LABEL_87:
      if (v92 == 0xE500000000000000)
      {

        goto LABEL_91;
      }
    }

LABEL_66:
    v81 &= v81 - 1;
    v84 = sub_21DBFC64C();

    if ((v84 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_91:
  v95 = sub_21DBF84AC();
  v96 = sub_21DBFAEBC();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v126;
  if (v97)
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_21D0C9000, v95, v96, "accountsEligibleForMigration contains at least one account with .error.", v99, 2u);
    MEMORY[0x223D46520](v99, -1, -1);
  }

  aBlock = 0;
  v132 = 0xE000000000000000;
  sub_21DBFBEEC();
  aBlock = ObjectType;
  v100 = sub_21DBFA1AC();
  v102 = v101;

  aBlock = v100;
  v132 = v102;
  MEMORY[0x223D42AA0](0xD000000000000017, 0x800000021DC69FC0);
  v103 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v103);
  *(&v104 - 2) = v98;
  sub_21DBF625C();

  return result;
}

uint64_t sub_21D747D58@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v9 = OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_accountsEligibleForMigration_cached;
    swift_beginAccess();
    v10 = *(a1 + v9);
    v11 = *(v7 + 24);
    sub_21DBF8E0C();
    v11(a1, &protocol witness table for TTRAccountsListsInteractor, v10, ObjectType, v7);

    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21D747E58(void *a1)
{
  v2 = sub_21DBF608C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D749C60;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_170;
  v8 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0, &qword_21DC15CE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v10 = a1;

  sub_21DBF607C();
  v12[1] = v9;
  sub_21D0D8E04(&unk_280D0C828, MEMORY[0x277D44E00], MEMORY[0x277D44E08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0, &qword_21DC15CE8);
  sub_21D0D0F1C(&unk_280D0C3C0, &unk_27CE60ED0, &qword_21DC15CE8, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v8);
  (*(v3 + 8))(v5, v2);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D748154()
{
  sub_21DBF9D2C();
  sub_21D0D8E04(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  return sub_21DBFBCBC();
}

uint64_t sub_21D748240@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21D748304@<X0>(uint64_t a1@<X0>, char a2@<W1>, BOOL *a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v8 = result;
  if (result)
  {
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = a2 & 1;
    (*(v9 + 40))(a1, &protocol witness table for TTRAccountsListsInteractor, &v11, ObjectType, v9);
    result = swift_unknownObjectRelease();
  }

  *a3 = v8 == 0;
  return result;
}

void TTRAccountListsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a2;
  v42 = a4;
  v39 = a1;
  v4 = type metadata accessor for TTRAccountListsMonitorableDataView.Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21DBF6A2C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v46 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF687C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_21DBF684C();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C328, &qword_21DC15E50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0, &unk_21DC1A860);
  sub_21DBFC83C();
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5C328, &qword_21DC15E50);
    v21 = 0;
  }

  else
  {
    v21 = *&v20[*(v4 + 24)];
    v22 = v21;
    sub_21D0D8E4C(v20, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
  }

  v23 = *(v41 + 16);
  v35 = v4;
  if (v42)
  {
    v24 = v23;
  }

  else
  {
    v24 = [v23 nonUserInteractiveStore];
  }

  v25 = v24;
  v26 = *MEMORY[0x277D452B8];
  v27 = *(v9 + 104);
  v27(v14, v26, v8);
  v27(v11, v26, v8);
  sub_21DBF682C();
  sub_21DBF6A3C();
  v28 = v46;
  v29 = v45;
  sub_21DBF681C();
  if (v29)
  {
    (*(v43 + 8))(v17, v44);
  }

  else
  {
    v30 = v37;
    sub_21DBF6A1C();
    v31 = sub_21DBF69FC();
    v32 = sub_21DBF69EC();
    v33 = v35;
    *(v30 + *(v35 + 20)) = v31;
    *(v30 + *(v33 + 24)) = v32;
    sub_21D0D4B04(v30, v39, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    sub_21DBF6A0C();

    sub_21D0D8E4C(v30, type metadata accessor for TTRAccountListsMonitorableDataView.Data);
    (*(v36 + 8))(v28, v38);
    (*(v43 + 8))(v17, v44);
  }
}

uint64_t TTRAccountListsMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D748960(uint64_t a1)
{
  v1 = sub_21DBF9D8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + *(*result + 128));

    v7 = *(v6 + 16);
    *v4 = v7;
    (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
    v8 = v7;
    LOBYTE(v7) = sub_21DBF9DAC();
    result = (*(v2 + 8))(v4, v1);
    if (v7)
    {
      if (*(v6 + 104) == 1)
      {
        sub_21D748ADC();
        *(v6 + 104) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D748ADC()
{
  v1 = *(v0 + 108);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 108) = -1;
  }

  v2 = *(v0 + 112);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(v0 + 112) = -1;
  }

  if (*(v0 + 120))
  {
    v3 = *(v0 + 120);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v3 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_17:
    sub_21DBF8E0C();
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = objc_opt_self();
  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  sub_21DBF8E0C();
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
      swift_unknownObjectRetain();
    }

    ++v7;
    v9 = [v6 defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  while (v4 != v7);
LABEL_18:
}

void sub_21D748C54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  TTRAccountEditor.edit(pinnedListOrdering:undoPolicy:)(v1, &v2);
}

void sub_21D748CA4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 9);
  v8 = [a1 store];
  v9 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v10 = [v9 updateAccount_];
  v11 = v3 + OBJC_IVAR____TtC15RemindersUICore26TTRAccountsListsInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v12 = *(v11 + 8), ObjectType = swift_getObjectType(), v14 = (*(v12 + 56))(v3, &protocol witness table for TTRAccountsListsInteractor, ObjectType, v12), swift_unknownObjectRelease(), v14))
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for TTRAccountEditor();
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v16;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = v15;
  *(v18 + 56) = v17;
  *(v18 + 64) = 0;
  v19 = v10;
  v20 = [v19 groupContext];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v47 = v19;
  v22 = [v19 saveRequest];
  v23 = sub_21DBFA12C();
  v24 = [v22 addGroupWithName:v23 toAccountGroupContextChangeItem:v21];

  if (!v7)
  {
    sub_21D749C9C(v5, v6, 0);
    if (v6)
    {
      goto LABEL_11;
    }

    v26 = [v5 parentList];
    if (!v26)
    {
      v26 = v5;
    }

LABEL_18:
    v25 = [v9 updateList_];

    goto LABEL_19;
  }

  if (v7 != 1)
  {
    v25 = (v5 | v6) != 0;
    sub_21D749C9C(v5, v6, 2u);
    goto LABEL_19;
  }

  sub_21D749C9C(v5, v6, 1u);
  if ((v6 & 1) == 0)
  {
    v26 = [v5 parentList];
    if (!v26)
    {
      v26 = v5;
    }

    goto LABEL_18;
  }

LABEL_11:
  v25 = [v9 updateSmartList_];

LABEL_19:
  v27 = v24;
  v48 = v7;
  sub_21D2553BC(v27, v25, v7, v18);

  v46 = v27;
  v28 = [v27 sublistContext];
  if (v28)
  {
    v29 = v28;
    v45 = v25;
    v30 = *(a2 + 16);
    v31 = v9;
    if (v30)
    {
      v32 = (a2 + 16 * v30 + 24);
      do
      {
        --v30;
        v33 = *(v32 - 1);
        v35 = *v32;
        v32 -= 16;
        v34 = v35;
        v36 = v33;
        v37 = &selRef_updateSmartList_;
        if (!v35)
        {
          v37 = &selRef_updateList_;
        }

        if (v34)
        {
          v38 = &selRef_addSmartListChangeItem_;
        }

        else
        {
          v38 = &selRef_addListChangeItem_;
        }

        v39 = [v31 *v37];
        [v29 *v38];
      }

      while (v30);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v46;
    *(v40 + 24) = a2;
    v46;
    sub_21DBF8E0C();
    sub_21D182F80(sub_21D749D24, v40);

    sub_21D749CB0(v45, v48);

    return;
  }

  __break(1u);
LABEL_30:
  if (qword_27CE565D8 != -1)
  {
    swift_once();
  }

  v41 = sub_21DBF84BC();
  __swift_project_value_buffer(v41, qword_27CE5A308);
  v42 = MEMORY[0x277D84F90];
  v43 = sub_21D17716C(MEMORY[0x277D84F90]);
  v44 = sub_21D17716C(v42);
  sub_21DAEAB00("Tried to add group on account that doesn't support groups", 57, 2, v43, v44);
  __break(1u);
}

void sub_21D749280(void *a1)
{
  if (qword_280D17F00 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_280D0F300);
  v4 = a1;
  v5 = v1;
  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC74C();
    v12 = sub_21D0CDFB4(v10, v11, &v15);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v5;
    v13 = v5;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRAccountListsMonitorableDataView did hit error {error: %s, interactor: %@}", v7, 0x16u);
    sub_21D0CF7E0(v8, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 48))(a1, a2, a3);
}

{
  return (*(a4 + 56))(a1, a2, a3);
}

uint64_t dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setSortingStyle(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 88))(a1, a2, a3);
}

{
  return (*(a4 + 104))(a1, a2, a3);
}

uint64_t dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 104))(a1, a2);
}

{
  return (*(a3 + 112))(a1, a2);
}

{
  return (*(a3 + 120))(a1, a2);
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountListsMonitorableDataView.Data(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF69DC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    sub_21DBF8E0C();
    v10 = v9;
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  return a1;
}

uint64_t initializeWithTake for TTRAccountListsMonitorableDataView.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF69DC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

id sub_21D749C9C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_21D749CB0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_21D749EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_21D749F50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF680C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
  }

  return a1;
}

char *sub_21D74A0D0(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D74A274(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_21D74A3A4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF680C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F50, &qword_21DC26760);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_21D74A6D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60F60);
  v1 = __swift_project_value_buffer(v0, qword_27CE60F60);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRICollectionViewDropCommitCoordinator.DropItem.dragItemUserInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 36);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, *(a1 + 16), a3, a4);
  v7 = sub_21DBFBA8C();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v4 + v6, v7);
}

uint64_t sub_21D74A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a1;
  v12 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem(0, a3, a4, a4);
  v13 = *(v12 + 36);
  type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a3, v14, v15);
  v16 = sub_21DBFBA8C();
  result = (*(*(v16 - 8) + 32))(&a5[v13], a2, v16);
  v18 = &a5[*(v12 + 40)];
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItemUserInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 36);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, *(a1 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v4 + v6, v7);
}

uint64_t TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = v4 + *(a1 + 36);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v7, a3, a4);
  v9 = *(*(v7 - 8) + 16);
  v10 = v6 + *(v8 + 32);

  return v9(a2, v10, v7);
}

uint64_t sub_21D74A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = *(type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, a3, a4, a4) + 36);
  v11 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, a3, v9, v10);
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v8], a2, v11);
}

uint64_t TTRICollectionViewDropCommitCoordinator.items.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = [*(v1 + qword_27CE60F78) items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60FE0, &qword_21DC267E8);
  sub_21DBFA5EC();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60FE8, &unk_21DC267F0);
  v6 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem(0, *(v2 + 80), *(v2 + 88), v5);
  v7 = sub_21D74B058();
  v9 = sub_21D0E5014(sub_21D74B020, v1, v4, v6, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_21D74ABB4@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v52 = a3;
  v50 = *a2;
  v44 = a2;
  v6 = *(v50 + 80);
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v6, a4, a5);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - v9;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v21 = *a1;
  v22 = *(v8 + 56);
  v47 = &v41 - v23;
  v43 = v22;
  v22(v20);
  v46 = v21;
  v24 = [v21 dragItem];
  v51 = v6;
  v53 = static TTRICollectionViewDragItemUserInfo.dragItemLocalObjectKey.getter(v6, v25, v26, v27);
  v54 = v28;
  sub_21DBFBE2C();
  UIDragItem.localObject<A>(ofType:forKey:)(v55, v7, v18);

  sub_21D181D3C(v55);
  v45 = *(v11 + 16);
  v45(v15, v18, v10);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    (*(v11 + 8))(v15, v10);
LABEL_6:
    v31 = v47;
    goto LABEL_7;
  }

  v42 = v18;
  v29 = v15;
  v30 = *(v8 + 32);
  v30(v48, v29, v7);
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    (*(v8 + 8))(v48, v7);
    v18 = v42;
    goto LABEL_6;
  }

  v31 = v47;
  (*(v11 + 8))(v47, v10);
  v30(v31, v48, v7);
  (v43)(v31, 0, 1, v7);
  v18 = v42;
LABEL_7:
  v32 = v46;
  v33 = [v46 dragItem];
  v34 = v49;
  v45(v49, v31, v10);
  [v32 previewSize];
  v36 = v35;
  v38 = v37;
  v39 = *(v11 + 8);
  v39(v18, v10);
  v39(v31, v10);
  return sub_21D74A834(v33, v34, v51, *(v50 + 88), v52, v36, v38);
}

unint64_t sub_21D74B058()
{
  result = qword_27CE60FF0;
  if (!qword_27CE60FF0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60FE8, &unk_21DC267F0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE60FF0);
  }

  return result;
}

uint64_t TTRICollectionViewDropCommitCoordinator.localDropItems.getter()
{
  v1 = *v0;
  TTRICollectionViewDropCommitCoordinator.items.getter();
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem(255, v7, v8, v2);
  v3 = sub_21DBFA74C();
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, v7, v8, v4);
  swift_getWitnessTable(MEMORY[0x277D83970], v3);
  v5 = sub_21DBFA4EC();

  return v5;
}

id sub_21D74B1B8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v33 = a1;
  v35 = a4;
  v7 = type metadata accessor for TTRICollectionViewDragItemUserInfo(255, a2, a3, a5);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v34 = a3;
  v19 = a3;
  v20 = v33;
  v22 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.DropItem(0, a2, v19, v21);
  (*(v9 + 16))(v11, v20 + *(v22 + 36), v8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v24 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, a2, v34, v23);
    return (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
  }

  else
  {
    v26 = *(v12 + 32);
    v26(v18, v11, v7);
    v27 = *v20;
    v26(v15, v18, v7);
    v29 = v34;
    v28 = v35;
    sub_21D74A9F4(v27, v15, a2, v34, v35);
    v31 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, a2, v29, v30);
    (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
    return v27;
  }
}

uint64_t TTRICollectionViewDropCommitCoordinator.sourceItemIDs.getter()
{
  v1 = *v0;
  v11 = TTRICollectionViewDropCommitCoordinator.localDropItems.getter();
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(255, v9, v10, v2);
  v3 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v3);
  v6 = sub_21D0E5014(sub_21D74B5B4, &v8, v3, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t sub_21D74B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRICollectionViewDropCommitCoordinator.LocalDropItem(0, *(v3 + 16), *(v3 + 24), a2);
  v7 = a1 + *(v6 + 36);
  v8 = *(v6 + 16);
  v11 = type metadata accessor for TTRICollectionViewDragItemUserInfo(0, v8, v9, v10);
  return (*(*(v8 - 8) + 16))(a3, v7 + *(v11 + 32), v8);
}

id TTRICollectionViewDropCommitCoordinator.session.getter()
{
  v1 = [*(v0 + qword_27CE60F78) session];

  return v1;
}

id TTRICollectionViewDropCommitCoordinator.proposal.getter()
{
  v1 = [*(v0 + qword_27CE60F78) proposal];

  return v1;
}

uint64_t TTRICollectionViewDropCommitCoordinator.destination.getter@<X0>(char *a1@<X8>, __n128 a2@<Q1>)
{
  v150 = a1;
  v3 = *v2;
  v4 = (*v2)[5];
  v152 = vdupq_lane_s64(v4.i64[0], 0);
  v148 = v4;
  v149 = a2;
  v151 = vdupq_laneq_s64(v4, 1);
  *v153 = v152;
  *&v153[16] = v151;
  v5 = type metadata accessor for TTRNormalizedItemLocation(255, v153);
  v128 = sub_21DBFBA8C();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v134 = &v122 - v6;
  v135 = v5;
  v133 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v126 = &v122 - v8;
  v146 = sub_21DBF5D5C();
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v124 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v132 = &v122 - v11;
  MEMORY[0x28223BE20](v12);
  v142 = &v122 - v13;
  *v153 = v152;
  *&v153[16] = v151;
  v14 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(255, v153);
  v131 = sub_21DBFBA8C();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v123 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v141 = &v122 - v17;
  v144 = v14;
  v143 = *(v14 - 8);
  MEMORY[0x28223BE20](v18);
  v122 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v122 - v21;
  v137 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v137);
  v139 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v23 - 8);
  v136 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v125 = &v122 - v26;
  MEMORY[0x28223BE20](v27);
  v145 = &v122 - v28;
  MEMORY[0x28223BE20](v29);
  v140 = &v122 - v30;
  v31 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v31 - 8);
  v138 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v153 = v152;
  *&v153[16] = v151;
  v36 = type metadata accessor for TTRICollectionViewDropProposal(255, v153);
  v37 = sub_21DBFBA8C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v122 - v39;
  v41 = *(v36 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v122 - v44;
  v46 = v3[7].i64[1];
  v47 = v2;
  (*(v38 + 16))(v40, v2 + v46, v37, v43);
  if ((*(*&v41 + 48))(v40, 1, v36) == 1)
  {
    (*(v38 + 8))(v40, v37);
    v154.val[0] = v148;
    v154.val[1] = v148;
    v48 = v153;
    vst2q_f64(v48, v154);
    type metadata accessor for TTRTreeViewDropDestination(0, v153);
    return swift_storeEnumTagMultiPayload();
  }

  v49 = v150;
  v50 = v148;
  v148.f64[0] = v41;
  v51 = v40;
  v52 = v50.f64[1];
  (*(*&v41 + 32))(v45, v51, v36);
  *v153 = *v45;
  *&v153[8] = *(v45 + 8);
  v152.i64[0] = *&v50.f64[0];
  v55 = type metadata accessor for TTRICollectionViewDragItemSources(0, *&v50.f64[0], v53, v54);
  v58 = sub_21D76AAEC(v55, *&v50.f64[1], v56, v57);
  v151.i64[0] = v36;
  sub_21D74EB48(&v45[*(v36 + 56)], v35, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v132 = v50.f64[1];
    v83 = v35;
    v84 = v138;
    sub_21D74EAE0(v83, v138, type metadata accessor for TTRAdjustedIndexPath);
    v85 = *(v45 + 1);
    v86 = *(v45 + 2);
    *v153 = *v45;
    *&v153[8] = v85;
    *&v153[16] = v86;
    v87 = v139;
    sub_21D74EB48(v84, v139, type metadata accessor for TTRAdjustedIndexPath);
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v88 = v140;
    sub_21D76ABB8(v87, v55, v140);
    sub_21D74EBB0(v87, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);

    swift_unknownObjectRelease();
    v89 = *(v2 + qword_27CE60FF8 + 8);
    ObjectType = swift_getObjectType();
    v91 = v141;
    (*(v89 + 72))(v88, v58, ObjectType, v89);

    sub_21D74EBB0(v88, type metadata accessor for TTRUnadjustedIndexPath);
    sub_21D74EBB0(v84, type metadata accessor for TTRAdjustedIndexPath);
    (*(*&v148.f64[0] + 8))(v45, v151.i64[0]);
    v92 = v143;
    v93 = v144;
    if ((*(v143 + 48))(v91, 1, v144) != 1)
    {
      v108 = *(v92 + 32);
      v109 = v129;
      v108(v129, v91, v93);
      v108(v49, v109, v93);
      *v153 = v152.i64[0];
      *&v153[8] = v152.i64[0];
      *&v153[16] = v132;
      *&v153[24] = v132;
      type metadata accessor for TTRTreeViewDropDestination(0, v153);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v130 + 8))(v91, v131);
    *v153 = v152.i64[0];
    *&v153[8] = v152.i64[0];
    *&v153[16] = v132;
    *&v153[24] = v132;
LABEL_24:
    type metadata accessor for TTRTreeViewDropDestination(0, v153);
    return swift_storeEnumTagMultiPayload();
  }

  v140 = v58;
  v141 = v45;
  if (EnumCaseMultiPayload != 1)
  {
    v94 = [(int64x2_t *)*(v2 + qword_27CE60F78) proposal];
    v95 = [v94 operation];

    v96 = v147;
    v97 = v148.f64[0];
    if (v95 < 2 || v95 == 3)
    {

      (*(*&v97 + 8))(v141, v151.i64[0]);
    }

    else
    {
      v98 = v151.i64[0];
      if (v95 == 2 && (v99 = [(int64x2_t *)*(v47 + qword_27CE60F78) destinationIndexPath]) != 0)
      {
        v132 = v50.f64[1];
        v100 = v124;
        v101 = v99;
        sub_21DBF5CAC();

        v102 = *(v47 + qword_27CE60FF8 + 8);
        v145 = swift_getObjectType();
        v103 = v136;
        v104 = v146;
        (*(v96 + 16))(v136, v100, v146);
        v105 = v123;
        (*(v102 + 72))(v103, v140, v145, v102);

        sub_21D74EBB0(v103, type metadata accessor for TTRUnadjustedIndexPath);
        (*(v96 + 8))(v100, v104);
        (*(*&v97 + 8))(v141, v98);
        v106 = v143;
        v107 = v144;
        if ((*(v143 + 48))(v105, 1, v144) != 1)
        {
          v120 = *(v106 + 32);
          v121 = v122;
          v120(v122, v105, v107);
          v120(v150, v121, v107);
          *v153 = v152.i64[0];
          *&v153[8] = v152.i64[0];
          *&v153[16] = v132;
          *&v153[24] = v132;
          type metadata accessor for TTRTreeViewDropDestination(0, v153);
          return swift_storeEnumTagMultiPayload();
        }

        (*(v130 + 8))(v105, v131);
        v52 = v132;
      }

      else
      {

        (*(*&v97 + 8))(v141, v98);
      }
    }

    goto LABEL_23;
  }

  v60 = v145;
  sub_21D74EAE0(v35, v145, type metadata accessor for TTRUnadjustedIndexPath);
  v61 = v2;
  v62 = [(int64x2_t *)*(v2 + qword_27CE60F78) destinationIndexPath];
  v63 = v147;
  if (!v62)
  {
    sub_21D74EBB0(v60, type metadata accessor for TTRUnadjustedIndexPath);

    (*(*&v148.f64[0] + 8))(v141, v151.i64[0]);
LABEL_23:
    *v153 = v152.i64[0];
    *&v153[8] = v152.i64[0];
    *&v153[16] = v52;
    *&v153[24] = v52;
    goto LABEL_24;
  }

  v64 = *&v132;
  v65 = v62;
  sub_21DBF5CAC();

  v66 = v142;
  v67 = v146;
  (*(v63 + 32))(v142, v64, v146);
  sub_21D23894C(&qword_280D17150, MEMORY[0x277CC9B18]);
  if ((sub_21DBFA10C() & 1) == 0)
  {
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v68 = sub_21DBF84BC();
    __swift_project_value_buffer(v68, qword_27CE60F60);
    v69 = v125;
    sub_21D74EB48(v60, v125, type metadata accessor for TTRUnadjustedIndexPath);
    v70 = sub_21DBF84AC();
    v71 = sub_21DBFAEBC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v153 = v73;
      *v72 = 136315394;
      swift_beginAccess();
      sub_21D23894C(&qword_27CE59FD0, MEMORY[0x277CC9B38]);
      v132 = v50.f64[1];
      LODWORD(v144) = v71;
      v74 = sub_21DBFC5BC();
      v76 = sub_21D0CDFB4(v74, v75, v153);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = sub_21DBFC5BC();
      v79 = v78;
      sub_21D74EBB0(v69, type metadata accessor for TTRUnadjustedIndexPath);
      v80 = sub_21D0CDFB4(v77, v79, v153);
      v52 = v132;

      *(v72 + 14) = v80;
      _os_log_impl(&dword_21D0C9000, v70, v144, "TTRICollectionViewDropCommitCoordinator: unexpected dropCoordinator.destinationIndexPath {given: %s, expected: %s}", v72, 0x16u);
      swift_arrayDestroy();
      v81 = v73;
      v66 = v142;
      v61 = v47;
      MEMORY[0x223D46520](v81, -1, -1);
      v82 = v72;
      v60 = v145;
      MEMORY[0x223D46520](v82, -1, -1);
    }

    else
    {

      sub_21D74EBB0(v69, type metadata accessor for TTRUnadjustedIndexPath);
    }

    swift_beginAccess();
    (*(v63 + 24))(v66, v60, v67);
  }

  v111 = *(v61 + qword_27CE60FF8 + 8);
  v112 = v60;
  v113 = swift_getObjectType();
  swift_beginAccess();
  v114 = v136;
  (*(v63 + 16))(v136, v66, v67);
  v115 = v134;
  (*(v111 + 64))(v114, v140, v113, v111);

  sub_21D74EBB0(v114, type metadata accessor for TTRUnadjustedIndexPath);
  sub_21D74EBB0(v112, type metadata accessor for TTRUnadjustedIndexPath);
  (*(*&v148.f64[0] + 8))(v141, v151.i64[0]);
  v116 = v133;
  v117 = v135;
  if ((*(v133 + 48))(v115, 1, v135) == 1)
  {
    (*(v127 + 8))(v115, v128);
  }

  else
  {
    v118 = *(v116 + 32);
    v119 = v126;
    v118(v126, v115, v117);
    v118(v150, v119, v117);
  }

  *v153 = v152.i64[0];
  *&v153[8] = v152.i64[0];
  *&v153[16] = v52;
  *&v153[24] = v52;
  type metadata accessor for TTRTreeViewDropDestination(0, v153);
  swift_storeEnumTagMultiPayload();
  return (*(v63 + 8))(v66, v146);
}

uint64_t TTRICollectionViewDropCommitCoordinator.__allocating_init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TTRICollectionViewDropCommitCoordinator.init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *TTRICollectionViewDropCommitCoordinator.init(dropCoordinator:dragAndDropCoordinatorID:dragAndDropProvider:lastDropProposal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  *(v5 + qword_27CE60F78) = a1;
  v11 = qword_27CE61000;
  v12 = sub_21DBF56BC();
  (*(*(v12 - 8) + 32))(v5 + v11, a2, v12);
  v13 = (v5 + qword_27CE60FF8);
  *v13 = a3;
  v13[1] = a4;
  v14 = *(*v5 + 120);
  v19.val[0] = *(v10 + 80);
  v19.val[1] = v19.val[0];
  v15 = v18;
  vst2q_f64(v15, v19);
  type metadata accessor for TTRICollectionViewDropProposal(255, v18);
  v16 = sub_21DBFBA8C();
  (*(*(v16 - 8) + 32))(v5 + v14, a5, v16);
  return v5;
}

void TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = *(*v2 + 80);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(a2, ObjectType, v16);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D31DD48(v11);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE60F60);
    v19 = v34;
    v20 = *(v34 + 16);
    v20(v8, a2, v4);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      v20(v32, v8, v4);
      v25 = sub_21DBFA1AC();
      v27 = v26;
      (*(v19 + 8))(v8, v4);
      v28 = sub_21D0CDFB4(v25, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v21, v22, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v29 = *(v2 + qword_27CE60F78);
    v30 = sub_21DBF5C6C();
    v31 = [v29 dropItem:v33 toItemAtIndexPath:v30];
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
  }
}

void TTRICollectionViewDropCommitCoordinator.drop(_:intoItem:rect:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v41 = a1;
  v12 = *(*v6 + 80);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_21DBF5D5C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v6 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v24 + 32))(a2, ObjectType, v24);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21D31DD48(v19);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE60F60);
    v27 = v42;
    v28 = *(v42 + 16);
    v28(v16, a2, v12);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136315138;
      v28(v40, v16, v12);
      v33 = sub_21DBFA1AC();
      v35 = v34;
      (*(v27 + 8))(v16, v12);
      v36 = sub_21D0CDFB4(v33, v35, &v43);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_21D0C9000, v29, v30, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v16, v12);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    v37 = *(v6 + qword_27CE60F78);
    v38 = sub_21DBF5C6C();
    v39 = [v37 dropItem:v41 intoItemAtIndexPath:v38 rect:{a3, a4, a5, a6}];
    swift_unknownObjectRelease();

    (*(v21 + 8))(v23, v20);
  }
}

Swift::Void __swiftcall TTRICollectionViewDropCommitCoordinator.drop(_:to:)(UIDragItem _, UIDragPreviewTarget to)
{
  v3 = [*(v2 + qword_27CE60F78) dropItem:_.super.isa toTarget:to.super.super.isa];

  swift_unknownObjectRelease();
}

void TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *(*v2 + 80);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + qword_27CE60FF8 + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(a2, ObjectType, v16);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D31DD48(v11);
    if (qword_27CE56C78 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE60F60);
    v19 = v31;
    v20 = *(v31 + 16);
    v20(v8, a2, v4);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v20(v29, v8, v4);
      v25 = sub_21DBFA1AC();
      v27 = v26;
      (*(v19 + 8))(v8, v4);
      v28 = sub_21D0CDFB4(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v21, v22, "TTRICollectionViewDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_21D74D844(v30, v15);
    (*(v13 + 8))(v15, v12);
  }
}