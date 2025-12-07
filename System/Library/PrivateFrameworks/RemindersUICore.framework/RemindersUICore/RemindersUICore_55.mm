void sub_21D60CE24(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_21D63B6C0(v4);

    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_21D60CEA8(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  sub_21D60E688(v4, v5, v6, v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *&result[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView];
    if (v10)
    {
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      v15 = v3;
      v14 = *v3;
      v13 = *(v15 + 8);
      v16 = &v10[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration];
      swift_beginAccess();
      v17 = *(v16 + 1);
      v21 = *v16;
      v18 = *(v16 + 2);
      v19 = *(v16 + 3);
      *v16 = v14;
      *(v16 + 1) = v13;
      *(v16 + 2) = v12;
      *(v16 + 3) = v11;
      sub_21D60E630(v14, v13, v12, v11);
      sub_21D60E630(v14, v13, v12, v11);
      v20 = v10;
      sub_21D60E688(v21, v17, v18, v19);
      sub_21D6B4D64();
      swift_unknownObjectRelease();

      return sub_21D60E688(v14, v13, v12, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_21D60CFF0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D60D078;
}

void sub_21D60D078(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v3[3] + v3[4];
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      v10 = *v6;
      v9 = *(v6 + 8);
      v11 = &v5[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_appLinkButtonConfiguration];
      swift_beginAccess();
      v12 = *(v11 + 1);
      v13 = *(v11 + 2);
      v15 = *(v11 + 3);
      v16 = *v11;
      *v11 = v10;
      *(v11 + 1) = v9;
      *(v11 + 2) = v8;
      *(v11 + 3) = v7;
      sub_21D60E630(v10, v9, v8, v7);
      sub_21D60E630(v10, v9, v8, v7);
      v14 = v5;
      sub_21D60E688(v16, v12, v13, v15);
      sub_21D6B4D64();

      swift_unknownObjectRelease();
      sub_21D60E688(v10, v9, v8, v7);
    }
  }

  free(v3);
}

char *sub_21D60D1B8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  sub_21D60E5D0(v5, v6, v7, v8, v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *&result[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView];
    if (v12)
    {
      v14 = *(v4 + 24);
      v13 = *(v4 + 32);
      v16 = *(v4 + 8);
      v15 = *(v4 + 16);
      v17 = *v4;
      v18 = &v12[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration];
      swift_beginAccess();
      v19 = *(v18 + 1);
      v20 = *(v18 + 2);
      v23 = *(v18 + 3);
      v24 = *v18;
      v22 = *(v18 + 4);
      *v18 = v17;
      *(v18 + 1) = v16;
      *(v18 + 2) = v15;
      *(v18 + 3) = v14;
      *(v18 + 4) = v13;
      sub_21D60E570(v17, v16, v15, v14, v13);
      sub_21D60E570(v17, v16, v15, v14, v13);
      v21 = v12;
      sub_21D60E5D0(v24, v19, v20, v23, v22);
      sub_21D6B5600();
      swift_unknownObjectRelease();

      return sub_21D60E5D0(v17, v16, v15, v14, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_21D60D328(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D60D3B0;
}

void sub_21D60D3B0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v3[3] + v3[4];
      v8 = *(v6 + 24);
      v7 = *(v6 + 32);
      v10 = *(v6 + 8);
      v9 = *(v6 + 16);
      v11 = *v6;
      v12 = &v5[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_subtaskButtonConfiguration];
      swift_beginAccess();
      v13 = *(v12 + 1);
      v17 = *(v12 + 2);
      v18 = *v12;
      v15 = *(v12 + 4);
      v16 = *(v12 + 3);
      *v12 = v11;
      *(v12 + 1) = v10;
      *(v12 + 2) = v9;
      *(v12 + 3) = v8;
      *(v12 + 4) = v7;
      sub_21D60E570(v11, v10, v9, v8, v7);
      sub_21D60E570(v11, v10, v9, v8, v7);
      v14 = v5;
      sub_21D60E5D0(v18, v13, v17, v16, v15);
      sub_21D6B5600();

      swift_unknownObjectRelease();
      sub_21D60E5D0(v11, v10, v9, v8, v7);
    }
  }

  free(v3);
}

uint64_t sub_21D60D50C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v8 = v2;
    (*(v3 + 16))(v1, &off_282EC8FE0, &v8, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 56);
    v7 = swift_getObjectType();
    v8 = v2;
    (*(v6 + 8))(v1, &off_282EC8FE0, &v8, v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D60D5F4()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D157444(v0 + 48);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_item);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_viewModelItem, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D60E724(*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 16));

  sub_21D60E688(*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration + 16), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration + 24));
  sub_21D60E5D0(*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration + 16), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration + 24), *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_router));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21D60D6F0()
{
  sub_21D60D5F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellHashtagPresenter(uint64_t a1)
{
  result = qword_280D119A0;
  if (!qword_280D119A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D60D79C(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    sub_21D2C7CD8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_21D60D8C4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *&result[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView];
    if (v1)
    {
      v2 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      swift_beginAccess();
      v3 = *(v1 + v2);
      if (v3)
      {
        v4 = [v3 attributedText];
        swift_unknownObjectRelease();
        return v4;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_21D60D970(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(v6, ObjectType, a2);
    v5[0] = v6[0];
    v5[1] = v6[1];
    sub_21D63B22C(v5);
    swift_unknownObjectRelease();
    return sub_21D24A814(*&v5[0], *(&v5[0] + 1));
  }

  return result;
}

uint64_t sub_21D60DA0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = v5;
    sub_21D63B43C(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D60DA6C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = sub_21D639E18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530, &qword_21DC0FE40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v7 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v8 = v7;
    if (UIAccessibilityIsBoldTextEnabled())
    {
      v9 = sub_21D639F14();
    }

    else
    {
      v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont);
    }

    *(inited + 40) = v9;
    v10 = sub_21D177570(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &unk_27CE5F310, &unk_21DC0FE30);
    TTRIRemindersListDescriptionAndTagsView.createAndStartEditingNewHashtag(baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(v5, v10);
    swift_unknownObjectRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_ownerModule) - 2 >= 2)
  {
    v11 = 0xD00000000000001CLL;
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_ownerModule))
    {
      v12 = "orView";
      v11 = 0xD000000000000033;
    }

    else
    {
      v12 = "g.StructuredHashtag";
    }

    v13 = v12 | 0x8000000000000000;
    TTRITipKitSignal.donate(signalContext:)(*&v11);
  }
}

uint64_t sub_21D60DC08(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_allowsEditing;
      swift_beginAccess();
      v5 = a1 & 1;
      v3[v4] = a1 & 1;
      v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      swift_beginAccess();
      v7 = *&v3[v6];
      if (v7)
      {
        v8 = v3;
        v9 = v7;
        [v9 setEditable_];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D60DCF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_viewModelItem;
  swift_beginAccess();
  return sub_21D60E7D8(v1 + v3, a1);
}

uint64_t sub_21D60DD50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_viewModelItem;
  swift_beginAccess();
  sub_21D60E768(a1, v1 + v3);
  return swift_endAccess();
}

double sub_21D60DE10@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 8);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21D60E6E0(v2, v3, v4);
}

double sub_21D60DE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData + 16);
  *v3 = *a1;
  *(v3 + 16) = v2;
  sub_21D60E6E0(v4, v5, v6);
  sub_21D60E724(v4, v5, v6);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  sub_21D60CA00(v8);

  return sub_21D60E724(v4, v5, v6);
}

void (*sub_21D60DECC(uint64_t **a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData;
  v3[3] = v1;
  v3[4] = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  sub_21D60E6E0(v7, v8, v9);
  return sub_21D60DF5C;
}

void sub_21D60DF5C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = ((*a1)[3] + (*a1)[4]);
  v7 = **a1;
  v9 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  *v6 = v7;
  v6[1] = v4;
  v6[2] = v5;
  if (a2)
  {
    sub_21D60E6E0(v7, v4, v5);
    sub_21D60E6E0(v9, v8, v10);
    sub_21D60E724(v9, v8, v10);
    v14 = v9;
    v15 = v8;
    v16 = v10;
    sub_21D60CA00(&v14);
    sub_21D60E724(v9, v8, v10);
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
  }

  else
  {
    sub_21D60E6E0(v9, v8, v10);
    sub_21D60E724(v9, v8, v10);
    v14 = v9;
    v15 = v8;
    v16 = v10;
    sub_21D60CA00(&v14);
    v11 = v9;
    v12 = v8;
    v13 = v10;
  }

  sub_21D60E724(v11, v12, v13);

  free(v3);
}

void *sub_21D60E064()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_descriptionAttributedText;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_21D60E0B4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D60CD9C(v2);
  return sub_21D4C30A8;
}

void *sub_21D60E124@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_21D60E630(v4, v5, v6, v7);
}

void (*sub_21D60E184(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D60CFF0(v2);
  return sub_21D4C3D30;
}

void *sub_21D60E1F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_21D60E570(v4, v5, v6, v7, v8);
}

void (*sub_21D60E25C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D60D328(v2);
  return sub_21D4C3D30;
}

void (*sub_21D60E2CC(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t sub_21D60E360(char *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D63AF48(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D60E3BC(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D63AFE0(a1 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D60E418()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
    if (v1)
    {
      v2 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      swift_beginAccess();
      v3 = *(v1 + v2);
      if (v3)
      {
        [v3 resignFirstResponder];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D60E4A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
    if (v1)
    {
      v2 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      swift_beginAccess();
      v3 = *(v1 + v2);
      if (v3)
      {
        v4 = v3;
        sub_21D5969F4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_21D60E570(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    v10 = a2;
    v11 = a3;

    return sub_21D0D0E74(a4, a5);
  }

  return result;
}

void *sub_21D60E5D0(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_21D0D0E88(a4, a5);
  }

  return result;
}

void *sub_21D60E630(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = a2;

    return sub_21D0D0E74(a3, a4);
  }

  return result;
}

void *sub_21D60E688(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_21D0D0E88(a3, a4);
  }

  return result;
}

double sub_21D60E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

double sub_21D60E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21D60E768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D60E7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *static TTRIReminderCellHashtagAssembly.createViewController(item:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a3;
  v47 = a4;
  v49 = a9;
  v50 = a1;
  v48 = a10;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *a5;
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  v19 = type metadata accessor for TTRIReminderCellHashtagRouter();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_21D1D338C(a2, v17);
  type metadata accessor for TTRReminderCellHashtagEditingPresenter(0);
  v21 = swift_allocObject();
  swift_unknownObjectRetain();

  v22 = sub_21D60EE88(v17, v18, a7, a8, v21);
  swift_unknownObjectRelease();
  sub_21D1D338C(a2, v17);
  v51[3] = v19;
  v51[4] = &off_282EC9CC0;
  v51[0] = v20;
  type metadata accessor for TTRIReminderCellHashtagPresenter(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v51, v19);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v44[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v30 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_router);
  v30[3] = v19;
  v30[4] = &off_282EC9CC0;
  *v30 = v29;
  v23[3] = 0;
  swift_unknownObjectWeakInit();
  v23[5] = 0;
  swift_unknownObjectWeakInit();
  v23[7] = 0;
  swift_unknownObjectWeakInit();
  (*(v15 + 56))(v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_viewModelItem, 1, 1, v14);
  v31 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_descriptionAttributedText) = 0;
  v32 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration);
  *v32 = 0u;
  v32[1] = 0u;
  v33 = v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  sub_21D24BDFC(v17, v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_item);
  v34 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_interactor);
  *v34 = v18;
  v34[1] = &protocol witness table for TTRReminderCellHashtagInteractor;
  v35 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter);
  *v35 = v22;
  v35[1] = &protocol witness table for TTRReminderCellHashtagEditingPresenter;
  v36 = (v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar);
  v37 = v47;
  *v36 = v46;
  v36[1] = v37;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_ownerModule) = v45;
  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_0(v51);
  v38 = type metadata accessor for TTRIReminderCellHashtagViewController();
  v39 = objc_allocWithZone(v38);

  v41 = sub_21D60ECE4(v40, v39);
  swift_beginAccess();
  *(v18 + 24) = &off_282EC90D8;
  swift_unknownObjectWeakAssign();
  v23[3] = &off_282EC9C50;
  swift_unknownObjectWeakAssign();
  v23[7] = v48;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v22 + 24) = &off_282EC90A0;
  swift_unknownObjectWeakAssign();
  v42 = v50;
  v50[3] = v38;

  *v42 = v41;
  return v23;
}

id sub_21D60ECE4(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_hashtagsAttributedText] = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsFont;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *&a2[v5] = sub_21D900614(6);
  v6 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsBoldFont;
  *&a2[v6] = sub_21D900614(7);
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont;
  *&a2[v7] = sub_21D900614(7);
  *&a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedTagsColor;
  *&a2[v8] = [objc_opt_self() secondaryLabelColor];
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_tokenInteraction;
  type metadata accessor for TTRHashtagTokenTextInteraction();
  v10 = swift_allocObject();
  type metadata accessor for HashtagTokenEditor();
  *(v10 + 24) = swift_allocObject();
  *&a2[v9] = v10;
  v11 = &a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView] = 0;
  a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_userPressedReturn] = 0;
  *(v10 + 16) = 1;
  v12 = &a2[OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter];
  *v12 = a1;
  v12[1] = &off_282EC8F88;
  v14.receiver = a2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_21D60EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  v9 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  *v10 = 0;
  v10[1] = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags) = MEMORY[0x277D84FA0];
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagLabelsCancellable) = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_textSelectionPassthroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A118, &unk_21DC1F7E0);
  swift_allocObject();
  *(a5 + v11) = sub_21DBF907C();
  sub_21D24BDFC(a1, a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_item);
  v12 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_interactor);
  *v12 = a2;
  v12[1] = &protocol witness table for TTRReminderCellHashtagInteractor;
  swift_beginAccess();
  *(a5 + 40) = a4;
  swift_unknownObjectWeakAssign();
  return a5;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  sub_21D60F1D0(v1 + *(v6 + 52), v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A0C0, &unk_21DC1F7F0);
    v8 = 1;
  }

  else
  {
    sub_21D1051B4(v5, a1, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v5, &qword_27CE5A0C8, &qword_21DC0E388);
    v8 = 0;
  }

  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t type metadata accessor for TTRIRemindersListItemIntermediateViewModel(uint64_t a1)
{
  result = qword_280D0EB10;
  if (!qword_280D0EB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D60F1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRIRemindersListItemIntermediateViewModel.reminderItemLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.separatorFlags.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.infoButtonState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.cellQuickBarState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t TTRIRemindersListItemIntermediateViewModel.init(itemID:item:reminderItemLevel:separatorFlags:isUserInteractionEnabled:isEditingItem:isTargetOfContextualPresentation:infoButtonState:cellQuickBarState:isPonderingTextEffectVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, unsigned __int8 a11)
{
  v31 = a5;
  v32 = a6;
  v33 = a11;
  v34 = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v20 = *a3;
  v21 = *a4;
  v22 = a4[1];
  v23 = *a8;
  v24 = *a10;
  sub_21D60F6D8(a1, a9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v25 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v25 - 8) + 48))(a2, 1, v25) == 1)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  }

  else
  {
    sub_21D60F6D8(a2, v19, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
  }

  v28 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  result = sub_21D0D523C(v19, a9 + v28[13], &qword_27CE5A0C0, &unk_21DC1F7F0);
  *(a9 + v28[5]) = v20;
  v30 = (a9 + v28[6]);
  *v30 = v21;
  v30[1] = v22;
  *(a9 + v28[7]) = v31 & 1;
  *(a9 + v28[8]) = v32 & 1;
  *(a9 + v28[9]) = v34 & 1;
  *(a9 + v28[10]) = v23;
  *(a9 + v28[11]) = v24;
  *(a9 + v28[12]) = v33 & 1;
  return result;
}

uint64_t sub_21D60F6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static TTRIRemindersListItemIntermediateViewModel.placeholder(itemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D1051B4(a1, a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v3 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v4 = v3[13];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + v3[5]) = 3;
  *(a2 + v3[6]) = 0;
  *(a2 + v3[7]) = 0;
  *(a2 + v3[8]) = 0;
  *(a2 + v3[9]) = 0;
  *(a2 + v3[10]) = 0;
  *(a2 + v3[11]) = 0;
  *(a2 + v3[12]) = 0;
  return result;
}

BOOL _s15RemindersUICore42TTRIRemindersListItemIntermediateViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EFC8, &unk_21DC1F980);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if ((_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = 0;
  v19 = v14[6];
  v20 = a1 + v19;
  v21 = *(a1 + v19);
  v22 = (a2 + v19);
  if (v21 == *v22 && ((*(v20 + 1) ^ v22[1]) & 1) == 0)
  {
    if (*(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]) || *(a1 + v14[10]) != *(a2 + v14[10]) || *(a1 + v14[11]) != *(a2 + v14[11]) || *(a1 + v14[12]) != *(a2 + v14[12]))
    {
      return 0;
    }

    v23 = v14[13];
    v24 = *(v11 + 48);
    sub_21D60F1D0(a1 + v23, v13);
    sub_21D60F1D0(a2 + v23, &v13[v24]);
    v25 = *(v5 + 48);
    if (v25(v13, 1, v4) == 1)
    {
      if (v25(&v13[v24], 1, v4) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE5A0C0, &unk_21DC1F7F0);
        return 1;
      }

      goto LABEL_19;
    }

    sub_21D60F1D0(v13, v10);
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5A0C8, &qword_21DC0E388);
LABEL_19:
      sub_21D0CF7E0(v13, &qword_27CE5EFC8, &unk_21DC1F980);
      return 0;
    }

    sub_21D0D523C(&v13[v24], v7, &qword_27CE5A0C8, &qword_21DC0E388);
    v27 = _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(v10, v7);
    sub_21D0CF7E0(v7, &qword_27CE5A0C8, &qword_21DC0E388);
    sub_21D0CF7E0(v10, &qword_27CE5A0C8, &qword_21DC0E388);
    sub_21D0CF7E0(v13, &qword_27CE5A0C0, &unk_21DC1F7F0);
    return (v27 & 1) != 0;
  }

  return v18;
}

unint64_t sub_21D60FBDC()
{
  result = qword_27CE5EFC0;
  if (!qword_27CE5EFC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel, &type metadata for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel, v0, v1);
    atomic_store(result, &qword_27CE5EFC0);
  }

  return result;
}

char **initializeBufferWithCopyOfBuffer for TTRIRemindersListItemIntermediateViewModel(char **a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        goto LABEL_46;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
LABEL_46:
      v28 = a3[6];
      *(a1 + a3[5]) = *(a2 + a3[5]);
      *(a1 + v28) = *(a2 + v28);
      v29 = a3[8];
      *(a1 + a3[7]) = *(a2 + a3[7]);
      *(a1 + v29) = *(a2 + v29);
      v30 = a3[10];
      *(a1 + a3[9]) = *(a2 + a3[9]);
      *(a1 + v30) = *(a2 + v30);
      v31 = a3[12];
      *(a1 + a3[11]) = *(a2 + a3[11]);
      v32 = a3[13];
      v33 = (a1 + v32);
      v34 = (a2 + v32);
      *(a1 + v31) = *(a2 + v31);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
        return a1;
      }

      v38 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v39 = swift_getEnumCaseMultiPayload();
      if (v39 > 3)
      {
        if (v39 > 5)
        {
          switch(v39)
          {
            case 6:
              v58 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v59 = *(v58 - 8);
              if ((*(v59 + 48))(v34, 1, v58))
              {
                v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(v33, v34, *(*(v60 - 8) + 64));
              }

              else
              {
                *v33 = *v34;
                v143 = v36;
                v69 = *(v58 + 20);
                v70 = sub_21DBF6C1C();
                v135 = *(*(v70 - 8) + 16);
                sub_21DBF8E0C();
                v71 = v33 + v69;
                v72 = v34 + v69;
                v36 = v143;
                v135(v71, v72, v70);
                (*(v59 + 56))(v33, 0, 1, v58);
              }

              v73 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v74 = (v33 + v73);
              v75 = (v34 + v73);
              v76 = v75[1];
              if (v76)
              {
                *v74 = *v75;
                v74[1] = v76;
                v77 = v75[2];
                v74[2] = v77;
                sub_21DBF8E0C();
                v78 = v77;
              }

              else
              {
                *v74 = *v75;
                v74[2] = v75[2];
              }

              goto LABEL_174;
            case 7:
              v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v65 = *(v64 - 8);
              if ((*(v65 + 48))(v34, 1, v64))
              {
                v66 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v33, v34, *(*(v66 - 8) + 64));
              }

              else
              {
                v80 = sub_21DBF563C();
                (*(*(v80 - 8) + 16))(v33, v34, v80);
                *(v33 + *(v64 + 20)) = *(v34 + *(v64 + 20));
                (*(v65 + 56))(v33, 0, 1, v64);
              }

              v81 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v33 + *(v81 + 20)) = *(v34 + *(v81 + 20));
              goto LABEL_174;
            case 8:
              *v33 = *v34;
              v40 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v41 = sub_21DBF8D7C();
              (*(*(v41 - 8) + 16))(v33 + v40, v34 + v40, v41);
LABEL_174:
              swift_storeEnumTagMultiPayload();
              goto LABEL_175;
          }

LABEL_80:
          memcpy(v33, v34, *(*(v38 - 8) + 64));
LABEL_175:
          (*(v36 + 56))(v33, 0, 1, v35);
          return a1;
        }

        if (v39 != 4)
        {
          *v33 = *v34;
          *(v33 + 8) = *(v34 + 8);
          *(v33 + 9) = *(v34 + 9);
          v50 = v34[2];
          v33[2] = v50;
          v51 = v50;
          goto LABEL_174;
        }

        v141 = v36;
        v61 = *v34;
        *v33 = *v34;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        v62 = *(v47 + 48);
        v63 = v61;
        if (v62(v34 + v45, 1, v46))
        {
LABEL_73:
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(v33 + v45, v34 + v45, *(*(v57 - 8) + 64));
          v36 = v141;
          goto LABEL_174;
        }

        v79 = swift_getEnumCaseMultiPayload();
        if (v79 > 4)
        {
          if (v79 <= 7)
          {
            if (v79 == 5 || v79 == 6)
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          if (v79 != 8 && v79 != 9)
          {
            goto LABEL_172;
          }

LABEL_158:
          v123 = *(v34 + v45);
          *(v33 + v45) = v123;
          v124 = v123;
          swift_storeEnumTagMultiPayload();
LABEL_173:
          (*(v47 + 56))(v33 + v45, 0, 1, v46);
          goto LABEL_174;
        }

        if (v79 <= 2)
        {
          if (v79 != 1)
          {
            if (v79 == 2)
            {
              goto LABEL_159;
            }

LABEL_172:
            memcpy(v33 + v45, v34 + v45, *(v47 + 64));
            goto LABEL_173;
          }

          goto LABEL_158;
        }

LABEL_159:
        v125 = sub_21DBF563C();
        (*(*(v125 - 8) + 16))(v33 + v45, v34 + v45, v125);
        swift_storeEnumTagMultiPayload();
        goto LABEL_173;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v141 = v36;
          v54 = *v34;
          *v33 = *v34;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          v55 = *(v47 + 48);
          v56 = v54;
          if (v55(v34 + v45, 1, v46))
          {
            goto LABEL_73;
          }

          v68 = swift_getEnumCaseMultiPayload();
          if (v68 > 4)
          {
            if (v68 <= 7)
            {
              if (v68 == 5 || v68 == 6)
              {
                goto LABEL_159;
              }

              goto LABEL_172;
            }

            if (v68 != 8 && v68 != 9)
            {
              goto LABEL_172;
            }

            goto LABEL_158;
          }

          if (v68 > 2)
          {
            goto LABEL_159;
          }

          if (v68 == 1)
          {
            goto LABEL_158;
          }

          if (v68 != 2)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v141 = v36;
          v44 = *v34;
          *v33 = *v34;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          v48 = *(v47 + 48);
          v49 = v44;
          if (v48(v34 + v45, 1, v46))
          {
            goto LABEL_73;
          }

          v67 = swift_getEnumCaseMultiPayload();
          if (v67 > 4)
          {
            if (v67 <= 7)
            {
              if (v67 == 5 || v67 == 6)
              {
                goto LABEL_159;
              }

              goto LABEL_172;
            }

            if (v67 != 8 && v67 != 9)
            {
              goto LABEL_172;
            }

            goto LABEL_158;
          }

          if (v67 > 2)
          {
            goto LABEL_159;
          }

          if (v67 == 1)
          {
            goto LABEL_158;
          }

          if (v67 != 2)
          {
            goto LABEL_172;
          }
        }

        goto LABEL_159;
      }

      if (v39)
      {
        if (v39 != 1)
        {
          goto LABEL_80;
        }

        v42 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v43 = swift_getEnumCaseMultiPayload();
        v140 = v36;
        v138 = v35;
        if (v43 <= 4)
        {
          if (v43 > 2)
          {
LABEL_110:
            v82 = sub_21DBF563C();
            (*(*(v82 - 8) + 16))(v33, v34, v82);
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          if (v43 != 1)
          {
            if (v43 == 2)
            {
              goto LABEL_110;
            }

            goto LABEL_136;
          }

LABEL_113:
          v83 = *v34;
          *v33 = *v34;
          v84 = v83;
          swift_storeEnumTagMultiPayload();
          goto LABEL_137;
        }

        if (v43 > 7)
        {
          if (v43 == 8 || v43 == 9)
          {
            goto LABEL_113;
          }
        }

        else if (v43 == 5 || v43 == 6)
        {
          goto LABEL_110;
        }

LABEL_136:
        memcpy(v33, v34, *(*(v42 - 8) + 64));
LABEL_137:
        v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v89 = v88[5];
        v90 = v33 + v89;
        v91 = v34 + v89;
        v92 = *(v34 + v89 + 8);
        if (v92)
        {
          v136 = v33;
          *v90 = *v91;
          *(v90 + 1) = v92;
          v93 = *(v91 + 2);
          v94 = *(v91 + 3);
          v96 = *(v91 + 4);
          v95 = *(v91 + 5);
          v97 = *(v91 + 6);
          v127 = *(v91 + 7);
          v131 = v91[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v93, v94, v96, v95, v97, v127, v131);
          *(v90 + 2) = v93;
          *(v90 + 3) = v94;
          *(v90 + 4) = v96;
          *(v90 + 5) = v95;
          *(v90 + 6) = v97;
          *(v90 + 7) = v127;
          v90[64] = v131;
          *(v90 + 65) = *(v91 + 65);
          v98 = v91[120];
          if (v98 == 255)
          {
            *(v90 + 72) = *(v91 + 72);
            *(v90 + 88) = *(v91 + 88);
            *(v90 + 104) = *(v91 + 104);
            v90[120] = v91[120];
          }

          else
          {
            v99 = *(v91 + 9);
            v100 = *(v91 + 10);
            v101 = *(v91 + 12);
            v102 = *(v91 + 13);
            v128 = *(v91 + 14);
            v132 = *(v91 + 11);
            v103 = v98 & 1;
            sub_21D0FB960(v99, v100, v132, v101, v102, v128, v98 & 1);
            *(v90 + 9) = v99;
            *(v90 + 10) = v100;
            *(v90 + 11) = v132;
            *(v90 + 12) = v101;
            *(v90 + 13) = v102;
            *(v90 + 14) = v128;
            v90[120] = v103;
          }

          v35 = v138;
          v36 = v140;
          v90[121] = v91[121];
          v33 = v136;
          goto LABEL_143;
        }

LABEL_140:
        v104 = *(v91 + 5);
        *(v90 + 4) = *(v91 + 4);
        *(v90 + 5) = v104;
        *(v90 + 6) = *(v91 + 6);
        *(v90 + 106) = *(v91 + 106);
        v105 = *(v91 + 1);
        *v90 = *v91;
        *(v90 + 1) = v105;
        v106 = *(v91 + 3);
        *(v90 + 2) = *(v91 + 2);
        *(v90 + 3) = v106;
LABEL_143:
        *(v33 + v88[6]) = *(v34 + v88[6]);
        *(v33 + v88[7]) = *(v34 + v88[7]);
        *(v33 + v88[8]) = *(v34 + v88[8]);
        *(v33 + v88[9]) = *(v34 + v88[9]);
        *(v33 + v88[10]) = *(v34 + v88[10]);
        v107 = v88[11];
        v108 = *(v34 + v107);
        *(v33 + v107) = v108;
        v109 = v108;
        goto LABEL_174;
      }

      v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v53 = swift_getEnumCaseMultiPayload();
      v142 = v36;
      v139 = v35;
      if (v53 <= 4)
      {
        if (v53 > 2)
        {
LABEL_114:
          v85 = sub_21DBF563C();
          (*(*(v85 - 8) + 16))(v33, v34, v85);
          swift_storeEnumTagMultiPayload();
          goto LABEL_145;
        }

        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_114;
          }

          goto LABEL_144;
        }

LABEL_117:
        v86 = *v34;
        *v33 = *v34;
        v87 = v86;
        swift_storeEnumTagMultiPayload();
        goto LABEL_145;
      }

      if (v53 > 7)
      {
        if (v53 == 8 || v53 == 9)
        {
          goto LABEL_117;
        }
      }

      else if (v53 == 5 || v53 == 6)
      {
        goto LABEL_114;
      }

LABEL_144:
      memcpy(v33, v34, *(*(v52 - 8) + 64));
LABEL_145:
      v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v110 = v88[5];
      v90 = v33 + v110;
      v91 = v34 + v110;
      v111 = *(v34 + v110 + 8);
      if (v111)
      {
        v137 = v33;
        *v90 = *v91;
        *(v90 + 1) = v111;
        v112 = *(v91 + 2);
        v113 = *(v91 + 3);
        v115 = *(v91 + 4);
        v114 = *(v91 + 5);
        v116 = *(v91 + 6);
        v129 = *(v91 + 7);
        v133 = v91[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v112, v113, v115, v114, v116, v129, v133);
        *(v90 + 2) = v112;
        *(v90 + 3) = v113;
        *(v90 + 4) = v115;
        *(v90 + 5) = v114;
        *(v90 + 6) = v116;
        *(v90 + 7) = v129;
        v90[64] = v133;
        *(v90 + 65) = *(v91 + 65);
        v117 = v91[120];
        if (v117 == 255)
        {
          *(v90 + 72) = *(v91 + 72);
          *(v90 + 88) = *(v91 + 88);
          *(v90 + 104) = *(v91 + 104);
          v90[120] = v91[120];
        }

        else
        {
          v118 = *(v91 + 9);
          v119 = *(v91 + 10);
          v120 = *(v91 + 12);
          v121 = *(v91 + 13);
          v130 = *(v91 + 14);
          v134 = *(v91 + 11);
          v122 = v117 & 1;
          sub_21D0FB960(v118, v119, v134, v120, v121, v130, v117 & 1);
          *(v90 + 9) = v118;
          *(v90 + 10) = v119;
          *(v90 + 11) = v134;
          *(v90 + 12) = v120;
          *(v90 + 13) = v121;
          *(v90 + 14) = v130;
          v90[120] = v122;
        }

        v35 = v139;
        v36 = v142;
        v90[121] = v91[121];
        v33 = v137;
        goto LABEL_143;
      }

      goto LABEL_140;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRIRemindersListItemIntermediateViewModel(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
    {
      goto LABEL_23;
    }

    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_23;
        }

LABEL_61:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 8))(a1 + v6, v29);
        goto LABEL_23;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_61;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        goto LABEL_61;
      }
    }

    v10 = *(a1 + v6);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_23;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = swift_getEnumCaseMultiPayload();
  if (v5 <= 4)
  {
    if (v5 > 2)
    {
      goto LABEL_18;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_23;
      }

LABEL_18:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 8))(a1, v9);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v5 > 7)
  {
    if (v5 != 8 && v5 != 9)
    {
      goto LABEL_23;
    }

LABEL_21:
    v10 = *a1;
LABEL_22:

    goto LABEL_23;
  }

  if (v5 == 5 || v5 == 6)
  {
    goto LABEL_18;
  }

LABEL_23:
  v11 = a1 + *(a2 + 52);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 3)
  {
    if (v13 > 1)
    {
      goto LABEL_41;
    }

    if (v13 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 4)
    {
      if (v18 <= 7)
      {
        if (v18 != 5 && v18 != 6)
        {
          goto LABEL_73;
        }

        goto LABEL_69;
      }

      if (v18 != 8 && v18 != 9)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v18 > 2)
      {
        goto LABEL_69;
      }

      if (v18 != 1)
      {
        if (v18 != 2)
        {
LABEL_73:
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v32 = &v11[*(v31 + 20)];
          if (*(v32 + 1))
          {

            sub_21D179EF0(*(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5), *(v32 + 6), *(v32 + 7), v32[64]);
            v33 = v32[120];
            if (v33 != 255)
            {
              sub_21D1078C0(*(v32 + 9), *(v32 + 10), *(v32 + 11), *(v32 + 12), *(v32 + 13), *(v32 + 14), v33 & 1);
            }
          }

          v19 = *&v11[*(v31 + 44)];
          goto LABEL_77;
        }

LABEL_69:
        v30 = sub_21DBF563C();
        (*(*(v30 - 8) + 8))(v11, v30);
        goto LABEL_73;
      }
    }

    goto LABEL_73;
  }

  if (v13 <= 5)
  {
    if (v13 != 4)
    {
      v19 = *(v11 + 2);
LABEL_77:

      return;
    }

LABEL_41:

    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v21 - 8) + 48))(&v11[v20], 1, v21))
    {
      return;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 != 5 && v22 != 6)
        {
          return;
        }

        goto LABEL_80;
      }

      if (v22 != 8 && v22 != 9)
      {
        return;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_80:
        v15 = sub_21DBF563C();
        v16 = *(*(v15 - 8) + 8);
        v17 = &v11[v20];
LABEL_81:

        v16(v17, v15);
        return;
      }

      if (v22 != 1)
      {
        if (v22 != 2)
        {
          return;
        }

        goto LABEL_80;
      }
    }

    v19 = *&v11[v20];
    goto LABEL_77;
  }

  if (v13 != 6)
  {
    if (v13 == 7)
    {
      v27 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27))
      {
        return;
      }

      v28 = sub_21DBF563C();
      v16 = *(*(v28 - 8) + 8);
      v15 = v28;
      v17 = v11;
    }

    else
    {
      if (v13 != 8)
      {
        return;
      }

      v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v15 = sub_21DBF8D7C();
      v16 = *(*(v15 - 8) + 8);
      v17 = &v11[v14];
    }

    goto LABEL_81;
  }

  v23 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v23 - 8) + 48))(v11, 1, v23))
  {

    v24 = *(v23 + 20);
    v25 = sub_21DBF6C1C();
    (*(*(v25 - 8) + 8))(&v11[v24], v25);
  }

  v26 = &v11[*(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20)];
  if (*(v26 + 1))
  {

    v19 = *(v26 + 2);
    goto LABEL_77;
  }
}

void **initializeWithCopy for TTRIRemindersListItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = v17;
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_44;
    }

    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 == 5 || v9 == 6)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v9 > 2)
      {
LABEL_22:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
        goto LABEL_43;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          goto LABEL_22;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_43;
      }
    }

    v21 = *a2;
    *a1 = *a2;
    v22 = v21;
    swift_storeEnumTagMultiPayload();
    goto LABEL_43;
  }

  v10 = *a2;
  *a1 = *a2;
  v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v10;
  if (!v14(a2 + v11, 1, v12))
  {
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 == 5 || v19 == 6)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 > 2)
      {
LABEL_34:
        v23 = sub_21DBF563C();
        (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
        swift_storeEnumTagMultiPayload();
LABEL_42:
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
        goto LABEL_43;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          goto LABEL_34;
        }

LABEL_41:
        memcpy(a1 + v11, a2 + v11, *(v13 + 64));
        goto LABEL_42;
      }
    }

    v24 = *(a2 + v11);
    *(a1 + v11) = v24;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_42;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
  swift_storeEnumTagMultiPayload();
LABEL_44:
  v26 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v30 = a3[13];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  *(a1 + v29) = *(a2 + v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v32, 1, v33))
  {
    v36 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v37 = swift_getEnumCaseMultiPayload();
    if (v37 > 3)
    {
      if (v37 > 5)
      {
        switch(v37)
        {
          case 6:
            v56 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v57 = *(v56 - 8);
            if ((*(v57 + 48))(v32, 1, v56))
            {
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v31, v32, *(*(v58 - 8) + 64));
            }

            else
            {
              *v31 = *v32;
              v141 = v34;
              v67 = *(v56 + 20);
              v68 = sub_21DBF6C1C();
              v133 = *(*(v68 - 8) + 16);
              sub_21DBF8E0C();
              v69 = v31 + v67;
              v70 = v32 + v67;
              v34 = v141;
              v133(v69, v70, v68);
              (*(v57 + 56))(v31, 0, 1, v56);
            }

            v71 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v72 = (v31 + v71);
            v73 = (v32 + v71);
            v74 = v73[1];
            if (v74)
            {
              *v72 = *v73;
              v72[1] = v74;
              v75 = v73[2];
              v72[2] = v75;
              sub_21DBF8E0C();
              v76 = v75;
            }

            else
            {
              *v72 = *v73;
              v72[2] = v73[2];
            }

            goto LABEL_172;
          case 7:
            v62 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v63 = *(v62 - 8);
            if ((*(v63 + 48))(v32, 1, v62))
            {
              v64 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v31, v32, *(*(v64 - 8) + 64));
            }

            else
            {
              v78 = sub_21DBF563C();
              (*(*(v78 - 8) + 16))(v31, v32, v78);
              *(v31 + *(v62 + 20)) = *(v32 + *(v62 + 20));
              (*(v63 + 56))(v31, 0, 1, v62);
            }

            v79 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v31 + *(v79 + 20)) = *(v32 + *(v79 + 20));
            goto LABEL_172;
          case 8:
            *v31 = *v32;
            v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v39 = sub_21DBF8D7C();
            (*(*(v39 - 8) + 16))(v31 + v38, v32 + v38, v39);
LABEL_172:
            swift_storeEnumTagMultiPayload();
            goto LABEL_173;
        }

LABEL_78:
        memcpy(v31, v32, *(*(v36 - 8) + 64));
LABEL_173:
        (*(v34 + 56))(v31, 0, 1, v33);
        return a1;
      }

      if (v37 != 4)
      {
        *v31 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *(v31 + 9) = *(v32 + 9);
        v48 = v32[2];
        v31[2] = v48;
        v49 = v48;
        goto LABEL_172;
      }

      v139 = v34;
      v59 = *v32;
      *v31 = *v32;
      v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v45 = *(v44 - 8);
      v60 = *(v45 + 48);
      v61 = v59;
      if (v60(v32 + v43, 1, v44))
      {
LABEL_71:
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v31 + v43, v32 + v43, *(*(v55 - 8) + 64));
        v34 = v139;
        goto LABEL_172;
      }

      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 4)
      {
        if (v77 <= 7)
        {
          if (v77 == 5 || v77 == 6)
          {
            goto LABEL_157;
          }

          goto LABEL_170;
        }

        if (v77 != 8 && v77 != 9)
        {
          goto LABEL_170;
        }

LABEL_156:
        v121 = *(v32 + v43);
        *(v31 + v43) = v121;
        v122 = v121;
        swift_storeEnumTagMultiPayload();
LABEL_171:
        (*(v45 + 56))(v31 + v43, 0, 1, v44);
        goto LABEL_172;
      }

      if (v77 <= 2)
      {
        if (v77 != 1)
        {
          if (v77 == 2)
          {
            goto LABEL_157;
          }

LABEL_170:
          memcpy(v31 + v43, v32 + v43, *(v45 + 64));
          goto LABEL_171;
        }

        goto LABEL_156;
      }

LABEL_157:
      v123 = sub_21DBF563C();
      (*(*(v123 - 8) + 16))(v31 + v43, v32 + v43, v123);
      swift_storeEnumTagMultiPayload();
      goto LABEL_171;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v139 = v34;
        v52 = *v32;
        *v31 = *v32;
        v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v45 = *(v44 - 8);
        v53 = *(v45 + 48);
        v54 = v52;
        if (v53(v32 + v43, 1, v44))
        {
          goto LABEL_71;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 > 4)
        {
          if (v66 <= 7)
          {
            if (v66 == 5 || v66 == 6)
            {
              goto LABEL_157;
            }

            goto LABEL_170;
          }

          if (v66 != 8 && v66 != 9)
          {
            goto LABEL_170;
          }

          goto LABEL_156;
        }

        if (v66 > 2)
        {
          goto LABEL_157;
        }

        if (v66 == 1)
        {
          goto LABEL_156;
        }

        if (v66 != 2)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v139 = v34;
        v42 = *v32;
        *v31 = *v32;
        v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v45 = *(v44 - 8);
        v46 = *(v45 + 48);
        v47 = v42;
        if (v46(v32 + v43, 1, v44))
        {
          goto LABEL_71;
        }

        v65 = swift_getEnumCaseMultiPayload();
        if (v65 > 4)
        {
          if (v65 <= 7)
          {
            if (v65 == 5 || v65 == 6)
            {
              goto LABEL_157;
            }

            goto LABEL_170;
          }

          if (v65 != 8 && v65 != 9)
          {
            goto LABEL_170;
          }

          goto LABEL_156;
        }

        if (v65 > 2)
        {
          goto LABEL_157;
        }

        if (v65 == 1)
        {
          goto LABEL_156;
        }

        if (v65 != 2)
        {
          goto LABEL_170;
        }
      }

      goto LABEL_157;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_78;
      }

      v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v41 = swift_getEnumCaseMultiPayload();
      v138 = v34;
      v136 = v33;
      if (v41 <= 4)
      {
        if (v41 > 2)
        {
LABEL_108:
          v80 = sub_21DBF563C();
          (*(*(v80 - 8) + 16))(v31, v32, v80);
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }

        if (v41 != 1)
        {
          if (v41 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_134;
        }

LABEL_111:
        v81 = *v32;
        *v31 = *v32;
        v82 = v81;
        swift_storeEnumTagMultiPayload();
        goto LABEL_135;
      }

      if (v41 > 7)
      {
        if (v41 == 8 || v41 == 9)
        {
          goto LABEL_111;
        }
      }

      else if (v41 == 5 || v41 == 6)
      {
        goto LABEL_108;
      }

LABEL_134:
      memcpy(v31, v32, *(*(v40 - 8) + 64));
LABEL_135:
      v86 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v87 = v86[5];
      v88 = v31 + v87;
      v89 = v32 + v87;
      v90 = *(v32 + v87 + 8);
      if (v90)
      {
        v134 = v31;
        *v88 = *v89;
        *(v88 + 1) = v90;
        v91 = *(v89 + 2);
        v92 = *(v89 + 3);
        v94 = *(v89 + 4);
        v93 = *(v89 + 5);
        v95 = *(v89 + 6);
        v125 = *(v89 + 7);
        v129 = v89[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v91, v92, v94, v93, v95, v125, v129);
        *(v88 + 2) = v91;
        *(v88 + 3) = v92;
        *(v88 + 4) = v94;
        *(v88 + 5) = v93;
        *(v88 + 6) = v95;
        *(v88 + 7) = v125;
        v88[64] = v129;
        *(v88 + 65) = *(v89 + 65);
        v96 = v89[120];
        if (v96 == 255)
        {
          *(v88 + 72) = *(v89 + 72);
          *(v88 + 88) = *(v89 + 88);
          *(v88 + 104) = *(v89 + 104);
          v88[120] = v89[120];
        }

        else
        {
          v97 = *(v89 + 9);
          v98 = *(v89 + 10);
          v99 = *(v89 + 12);
          v100 = *(v89 + 13);
          v126 = *(v89 + 14);
          v130 = *(v89 + 11);
          v101 = v96 & 1;
          sub_21D0FB960(v97, v98, v130, v99, v100, v126, v96 & 1);
          *(v88 + 9) = v97;
          *(v88 + 10) = v98;
          *(v88 + 11) = v130;
          *(v88 + 12) = v99;
          *(v88 + 13) = v100;
          *(v88 + 14) = v126;
          v88[120] = v101;
        }

        v33 = v136;
        v34 = v138;
        v88[121] = v89[121];
        v31 = v134;
        goto LABEL_141;
      }

LABEL_138:
      v102 = *(v89 + 5);
      *(v88 + 4) = *(v89 + 4);
      *(v88 + 5) = v102;
      *(v88 + 6) = *(v89 + 6);
      *(v88 + 106) = *(v89 + 106);
      v103 = *(v89 + 1);
      *v88 = *v89;
      *(v88 + 1) = v103;
      v104 = *(v89 + 3);
      *(v88 + 2) = *(v89 + 2);
      *(v88 + 3) = v104;
LABEL_141:
      *(v31 + v86[6]) = *(v32 + v86[6]);
      *(v31 + v86[7]) = *(v32 + v86[7]);
      *(v31 + v86[8]) = *(v32 + v86[8]);
      *(v31 + v86[9]) = *(v32 + v86[9]);
      *(v31 + v86[10]) = *(v32 + v86[10]);
      v105 = v86[11];
      v106 = *(v32 + v105);
      *(v31 + v105) = v106;
      v107 = v106;
      goto LABEL_172;
    }

    v50 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v51 = swift_getEnumCaseMultiPayload();
    v140 = v34;
    v137 = v33;
    if (v51 <= 4)
    {
      if (v51 > 2)
      {
LABEL_112:
        v83 = sub_21DBF563C();
        (*(*(v83 - 8) + 16))(v31, v32, v83);
        swift_storeEnumTagMultiPayload();
        goto LABEL_143;
      }

      if (v51 != 1)
      {
        if (v51 == 2)
        {
          goto LABEL_112;
        }

        goto LABEL_142;
      }

LABEL_115:
      v84 = *v32;
      *v31 = *v32;
      v85 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_143;
    }

    if (v51 > 7)
    {
      if (v51 == 8 || v51 == 9)
      {
        goto LABEL_115;
      }
    }

    else if (v51 == 5 || v51 == 6)
    {
      goto LABEL_112;
    }

LABEL_142:
    memcpy(v31, v32, *(*(v50 - 8) + 64));
LABEL_143:
    v86 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v108 = v86[5];
    v88 = v31 + v108;
    v89 = v32 + v108;
    v109 = *(v32 + v108 + 8);
    if (v109)
    {
      v135 = v31;
      *v88 = *v89;
      *(v88 + 1) = v109;
      v110 = *(v89 + 2);
      v111 = *(v89 + 3);
      v113 = *(v89 + 4);
      v112 = *(v89 + 5);
      v114 = *(v89 + 6);
      v127 = *(v89 + 7);
      v131 = v89[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v110, v111, v113, v112, v114, v127, v131);
      *(v88 + 2) = v110;
      *(v88 + 3) = v111;
      *(v88 + 4) = v113;
      *(v88 + 5) = v112;
      *(v88 + 6) = v114;
      *(v88 + 7) = v127;
      v88[64] = v131;
      *(v88 + 65) = *(v89 + 65);
      v115 = v89[120];
      if (v115 == 255)
      {
        *(v88 + 72) = *(v89 + 72);
        *(v88 + 88) = *(v89 + 88);
        *(v88 + 104) = *(v89 + 104);
        v88[120] = v89[120];
      }

      else
      {
        v116 = *(v89 + 9);
        v117 = *(v89 + 10);
        v118 = *(v89 + 12);
        v119 = *(v89 + 13);
        v128 = *(v89 + 14);
        v132 = *(v89 + 11);
        v120 = v115 & 1;
        sub_21D0FB960(v116, v117, v132, v118, v119, v128, v115 & 1);
        *(v88 + 9) = v116;
        *(v88 + 10) = v117;
        *(v88 + 11) = v132;
        *(v88 + 12) = v118;
        *(v88 + 13) = v119;
        *(v88 + 14) = v128;
        v88[120] = v120;
      }

      v33 = v137;
      v34 = v140;
      v88[121] = v89[121];
      v31 = v135;
      goto LABEL_141;
    }

    goto LABEL_138;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  memcpy(v31, v32, *(*(v35 - 8) + 64));
  return a1;
}

void **assignWithCopy for TTRIRemindersListItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D61738C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_45;
      }

      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    }

    v10 = *a2;
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    v15 = v10;
    if (v14(a2 + v11, 1, v12))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 == 5 || v19 == 6)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v19 > 2)
      {
LABEL_35:
        v23 = sub_21DBF563C();
        (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
        swift_storeEnumTagMultiPayload();
LABEL_43:
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
        goto LABEL_44;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          goto LABEL_35;
        }

LABEL_42:
        memcpy(a1 + v11, a2 + v11, *(v13 + 64));
        goto LABEL_43;
      }
    }

    v24 = *(a2 + v11);
    *(a1 + v11) = v24;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_43;
  }

LABEL_45:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = a2 + v26;
  *v27 = *v28;
  v27[1] = v28[1];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v29 = a3[13];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v30, 1, v32);
  v36 = v34(v31, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v38 = swift_getEnumCaseMultiPayload();
      if (v38 > 3)
      {
        if (v38 > 5)
        {
          switch(v38)
          {
            case 6:
              v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v65 = *(v64 - 8);
              if ((*(v65 + 48))(v31, 1, v64))
              {
                v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(v30, v31, *(*(v66 - 8) + 64));
              }

              else
              {
                *v30 = *v31;
                v91 = *(v64 + 20);
                v92 = sub_21DBF6C1C();
                v238 = *(*(v92 - 8) + 16);
                sub_21DBF8E0C();
                v238(v30 + v91, v31 + v91, v92);
                (*(v65 + 56))(v30, 0, 1, v64);
              }

              v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v94 = (v30 + v93);
              v95 = (v31 + v93);
              if (v95[1])
              {
                *v94 = *v95;
                v94[1] = v95[1];
                v96 = v95[2];
                v94[2] = v96;
                sub_21DBF8E0C();
                v97 = v96;
              }

              else
              {
                v98 = *v95;
                v94[2] = v95[2];
                *v94 = v98;
              }

              goto LABEL_282;
            case 7:
              v70 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v71 = *(v70 - 8);
              if ((*(v71 + 48))(v31, 1, v70))
              {
                v72 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v30, v31, *(*(v72 - 8) + 64));
              }

              else
              {
                v107 = sub_21DBF563C();
                (*(*(v107 - 8) + 16))(v30, v31, v107);
                *(v30 + *(v70 + 20)) = *(v31 + *(v70 + 20));
                (*(v71 + 56))(v30, 0, 1, v70);
              }

              v108 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v30 + *(v108 + 20)) = *(v31 + *(v108 + 20));
              goto LABEL_282;
            case 8:
              *v30 = *v31;
              v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v40 = sub_21DBF8D7C();
              (*(*(v40 - 8) + 16))(v30 + v39, v31 + v39, v40);
LABEL_282:
              swift_storeEnumTagMultiPayload();
              goto LABEL_283;
          }

LABEL_98:
          memcpy(v30, v31, *(*(v37 - 8) + 64));
LABEL_283:
          (*(v33 + 56))(v30, 0, 1, v32);
          return a1;
        }

        if (v38 != 4)
        {
          *v30 = *v31;
          *(v30 + 8) = *(v31 + 8);
          *(v30 + 9) = *(v31 + 9);
          *(v30 + 10) = *(v31 + 10);
          v54 = v31[2];
          v30[2] = v54;
          v55 = v54;
          goto LABEL_282;
        }

        v67 = *v31;
        *v30 = *v31;
        v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v50 = *(v49 - 8);
        v68 = *(v50 + 48);
        v69 = v67;
        v53 = v237;
        if (v68(v31 + v237, 1, v49))
        {
LABEL_91:
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(v30 + v53, v31 + v53, *(*(v63 - 8) + 64));
          goto LABEL_282;
        }

        v99 = swift_getEnumCaseMultiPayload();
        if (v99 > 4)
        {
          if (v99 <= 7)
          {
            if (v99 == 5 || v99 == 6)
            {
              goto LABEL_233;
            }

            goto LABEL_280;
          }

          if (v99 != 8 && v99 != 9)
          {
            goto LABEL_280;
          }

LABEL_232:
          v168 = *(v31 + v237);
          *(v30 + v237) = v168;
          v169 = v168;
          swift_storeEnumTagMultiPayload();
LABEL_281:
          (*(v50 + 56))(v30 + v237, 0, 1, v49);
          goto LABEL_282;
        }

        if (v99 <= 2)
        {
          if (v99 != 1)
          {
            if (v99 == 2)
            {
              goto LABEL_233;
            }

LABEL_280:
            memcpy(v30 + v237, v31 + v237, *(v50 + 64));
            goto LABEL_281;
          }

          goto LABEL_232;
        }

LABEL_233:
        v170 = sub_21DBF563C();
        (*(*(v170 - 8) + 16))(v30 + v237, v31 + v237, v170);
        swift_storeEnumTagMultiPayload();
        goto LABEL_281;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v60 = *v31;
          *v30 = *v31;
          v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v50 = *(v49 - 8);
          v61 = *(v50 + 48);
          v62 = v60;
          v53 = v237;
          if (v61(v31 + v237, 1, v49))
          {
            goto LABEL_91;
          }

          v84 = swift_getEnumCaseMultiPayload();
          if (v84 > 4)
          {
            if (v84 <= 7)
            {
              if (v84 == 5 || v84 == 6)
              {
                goto LABEL_233;
              }

              goto LABEL_280;
            }

            if (v84 != 8 && v84 != 9)
            {
              goto LABEL_280;
            }

            goto LABEL_232;
          }

          if (v84 > 2)
          {
            goto LABEL_233;
          }

          if (v84 == 1)
          {
            goto LABEL_232;
          }

          if (v84 != 2)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v48 = *v31;
          *v30 = *v31;
          v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v50 = *(v49 - 8);
          v51 = *(v50 + 48);
          v52 = v48;
          v53 = v237;
          if (v51(v31 + v237, 1, v49))
          {
            goto LABEL_91;
          }

          v81 = swift_getEnumCaseMultiPayload();
          if (v81 > 4)
          {
            if (v81 <= 7)
            {
              if (v81 == 5 || v81 == 6)
              {
                goto LABEL_233;
              }

              goto LABEL_280;
            }

            if (v81 != 8 && v81 != 9)
            {
              goto LABEL_280;
            }

            goto LABEL_232;
          }

          if (v81 > 2)
          {
            goto LABEL_233;
          }

          if (v81 == 1)
          {
            goto LABEL_232;
          }

          if (v81 != 2)
          {
            goto LABEL_280;
          }
        }

        goto LABEL_233;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          goto LABEL_98;
        }

        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 4)
        {
          if (v47 > 2)
          {
LABEL_147:
            v109 = sub_21DBF563C();
            (*(*(v109 - 8) + 16))(v30, v31, v109);
            swift_storeEnumTagMultiPayload();
            goto LABEL_203;
          }

          if (v47 != 1)
          {
            if (v47 == 2)
            {
              goto LABEL_147;
            }

            goto LABEL_202;
          }

LABEL_150:
          v110 = *v31;
          *v30 = *v31;
          v111 = v110;
          swift_storeEnumTagMultiPayload();
          goto LABEL_203;
        }

        if (v47 > 7)
        {
          if (v47 == 8 || v47 == 9)
          {
            goto LABEL_150;
          }
        }

        else if (v47 == 5 || v47 == 6)
        {
          goto LABEL_147;
        }

LABEL_202:
        memcpy(v30, v31, *(*(v46 - 8) + 64));
LABEL_203:
        v128 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v129 = v128[5];
        v130 = v30 + v129;
        v131 = v31 + v129;
        if (*(v31 + v129 + 8))
        {
          v240 = v30;
          *v130 = *v131;
          *(v130 + 1) = *(v131 + 1);
          v132 = *(v131 + 2);
          v133 = *(v131 + 3);
          v134 = *(v131 + 4);
          v213 = *(v131 + 5);
          v221 = *(v131 + 7);
          v229 = *(v131 + 6);
          v217 = v131[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v132, v133, v134, v213, v229, v221, v217);
          *(v130 + 2) = v132;
          *(v130 + 3) = v133;
          *(v130 + 4) = v134;
          *(v130 + 5) = v213;
          *(v130 + 6) = v229;
          *(v130 + 7) = v221;
          v130[64] = v217;
          v130[65] = v131[65];
          v130[66] = v131[66];
          v130[67] = v131[67];
          v130[68] = v131[68];
          v135 = v131[120];
          if (v135 == 255)
          {
            v145 = *(v131 + 72);
            v146 = *(v131 + 88);
            v147 = *(v131 + 104);
            v130[120] = v131[120];
            *(v130 + 104) = v147;
            *(v130 + 88) = v146;
            *(v130 + 72) = v145;
          }

          else
          {
            v136 = *(v131 + 9);
            v222 = *(v131 + 11);
            v230 = *(v131 + 10);
            v137 = *(v131 + 13);
            v214 = *(v131 + 14);
            v218 = *(v131 + 12);
            v138 = v135 & 1;
            sub_21D0FB960(v136, v230, v222, v218, v137, v214, v135 & 1);
            *(v130 + 9) = v136;
            *(v130 + 10) = v230;
            *(v130 + 11) = v222;
            *(v130 + 12) = v218;
            *(v130 + 13) = v137;
            *(v130 + 14) = v214;
            v130[120] = v138;
          }

          v30 = v240;
          v130[121] = v131[121];
          goto LABEL_209;
        }

LABEL_206:
        v139 = *v131;
        v140 = *(v131 + 1);
        v141 = *(v131 + 3);
        *(v130 + 2) = *(v131 + 2);
        *(v130 + 3) = v141;
        *v130 = v139;
        *(v130 + 1) = v140;
        v142 = *(v131 + 4);
        v143 = *(v131 + 5);
        v144 = *(v131 + 6);
        *(v130 + 106) = *(v131 + 106);
        *(v130 + 5) = v143;
        *(v130 + 6) = v144;
        *(v130 + 4) = v142;
LABEL_209:
        *(v30 + v128[6]) = *(v31 + v128[6]);
        *(v30 + v128[7]) = *(v31 + v128[7]);
        *(v30 + v128[8]) = *(v31 + v128[8]);
        *(v30 + v128[9]) = *(v31 + v128[9]);
        *(v30 + v128[10]) = *(v31 + v128[10]);
        v148 = v128[11];
        v149 = *(v31 + v148);
        *(v30 + v148) = v149;
        v150 = v149;
        goto LABEL_282;
      }

      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = swift_getEnumCaseMultiPayload();
      if (v59 <= 4)
      {
        if (v59 > 2)
        {
LABEL_151:
          v112 = sub_21DBF563C();
          (*(*(v112 - 8) + 16))(v30, v31, v112);
          swift_storeEnumTagMultiPayload();
          goto LABEL_211;
        }

        if (v59 != 1)
        {
          if (v59 == 2)
          {
            goto LABEL_151;
          }

          goto LABEL_210;
        }

LABEL_154:
        v113 = *v31;
        *v30 = *v31;
        v114 = v113;
        swift_storeEnumTagMultiPayload();
        goto LABEL_211;
      }

      if (v59 > 7)
      {
        if (v59 == 8 || v59 == 9)
        {
          goto LABEL_154;
        }
      }

      else if (v59 == 5 || v59 == 6)
      {
        goto LABEL_151;
      }

LABEL_210:
      memcpy(v30, v31, *(*(v58 - 8) + 64));
LABEL_211:
      v128 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v151 = v128[5];
      v130 = v30 + v151;
      v131 = v31 + v151;
      if (*(v31 + v151 + 8))
      {
        v241 = v30;
        *v130 = *v131;
        *(v130 + 1) = *(v131 + 1);
        v152 = *(v131 + 2);
        v153 = *(v131 + 3);
        v154 = *(v131 + 4);
        v215 = *(v131 + 5);
        v223 = *(v131 + 7);
        v231 = *(v131 + 6);
        v219 = v131[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v152, v153, v154, v215, v231, v223, v219);
        *(v130 + 2) = v152;
        *(v130 + 3) = v153;
        *(v130 + 4) = v154;
        *(v130 + 5) = v215;
        *(v130 + 6) = v231;
        *(v130 + 7) = v223;
        v130[64] = v219;
        v130[65] = v131[65];
        v130[66] = v131[66];
        v130[67] = v131[67];
        v130[68] = v131[68];
        v155 = v131[120];
        if (v155 == 255)
        {
          v159 = *(v131 + 72);
          v160 = *(v131 + 88);
          v161 = *(v131 + 104);
          v130[120] = v131[120];
          *(v130 + 104) = v161;
          *(v130 + 88) = v160;
          *(v130 + 72) = v159;
        }

        else
        {
          v156 = *(v131 + 9);
          v224 = *(v131 + 11);
          v232 = *(v131 + 10);
          v157 = *(v131 + 13);
          v216 = *(v131 + 14);
          v220 = *(v131 + 12);
          v158 = v155 & 1;
          sub_21D0FB960(v156, v232, v224, v220, v157, v216, v155 & 1);
          *(v130 + 9) = v156;
          *(v130 + 10) = v232;
          *(v130 + 11) = v224;
          *(v130 + 12) = v220;
          *(v130 + 13) = v157;
          *(v130 + 14) = v216;
          v130[120] = v158;
        }

        v30 = v241;
        v130[121] = v131[121];
        goto LABEL_209;
      }

      goto LABEL_206;
    }

    goto LABEL_55;
  }

  if (v36)
  {
    sub_21D0CF7E0(v30, &qword_27CE5A0C8, &qword_21DC0E388);
LABEL_55:
    v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0) - 8) + 64);
LABEL_56:
    memcpy(v30, v31, v41);
    return a1;
  }

  if (a1 == a2)
  {
    return a1;
  }

  sub_21D61738C(v30, type metadata accessor for TTRRemindersListViewModel.Item);
  v42 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 3)
  {
    if (v43 <= 1)
    {
      if (v43)
      {
        if (v43 != 1)
        {
LABEL_146:
          v41 = *(*(v42 - 8) + 64);
          goto LABEL_56;
        }

        v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v57 = swift_getEnumCaseMultiPayload();
        if (v57 <= 4)
        {
          if (v57 > 2)
          {
LABEL_217:
            v162 = sub_21DBF563C();
            (*(*(v162 - 8) + 16))(v30, v31, v162);
            swift_storeEnumTagMultiPayload();
            goto LABEL_265;
          }

          if (v57 != 1)
          {
            if (v57 == 2)
            {
              goto LABEL_217;
            }

            goto LABEL_264;
          }

LABEL_221:
          v163 = *v31;
          *v30 = *v31;
          v164 = v163;
          swift_storeEnumTagMultiPayload();
          goto LABEL_265;
        }

        if (v57 > 7)
        {
          if (v57 == 8 || v57 == 9)
          {
            goto LABEL_221;
          }
        }

        else if (v57 == 5 || v57 == 6)
        {
          goto LABEL_217;
        }

LABEL_264:
        memcpy(v30, v31, *(*(v56 - 8) + 64));
LABEL_265:
        v171 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v172 = v171[5];
        v173 = v30 + v172;
        v174 = v31 + v172;
        if (*(v31 + v172 + 8))
        {
          *v173 = *v174;
          *(v173 + 1) = *(v174 + 1);
          v175 = *(v174 + 2);
          v176 = *(v174 + 3);
          v177 = *(v174 + 4);
          v178 = *(v174 + 5);
          v225 = *(v174 + 6);
          v242 = *(v174 + 7);
          v233 = v174[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v175, v176, v177, v178, v225, v242, v233);
          *(v173 + 2) = v175;
          *(v173 + 3) = v176;
          *(v173 + 4) = v177;
          *(v173 + 5) = v178;
          *(v173 + 6) = v225;
          *(v173 + 7) = v242;
          v173[64] = v233;
          v173[65] = v174[65];
          v173[66] = v174[66];
          v173[67] = v174[67];
          v173[68] = v174[68];
          v179 = v174[120];
          if (v179 == 255)
          {
            v190 = *(v174 + 72);
            v191 = *(v174 + 88);
            v192 = *(v174 + 104);
            v173[120] = v174[120];
            *(v173 + 104) = v192;
            *(v173 + 88) = v191;
            *(v173 + 72) = v190;
          }

          else
          {
            v234 = *(v174 + 10);
            v243 = *(v174 + 9);
            v180 = *(v174 + 12);
            v226 = *(v174 + 11);
            v181 = *(v174 + 13);
            v182 = *(v174 + 14);
            v183 = v179 & 1;
            sub_21D0FB960(v243, v234, v226, v180, v181, v182, v179 & 1);
            *(v173 + 9) = v243;
            *(v173 + 10) = v234;
            *(v173 + 11) = v226;
            *(v173 + 12) = v180;
            *(v173 + 13) = v181;
            *(v173 + 14) = v182;
            v173[120] = v183;
          }

          v173[121] = v174[121];
          goto LABEL_271;
        }

LABEL_268:
        v184 = *v174;
        v185 = *(v174 + 1);
        v186 = *(v174 + 3);
        *(v173 + 2) = *(v174 + 2);
        *(v173 + 3) = v186;
        *v173 = v184;
        *(v173 + 1) = v185;
        v187 = *(v174 + 4);
        v188 = *(v174 + 5);
        v189 = *(v174 + 6);
        *(v173 + 106) = *(v174 + 106);
        *(v173 + 5) = v188;
        *(v173 + 6) = v189;
        *(v173 + 4) = v187;
LABEL_271:
        *(v30 + v171[6]) = *(v31 + v171[6]);
        *(v30 + v171[7]) = *(v31 + v171[7]);
        *(v30 + v171[8]) = *(v31 + v171[8]);
        *(v30 + v171[9]) = *(v31 + v171[9]);
        *(v30 + v171[10]) = *(v31 + v171[10]);
        v193 = v171[11];
        v194 = *(v31 + v193);
        *(v30 + v193) = v194;
        v195 = v194;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v82 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v83 = swift_getEnumCaseMultiPayload();
      if (v83 <= 4)
      {
        if (v83 > 2)
        {
LABEL_225:
          v165 = sub_21DBF563C();
          (*(*(v165 - 8) + 16))(v30, v31, v165);
          swift_storeEnumTagMultiPayload();
          goto LABEL_274;
        }

        if (v83 != 1)
        {
          if (v83 == 2)
          {
            goto LABEL_225;
          }

          goto LABEL_273;
        }

LABEL_229:
        v166 = *v31;
        *v30 = *v31;
        v167 = v166;
        swift_storeEnumTagMultiPayload();
        goto LABEL_274;
      }

      if (v83 > 7)
      {
        if (v83 == 8 || v83 == 9)
        {
          goto LABEL_229;
        }
      }

      else if (v83 == 5 || v83 == 6)
      {
        goto LABEL_225;
      }

LABEL_273:
      memcpy(v30, v31, *(*(v82 - 8) + 64));
LABEL_274:
      v171 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v196 = v171[5];
      v173 = v30 + v196;
      v174 = v31 + v196;
      if (*(v31 + v196 + 8))
      {
        *v173 = *v174;
        *(v173 + 1) = *(v174 + 1);
        v197 = *(v174 + 2);
        v198 = *(v174 + 3);
        v199 = *(v174 + 4);
        v200 = *(v174 + 5);
        v227 = *(v174 + 6);
        v244 = *(v174 + 7);
        v235 = v174[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v197, v198, v199, v200, v227, v244, v235);
        *(v173 + 2) = v197;
        *(v173 + 3) = v198;
        *(v173 + 4) = v199;
        *(v173 + 5) = v200;
        *(v173 + 6) = v227;
        *(v173 + 7) = v244;
        v173[64] = v235;
        v173[65] = v174[65];
        v173[66] = v174[66];
        v173[67] = v174[67];
        v173[68] = v174[68];
        v201 = v174[120];
        if (v201 == 255)
        {
          v206 = *(v174 + 72);
          v207 = *(v174 + 88);
          v208 = *(v174 + 104);
          v173[120] = v174[120];
          *(v173 + 104) = v208;
          *(v173 + 88) = v207;
          *(v173 + 72) = v206;
        }

        else
        {
          v236 = *(v174 + 10);
          v245 = *(v174 + 9);
          v202 = *(v174 + 12);
          v228 = *(v174 + 11);
          v203 = *(v174 + 13);
          v204 = *(v174 + 14);
          v205 = v201 & 1;
          sub_21D0FB960(v245, v236, v228, v202, v203, v204, v201 & 1);
          *(v173 + 9) = v245;
          *(v173 + 10) = v236;
          *(v173 + 11) = v228;
          *(v173 + 12) = v202;
          *(v173 + 13) = v203;
          *(v173 + 14) = v204;
          v173[120] = v205;
        }

        v173[121] = v174[121];
        goto LABEL_271;
      }

      goto LABEL_268;
    }

    if (v43 == 2)
    {
      v85 = *v31;
      *v30 = *v31;
      v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v76 = *(v75 - 8);
      v86 = *(v76 + 48);
      v87 = v85;
      if (v86(v31 + v74, 1, v75))
      {
        goto LABEL_141;
      }

      v116 = swift_getEnumCaseMultiPayload();
      if (v116 > 4)
      {
        if (v116 <= 7)
        {
          if (v116 == 5 || v116 == 6)
          {
            goto LABEL_285;
          }

          goto LABEL_306;
        }

        if (v116 != 8 && v116 != 9)
        {
          goto LABEL_306;
        }

        goto LABEL_288;
      }

      if (v116 > 2)
      {
        goto LABEL_285;
      }

      if (v116 == 1)
      {
        goto LABEL_288;
      }

      if (v116 != 2)
      {
        goto LABEL_306;
      }
    }

    else
    {
      v73 = *v31;
      *v30 = *v31;
      v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v76 = *(v75 - 8);
      v77 = *(v76 + 48);
      v78 = v73;
      if (v77(v31 + v74, 1, v75))
      {
LABEL_141:
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v30 + v74, v31 + v74, *(*(v103 - 8) + 64));
LABEL_308:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v115 = swift_getEnumCaseMultiPayload();
      if (v115 > 4)
      {
        if (v115 <= 7)
        {
          if (v115 == 5 || v115 == 6)
          {
            goto LABEL_285;
          }

          goto LABEL_306;
        }

        if (v115 != 8 && v115 != 9)
        {
          goto LABEL_306;
        }

        goto LABEL_288;
      }

      if (v115 <= 2)
      {
        if (v115 == 1)
        {
          goto LABEL_288;
        }

        if (v115 != 2)
        {
          goto LABEL_306;
        }
      }
    }

LABEL_285:
    v210 = sub_21DBF563C();
    (*(*(v210 - 8) + 16))(v30 + v74, v31 + v74, v210);
    swift_storeEnumTagMultiPayload();
LABEL_307:
    (*(v76 + 56))(v30 + v74, 0, 1, v75);
    goto LABEL_308;
  }

  if (v43 <= 5)
  {
    if (v43 != 4)
    {
      *v30 = *v31;
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = *(v31 + 9);
      *(v30 + 10) = *(v31 + 10);
      v79 = v31[2];
      v30[2] = v79;
      v80 = v79;
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v100 = *v31;
    *v30 = *v31;
    v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v76 = *(v75 - 8);
    v101 = *(v76 + 48);
    v102 = v100;
    if (v101(v31 + v74, 1, v75))
    {
      goto LABEL_141;
    }

    v125 = swift_getEnumCaseMultiPayload();
    if (v125 > 4)
    {
      if (v125 <= 7)
      {
        if (v125 == 5 || v125 == 6)
        {
          goto LABEL_285;
        }

        goto LABEL_306;
      }

      if (v125 != 8 && v125 != 9)
      {
        goto LABEL_306;
      }
    }

    else
    {
      if (v125 > 2)
      {
        goto LABEL_285;
      }

      if (v125 != 1)
      {
        if (v125 == 2)
        {
          goto LABEL_285;
        }

LABEL_306:
        memcpy(v30 + v74, v31 + v74, *(v76 + 64));
        goto LABEL_307;
      }
    }

LABEL_288:
    v211 = *(v31 + v74);
    *(v30 + v74) = v211;
    v212 = v211;
    swift_storeEnumTagMultiPayload();
    goto LABEL_307;
  }

  if (v43 == 6)
  {
    v88 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v31, 1, v88))
    {
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v30, v31, *(*(v90 - 8) + 64));
    }

    else
    {
      *v30 = *v31;
      v117 = *(v88 + 20);
      v118 = sub_21DBF6C1C();
      v239 = *(*(v118 - 8) + 16);
      sub_21DBF8E0C();
      v239(v30 + v117, v31 + v117, v118);
      (*(v89 + 56))(v30, 0, 1, v88);
    }

    v119 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v120 = (v30 + v119);
    v121 = (v31 + v119);
    if (v121[1])
    {
      *v120 = *v121;
      v120[1] = v121[1];
      v122 = v121[2];
      v120[2] = v122;
      sub_21DBF8E0C();
      v123 = v122;
    }

    else
    {
      v124 = *v121;
      v120[2] = v121[2];
      *v120 = v124;
    }

    goto LABEL_308;
  }

  if (v43 != 7)
  {
    if (v43 == 8)
    {
      *v30 = *v31;
      v44 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v45 = sub_21DBF8D7C();
      (*(*(v45 - 8) + 16))(v30 + v44, v31 + v44, v45);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    goto LABEL_146;
  }

  v104 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v105 = *(v104 - 8);
  if ((*(v105 + 48))(v31, 1, v104))
  {
    v106 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v30, v31, *(*(v106 - 8) + 64));
  }

  else
  {
    v126 = sub_21DBF563C();
    (*(*(v126 - 8) + 16))(v30, v31, v126);
    *(v30 + *(v104 + 20)) = *(v31 + *(v104 + 20));
    (*(v105 + 56))(v30, 0, 1, v104);
  }

  v127 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(v30 + *(v127 + 20)) = *(v31 + *(v127 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D61738C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRIRemindersListItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_32;
  }

  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 <= 3)
  {
    if (v9 == 2 || v9 == 3)
    {
      goto LABEL_7;
    }

LABEL_22:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  if (v9 != 4 && v9 != 5 && v9 != 6)
  {
    goto LABEL_22;
  }

LABEL_7:
  v10 = sub_21DBF563C();
  (*(*(v10 - 8) + 32))(a1, a2, v10);
  swift_storeEnumTagMultiPayload();
LABEL_31:
  swift_storeEnumTagMultiPayload();
LABEL_32:
  v17 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v17] = *&a2[v17];
  v18 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v18] = a2[v18];
  v19 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v19] = a2[v19];
  v20 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v21 = a3[13];
  v22 = &a1[v21];
  v23 = &a2[v21];
  a1[v20] = a2[v20];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 3)
    {
      if (v28 > 6)
      {
        if (v28 == 7)
        {
          v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v43 = *(v42 - 8);
          if ((*(v43 + 48))(v23, 1, v42))
          {
            v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v22, v23, *(*(v44 - 8) + 64));
          }

          else
          {
            v47 = sub_21DBF563C();
            (*(*(v47 - 8) + 32))(v22, v23, v47);
            v22[*(v42 + 20)] = v23[*(v42 + 20)];
            (*(v43 + 56))(v22, 0, 1, v42);
          }

          v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v22[*(v48 + 20)] = *&v23[*(v48 + 20)];
          goto LABEL_120;
        }

        if (v28 != 8)
        {
          goto LABEL_65;
        }

        *v22 = *v23;
        v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v39 = sub_21DBF8D7C();
        (*(*(v39 - 8) + 32))(&v22[v38], &v23[v38], v39);
LABEL_120:
        swift_storeEnumTagMultiPayload();
        goto LABEL_121;
      }

      if (v28 != 4)
      {
        if (v28 == 6)
        {
          v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v33 = *(v32 - 8);
          if ((*(v33 + 48))(v23, 1, v32))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(v22, v23, *(*(v34 - 8) + 64));
          }

          else
          {
            *v22 = *v23;
            v49 = *(v32 + 20);
            v50 = sub_21DBF6C1C();
            (*(*(v50 - 8) + 32))(&v22[v49], &v23[v49], v50);
            (*(v33 + 56))(v22, 0, 1, v32);
          }

          v51 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v52 = &v22[v51];
          v53 = &v23[v51];
          *v52 = *v53;
          *(v52 + 2) = *(v53 + 2);
          goto LABEL_120;
        }

        goto LABEL_65;
      }

      *v22 = *v23;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(&v23[v35], 1, v36))
      {
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 <= 3)
        {
          if (v45 == 2 || v45 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v45 == 4 || v45 == 5 || v45 == 6)
        {
          goto LABEL_90;
        }

        goto LABEL_118;
      }
    }

    else
    {
      if (v28 <= 1)
      {
        if (!v28)
        {
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v40 = swift_getEnumCaseMultiPayload();
          if (v40 <= 3)
          {
            if (v40 == 2 || v40 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v40 == 4 || v40 == 5 || v40 == 6)
          {
            goto LABEL_42;
          }

          goto LABEL_97;
        }

        if (v28 == 1)
        {
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v30 = swift_getEnumCaseMultiPayload();
          if (v30 <= 3)
          {
            if (v30 == 2 || v30 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v30 == 4 || v30 == 5 || v30 == 6)
          {
LABEL_42:
            v31 = sub_21DBF563C();
            (*(*(v31 - 8) + 32))(v22, v23, v31);
            swift_storeEnumTagMultiPayload();
LABEL_98:
            v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v57 = v56[5];
            v58 = &v22[v57];
            v59 = &v23[v57];
            v60 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v60;
            v61 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v61;
            *(v58 + 106) = *(v59 + 106);
            v62 = *(v59 + 6);
            *(v58 + 5) = *(v59 + 5);
            *(v58 + 6) = v62;
            *(v58 + 4) = *(v59 + 4);
            v22[v56[6]] = v23[v56[6]];
            v22[v56[7]] = v23[v56[7]];
            v22[v56[8]] = v23[v56[8]];
            v22[v56[9]] = v23[v56[9]];
            v22[v56[10]] = v23[v56[10]];
            *&v22[v56[11]] = *&v23[v56[11]];
            goto LABEL_120;
          }

LABEL_97:
          memcpy(v22, v23, *(*(v29 - 8) + 64));
          goto LABEL_98;
        }

LABEL_65:
        memcpy(v22, v23, *(*(v27 - 8) + 64));
LABEL_121:
        (*(v25 + 56))(v22, 0, 1, v24);
        return a1;
      }

      if (v28 != 2)
      {
        *v22 = *v23;
        v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(&v23[v35], 1, v36))
        {
          goto LABEL_62;
        }

        v54 = swift_getEnumCaseMultiPayload();
        if (v54 <= 3)
        {
          if (v54 == 2 || v54 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v54 == 4 || v54 == 5 || v54 == 6)
        {
LABEL_90:
          v55 = sub_21DBF563C();
          (*(*(v55 - 8) + 32))(&v22[v35], &v23[v35], v55);
          swift_storeEnumTagMultiPayload();
LABEL_119:
          (*(v37 + 56))(&v22[v35], 0, 1, v36);
          goto LABEL_120;
        }

LABEL_118:
        memcpy(&v22[v35], &v23[v35], *(v37 + 64));
        goto LABEL_119;
      }

      *v22 = *v23;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(&v23[v35], 1, v36))
      {
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 <= 3)
        {
          if (v46 == 2 || v46 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v46 == 4 || v46 == 5 || v46 == 6)
        {
          goto LABEL_90;
        }

        goto LABEL_118;
      }
    }

LABEL_62:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&v22[v35], &v23[v35], *(*(v41 - 8) + 64));
    goto LABEL_120;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  memcpy(v22, v23, *(*(v26 - 8) + 64));
  return a1;
}

void *assignWithTake for TTRIRemindersListItemIntermediateViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D61738C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_33;
      }

      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 <= 3)
      {
        if (v9 == 2 || v9 == 3)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 4 || v9 == 5 || v9 == 6)
      {
LABEL_8:
        v10 = sub_21DBF563C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        swift_storeEnumTagMultiPayload();
LABEL_32:
        swift_storeEnumTagMultiPayload();
        goto LABEL_33;
      }

      memcpy(a1, a2, *(*(v8 - 8) + 64));
      goto LABEL_32;
    }

    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(a1 + v11, a2 + v11, v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(a1 + v11, a2 + v11, *(v13 + 64));
    goto LABEL_31;
  }

LABEL_33:
  v17 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *v18 = *v19;
  v18[1] = v19[1];
  v20 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v23 = a3[13];
  v24 = a1 + v23;
  v25 = a2 + v23;
  *(a1 + v22) = *(a2 + v22);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v24, 1, v26);
  v30 = v28(v25, 1, v26);
  if (v29)
  {
    if (!v30)
    {
      v31 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v32 = swift_getEnumCaseMultiPayload();
      if (v32 > 3)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v55 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v56 = *(v55 - 8);
            if ((*(v56 + 48))(v25, 1, v55))
            {
              v57 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v24, v25, *(*(v57 - 8) + 64));
            }

            else
            {
              v67 = sub_21DBF563C();
              (*(*(v67 - 8) + 32))(v24, v25, v67);
              v24[*(v55 + 20)] = v25[*(v55 + 20)];
              (*(v56 + 56))(v24, 0, 1, v55);
            }

            v68 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&v24[*(v68 + 20)] = *&v25[*(v68 + 20)];
            goto LABEL_194;
          }

          if (v32 != 8)
          {
            goto LABEL_85;
          }

          *v24 = *v25;
          v48 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v49 = sub_21DBF8D7C();
          (*(*(v49 - 8) + 32))(&v24[v48], &v25[v48], v49);
LABEL_194:
          swift_storeEnumTagMultiPayload();
          goto LABEL_195;
        }

        if (v32 != 4)
        {
          if (v32 == 6)
          {
            v42 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v43 = *(v42 - 8);
            if ((*(v43 + 48))(v25, 1, v42))
            {
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v24, v25, *(*(v44 - 8) + 64));
            }

            else
            {
              *v24 = *v25;
              v72 = *(v42 + 20);
              v73 = sub_21DBF6C1C();
              (*(*(v73 - 8) + 32))(&v24[v72], &v25[v72], v73);
              (*(v43 + 56))(v24, 0, 1, v42);
            }

            v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v75 = &v24[v74];
            v76 = &v25[v74];
            *v75 = *v76;
            *(v75 + 2) = *(v76 + 2);
            goto LABEL_194;
          }

          goto LABEL_85;
        }

        *v24 = *v25;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(&v25[v45], 1, v46))
        {
          v65 = swift_getEnumCaseMultiPayload();
          if (v65 <= 3)
          {
            if (v65 == 2 || v65 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v65 == 4 || v65 == 5 || v65 == 6)
          {
            goto LABEL_127;
          }

          goto LABEL_192;
        }
      }

      else
      {
        if (v32 <= 1)
        {
          if (!v32)
          {
            v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v53 = swift_getEnumCaseMultiPayload();
            if (v53 <= 3)
            {
              if (v53 == 2 || v53 == 3)
              {
                goto LABEL_43;
              }
            }

            else if (v53 == 4 || v53 == 5 || v53 == 6)
            {
              goto LABEL_43;
            }

            goto LABEL_135;
          }

          if (v32 == 1)
          {
            v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v34 = swift_getEnumCaseMultiPayload();
            if (v34 <= 3)
            {
              if (v34 == 2 || v34 == 3)
              {
                goto LABEL_43;
              }
            }

            else if (v34 == 4 || v34 == 5 || v34 == 6)
            {
LABEL_43:
              v35 = sub_21DBF563C();
              (*(*(v35 - 8) + 32))(v24, v25, v35);
              swift_storeEnumTagMultiPayload();
LABEL_136:
              v79 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v80 = v79[5];
              v81 = &v24[v80];
              v82 = &v25[v80];
              v83 = v82[3];
              v81[2] = v82[2];
              v81[3] = v83;
              v84 = v82[1];
              *v81 = *v82;
              v81[1] = v84;
              *(v81 + 106) = *(v82 + 106);
              v85 = v82[6];
              v81[5] = v82[5];
              v81[6] = v85;
              v81[4] = v82[4];
              v24[v79[6]] = v25[v79[6]];
              v24[v79[7]] = v25[v79[7]];
              v24[v79[8]] = v25[v79[8]];
              v24[v79[9]] = v25[v79[9]];
              v24[v79[10]] = v25[v79[10]];
              *&v24[v79[11]] = *&v25[v79[11]];
              goto LABEL_194;
            }

LABEL_135:
            memcpy(v24, v25, *(*(v33 - 8) + 64));
            goto LABEL_136;
          }

LABEL_85:
          memcpy(v24, v25, *(*(v31 - 8) + 64));
LABEL_195:
          (*(v27 + 56))(v24, 0, 1, v26);
          return a1;
        }

        if (v32 != 2)
        {
          *v24 = *v25;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(&v25[v45], 1, v46))
          {
            goto LABEL_82;
          }

          v77 = swift_getEnumCaseMultiPayload();
          if (v77 <= 3)
          {
            if (v77 == 2 || v77 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v77 == 4 || v77 == 5 || v77 == 6)
          {
LABEL_127:
            v78 = sub_21DBF563C();
            (*(*(v78 - 8) + 32))(&v24[v45], &v25[v45], v78);
            swift_storeEnumTagMultiPayload();
LABEL_193:
            (*(v47 + 56))(&v24[v45], 0, 1, v46);
            goto LABEL_194;
          }

LABEL_192:
          memcpy(&v24[v45], &v25[v45], *(v47 + 64));
          goto LABEL_193;
        }

        *v24 = *v25;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(&v25[v45], 1, v46))
        {
          v66 = swift_getEnumCaseMultiPayload();
          if (v66 <= 3)
          {
            if (v66 == 2 || v66 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v66 == 4 || v66 == 5 || v66 == 6)
          {
            goto LABEL_127;
          }

          goto LABEL_192;
        }
      }

LABEL_82:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&v24[v45], &v25[v45], *(*(v54 - 8) + 64));
      goto LABEL_194;
    }

    goto LABEL_46;
  }

  if (v30)
  {
    sub_21D0CF7E0(v24, &qword_27CE5A0C8, &qword_21DC0E388);
LABEL_46:
    v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0) - 8) + 64);
LABEL_47:
    memcpy(v24, v25, v36);
    return a1;
  }

  if (a1 == a2)
  {
    return a1;
  }

  sub_21D61738C(v24, type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v38 = swift_getEnumCaseMultiPayload();
  if (v38 <= 3)
  {
    if (v38 <= 1)
    {
      if (!v38)
      {
        v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 <= 3)
        {
          if (v64 == 2 || v64 == 3)
          {
            goto LABEL_57;
          }
        }

        else if (v64 == 4 || v64 == 5 || v64 == 6)
        {
          goto LABEL_57;
        }

        goto LABEL_187;
      }

      if (v38 == 1)
      {
        v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v40 = swift_getEnumCaseMultiPayload();
        if (v40 <= 3)
        {
          if (v40 == 2 || v40 == 3)
          {
            goto LABEL_57;
          }
        }

        else if (v40 == 4 || v40 == 5 || v40 == 6)
        {
LABEL_57:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 32))(v24, v25, v41);
          swift_storeEnumTagMultiPayload();
LABEL_188:
          v97 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v98 = v97[5];
          v99 = &v24[v98];
          v100 = &v25[v98];
          v101 = v100[3];
          v99[2] = v100[2];
          v99[3] = v101;
          v102 = v100[1];
          *v99 = *v100;
          v99[1] = v102;
          *(v99 + 106) = *(v100 + 106);
          v103 = v100[6];
          v99[5] = v100[5];
          v99[6] = v103;
          v99[4] = v100[4];
          v24[v97[6]] = v25[v97[6]];
          v24[v97[7]] = v25[v97[7]];
          v24[v97[8]] = v25[v97[8]];
          v24[v97[9]] = v25[v97[9]];
          v24[v97[10]] = v25[v97[10]];
          *&v24[v97[11]] = *&v25[v97[11]];
          swift_storeEnumTagMultiPayload();
          return a1;
        }

LABEL_187:
        memcpy(v24, v25, *(*(v39 - 8) + 64));
        goto LABEL_188;
      }

LABEL_128:
      v36 = *(*(v37 - 8) + 64);
      goto LABEL_47;
    }

    if (v38 == 2)
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
        goto LABEL_88;
      }

      v87 = swift_getEnumCaseMultiPayload();
      if (v87 <= 3)
      {
        if (v87 == 2 || v87 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v87 == 4 || v87 == 5 || v87 == 6)
      {
        goto LABEL_162;
      }
    }

    else
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
LABEL_88:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&v24[v58], &v25[v58], *(*(v61 - 8) + 64));
LABEL_217:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v96 = swift_getEnumCaseMultiPayload();
      if (v96 <= 3)
      {
        if (v96 == 2 || v96 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v96 == 4 || v96 == 5 || v96 == 6)
      {
LABEL_162:
        v88 = sub_21DBF563C();
        (*(*(v88 - 8) + 32))(&v24[v58], &v25[v58], v88);
        swift_storeEnumTagMultiPayload();
LABEL_216:
        (*(v60 + 56))(&v24[v58], 0, 1, v59);
        goto LABEL_217;
      }
    }

LABEL_215:
    memcpy(&v24[v58], &v25[v58], *(v60 + 64));
    goto LABEL_216;
  }

  if (v38 > 6)
  {
    if (v38 != 7)
    {
      if (v38 == 8)
      {
        *v24 = *v25;
        v62 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v63 = sub_21DBF8D7C();
        (*(*(v63 - 8) + 32))(&v24[v62], &v25[v62], v63);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_128;
    }

    v69 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v25, 1, v69))
    {
      v71 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v24, v25, *(*(v71 - 8) + 64));
    }

    else
    {
      v89 = sub_21DBF563C();
      (*(*(v89 - 8) + 32))(v24, v25, v89);
      v24[*(v69 + 20)] = v25[*(v69 + 20)];
      (*(v70 + 56))(v24, 0, 1, v69);
    }

    v90 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *&v24[*(v90 + 20)] = *&v25[*(v90 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v38 == 4)
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
        goto LABEL_88;
      }

      v86 = swift_getEnumCaseMultiPayload();
      if (v86 <= 3)
      {
        if (v86 == 2 || v86 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v86 == 4 || v86 == 5 || v86 == 6)
      {
        goto LABEL_162;
      }

      goto LABEL_215;
    }

    if (v38 != 6)
    {
      goto LABEL_128;
    }

    v50 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v25, 1, v50))
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v24, v25, *(*(v52 - 8) + 64));
    }

    else
    {
      *v24 = *v25;
      v91 = *(v50 + 20);
      v92 = sub_21DBF6C1C();
      (*(*(v92 - 8) + 32))(&v24[v91], &v25[v91], v92);
      (*(v51 + 56))(v24, 0, 1, v50);
    }

    v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v94 = &v24[v93];
    v95 = &v25[v93];
    *v94 = *v95;
    *(v94 + 2) = *(v95 + 2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_21D61B310(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v1 <= 0x3F)
  {
    sub_21D61B400(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D61B400(uint64_t a1)
{
  if (!qword_280D13710[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A0C8, &qword_21DC0E388);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, qword_280D13710);
    }
  }
}

uint64_t sub_21D61B498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21D0D3954(a1, &v6 - v3, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D23E2BC(v4);
}

uint64_t sub_21D61B61C@<X0>(const char *a1@<X3>, uint64_t *a2@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>, ...)
{
  v10 = *a2;
  swift_getKeyPath(a1);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  sub_21DBF5D9C();

  v11 = *a3;
  swift_beginAccess();
  return sub_21D0D3954(v10 + v11, a6, a4, a5);
}

uint64_t sub_21D61B700(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21D0D3954(a1, &v9[-v5], &qword_27CE5A0B8, &qword_21DC0E120);
  v7 = *a2;
  swift_getKeyPath("@o%_");
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  sub_21DBF5D8C();

  return sub_21D0CF7E0(v6, &qword_27CE5A0B8, &qword_21DC0E120);
}

double sub_21D61B904@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21DC1FEE8);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  a2[1] = v4;
  sub_21DBF8E0C();
  return result;
}

double sub_21D61B9BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21DBF8E0C();
  return sub_21D23F2C4(v1, v2);
}

double sub_21D61B9FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21DC1FF10);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D61BAF0@<X0>(const char *a1@<X3>, uint64_t *a2@<X0>, void *a3@<X4>, _BYTE *a4@<X8>, ...)
{
  v6 = *a2;
  swift_getKeyPath(a1);
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
  sub_21DBF5D9C();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_21D61BBCC(void *a1, _BYTE *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  MEMORY[0x28223BE20](v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268, &qword_21DC1FF88);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F270, &qword_21DC1FF90);
  sub_21D0D3954(&a2[*(v25 + 28)], v24, &qword_27CE5F268, &qword_21DC1FF88);
  if ((*a2 & 1) == 0)
  {
    sub_21D0D3954(v24, v21, &qword_27CE5F268, &qword_21DC1FF88);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010);
    if ((*(*(v26 - 8) + 48))(v21, 1, v26) == 1)
    {
      sub_21D0CF7E0(v21, &qword_27CE5F268, &qword_21DC1FF88);
    }

    else
    {
      v27 = *v21;
      sub_21D0CF7E0(v21, &unk_27CE5F110, &qword_21DC36010);
      if (v27 == *v41)
      {
        goto LABEL_10;
      }
    }
  }

  v28 = v4 + *(*v4 + 104);
  swift_beginAccess();
  sub_21D0D3954(v28, v18, &qword_27CE5F010, &unk_21DC1FA18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0CF7E0(v18, &qword_27CE5F010, &unk_21DC1FA18);
    }
  }

  else
  {
    sub_21D0CF7E0(v28, &qword_27CE5F010, &unk_21DC1FA18);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278, &qword_21DC1FF98) + 48);
    sub_21D6397E0(v18, v28, type metadata accessor for TTRRemindersListViewModel.Reminder);
    *(v28 + v30) = 0;
    swift_storeEnumTagMultiPayload();
  }

  swift_endAccess();
LABEL_10:
  v31 = v4 + *(*v4 + 104);
  swift_beginAccess();
  sub_21D0D3954(v31, v15, &qword_27CE5F010, &unk_21DC1FA18);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32)
  {
    if (v32 == 1)
    {
      v32 = sub_21D0CF7E0(v15, &qword_27CE5F010, &unk_21DC1FA18);
    }
  }

  else
  {
    v33 = v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278, &qword_21DC1FF98) + 48)];
    v32 = sub_21D6398B0(v15, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v33)
    {
      sub_21D0CF7E0(v24, &qword_27CE5F268, &qword_21DC1FF88);
      return 0;
    }
  }

  v47(v32);
  sub_21D0CF7E0(v24, &qword_27CE5F268, &qword_21DC1FF88);
  v34 = 1;
  if ((*(v44 + 48))(v8, 1, v45) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5A0B8, &qword_21DC0E120);
    swift_beginAccess();
    v35 = v42;
    sub_21D0D3954(v31, v42, &qword_27CE5F010, &unk_21DC1FA18);
    v36 = swift_getEnumCaseMultiPayload();
    if (v36)
    {
      if (v36 == 1)
      {
        sub_21D0CF7E0(v31, &qword_27CE5F010, &unk_21DC1FA18);
        swift_storeEnumTagMultiPayload();
        sub_21D0CF7E0(v35, &qword_27CE5F010, &unk_21DC1FA18);
        v34 = 1;
LABEL_22:
        swift_endAccess();
        return v34;
      }
    }

    else
    {
      sub_21D6398B0(v35, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v34 = 0;
    goto LABEL_22;
  }

  v37 = v43;
  sub_21D6397E0(v8, v43, type metadata accessor for TTRRemindersListViewModel.Reminder);
  swift_beginAccess();
  sub_21D0CF7E0(v31, &qword_27CE5F010, &unk_21DC1FA18);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278, &qword_21DC1FF98) + 48);
  sub_21D639848(v37, v31, type metadata accessor for TTRRemindersListViewModel.Reminder);
  *(v31 + v38) = 1;
  swift_storeEnumTagMultiPayload();
  swift_endAccess();
  sub_21D6398B0(v37, type metadata accessor for TTRRemindersListViewModel.Reminder);
  return v34;
}

uint64_t sub_21D61C294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = *(*v0 + 104);
  swift_beginAccess();
  sub_21D0D3954(v0 + v4, v3, &qword_27CE5F010, &unk_21DC1FA18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D0CF7E0(v0 + v4, &qword_27CE5F010, &unk_21DC1FA18);
    sub_21D6397E0(v3, v0 + v4, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v6 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    (*(*(v6 - 8) + 56))(v0 + v4, 0, 1, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return swift_endAccess();
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21D0CF7E0(v0 + v4, &qword_27CE5F010, &unk_21DC1FA18);
    v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    (*(*(v7 - 8) + 56))(v0 + v4, 1, 1, v7);
    goto LABEL_6;
  }

  sub_21D0CF7E0(v3, &qword_27CE5F010, &unk_21DC1FA18);
  return swift_endAccess();
}

void sub_21D61C450()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_134;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_147;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

void sub_21D61CCB8()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_216;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_226;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

void sub_21D61D520()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_174;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690, &unk_21DC11AB0);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_184_0;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690, &unk_21DC11AB0);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

uint64_t sub_21D61DD88(uint64_t (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_21DBFB10C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250, &unk_21DC13240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C848, &qword_21DC1FEB0);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v47 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F260, &unk_21DC16F90);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = v37 - v17;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    result = UIAccessibilityIsSwitchControlRunning();
    if (!result)
    {
      return result;
    }
  }

  v45 = v16;
  v46 = v15;
  v19 = a1();
  if (v19)
  {
    v22 = v19;
    if (v20)
    {
    }

    v38 = v21;
    v39 = v9;
    v40 = v7;
    v41 = v6;
    v42 = ObjectType;
    v43 = a2;
    v44 = v2;
  }

  else
  {
    v39 = v9;
    v40 = v7;
    v41 = v6;
    v42 = ObjectType;
    v43 = a2;
    v44 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    v22 = sub_21DBF907C();
    v38 = 0;
  }

  v51 = v22;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  swift_retain_n();
  v23 = sub_21DBFB12C();
  v54 = v23;
  v24 = sub_21DBFB0DC();
  v25 = *(v24 - 8);
  v37[0] = *(v25 + 56);
  v37[1] = v25 + 56;
  (v37[0])(v12, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE20]);
  sub_21D47130C();
  v26 = v47;
  sub_21DBF936C();
  sub_21D0CF7E0(v12, &unk_27CE5F250, &unk_21DC13240);

  v27 = v39;
  sub_21DBFB0EC();
  v28 = sub_21DBFB12C();
  v51 = v28;
  (v37[0])(v12, 1, 1, v24);
  sub_21D0D0F1C(&qword_280D0C4F8, &qword_27CE5C848, &qword_21DC1FEB0, MEMORY[0x277CBCD60]);
  v29 = v48;
  v30 = v50;
  sub_21DBF937C();
  sub_21D0CF7E0(v12, &unk_27CE5F250, &unk_21DC13240);

  (*(v40 + 8))(v27, v41);
  (*(v49 + 8))(v26, v30);
  sub_21D0D0F1C(&qword_280D0C540, &qword_27CE5F260, &unk_21DC16F90, MEMORY[0x277CBCCF8]);
  v31 = v44;
  v32 = v46;
  v33 = sub_21DBF91AC();
  (*(v45 + 8))(v29, v32);
  v34 = qword_27CE56928;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_27CE5C838;
  v51 = v22;
  v52 = v33;
  v53 = v38;

  v36 = sub_21DBFC69C();
  objc_setAssociatedObject(v31, v35, v36, 1);

  return swift_unknownObjectRelease();
}

void sub_21D61E394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21D61DD88(a3, a4);
  }
}

uint64_t sub_21D61E400()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EFD0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EFD0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIRemindersListReminderCell_collectionView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListReminderCell_collectionView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
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

void TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.getter(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

void TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.setter(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000, &qword_21DC1F9E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  if (v7 != v10)
  {
    if (v7)
    {
      [v1 setAutomaticallyUpdatesBackgroundConfiguration_];
      [v1 setNeedsUpdateConfiguration];
    }

    else
    {
      [v1 setAutomaticallyUpdatesBackgroundConfiguration_];
      sub_21DBF88BC();
      v11 = sub_21DBF88CC();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
      MEMORY[0x223D43B30](v5);
    }
  }
}

void (*TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000, &qword_21DC1F9E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = (v1 + v8);
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[2];
  *(v5 + 48) = *v9;
  v12 = v5 + 48;
  *(v12 + 1) = v10;
  *(v12 + 2) = v11;
  return sub_21D61E948;
}

void sub_21D61E948(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + (*a1)[3];
  v4 = *(*a1 + 49);
  v5 = *(*a1 + 50);
  v6 = v3[1];
  *v3 = *(*a1 + 48);
  v3[1] = v4;
  v3[2] = v5;
  if (a2)
  {
    if (((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
LABEL_4:
      v7 = v2[4];
      [v2[3] setAutomaticallyUpdatesBackgroundConfiguration_];
      sub_21DBF88BC();
      v8 = sub_21DBF88CC();
      (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
      MEMORY[0x223D43B30](v7);
      goto LABEL_8;
    }
  }

  v9 = v2[3];
  [v9 setAutomaticallyUpdatesBackgroundConfiguration_];
  [v9 setNeedsUpdateConfiguration];
LABEL_8:
  free(v2[4]);

  free(v2);
}

uint64_t TTRIRemindersListReminderCell_collectionView.itemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("xo%_");
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v4 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  swift_beginAccess();
  sub_21D0D3954(v3 + v4, a1, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t TTRIRemindersListReminderCell_collectionView.isViewModelValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater);
  v8 = *(*v7 + 104);
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v6, &qword_27CE5F010, &unk_21DC1FA18);
  sub_21D0D523C(v6, v3, &qword_27CE5F010, &unk_21DC1FA18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5F010, &unk_21DC1FA18);
    }

    return 0;
  }

  else
  {
    sub_21D6398B0(v3, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return 1;
  }
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(RemindersUICore::TTREditingStateOption::InputType withInput)
{
  v2 = *withInput;

  v3 = sub_21D2414F0();

  if (v3)
  {
    if (v2)
    {
      [*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) set:3 textInputSource:?];
    }

    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
    v5 = [v4 window];
    [v5 makeKeyWindow];

    [v4 becomeFirstResponder];
    v6 = [v4 selectedTextRange];
    if (!v6)
    {
      v7 = [v4 endOfDocument];
      v8 = [v4 endOfDocument];
      v9 = [v4 textRangeFromPosition:v7 toPosition:v8];

      [v4 setSelectedTextRange_];
      v6 = v9;
    }
  }
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.createAndStartEditingNewHashtag()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v26[-1] - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v3);
  v31[0] = v7;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v8 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v5, &qword_27CE5A0B8, &qword_21DC0E120);

  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A0B8, &qword_21DC0E120);
    return;
  }

  v29 = v9;
  v30 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
  sub_21D6397E0(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v28, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_21DAFE838(v9, &v28);
  v11 = v28;

  if (v11 == 1)
  {
    v12 = *(v1 + v6);
    swift_getKeyPath(" o%_");
    *&v28 = v12;
    swift_retain_n();
    sub_21DBF5D9C();

    v13 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing;
    v14 = *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);

    if (v14 != 1)
    {
      if (*(v12 + v13) != 1)
      {
        KeyPath = swift_getKeyPath(" o%_");
        MEMORY[0x28223BE20](KeyPath);
        *(&v25 - 2) = v12;
        *(&v25 - 8) = 1;
        *&v28 = v12;

        sub_21DBF5D8C();

LABEL_9:
        sub_21D61F4C0(1);
        v16 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
        swift_beginAccess();
        if (*v16)
        {
          v17 = v16[1];
          ObjectType = swift_getObjectType();
          v19 = v32;
          v20 = v33;
          __swift_project_boxed_opaque_existential_1(v31, v32);
          v21 = *(v20 + 272);
          swift_unknownObjectRetain();
          v21(v27, v19, v20);
          v26[0] = LOBYTE(v27[0]);
          v26[1] = v27[1];
          v26[2] = v27[2];
          (*(v17 + 48))(v26, ObjectType, v17);
          swift_unknownObjectRelease();
          if (*v16)
          {
            v22 = v16[1];
            v23 = swift_getObjectType();
            v24 = *(v22 + 168);
            swift_unknownObjectRetain();
            v24(v23, v22);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_12;
      }

      *(v12 + v13) = 1;
    }

    goto LABEL_9;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t TTRIRemindersListReminderCell_collectionView.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v12 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v4);
  v12[1] = v7;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v8 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v6, &qword_27CE5A0B8, &qword_21DC0E120);

  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_21D0CF7E0(v6, &qword_27CE5A0B8, &qword_21DC0E120);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v9;
    *(a1 + 32) = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return sub_21D6397E0(v6, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  return result;
}

void sub_21D61F4C0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268, &qword_21DC1FF88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = *(*v7 + 88);
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v5, &qword_27CE5F268, &qword_21DC1FF88);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010);
  v10 = (*(*(v9 - 8) + 48))(v5, 1, v9);
  sub_21D0CF7E0(v5, &qword_27CE5F268, &qword_21DC1FF88);
  if (v10 != 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
      if (a1 == 2)
      {

        v13 = v1;
      }

      else
      {
        swift_getKeyPath(byte_21DC1FFA0);
        v19 = v12;
        sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);
        swift_retain_n();
        sub_21DBF5D9C();

        v14 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient;
        v15 = *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient);

        if (v15 != (a1 & 1))
        {
          if (*(v12 + v14) == (a1 & 1))
          {
            *(v12 + v14) = a1 & 1;
          }

          else
          {
            KeyPath = swift_getKeyPath(byte_21DC1FFA0);
            v18 = &v16;
            MEMORY[0x28223BE20](KeyPath);
            *(&v16 - 2) = v12;
            *(&v16 - 8) = a1 & 1;
            v19 = v12;

            sub_21DBF5D8C();
          }

          sub_21D622434(v1);
          *(v12 + v14) = v15;
          goto LABEL_13;
        }

        v13 = v1;
      }

      sub_21D622434(v13);
LABEL_13:

      sub_21D637E90();
    }
  }
}

uint64_t static TTRIRemindersListReminderCell_collectionView.ignoreDragging(view:)(void *a1)
{
  type metadata accessor for TTRIRemindersListReminderCellLinkView();
  v2 = a1;
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TTRIRemindersListLargeImageAttachmentsView();
    do
    {
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for TTRIRemindersListSmallImageAttachmentsView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      v4 = [v2 superview];

      if (!v4)
      {
        return 0;
      }

      v2 = v4;
    }

    while (!swift_dynamicCastClass());
  }

  return 1;
}

id TTRIRemindersListReminderCell_collectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TTRIRemindersListReminderCell_collectionView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = sub_21DBF87CC();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  *v12 = 0;
  v12[2] = 0;
  v13 = &v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  type metadata accessor for TTRIRemindersListReminderCellObservableViewModel(0);
  swift_allocObject();
  *&v4[v14] = sub_21D240014();
  v15 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F040, &qword_21DC1FA78);
  v16 = swift_allocObject();
  v17 = *(*v16 + 104);
  v18 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  swift_storeEnumTagMultiPayload();
  *&v5[v15] = v16;
  v19 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F050, &unk_21DC1FA80);
  v20 = swift_allocObject();
  *(v20 + 40) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 40) = 0xD000000000000018;
  *(v20 + 48) = 0x800000021DC63D90;
  if (qword_280D0E1F0 != -1)
  {
    v110 = v20;
    swift_once();
    v20 = v110;
  }

  *(v20 + 16) = qword_280D0E1F8;
  *&v5[v19] = v20;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_indentationColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow] = 0;
  v21 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_unsupportedTextDropHandler;
  v22 = objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler());
  sub_21DBF8E0C();
  *&v5[v21] = [v22 init];
  v23 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing] = xmmword_21DC1F990;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment] = 0;
  v24 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  v25 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  v26 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule];
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *v26 = 0u;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement] = 0;
  v27 = [objc_allocWithZone(type metadata accessor for TTRIReminderCompletionButton()) initWithFrame_];
  v28 = &v27[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  sub_21D637AC4(v29, v30);
  sub_21D637AE8(v29, v30);
  v118[0] = v29;
  v118[1] = v30;
  sub_21D8FD0A0(v118);
  sub_21D637AE8(v29, v30);
  v31 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v32 = v27[v31];
  v27[v31] = 2;
  if (v32 != 2)
  {
    [v27 setNeedsUpdateConfiguration];
  }

  v33 = v27;
  [v33 setCustomAlignmentRectInsets_];
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  LODWORD(v34) = 1148846080;
  [v33 setLayoutSize:xmmword_280D0C200 withContentPriority:v34];
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v36 = sub_21D900614(1);
  [v35 setFont_];

  [v35 setAdjustsFontForContentSizeCategory_];
  v37 = *MEMORY[0x277CEC620];
  v38 = *(MEMORY[0x277CEC620] + 8);
  v39 = v35;
  LODWORD(v40) = 1148846080;
  [v39 setLayoutSize:v37 withContentPriority:{v38, v40}];
  LOBYTE(v118[0]) = 0;
  v41 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v42 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 0, 1, v118, 0);
  v43 = sub_21D900614(1);
  [v42 setFont_];

  [v42 setAdjustsFontForContentSizeCategory_];
  v44 = v42;
  LODWORD(v45) = 1132068864;
  [v44 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1132068864;
  [v44 setContentHuggingPriority:0 forAxis:v46];
  v47 = [objc_opt_self() labelColor];
  [v44 setTextColor_];

  [v44 setBackgroundColor_];
  v48 = qword_280D165E0;
  v49 = v44;
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_21DBFA12C();
  [v49 setAccessibilityLabel_];

  v51 = type metadata accessor for TTRIRemindersListReminderCellAccessoryStackView();
  v52 = [objc_allocWithZone(v51) initWithFrame_];
  LODWORD(v53) = 1148846080;
  [v52 setContentCompressionResistancePriority:0 forAxis:v53];
  LODWORD(v54) = 1148846080;
  [v52 setContentHuggingPriority:0 forAxis:v54];
  v121.receiver = v52;
  v121.super_class = v51;
  objc_msgSendSuper2(&v121, sel_setDebugBoundingBoxesEnabled_, 0);
  v55 = *&v52[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView];
  v120.receiver = v52;
  v120.super_class = v51;
  [v55 setDebugBoundingBoxesEnabled_];
  v56 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellContentStackView());
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v57 = sub_21DBFA5DC();
  v58 = [v56 initWithArrangedSubviews_];

  v59 = v58;
  [v59 setAxis_];
  [v59 setAlignment_];
  [v59 setSpacing_];

  v60 = v59;
  [v60 setLayoutMarginsRelativeArrangement_];
  v61 = v60;
  [v61 setPreservesSuperviewLayoutMargins_];
  [v61 setDirectionalLayoutMargins_];
  [v61 setDebugBoundingBoxesEnabled_];

  v62 = v61;
  v63 = sub_21DBFA12C();
  [v62 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton] = v33;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabel] = v39;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] = v49;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView] = v52;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack] = v62;
  v119.receiver = v5;
  v119.super_class = ObjectType;
  v64 = v33;
  v65 = v39;
  v66 = v49;
  v117 = v52;
  v67 = v62;
  v68 = objc_msgSendSuper2(&v119, sel_initWithFrame_, a1, a2, a3, a4);
  v118[3] = &type metadata for ContentConfigurationForContentGridView;
  v118[4] = sub_21D63815C();
  v69 = v68;
  MEMORY[0x223D43B20](v118);
  v70 = [v69 contentView];
  type metadata accessor for ContentGridView();
  v71 = swift_dynamicCastClass();
  if (!v71)
  {

    if (qword_27CE56AF8 != -1)
    {
      swift_once();
    }

    v72 = sub_21DBF84BC();
    __swift_project_value_buffer(v72, qword_27CE5EFD0);
    v73 = sub_21DBF84AC();
    v74 = sub_21DBFAECC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_21D0C9000, v73, v74, "TTRIRemindersListReminderCell_collectionView: failed to create ContentGridView", v75, 2u);
      MEMORY[0x223D46520](v75, -1, -1);
    }

    v71 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v70 = v71;
  }

  v76 = v71;
  v77 = v70;
  v78 = *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView] = v76;
  v79 = v76;

  [v79 setPreservesSuperviewLayoutMargins_];
  v80 = v79;
  [v80 setLayoutMarginsRelativeArrangement_];
  [v80 setRowSpacing_];
  [v80 setColumnSpacing_];
  [v80 setDebugBoundingBoxesEnabled_];
  [v80 setVerticalAlignment_];
  [v80 setHorizontalAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_21DC08D20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v82 = swift_allocObject();
  v115 = xmmword_21DC0AA10;
  *(v82 + 16) = xmmword_21DC0AA10;
  *(v82 + 32) = v64;
  *(v82 + 40) = v65;
  v116 = v65;
  v83 = v117;
  *(v82 + 48) = v66;
  *(v82 + 56) = v83;
  *(v81 + 32) = v82;
  v84 = swift_allocObject();
  *(v84 + 16) = v115;
  *(v84 + 32) = v64;
  *(v84 + 40) = v67;
  *(v84 + 48) = v67;
  *(v84 + 56) = v67;
  *(v81 + 40) = v84;
  v85 = v67;
  v86 = v64;
  v87 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  v88 = sub_21DBFA5DC();
  [v80 setArrangedSubviewRows_];

  [v80 setAlignment:0 forView:v87 inAxis:1];
  v89 = [v80 columnAtIndex_];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn] = v89;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v89)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v89 setSpacingAfter_];
  swift_unknownObjectRelease();
  v91 = [v80 columnAtIndex_];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn] = v91;
  swift_unknownObjectRelease();
  v92 = [v80 rowAtIndex_];

  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow] = v92;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v92)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *&v115 = v87;

  [v92 setHidden_];
  swift_unknownObjectRelease();
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = v69;

  sub_21D620A20(v95);

  v96 = &v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  v97 = *&v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  v98 = *&v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate + 8];
  *v96 = sub_21D6381D4;
  v96[1] = v93;

  sub_21D0D0E88(v97, v98);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_21DC0AA00;
  *(v99 + 32) = v116;
  *(v99 + 40) = v66;
  *&v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = v99;

  sub_21DAA20C8();

  v100 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement()) initWithAccessibilityContainer_];
  v101 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v102 = *&v94[v101];
  *&v94[v101] = v100;

  sub_21D61CCB8();
  [v86 addTarget:v94 action:sel_completedButtonAction_ forControlEvents:0x2000];

  v103 = [v66 textDragInteraction];
  if (v103)
  {
    v104 = v103;
    [v103 setEnabled_];
    [v66 removeInteraction_];
  }

  [v66 setTextDropDelegate_];
  v105 = [objc_allocWithZone(MEMORY[0x277CD9660]) init];
  v106 = v94;
  [v105 setDelegate_];
  [v66 addInteraction_];
  v107 = v117;
  *&v117[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate + 8] = &off_282EC9538;
  swift_unknownObjectWeakAssign();
  [v106 setFocusEffect_];
  [v106 setIndentsAccessories_];

  v108 = [v106 _bridgedConfigurationState];

  v109 = v112;
  sub_21DBF879C();

  sub_21D240DC8(v109, v106);

  (*(v113 + 8))(v109, v114);
  return v106;
}

void sub_21D620A20(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
    if (v3)
    {
      v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
      [v3 layoutMargins];
      v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate);
      *(v4 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate) = v6;
      if (v6 != v5)
      {
        sub_21D6A4A5C();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id TTRIRemindersListReminderCell_collectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIRemindersListReminderCell_collectionView.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBF88CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000, &qword_21DC1F9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_21DBF87CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF878C();
  v25.receiver = v2;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel__bridgedUpdateConfigurationUsingState_, v15);

  sub_21D240DC8(a1, v2);

  sub_21D61F4C0(2);
  v16 = &v2[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  swift_beginAccess();
  if (v16[1] == 1)
  {
    v22 = v5;
    v17 = *(v12 + 16);
    v17(v14, a1, v11);
    sub_21DBF876C();
    v18 = v23;
    sub_21DBF88BC();
    v24[3] = v11;
    v24[4] = MEMORY[0x277D74BA8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    v17(boxed_opaque_existential_0, v14, v11);
    sub_21DBF88AC();
    v20 = v18;
    v21 = v22;
    (*(v6 + 8))(v20, v22);
    __swift_destroy_boxed_opaque_existential_0(v24);
    (*(v6 + 56))(v10, 0, 1, v21);
    MEMORY[0x223D43B30](v10);
    (*(v12 + 8))(v14, v11);
  }
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);

  sub_21D61C294();
}

uint64_t TTRIRemindersListReminderCell_collectionView.processReceivedViewModel(_:changeInfo:)(void *a1, _BYTE *a2)
{
  v3 = v2;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v53 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v52 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010, &unk_21DC1FA18);
  MEMORY[0x28223BE20](v57);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v63 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010) + 36);
  v23 = v22[*(v19 + 44)];
  if (v23 != *(v3 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation))
  {
    *(v3 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation) = v23;
    [v3 setTintAdjustmentMode_];
  }

  v24 = v63;
  sub_21D639848(v22, v63, type metadata accessor for TTRIRemindersListItemIntermediateViewModel);
  v25 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;

  sub_21D24021C(v24);

  v27 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  MEMORY[0x28223BE20](v26);
  *(&v52 - 2) = v3;
  *(&v52 - 1) = v24;

  v28 = sub_21D61BBCC(v21, v62, sub_21D638814, (&v52 - 4));

  if (v28)
  {
    v62 = v25;
    v29 = *&v25[v3];
    v30 = *(v3 + v27);
    v31 = *(*v30 + 104);
    swift_beginAccess();
    sub_21D0D3954(v30 + v31, v17, &qword_27CE5F010, &unk_21DC1FA18);
    sub_21D0D523C(v17, v14, &qword_27CE5F010, &unk_21DC1FA18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v33 = v61;
      v34 = v60;
      v35 = v58;
      if (EnumCaseMultiPayload == 1)
      {
        sub_21D0D523C(v14, v58, &qword_27CE5A0B8, &qword_21DC0E120);
      }

      else
      {
        (*(v60 + 56))(v58, 1, 1, v61);
      }
    }

    else
    {
      v35 = v58;
      sub_21D6397E0(v14, v58, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v34 = v60;
      v33 = v61;
      (*(v60 + 56))(v35, 0, 1, v61);
    }

    KeyPath = swift_getKeyPath("@o%_");
    MEMORY[0x28223BE20](KeyPath);
    *(&v52 - 2) = v29;
    *(&v52 - 1) = v35;
    v64[0] = v29;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

    sub_21DBF5D8C();

    sub_21D0CF7E0(v35, &qword_27CE5A0B8, &qword_21DC0E120);
    v37 = *&v62[v3];
    swift_getKeyPath("@o%_");
    v64[0] = v37;

    sub_21DBF5D9C();

    v38 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v39 = v37 + v38;
    v40 = v59;
    sub_21D0D3954(v39, v59, &qword_27CE5A0B8, &qword_21DC0E120);

    if ((*(v34 + 48))(v40, 1, v33) == 1)
    {
      sub_21D0CF7E0(v40, &qword_27CE5A0B8, &qword_21DC0E120);
    }

    else
    {
      v41 = v55;
      sub_21D6397E0(v40, v55, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v42 = v56;
      sub_21D639848(v41, v56, type metadata accessor for TTRRemindersListViewModel.Item);
      v43 = (v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v43 + 1);
        v45 = (v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
        swift_beginAccess();
        if (*v45)
        {
          v46 = v45[1];
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v48 = v54;
          TTRIReminderCellTitleModuleInterface.item.getter(ObjectType, v46, v54);
          swift_unknownObjectRelease();
        }

        else
        {
          v48 = v54;
          (*(v52 + 56))(v54, 1, 1, v53);
        }

        v49 = swift_getObjectType();
        v50 = (*(v44 + 16))(v3, v42, v48, v49, v44);
        sub_21D0CF7E0(v48, &unk_27CE5CD80, &qword_21DC0CE80);
        if (v50)
        {
          (*(v44 + 24))(v64, v3, v42, v49, v44);
          sub_21D621A6C(v64);
          (*(v44 + 32))(v64, v3, v42, v49, v44);
          sub_21D621B8C(v64);
          (*(v44 + 40))(v64, v3, v42, v49, v44);
          sub_21D621C80(v64);
        }

        swift_unknownObjectRelease();
      }

      sub_21D6398B0(v42, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D6398B0(v41, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }
  }

  sub_21D61F4C0(2);
  return sub_21D6398B0(v63, type metadata accessor for TTRIRemindersListItemIntermediateViewModel);
}

uint64_t sub_21D621980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_21D621A6C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5F240, &unk_21DC104A0);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    (*(v4 + 48))(*&v7[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5F240, &unk_21DC104A0);
}

uint64_t sub_21D621B8C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE62920, &unk_21DC2BF30);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE62920, &unk_21DC2BF30);
}

uint64_t sub_21D621C80(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5EB40, &unk_21DC1D730);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 144);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5EB40, &unk_21DC1D730);
}

void TTRIRemindersListReminderCell_collectionView.contentViewLayoutMargins(for:)(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v6 = sub_21DBF877C();
    v7 = [v6 preferredContentSizeCategory];
    v8 = sub_21DBFB43C();

    if (v8)
    {
      v9 = sub_21DBFB24C();

      v6 = v9;
    }

    [v5 scaledValueForValue:v6 compatibleWithTraitCollection:10.0];
    v11 = v10;

    v12 = xmmword_21DC1F9A0;
  }

  else
  {
    v12 = 0uLL;
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 40) = v4 ^ 1;
}

uint64_t sub_21D621EC0(uint64_t a1)
{
  v1 = *MEMORY[0x277D76838];
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v2 = v1;
  return sub_21DBF860C();
}

uint64_t sub_21D621F14()
{
  result = sub_21D19ECD4(&unk_282EA61F8);
  qword_280D0E1F8 = result;
  return result;
}

unint64_t sub_21D621F40(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x726F737365636361;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0xD000000000000013;
    if (a1 != 7)
    {
      v9 = 0x53746E65746E6F63;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656E6961746E6F63;
    v2 = 0x656C746974;
    v3 = 0x6F6E6E4177656976;
    if (a1 != 4)
    {
      v3 = 0x65646E496C6C6563;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6574656C706D6F63;
    if (a1 != 1)
    {
      v4 = 0x797469726F697270;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21D622108(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21D621F40(*a1);
  v5 = v4;
  if (v3 == sub_21D621F40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D622190()
{
  v1 = *v0;
  sub_21DBFC7DC();
  sub_21D621F40(v1);
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D6221F4(uint64_t a1)
{
  sub_21D621F40(*v1);
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D622248(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  sub_21D621F40(v2);
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21D6222A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D638850(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21D6222D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21D621F40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_21D622314()
{
  if (qword_280D0E1F0 != -1)
  {
    swift_once();
  }

  sub_21DBF8E0C();
  return result;
}

id sub_21D62238C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = qword_27CE67910;
    v9 = off_27CE67918;
    objc_allocWithZone(type metadata accessor for TTRIRemindersListDescriptionAttachment());
    sub_21DBF8E0C();
    v10 = sub_21DBC8F60(0, 0xF000000000000000, v8, v9, a2 & 1);
    v11 = *(v7 + v3);
    *(v7 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_21D622434(uint64_t a1)
{
  v11 = a1;

  sub_21D623158(0, sub_21D639408, v10);

  v9 = a1;

  sub_21D623158(10, sub_21D639410, v8);

  v7 = a1;

  sub_21D623158(9, sub_21D639434, v6);

  v5 = a1;

  sub_21D623158(11, sub_21D63943C, v4);

  v3[2] = a1;

  sub_21D623158(11, sub_21D639AE0, v3);
}

uint64_t sub_21D622584(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (v1)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21D6395C8;
    *(v4 + 24) = v3;
    v8[4] = sub_21D0E6070;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21D0E6204;
    v8[3] = &block_descriptor_256_0;
    v5 = _Block_copy(v8);
    v6 = v1;
    v7 = v2;

    [v6 performBatchUpdates_];

    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if ((v2 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D6226F8(uint64_t a1)
{
  v17 = a1;

  sub_21D623158(1, sub_21D6395D0, v16);

  v15 = a1;

  sub_21D623158(2, sub_21D6395F4, v14);

  v13 = a1;

  sub_21D623158(3, sub_21D639618, v12);

  v11 = a1;

  sub_21D623158(4, sub_21D63963C, v10);

  v9 = a1;

  sub_21D623158(5, sub_21D639644, v8);

  v7 = a1;

  sub_21D623158(6, sub_21D639668, v6);

  v5 = a1;

  sub_21D623158(7, sub_21D63968C, v4);

  v3[2] = a1;

  sub_21D623158(8, sub_21D6396B0, v3);
}

void sub_21D6228F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v52 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v52 - v12;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v52 - v15;
  v17 = v0;
  v56 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v18 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v14);
  *v58 = v18;
  v19 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  v57 = v19;
  KeyPath = v8;
  sub_21DBF5D9C();

  v21 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v18 + v21, v7, &qword_27CE5A0B8, &qword_21DC0E120);

  v22 = *(v9 + 48);
  if (v22(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE5A0B8, &qword_21DC0E120);
    if (qword_280D15938 != -1)
    {
      swift_once();
    }

    v23 = word_280D15940;
    sub_21DBF8E0C();
  }

  else
  {
    sub_21D6397E0(v7, v16, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v8, v58);
    v23 = v58[0];
    sub_21D6398B0(v16, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  if (!(v23 >> 6))
  {
    goto LABEL_11;
  }

  if (v23 >> 6 != 1)
  {
    v30 = *(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
    if (!v30)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    [v30 setHidden_];
    v31 = (*(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton) + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[1];
    *v31 = xmmword_21DC1F9B0;
LABEL_18:
    sub_21D637AC4(v32, v33);
    sub_21D637AE8(v32, v33);
    v60[0] = v32;
    v60[1] = v33;
    sub_21D8FD0A0(v60);

    sub_21D637AE8(v32, v33);
    return;
  }

  v24 = *(v17 + v56);
  KeyPath = swift_getKeyPath(byte_21DC1FA90);
  *v58 = v24;

  sub_21DBF5D9C();

  v25 = *(v24 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v26 = *(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
  if ((v25 & 1) == 0)
  {
    if (!v26)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v26 setHidden_];
    v34 = (*(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton) + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
    swift_beginAccess();
    v32 = *v34;
    v33 = v34[1];
    *v34 = v23 & 1 | 0x4000000000000000;
    v34[1] = 0;
    goto LABEL_18;
  }

  if (v26)
  {
LABEL_13:
    [swift_unknownObjectRetain() setHidden_];
    swift_unknownObjectRelease();
LABEL_27:

    return;
  }

  __break(1u);
LABEL_11:
  v27 = *(v17 + v56);
  swift_getKeyPath(byte_21DC1FA90);
  *v58 = v27;

  sub_21DBF5D9C();

  v28 = *(v27 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v29 = *(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
  if (v28)
  {
    if (v29)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if (v29)
  {
    [v29 setHidden_];
    v35 = *(v17 + v56);
    swift_getKeyPath("@o%_");
    *v58 = v35;

    sub_21DBF5D9C();

    v36 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v37 = v35 + v36;
    v38 = v54;
    sub_21D0D3954(v37, v54, &qword_27CE5A0B8, &qword_21DC0E120);

    if (v22(v38, 1, KeyPath) == 1)
    {
      sub_21D0CF7E0(v38, &qword_27CE5A0B8, &qword_21DC0E120);
      v39 = 0;
    }

    else
    {
      v40 = v38;
      v41 = v52;
      sub_21D6397E0(v40, v52, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v39 = sub_21DAFD898(KeyPath);
      sub_21D6398B0(v41, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v42 = *(v17 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton);
    v43 = *(v17 + v56);
    swift_getKeyPath("@o%_");
    v60[0] = v43;

    sub_21DBF5D9C();

    v44 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v45 = v43 + v44;
    v46 = v55;
    sub_21D0D3954(v45, v55, &qword_27CE5A0B8, &qword_21DC0E120);

    if (v22(v46, 1, KeyPath) == 1)
    {
      sub_21D0CF7E0(v46, &qword_27CE5A0B8, &qword_21DC0E120);
      v47 = 0;
    }

    else
    {
      v48 = v53;
      sub_21D6397E0(v46, v53, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v47 = sub_21DAFE420(KeyPath);
      sub_21D6398B0(v48, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v49 = &v42[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    *v49 = v39 & 1;
    v49[1] = v47;
    sub_21D637AC4(v50, v51);
    sub_21D637AE8(v50, v51);
    v59[0] = v50;
    v59[1] = v51;
    sub_21D8FD0A0(v59);
    sub_21D637AE8(v50, v51);
    [v42 setSelected_];
    TTRIReminderCompletionButton.prefersFadedAppearance.setter(v23 & 1);
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

void sub_21D623158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v6 = v3[2];
  sub_21DBF8E0C();
  v7 = sub_21D1E26B0(a1, v6);

  if (v7)
  {
    if (v4[7])
    {
      v8 = v4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F298, &unk_21DC20008);
      v8 = swift_allocObject();
      *(v8 + 16) = MEMORY[0x277D84FA0];
      v4[7] = v8;
    }

    swift_beginAccess();

    v9 = sub_21D29AC14(&v24, a1);
    v10 = swift_endAccess();
    if ((v9 & 1) == 0)
    {
      if (qword_27CE56F50 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE64A20);

      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAEBC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23[0] = v22;
        *v14 = 136315394;
        if (v4[6])
        {
          v15 = v4[5];
          v16 = v4[6];
        }

        else
        {
          v16 = 0x800000021DC64200;
          v15 = 0xD000000000000055;
        }

        sub_21DBF8E0C();
        v17 = sub_21D0CDFB4(v15, v16, v23);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = sub_21DBFA1AC();
        v20 = sub_21D0CDFB4(v18, v19, v23);

        *(v14 + 14) = v20;
        _os_log_impl(&dword_21D0C9000, v12, v13, "%s: unexpected nested updateIfNeeded calls with the same update flag. This will not work correctly {updateFlag: %s}", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v22, -1, -1);
        MEMORY[0x223D46520](v14, -1, -1);
      }
    }

    MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v21);
    sub_21DBF8E0C();
    sub_21DBF5D7C();

    swift_beginAccess();
    sub_21D1AB35C(a1);
    swift_endAccess();
    if (!*(*(v8 + 16) + 16))
    {
      v4[7] = 0;
    }

    swift_beginAccess();
    sub_21D1AB35C(a1);
    swift_endAccess();
  }
}

void sub_21D623514()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v32 - v12;
  v34 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v11);
  v38 = v14;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v15 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v14 + v15, v6, &qword_27CE5A0B8, &qword_21DC0E120);

  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A0B8, &qword_21DC0E120);
LABEL_10:
    v29 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn);
    if (v29)
    {
      [v29 setHidden_];
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_21D6397E0(v6, v13, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v17 = sub_21DAFE9D8(v7, &protocol witness table for TTRRemindersListViewModel.Reminder);
  v19 = v18;
  sub_21D6398B0(v13, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn);
  if (!v21)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v21 setHidden_];
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabel);
  v36 = v17;
  v37 = v19;
  MEMORY[0x223D42AA0](41154, 0xA200000000000000);
  v23 = sub_21DBFA12C();

  [v22 setText_];

  v24 = *(v1 + v34);
  swift_getKeyPath("@o%_");
  v36 = v24;

  sub_21DBF5D9C();

  v25 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  v26 = v24 + v25;
  v27 = v35;
  sub_21D0D3954(v26, v35, &qword_27CE5A0B8, &qword_21DC0E120);

  if (v16(v27, 1, v7) == 1)
  {
    sub_21D0CF7E0(v27, &qword_27CE5A0B8, &qword_21DC0E120);
    v28 = 0;
  }

  else
  {
    v30 = v27;
    v31 = v33;
    sub_21D6397E0(v30, v33, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v28 = sub_21DAFE420(v7);
    sub_21D6398B0(v31, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  [v22 setTextColor_];
}

uint64_t sub_21D6239BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520, &qword_21DC169F0);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  v67 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v15 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v12);
  *&v75 = v15;
  v16 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  v66 = v16;
  sub_21DBF5D9C();

  v17 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v15 + v17, v9, &qword_27CE5A0B8, &qword_21DC0E120);

  v18 = *(v11 + 48);
  v71 = v10;
  if (v18(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A0B8, &qword_21DC0E120);
  }

  else
  {
    sub_21D6397E0(v9, v14, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v71, &v75);
    v19 = *(&v75 + 1);
    v20 = v76;
    sub_21D6398B0(v14, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
LABEL_5:
  v21 = v70;
  v64 = *(v70 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v22 = [v64 attributedPlaceholder];
  if (v22)
  {
    v23 = v22;
    v24 = v18;
    v25 = [v22 string];

    v26 = sub_21DBFA16C();
    v28 = v27;

    v18 = v24;
    if (v26 != v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = 0xE000000000000000;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  if (v28 == v20)
  {

    goto LABEL_20;
  }

LABEL_11:
  v29 = sub_21DBFC64C();

  if (v29)
  {
  }

  else
  {
    v30 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v30 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v63 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D20;
      v32 = *MEMORY[0x277D740C0];
      *(inited + 32) = *MEMORY[0x277D740C0];
      v33 = objc_opt_self();
      v34 = v32;
      v35 = [v33 placeholderTextColor];
      v36 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      v37 = MEMORY[0x277D740A8];
      *(inited + 40) = v35;
      v38 = *v37;
      *(inited + 64) = v36;
      *(inited + 72) = v38;
      v39 = qword_280D176B8;
      v40 = v38;
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = sub_21D900614(1);
      *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
      *(inited + 80) = v41;
      sub_21D11274C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
      swift_arrayDestroy();
      v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v43 = sub_21DBFA12C();

      type metadata accessor for Key(0);
      sub_21D639008(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
      v44 = sub_21DBF9E5C();

      v45 = [v42 initWithString:v43 attributes:v44];

      [v64 setAttributedPlaceholder_];
      v21 = v70;
      v18 = v63;
    }

    else
    {

      [v64 setAttributedPlaceholder_];
    }
  }

LABEL_20:
  v46 = *(v21 + v67);
  swift_getKeyPath("@o%_");
  *&v75 = v46;

  sub_21DBF5D9C();

  v47 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  v48 = v46 + v47;
  v49 = v68;
  sub_21D0D3954(v48, v68, &qword_27CE5A0B8, &qword_21DC0E120);

  v50 = v18(v49, 1, v71);
  v51 = v69;
  if (v50 == 1)
  {
    sub_21D0CF7E0(v49, &qword_27CE5A0B8, &qword_21DC0E120);
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
  }

  else
  {
    *(&v76 + 1) = v71;
    v77 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
    sub_21D6397E0(v49, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  sub_21D0D3954(&v75, &v73, &unk_27CE5FAE0, &unk_21DC18590);
  if (v74)
  {
    sub_21D0D0FD0(&v73, v72);
    sub_21D62DB40(v72, v21, v51);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v53 = type metadata accessor for TTRReminderCellTitleViewModel(0);
    (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
  }

  else
  {
    v54 = type metadata accessor for TTRReminderCellTitleViewModel(0);
    (*(*(v54 - 8) + 56))(v51, 1, 1, v54);
  }

  sub_21D0CF7E0(&v75, &unk_27CE5FAE0, &unk_21DC18590);
  v55 = (v21 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
  swift_beginAccess();
  if (*v55)
  {
    v56 = v55[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v58 = v65;
    sub_21D0D3954(v51, v65, &qword_27CE5E520, &qword_21DC169F0);
    v59 = *(v56 + 8);
    v60 = *(v59 + 16);
    swift_unknownObjectRetain();
    v60(v58, ObjectType, v59);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v51, &qword_27CE5E520, &qword_21DC169F0);
  }

  else
  {
    sub_21D0CF7E0(v51, &qword_27CE5E520, &qword_21DC169F0);
    return swift_endAccess();
  }
}

uint64_t sub_21D6242C8(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 184))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D624358()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v3 == 2)
  {
    [v1 setIndentationLevel_];
    [*&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton] effectiveLayoutSizeFittingSize_];
    v5 = v4 + 12.0;
  }

  else
  {
    [v1 setIndentationLevel_];
    v5 = 0.0;
  }

  return [v1 setIndentationWidth_];
}

uint64_t sub_21D62448C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v41 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v3);
  v50[0] = v7;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v8 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v5, &qword_27CE5A0B8, &qword_21DC0E120);

  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A0B8, &qword_21DC0E120);
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
  }

  else
  {
    *(&v61 + 1) = v9;
    v62 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    sub_21D6397E0(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  sub_21D0D3954(&v60, v50, &unk_27CE5FAE0, &unk_21DC18590);
  v11 = v50[3];
  if (v50[3])
  {
    v12 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    (*(v12 + 176))(v49, v11, v12);
    v13 = LOBYTE(v49[0]);
    __swift_destroy_boxed_opaque_existential_0(v50);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21D0D3954(&v60, v50, &unk_27CE5FAE0, &unk_21DC18590);
    v14 = v50[3];
    if (v50[3])
    {
      v15 = v50[4];
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      v16 = (*(v15 + 168))(v14, v15);
      v44 = v17;
      v45 = v16;
      __swift_destroy_boxed_opaque_existential_0(v50);
      goto LABEL_11;
    }
  }

  sub_21D0CF7E0(v50, &unk_27CE5FAE0, &unk_21DC18590);
LABEL_10:
  v44 = 0;
  v45 = 0;
LABEL_11:
  v18 = *(v1 + v6);
  v50[0] = v18;

  sub_21DBF5D9C();

  v19 = *(v18 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v19 == 1)
  {
    v20 = *(v1 + v6);
    swift_getKeyPath(byte_21DC1FEB8);
    v50[0] = v20;

    sub_21DBF5D9C();

    v21 = *(v20 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v43 = v22;
  }

  else
  {
    v43 = 0;
  }

  v23 = *(v1 + v6);
  swift_getKeyPath("@i%_");
  v50[0] = v23;

  sub_21DBF5D9C();

  v24 = *(v23 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState);

  sub_21D0D3954(&v60, v50, &unk_27CE5FAE0, &unk_21DC18590);
  v25 = v50[3];
  if (v50[3])
  {
    v26 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v27 = (*(v26 + 224))(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v42 = v27 & v24;
  }

  else
  {
    sub_21D0CF7E0(v50, &unk_27CE5FAE0, &unk_21DC18590);
    v42 = 0;
  }

  v28 = *(v1 + v6);
  swift_getKeyPath(byte_21DC1FA90);
  v50[0] = v28;

  sub_21DBF5D9C();

  HIDWORD(v41) = *(v28 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v29 = *(v1 + v6);
  swift_getKeyPath(" i%_");
  v50[0] = v29;

  sub_21DBF5D9C();

  v30 = *(v29 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem);

  sub_21D0D3954(&v60, v56, &unk_27CE5FAE0, &unk_21DC18590);
  v31 = v57;
  if (v57)
  {
    v32 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    (*(v32 + 136))(v50, v31, v32);
    v33 = v50[0];
    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  else
  {
    sub_21D0CF7E0(v56, &unk_27CE5FAE0, &unk_21DC18590);
    v33 = 3;
  }

  sub_21D0D3954(&v60, v50, &unk_27CE5FAE0, &unk_21DC18590);
  v34 = v50[3];
  if (v50[3])
  {
    v35 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    (*(v35 + 264))(v54, v34, v35);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_21D0CF7E0(v50, &unk_27CE5FAE0, &unk_21DC18590);
    sub_21D639910(v54);
  }

  sub_21D0D3954(&v60, v51, &unk_27CE5FAE0, &unk_21DC18590);
  v36 = v52;
  if (v52)
  {
    v37 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v38 = (*(v37 + 208))(v36, v37);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    sub_21D0CF7E0(v51, &unk_27CE5FAE0, &unk_21DC18590);
    v38 = 0;
  }

  *(&v59[11] + 7) = v54[11];
  *(&v59[12] + 7) = v54[12];
  *(&v59[13] + 7) = v54[13];
  *(&v59[14] + 7) = v55;
  *(&v59[7] + 7) = v54[7];
  *(&v59[8] + 7) = v54[8];
  *(&v59[9] + 7) = v54[9];
  *(&v59[10] + 7) = v54[10];
  *(&v59[3] + 7) = v54[3];
  *(&v59[4] + 7) = v54[4];
  *(&v59[5] + 7) = v54[5];
  *(&v59[6] + 7) = v54[6];
  *(v59 + 7) = v54[0];
  *(&v59[1] + 7) = v54[1];
  *(&v59[2] + 7) = v54[2];
  *(&v47[25] + 1) = v59[11];
  *(&v47[27] + 1) = v59[12];
  *(&v47[29] + 1) = v59[13];
  *&v47[31] = *(&v59[13] + 15);
  *(&v47[17] + 1) = v59[7];
  *(&v47[19] + 1) = v59[8];
  *(&v47[21] + 1) = v59[9];
  *(&v47[23] + 1) = v59[10];
  *(&v47[9] + 1) = v59[3];
  *(&v47[11] + 1) = v59[4];
  *(&v47[13] + 1) = v59[5];
  *(&v47[15] + 1) = v59[6];
  *(&v47[3] + 1) = v59[0];
  *(&v47[5] + 1) = v59[1];
  LOBYTE(v47[0]) = v43;
  BYTE1(v47[0]) = BYTE4(v41);
  BYTE2(v47[0]) = v30;
  BYTE3(v47[0]) = v42 & 1;
  v47[1] = v45;
  v47[2] = v44;
  LOBYTE(v47[3]) = v33;
  *(&v47[7] + 1) = v59[2];
  v47[33] = v38;
  v39 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  memcpy(v48, v47, sizeof(v48));
  nullsub_1();
  memcpy(v49, (v39 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v49));
  memcpy(v50, (v39 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v50));
  memcpy((v39 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), v48, 0x110uLL);
  sub_21D639958(v47, v46);
  sub_21D0D3954(v49, v46, &unk_27CE5F320, &unk_21DC200F0);
  sub_21D0CF7E0(v50, &unk_27CE5F320, &unk_21DC200F0);
  memcpy(v46, v49, sizeof(v46));
  sub_21D6BBA84(v46);
  sub_21D6399B4(v47);
  sub_21D0CF7E0(v49, &unk_27CE5F320, &unk_21DC200F0);
  return sub_21D0CF7E0(&v60, &unk_27CE5FAE0, &unk_21DC18590);
}

void sub_21D624D30()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
    v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath(byte_21DC1FF10);
    v12 = v6;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

    sub_21DBF5D9C();

    v7 = *(*(v6 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) + 16);

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = *(v1 + v5);
      swift_getKeyPath(byte_21DC20050, v12);

      sub_21DBF5D9C();

      v8 = *(v9 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
    }

    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
    if (v3)
    {
      v10 = v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden];
      v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = v8;
      if (v8 == v10)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden];
  v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 1;
  if (v4)
  {
    return;
  }

LABEL_10:
  v11 = v3;
  sub_21DAA1E60();
}

id sub_21D624F0C(uint64_t a1)
{
  v9[2] = a1;
  v2 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  sub_21D6A444C(sub_21D6396B8, v9);
  v3 = [v2 visibleArrangedSubviews];
  if (v3)
  {
    v4 = v3;
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v5 = sub_21DBFA5EC();

    if (v5 >> 62)
    {
      v6 = sub_21DBFBD7C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  result = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow);
  if (result)
  {
    return [result setHidden_];
  }

  __break(1u);
  return result;
}

void sub_21D625014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = v23 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath("@o%_", v3);
  v23[1] = v6;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  v7 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v6 + v7, v5, &qword_27CE5A0B8, &qword_21DC0E120);

  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A0B8, &qword_21DC0E120);
    v9 = 0;
    v10 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
    v11 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates;
    v12 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    while (1)
    {
      v13 = byte_282EA6BB0[v9 + 32];
      if ((*(v10 + v11) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v14 = sub_21DBF84BC();
        __swift_project_value_buffer(v14, qword_280D0F148);
        v15 = sub_21DBF84AC();
        v16 = sub_21DBFAECC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_21D0C9000, v15, v16, "makeHidden called outside of performSubviewUpdates", v17, 2u);
          MEMORY[0x223D46520](v17, -1, -1);
        }
      }

      swift_beginAccess();
      v18 = *(v10 + v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + v12) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_21D256D30(v18);
        *(v10 + v12) = v18;
      }

      if (v18[2] <= v13)
      {
        break;
      }

      ++v9;
      v20 = &v18[4 * v13];
      v21 = v20[4];
      *(v20 + 2) = 0u;
      *(v20 + 3) = 0u;
      *(v10 + v12) = v18;
      swift_endAccess();
      sub_21D157878(v21);
      if (v9 == 11)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = v8;
    v26 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    sub_21D6397E0(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21D0D0FD0(&v24, v27);
    sub_21D62539C(v27);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }
}

void sub_21D62539C(void *a1)
{
  ObjectType = swift_getObjectType();
  v420 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v382 = *(v420 - 8);
  MEMORY[0x28223BE20](v420);
  v419 = (&v379 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v389 = sub_21DBF54CC();
  v402 = *(v389 - 8);
  MEMORY[0x28223BE20](v389);
  v387 = &v379 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v383);
  v388 = &v379 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v380 = &v379 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v413 = (&v379 - v9);
  MEMORY[0x28223BE20](v10);
  v384 = &v379 - v11;
  v397 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v385 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v386 = &v379 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v401 = (&v379 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  *&v16 = MEMORY[0x28223BE20](v15 - 8).n128_u64[0];
  v18 = &v379 - v17;
  v19 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v20 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath(byte_21DC1FFA0, v16);
  *&v464 = v20;
  v21 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel, aI_10);

  sub_21DBF5D9C();

  LODWORD(v400) = *(v20 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient);

  v22 = *(v1 + v19);
  swift_getKeyPath(byte_21DC20018);
  *&v464 = v22;

  v409 = v21;
  sub_21DBF5D9C();

  v410 = v19;

  v416 = sub_21D2417CC();

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 64))(v23, v24);
  v25 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    sub_21D0CF7E0(v18, &unk_27CE5F2B0, &unk_21DC14C00);
    v404 = 0;
    v406 = 0;
  }

  else
  {
    v26 = *(v18 + 1);
    v404 = *v18;
    v406 = v26;
    sub_21DBF8E0C();
    sub_21D6398B0(v18, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v396 = (*(v28 + 80))(v27, v28);
  v407 = v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v31 + 232))(&v464, v30, v31);
  v32 = a1;
  v34 = *(&v464 + 1);
  v33 = v464;
  v35 = v32[3];
  v36 = v32[4];
  v421 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v35);
  (*(v36 + 232))(&v464, v35, v36);
  v414 = v1;
  if (*(&v464 + 1) && ((v37 = v465, v34) ? (v38 = v33) : (v38 = 0), , (v37 & 1) != 0))
  {
    v394 = v38;
  }

  else
  {

    v394 = 0;
    v34 = 0;
  }

  v39 = v421;
  v40 = &v445;
  v41 = v421[3];
  v42 = v421[4];
  __swift_project_boxed_opaque_existential_1(v421, v41);
  (*(v42 + 176))(&v479, v41, v42);
  v43 = &unk_21DC08000;
  if (v479 != 2 && (v479 & 1) == 0)
  {
    v44 = v39[3];
    v45 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v44);
    v46 = (*(v45 + 160))(v44, v45);
    if ((v47 & 1) == 0)
    {
      v99 = v46;
      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_305;
      }

      goto LABEL_65;
    }
  }

  v392 = 0;
  v403 = 0;
  while (1)
  {
    v395 = sub_21D62B8B8(v416 & 1, v39);
    *&v412 = v48;
    v49 = v39[3];
    v50 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v49);
    (*(v50 + 264))(&v445, v49, v50);
    v51 = v40[11];
    v52 = v40[13];
    v461 = v40[12];
    v462 = v52;
    v53 = v40[7];
    v54 = v40[9];
    v457 = v40[8];
    v458 = v54;
    v56 = v40[9];
    v55 = v40[10];
    v57 = v55;
    v460 = v40[11];
    v459 = v55;
    v58 = v40[3];
    v59 = v40[5];
    v453 = v40[4];
    v454 = v59;
    v61 = v40[5];
    v60 = v40[6];
    v62 = v60;
    v456 = v40[7];
    v455 = v60;
    v63 = v40[1];
    v452[0] = *v40;
    v452[1] = v63;
    v64 = v40[2];
    v66 = *v40;
    v65 = v40[1];
    v67 = v64;
    v452[3] = v40[3];
    v452[2] = v64;
    v68 = v40[13];
    v476 = v461;
    v477 = v68;
    v472 = v457;
    v473 = v56;
    v475 = v51;
    v474 = v57;
    v468 = v453;
    v469 = v61;
    v471 = v53;
    v470 = v62;
    v464 = v66;
    v465 = v65;
    v463 = v451;
    v478 = v451;
    v467 = v58;
    v466 = v67;
    if (sub_21D4B9498(&v464) == 1)
    {
      goto LABEL_19;
    }

    if ((v478 & 2) == 0 || (v440 = v474, v441 = v475, v442 = v476, v443 = v477, v436 = v470, v437 = v471, v438 = v472, v439 = v473, v432 = v466, v433 = v467, v434 = v468, v435 = v469, v430 = v464, v431 = v465, sub_21D157494(&v430) == 1))
    {
      sub_21D0CF7E0(v452, &unk_27CE5FB50, &qword_21DC1FAE0);
LABEL_19:
      v393 = 0;
      v415 = 0;
      goto LABEL_20;
    }

    v429[3] = v441;
    v429[4] = v442;
    v429[5] = v443;
    v428 = v437;
    v429[0] = v438;
    v429[1] = v439;
    v429[2] = v440;
    v130 = v437;
    if (v437)
    {
      v424 = v440;
      v425 = v441;
      v426 = v442;
      v422 = v438;
      v423 = v439;
      sub_21D1D9B34(v429, v427);
      v131 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
      countAndFlagsBits = v131._countAndFlagsBits;
      object = v131._object;
      v427[2] = v424;
      v427[3] = v425;
      v427[4] = v426;
      v427[0] = v422;
      v427[1] = v423;
      sub_21D1D9B90(v427);
      v130 = v443;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v393 = sub_21DACF058(v436, v130 & 1, countAndFlagsBits, object);
    v415 = v134;

    sub_21D0CF7E0(v452, &unk_27CE5FB50, &qword_21DC1FAE0);
LABEL_20:
    *(&v412 + 1) = v34;
    v69 = v39[3];
    v70 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v69);
    v71 = (*(v70 + 72))(v69, v70);
    v72 = objc_opt_self();
    v73 = &selRef_ttr_systemRedColor;
    if ((v71 & 1) == 0)
    {
      v73 = &selRef_secondaryLabelColor;
    }

    *&v418 = [v72 *v73];
    if (UIAccessibilityIsBoldTextEnabled())
    {
      v74 = 9;
    }

    else
    {
      v74 = 6;
    }

    if (qword_280D176B8 != -1)
    {
      v135 = v74;
      swift_once();
      v74 = v135;
    }

    v75 = sub_21D900614(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_21DC08D20;
    v77 = *MEMORY[0x277D740C0];
    *(v76 + 32) = *MEMORY[0x277D740C0];
    v78 = objc_opt_self();
    v79 = v77;
    v399 = v78;
    v80 = [v78 secondaryLabelColor];
    v81 = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    *(v76 + 40) = v80;
    v82 = *MEMORY[0x277D740A8];
    *(v76 + 64) = v81;
    *(v76 + 72) = v82;
    *(v76 + 104) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
    *(v76 + 80) = v75;
    v83 = v82;
    v398 = v75;
    v84 = sub_21D11274C(v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_21DC08D00;
    v390 = v81;
    v391 = v79;
    *(v85 + 32) = v79;
    *(v85 + 64) = v81;
    v86 = v84;
    v87 = v418;
    *(v85 + 40) = v418;
    v411 = v87;
    sub_21D11274C(v85);
    swift_setDeallocating();
    sub_21D0CF7E0(v85 + 32, &unk_27CE5F2C0, &qword_21DC09050);
    swift_deallocClassInstance();
    type metadata accessor for Key(0);
    v89 = v88;
    v90 = sub_21D639008(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v34 = MEMORY[0x277D84F70];
    v417 = v90;
    *&v418 = v89;
    sub_21DBF9ECC();

    v91 = v421[3];
    v92 = v421[4];
    __swift_project_boxed_opaque_existential_1(v421, v91);
    v93 = (*(v92 + 72))(v91, v92);
    v94 = 0;
    v95 = 0;
    if (v93)
    {
      ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
      if (ShouldDifferentiateWithoutColor)
      {
        v94 = 0xD000000000000026;
      }

      else
      {
        v94 = 0;
      }

      if (ShouldDifferentiateWithoutColor)
      {
        v95 = 0x800000021DC64260;
      }

      else
      {
        v95 = 0;
      }
    }

    v98 = v406;
    v97 = v407;
    v405 = v95;
    if (v416)
    {

      v404 = 0;
      v98 = 0;
    }

    v99 = MEMORY[0x277D84F90];
    *&v430 = MEMORY[0x277D84F90];
    v100 = *(&v412 + 1);
    if (*(&v412 + 1))
    {
      v101 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v102 = sub_21DBFA12C();
      v103 = sub_21DBF9E5C();
      v104 = [v101 initWithString:v102 attributes:v103];

      swift_beginAccess();
      v100 = v104;
      MEMORY[0x223D42D80]();
      if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v99 = v430;
      swift_endAccess();

      v34 = MEMORY[0x277D84F70];
      v105 = 0x277CCA000;
      v408 = v86;
      if (!v98)
      {
LABEL_40:
        v106 = v412;
        if (!v412)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v105 = 0x277CCA000;
      v408 = v86;
      if (!v98)
      {
        goto LABEL_40;
      }
    }

    v110 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v111 = v405;
    swift_bridgeObjectRetain_n();
    v100 = sub_21DBFA12C();
    v112 = sub_21DBF9E5C();
    v113 = [v110 initWithString:v100 attributes:v112];

    v114 = sub_21DB0D414(v113, v94, v111);
    swift_beginAccess();
    v115 = v114;
    MEMORY[0x223D42D80]();
    if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v99 = v430;
    swift_endAccess();

    swift_bridgeObjectRelease_n();
    v34 = MEMORY[0x277D84F70];
    v105 = 0x277CCA000;
    v106 = v412;
    if (!v412)
    {
LABEL_49:

      if (!v97)
      {
        goto LABEL_53;
      }

LABEL_50:
      v116 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v117 = sub_21DBFA12C();
      v118 = sub_21DBF9E5C();
      v119 = [v116 initWithString:v117 attributes:v118];

      swift_beginAccess();
      v106 = v119;
      MEMORY[0x223D42D80]();
      if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v99 = v430;
      swift_endAccess();

      goto LABEL_53;
    }

LABEL_41:
    v107 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v108 = sub_21DBFA12C();
    v100 = sub_21DBF9E5C();

    v109 = [v107 initWithString:v108 attributes:v100];

    swift_beginAccess();
    v106 = v109;
    MEMORY[0x223D42D80]();
    if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v99 = v430;
    swift_endAccess();

    if (v97)
    {
      goto LABEL_50;
    }

LABEL_53:
    if (v415)
    {
      v120 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v121 = sub_21DBFA12C();
      v122 = sub_21DBF9E5C();
      v123 = [v120 initWithString:v121 attributes:v122];

      swift_beginAccess();
      v106 = v123;
      MEMORY[0x223D42D80]();
      if (*((v430 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v430 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v99 = v430;
      swift_endAccess();
    }

    v43 = (v99 >> 62);
    if (v99 >> 62)
    {
      break;
    }

    v124 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v124)
    {
      goto LABEL_82;
    }

    if (v124 == 1)
    {
      goto LABEL_60;
    }

LABEL_75:
    v406 = v98;
    v98 = 0x800000021DC4CFE0;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v100 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v34 = sub_21DBFA12C();

    v136 = sub_21DBF9E5C();
    v106 = [v100 initWithString:v34 attributes:v136];

    if ((v99 & 0xC000000000000001) != 0)
    {
      v137 = MEMORY[0x223D44740](0, v99);
    }

    else
    {
      if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_295;
      }

      v137 = *(v99 + 32);
    }

    v138 = v137;
    v139 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

    if (v43)
    {
      v140 = sub_21DBFBD7C();
      if (v140 < 0)
      {
        __break(1u);
        goto LABEL_294;
      }
    }

    else
    {
      v140 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_21DB0D920(v140 != 0, v99);
    sub_21DB0D920(v140, v99);
    sub_21DB0D98C(v140 != 0, v140, v99);
    v40 = v144;
    v39 = ((v143 >> 1) - v142);
    v145 = v139;
    if (v143 >> 1 == v142)
    {
      goto LABEL_88;
    }

    if ((v143 >> 1) > v142)
    {
      v146 = (v141 + 8 * v142);
      v145 = v139;
      do
      {
        v147 = *v146++;
        v148 = v147;
        [v139 appendAttributedString_];
        [v139 appendAttributedString_];

        v39 = (v39 - 1);
      }

      while (v39);
LABEL_88:

      swift_unknownObjectRelease();

      v97 = v407;
      v100 = v145;
      v105 = 0x277CCA000;
      goto LABEL_89;
    }

    __break(1u);
LABEL_305:
    swift_once();
LABEL_65:
    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v126 = swift_allocObject();
    v127 = MEMORY[0x277D83B88];
    *(v126 + 16) = v43[208];
    v128 = MEMORY[0x277D83C10];
    *(v126 + 56) = v127;
    *(v126 + 64) = v128;
    *(v126 + 32) = v99;
    v392 = sub_21DBFA13C();
    v403 = v129;
  }

  if ((v99 & 0x8000000000000000) != 0)
  {
    v106 = v99;
  }

  else
  {
    v106 = (v99 & 0xFFFFFFFFFFFFFF8);
  }

  if (!sub_21DBFBD7C())
  {
LABEL_82:

    v415 = 0;
    goto LABEL_109;
  }

  if (sub_21DBFBD7C() != 1)
  {
    goto LABEL_75;
  }

LABEL_60:
  if ((v99 & 0xC000000000000001) != 0)
  {
    goto LABEL_291;
  }

  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v125 = *(v99 + 32);
    goto LABEL_63;
  }

LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  swift_once();
LABEL_132:
  v217 = sub_21DBF84BC();
  __swift_project_value_buffer(v217, qword_280D0F148);
  v218 = sub_21DBF84AC();
  v219 = sub_21DBFAECC();
  if (os_log_type_enabled(v218, v219))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_21D0C9000, v218, v219, "makeVisible called outside of performSubviewUpdates", v100, 2u);
    MEMORY[0x223D46520](v100, -1, -1);
  }

  while (2)
  {
    v97 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v220 = *(v105 + v97);
    v99 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v105 + v97) = v220;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v220 = sub_21D256D30(v220);
      *(v105 + v97) = v220;
    }

    if (v220[2] >= 5uLL)
    {
      v222 = v220[20];
      v100 = v220[21];
      v220[20] = v99;
      v220[21] = 0;
      *(v220 + 11) = v418;
      *(v105 + v97) = v220;
      swift_endAccess();
      v34 = v413;
      sub_21D157878(v222);

      goto LABEL_140;
    }

    __break(1u);
LABEL_285:
    v220 = sub_21D256D30(v220);
    *(v98 + v97) = v220;
LABEL_166:
    if (v220[2] >= 7uLL)
    {
      v255 = v220[28];
      v408 = v34;
      v256 = v100;
      v100 = v220[30];
      v220[28] = v99;
      *(v220 + 29) = xmmword_21DC1F9C0;
      v220[31] = 0x402E000000000000;
      *(v98 + v418) = v220;
      swift_endAccess();
      v257 = v255;
      v105 = v418;
      v43 = v414;
      sub_21D157878(v257);

      sub_21D1576C8(v256, v106, v408);
      v34 = v413;
      goto LABEL_169;
    }

    __break(1u);
LABEL_287:
    v220 = sub_21D256D30(v220);
    *(v98 + v105) = v220;
LABEL_281:
    if (v220[2] >= 4uLL)
    {
      v377 = v220[16];
      v220[16] = v99;
      *(v220 + 17) = xmmword_21DC1F9C0;
      v220[19] = 0x402E000000000000;
      *(v98 + v105) = v220;
      swift_endAccess();
      sub_21D157878(v377);

      goto LABEL_283;
    }

    __break(1u);
LABEL_289:
    v99 = sub_21D256D30(v99);
    *(v98 + v105) = v99;
LABEL_213:
    if (*(v99 + 16) >= 9uLL)
    {
      v320 = v34 & v97 ^ 1;
      v321 = *(v99 + 288);
      v100 = *(v99 + 304);
      v34 = *(v99 + 312);
      *(v99 + 288) = v106;
      *(v99 + 296) = v320;
      *(v99 + 304) = xmmword_21DC1F9D0;
      *(v98 + v105) = v99;
      swift_endAccess();
      sub_21D157878(v321);

      sub_21D6398B0(v401, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      goto LABEL_215;
    }

    __break(1u);
LABEL_291:
    v125 = MEMORY[0x223D44740](0, v99);
LABEL_63:
    v100 = v125;

LABEL_89:

    v149._rawValue = MEMORY[0x277D84F98];
    if (v412)
    {

      v150 = v411;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      *&v445 = v149;
      sub_21D4786EC(0x746165706572, 0xE600000000000000, v150, 0xD000000000000022, 0x800000021DC4B700, v151);
      v149._rawValue = v445;
    }

    if (v405)
    {

      v152 = v411;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      *&v445 = v149;
      v154 = v152;
      v97 = v407;
      sub_21D4786EC(0xD00000000000001ELL, 0x800000021DC5DB10, v154, 0xD000000000000026, 0x800000021DC64260, v153);
      v149._rawValue = v445;
    }

    if (v97)
    {

      v155 = v411;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      *&v445 = v149;
      sub_21D4786EC(0x6D72616C61, 0xE500000000000000, v155, 0xD00000000000001ELL, 0x800000021DC4B7B0, v156);
      v149._rawValue = v445;
    }

    if (*(v149._rawValue + 2))
    {
      v157 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v149);

      v100 = v157;
    }

    v158 = v421[3];
    v159 = v421[4];
    __swift_project_boxed_opaque_existential_1(v421, v158);
    v160 = (*(v159 + 96))(v158, v159);
    v415 = v100;
    if ((v160 & 1) != 0 && v100)
    {
      v161 = v100;
      v100 = &selRef_setAttributedText_;
      v162 = [v161 string];
      if (!v162)
      {
        goto LABEL_307;
      }

      v163 = v162;
      v164 = sub_21DBFA12C();
      v165 = [v163 rangeOfString_];

      if (("_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
      {
      }

      else
      {
        v166 = sub_21DBF4B4C();

        if (v165 != v166)
        {
          v167 = sub_21D62238C(&OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment, 1);
          v415 = v167;
          sub_21D0D8CF0(0, &qword_27CE5FAF0, 0x277CCAB48);
          v168 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          *(&v412 + 1) = *MEMORY[0x277D74078];
          [*&v167[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font] descender];
          v169 = sub_21DBF5DDC();
          v170 = [v168 string];
          v171 = sub_21DBFA16C();
          v173 = v172;

          v174 = MEMORY[0x223D42B30](v171, v173);

          [v168 addAttribute:*(&v412 + 1) value:v169 range:{0, v174}];

          v100 = &selRef_setAttributedText_;
          v175 = v168;
          v176 = sub_21D47BA90();

          v415 = v176;
          v161 = v176;
        }
      }

      v177 = v161;
      v178 = [v177 string];
      if (!v178)
      {
        goto LABEL_308;
      }

      v179 = v178;
      v180 = sub_21DBFA12C();
      v181 = [v179 rangeOfString_];

      if (("_SYMBOL_PLUSONE_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
      {
      }

      else
      {
        v182 = sub_21DBF4B4C();

        if (v181 != v182)
        {
          v183 = sub_21D62238C(&OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment, 0);
          *(&v412 + 1) = v183;
          sub_21D0D8CF0(0, &qword_27CE5FAF0, 0x277CCAB48);
          v184 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          v415 = *MEMORY[0x277D74078];
          [*&v183[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font] descender];
          v100 = sub_21DBF5DDC();
          v185 = [v184 &selRef_setInitialHandleCenterForDraggin_];
          v186 = sub_21DBFA16C();
          v188 = v187;

          v189 = MEMORY[0x223D42B30](v186, v188);

          [v184 addAttribute:v415 value:v100 range:{0, v189}];

          v190 = v184;
          v415 = sub_21D47BA90();
        }
      }
    }

LABEL_109:
    v191 = v421[3];
    v192 = v421[4];
    __swift_project_boxed_opaque_existential_1(v421, v191);
    (*(v192 + 240))(&v430, v191, v192);
    v193 = v430;
    if (v430)
    {
      v428 = v430;
      *&v429[0] = v431;
      sub_21DBF8E0C();
      v194 = v193;
      v43 = v414;
      sub_21D62BAF0(&v428, &v445);
      sub_21D6388A4(v193);

      v405 = *(&v445 + 1);
      *(&v412 + 1) = v445;
      v406 = v446;
      v407 = v447;
    }

    else
    {
      v406 = 0;
      v407 = 0;
      v405 = 0;
      *(&v412 + 1) = 0;
      v43 = v414;
    }

    v195 = [v399 tintColor];
    if (v403)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v196 = objc_allocWithZone(v105[275]);
      v197 = sub_21DBFA12C();

      v198 = v105;
      v199 = v408;
      v200 = sub_21DBF9E5C();
      v100 = &selRef_keyboardType;
      *&v412 = [v196 initWithString:v197 attributes:v200];

      v447 = v390;
      *&v445 = v195;
      sub_21D0CF2E8(&v445, &v430);
      v404 = v195;
      v201 = swift_isUniquelyReferenced_nonNull_native();
      *&v428 = v199;
      sub_21D476CE0(&v430, v391, v201);
      v202 = objc_allocWithZone(v198[275]);
      v203 = sub_21DBFA12C();

      v204 = sub_21DBF9E5C();

      v417 = [v202 initWithString:v203 attributes:v204];

      v43 = v414;
    }

    else
    {

      *&v412 = 0;
      v417 = 0;
      v404 = 0;
    }

    v205 = v415;
    v206 = *(v43 + v410);
    swift_getKeyPath(" o%_");
    *&v445 = v206;

    sub_21DBF5D9C();

    v207 = *(v206 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);

    v34 = v413;
    if ((v207 & 1) == 0 && !v205)
    {
      v208 = v421[3];
      v209 = v421[4];
      __swift_project_boxed_opaque_existential_1(v421, v208);
      (*(v209 + 272))(&v445, v208, v209);
      if (v445 == 1)
      {
        if (v446 >> 62)
        {
          v210 = sub_21DBFBD7C();
        }

        else
        {
          v210 = *((v446 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v210 && v412 == 0)
        {
LABEL_124:
          sub_21D6A46B0(2u);
          v211 = v400;
          goto LABEL_127;
        }
      }

      else
      {

        if (v412 == 0)
        {
          goto LABEL_124;
        }
      }
    }

    *&v445 = *(&v412 + 1);
    *(&v445 + 1) = v405;
    v446 = v406;
    v447 = v407;
    *&v430 = v412;
    *(&v430 + 1) = v417;
    *&v431 = v404;
    v211 = v400;
    sub_21D62994C(v205, &v445, &v430, v400);
LABEL_127:
    v415 = v205;
    v98 = v421;
    sub_21D62BE10(v421, v211);
    v212 = v98[3];
    v213 = v98[4];
    __swift_project_boxed_opaque_existential_1(v98, v212);
    (*(v213 + 48))(v212, v213);
    if (v214)
    {
      v100 = v214;
      v105 = *(v43 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
      v215 = sub_21D62A97C(4, 0x277D756B8);
      if (!v215)
      {
        v215 = sub_21D62D088();
      }

      v106 = v215;
      v216 = sub_21DBFA12C();

      [v106 setText_];

      v418 = *(v43 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
      if (*(v105 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
      {
        continue;
      }

      if (qword_280D0F140 != -1)
      {
        goto LABEL_296;
      }

      goto LABEL_132;
    }

    break;
  }

  v105 = *(v43 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  sub_21D6A46B0(4u);
LABEL_140:
  *&v418 = v105;
  if ((v416 & 1) != 0 || (v223 = v421[3], v224 = v421[4], __swift_project_boxed_opaque_existential_1(v421, v223), (*(v224 + 104))(&v445, v223, v224), (v225 = v447) == 0))
  {
    sub_21D6A46B0(5u);
    goto LABEL_157;
  }

  v400 = *(&v445 + 1);
  v226 = v445;
  v403 = v446;
  v227 = v448;
  v106 = v449;
  LODWORD(v408) = v450;
  v228 = sub_21D62AB60(5, type metadata accessor for TTRIRemindersListCellLocationView);
  if (!v228)
  {
    type metadata accessor for TTRIRemindersListCellLocationView();
    v228 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v100 = v228;
  v229 = objc_opt_self();
  v230 = v226;
  v231 = [v229 configurationWithPointSize_];
  v399 = v226;
  if (v226)
  {
    v226 = [v230 imageWithConfiguration_];
  }

  v232 = *(v100 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView);
  if (v232)
  {
    [v232 setImage_];
    [v100 setNeedsLayout];

    v233 = *(v100 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor);
    v234 = v400;
    *(v100 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor) = v400;
    v235 = v234;

    sub_21D6B1DD0();
    sub_21D6B1C78(v403, v225, v227, v106, v408 & 1);
    v105 = v418;
    if (*(v418 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
    {
      goto LABEL_152;
    }

    if (qword_280D0F140 != -1)
    {
      goto LABEL_303;
    }

    while (1)
    {
      v236 = sub_21DBF84BC();
      __swift_project_value_buffer(v236, qword_280D0F148);
      v237 = sub_21DBF84AC();
      v238 = sub_21DBFAECC();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = v106;
        v240 = swift_slowAlloc();
        *v240 = 0;
        _os_log_impl(&dword_21D0C9000, v237, v238, "makeVisible called outside of performSubviewUpdates", v240, 2u);
        v241 = v240;
        v106 = v239;
        MEMORY[0x223D46520](v241, -1, -1);
      }

LABEL_152:
      v395 = v225;
      v396 = v227;
      v242 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      swift_beginAccess();
      v34 = *(v105 + v242);
      v243 = v100;
      v244 = swift_isUniquelyReferenced_nonNull_native();
      *(v105 + v242) = v34;
      if ((v244 & 1) == 0)
      {
        v34 = sub_21D256D30(v34);
        *(v105 + v242) = v34;
      }

      if (v34[2] < 6uLL)
      {
        __break(1u);
LABEL_298:
        swift_once();
LABEL_162:
        v250 = sub_21DBF84BC();
        __swift_project_value_buffer(v250, qword_280D0F148);
        v251 = sub_21DBF84AC();
        v252 = sub_21DBFAECC();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          *v253 = 0;
          _os_log_impl(&dword_21D0C9000, v251, v252, "makeVisible called outside of performSubviewUpdates", v253, 2u);
          MEMORY[0x223D46520](v253, -1, -1);
        }

LABEL_165:
        v98 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        v97 = v418;
        swift_beginAccess();
        v220 = *(v98 + v97);
        v99 = v105;
        v254 = swift_isUniquelyReferenced_nonNull_native();
        *(v98 + v97) = v220;
        if ((v254 & 1) == 0)
        {
          goto LABEL_285;
        }

        goto LABEL_166;
      }

      v245 = v34[24];
      v100 = v34[25];
      v34[24] = v243;
      *(v34 + 25) = xmmword_21DC1F9C0;
      v34[27] = 0x402E000000000000;
      *(v418 + v242) = v34;
      swift_endAccess();
      v105 = v418;
      sub_21D157878(v245);

      sub_21D4B94BC(v399, v400, v403, v395);
      v34 = v413;
LABEL_157:
      v246 = v421[3];
      v247 = v421[4];
      __swift_project_boxed_opaque_existential_1(v421, v246);
      (*(v247 + 248))(&v445, v246, v247);
      v106 = *(&v445 + 1);
      if (*(&v445 + 1))
      {
        v100 = v445;
        v34 = v446;
        v248 = sub_21D62AB60(6, type metadata accessor for TTRIRemindersListCellPersonView);
        if (!v248)
        {
          type metadata accessor for TTRIRemindersListCellPersonView();
          v248 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        }

        v105 = v248;
        v249 = v34;
        sub_21D6D40C4(v34);
        sub_21DBF8E0C();
        sub_21D6D41B4(v100, v106);
        if ((*(v418 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 == -1)
          {
            goto LABEL_162;
          }

          goto LABEL_298;
        }

        goto LABEL_165;
      }

      sub_21D6A46B0(6u);
LABEL_169:
      v258 = *(v43 + v410);
      swift_getKeyPath(byte_21DC20018);
      *&v445 = v258;

      sub_21DBF5D9C();

      LODWORD(v410) = *(v258 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass);

      v259 = v421[3];
      v260 = v421[4];
      __swift_project_boxed_opaque_existential_1(v421, v259);
      v261 = (*(v260 + 120))(v259, v260);
      if (v261)
      {
        if (*(v261 + 16))
        {
          v262 = v386;
          sub_21D639848(v261 + ((*(v385 + 80) + 32) & ~*(v385 + 80)), v386, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);

          v263 = v401;
          sub_21D6397E0(v262, v401, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
          v264 = v421[3];
          v265 = v421[4];
          v266 = v263;
          __swift_project_boxed_opaque_existential_1(v421, v264);
          v267 = (*(v265 + 144))(v264, v265);
          v268 = v397;
          if (v267 & 1) != 0 && (sub_21DBF53CC())
          {
            v408 = 0;
            LODWORD(v409) = 1;
          }

          else
          {
            LODWORD(v409) = 0;
            v408 = 1;
          }

          v269 = v402;
          v270 = sub_21D62AB60(8, type metadata accessor for TTRIRemindersListReminderCellLinkView);
          if (v270)
          {
            v271 = v270;
            v272 = [v271 URL];
            if (v272)
            {
              v273 = v384;
              v274 = v272;
              sub_21DBF546C();

              v275 = 0;
            }

            else
            {
              v275 = 1;
              v273 = v384;
            }

            v279 = *(v269 + 56);
            v280 = v389;
            v279(v273, v275, 1, v389);
            v281 = *(v268 + 20);
            v282 = *(v402 + 16);
            v400 = ((v402 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            v403 = v282;
            v282(v34, v266 + v281, v280);
            v279(v34, 0, 1, v280);
            v283 = *(v383 + 48);
            v284 = v388;
            sub_21D0D3954(v273, v388, &qword_27CE5EA20, &qword_21DC0D4A0);
            v285 = v402;
            sub_21D0D3954(v34, v284 + v283, &qword_27CE5EA20, &qword_21DC0D4A0);
            v286 = v34;
            v287 = *(v285 + 48);
            if (v287(v284, 1, v280) == 1)
            {
              sub_21D0CF7E0(v286, &qword_27CE5EA20, &qword_21DC0D4A0);
              v288 = v388;
              sub_21D0CF7E0(v273, &qword_27CE5EA20, &qword_21DC0D4A0);
              v289 = v287(v288 + v283, 1, v280);
              v266 = v401;
              v278 = v408;
              if (v289 == 1)
              {
                sub_21D0CF7E0(v288, &qword_27CE5EA20, &qword_21DC0D4A0);
                goto LABEL_189;
              }

LABEL_187:
              sub_21D0CF7E0(v288, &unk_27CE5F2A0, &unk_21DC09120);
              goto LABEL_192;
            }

            v290 = v380;
            sub_21D0D3954(v284, v380, &qword_27CE5EA20, &qword_21DC0D4A0);
            v291 = v287(v284 + v283, 1, v280);
            v278 = v408;
            if (v291 == 1)
            {
              sub_21D0CF7E0(v413, &qword_27CE5EA20, &qword_21DC0D4A0);
              v288 = v388;
              sub_21D0CF7E0(v384, &qword_27CE5EA20, &qword_21DC0D4A0);
              (*(v285 + 8))(v290, v280);
              v266 = v401;
              goto LABEL_187;
            }

            v292 = v284 + v283;
            v293 = v387;
            (*(v285 + 32))(v387, v292, v280);
            sub_21D639008(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
            v294 = sub_21DBFA10C();
            v295 = *(v285 + 8);
            v295(v293, v280);
            sub_21D0CF7E0(v413, &qword_27CE5EA20, &qword_21DC0D4A0);
            sub_21D0CF7E0(v384, &qword_27CE5EA20, &qword_21DC0D4A0);
            v295(v290, v280);
            sub_21D0CF7E0(v388, &qword_27CE5EA20, &qword_21DC0D4A0);
            v266 = v401;
            if (v294)
            {
LABEL_189:
              sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
              v296 = *&v271[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
              v297 = sub_21DBFB63C();

              if ((v297 & 1) == 0)
              {
                goto LABEL_192;
              }

              v298 = [v271 _preferredSizeClass];

              if (v298 == v278)
              {
                v299 = v397;
LABEL_195:
                v97 = v409;
                v105 = v418;
                if (*(v266 + *(v299 + 24)))
                {
                  v310 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata;
                  if ((v271[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] & 1) == 0)
                  {
                    [v271 setMetadata_];
                    v271[v310] = 1;
                  }
                }

                v311 = *MEMORY[0x277CEC618];
                LODWORD(v34) = v410;
                if (!v410)
                {
                  v311 = 304.0;
                }

                if (v97)
                {
                  v312 = v311;
                }

                else
                {
                  v312 = *MEMORY[0x277CEC620];
                }

                if (v97)
                {
                  v313 = 200.0;
                }

                else
                {
                  v313 = *(MEMORY[0x277CEC620] + 8);
                }

                v106 = v271;
                [v106 setMaximumLayoutSize_];
                v43 = v414;
                if ((*(v105 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
                {
                  if (qword_280D0F140 != -1)
                  {
                    swift_once();
                  }

                  v314 = sub_21DBF84BC();
                  __swift_project_value_buffer(v314, qword_280D0F148);
                  v315 = sub_21DBF84AC();
                  v316 = sub_21DBFAECC();
                  if (os_log_type_enabled(v315, v316))
                  {
                    v317 = swift_slowAlloc();
                    *v317 = 0;
                    _os_log_impl(&dword_21D0C9000, v315, v316, "makeVisible called outside of performSubviewUpdates", v317, 2u);
                    v318 = v317;
                    v97 = v409;
                    MEMORY[0x223D46520](v318, -1, -1);
                  }
                }

                v98 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
                swift_beginAccess();
                v99 = *(v98 + v105);
                v319 = swift_isUniquelyReferenced_nonNull_native();
                *(v98 + v105) = v99;
                if ((v319 & 1) == 0)
                {
                  goto LABEL_289;
                }

                goto LABEL_213;
              }
            }

            else
            {
LABEL_192:
            }

            v277 = v402;
            v276 = v403;
          }

          else
          {
            v276 = *(v269 + 16);
            v277 = v269;
            v278 = v408;
          }

          v299 = v397;
          v300 = v387;
          v301 = v389;
          v276(v387, v266 + *(v397 + 20), v389);
          v302 = *v266;
          v303 = type metadata accessor for TTRIRemindersListReminderCellLinkView();
          v304 = objc_allocWithZone(v303);
          v304[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] = 0;
          *&v304[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID] = v302;
          v305 = v302;
          v306 = sub_21DBF53FC();
          v444.receiver = v304;
          v444.super_class = v303;
          v307 = objc_msgSendSuper2(&v444, sel_initWithURL_, v306);

          (*(v277 + 8))(v300, v301);
          v271 = v307;
          [v271 _setApplyCornerRadius_];
          [v271 _setForceFlexibleWidth_];
          v308 = [v271 layer];
          [v308 setCornerRadius_];

          v309 = [v271 layer];
          [v309 setMaskedCorners_];

          [v271 _setDisableAnimations_];
          [v271 _setPreferredSizeClass_];

          goto LABEL_195;
        }
      }

      sub_21D6A46B0(8u);
LABEL_215:
      v322 = v421[3];
      v323 = v421[4];
      __swift_project_boxed_opaque_existential_1(v421, v322);
      v324 = (*(v323 + 128))(v322, v323);
      if (!v324)
      {
        goto LABEL_221;
      }

      v325 = v324;
      if (!*(v324 + 16))
      {

LABEL_221:
        sub_21D6A46B0(9u);
        if ((v416 & 1) == 0)
        {
          goto LABEL_260;
        }

LABEL_271:
        v369 = sub_21D62AB60(3, type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView);
        if (v369)
        {
          v106 = v369;
        }

        else
        {
          v106 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView()) initWithFrame_];
          v448 = &off_282EC9600;
          v447 = ObjectType;
          *&v445 = v43;
          v370 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate;
          swift_beginAccess();
          v371 = v43;
          sub_21D639710(&v445, &v106[v370]);
          swift_endAccess();
        }

        sub_21D0D32E4(v421, &v445);
        v372 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel;
        swift_beginAccess();
        v97 = &unk_27CE5FAE0;
        sub_21D0EB8DC(&v445, &v106[v372], &unk_27CE5FAE0, &unk_21DC18590);
        swift_endAccess();
        sub_21D4B71C0();
        sub_21D0CF7E0(&v445, &unk_27CE5FAE0, &unk_21DC18590);
        if ((*(v105 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 != -1)
          {
            swift_once();
          }

          v373 = sub_21DBF84BC();
          __swift_project_value_buffer(v373, qword_280D0F148);
          v374 = sub_21DBF84AC();
          v375 = sub_21DBFAECC();
          if (os_log_type_enabled(v374, v375))
          {
            v97 = swift_slowAlloc();
            *v97 = 0;
            _os_log_impl(&dword_21D0C9000, v374, v375, "makeVisible called outside of performSubviewUpdates", v97, 2u);
            MEMORY[0x223D46520](v97, -1, -1);
          }
        }

        v98 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        swift_beginAccess();
        v220 = *(v98 + v105);
        v99 = v106;
        v376 = swift_isUniquelyReferenced_nonNull_native();
        *(v98 + v105) = v220;
        if ((v376 & 1) == 0)
        {
          goto LABEL_287;
        }

        goto LABEL_281;
      }

      v227 = v421[3];
      v326 = v421[4];
      __swift_project_boxed_opaque_existential_1(v421, v227);
      if (((*(v326 + 144))(v227, v326) & 1) == 0)
      {
        v329 = sub_21D62AB60(9, type metadata accessor for TTRIRemindersListSmallImageAttachmentsView);
        if (v329)
        {
          v225 = v329;
        }

        else
        {
          v225 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListSmallImageAttachmentsView()) init];
          *(v225 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_attachmentsDelegate + 8) = &off_282EC9568;
          swift_unknownObjectWeakAssign();
        }

        v342 = *(v325 + 16);
        if (v342)
        {
          v413 = v225;
          *&v445 = MEMORY[0x277D84F90];
          sub_21D18F304(0, v342, 0);
          v343 = v445;
          v344 = v325 + ((*(v382 + 80) + 32) & ~*(v382 + 80));
          v227 = *(v382 + 72);
          do
          {
            v345 = v419;
            sub_21D639848(v344, v419, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
            v346 = *(v345 + *(v420 + 24));
            v347 = *v345;
            v348 = v346;
            v100 = v347;
            sub_21D6398B0(v345, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
            *&v445 = v343;
            v350 = *(v343 + 16);
            v349 = *(v343 + 24);
            if (v350 >= v349 >> 1)
            {
              sub_21D18F304((v349 > 1), v350 + 1, 1);
              v343 = v445;
            }

            *(v343 + 16) = v350 + 1;
            v351 = v343 + 16 * v350;
            *(v351 + 32) = v346;
            *(v351 + 40) = v100;
            v344 += v227;
            --v342;
          }

          while (v342);

          v105 = v418;
          v225 = v413;
        }

        else
        {

          v343 = MEMORY[0x277D84F90];
        }

        sub_21D6BFD90(v343);
        if ((*(v105 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 != -1)
          {
            swift_once();
          }

          v364 = sub_21DBF84BC();
          __swift_project_value_buffer(v364, qword_280D0F148);
          v365 = sub_21DBF84AC();
          v366 = sub_21DBFAECC();
          if (os_log_type_enabled(v365, v366))
          {
            v227 = swift_slowAlloc();
            *v227 = 0;
            _os_log_impl(&dword_21D0C9000, v365, v366, "makeVisible called outside of performSubviewUpdates", v227, 2u);
            MEMORY[0x223D46520](v227, -1, -1);
          }
        }

        v43 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        swift_beginAccess();
        v106 = *(v43 + v105);
        v360 = v225;
        v367 = swift_isUniquelyReferenced_nonNull_native();
        *(v43 + v105) = v106;
        if (v367)
        {
          goto LABEL_269;
        }

        goto LABEL_301;
      }

      v327 = sub_21D62AB60(9, type metadata accessor for TTRIRemindersListLargeImageAttachmentsView);
      if (v327)
      {
        v328 = v327;
      }

      else
      {
        v328 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListLargeImageAttachmentsView()) initWithFrame_];
        v330 = &v328[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate];
        swift_beginAccess();
        *(v330 + 1) = &protocol witness table for TTRIRemindersListReminderCell_collectionView;
        swift_unknownObjectWeakAssign();
      }

      v331 = *(v325 + 16);
      if (v331)
      {
        v413 = v328;
        *&v445 = MEMORY[0x277D84F90];
        sub_21D18F33C(0, v331, 0);
        v332 = v445;
        v333 = v325 + ((*(v382 + 80) + 32) & ~*(v382 + 80));
        v334 = *(v382 + 72);
        do
        {
          v335 = v419;
          sub_21D639848(v333, v419, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          v336 = *(v335 + *(v420 + 24));
          v337 = *v335;
          v338 = v336;
          v100 = v337;
          sub_21D6398B0(v335, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          *&v445 = v332;
          v340 = *(v332 + 16);
          v339 = *(v332 + 24);
          if (v340 >= v339 >> 1)
          {
            sub_21D18F33C((v339 > 1), v340 + 1, 1);
            v332 = v445;
          }

          *(v332 + 16) = v340 + 1;
          v341 = v332 + 16 * v340;
          *(v341 + 32) = v336;
          *(v341 + 40) = v100;
          v333 += v334;
          --v331;
        }

        while (v331);

        v328 = v413;
        v43 = v414;
        v105 = v418;
      }

      else
      {

        v332 = MEMORY[0x277D84F90];
      }

      TTRIRemindersListLargeImageAttachmentsView.viewModels.setter(v332);
      v225 = v410;
      if (v410)
      {
        v352 = 0;
      }

      else
      {
        v352 = 0x4073000000000000;
      }

      v353 = &v328[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
      swift_beginAccess();
      v354 = *v353;
      v355 = *(v353 + 8);
      *v353 = v352;
      *(v353 + 8) = v225;
      if (v225)
      {
        if (v355)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v354 != 304.0)
        {
          LOBYTE(v355) = 1;
        }

        if ((v355 & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      [v328 invalidateIntrinsicContentSize];
LABEL_250:
      if ((*(v105 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v356 = sub_21DBF84BC();
        __swift_project_value_buffer(v356, qword_280D0F148);
        v357 = sub_21DBF84AC();
        v358 = sub_21DBFAECC();
        if (os_log_type_enabled(v357, v358))
        {
          v359 = swift_slowAlloc();
          *v359 = 0;
          _os_log_impl(&dword_21D0C9000, v357, v358, "makeVisible called outside of performSubviewUpdates", v359, 2u);
          MEMORY[0x223D46520](v359, -1, -1);
        }
      }

      v105 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      v227 = v418;
      swift_beginAccess();
      v106 = *(v105 + v227);
      v360 = v328;
      v361 = swift_isUniquelyReferenced_nonNull_native();
      *(v105 + v227) = v106;
      if ((v361 & 1) == 0)
      {
        v106 = sub_21D256D30(v106);
        *(v105 + v418) = v106;
      }

      if (*(v106 + 2) >= 0xAuLL)
      {
        v362 = *(v106 + 40);
        v34 = *(v106 + 43);
        *(v106 + 40) = v360;
        *(v106 + 41) = v225 ^ 1;
        *(v106 + 21) = xmmword_21DC1F9D0;
        v363 = v418;
        *(v105 + v418) = v106;
        v105 = v363;
        swift_endAccess();
        sub_21D157878(v362);

        if ((v416 & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_271;
      }

      __break(1u);
LABEL_301:
      v106 = sub_21D256D30(v106);
      *(v43 + v105) = v106;
LABEL_269:
      if (*(v106 + 2) >= 0xAuLL)
      {
        v368 = *(v106 + 40);
        v34 = *(v106 + 43);
        *(v106 + 40) = v360;
        *(v106 + 328) = xmmword_21DC1F9C0;
        *(v106 + 43) = 0x402E000000000000;
        *(v43 + v105) = v106;
        swift_endAccess();
        sub_21D157878(v368);

        v43 = v414;
        if (v416)
        {
          goto LABEL_271;
        }

LABEL_260:
        sub_21D6A46B0(3u);
LABEL_283:
        v378 = v398;
        sub_21D62D18C(v421);

        sub_21D6396C0(v412, v417, v404);
        sub_21D60E688(*(&v412 + 1), v405, v406, v407);

        return;
      }

      __break(1u);
LABEL_303:
      swift_once();
    }
  }

  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);

  __break(1u);
}