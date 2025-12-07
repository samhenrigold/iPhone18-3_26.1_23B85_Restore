_BYTE *_s18iOSListCasesInItemOwta(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(a2, 1, v20))
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1, a2, v27);
          a1[*(v20 + 20)] = a2[*(v20 + 20)];
          (*(v21 + 56))(a1, 0, 1, v20);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v28 + 20)] = *&a2[*(v28 + 20)];
        goto LABEL_90;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_33;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(a2, 1, v10))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v12 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v29 = *(v10 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          (*(v11 + 56))(a1, 0, 1, v10);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &a1[v31];
        v33 = &a2[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_90;
      }

      goto LABEL_33;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        goto LABEL_30;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_60:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&a1[v13], &a2[v13], v35);
        swift_storeEnumTagMultiPayload();
LABEL_89:
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
        goto LABEL_90;
      }

LABEL_88:
      memcpy(&a1[v13], &a2[v13], *(v15 + 64));
      goto LABEL_89;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

LABEL_30:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_90;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_10:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_68:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = v39[3];
      v38[2] = v39[2];
      v38[3] = v40;
      v41 = v39[1];
      *v38 = *v39;
      v38[1] = v41;
      *(v38 + 106) = *(v39 + 106);
      v42 = v39[6];
      v38[5] = v39[5];
      v38[6] = v42;
      v38[4] = v39[4];
      a1[v36[6]] = a2[v36[6]];
      a1[v36[7]] = a2[v36[7]];
      a1[v36[8]] = a2[v36[8]];
      a1[v36[9]] = a2[v36[9]];
      a1[v36[10]] = a2[v36[10]];
      *&a1[v36[11]] = *&a2[v36[11]];
      goto LABEL_90;
    }

LABEL_67:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_68;
  }

LABEL_33:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

uint64_t sub_21D701E34(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRRemindersListViewModel.HashtagsState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TTRTemplatePublicLinkData(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TTRRemindersListTips(319);
          if (v6 <= 0x3F)
          {
            swift_initEnumMetadataMultiPayload();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *_s20MacOSListCasesInItemOwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a2;
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
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v19 = *v3;
        *a1 = *v3;
        v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v11 = *(v10 - 8);
        v20 = *(v11 + 48);
        v21 = v19;
        if (v20(&v3[v9], 1, v10))
        {
LABEL_19:
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(&a1[v9], &v3[v9], *(*(v22 - 8) + 64));
          goto LABEL_117;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_115;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_115;
          }

          goto LABEL_101;
        }

        if (v30 > 2)
        {
          break;
        }

        if (v30 == 1)
        {
          goto LABEL_101;
        }

        if (v30 != 2)
        {
          goto LABEL_115;
        }

        break;
      case 4:
        v27 = *v3;
        *a1 = *v3;
        v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v11 = *(v10 - 8);
        v28 = *(v11 + 48);
        v29 = v27;
        if (v28(&v3[v9], 1, v10))
        {
          goto LABEL_19;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 > 4)
        {
          if (v32 <= 7)
          {
            if (v32 == 5 || v32 == 6)
            {
              break;
            }

            goto LABEL_115;
          }

          if (v32 != 8 && v32 != 9)
          {
            goto LABEL_115;
          }

          goto LABEL_101;
        }

        if (v32 <= 2)
        {
          if (v32 != 1)
          {
            if (v32 == 2)
            {
              break;
            }

            goto LABEL_115;
          }

LABEL_101:
          v82 = *&v3[v9];
          *&a1[v9] = v82;
          v83 = v82;
          swift_storeEnumTagMultiPayload();
LABEL_116:
          (*(v11 + 56))(&a1[v9], 0, 1, v10);
          goto LABEL_117;
        }

        break;
      case 5:
        *a1 = *v3;
        a1[8] = v3[8];
        *(a1 + 9) = *(v3 + 9);
        v15 = *(v3 + 2);
        *(a1 + 2) = v15;
        v16 = v15;
LABEL_117:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        goto LABEL_20;
    }

LABEL_102:
    v84 = sub_21DBF563C();
    (*(*(v84 - 8) + 16))(&a1[v9], &v3[v9], v84);
    swift_storeEnumTagMultiPayload();
    goto LABEL_116;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 4)
      {
        if (v18 > 2)
        {
LABEL_53:
          v33 = sub_21DBF563C();
          (*(*(v33 - 8) + 16))(a1, v3, v33);
          swift_storeEnumTagMultiPayload();
          goto LABEL_80;
        }

        if (v18 != 1)
        {
          if (v18 == 2)
          {
            goto LABEL_53;
          }

          goto LABEL_79;
        }

LABEL_56:
        v34 = *v3;
        *a1 = *v3;
        v35 = v34;
        swift_storeEnumTagMultiPayload();
        goto LABEL_80;
      }

      if (v18 > 7)
      {
        if (v18 == 8 || v18 == 9)
        {
          goto LABEL_56;
        }
      }

      else if (v18 == 5 || v18 == 6)
      {
        goto LABEL_53;
      }

LABEL_79:
      memcpy(a1, v3, *(*(v17 - 8) + 64));
LABEL_80:
      v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v40 = v39[5];
      v41 = &a1[v40];
      v42 = &v3[v40];
      v43 = *&v3[v40 + 8];
      if (v43)
      {
        v85 = v3;
        v87 = a1;
        *v41 = *v42;
        *(v41 + 1) = v43;
        v44 = *(v42 + 2);
        v45 = *(v42 + 3);
        v46 = *(v42 + 4);
        v47 = *(v42 + 5);
        v49 = *(v42 + 6);
        v48 = *(v42 + 7);
        v50 = v42[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v44, v45, v46, v47, v49, v48, v50);
        *(v41 + 2) = v44;
        *(v41 + 3) = v45;
        *(v41 + 4) = v46;
        *(v41 + 5) = v47;
        *(v41 + 6) = v49;
        *(v41 + 7) = v48;
        v41[64] = v50;
        *(v41 + 65) = *(v42 + 65);
        v51 = v42[120];
        if (v51 == 255)
        {
          *(v41 + 72) = *(v42 + 72);
          *(v41 + 88) = *(v42 + 88);
          *(v41 + 104) = *(v42 + 104);
          v41[120] = v42[120];
        }

        else
        {
          v52 = *(v42 + 9);
          v53 = *(v42 + 10);
          v54 = *(v42 + 11);
          v55 = *(v42 + 12);
          v56 = *(v42 + 13);
          v57 = *(v42 + 14);
          v58 = v51 & 1;
          sub_21D0FB960(v52, v53, v54, v55, v56, v57, v51 & 1);
          *(v41 + 9) = v52;
          *(v41 + 10) = v53;
          *(v41 + 11) = v54;
          *(v41 + 12) = v55;
          *(v41 + 13) = v56;
          *(v41 + 14) = v57;
          v41[120] = v58;
        }

        a1 = v87;
        v41[121] = v42[121];
        v3 = v85;
        goto LABEL_86;
      }

      goto LABEL_83;
    case 1:
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 4)
      {
        if (v26 > 2)
        {
LABEL_57:
          v36 = sub_21DBF563C();
          (*(*(v36 - 8) + 16))(a1, v3, v36);
          swift_storeEnumTagMultiPayload();
          goto LABEL_88;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_57;
          }

          goto LABEL_87;
        }

LABEL_60:
        v37 = *v3;
        *a1 = *v3;
        v38 = v37;
        swift_storeEnumTagMultiPayload();
        goto LABEL_88;
      }

      if (v26 > 7)
      {
        if (v26 == 8 || v26 == 9)
        {
          goto LABEL_60;
        }
      }

      else if (v26 == 5 || v26 == 6)
      {
        goto LABEL_57;
      }

LABEL_87:
      memcpy(a1, v3, *(*(v25 - 8) + 64));
LABEL_88:
      v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v65 = v39[5];
      v41 = &a1[v65];
      v42 = &v3[v65];
      v66 = *&v3[v65 + 8];
      if (v66)
      {
        v86 = v3;
        v88 = a1;
        *v41 = *v42;
        *(v41 + 1) = v66;
        v67 = *(v42 + 2);
        v68 = *(v42 + 3);
        v69 = *(v42 + 4);
        v70 = *(v42 + 5);
        v72 = *(v42 + 6);
        v71 = *(v42 + 7);
        v73 = v42[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v69, v70, v72, v71, v73);
        *(v41 + 2) = v67;
        *(v41 + 3) = v68;
        *(v41 + 4) = v69;
        *(v41 + 5) = v70;
        *(v41 + 6) = v72;
        *(v41 + 7) = v71;
        v41[64] = v73;
        *(v41 + 65) = *(v42 + 65);
        v74 = v42[120];
        if (v74 == 255)
        {
          *(v41 + 72) = *(v42 + 72);
          *(v41 + 88) = *(v42 + 88);
          *(v41 + 104) = *(v42 + 104);
          v41[120] = v42[120];
        }

        else
        {
          v75 = *(v42 + 9);
          v76 = *(v42 + 10);
          v77 = *(v42 + 11);
          v78 = *(v42 + 12);
          v79 = *(v42 + 13);
          v80 = *(v42 + 14);
          v81 = v74 & 1;
          sub_21D0FB960(v75, v76, v77, v78, v79, v80, v74 & 1);
          *(v41 + 9) = v75;
          *(v41 + 10) = v76;
          *(v41 + 11) = v77;
          *(v41 + 12) = v78;
          *(v41 + 13) = v79;
          *(v41 + 14) = v80;
          v41[120] = v81;
        }

        a1 = v88;
        v41[121] = v42[121];
        v3 = v86;
        goto LABEL_86;
      }

LABEL_83:
      v59 = *(v42 + 5);
      *(v41 + 4) = *(v42 + 4);
      *(v41 + 5) = v59;
      *(v41 + 6) = *(v42 + 6);
      *(v41 + 106) = *(v42 + 106);
      v60 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v60;
      v61 = *(v42 + 3);
      *(v41 + 2) = *(v42 + 2);
      *(v41 + 3) = v61;
LABEL_86:
      a1[v39[6]] = v3[v39[6]];
      a1[v39[7]] = v3[v39[7]];
      a1[v39[8]] = v3[v39[8]];
      a1[v39[9]] = v3[v39[9]];
      a1[v39[10]] = v3[v39[10]];
      v62 = v39[11];
      v63 = *&v3[v62];
      *&a1[v62] = v63;
      v64 = v63;
      goto LABEL_117;
    case 2:
      v8 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(&v3[v9], 1, v10))
      {
        goto LABEL_19;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 > 4)
      {
        if (v31 <= 7)
        {
          if (v31 == 5 || v31 == 6)
          {
            goto LABEL_102;
          }

          goto LABEL_115;
        }

        if (v31 != 8 && v31 != 9)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v31 > 2)
        {
          goto LABEL_102;
        }

        if (v31 != 1)
        {
          if (v31 == 2)
          {
            goto LABEL_102;
          }

LABEL_115:
          memcpy(&a1[v9], &v3[v9], *(v11 + 64));
          goto LABEL_116;
        }
      }

      goto LABEL_101;
  }

LABEL_20:
  v23 = *(v6 + 64);

  return memcpy(a1, v3, v23);
}

void _s20MacOSListCasesInItemOwxx(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        return;
      }

      v4 = *(a1 + 16);
      goto LABEL_37;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload < 2)
  {
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_29;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_33:
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v11 = a1 + *(v10 + 20);
          if (*(v11 + 8))
          {

            sub_21D179EF0(*(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64));
            v12 = *(v11 + 120);
            if (v12 != 255)
            {
              sub_21D1078C0(*(v11 + 72), *(v11 + 80), *(v11 + 88), *(v11 + 96), *(v11 + 104), *(v11 + 112), v12 & 1);
            }
          }

          v4 = *(a1 + *(v10 + 44));
          goto LABEL_37;
        }

LABEL_29:
        v9 = sub_21DBF563C();
        (*(*(v9 - 8) + 8))(a1, v9);
        goto LABEL_33;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 2)
  {
    return;
  }

LABEL_9:

  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v6 - 8) + 48))(a1 + v5, 1, v6))
  {
    return;
  }

  v8 = swift_getEnumCaseMultiPayload();
  if (v8 > 4)
  {
    if (v8 <= 7)
    {
      if (v8 != 5 && v8 != 6)
      {
        return;
      }

      goto LABEL_40;
    }

    if (v8 != 8 && v8 != 9)
    {
      return;
    }
  }

  else
  {
    if (v8 > 2)
    {
LABEL_40:
      v13 = sub_21DBF563C();
      v14 = *(*(v13 - 8) + 8);

      v14(a1 + v5, v13);
      return;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  v4 = *(a1 + v5);
LABEL_37:
}

char *_s20MacOSListCasesInItemOwcp(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *a2;
        *a1 = *a2;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v18 = *(v10 + 48);
        v19 = v17;
        if (v18(&a2[v8], 1, v9))
        {
LABEL_17:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(&a1[v8], &a2[v8], *(*(v20 - 8) + 64));
          goto LABEL_115;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 > 4)
        {
          if (v28 <= 7)
          {
            if (v28 == 5 || v28 == 6)
            {
              break;
            }

            goto LABEL_113;
          }

          if (v28 != 8 && v28 != 9)
          {
            goto LABEL_113;
          }

          goto LABEL_99;
        }

        if (v28 > 2)
        {
          break;
        }

        if (v28 == 1)
        {
          goto LABEL_99;
        }

        if (v28 != 2)
        {
          goto LABEL_113;
        }

        break;
      case 4:
        v25 = *a2;
        *a1 = *a2;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v26 = *(v10 + 48);
        v27 = v25;
        if (v26(&a2[v8], 1, v9))
        {
          goto LABEL_17;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_113;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_113;
          }

          goto LABEL_99;
        }

        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            if (v30 == 2)
            {
              break;
            }

            goto LABEL_113;
          }

LABEL_99:
          v80 = *&a2[v8];
          *&a1[v8] = v80;
          v81 = v80;
          swift_storeEnumTagMultiPayload();
LABEL_114:
          (*(v10 + 56))(&a1[v8], 0, 1, v9);
          goto LABEL_115;
        }

        break;
      case 5:
        *a1 = *a2;
        a1[8] = a2[8];
        *(a1 + 9) = *(a2 + 9);
        v13 = *(a2 + 2);
        *(a1 + 2) = v13;
        v14 = v13;
LABEL_115:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        goto LABEL_18;
    }

LABEL_100:
    v82 = sub_21DBF563C();
    (*(*(v82 - 8) + 16))(&a1[v8], &a2[v8], v82);
    swift_storeEnumTagMultiPayload();
    goto LABEL_114;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_51:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 16))(a1, a2, v31);
          swift_storeEnumTagMultiPayload();
          goto LABEL_78;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_51;
          }

          goto LABEL_77;
        }

LABEL_54:
        v32 = *a2;
        *a1 = *a2;
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        goto LABEL_78;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_54;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_51;
      }

LABEL_77:
      memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_78:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v38 = v37[5];
      v39 = &a1[v38];
      v40 = &a2[v38];
      v41 = *&a2[v38 + 8];
      if (v41)
      {
        v83 = a2;
        v85 = a1;
        *v39 = *v40;
        *(v39 + 1) = v41;
        v42 = *(v40 + 2);
        v43 = *(v40 + 3);
        v44 = *(v40 + 4);
        v45 = *(v40 + 5);
        v46 = *(v40 + 6);
        v47 = *(v40 + 7);
        v48 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v42, v43, v44, v45, v46, v47, v48);
        *(v39 + 2) = v42;
        *(v39 + 3) = v43;
        *(v39 + 4) = v44;
        *(v39 + 5) = v45;
        *(v39 + 6) = v46;
        *(v39 + 7) = v47;
        v39[64] = v48;
        *(v39 + 65) = *(v40 + 65);
        v49 = v40[120];
        if (v49 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v50 = *(v40 + 9);
          v51 = *(v40 + 10);
          v52 = *(v40 + 11);
          v53 = *(v40 + 12);
          v54 = *(v40 + 13);
          v55 = *(v40 + 14);
          v56 = v49 & 1;
          sub_21D0FB960(v50, v51, v52, v53, v54, v55, v49 & 1);
          *(v39 + 9) = v50;
          *(v39 + 10) = v51;
          *(v39 + 11) = v52;
          *(v39 + 12) = v53;
          *(v39 + 13) = v54;
          *(v39 + 14) = v55;
          v39[120] = v56;
        }

        a1 = v85;
        v39[121] = v40[121];
        a2 = v83;
        goto LABEL_84;
      }

      goto LABEL_81;
    case 1:
      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 4)
      {
        if (v24 > 2)
        {
LABEL_55:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(a1, a2, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_86;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_58:
        v35 = *a2;
        *a1 = *a2;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_86;
      }

      if (v24 > 7)
      {
        if (v24 == 8 || v24 == 9)
        {
          goto LABEL_58;
        }
      }

      else if (v24 == 5 || v24 == 6)
      {
        goto LABEL_55;
      }

LABEL_85:
      memcpy(a1, a2, *(*(v23 - 8) + 64));
LABEL_86:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v37[5];
      v39 = &a1[v63];
      v40 = &a2[v63];
      v64 = *&a2[v63 + 8];
      if (v64)
      {
        v84 = a2;
        v86 = a1;
        *v39 = *v40;
        *(v39 + 1) = v64;
        v65 = *(v40 + 2);
        v66 = *(v40 + 3);
        v67 = *(v40 + 4);
        v68 = *(v40 + 5);
        v69 = *(v40 + 6);
        v70 = *(v40 + 7);
        v71 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v39 + 2) = v65;
        *(v39 + 3) = v66;
        *(v39 + 4) = v67;
        *(v39 + 5) = v68;
        *(v39 + 6) = v69;
        *(v39 + 7) = v70;
        v39[64] = v71;
        *(v39 + 65) = *(v40 + 65);
        v72 = v40[120];
        if (v72 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v73 = *(v40 + 9);
          v74 = *(v40 + 10);
          v75 = *(v40 + 11);
          v76 = *(v40 + 12);
          v77 = *(v40 + 13);
          v78 = *(v40 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v39 + 9) = v73;
          *(v39 + 10) = v74;
          *(v39 + 11) = v75;
          *(v39 + 12) = v76;
          *(v39 + 13) = v77;
          *(v39 + 14) = v78;
          v39[120] = v79;
        }

        a1 = v86;
        v39[121] = v40[121];
        a2 = v84;
        goto LABEL_84;
      }

LABEL_81:
      v57 = *(v40 + 5);
      *(v39 + 4) = *(v40 + 4);
      *(v39 + 5) = v57;
      *(v39 + 6) = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      v58 = *(v40 + 1);
      *v39 = *v40;
      *(v39 + 1) = v58;
      v59 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v59;
LABEL_84:
      a1[v37[6]] = a2[v37[6]];
      a1[v37[7]] = a2[v37[7]];
      a1[v37[8]] = a2[v37[8]];
      a1[v37[9]] = a2[v37[9]];
      a1[v37[10]] = a2[v37[10]];
      v60 = v37[11];
      v61 = *&a2[v60];
      *&a1[v60] = v61;
      v62 = v61;
      goto LABEL_115;
    case 2:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(&a2[v8], 1, v9))
      {
        goto LABEL_17;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (v29 > 2)
        {
          goto LABEL_100;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_100;
          }

LABEL_113:
          memcpy(&a1[v8], &a2[v8], *(v10 + 64));
          goto LABEL_114;
        }
      }

      goto LABEL_99;
  }

LABEL_18:
  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

char *_s20MacOSListCasesInItemOwca(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *v5;
        *v3 = *v5;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v18 = *(v10 + 48);
        v19 = v17;
        if (v18(&v5[v8], 1, v9))
        {
LABEL_18:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(&v3[v8], &v5[v8], *(*(v20 - 8) + 64));
          goto LABEL_116;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 > 4)
        {
          if (v28 <= 7)
          {
            if (v28 == 5 || v28 == 6)
            {
              break;
            }

            goto LABEL_114;
          }

          if (v28 != 8 && v28 != 9)
          {
            goto LABEL_114;
          }

          goto LABEL_100;
        }

        if (v28 > 2)
        {
          break;
        }

        if (v28 == 1)
        {
          goto LABEL_100;
        }

        if (v28 != 2)
        {
          goto LABEL_114;
        }

        break;
      case 4:
        v25 = *v5;
        *v3 = *v5;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v26 = *(v10 + 48);
        v27 = v25;
        if (v26(&v5[v8], 1, v9))
        {
          goto LABEL_18;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_114;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_114;
          }

          goto LABEL_100;
        }

        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            if (v30 == 2)
            {
              break;
            }

            goto LABEL_114;
          }

LABEL_100:
          v87 = *&v5[v8];
          *&v3[v8] = v87;
          v88 = v87;
          swift_storeEnumTagMultiPayload();
LABEL_115:
          (*(v10 + 56))(&v3[v8], 0, 1, v9);
          goto LABEL_116;
        }

        break;
      case 5:
        *v3 = *v5;
        v3[8] = v5[8];
        v3[9] = v5[9];
        v3[10] = v5[10];
        v13 = *(v5 + 2);
        *(v3 + 2) = v13;
        v14 = v13;
LABEL_116:
        swift_storeEnumTagMultiPayload();
        return v3;
      default:
        goto LABEL_19;
    }

LABEL_101:
    v89 = sub_21DBF563C();
    (*(*(v89 - 8) + 16))(&v3[v8], &v5[v8], v89);
    swift_storeEnumTagMultiPayload();
    goto LABEL_115;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_52:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 16))(v3, v5, v31);
          swift_storeEnumTagMultiPayload();
          goto LABEL_79;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_52;
          }

          goto LABEL_78;
        }

LABEL_55:
        v32 = *v5;
        *v3 = *v5;
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_55;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_52;
      }

LABEL_78:
      memcpy(v3, v5, *(*(v15 - 8) + 64));
LABEL_79:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v38 = v37[5];
      v39 = &v3[v38];
      v40 = &v5[v38];
      if (*&v5[v38 + 8])
      {
        v90 = v5;
        v92 = v3;
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v41 = *(v40 + 2);
        v42 = *(v40 + 3);
        v43 = *(v40 + 4);
        v44 = *(v40 + 5);
        v46 = *(v40 + 6);
        v45 = *(v40 + 7);
        v47 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v41, v42, v43, v44, v46, v45, v47);
        *(v39 + 2) = v41;
        *(v39 + 3) = v42;
        *(v39 + 4) = v43;
        *(v39 + 5) = v44;
        *(v39 + 6) = v46;
        *(v39 + 7) = v45;
        v39[64] = v47;
        v39[65] = v40[65];
        v39[66] = v40[66];
        v39[67] = v40[67];
        v39[68] = v40[68];
        v48 = v40[120];
        if (v48 == 255)
        {
          v62 = *(v40 + 72);
          v63 = *(v40 + 88);
          v64 = *(v40 + 104);
          v39[120] = v40[120];
          *(v39 + 104) = v64;
          *(v39 + 88) = v63;
          *(v39 + 72) = v62;
        }

        else
        {
          v49 = *(v40 + 9);
          v50 = *(v40 + 10);
          v51 = *(v40 + 11);
          v52 = *(v40 + 12);
          v53 = *(v40 + 13);
          v54 = *(v40 + 14);
          v55 = v48 & 1;
          sub_21D0FB960(v49, v50, v51, v52, v53, v54, v48 & 1);
          *(v39 + 9) = v49;
          *(v39 + 10) = v50;
          *(v39 + 11) = v51;
          *(v39 + 12) = v52;
          *(v39 + 13) = v53;
          *(v39 + 14) = v54;
          v39[120] = v55;
        }

        v3 = v92;
        v39[121] = v40[121];
        v5 = v90;
        goto LABEL_85;
      }

      goto LABEL_82;
    case 1:
      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 4)
      {
        if (v24 > 2)
        {
LABEL_56:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(v3, v5, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_87;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_56;
          }

          goto LABEL_86;
        }

LABEL_59:
        v35 = *v5;
        *v3 = *v5;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_87;
      }

      if (v24 > 7)
      {
        if (v24 == 8 || v24 == 9)
        {
          goto LABEL_59;
        }
      }

      else if (v24 == 5 || v24 == 6)
      {
        goto LABEL_56;
      }

LABEL_86:
      memcpy(v3, v5, *(*(v23 - 8) + 64));
LABEL_87:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v68 = v37[5];
      v39 = &v3[v68];
      v40 = &v5[v68];
      if (*&v5[v68 + 8])
      {
        v91 = v5;
        v93 = v3;
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v69 = *(v40 + 2);
        v70 = *(v40 + 3);
        v71 = *(v40 + 4);
        v72 = *(v40 + 5);
        v74 = *(v40 + 6);
        v73 = *(v40 + 7);
        v75 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v69, v70, v71, v72, v74, v73, v75);
        *(v39 + 2) = v69;
        *(v39 + 3) = v70;
        *(v39 + 4) = v71;
        *(v39 + 5) = v72;
        *(v39 + 6) = v74;
        *(v39 + 7) = v73;
        v39[64] = v75;
        v39[65] = v40[65];
        v39[66] = v40[66];
        v39[67] = v40[67];
        v39[68] = v40[68];
        v76 = v40[120];
        if (v76 == 255)
        {
          v84 = *(v40 + 72);
          v85 = *(v40 + 88);
          v86 = *(v40 + 104);
          v39[120] = v40[120];
          *(v39 + 104) = v86;
          *(v39 + 88) = v85;
          *(v39 + 72) = v84;
        }

        else
        {
          v77 = *(v40 + 9);
          v78 = *(v40 + 10);
          v79 = *(v40 + 11);
          v80 = *(v40 + 12);
          v81 = *(v40 + 13);
          v82 = *(v40 + 14);
          v83 = v76 & 1;
          sub_21D0FB960(v77, v78, v79, v80, v81, v82, v76 & 1);
          *(v39 + 9) = v77;
          *(v39 + 10) = v78;
          *(v39 + 11) = v79;
          *(v39 + 12) = v80;
          *(v39 + 13) = v81;
          *(v39 + 14) = v82;
          v39[120] = v83;
        }

        v3 = v93;
        v39[121] = v40[121];
        v5 = v91;
        goto LABEL_85;
      }

LABEL_82:
      v56 = *v40;
      v57 = *(v40 + 1);
      v58 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v58;
      *v39 = v56;
      *(v39 + 1) = v57;
      v59 = *(v40 + 4);
      v60 = *(v40 + 5);
      v61 = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      *(v39 + 5) = v60;
      *(v39 + 6) = v61;
      *(v39 + 4) = v59;
LABEL_85:
      v3[v37[6]] = v5[v37[6]];
      v3[v37[7]] = v5[v37[7]];
      v3[v37[8]] = v5[v37[8]];
      v3[v37[9]] = v5[v37[9]];
      v3[v37[10]] = v5[v37[10]];
      v65 = v37[11];
      v66 = *&v5[v65];
      *&v3[v65] = v66;
      v67 = v66;
      goto LABEL_116;
    case 2:
      v7 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(&v5[v8], 1, v9))
      {
        goto LABEL_18;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_101;
          }

          goto LABEL_114;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v29 > 2)
        {
          goto LABEL_101;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_101;
          }

LABEL_114:
          memcpy(&v3[v8], &v5[v8], *(v10 + 64));
          goto LABEL_115;
        }
      }

      goto LABEL_100;
  }

LABEL_19:
  v21 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v21);
}

void *sub_21D705BAC(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 3)
      {
        if (v11 == 2 || v11 == 3)
        {
          goto LABEL_13;
        }
      }

      else if (v11 == 4 || v11 == 5 || v11 == 6)
      {
LABEL_13:
        v12 = sub_21DBF563C();
        (*(*(v12 - 8) + 32))(a1, a2, v12);
        swift_storeEnumTagMultiPayload();
LABEL_54:
        v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v22 = v21[5];
        v23 = (a1 + v22);
        v24 = (a2 + v22);
        v25 = v24[3];
        v23[2] = v24[2];
        v23[3] = v25;
        v26 = v24[1];
        *v23 = *v24;
        v23[1] = v26;
        *(v23 + 106) = *(v24 + 106);
        v27 = v24[6];
        v23[5] = v24[5];
        v23[6] = v27;
        v23[4] = v24[4];
        *(a1 + v21[6]) = *(a2 + v21[6]);
        *(a1 + v21[7]) = *(a2 + v21[7]);
        *(a1 + v21[8]) = *(a2 + v21[8]);
        *(a1 + v21[9]) = *(a2 + v21[9]);
        *(a1 + v21[10]) = *(a2 + v21[10]);
        *(a1 + v21[11]) = *(a2 + v21[11]);
        goto LABEL_76;
      }
    }

    else
    {
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
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
        goto LABEL_13;
      }
    }

    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_54;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        goto LABEL_17;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 <= 3)
      {
        if (v17 == 2 || v17 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v17 == 4 || v17 == 5 || v17 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    case 3:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
LABEL_17:
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
LABEL_76:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    case 4:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        goto LABEL_17;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 3)
      {
        if (v19 == 2 || v19 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v19 == 4 || v19 == 5 || v19 == 6)
      {
LABEL_46:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1 + v7, a2 + v7, v20);
        swift_storeEnumTagMultiPayload();
LABEL_75:
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
        goto LABEL_76;
      }

LABEL_74:
      memcpy(a1 + v7, a2 + v7, *(v9 + 64));
      goto LABEL_75;
  }

LABEL_23:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *sub_21D7069A0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_24;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 3)
      {
        if (v12 == 2 || v12 == 3)
        {
          goto LABEL_14;
        }
      }

      else if (v12 == 4 || v12 == 5 || v12 == 6)
      {
LABEL_14:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        swift_storeEnumTagMultiPayload();
LABEL_55:
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v23 = v22[5];
        v24 = (a1 + v23);
        v25 = (a2 + v23);
        v26 = v25[3];
        v24[2] = v25[2];
        v24[3] = v26;
        v27 = v25[1];
        *v24 = *v25;
        v24[1] = v27;
        *(v24 + 106) = *(v25 + 106);
        v28 = v25[6];
        v24[5] = v25[5];
        v24[6] = v28;
        v24[4] = v25[4];
        *(a1 + v22[6]) = *(a2 + v22[6]);
        *(a1 + v22[7]) = *(a2 + v22[7]);
        *(a1 + v22[8]) = *(a2 + v22[8]);
        *(a1 + v22[9]) = *(a2 + v22[9]);
        *(a1 + v22[10]) = *(a2 + v22[10]);
        *(a1 + v22[11]) = *(a2 + v22[11]);
        goto LABEL_77;
      }
    }

    else
    {
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_14;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
        goto LABEL_14;
      }
    }

    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_55;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_75;
    case 3:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
LABEL_18:
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v14 - 8) + 64));
LABEL_77:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 3)
      {
        if (v19 == 2 || v19 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v19 == 4 || v19 == 5 || v19 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_75;
    case 4:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 <= 3)
      {
        if (v20 == 2 || v20 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v20 == 4 || v20 == 5 || v20 == 6)
      {
LABEL_47:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 32))(a1 + v8, a2 + v8, v21);
        swift_storeEnumTagMultiPayload();
LABEL_76:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_77;
      }

LABEL_75:
      memcpy(a1 + v8, a2 + v8, *(v10 + 64));
      goto LABEL_76;
  }

LABEL_24:
  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21D707790(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void **_s16SectionCasesItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(v3, 1, v7))
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
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
        v14 = sub_21DBF563C();
        (*(*(v14 - 8) + 16))(a1, v3, v14);
        swift_storeEnumTagMultiPayload();
LABEL_23:
        v17 = v7[5];
        v18 = a1 + v17;
        v19 = v3 + v17;
        v20 = *(v3 + v17 + 8);
        if (v20)
        {
          v43 = v3;
          v44 = v8;
          v45 = v7;
          *v18 = *v19;
          *(v18 + 1) = v20;
          v21 = *(v19 + 2);
          v22 = *(v19 + 3);
          v23 = *(v19 + 4);
          v24 = *(v19 + 5);
          v25 = *(v19 + 6);
          v26 = *(v19 + 7);
          v27 = v19[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v21, v22, v23, v24, v25, v26, v27);
          *(v18 + 2) = v21;
          *(v18 + 3) = v22;
          *(v18 + 4) = v23;
          *(v18 + 5) = v24;
          *(v18 + 6) = v25;
          *(v18 + 7) = v26;
          v18[64] = v27;
          *(v18 + 65) = *(v19 + 65);
          v28 = v19[120];
          if (v28 == 255)
          {
            *(v18 + 72) = *(v19 + 72);
            *(v18 + 88) = *(v19 + 88);
            *(v18 + 104) = *(v19 + 104);
            v18[120] = v19[120];
          }

          else
          {
            v29 = *(v19 + 9);
            v30 = *(v19 + 10);
            v31 = *(v19 + 11);
            v32 = *(v19 + 12);
            v33 = *(v19 + 13);
            v34 = *(v19 + 14);
            v35 = v28 & 1;
            sub_21D0FB960(v29, v30, v31, v32, v33, v34, v28 & 1);
            *(v18 + 9) = v29;
            *(v18 + 10) = v30;
            *(v18 + 11) = v31;
            *(v18 + 12) = v32;
            *(v18 + 13) = v33;
            *(v18 + 14) = v34;
            v18[120] = v35;
          }

          v8 = v44;
          v7 = v45;
          v18[121] = v19[121];
          v3 = v43;
        }

        else
        {
          v36 = *(v19 + 5);
          *(v18 + 4) = *(v19 + 4);
          *(v18 + 5) = v36;
          *(v18 + 6) = *(v19 + 6);
          *(v18 + 106) = *(v19 + 106);
          v37 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v37;
          v38 = *(v19 + 3);
          *(v18 + 2) = *(v19 + 2);
          *(v18 + 3) = v38;
        }

        *(a1 + v7[6]) = *(v3 + v7[6]);
        *(a1 + v7[7]) = *(v3 + v7[7]);
        *(a1 + v7[8]) = *(v3 + v7[8]);
        *(a1 + v7[9]) = *(v3 + v7[9]);
        *(a1 + v7[10]) = *(v3 + v7[10]);
        v39 = v7[11];
        v40 = *(v3 + v39);
        *(a1 + v39) = v40;
        v41 = *(v8 + 56);
        v42 = v40;
        v41(a1, 0, 1, v7);
        return a1;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_15;
        }

LABEL_22:
        memcpy(a1, v3, *(*(v12 - 8) + 64));
        goto LABEL_23;
      }
    }

    v15 = *v3;
    *a1 = *v3;
    v16 = v15;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, v3, v9);
}

void _s16SectionCasesItemOwxx(id *a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  if ((*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_10:
    v4 = sub_21DBF563C();
    (*(*(v4 - 8) + 8))(a1, v4);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_10;
  }

LABEL_14:
  v5 = a1 + *(v2 + 20);
  if (*(v5 + 1))
  {

    sub_21D179EF0(*(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7), v5[64]);
    v6 = v5[120];
    if (v6 != 255)
    {
      sub_21D1078C0(*(v5 + 9), *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 14), v6 & 1);
    }
  }

  v7 = *(a1 + *(v2 + 44));
}

void **_s16SectionCasesItemOwcp(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_20;
    }

LABEL_16:
    v13 = *a2;
    *a1 = *a2;
    v14 = v13;
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_13;
      }

LABEL_20:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_13:
  v12 = sub_21DBF563C();
  (*(*(v12 - 8) + 16))(a1, a2, v12);
  swift_storeEnumTagMultiPayload();
LABEL_21:
  v15 = v6[5];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a2 + v15 + 8);
  if (v18)
  {
    v41 = v7;
    v42 = a2;
    v43 = a1;
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = *(v17 + 2);
    v20 = *(v17 + 3);
    v21 = *(v17 + 4);
    v22 = *(v17 + 5);
    v23 = *(v17 + 6);
    v24 = *(v17 + 7);
    v25 = v17[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v19, v20, v21, v22, v23, v24, v25);
    *(v16 + 2) = v19;
    *(v16 + 3) = v20;
    *(v16 + 4) = v21;
    *(v16 + 5) = v22;
    *(v16 + 6) = v23;
    *(v16 + 7) = v24;
    v16[64] = v25;
    *(v16 + 65) = *(v17 + 65);
    v26 = v17[120];
    if (v26 == 255)
    {
      *(v16 + 72) = *(v17 + 72);
      *(v16 + 88) = *(v17 + 88);
      *(v16 + 104) = *(v17 + 104);
      v16[120] = v17[120];
    }

    else
    {
      v27 = *(v17 + 9);
      v28 = *(v17 + 10);
      v29 = *(v17 + 11);
      v30 = *(v17 + 12);
      v31 = *(v17 + 13);
      v32 = *(v17 + 14);
      v33 = v26 & 1;
      sub_21D0FB960(v27, v28, v29, v30, v31, v32, v26 & 1);
      *(v16 + 9) = v27;
      *(v16 + 10) = v28;
      *(v16 + 11) = v29;
      *(v16 + 12) = v30;
      *(v16 + 13) = v31;
      *(v16 + 14) = v32;
      v16[120] = v33;
    }

    v7 = v41;
    a2 = v42;
    v16[121] = v17[121];
    a1 = v43;
  }

  else
  {
    v34 = *(v17 + 5);
    *(v16 + 4) = *(v17 + 4);
    *(v16 + 5) = v34;
    *(v16 + 6) = *(v17 + 6);
    *(v16 + 106) = *(v17 + 106);
    v35 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v35;
    v36 = *(v17 + 3);
    *(v16 + 2) = *(v17 + 2);
    *(v16 + 3) = v36;
  }

  *(a1 + v6[6]) = *(a2 + v6[6]);
  *(a1 + v6[7]) = *(a2 + v6[7]);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  *(a1 + v6[9]) = *(a2 + v6[9]);
  *(a1 + v6[10]) = *(a2 + v6[10]);
  v37 = v6[11];
  v38 = *(a2 + v37);
  *(a1 + v37) = v38;
  v39 = *(v7 + 56);
  v40 = v38;
  v39(a1, 0, 1, v6);
  return a1;
}

void **_s16SectionCasesItemOwca(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_10;
    }

    if (a1 == a2)
    {
LABEL_49:
      v54 = v6[5];
      v55 = a1 + v54;
      v56 = a2 + v54;
      v57 = *(a1 + v54 + 8);
      v58 = *(a2 + v54 + 8);
      if (v57)
      {
        if (v58)
        {
          v126 = a2;
          v128 = a1;
          *v55 = *v56;
          *(v55 + 1) = *(v56 + 1);
          sub_21DBF8E0C();

          v60 = *(v56 + 2);
          v59 = *(v56 + 3);
          v61 = *(v56 + 4);
          v62 = *(v56 + 5);
          v63 = *(v56 + 6);
          v64 = *(v56 + 7);
          v65 = v56[64];
          sub_21D2A7DB4(v60, v59, v61, v62, v63, v64, v65);
          v66 = *(v55 + 2);
          v67 = *(v55 + 3);
          v68 = *(v55 + 4);
          v69 = *(v55 + 5);
          v70 = *(v55 + 6);
          v71 = *(v55 + 7);
          *(v55 + 2) = v60;
          *(v55 + 3) = v59;
          *(v55 + 4) = v61;
          *(v55 + 5) = v62;
          *(v55 + 6) = v63;
          *(v55 + 7) = v64;
          v72 = v55[64];
          v55[64] = v65;
          sub_21D179EF0(v66, v67, v68, v69, v70, v71, v72);
          v55[65] = v56[65];
          v55[66] = v56[66];
          v55[67] = v56[67];
          v55[68] = v56[68];
          v73 = v56[120];
          if (v55[120] != 255)
          {
            if (v73 == 255)
            {
              sub_21D2E979C((v55 + 72));
              v117 = *(v56 + 88);
              v118 = *(v56 + 104);
              v119 = v56[120];
              *(v55 + 72) = *(v56 + 72);
              v55[120] = v119;
              *(v55 + 104) = v118;
              *(v55 + 88) = v117;
            }

            else
            {
              v75 = *(v56 + 9);
              v74 = *(v56 + 10);
              v76 = *(v56 + 11);
              v77 = *(v56 + 12);
              v78 = *(v56 + 13);
              v79 = *(v56 + 14);
              v80 = v73 & 1;
              sub_21D0FB960(v75, v74, v76, v77, v78, v79, v73 & 1);
              v81 = *(v55 + 9);
              v82 = *(v55 + 10);
              v83 = *(v55 + 11);
              v84 = *(v55 + 12);
              v85 = *(v55 + 13);
              v86 = *(v55 + 14);
              v87 = v55[120];
              *(v55 + 9) = v75;
              *(v55 + 10) = v74;
              *(v55 + 11) = v76;
              *(v55 + 12) = v77;
              *(v55 + 13) = v78;
              *(v55 + 14) = v79;
              v55[120] = v80;
              sub_21D1078C0(v81, v82, v83, v84, v85, v86, v87);
            }

LABEL_62:
            a2 = v126;
            a1 = v128;
            v55[121] = v56[121];
            goto LABEL_63;
          }

LABEL_56:
          if (v73 == 255)
          {
            v108 = *(v56 + 72);
            v109 = *(v56 + 88);
            v110 = *(v56 + 104);
            v55[120] = v56[120];
            *(v55 + 104) = v110;
            *(v55 + 88) = v109;
            *(v55 + 72) = v108;
          }

          else
          {
            v95 = *(v56 + 9);
            v96 = *(v56 + 10);
            v97 = *(v56 + 11);
            v98 = *(v56 + 12);
            v99 = *(v56 + 13);
            v100 = *(v56 + 14);
            v101 = v73 & 1;
            sub_21D0FB960(v95, v96, v97, v98, v99, v100, v73 & 1);
            *(v55 + 9) = v95;
            *(v55 + 10) = v96;
            *(v55 + 11) = v97;
            *(v55 + 12) = v98;
            *(v55 + 13) = v99;
            *(v55 + 14) = v100;
            v55[120] = v101;
          }

          goto LABEL_62;
        }

        sub_21D179E9C(v55);
        v102 = *(v56 + 3);
        v104 = *v56;
        v103 = *(v56 + 1);
        *(v55 + 2) = *(v56 + 2);
        *(v55 + 3) = v102;
        *v55 = v104;
        *(v55 + 1) = v103;
        v106 = *(v56 + 5);
        v105 = *(v56 + 6);
        v107 = *(v56 + 4);
        *(v55 + 106) = *(v56 + 106);
        *(v55 + 5) = v106;
        *(v55 + 6) = v105;
        *(v55 + 4) = v107;
      }

      else
      {
        if (v58)
        {
          v126 = a2;
          v128 = a1;
          *v55 = *v56;
          *(v55 + 1) = *(v56 + 1);
          v89 = *(v56 + 2);
          v88 = *(v56 + 3);
          v90 = *(v56 + 4);
          v91 = *(v56 + 5);
          v92 = *(v56 + 6);
          v93 = *(v56 + 7);
          v94 = v56[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v89, v88, v90, v91, v92, v93, v94);
          *(v55 + 2) = v89;
          *(v55 + 3) = v88;
          *(v55 + 4) = v90;
          *(v55 + 5) = v91;
          *(v55 + 6) = v92;
          *(v55 + 7) = v93;
          v55[64] = v94;
          v55[65] = v56[65];
          v55[66] = v56[66];
          v55[67] = v56[67];
          v55[68] = v56[68];
          v73 = v56[120];
          goto LABEL_56;
        }

        v111 = *v56;
        v112 = *(v56 + 1);
        v113 = *(v56 + 3);
        *(v55 + 2) = *(v56 + 2);
        *(v55 + 3) = v113;
        *v55 = v111;
        *(v55 + 1) = v112;
        v114 = *(v56 + 4);
        v115 = *(v56 + 5);
        v116 = *(v56 + 6);
        *(v55 + 106) = *(v56 + 106);
        *(v55 + 5) = v115;
        *(v55 + 6) = v116;
        *(v55 + 4) = v114;
      }

LABEL_63:
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      *(a1 + v6[8]) = *(a2 + v6[8]);
      *(a1 + v6[9]) = *(a2 + v6[9]);
      *(a1 + v6[10]) = *(a2 + v6[10]);
      v120 = v6[11];
      v121 = *(a1 + v120);
      v122 = *(a2 + v120);
      *(a1 + v120) = v122;
      v123 = v122;

      return a1;
    }

    sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_41:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_49;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_41;
        }

        goto LABEL_48;
      }

LABEL_44:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_44;
      }
    }

    else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
      goto LABEL_41;
    }

LABEL_48:
    memcpy(a1, a2, *(*(v15 - 8) + 64));
    goto LABEL_49;
  }

  if (!v10)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 == 5 || v12 == 6)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      if (v12 != 8 && v12 != 9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v12 > 2)
      {
LABEL_22:
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
LABEL_34:
        v20 = v6[5];
        v21 = a1 + v20;
        v22 = a2 + v20;
        if (*(a2 + v20 + 8))
        {
          v124 = v7;
          v125 = a2;
          v127 = a1;
          *v21 = *v22;
          *(v21 + 1) = *(v22 + 1);
          v23 = *(v22 + 2);
          v24 = *(v22 + 3);
          v25 = *(v22 + 4);
          v26 = *(v22 + 5);
          v27 = *(v22 + 6);
          v28 = *(v22 + 7);
          v29 = v22[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v23, v24, v25, v26, v27, v28, v29);
          *(v21 + 2) = v23;
          *(v21 + 3) = v24;
          *(v21 + 4) = v25;
          *(v21 + 5) = v26;
          *(v21 + 6) = v27;
          *(v21 + 7) = v28;
          v21[64] = v29;
          v21[65] = v22[65];
          v21[66] = v22[66];
          v21[67] = v22[67];
          v21[68] = v22[68];
          v30 = v22[120];
          if (v30 == 255)
          {
            v44 = *(v22 + 72);
            v45 = *(v22 + 88);
            v46 = *(v22 + 104);
            v21[120] = v22[120];
            *(v21 + 104) = v46;
            *(v21 + 88) = v45;
            *(v21 + 72) = v44;
          }

          else
          {
            v31 = *(v22 + 9);
            v32 = *(v22 + 10);
            v33 = *(v22 + 11);
            v34 = *(v22 + 12);
            v35 = *(v22 + 13);
            v36 = *(v22 + 14);
            v37 = v30 & 1;
            sub_21D0FB960(v31, v32, v33, v34, v35, v36, v30 & 1);
            *(v21 + 9) = v31;
            *(v21 + 10) = v32;
            *(v21 + 11) = v33;
            *(v21 + 12) = v34;
            *(v21 + 13) = v35;
            *(v21 + 14) = v36;
            v21[120] = v37;
          }

          v7 = v124;
          a2 = v125;
          v21[121] = v22[121];
          a1 = v127;
        }

        else
        {
          v38 = *v22;
          v39 = *(v22 + 1);
          v40 = *(v22 + 3);
          *(v21 + 2) = *(v22 + 2);
          *(v21 + 3) = v40;
          *v21 = v38;
          *(v21 + 1) = v39;
          v41 = *(v22 + 4);
          v42 = *(v22 + 5);
          v43 = *(v22 + 6);
          *(v21 + 106) = *(v22 + 106);
          *(v21 + 5) = v42;
          *(v21 + 6) = v43;
          *(v21 + 4) = v41;
        }

        *(a1 + v6[6]) = *(a2 + v6[6]);
        *(a1 + v6[7]) = *(a2 + v6[7]);
        *(a1 + v6[8]) = *(a2 + v6[8]);
        *(a1 + v6[9]) = *(a2 + v6[9]);
        *(a1 + v6[10]) = *(a2 + v6[10]);
        v47 = v6[11];
        v48 = *(a2 + v47);
        *(a1 + v47) = v48;
        v49 = *(v7 + 56);
        v50 = v48;
        v49(a1, 0, 1, v6);
        return a1;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          goto LABEL_22;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
        goto LABEL_34;
      }
    }

    v18 = *a2;
    *a1 = *a2;
    v19 = v18;
    swift_storeEnumTagMultiPayload();
    goto LABEL_34;
  }

LABEL_10:
  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *_s16SectionCasesItemOwtk(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(v6 - 1);
  if (!(*(v7 + 48))(a2, 1, v6))
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_9;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_9:
      v12 = sub_21DBF563C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      swift_storeEnumTagMultiPayload();
LABEL_17:
      v13 = v6[5];
      v14 = &a1[v13];
      v15 = &a2[v13];
      v16 = v15[1];
      *v14 = *v15;
      v14[1] = v16;
      v17 = v15[3];
      v14[2] = v15[2];
      v14[3] = v17;
      *(v14 + 106) = *(v15 + 106);
      v18 = v15[6];
      v14[5] = v15[5];
      v14[6] = v18;
      v14[4] = v15[4];
      a1[v6[6]] = a2[v6[6]];
      a1[v6[7]] = a2[v6[7]];
      a1[v6[8]] = a2[v6[8]];
      a1[v6[9]] = a2[v6[9]];
      a1[v6[10]] = a2[v6[10]];
      *&a1[v6[11]] = *&a2[v6[11]];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }

    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_17;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

char *_s16SectionCasesItemOwta(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_10;
    }

    if (a1 != a2)
    {
      sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
          goto LABEL_18;
        }
      }

      else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
LABEL_18:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        swift_storeEnumTagMultiPayload();
        goto LABEL_34;
      }

      memcpy(a1, a2, *(*(v16 - 8) + 64));
    }

LABEL_34:
    v25 = v6[5];
    v26 = &a1[v25];
    v27 = &a2[v25];
    if (*&a1[v25 + 8])
    {
      v28 = *(v27 + 1);
      if (v28)
      {
        *v26 = *v27;
        *(v26 + 1) = v28;

        v29 = v27[64];
        v30 = *(v26 + 2);
        v31 = *(v26 + 3);
        v32 = *(v26 + 4);
        v33 = *(v26 + 5);
        v34 = *(v26 + 6);
        v35 = *(v26 + 7);
        v36 = *(v27 + 2);
        *(v26 + 1) = *(v27 + 1);
        *(v26 + 2) = v36;
        *(v26 + 3) = *(v27 + 3);
        v37 = v26[64];
        v26[64] = v29;
        sub_21D179EF0(v30, v31, v32, v33, v34, v35, v37);
        *(v26 + 65) = *(v27 + 65);
        v26[67] = v27[67];
        v26[68] = v27[68];
        v38 = v26[120];
        if (v38 != 255)
        {
          v39 = v27[120];
          if (v39 != 255)
          {
            v40 = *(v26 + 9);
            v41 = *(v26 + 10);
            v42 = *(v26 + 11);
            v43 = *(v26 + 12);
            v44 = *(v26 + 13);
            v45 = *(v26 + 14);
            *(v26 + 72) = *(v27 + 72);
            *(v26 + 88) = *(v27 + 88);
            *(v26 + 104) = *(v27 + 104);
            v26[120] = v39 & 1;
            sub_21D1078C0(v40, v41, v42, v43, v44, v45, v38 & 1);
LABEL_43:
            v26[121] = v27[121];
            goto LABEL_44;
          }

          sub_21D2E979C((v26 + 72));
        }

        *(v26 + 72) = *(v27 + 72);
        *(v26 + 88) = *(v27 + 88);
        *(v26 + 104) = *(v27 + 104);
        v26[120] = v27[120];
        goto LABEL_43;
      }

      sub_21D179E9C(v26);
    }

    v46 = *(v27 + 5);
    *(v26 + 4) = *(v27 + 4);
    *(v26 + 5) = v46;
    *(v26 + 6) = *(v27 + 6);
    *(v26 + 106) = *(v27 + 106);
    v47 = *(v27 + 1);
    *v26 = *v27;
    *(v26 + 1) = v47;
    v48 = *(v27 + 3);
    *(v26 + 2) = *(v27 + 2);
    *(v26 + 3) = v48;
LABEL_44:
    a1[v6[6]] = a2[v6[6]];
    a1[v6[7]] = a2[v6[7]];
    a1[v6[8]] = a2[v6[8]];
    a1[v6[9]] = a2[v6[9]];
    a1[v6[10]] = a2[v6[10]];
    v49 = v6[11];
    v50 = *&a1[v49];
    *&a1[v49] = *&a2[v49];

    return a1;
  }

  if (!v10)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 <= 3)
    {
      if (v12 == 2 || v12 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v12 == 4 || v12 == 5 || v12 == 6)
    {
LABEL_7:
      v13 = sub_21DBF563C();
      (*(*(v13 - 8) + 32))(a1, a2, v13);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v19 = v6[5];
      v20 = &a1[v19];
      v21 = &a2[v19];
      v22 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v22;
      v23 = *(v21 + 3);
      *(v20 + 2) = *(v21 + 2);
      *(v20 + 3) = v23;
      *(v20 + 106) = *(v21 + 106);
      v24 = *(v21 + 6);
      *(v20 + 5) = *(v21 + 5);
      *(v20 + 6) = v24;
      *(v20 + 4) = *(v21 + 4);
      a1[v6[6]] = a2[v6[6]];
      a1[v6[7]] = a2[v6[7]];
      a1[v6[8]] = a2[v6[8]];
      a1[v6[9]] = a2[v6[9]];
      a1[v6[10]] = a2[v6[10]];
      *&a1[v6[11]] = *&a2[v6[11]];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }

    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_26;
  }

LABEL_10:
  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D709A7C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D709AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_21D709B54(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void **_s37SectionsContainersAndSectionCasesItemOwca(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 4)
    {
      if (v10 > 2)
      {
LABEL_29:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 16))(v3, v5, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

LABEL_32:
      v17 = *v5;
      *v3 = *v5;
      v18 = v17;
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    }

    if (v10 > 7)
    {
      if (v10 == 8 || v10 == 9)
      {
        goto LABEL_32;
      }
    }

    else if (v10 == 5 || v10 == 6)
    {
      goto LABEL_29;
    }

LABEL_46:
    memcpy(v3, v5, *(*(v9 - 8) + 64));
LABEL_47:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v39 = v19[5];
    v21 = v3 + v39;
    v22 = v5 + v39;
    if (*(v5 + v39 + 8))
    {
      v69 = v3;
      v71 = v5;
      *v21 = *v22;
      *(v21 + 1) = *(v22 + 1);
      v40 = *(v22 + 2);
      v41 = *(v22 + 3);
      v42 = *(v22 + 4);
      v43 = *(v22 + 5);
      v44 = *(v22 + 6);
      v45 = *(v22 + 7);
      v46 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v40, v41, v42, v43, v44, v45, v46);
      *(v21 + 2) = v40;
      *(v21 + 3) = v41;
      *(v21 + 4) = v42;
      *(v21 + 5) = v43;
      *(v21 + 6) = v44;
      *(v21 + 7) = v45;
      v21[64] = v46;
      v21[65] = v22[65];
      v21[66] = v22[66];
      v21[67] = v22[67];
      v21[68] = v22[68];
      v47 = v22[120];
      if (v47 == 255)
      {
        v61 = *(v22 + 72);
        v62 = *(v22 + 88);
        v63 = *(v22 + 104);
        v21[120] = v22[120];
        *(v21 + 104) = v63;
        *(v21 + 88) = v62;
        *(v21 + 72) = v61;
      }

      else
      {
        v48 = *(v22 + 9);
        v49 = *(v22 + 10);
        v50 = *(v22 + 11);
        v51 = *(v22 + 12);
        v52 = *(v22 + 13);
        v53 = *(v22 + 14);
        v54 = v47 & 1;
        sub_21D0FB960(v48, v49, v50, v51, v52, v53, v47 & 1);
        *(v21 + 9) = v48;
        *(v21 + 10) = v49;
        *(v21 + 11) = v50;
        *(v21 + 12) = v51;
        *(v21 + 13) = v52;
        *(v21 + 14) = v53;
        v21[120] = v54;
      }

      v21[121] = v22[121];
      v3 = v69;
      v5 = v71;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 4)
    {
      if (v8 > 2)
      {
LABEL_25:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 16))(v3, v5, v13);
        swift_storeEnumTagMultiPayload();
        goto LABEL_40;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_39;
      }

LABEL_28:
      v14 = *v5;
      *v3 = *v5;
      v15 = v14;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    }

    if (v8 > 7)
    {
      if (v8 == 8 || v8 == 9)
      {
        goto LABEL_28;
      }
    }

    else if (v8 == 5 || v8 == 6)
    {
      goto LABEL_25;
    }

LABEL_39:
    memcpy(v3, v5, *(*(v7 - 8) + 64));
LABEL_40:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v20 = v19[5];
    v21 = v3 + v20;
    v22 = v5 + v20;
    if (*(v5 + v20 + 8))
    {
      *v21 = *v22;
      *(v21 + 1) = *(v22 + 1);
      v23 = *(v22 + 2);
      v24 = *(v22 + 3);
      v25 = *(v22 + 4);
      v26 = *(v22 + 5);
      v27 = *(v22 + 6);
      v67 = *(v22 + 7);
      v70 = v5;
      v28 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v23, v24, v25, v26, v27, v67, v28);
      *(v21 + 2) = v23;
      *(v21 + 3) = v24;
      *(v21 + 4) = v25;
      *(v21 + 5) = v26;
      *(v21 + 6) = v27;
      *(v21 + 7) = v67;
      v21[64] = v28;
      v21[65] = v22[65];
      v21[66] = v22[66];
      v21[67] = v22[67];
      v21[68] = v22[68];
      v29 = v22[120];
      if (v29 == 255)
      {
        v36 = *(v22 + 72);
        v37 = *(v22 + 88);
        v38 = *(v22 + 104);
        v21[120] = v22[120];
        *(v21 + 104) = v38;
        *(v21 + 88) = v37;
        *(v21 + 72) = v36;
      }

      else
      {
        v30 = *(v22 + 10);
        v68 = *(v22 + 9);
        v31 = *(v22 + 11);
        v32 = *(v22 + 12);
        v33 = *(v22 + 13);
        v34 = *(v22 + 14);
        v35 = v29 & 1;
        sub_21D0FB960(v68, v30, v31, v32, v33, v34, v29 & 1);
        *(v21 + 9) = v68;
        *(v21 + 10) = v30;
        *(v21 + 11) = v31;
        *(v21 + 12) = v32;
        *(v21 + 13) = v33;
        *(v21 + 14) = v34;
        v21[120] = v35;
      }

      v21[121] = v22[121];
      v5 = v70;
      goto LABEL_53;
    }

LABEL_50:
    v55 = *v22;
    v56 = *(v22 + 1);
    v57 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v57;
    *v21 = v55;
    *(v21 + 1) = v56;
    v58 = *(v22 + 4);
    v59 = *(v22 + 5);
    v60 = *(v22 + 6);
    *(v21 + 106) = *(v22 + 106);
    *(v21 + 5) = v59;
    *(v21 + 6) = v60;
    *(v21 + 4) = v58;
LABEL_53:
    *(v3 + v19[6]) = *(v5 + v19[6]);
    *(v3 + v19[7]) = *(v5 + v19[7]);
    *(v3 + v19[8]) = *(v5 + v19[8]);
    *(v3 + v19[9]) = *(v5 + v19[9]);
    *(v3 + v19[10]) = *(v5 + v19[10]);
    v64 = v19[11];
    v65 = *(v5 + v64);
    *(v3 + v64) = v65;
    v66 = v65;
    swift_storeEnumTagMultiPayload();
    return v3;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v11);
}

_BYTE *_s37SectionsContainersAndSectionCasesItemOwta(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 3)
    {
      if (v10 == 2 || v10 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v10 == 4 || v10 == 5 || v10 == 6)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_8:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v14 = v13[5];
      v15 = &a1[v14];
      v16 = &a2[v14];
      v17 = v16[3];
      v15[2] = v16[2];
      v15[3] = v17;
      v18 = v16[1];
      *v15 = *v16;
      v15[1] = v18;
      *(v15 + 106) = *(v16 + 106);
      v19 = v16[6];
      v15[5] = v16[5];
      v15[6] = v19;
      v15[4] = v16[4];
      a1[v13[6]] = a2[v13[6]];
      a1[v13[7]] = a2[v13[7]];
      a1[v13[8]] = a2[v13[8]];
      a1[v13[9]] = a2[v13[9]];
      a1[v13[10]] = a2[v13[10]];
      *&a1[v13[11]] = *&a2[v13[11]];
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_29:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_30;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **_s19EditableCasesInItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_21;
      }

      v11 = *v3;
      *a1 = *v3;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      v16 = v11;
      if (v15(v3 + v12, 1, v13))
      {
        goto LABEL_20;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 > 4)
      {
        if (v30 <= 7)
        {
          if (v30 == 5 || v30 == 6)
          {
            goto LABEL_78;
          }

          goto LABEL_91;
        }

        if (v30 != 8 && v30 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v30 > 2)
        {
LABEL_78:
          v62 = sub_21DBF563C();
          (*(*(v62 - 8) + 16))(a1 + v12, v3 + v12, v62);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v30 != 1)
        {
          if (v30 == 2)
          {
            goto LABEL_78;
          }

          goto LABEL_91;
        }
      }
    }

    else
    {
      v22 = *v3;
      *a1 = *v3;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v23 = *(v14 + 48);
      v24 = v22;
      if (v23(v3 + v12, 1, v13))
      {
LABEL_20:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v12, v3 + v12, *(*(v25 - 8) + 64));
        goto LABEL_93;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_78;
          }

          goto LABEL_91;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v29 > 2)
        {
          goto LABEL_78;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_78;
          }

          goto LABEL_91;
        }
      }
    }

LABEL_77:
    v60 = *(v3 + v12);
    *(a1 + v12) = v60;
    v61 = v60;
    swift_storeEnumTagMultiPayload();
LABEL_92:
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
    goto LABEL_93;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *v3;
      *a1 = *v3;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v18 = *(v14 + 48);
      v19 = v17;
      if (v18(v3 + v12, 1, v13))
      {
        goto LABEL_20;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_78;
          }

          goto LABEL_91;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v28 > 2)
        {
          goto LABEL_78;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_78;
          }

LABEL_91:
          memcpy(a1 + v12, v3 + v12, *(v14 + 64));
          goto LABEL_92;
        }
      }

      goto LABEL_77;
    case 3:
      v20 = *v3;
      *a1 = *v3;
      v21 = v20;
LABEL_93:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 4:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_43;
          }

          goto LABEL_62;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_43:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 16))(a1, v3, v31);
          swift_storeEnumTagMultiPayload();
LABEL_63:
          v34 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v35 = v34[5];
          v36 = a1 + v35;
          v37 = v3 + v35;
          v38 = *(v3 + v35 + 8);
          if (v38)
          {
            v63 = v3;
            v64 = a1;
            *v36 = *v37;
            *(v36 + 1) = v38;
            v39 = *(v37 + 2);
            v40 = *(v37 + 3);
            v41 = *(v37 + 4);
            v42 = *(v37 + 5);
            v44 = *(v37 + 6);
            v43 = *(v37 + 7);
            v45 = v37[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v39, v40, v41, v42, v44, v43, v45);
            *(v36 + 2) = v39;
            *(v36 + 3) = v40;
            *(v36 + 4) = v41;
            *(v36 + 5) = v42;
            *(v36 + 6) = v44;
            *(v36 + 7) = v43;
            v36[64] = v45;
            *(v36 + 65) = *(v37 + 65);
            v46 = v37[120];
            if (v46 == 255)
            {
              *(v36 + 72) = *(v37 + 72);
              *(v36 + 88) = *(v37 + 88);
              *(v36 + 104) = *(v37 + 104);
              v36[120] = v37[120];
            }

            else
            {
              v47 = *(v37 + 9);
              v48 = *(v37 + 10);
              v49 = *(v37 + 11);
              v50 = *(v37 + 12);
              v51 = *(v37 + 13);
              v52 = *(v37 + 14);
              v53 = v46 & 1;
              sub_21D0FB960(v47, v48, v49, v50, v51, v52, v46 & 1);
              *(v36 + 9) = v47;
              *(v36 + 10) = v48;
              *(v36 + 11) = v49;
              *(v36 + 12) = v50;
              *(v36 + 13) = v51;
              *(v36 + 14) = v52;
              v36[120] = v53;
            }

            a1 = v64;
            v36[121] = v37[121];
            v3 = v63;
          }

          else
          {
            v54 = *(v37 + 5);
            *(v36 + 4) = *(v37 + 4);
            *(v36 + 5) = v54;
            *(v36 + 6) = *(v37 + 6);
            *(v36 + 106) = *(v37 + 106);
            v55 = *(v37 + 1);
            *v36 = *v37;
            *(v36 + 1) = v55;
            v56 = *(v37 + 3);
            *(v36 + 2) = *(v37 + 2);
            *(v36 + 3) = v56;
          }

          *(a1 + v34[6]) = *(v3 + v34[6]);
          *(a1 + v34[7]) = *(v3 + v34[7]);
          *(a1 + v34[8]) = *(v3 + v34[8]);
          *(a1 + v34[9]) = *(v3 + v34[9]);
          *(a1 + v34[10]) = *(v3 + v34[10]);
          v57 = v34[11];
          v58 = *(v3 + v57);
          *(a1 + v57) = v58;
          v59 = v58;
          goto LABEL_93;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_43;
          }

LABEL_62:
          memcpy(a1, v3, *(*(v8 - 8) + 64));
          goto LABEL_63;
        }
      }

      v32 = *v3;
      *a1 = *v3;
      v33 = v32;
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
  }

LABEL_21:
  v26 = *(v6 + 64);

  return memcpy(a1, v3, v26);
}

void _s19EditableCasesInItemOwxx(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return;
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        return;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v4 = swift_getEnumCaseMultiPayload();
      if (v4 > 4)
      {
        if (v4 <= 7)
        {
          if (v4 != 5 && v4 != 6)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }

        if (v4 != 8 && v4 != 9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v4 > 2)
        {
          goto LABEL_33;
        }

        if (v4 != 1)
        {
          if (v4 != 2)
          {
LABEL_37:
            v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v13 = a1 + *(v12 + 20);
            if (*(v13 + 1))
            {

              sub_21D179EF0(*(v13 + 2), *(v13 + 3), *(v13 + 4), *(v13 + 5), *(v13 + 6), *(v13 + 7), v13[64]);
              v14 = v13[120];
              if (v14 != 255)
              {
                sub_21D1078C0(*(v13 + 9), *(v13 + 10), *(v13 + 11), *(v13 + 12), *(v13 + 13), *(v13 + 14), v14 & 1);
              }
            }

            v8 = *(a1 + *(v12 + 44));
            goto LABEL_41;
          }

LABEL_33:
          v11 = sub_21DBF563C();
          (*(*(v11 - 8) + 8))(a1, v11);
          goto LABEL_37;
        }
      }

      goto LABEL_37;
    }

    v8 = *a1;
LABEL_41:

    return;
  }

  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v6 - 8) + 48))(a1 + v5, 1, v6))
  {
    return;
  }

  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        return;
      }

      goto LABEL_27;
    }

    if (v7 != 8 && v7 != 9)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_32:
    v8 = *(a1 + v5);
    goto LABEL_41;
  }

LABEL_27:
  v9 = sub_21DBF563C();
  v10 = *(*(v9 - 8) + 8);

  v10(a1 + v5, v9);
}

void **_s19EditableCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_19;
      }

      v9 = *a2;
      *a1 = *a2;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v9;
      if (v13(a2 + v10, 1, v11))
      {
        goto LABEL_18;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v28 > 2)
        {
LABEL_76:
          v60 = sub_21DBF563C();
          (*(*(v60 - 8) + 16))(a1 + v10, a2 + v10, v60);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }
      }
    }

    else
    {
      v20 = *a2;
      *a1 = *a2;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v21 = *(v12 + 48);
      v22 = v20;
      if (v21(a2 + v10, 1, v11))
      {
LABEL_18:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v10, a2 + v10, *(*(v23 - 8) + 64));
        goto LABEL_91;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v27 > 2)
        {
          goto LABEL_76;
        }

        if (v27 != 1)
        {
          if (v27 == 2)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }
      }
    }

LABEL_75:
    v58 = *(a2 + v10);
    *(a1 + v10) = v58;
    v59 = v58;
    swift_storeEnumTagMultiPayload();
LABEL_90:
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
    goto LABEL_91;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *a2;
      *a1 = *a2;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v16 = *(v12 + 48);
      v17 = v15;
      if (v16(a2 + v10, 1, v11))
      {
        goto LABEL_18;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v26 > 2)
        {
          goto LABEL_76;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_76;
          }

LABEL_89:
          memcpy(a1 + v10, a2 + v10, *(v12 + 64));
          goto LABEL_90;
        }
      }

      goto LABEL_75;
    case 3:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
LABEL_91:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 4:
      v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 4)
      {
        if (v8 <= 7)
        {
          if (v8 == 5 || v8 == 6)
          {
            goto LABEL_41;
          }

          goto LABEL_60;
        }

        if (v8 != 8 && v8 != 9)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v8 > 2)
        {
LABEL_41:
          v29 = sub_21DBF563C();
          (*(*(v29 - 8) + 16))(a1, a2, v29);
          swift_storeEnumTagMultiPayload();
LABEL_61:
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v33 = v32[5];
          v34 = a1 + v33;
          v35 = a2 + v33;
          v36 = *(a2 + v33 + 8);
          if (v36)
          {
            v61 = a2;
            v62 = a1;
            *v34 = *v35;
            *(v34 + 1) = v36;
            v37 = *(v35 + 2);
            v38 = *(v35 + 3);
            v39 = *(v35 + 4);
            v40 = *(v35 + 5);
            v41 = *(v35 + 6);
            v42 = *(v35 + 7);
            v43 = v35[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v37, v38, v39, v40, v41, v42, v43);
            *(v34 + 2) = v37;
            *(v34 + 3) = v38;
            *(v34 + 4) = v39;
            *(v34 + 5) = v40;
            *(v34 + 6) = v41;
            *(v34 + 7) = v42;
            v34[64] = v43;
            *(v34 + 65) = *(v35 + 65);
            v44 = v35[120];
            if (v44 == 255)
            {
              *(v34 + 72) = *(v35 + 72);
              *(v34 + 88) = *(v35 + 88);
              *(v34 + 104) = *(v35 + 104);
              v34[120] = v35[120];
            }

            else
            {
              v45 = *(v35 + 9);
              v46 = *(v35 + 10);
              v47 = *(v35 + 11);
              v48 = *(v35 + 12);
              v49 = *(v35 + 13);
              v50 = *(v35 + 14);
              v51 = v44 & 1;
              sub_21D0FB960(v45, v46, v47, v48, v49, v50, v44 & 1);
              *(v34 + 9) = v45;
              *(v34 + 10) = v46;
              *(v34 + 11) = v47;
              *(v34 + 12) = v48;
              *(v34 + 13) = v49;
              *(v34 + 14) = v50;
              v34[120] = v51;
            }

            a1 = v62;
            v34[121] = v35[121];
            a2 = v61;
          }

          else
          {
            v52 = *(v35 + 5);
            *(v34 + 4) = *(v35 + 4);
            *(v34 + 5) = v52;
            *(v34 + 6) = *(v35 + 6);
            *(v34 + 106) = *(v35 + 106);
            v53 = *(v35 + 1);
            *v34 = *v35;
            *(v34 + 1) = v53;
            v54 = *(v35 + 3);
            *(v34 + 2) = *(v35 + 2);
            *(v34 + 3) = v54;
          }

          *(a1 + v32[6]) = *(a2 + v32[6]);
          *(a1 + v32[7]) = *(a2 + v32[7]);
          *(a1 + v32[8]) = *(a2 + v32[8]);
          *(a1 + v32[9]) = *(a2 + v32[9]);
          *(a1 + v32[10]) = *(a2 + v32[10]);
          v55 = v32[11];
          v56 = *(a2 + v55);
          *(a1 + v55) = v56;
          v57 = v56;
          goto LABEL_91;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            goto LABEL_41;
          }

LABEL_60:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_61;
        }
      }

      v30 = *a2;
      *a1 = *a2;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_61;
  }

LABEL_19:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

void **_s19EditableCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      v9 = *v5;
      *v3 = *v5;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v9;
      if (v13(v5 + v10, 1, v11))
      {
        goto LABEL_19;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_77;
          }

          goto LABEL_90;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v28 > 2)
        {
LABEL_77:
          v65 = sub_21DBF563C();
          (*(*(v65 - 8) + 16))(v3 + v10, v5 + v10, v65);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_77;
          }

          goto LABEL_90;
        }
      }
    }

    else
    {
      v20 = *v5;
      *v3 = *v5;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v21 = *(v12 + 48);
      v22 = v20;
      if (v21(v5 + v10, 1, v11))
      {
LABEL_19:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v3 + v10, v5 + v10, *(*(v23 - 8) + 64));
        goto LABEL_92;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_77;
          }

          goto LABEL_90;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v27 > 2)
        {
          goto LABEL_77;
        }

        if (v27 != 1)
        {
          if (v27 == 2)
          {
            goto LABEL_77;
          }

          goto LABEL_90;
        }
      }
    }

LABEL_76:
    v63 = *(v5 + v10);
    *(v3 + v10) = v63;
    v64 = v63;
    swift_storeEnumTagMultiPayload();
LABEL_91:
    (*(v12 + 56))(v3 + v10, 0, 1, v11);
    goto LABEL_92;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *v5;
      *v3 = *v5;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v16 = *(v12 + 48);
      v17 = v15;
      if (v16(v5 + v10, 1, v11))
      {
        goto LABEL_19;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_77;
          }

          goto LABEL_90;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v26 > 2)
        {
          goto LABEL_77;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_77;
          }

LABEL_90:
          memcpy(v3 + v10, v5 + v10, *(v12 + 64));
          goto LABEL_91;
        }
      }

      goto LABEL_76;
    case 3:
      v18 = *v5;
      *v3 = *v5;
      v19 = v18;
LABEL_92:
      swift_storeEnumTagMultiPayload();
      return v3;
    case 4:
      v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 4)
      {
        if (v8 <= 7)
        {
          if (v8 == 5 || v8 == 6)
          {
            goto LABEL_42;
          }

          goto LABEL_61;
        }

        if (v8 != 8 && v8 != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v8 > 2)
        {
LABEL_42:
          v29 = sub_21DBF563C();
          (*(*(v29 - 8) + 16))(v3, v5, v29);
          swift_storeEnumTagMultiPayload();
LABEL_62:
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v33 = v32[5];
          v34 = v3 + v33;
          v35 = v5 + v33;
          if (*(v5 + v33 + 8))
          {
            v66 = v5;
            v67 = v3;
            *v34 = *v35;
            *(v34 + 1) = *(v35 + 1);
            v36 = *(v35 + 2);
            v37 = *(v35 + 3);
            v38 = *(v35 + 4);
            v39 = *(v35 + 5);
            v41 = *(v35 + 6);
            v40 = *(v35 + 7);
            v42 = v35[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v36, v37, v38, v39, v41, v40, v42);
            *(v34 + 2) = v36;
            *(v34 + 3) = v37;
            *(v34 + 4) = v38;
            *(v34 + 5) = v39;
            *(v34 + 6) = v41;
            *(v34 + 7) = v40;
            v34[64] = v42;
            v34[65] = v35[65];
            v34[66] = v35[66];
            v34[67] = v35[67];
            v34[68] = v35[68];
            v43 = v35[120];
            if (v43 == 255)
            {
              v57 = *(v35 + 72);
              v58 = *(v35 + 88);
              v59 = *(v35 + 104);
              v34[120] = v35[120];
              *(v34 + 104) = v59;
              *(v34 + 88) = v58;
              *(v34 + 72) = v57;
            }

            else
            {
              v44 = *(v35 + 9);
              v45 = *(v35 + 10);
              v46 = *(v35 + 11);
              v47 = *(v35 + 12);
              v48 = *(v35 + 13);
              v49 = *(v35 + 14);
              v50 = v43 & 1;
              sub_21D0FB960(v44, v45, v46, v47, v48, v49, v43 & 1);
              *(v34 + 9) = v44;
              *(v34 + 10) = v45;
              *(v34 + 11) = v46;
              *(v34 + 12) = v47;
              *(v34 + 13) = v48;
              *(v34 + 14) = v49;
              v34[120] = v50;
            }

            v3 = v67;
            v34[121] = v35[121];
            v5 = v66;
          }

          else
          {
            v51 = *v35;
            v52 = *(v35 + 1);
            v53 = *(v35 + 3);
            *(v34 + 2) = *(v35 + 2);
            *(v34 + 3) = v53;
            *v34 = v51;
            *(v34 + 1) = v52;
            v54 = *(v35 + 4);
            v55 = *(v35 + 5);
            v56 = *(v35 + 6);
            *(v34 + 106) = *(v35 + 106);
            *(v34 + 5) = v55;
            *(v34 + 6) = v56;
            *(v34 + 4) = v54;
          }

          *(v3 + v32[6]) = *(v5 + v32[6]);
          *(v3 + v32[7]) = *(v5 + v32[7]);
          *(v3 + v32[8]) = *(v5 + v32[8]);
          *(v3 + v32[9]) = *(v5 + v32[9]);
          *(v3 + v32[10]) = *(v5 + v32[10]);
          v60 = v32[11];
          v61 = *(v5 + v60);
          *(v3 + v60) = v61;
          v62 = v61;
          goto LABEL_92;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            goto LABEL_42;
          }

LABEL_61:
          memcpy(v3, v5, *(*(v7 - 8) + 64));
          goto LABEL_62;
        }
      }

      v30 = *v5;
      *v3 = *v5;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_62;
  }

LABEL_20:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v24);
}

void *_s19EditableCasesInItemOwtk(void *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_17;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_37;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_37;
      }

      goto LABEL_61;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_13;
    }

    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 == 2 || v11 == 3)
      {
        goto LABEL_12;
      }
    }

    else if (v11 == 4 || v11 == 5 || v11 == 6)
    {
LABEL_12:
      v12 = sub_21DBF563C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      swift_storeEnumTagMultiPayload();
LABEL_42:
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v21 = v20[5];
      v22 = (a1 + v21);
      v23 = &a2[v21];
      v24 = *(v23 + 3);
      v22[2] = *(v23 + 2);
      v22[3] = v24;
      v25 = *(v23 + 1);
      *v22 = *v23;
      v22[1] = v25;
      *(v22 + 106) = *(v23 + 106);
      v26 = *(v23 + 6);
      v22[5] = *(v23 + 5);
      v22[6] = v26;
      v22[4] = *(v23 + 4);
      *(a1 + v20[6]) = a2[v20[6]];
      *(a1 + v20[7]) = a2[v20[7]];
      *(a1 + v20[8]) = a2[v20[8]];
      *(a1 + v20[9]) = a2[v20[9]];
      *(a1 + v20[10]) = a2[v20[10]];
      *(a1 + v20[11]) = *&a2[v20[11]];
      goto LABEL_63;
    }

    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_42;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
LABEL_17:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v7, &a2[v7], *(*(v15 - 8) + 64));
LABEL_63:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v17 = swift_getEnumCaseMultiPayload();
    if (v17 <= 3)
    {
      if (v17 == 2 || v17 == 3)
      {
        goto LABEL_37;
      }
    }

    else if (v17 == 4 || v17 == 5 || v17 == 6)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      goto LABEL_17;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_37;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_37:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(a1 + v7, &a2[v7], v19);
      swift_storeEnumTagMultiPayload();
LABEL_62:
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      goto LABEL_63;
    }

LABEL_61:
    memcpy(a1 + v7, &a2[v7], *(v9 + 64));
    goto LABEL_62;
  }

LABEL_13:
  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *_s19EditableCasesInItemOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_18;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_38;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_62;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_14;
    }

    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 3)
    {
      if (v11 == 2 || v11 == 3)
      {
        goto LABEL_13;
      }
    }

    else if (v11 == 4 || v11 == 5 || v11 == 6)
    {
LABEL_13:
      v12 = sub_21DBF563C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      swift_storeEnumTagMultiPayload();
LABEL_43:
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v21 = v20[5];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v24;
      v25 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v25;
      *(v22 + 106) = *(v23 + 106);
      v26 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v26;
      *(v22 + 4) = *(v23 + 4);
      a1[v20[6]] = a2[v20[6]];
      a1[v20[7]] = a2[v20[7]];
      a1[v20[8]] = a2[v20[8]];
      a1[v20[9]] = a2[v20[9]];
      a1[v20[10]] = a2[v20[10]];
      *&a1[v20[11]] = *&a2[v20[11]];
      goto LABEL_64;
    }

    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_43;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
LABEL_18:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v7], &a2[v7], *(*(v15 - 8) + 64));
LABEL_64:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v17 = swift_getEnumCaseMultiPayload();
    if (v17 <= 3)
    {
      if (v17 == 2 || v17 == 3)
      {
        goto LABEL_38;
      }
    }

    else if (v17 == 4 || v17 == 5 || v17 == 6)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      goto LABEL_18;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_38;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_38:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(&a1[v7], &a2[v7], v19);
      swift_storeEnumTagMultiPayload();
LABEL_63:
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_64;
    }

LABEL_62:
    memcpy(&a1[v7], &a2[v7], *(v9 + 64));
    goto LABEL_63;
  }

LABEL_14:
  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_21D70F0C8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void **_s20BoardViewCasesInItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = &v14[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = *v3;
        *a1 = *v3;
        v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v11 = *(v10 - 8);
        v12 = *(v11 + 48);
        v13 = v8;
        if (v12(v3 + v9, 1, v10))
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
              goto LABEL_76;
            }

            goto LABEL_89;
          }

          if (v26 != 8 && v26 != 9)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v26 > 2)
          {
            goto LABEL_76;
          }

          if (v26 != 1)
          {
            if (v26 == 2)
            {
              goto LABEL_76;
            }

LABEL_89:
            memcpy(a1 + v9, v3 + v9, *(v11 + 64));
            goto LABEL_90;
          }
        }

        goto LABEL_75;
      }

      goto LABEL_12;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_41;
        }

        goto LABEL_60;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_41:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 16))(a1, v3, v29);
        swift_storeEnumTagMultiPayload();
LABEL_61:
        v32 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v33 = v32[5];
        v34 = a1 + v33;
        v35 = v3 + v33;
        v36 = *(v3 + v33 + 8);
        if (v36)
        {
          v61 = v3;
          v62 = a1;
          *v34 = *v35;
          *(v34 + 1) = v36;
          v37 = *(v35 + 2);
          v38 = *(v35 + 3);
          v39 = *(v35 + 4);
          v40 = *(v35 + 5);
          v41 = *(v35 + 6);
          v42 = *(v35 + 7);
          v43 = v35[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v37, v38, v39, v40, v41, v42, v43);
          *(v34 + 2) = v37;
          *(v34 + 3) = v38;
          *(v34 + 4) = v39;
          *(v34 + 5) = v40;
          *(v34 + 6) = v41;
          *(v34 + 7) = v42;
          v34[64] = v43;
          *(v34 + 65) = *(v35 + 65);
          v44 = v35[120];
          if (v44 == 255)
          {
            *(v34 + 72) = *(v35 + 72);
            *(v34 + 88) = *(v35 + 88);
            *(v34 + 104) = *(v35 + 104);
            v34[120] = v35[120];
          }

          else
          {
            v45 = *(v35 + 9);
            v46 = *(v35 + 10);
            v47 = *(v35 + 11);
            v48 = *(v35 + 12);
            v49 = *(v35 + 13);
            v50 = *(v35 + 14);
            v51 = v44 & 1;
            sub_21D0FB960(v45, v46, v47, v48, v49, v50, v44 & 1);
            *(v34 + 9) = v45;
            *(v34 + 10) = v46;
            *(v34 + 11) = v47;
            *(v34 + 12) = v48;
            *(v34 + 13) = v49;
            *(v34 + 14) = v50;
            v34[120] = v51;
          }

          a1 = v62;
          v34[121] = v35[121];
          v3 = v61;
        }

        else
        {
          v52 = *(v35 + 5);
          *(v34 + 4) = *(v35 + 4);
          *(v34 + 5) = v52;
          *(v34 + 6) = *(v35 + 6);
          *(v34 + 106) = *(v35 + 106);
          v53 = *(v35 + 1);
          *v34 = *v35;
          *(v34 + 1) = v53;
          v54 = *(v35 + 3);
          *(v34 + 2) = *(v35 + 2);
          *(v34 + 3) = v54;
        }

        *(a1 + v32[6]) = *(v3 + v32[6]);
        *(a1 + v32[7]) = *(v3 + v32[7]);
        *(a1 + v32[8]) = *(v3 + v32[8]);
        *(a1 + v32[9]) = *(v3 + v32[9]);
        *(a1 + v32[10]) = *(v3 + v32[10]);
        v55 = v32[11];
        v56 = *(v3 + v55);
        *(a1 + v55) = v56;
        v57 = v56;
        goto LABEL_91;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_41;
        }

LABEL_60:
        memcpy(a1, v3, *(*(v21 - 8) + 64));
        goto LABEL_61;
      }
    }

    v30 = *v3;
    *a1 = *v3;
    v31 = v30;
    swift_storeEnumTagMultiPayload();
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = *v3;
    *a1 = *v3;
    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = *(v10 - 8);
    v24 = *(v11 + 48);
    v25 = v23;
    if (v24(v3 + v9, 1, v10))
    {
      goto LABEL_11;
    }

    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 4)
    {
      if (v28 <= 7)
      {
        if (v28 == 5 || v28 == 6)
        {
          goto LABEL_76;
        }

        goto LABEL_89;
      }

      if (v28 != 8 && v28 != 9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v28 > 2)
      {
LABEL_76:
        v60 = sub_21DBF563C();
        (*(*(v60 - 8) + 16))(a1 + v9, v3 + v9, v60);
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v28 != 1)
      {
        if (v28 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_89;
      }
    }

    goto LABEL_75;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v15 = *v3;
    *a1 = *v3;
    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = *(v10 - 8);
    v16 = *(v11 + 48);
    v17 = v15;
    if (v16(v3 + v9, 1, v10))
    {
LABEL_11:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v9, v3 + v9, *(*(v18 - 8) + 64));
LABEL_91:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v27 = swift_getEnumCaseMultiPayload();
    if (v27 > 4)
    {
      if (v27 <= 7)
      {
        if (v27 == 5 || v27 == 6)
        {
          goto LABEL_76;
        }

        goto LABEL_89;
      }

      if (v27 != 8 && v27 != 9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v27 > 2)
      {
        goto LABEL_76;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_89;
      }
    }

LABEL_75:
    v58 = *(v3 + v9);
    *(a1 + v9) = v58;
    v59 = v58;
    swift_storeEnumTagMultiPayload();
LABEL_90:
    (*(v11 + 56))(a1 + v9, 0, 1, v10);
    goto LABEL_91;
  }

LABEL_12:
  v19 = *(v6 + 64);

  return memcpy(a1, v3, v19);
}

void _s20BoardViewCasesInItemOwxx(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_33;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_37:
          v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v13 = a1 + *(v12 + 20);
          if (*(v13 + 1))
          {

            sub_21D179EF0(*(v13 + 2), *(v13 + 3), *(v13 + 4), *(v13 + 5), *(v13 + 6), *(v13 + 7), v13[64]);
            v14 = v13[120];
            if (v14 != 255)
            {
              sub_21D1078C0(*(v13 + 9), *(v13 + 10), *(v13 + 11), *(v13 + 12), *(v13 + 13), *(v13 + 14), v14 & 1);
            }
          }

          v10 = *(a1 + *(v12 + 44));
          goto LABEL_41;
        }

LABEL_33:
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 8))(a1, v11);
        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return;
  }

LABEL_7:

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

      goto LABEL_27;
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
LABEL_27:
      v8 = sub_21DBF563C();
      v9 = *(*(v8 - 8) + 8);

      v9(a1 + v4, v8);
      return;
    }

    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return;
      }

      goto LABEL_27;
    }
  }

  v10 = *(a1 + v4);
LABEL_41:
}

void **_s20BoardViewCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
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
          goto LABEL_9;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 > 4)
        {
          if (v24 <= 7)
          {
            if (v24 == 5 || v24 == 6)
            {
              goto LABEL_74;
            }

            goto LABEL_87;
          }

          if (v24 != 8 && v24 != 9)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v24 > 2)
          {
            goto LABEL_74;
          }

          if (v24 != 1)
          {
            if (v24 == 2)
            {
              goto LABEL_74;
            }

LABEL_87:
            memcpy(a1 + v8, a2 + v8, *(v10 + 64));
            goto LABEL_88;
          }
        }

        goto LABEL_73;
      }

      goto LABEL_10;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_39:
        v27 = sub_21DBF563C();
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        swift_storeEnumTagMultiPayload();
LABEL_59:
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v31 = v30[5];
        v32 = a1 + v31;
        v33 = a2 + v31;
        v34 = *(a2 + v31 + 8);
        if (v34)
        {
          v59 = a2;
          v60 = a1;
          *v32 = *v33;
          *(v32 + 1) = v34;
          v35 = *(v33 + 2);
          v36 = *(v33 + 3);
          v37 = *(v33 + 4);
          v38 = *(v33 + 5);
          v39 = *(v33 + 6);
          v40 = *(v33 + 7);
          v41 = v33[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v35, v36, v37, v38, v39, v40, v41);
          *(v32 + 2) = v35;
          *(v32 + 3) = v36;
          *(v32 + 4) = v37;
          *(v32 + 5) = v38;
          *(v32 + 6) = v39;
          *(v32 + 7) = v40;
          v32[64] = v41;
          *(v32 + 65) = *(v33 + 65);
          v42 = v33[120];
          if (v42 == 255)
          {
            *(v32 + 72) = *(v33 + 72);
            *(v32 + 88) = *(v33 + 88);
            *(v32 + 104) = *(v33 + 104);
            v32[120] = v33[120];
          }

          else
          {
            v43 = *(v33 + 9);
            v44 = *(v33 + 10);
            v45 = *(v33 + 11);
            v46 = *(v33 + 12);
            v47 = *(v33 + 13);
            v48 = *(v33 + 14);
            v49 = v42 & 1;
            sub_21D0FB960(v43, v44, v45, v46, v47, v48, v42 & 1);
            *(v32 + 9) = v43;
            *(v32 + 10) = v44;
            *(v32 + 11) = v45;
            *(v32 + 12) = v46;
            *(v32 + 13) = v47;
            *(v32 + 14) = v48;
            v32[120] = v49;
          }

          a1 = v60;
          v32[121] = v33[121];
          a2 = v59;
        }

        else
        {
          v50 = *(v33 + 5);
          *(v32 + 4) = *(v33 + 4);
          *(v32 + 5) = v50;
          *(v32 + 6) = *(v33 + 6);
          *(v32 + 106) = *(v33 + 106);
          v51 = *(v33 + 1);
          *v32 = *v33;
          *(v32 + 1) = v51;
          v52 = *(v33 + 3);
          *(v32 + 2) = *(v33 + 2);
          *(v32 + 3) = v52;
        }

        *(a1 + v30[6]) = *(a2 + v30[6]);
        *(a1 + v30[7]) = *(a2 + v30[7]);
        *(a1 + v30[8]) = *(a2 + v30[8]);
        *(a1 + v30[9]) = *(a2 + v30[9]);
        *(a1 + v30[10]) = *(a2 + v30[10]);
        v53 = v30[11];
        v54 = *(a2 + v53);
        *(a1 + v53) = v54;
        v55 = v54;
        goto LABEL_89;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_39;
        }

LABEL_58:
        memcpy(a1, a2, *(*(v19 - 8) + 64));
        goto LABEL_59;
      }
    }

    v28 = *a2;
    *a1 = *a2;
    v29 = v28;
    swift_storeEnumTagMultiPayload();
    goto LABEL_59;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v22 = *(v10 + 48);
    v23 = v21;
    if (v22(a2 + v8, 1, v9))
    {
      goto LABEL_9;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      if (v26 <= 7)
      {
        if (v26 == 5 || v26 == 6)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      }

      if (v26 != 8 && v26 != 9)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v26 > 2)
      {
LABEL_74:
        v58 = sub_21DBF563C();
        (*(*(v58 - 8) + 16))(a1 + v8, a2 + v8, v58);
        swift_storeEnumTagMultiPayload();
        goto LABEL_88;
      }

      if (v26 != 1)
      {
        if (v26 == 2)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      }
    }

    goto LABEL_73;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v13 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v14 = *(v10 + 48);
    v15 = v13;
    if (v14(a2 + v8, 1, v9))
    {
LABEL_9:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v8, a2 + v8, *(*(v16 - 8) + 64));
LABEL_89:
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
          goto LABEL_74;
        }

        goto LABEL_87;
      }

      if (v25 != 8 && v25 != 9)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v25 > 2)
      {
        goto LABEL_74;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      }
    }

LABEL_73:
    v56 = *(a2 + v8);
    *(a1 + v8) = v56;
    v57 = v56;
    swift_storeEnumTagMultiPayload();
LABEL_88:
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
    goto LABEL_89;
  }

LABEL_10:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void **_s20BoardViewCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *v5;
        *v3 = *v5;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v11 = *(v10 + 48);
        v12 = v7;
        if (v11(v5 + v8, 1, v9))
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
              goto LABEL_75;
            }

            goto LABEL_88;
          }

          if (v24 != 8 && v24 != 9)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v24 > 2)
          {
            goto LABEL_75;
          }

          if (v24 != 1)
          {
            if (v24 == 2)
            {
              goto LABEL_75;
            }

LABEL_88:
            memcpy(v3 + v8, v5 + v8, *(v10 + 64));
            goto LABEL_89;
          }
        }

        goto LABEL_74;
      }

      goto LABEL_11;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_40;
        }

        goto LABEL_59;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_40:
        v27 = sub_21DBF563C();
        (*(*(v27 - 8) + 16))(v3, v5, v27);
        swift_storeEnumTagMultiPayload();
LABEL_60:
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v31 = v30[5];
        v32 = v3 + v31;
        v33 = v5 + v31;
        if (*(v5 + v31 + 8))
        {
          v64 = v5;
          v65 = v3;
          *v32 = *v33;
          *(v32 + 1) = *(v33 + 1);
          v34 = *(v33 + 2);
          v35 = *(v33 + 3);
          v36 = *(v33 + 4);
          v37 = *(v33 + 5);
          v39 = *(v33 + 6);
          v38 = *(v33 + 7);
          v40 = v33[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v34, v35, v36, v37, v39, v38, v40);
          *(v32 + 2) = v34;
          *(v32 + 3) = v35;
          *(v32 + 4) = v36;
          *(v32 + 5) = v37;
          *(v32 + 6) = v39;
          *(v32 + 7) = v38;
          v32[64] = v40;
          v32[65] = v33[65];
          v32[66] = v33[66];
          v32[67] = v33[67];
          v32[68] = v33[68];
          v41 = v33[120];
          if (v41 == 255)
          {
            v55 = *(v33 + 72);
            v56 = *(v33 + 88);
            v57 = *(v33 + 104);
            v32[120] = v33[120];
            *(v32 + 104) = v57;
            *(v32 + 88) = v56;
            *(v32 + 72) = v55;
          }

          else
          {
            v42 = *(v33 + 9);
            v43 = *(v33 + 10);
            v44 = *(v33 + 11);
            v45 = *(v33 + 12);
            v46 = *(v33 + 13);
            v47 = *(v33 + 14);
            v48 = v41 & 1;
            sub_21D0FB960(v42, v43, v44, v45, v46, v47, v41 & 1);
            *(v32 + 9) = v42;
            *(v32 + 10) = v43;
            *(v32 + 11) = v44;
            *(v32 + 12) = v45;
            *(v32 + 13) = v46;
            *(v32 + 14) = v47;
            v32[120] = v48;
          }

          v3 = v65;
          v32[121] = v33[121];
          v5 = v64;
        }

        else
        {
          v49 = *v33;
          v50 = *(v33 + 1);
          v51 = *(v33 + 3);
          *(v32 + 2) = *(v33 + 2);
          *(v32 + 3) = v51;
          *v32 = v49;
          *(v32 + 1) = v50;
          v52 = *(v33 + 4);
          v53 = *(v33 + 5);
          v54 = *(v33 + 6);
          *(v32 + 106) = *(v33 + 106);
          *(v32 + 5) = v53;
          *(v32 + 6) = v54;
          *(v32 + 4) = v52;
        }

        *(v3 + v30[6]) = *(v5 + v30[6]);
        *(v3 + v30[7]) = *(v5 + v30[7]);
        *(v3 + v30[8]) = *(v5 + v30[8]);
        *(v3 + v30[9]) = *(v5 + v30[9]);
        *(v3 + v30[10]) = *(v5 + v30[10]);
        v58 = v30[11];
        v59 = *(v5 + v58);
        *(v3 + v58) = v59;
        v60 = v59;
        goto LABEL_90;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_40;
        }

LABEL_59:
        memcpy(v3, v5, *(*(v19 - 8) + 64));
        goto LABEL_60;
      }
    }

    v28 = *v5;
    *v3 = *v5;
    v29 = v28;
    swift_storeEnumTagMultiPayload();
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v5;
    *v3 = *v5;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v22 = *(v10 + 48);
    v23 = v21;
    if (v22(v5 + v8, 1, v9))
    {
      goto LABEL_10;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      if (v26 <= 7)
      {
        if (v26 == 5 || v26 == 6)
        {
          goto LABEL_75;
        }

        goto LABEL_88;
      }

      if (v26 != 8 && v26 != 9)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v26 > 2)
      {
LABEL_75:
        v63 = sub_21DBF563C();
        (*(*(v63 - 8) + 16))(v3 + v8, v5 + v8, v63);
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (v26 != 1)
      {
        if (v26 == 2)
        {
          goto LABEL_75;
        }

        goto LABEL_88;
      }
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v13 = *v5;
    *v3 = *v5;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v14 = *(v10 + 48);
    v15 = v13;
    if (v14(v5 + v8, 1, v9))
    {
LABEL_10:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v3 + v8, v5 + v8, *(*(v16 - 8) + 64));
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return v3;
    }

    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 4)
    {
      if (v25 <= 7)
      {
        if (v25 == 5 || v25 == 6)
        {
          goto LABEL_75;
        }

        goto LABEL_88;
      }

      if (v25 != 8 && v25 != 9)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v25 > 2)
      {
        goto LABEL_75;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_75;
        }

        goto LABEL_88;
      }
    }

LABEL_74:
    v61 = *(v5 + v8);
    *(v3 + v8) = v61;
    v62 = v61;
    swift_storeEnumTagMultiPayload();
LABEL_89:
    (*(v10 + 56))(v3 + v8, 0, 1, v9);
    goto LABEL_90;
  }

LABEL_11:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v17);
}

char *_s20BoardViewCasesInItemOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a1 = *a2;
        v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v9 = *(v8 - 8);
        if ((*(v9 + 48))(&a2[v7], 1, v8))
        {
          goto LABEL_9;
        }

        v16 = swift_getEnumCaseMultiPayload();
        if (v16 <= 3)
        {
          if (v16 == 2 || v16 == 3)
          {
            goto LABEL_37;
          }
        }

        else if (v16 == 4 || v16 == 5 || v16 == 6)
        {
LABEL_37:
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 32))(&a1[v7], &a2[v7], v19);
          swift_storeEnumTagMultiPayload();
LABEL_62:
          (*(v9 + 56))(&a1[v7], 0, 1, v8);
          goto LABEL_63;
        }

LABEL_61:
        memcpy(&a1[v7], &a2[v7], *(v9 + 64));
        goto LABEL_62;
      }

      goto LABEL_10;
    }

    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 <= 3)
    {
      if (v14 == 2 || v14 == 3)
      {
        goto LABEL_17;
      }
    }

    else if (v14 == 4 || v14 == 5 || v14 == 6)
    {
LABEL_17:
      v15 = sub_21DBF563C();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      swift_storeEnumTagMultiPayload();
LABEL_42:
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v21 = v20[5];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v24;
      v25 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v25;
      *(v22 + 106) = *(v23 + 106);
      v26 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v26;
      *(v22 + 4) = *(v23 + 4);
      a1[v20[6]] = a2[v20[6]];
      a1[v20[7]] = a2[v20[7]];
      a1[v20[8]] = a2[v20[8]];
      a1[v20[9]] = a2[v20[9]];
      a1[v20[10]] = a2[v20[10]];
      *&a1[v20[11]] = *&a2[v20[11]];
      goto LABEL_63;
    }

    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      goto LABEL_9;
    }

    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_37;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
LABEL_9:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_63:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v17 = swift_getEnumCaseMultiPayload();
    if (v17 <= 3)
    {
      if (v17 == 2 || v17 == 3)
      {
        goto LABEL_37;
      }
    }

    else if (v17 == 4 || v17 == 5 || v17 == 6)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_10:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *_s20BoardViewCasesInItemOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a1 = *a2;
        v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v9 = *(v8 - 8);
        if ((*(v9 + 48))(&a2[v7], 1, v8))
        {
          goto LABEL_10;
        }

        v16 = swift_getEnumCaseMultiPayload();
        if (v16 <= 3)
        {
          if (v16 == 2 || v16 == 3)
          {
            goto LABEL_38;
          }
        }

        else if (v16 == 4 || v16 == 5 || v16 == 6)
        {
LABEL_38:
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 32))(&a1[v7], &a2[v7], v19);
          swift_storeEnumTagMultiPayload();
LABEL_63:
          (*(v9 + 56))(&a1[v7], 0, 1, v8);
          goto LABEL_64;
        }

LABEL_62:
        memcpy(&a1[v7], &a2[v7], *(v9 + 64));
        goto LABEL_63;
      }

      goto LABEL_11;
    }

    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 <= 3)
    {
      if (v14 == 2 || v14 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v14 == 4 || v14 == 5 || v14 == 6)
    {
LABEL_18:
      v15 = sub_21DBF563C();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      swift_storeEnumTagMultiPayload();
LABEL_43:
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v21 = v20[5];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v24;
      v25 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v25;
      *(v22 + 106) = *(v23 + 106);
      v26 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v26;
      *(v22 + 4) = *(v23 + 4);
      a1[v20[6]] = a2[v20[6]];
      a1[v20[7]] = a2[v20[7]];
      a1[v20[8]] = a2[v20[8]];
      a1[v20[9]] = a2[v20[9]];
      a1[v20[10]] = a2[v20[10]];
      *&a1[v20[11]] = *&a2[v20[11]];
      goto LABEL_64;
    }

    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      goto LABEL_10;
    }

    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_38;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
LABEL_10:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_64:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v17 = swift_getEnumCaseMultiPayload();
    if (v17 <= 3)
    {
      if (v17 == 2 || v17 == 3)
      {
        goto LABEL_38;
      }
    }

    else if (v17 == 4 || v17 == 5 || v17 == 6)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

LABEL_11:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D71371C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void TTRTemplateSharingTemplateContentAttributes.init(remTemplateContentAttributes:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 hasDisplayDate];
  if ([a1 hasHashtags])
  {
    v4 |= 2uLL;
  }

  if ([a1 hasLocationTriggersOrVehicleEventTriggers])
  {
    v4 |= 4uLL;
  }

  if ([a1 hasImageAttachments])
  {
    v5 = v4 | 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [a1 reminderCount];

  v7 = v5 | 0x10;
  if (v6 < 1001)
  {
    v7 = v5;
  }

  *a2 = v7;
}

unint64_t sub_21D7138F0()
{
  result = qword_27CE60778;
  if (!qword_27CE60778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingTemplateContentAttributes, &type metadata for TTRTemplateSharingTemplateContentAttributes, v0, v1);
    atomic_store(result, &qword_27CE60778);
  }

  return result;
}

unint64_t sub_21D713948()
{
  result = qword_27CE60780;
  if (!qword_27CE60780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingTemplateContentAttributes, &type metadata for TTRTemplateSharingTemplateContentAttributes, v0, v1);
    atomic_store(result, &qword_27CE60780);
  }

  return result;
}

unint64_t sub_21D7139A0()
{
  result = qword_27CE60788;
  if (!qword_27CE60788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingTemplateContentAttributes, &type metadata for TTRTemplateSharingTemplateContentAttributes, v0, v1);
    atomic_store(result, &qword_27CE60788);
  }

  return result;
}

unint64_t sub_21D7139F8()
{
  result = qword_27CE60790;
  if (!qword_27CE60790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingTemplateContentAttributes, &type metadata for TTRTemplateSharingTemplateContentAttributes, v0, v1);
    atomic_store(result, &qword_27CE60790);
  }

  return result;
}

uint64_t sub_21D713A5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60798);
  v1 = __swift_project_value_buffer(v0, qword_27CE60798);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_27;
  }

  v7 = 0;
  while (1)
  {
    sub_21DBFBEEC();

    v8 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v8);

    v9 = sub_21DBFA12C();
    v10 = ((v7 & 1) != 0 ? &selRef__addLocalAccountWithName_ : &selRef__addCalDavAccountWithName_);

    v33 = [a1 *v10];

    if (a3)
    {
      break;
    }

LABEL_5:
    ++v7;

    if (v7 == a2)
    {
      return;
    }
  }

  if (a4 < 0)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v37 = v7;
  while (1)
  {
    v12 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v12);

    MEMORY[0x223D42AA0](45, 0xE100000000000000);
    v38 = v11;
    v13 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v13);

    v14 = sub_21DBFA12C();

    v35 = [a1 addListWithName:v14 toAccountChangeItem:v33];

    if (a4)
    {
      break;
    }

LABEL_12:
    ++v11;

    if (v38 + 1 == a3)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  while (1)
  {
    sub_21DBFBEEC();

    v17 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v17);

    MEMORY[0x223D42AA0](45, 0xE100000000000000);
    v18 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v18);

    MEMORY[0x223D42AA0](45, 0xE100000000000000);
    v39 = v15;
    v19 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v19);

    v20 = sub_21DBFA12C();

    v16 = [a1 addReminderWithTitle:v20 toListChangeItem:v35];

    v21 = [v16 subtaskContext];
    if (v21)
    {
      break;
    }

LABEL_16:
    ++v15;

    if (v39 + 1 == a4)
    {
      goto LABEL_12;
    }
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v36 = v16;
    v23 = a1;
    if (a5)
    {
      v24 = 0;
      do
      {
        sub_21DBFBEEC();

        v25 = sub_21DBFC5BC();
        v26 = a5;
        MEMORY[0x223D42AA0](v25);

        MEMORY[0x223D42AA0](45, 0xE100000000000000);
        v27 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v27);

        MEMORY[0x223D42AA0](45, 0xE100000000000000);
        v28 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v28);

        MEMORY[0x223D42AA0](45, 0xE100000000000000);
        v29 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v29);

        v30 = sub_21DBFA12C();

        a5 = v26;
        v7 = v37;
        ++v24;
      }

      while (a5 != v24);
    }

    a1 = v23;
    v16 = v36;
    goto LABEL_16;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void static TTRDebugExampleInserts.makeSomeExampleInsertsToCloudKitAccount(saveRequest:lists:reminders:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v29[3] = *MEMORY[0x277D85DE8];
  v6 = [a1 store];
  v29[0] = 0;
  v7 = [v6 fetchPrimaryActiveCloudKitAccountWithError_];

  if (v7)
  {
    v8 = v29[0];
    v9 = [v5 updateAccount_];
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = v9;
      if (!a2)
      {

        goto LABEL_16;
      }

      if ((a3 & 0x8000000000000000) == 0)
      {
        v23 = v7;
        v11 = 0;
        v24 = v9;
        v25 = a2;
        v26 = v5;
        do
        {
          v28 = v11;
          strcpy(v29, "List CK-");
          BYTE1(v29[1]) = 0;
          WORD1(v29[1]) = 0;
          HIDWORD(v29[1]) = -402653184;
          v12 = sub_21DBFC5BC();
          MEMORY[0x223D42AA0](v12);

          v13 = sub_21DBFA12C();

          v27 = [v5 addListWithName:v13 toAccountChangeItem:v10];

          if (a3)
          {
            v14 = 0;
            do
            {
              v29[0] = 0;
              v29[1] = 0xE000000000000000;
              sub_21DBFBEEC();

              strcpy(v29, "Reminder CK-");
              BYTE5(v29[1]) = 0;
              HIWORD(v29[1]) = -5120;
              v15 = sub_21DBFC5BC();
              MEMORY[0x223D42AA0](v15);

              MEMORY[0x223D42AA0](45, 0xE100000000000000);
              v16 = sub_21DBFC5BC();
              MEMORY[0x223D42AA0](v16);

              v17 = sub_21DBFA12C();

              ++v14;
            }

            while (a3 != v14);
          }

          v10 = v24;
          v5 = v26;
          v11 = v28 + 1;
        }

        while (v28 + 1 != v25);

        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v29[0];
    v19 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56C30 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_27CE60798);
  v10 = sub_21DBF84AC();
  v21 = sub_21DBFAEBC();
  if (os_log_type_enabled(v10, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21D0C9000, v10, v21, "No CK account found. Skipping.", v22, 2u);
    MEMORY[0x223D46520](v22, -1, -1);
  }

LABEL_16:
}

double sub_21D71449C(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFA27C();

  return result;
}

double sub_21D7145F8(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D714748(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D7148B8(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D7149BC(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D714AE4(uint64_t a1, unsigned __int8 a2)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D714BE4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE607B0);
  v1 = __swift_project_value_buffer(v0, qword_27CE607B0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersUICore::TTRListType::PredefinedSmartListType_optional __swiftcall TTRListType.PredefinedSmartListType.init(remSmartListType:)(__C::REMSmartListType remSmartListType)
{
  v3 = v1;
  v4 = sub_21DBFA16C();
  v6 = v5;
  if (v4 == sub_21DBFA16C() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_21DBFC64C();

  if (v9)
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {

    v11 = 1;
  }

  else
  {
    v17 = sub_21DBFC64C();

    if (v17)
    {

      v11 = 1;
    }

    else
    {
      v18 = sub_21DBFA16C();
      v20 = v19;
      if (v18 == sub_21DBFA16C() && v20 == v21)
      {

        v11 = 2;
      }

      else
      {
        v22 = sub_21DBFC64C();

        if (v22)
        {

          v11 = 2;
        }

        else
        {
          v23 = sub_21DBFA16C();
          v25 = v24;
          if (v23 == sub_21DBFA16C() && v25 == v26)
          {

            v11 = 3;
          }

          else
          {
            v27 = sub_21DBFC64C();

            if (v27)
            {

              v11 = 3;
            }

            else
            {
              v28 = sub_21DBFA16C();
              v30 = v29;
              if (v28 == sub_21DBFA16C() && v30 == v31)
              {

                v11 = 4;
              }

              else
              {
                v32 = sub_21DBFC64C();

                if (v32)
                {

                  v11 = 4;
                }

                else
                {
                  v33 = sub_21DBFA16C();
                  v35 = v34;
                  if (v33 == sub_21DBFA16C() && v35 == v36)
                  {

                    v11 = 5;
                  }

                  else
                  {
                    v37 = sub_21DBFC64C();

                    if (v37)
                    {

                      v11 = 5;
                    }

                    else
                    {
                      v38 = sub_21DBFA16C();
                      v40 = v39;
                      if (v38 == sub_21DBFA16C() && v40 == v41)
                      {

                        v11 = 6;
                      }

                      else
                      {
                        v42 = sub_21DBFC64C();

                        if (v42)
                        {
                          v11 = 6;
                        }

                        else
                        {
                          v11 = 7;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *v3 = v11;
  return result;
}

void TTRListType.PredefinedSmartListType.defaultVisibility.getter(char *a1@<X8>)
{
  if ((*v1 & 0xFE) == 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t TTRListType.PredefinedSmartListType.nonCustomSmartListType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_21DBFAE6C();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_27832E958 + v3);

  return v5(a1, v6, v4);
}

uint64_t TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      v6 = MEMORY[0x277D45418];
    }

    else
    {
      v7 = *MEMORY[0x277D454E8];
      v8 = sub_21DBF733C();
      (*(*(v8 - 8) + 104))(a1, v7, v8);
      v6 = MEMORY[0x277D45400];
    }
  }

  else if (v3 - 3 >= 3)
  {
    v6 = MEMORY[0x277D45420];
  }

  else
  {
    v4 = *MEMORY[0x277D454E8];
    v5 = sub_21DBF733C();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    v6 = MEMORY[0x277D45408];
  }

  v9 = *v6;
  v10 = sub_21DBF70DC();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t TTRListType.PredefinedSmartListType.smartList(in:)()
{
  v1 = sub_21DBFAE6C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, **(&unk_27832E958 + *v0), v1, v3);
  v6 = sub_21DBFB73C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t TTRListType.PredefinedSmartListType.ttrAccessibilityDefaultLabelForBadge.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
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

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (*v0 <= 4u)
  {
    if (v1 == 3)
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

    goto LABEL_21;
  }

  if (v1 == 5)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_21:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRListType::PredefinedSmartListType_optional __swiftcall TTRListType.PredefinedSmartListType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRListType.PredefinedSmartListType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x6E756F4669726973;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0x64656767616C66;
  if (v1 != 3)
  {
    v4 = 0x64656E6769737361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 1)
  {
    v5 = 7105633;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_21D7159B0(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

void sub_21D715ADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xEF737070416E4964;
  v6 = 0x6E756F4669726973;
  if (v2 != 5)
  {
    v6 = 0x6574656C706D6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (v2 != 3)
  {
    v8 = 0x64656E6769737361;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (v2 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

Swift::Bool __swiftcall TTRListType.PredefinedSmartListVisibility.isHidden(reminderCount:)(Swift::Int reminderCount)
{
  v2 = *v1;
  v3 = v2 >= 2;
  v4 = v2 == 2 || reminderCount < 1;
  return v3 && v4;
}

RemindersUICore::TTRListType::PredefinedSmartListVisibility_optional __swiftcall TTRListType.PredefinedSmartListVisibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRListType.PredefinedSmartListVisibility.rawValue.getter()
{
  v1 = 0x656E696665646E75;
  v2 = 0x6E6564646968;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x656C6269736976;
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

uint64_t sub_21D715CF8()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D715DB8(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D715E64(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D715F2C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = 0x6E6564646968;
  if (*v1 != 2)
  {
    v4 = 0x6D6F74737563;
  }

  if (*v1)
  {
    v3 = 0x656C6269736976;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

RemindersUICore::TTRListType::PredefinedSmartListVisibilityOptions __swiftcall TTRListType.PredefinedSmartListVisibilityOptions.init()()
{
  v1 = v0;
  result.visibilityByType._rawValue = sub_21D0F3E74(MEMORY[0x277D84F90]);
  v1->visibilityByType._rawValue = result.visibilityByType._rawValue;
  return result;
}

RemindersUICore::TTRListType::PredefinedSmartListVisibilityOptions __swiftcall TTRListType.PredefinedSmartListVisibilityOptions.init(visibilityByType:)(Swift::OpaquePointer visibilityByType)
{
  v3 = v1;
  sub_21D0F3E74(MEMORY[0x277D84F90]);

  v3->_rawValue = visibilityByType._rawValue;
  return result;
}

char *TTRListType.PredefinedSmartListVisibilityOptions.subscript.getter@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  if (*(v5 + 16) && (result = sub_21D10186C(*result), (v6 & 1) != 0))
  {
    v7 = result[*(v5 + 56)];
  }

  else if ((v4 & 0xFE) == 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

Swift::Void __swiftcall TTRListType.PredefinedSmartListVisibilityOptions.setVisibility(_:for:)(RemindersUICore::TTRListType::PredefinedSmartListVisibility _, RemindersUICore::TTRListType::PredefinedSmartListType a2)
{
  v3 = *a2;
  v4 = *_;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  *v2 = 0x8000000000000000;
  sub_21D478B7C(v4, v3, isUniquelyReferenced_nonNull_native);

  *v2 = v6;
}

RemindersUICore::TTRListType::PredefinedSmartListsDisplayOrder __swiftcall TTRListType.PredefinedSmartListsDisplayOrder.init()()
{
  v1 = v0;
  result.ordering._rawValue = TTRListType.PredefinedSmartListsDisplayOrder.init(ordering:)(MEMORY[0x277D84F90]).ordering._rawValue;
  *v1 = v3;
  return result;
}

uint64_t static TTRListType.SortingCapability.sortingCapabilityForNonSmartList.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  type metadata accessor for TTRListType.SortingCapability(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_21DBF70DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (a1)
  {
    (*(v9 + 8))(a3, v8, v13);
    *a4 = a2 & 1;
    type metadata accessor for TTRListType.SortingCapability(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v25 = a4;
    v17 = *MEMORY[0x277D45420];
    v24 = *(v9 + 104);
    v24(v11, v17, v8, v13);
    v18 = MEMORY[0x223D3F870](a3, v11);
    v19 = *(v9 + 8);
    v19(v11, v8);
    if (v18 & 1) != 0 || (a2 & 1) == 0 && ((v24)(v11, *MEMORY[0x277D45418], v8), v22 = MEMORY[0x223D3F870](a3, v11), v19(v11, v8), (v22))
    {
      v19(a3, v8);
      v20 = *MEMORY[0x277D454E8];
      v21 = sub_21DBF733C();
      (*(*(v21 - 8) + 104))(v15, v20, v21);
      (v24)(v15, *MEMORY[0x277D45408], v8);
      (*(v9 + 32))(v25, v15, v8);
    }

    else
    {
      v23 = *(v9 + 32);
      v23(v15, a3, v8);
      v23(v25, v15, v8);
    }

    type metadata accessor for TTRListType.SortingCapability(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t TTRListType.SortingCapability.supportedSortingStyles.getter()
{
  v1 = sub_21DBF70DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE607C8, &qword_21DC24C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D717858(v0, v10, type metadata accessor for TTRListType.SortingCapability);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = sub_21DBF70CC();
    v13 = sub_21D19F4E0(v12);

    v18 = v13;
    v14 = *(v2 + 104);
    v14(v4, *MEMORY[0x277D45420], v1);
    sub_21D1AB818(v4, v7);
    v15 = *(v2 + 8);
    v15(v4, v1);
    sub_21D0CF7E0(v7, &qword_27CE607C8, &qword_21DC24C50);
    if ((v11 & 1) == 0)
    {
      v14(v4, *MEMORY[0x277D45418], v1);
      sub_21D1AB818(v4, v7);
      v15(v4, v1);
      sub_21D0CF7E0(v7, &qword_27CE607C8, &qword_21DC24C50);
    }

    return v18;
  }

  else
  {
    (*(v2 + 8))(v10, v1);
    return MEMORY[0x277D84FA0];
  }
}

double TTRListType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D717858(v2, v9, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v4 + 32))(v6, v9, v3);
      MEMORY[0x223D44FA0](3);
      sub_21D7178C0(&qword_27CE607D0, MEMORY[0x277D453A0], MEMORY[0x277D453A8]);
      sub_21DBFA00C();
      (*(v4 + 8))(v6, v3);
      return result;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v11 = *v9;
      v12 = 5;
      goto LABEL_12;
    }

    MEMORY[0x223D44FA0](4);
    sub_21DBFA27C();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v9;
      MEMORY[0x223D44FA0](0);
      sub_21DBFB64C();
      sub_21DBFC7FC();
LABEL_13:

      return result;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      v12 = 1;
LABEL_12:
      MEMORY[0x223D44FA0](v12);
      sub_21DBFB64C();
      goto LABEL_13;
    }

    MEMORY[0x223D44FA0](2);
    sub_21DBFA27C();
  }

  return result;
}

uint64_t TTRListType.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRListType.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D716AD4()
{
  sub_21DBFC7DC();
  TTRListType.hash(into:)(v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D716B18(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRListType.hash(into:)(v2);
  return sub_21DBFC82C();
}

unint64_t TTRListType.description.getter()
{
  v1 = v0;
  v2 = sub_21DBF6C1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D717858(v1, v8, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v3 + 32))(v5, v8, v2);
      v25 = 0x28646567676174;
      v26 = 0xE700000000000000;
      sub_21D7178C0(&qword_27CE5F788, MEMORY[0x277D453A0], MEMORY[0x277D453B8]);
      v15 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v15);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v16 = v25;
      (*(v3 + 8))(v5, v2);
      return v16;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v10 = *v8;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_21DBFBEEC();

      v25 = 0xD000000000000014;
      v26 = 0x800000021DC695F0;
      v11 = [v10 description];
      goto LABEL_12;
    }

    v12 = *v8;
    v13 = v8[1];
    v25 = 0x2228686372616573;
    v26 = 0xE800000000000000;
    MEMORY[0x223D42AA0](v12, v13);

    MEMORY[0x223D42AA0](10530, 0xE200000000000000);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *v8;
      v14 = *(v8 + 8);
      v25 = 0;
      v26 = 0xE000000000000000;
      MEMORY[0x223D42AA0](0x287473696CLL, 0xE500000000000000);
      v23 = v10;
      v24 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE607D8, &qword_21DC24C58);
      sub_21DBFC14C();
LABEL_13:
      MEMORY[0x223D42AA0](41, 0xE100000000000000);

      return v25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_21DBFBEEC();

      v25 = 0xD000000000000010;
      v26 = 0x800000021DC69630;
      v11 = [v10 description];
LABEL_12:
      v19 = v11;
      v20 = sub_21DBFA16C();
      v22 = v21;

      MEMORY[0x223D42AA0](v20, v22);

      goto LABEL_13;
    }

    v18 = *v8;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC69610);
    LOBYTE(v23) = v18;
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
  }

  return v25;
}

uint64_t _s15RemindersUICore11TTRListTypeO17SortingCapabilityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_21DBF70DC();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.SortingCapability(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60808, &unk_21DC25078);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_21D717858(a1, &v23 - v14, type metadata accessor for TTRListType.SortingCapability);
  sub_21D717858(a2, &v15[v17], type metadata accessor for TTRListType.SortingCapability);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D717858(v15, v12, type metadata accessor for TTRListType.SortingCapability);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v6, &v15[v17], v24);
      v19 = MEMORY[0x223D3F870](v12, v6);
      v21 = *(v4 + 8);
      v21(v6, v20);
      v21(v12, v20);
      sub_21D7184B8(v15, type metadata accessor for TTRListType.SortingCapability);
      return v19 & 1;
    }

    (*(v4 + 8))(v12, v24);
    goto LABEL_6;
  }

  sub_21D717858(v15, v9, type metadata accessor for TTRListType.SortingCapability);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    sub_21D0CF7E0(v15, &qword_27CE60808, &unk_21DC25078);
    v19 = 0;
    return v19 & 1;
  }

  v18 = *v9 ^ v15[v17];
  sub_21D7184B8(v15, type metadata accessor for TTRListType.SortingCapability);
  v19 = v18 ^ 1;
  return v19 & 1;
}

uint64_t _s15RemindersUICore11TTRListTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = sub_21DBF6C1C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v44 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60800, &qword_21DC25070);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  v26 = &v44 + *(v25 + 56) - v23;
  sub_21D717858(v48, &v44 - v23, type metadata accessor for TTRListType);
  sub_21D717858(v49, v26, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_21D717858(v24, v12, type metadata accessor for TTRListType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v46 + 8))(v12, v47);
        goto LABEL_28;
      }

      v39 = v45;
      v38 = v46;
      v40 = v47;
      (*(v46 + 32))(v45, v26, v47);
      v37 = MEMORY[0x223D3F370](v12, v39);
      v41 = *(v38 + 8);
      v41(v39, v40);
      v41(v12, v40);
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_21D717858(v24, v9, type metadata accessor for TTRListType);
      v30 = *v9;
      v29 = v9[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_28;
      }

      if (v30 == *v26 && v29 == *(v26 + 1))
      {
      }

      else
      {
        v32 = sub_21DBFC64C();

        if ((v32 & 1) == 0)
        {
LABEL_31:
          sub_21D7184B8(v24, type metadata accessor for TTRListType);
          goto LABEL_29;
        }
      }

      sub_21D7184B8(v24, type metadata accessor for TTRListType);
      v37 = 1;
      return v37 & 1;
    }

    sub_21D717858(v24, v6, type metadata accessor for TTRListType);
    v28 = *v6;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
LABEL_23:
      v42 = *v26;
      sub_21D1B2ABC();
      v37 = sub_21DBFB63C();

LABEL_24:
      sub_21D7184B8(v24, type metadata accessor for TTRListType);
      return v37 & 1;
    }

LABEL_25:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_21D717858(v24, v15, type metadata accessor for TTRListType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_28:
        sub_21D0CF7E0(v24, &qword_27CE60800, &qword_21DC25070);
LABEL_29:
        v37 = 0;
        return v37 & 1;
      }

      v37 = sub_21D11ED58(*v15, *v26);
      goto LABEL_24;
    }

    sub_21D717858(v24, v18, type metadata accessor for TTRListType);
    v28 = *v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_21D717858(v24, v21, type metadata accessor for TTRListType);
  v28 = *v21;
  v33 = v21[8];
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_25;
  }

  v34 = *v26;
  v35 = v26[8];
  sub_21D1B2ABC();
  v36 = sub_21DBFB63C();

  if ((v36 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_21D7184B8(v24, type metadata accessor for TTRListType);
  v37 = v33 ^ v35 ^ 1;
  return v37 & 1;
}

uint64_t sub_21D717858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7178C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21D71790C()
{
  result = qword_27CE607E0;
  if (!qword_27CE607E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE607E8, &qword_21DC24D00);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE607E0);
  }

  return result;
}

unint64_t sub_21D717974()
{
  result = qword_27CE607F0;
  if (!qword_27CE607F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRListType.PredefinedSmartListVisibility, &type metadata for TTRListType.PredefinedSmartListVisibility, v0, v1);
    atomic_store(result, &qword_27CE607F0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRListType(char *a1, _BYTE *a2, uint64_t a3)
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
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = v13;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v11 = sub_21DBF6C1C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        goto LABEL_14;
      case 4:
        v12 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v12;
        sub_21DBF8E0C();
        goto LABEL_14;
      case 5:
LABEL_6:
        v8 = *a2;
        *a1 = *a2;
        v9 = v8;
LABEL_14:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

double destroy for TTRListType(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return result;
    }

LABEL_7:
    v5 = *a1;

    return result;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v6 = sub_21DBF6C1C();
      v7 = *(*(v6 - 8) + 8);

      v7(a1, v6);
      break;
    case 4:

      break;
    case 5:
      goto LABEL_7;
    default:
      return result;
  }

  return result;
}

_BYTE *initializeWithCopy for TTRListType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v12 = v11;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v9 = sub_21DBF6C1C();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_12;
      case 4:
        v10 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v10;
        sub_21DBF8E0C();
        goto LABEL_12;
      case 5:
LABEL_5:
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
LABEL_12:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_BYTE *assignWithCopy for TTRListType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D7184B8(a1, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v11 = v10;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v9 = sub_21DBF6C1C();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_13;
      case 4:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        sub_21DBF8E0C();
        goto LABEL_13;
      case 5:
LABEL_6:
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void *initializeWithTake for TTRListType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for TTRListType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D7184B8(a1, type metadata accessor for TTRListType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRListType.SortingCapability(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = sub_21DBF70DC();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v5 + 64);

  return memcpy(a1, a2, v7);
}

uint64_t destroy for TTRListType.SortingCapability(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v4 = sub_21DBF70DC();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TTRListType.SortingCapability(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF70DC();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TTRListType.SortingCapability(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D7184B8(a1, type metadata accessor for TTRListType.SortingCapability);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF70DC();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7184B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for TTRListType.SortingCapability(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF70DC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRListType.SortingCapability(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D7184B8(a1, type metadata accessor for TTRListType.SortingCapability);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF70DC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7186D4(uint64_t a1)
{
  result = sub_21DBF70DC();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t TTRRemindersListDataModelSourceBase.init(sortingStyle:canChangeSortingStyle:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t TTRRemindersMovingParamsForREMManualOrdering.init(uncompletedReminders:allowedCompletedReminderIDs:saveTarget:manualOrderingObjectID:manualOrderingListType:manualOrderingListID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t TTRRemindersListDataModelSourceBase.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_21D718894@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v4 = sub_21DBF70DC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D71891C(uint64_t a1, char a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  (*(v6 + 40))(v2 + v10, v9, v5);
  result = swift_endAccess();
  if (a2)
  {
    return (*(*v2 + 240))(result);
  }

  return result;
}

void *sub_21D718A58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  v4 = swift_beginAccess();
  if (*(v1 + v3))
  {
    MEMORY[0x28223BE20](v4);
    sub_21DBF5EFC();

    sub_21DBF814C();

    sub_21D18B95C(a1);

    sub_21D19510C(0, 0, 0, 0, 0, 0);
  }

  else
  {
    if (qword_27CE56C40 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE60810);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Using reminderFetchManager before it is initialized", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }
  }

  return 0;
}

double sub_21D718CB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  if (*(v2 + v5))
  {

    sub_21D71A5A0(a1, a2);
  }

  else
  {
    if (qword_27CE56C40 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE60810);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAECC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Using reminderFetchManager before it is initialized", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void *sub_21D718DEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  v3 = swift_beginAccess();
  if (*(v1 + v2))
  {
    MEMORY[0x28223BE20](v3);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    if (qword_27CE56C40 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE60810);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Using reminderFetchManager before it is initialized", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_21D718FE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = sub_21D71A71C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F8, &qword_21DC250B0);
    v5 = sub_21DBFC3DC();
    v6 = v5;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 64;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_11:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v4 + 48) + 8 * v16);
        v18 = *(*(v4 + 56) + 48 * v16);
        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(v6[6] + 8 * v16) = v17;
        *(v6[7] + 8 * v16) = v18;
        v19 = v6[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          break;
        }

        v6[2] = v21;
        v22 = v17;
        v23 = v18;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          return v6;
        }

        v15 = *(v4 + 64 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_27CE56C40 != -1)
  {
LABEL_22:
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_27CE60810);
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAECC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21D0C9000, v25, v26, "Using reminderFetchManager before it is initialized", v27, 2u);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  return sub_21D177534(MEMORY[0x277D84F90]);
}

void sub_21D719254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_21D71ACC4(a1);
  }

  else
  {
    if (qword_27CE56C40 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE60810);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Using reminderFetchManager before it is initialized", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }
}

double sub_21D719378@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_21D719388(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  if (*a5 != 2)
  {
    v25 = a2;
    v26 = a3;
    if (v13)
    {
      TTRDataViewMonitor.pause()();
    }

    goto LABEL_9;
  }

  if (!v13)
  {
    v25 = a2;
    v26 = a3;
LABEL_9:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for TTRDataViewMonitor(0, a6, AssociatedConformanceWitness, v16);
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    swift_unknownObjectRetain();
    v17 = sub_21DBFB12C();
    sub_21DBF60DC();
    v18 = sub_21DBF60BC();
    v19 = sub_21DBF60AC();
    v20 = *MEMORY[0x277D76648];
    v21 = *MEMORY[0x277D76768];
    v22 = *MEMORY[0x277D76648];
    v23 = v21;
    v27[0] = v20;
    v27[1] = v21;
    v28 = 1;
    v24 = sub_21DB74D48(v25, v26, a4, v17, v18, v19, v27, a7, a8);

    *a1 = v24;
    TTRDataViewMonitor.resume(userInteractive:)(1);
    return;
  }

  TTRDataViewMonitor.replaceDataView(with:)(a3);
}

uint64_t sub_21D719588(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_21D719640@<X0>(uint64_t a1@<X8>)
{
  v1 = *MEMORY[0x277D76648];
  v5 = *MEMORY[0x277D76768];
  v2 = *MEMORY[0x277D76768];
  *a1 = *MEMORY[0x277D76648];
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
  v3 = v1;

  return v5;
}

uint64_t sub_21D71969C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60810);
  v1 = __swift_project_value_buffer(v0, qword_27CE60810);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRRemindersMovingParamsForREMManualOrdering.saveTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TTRRemindersMovingParamsForREMManualOrdering.manualOrderingListID.getter()
{
  v1 = *(v0 + 48);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListDataModelSourceBase.__allocating_init(sortingStyle:canChangeSortingStyle:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t sub_21D7198AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v5 = sub_21DBF70DC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21D719938(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21DBF70DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_21D719A50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t TTRRemindersListDataModelSourceBase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21D719E1C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

void sub_21D719EF0(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 17) = v2;
}

void sub_21D719FC4(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 18) = v2;
}

double sub_21D71A06C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  sub_21DBF8E0C();

  return result;
}

double sub_21D71A0CC()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D71A104(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t TTRRemindersListDataModelSourceNewReminderContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*sub_21D71A1A4(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_21D24989C;
}

uint64_t sub_21D71A238()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRRemindersListDataModelSourceHideEmptySectionsContext.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_21D71A300()
{
  v1 = *(v0 + 16);
  v2 = sub_21DBFB5FC();

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 shouldAutoCategorizeItems];

  return v3;
}

id sub_21D71A35C()
{
  v1 = *(v0 + 16);
  v2 = sub_21DBFB5FC();

  if (v2 && (v3 = [v2 shouldAutoCategorizeItems], v2, v3))
  {
    return [objc_opt_self() isInternalInstall];
  }

  else
  {
    return 0;
  }
}

uint64_t TTRRemindersListDataModelSourceAutoCategorizationContext.init(list:)(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF604C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D44D98], v4, v6);
  v9 = sub_21DBF603C();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!a1)
  {
LABEL_6:
    type metadata accessor for TTRRemindersListDataModelSourceAutoCategorizationContext();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v10 = sub_21DBFB5FC();
  if (!v10)
  {
LABEL_5:

    goto LABEL_6;
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t TTRRemindersListDataModelSourceAutoCategorizationContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_21D71A5A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21DBF5EFC();

  sub_21DBF814C();

  sub_21D18B95C(a1);
  a2[3] = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[4] = 0;
  a2[5] = 0;
  sub_21D71C584(0, 0, 0, 0, 0, 0);
  return sub_21D19510C(0, 0, 0, 0, 0, 0);
}

uint64_t sub_21D71A71C(uint64_t a1)
{
  v2 = v1;
  v13 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F98];
  v11[2] = v1[10];
  sub_21DBF5EFC();

  sub_21DBF814C();

  v3 = v13;
  if (v13 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_4:

    return v12;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_3:
  v4 = v1[6];
  v5 = v1[5];
  swift_beginAccess();
  v6 = v2[4];

  v7 = v6;
  v8 = v4(v5, v3, v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = v12;
  sub_21D71C5F4(v8, sub_21DAB6894, 0, isUniquelyReferenced_nonNull_native, v11);

  return v11[0];
}

void sub_21D71A8D0(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, uint64_t *a3, void *a4)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v7 = sub_21DBFBD7C();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = v6 & 0xC000000000000001;
      swift_beginAccess();
      v9 = 0;
      v46 = v6 & 0xC000000000000001;
      v47 = v6 & 0xFFFFFFFFFFFFFF8;
      v44 = isUniquelyReferenced_nonNull_native;
      v45 = a4;
      v42 = v7;
      v43 = v6;
      do
      {
        if (v8)
        {
          v12 = MEMORY[0x223D44740](v9, v6);
        }

        else
        {
          if (v9 >= *(v47 + 16))
          {
            goto LABEL_30;
          }

          v12 = *(v6 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v15 = *(isUniquelyReferenced_nonNull_native + 64);
        if (!*(v15 + 16))
        {
          goto LABEL_20;
        }

        sub_21DBF8E0C();
        v16 = sub_21D17E07C(v13);
        if ((v17 & 1) == 0)
        {

LABEL_20:
          v35 = v13;
          MEMORY[0x223D42D80]();
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
            v8 = v46;
          }

          sub_21DBFA6CC();

          goto LABEL_6;
        }

        v18 = *(v15 + 56) + 48 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v51 = *(v18 + 24);
        v6 = *(v18 + 32);
        v22 = *(v18 + 40);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v23 = v19;
        v49 = v20;
        v24 = v20;
        v50 = v21;
        v25 = v21;

        v52 = v23;
        v48 = v24;
        a4 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *a3;
        *a3 = 0x8000000000000000;
        v28 = sub_21D17E07C(v13);
        v29 = *(v26 + 16);
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_31;
        }

        v32 = v27;
        if (*(v26 + 24) >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v26;
            if ((v27 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_21D220360();
            isUniquelyReferenced_nonNull_native = v26;
            if ((v32 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          sub_21D2159CC(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_21D17E07C(v13);
          if ((v32 & 1) != (v34 & 1))
          {
            sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
            sub_21DBFC70C();
            __break(1u);
            return;
          }

          v28 = v33;
          isUniquelyReferenced_nonNull_native = v26;
          if ((v32 & 1) == 0)
          {
LABEL_25:
            *(isUniquelyReferenced_nonNull_native + 8 * (v28 >> 6) + 64) |= 1 << v28;
            *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v28) = v13;
            v36 = *(isUniquelyReferenced_nonNull_native + 56) + 48 * v28;
            *v36 = v52;
            *(v36 + 8) = v49;
            *(v36 + 16) = v50;
            *(v36 + 24) = v51;
            *(v36 + 32) = v6;
            *(v36 + 40) = v22;

            v37 = *(isUniquelyReferenced_nonNull_native + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_32;
            }

            *(isUniquelyReferenced_nonNull_native + 16) = v39;
            goto LABEL_5;
          }
        }

        v10 = *(isUniquelyReferenced_nonNull_native + 56) + 48 * v28;
        v11 = *v10;
        v40 = *(v10 + 8);
        v41 = *(v10 + 16);
        *v10 = v52;
        *(v10 + 8) = v49;
        *(v10 + 16) = v50;
        *(v10 + 24) = v51;
        *(v10 + 32) = v6;
        *(v10 + 40) = v22;

LABEL_5:
        *a3 = isUniquelyReferenced_nonNull_native;

        isUniquelyReferenced_nonNull_native = v44;
        a4 = v45;
        v7 = v42;
        v6 = v43;
        v8 = v46;
LABEL_6:
        ++v9;
      }

      while (v14 != v7);
    }
  }
}

uint64_t sub_21D71ACC4(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84FA0];
  v22 = *(v1 + 80);
  v19 = aBlock;
  v20 = v1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  v9 = sub_21DBF8E0C();
  v10 = sub_21D19ED08(v9);

  v22 = v10;
  sub_21D9F84C8(aBlock[0], v11);
  v12 = sub_21D198698(v22);

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (!sub_21DBFBD7C())
    {
    }

    goto LABEL_4;
  }

  if (*(v12 + 2))
  {
LABEL_4:
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    aBlock[4] = sub_21D71DC5C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_78_3;
    v15 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v15);
    _Block_release(v15);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v18);
  }
}

uint64_t sub_21D71B048(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84FA0];
  v22 = *(v1 + 80);
  v19 = aBlock;
  v20 = v1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  v9 = sub_21DBF8E0C();
  v10 = sub_21D19ED08(v9);

  v22 = v10;
  sub_21D9F84C8(aBlock[0], v11);
  v12 = sub_21D198698(v22);

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (!sub_21DBFBD7C())
    {
    }

    goto LABEL_4;
  }

  if (*(v12 + 2))
  {
LABEL_4:
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    aBlock[4] = sub_21D71DBA0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_68_0;
    v15 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v15);
    _Block_release(v15);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v18);
  }
}

uint64_t sub_21D71B3CC(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84FA0];
  v22 = *(v1 + 80);
  v19 = aBlock;
  v20 = v1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  v9 = sub_21DBF8E0C();
  v10 = sub_21D19ED08(v9);

  v22 = v10;
  sub_21D9F84C8(aBlock[0], v11);
  v12 = sub_21D198698(v22);

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (!sub_21DBFBD7C())
    {
    }

    goto LABEL_4;
  }

  if (*(v12 + 2))
  {
LABEL_4:
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    aBlock[4] = sub_21D71DB54;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_83;
    v15 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v15);
    _Block_release(v15);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v18);
  }
}

void sub_21D71B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v21 = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](Strong);
  sub_21DBF5EFC();

  sub_21DBF814C();

  v6 = sub_21DBF8E0C();
  v7 = sub_21D19ED08(v6);

  sub_21D9F84C8(v21, v8);
  v9 = sub_21D198698(v7);

  v10 = v9 < 0 || (v9 & 0x4000000000000000) != 0;
  if (v10)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_7;
    }

LABEL_17:

    return;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_17;
  }

LABEL_7:
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F108);
  sub_21DBF8E0C();
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAE9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v10)
    {
      v15 = sub_21DBFBD7C();
    }

    else
    {
      v15 = *(v9 + 16);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_21D0C9000, v12, v13, "Pre-fetching {objectsReallyToFetch: %ld}", v14, 0xCu);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  else
  {
  }

  v16 = *(v5 + 48);
  v17 = *(v5 + 40);

  v18 = [v17 nonUserInteractiveStore];
  swift_beginAccess();
  v19 = *(v5 + 32);
  v16(v18, v9, v19);

  MEMORY[0x28223BE20](v20);

  sub_21DBF814C();
}

uint64_t sub_21D71BAF0(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v39 = (v3 + 63) >> 6;
  sub_21DBF8E0C();
  v6 = 0;
  v42 = v2;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v6 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = *(a1 + 56) + 48 * v10;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v45 = *(v12 + 24);
    v17 = *(v12 + 32);
    v16 = *(v12 + 40);
    v18 = v11;
    v19 = v14;
    v20 = v13;
    v21 = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (!v11)
    {
    }

    v44 = v19;
    swift_beginAccess();
    v22 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a2 + 64);
    *(a2 + 64) = 0x8000000000000000;
    v25 = sub_21D17E07C(v22);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_21D2159CC(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_21D17E07C(v22);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v33 = v24;
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v37 = v25;
    sub_21D220360();
    v25 = v37;
    v33 = v24;
    if (v31)
    {
LABEL_4:
      v7 = v33[7] + 48 * v25;
      v8 = *v7;
      v40 = *(v7 + 8);
      v41 = *(v7 + 16);
      *v7 = v44;
      *(v7 + 8) = v13;
      *(v7 + 16) = v15;
      *(v7 + 24) = v45;
      *(v7 + 32) = v17;
      *(v7 + 40) = v16;

      goto LABEL_5;
    }

LABEL_18:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    *(v33[6] + 8 * v25) = v22;
    v34 = v33[7] + 48 * v25;
    *v34 = v44;
    *(v34 + 8) = v13;
    *(v34 + 16) = v15;
    *(v34 + 24) = v45;
    *(v34 + 32) = v17;
    *(v34 + 40) = v16;
    v35 = v33[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_25;
    }

    v33[2] = v36;
LABEL_5:
    v5 &= v5 - 1;
    *(a2 + 64) = v33;
    swift_endAccess();

    v2 = v42;
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v9 >= v39)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v6;
    if (v5)
    {
      v6 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}