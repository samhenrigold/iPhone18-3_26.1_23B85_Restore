void *assignWithTake for TTRIReminderNotesCellContentState(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D952544(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
  v42 = a3[5];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  v44 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v44) = *(a2 + v44);
  return a1;
}

uint64_t sub_21D9547E4(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRIHashtagCollectionCellContentState.init(selection:hashtagLabels:allTagsButtonState:addTagButtonState:allowsExcludedSelection:maxRowCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  v17 = a8 + v16[9];
  v18 = sub_21DBF6C1C();
  result = (*(*(v18 - 8) + 32))(a8, a1, v18);
  *(a8 + v16[5]) = a2;
  v20 = (a8 + v16[6]);
  *v20 = v13;
  v20[1] = v14;
  *(a8 + v16[7]) = v15;
  *(a8 + v16[8]) = a5;
  *v17 = a6;
  *(v17 + 8) = a7 & 1;
  return result;
}

uint64_t TTRIHashtagCollectionCellContentState.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF6C1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRIHashtagCollectionCellContentState.selection.setter(uint64_t a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double TTRIHashtagCollectionCellContentState.hashtagLabels.getter()
{
  type metadata accessor for TTRIHashtagCollectionCellContentState(0);

  sub_21DBF8E0C();
  return result;
}

void TTRIHashtagCollectionCellContentState.hashtagLabels.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIHashtagCollectionCellContentState(0) + 20);

  *(v1 + v3) = a1;
}

double TTRIHashtagCollectionCellContentState.allTagsButtonState.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRIHashtagCollectionCellContentState(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  sub_21DBF8E0C();
  return result;
}

uint64_t TTRIHashtagCollectionCellContentState.addTagButtonState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t TTRIHashtagCollectionCellContentState.maxRowCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21D954D90@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EC00);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
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

uint64_t sub_21D954E30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE8EC00);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21D954F98@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EC08);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
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

uint64_t sub_21D955038(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE8EC08);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21D9551A0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EC10);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
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

uint64_t sub_21D955240(uint64_t *a1, void *a2)
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

  v7 = (*a2 + qword_27CE8EC10);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21D955328(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_21D9553B0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRIHashtagCollectionCellContent.init(state:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_27CE8EC00);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + qword_27CE8EC08);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + qword_27CE8EC10);
  *v8 = 0;
  v8[1] = 0;
  sub_21D59BC10(a1, v5);
  v9 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v9 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v9 & *v1) + 0x90)) = 0;
  sub_21D59BC10(v5, v1 + *((*v9 & *v1) + 0x78));
  *(v1 + *((*v9 & *v1) + 0x80)) = 0;
  v10 = (v1 + *((*v9 & *v1) + 0x88));
  *v10 = 0xD000000000000015;
  v10[1] = 0x800000021DC71490;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64058, &qword_21DC32520);
  v14.receiver = v1;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_21D59BC74(a1);
  sub_21D59BC74(v5);
  return v12;
}

uint64_t TTRIHashtagCollectionCellContent.updateCell(_:)(uint64_t a1)
{
  v23 = sub_21DBF6C1C();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v6 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v7 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  v8 = &v6[v7[6]];
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v12 = (v11 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v10;
  v12[1] = v9;
  sub_21DBF8E0C();
  v25[0] = v13;
  v25[1] = v14;
  sub_21D8EFAE8(v25);

  LOBYTE(v13) = v6[v7[7]];
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v16 = *(v11 + v15);
  *(v11 + v15) = v13;
  v24[0] = v16;
  sub_21D8EFE60(v24);
  LOBYTE(v13) = v6[v7[8]];
  v17 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  *(v11 + v17) = v13;
  TTRIHashtagWrappingCollectionView.maxRowCount.setter(*&v6[v7[9]], v6[v7[9] + 8]);
  v18 = *&v6[v7[5]];
  v19 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v20 = *(v11 + v19);
  *(v11 + v19) = v18;
  sub_21DBF8E0C();
  sub_21D8F0118(v20);

  v21 = v23;
  (*(v3 + 16))(v5, v6, v23);
  TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(v5, 0);
  return (*(v3 + 8))(v5, v21);
}

uint64_t TTRIHashtagCollectionCellContent.didAssignCell(_:)(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  *(v1 + 8) = &protocol witness table for TTRIHashtagCollectionCellContent;
  return swift_unknownObjectWeakAssign();
}

uint64_t TTRIHashtagCollectionCellContent.willUnassignCell(_:)(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  *(v1 + 8) = 0;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21D9559CC()
{
  sub_21D0D0E88(*(v0 + qword_27CE8EC00), *(v0 + qword_27CE8EC00 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE8EC08), *(v0 + qword_27CE8EC08 + 8));
  v1 = *(v0 + qword_27CE8EC10);
  v2 = *(v0 + qword_27CE8EC10 + 8);

  return sub_21D0D0E88(v1, v2);
}

id TTRIHashtagCollectionCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D955A60(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE8EC00), *(a1 + qword_27CE8EC00 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE8EC08), *(a1 + qword_27CE8EC08 + 8));
  v2 = *(a1 + qword_27CE8EC10);
  v3 = *(a1 + qword_27CE8EC10 + 8);

  return sub_21D0D0E88(v2, v3);
}

void TTRIHashtagCollectionCellContent.hashtagCollectionCell(_:layoutResultDidChange:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + qword_27CE8EC08;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    v8[0] = v3;
    v8[1] = v4;

    v6(v8);
    sub_21D0D0E88(v6, v7);
  }
}

void TTRIHashtagCollectionCellContent.hashtagCollectionCellRequestAddTag(_:)()
{
  v1 = v0 + qword_27CE8EC10;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_21D0D0E88(v2, v3);
  }
}

void sub_21D955BCC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + qword_27CE8EC08;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    v8[0] = v3;
    v8[1] = v4;

    v6(v8);
    sub_21D0D0E88(v6, v7);
  }
}

void sub_21D955C4C()
{
  v1 = v0 + qword_27CE8EC10;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_21D0D0E88(v2, v3);
  }
}

BOOL _s15RemindersUICore37TTRIHashtagCollectionCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x223D3F370]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  if ((sub_21D1D57A4(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {

      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v11 = v4[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if ((v13 & 1) == 0)
  {
    if (*v12 != *v14)
    {
      v15 = 1;
    }

    return (v15 & 1) == 0;
  }

  return (v15 & 1) != 0;
}

uint64_t sub_21D955DDC(uint64_t a1)
{
  v3 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D59BC10(v1 + v10, v8);
  v11 = sub_21DBF6C1C();
  (*(*(v11 - 8) + 24))(v8, a1, v11);
  v12 = *((*v9 & *v1) + 0x90);
  *(v1 + v12) = 1;
  sub_21D59BC10(v8, v5);
  sub_21D5C7A18(v5);
  *(v1 + v12) = 0;
  v13 = v1 + qword_27CE8EC00;
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);

    v14(v8);
    sub_21D0D0E88(v14, v15);
  }

  return sub_21D59BC74(v8);
}

void *initializeBufferWithCopyOfBuffer for TTRIHashtagCollectionCellContentState(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF6C1C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    v12 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v12) = *(a2 + v12);
    v13 = a3[9];
    v14 = a1 + v13;
    v15 = a2 + v13;
    v14[8] = v15[8];
    *v14 = *v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

double destroy for TTRIHashtagCollectionCellContentState(uint64_t a1)
{
  v2 = sub_21DBF6C1C();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t initializeWithCopy for TTRIHashtagCollectionCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[9];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *(v13 + 8) = *(v14 + 8);
  *v13 = *v14;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIHashtagCollectionCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  sub_21DBF8E0C();

  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v10 = a3[9];
  v11 = a1 + v10;
  v12 = (a2 + v10);
  v13 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *v11 = v13;
  return a1;
}

uint64_t initializeWithTake for TTRIHashtagCollectionCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  return a1;
}

uint64_t assignWithTake for TTRIHashtagCollectionCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[9];
  v14 = a1 + v13;
  v15 = a2 + v13;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  return a1;
}

uint64_t sub_21D956480(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRSECreateRemindersViewModel.Item.init(remindersListItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v16 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(a1, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_14;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      goto LABEL_8;
    }

LABEL_6:
    sub_21D106F78(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

LABEL_14:
  sub_21D9589BC(v12, v15, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 1)
  {
    v21 = v30;
    if (!v26)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106F78(v15, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      v19 = 1;
      v20 = v31;
      return (*(v16 + 56))(v20, v19, 1, v21);
    }

    sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v25 = v29;
    sub_21D9589BC(v15, v29, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v20 = v31;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    sub_21D9589BC(v25, v20, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    v19 = 0;
    return (*(v16 + 56))(v20, v19, 1, v21);
  }

  if (v26 == 2)
  {
    sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v25 = v29;
    sub_21D9589BC(v15, v29, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v21 = v30;
    v20 = v31;
    goto LABEL_20;
  }

LABEL_8:
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter(v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v19 = 1;
    v21 = v30;
    v20 = v31;
  }

  else
  {
    sub_21D9589BC(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    if (qword_27CE56E88 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = __swift_project_value_buffer(v22, qword_27CE8EC18);
    v24 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v6, v23);
    sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106F78(v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v19 = 1;
    v21 = v30;
    v20 = v31;
    v25 = v29;
    if (v24)
    {
      *v29 = 1;
      goto LABEL_20;
    }
  }

  return (*(v16 + 56))(v20, v19, 1, v21);
}

uint64_t TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v2, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 3)
    {
      *a1 = *v6;
    }

    else
    {
      sub_21D9589BC(v6, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D9589BC(v9, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }
  }

  type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRSECreateRemindersViewModel.Item.casesForItemCellsOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v2, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D9589BC(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      type metadata accessor for TTRRemindersListViewModel.Item(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21D9589BC(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.init(createRemindersSuggestedReminderID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D9589BC(a1, a2, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D956F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v2, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    goto LABEL_4;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_21D106F78(v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
LABEL_4:
    v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
    v9 = *(*(v8 - 8) + 56);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D9589BC(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v14 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
    return (*(*(v14 - 8) + 56))(a1, 0, 2, v14);
  }

  v13 = *v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(*(v8 - 8) + 56);
  if (v13 == 1)
  {
    v10 = a1;
    v11 = 1;
    return v9(v10, v11, 2, v8);
  }

LABEL_5:
  v10 = a1;
  v11 = 2;
  return v9(v10, v11, 2, v8);
}

uint64_t TTRSECreateRemindersViewModel.Item.casesForDraggableItemsOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v2, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x71) == 0)
  {
    if (((1 << EnumCaseMultiPayload) & 0xC) != 0)
    {
      sub_21D106F78(v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    }

    else
    {
      sub_21D9589BC(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v8 = 0;
    }
  }

  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t TTRSECreateRemindersViewModel.SectionID.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRSECreateRemindersViewModel.ItemID.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v1, v15, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    return MEMORY[0x223D44FA0](v17);
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = *v15;
    MEMORY[0x223D44FA0](1);
    v17 = v18;
    return MEMORY[0x223D44FA0](v17);
  }

  sub_21D9589BC(v15, v12, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  MEMORY[0x223D44FA0](2);
  sub_21DBFB64C();
  sub_21D959298(&v12[*(v10 + 20)], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D9589BC(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)(a1);
    sub_21D106F78(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return sub_21D106F78(v12, type metadata accessor for TTRRemindersListViewModel.ReminderID);
}

uint64_t TTRSECreateRemindersViewModel.ItemID.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRSECreateRemindersViewModel.ItemID.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9575F0()
{
  sub_21DBFC7DC();
  TTRSECreateRemindersViewModel.ItemID.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D957634(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRSECreateRemindersViewModel.ItemID.hash(into:)(v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D957678()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  __swift_allocate_value_buffer(v0, qword_27CE8EC18);
  *__swift_project_value_buffer(v0, qword_27CE8EC18) = 2;

  return swift_storeEnumTagMultiPayload();
}

BOOL static TTRSECreateRemindersViewModel.Item.identitiesEqual(_:_:)(__n128 a1)
{
  v1 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(&v9 - v5);
  TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(v3);
  v7 = _s15RemindersUICore011TTRSECreateA9ViewModelO6ItemIDO2eeoiySbAE_AEtFZ_0(v6, v3);
  sub_21D106F78(v3, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  sub_21D106F78(v6, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  return v7;
}

BOOL sub_21D9577C8(__n128 a1)
{
  v1 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(&v9 - v5);
  TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(v3);
  v7 = _s15RemindersUICore011TTRSECreateA9ViewModelO6ItemIDO2eeoiySbAE_AEtFZ_0(v6, v3);
  sub_21D106F78(v3, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  sub_21D106F78(v6, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  return v7;
}

uint64_t TTRSECreateRemindersViewModel.ItemID.init(remindersListItemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(a1, v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v18 = v9;
    }

    else
    {
      v18 = a1;
    }

    sub_21D106F78(v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v17 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D9589BC(v9, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_10;
    }

    sub_21D9589BC(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    if (qword_27CE56E88 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_27CE8EC18);
    v16 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v6, v15);
    sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106F78(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v17 = 1;
    if (v16)
    {
      *v13 = 1;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      sub_21D9589BC(v13, a2, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      v17 = 0;
    }
  }

  return (*(v11 + 56))(a2, v17, 1, v10);
}

uint64_t TTRSECreateRemindersViewModel.ItemID.storedSectionID.getter@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v3, v7, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) < 3)
  {
    goto LABEL_5;
  }

  if (result)
  {
    result = sub_21D106F78(v7, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
LABEL_5:
    v9 = 3;
    goto LABEL_6;
  }

  v9 = *v7;
LABEL_6:
  *a1 = v9;
  return result;
}

uint64_t TTRSECreateRemindersViewModel.Item.casesForSuggestionsOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v1, v5, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 3;
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v7 = 3;
    }

    else
    {
      v7 = v8;
    }
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D9589BC(v5, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v7 = 0;
    }
  }

  else
  {
    sub_21D106F78(v5, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  }

  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  return (*(*(v9 - 8) + 56))(a1, v7, 3, v9);
}

unint64_t TTRSECreateRemindersViewModel.Item.treeItemDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v53 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v53);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (&v50 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v50 - v23);
  v25 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(v0, v27, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_21D9589BC(v27, v24, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_21DBFBEEC();

        v58 = 0xD000000000000014;
        v59 = 0x800000021DC715E0;
        v34 = [*v24 description];
        v35 = sub_21DBFA16C();
        v37 = v36;

        v56 = v35;
        v57 = v37;
        sub_21D959298(v24 + *(v53 + 20), v8);
        if ((*(v54 + 48))(v8, 1, v55) == 1)
        {
          sub_21D0CF7E0(v8, &unk_27CE5CD70, &unk_21DC09230);
        }

        else
        {
          sub_21D9589BC(v8, v16, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v44 = TTRRemindersListViewModel.SectionID.description.getter();
          MEMORY[0x223D42AA0](v44);

          sub_21D106F78(v16, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v35 = v56;
          v37 = v57;
        }

        MEMORY[0x223D42AA0](v35, v37);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v58;
        v45 = v24;
      }

      else
      {
        sub_21D9589BC(v27, v21, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_21DBFBEEC();

        v58 = 0xD000000000000014;
        v59 = 0x800000021DC715C0;
        v40 = [*v21 description];
        v41 = sub_21DBFA16C();
        v43 = v42;

        v56 = v41;
        v57 = v43;
        sub_21D959298(v21 + *(v53 + 20), v5);
        if ((*(v54 + 48))(v5, 1, v55) == 1)
        {
          sub_21D0CF7E0(v5, &unk_27CE5CD70, &unk_21DC09230);
        }

        else
        {
          sub_21D9589BC(v5, v13, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v46 = TTRRemindersListViewModel.SectionID.description.getter();
          MEMORY[0x223D42AA0](v46);

          sub_21D106F78(v13, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v41 = v56;
          v43 = v57;
        }

        MEMORY[0x223D42AA0](v41, v43);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v58;
        v45 = v21;
      }

      goto LABEL_23;
    }

    v39 = *v27;
    v58 = 0;
    v59 = 0xE000000000000000;
    MEMORY[0x223D42AA0](0x286E6F6974636573, 0xE800000000000000);
    LOBYTE(v56) = v39;
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return v58;
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_21D9589BC(v27, v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_21DBFBEEC();

      v58 = 0xD000000000000012;
      v59 = 0x800000021DC71560;
      v29 = [*v18 description];
      v30 = sub_21DBFA16C();
      v32 = v31;

      v56 = v30;
      v57 = v32;
      v33 = v52;
      sub_21D959298(v18 + *(v53 + 20), v52);
      if ((*(v54 + 48))(v33, 1, v55) == 1)
      {
        sub_21D0CF7E0(v33, &unk_27CE5CD70, &unk_21DC09230);
      }

      else
      {
        v47 = v51;
        sub_21D9589BC(v33, v51, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v48 = TTRRemindersListViewModel.SectionID.description.getter();
        MEMORY[0x223D42AA0](v48);

        sub_21D106F78(v47, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v30 = v56;
        v32 = v57;
      }

      MEMORY[0x223D42AA0](v30, v32);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v38 = v58;
      v45 = v18;
LABEL_23:
      sub_21D106F78(v45, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      return v38;
    }

    return 0x6B6369507473696CLL;
  }
}

uint64_t TTRRemindersListViewModel.Item.init(createRemindersViewModelItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10555C(a1, v6, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D9589BC(v6, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }

    else
    {
      if (*v6 != 1)
      {
        goto LABEL_6;
      }

      if (qword_27CE56E88 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = __swift_project_value_buffer(v14, qword_27CE8EC18);
      sub_21D10555C(v15, v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D6EEF24(v22);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v17 = &v10[v16[5]];
      v18 = v22[5];
      *(v17 + 4) = v22[4];
      *(v17 + 5) = v18;
      *(v17 + 6) = v23[0];
      *(v17 + 106) = *(v23 + 10);
      v19 = v22[1];
      *v17 = v22[0];
      *(v17 + 1) = v19;
      v20 = v22[3];
      *(v17 + 2) = v22[2];
      *(v17 + 3) = v20;
      v10[v16[6]] = 0;
      v10[v16[7]] = 0;
      v10[v16[8]] = 0;
      v10[v16[9]] = 0;
      v10[v16[10]] = 0;
      *&v10[v16[11]] = 0;
    }

    swift_storeEnumTagMultiPayload();
    sub_21D9589BC(v10, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    v13 = 0;
    return (*(v8 + 56))(a2, v13, 1, v7);
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_6:
    v12 = a1;
    goto LABEL_7;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v12 = v6;
LABEL_7:
  sub_21D106F78(v12, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v13 = 1;
  return (*(v8 + 56))(a2, v13, 1, v7);
}

uint64_t sub_21D9589BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s15RemindersUICore011TTRSECreateA9ViewModelO4ItemO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (&v32 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v32 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v32 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE640E0, &unk_21DC32880);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v32 - v23;
  v26 = *(v25 + 56);
  sub_21D10555C(v34, &v32 - v23, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  sub_21D10555C(v35, &v24[v26], type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21D10555C(v24, v12, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v28 = v33;
          sub_21D9589BC(&v24[v26], v33, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v29 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v12, v28);
          sub_21D106F78(v28, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v30 = v12;
LABEL_17:
          sub_21D106F78(v30, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          goto LABEL_18;
        }

LABEL_25:
        sub_21D106F78(v12, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        goto LABEL_26;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_21D106F78(v24, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      return 1;
    }

    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_22;
    }

LABEL_26:
    sub_21D0CF7E0(v24, &qword_27CE640E0, &unk_21DC32880);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D10555C(v24, v18, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D9589BC(&v24[v26], v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v29 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v18, v9);
        sub_21D106F78(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v30 = v18;
        goto LABEL_17;
      }

      v12 = v18;
    }

    else
    {
      sub_21D10555C(v24, v15, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_21D9589BC(&v24[v26], v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v29 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v15, v6);
        sub_21D106F78(v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v30 = v15;
        goto LABEL_17;
      }

      v12 = v15;
    }

    goto LABEL_25;
  }

  sub_21D10555C(v24, v21, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v29 = *v21 == v24[v26];
LABEL_18:
  sub_21D106F78(v24, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  return v29;
}

BOOL _s15RemindersUICore011TTRSECreateA9ViewModelO6ItemIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58390, &qword_21DC09240);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_21D10555C(a1, &v21 - v14, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  sub_21D10555C(a2, &v15[v17], type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D10555C(v15, v9, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D106F78(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        goto LABEL_17;
      }

      sub_21D9589BC(&v15[v17], v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v19 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v9, v6);
      sub_21D106F78(v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106F78(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }

    else
    {
      sub_21D10555C(v15, v12, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_17;
      }

      v19 = *v12 == v15[v17];
    }

    sub_21D106F78(v15, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    return v19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_17:
    sub_21D0CF7E0(v15, &qword_27CE58390, &qword_21DC09240);
    return 0;
  }

LABEL_12:
  sub_21D106F78(v15, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  return 1;
}

uint64_t sub_21D959298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D95930C()
{
  result = qword_27CE64080;
  if (!qword_27CE64080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSECreateRemindersViewModel.SectionID, &type metadata for TTRSECreateRemindersViewModel.SectionID, v0, v1);
    atomic_store(result, &qword_27CE64080);
  }

  return result;
}

uint64_t sub_21D9593C8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRSECreateRemindersViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v7;
    if (v11(&a2[v8], 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
LABEL_26:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_17:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 16))(&a1[v8], &a2[v8], v18);
        swift_storeEnumTagMultiPayload();
LABEL_25:
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_17;
        }

LABEL_24:
        memcpy(&a1[v8], &a2[v8], *(v10 + 64));
        goto LABEL_25;
      }
    }

    v19 = *&a2[v8];
    *&a1[v8] = v19;
    v20 = v19;
    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  v15 = *(v6 + 64);

  return memcpy(a1, a2, v15);
}

void destroy for TTRSECreateRemindersViewModel.ItemID(id *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return;
  }

  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v4 - 8) + 48))(a1 + v3, 1, v4))
  {
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_12:
      v6 = sub_21DBF563C();
      v7 = *(*(v6 - 8) + 8);

      v7(a1 + v3, v6);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v8 = *(a1 + v3);
}

void **initializeWithCopy for TTRSECreateRemindersViewModel.ItemID(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v6;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
LABEL_24:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_15:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 16))(a1 + v7, a2 + v7, v16);
        swift_storeEnumTagMultiPayload();
LABEL_23:
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_15;
        }

LABEL_22:
        memcpy(a1 + v7, a2 + v7, *(v9 + 64));
        goto LABEL_23;
      }
    }

    v17 = *(a2 + v7);
    *(a1 + v7) = v17;
    v18 = v17;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void **assignWithCopy for TTRSECreateRemindersViewModel.ItemID(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v6;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
LABEL_25:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_16:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 16))(a1 + v7, a2 + v7, v16);
        swift_storeEnumTagMultiPayload();
LABEL_24:
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
        goto LABEL_25;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_16;
        }

LABEL_23:
        memcpy(a1 + v7, a2 + v7, *(v9 + 64));
        goto LABEL_24;
      }
    }

    v17 = *(a2 + v7);
    *(a1 + v7) = v17;
    v18 = v17;
    swift_storeEnumTagMultiPayload();
    goto LABEL_24;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *initializeWithTake for TTRSECreateRemindersViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
LABEL_20:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_11:
      v13 = sub_21DBF563C();
      (*(*(v13 - 8) + 32))(&a1[v6], &a2[v6], v13);
      swift_storeEnumTagMultiPayload();
LABEL_19:
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_20;
    }

    memcpy(&a1[v6], &a2[v6], *(v8 + 64));
    goto LABEL_19;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

char *assignWithTake for TTRSECreateRemindersViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
LABEL_21:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_12:
      v13 = sub_21DBF563C();
      (*(*(v13 - 8) + 32))(&a1[v6], &a2[v6], v13);
      swift_storeEnumTagMultiPayload();
LABEL_20:
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_21;
    }

    memcpy(&a1[v6], &a2[v6], *(v8 + 64));
    goto LABEL_20;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_21D95A850(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRSECreateRemindersViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v18 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v19 = *(v11 + 48);
      v20 = v18;
      if (v19(&a2[v9], 1, v10))
      {
LABEL_11:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v9], &a2[v9], *(*(v21 - 8) + 64));
LABEL_65:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 4)
      {
        if (v25 <= 7)
        {
          if (v25 == 5 || v25 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v25 != 8 && v25 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v25 > 2)
      {
        goto LABEL_50;
      }

      if (v25 == 1)
      {
        goto LABEL_49;
      }

      if (v25 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 2:
      v15 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v16 = *(v11 + 48);
      v17 = v15;
      if (v16(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v24 > 2)
      {
        goto LABEL_50;
      }

      if (v24 == 1)
      {
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 1:
      v8 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_63;
        }

LABEL_49:
        v27 = *&a2[v9];
        *&a1[v9] = v27;
        v28 = v27;
        swift_storeEnumTagMultiPayload();
LABEL_64:
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
        goto LABEL_65;
      }

      if (v26 <= 2)
      {
        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_50;
          }

LABEL_63:
          memcpy(&a1[v9], &a2[v9], *(v11 + 64));
          goto LABEL_64;
        }

        goto LABEL_49;
      }

LABEL_50:
      v29 = sub_21DBF563C();
      (*(*(v29 - 8) + 16))(&a1[v9], &a2[v9], v29);
      swift_storeEnumTagMultiPayload();
      goto LABEL_64;
  }

  v22 = *(v6 + 64);

  return memcpy(a1, a2, v22);
}

void destroy for TTRSECreateRemindersViewModel.Item(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 1)
  {
    return;
  }

  v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
  {
    return;
  }

  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 4)
  {
    if (v6 <= 7)
    {
      if (v6 != 5 && v6 != 6)
      {
        return;
      }

      goto LABEL_14;
    }

    if (v6 != 8 && v6 != 9)
    {
      return;
    }
  }

  else
  {
    if (v6 > 2)
    {
LABEL_14:
      v7 = sub_21DBF563C();
      v8 = *(*(v7 - 8) + 8);

      v8(a1 + v4, v7);
      return;
    }

    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  v9 = *(a1 + v4);
}

void **initializeWithCopy for TTRSECreateRemindersViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_9:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_63:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v23 > 2)
      {
        goto LABEL_48;
      }

      if (v23 == 1)
      {
        goto LABEL_47;
      }

      if (v23 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 2:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v22 > 2)
      {
        goto LABEL_48;
      }

      if (v22 == 1)
      {
        goto LABEL_47;
      }

      if (v22 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 1:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_61;
        }

LABEL_47:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_62:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_63;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_48;
          }

LABEL_61:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_62;
        }

        goto LABEL_47;
      }

LABEL_48:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_62;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

void **assignWithCopy for TTRSECreateRemindersViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_10:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_64:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v23 > 2)
      {
        goto LABEL_49;
      }

      if (v23 == 1)
      {
        goto LABEL_48;
      }

      if (v23 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 2:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v22 > 2)
      {
        goto LABEL_49;
      }

      if (v22 == 1)
      {
        goto LABEL_48;
      }

      if (v22 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 1:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_62;
        }

LABEL_48:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_63:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_64;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_49;
          }

LABEL_62:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_63;
        }

        goto LABEL_48;
      }

LABEL_49:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

char *initializeWithTake for TTRSECreateRemindersViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_48:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 3)
      {
        if (v14 == 2 || v14 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v14 == 4 || v14 == 5 || v14 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 3)
      {
        if (v13 == 2 || v13 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v13 == 4 || v13 == 5 || v13 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_27:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_47:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_48;
      }

LABEL_46:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_47;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *assignWithTake for TTRSECreateRemindersViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_10:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_49:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 3)
      {
        if (v14 == 2 || v14 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v14 == 4 || v14 == 5 || v14 == 6)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 3)
      {
        if (v13 == 2 || v13 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v13 == 4 || v13 == 5 || v13 == 6)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_28:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_48:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_49;
      }

LABEL_47:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_48;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D95DB90(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRSECreateRemindersViewModel.Item.CasesForItemCells(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 > 3)
    {
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6:
            v39 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(a2, 1, v39))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v41 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v53 = *(v39 + 20);
              v54 = sub_21DBF6C1C();
              v112 = *(*(v54 - 8) + 16);
              sub_21DBF8E0C();
              v112(&a1[v53], a2 + v53, v54);
              (*(v40 + 56))(a1, 0, 1, v39);
            }

            v55 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v56 = &a1[v55];
            v57 = (a2 + v55);
            v58 = v57[1];
            if (v58)
            {
              *v56 = *v57;
              *(v56 + 1) = v58;
              v59 = v57[2];
              *(v56 + 2) = v59;
              sub_21DBF8E0C();
              v60 = v59;
            }

            else
            {
              *v56 = *v57;
              *(v56 + 2) = v57[2];
            }

            goto LABEL_154;
          case 7:
            v45 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v46 = *(v45 - 8);
            if ((*(v46 + 48))(a2, 1, v45))
            {
              v47 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v47 - 8) + 64));
            }

            else
            {
              v62 = sub_21DBF563C();
              (*(*(v62 - 8) + 16))(a1, a2, v62);
              a1[*(v45 + 20)] = *(a2 + *(v45 + 20));
              (*(v46 + 56))(a1, 0, 1, v45);
            }

            v63 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v63 + 20)] = *(a2 + *(v63 + 20));
            goto LABEL_154;
          case 8:
            *a1 = *a2;
            v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v19 = sub_21DBF8D7C();
            (*(*(v19 - 8) + 16))(&a1[v18], a2 + v18, v19);
LABEL_154:
            swift_storeEnumTagMultiPayload();
            goto LABEL_155;
        }

LABEL_51:
        memcpy(a1, a2, *(*(v16 - 8) + 64));
        goto LABEL_155;
      }

      if (v17 != 4)
      {
        *a1 = *a2;
        a1[8] = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v31 = a2[2];
        *(a1 + 2) = v31;
        v32 = v31;
        goto LABEL_154;
      }

      v42 = *a2;
      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      v43 = *(v28 + 48);
      v44 = v42;
      if (v43(a2 + v26, 1, v27))
      {
LABEL_44:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v26], a2 + v26, *(*(v38 - 8) + 64));
        goto LABEL_154;
      }

      v61 = swift_getEnumCaseMultiPayload();
      if (v61 > 4)
      {
        if (v61 <= 7)
        {
          if (v61 == 5 || v61 == 6)
          {
            goto LABEL_139;
          }

          goto LABEL_152;
        }

        if (v61 != 8 && v61 != 9)
        {
          goto LABEL_152;
        }

LABEL_138:
        v101 = *(a2 + v26);
        *&a1[v26] = v101;
        v102 = v101;
        swift_storeEnumTagMultiPayload();
LABEL_153:
        (*(v28 + 56))(&a1[v26], 0, 1, v27);
        goto LABEL_154;
      }

      if (v61 <= 2)
      {
        if (v61 != 1)
        {
          if (v61 == 2)
          {
            goto LABEL_139;
          }

LABEL_152:
          memcpy(&a1[v26], a2 + v26, *(v28 + 64));
          goto LABEL_153;
        }

        goto LABEL_138;
      }

LABEL_139:
      v103 = sub_21DBF563C();
      (*(*(v103 - 8) + 16))(&a1[v26], a2 + v26, v103);
      swift_storeEnumTagMultiPayload();
      goto LABEL_153;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v35 = *a2;
        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v37 = v35;
        if (v36(a2 + v26, 1, v27))
        {
          goto LABEL_44;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_139;
            }

            goto LABEL_152;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_152;
          }

          goto LABEL_138;
        }

        if (v52 > 2)
        {
          goto LABEL_139;
        }

        if (v52 == 1)
        {
          goto LABEL_138;
        }

        if (v52 != 2)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v25 = *a2;
        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);
        v30 = v25;
        if (v29(a2 + v26, 1, v27))
        {
          goto LABEL_44;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_139;
            }

            goto LABEL_152;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_152;
          }

          goto LABEL_138;
        }

        if (v51 > 2)
        {
          goto LABEL_139;
        }

        if (v51 == 1)
        {
          goto LABEL_138;
        }

        if (v51 != 2)
        {
          goto LABEL_152;
        }
      }

      goto LABEL_139;
    }

    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_51;
      }

      v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v23 = swift_getEnumCaseMultiPayload();
      if (v23 <= 4)
      {
        if (v23 > 2)
        {
LABEL_90:
          v64 = sub_21DBF563C();
          (*(*(v64 - 8) + 16))(a1, a2, v64);
          swift_storeEnumTagMultiPayload();
          goto LABEL_117;
        }

        if (v23 != 1)
        {
          if (v23 == 2)
          {
            goto LABEL_90;
          }

          goto LABEL_116;
        }

LABEL_93:
        v65 = *a2;
        *a1 = *a2;
        v66 = v65;
        swift_storeEnumTagMultiPayload();
        goto LABEL_117;
      }

      if (v23 > 7)
      {
        if (v23 == 8 || v23 == 9)
        {
          goto LABEL_93;
        }
      }

      else if (v23 == 5 || v23 == 6)
      {
        goto LABEL_90;
      }

LABEL_116:
      memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_117:
      v70 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v71 = v70[5];
      v72 = &a1[v71];
      v73 = a2 + v71;
      v74 = *(a2 + v71 + 8);
      if (v74)
      {
        *v72 = *v73;
        *(v72 + 1) = v74;
        v75 = *(v73 + 2);
        v76 = *(v73 + 3);
        v77 = *(v73 + 4);
        v78 = *(v73 + 5);
        v104 = *(v73 + 6);
        v113 = *(v73 + 7);
        v108 = v73[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v75, v76, v77, v78, v104, v113, v108);
        *(v72 + 2) = v75;
        *(v72 + 3) = v76;
        *(v72 + 4) = v77;
        *(v72 + 5) = v78;
        *(v72 + 6) = v104;
        *(v72 + 7) = v113;
        v72[64] = v108;
        *(v72 + 65) = *(v73 + 65);
        v79 = v73[120];
        if (v79 == 255)
        {
          *(v72 + 72) = *(v73 + 72);
          *(v72 + 88) = *(v73 + 88);
          *(v72 + 104) = *(v73 + 104);
          v72[120] = v73[120];
        }

        else
        {
          v109 = *(v73 + 10);
          v114 = *(v73 + 9);
          v80 = *(v73 + 12);
          v105 = *(v73 + 11);
          v81 = *(v73 + 13);
          v82 = *(v73 + 14);
          v83 = v79 & 1;
          sub_21D0FB960(v114, v109, v105, v80, v81, v82, v79 & 1);
          *(v72 + 9) = v114;
          *(v72 + 10) = v109;
          *(v72 + 11) = v105;
          *(v72 + 12) = v80;
          *(v72 + 13) = v81;
          *(v72 + 14) = v82;
          v72[120] = v83;
        }

        v72[121] = v73[121];
        goto LABEL_123;
      }

LABEL_120:
      v84 = *(v73 + 5);
      *(v72 + 4) = *(v73 + 4);
      *(v72 + 5) = v84;
      *(v72 + 6) = *(v73 + 6);
      *(v72 + 106) = *(v73 + 106);
      v85 = *(v73 + 1);
      *v72 = *v73;
      *(v72 + 1) = v85;
      v86 = *(v73 + 3);
      *(v72 + 2) = *(v73 + 2);
      *(v72 + 3) = v86;
LABEL_123:
      a1[v70[6]] = *(a2 + v70[6]);
      a1[v70[7]] = *(a2 + v70[7]);
      a1[v70[8]] = *(a2 + v70[8]);
      a1[v70[9]] = *(a2 + v70[9]);
      a1[v70[10]] = *(a2 + v70[10]);
      v87 = v70[11];
      v88 = *(a2 + v87);
      *&a1[v87] = v88;
      v89 = v88;
      goto LABEL_154;
    }

    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v34 = swift_getEnumCaseMultiPayload();
    if (v34 <= 4)
    {
      if (v34 > 2)
      {
LABEL_94:
        v67 = sub_21DBF563C();
        (*(*(v67 - 8) + 16))(a1, a2, v67);
        swift_storeEnumTagMultiPayload();
        goto LABEL_125;
      }

      if (v34 != 1)
      {
        if (v34 == 2)
        {
          goto LABEL_94;
        }

        goto LABEL_124;
      }

LABEL_97:
      v68 = *a2;
      *a1 = *a2;
      v69 = v68;
      swift_storeEnumTagMultiPayload();
      goto LABEL_125;
    }

    if (v34 > 7)
    {
      if (v34 == 8 || v34 == 9)
      {
        goto LABEL_97;
      }
    }

    else if (v34 == 5 || v34 == 6)
    {
      goto LABEL_94;
    }

LABEL_124:
    memcpy(a1, a2, *(*(v33 - 8) + 64));
LABEL_125:
    v70 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v90 = v70[5];
    v72 = &a1[v90];
    v73 = a2 + v90;
    v91 = *(a2 + v90 + 8);
    if (v91)
    {
      *v72 = *v73;
      *(v72 + 1) = v91;
      v92 = *(v73 + 2);
      v93 = *(v73 + 3);
      v94 = *(v73 + 4);
      v95 = *(v73 + 5);
      v106 = *(v73 + 6);
      v115 = *(v73 + 7);
      v110 = v73[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v92, v93, v94, v95, v106, v115, v110);
      *(v72 + 2) = v92;
      *(v72 + 3) = v93;
      *(v72 + 4) = v94;
      *(v72 + 5) = v95;
      *(v72 + 6) = v106;
      *(v72 + 7) = v115;
      v72[64] = v110;
      *(v72 + 65) = *(v73 + 65);
      v96 = v73[120];
      if (v96 == 255)
      {
        *(v72 + 72) = *(v73 + 72);
        *(v72 + 88) = *(v73 + 88);
        *(v72 + 104) = *(v73 + 104);
        v72[120] = v73[120];
      }

      else
      {
        v111 = *(v73 + 10);
        v116 = *(v73 + 9);
        v97 = *(v73 + 12);
        v107 = *(v73 + 11);
        v98 = *(v73 + 13);
        v99 = *(v73 + 14);
        v100 = v96 & 1;
        sub_21D0FB960(v116, v111, v107, v97, v98, v99, v96 & 1);
        *(v72 + 9) = v116;
        *(v72 + 10) = v111;
        *(v72 + 11) = v107;
        *(v72 + 12) = v97;
        *(v72 + 13) = v98;
        *(v72 + 14) = v99;
        v72[120] = v100;
      }

      v72[121] = v73[121];
      goto LABEL_123;
    }

    goto LABEL_120;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v8;
    if (v12(a2 + v9, 1, v10))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v9], a2 + v9, *(*(v14 - 8) + 64));
LABEL_155:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v24 = swift_getEnumCaseMultiPayload();
    if (v24 > 4)
    {
      if (v24 <= 7)
      {
        if (v24 == 5 || v24 == 6)
        {
          goto LABEL_52;
        }

        goto LABEL_67;
      }

      if (v24 != 8 && v24 != 9)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v24 > 2)
      {
LABEL_52:
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(&a1[v9], a2 + v9, v48);
        swift_storeEnumTagMultiPayload();
LABEL_68:
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
        goto LABEL_155;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_52;
        }

LABEL_67:
        memcpy(&a1[v9], a2 + v9, *(v11 + 64));
        goto LABEL_68;
      }
    }

    v49 = *(a2 + v9);
    *&a1[v9] = v49;
    v50 = v49;
    swift_storeEnumTagMultiPayload();
    goto LABEL_68;
  }

  v20 = *(v6 + 64);

  return memcpy(a1, a2, v20);
}

void destroy for TTRSECreateRemindersViewModel.Item.CasesForItemCells(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return;
    }

    goto LABEL_3;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      goto LABEL_3;
    }

    if (v6 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          goto LABEL_51;
        }

        goto LABEL_47;
      }

      if (v12 != 8 && v12 != 9)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v12 > 2)
      {
        goto LABEL_47;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
LABEL_51:
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v22 = a1 + *(v21 + 20);
          if (*(v22 + 8))
          {

            sub_21D179EF0(*(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64));
            v23 = *(v22 + 120);
            if (v23 != 255)
            {
              sub_21D1078C0(*(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), v23 & 1);
            }
          }

          v13 = *(a1 + *(v21 + 44));
          goto LABEL_55;
        }

LABEL_47:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(a1, v20);
        goto LABEL_51;
      }
    }

    goto LABEL_51;
  }

  if (v6 <= 5)
  {
    if (v6 != 4)
    {
      v13 = *(a1 + 16);
LABEL_55:

      return;
    }

LABEL_3:

    v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
    {
      return;
    }

    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          return;
        }

        goto LABEL_30;
      }

      if (v11 != 8 && v11 != 9)
      {
        return;
      }
    }

    else
    {
      if (v11 > 2)
      {
LABEL_30:
        v8 = sub_21DBF563C();
        v9 = *(*(v8 - 8) + 8);
        v10 = a1 + v4;
LABEL_31:

        v9(v10, v8);
        return;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    v13 = *(a1 + v4);
    goto LABEL_55;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v18 - 8) + 48))(a1, 1, v18))
      {
        return;
      }

      v19 = sub_21DBF563C();
      v9 = *(*(v19 - 8) + 8);
      v8 = v19;
      v10 = a1;
    }

    else
    {
      if (v6 != 8)
      {
        return;
      }

      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      v9 = *(*(v8 - 8) + 8);
      v10 = a1 + v7;
    }

    goto LABEL_31;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v14 - 8) + 48))(a1, 1, v14))
  {

    v15 = *(v14 + 20);
    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 8))(a1 + v15, v16);
  }

  v17 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v17 + 8))
  {

    v13 = *(v17 + 16);
    goto LABEL_55;
  }
}

void **initializeWithCopy for TTRSECreateRemindersViewModel.Item.CasesForItemCells(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v37 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v38 = *(v37 - 8);
            if ((*(v38 + 48))(a2, 1, v37))
            {
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v39 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v51 = *(v37 + 20);
              v52 = sub_21DBF6C1C();
              v110 = *(*(v52 - 8) + 16);
              sub_21DBF8E0C();
              v110(a1 + v51, a2 + v51, v52);
              (*(v38 + 56))(a1, 0, 1, v37);
            }

            v53 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v54 = (a1 + v53);
            v55 = (a2 + v53);
            v56 = v55[1];
            if (v56)
            {
              *v54 = *v55;
              v54[1] = v56;
              v57 = v55[2];
              v54[2] = v57;
              sub_21DBF8E0C();
              v58 = v57;
            }

            else
            {
              *v54 = *v55;
              v54[2] = v55[2];
            }

            goto LABEL_152;
          case 7:
            v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v44 = *(v43 - 8);
            if ((*(v44 + 48))(a2, 1, v43))
            {
              v45 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v45 - 8) + 64));
            }

            else
            {
              v60 = sub_21DBF563C();
              (*(*(v60 - 8) + 16))(a1, a2, v60);
              *(a1 + *(v43 + 20)) = *(a2 + *(v43 + 20));
              (*(v44 + 56))(a1, 0, 1, v43);
            }

            v61 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v61 + 20)) = *(a2 + *(v61 + 20));
            goto LABEL_152;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_152:
            swift_storeEnumTagMultiPayload();
            goto LABEL_153;
        }

LABEL_49:
        memcpy(a1, a2, *(*(v14 - 8) + 64));
        goto LABEL_153;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v29 = a2[2];
        a1[2] = v29;
        v30 = v29;
        goto LABEL_152;
      }

      v40 = *a2;
      *a1 = *a2;
      v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = *(v25 - 8);
      v41 = *(v26 + 48);
      v42 = v40;
      if (v41(a2 + v24, 1, v25))
      {
LABEL_42:
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v24, a2 + v24, *(*(v36 - 8) + 64));
        goto LABEL_152;
      }

      v59 = swift_getEnumCaseMultiPayload();
      if (v59 > 4)
      {
        if (v59 <= 7)
        {
          if (v59 == 5 || v59 == 6)
          {
            goto LABEL_137;
          }

          goto LABEL_150;
        }

        if (v59 != 8 && v59 != 9)
        {
          goto LABEL_150;
        }

LABEL_136:
        v103 = *(a2 + v24);
        *(a1 + v24) = v103;
        v104 = v103;
        swift_storeEnumTagMultiPayload();
LABEL_151:
        (*(v26 + 56))(a1 + v24, 0, 1, v25);
        goto LABEL_152;
      }

      if (v59 <= 2)
      {
        if (v59 != 1)
        {
          if (v59 == 2)
          {
            goto LABEL_137;
          }

LABEL_150:
          memcpy(a1 + v24, a2 + v24, *(v26 + 64));
          goto LABEL_151;
        }

        goto LABEL_136;
      }

LABEL_137:
      v105 = sub_21DBF563C();
      (*(*(v105 - 8) + 16))(a1 + v24, a2 + v24, v105);
      swift_storeEnumTagMultiPayload();
      goto LABEL_151;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v34 = *(v26 + 48);
        v35 = v33;
        if (v34(a2 + v24, 1, v25))
        {
          goto LABEL_42;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 > 4)
        {
          if (v50 <= 7)
          {
            if (v50 == 5 || v50 == 6)
            {
              goto LABEL_137;
            }

            goto LABEL_150;
          }

          if (v50 != 8 && v50 != 9)
          {
            goto LABEL_150;
          }

          goto LABEL_136;
        }

        if (v50 > 2)
        {
          goto LABEL_137;
        }

        if (v50 == 1)
        {
          goto LABEL_136;
        }

        if (v50 != 2)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v23 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        v28 = v23;
        if (v27(a2 + v24, 1, v25))
        {
          goto LABEL_42;
        }

        v49 = swift_getEnumCaseMultiPayload();
        if (v49 > 4)
        {
          if (v49 <= 7)
          {
            if (v49 == 5 || v49 == 6)
            {
              goto LABEL_137;
            }

            goto LABEL_150;
          }

          if (v49 != 8 && v49 != 9)
          {
            goto LABEL_150;
          }

          goto LABEL_136;
        }

        if (v49 > 2)
        {
          goto LABEL_137;
        }

        if (v49 == 1)
        {
          goto LABEL_136;
        }

        if (v49 != 2)
        {
          goto LABEL_150;
        }
      }

      goto LABEL_137;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_49;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_88:
          v62 = sub_21DBF563C();
          (*(*(v62 - 8) + 16))(a1, a2, v62);
          swift_storeEnumTagMultiPayload();
          goto LABEL_115;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_88;
          }

          goto LABEL_114;
        }

LABEL_91:
        v63 = *a2;
        *a1 = *a2;
        v64 = v63;
        swift_storeEnumTagMultiPayload();
        goto LABEL_115;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_91;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_88;
      }

LABEL_114:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_115:
      v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v69 = v68[5];
      v70 = a1 + v69;
      v71 = a2 + v69;
      v72 = *(a2 + v69 + 8);
      if (v72)
      {
        *v70 = *v71;
        *(v70 + 1) = v72;
        v73 = *(v71 + 2);
        v74 = *(v71 + 3);
        v75 = *(v71 + 4);
        v76 = *(v71 + 5);
        v77 = *(v71 + 6);
        v106 = *(v71 + 7);
        v111 = v71[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v73, v74, v75, v76, v77, v106, v111);
        *(v70 + 2) = v73;
        *(v70 + 3) = v74;
        *(v70 + 4) = v75;
        *(v70 + 5) = v76;
        *(v70 + 6) = v77;
        *(v70 + 7) = v106;
        v70[64] = v111;
        *(v70 + 65) = *(v71 + 65);
        v78 = v71[120];
        if (v78 == 255)
        {
          *(v70 + 72) = *(v71 + 72);
          *(v70 + 88) = *(v71 + 88);
          *(v70 + 104) = *(v71 + 104);
          v70[120] = v71[120];
        }

        else
        {
          v79 = *(v71 + 9);
          v80 = *(v71 + 12);
          v107 = *(v71 + 11);
          v112 = *(v71 + 10);
          v81 = *(v71 + 13);
          v82 = *(v71 + 14);
          v83 = v78 & 1;
          sub_21D0FB960(v79, v112, v107, v80, v81, v82, v78 & 1);
          *(v70 + 9) = v79;
          *(v70 + 10) = v112;
          *(v70 + 11) = v107;
          *(v70 + 12) = v80;
          *(v70 + 13) = v81;
          *(v70 + 14) = v82;
          v70[120] = v83;
        }

        v70[121] = v71[121];
        goto LABEL_121;
      }

LABEL_118:
      v84 = *(v71 + 5);
      *(v70 + 4) = *(v71 + 4);
      *(v70 + 5) = v84;
      *(v70 + 6) = *(v71 + 6);
      *(v70 + 106) = *(v71 + 106);
      v85 = *(v71 + 1);
      *v70 = *v71;
      *(v70 + 1) = v85;
      v86 = *(v71 + 3);
      *(v70 + 2) = *(v71 + 2);
      *(v70 + 3) = v86;
LABEL_121:
      *(a1 + v68[6]) = *(a2 + v68[6]);
      *(a1 + v68[7]) = *(a2 + v68[7]);
      *(a1 + v68[8]) = *(a2 + v68[8]);
      *(a1 + v68[9]) = *(a2 + v68[9]);
      *(a1 + v68[10]) = *(a2 + v68[10]);
      v87 = v68[11];
      v88 = *(a2 + v87);
      *(a1 + v87) = v88;
      v89 = v88;
      goto LABEL_152;
    }

    v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 4)
    {
      if (v32 > 2)
      {
LABEL_92:
        v65 = sub_21DBF563C();
        (*(*(v65 - 8) + 16))(a1, a2, v65);
        swift_storeEnumTagMultiPayload();
        goto LABEL_123;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          goto LABEL_92;
        }

        goto LABEL_122;
      }

LABEL_95:
      v66 = *a2;
      *a1 = *a2;
      v67 = v66;
      swift_storeEnumTagMultiPayload();
      goto LABEL_123;
    }

    if (v32 > 7)
    {
      if (v32 == 8 || v32 == 9)
      {
        goto LABEL_95;
      }
    }

    else if (v32 == 5 || v32 == 6)
    {
      goto LABEL_92;
    }

LABEL_122:
    memcpy(a1, a2, *(*(v31 - 8) + 64));
LABEL_123:
    v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v90 = v68[5];
    v70 = a1 + v90;
    v71 = a2 + v90;
    v91 = *(a2 + v90 + 8);
    if (v91)
    {
      *v70 = *v71;
      *(v70 + 1) = v91;
      v92 = *(v71 + 2);
      v93 = *(v71 + 3);
      v94 = *(v71 + 4);
      v95 = *(v71 + 5);
      v96 = *(v71 + 6);
      v108 = *(v71 + 7);
      v113 = v71[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v92, v93, v94, v95, v96, v108, v113);
      *(v70 + 2) = v92;
      *(v70 + 3) = v93;
      *(v70 + 4) = v94;
      *(v70 + 5) = v95;
      *(v70 + 6) = v96;
      *(v70 + 7) = v108;
      v70[64] = v113;
      *(v70 + 65) = *(v71 + 65);
      v97 = v71[120];
      if (v97 == 255)
      {
        *(v70 + 72) = *(v71 + 72);
        *(v70 + 88) = *(v71 + 88);
        *(v70 + 104) = *(v71 + 104);
        v70[120] = v71[120];
      }

      else
      {
        v98 = *(v71 + 9);
        v99 = *(v71 + 12);
        v109 = *(v71 + 11);
        v114 = *(v71 + 10);
        v100 = *(v71 + 13);
        v101 = *(v71 + 14);
        v102 = v97 & 1;
        sub_21D0FB960(v98, v114, v109, v99, v100, v101, v97 & 1);
        *(v70 + 9) = v98;
        *(v70 + 10) = v114;
        *(v70 + 11) = v109;
        *(v70 + 12) = v99;
        *(v70 + 13) = v100;
        *(v70 + 14) = v101;
        v70[120] = v102;
      }

      v70[121] = v71[121];
      goto LABEL_121;
    }

    goto LABEL_118;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v7;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
LABEL_153:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_50;
        }

        goto LABEL_65;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_50:
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1 + v8, a2 + v8, v46);
        swift_storeEnumTagMultiPayload();
LABEL_66:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_153;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_50;
        }

LABEL_65:
        memcpy(a1 + v8, a2 + v8, *(v10 + 64));
        goto LABEL_66;
      }
    }

    v47 = *(a2 + v8);
    *(a1 + v8) = v47;
    v48 = v47;
    swift_storeEnumTagMultiPayload();
    goto LABEL_66;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

void **assignWithCopy for TTRSECreateRemindersViewModel.Item.CasesForItemCells(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v37 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v38 = *(v37 - 8);
            if ((*(v38 + 48))(a2, 1, v37))
            {
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v39 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v51 = *(v37 + 20);
              v52 = sub_21DBF6C1C();
              v117 = *(*(v52 - 8) + 16);
              sub_21DBF8E0C();
              v117(a1 + v51, a2 + v51, v52);
              (*(v38 + 56))(a1, 0, 1, v37);
            }

            v53 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v54 = (a1 + v53);
            v55 = (a2 + v53);
            if (v55[1])
            {
              *v54 = *v55;
              v54[1] = v55[1];
              v56 = v55[2];
              v54[2] = v56;
              sub_21DBF8E0C();
              v57 = v56;
            }

            else
            {
              v58 = *v55;
              v54[2] = v55[2];
              *v54 = v58;
            }

            goto LABEL_153;
          case 7:
            v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v44 = *(v43 - 8);
            if ((*(v44 + 48))(a2, 1, v43))
            {
              v45 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v45 - 8) + 64));
            }

            else
            {
              v60 = sub_21DBF563C();
              (*(*(v60 - 8) + 16))(a1, a2, v60);
              *(a1 + *(v43 + 20)) = *(a2 + *(v43 + 20));
              (*(v44 + 56))(a1, 0, 1, v43);
            }

            v61 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v61 + 20)) = *(a2 + *(v61 + 20));
            goto LABEL_153;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_153:
            swift_storeEnumTagMultiPayload();
            goto LABEL_154;
        }

LABEL_50:
        memcpy(a1, a2, *(*(v14 - 8) + 64));
        goto LABEL_154;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v29 = a2[2];
        a1[2] = v29;
        v30 = v29;
        goto LABEL_153;
      }

      v40 = *a2;
      *a1 = *a2;
      v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = *(v25 - 8);
      v41 = *(v26 + 48);
      v42 = v40;
      if (v41(a2 + v24, 1, v25))
      {
LABEL_43:
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v24, a2 + v24, *(*(v36 - 8) + 64));
        goto LABEL_153;
      }

      v59 = swift_getEnumCaseMultiPayload();
      if (v59 > 4)
      {
        if (v59 <= 7)
        {
          if (v59 == 5 || v59 == 6)
          {
            goto LABEL_138;
          }

          goto LABEL_151;
        }

        if (v59 != 8 && v59 != 9)
        {
          goto LABEL_151;
        }

LABEL_137:
        v106 = *(a2 + v24);
        *(a1 + v24) = v106;
        v107 = v106;
        swift_storeEnumTagMultiPayload();
LABEL_152:
        (*(v26 + 56))(a1 + v24, 0, 1, v25);
        goto LABEL_153;
      }

      if (v59 <= 2)
      {
        if (v59 != 1)
        {
          if (v59 == 2)
          {
            goto LABEL_138;
          }

LABEL_151:
          memcpy(a1 + v24, a2 + v24, *(v26 + 64));
          goto LABEL_152;
        }

        goto LABEL_137;
      }

LABEL_138:
      v108 = sub_21DBF563C();
      (*(*(v108 - 8) + 16))(a1 + v24, a2 + v24, v108);
      swift_storeEnumTagMultiPayload();
      goto LABEL_152;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v34 = *(v26 + 48);
        v35 = v33;
        if (v34(a2 + v24, 1, v25))
        {
          goto LABEL_43;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 > 4)
        {
          if (v50 <= 7)
          {
            if (v50 == 5 || v50 == 6)
            {
              goto LABEL_138;
            }

            goto LABEL_151;
          }

          if (v50 != 8 && v50 != 9)
          {
            goto LABEL_151;
          }

          goto LABEL_137;
        }

        if (v50 > 2)
        {
          goto LABEL_138;
        }

        if (v50 == 1)
        {
          goto LABEL_137;
        }

        if (v50 != 2)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v23 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        v28 = v23;
        if (v27(a2 + v24, 1, v25))
        {
          goto LABEL_43;
        }

        v49 = swift_getEnumCaseMultiPayload();
        if (v49 > 4)
        {
          if (v49 <= 7)
          {
            if (v49 == 5 || v49 == 6)
            {
              goto LABEL_138;
            }

            goto LABEL_151;
          }

          if (v49 != 8 && v49 != 9)
          {
            goto LABEL_151;
          }

          goto LABEL_137;
        }

        if (v49 > 2)
        {
          goto LABEL_138;
        }

        if (v49 == 1)
        {
          goto LABEL_137;
        }

        if (v49 != 2)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_138;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_50;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_89:
          v62 = sub_21DBF563C();
          (*(*(v62 - 8) + 16))(a1, a2, v62);
          swift_storeEnumTagMultiPayload();
          goto LABEL_116;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_115;
        }

LABEL_92:
        v63 = *a2;
        *a1 = *a2;
        v64 = v63;
        swift_storeEnumTagMultiPayload();
        goto LABEL_116;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_92;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_89;
      }

LABEL_115:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_116:
      v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v69 = v68[5];
      v70 = a1 + v69;
      v71 = a2 + v69;
      if (*(a2 + v69 + 8))
      {
        *v70 = *v71;
        *(v70 + 1) = *(v71 + 1);
        v72 = *(v71 + 2);
        v73 = *(v71 + 3);
        v74 = *(v71 + 4);
        v75 = *(v71 + 5);
        v109 = *(v71 + 6);
        v118 = *(v71 + 7);
        v113 = v71[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v72, v73, v74, v75, v109, v118, v113);
        *(v70 + 2) = v72;
        *(v70 + 3) = v73;
        *(v70 + 4) = v74;
        *(v70 + 5) = v75;
        *(v70 + 6) = v109;
        *(v70 + 7) = v118;
        v70[64] = v113;
        v70[65] = v71[65];
        v70[66] = v71[66];
        v70[67] = v71[67];
        v70[68] = v71[68];
        v76 = v71[120];
        if (v76 == 255)
        {
          v87 = *(v71 + 72);
          v88 = *(v71 + 88);
          v89 = *(v71 + 104);
          v70[120] = v71[120];
          *(v70 + 104) = v89;
          *(v70 + 88) = v88;
          *(v70 + 72) = v87;
        }

        else
        {
          v114 = *(v71 + 10);
          v119 = *(v71 + 9);
          v77 = *(v71 + 12);
          v110 = *(v71 + 11);
          v78 = *(v71 + 13);
          v79 = *(v71 + 14);
          v80 = v76 & 1;
          sub_21D0FB960(v119, v114, v110, v77, v78, v79, v76 & 1);
          *(v70 + 9) = v119;
          *(v70 + 10) = v114;
          *(v70 + 11) = v110;
          *(v70 + 12) = v77;
          *(v70 + 13) = v78;
          *(v70 + 14) = v79;
          v70[120] = v80;
        }

        v70[121] = v71[121];
        goto LABEL_122;
      }

LABEL_119:
      v81 = *v71;
      v82 = *(v71 + 1);
      v83 = *(v71 + 3);
      *(v70 + 2) = *(v71 + 2);
      *(v70 + 3) = v83;
      *v70 = v81;
      *(v70 + 1) = v82;
      v84 = *(v71 + 4);
      v85 = *(v71 + 5);
      v86 = *(v71 + 6);
      *(v70 + 106) = *(v71 + 106);
      *(v70 + 5) = v85;
      *(v70 + 6) = v86;
      *(v70 + 4) = v84;
LABEL_122:
      *(a1 + v68[6]) = *(a2 + v68[6]);
      *(a1 + v68[7]) = *(a2 + v68[7]);
      *(a1 + v68[8]) = *(a2 + v68[8]);
      *(a1 + v68[9]) = *(a2 + v68[9]);
      *(a1 + v68[10]) = *(a2 + v68[10]);
      v90 = v68[11];
      v91 = *(a2 + v90);
      *(a1 + v90) = v91;
      v92 = v91;
      goto LABEL_153;
    }

    v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 4)
    {
      if (v32 > 2)
      {
LABEL_93:
        v65 = sub_21DBF563C();
        (*(*(v65 - 8) + 16))(a1, a2, v65);
        swift_storeEnumTagMultiPayload();
        goto LABEL_124;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          goto LABEL_93;
        }

        goto LABEL_123;
      }

LABEL_96:
      v66 = *a2;
      *a1 = *a2;
      v67 = v66;
      swift_storeEnumTagMultiPayload();
      goto LABEL_124;
    }

    if (v32 > 7)
    {
      if (v32 == 8 || v32 == 9)
      {
        goto LABEL_96;
      }
    }

    else if (v32 == 5 || v32 == 6)
    {
      goto LABEL_93;
    }

LABEL_123:
    memcpy(a1, a2, *(*(v31 - 8) + 64));
LABEL_124:
    v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v93 = v68[5];
    v70 = a1 + v93;
    v71 = a2 + v93;
    if (*(a2 + v93 + 8))
    {
      *v70 = *v71;
      *(v70 + 1) = *(v71 + 1);
      v94 = *(v71 + 2);
      v95 = *(v71 + 3);
      v96 = *(v71 + 4);
      v97 = *(v71 + 5);
      v111 = *(v71 + 6);
      v120 = *(v71 + 7);
      v115 = v71[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v94, v95, v96, v97, v111, v120, v115);
      *(v70 + 2) = v94;
      *(v70 + 3) = v95;
      *(v70 + 4) = v96;
      *(v70 + 5) = v97;
      *(v70 + 6) = v111;
      *(v70 + 7) = v120;
      v70[64] = v115;
      v70[65] = v71[65];
      v70[66] = v71[66];
      v70[67] = v71[67];
      v70[68] = v71[68];
      v98 = v71[120];
      if (v98 == 255)
      {
        v103 = *(v71 + 72);
        v104 = *(v71 + 88);
        v105 = *(v71 + 104);
        v70[120] = v71[120];
        *(v70 + 104) = v105;
        *(v70 + 88) = v104;
        *(v70 + 72) = v103;
      }

      else
      {
        v116 = *(v71 + 10);
        v121 = *(v71 + 9);
        v99 = *(v71 + 12);
        v112 = *(v71 + 11);
        v100 = *(v71 + 13);
        v101 = *(v71 + 14);
        v102 = v98 & 1;
        sub_21D0FB960(v121, v116, v112, v99, v100, v101, v98 & 1);
        *(v70 + 9) = v121;
        *(v70 + 10) = v116;
        *(v70 + 11) = v112;
        *(v70 + 12) = v99;
        *(v70 + 13) = v100;
        *(v70 + 14) = v101;
        v70[120] = v102;
      }

      v70[121] = v71[121];
      goto LABEL_122;
    }

    goto LABEL_119;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v7;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
LABEL_154:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_51;
        }

        goto LABEL_66;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_51:
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1 + v8, a2 + v8, v46);
        swift_storeEnumTagMultiPayload();
LABEL_67:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_154;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_51;
        }

LABEL_66:
        memcpy(a1 + v8, a2 + v8, *(v10 + 64));
        goto LABEL_67;
      }
    }

    v47 = *(a2 + v8);
    *(a1 + v8) = v47;
    v48 = v47;
    swift_storeEnumTagMultiPayload();
    goto LABEL_67;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

void *initializeWithTake for TTRSECreateRemindersViewModel.Item.CasesForItemCells(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            *(a1 + *(v30 + 20)) = *(a2 + *(v30 + 20));
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
          goto LABEL_107;
        }

        if (v12 != 8)
        {
          goto LABEL_47;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v27 = sub_21DBF8D7C();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
LABEL_107:
        swift_storeEnumTagMultiPayload();
        goto LABEL_108;
      }

      if (v12 != 4)
      {
        if (v12 == 6)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(a2, 1, v18))
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v20 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v37 = *(v18 + 20);
            v38 = sub_21DBF6C1C();
            (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
            (*(v19 + 56))(a1, 0, 1, v18);
          }

          v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v40 = a1 + v39;
          v41 = a2 + v39;
          *v40 = *v41;
          *(v40 + 2) = *(v41 + 2);
          goto LABEL_107;
        }

        goto LABEL_47;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(a2 + v23, 1, v24))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (v12 <= 1)
      {
        if (!v12)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_13;
          }

          goto LABEL_84;
        }

        if (v12 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 3)
          {
            if (v14 == 2 || v14 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v14 == 4 || v14 == 5 || v14 == 6)
          {
LABEL_13:
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 32))(a1, a2, v15);
            swift_storeEnumTagMultiPayload();
LABEL_85:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = (a2 + v45);
            v48 = v47[3];
            v46[2] = v47[2];
            v46[3] = v48;
            v49 = v47[1];
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = v47[6];
            v46[5] = v47[5];
            v46[6] = v50;
            v46[4] = v47[4];
            *(a1 + v44[6]) = *(a2 + v44[6]);
            *(a1 + v44[7]) = *(a2 + v44[7]);
            *(a1 + v44[8]) = *(a2 + v44[8]);
            *(a1 + v44[9]) = *(a2 + v44[9]);
            *(a1 + v44[10]) = *(a2 + v44[10]);
            *(a1 + v44[11]) = *(a2 + v44[11]);
            goto LABEL_107;
          }

LABEL_84:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_85;
        }

LABEL_47:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
        goto LABEL_108;
      }

      if (v12 != 2)
      {
        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(a2 + v23, 1, v24))
        {
          goto LABEL_44;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
LABEL_77:
          v43 = sub_21DBF563C();
          (*(*(v43 - 8) + 32))(a1 + v23, a2 + v23, v43);
          swift_storeEnumTagMultiPayload();
LABEL_106:
          (*(v25 + 56))(a1 + v23, 0, 1, v24);
          goto LABEL_107;
        }

LABEL_105:
        memcpy(a1 + v23, a2 + v23, *(v25 + 64));
        goto LABEL_106;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(a2 + v23, 1, v24))
      {
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_105;
      }
    }

LABEL_44:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v23, a2 + v23, *(*(v29 - 8) + 64));
    goto LABEL_107;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
LABEL_108:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 3)
    {
      if (v21 == 2 || v21 == 3)
      {
        goto LABEL_26;
      }
    }

    else if (v21 == 4 || v21 == 5 || v21 == 6)
    {
LABEL_26:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 32))(a1 + v7, a2 + v7, v22);
      swift_storeEnumTagMultiPayload();
LABEL_52:
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_108;
    }

    memcpy(a1 + v7, a2 + v7, *(v9 + 64));
    goto LABEL_52;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

void *assignWithTake for TTRSECreateRemindersViewModel.Item.CasesForItemCells(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            *(a1 + *(v30 + 20)) = *(a2 + *(v30 + 20));
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
          goto LABEL_108;
        }

        if (v12 != 8)
        {
          goto LABEL_48;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v27 = sub_21DBF8D7C();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
LABEL_108:
        swift_storeEnumTagMultiPayload();
        goto LABEL_109;
      }

      if (v12 != 4)
      {
        if (v12 == 6)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(a2, 1, v18))
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v20 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v37 = *(v18 + 20);
            v38 = sub_21DBF6C1C();
            (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
            (*(v19 + 56))(a1, 0, 1, v18);
          }

          v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v40 = a1 + v39;
          v41 = a2 + v39;
          *v40 = *v41;
          *(v40 + 2) = *(v41 + 2);
          goto LABEL_108;
        }

        goto LABEL_48;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(a2 + v23, 1, v24))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_78;
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (v12 <= 1)
      {
        if (!v12)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_14;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_14;
          }

          goto LABEL_85;
        }

        if (v12 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 3)
          {
            if (v14 == 2 || v14 == 3)
            {
              goto LABEL_14;
            }
          }

          else if (v14 == 4 || v14 == 5 || v14 == 6)
          {
LABEL_14:
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 32))(a1, a2, v15);
            swift_storeEnumTagMultiPayload();
LABEL_86:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = (a2 + v45);
            v48 = v47[3];
            v46[2] = v47[2];
            v46[3] = v48;
            v49 = v47[1];
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = v47[6];
            v46[5] = v47[5];
            v46[6] = v50;
            v46[4] = v47[4];
            *(a1 + v44[6]) = *(a2 + v44[6]);
            *(a1 + v44[7]) = *(a2 + v44[7]);
            *(a1 + v44[8]) = *(a2 + v44[8]);
            *(a1 + v44[9]) = *(a2 + v44[9]);
            *(a1 + v44[10]) = *(a2 + v44[10]);
            *(a1 + v44[11]) = *(a2 + v44[11]);
            goto LABEL_108;
          }

LABEL_85:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_86;
        }

LABEL_48:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
        goto LABEL_109;
      }

      if (v12 != 2)
      {
        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(a2 + v23, 1, v24))
        {
          goto LABEL_45;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
LABEL_78:
          v43 = sub_21DBF563C();
          (*(*(v43 - 8) + 32))(a1 + v23, a2 + v23, v43);
          swift_storeEnumTagMultiPayload();
LABEL_107:
          (*(v25 + 56))(a1 + v23, 0, 1, v24);
          goto LABEL_108;
        }

LABEL_106:
        memcpy(a1 + v23, a2 + v23, *(v25 + 64));
        goto LABEL_107;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(a2 + v23, 1, v24))
      {
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
          goto LABEL_78;
        }

        goto LABEL_106;
      }
    }

LABEL_45:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v23, a2 + v23, *(*(v29 - 8) + 64));
    goto LABEL_108;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
LABEL_109:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 3)
    {
      if (v21 == 2 || v21 == 3)
      {
        goto LABEL_27;
      }
    }

    else if (v21 == 4 || v21 == 5 || v21 == 6)
    {
LABEL_27:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 32))(a1 + v7, a2 + v7, v22);
      swift_storeEnumTagMultiPayload();
LABEL_53:
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_109;
    }

    memcpy(a1 + v7, a2 + v7, *(v9 + 64));
    goto LABEL_53;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21D965680(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_21D96586C(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v6 + 16) & ~v6));

    return a1;
  }

  v8 = *(a3 - 8);
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a2, a4, v9))
  {
    v27 = a4;
    v14 = *a2;
    *a1 = *a2;
    v15 = *(v9 + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v14;
    if (v18(&a2[v15], 1, v16))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v15], &a2[v15], *(*(v20 - 8) + 64));
      v21 = v27;
LABEL_26:
      (*(v10 + 56))(a1, 0, v21, v9);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = v15;
    if (EnumCaseMultiPayload > 4)
    {
      v21 = v27;
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v21 = v27;
      if (EnumCaseMultiPayload > 2)
      {
LABEL_17:
        v24 = sub_21DBF563C();
        (*(*(v24 - 8) + 16))(&a1[v23], &a2[v23], v24);
        swift_storeEnumTagMultiPayload();
LABEL_25:
        (*(v17 + 56))(&a1[v23], 0, 1, v16);
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_17;
        }

LABEL_24:
        memcpy(&a1[v23], &a2[v23], *(v17 + 64));
        goto LABEL_25;
      }
    }

    v25 = *&a2[v23];
    *&a1[v23] = v25;
    v26 = v25;
    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  v11 = *(v8 + 64);

  return memcpy(a1, a2, v11);
}

void sub_21D965D1C(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  if ((*(*(v5 - 8) + 48))(a1, a3, v5))
  {
    return;
  }

  v6 = *(v5 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
  {
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_12:
      v9 = sub_21DBF563C();
      v10 = *(*(v9 - 8) + 8);

      v10(a1 + v6, v9);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v11 = *(a1 + v6);
}

void **sub_21D965EC8(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, a4, v8))
  {
    v25 = a4;
    v12 = *a2;
    *a1 = *a2;
    v13 = *(v8 + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
      v19 = v25;
LABEL_24:
      (*(v9 + 56))(a1, 0, v19, v8);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v13;
    if (EnumCaseMultiPayload > 4)
    {
      v19 = v25;
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v25;
      if (EnumCaseMultiPayload > 2)
      {
LABEL_15:
        v22 = sub_21DBF563C();
        (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
        swift_storeEnumTagMultiPayload();
LABEL_23:
        (*(v15 + 56))(a1 + v21, 0, 1, v14);
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_15;
        }

LABEL_22:
        memcpy(a1 + v21, a2 + v21, *(v15 + 64));
        goto LABEL_23;
      }
    }

    v23 = *(a2 + v21);
    *(a1 + v21) = v23;
    v24 = v23;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void **sub_21D96633C(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, a4, v8);
  v12 = v10(a2, a4, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    v25 = *a2;
    v26 = *a1;
    *a1 = *a2;
    v27 = v25;

    v28 = *(v8 + 20);
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    LODWORD(v26) = v31(a1 + v28, 1, v29);
    v32 = v31(a2 + v28, 1, v29);
    if (v26)
    {
      if (!v32)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 7)
          {
            if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
            {
              goto LABEL_50;
            }

            goto LABEL_61;
          }

          if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (EnumCaseMultiPayload > 2)
          {
LABEL_50:
            v41 = sub_21DBF563C();
            (*(*(v41 - 8) + 16))(a1 + v28, a2 + v28, v41);
            swift_storeEnumTagMultiPayload();
LABEL_62:
            (*(v30 + 56))(a1 + v28, 0, 1, v29);
            return a1;
          }

          if (EnumCaseMultiPayload != 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              goto LABEL_50;
            }

LABEL_61:
            memcpy(a1 + v28, a2 + v28, *(v30 + 64));
            goto LABEL_62;
          }
        }

        v42 = *(a2 + v28);
        *(a1 + v28) = v42;
        v43 = v42;
        swift_storeEnumTagMultiPayload();
        goto LABEL_62;
      }

      goto LABEL_24;
    }

    if (v32)
    {
      sub_21D106F78(a1 + v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_24:
      v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230) - 8) + 64);
LABEL_25:
      memcpy(a1 + v28, a2 + v28, v36);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    sub_21D106F78(a1 + v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 > 4)
    {
      if (v40 <= 7)
      {
        if (v40 == 5 || v40 == 6)
        {
          goto LABEL_63;
        }

        goto LABEL_71;
      }

      if (v40 != 8 && v40 != 9)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v40 > 2)
      {
LABEL_63:
        v44 = sub_21DBF563C();
        (*(*(v44 - 8) + 16))(a1 + v28, a2 + v28, v44);
LABEL_70:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          goto LABEL_63;
        }

LABEL_71:
        v36 = *(v30 + 64);
        goto LABEL_25;
      }
    }

    v45 = *(a2 + v28);
    *(a1 + v28) = v45;
    v46 = v45;
    goto LABEL_70;
  }

  if (!v12)
  {
    v13 = *a2;
    *a1 = *a2;
    v14 = *(v8 + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v13;
    v19 = v14;
    if (v17(a2 + v14, 1, v15))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
      v21 = v9;
      v22 = a4;
LABEL_48:
      (*(v21 + 56))(a1, 0, v22, v8);
      return a1;
    }

    v34 = swift_getEnumCaseMultiPayload();
    v21 = v9;
    v35 = a2;
    if (v34 > 4)
    {
      v22 = a4;
      if (v34 <= 7)
      {
        if (v34 == 5 || v34 == 6)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

      if (v34 != 8 && v34 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = a4;
      if (v34 > 2)
      {
LABEL_29:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 16))(a1 + v19, v35 + v19, v37);
        swift_storeEnumTagMultiPayload();
LABEL_47:
        (*(v16 + 56))(a1 + v19, 0, 1, v15);
        goto LABEL_48;
      }

      if (v34 != 1)
      {
        if (v34 == 2)
        {
          goto LABEL_29;
        }

LABEL_46:
        memcpy(a1 + v19, v35 + v19, *(v16 + 64));
        goto LABEL_47;
      }
    }

    v38 = *(v35 + v19);
    *(a1 + v19) = v38;
    v39 = v38;
    swift_storeEnumTagMultiPayload();
    goto LABEL_47;
  }

LABEL_7:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

char *sub_21D966DE0(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, a4, v8))
  {
    *a1 = *a2;
    v12 = *(v8 + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&a2[v12], 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
LABEL_20:
      (*(v9 + 56))(a1, 0, a4, v8);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_11:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(&a1[v12], &a2[v12], v17);
      swift_storeEnumTagMultiPayload();
LABEL_19:
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_20;
    }

    memcpy(&a1[v12], &a2[v12], *(v14 + 64));
    goto LABEL_19;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void **sub_21D96719C(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, a4, v8);
  v12 = v10(a2, a4, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    v19 = *a1;
    *a1 = *a2;

    v20 = *(v8 + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v24 = v23(a1 + v20, 1, v21);
    v25 = v23(a2 + v20, 1, v21);
    if (v24)
    {
      if (!v25)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
          {
            goto LABEL_16;
          }
        }

        else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
LABEL_16:
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1 + v20, a2 + v20, v27);
          swift_storeEnumTagMultiPayload();
LABEL_49:
          (*(v22 + 56))(a1 + v20, 0, 1, v21);
          return a1;
        }

        memcpy(a1 + v20, a2 + v20, *(v22 + 64));
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    if (v25)
    {
      sub_21D106F78(a1 + v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_24:
      v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230) - 8) + 64);
LABEL_25:
      memcpy(a1 + v20, a2 + v20, v30);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    sub_21D106F78(a1 + v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v31 = swift_getEnumCaseMultiPayload();
    if (v31 <= 3)
    {
      if (v31 == 2 || v31 == 3)
      {
        goto LABEL_52;
      }
    }

    else if (v31 == 4 || v31 == 5 || v31 == 6)
    {
LABEL_52:
      v32 = sub_21DBF563C();
      (*(*(v32 - 8) + 32))(a1 + v20, a2 + v20, v32);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v30 = *(v22 + 64);
    goto LABEL_25;
  }

  if (!v12)
  {
    *a1 = *a2;
    v13 = *(v8 + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
LABEL_40:
      (*(v9 + 56))(a1, 0, a4, v8);
      return a1;
    }

    v28 = swift_getEnumCaseMultiPayload();
    if (v28 <= 3)
    {
      if (v28 == 2 || v28 == 3)
      {
        goto LABEL_21;
      }
    }

    else if (v28 == 4 || v28 == 5 || v28 == 6)
    {
LABEL_21:
      v29 = sub_21DBF563C();
      (*(*(v29 - 8) + 32))(a1 + v13, a2 + v13, v29);
      swift_storeEnumTagMultiPayload();
LABEL_39:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_40;
    }

    memcpy(a1 + v13, a2 + v13, *(v15 + 64));
    goto LABEL_39;
  }

LABEL_7:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

uint64_t sub_21D967A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a3, v5);
}

uint64_t sub_21D967B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a4, v7);
}

uint64_t sub_21D967BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void TTRRemindersListViewModel.InlineSubtaskButtonData.init(baseAttributes:tintColor:subtaskString:)(void *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a3)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v7 = sub_21DBFA12C();

    type metadata accessor for Key(0);
    sub_21D112874();
    v8 = sub_21DBF9E5C();
    v9 = [v6 initWithString:v7 attributes:{v8, 0x800000021DC4BF10}];

    v10 = *MEMORY[0x277D740C0];
    v19 = sub_21D114D24();
    *&v18 = a2;
    sub_21D0CF2E8(&v18, v17);
    v11 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v17, v10, isUniquelyReferenced_nonNull_native);
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v14 = sub_21DBFA12C();

    v15 = sub_21DBF9E5C();

    v16 = [v13 initWithString:v14 attributes:v15];

    *a4 = v9;
    a4[1] = v16;
    a4[2] = v11;
  }

  else
  {

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

uint64_t TTRRemindersListViewModel.InlineSubtaskButtonData.init(leadingSeparatorText:buttonTitle:tintColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t TTRICollectionViewHitTestResult.debugHUDInfo.getter(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D968F4C(v2, v14, type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D9688A4(v14, v8, type metadata accessor for TTRICollectionViewGapHit);
      v21[0] = 0x203A706147;
      v21[1] = 0xE500000000000000;
      v16 = TTRICollectionViewHitIndexPaths.description.getter();
      MEMORY[0x223D42AA0](v16);

      v17 = v21[0];
      v18 = type metadata accessor for TTRICollectionViewGapHit;
      v19 = v8;
    }

    else
    {
      sub_21D9688A4(v14, v5, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v17 = TTRICollectionViewEmptySpaceType.description.getter();
      v18 = type metadata accessor for TTRICollectionViewEmptySpaceType;
      v19 = v5;
    }
  }

  else
  {
    sub_21D9688A4(v14, v11, type metadata accessor for TTRICollectionViewItemHit);
    v17 = sub_21D968348();
    v18 = type metadata accessor for TTRICollectionViewItemHit;
    v19 = v11;
  }

  sub_21D968ECC(v19, v18);
  return v17;
}

uint64_t TTRICollectionViewHitIndexPaths.init(inDestination:presentationDestination:dataSourceDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBF5D5C();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v9(a4 + *(v10 + 20), a2, v8);
  return sub_21D0D523C(a3, a4 + *(v10 + 24), &unk_27CE58E70, &unk_21DC0A930);
}

uint64_t TTRICollectionViewItemHit.init(indexPaths:portion:isCloseToMiddle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_21D9688A4(a1, a4, type metadata accessor for TTRICollectionViewHitIndexPaths);
  result = type metadata accessor for TTRICollectionViewItemHit(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21D968348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21DC08D00;
  v2 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v2);

  *(v1 + 32) = 0x203A746948;
  *(v1 + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D20;
  v4 = type metadata accessor for TTRICollectionViewItemHit(0);
  v5 = 7368564;
  if (*(v0 + *(v4 + 20)))
  {
    v5 = 0x6D6F74746F62;
  }

  v6 = 0xE300000000000000;
  if (*(v0 + *(v4 + 20)))
  {
    v6 = 0xE600000000000000;
  }

  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  v7 = 0x656C6464696DLL;
  if (*(v0 + *(v4 + 24)))
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
  sub_21DBFA41C();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v9 = sub_21DBFA07C();
  v11 = v10;

  MEMORY[0x223D42AA0](v9, v11);

  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (v13 >= v12 >> 1)
  {
    v1 = sub_21D210A84((v12 > 1), v13 + 1, 1, v1);
  }

  *(v1 + 16) = v13 + 1;
  v14 = v1 + 16 * v13;
  *(v14 + 32) = 0x2020202020;
  *(v14 + 40) = 0xE500000000000000;
  v15 = sub_21DBFA07C();

  return v15;
}

uint64_t TTRICollectionViewGapHit.description.getter(double a1)
{
  v1 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v1);

  return 0x203A706147;
}

unint64_t TTRICollectionViewEmptySpaceType.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v5 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D968F4C(v1, v7, type metadata accessor for TTRICollectionViewEmptySpaceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0D523C(v7, v4, &qword_27CE61600, &qword_21DC26F40);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_21DBFBEEC();

      v15 = 0xD000000000000013;
      v16 = 0x800000021DC71600;
      v9 = sub_21DBFBA5C();
      MEMORY[0x223D42AA0](v9);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v10 = v15;
      sub_21D0CF7E0(v4, &qword_27CE61600, &qword_21DC26F40);
      return v10;
    }

    else
    {
      return 0x6170537974706D65;
    }
  }

  else
  {
    v12 = *v7;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_21DBFBEEC();

    v15 = 0xD00000000000001BLL;
    v16 = 0x800000021DC71620;
    v14[1] = v12;
    v13 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v13);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return v15;
  }
}

uint64_t sub_21D9688A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewItemHit.Portion.description.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t TTRICollectionViewItemHit.Portion.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9689C4()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t TTRICollectionViewItemHit.portion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRICollectionViewItemHit(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRICollectionViewItemHit.description.getter()
{
  sub_21DBFBEEC();

  v1 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](0x6F6974726F70202CLL, 0xEB00000000203A6ELL);
  v2 = type metadata accessor for TTRICollectionViewItemHit(0);
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC71640);
  if (*(v0 + *(v2 + 24)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v5, v6);

  return 0x746968206D657449;
}

uint64_t sub_21D968BF0(double a1)
{
  v1 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v1);

  return 0x203A706147;
}

uint64_t TTRICollectionViewHitIndexPaths.inDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewHitIndexPaths.presentationDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRICollectionViewHitIndexPaths.description.getter()
{
  sub_21DBFBEEC();

  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0, MEMORY[0x277CC9B38]);
  v0 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](1030758444, 0xE400000000000000);
  type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v1 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](1029972012, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  v2 = sub_21DBFBA5C();
  MEMORY[0x223D42AA0](v2);

  return 4025961;
}

uint64_t sub_21D968ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D968F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewGapLocationRelativeToHit.description.getter()
{
  v1 = *v0;
  v2 = 0x7061476F6ELL;
  v3 = 0x65766F6261;
  v4 = 0x4C746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x776F6C6562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRICollectionViewGapLocationRelativeToHit.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9690D8()
{
  v1 = *v0;
  v2 = 0x7061476F6ELL;
  v3 = 0x65766F6261;
  v4 = 0x4C746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x776F6C6562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL _s15RemindersUICore32TTRICollectionViewEmptySpaceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64160, &qword_21DC32CF8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v32 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64168, &qword_21DC32D00);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32 - v19;
  v22 = *(v21 + 56);
  sub_21D968F4C(a1, &v32 - v19, type metadata accessor for TTRICollectionViewEmptySpaceType);
  sub_21D968F4C(a2, &v20[v22], type metadata accessor for TTRICollectionViewEmptySpaceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D968F4C(v20, v14, type metadata accessor for TTRICollectionViewEmptySpaceType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = *(v9 + 48);
        sub_21D0D523C(v14, v11, &qword_27CE61600, &qword_21DC26F40);
        sub_21D0D523C(&v20[v22], &v11[v24], &qword_27CE61600, &qword_21DC26F40);
        v25 = v35;
        v26 = *(v34 + 48);
        if (v26(v11, 1, v35) == 1)
        {
          if (v26(&v11[v24], 1, v25) == 1)
          {
            sub_21D0CF7E0(v11, &qword_27CE61600, &qword_21DC26F40);
LABEL_10:
            sub_21D968ECC(v20, type metadata accessor for TTRICollectionViewEmptySpaceType);
            return 1;
          }
        }

        else
        {
          v29 = v33;
          sub_21D0D3954(v11, v33, &qword_27CE61600, &qword_21DC26F40);
          if (v26(&v11[v24], 1, v25) != 1)
          {
            v30 = v32;
            sub_21D9688A4(&v11[v24], v32, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            v31 = _s15RemindersUICore41TTRICollectionViewInsertAtIndexPathOptionO2eeoiySbAC_ACtFZ_0(v29, v30);
            sub_21D968ECC(v30, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            sub_21D968ECC(v29, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            sub_21D0CF7E0(v11, &qword_27CE61600, &qword_21DC26F40);
            if (v31)
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }

          sub_21D968ECC(v29, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
        }

        sub_21D0CF7E0(v11, &qword_27CE64160, &qword_21DC32CF8);
LABEL_17:
        sub_21D968ECC(v20, type metadata accessor for TTRICollectionViewEmptySpaceType);
        return 0;
      }

      sub_21D0CF7E0(v14, &qword_27CE61600, &qword_21DC26F40);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_21D968F4C(v20, v17, type metadata accessor for TTRICollectionViewEmptySpaceType);
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = *v17 == *&v20[v22];
      sub_21D968ECC(v20, type metadata accessor for TTRICollectionViewEmptySpaceType);
      return v27;
    }
  }

  sub_21D0CF7E0(v20, &qword_27CE64168, &qword_21DC32D00);
  return 0;
}

BOOL _s15RemindersUICore31TTRICollectionViewHitTestResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64170, &unk_21DC32D08);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v36 - v20;
  v23 = *(v22 + 56);
  sub_21D968F4C(v38, &v36 - v20, type metadata accessor for TTRICollectionViewHitTestResult);
  sub_21D968F4C(v39, &v21[v23], type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D968F4C(v21, v18, type metadata accessor for TTRICollectionViewHitTestResult);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D9688A4(&v21[v23], v9, type metadata accessor for TTRICollectionViewItemHit);
      if (_s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(v18, v9) && v18[*(v7 + 20)] == v9[*(v7 + 20)])
      {
        v33 = *(v7 + 24);
        v34 = v18[v33];
        v35 = v9[v33];
        sub_21D968ECC(v9, type metadata accessor for TTRICollectionViewItemHit);
        if (v34 == v35)
        {
          sub_21D968ECC(v18, type metadata accessor for TTRICollectionViewItemHit);
          sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
          return 1;
        }
      }

      else
      {
        sub_21D968ECC(v9, type metadata accessor for TTRICollectionViewItemHit);
      }

      sub_21D968ECC(v18, type metadata accessor for TTRICollectionViewItemHit);
      sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
      return 0;
    }

    v28 = type metadata accessor for TTRICollectionViewItemHit;
    v29 = v18;
LABEL_12:
    sub_21D968ECC(v29, v28);
    sub_21D0CF7E0(v21, &qword_27CE64170, &unk_21DC32D08);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21D968F4C(v21, v12, type metadata accessor for TTRICollectionViewHitTestResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v37;
      sub_21D9688A4(&v21[v23], v37, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v25 = _s15RemindersUICore32TTRICollectionViewEmptySpaceTypeO2eeoiySbAC_ACtFZ_0(v12, v30, v31);
      v26 = type metadata accessor for TTRICollectionViewEmptySpaceType;
      sub_21D968ECC(v30, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v27 = v12;
      goto LABEL_9;
    }

    v28 = type metadata accessor for TTRICollectionViewEmptySpaceType;
    v29 = v12;
    goto LABEL_12;
  }

  sub_21D968F4C(v21, v15, type metadata accessor for TTRICollectionViewHitTestResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for TTRICollectionViewGapHit;
    v29 = v15;
    goto LABEL_12;
  }

  sub_21D9688A4(&v21[v23], v6, type metadata accessor for TTRICollectionViewGapHit);
  v25 = _s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(v15, v6);
  v26 = type metadata accessor for TTRICollectionViewGapHit;
  sub_21D968ECC(v6, type metadata accessor for TTRICollectionViewGapHit);
  v27 = v15;
LABEL_9:
  sub_21D968ECC(v27, v26);
  sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
  return v25;
}

BOOL _s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v24 = v5;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_21D0D3954(a1 + v15, v13, &unk_27CE58E70, &unk_21DC0A930);
  v17 = a2 + v15;
  v18 = v24;
  sub_21D0D3954(v17, &v13[v16], &unk_27CE58E70, &unk_21DC0A930);
  v19 = *(v18 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
      return 1;
    }

    goto LABEL_8;
  }

  sub_21D0D3954(v13, v10, &unk_27CE58E70, &unk_21DC0A930);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v18 + 8))(v10, v4);
LABEL_8:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8, &unk_21DC1ABD0);
    return 0;
  }

  (*(v18 + 32))(v7, &v13[v16], v4);
  sub_21D23894C(&qword_280D17150, MEMORY[0x277CC9B18]);
  v21 = sub_21DBFA10C();
  v22 = *(v18 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
  return (v21 & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRICollectionViewItemHitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8, &unk_21DC1ABD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = a1;
  v16 = v5;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  v25 = v15;
  sub_21D0D3954(v15 + v17, v13, &unk_27CE58E70, &unk_21DC0A930);
  v26 = a2;
  sub_21D0D3954(a2 + v17, &v13[v18], &unk_27CE58E70, &unk_21DC0A930);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &unk_27CE58E70, &unk_21DC0A930);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v16 + 32))(v7, &v13[v18], v4);
      sub_21D23894C(&qword_280D17150, MEMORY[0x277CC9B18]);
      v20 = sub_21DBFA10C();
      v21 = *(v16 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    (*(v16 + 8))(v10, v4);
LABEL_8:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8, &unk_21DC1ABD0);
    goto LABEL_11;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_21D0CF7E0(v13, &unk_27CE58E70, &unk_21DC0A930);
LABEL_10:
  v22 = type metadata accessor for TTRICollectionViewItemHit(0);
  if (*(v25 + *(v22 + 20)) == *(v26 + *(v22 + 20)))
  {
    v23 = *(v25 + *(v22 + 24)) ^ *(v26 + *(v22 + 24)) ^ 1;
    return v23 & 1;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_21D96A2C8()
{
  result = qword_27CE640F8;
  if (!qword_27CE640F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewItemHit.Portion, &type metadata for TTRICollectionViewItemHit.Portion, v0, v1);
    atomic_store(result, &qword_27CE640F8);
  }

  return result;
}

unint64_t sub_21D96A320()
{
  result = qword_27CE64100;
  if (!qword_27CE64100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewGapLocationRelativeToHit, &type metadata for TTRICollectionViewGapLocationRelativeToHit, v0, v1);
    atomic_store(result, &qword_27CE64100);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewHitTestResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v25 = sub_21DBF5D5C();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v14 - 8) + 64));
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_21DBF5D5C();
      v8 = *(v7 - 8);
      v9 = *(v8 + 16);
      v9(a1, a2, v7);
      v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v9((a1 + *(v10 + 20)), (a2 + *(v10 + 20)), v7);
      v11 = *(v10 + 24);
      if ((*(v8 + 48))(a2 + v11, 1, v7))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
        memcpy(a1 + v11, a2 + v11, *(*(v12 - 8) + 64));
      }

      else
      {
        v9((a1 + v11), (a2 + v11), v7);
        (*(v8 + 56))(a1 + v11, 0, 1, v7);
      }
    }

    else
    {
      v18 = sub_21DBF5D5C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 16);
      v20(a1, a2, v18);
      v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v20((a1 + *(v21 + 20)), (a2 + *(v21 + 20)), v18);
      v22 = *(v21 + 24);
      if ((*(v19 + 48))(a2 + v22, 1, v18))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
        memcpy(a1 + v22, a2 + v22, *(*(v23 - 8) + 64));
      }

      else
      {
        v20((a1 + v22), (a2 + v22), v18);
        (*(v19 + 56))(a1 + v22, 0, 1, v18);
      }

      v24 = type metadata accessor for TTRICollectionViewItemHit(0);
      *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
      *(a1 + *(v24 + 24)) = *(a2 + *(v24 + 24));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewHitTestResult(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    v11 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    result = (*(*(v11 - 8) + 48))(a1, 1, v11);
    if (result)
    {
      return result;
    }

    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      return result;
    }

    v12 = sub_21DBF5D5C();
    v10 = *(*(v12 - 8) + 8);
    v9 = v12;
    v8 = a1;
  }

  else
  {
    if (result > 1)
    {
      return result;
    }

    v4 = sub_21DBF5D5C();
    v5 = *(v4 - 8);
    v13 = *(v5 + 8);
    v13(a1, v4);
    v6 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v13(a1 + *(v6 + 20), v4);
    v7 = *(v6 + 24);
    result = (*(v5 + 48))(a1 + v7, 1, v4);
    if (result)
    {
      return result;
    }

    v8 = a1 + v7;
    v9 = v4;
    v10 = v13;
  }

  return v10(v8, v9);
}

char *initializeWithCopy for TTRICollectionViewHitTestResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v11 = *(*(v14 - 8) + 64);
      v12 = a1;
      v13 = a2;
LABEL_11:
      memcpy(v12, v13, v11);
      goto LABEL_17;
    }

    v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2, 1, v15))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v17 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v25 = sub_21DBF5D5C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(a1, 0, 1, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_21DBF5D5C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 16);
      v8(a1, a2, v6);
      v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v6);
      v10 = *(v9 + 24);
      if (!(*(v7 + 48))(&a2[v10], 1, v6))
      {
        v8(&a1[v10], &a2[v10], v6);
        (*(v7 + 56))(&a1[v10], 0, 1, v6);
        goto LABEL_17;
      }

      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930) - 8) + 64);
      v12 = &a1[v10];
      v13 = &a2[v10];
      goto LABEL_11;
    }

    v18 = sub_21DBF5D5C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 16);
    v20(a1, a2, v18);
    v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v20(&a1[*(v21 + 20)], &a2[*(v21 + 20)], v18);
    v22 = *(v21 + 24);
    if ((*(v19 + 48))(&a2[v22], 1, v18))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
    }

    else
    {
      v20(&a1[v22], &a2[v22], v18);
      (*(v19 + 56))(&a1[v22], 0, 1, v18);
    }

    v24 = type metadata accessor for TTRICollectionViewItemHit(0);
    a1[*(v24 + 20)] = a2[*(v24 + 20)];
    a1[*(v24 + 24)] = a2[*(v24 + 24)];
  }

LABEL_17:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TTRICollectionViewHitTestResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewHitTestResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v25 = sub_21DBF5D5C();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      v11 = *(*(v14 - 8) + 64);
      v12 = a1;
      v13 = a2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v18 = sub_21DBF5D5C();
        v19 = *(v18 - 8);
        v20 = *(v19 + 16);
        v20(a1, a2, v18);
        v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v20(&a1[*(v21 + 20)], &a2[*(v21 + 20)], v18);
        v22 = *(v21 + 24);
        if ((*(v19 + 48))(&a2[v22], 1, v18))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
          memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
        }

        else
        {
          v20(&a1[v22], &a2[v22], v18);
          (*(v19 + 56))(&a1[v22], 0, 1, v18);
        }

        v24 = type metadata accessor for TTRICollectionViewItemHit(0);
        a1[*(v24 + 20)] = a2[*(v24 + 20)];
        a1[*(v24 + 24)] = a2[*(v24 + 24)];
        goto LABEL_18;
      }

      v6 = sub_21DBF5D5C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 16);
      v8(a1, a2, v6);
      v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v6);
      v10 = *(v9 + 24);
      if (!(*(v7 + 48))(&a2[v10], 1, v6))
      {
        v8(&a1[v10], &a2[v10], v6);
        (*(v7 + 56))(&a1[v10], 0, 1, v6);
        goto LABEL_18;
      }

      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930) - 8) + 64);
      v12 = &a1[v10];
      v13 = &a2[v10];
    }

    memcpy(v12, v13, v11);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRICollectionViewHitTestResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v11 = *(*(v14 - 8) + 64);
      v12 = a1;
      v13 = a2;
LABEL_11:
      memcpy(v12, v13, v11);
      goto LABEL_17;
    }

    v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2, 1, v15))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v17 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v25 = sub_21DBF5D5C();
      (*(*(v25 - 8) + 32))(a1, a2, v25);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(a1, 0, 1, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_21DBF5D5C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 32);
      v8(a1, a2, v6);
      v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v6);
      v10 = *(v9 + 24);
      if (!(*(v7 + 48))(&a2[v10], 1, v6))
      {
        v8(&a1[v10], &a2[v10], v6);
        (*(v7 + 56))(&a1[v10], 0, 1, v6);
        goto LABEL_17;
      }

      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930) - 8) + 64);
      v12 = &a1[v10];
      v13 = &a2[v10];
      goto LABEL_11;
    }

    v18 = sub_21DBF5D5C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 32);
    v20(a1, a2, v18);
    v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v20(&a1[*(v21 + 20)], &a2[*(v21 + 20)], v18);
    v22 = *(v21 + 24);
    if ((*(v19 + 48))(&a2[v22], 1, v18))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
    }

    else
    {
      v20(&a1[v22], &a2[v22], v18);
      (*(v19 + 56))(&a1[v22], 0, 1, v18);
    }

    v24 = type metadata accessor for TTRICollectionViewItemHit(0);
    a1[*(v24 + 20)] = a2[*(v24 + 20)];
    a1[*(v24 + 24)] = a2[*(v24 + 24)];
  }

LABEL_17:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for TTRICollectionViewHitTestResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewHitTestResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v25 = sub_21DBF5D5C();
          (*(*(v25 - 8) + 32))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      v11 = *(*(v14 - 8) + 64);
      v12 = a1;
      v13 = a2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v18 = sub_21DBF5D5C();
        v19 = *(v18 - 8);
        v20 = *(v19 + 32);
        v20(a1, a2, v18);
        v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v20(&a1[*(v21 + 20)], &a2[*(v21 + 20)], v18);
        v22 = *(v21 + 24);
        if ((*(v19 + 48))(&a2[v22], 1, v18))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
          memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
        }

        else
        {
          v20(&a1[v22], &a2[v22], v18);
          (*(v19 + 56))(&a1[v22], 0, 1, v18);
        }

        v24 = type metadata accessor for TTRICollectionViewItemHit(0);
        a1[*(v24 + 20)] = a2[*(v24 + 20)];
        a1[*(v24 + 24)] = a2[*(v24 + 24)];
        goto LABEL_18;
      }

      v6 = sub_21DBF5D5C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 32);
      v8(a1, a2, v6);
      v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v6);
      v10 = *(v9 + 24);
      if (!(*(v7 + 48))(&a2[v10], 1, v6))
      {
        v8(&a1[v10], &a2[v10], v6);
        (*(v7 + 56))(&a1[v10], 0, 1, v6);
        goto LABEL_18;
      }

      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930) - 8) + 64);
      v12 = &a1[v10];
      v13 = &a2[v10];
    }

    memcpy(v12, v13, v11);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D96BC34(uint64_t a1)
{
  result = type metadata accessor for TTRICollectionViewItemHit(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRICollectionViewEmptySpaceType(319);
      if (v4 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewItemHit(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v9(&a1[*(v10 + 20)], &a2[*(v10 + 20)], v7);
    v11 = *(v10 + 24);
    if ((*(v8 + 48))(&a2[v11], 1, v7))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
    }

    else
    {
      v9(&a1[v11], &a2[v11], v7);
      (*(v8 + 56))(&a1[v11], 0, 1, v7);
    }

    v14 = *(a3 + 24);
    a1[*(a3 + 20)] = a2[*(a3 + 20)];
    a1[v14] = a2[v14];
  }

  return a1;
}

uint64_t initializeWithCopy for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v8(a1 + *(v9 + 20), a2 + *(v9 + 20), v6);
  v10 = *(v9 + 24);
  if ((*(v7 + 48))(a2 + v10, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v8(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v12) = *(a2 + v12);
  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v5);
  v9 = *(v8 + 24);
  v10 = *(v6 + 48);
  LODWORD(v8) = v10(a1 + v9, 1, v5);
  v11 = v10(a2 + v9, 1, v5);
  if (!v8)
  {
    if (!v11)
    {
      v7(a1 + v9, a2 + v9, v5);
      goto LABEL_7;
    }

    (*(v6 + 8))(a1 + v9, v5);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v6 + 16))(a1 + v9, a2 + v9, v5);
  (*(v6 + 56))(a1 + v9, 0, 1, v5);
LABEL_7:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v8(a1 + *(v9 + 20), a2 + *(v9 + 20), v6);
  v10 = *(v9 + 24);
  if ((*(v7 + 48))(a2 + v10, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v8(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v12) = *(a2 + v12);
  return a1;
}

uint64_t assignWithTake for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v5);
  v9 = *(v8 + 24);
  v10 = *(v6 + 48);
  LODWORD(v8) = v10(a1 + v9, 1, v5);
  v11 = v10(a2 + v9, 1, v5);
  if (!v8)
  {
    if (!v11)
    {
      v7(a1 + v9, a2 + v9, v5);
      goto LABEL_7;
    }

    (*(v6 + 8))(a1 + v9, v5);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v6 + 32))(a1 + v9, a2 + v9, v5);
  (*(v6 + 56))(a1 + v9, 0, 1, v5);
LABEL_7:
  v13 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v13) = *(a2 + v13);
  return a1;
}

uint64_t sub_21D96C628(uint64_t a1)
{
  result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewGapHit(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v9(&a1[*(v6 + 20)], &a2[*(v6 + 20)], v7);
    v10 = *(v6 + 24);
    if ((*(v8 + 48))(&a2[v10], 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v9(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
    }
  }

  return a1;
}

uint64_t sub_21D96C888(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  v7 = *(v3 + 8);
  v7(a1, v2);
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v4 + 20), v2);
  v5 = *(v4 + 24);
  result = (*(v3 + 48))(a1 + v5, 1, v2);
  if (!result)
  {

    return (v7)(a1 + v5, v2);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  if ((*(v5 + 48))(a2 + v8, 1, v4))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v8), (a2 + v8), *(*(v9 - 8) + 64));
  }

  else
  {
    v6(a1 + v8, a2 + v8, v4);
    (*(v5 + 56))(a1 + v8, 0, 1, v4);
  }

  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  v9 = *(v5 + 48);
  LODWORD(v7) = v9(a1 + v8, 1, v4);
  v10 = v9(a2 + v8, 1, v4);
  if (!v7)
  {
    if (!v10)
    {
      v6(a1 + v8, a2 + v8, v4);
      return a1;
    }

    (*(v5 + 8))(a1 + v8, v4);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v5 + 16))(a1 + v8, a2 + v8, v4);
  (*(v5 + 56))(a1 + v8, 0, 1, v4);
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  if ((*(v5 + 48))(a2 + v8, 1, v4))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v8), (a2 + v8), *(*(v9 - 8) + 64));
  }

  else
  {
    v6(a1 + v8, a2 + v8, v4);
    (*(v5 + 56))(a1 + v8, 0, 1, v4);
  }

  return a1;
}

uint64_t assignWithTake for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  v9 = *(v5 + 48);
  LODWORD(v7) = v9(a1 + v8, 1, v4);
  v10 = v9(a2 + v8, 1, v4);
  if (!v7)
  {
    if (!v10)
    {
      v6(a1 + v8, a2 + v8, v4);
      return a1;
    }

    (*(v5 + 8))(a1 + v8, v4);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v5 + 32))(a1 + v8, a2 + v8, v4);
  (*(v5 + 56))(a1 + v8, 0, 1, v4);
  return a1;
}

uint64_t sub_21D96D054(uint64_t a1)
{
  result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewEmptySpaceType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v13 = sub_21DBF5D5C();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for TTRICollectionViewEmptySpaceType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    result = (*(*(v4 - 8) + 48))(a1, 1, v4);
    if (!result)
    {
      result = swift_getEnumCaseMultiPayload();
      if (result <= 2)
      {
        v5 = sub_21DBF5D5C();
        v6 = *(*(v5 - 8) + 8);

        return v6(a1, v5);
      }
    }
  }

  return result;
}

void *initializeWithCopy for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithCopy for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewEmptySpaceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithTake for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewEmptySpaceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_21D96DB10(uint64_t a1)
{
  sub_21D96E5FC(319, &qword_27CE64148, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewHitIndexPaths(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v9(&a1[*(a3 + 20)], &a2[*(a3 + 20)], v7);
    v10 = *(a3 + 24);
    if ((*(v8 + 48))(&a2[v10], 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
      memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v9(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
    }
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v8 = *(v5 + 8);
  v8(a1, v4);
  v8(a1 + *(a2 + 20), v4);
  v6 = *(a2 + 24);
  result = (*(v5 + 48))(a1 + v6, 1, v4);
  if (!result)
  {

    return (v8)(a1 + v6, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  v10 = *(v7 + 48);
  LODWORD(a3) = v10(a1 + v9, 1, v6);
  v11 = v10(a2 + v9, 1, v6);
  if (!a3)
  {
    if (!v11)
    {
      v8(a1 + v9, a2 + v9, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(a1 + v9, a2 + v9, v6);
  (*(v7 + 56))(a1 + v9, 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  v10 = *(v7 + 48);
  LODWORD(a3) = v10(a1 + v9, 1, v6);
  v11 = v10(a2 + v9, 1, v6);
  if (!a3)
  {
    if (!v11)
    {
      v8(a1 + v9, a2 + v9, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(a1 + v9, a2 + v9, v6);
  (*(v7 + 56))(a1 + v9, 0, 1, v6);
  return a1;
}

void sub_21D96E518(uint64_t a1)
{
  sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    sub_21D96E5FC(319, &qword_27CE61428, MEMORY[0x277CC9AF8]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D96E5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TTRICollectionViewInsertAtIndexPathOption.description.getter()
{
  v1 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D96F2E4(v0, v9, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
      v11 = 0x2865726F666562;
      v12 = 0xE700000000000000;
    }

    else
    {
      sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
      v11 = 0x287265746661;
      v12 = 0xE600000000000000;
    }

    v21 = v11;
    v22 = v12;
    sub_21DBF5D5C();
    sub_21D96E970();
    v19 = sub_21DBFC5BC();
    v20 = v17;
    MEMORY[0x223D42AA0](0x296A64616E7528, 0xE700000000000000);
    MEMORY[0x223D42AA0](v19, v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v14 = v21;
    v15 = type metadata accessor for TTRUnadjustedIndexPath;
    v16 = v3;
  }

  else
  {
    sub_21D74EAE0(v9, v6, type metadata accessor for TTRAdjustedIndexPath);
    v21 = 2651233;
    v22 = 0xE300000000000000;
    sub_21DBF5D5C();
    sub_21D96E970();
    v19 = sub_21DBFC5BC();
    v20 = v13;
    MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
    MEMORY[0x223D42AA0](v19, v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v14 = v21;
    v15 = type metadata accessor for TTRAdjustedIndexPath;
    v16 = v6;
  }

  sub_21D96E9C8(v16, v15);
  return v14;
}

unint64_t sub_21D96E970()
{
  result = qword_27CE59FD0;
  if (!qword_27CE59FD0)
  {
    v3 = sub_21DBF5D5C();
    result = swift_getWitnessTable(MEMORY[0x277CC9B38], v3, v0, v1);
    atomic_store(result, &qword_27CE59FD0);
  }

  return result;
}

uint64_t sub_21D96E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRICollectionViewDropIntent.TargetType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRICollectionViewDropIntent.description.getter()
{
  v1 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D96F2E4(v0, v9, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970) + 48)];
    sub_21D74EAE0(v9, v6, type metadata accessor for TTRAdjustedIndexPath);
    if (v15)
    {
      v23 = 2643009;
      v24 = 0xE300000000000000;
      sub_21DBF5D5C();
      sub_21D96E970();
      v21 = sub_21DBFC5BC();
      v22 = v16;
      MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
      MEMORY[0x223D42AA0](v21, v22);

      if (v15 == 1)
      {
        v17 = 692396076;
      }

      else
      {
        v17 = 692592684;
      }

      v19 = 0xE400000000000000;
    }

    else
    {
      v23 = 2643009;
      v24 = 0xE300000000000000;
      sub_21DBF5D5C();
      sub_21D96E970();
      v21 = sub_21DBFC5BC();
      v22 = v18;
      MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
      MEMORY[0x223D42AA0](v21, v22);

      v17 = 41;
      v19 = 0xE100000000000000;
    }

    MEMORY[0x223D42AA0](v17, v19);
    v12 = v23;
    v13 = type metadata accessor for TTRAdjustedIndexPath;
    v14 = v6;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
    v23 = 0x284F544E49;
    v24 = 0xE500000000000000;
    sub_21DBF5D5C();
    sub_21D96E970();
    v21 = sub_21DBFC5BC();
    v22 = v11;
    MEMORY[0x223D42AA0](0x296A64616E7528, 0xE700000000000000);
    MEMORY[0x223D42AA0](v21, v22);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v12 = v23;
    v13 = type metadata accessor for TTRUnadjustedIndexPath;
    v14 = v3;
LABEL_12:
    sub_21D96E9C8(v14, v13);
    return v12;
  }

  return 1347636821;
}

uint64_t _s15RemindersUICore41TTRICollectionViewInsertAtIndexPathOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE641A0, &qword_21DC32EA0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_21D96F2E4(a1, &v33 - v21, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  sub_21D96F2E4(v34, &v22[v24], type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D96F2E4(v22, v16, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D74EAE0(&v22[v24], v7, type metadata accessor for TTRUnadjustedIndexPath);
        v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
        v27 = type metadata accessor for TTRUnadjustedIndexPath;
        sub_21D96E9C8(v7, type metadata accessor for TTRUnadjustedIndexPath);
        v28 = v16;
LABEL_13:
        sub_21D96E9C8(v28, v27);
        sub_21D96E9C8(v22, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
        return v26 & 1;
      }

      v29 = type metadata accessor for TTRUnadjustedIndexPath;
      v30 = v16;
    }

    else
    {
      sub_21D96F2E4(v22, v13, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_21D74EAE0(&v22[v24], v33, type metadata accessor for TTRUnadjustedIndexPath);
        v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
        v27 = type metadata accessor for TTRUnadjustedIndexPath;
        sub_21D96E9C8(v31, type metadata accessor for TTRUnadjustedIndexPath);
        v28 = v13;
        goto LABEL_13;
      }

      v29 = type metadata accessor for TTRUnadjustedIndexPath;
      v30 = v13;
    }
  }

  else
  {
    sub_21D96F2E4(v22, v19, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D74EAE0(&v22[v24], v10, type metadata accessor for TTRAdjustedIndexPath);
      v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
      v27 = type metadata accessor for TTRAdjustedIndexPath;
      sub_21D96E9C8(v10, type metadata accessor for TTRAdjustedIndexPath);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for TTRAdjustedIndexPath;
    v30 = v19;
  }

  sub_21D96E9C8(v30, v29);
  sub_21D97002C(v22);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_21D96F2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D96F350()
{
  result = qword_27CE64178;
  if (!qword_27CE64178)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDropIntent.TargetType, &type metadata for TTRICollectionViewDropIntent.TargetType, v0, v1);
    atomic_store(result, &qword_27CE64178);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewInsertAtIndexPathOption(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = sub_21DBF5D5C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v4 = sub_21DBF5D5C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF5D5C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF5D5C();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF5D5C();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF5D5C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D96F7A4(uint64_t a1)
{
  result = sub_21DBF5D5C();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRICollectionViewDropIntent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_21DBF5D5C();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF5D5C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970);
    *(a1 + *(v9 + 48)) = *(a2 + *(v9 + 48));
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for TTRICollectionViewDropIntent(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v4 = sub_21DBF5D5C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

_BYTE *initializeWithCopy for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithCopy for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *initializeWithTake for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithTake for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220, &unk_21DC26970);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D96FF74(uint64_t a1)
{
  result = sub_21DBF5D5C();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v4[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D97002C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE641A0, &qword_21DC32EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array<A>.init(pinnedLists:)(uint64_t a1)
{
  v2 = sub_21DBF68BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_21DBFB1BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {

    return MEMORY[0x277D84F90];
  }

  v48 = MEMORY[0x277D84F90];
  v44 = v12;
  sub_21D18F62C(0, v12, 0);
  v13 = 0;
  v14 = v48;
  v43 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v42 = v3 + 16;
  v40 = v3 + 88;
  v39 = *MEMORY[0x277D452D0];
  v33 = *MEMORY[0x277D452D8];
  v30 = *MEMORY[0x277D452C8];
  v37 = (v3 + 8);
  v38 = (v3 + 96);
  v32 = *MEMORY[0x277D45A08];
  v36 = (v9 + 104);
  v31 = *MEMORY[0x277D45A00];
  v34 = v8;
  v35 = v9 + 32;
  v45 = v3;
  v46 = a1;
  v41 = v11;
  while (v13 < *(a1 + 16))
  {
    v15 = *(v3 + 16);
    v15(v7, v43 + *(v3 + 72) * v13, v2);
    v16 = v47;
    v15(v47, v7, v2);
    v17 = (*(v3 + 88))(v16, v2);
    if (v17 == v39)
    {
      (*v37)(v7, v2);
      (*v38)(v16, v2);
      v18 = v41;
      *v41 = *v16;
      v19 = v31;
LABEL_8:
      v22 = v18;
      goto LABEL_11;
    }

    if (v17 == v33)
    {
      (*v38)(v16, v2);
      v20 = *v16;
      v21 = [v20 objectID];

      (*v37)(v7, v2);
      v18 = v41;
      *v41 = v21;
      v8 = v34;
      v19 = v32;
      goto LABEL_8;
    }

    if (v17 != v30)
    {
      goto LABEL_18;
    }

    (*v38)(v16, v2);
    v23 = *v16;
    v24 = [v23 objectID];

    (*v37)(v7, v2);
    v22 = v41;
    *v41 = v24;
    v19 = v32;
    v8 = v34;
LABEL_11:
    (*v36)(v22, v19, v8);
    v48 = v14;
    v25 = v8;
    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_21D18F62C((v26 > 1), v27 + 1, 1);
      v14 = v48;
    }

    ++v13;
    *(v14 + 16) = v27 + 1;
    (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v22, v25);
    v8 = v25;
    v3 = v45;
    a1 = v46;
    if (v44 == v13)
    {

      return v14;
    }
  }

  __break(1u);
LABEL_18:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

void *Array<A>.appending(lists:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = [v7 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = Array<A>.appendingListsOrCustomSmartLists(with:)(v3, a2);

  return v9;
}

{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 28;
      v8 = v7;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = Array<A>.appendingListsOrCustomSmartLists(with:)(v3, a2);

  return v9;
}

void *Array<A>.appendingListsOrCustomSmartLists(with:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFB1BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - v9);
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_16:
    v27 = a2;
    sub_21DBF8E0C();
    sub_21D5635FC(v12);
    return v27;
  }

  v24 = a1;
  v27 = MEMORY[0x277D84F90];
  result = sub_21D18F62C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v23[0] = a2;
    v12 = v27;
    v14 = v24;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v26 = *MEMORY[0x277D45A08];
      v25 = v5 + 32;
      do
      {
        *v10 = MEMORY[0x223D44740](v15, v14);
        (*(v5 + 104))(v10, v26, v4);
        v27 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21D18F62C((v16 > 1), v17 + 1, 1);
          v14 = v24;
          v12 = v27;
        }

        ++v15;
        *(v12 + 16) = v17 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
      }

      while (v11 != v15);
    }

    else
    {
      v18 = (v24 + 32);
      v26 = *MEMORY[0x277D45A08];
      v24 = *(v5 + 104);
      v25 = v5 + 104;
      v23[1] = v5 + 32;
      do
      {
        v19 = *v18;
        *v7 = *v18;
        (v24)(v7, v26, v4);
        v27 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        v22 = v19;
        if (v21 >= v20 >> 1)
        {
          sub_21D18F62C((v20 > 1), v21 + 1, 1);
          v12 = v27;
        }

        *(v12 + 16) = v21 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
        ++v18;
        --v11;
      }

      while (v11);
    }

    a2 = v23[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removing(lists:)(uint64_t a1, uint64_t a2)
{
  return sub_21D970EC4(a1, a2, &qword_27CE641A8, &qword_21DC32EA8, &qword_27CE641B0, sub_21D2079D0);
}

{
  return sub_21D970EC4(a1, a2, &qword_27CE61C70, &unk_21DC29A50, &qword_27CE61C78, sub_21D1574EC);
}

uint64_t Array<A>.removingListsOrCustomSmartLists(with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFB1BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = (v37 - v9);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = v37 - v11;
  v49 = *(a2 + 16);
  if (v49)
  {
    v14 = 0;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v47 = a2 + v42;
    v48 = v16;
    v52 = *(v15 + 56);
    v46 = (v15 + 72);
    v45 = *MEMORY[0x277D45A00];
    v40 = *MEMORY[0x277D45A08];
    v38 = a1 & 0xC000000000000001;
    v39 = (v15 + 80);
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v37[2] = v17;
    v41 = (v15 - 8);
    v50 = a1 + 56;
    v51 = (v15 + 16);
    v18 = MEMORY[0x277D84F90];
    v19 = v43;
    v44 = v37 - v11;
    v37[0] = v7;
    v37[1] = v15;
    while (1)
    {
      v20 = v48;
      (v48)(v13, v47 + v52 * v14, v4, v12);
      v20(v19, v13, v4);
      v21 = (*v46)(v19, v4);
      if (v21 == v45)
      {
        break;
      }

      if (v21 != v40)
      {
        result = sub_21DBFC63C();
        __break(1u);
        return result;
      }

      (*v39)(v19, v4);
      v22 = *v19;
      if (v38)
      {
        v23 = v22;
        v24 = sub_21DBFBDCC();

        v19 = v43;
        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(a1 + 16))
        {

          goto LABEL_21;
        }

        sub_21D37FB1C();
        v25 = sub_21DBFB62C();
        v26 = a1;
        v27 = -1 << *(a1 + 32);
        v28 = v25 & ~v27;
        if (((*(v50 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
LABEL_19:

          a1 = v26;
          v7 = v37[0];
          v19 = v43;
          v13 = v44;
          goto LABEL_21;
        }

        v29 = ~v27;
        while (1)
        {
          v30 = *(*(v26 + 48) + 8 * v28);
          v31 = sub_21DBFB63C();

          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v50 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v26;
        v7 = v37[0];
        v19 = v43;
        v13 = v44;
      }

      (*v41)(v13, v4);
LABEL_7:
      if (++v14 == v49)
      {
        return v18;
      }
    }

    (*v41)(v19, v4);
LABEL_21:
    v32 = *v51;
    (*v51)(v7, v13, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D18F62C(0, *(v18 + 16) + 1, 1);
      v19 = v43;
      v18 = v53;
    }

    v35 = *(v18 + 16);
    v34 = *(v18 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_21D18F62C((v34 > 1), v35 + 1, 1);
      v19 = v43;
      v18 = v53;
    }

    *(v18 + 16) = v35 + 1;
    v32((v18 + v42 + v35 * v52), v7, v4);
    v13 = v44;
    goto LABEL_7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D970EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21D37FB1C();
  sub_21D0D9418(a5, a3, a4);
  sub_21D183A0C();
  v10 = sub_21DBFA49C();
  v11 = Array<A>.removingListsOrCustomSmartLists(with:)(v10, a2);

  return v11;
}

uint64_t sub_21D970F8C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void TTRMoveRemindersToListInteractorCapability.move(remindersWithIDs:to:)(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = v4;
  sub_21D971CE0(a1, &v5, 0, 0, a3, a4);
}

unint64_t sub_21D971010(unint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v83 = a4;
  v86[5] = *MEMORY[0x277D85DE8];
  v81 = sub_21DBF563C();
  v13 = *(v81 - 8);
  *&v14 = MEMORY[0x28223BE20](v81).n128_u64[0];
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 customContext];
  if (!v16 || (v17 = v16, v18 = sub_21DBFB4FC(), v17, (v82 = v18) == 0))
  {
    if (qword_27CE56E90 == -1)
    {
LABEL_17:
      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE641B8);
      v26 = a2;
      v27 = sub_21DBF84AC();
      v28 = sub_21DBFAECC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = [v26 objectID];
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&dword_21D0C9000, v27, v28, "Passed smart list that is not a custom smart {listID: %@}", v29, 0xCu);
        sub_21D0CF7E0(v30, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v30, -1, -1);
        MEMORY[0x223D46520](v29, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  v78 = a2;
  v79 = a3;
  v74 = a5;
  v75 = a6;
  v76 = v7;
  v86[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v19 = sub_21DBFBD7C();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v21 = 0;
  a6 = (a1 & 0xC000000000000001);
  do
  {
    if (a6)
    {
      v22 = MEMORY[0x223D44740](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v7 = v22;
    a2 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v23 = [v22 account];
    v24 = [v23 capabilities];

    v17 = [v24 supportsCustomSmartLists];
    if (v17)
    {
      v17 = v86;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v21;
  }

  while (a2 != v19);
  v33 = v86[0];
  v20 = MEMORY[0x277D84F90];
LABEL_22:
  v77 = v13;
  if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
  {
    v34 = sub_21DBFBD7C();
    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_25:
    v86[0] = v20;
    sub_21DBFC01C();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x223D44740](v7, v33);
        }

        else
        {
          v35 = *(v33 + 8 * v7 + 32);
        }

        v36 = v35;
        v7 = (v7 + 1);
        v37 = [v79 updateReminder_];

        v17 = v86;
        sub_21DBFBFEC();
        a6 = *(v86[0] + 2);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v34 != v7);

      v38 = v86[0];
      v13 = v77;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_54;
  }

  v34 = *(v33 + 16);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_37:

  v38 = MEMORY[0x277D84F90];
LABEL_38:
  v84 = v38;
  v86[0] = v20;
  if (v19)
  {
    v39 = 0;
    a6 = (a1 & 0xC000000000000001);
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a6)
      {
        v40 = MEMORY[0x223D44740](v39, a1);
      }

      else
      {
        if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v40 = *(a1 + 8 * v39 + 32);
      }

      v34 = v40;
      v41 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v42 = [v40 account];
      v7 = [v42 capabilities];

      v17 = [v7 supportsCustomSmartLists];
      if (v17)
      {
      }

      else
      {
        v17 = v86;
        sub_21DBFBFEC();
        v7 = *(v86[0] + 2);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v39;
      if (v41 == v19)
      {
        v20 = v86[0];
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_21DBFBD7C())
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_50:
    v34 = v78;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if (!*(v20 + 16))
    {
LABEL_72:

      goto LABEL_73;
    }
  }

  if (qword_27CE56E90 != -1)
  {
    goto LABEL_86;
  }

LABEL_54:
  v43 = sub_21DBF84BC();
  v44 = __swift_project_value_buffer(v43, qword_27CE641B8);
  v32 = v34;

  v19 = sub_21DBF84AC();
  LOBYTE(v7) = sub_21DBFAECC();

  if (!os_log_type_enabled(v19, v7))
  {

    goto LABEL_60;
  }

  v45 = swift_slowAlloc();
  a6 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v86[0] = v34;
  *v45 = 138412546;
  v17 = &off_278331000;
  v46 = [v32 objectID];
  *(v45 + 4) = v46;
  *a6 = v46;
  *(v45 + 12) = 2080;
  v73 = v44;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_88;
  }

  if (!*(v20 + 16))
  {
    __break(1u);
  }

  v47 = a6;
  v48 = v34;
  v49 = *(v20 + 32);
  while (2)
  {
    v50 = v49;
    v51 = [v49 v17[425]];

    v85[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0, &qword_21DC18C30);
    v52 = sub_21DBFBA5C();
    v54 = v53;

    v55 = sub_21D0CDFB4(v52, v54, v86);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_21D0C9000, v19, v7, "Unexpected attempt to add reminders not supporting CSL to a CSL {cslID: %@, reminders.first.objectID: %s}", v45, 0x16u);
    sub_21D0CF7E0(v47, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D46520](v48, -1, -1);
    MEMORY[0x223D46520](v45, -1, -1);

    v13 = v77;
    v44 = v73;
LABEL_60:
    a6 = v79;
    v56 = [v79 store];
    v7 = [v32 accountID];
    v86[0] = 0;
    v34 = [v56 fetchDefaultListRequiringCloudKitAccountWithAccountID:v7 error:v86];

    if (v86[0])
    {
      v57 = v86[0];

      swift_willThrow();
      v34 = v57;
      v17 = v44;
      v7 = sub_21DBF84AC();
      v58 = sub_21DBFAEBC();

      if (os_log_type_enabled(v7, v58))
      {
        v59 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v86[0] = v19;
        *v59 = 136315138;
        swift_getErrorValue();
        v60 = sub_21DBFC74C();
        v17 = v61;
        a6 = sub_21D0CDFB4(v60, v61, v86);

        *(v59 + 4) = a6;
        _os_log_impl(&dword_21D0C9000, v7, v58, "unable to fetch default CloudKit list because %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223D46520](v19, -1, -1);
        MEMORY[0x223D46520](v59, -1, -1);
      }

      else
      {
      }

      goto LABEL_73;
    }

    if (v34)
    {
      a6 = sub_21D9724B8(v20, v34, a6, v83, v74, v75);
      v79 = v62;

      v17 = &v84;
      sub_21D562380(a6);
    }

    else
    {

      v34 = sub_21DBF84AC();
      v17 = sub_21DBFAEBC();
      if (os_log_type_enabled(v34, v17))
      {
        v7 = swift_slowAlloc();
        LOWORD(v7->isa) = 0;
        _os_log_impl(&dword_21D0C9000, v34, v17, "No available default CloudKit list", v7, 2u);
        MEMORY[0x223D46520](v7, -1, -1);
      }

LABEL_73:
      v79 = 0;
    }

    v32 = v84;
    if (v84 >> 62)
    {
      v45 = sub_21DBFBD7C();
      if (!v45)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v45 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_83;
      }
    }

    if (v45 < 1)
    {
      __break(1u);
LABEL_88:
      v47 = a6;
      v48 = v34;
      v49 = MEMORY[0x223D44740](0, v20);
      continue;
    }

    break;
  }

  v63 = 0;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x223D44740](v63, v32);
    }

    else
    {
      v64 = *(v32 + 8 * v63 + 32);
    }

    v65 = v64;
    ++v63;
    sub_21D1826C4(v83, v86);
    sub_21D1826C4(v86, v85);
    type metadata accessor for TTRReminderEditor();
    v66 = swift_allocObject();
    *(v66 + 72) = 0;
    *(v66 + 16) = v65;
    sub_21D1826C4(v85, v66 + 24);
    *(v66 + 64) = 0;
    v67 = v65;
    v68 = [v67 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v85, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v86, &unk_27CE60D80, &unk_21DC093F0);
    v69 = *(v66 + 72);
    *(v66 + 72) = v68;

    v70 = v80;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.edit(toMatch:now:)(v82, v70);

    (*(v13 + 8))(v70, v81);
  }

  while (v45 != v63);
LABEL_83:

  return v32;
}