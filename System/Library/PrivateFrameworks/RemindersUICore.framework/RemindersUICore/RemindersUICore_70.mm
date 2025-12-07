uint64_t sub_21D77B3B4()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D77B4F0, 0, 0);
  }

  else
  {
    sub_21D311700(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21D77B4F0()
{
  sub_21D311700(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void TTRInteractorAsyncEditsCommitter.commit(saveRequest:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CE468();
  v6 = sub_21DBFB12C();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_21D77BB54;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D11E5E4;
  v9[3] = &block_descriptor_88;
  v8 = _Block_copy(v9);

  [a1 saveWithQueue:v6 completion:v8];
  _Block_release(v8);
}

void sub_21D77B664(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_21D77B720(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CE468();
  v6 = sub_21DBFB12C();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_21D77BBFC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D11E5E4;
  v9[3] = &block_descriptor_13_3;
  v8 = _Block_copy(v9);

  [a1 saveWithQueue:v6 completion:v8];
  _Block_release(v8);
}

uint64_t sub_21D77B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_21D77B8B4, 0, 0);
}

uint64_t sub_21D77B8B4()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_21D77B9BC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000035, 0x800000021DC46780, sub_21D77BBC0, v2, v7);
}

uint64_t sub_21D77B9BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21D77BAF0;
  }

  else
  {

    v2 = sub_21D77BAD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D77BAF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D77BC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  sub_21D18F47C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_21DBFBCCC();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 16 * result);
    v12 = *(a1 + 36);
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      v23 = *(*(a1 + 48) + 16 * result);
      sub_21D18F47C((v13 > 1), v14 + 1, 1);
      v11 = v23;
      v6 = v26;
      v12 = v24;
      result = v25;
    }

    *(v27 + 16) = v14 + 1;
    v15 = v27 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_21D15746C(result, v12, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_21D15746C(result, v12, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_21D77BE2C(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v6 = *v4;
    v7 = v4[1];

    return v7;
  }

  else
  {
    sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }
}

void *sub_21D77BF18(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
      sub_21D106DF8(v4 + *(v9 + 48), type metadata accessor for TTRRecurrenceRuleModel);
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return MEMORY[0x277D84F90];
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v6 = *v4;
      v7 = v4[1];

      return v7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return MEMORY[0x277D84F90];
}

uint64_t sub_21D77C0B0(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
      sub_21D106DF8(&v4[*(v9 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v6 = *v4;
      v7 = v4[17];

      return v7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return 0;
}

uint64_t sub_21D77C28C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F258);
  v1 = __swift_project_value_buffer(v0, qword_280D0F258);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellTitleEditingState.hasUncommittedEdits.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 32);

  return v4(a1, a2);
}

uint64_t TTRReminderCellTitleEditingState.isEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_21D106DF8(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
  v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_21D106DF8(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106DF8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return v15 & 1;
}

uint64_t TTRReminderCellTitleEditingPresenter.ParentType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderCellTitleEditingPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TTRReminderCellTitleEditingPresenter.delegate.modify(uint64_t *a1))()
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
  return sub_21D2424CC;
}

uint64_t TTRReminderCellTitleEditingPresenter.presenterManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellTitleEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t TTRReminderCellTitleEditingPresenter.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  a1[3] = _s15RemindersUICore12EditingStateVMa_1(0);
  a1[4] = &off_282ED1578;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D105354(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t TTRReminderCellTitleEditingPresenter.isMarkedCommittableForPencil.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  return *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 36));
}

uint64_t TTRReminderCellTitleEditingPresenter.augmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v1 + v6, v5, _s15RemindersUICore12EditingStateVMa_1);
  v7 = &v5[*(v3 + 28)];
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v7 = &v5[*(v3 + 32)];
    v9 = *v7;
    v8 = v7[1];
  }

  v10 = v7[2];
  v11 = v7[3];
  sub_21D24A7C4(v9, v8, v10, v11);
  *a1 = v9;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v11;
  return sub_21D106DF8(v5, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D77CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v19 = a11(a1, a2, a4, a5, a6, a7, a8, a9, a10, v11, ObjectType, a3);

  return v19;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestEndEditing()()
{
  v1 = v0;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F258);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminders List End Editing", 26, 2, v3);

  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v4 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 20)) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestAbortEditing()()
{
  v1 = v0;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F258);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminders List abort editing title", 34, 2, v3);

  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v4 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 20)) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 1;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestHandleBeginEditingTitle(temporarilySuppressAutoCompleteReminder:)(Swift::Bool temporarilySuppressAutoCompleteReminder)
{
  v2 = v1;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v6 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder List begin editing reminder title {item: %@}", 53, 2, v8);

  v9 = sub_21D77D058();
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 40))(ObjectType, v12);
    v15 = [v14 title];

    if (!v15)
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    v17 = swift_getObjectType();
    (*(v16 + 8))(v15, v11, v12, v17, v16);
    sub_21D77D430(v15, temporarilySuppressAutoCompleteReminder);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D77D058()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v1);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5 + 16;
  v7 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v8)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v9);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *v7 = v11;
  v7[1] = v13;
  swift_unknownObjectRelease();
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v14 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v0 + v14, v6, _s15RemindersUICore12EditingStateVMa_1);
    v15 = v1[5];
    if (v6[v15] == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v6[v15] = 1;
      v16 = v1[6];
      v17 = *&v6[v16];
      swift_unknownObjectRetain();

      *&v6[v16] = 0;
      v6[v1[10]] = 0;
      v6[v1[9]] = 0;
      v18 = &v6[v1[7]];
      sub_21D24A814(*v18, *(v18 + 1));
      *v18 = 0u;
      *(v18 + 1) = 0u;
      v19 = &v6[v1[8]];
      sub_21D24A814(*v19, *(v19 + 1));
      *v19 = 0u;
      *(v19 + 1) = 0u;
    }

    sub_21D105354(v0 + v14, v3, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v6, v0 + v14);
    swift_endAccess();
    sub_21D7837F4(v3);
    sub_21D106DF8(v3, _s15RemindersUICore12EditingStateVMa_1);
    sub_21D106DF8(v6, _s15RemindersUICore12EditingStateVMa_1);
  }

  else
  {
    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_280D0F258);

    v22 = sub_21DBF84AC();
    v23 = sub_21DBFAEBC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      v26 = sub_21D25D250();
      v28 = sub_21D0CDFB4(v26, v27, v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v22, v23, "TTRReminderCellTitleEditingPresenter: Could not acquire editing session to begin editing. {item: %s}", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D46520](v25, -1, -1);
      MEMORY[0x223D46520](v24, -1, -1);
    }

    return 0;
  }

  return v8;
}

void sub_21D77D430(void *a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v8 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = sub_21DBF56BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  if (*(&v2->isa + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v75 = v23;
    v76 = v22;
    v79 = a2;
    v80 = v7;
    v24 = *(&v2[1].isa + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
    v69 = &v68 - v20;
    v81 = v2;
    v71 = a1;
    v25 = v21;
    ObjectType = swift_getObjectType();
    v72 = v10;
    v70 = v8;
    v27 = *(v24 + 8);
    swift_unknownObjectRetain();
    v27(ObjectType, v24);
    swift_unknownObjectRelease();
    v77 = v15;
    v28 = *(v15 + 32);
    v29 = v69;
    v78 = v25;
    v73 = v28;
    v74 = v15 + 32;
    v28(v69, v18, v25);
    v30 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v81 + v30, v13, _s15RemindersUICore12EditingStateVMa_1);
    v31 = v71;
    v32 = *(v70 + 24);
    v33 = *&v13[v32];
    v34 = v71;

    *&v13[v32] = v31;
    v35 = v81;
    v36 = v72;
    sub_21D105354(v81 + v30, v72, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v13, v35 + v30);
    swift_endAccess();
    sub_21D7837F4(v36);
    sub_21D106DF8(v36, _s15RemindersUICore12EditingStateVMa_1);
    sub_21D106DF8(v13, _s15RemindersUICore12EditingStateVMa_1);
    v37 = [v34 string];
    v38 = sub_21DBFA16C();
    v71 = v39;
    v72 = v38;

    swift_beginAccess();
    v40 = v29;
    if (!swift_unknownObjectWeakLoadStrong() || (isa = v35[3].isa, v42 = swift_getObjectType(), v43 = (*(isa + 1))(v42, isa), LOBYTE(isa) = v44, swift_unknownObjectRelease(), (isa & 1) != 0))
    {
      v43 = 0x3FF0000000000000;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v70 = v43;
    if (Strong)
    {
      v46 = v35[5].isa;
      v47 = swift_getObjectType();
      (*(v46 + 1))(v47, v46);
      v49 = v48;
      swift_unknownObjectRelease();
      if (v49)
      {
        v50 = objc_opt_self();
        v51 = sub_21DBFA12C();

        v52 = [v50 baseLanguageFromLanguage_];

        v49 = sub_21DBFA16C();
        v54 = v53;

LABEL_17:
        v59 = sub_21DBFA89C();
        v60 = v80;
        (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
        v61 = v76;
        v62 = v77;
        v63 = v40;
        v64 = v78;
        (*(v77 + 16))(v76, v40, v78);
        v65 = (*(v62 + 80) + 88) & ~*(v62 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        *(v66 + 24) = 0;
        *(v66 + 32) = v35;
        *(v66 + 40) = v79 & 1;
        v67 = v71;
        *(v66 + 48) = v72;
        *(v66 + 56) = v67;
        *(v66 + 64) = v49;
        *(v66 + 72) = v54;
        *(v66 + 80) = v70;
        v73(v66 + v65, v61, v64);

        sub_21D3BF99C(0, 0, v60, &unk_21DC27598, v66);

        (*(v62 + 8))(v63, v64);
        return;
      }
    }

    else
    {
      v49 = 0;
    }

    v54 = 0;
    goto LABEL_17;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v55 = sub_21DBF84BC();
  __swift_project_value_buffer(v55, qword_280D0F258);
  v81 = sub_21DBF84AC();
  v56 = sub_21DBFAEBC();
  if (os_log_type_enabled(v81, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_21D0C9000, v81, v56, "Not going to harvest title attributes; missing editingSessionID", v57, 2u);
    MEMORY[0x223D46520](v57, -1, -1);
  }

  v58 = v81;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleEditingTextChange:detail:hasMarkedText:)(NSAttributedString handleTitleEditingTextChange, RemindersUICore::TTRReminderTextChangeDetail_optional *detail, Swift::Bool hasMarkedText)
{
  v4 = v3;
  v70 = hasMarkedText;
  isa = handleTitleEditingTextChange.super.isa;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v6);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v8);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v61 - v11;
  location = detail->value.originalRangeReplaced.location;
  v74 = detail->value.originalText.super.isa;
  v72 = location;
  length = detail->value.originalRangeReplaced.length;
  replacementText = detail->value.replacementText;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  v15 = __swift_project_value_buffer(v14, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v17 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v19 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  v65 = v15;
  sub_21DAEACDC("Reminders List reminder title editing text changed {item: %@}", 61, 2, v19);

  v20 = v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v21 = v74;
  if ((*(v20 + *(v8 + 40)) & 1) == 0)
  {
    if (v74)
    {
      v64 = v6;
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v66 = length;
      sub_21D300ED0(v21, v72, length, replacementText.value._countAndFlagsBits, replacementText.value._object);
      v22 = v21;
      v23 = v21;
      v24 = sub_21DBFB63C();

      if (v24)
      {
        v25 = v66;
        sub_21D300F14(v22);
        length = v25;
      }

      else
      {
        v29 = v68;
        sub_21D105354(v20, v68, _s15RemindersUICore12EditingStateVMa_1);
        *(v29 + *(v8 + 40)) = 1;
        v30 = v67;
        sub_21D105354(v20, v67, _s15RemindersUICore12EditingStateVMa_1);
        swift_beginAccess();
        sub_21D78B068(v29, v20);
        swift_endAccess();
        sub_21D7837F4(v30);
        v31 = v66;
        sub_21D300F14(v22);
        sub_21D106DF8(v30, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v29, _s15RemindersUICore12EditingStateVMa_1);
        length = v31;
      }

      v21 = v22;
    }

    else
    {
      v26 = v68;
      sub_21D105354(v20, v68, _s15RemindersUICore12EditingStateVMa_1);
      *(v26 + *(v8 + 40)) = 1;
      v27 = v67;
      sub_21D105354(v20, v67, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v26, v20);
      swift_endAccess();
      sub_21D7837F4(v27);
      v28 = v27;
      v21 = v74;
      sub_21D106DF8(v28, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v26, _s15RemindersUICore12EditingStateVMa_1);
    }
  }

  if (*(v20 + *(v8 + 40)) == 1)
  {
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v69);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v35 = *(v33 + 72);
        v36 = v33;
        v21 = v74;
        v35(v4, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v36);
        swift_unknownObjectRelease();
      }
    }

    sub_21D106DF8(v69, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

LABEL_17:
  v37 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v37)
  {
    if (v21)
    {
      v65 = v8;
      v38 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      v39 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
      v40 = swift_getObjectType();
      v75 = v21;
      v76 = v72;
      v77 = length;
      v78 = replacementText;
      v41 = length;
      v42 = *(v39 + 16);
      v66 = v41;
      sub_21D300ED0(v21, v72, v41, replacementText.value._countAndFlagsBits, replacementText.value._object);
      swift_unknownObjectRetain();
      v42(v79, isa, &v75, v70, v37, v38, v40, v39);
      v43 = v79[0];
      if (v79[0])
      {
        v69 = v4;
        v44 = v79[8];
        v64 = v79[7];
        v45 = v79[5];
        v63 = v79[6];
        v46 = v79[4];
        v75 = v79[1];
        v76 = v79[2];
        v77 = v79[3];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D77E434(v43, &v75, v44);

        v62 = _s15RemindersUICore12EditingStateVMa_1;
        v47 = v68;
        sub_21D105354(v20, v68, _s15RemindersUICore12EditingStateVMa_1);
        v48 = (v47 + *(v65 + 28));
        v49 = v48[1];
        v65 = *v48;
        v50 = v46;
        v51 = v46;
        v52 = v45;
        v53 = v45;
        v54 = v63;
        v55 = v64;
        sub_21D24A7C4(v51, v53, v63, v64);
        sub_21D24A814(v65, v49);
        *v48 = v50;
        v48[1] = v52;
        v48[2] = v54;
        v48[3] = v55;
        v56 = v67;
        sub_21D105354(v20, v67, v62);
        swift_beginAccess();
        v57 = v68;
        sub_21D78B068(v68, v20);
        swift_endAccess();
        sub_21D7837F4(v56);
        sub_21D300F14(v74);
        sub_21D0CF7E0(v79, &qword_27CE5A628, &unk_21DC0FBE0);
        sub_21D106DF8(v56, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v57, _s15RemindersUICore12EditingStateVMa_1);
      }

      else
      {
        sub_21D300F14(v74);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (!v70)
    {
      sub_21D77D430(isa, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v58 = sub_21DBF84AC();
    v59 = sub_21DBFAEBC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_21D0C9000, v58, v59, "Missing editingSession for title editing", v60, 2u);
      MEMORY[0x223D46520](v60, -1, -1);
    }
  }
}

void sub_21D77E434(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = a3;
    v9 = *(v3 + 24);
    v10 = *(a1 + 16);
    if (v10)
    {
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      v12 = (a1 + 56);
      do
      {
        v13 = *(v12 - 3);
        v14 = *(v12 - 2);
        v16 = *(v12 - 1);
        v15 = *v12;
        sub_21DBF8E0C();
        v11(v3, &protocol witness table for TTRReminderCellTitleEditingPresenter, v13, v14, v16, v15, ObjectType, v9);

        v12 += 4;
        --v10;
      }

      while (v10);
    }

    v6 = v20;
    if (*(v20 + 16))
    {
      v17 = swift_getObjectType();
      v23[0] = v20;
      v23[1] = v19;
      v23[2] = v18;
      (*(v9 + 40))(v3, &protocol witness table for TTRReminderCellTitleEditingPresenter, v23, v17, v9);
    }

    swift_unknownObjectRelease();
    a3 = v21;
  }

  if (*(a1 + 16) || *(v6 + 16))
  {
    sub_21D77D430(a3, 0);
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleBackspace:)(NSAttributedString handleTitleBackspace)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v8 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder List reminder title backspace {item: %@}", 49, 2, v10);

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
    {
      return;
    }

    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v12 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
        swift_beginAccess();
        if ((*(v12 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 40)) & 1) == 0)
        {
          v13 = handleTitleBackspace.super.isa;
          v20 = NSAttributedString.validatedReminderTitle()();
          isa = v20.title.super.isa;
          isValid = v20.isValid;

          if (!isValid)
          {
            v19 = 1;
            sub_21D78B0CC(&v19, 1);
          }
        }
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_14:
      swift_unknownObjectRelease();
      sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Missing editingSession for title editing", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleReturn:setNeedsDisplay:)(NSAttributedString handleTitleReturn, Swift::Bool setNeedsDisplay)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v11 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v12 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder List reminder title return key {item: %@}", 50, 2, v14);

  v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v17 = handleTitleReturn.super.isa;
    v41 = NSAttributedString.validatedReminderTitle()();
    isa = v41.title.super.isa;
    isValid = v41.isValid;

    if (!isValid && *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) != 1)
    {

      *v40 = 1;
      sub_21D78B0CC(v40, 1);
      swift_unknownObjectRelease();
      return;
    }

    sub_21D77ED14(isa, v15, v16, setNeedsDisplay);
    ObjectType = swift_getObjectType();
    v21 = (*(v16 + 128))(v40, ObjectType, v16);
    v23 = v22;
    v24 = v40[0];
    sub_21D77F188(v25, v26);
    if (*(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) == 1 || v24)
    {
      sub_21D77F2A8();
      sub_21D1578FC(v21, v23);
LABEL_9:
      swift_unknownObjectRelease();

      return;
    }

    if (!v21)
    {
      goto LABEL_9;
    }

    v30 = v21;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v3 + 40);
      v32 = swift_getObjectType();
      v33 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey);
      v36 = 0;
      v37 = 0;
      v38 = 1;
      v39 = v33;
      (*(v31 + 48))(v3 + v11, v30, &v36, v32, v31);
      swift_unknownObjectRelease();
      sub_21D0D0E88(v36, v37);
      v34 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      if ((*(*(v34 - 8) + 48))(v8, 1, v34) != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v35 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    }

    sub_21D77F2A8();
LABEL_20:
    sub_21D1578FC(v21, v23);

    swift_unknownObjectRelease();
    sub_21D0CF7E0(v8, &unk_27CE5CD80, &qword_21DC0CE80);
    return;
  }

  v27 = sub_21DBF84AC();
  v28 = sub_21DBFAEBC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_21D0C9000, v27, v28, "Missing editingSession for title editing", v29, 2u);
    MEMORY[0x223D46520](v29, -1, -1);
  }
}

void sub_21D77ED14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A648, &qword_21DC0FE48);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v26 = swift_getObjectType();
  (*(a3 + 32))(aBlock, v26, a3);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(aBlock, v31);
  *(v9 + 32) = (*(v11 + 7))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  aBlock[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A650, &qword_21DC0FE50);
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  sub_21D0D0F1C(&qword_280D178B8, &qword_27CE5A650, &qword_21DC0FE50, MEMORY[0x277D83970]);
  v12 = sub_21DBFA41C();

  v13 = (*(v8 + 48))(a1, a2, a3, v12, ObjectType, v8);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 40);
    v15 = swift_getObjectType();
    v16 = (*(v14 + 8))(v15, v14);
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v20 = sub_21DBFA12C();

  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = v13;
  v21[4] = v16;
  v21[5] = v18;
  v21[6] = a2;
  v21[7] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21D79284C;
  *(v22 + 24) = v21;
  v32 = sub_21D0E622C;
  v33 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  v31 = &block_descriptor_25_2;
  v23 = _Block_copy(aBlock);

  v24 = v13;
  swift_unknownObjectRetain();

  [v19 withActionName:v20 block:{v23, 0x800000021DC502D0}];

  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      aBlock[0] = 1;
      (*(a3 + 104))(aBlock, v26, a3);
    }
  }
}

void sub_21D77F188(__n128 a1, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType);
  if (v3 > 7)
  {
    goto LABEL_7;
  }

  if (((1 << v3) & 0xEC) != 0)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    if (v3 == 4)
    {
      v4 = 1.0;
      v5 = -2.0;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 1.0;
    v5 = -1.0;
    goto LABEL_8;
  }

  v4 = 0.5;
  v5 = -0.5;
LABEL_8:
  sub_21D783C30(v4, v5);
LABEL_9:
  v6 = (v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v7)
  {
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v9 + 24))(v2, &protocol witness table for TTRReminderCellTitleEditingPresenter, v7, v8, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_21D77F2A8()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  v8 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v9 = *(v8 + v2[7]);
  sub_21D105354(v8, v7, _s15RemindersUICore12EditingStateVMa_1);
  v7[v2[7]] = 0;
  v10 = v2[8];

  *&v7[v10] = 0;
  v7[v2[12]] = 0;
  v7[v2[11]] = 0;
  v11 = &v7[v2[9]];
  sub_21D24A814(*v11, *(v11 + 1));
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v7[v2[10]];
  sub_21D24A814(*v12, *(v12 + 1));
  *v12 = 0u;
  *(v12 + 1) = 0u;
  sub_21D105354(v8, v4, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v7, v8);
  swift_endAccess();
  sub_21D7837F4(v4);
  sub_21D106DF8(v4, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
  if (v9 == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 16))(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t TTRReminderCellTitleEditingPresenter.request(handlePaste:)(unint64_t *a1)
{
  v2 = v1;
  v78 = sub_21DBF4CAC();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  LODWORD(v8) = *(a1 + 16);
  if (qword_280D17EE8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "pasteboardItem");
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 47) = -18;
  v83 = v7;
  v84 = v6;
  LODWORD(v77) = v8;
  v85 = v8;
  v11 = TTRManagedPasteboardItem.description.getter();
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 72) = v12;
  *(inited + 80) = 1835365481;
  *(inited + 88) = 0xE400000000000000;
  v71 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v14 = sub_21D25D250();
  *(inited + 120) = v12;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  v16 = sub_21D17716C(inited);
  v79 = v2;
  v17 = v16;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0, &qword_21DC0F190);
  swift_arrayDestroy();
  sub_21DAEACDC("Reminder List paste {pasteboardItem: %@} into {item: %@}", 56, 2, v17);
  v18 = v79;

  v19 = *(v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
  v21 = v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v22 = *(v21 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
  v75 = v19;
  v70 = v20;
  if (v22)
  {
    swift_unknownObjectRetain();
    v23 = v22;
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    swift_unknownObjectRetain();
    v23 = [v24 init];
  }

  v83 = v7;
  v84 = v6;
  v85 = v77;
  v25 = v22;
  v74 = v23;
  v26 = [v23 string];
  v27 = sub_21DBFA16C();
  v29 = v28;

  v30 = sub_21D988674(v27, v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v7 = 0;
    v77 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode;
    v8 = v76 + 8;
    v32 = v30 + 40;
    v72 = v31 - 1;
    v76 = MEMORY[0x277D84F90];
    v73 = v30 + 40;
    do
    {
      v6 = (v32 + 16 * v7);
      v2 = v7;
      while (1)
      {
        if (v2 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = v2 + 1;
        v33 = *v6;
        v83 = *(v6 - 1);
        v84 = v33;
        sub_21DBF8E0C();
        sub_21DBF4C5C();
        sub_21D176F0C();
        v34 = sub_21DBFBB3C();
        v36 = v35;
        (*v8)(v5, v78);

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v37 || (*(v79 + v77) & 1) != 0)
        {
          break;
        }

        v6 += 2;
        ++v2;
        if (v31 == v7)
        {
          goto LABEL_24;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v38 = v76;
      }

      else
      {
        v38 = sub_21D210A84(0, *(v76 + 2) + 1, 1, v76);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_21D210A84((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v76 = v38;
      v41 = &v38[16 * v40];
      *(v41 + 4) = v34;
      *(v41 + 5) = v36;
      v32 = v73;
    }

    while (v72 != v2);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v42 = *(v76 + 2);
  if (v42 <= 1)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v76;
  v44 = v75;
  if (!isUniquelyReferenced_nonNull_native || v42 - 1 > *(v76 + 3) >> 1)
  {
    v76 = sub_21D210A84(isUniquelyReferenced_nonNull_native, v42, 1, v76);
    v88 = v76;
  }

  v45 = v79;
  v46 = v70;
  sub_21D5067F4(0, 1, 0);
  v47 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v48 = sub_21DBFA12C();

  v49 = [v47 initWithString_];

  sub_21D77ED14(v49, v44, v46, 1);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(v45 + 24);
    ObjectType = swift_getObjectType();
    (*(v46 + 32))(&v83, ObjectType, v46);
    v52 = v86;
    v53 = v87;
    __swift_project_boxed_opaque_existential_1(&v83, v86);
    v54 = (*(v53 + 40))(v52, v53);
    if (!v54)
    {
      v54 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v55 = v54;
    v56 = swift_getObjectType();
    __swift_destroy_boxed_opaque_existential_0(&v83);
    (*(v50 + 32))(v45, &protocol witness table for TTRReminderCellTitleEditingPresenter, v55, 0, v56, v50);

    swift_unknownObjectRelease();
  }

  v57 = swift_getObjectType();
  v58 = (*(v46 + 128))(&v83, v57, v46);
  v60 = v59;
  v61 = v83;
  sub_21D77F188(v62, v63);
  if (!v58)
  {

    if (!v61)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v64 = v58;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = *(v45 + 40);
    v66 = swift_getObjectType();
    v81 = 0;
    v80 = 0;
    v82 = 1;
    v67 = (*(v65 + 56))(v76, v45 + v71, v64, &v80, v66, v65);
    swift_unknownObjectRelease();
    sub_21D0D0E88(v80, v81);
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
  }

  v69 = *(v67 + 16);

  if (!v69)
  {
    sub_21D77F2A8();
    sub_21D1578FC(v58, v60);
    swift_unknownObjectRelease();

    return 1;
  }

  if (v61)
  {
LABEL_42:
    sub_21D77F2A8();
  }

LABEL_43:
  sub_21D1578FC(v58, v60);

  swift_unknownObjectRelease();
  return 1;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleEscape:)(NSAttributedString handleTitleEscape)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 2)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }
    }

    else
    {
      sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      if ((*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) == 0)
      {
        v7 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
        swift_beginAccess();
        if ((*(v7 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 40)) & 1) == 0)
        {
          v8 = handleTitleEscape.super.isa;
          v19 = NSAttributedString.validatedReminderTitle()();
          isa = v19.title.super.isa;
          isValid = v19.isValid;

          if (!isValid)
          {
            v17 = 1;
            sub_21D78B0CC(&v17, 1);
LABEL_17:
            swift_unknownObjectRelease();
            return;
          }
        }
      }
    }

    TTRReminderCellTitleEditingPresenter.requestEndEditing()();
    goto LABEL_17;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  v16 = sub_21DBF84AC();
  v12 = sub_21DBFAEBC();
  if (os_log_type_enabled(v16, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21D0C9000, v16, v12, "Missing editingSession for title editing", v13, 2u);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  v14 = v16;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleEditingTitleDidEnd:returnWasPressed:)(NSAttributedString handleEditingTitleDidEnd, Swift::Bool returnWasPressed)
{
  v3 = v2;
  isa = handleEditingTitleDidEnd.super.isa;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v13 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminders List end editing reminder title {item: %@}", 52, 2, v15);

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail))
  {
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEAC();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_7:

      return;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Skip editingTitleDidEnd handling because we are committing for showing reminder detail";
LABEL_6:
    _os_log_impl(&dword_21D0C9000, v16, v17, v19, v18, 2u);
    MEMORY[0x223D46520](v18, -1, -1);
    goto LABEL_7;
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v2 + v20, v10, _s15RemindersUICore12EditingStateVMa_1);
  v10[v5[5]] = 0;
  v21 = v5[6];

  *&v10[v21] = 0;
  v10[v5[10]] = 0;
  v10[v5[9]] = 0;
  v22 = &v10[v5[7]];
  sub_21D24A814(*v22, *(v22 + 1));
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v10[v5[8]];
  sub_21D24A814(*v23, *(v23 + 1));
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_21D105354(v2 + v20, v7, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v10, v2 + v20);
  swift_endAccess();
  sub_21D7837F4(v7);
  sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
  if (!returnWasPressed)
  {
    v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
    if (!v24)
    {
      v16 = sub_21DBF84AC();
      v17 = sub_21DBFAEBC();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_7;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Missing editingSession for title editing";
      goto LABEL_6;
    }

    v25 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v26 = isa;
    v33 = NSAttributedString.validatedReminderTitle()();
    v27 = v33.title.super.isa;
    isValid = v33.isValid;

    if (isValid || *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) == 1)
    {
      sub_21D77ED14(v27, v24, v25, 1);
      v32[0] = 0;
      sub_21D78B0CC(v32, 0);
      swift_unknownObjectRelease();
    }

    else
    {

      v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      sub_21D77ED14(v29, v24, v25, 1);

      v32[0] = 4;
      sub_21D78B0CC(v32, 1);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestHandleCurrentTextInputModePrimaryLanguageChange()()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v2 = _s15RemindersUICore12EditingStateVMa_1(0);
  if (*(v1 + *(v2 + 20)) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v3 = *(v1 + *(v2 + 24));
      if (v3)
      {
        v4 = qword_280D17EE8;
        v5 = v3;
        if (v4 != -1)
        {
          swift_once();
        }

        v6 = sub_21DBF84BC();
        __swift_project_value_buffer(v6, qword_280D0F258);
        v7 = sub_21DBF84AC();
        v8 = sub_21DBFAE9C();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_21D0C9000, v7, v8, "Reminders List re-harvest title attributes due to text input mode changes", v9, 2u);
          MEMORY[0x223D46520](v9, -1, -1);
        }

        sub_21D77D430(v5, 0);
      }
    }
  }
}

void TTRReminderCellTitleEditingPresenter.request(applySuggestion:title:)(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(a1, v25);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_21D792C00(v6, v10, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D7809BC(v10, a2);
    sub_21D106DF8(v10, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_21D0CF7E0(v6, &qword_27CE58A78, &qword_21DC09E90);
    sub_21D0CEB98(a1, v25);
    if (swift_dynamicCast())
    {
      v25[0] = v27[0];
      v25[1] = v27[1];
      v26 = v28;
      sub_21D781BC4(v25, a2);
    }

    else
    {
      if (qword_280D17EE8 != -1)
      {
        swift_once();
      }

      v13 = sub_21DBF84BC();
      __swift_project_value_buffer(v13, qword_280D0F258);
      sub_21D1D9BE4(a1, v25);
      v14 = sub_21DBF84AC();
      v15 = sub_21DBFAECC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        sub_21D0CEB98(v25, v27);
        __swift_project_boxed_opaque_existential_1(v27, *(&v28 + 1));
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(v27);
        v23 = DynamicType;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A630, qword_21DC41330);
        v19 = sub_21DBFA1AC();
        v21 = v20;
        sub_21D1D9C40(v25);
        v22 = sub_21D0CDFB4(v19, v21, &v24);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_21D0C9000, v14, v15, "Unknown suggestion {type: %s}", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x223D46520](v17, -1, -1);
        MEMORY[0x223D46520](v16, -1, -1);
      }

      else
      {

        sub_21D1D9C40(v25);
      }
    }
  }
}

void sub_21D7809BC(uint64_t a1, NSObject *a2)
{
  v142 = a2;
  v151 = a1;
  v131 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v131);
  v133 = v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = v125 - v5;
  v6 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v143 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v144 = v7;
  v145 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A0, &unk_21DC27550);
  MEMORY[0x28223BE20](v8 - 8);
  v141 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = v125 - v11;
  v148 = sub_21DBF79FC();
  v140 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v128 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = v125 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC18, &unk_21DC1E050);
  v127 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = v125 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618A8, &unk_21DC27560);
  MEMORY[0x28223BE20](v16 - 8);
  v134 = (v125 - v17);
  v135 = sub_21DBF799C();
  v147 = *(v135 - 8);
  v18 = *(v147 + 64);
  MEMORY[0x28223BE20](v135);
  v126 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v146 = v125 - v20;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v23 = sub_21D25D250();
  v24 = MEMORY[0x277D837D0];
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  *(inited + 72) = v24;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  v150 = v6;
  v26 = *(v6 + 20);
  v27 = sub_21DBF79AC();
  *(inited + 120) = v24;
  *(inited + 96) = v27;
  *(inited + 104) = v28;
  v29 = sub_21D17716C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0, &qword_21DC0F190);
  swift_arrayDestroy();
  sub_21DAEACDC("Reminders List apply suggested attribute {item: %@} from {source: %@}", 69, 2, v29);

  v30 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v30)
  {
    v31 = v2;
    v130 = v26;
    v149 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v32 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    v138 = v30;
    v33 = v151;
    if (v32)
    {
      v34 = v32;
      v35 = v134;
      TTRReminderSuggestedAttribute.AugmentedAttributeType.remSuggestedAttributeType.getter(v134);
      v36 = v147;
      v37 = v135;
      if ((*(v147 + 48))(v35, 1, v135) != 1)
      {
        v134 = *(v36 + 32);
        (v134)(v146, v35, v37);
        if (qword_280D152C0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      sub_21D0CF7E0(v35, &qword_27CE618A8, &unk_21DC27560);
    }

    while (1)
    {
      v47 = TTRReminderSuggestedAttribute.attributeTypeDescription.getter();
      v146 = v48;
      v49 = [*(v33 + *(v150 + 24)) string];
      v50 = sub_21DBFA16C();
      v52 = v51;

      v53 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
      swift_beginAccess();
      v54 = *(v31 + v53);
      v55 = *(v54 + 16);
      v147 = v31;
      v137 = v50;
      if (v55)
      {
        v56 = sub_21D17EC6C(v47, v146, v50, v52);
        v57 = v139;
        if (v58)
        {
          v59 = v56;
          v60 = *(v54 + 56);
          v61 = v52;
          v62 = v47;
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
          v64 = *(v63 - 8);
          v65 = v60 + *(v64 + 72) * v59;
          v30 = v138;
          sub_21D0D3954(v65, v57, &qword_27CE583A8, &unk_21DC09250);
          v66 = v63;
          v47 = v62;
          v52 = v61;
          (*(v64 + 56))(v57, 0, 1, v66);
        }

        else
        {
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
          (*(*(v68 - 8) + 56))(v57, 1, 1, v68);
        }
      }

      else
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
        v57 = v139;
        (*(*(v67 - 8) + 56))(v139, 1, 1, v67);
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
      v70 = *(v69 - 8);
      if ((*(v70 + 48))(v57, 1, v69))
      {
        sub_21D0CF7E0(v57, &qword_27CE583A0, &unk_21DC27550);
        swift_endAccess();
        v71 = *(v69 + 48);
        v72 = v141;
        (*(v140 + 16))(v141, v151 + v130, v148);
        *(v72 + v71) = 1;
        (*(v70 + 56))(v72, 0, 1, v69);
        swift_beginAccess();
        sub_21D17D220(v72, v47, v146, v137, v52);
        swift_endAccess();
      }

      else
      {
        v139 = v47;
        v73 = v140;
        v74 = v128;
        v75 = v148;
        (*(v140 + 16))(v128, v57, v148);
        sub_21D0CF7E0(v57, &qword_27CE583A0, &unk_21DC27550);
        swift_endAccess();
        v76 = *(v73 + 32);
        v136 = v52;
        v77 = v129;
        v76(v129, v74, v75);
        v78 = *(v69 + 48);
        v79 = v141;
        sub_21DBF79CC();
        *(v79 + v78) = 1;
        v30 = v138;
        (*(v70 + 56))(v79, 0, 1, v69);
        swift_beginAccess();
        sub_21D17D220(v79, v139, v146, v137, v136);
        swift_endAccess();
        (*(v73 + 8))(v77, v148);
      }

      ObjectType = swift_getObjectType();
      v81 = *(v149 + 72);
      v141 = ObjectType;
      v81(v156);
      v82 = v142;
      v155 = v142;
      v148 = objc_opt_self();
      v83 = qword_280D1BAA8;
      v142 = v82;
      v33 = v30;
      if (v83 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v84 = sub_21DBFA12C();

      v85 = v145;
      sub_21D105354(v151, v145, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D0D32E4(v156, v154);
      v86 = (*(v143 + 80) + 16) & ~*(v143 + 80);
      v87 = (v144 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 47) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      sub_21D792C00(v85, v90 + v86, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D0D0FD0(v154, v90 + v87);
      v91 = v147;
      *(v90 + v88) = v147;
      v92 = (v90 + v89);
      v34 = v149;
      *v92 = v33;
      v92[1] = v34;
      *(v90 + ((v89 + 23) & 0xFFFFFFFFFFFFFFF8)) = &v155;
      v31 = v91;
      v93 = swift_allocObject();
      *(v93 + 16) = sub_21D792798;
      *(v93 + 24) = v90;
      v146 = v90;
      v152[4] = sub_21D0E6070;
      v153 = v93;
      v152[0] = MEMORY[0x277D85DD0];
      v152[1] = 1107296256;
      v152[2] = sub_21D0E6204;
      v152[3] = &block_descriptor_89;
      v37 = _Block_copy(v152);
      v36 = v153;
      swift_unknownObjectRetain();

      [v148 withActionName:v84 block:v37];

      _Block_release(v37);
      LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

      if ((v85 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_10:
      v125[1] = qword_280D152C8;
      v41 = v127;
      (*(v127 + 104))(v136, *MEMORY[0x277D459A8], v137);
      v42 = v126;
      (*(v36 + 16))(v126, v146, v37);
      v43 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v34;
      (v134)(v44 + v43, v42);
      v45 = v34;
      v46 = v136;
      sub_21DBF832C();

      (*(v41 + 8))(v46, v137);
      (*(v147 + 8))(v146, v37);
      v30 = v138;
    }

    v152[0] = 3;
    (v34)[13](v152, v141, v34);
    v94 = (v151 + *(v150 + 28));
    if (v94[2])
    {
      v95 = v155;
      sub_21D77D430(v95, 0);

      v96 = v155;
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v97 = v96;
      v98 = sub_21DBFB63C();

      if (v98)
      {
        __swift_destroy_boxed_opaque_existential_0(v156);
        swift_unknownObjectRelease();
LABEL_32:
        v38 = v155;

        goto LABEL_33;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v121 = *(v31 + 24);
        v122 = swift_getObjectType();
        v123 = *(v121 + 32);
        v124 = v155;
        v123(v31, &protocol witness table for TTRReminderCellTitleEditingPresenter, v124, 1, v122, v121);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v156);
        goto LABEL_32;
      }
    }

    else
    {
      v100 = *v94;
      v99 = v94[1];
      v101 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24);
      v102 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32);
      __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor), v101);
      v103 = v142;
      v104 = [v142 string];
      v105 = sub_21DBFA16C();
      v107 = v106;

      v108 = v147;
      v109 = (*(v102 + 24))(v100, v99, v105, v107, v101, v102);
      v111 = v110;

      v112 = sub_21D472618(v103, v109, v111);
      v113 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      v114 = v132;
      sub_21D105354(v108 + v113, v132, _s15RemindersUICore12EditingStateVMa_1);
      v115 = v131;
      v116 = v114 + *(v131 + 28);
      sub_21D24A814(*v116, *(v116 + 8));
      *v116 = 0u;
      *(v116 + 16) = 0u;
      v117 = v114 + *(v115 + 32);
      sub_21D24A814(*v117, *(v117 + 8));
      *v117 = 0u;
      *(v117 + 16) = 0u;
      v118 = v133;
      sub_21D105354(v108 + v113, v133, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v114, v108 + v113);
      swift_endAccess();
      sub_21D7837F4(v118);
      sub_21D106DF8(v118, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v114, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D77D430(v112, 0);
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();

        goto LABEL_31;
      }

      v119 = *(v108 + 24);
      v120 = swift_getObjectType();
      (*(v119 + 24))(v108, &protocol witness table for TTRReminderCellTitleEditingPresenter, v109, v111, 0, 0xE000000000000000, v120, v119);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v38 = sub_21DBF84AC();
  v39 = sub_21DBFAEBC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21D0C9000, v38, v39, "Missing editing session for applying attribute suggestions", v40, 2u);
    MEMORY[0x223D46520](v40, -1, -1);
  }

LABEL_33:
}

void sub_21D781BC4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *a1;
  v39 = a1[1];
  v12 = a1[3];
  v38 = a1[2];
  v37 = v12;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  __swift_project_value_buffer(v13, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v15 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  v17 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminders List apply inline hashtag suggestion to title {item: %@}", 66, 2, v17);

  v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v18)
  {
    v36 = v7;
    v19 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v20 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v41 = v11;
    v42 = v39;
    v43 = v38;
    v44 = v37;
    v22 = *(v20 + 24);
    swift_unknownObjectRetain();
    v22(v45, &v41, v40, v18, v19, ObjectType, v20);
    v23 = v45[0];
    if (v45[0])
    {
      v24 = v45[1];
      v25 = v45[3];
      v39 = v45[2];
      v40 = v45[4];
      v26 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      sub_21D105354(v3 + v26, v10, _s15RemindersUICore12EditingStateVMa_1);
      v27 = &v10[*(v5 + 28)];
      sub_21D24A814(*v27, *(v27 + 1));
      *v27 = 0u;
      *(v27 + 1) = 0u;
      v28 = &v10[*(v5 + 32)];
      sub_21D24A814(*v28, *(v28 + 1));
      *v28 = 0u;
      *(v28 + 1) = 0u;
      v29 = v36;
      sub_21D105354(v3 + v26, v36, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v10, v3 + v26);
      swift_endAccess();
      sub_21D7837F4(v29);
      sub_21D106DF8(v29, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
      v30 = v39;
      v41 = v24;
      v42 = v39;
      v43 = v25;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v31 = v40;
      sub_21D77E434(v23, &v41, v40);
      swift_unknownObjectRelease();
      sub_21D300E70(v23, v24, v30, v25, v31);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAEBC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Missing editing session for applying inline hashtag suggestion", v34, 2u);
      MEMORY[0x223D46520](v34, -1, -1);
    }
  }
}

Swift::String_optional __swiftcall TTRReminderCellTitleEditingPresenter.requestAdoptForeignHashtag(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  v3 = v2;
  length = in.length;
  location = in.location;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v9 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminders List adopt foreign hashtag in title {item: %@}", 56, 2, v11);

  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v14 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    swift_unknownObjectRetain();
    v17 = v16(location, length, title.super.isa, v12, v13, ObjectType, v14);
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = v17;
  v21 = v19;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestConvertTextToHashtag(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  v3 = v2;
  v35 = in;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v13 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminders List convert text to hashtag in title {item: %@}", 58, 2, v15);

  v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v16)
  {
    v33 = v5;
    v34 = v7;
    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    isa = title.super.isa;
    v19 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 40);
    swift_unknownObjectRetain();
    v21(v37, v35.location, v35.length, isa, v16, v17, ObjectType, v19);
    v22 = v37[0];
    if (v37[0])
    {
      v23 = v37[1];
      v24 = v37[3];
      v35.location = v37[2];
      v35.length = v37[4];
      v25 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      sub_21D105354(v3 + v25, v10, _s15RemindersUICore12EditingStateVMa_1);
      v26 = v33;
      v27 = &v10[*(v33 + 28)];
      sub_21D24A814(*v27, *(v27 + 1));
      *v27 = 0u;
      *(v27 + 1) = 0u;
      v28 = &v10[*(v26 + 32)];
      sub_21D24A814(*v28, *(v28 + 1));
      *v28 = 0u;
      *(v28 + 1) = 0u;
      v29 = v34;
      sub_21D105354(v3 + v25, v34, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v10, v3 + v25);
      swift_endAccess();
      sub_21D7837F4(v29);
      sub_21D106DF8(v29, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
      location = v35.location;
      v36[0] = v23;
      v36[1] = v35.location;
      v36[2] = v24;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      length = v35.length;
      sub_21D77E434(v22, v36, v35.length);
      swift_unknownObjectRelease();
      sub_21D300E70(v22, v23, location, v24, length);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestPopulateTitleIfEmpty()()
{
  v1 = v0;
  v2 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v8 + v2[5]) == 1)
  {
    v9 = *(v8 + v2[6]);
    if (!v9 || (v10 = v9, v24 = NSAttributedString.validatedReminderTitle()(), isa = v24.title.super.isa, isValid = v24.isValid, v10, isa, !isValid))
    {
      if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
      {
        v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        TTRRemindersListEditingSession.effectiveParentList.getter(ObjectType, v13, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        memset(v22, 0, sizeof(v22));
      }

      _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(v22);
      sub_21D0CF7E0(v22, &qword_27CE59DC0, &qword_21DC0FBF0);
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = sub_21DBFA12C();

      v17 = [v15 initWithString_];

      sub_21D105354(v8, v7, _s15RemindersUICore12EditingStateVMa_1);
      v18 = &v7[v2[7]];
      sub_21D24A814(*v18, *(v18 + 1));
      *v18 = 0u;
      *(v18 + 1) = 0u;
      v19 = &v7[v2[8]];
      sub_21D24A814(*v19, *(v19 + 1));
      *v19 = 0u;
      *(v19 + 1) = 0u;
      sub_21D105354(v8, v4, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v7, v8);
      swift_endAccess();
      sub_21D7837F4(v4);
      sub_21D106DF8(v4, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D77D430(v17, 0);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v1 + 24);
        v21 = swift_getObjectType();
        (*(v20 + 32))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, v17, 0, v21, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestCommitForShowingReminderDetail()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v4 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail;
    *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 1;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v8 = v7(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v5);
      swift_unknownObjectRelease();
      v9 = v8;
      v24 = NSAttributedString.validatedReminderTitle()();
      isa = v24.title.super.isa;
      isValid = v24.isValid;

      if (isValid || (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = 0;
    }

    v15 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v16 = *(v15 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v16)
    {
      v17 = v16;
      v25 = NSAttributedString.validatedReminderTitle()();
      isa = v25.title.super.isa;
      v18 = v25.isValid;

      if (v18 || (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) != 0)
      {
LABEL_17:
        v19 = isa;
        sub_21D77ED14(v19, v1, v3, 1);

LABEL_20:
        v22 = 0;
        sub_21D78B0CC(&v22, 1);
        swift_unknownObjectRelease();

        *(v2 + v4) = 0;
        return;
      }
    }

    v20 = swift_getObjectType();
    v22 = 1;
    (*(v3 + 104))(&v22, v20, v3);
    v19 = 0;
    goto LABEL_20;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F258);
  oslog = sub_21DBF84AC();
  v13 = sub_21DBFAEBC();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v13, "Missing editingSession for title editing", v14, 2u);
    MEMORY[0x223D46520](v14, -1, -1);
  }
}

uint64_t TTRReminderCellTitleEditingPresenter.requestCommitAndCreateNewIfTitleIsNonEmpty(options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v66 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v20 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v23)
  {
    v24 = a1[1];
    v71 = *a1;
    v72 = v8;
    v70 = v24;
    v25 = *(a1 + 16);
    v68 = *(a1 + 17);
    v69 = v25;
    v73 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v74 = a2;
    v26 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v26, v22, _s15RemindersUICore12EditingStateVMa_1);
    v27 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
    v67 = v27;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
    v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v19, v16);
    sub_21D106DF8(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106DF8(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106DF8(v22, _s15RemindersUICore12EditingStateVMa_1);
    if ((v28 & 1) == 0 || (v29 = *(v26 + *(v20 + 24))) == 0)
    {
      if (qword_280D17EE8 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_280D0F258);
      isa = sub_21DBF84AC();
      v34 = sub_21DBFAECC();
      v35 = os_log_type_enabled(isa, v34);
      v32 = v73;
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21D0C9000, isa, v34, "Cannot get title for the item to commit", v36, 2u);
        MEMORY[0x223D46520](v36, -1, -1);
      }

      goto LABEL_10;
    }

    v30 = v29;
    v81 = NSAttributedString.validatedReminderTitle()();
    isa = v81.title.super.isa;
    if (v81.isValid)
    {
      v32 = v73;
      sub_21D77ED14(v81.title.super.isa, v23, v73, 1);

LABEL_10:
      ObjectType = swift_getObjectType();
      v38 = (*(v32 + 128))(v79, ObjectType, v32);
      v73 = v39;
      v40 = v79[0];
      sub_21D77F188(v41, v42);
      v43 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v44 = *(v43 - 8);
      v45 = *(v44 + 56);
      v45(v13, 1, 1, v43);
      if (v38)
      {
        v46 = v38;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v47 = *(v3 + 40);
          v48 = swift_getObjectType();
          v76[0] = v71;
          v76[1] = v70;
          v77 = v69;
          v78 = v68;
          v49 = v75;
          (*(v47 + 48))(v3 + v67, v46, v76, v48, v47);
          swift_unknownObjectRelease();
          sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
        }

        else
        {
          sub_21D0CF7E0(v13, &unk_27CE5CD80, &qword_21DC0CE80);
          v57 = v75;
          v45(v75, 1, 1, v43);
          v49 = v57;
        }

        sub_21D0D523C(v49, v13, &unk_27CE5CD80, &qword_21DC0CE80);
        v58 = v72;
        sub_21D0D3954(v13, v72, &unk_27CE5CD80, &qword_21DC0CE80);
        if ((*(v44 + 48))(v58, 1, v43) == 1)
        {
          sub_21D0CF7E0(v58, &unk_27CE5CD80, &qword_21DC0CE80);
          sub_21D77F2A8();
          sub_21D1578FC(v38, v73);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_21D1578FC(v38, v73);
          sub_21D0CF7E0(v58, &unk_27CE5CD80, &qword_21DC0CE80);
        }
      }

      else
      {
        if (v40)
        {
          sub_21D77F2A8();
        }

        swift_unknownObjectRelease();
      }

      return sub_21D0D523C(v13, v74, &unk_27CE5CD80, &qword_21DC0CE80);
    }

    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v59 = sub_21DBF84BC();
    __swift_project_value_buffer(v59, qword_280D0F258);
    v60 = sub_21DBF84AC();
    v61 = sub_21DBFAE9C();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v74;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_21D0C9000, v60, v61, "Title is empty, reuse it; Not going to create new reminder", v64, 2u);
      MEMORY[0x223D46520](v64, -1, -1);
    }

    swift_unknownObjectRelease();
    v65 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
  }

  else
  {
    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v50 = sub_21DBF84BC();
    __swift_project_value_buffer(v50, qword_280D0F258);
    v51 = sub_21DBF84AC();
    v52 = sub_21DBFAEBC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_21D0C9000, v51, v52, "Missing editingSession for title editing", v53, 2u);
      MEMORY[0x223D46520](v53, -1, -1);
    }

    v54 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v55 = *(*(v54 - 8) + 56);

    return v55(a2, 1, 1, v54);
  }
}

Swift::Bool __swiftcall TTRReminderCellTitleEditingPresenter.requestMarkCommittableForPencil()()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v7 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v7 + v1[5]) == 1)
  {
    v8 = *(v7 + v1[6]);
    if (v8)
    {
      v9 = v8;
      v13 = NSAttributedString.validatedReminderTitle()();
      if (v13.isValid)
      {

LABEL_6:
        sub_21D105354(v7, v6, _s15RemindersUICore12EditingStateVMa_1);
        v6[v1[9]] = 1;
        sub_21D105354(v7, v3, _s15RemindersUICore12EditingStateVMa_1);
        swift_beginAccess();
        sub_21D78B068(v6, v7);
        swift_endAccess();
        sub_21D7837F4(v3);

        sub_21D106DF8(v3, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v6, _s15RemindersUICore12EditingStateVMa_1);
        return 1;
      }

      v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode);

      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

void TTRReminderCellTitleEditingPresenter.requestHandleEditingSessionChangesMadeByEditingComponent(_:)()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v2 = *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v2)
    {
      v3 = v2;
      sub_21D77D430(v3, 0);
    }
  }
}

uint64_t sub_21D783634()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D78369C(uint64_t a1)
{
  sub_21DBFA27C();

  return sub_21DBFA27C();
}

uint64_t sub_21D7836EC(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D783750(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21DBFC64C();
    }
  }

  return result;
}

uint64_t sub_21D7837F4(uint64_t a1)
{
  v2 = v1;
  v4 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v4);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v10 = (a1 + *(v9 + 28));
  v11 = v10[1];
  if (!v11)
  {
    v10 = (a1 + *(v4 + 32));
    v11 = v10[1];
  }

  v13 = v10[2];
  v12 = v10[3];
  v14 = *v10;
  v36 = *v10;
  v37 = v11;
  v38 = v13;
  v39 = v12;
  v15 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v30[0] = v15;
  sub_21D105354(v2 + v15, v8, _s15RemindersUICore12EditingStateVMa_1);
  v16 = &v8[*(v4 + 28)];
  v17 = v16[1];
  v30[1] = a1;
  if (!v17)
  {
    v16 = &v8[*(v4 + 32)];
    v17 = v16[1];
  }

  v18 = v16[2];
  v19 = v16[3];
  v20 = *v16;
  sub_21D24A7C4(v14, v11, v13, v12);
  sub_21D24A7C4(v20, v17, v18, v19);
  sub_21D106DF8(v8, _s15RemindersUICore12EditingStateVMa_1);
  v32 = v20;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v21 = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO16effectivelyEqualySbACSg_AEtFZ_0(&v36, &v32);
  sub_21D301F20(v32, v33);
  sub_21D301F20(v36, v37);
  if ((v21 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v22 + 48))(v2, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v22);
      swift_unknownObjectRelease();
    }
  }

  v24 = sub_21D783AD8() & 1;
  v25 = v31;
  sub_21D105354(v2 + v30[0], v31, _s15RemindersUICore12EditingStateVMa_1);
  v26 = sub_21D783AD8() & 1;
  result = sub_21D106DF8(v25, _s15RemindersUICore12EditingStateVMa_1);
  if (v24 != v26)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v2 + 24);
      v29 = swift_getObjectType();
      (*(v28 + 56))(v2, &protocol witness table for TTRReminderCellTitleEditingPresenter, v29, v28);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_21D783AD8()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
  if (result)
  {
    v6 = [result string];
    v7 = sub_21DBFA16C();
    v9 = v8;

    v14[0] = v7;
    v14[1] = v9;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v10 = sub_21DBFBB3C();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    return (v13 != 0);
  }

  return result;
}

void sub_21D783C30(double a1, double a2)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
  v69 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v65 - v7;
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v80 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B0, &qword_21DC27578);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = (&v65 - v16);
  v17 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
  swift_beginAccess();
  v65 = v17;
  v18 = *(v2 + v17);
  v19 = *(v18 + 64);
  v68 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v66 = v2;
  v77 = (v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  v67 = (v20 + 63) >> 6;
  v72 = "o title {item: %@}";
  v70 = v18;
  sub_21DBF8E0C();
  v23 = 0;
  v71 = xmmword_21DC08D10;
  v79 = v14;
  if (v22)
  {
    while (1)
    {
      v24 = v23;
LABEL_12:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v24 << 6);
      v29 = (*(v70 + 48) + 32 * v28);
      v31 = *v29;
      v30 = v29[1];
      v33 = v29[2];
      v32 = v29[3];
      v34 = v80;
      sub_21D0D3954(*(v70 + 56) + *(v69 + 72) * v28, v80, &qword_27CE583A8, &unk_21DC09250);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8, &unk_21DC27580);
      v36 = *(v35 + 48);
      v37 = v79;
      *v79 = v31;
      *(v37 + 1) = v30;
      v14 = v37;
      *(v37 + 2) = v33;
      *(v37 + 3) = v32;
      sub_21D0D523C(v34, &v37[v36], &qword_27CE583A8, &unk_21DC09250);
      (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v26 = v24;
LABEL_13:
      v38 = v78;
      sub_21D0D523C(v14, v78, &qword_27CE618B0, &qword_21DC27578);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8, &unk_21DC27580);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        break;
      }

      v40 = v38[1];
      v85 = *v38;
      v84 = v40;
      v86 = v38[3];
      v41 = v38 + *(v39 + 48);
      v42 = v76;
      v43 = v41[*(v76 + 48)];
      v44 = sub_21DBF79FC();
      v45 = *(v44 - 8);
      v46 = *(v45 + 32);
      v47 = v74;
      v46(v74, v41, v44);
      v48 = *(v42 + 48);
      v87 = v26;
      v49 = v73;
      v46(v73, v47, v44);
      *(v49 + v48) = v43;
      sub_21D0D32E4(v77, &v89);
      v50 = *(&v90 + 1);
      v51 = v91;
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      v52 = v80;
      sub_21D0D3954(v49, v80, &qword_27CE583A8, &unk_21DC09250);
      LODWORD(v47) = *(v52 + *(v42 + 48));
      v82 = *(v45 + 8);
      v82(v52, v44);
      if (v47)
      {
        v53.n128_f64[0] = a1;
      }

      else
      {
        v53.n128_f64[0] = a2;
      }

      (*(v51 + 32))(v49, v50, v51, v53);
      __swift_destroy_boxed_opaque_existential_0(&v89);
      v83 = sub_21DBF835C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218, &unk_21DC0AFE0);
      inited = swift_initStackObject();
      *(inited + 16) = v71;
      *(inited + 32) = 0x6465747065636361;
      v81 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      sub_21D0D3954(v49, v52, &qword_27CE583A8, &unk_21DC09250);
      *(inited + 48) = sub_21DBFA7AC();
      *(inited + 56) = 0x7475626972747461;
      *(inited + 64) = 0xE900000000000065;
      *(inited + 72) = sub_21DBFA12C();
      *(inited + 80) = 0x656372756F73;
      *(inited + 88) = 0xE600000000000000;
      v55 = v75;
      sub_21D0D3954(v49, v75, &qword_27CE583A8, &unk_21DC09250);
      sub_21DBF79AC();
      v56 = sub_21DBFA12C();

      v57 = v82;
      v82(v55, v44);
      *(inited + 96) = v56;

      v57(v52, v44);
      v14 = v79;
      v58 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
      swift_arrayDestroy();
      MEMORY[0x223D40B00](0xD000000000000027, v72 | 0x8000000000000000, v58, 0, 1);

      sub_21D0CF7E0(v49, &qword_27CE583A8, &unk_21DC09250);
      v23 = v87;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v60 = v66;
    *(v66 + v65) = MEMORY[0x277D84F98];

    if (*(v60 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v61 = *(v60 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v61, v88);
      swift_unknownObjectRelease();
      v89 = v88[0];
      v90 = v88[1];
      v91 = v88[2];
      v63 = v77[3];
      v64 = v77[4];
      __swift_project_boxed_opaque_existential_1(v77, v63);
      (*(v64 + 40))(&v89, v63, v64);
      sub_21D4ECC40(&v89);
    }
  }

  else
  {
LABEL_5:
    if (v67 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v67;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v67)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8, &unk_21DC27580);
        (*(*(v59 - 8) + 56))(v14, 1, 1, v59);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v68 + 8 * v24);
      ++v23;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D78451C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 88) = v15;
  *(v9 + 80) = a1;
  *(v9 + 64) = a9;
  *(v9 + 72) = v14;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  *(v9 + 160) = a6;
  *(v9 + 40) = a5;
  v10 = sub_21DBF56BC();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  *(v9 + 112) = *(v11 + 64);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  *(v9 + 128) = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D784664, 0, 0);
}

uint64_t sub_21D784664()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 44)) & 1) != 0 || (v13 = *(v0 + 136), v14 = *(v0 + 160), sub_21D105354(v1, v13, type metadata accessor for TTRRemindersListViewModel.Item), v15 = TTRRemindersListViewModel.Item.isEligibleForAutoCompleteReminder.getter(), sub_21D106DF8(v13, type metadata accessor for TTRRemindersListViewModel.Item), (v15 & 1) == 0) || (v14)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      v2 = sub_21DBFBD7C();
    }

    else
    {
      v2 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];

    v4 = *(v0 + 128);
    if (v2)
    {
      v5 = *(v0 + 80);
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v8 = sub_21DBFA89C();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_21DBFA84C();

      sub_21DBF8E0C();
      v10 = sub_21DBFA83C();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v3;
      v11[6] = v5;
      v11[7] = v7;
      v11[8] = v6;

      sub_21D3BF99C(0, 0, v4, &unk_21DC275A8, v11);
    }

    else
    {
      v24 = *(v0 + 120);
      v25 = *(v0 + 96);
      v26 = *(v0 + 104);
      v27 = *(v0 + 88);
      v28 = *(v0 + 56);
      v36 = *(v0 + 48);

      v29 = sub_21DBFA89C();
      (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
      v30 = swift_allocObject();
      swift_weakInit();
      (*(v26 + 16))(v24, v27, v25);
      sub_21DBFA84C();
      sub_21DBF8E0C();

      v31 = sub_21DBFA83C();
      v32 = (*(v26 + 80) + 56) & ~*(v26 + 80);
      v33 = swift_allocObject();
      v34 = MEMORY[0x277D85700];
      *(v33 + 2) = v31;
      *(v33 + 3) = v34;
      *(v33 + 4) = v30;
      *(v33 + 5) = v36;
      *(v33 + 6) = v28;
      (*(v26 + 32))(&v33[v32], v24, v25);

      sub_21D1B56F0(0, 0, v4, &unk_21DC275B8, v33);
    }

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v16 = *(v0 + 40);
    v17 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_21D784ACC;
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);

    return sub_21D784F64(v22, v21, v16 + v17, v19, v20);
  }
}

uint64_t sub_21D784ACC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 152) = a1;

    return MEMORY[0x2822009F8](sub_21D784C2C, 0, 0);
  }
}

uint64_t sub_21D784C2C()
{
  v1 = v0[19];
  sub_21DBF8E0C();
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[16];
  if (v2)
  {
    v4 = v0[10];
    v6 = v0[6];
    v5 = v0[7];
    v7 = sub_21DBFA89C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_21DBFA84C();

    sub_21DBF8E0C();
    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v1;
    v10[6] = v4;
    v10[7] = v6;
    v10[8] = v5;

    sub_21D3BF99C(0, 0, v3, &unk_21DC275A8, v10);
  }

  else
  {
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[11];
    v16 = v0[7];
    v25 = v0[6];

    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(v12, v15, v13);
    sub_21DBFA84C();
    sub_21DBF8E0C();

    v19 = sub_21DBFA83C();
    v20 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 2) = v19;
    *(v21 + 3) = v22;
    *(v21 + 4) = v18;
    *(v21 + 5) = v25;
    *(v21 + 6) = v16;
    (*(v14 + 32))(&v21[v20], v12, v13);

    sub_21D1B56F0(0, 0, v3, &unk_21DC275B8, v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21D784F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618C0, &unk_21DC275C8);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for TTRAutoCompleteReminderListScope(0);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D785064, 0, 0);
}

uint64_t sub_21D785064()
{
  v1 = [objc_opt_self() daemonUserDefaults];
  v2 = [v1 enableAutoCompleteReminders];

  if (!v2 || (v3 = v0[10], swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[15] = Strong) == 0))
  {
LABEL_5:

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }

  v5 = *(v3 + 40);
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[7];
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(v9, ObjectType, v5);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v11 = v0[11];
    swift_unknownObjectRelease();
    sub_21D0CF7E0(v11, &qword_27CE618C0, &unk_21DC275C8);
    goto LABEL_5;
  }

  sub_21D792C00(v0[11], v0[14], type metadata accessor for TTRAutoCompleteReminderListScope);
  v21 = (*(v5 + 80) + **(v5 + 80));
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_21D7852FC;
  v16 = v0[14];
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[6];
  v20 = v0[5];

  return v21(v20, v19, v16, v17, v18, ObjectType, v5);
}

uint64_t sub_21D7852FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_21D7854C0;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_21D785424;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21D785424()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  sub_21D106DF8(v1, type metadata accessor for TTRAutoCompleteReminderListScope);
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21D7854C0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  sub_21D106DF8(v1, type metadata accessor for TTRAutoCompleteReminderListScope);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D785554(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 144) = a1;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  sub_21DBFA84C();
  *(v8 + 168) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v8 + 176) = v10;
  *(v8 + 184) = v9;

  return MEMORY[0x2822009F8](sub_21D7855F4, v10, v9);
}

uint64_t sub_21D7855F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;

    v2 = swift_task_alloc();
    *(v0 + 25) = v2;
    *v2 = v0;
    v2[1] = sub_21D785704;
    v3 = v0[18];
    v4 = *(v0 + 17);

    return sub_21D785A7C(v4, v3);
  }

  else
  {

    v6 = *(v0 + 1);

    return v6();
  }
}

uint64_t sub_21D785704(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 184);
  v6 = *(v3 + 176);
  if (v1)
  {
    v7 = sub_21D785A0C;
  }

  else
  {
    v7 = sub_21D785848;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21D785848()
{
  v17 = v0;
  v1 = *(v0 + 192);

  sub_21D0D32E4(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor, v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v4, v0 + 16);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
  }

  (*(v3 + 48))(&v13, *(v0 + 136), *(v0 + 152), *(v0 + 160), *(v0 + 208), v0 + 16, v2, v3);

  sub_21D0CF7E0(v0 + 16, &qword_27CE5D168, &qword_21DC316F0);
  v6 = v14;
  v7 = *(v0 + 192);
  if (v14)
  {
    v9 = v15;
    v8 = v16;
    v10 = v13;
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
    v13 = v10;
    v14 = v6;
    v15 = v9;
    sub_21D7879C0(v7 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, &v13, v8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21D785A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D785A7C(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_21D785AA4, 0, 0);
}

uint64_t sub_21D785AA4()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager);
  *(v0 + 80) = v1;
  if (!v1)
  {
    goto LABEL_89;
  }

  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    goto LABEL_104;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 88) = v3;
  if (!v3)
  {
LABEL_105:
    v5 = MEMORY[0x277D84F98];
    goto LABEL_106;
  }

LABEL_4:

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v6 = &selRef__setContentViewMarginType_;
  while (1)
  {
    v7 = *(v0 + 56);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v4);
    }

    else
    {
      if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v8 = *(v7 + 8 * v4 + 32);
    }

    v9 = v8;
    *(v0 + 96) = v8;
    *(v0 + 104) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v76 = sub_21DBFBD7C();
      *(v0 + 88) = v76;
      if (!v76)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    }

    v10 = [v8 v6[184]];
    if (v10)
    {
      break;
    }

LABEL_6:

LABEL_7:
    v4 = *(v0 + 104);
    if (v4 == *(v0 + 88))
    {

      goto LABEL_106;
    }
  }

  v11 = v10;
  v12 = [v10 imageAttachments];

  sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
  v13 = sub_21DBFA5EC();

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_21DBFBD7C();
    if (!v15)
    {
LABEL_86:

      goto LABEL_7;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_86;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = 2;
    if (!v14)
    {
LABEL_21:
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_25;
    }
  }

  else
  {
    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (sub_21DBFBD7C() < 0)
  {
    goto LABEL_101;
  }

  v17 = sub_21DBFBD7C();
LABEL_25:
  if (v17 < v16)
  {
    goto LABEL_102;
  }

  sub_21DBF8E0C();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      sub_21DBFBF6C();
      v18 = v19;
    }

    while (v16 != v19);
  }

  if (!v14)
  {
    v21 = (2 * v16) | 1;
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  sub_21DBFC3BC();
  v14 = v29;
  v21 = v30;

  if ((v21 & 1) == 0)
  {
LABEL_41:
    v24 = v21 >> 1;
    v26 = (v21 >> 1) - v14;
    if (!__OFSUB__(v21 >> 1, v14))
    {
      goto LABEL_45;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    v5 = sub_21D178858(MEMORY[0x277D84F90]);
LABEL_106:
    v77 = *(v0 + 8);

    return v77(v5);
  }

LABEL_31:
  sub_21DBFC66C();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  v24 = v21 >> 1;
  v25 = __OFSUB__(v21 >> 1, v14);
  v26 = (v21 >> 1) - v14;
  v27 = v25;
  if (!v25)
  {
    if (v23 == v26)
    {
      v28 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v6 = &selRef__setContentViewMarginType_;
      if (v28)
      {
LABEL_56:
        v33 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v28, *(v0 + 64));
        *(v0 + 112) = v33;

        v34 = *(v33 + 2);
        *(v0 + 120) = v34;
        if (v34)
        {
          v35 = 0;
          while (1)
          {
            *(v0 + 136) = v35;
            *(v0 + 144) = v5;
            *(v0 + 128) = v5;
            v36 = *(v0 + 112);
            if (v35 >= *(v36 + 16))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
              goto LABEL_100;
            }

            v37 = v36 + 24 * v35;
            v38 = *(v37 + 32);
            *(v0 + 152) = v38;
            v39 = *(v37 + 40);
            *(v0 + 160) = v39;
            v40 = *(v37 + 48);
            if (!v40)
            {
              break;
            }

            if (v40 != 2)
            {

              v73 = v39;
              v74 = swift_task_alloc();
              *(v0 + 168) = v74;
              *v74 = v0;
              v74[1] = sub_21D7863AC;
              v20 = v0 + 16;

              return MEMORY[0x2821A7870](v20);
            }

            v41 = qword_280D17EE8;
            v42 = v38;
            if (v41 != -1)
            {
              swift_once();
            }

            v43 = sub_21DBF84BC();
            __swift_project_value_buffer(v43, qword_280D0F258);
            v44 = v42;
            v45 = sub_21DBF84AC();
            v46 = sub_21DBFAEBC();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              *v47 = 138412290;
              *(v47 + 4) = v44;
              *v48 = v38;
              _os_log_impl(&dword_21D0C9000, v45, v46, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v47, 0xCu);
              sub_21D0CF7E0(v48, &unk_27CE60070, &unk_21DC09550);
              MEMORY[0x223D46520](v48, -1, -1);
              MEMORY[0x223D46520](v47, -1, -1);
            }

            else
            {

              sub_21D72DB24(v38, v39, 2);
            }

            sub_21D72DB24(v38, v39, 2);
LABEL_60:
            v35 = *(v0 + 136) + 1;
            if (v35 == *(v0 + 120))
            {
              v72 = *(v0 + 96);

              goto LABEL_7;
            }
          }

          v49 = *(v0 + 96);
          v50 = v38;
          v51 = v39;
          v52 = [v49 objectID];
          v53 = v52;
          if (v5[2] && (v54 = sub_21D17E07C(v52), (v55 & 1) != 0))
          {
            v56 = *(v5[7] + 8 * v54);
            sub_21DBF8E0C();
          }

          else
          {
            v56 = MEMORY[0x277D84F90];
          }

          *(v0 + 40) = v56;
          v57 = v50;
          MEMORY[0x223D42D80]();
          if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          v58 = *(v0 + 96);
          sub_21DBFA6CC();
          v59 = *(v0 + 40);
          v60 = [v58 objectID];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 48) = v5;
          v62 = sub_21D17E07C(v60);
          v64 = v5[2];
          v65 = (v63 & 1) == 0;
          v25 = __OFADD__(v64, v65);
          v66 = v64 + v65;
          if (v25)
          {
            goto LABEL_98;
          }

          v67 = v63;
          if (v5[3] >= v66)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = v62;
              sub_21D224FB4();
              v62 = v69;
              v5 = *(v0 + 48);
              if (v67)
              {
LABEL_80:
                *(v5[7] + 8 * v62) = v59;

                sub_21D72DB24(v38, v39, 0);

                goto LABEL_60;
              }

              goto LABEL_82;
            }
          }

          else
          {
            sub_21D21D6DC(v66, isUniquelyReferenced_nonNull_native);
            v62 = sub_21D17E07C(v60);
            if ((v67 & 1) != (v68 & 1))
            {
              sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

              return sub_21DBFC70C();
            }
          }

          v5 = *(v0 + 48);
          if (v67)
          {
            goto LABEL_80;
          }

LABEL_82:
          v5[(v62 >> 6) + 8] |= 1 << v62;
          *(v5[6] + 8 * v62) = v60;
          *(v5[7] + 8 * v62) = v59;
          sub_21D72DB24(v38, v39, 0);
          v70 = v5[2];
          v25 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v25)
          {
            goto LABEL_99;
          }

          v5[2] = v71;
          goto LABEL_60;
        }

        goto LABEL_6;
      }

      v28 = MEMORY[0x277D84F90];
LABEL_55:
      swift_unknownObjectRelease();
      goto LABEL_56;
    }

    v20 = swift_unknownObjectRelease_n();
    if (v27)
    {
      goto LABEL_88;
    }

LABEL_45:
    if (v26)
    {
      if (v26 < 1)
      {
        v28 = MEMORY[0x277D84F90];
        if (v14 == v24)
        {
          goto LABEL_110;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v28 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v28);
        v32 = v20 - 32;
        if (v20 < 32)
        {
          v32 = v20 - 25;
        }

        v28[2] = v26;
        v28[3] = (2 * (v32 >> 3)) | 1;
        if (v14 == v24)
        {
          goto LABEL_110;
        }
      }

      swift_arrayInitWithCopy();
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v6 = &selRef__setContentViewMarginType_;
    goto LABEL_55;
  }

  __break(1u);
LABEL_110:
  __break(1u);
  return MEMORY[0x2821A7870](v20);
}

uint64_t sub_21D7863AC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21D786F80;
  }

  else
  {
    v2 = sub_21D7864C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7864C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 144);
  v3 = [*(v0 + 96) objectID];
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_21D17E07C(v3), (v6 & 1) != 0))
  {
    v7 = *(*(*(v0 + 144) + 56) + 8 * v5);
    sub_21DBF8E0C();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  LOBYTE(v8) = v0 + 16;
  *(v0 + 24) = v7;
  v9 = v1;
  MEMORY[0x223D42D80]();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_118:
    sub_21DBFA63C();
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  sub_21DBFA6CC();
  v12 = *(v0 + 24);
  v13 = [v11 objectID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v10;
  v15 = sub_21D17E07C(v13);
  v17 = *(v10 + 16);
  v18 = (v16 & 1) == 0;
  v47 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v47)
  {
    __break(1u);
LABEL_120:
    v91 = v15;
    sub_21D224FB4();
    v15 = v91;
    goto LABEL_13;
  }

  LOBYTE(v8) = v16;
  if (*(*(v0 + 128) + 24) < v19)
  {
    sub_21D21D6DC(v19, isUniquelyReferenced_nonNull_native);
    v15 = sub_21D17E07C(v13);
    if ((v8 & 1) != (v20 & 1))
    {
LABEL_9:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

      return sub_21DBFC70C();
    }

    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_13:
  v22 = *(v0 + 32);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v92 = v22;
  if (v8)
  {
    *(v22[7] + 8 * v15) = v12;

    sub_21D72DB24(v24, v23, 1);
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    *(v22[6] + 8 * v15) = v13;
    *(v22[7] + 8 * v15) = v12;
    sub_21D72DB24(v24, v23, 1);

    v26 = v92[2];
    v47 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v47)
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      return MEMORY[0x2821A7870](v25);
    }

    v92[2] = v27;
  }

  v28 = &selRef__setContentViewMarginType_;
  while (1)
  {
    v29 = *(v0 + 136) + 1;
    if (v29 == *(v0 + 120))
    {
      break;
    }

LABEL_79:
    *(v0 + 136) = v29;
    *(v0 + 144) = v92;
    *(v0 + 128) = v92;
    v55 = *(v0 + 112);
    if (v29 >= *(v55 + 16))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v56 = v55 + 24 * v29;
    v57 = *(v56 + 32);
    *(v0 + 152) = v57;
    v58 = *(v56 + 40);
    *(v0 + 160) = v58;
    v59 = *(v56 + 48);
    if (v59 == 2)
    {
      v60 = qword_280D17EE8;
      v61 = v57;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = sub_21DBF84BC();
      __swift_project_value_buffer(v62, qword_280D0F258);
      v63 = v61;
      v64 = sub_21DBF84AC();
      v9 = sub_21DBFAEBC();
      if (os_log_type_enabled(v64, v9))
      {
        v8 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v63;
        *v65 = v57;
        _os_log_impl(&dword_21D0C9000, v64, v9, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v8, 0xCu);
        sub_21D0CF7E0(v65, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v65, -1, -1);
        MEMORY[0x223D46520](v8, -1, -1);
      }

      else
      {

        sub_21D72DB24(v57, v58, 2);
      }

      sub_21D72DB24(v57, v58, 2);
    }

    else
    {
      if (v59)
      {

        v89 = v58;
        v90 = swift_task_alloc();
        *(v0 + 168) = v90;
        *v90 = v0;
        v90[1] = sub_21D7863AC;
        v25 = v0 + 16;

        return MEMORY[0x2821A7870](v25);
      }

      v66 = *(v0 + 96);
      v67 = v57;
      v68 = v58;
      v69 = [v66 objectID];
      v70 = v69;
      if (v92[2] && (v71 = sub_21D17E07C(v69), (v72 & 1) != 0))
      {
        v73 = *(v92[7] + 8 * v71);
        sub_21DBF8E0C();
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      *(v0 + 40) = v73;
      v74 = v67;
      MEMORY[0x223D42D80]();
      if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v75 = *(v0 + 96);
      sub_21DBFA6CC();
      v76 = *(v0 + 40);
      v77 = [v75 objectID];
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 48) = v92;
      v25 = sub_21D17E07C(v77);
      v79 = v92[2];
      v80 = (v78 & 1) == 0;
      v47 = __OFADD__(v79, v80);
      v81 = v79 + v80;
      if (v47)
      {
        goto LABEL_122;
      }

      v9 = v78;
      if (v92[3] >= v81)
      {
        if ((v8 & 1) == 0)
        {
          LOBYTE(v8) = v0 + 16;
          v87 = v25;
          sub_21D224FB4();
          v83 = v0 + 16;
          v25 = v87;
          goto LABEL_100;
        }
      }

      else
      {
        sub_21D21D6DC(v81, v8);
        v25 = sub_21D17E07C(v77);
        if ((v9 & 1) != (v82 & 1))
        {
          goto LABEL_9;
        }
      }

      v83 = v0 + 16;
LABEL_100:
      v84 = *(v83 + 32);
      v92 = v84;
      if (v9)
      {
        *(v84[7] + 8 * v25) = v76;

        sub_21D72DB24(v57, v58, 0);
      }

      else
      {
        v84[(v25 >> 6) + 8] |= 1 << v25;
        *(v84[6] + 8 * v25) = v77;
        *(v84[7] + 8 * v25) = v76;
        sub_21D72DB24(v57, v58, 0);
        v85 = v92[2];
        v47 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v47)
        {
          goto LABEL_123;
        }

        v92[2] = v86;
      }
    }
  }

  v30 = *(v0 + 96);

  while (1)
  {
    v31 = *(v0 + 104);
    if (v31 == *(v0 + 88))
    {
      break;
    }

    v32 = *(v0 + 56);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x223D44740](*(v0 + 104));
    }

    else
    {
      if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v33 = *(v32 + 8 * v31 + 32);
    }

    v34 = v33;
    *(v0 + 96) = v33;
    *(v0 + 104) = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v35 = [v33 v28[184]];
    if (v35)
    {
      v36 = v35;
      v9 = [v35 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
      v37 = sub_21DBFA5EC();

      v38 = v37 >> 62;
      if (v37 >> 62)
      {
        v39 = sub_21DBFBD7C();
        if (v39)
        {
LABEL_30:
          if ((v39 & 0x8000000000000000) != 0)
          {
            v9 = 2;
            if (!v38)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v39 >= 2)
            {
              v9 = 2;
            }

            else
            {
              v9 = v39;
            }

            if (!v38)
            {
LABEL_35:
              v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_42;
            }
          }

          if (v37 < 0)
          {
            LOBYTE(v8) = v37;
          }

          else
          {
            LOBYTE(v8) = v37 & 0xF8;
          }

          if (sub_21DBFBD7C() < 0)
          {
            goto LABEL_112;
          }

          v40 = sub_21DBFBD7C();
LABEL_42:
          if (v40 < v9)
          {
            goto LABEL_113;
          }

          sub_21DBF8E0C();
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = 0;
            do
            {
              v42 = v41 + 1;
              sub_21DBFBF6C();
              v41 = v42;
            }

            while (v9 != v42);
          }

          if (v38)
          {
            sub_21DBFC3BC();
            LOBYTE(v8) = v49;
            v38 = v50;
            v43 = v51;

            if ((v43 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_48:
            v93 = v8;
            LOBYTE(v8) = sub_21DBFC66C();
            swift_unknownObjectRetain_n();
            v44 = swift_dynamicCastClass();
            if (!v44)
            {
              swift_unknownObjectRelease();
              v44 = MEMORY[0x277D84F90];
            }

            v45 = *(v44 + 16);

            v46 = v43 >> 1;
            v47 = __OFSUB__(v43 >> 1, v38);
            v48 = (v43 >> 1) - v38;
            v9 = v47;
            if (v47)
            {
              goto LABEL_116;
            }

            if (v45 != v48)
            {
              v25 = swift_unknownObjectRelease_n();
              v28 = &selRef__setContentViewMarginType_;
              LOBYTE(v8) = v93;
              if (v9)
              {
                goto LABEL_115;
              }

              goto LABEL_62;
            }

            v9 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v28 = &selRef__setContentViewMarginType_;
            if (v9)
            {
              goto LABEL_72;
            }
          }

          else
          {
            LOBYTE(v8) = (v37 & 0xF8) + 32;
            v43 = (2 * v9) | 1;
            if (v43)
            {
              goto LABEL_48;
            }

LABEL_58:
            v46 = v43 >> 1;
            v48 = (v43 >> 1) - v38;
            v9 = __OFSUB__(v43 >> 1, v38);
            if (v9)
            {
              goto LABEL_115;
            }

LABEL_62:
            if (v48)
            {
              if (v48 < 1)
              {
                v9 = MEMORY[0x277D84F90];
                if (v38 == v46)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
                v9 = swift_allocObject();
                v25 = _swift_stdlib_malloc_size(v9);
                v52 = v25 - 32;
                if (v25 < 32)
                {
                  v52 = v25 - 25;
                }

                *(v9 + 16) = v48;
                *(v9 + 24) = (2 * (v52 >> 3)) | 1;
                if (v38 == v46)
                {
                  goto LABEL_124;
                }
              }

              swift_arrayInitWithCopy();
LABEL_71:
              swift_unknownObjectRelease();
LABEL_72:
              v53 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v9, *(v0 + 64));
              *(v0 + 112) = v53;

              v54 = *(v53 + 2);
              *(v0 + 120) = v54;
              if (v54)
              {
                v29 = 0;
                goto LABEL_79;
              }

              goto LABEL_20;
            }
          }

          v9 = MEMORY[0x277D84F90];
          goto LABEL_71;
        }
      }

      else
      {
        v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_20:
    }
  }

  v88 = *(v0 + 8);

  return v88(v92);
}

uint64_t sub_21D786F80()
{
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v88 = sub_21DBF84BC();
  __swift_project_value_buffer(v88, qword_280D0F258);
  v3 = v2;
  v4 = v1;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load pending image for: %@, {error: %@}", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);

    sub_21D72DB24(v10, v9, 1);
  }

  else
  {

    sub_21D72DB24(v10, v9, 1);
  }

  v15 = &selRef__setContentViewMarginType_;
  v89 = *(v0 + 144);
  v16 = *(v0 + 128);
  while (1)
  {
    v17 = *(v0 + 136) + 1;
    if (v17 == *(v0 + 120))
    {
      break;
    }

LABEL_66:
    *(v0 + 136) = v17;
    *(v0 + 144) = v89;
    *(v0 + 128) = v16;
    v49 = *(v0 + 112);
    if (v17 >= *(v49 + 16))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

      return sub_21DBFC70C();
    }

    v50 = v49 + 24 * v17;
    v51 = *(v50 + 32);
    *(v0 + 152) = v51;
    v52 = *(v50 + 40);
    *(v0 + 160) = v52;
    v53 = *(v50 + 48);
    if (v53 == 2)
    {
      v54 = qword_280D17EE8;
      v55 = v51;
      if (v54 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v88, qword_280D0F258);
      v56 = v55;
      v57 = sub_21DBF84AC();
      v58 = sub_21DBFAEBC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v51;
        _os_log_impl(&dword_21D0C9000, v57, v58, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v59, 0xCu);
        sub_21D0CF7E0(v60, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v60, -1, -1);
        MEMORY[0x223D46520](v59, -1, -1);
      }

      else
      {

        sub_21D72DB24(v51, v52, 2);
      }

      sub_21D72DB24(v51, v52, 2);
    }

    else
    {
      if (v53)
      {

        v85 = v52;
        v86 = swift_task_alloc();
        *(v0 + 168) = v86;
        *v86 = v0;
        v86[1] = sub_21D7863AC;
        v33 = v0 + 16;

        return MEMORY[0x2821A7870](v33);
      }

      v61 = *(v0 + 96);
      v62 = v51;
      v63 = v52;
      v64 = [v61 objectID];
      v65 = v64;
      if (v89[2] && (v66 = sub_21D17E07C(v64), (v67 & 1) != 0))
      {
        v68 = *(v89[7] + 8 * v66);
        sub_21DBF8E0C();
      }

      else
      {
        v68 = MEMORY[0x277D84F90];
      }

      *(v0 + 40) = v68;
      v69 = v62;
      MEMORY[0x223D42D80]();
      if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v70 = *(v0 + 96);
      sub_21DBFA6CC();
      v71 = *(v0 + 40);
      v72 = [v70 objectID];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 48) = v16;
      v33 = sub_21D17E07C(v72);
      v75 = v16[2];
      v76 = (v74 & 1) == 0;
      v39 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v39)
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        return MEMORY[0x2821A7870](v33);
      }

      v78 = v74;
      if (v16[3] >= v77)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = v33;
          sub_21D224FB4();
          v33 = v82;
        }
      }

      else
      {
        sub_21D21D6DC(v77, isUniquelyReferenced_nonNull_native);
        v33 = sub_21D17E07C(v72);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_104;
        }
      }

      v16 = *(v0 + 48);
      v89 = v16;
      if (v78)
      {
        *(v16[7] + 8 * v33) = v71;

        sub_21D72DB24(v51, v52, 0);
      }

      else
      {
        v16[(v33 >> 6) + 8] |= 1 << v33;
        *(v16[6] + 8 * v33) = v72;
        *(v16[7] + 8 * v33) = v71;
        sub_21D72DB24(v51, v52, 0);
        v80 = v16[2];
        v39 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v39)
        {
          goto LABEL_108;
        }

        v16[2] = v81;
      }
    }
  }

  v87 = v16;
  v18 = *(v0 + 96);

  while (1)
  {
    v19 = *(v0 + 104);
    if (v19 == *(v0 + 88))
    {
      break;
    }

    v20 = *(v0 + 56);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D44740](*(v0 + 104));
    }

    else
    {
      if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = v21;
    *(v0 + 96) = v21;
    *(v0 + 104) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v23 = [v21 v15[184]];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
      v26 = sub_21DBFA5EC();

      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        v28 = sub_21DBFBD7C();
        if (v28)
        {
LABEL_19:
          if ((v28 & 0x8000000000000000) != 0)
          {
            v29 = 2;
            if (!v27)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v28 >= 2)
            {
              v29 = 2;
            }

            else
            {
              v29 = v28;
            }

            if (!v27)
            {
LABEL_24:
              v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_28;
            }
          }

          if (sub_21DBFBD7C() < 0)
          {
            goto LABEL_98;
          }

          v30 = sub_21DBFBD7C();
LABEL_28:
          if (v30 < v29)
          {
            goto LABEL_99;
          }

          sub_21DBF8E0C();
          if ((v26 & 0xC000000000000001) != 0)
          {
            v31 = 0;
            do
            {
              v32 = v31 + 1;
              sub_21DBFBF6C();
              v31 = v32;
            }

            while (v29 != v32);
          }

          if (v27)
          {
            sub_21DBFC3BC();
            v34 = v43;
            v35 = v44;

            if ((v35 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            sub_21DBFC66C();
            swift_unknownObjectRetain_n();
            v36 = swift_dynamicCastClass();
            if (!v36)
            {
              swift_unknownObjectRelease();
              v36 = MEMORY[0x277D84F90];
            }

            v37 = *(v36 + 16);

            v38 = v35 >> 1;
            v39 = __OFSUB__(v35 >> 1, v34);
            v40 = (v35 >> 1) - v34;
            v41 = v39;
            if (v39)
            {
              goto LABEL_102;
            }

            if (v37 != v40)
            {
              v33 = swift_unknownObjectRelease_n();
              if (v41)
              {
                goto LABEL_101;
              }

              goto LABEL_48;
            }

            v42 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v15 = &selRef__setContentViewMarginType_;
            if (!v42)
            {
              v42 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }
          }

          else
          {
            v34 = 0;
            v35 = (2 * v29) | 1;
            if (v35)
            {
              goto LABEL_34;
            }

LABEL_44:
            v38 = v35 >> 1;
            v39 = __OFSUB__(v35 >> 1, v34);
            v40 = (v35 >> 1) - v34;
            v45 = v39;
            if (v45)
            {
              goto LABEL_101;
            }

LABEL_48:
            if (v40)
            {
              if (v40 < 1)
              {
                v42 = MEMORY[0x277D84F90];
                if (v34 == v38)
                {
                  goto LABEL_109;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
                v42 = swift_allocObject();
                v33 = _swift_stdlib_malloc_size(v42);
                v46 = v33 - 32;
                if (v33 < 32)
                {
                  v46 = v33 - 25;
                }

                v42[2] = v40;
                v42[3] = (2 * (v46 >> 3)) | 1;
                if (v34 == v38)
                {
                  goto LABEL_109;
                }
              }

              swift_arrayInitWithCopy();
            }

            else
            {
              v42 = MEMORY[0x277D84F90];
            }

            v15 = &selRef__setContentViewMarginType_;
LABEL_58:
            swift_unknownObjectRelease();
          }

          v47 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v42, *(v0 + 64));
          *(v0 + 112) = v47;

          v48 = *(v47 + 2);
          *(v0 + 120) = v48;
          if (v48)
          {
            v17 = 0;
            v16 = v87;
            goto LABEL_66;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_9:
    }
  }

  v83 = *(v0 + 8);

  return v83(v89);
}

void sub_21D7879C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v177 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v199 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v168 - v9;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v195 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v186 = &v168 - v13;
  MEMORY[0x28223BE20](v14);
  v185 = &v168 - v15;
  MEMORY[0x28223BE20](v16);
  v184 = &v168 - v17;
  MEMORY[0x28223BE20](v18);
  v179 = &v168 - v19;
  MEMORY[0x28223BE20](v20);
  v178 = &v168 - v21;
  MEMORY[0x28223BE20](v22);
  v183 = &v168 - v23;
  v190 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v190);
  v198 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v175 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v26 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v192 = &v168 - v28;
  MEMORY[0x28223BE20](v29);
  v191 = &v168 - v30;
  v193 = v31;
  MEMORY[0x28223BE20](v32);
  v194 = &v168 - v33;
  v34 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v168 - v38;
  v40 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v40);
  v174 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v168 - v43;
  v45 = a2[1];
  v171 = *a2;
  v176 = v45;
  v170 = a2[2];
  v201 = v3;
  v46 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v172 = v40;
  if (*(v46 + *(v40 + 20)) != 1 || (sub_21D105354(v46, v44, _s15RemindersUICore12EditingStateVMa_1), TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v39), TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v36), v47 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v39, v36), v173 = v44, sub_21D106DF8(v36, type metadata accessor for TTRRemindersListViewModel.ItemID), sub_21D106DF8(v39, type metadata accessor for TTRRemindersListViewModel.ItemID), sub_21D106DF8(v173, _s15RemindersUICore12EditingStateVMa_1), (v47 & 1) == 0))
  {
    if (qword_280D17EE8 != -1)
    {
LABEL_67:
      swift_once();
    }

    v116 = sub_21DBF84BC();
    __swift_project_value_buffer(v116, qword_280D0F258);
    sub_21D105354(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);

    v117 = sub_21DBF84AC();
    v118 = sub_21DBFAEAC();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v202 = v120;
      *v119 = 136315394;
      v121 = sub_21D25D250();
      v123 = v122;
      sub_21D106DF8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v124 = sub_21D0CDFB4(v121, v123, &v202);

      *(v119 + 4) = v124;
      *(v119 + 12) = 2080;
      v125 = v199;
      sub_21D105354(v46, v199, type metadata accessor for TTRRemindersListViewModel.Item);
      v126 = sub_21D25D250();
      v128 = v127;
      sub_21D106DF8(v125, type metadata accessor for TTRRemindersListViewModel.Item);
      v129 = sub_21D0CDFB4(v126, v128, &v202);

      *(v119 + 14) = v129;
      _os_log_impl(&dword_21D0C9000, v117, v118, "Ignoring irrelevant titleAttributesInteractor results {givenItem: %s, editing: %s}", v119, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v120, -1, -1);
      MEMORY[0x223D46520](v119, -1, -1);

      return;
    }

    v130 = type metadata accessor for TTRRemindersListViewModel.Item;
    v131 = v10;
    goto LABEL_62;
  }

  v169 = v46;
  v199 = *(v177 + 16);
  a1 = v194;
  if (!v199)
  {
LABEL_55:
    v132 = sub_21D77BC00(v170);
    sub_21DBF8E0C();
    v133 = sub_21D19F0A4(v132);

    v134 = MEMORY[0x277D84F90];
    if (v199)
    {
      v197 = v133;
      v214 = MEMORY[0x277D84F90];
      sub_21D18EAE4(0, v199, 0);
      v135 = *(v175 + 80);
      v136 = v177 + ((v135 + 32) & ~v135);
      v134 = v214;
      v198 = *(v175 + 72);
      v137 = (v135 + 16) & ~v135;
      do
      {
        v138 = v191;
        sub_21D105354(v136, v191, type metadata accessor for TTRReminderSuggestedAttribute);
        v139 = v192;
        sub_21D105354(v138, v192, type metadata accessor for TTRReminderSuggestedAttribute);
        *(&v203 + 1) = v200;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v202);
        sub_21D105354(v139, boxed_opaque_existential_0, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D106DF8(v138, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v141 = swift_allocObject();
        sub_21D792C00(v26, v141 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v204 = sub_21D792C68;
        *(&v204 + 1) = v141;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v142 = swift_allocObject();
        sub_21D792C00(v26, v142 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v205 = sub_21D792C80;
        *(&v205 + 1) = v142;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v143 = swift_allocObject();
        sub_21D792C00(v26, v143 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v206 = sub_21D792CE8;
        *(&v206 + 1) = v143;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v144 = swift_allocObject();
        sub_21D792C00(v26, v144 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v207 = sub_21D792D00;
        *(&v207 + 1) = v144;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v145 = swift_allocObject();
        sub_21D792C00(v26, v145 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v208 = sub_21D792D64;
        *(&v208 + 1) = v145;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v146 = swift_allocObject();
        sub_21D792C00(v26, v146 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v209 = sub_21D792DE0;
        *(&v209 + 1) = v146;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v147 = swift_allocObject();
        sub_21D792C00(v26, v147 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v210 = sub_21D792E6C;
        *(&v210 + 1) = v147;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v148 = swift_allocObject();
        sub_21D792C00(v26, v148 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v211 = sub_21D792ECC;
        *(&v211 + 1) = v148;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v149 = swift_allocObject();
        sub_21D792C00(v26, v149 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v212 = sub_21D792EE4;
        *(&v212 + 1) = v149;
        sub_21D792C00(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v150 = swift_allocObject();
        sub_21D792C00(v26, v150 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v213 = sub_21D792ECC;
        *(&v213 + 1) = v150;
        v214 = v134;
        v152 = *(v134 + 16);
        v151 = *(v134 + 24);
        if (v152 >= v151 >> 1)
        {
          sub_21D18EAE4((v151 > 1), v152 + 1, 1);
          v134 = v214;
        }

        *(v134 + 16) = v152 + 1;
        v153 = (v134 + 192 * v152);
        v154 = v202;
        v155 = v203;
        v156 = v205;
        v153[4] = v204;
        v153[5] = v156;
        v153[2] = v154;
        v153[3] = v155;
        v157 = v206;
        v158 = v207;
        v159 = v209;
        v153[8] = v208;
        v153[9] = v159;
        v153[6] = v157;
        v153[7] = v158;
        v160 = v210;
        v161 = v211;
        v162 = v213;
        v153[12] = v212;
        v153[13] = v162;
        v153[10] = v160;
        v153[11] = v161;
        v136 += v198;
        --v199;
      }

      while (v199);
      v133 = v197;
    }

    v163 = v169;
    v164 = v173;
    sub_21D105354(v169, v173, _s15RemindersUICore12EditingStateVMa_1);
    v165 = (v164 + *(v172 + 32));
    sub_21D24A814(*v165, v165[1]);
    v166 = v176;
    *v165 = v171;
    v165[1] = v166;
    v165[2] = v133;
    v165[3] = v134;
    v167 = v174;
    sub_21D105354(v163, v174, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v164, v163);
    swift_endAccess();
    sub_21D7837F4(v167);
    sub_21D106DF8(v167, _s15RemindersUICore12EditingStateVMa_1);
    v131 = v164;
    v130 = _s15RemindersUICore12EditingStateVMa_1;
LABEL_62:
    sub_21D106DF8(v131, v130);
    return;
  }

  v48 = v177 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
  v46 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
  v187 = *(v175 + 72);
  v49 = v199;
  while (1)
  {
    sub_21D105354(v48, a1, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D105354(a1, v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v197 = v48;
    v196 = v49;
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0);
          v55 = v198;
          sub_21D106DF8(v198 + *(v54 + 48), type metadata accessor for TTRRecurrenceRuleModel);
          v56 = sub_21DBF509C();
          (*(*(v56 - 8) + 8))(v55, v56);
          v52 = 0xEA00000000006563;
          v53 = 0x6E65727275636572;
        }

        else
        {
          sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          v52 = 0xE700000000000000;
          v53 = 0x65746164657564;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE800000000000000;
        v53 = 0x6E6F697461636F6CLL;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE700000000000000;
        v53 = 0x656C6369686576;
      }

      else
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE400000000000000;
        v53 = 1953720684;
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE300000000000000;
        v53 = 6775156;
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE700000000000000;
        v53 = 0x746361746E6F63;
      }

      else
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE800000000000000;
        v53 = 0x7265646E696D6572;
      }
    }

    else if (EnumCaseMultiPayload == 5)
    {
      sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v52 = 0xE800000000000000;
      v53 = 0x65656E6769737361;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v52 = 0xE400000000000000;
      v53 = 1734437990;
    }

    else
    {
      sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v52 = 0xE800000000000000;
      v53 = 0x797469726F697270;
    }

    v57 = [*(a1 + *(v200 + 24)) string];
    v58 = sub_21DBFA16C();
    v60 = v59;

    v61 = v201;
    swift_beginAccess();
    v62 = *(v61 + v46);
    if (*(v62 + 16))
    {
      v63 = sub_21D17EC6C(v53, v52, v58, v60);
      if (v64)
      {
        v65 = *(v62 + 56);
        v180 = *(v188 + 72);
        v66 = v178;
        v182 = v52;
        v181 = v58;
        sub_21D0D3954(v65 + v180 * v63, v178, &qword_27CE583A8, &unk_21DC09250);
        v67 = v66;
        v68 = v183;
        sub_21D0D523C(v67, v183, &qword_27CE583A8, &unk_21DC09250);
        swift_endAccess();
        a1 = v189;
        v69 = v53;
        v70 = *(v189 + 48);
        v71 = v201;
        v72 = v179;
        sub_21DBF79CC();
        v73 = v68;
        v74 = v184;
        sub_21D0D3954(v73, v184, &qword_27CE583A8, &unk_21DC09250);
        *(v72 + v70) = *(v74 + *(a1 + 48));
        swift_beginAccess();
        v75 = v182;
        sub_21D0D523C(v72, v185, &qword_27CE583A8, &unk_21DC09250);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v214 = *(v71 + v46);
        v77 = v214;
        *(v71 + v46) = 0x8000000000000000;
        v78 = v69;
        v79 = v69;
        v10 = v181;
        v80 = sub_21D17EC6C(v79, v75, v181, v60);
        v82 = v77[2];
        v83 = (v81 & 1) == 0;
        v84 = __OFADD__(v82, v83);
        v85 = v82 + v83;
        if (v84)
        {
          goto LABEL_65;
        }

        v86 = v81;
        if (v77[3] >= v85)
        {
          a1 = v194;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v111 = v80;
            sub_21D223B08();
            v80 = v111;
            if (v86)
            {
              goto LABEL_46;
            }

            goto LABEL_48;
          }
        }

        else
        {
          sub_21D21B694(v85, isUniquelyReferenced_nonNull_native);
          v80 = sub_21D17EC6C(v78, v75, v10, v60);
          a1 = v194;
          if ((v86 & 1) != (v87 & 1))
          {
            break;
          }
        }

        if (v86)
        {
LABEL_46:
          v109 = v80;

          v110 = v214;
          sub_21D793298(v185, v214[7] + v109 * v180);
LABEL_50:
          *(v201 + v46) = v110;

          swift_endAccess();
          sub_21D0CF7E0(v183, &qword_27CE583A8, &unk_21DC09250);
          sub_21D106DF8(a1, type metadata accessor for TTRReminderSuggestedAttribute);
          v115 = sub_21DBF79FC();
          (*(*(v115 - 8) + 8))(v184, v115);
          goto LABEL_7;
        }

LABEL_48:
        v110 = v214;
        v214[(v80 >> 6) + 8] |= 1 << v80;
        v112 = (v110[6] + 32 * v80);
        *v112 = v78;
        v112[1] = v75;
        v112[2] = v10;
        v112[3] = v60;
        sub_21D0D523C(v185, v110[7] + v80 * v180, &qword_27CE583A8, &unk_21DC09250);
        v113 = v110[2];
        v84 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v84)
        {
          goto LABEL_66;
        }

        v110[2] = v114;
        goto LABEL_50;
      }
    }

    swift_endAccess();
    v88 = *(v189 + 48);
    v89 = v53;
    v90 = *(v200 + 20);
    v91 = sub_21DBF79FC();
    v92 = a1 + v90;
    v93 = v186;
    (*(*(v91 - 8) + 16))(v186, v92, v91);
    *(v93 + v88) = 0;
    v94 = v201;
    swift_beginAccess();
    sub_21D0D523C(v93, v195, &qword_27CE583A8, &unk_21DC09250);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *(v94 + v46);
    v95 = v214;
    *(v94 + v46) = 0x8000000000000000;
    v96 = v89;
    v97 = v89;
    v10 = v58;
    v99 = sub_21D17EC6C(v97, v52, v58, v60);
    v100 = v95[2];
    v101 = (v98 & 1) == 0;
    v102 = v100 + v101;
    if (__OFADD__(v100, v101))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v103 = v98;
    if (v95[3] >= v102)
    {
      if ((a1 & 1) == 0)
      {
        sub_21D223B08();
      }

      goto LABEL_41;
    }

    sub_21D21B694(v102, a1);
    v104 = sub_21D17EC6C(v96, v52, v10, v60);
    if ((v103 & 1) != (v105 & 1))
    {
      break;
    }

    v99 = v104;
LABEL_41:
    a1 = v194;
    if (v103)
    {

      v50 = v214;
      sub_21D793298(v195, v214[7] + *(v188 + 72) * v99);
    }

    else
    {
      v50 = v214;
      v214[(v99 >> 6) + 8] |= 1 << v99;
      v106 = (v50[6] + 32 * v99);
      *v106 = v96;
      v106[1] = v52;
      v106[2] = v10;
      v106[3] = v60;
      sub_21D0D523C(v195, v50[7] + *(v188 + 72) * v99, &qword_27CE583A8, &unk_21DC09250);
      v107 = v50[2];
      v84 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v84)
      {
        goto LABEL_64;
      }

      v50[2] = v108;
    }

    *(v201 + v46) = v50;

    swift_endAccess();
    sub_21D106DF8(a1, type metadata accessor for TTRReminderSuggestedAttribute);
LABEL_7:
    v48 = v197 + v187;
    v49 = v196 - 1;
    if (v196 == 1)
    {
      goto LABEL_55;
    }
  }

  sub_21DBFC70C();
  __break(1u);
}

uint64_t sub_21D7890F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_21DBFA84C();
  v7[10] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D789194, v9, v8);
}

uint64_t sub_21D789194()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21D789240(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double sub_21D789240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v34 = a1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618C8, &qword_21DC275D8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable;
  if (!*&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable])
  {
    v32 = v5;
    v33 = v10;
    v14 = *&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24];
    v15 = *&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor], v14);
    v31 = (*(v15 + 8))(v14, v15);
    v37[0] = v31;
    v30 = [objc_opt_self() mainRunLoop];
    v38 = v30;
    v16 = sub_21DBFBA0C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618D0, &unk_21DC275E0);
    sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
    sub_21D0D0F1C(&qword_280D17990, &qword_27CE618D0, &unk_21DC275E0, MEMORY[0x277CBCD90]);
    sub_21D5A51D8();
    sub_21DBF936C();
    sub_21D0CF7E0(v8, &qword_27CE5A0F0, &qword_21DC0E530);

    sub_21D0D0F1C(&qword_280D179B0, &qword_27CE618C8, &qword_21DC275D8, MEMORY[0x277CBCD60]);
    v17 = sub_21DBF91AC();
    (*(v33 + 8))(v12, v9);
    *&v3[v13] = v17;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v3 + 5);
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 8))(ObjectType, v18);
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = *&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24];
  v24 = *&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor], v23);
  v25 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v24 + 16);

  v27(&v4[v25], v35, v34, v36, v20, v22, sub_21D792BF8, v26, v23, v24);

  return result;
}

double sub_21D7896A4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0, &qword_21DC18ED8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a2, v6, &qword_27CE5D1D0, &qword_21DC18ED8);
  v10 = &v6[*(v4 + 56)];
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_21D792C00(v6, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v17[0] = v12;
  v17[1] = v11;
  v17[2] = v13;
  sub_21D7879C0(v9, v17, v14);

  sub_21D106DF8(v9, type metadata accessor for TTRRemindersListViewModel.Item);

  return result;
}

double sub_21D789814@<D0>(_OWORD *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v4, a2);
      swift_unknownObjectRelease();
      return result;
    }
  }

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_21D7898C4(unint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void **a6)
{
  v136 = a6;
  v141 = a5;
  v140 = a4;
  v142 = a3;
  v151 = a2;
  v152 = a1;
  v139 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v139);
  v138 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = &v132 - v8;
  v148 = sub_21DBF54CC();
  v135 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v132 - v11;
  v12 = type metadata accessor for TTRUnsavedAttachment(0);
  v144 = *(v12 - 8);
  v145 = v12;
  MEMORY[0x28223BE20](v12);
  v143 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v132 - v17;
  v19 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v149 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRDateChangeType(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21DBF509C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v132 - v30;
  v32 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(v152, v34, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v39 = v149;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        v80 = v26;
        v81 = *(v26 + 32);
        v134 = v28;
        v133 = v25;
        v81(v28, v34, v25);
        sub_21D792C00(v34 + v79, v21, type metadata accessor for TTRRecurrenceRuleModel);
        v82 = v151;
        v83 = v151[3];
        v84 = v151[4];
        __swift_project_boxed_opaque_existential_1(v151, v83);
        v85 = *(v26 + 16);
        v86 = v133;
        v85(v18, v28, v133);
        (*(v80 + 56))(v18, 0, 1, v86);
        TTRRemindersListAttributeEditing.setDueDate(_:)(v18, v83, v84);
        sub_21D0CF7E0(v18, &qword_27CE58D60, &unk_21DC0A690);
        v87 = v82[3];
        v88 = v82[4];
        __swift_project_boxed_opaque_existential_1(v82, v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58970, &qword_21DC27570);
        v89 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_21DC08D00;
        sub_21D105354(v21, v90 + v89, type metadata accessor for TTRRecurrenceRuleModel);
        (*(v88 + 128))(v90, v87, v88);

        sub_21D106DF8(v21, type metadata accessor for TTRRecurrenceRuleModel);
        (*(v80 + 8))(v134, v86);
      }

      else
      {
        v51 = v26;
        v52 = *(v26 + 32);
        v53 = v25;
        v52(v31, v34, v25);
        v54 = v151[3];
        v55 = v151[4];
        __swift_project_boxed_opaque_existential_1(v151, v54);
        v56 = sub_21DBF4EDC();
        [v56 rem_isAllDayDateComponents];

        (*(v51 + 16))(v24, v31, v53);
        swift_storeEnumTagMultiPayload();
        (*(v55 + 8))(v24, v54, v55);
        sub_21D106DF8(v24, type metadata accessor for TTRDateChangeType);
        (*(v51 + 8))(v31, v53);
      }

      return;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v57 = *v34;
      v58 = v142;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v58 + 24);
        ObjectType = swift_getObjectType();
        (*(v59 + 64))(v58, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v59);
        swift_unknownObjectRelease();
      }

      v61 = v151[3];
      v62 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v61);
      v63 = *(v62 + 136);
      v44 = v57;
      v63(v57, v61, v62);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v74 = *v34;
        v75 = swift_getObjectType();
        v76 = v141;
        v77 = v141[7];
        v78 = v74;
        v77(v74, v75, v76);

        return;
      }

      v40 = *v34;
      v41 = v151[3];
      v42 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v41);
      v43 = *(v42 + 144);
      v44 = v40;
      v43(v40, v41, v42);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v64 = *v34;

      v65 = v151[3];
      v66 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v65);
      (*(v66 + 64))(v64, 0, v65, v66);
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v36 = *v34;
      v37 = v151[3];
      v38 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v37);
      (*(v38 + 24))(v36, v37, v38);
    }

    else
    {

      v91 = v151[3];
      v92 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v91);
      v93 = REMReminderPriorityLevelForPriority();
      (*(v92 + 32))(v93, v91, v92);
    }

    return;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v67 = *v34;
    v68 = v151[3];
    v69 = v151[4];
    __swift_project_boxed_opaque_existential_1(v151, v68);
    v70 = [v67 name];
    v71 = sub_21DBFA16C();
    v73 = v72;

    v153 = v71;
    v154 = v73;
    v155 = 0;
    v156 = 0;
    (*(v69 + 80))(&v153, v68, v69);

    sub_21D24B434(v153, v154, v155, v156);
    return;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v45 = *v34;
    sub_21D0D8CF0(0, &unk_27CE626A0, 0x277D445D8);
    v46 = v45;
    v47 = sub_21DBFB4AC();
    if (v47)
    {
      v48 = v47;
      v49 = v151[3];
      v50 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v49);
      (*(v50 + 184))(v48, v49, v50);
    }

    return;
  }

  v44 = *v34;

  v94 = v142;
  v95 = (v142 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  swift_beginAccess();
  v96 = v139;
  if (*(v95 + *(v139 + 44)))
  {
LABEL_21:

    return;
  }

  v97 = [v44 title];
  if (v97)
  {
    v98 = *v136;
    *v136 = v97;
    v99 = v97;

    if (*(v94 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
    {
      v100 = 1;
    }

    else
    {
      v100 = 2;
    }

    v101 = swift_getObjectType();
    v157[0] = v100;
    TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(v99, 0, 0, v157, 0, v101, v141);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v102 = *(v94 + 40);
    v103 = swift_getObjectType();
    LOBYTE(v102) = (*(v102 + 72))(v103, v102);
    swift_unknownObjectRelease();
    if (v102)
    {
      v104 = swift_getObjectType();
      v105 = [v44 list];
      (v141[7])(v105, v104);
    }
  }

  v106 = [v44 notes];
  if (v106)
  {
    v107 = v106;
    v108 = v151[3];
    v109 = v151[4];
    __swift_project_boxed_opaque_existential_1(v151, v108);
    (*(v109 + 48))(v107, v108, v109);
  }

  v110 = [v44 attachmentContext];
  if (v110)
  {
    v111 = v110;
    v112 = [v110 imageAttachments];

    sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
    v113 = sub_21DBFA5EC();

    if (v113 >> 62)
    {
      goto LABEL_58;
    }

    for (i = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v140 = v95;
      v141 = v44;
      v115 = 0;
      v152 = v113 & 0xC000000000000001;
      v149 = v113 & 0xFFFFFFFFFFFFFF8;
      v95 = (v135 + 32);
      v116 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v152)
        {
          v117 = MEMORY[0x223D44740](v115, v113);
        }

        else
        {
          if (v115 >= *(v149 + 16))
          {
            goto LABEL_57;
          }

          v117 = *(v113 + 8 * v115 + 32);
        }

        v118 = v117;
        v119 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        v120 = [v117 fileURL];
        if (v120)
        {
          v96 = i;
          v121 = v147;
          v122 = v120;
          sub_21DBF546C();

          v123 = *v95;
          v124 = v146;
          v125 = v148;
          (*v95)(v146, v121, v148);
          v44 = v143;
          v123(v143, v124, v125);
          swift_storeEnumTagMultiPayload();
          sub_21D792C00(v44, v150, type metadata accessor for TTRUnsavedAttachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_21D213B54(0, v116[2] + 1, 1, v116);
          }

          v127 = v116[2];
          v126 = v116[3];
          if (v127 >= v126 >> 1)
          {
            v116 = sub_21D213B54((v126 > 1), v127 + 1, 1, v116);
          }

          v116[2] = v127 + 1;
          sub_21D792C00(v150, v116 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v127, type metadata accessor for TTRUnsavedAttachment);
          i = v96;
        }

        else
        {
        }

        ++v115;
        if (v119 == i)
        {

          v128 = v151[3];
          v129 = v151[4];
          __swift_project_boxed_opaque_existential_1(v151, v128);
          (*(v129 + 152))(v116, v128, v129);
          v96 = v139;
          v44 = v141;
          v95 = v140;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

LABEL_59:
  }

  v130 = v137;
  sub_21D105354(v95, v137, _s15RemindersUICore12EditingStateVMa_1);
  *(v130 + *(v96 + 44)) = 1;
  v131 = v138;
  sub_21D105354(v95, v138, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v130, v95);
  swift_endAccess();
  sub_21D7837F4(v131);

  sub_21D106DF8(v131, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v130, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t TTRReminderCellTitleEditingPresenter.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D106DF8(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor));

  swift_unknownObjectRelease();

  sub_21D106DF8(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state, _s15RemindersUICore12EditingStateVMa_1);
  return v0;
}

uint64_t TTRReminderCellTitleEditingPresenter.__deallocating_deinit()
{
  TTRReminderCellTitleEditingPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_21D78A98C(uint64_t *a1))()
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
  return sub_21D24BEC0;
}

uint64_t sub_21D78AA20@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  a1[3] = _s15RemindersUICore12EditingStateVMa_1(0);
  a1[4] = &off_282ED1578;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D105354(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D78AAA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v1 + v6, v5, _s15RemindersUICore12EditingStateVMa_1);
  v7 = &v5[*(v3 + 28)];
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v7 = &v5[*(v3 + 32)];
    v9 = *v7;
    v8 = v7[1];
  }

  v10 = v7[2];
  v11 = v7[3];
  sub_21D24A7C4(v9, v8, v10, v11);
  *a1 = v9;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v11;
  return sub_21D106DF8(v5, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D78ABF8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  return *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 36));
}

void sub_21D78ACA4()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v2 = *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v2)
    {
      v3 = v2;
      sub_21D77D430(v3, 0);
    }
  }
}

uint64_t sub_21D78AD7C(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a6;
  *(a10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a10 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v18 = (a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v18 = 0;
  v18[1] = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = MEMORY[0x277D84F98];
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D105354(a1, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v19 = (a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v19 = a2;
  v19[1] = a12;
  sub_21D0D0FD0(a3, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = a4;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = a5;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = v17;
  swift_beginAccess();
  *(a10 + 40) = a8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = a9;

  v20 = a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  sub_21D792C00(a1, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state, type metadata accessor for TTRRemindersListViewModel.Item);
  v21 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v20 + v21[5]) = 0;
  *(v20 + v21[6]) = 0;
  v22 = (v20 + v21[7]);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = (v20 + v21[8]);
  *v23 = 0u;
  v23[1] = 0u;
  *(v20 + v21[9]) = 0;
  *(v20 + v21[10]) = 0;
  *(v20 + v21[11]) = 0;
  return a10;
}

uint64_t sub_21D78AF98(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = swift_allocObject();

  return sub_21D78AD7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22, a11, a12);
}

uint64_t sub_21D78B068(uint64_t a1, uint64_t a2)
{
  v4 = _s15RemindersUICore12EditingStateVMa_1(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21D78B0CC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v5 = *a1;
    v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) == 1)
    {
      v7 = qword_280D17EE8;
      swift_unknownObjectRetain();
      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_280D0F258);
      v9 = sub_21DBF84AC();
      v10 = sub_21DBFAEDC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_21D0C9000, v9, v10, "TTRReminderCellTitleEditingPresenter: skip saving title editing session", v11, 2u);
        MEMORY[0x223D46520](v11, -1, -1);
      }

      v5 |= 2uLL;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    v15 = v5;
    v13.n128_f64[0] = (*(v6 + 112))(&v15, ObjectType, v6);
    sub_21D77F188(v13, v14);
    swift_unknownObjectRelease();
  }

  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  if (v4)
  {

    sub_21D77F2A8();
  }
}

unint64_t sub_21D78B294()
{
  result = qword_27CE618A0;
  if (!qword_27CE618A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellTitleEditingPresenter.ParentType, &type metadata for TTRReminderCellTitleEditingPresenter.ParentType, v0, v1);
    atomic_store(result, &qword_27CE618A0);
  }

  return result;
}

uint64_t sub_21D78B588(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    result = _s15RemindersUICore12EditingStateVMa_1(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double destroy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey()
{

  return result;
}

void *initializeWithCopy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

void *assignWithTake for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

char *sub_21D78B834(char *a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
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

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
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

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v121 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = &a1[v57];
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v112 = *(v59 + 7);
        v117 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v112, v117);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v112;
        v58[64] = v117;
        *(v58 + 65) = *(v59 + 65);
        v66 = v59[120];
        if (v66 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v67 = *(v59 + 9);
          v68 = *(v59 + 12);
          v113 = *(v59 + 11);
          v118 = *(v59 + 10);
          v69 = *(v59 + 13);
          v70 = *(v59 + 14);
          v71 = v66 & 1;
          sub_21D0FB960(v67, v118, v113, v68, v69, v70, v66 & 1);
          *(v58 + 9) = v67;
          *(v58 + 10) = v118;
          *(v58 + 11) = v113;
          *(v58 + 12) = v68;
          *(v58 + 13) = v69;
          *(v58 + 14) = v70;
          v58[120] = v71;
        }

        v6 = v121;
        v58[121] = v59[121];
        goto LABEL_98;
      }

LABEL_95:
      v72 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v72;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v73 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v73;
      v74 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v74;
LABEL_98:
      a1[v56[6]] = *(a2 + v56[6]);
      a1[v56[7]] = *(a2 + v56[7]);
      a1[v56[8]] = *(a2 + v56[8]);
      a1[v56[9]] = *(a2 + v56[9]);
      a1[v56[10]] = *(a2 + v56[10]);
      v75 = v56[11];
      v76 = *(a2 + v75);
      *&a1[v75] = v76;
      v77 = v76;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v78 = v56[5];
    v58 = &a1[v78];
    v59 = a2 + v78;
    v79 = *(a2 + v78 + 8);
    if (v79)
    {
      *v58 = *v59;
      *(v58 + 1) = v79;
      v80 = *(v59 + 2);
      v81 = *(v59 + 3);
      v82 = *(v59 + 4);
      v83 = *(v59 + 5);
      v110 = *(v59 + 6);
      v119 = *(v59 + 7);
      v114 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v110, v119, v114);
      *(v58 + 2) = v80;
      *(v58 + 3) = v81;
      *(v58 + 4) = v82;
      *(v58 + 5) = v83;
      *(v58 + 6) = v110;
      *(v58 + 7) = v119;
      v58[64] = v114;
      *(v58 + 65) = *(v59 + 65);
      v84 = v59[120];
      if (v84 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v115 = *(v59 + 10);
        v120 = *(v59 + 9);
        v85 = *(v59 + 12);
        v111 = *(v59 + 11);
        v86 = *(v59 + 13);
        v87 = *(v59 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v120, v115, v111, v85, v86, v87, v84 & 1);
        *(v58 + 9) = v120;
        *(v58 + 10) = v115;
        *(v58 + 11) = v111;
        *(v58 + 12) = v85;
        *(v58 + 13) = v86;
        *(v58 + 14) = v87;
        v58[120] = v88;
      }

      v58[121] = v59[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v20 = a2[2];
      *(a1 + 2) = v20;
      v21 = v20;
      goto LABEL_129;
    }

    v31 = *a2;
    *a1 = *a2;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v32 = *(v17 + 48);
    v33 = v31;
    if (v32(a2 + v15, 1, v16))
    {
LABEL_28:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v15], a2 + v15, *(*(v27 - 8) + 64));
      goto LABEL_129;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v89 = *(a2 + v15);
      *&a1[v15] = v89;
      v90 = v89;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v17 + 56))(&a1[v15], 0, 1, v16);
      goto LABEL_129;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(&a1[v15], a2 + v15, *(v17 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v91 = sub_21DBF563C();
    (*(*(v91 - 8) + 16))(&a1[v15], a2 + v15, v91);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(a2, 1, v28))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v30 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v39 = *(v28 + 20);
        v40 = sub_21DBF6C1C();
        v116 = *(*(v40 - 8) + 16);
        sub_21DBF8E0C();
        v116(&a1[v39], a2 + v39, v40);
        (*(v29 + 56))(a1, 0, 1, v28);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = &a1[v41];
      v43 = (a2 + v41);
      v44 = v43[1];
      if (v44)
      {
        *v42 = *v43;
        *(v42 + 1) = v44;
        v45 = v43[2];
        *(v42 + 2) = v45;
        sub_21DBF8E0C();
        v46 = v45;
      }

      else
      {
        *v42 = *v43;
        *(v42 + 2) = v43[2];
      }

      goto LABEL_129;
    case 7:
      v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(a2, 1, v34))
      {
        v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v36 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(a1, a2, v48);
        a1[*(v34 + 20)] = *(a2 + *(v34 + 20));
        (*(v35 + 56))(a1, 0, 1, v34);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *&a1[*(v49 + 20)] = *(a2 + *(v49 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      (*(*(v10 - 8) + 16))(&a1[v9], a2 + v9, v10);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
  v92 = v6[6];
  a1[v6[5]] = *(a2 + v6[5]);
  v93 = *(a2 + v92);
  *&a1[v92] = v93;
  v94 = v6[7];
  v95 = &a1[v94];
  v96 = (a2 + v94);
  v97 = *(a2 + v94 + 8);
  v98 = v93;
  if (v97)
  {
    *v95 = *v96;
    *(v95 + 1) = v97;
    v99 = v96[2];
    v100 = v96[3];
    *(v95 + 2) = v99;
    *(v95 + 3) = v100;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v101 = *(v96 + 1);
    *v95 = *v96;
    *(v95 + 1) = v101;
  }

  v102 = v6[8];
  v103 = &a1[v102];
  v104 = (a2 + v102);
  v105 = v104[1];
  if (v105)
  {
    *v103 = *v104;
    *(v103 + 1) = v105;
    v106 = v104[3];
    *(v103 + 2) = v104[2];
    *(v103 + 3) = v106;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v107 = *(v104 + 1);
    *v103 = *v104;
    *(v103 + 1) = v107;
  }

  v108 = v6[10];
  a1[v6[9]] = *(a2 + v6[9]);
  a1[v108] = *(a2 + v108);
  a1[v6[11]] = *(a2 + v6[11]);
  return a1;
}

double sub_21D78CF58(id *a1, int *a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:
  if (*(a1 + a2[7] + 8))
  {
  }

  if (*(a1 + a2[8] + 8))
  {
  }

  return result;
}

void **sub_21D78D3F4(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
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
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
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
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v128 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_90:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = *(a2 + v55 + 8);
          if (v58)
          {
            *v56 = *v57;
            *(v56 + 1) = v58;
            v59 = *(v57 + 2);
            v60 = *(v57 + 3);
            v61 = *(v57 + 4);
            v62 = *(v57 + 5);
            v63 = *(v57 + 6);
            v119 = *(v57 + 7);
            v124 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v59, v60, v61, v62, v63, v119, v124);
            *(v56 + 2) = v59;
            *(v56 + 3) = v60;
            *(v56 + 4) = v61;
            *(v56 + 5) = v62;
            *(v56 + 6) = v63;
            *(v56 + 7) = v119;
            v56[64] = v124;
            *(v56 + 65) = *(v57 + 65);
            v64 = v57[120];
            if (v64 == 255)
            {
              *(v56 + 72) = *(v57 + 72);
              *(v56 + 88) = *(v57 + 88);
              *(v56 + 104) = *(v57 + 104);
              v56[120] = v57[120];
            }

            else
            {
              v120 = *(v57 + 10);
              v125 = *(v57 + 9);
              v65 = *(v57 + 11);
              v66 = *(v57 + 12);
              v67 = *(v57 + 13);
              v68 = *(v57 + 14);
              v69 = v64 & 1;
              sub_21D0FB960(v125, v120, v65, v66, v67, v68, v64 & 1);
              *(v56 + 9) = v125;
              *(v56 + 10) = v120;
              *(v56 + 11) = v65;
              *(v56 + 12) = v66;
              *(v56 + 13) = v67;
              *(v56 + 14) = v68;
              v56[120] = v69;
            }

            a3 = v128;
            v56[121] = v57[121];
          }

          else
          {
            v70 = *(v57 + 5);
            *(v56 + 4) = *(v57 + 4);
            *(v56 + 5) = v70;
            *(v56 + 6) = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            v71 = *(v57 + 1);
            *v56 = *v57;
            *(v56 + 1) = v71;
            v72 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v73 = v54[11];
          v74 = *(a2 + v73);
          *(a1 + v73) = v74;
          v75 = v74;
          goto LABEL_128;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

LABEL_89:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_90;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_90;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v129 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        v76 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v77 = v76[5];
        v78 = a1 + v77;
        v79 = a2 + v77;
        v80 = *(a2 + v77 + 8);
        if (v80)
        {
          *v78 = *v79;
          *(v78 + 1) = v80;
          v81 = *(v79 + 2);
          v82 = *(v79 + 3);
          v83 = *(v79 + 4);
          v84 = *(v79 + 5);
          v85 = *(v79 + 6);
          v126 = *(v79 + 7);
          v121 = v79[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v81, v82, v83, v84, v85, v126, v121);
          *(v78 + 2) = v81;
          *(v78 + 3) = v82;
          *(v78 + 4) = v83;
          *(v78 + 5) = v84;
          *(v78 + 6) = v85;
          *(v78 + 7) = v126;
          v78[64] = v121;
          *(v78 + 65) = *(v79 + 65);
          v86 = v79[120];
          if (v86 == 255)
          {
            *(v78 + 72) = *(v79 + 72);
            *(v78 + 88) = *(v79 + 88);
            *(v78 + 104) = *(v79 + 104);
            v78[120] = v79[120];
          }

          else
          {
            v122 = *(v79 + 10);
            v127 = *(v79 + 9);
            v87 = *(v79 + 11);
            v88 = *(v79 + 12);
            v89 = *(v79 + 13);
            v90 = *(v79 + 14);
            v91 = v86 & 1;
            sub_21D0FB960(v127, v122, v87, v88, v89, v90, v86 & 1);
            *(v78 + 9) = v127;
            *(v78 + 10) = v122;
            *(v78 + 11) = v87;
            *(v78 + 12) = v88;
            *(v78 + 13) = v89;
            *(v78 + 14) = v90;
            v78[120] = v91;
          }

          a3 = v129;
          v78[121] = v79[121];
        }

        else
        {
          v92 = *(v79 + 5);
          *(v78 + 4) = *(v79 + 4);
          *(v78 + 5) = v92;
          *(v78 + 6) = *(v79 + 6);
          *(v78 + 106) = *(v79 + 106);
          v93 = *(v79 + 1);
          *v78 = *v79;
          *(v78 + 1) = v93;
          v94 = *(v79 + 3);
          *(v78 + 2) = *(v79 + 2);
          *(v78 + 3) = v94;
        }

        *(a1 + v76[6]) = *(a2 + v76[6]);
        *(a1 + v76[7]) = *(a2 + v76[7]);
        *(a1 + v76[8]) = *(a2 + v76[8]);
        *(a1 + v76[9]) = *(a2 + v76[9]);
        *(a1 + v76[10]) = *(a2 + v76[10]);
        v95 = v76[11];
        v96 = *(a2 + v95);
        *(a1 + v95) = v96;
        v97 = v96;
        goto LABEL_128;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

LABEL_97:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_98;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_98;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
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
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
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
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v123 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v123(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    v42 = v41[1];
    if (v42)
    {
      *v40 = *v41;
      v40[1] = v42;
      v43 = v41[2];
      v40[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      *v40 = *v41;
      v40[2] = v41[2];
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v101 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v102 = *(a2 + v101);
  *(a1 + v101) = v102;
  v103 = a3[7];
  v104 = (a1 + v103);
  v105 = (a2 + v103);
  v106 = *(a2 + v103 + 8);
  v107 = v102;
  if (v106)
  {
    *v104 = *v105;
    v104[1] = v106;
    v108 = v105[2];
    v109 = v105[3];
    v104[2] = v108;
    v104[3] = v109;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v110 = *(v105 + 1);
    *v104 = *v105;
    *(v104 + 1) = v110;
  }

  v111 = a3[8];
  v112 = (a1 + v111);
  v113 = (a2 + v111);
  v114 = v113[1];
  if (v114)
  {
    *v112 = *v113;
    v112[1] = v114;
    v115 = v113[3];
    v112[2] = v113[2];
    v112[3] = v115;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v116 = *(v113 + 1);
    *v112 = *v113;
    *(v112 + 1) = v116;
  }

  v117 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v117) = *(a2 + v117);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

void **sub_21D78EAC4(void **a1, void **a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D106DF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
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
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
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
        goto LABEL_34;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
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
        v49 = *a2;
        *a1 = *a2;
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
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      if (*(a2 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v114 = *(v57 + 6);
        v123 = *(v57 + 7);
        v118 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v114, v123, v118);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v114;
        *(v56 + 7) = v123;
        v56[64] = v118;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v62 = v57[120];
        if (v62 == 255)
        {
          v73 = *(v57 + 72);
          v74 = *(v57 + 88);
          v75 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v75;
          *(v56 + 88) = v74;
          *(v56 + 72) = v73;
        }

        else
        {
          v119 = *(v57 + 10);
          v124 = *(v57 + 9);
          v63 = *(v57 + 12);
          v115 = *(v57 + 11);
          v64 = *(v57 + 13);
          v65 = *(v57 + 14);
          v66 = v62 & 1;
          sub_21D0FB960(v124, v119, v115, v63, v64, v65, v62 & 1);
          *(v56 + 9) = v124;
          *(v56 + 10) = v119;
          *(v56 + 11) = v115;
          *(v56 + 12) = v63;
          *(v56 + 13) = v64;
          *(v56 + 14) = v65;
          v56[120] = v66;
        }

        v56[121] = v57[121];
        goto LABEL_97;
      }

LABEL_94:
      v67 = *v57;
      v68 = *(v57 + 1);
      v69 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v69;
      *v56 = v67;
      *(v56 + 1) = v68;
      v70 = *(v57 + 4);
      v71 = *(v57 + 5);
      v72 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v71;
      *(v56 + 6) = v72;
      *(v56 + 4) = v70;
LABEL_97:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v76 = v54[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
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
      v52 = *a2;
      *a1 = *a2;
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
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v54[5];
    v56 = a1 + v79;
    v57 = a2 + v79;
    if (*(a2 + v79 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v80 = *(v57 + 2);
      v81 = *(v57 + 3);
      v82 = *(v57 + 4);
      v83 = *(v57 + 5);
      v116 = *(v57 + 6);
      v125 = *(v57 + 7);
      v120 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v116, v125, v120);
      *(v56 + 2) = v80;
      *(v56 + 3) = v81;
      *(v56 + 4) = v82;
      *(v56 + 5) = v83;
      *(v56 + 6) = v116;
      *(v56 + 7) = v125;
      v56[64] = v120;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v84 = v57[120];
      if (v84 == 255)
      {
        v89 = *(v57 + 72);
        v90 = *(v57 + 88);
        v91 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v91;
        *(v56 + 88) = v90;
        *(v56 + 72) = v89;
      }

      else
      {
        v121 = *(v57 + 10);
        v126 = *(v57 + 9);
        v85 = *(v57 + 12);
        v117 = *(v57 + 11);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v126, v121, v117, v85, v86, v87, v84 & 1);
        *(v56 + 9) = v126;
        *(v56 + 10) = v121;
        *(v56 + 11) = v117;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = *(a2 + 10);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
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
      v92 = *(a2 + v13);
      *(a1 + v13) = v92;
      v93 = v92;
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
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v94 = sub_21DBF563C();
    (*(*(v94 - 8) + 16))(a1 + v13, a2 + v13, v94);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v122 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v122(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v40 = (a1 + v39);
    v41 = (a2 + v39);
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
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v95 = a3[6];
  v96 = *(a1 + v95);
  v97 = *(a2 + v95);
  *(a1 + v95) = v97;
  v98 = v97;

  v99 = a3[7];
  v100 = (a1 + v99);
  v101 = (a2 + v99);
  v102 = *(a1 + v99 + 8);
  v103 = *(a2 + v99 + 8);
  if (v102)
  {
    if (v103)
    {
      *v100 = *v101;
      v100[1] = v101[1];
      sub_21DBF8E0C();

      v100[2] = v101[2];
      sub_21DBF8E0C();

      v100[3] = v101[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v100, &qword_27CE5A640, &qword_21DC0FE00);
      v104 = *(v101 + 1);
      *v100 = *v101;
      *(v100 + 1) = v104;
    }
  }

  else if (v103)
  {
    *v100 = *v101;
    v100[1] = v101[1];
    v100[2] = v101[2];
    v100[3] = v101[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v105 = *(v101 + 1);
    *v100 = *v101;
    *(v100 + 1) = v105;
  }

  v106 = a3[8];
  v107 = (a1 + v106);
  v108 = (a2 + v106);
  v109 = *(a1 + v106 + 8);
  v110 = *(a2 + v106 + 8);
  if (v109)
  {
    if (v110)
    {
      *v107 = *v108;
      v107[1] = v108[1];
      sub_21DBF8E0C();

      v107[2] = v108[2];
      sub_21DBF8E0C();

      v107[3] = v108[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v107, &qword_27CE5A640, &qword_21DC0FE00);
      v111 = *(v108 + 1);
      *v107 = *v108;
      *(v107 + 1) = v111;
    }
  }

  else if (v110)
  {
    *v107 = *v108;
    v107[1] = v108[1];
    v107[2] = v108[2];
    v107[3] = v108[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v112 = *(v108 + 1);
    *v107 = *v108;
    *(v107 + 1) = v112;
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

_BYTE *sub_21D790348(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
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
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
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
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
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
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[7];
  v44 = a3[8];
  v45 = &a1[v43];
  v46 = &a2[v43];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v48 = &a1[v44];
  v49 = &a2[v44];
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  v51 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v51] = a2[v51];
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

void *sub_21D791468(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D106DF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
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

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
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

        goto LABEL_33;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(a2 + v14, 1, v15))
      {
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
    }

    else
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

LABEL_33:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
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

LABEL_86:
        memcpy(a1 + v14, a2 + v14, *(v16 + 64));
        goto LABEL_87;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(a2 + v14, 1, v15))
      {
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

        goto LABEL_86;
      }
    }

LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[7];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  if (*(a1 + v44 + 8))
  {
    v47 = v46[1];
    if (v47)
    {
      *v45 = *v46;
      v45[1] = v47;

      v45[2] = v46[2];

      v45[3] = v46[3];

      goto LABEL_94;
    }

    sub_21D0CF7E0(v45, &qword_27CE5A640, &qword_21DC0FE00);
  }

  v48 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v48;
LABEL_94:
  v49 = a3[8];
  v50 = a1 + v49;
  v51 = a2 + v49;
  if (!*(a1 + v49 + 8))
  {
LABEL_98:
    v53 = *(v51 + 1);
    *v50 = *v51;
    *(v50 + 1) = v53;
    goto LABEL_99;
  }

  v52 = *(v51 + 1);
  if (!v52)
  {
    sub_21D0CF7E0(v50, &qword_27CE5A640, &qword_21DC0FE00);
    goto LABEL_98;
  }

  *v50 = *v51;
  *(v50 + 1) = v52;

  *(v50 + 2) = *(v51 + 2);

  *(v50 + 3) = *(v51 + 3);

LABEL_99:
  v54 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v54) = *(a2 + v54);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

uint64_t sub_21D792690(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D792744()
{
  result = qword_280D182B0;
  if (!qword_280D182B0)
  {
    result = swift_getWitnessTable(byte_21DC274D8, &type metadata for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey, v0, v1);
    atomic_store(result, &qword_280D182B0);
  }

  return result;
}

void sub_21D792798()
{
  v1 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + v7);

  sub_21D7898C4(v0 + v2, (v0 + v3), v6, v9, v10, v11);
}

uint64_t sub_21D79284C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  ObjectType = swift_getObjectType();
  v9 = v6;
  return TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(v2, v3, v4, &v9, 1, ObjectType, v5);
}

uint64_t sub_21D7928D4(uint64_t a1)
{
  sub_21DBF56BC();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D1B795C;

  return sub_21D78451C(v10, a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21D792A10(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v10 = *(v1 + 7);
  v9 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D0F00D0;

  return sub_21D785554(v8, a1, v4, v5, v6, v7, v10, v9);
}

uint64_t sub_21D792AEC(uint64_t a1)
{
  v4 = *(sub_21DBF56BC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D1B795C;

  return sub_21D7890F4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_21D792C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21D792C80()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 24));

  return v2;
}

uint64_t sub_21D792DF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21D792E6C()
{
  v1 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21D77C0B0(v2);
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
      }

      else if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_23;
      }

      v5 = *(v3 + 8);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 10)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_9:
      v5 = *v3;
LABEL_22:

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = sub_21DBF509C();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        v7 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38, &qword_21DC188E0) + 48);
        v8 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && !swift_getEnumCaseMultiPayload())
        {
          v9 = sub_21DBF563C();
          (*(*(v9 - 8) + 8))(v7, v9);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v0 + v2, v10);
    }
  }

LABEL_23:
  v11 = *(v1 + 20);
  v12 = sub_21DBF79FC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocObject();
}