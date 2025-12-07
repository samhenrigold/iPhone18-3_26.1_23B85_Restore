double sub_21D7ABD2C(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, char a17)
{
  v17 = a14;
  v18 = a12;
  v19 = a10;
  if (a17 != 1)
  {
    if (a17)
    {
      return v23;
    }

    v26 = a7;
    v27 = a8;
    v24 = a5;
    v25 = a6;
    v20 = a4;
    v21 = a3;
    v22 = a2;
    sub_21DBF8E0C();
    a14 = a15;
    a15 = a16;
    a12 = a13;
    a13 = v17;
    a10 = a11;
    a11 = v18;
    result = v22;
    a2 = v21;
    a3 = v20;
    a4 = v24;
    a5 = v25;
    a6 = v26;
    a7 = v27;
    a8 = v19;
  }

  return sub_21D7ABE0C(result, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15);
}

double sub_21D7ABE0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a1)
  {
    v16 = a14;
    v17 = a1;
    v18 = a2;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

void destroy for TTRReminderDetailViewModel(id *a1, int *a2)
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

  v22 = a1 + a2[8];
  sub_21D1078C0(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3), *(v22 + 4), *(v22 + 5), v22[48]);
  v23 = a1 + a2[9];
  if (*(v23 + 1) != 1)
  {

    sub_21D1078C0(*(v23 + 2), *(v23 + 3), *(v23 + 4), *(v23 + 5), *(v23 + 6), *(v23 + 7), v23[64]);
    sub_21D0FB9F4(*(v23 + 9), *(v23 + 10), v23[88]);
  }

  if (*(a1 + a2[13] + 8))
  {
  }

  if (*(a1 + a2[19] + 8))
  {
  }

  v24 = a1 + a2[20];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = sub_21DBF563C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 8);
    v28(v24, v26);
    v29 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
    v30 = sub_21DBF509C();
    (*(*(v30 - 8) + 8))(&v24[v29], v30);

    v31 = &v24[*(v25 + 64)];
    v32 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
    {

      v33 = *(v32 + 20);
      if (!(*(v27 + 48))(&v31[v33], 1, v26))
      {
        v28(&v31[v33], v26);
      }
    }
  }

  v34 = a1 + a2[23];
  sub_21D48C240(*v34, *(v34 + 1), *(v34 + 2), *(v34 + 3), v34[32]);

  v35 = (a1 + a2[25]);
  if (v35[1] >= 3)
  {
  }

  v36 = a1 + a2[26];
  if (*v36)
  {

    v37 = *(v36 + 1);
    if (v37)
    {
    }
  }

  v38 = a1 + a2[27];
  sub_21D7AC858(*v38, *(v38 + 1), *(v38 + 2), *(v38 + 3), *(v38 + 4), *(v38 + 5), *(v38 + 6), *(v38 + 7), *(v38 + 4), *(v38 + 8), *(v38 + 9), *(v38 + 10), *(v38 + 11), *(v38 + 12), *(v38 + 13), *(v38 + 14), v38[120]);

  if (*(a1 + a2[29] + 8))
  {
  }

  v39 = a2[33];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  if (!(*(*(v40 - 8) + 48))(a1 + v39, 1, v40))
  {
    v41 = sub_21DBF54CC();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(a1 + v39, 1, v41))
    {
      (*(v42 + 8))(a1 + v39, v41);
    }
  }

  v43 = (a1 + a2[35]);
  if (v43[1] != 1)
  {
  }

  v44 = a1 + a2[37];
  v45 = v44[40];
  if (v45 != 255)
  {
    sub_21D7A98B4(*v44, *(v44 + 1), *(v44 + 2), *(v44 + 3), *(v44 + 4), v45);
  }

  v46 = a1 + a2[38];
  if (*v46)
  {

    if (*(v46 + 7) >= 2uLL)
    {

      v47 = *(v46 + 8);
    }
  }
}

void sub_21D7AC858(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, char a17)
{
  v17 = a14;
  v18 = a12;
  v19 = a10;
  if (a17 != 1)
  {
    if (a17)
    {
      return;
    }

    v25 = a7;
    v26 = a8;
    v23 = a5;
    v24 = a6;
    v20 = a4;
    v21 = a3;
    v22 = a2;

    a14 = a15;
    a15 = a16;
    a12 = a13;
    a13 = v17;
    a10 = a11;
    a11 = v18;
    result = v22;
    a2 = v21;
    a3 = v20;
    a4 = v23;
    a5 = v24;
    a6 = v25;
    a7 = v26;
    a8 = v19;
  }

  sub_21D7AC938(result, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15);
}

void sub_21D7AC938(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a1)
  {
  }
}

void **initializeWithCopy for TTRReminderDetailViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v321 = a2;
  v322 = a3;
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
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
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
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v312 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v312, v65);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v312;
        v57[64] = v65;
        *(v57 + 65) = *(v58 + 65);
        v66 = v58[120];
        if (v66 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v67 = *(v58 + 9);
          v313 = *(v58 + 10);
          v68 = *(v58 + 11);
          v69 = *(v58 + 12);
          v70 = *(v58 + 13);
          v71 = *(v58 + 14);
          v72 = v66 & 1;
          sub_21D0FB960(v67, v313, v68, v69, v70, v71, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v313;
          *(v57 + 11) = v68;
          *(v57 + 12) = v69;
          *(v57 + 13) = v70;
          *(v57 + 14) = v71;
          v57[120] = v72;
        }

        a2 = v321;
        a3 = v322;
        v57[121] = v58[121];
        goto LABEL_96;
      }

LABEL_93:
      v73 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v73;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v74 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v74;
      v75 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v75;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v76 = v55[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v55[5];
    v57 = a1 + v79;
    v58 = a2 + v79;
    v80 = *(a2 + v79 + 8);
    if (v80)
    {
      *v57 = *v58;
      *(v57 + 1) = v80;
      v81 = *(v58 + 2);
      v82 = *(v58 + 3);
      v83 = *(v58 + 4);
      v84 = *(v58 + 5);
      v85 = *(v58 + 6);
      v86 = *(v58 + 7);
      v314 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v81, v82, v83, v84, v85, v86, v314);
      *(v57 + 2) = v81;
      *(v57 + 3) = v82;
      *(v57 + 4) = v83;
      *(v57 + 5) = v84;
      *(v57 + 6) = v85;
      *(v57 + 7) = v86;
      v57[64] = v314;
      *(v57 + 65) = *(v58 + 65);
      v87 = v58[120];
      if (v87 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v88 = *(v58 + 9);
        v315 = *(v58 + 10);
        v89 = *(v58 + 11);
        v90 = *(v58 + 12);
        v91 = *(v58 + 13);
        v92 = *(v58 + 14);
        v93 = v87 & 1;
        sub_21D0FB960(v88, v315, v89, v90, v91, v92, v87 & 1);
        *(v57 + 9) = v88;
        *(v57 + 10) = v315;
        *(v57 + 11) = v89;
        *(v57 + 12) = v90;
        *(v57 + 13) = v91;
        *(v57 + 14) = v92;
        v57[120] = v93;
      }

      a2 = v321;
      a3 = v322;
      v57[121] = v58[121];
      goto LABEL_96;
    }

    goto LABEL_93;
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
      goto LABEL_127;
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
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v94 = *(a2 + v13);
      *(a1 + v13) = v94;
      v95 = v94;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v96 = sub_21DBF563C();
    (*(*(v96 - 8) + 16))(a1 + v13, a2 + v13, v96);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
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
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (a1 + v40);
    v42 = (a2 + v40);
    v43 = v42[1];
    if (v43)
    {
      *v41 = *v42;
      v41[1] = v43;
      v44 = v42[2];
      v41[2] = v44;
      sub_21DBF8E0C();
      v45 = v44;
    }

    else
    {
      *v41 = *v42;
      v41[2] = v42[2];
    }

    goto LABEL_127;
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
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(a1, a2, v47);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_128;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v97 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v98 = (a1 + v97);
  v99 = (a2 + v97);
  v101 = *v99;
  v100 = v99[1];
  v102 = a3[7];
  v103 = a3[8];
  v104 = *(a2 + v102);
  *v98 = v101;
  v98[1] = v100;
  *(a1 + v102) = v104;
  v105 = a1 + v103;
  v106 = a2 + v103;
  v107 = *(a2 + v103);
  v108 = *(a2 + v103 + 8);
  v109 = *(a2 + v103 + 16);
  v110 = *(a2 + v103 + 24);
  v111 = *(a2 + v103 + 32);
  v112 = *(a2 + v103 + 40);
  v113 = v106[48];
  sub_21DBF8E0C();
  v114 = v104;
  sub_21D0FB960(v107, v108, v109, v110, v111, v112, v113);
  *v105 = v107;
  *(v105 + 1) = v108;
  *(v105 + 2) = v109;
  *(v105 + 3) = v110;
  *(v105 + 4) = v111;
  *(v105 + 5) = v112;
  v105[48] = v113;
  v116 = v321;
  v115 = v322;
  v117 = v322[9];
  v118 = a1 + v117;
  v119 = v321 + v117;
  v120 = *(v321 + v117 + 8);
  if (v120 == 1)
  {
    v121 = *(v119 + 3);
    *(v118 + 2) = *(v119 + 2);
    *(v118 + 3) = v121;
    *(v118 + 4) = *(v119 + 4);
    *(v118 + 73) = *(v119 + 73);
    v122 = *(v119 + 1);
    *v118 = *v119;
    *(v118 + 1) = v122;
  }

  else
  {
    *v118 = *v119;
    *(v118 + 1) = v120;
    v123 = *(v119 + 2);
    v124 = *(v119 + 3);
    v125 = *(v119 + 4);
    v126 = *(v119 + 5);
    v127 = *(v119 + 6);
    v128 = *(v119 + 7);
    v129 = v119[64];
    sub_21DBF8E0C();
    sub_21D0FB960(v123, v124, v125, v126, v127, v128, v129);
    *(v118 + 2) = v123;
    *(v118 + 3) = v124;
    *(v118 + 4) = v125;
    *(v118 + 5) = v126;
    *(v118 + 6) = v127;
    *(v118 + 7) = v128;
    v118[64] = v129;
    v116 = v321;
    v115 = v322;
    v130 = *(v119 + 9);
    v131 = *(v119 + 10);
    LOBYTE(v125) = v119[88];
    sub_21D0FB9BC(v130, v131, v125);
    *(v118 + 9) = v130;
    *(v118 + 10) = v131;
    v118[88] = v125;
  }

  v132 = v115[11];
  *(a1 + v115[10]) = *(v116 + v115[10]);
  *(a1 + v132) = *(v116 + v132);
  v133 = v115[12];
  v134 = v115[13];
  v135 = *(v116 + v133);
  *(a1 + v133) = v135;
  v136 = (a1 + v134);
  v137 = (v116 + v134);
  v138 = *(v116 + v134 + 8);
  v139 = v135;
  if (v138)
  {
    *v136 = *v137;
    v136[1] = v138;
    v140 = v137[3];
    v136[2] = v137[2];
    v136[3] = v140;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v141 = *(v137 + 1);
    *v136 = *v137;
    *(v136 + 1) = v141;
  }

  v142 = v115[15];
  *(a1 + v115[14]) = *(v116 + v115[14]);
  *(a1 + v142) = *(v116 + v142);
  v143 = v115[17];
  *(a1 + v115[16]) = *(v116 + v115[16]);
  *(a1 + v143) = *(v116 + v143);
  v144 = v115[18];
  v145 = v115[19];
  v146 = *(v116 + v144);
  *(a1 + v144) = v146;
  v147 = (a1 + v145);
  v148 = (v116 + v145);
  v149 = *(v116 + v145 + 8);
  v150 = v146;
  if (v149)
  {
    *v147 = *v148;
    v147[1] = v149;
    v151 = v148[3];
    v147[2] = v148[2];
    v147[3] = v151;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v152 = *(v148 + 1);
    *v147 = *v148;
    *(v147 + 1) = v152;
  }

  v153 = v115[20];
  v154 = a1 + v153;
  v155 = v116 + v153;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v157 = *(v156 - 1);
  v320 = a1;
  if ((*(v157 + 48))(v155, 1, v156))
  {
    v158 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v154, v155, *(*(v158 - 8) + 64));
  }

  else
  {
    v316 = v157;
    v159 = sub_21DBF563C();
    v306 = *(v159 - 8);
    v308 = v159;
    v304 = *(v306 + 16);
    v304(v154, v155);
    v160 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v154[v160[5]] = v155[v160[5]];
    v161 = v160[6];
    v162 = sub_21DBF509C();
    (*(*(v162 - 8) + 16))(&v154[v161], &v155[v161], v162);
    v154[v160[7]] = v155[v160[7]];
    v163 = v160[8];
    v164 = &v154[v163];
    v165 = &v155[v163];
    v164[16] = v165[16];
    *v164 = *v165;
    v154[v160[9]] = v155[v160[9]];
    v154[v160[10]] = v155[v160[10]];
    v154[v160[11]] = v155[v160[11]];
    v166 = v160[12];
    v167 = &v154[v166];
    v168 = &v155[v166];
    v169 = *(v168 + 1);
    *v167 = *v168;
    *(v167 + 1) = v169;
    v170 = v156[12];
    v171 = &v154[v170];
    v172 = &v155[v170];
    *v171 = *v172;
    v171[8] = v172[8];
    v173 = *(v172 + 3);
    *(v171 + 2) = *(v172 + 2);
    *(v171 + 3) = v173;
    v174 = *(v172 + 5);
    *(v171 + 4) = *(v172 + 4);
    *(v171 + 5) = v174;
    v175 = v156[16];
    __dst = &v154[v175];
    v310 = &v155[v175];
    v176 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v177 = *(v176 - 8);
    v178 = *(v177 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v178(v310, 1, v176))
    {
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v310, *(*(v179 - 8) + 64));
      v116 = v321;
      v115 = v322;
      v180 = v316;
      a1 = v320;
    }

    else
    {
      v181 = *(v310 + 1);
      *__dst = *v310;
      *(__dst + 1) = v181;
      v182 = *(v176 + 20);
      v183 = *(v306 + 48);
      sub_21DBF8E0C();
      if (v183(&v310[v182], 1, v308))
      {
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&__dst[v182], &v310[v182], *(*(v184 - 8) + 64));
      }

      else
      {
        (v304)(&__dst[v182], &v310[v182], v308);
        (*(v306 + 56))(&__dst[v182], 0, 1, v308);
      }

      v115 = v322;
      a1 = v320;
      (*(v177 + 56))(__dst, 0, 1, v176);
      v116 = v321;
      v180 = v316;
    }

    v154[v156[20]] = v155[v156[20]];
    v154[v156[24]] = v155[v156[24]];
    (*(v180 + 56))(v154, 0, 1, v156);
  }

  v185 = v115[22];
  *(a1 + v115[21]) = *(v116 + v115[21]);
  *(a1 + v185) = *(v116 + v185);
  v186 = v115[23];
  v187 = a1 + v186;
  v188 = v116 + v186;
  v189 = *v188;
  v190 = *(v188 + 1);
  v191 = *(v188 + 2);
  v192 = *(v188 + 3);
  v193 = v188[32];
  sub_21D48BB60(*v188, v190, v191, v192, v193);
  *v187 = v189;
  *(v187 + 1) = v190;
  *(v187 + 2) = v191;
  *(v187 + 3) = v192;
  v187[32] = v193;
  v194 = v115[24];
  v195 = v115[25];
  v196 = a1 + v194;
  v197 = v116 + v194;
  *v196 = *v197;
  v196[8] = v197[8];
  v198 = (a1 + v195);
  v199 = (v116 + v195);
  v200 = *(v116 + v195 + 8);
  sub_21DBF8E0C();
  if (v200 >= 3)
  {
    *v198 = *v199;
    v198[1] = v200;
    v201 = v199[2];
    v198[2] = v201;
    sub_21DBF8E0C();
    v202 = v201;
  }

  else
  {
    *v198 = *v199;
    v198[2] = v199[2];
  }

  v203 = v115[26];
  v204 = a1 + v203;
  v205 = v116 + v203;
  v206 = *(v116 + v203);
  if (v206)
  {
    *v204 = v206;
    v207 = *(v205 + 1);
    sub_21DBF8E0C();
    if (v207)
    {
      v209 = *(v205 + 2);
      v208 = *(v205 + 3);
      *(v204 + 1) = v207;
      *(v204 + 2) = v209;
      v211 = *(v205 + 4);
      v210 = *(v205 + 5);
      *(v204 + 3) = v208;
      *(v204 + 4) = v211;
      v213 = *(v205 + 6);
      v212 = *(v205 + 7);
      *(v204 + 5) = v210;
      *(v204 + 6) = v213;
      v215 = *(v205 + 8);
      v214 = *(v205 + 9);
      *(v204 + 7) = v212;
      *(v204 + 8) = v215;
      v217 = *(v205 + 10);
      v216 = *(v205 + 11);
      *(v204 + 9) = v214;
      *(v204 + 10) = v217;
      v218 = *(v205 + 12);
      *(v204 + 11) = v216;
      *(v204 + 12) = v218;
      v204[104] = v205[104];
      v219 = *(v205 + 14);
      *(v204 + 14) = v219;
      v220 = v207;
      v221 = v209;
      v116 = v321;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v222 = v219;
    }

    else
    {
      v227 = *(v205 + 88);
      *(v204 + 72) = *(v205 + 72);
      *(v204 + 88) = v227;
      *(v204 + 104) = *(v205 + 104);
      v228 = *(v205 + 24);
      *(v204 + 8) = *(v205 + 8);
      *(v204 + 24) = v228;
      v223 = *(v205 + 56);
      *(v204 + 40) = *(v205 + 40);
      *(v204 + 56) = v223;
    }
  }

  else
  {
    v224 = *(v205 + 5);
    *(v204 + 4) = *(v205 + 4);
    *(v204 + 5) = v224;
    *(v204 + 6) = *(v205 + 6);
    *(v204 + 14) = *(v205 + 14);
    v225 = *(v205 + 1);
    *v204 = *v205;
    *(v204 + 1) = v225;
    v223 = *(v205 + 2);
    v226 = *(v205 + 3);
    *(v204 + 2) = v223;
    *(v204 + 3) = v226;
  }

  v229 = v322[27];
  v230 = a1 + v229;
  v231 = v116 + v229;
  v232 = *v231;
  v233 = *(v231 + 1);
  v234 = *(v231 + 2);
  v235 = *(v231 + 3);
  v236 = *(v231 + 4);
  v237 = *(v231 + 5);
  v238 = *(v231 + 6);
  v239 = *(v231 + 7);
  v240 = *(v231 + 8);
  v303 = *(v231 + 9);
  v305 = *(v231 + 10);
  v307 = *(v231 + 11);
  v309 = *(v231 + 12);
  v311 = *(v231 + 13);
  v317 = *(v231 + 14);
  __dsta = v231[120];
  sub_21D7ABD2C(*v231, v233, v234, v235, v236, v237, v238, v239, v223, v240, v303, v305, v307, v309, v311, v317, __dsta);
  *v230 = v232;
  *(v230 + 1) = v233;
  *(v230 + 2) = v234;
  *(v230 + 3) = v235;
  *(v230 + 4) = v236;
  *(v230 + 5) = v237;
  *(v230 + 6) = v238;
  *(v230 + 7) = v239;
  *(v230 + 8) = v240;
  v241 = v320;
  *(v230 + 9) = v303;
  *(v230 + 10) = v305;
  *(v230 + 11) = v307;
  *(v230 + 12) = v309;
  *(v230 + 13) = v311;
  *(v230 + 14) = v317;
  v230[120] = __dsta;
  v242 = v322[28];
  v243 = v322[29];
  v244 = v320 + v242;
  v245 = v321 + v242;
  *v244 = *v245;
  v246 = *(v245 + 2);
  *(v244 + 1) = *(v245 + 1);
  *(v244 + 2) = v246;
  v247 = (v320 + v243);
  v248 = (v321 + v243);
  v249 = *(v321 + v243 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v249)
  {
    *v247 = *v248;
    v247[1] = v249;
    v250 = v248[2];
    v251 = v248[3];
    v247[2] = v250;
    v247[3] = v251;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v252 = *(v248 + 1);
    *v247 = *v248;
    *(v247 + 1) = v252;
  }

  v253 = v322[31];
  *(v320 + v322[30]) = *(v321 + v322[30]);
  v254 = v320 + v253;
  v255 = v321 + v253;
  *v254 = *v255;
  v254[8] = v255[8];
  v256 = v322[33];
  *(v320 + v322[32]) = *(v321 + v322[32]);
  sub_21DBF8E0C();
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v258 = *(v257 - 8);
  if ((*(v258 + 48))(v321 + v256, 1, v257))
  {
    v259 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(v320 + v256, v321 + v256, *(*(v259 - 8) + 64));
  }

  else
  {
    v260 = sub_21DBF54CC();
    v261 = *(v260 - 8);
    if ((*(v261 + 48))(v321 + v256, 1, v260))
    {
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(v320 + v256, v321 + v256, *(*(v262 - 8) + 64));
    }

    else
    {
      (*(v261 + 16))(v320 + v256, v321 + v256, v260);
      (*(v261 + 56))(v320 + v256, 0, 1, v260);
    }

    (*(v258 + 56))(v320 + v256, 0, 1, v257);
  }

  v263 = v322[34];
  v264 = v322[35];
  v265 = (v320 + v263);
  v266 = (v321 + v263);
  v267 = v266[1];
  *v265 = *v266;
  v265[1] = v267;
  v268 = v320 + v264;
  v269 = v321 + v264;
  v270 = *(v321 + v264 + 8);
  sub_21DBF8E0C();
  if (v270 == 1)
  {
    v271 = *(v269 + 3);
    *(v268 + 2) = *(v269 + 2);
    *(v268 + 3) = v271;
    *(v268 + 4) = *(v269 + 4);
    v272 = *(v269 + 1);
    *v268 = *v269;
    *(v268 + 1) = v272;
  }

  else
  {
    *v268 = *v269;
    *(v268 + 1) = v270;
    v273 = *(v269 + 3);
    *(v268 + 2) = *(v269 + 2);
    *(v268 + 3) = v273;
    v274 = *(v269 + 5);
    *(v268 + 4) = *(v269 + 4);
    *(v268 + 5) = v274;
    v268[48] = v269[48];
    v275 = *(v269 + 8);
    *(v268 + 7) = *(v269 + 7);
    *(v268 + 8) = v275;
    v276 = *(v269 + 9);
    *(v268 + 9) = v276;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v277 = v276;
    v241 = v320;
  }

  v278 = v322[37];
  *(v241 + v322[36]) = *(v321 + v322[36]);
  v279 = v241 + v278;
  v280 = v321 + v278;
  v281 = *(v321 + v278 + 40);
  sub_21DBF8E0C();
  if (v281 == 255)
  {
    v287 = *(v280 + 1);
    *v279 = *v280;
    *(v279 + 1) = v287;
    *(v279 + 25) = *(v280 + 25);
  }

  else
  {
    v282 = *v280;
    v283 = *(v280 + 1);
    v284 = *(v280 + 2);
    v285 = *(v280 + 3);
    v286 = *(v280 + 4);
    sub_21D7A9844(v282, v283, v284, v285, v286, v281);
    *v279 = v282;
    *(v279 + 1) = v283;
    *(v279 + 2) = v284;
    *(v279 + 3) = v285;
    *(v279 + 4) = v286;
    v279[40] = v281;
  }

  v288 = v322[38];
  v289 = v241 + v288;
  v290 = v321 + v288;
  v291 = *(v321 + v288);
  if (v291)
  {
    v292 = *(v290 + 1);
    v293 = *(v290 + 2);
    *v289 = v291;
    *(v289 + 1) = v292;
    v294 = *(v290 + 3);
    v295 = *(v290 + 4);
    *(v289 + 2) = v293;
    *(v289 + 3) = v294;
    *(v289 + 4) = v295;
    v296 = *(v290 + 7);
    v297 = v291;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v296 == 1)
    {
      *(v289 + 40) = *(v290 + 40);
      *(v289 + 56) = *(v290 + 56);
    }

    else
    {
      v289[40] = v290[40];
      if (v296)
      {
        *(v289 + 6) = *(v290 + 6);
        *(v289 + 7) = v296;
        v300 = *(v290 + 8);
        *(v289 + 8) = v300;
        sub_21DBF8E0C();
        v301 = v300;
      }

      else
      {
        *(v289 + 3) = *(v290 + 3);
        *(v289 + 8) = *(v290 + 8);
      }
    }

    return v320;
  }

  else
  {
    v298 = *(v290 + 3);
    *(v289 + 2) = *(v290 + 2);
    *(v289 + 3) = v298;
    *(v289 + 8) = *(v290 + 8);
    v299 = *(v290 + 1);
    *v289 = *v290;
    *(v289 + 1) = v299;
  }

  return v241;
}

void **assignWithCopy for TTRReminderDetailViewModel(void **a1, void **a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D799ED4(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *v5 = *v4;
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
        *v5 = *v4;
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
        goto LABEL_34;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v4, v49);
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
        v50 = *v4;
        *v5 = *v4;
        v51 = v50;
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
      memcpy(v5, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v4 + v56;
      if (*(v4 + v56 + 8))
      {
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = *(v58 + 2);
        v60 = *(v58 + 3);
        v61 = *(v58 + 4);
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v64 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v64, v65);
        *(v57 + 2) = v59;
        *(v57 + 3) = v60;
        *(v57 + 4) = v61;
        *(v57 + 5) = v62;
        *(v57 + 6) = v63;
        *(v57 + 7) = v64;
        v57[64] = v65;
        v57[65] = v58[65];
        v57[66] = v58[66];
        v57[67] = v58[67];
        v57[68] = v58[68];
        v66 = v58[120];
        if (v66 == 255)
        {
          v80 = *(v58 + 72);
          v81 = *(v58 + 88);
          v82 = *(v58 + 104);
          v57[120] = v58[120];
          *(v57 + 104) = v82;
          *(v57 + 88) = v81;
          *(v57 + 72) = v80;
        }

        else
        {
          v67 = *(v58 + 9);
          v68 = *(v58 + 10);
          v69 = *(v58 + 11);
          v70 = *(v58 + 12);
          v71 = *(v58 + 13);
          v72 = *(v58 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v68;
          *(v57 + 11) = v69;
          *(v57 + 12) = v70;
          *(v57 + 13) = v71;
          *(v57 + 14) = v72;
          v57[120] = v73;
        }

        v4 = a2;
        v3 = a3;
        v57[121] = v58[121];
        v5 = a1;
        goto LABEL_97;
      }

LABEL_94:
      v74 = *v58;
      v75 = *(v58 + 1);
      v76 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v76;
      *v57 = v74;
      *(v57 + 1) = v75;
      v77 = *(v58 + 4);
      v78 = *(v58 + 5);
      v79 = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      *(v57 + 5) = v78;
      *(v57 + 6) = v79;
      *(v57 + 4) = v77;
      v3 = a3;
LABEL_97:
      *(v5 + v55[6]) = *(v4 + v55[6]);
      *(v5 + v55[7]) = *(v4 + v55[7]);
      *(v5 + v55[8]) = *(v4 + v55[8]);
      *(v5 + v55[9]) = *(v4 + v55[9]);
      *(v5 + v55[10]) = *(v4 + v55[10]);
      v83 = v55[11];
      v84 = *(v4 + v83);
      *(v5 + v83) = v84;
      v85 = v84;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v4, v52);
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
      v53 = *v4;
      *v5 = *v4;
      v54 = v53;
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
    memcpy(v5, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v55[5];
    v57 = v5 + v86;
    v58 = v4 + v86;
    if (*(v4 + v86 + 8))
    {
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v87 = *(v58 + 2);
      v88 = *(v58 + 3);
      v89 = *(v58 + 4);
      v90 = *(v58 + 5);
      v92 = *(v58 + 6);
      v91 = *(v58 + 7);
      v93 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v87, v88, v89, v90, v92, v91, v93);
      *(v57 + 2) = v87;
      *(v57 + 3) = v88;
      *(v57 + 4) = v89;
      *(v57 + 5) = v90;
      *(v57 + 6) = v92;
      *(v57 + 7) = v91;
      v57[64] = v93;
      v57[65] = v58[65];
      v57[66] = v58[66];
      v57[67] = v58[67];
      v57[68] = v58[68];
      v94 = v58[120];
      if (v94 == 255)
      {
        v102 = *(v58 + 72);
        v103 = *(v58 + 88);
        v104 = *(v58 + 104);
        v57[120] = v58[120];
        *(v57 + 104) = v104;
        *(v57 + 88) = v103;
        *(v57 + 72) = v102;
      }

      else
      {
        v95 = *(v58 + 9);
        v96 = *(v58 + 10);
        v97 = *(v58 + 11);
        v98 = *(v58 + 12);
        v99 = *(v58 + 13);
        v100 = *(v58 + 14);
        v101 = v94 & 1;
        sub_21D0FB960(v95, v96, v97, v98, v99, v100, v94 & 1);
        *(v57 + 9) = v95;
        *(v57 + 10) = v96;
        *(v57 + 11) = v97;
        *(v57 + 12) = v98;
        *(v57 + 13) = v99;
        *(v57 + 14) = v100;
        v57[120] = v101;
      }

      v4 = a2;
      v3 = a3;
      v57[121] = v58[121];
      v5 = a1;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v4;
      *(v5 + 8) = *(v4 + 8);
      *(v5 + 9) = *(v4 + 9);
      *(v5 + 10) = *(v4 + 10);
      v18 = v4[2];
      v5[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *v4;
    *v5 = *v4;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(v4 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v5 + v13, v4 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v105 = *(v4 + v13);
      *(v5 + v13) = v105;
      v106 = v105;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(v5 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(v5 + v13, v4 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v107 = sub_21DBF563C();
    (*(*(v107 - 8) + 16))(v5 + v13, v4 + v13, v107);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v4, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v5, v4, *(*(v28 - 8) + 64));
    }

    else
    {
      *v5 = *v4;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(v5 + v37, a2 + v37, v38);
      v4 = a2;
      (*(v27 + 56))(v5, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v4 + v40);
    if (v42[1])
    {
      *v41 = *v42;
      v41[1] = v42[1];
      v43 = v42[2];
      v41[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      v45 = *v42;
      v41[2] = v42[2];
      *v41 = v45;
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v4, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v4, *(*(v34 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v4, v47);
      *(v5 + *(v32 + 20)) = *(v4 + *(v32 + 20));
      (*(v33 + 56))(v5, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v4 + *(v48 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(v5, v4, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *v5 = *v4;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(v5 + v8, v4 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  *(v5 + v3[5]) = *(v4 + v3[5]);
  v108 = v3[6];
  v109 = (v5 + v108);
  v110 = (v4 + v108);
  *v109 = *v110;
  v109[1] = v110[1];
  sub_21DBF8E0C();

  v111 = v3[7];
  v112 = *(v5 + v111);
  v113 = *(v4 + v111);
  *(v5 + v111) = v113;
  v114 = v113;

  v115 = v3[8];
  v116 = v5 + v115;
  v117 = v4 + v115;
  v118 = *v117;
  v119 = *(v117 + 1);
  v120 = *(v117 + 2);
  v121 = *(v117 + 3);
  v122 = *(v117 + 4);
  v123 = *(v117 + 5);
  v124 = v117[48];
  sub_21D0FB960(*v117, v119, v120, v121, v122, v123, v124);
  v125 = *v116;
  v126 = *(v116 + 1);
  v127 = *(v116 + 2);
  v128 = *(v116 + 3);
  v129 = *(v116 + 4);
  v130 = *(v116 + 5);
  v131 = v116[48];
  *v116 = v118;
  *(v116 + 1) = v119;
  *(v116 + 2) = v120;
  *(v116 + 3) = v121;
  *(v116 + 4) = v122;
  *(v116 + 5) = v123;
  v133 = a2;
  v132 = a3;
  v116[48] = v124;
  v134 = a1;
  sub_21D1078C0(v125, v126, v127, v128, v129, v130, v131);
  v135 = a3[9];
  v136 = a1 + v135;
  v137 = a2 + v135;
  v138 = *(a1 + v135 + 8);
  v139 = *(a2 + v135 + 8);
  if (v138 == 1)
  {
    if (v139 == 1)
    {
      v140 = *(v137 + 1);
      *v136 = *v137;
      *(v136 + 16) = v140;
      v141 = *(v137 + 2);
      v142 = *(v137 + 3);
      v143 = *(v137 + 4);
      *(v136 + 73) = *(v137 + 73);
      *(v136 + 48) = v142;
      *(v136 + 64) = v143;
      *(v136 + 32) = v141;
    }

    else
    {
      *v136 = *v137;
      *(v136 + 8) = *(v137 + 1);
      v148 = *(v137 + 2);
      v149 = *(v137 + 3);
      v150 = *(v137 + 4);
      v151 = *(v137 + 5);
      v152 = *(v137 + 6);
      v153 = *(v137 + 7);
      v154 = v137[64];
      sub_21DBF8E0C();
      sub_21D0FB960(v148, v149, v150, v151, v152, v153, v154);
      *(v136 + 16) = v148;
      *(v136 + 24) = v149;
      *(v136 + 32) = v150;
      *(v136 + 40) = v151;
      *(v136 + 48) = v152;
      *(v136 + 56) = v153;
      v133 = a2;
      v132 = a3;
      *(v136 + 64) = v154;
      v134 = a1;
      v155 = *(v137 + 9);
      v156 = *(v137 + 10);
      LOBYTE(v150) = v137[88];
      sub_21D0FB9BC(v155, v156, v150);
      *(v136 + 72) = v155;
      *(v136 + 80) = v156;
      *(v136 + 88) = v150;
    }
  }

  else if (v139 == 1)
  {
    sub_21D5AF8C8(v136);
    v144 = *(v137 + 1);
    *v136 = *v137;
    *(v136 + 16) = v144;
    v146 = *(v137 + 3);
    v145 = *(v137 + 4);
    v147 = *(v137 + 2);
    *(v136 + 73) = *(v137 + 73);
    *(v136 + 48) = v146;
    *(v136 + 64) = v145;
    *(v136 + 32) = v147;
  }

  else
  {
    *v136 = *v137;
    *(v136 + 8) = *(v137 + 1);
    sub_21DBF8E0C();

    v157 = *(v137 + 2);
    v158 = *(v137 + 3);
    v159 = *(v137 + 4);
    v160 = *(v137 + 5);
    v161 = *(v137 + 6);
    v162 = *(v137 + 7);
    v163 = v137[64];
    sub_21D0FB960(v157, v158, v159, v160, v161, v162, v163);
    v164 = *(v136 + 16);
    v165 = *(v136 + 24);
    v166 = *(v136 + 32);
    v167 = *(v136 + 40);
    v168 = *(v136 + 48);
    v169 = *(v136 + 56);
    v170 = *(v136 + 64);
    *(v136 + 16) = v157;
    *(v136 + 24) = v158;
    *(v136 + 32) = v159;
    *(v136 + 40) = v160;
    v133 = a2;
    v132 = a3;
    *(v136 + 48) = v161;
    *(v136 + 56) = v162;
    v134 = a1;
    *(v136 + 64) = v163;
    sub_21D1078C0(v164, v165, v166, v167, v168, v169, v170);
    v171 = *(v137 + 9);
    v172 = *(v137 + 10);
    LOBYTE(v158) = v137[88];
    sub_21D0FB9BC(v171, v172, v158);
    v173 = *(v136 + 72);
    v174 = *(v136 + 80);
    v175 = *(v136 + 88);
    *(v136 + 72) = v171;
    *(v136 + 80) = v172;
    *(v136 + 88) = v158;
    sub_21D0FB9F4(v173, v174, v175);
  }

  *(v134 + v132[10]) = *(v133 + v132[10]);
  *(v134 + v132[11]) = *(v133 + v132[11]);
  v176 = v132[12];
  v177 = *(v133 + v176);
  v178 = *(v134 + v176);
  *(v134 + v176) = v177;
  v179 = v177;

  v180 = v132[13];
  v181 = (v134 + v180);
  v182 = (v133 + v180);
  v183 = *(v134 + v180 + 8);
  v184 = *(v133 + v180 + 8);
  if (v183)
  {
    if (v184)
    {
      *v181 = *v182;
      v181[1] = v182[1];
      sub_21DBF8E0C();

      v181[2] = v182[2];
      sub_21DBF8E0C();

      v181[3] = v182[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v181, &qword_27CE5A640, &qword_21DC0FE00);
      v185 = *(v182 + 1);
      *v181 = *v182;
      *(v181 + 1) = v185;
    }
  }

  else if (v184)
  {
    *v181 = *v182;
    v181[1] = v182[1];
    v181[2] = v182[2];
    v181[3] = v182[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v186 = *(v182 + 1);
    *v181 = *v182;
    *(v181 + 1) = v186;
  }

  *(v134 + v132[14]) = *(v133 + v132[14]);
  *(v134 + v132[15]) = *(v133 + v132[15]);
  *(v134 + v132[16]) = *(v133 + v132[16]);
  *(v134 + v132[17]) = *(v133 + v132[17]);
  v187 = v132[18];
  v188 = *(v133 + v187);
  v189 = *(v134 + v187);
  *(v134 + v187) = v188;
  v190 = v188;

  v191 = v132[19];
  v192 = (v134 + v191);
  v193 = (v133 + v191);
  v194 = *(v134 + v191 + 8);
  v195 = *(v133 + v191 + 8);
  if (v194)
  {
    if (v195)
    {
      *v192 = *v193;
      v192[1] = v193[1];
      sub_21DBF8E0C();

      v192[2] = v193[2];
      sub_21DBF8E0C();

      v192[3] = v193[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v192, &qword_27CE5A640, &qword_21DC0FE00);
      v196 = *(v193 + 1);
      *v192 = *v193;
      *(v192 + 1) = v196;
    }
  }

  else if (v195)
  {
    *v192 = *v193;
    v192[1] = v193[1];
    v192[2] = v193[2];
    v192[3] = v193[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v197 = *(v193 + 1);
    *v192 = *v193;
    *(v192 + 1) = v197;
  }

  v198 = v132[20];
  v199 = v134 + v198;
  v200 = v133 + v198;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v202 = *(v201 - 1);
  v203 = *(v202 + 48);
  v204 = v203(v199, 1, v201);
  v205 = v203(v200, 1, v201);
  if (v204)
  {
    if (!v205)
    {
      v206 = sub_21DBF563C();
      v472 = *(v206 - 8);
      v468 = v206;
      v465 = *(v472 + 16);
      (v465)(v199, v200);
      v207 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
      v199[v207[5]] = v200[v207[5]];
      v208 = v207[6];
      v209 = sub_21DBF509C();
      (*(*(v209 - 8) + 16))(&v199[v208], &v200[v208], v209);
      v199[v207[7]] = v200[v207[7]];
      v210 = v207[8];
      v211 = &v199[v210];
      v212 = &v200[v210];
      v213 = v212[16];
      *v211 = *v212;
      v211[16] = v213;
      v199[v207[9]] = v200[v207[9]];
      v199[v207[10]] = v200[v207[10]];
      v199[v207[11]] = v200[v207[11]];
      v214 = v207[12];
      v215 = &v199[v214];
      v216 = &v200[v214];
      *v215 = *v216;
      v215[1] = v216[1];
      v217 = v201[12];
      v218 = &v199[v217];
      v219 = &v200[v217];
      *v218 = *v219;
      v218[8] = v219[8];
      *(v218 + 2) = *(v219 + 2);
      *(v218 + 3) = *(v219 + 3);
      *(v218 + 4) = *(v219 + 4);
      *(v218 + 5) = *(v219 + 5);
      v220 = v201[16];
      v475 = v201;
      __dst = &v199[v220];
      v221 = &v200[v220];
      v222 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v223 = *(v222 - 8);
      v224 = *(v223 + 48);
      v225 = v222;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v224(v221, 1, v225))
      {
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
        memcpy(__dst, v221, *(*(v226 - 8) + 64));
        v134 = a1;
        v133 = a2;
        v227 = v475;
      }

      else
      {
        v462 = v223;
        v463 = v225;
        *__dst = *v221;
        __dst[1] = v221[1];
        v252 = *(v225 + 20);
        v253 = *(v472 + 48);
        sub_21DBF8E0C();
        if (v253(v221 + v252, 1, v468))
        {
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
          memcpy(__dst + v252, v221 + v252, *(*(v254 - 8) + 64));
        }

        else
        {
          v465(__dst + v252, v221 + v252, v468);
          (*(v472 + 56))(__dst + v252, 0, 1, v468);
        }

        v134 = a1;
        v133 = a2;
        v227 = v475;
        (*(v462 + 56))(__dst, 0, 1, v463);
      }

      v199[v227[20]] = v200[v227[20]];
      v199[v227[24]] = v200[v227[24]];
      (*(v202 + 56))(v199, 0, 1, v227);
      goto LABEL_169;
    }

LABEL_156:
    v228 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v199, v200, *(*(v228 - 8) + 64));
LABEL_169:
    v256 = a3;
    goto LABEL_170;
  }

  if (v205)
  {
    sub_21D0CF7E0(v199, &qword_27CE5C678, &unk_21DC16600);
    goto LABEL_156;
  }

  v229 = sub_21DBF563C();
  v473 = *(v229 - 8);
  v476 = v229;
  v469 = *(v473 + 24);
  (v469)(v199, v200);
  v230 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v199[v230[5]] = v200[v230[5]];
  v231 = v230[6];
  v232 = sub_21DBF509C();
  (*(*(v232 - 8) + 24))(&v199[v231], &v200[v231], v232);
  v199[v230[7]] = v200[v230[7]];
  v233 = v230[8];
  v234 = &v199[v233];
  v235 = &v200[v233];
  v236 = v235[16];
  *v234 = *v235;
  v234[16] = v236;
  v199[v230[9]] = v200[v230[9]];
  v199[v230[10]] = v200[v230[10]];
  v199[v230[11]] = v200[v230[11]];
  v237 = v230[12];
  v238 = &v199[v237];
  v239 = &v200[v237];
  *v238 = *v239;
  v238[1] = v239[1];
  sub_21DBF8E0C();

  v240 = v201[12];
  v241 = &v199[v240];
  v242 = &v200[v240];
  *v241 = *&v200[v240];
  v241[8] = v200[v240 + 8];
  *(v241 + 2) = *&v200[v240 + 16];
  *(v241 + 3) = *&v200[v240 + 24];
  sub_21DBF8E0C();

  *(v241 + 4) = *(v242 + 4);
  *(v241 + 5) = *(v242 + 5);
  sub_21DBF8E0C();

  v243 = v201[16];
  v244 = &v199[v243];
  v245 = &v200[v243];
  v246 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v247 = *(v246 - 8);
  v248 = *(v247 + 48);
  LODWORD(v230) = v248(v244, 1, v246);
  __dsta = v245;
  v249 = v248(v245, 1, v246);
  if (v230)
  {
    if (!v249)
    {
      *v244 = *v245;
      *(v244 + 1) = *(v245 + 1);
      v250 = *(v246 + 20);
      v470 = *(v473 + 48);
      sub_21DBF8E0C();
      if (v470(&v245[v250], 1, v476))
      {
        v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&v244[v250], &v245[v250], *(*(v251 - 8) + 64));
      }

      else
      {
        (*(v473 + 16))(&v244[v250], &v245[v250], v476);
        (*(v473 + 56))(&v244[v250], 0, 1, v476);
      }

      v256 = a3;
      (*(v247 + 56))(v244, 0, 1, v246);
      v134 = a1;
      goto LABEL_259;
    }
  }

  else
  {
    if (!v249)
    {
      *v244 = *v245;
      *(v244 + 1) = *(v245 + 1);
      sub_21DBF8E0C();

      v457 = *(v246 + 20);
      v458 = *(v473 + 48);
      v459 = v458(&v244[v457], 1, v476);
      v460 = v458(&v245[v457], 1, v476);
      if (v459)
      {
        v134 = a1;
        v256 = a3;
        if (!v460)
        {
          (*(v473 + 16))(&v244[v457], &__dsta[v457], v476);
          (*(v473 + 56))(&v244[v457], 0, 1, v476);
          goto LABEL_259;
        }
      }

      else
      {
        v134 = a1;
        v256 = a3;
        if (!v460)
        {
          v469(&v244[v457], &__dsta[v457], v476);
          goto LABEL_259;
        }

        (*(v473 + 8))(&v244[v457], v476);
      }

      v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
      memcpy(&v244[v457], &__dsta[v457], *(*(v461 - 8) + 64));
      goto LABEL_259;
    }

    sub_21D799ED4(v244, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
  }

  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
  memcpy(v244, v245, *(*(v255 - 8) + 64));
  v134 = a1;
  v256 = a3;
LABEL_259:
  v199[v201[20]] = v200[v201[20]];
  v199[v201[24]] = v200[v201[24]];
  v133 = a2;
LABEL_170:
  *(v134 + v256[21]) = *(v133 + v256[21]);
  *(v134 + v256[22]) = *(v133 + v256[22]);
  v257 = v256[23];
  v258 = v134 + v257;
  v259 = v133 + v257;
  v260 = *v259;
  v261 = *(v259 + 1);
  v262 = *(v259 + 2);
  v263 = *(v259 + 3);
  v264 = v259[32];
  sub_21D48BB60(*v259, v261, v262, v263, v264);
  v265 = *v258;
  v266 = *(v258 + 1);
  v267 = *(v258 + 2);
  v268 = *(v258 + 3);
  *v258 = v260;
  *(v258 + 1) = v261;
  *(v258 + 2) = v262;
  *(v258 + 3) = v263;
  v269 = v258[32];
  v258[32] = v264;
  sub_21D48C240(v265, v266, v267, v268, v269);
  v270 = v256[24];
  v271 = v134 + v270;
  v272 = v133 + v270;
  *(v134 + v270) = *(v133 + v270);
  sub_21DBF8E0C();

  v271[8] = v272[8];
  v273 = v256[25];
  v274 = (v134 + v273);
  v275 = (v133 + v273);
  v276 = *(v134 + v273 + 8);
  v277 = *(v133 + v273 + 8);
  if (v276 >= 3)
  {
    if (v277 >= 3)
    {
      *v274 = *v275;
      v274[1] = v275[1];
      sub_21DBF8E0C();

      v282 = v274[2];
      v283 = v275[2];
      v274[2] = v283;
      v284 = v283;
    }

    else
    {
      sub_21D122250(v274);
      v279 = v275[2];
      *v274 = *v275;
      v274[2] = v279;
    }
  }

  else if (v277 >= 3)
  {
    *v274 = *v275;
    v274[1] = v275[1];
    v280 = v275[2];
    v274[2] = v280;
    sub_21DBF8E0C();
    v281 = v280;
  }

  else
  {
    v278 = *v275;
    v274[2] = v275[2];
    *v274 = v278;
  }

  v285 = v256[26];
  v286 = v134 + v285;
  v287 = v133 + v285;
  v288 = *(v133 + v285);
  if (*(v134 + v285))
  {
    if (!v288)
    {
      sub_21D0CF7E0(v134 + v285, &qword_27CE61978, &qword_21DC27FD0);
      v306 = *(v287 + 3);
      v308 = *v287;
      v307 = *(v287 + 1);
      *(v286 + 2) = *(v287 + 2);
      *(v286 + 3) = v306;
      *v286 = v308;
      *(v286 + 1) = v307;
      v309 = *(v287 + 5);
      v300 = *(v287 + 6);
      v310 = *(v287 + 4);
      *(v286 + 14) = *(v287 + 14);
      *(v286 + 5) = v309;
      *(v286 + 6) = v300;
      *(v286 + 4) = v310;
      goto LABEL_193;
    }

    *v286 = v288;
    sub_21DBF8E0C();

    v290 = v286 + 8;
    v289 = *(v286 + 1);
    v292 = v287 + 8;
    v291 = *(v287 + 1);
    if (v289)
    {
      if (v291)
      {
        *(v286 + 1) = v291;
        v293 = v291;

        v294 = *(v286 + 2);
        v295 = *(v287 + 2);
        *(v286 + 2) = v295;
        v296 = v295;

        *(v286 + 3) = *(v287 + 3);
        *(v286 + 4) = *(v287 + 4);
        sub_21DBF8E0C();

        *(v286 + 5) = *(v287 + 5);
        *(v286 + 6) = *(v287 + 6);
        sub_21DBF8E0C();

        *(v286 + 7) = *(v287 + 7);
        *(v286 + 8) = *(v287 + 8);
        sub_21DBF8E0C();

        *(v286 + 9) = *(v287 + 9);
        *(v286 + 10) = *(v287 + 10);
        sub_21DBF8E0C();

        *(v286 + 11) = *(v287 + 11);
        *(v286 + 12) = *(v287 + 12);
        sub_21DBF8E0C();

        v286[104] = v287[104];
        v297 = *(v286 + 14);
        v298 = *(v287 + 14);
        *(v286 + 14) = v298;
        v299 = v298;
      }

      else
      {
        sub_21D30DA04((v286 + 8));
        v321 = *(v287 + 24);
        v320 = *(v287 + 40);
        *v290 = *v292;
        *(v286 + 24) = v321;
        *(v286 + 40) = v320;
        v300 = *(v287 + 88);
        v322 = *(v287 + 104);
        v324 = *(v287 + 56);
        v323 = *(v287 + 72);
        *(v286 + 88) = v300;
        *(v286 + 104) = v322;
        *(v286 + 56) = v324;
        *(v286 + 72) = v323;
      }

      goto LABEL_193;
    }

    if (v291)
    {
      *(v286 + 1) = v291;
      v311 = *(v287 + 2);
      *(v286 + 2) = v311;
      *(v286 + 3) = *(v287 + 3);
      *(v286 + 4) = *(v287 + 4);
      *(v286 + 5) = *(v287 + 5);
      *(v286 + 6) = *(v287 + 6);
      *(v286 + 7) = *(v287 + 7);
      *(v286 + 8) = *(v287 + 8);
      *(v286 + 9) = *(v287 + 9);
      *(v286 + 10) = *(v287 + 10);
      *(v286 + 11) = *(v287 + 11);
      *(v286 + 12) = *(v287 + 12);
      v286[104] = v287[104];
      v303 = *(v287 + 14);
      *(v286 + 14) = v303;
      v312 = v291;
      v313 = v311;
      goto LABEL_188;
    }

    v329 = *v292;
    v330 = *(v287 + 40);
    *(v286 + 24) = *(v287 + 24);
    *(v286 + 40) = v330;
    *v290 = v329;
    v300 = *(v287 + 56);
    v331 = *(v287 + 72);
    v332 = *(v287 + 104);
    *(v286 + 88) = *(v287 + 88);
    *(v286 + 104) = v332;
    *(v286 + 56) = v300;
    *(v286 + 72) = v331;
  }

  else if (v288)
  {
    *v286 = v288;
    v301 = *(v287 + 1);
    sub_21DBF8E0C();
    if (v301)
    {
      *(v286 + 1) = v301;
      v302 = *(v287 + 2);
      *(v286 + 2) = v302;
      *(v286 + 3) = *(v287 + 3);
      *(v286 + 4) = *(v287 + 4);
      *(v286 + 5) = *(v287 + 5);
      *(v286 + 6) = *(v287 + 6);
      *(v286 + 7) = *(v287 + 7);
      *(v286 + 8) = *(v287 + 8);
      *(v286 + 9) = *(v287 + 9);
      *(v286 + 10) = *(v287 + 10);
      *(v286 + 11) = *(v287 + 11);
      *(v286 + 12) = *(v287 + 12);
      v286[104] = v287[104];
      v303 = *(v287 + 14);
      *(v286 + 14) = v303;
      v304 = v301;
      v305 = v302;
      v134 = a1;
LABEL_188:
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v133 = a2;
      sub_21DBF8E0C();
      v314 = v303;
      goto LABEL_193;
    }

    v325 = *(v287 + 8);
    v326 = *(v287 + 40);
    *(v286 + 24) = *(v287 + 24);
    *(v286 + 40) = v326;
    *(v286 + 8) = v325;
    v300 = *(v287 + 56);
    v327 = *(v287 + 72);
    v328 = *(v287 + 104);
    *(v286 + 88) = *(v287 + 88);
    *(v286 + 104) = v328;
    *(v286 + 56) = v300;
    *(v286 + 72) = v327;
  }

  else
  {
    v315 = *v287;
    v316 = *(v287 + 1);
    v317 = *(v287 + 3);
    *(v286 + 2) = *(v287 + 2);
    *(v286 + 3) = v317;
    *v286 = v315;
    *(v286 + 1) = v316;
    v300 = *(v287 + 4);
    v318 = *(v287 + 5);
    v319 = *(v287 + 6);
    *(v286 + 14) = *(v287 + 14);
    *(v286 + 5) = v318;
    *(v286 + 6) = v319;
    *(v286 + 4) = v300;
  }

LABEL_193:
  v333 = a3[27];
  v334 = (v134 + v333);
  v335 = v133 + v333;
  v336 = *v335;
  v337 = *(v335 + 1);
  v338 = *(v335 + 2);
  v339 = *(v335 + 3);
  v340 = *(v335 + 4);
  v341 = *(v335 + 5);
  v342 = *(v335 + 6);
  v343 = *(v335 + 7);
  v344 = *(v335 + 8);
  v464 = *(v335 + 9);
  v466 = *(v335 + 10);
  v467 = *(v335 + 11);
  v471 = *(v335 + 12);
  v474 = *(v335 + 13);
  v477 = *(v335 + 14);
  __dstb = v335[120];
  sub_21D7ABD2C(*v335, v337, v338, v339, v340, v341, v342, v343, v300, v344, v464, v466, v467, v471, v474, v477, __dstb);
  v345 = v334->n128_u64[0];
  v346 = v334->n128_u64[1];
  v347 = v334[1].n128_u64[0];
  v348 = v334[1].n128_i64[1];
  v349 = v334[2].n128_i64[0];
  v350 = v334[2].n128_i64[1];
  v351 = v334[3].n128_i64[0];
  v352 = v334[3].n128_i64[1];
  v353 = v334[4];
  v354 = v334[5];
  v355 = v334[6];
  v356 = v334[7].n128_u64[0];
  v357 = v334[7].n128_i8[8];
  v334->n128_u64[0] = v336;
  v334->n128_u64[1] = v337;
  v334[1].n128_u64[0] = v338;
  v334[1].n128_u64[1] = v339;
  v334[2].n128_u64[0] = v340;
  v334[2].n128_u64[1] = v341;
  v358 = a2;
  v359 = a3;
  v334[3].n128_u64[0] = v342;
  v334[3].n128_u64[1] = v343;
  v334[4].n128_u64[0] = v344;
  v334[4].n128_u64[1] = v464;
  v334[5].n128_u64[0] = v466;
  v334[5].n128_u64[1] = v467;
  v334[6].n128_u64[0] = v471;
  v334[6].n128_u64[1] = v474;
  v334[7].n128_u64[0] = v477;
  v334[7].n128_u8[8] = __dstb;
  sub_21D7AC858(v345, v346, v347, v348, v349, v350, v351, v352, v353, v353.n128_i64[0], v353.n128_i64[1], v354.n128_i64[0], v354.n128_i64[1], v355.n128_i64[0], v355.n128_u64[1], v356, v357);
  v360 = a3[28];
  v361 = a1 + v360;
  v362 = a2 + v360;
  *v361 = *(a2 + v360);
  *(v361 + 1) = *(a2 + v360 + 8);
  sub_21DBF8E0C();

  *(v361 + 2) = *(v362 + 2);
  sub_21DBF8E0C();

  v363 = a3[29];
  v364 = (a1 + v363);
  v365 = (a2 + v363);
  v366 = *(a1 + v363 + 8);
  v367 = *(a2 + v363 + 8);
  if (v366)
  {
    if (v367)
    {
      *v364 = *v365;
      v364[1] = v365[1];
      sub_21DBF8E0C();

      v364[2] = v365[2];
      sub_21DBF8E0C();

      v364[3] = v365[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v364, &qword_27CE5A640, &qword_21DC0FE00);
      v368 = *(v365 + 1);
      *v364 = *v365;
      *(v364 + 1) = v368;
    }
  }

  else if (v367)
  {
    *v364 = *v365;
    v364[1] = v365[1];
    v364[2] = v365[2];
    v364[3] = v365[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v369 = *(v365 + 1);
    *v364 = *v365;
    *(v364 + 1) = v369;
  }

  *(a1 + a3[30]) = *(a2 + a3[30]);
  v370 = a3[31];
  v371 = a1 + v370;
  v372 = a2 + v370;
  v373 = *v372;
  v371[8] = v372[8];
  *v371 = v373;
  *(a1 + a3[32]) = *(a2 + a3[32]);
  sub_21DBF8E0C();

  v374 = a3[33];
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v376 = *(v375 - 8);
  v377 = *(v376 + 48);
  v378 = v377(a1 + v374, 1, v375);
  v379 = v377(a2 + v374, 1, v375);
  if (v378)
  {
    if (!v379)
    {
      v380 = sub_21DBF54CC();
      v381 = *(v380 - 8);
      if ((*(v381 + 48))(a2 + v374, 1, v380))
      {
        v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
        memcpy(a1 + v374, a2 + v374, *(*(v382 - 8) + 64));
      }

      else
      {
        (*(v381 + 16))(a1 + v374, a2 + v374, v380);
        (*(v381 + 56))(a1 + v374, 0, 1, v380);
      }

      goto LABEL_212;
    }

    goto LABEL_206;
  }

  if (v379)
  {
    sub_21D0CF7E0(a1 + v374, &unk_27CE62230, &unk_21DC1CEB0);
LABEL_206:
    v383 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
LABEL_207:
    memcpy(a1 + v374, a2 + v374, *(*(v383 - 8) + 64));
    goto LABEL_213;
  }

  v375 = sub_21DBF54CC();
  v376 = *(v375 - 8);
  v384 = *(v376 + 48);
  v385 = v384(a1 + v374, 1, v375);
  v386 = v384(a2 + v374, 1, v375);
  if (v385)
  {
    if (!v386)
    {
      (*(v376 + 16))(a1 + v374, a2 + v374, v375);
LABEL_212:
      (*(v376 + 56))(a1 + v374, 0, 1, v375);
      goto LABEL_213;
    }

    goto LABEL_245;
  }

  if (v386)
  {
    (*(v376 + 8))(a1 + v374, v375);
LABEL_245:
    v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    goto LABEL_207;
  }

  (*(v376 + 24))(a1 + v374, a2 + v374, v375);
LABEL_213:
  v387 = a3[34];
  v388 = (a1 + v387);
  v389 = (a2 + v387);
  *v388 = *v389;
  v388[1] = v389[1];
  sub_21DBF8E0C();

  v390 = a3[35];
  v391 = a1 + v390;
  v392 = a2 + v390;
  v393 = *(a1 + v390 + 8);
  v394 = *(a2 + v390 + 8);
  if (v393 == 1)
  {
    if (v394 == 1)
    {
      *v391 = *v392;
      v395 = *(v392 + 1);
      v396 = *(v392 + 2);
      v397 = *(v392 + 4);
      *(v391 + 48) = *(v392 + 3);
      *(v391 + 64) = v397;
      *(v391 + 16) = v395;
      *(v391 + 32) = v396;
    }

    else
    {
      *v391 = *v392;
      *(v391 + 8) = *(v392 + 1);
      *(v391 + 16) = *(v392 + 2);
      *(v391 + 24) = *(v392 + 3);
      *(v391 + 32) = *(v392 + 4);
      *(v391 + 40) = *(v392 + 5);
      *(v391 + 48) = v392[48];
      *(v391 + 56) = *(v392 + 7);
      *(v391 + 64) = *(v392 + 8);
      v401 = *(v392 + 9);
      *(v391 + 72) = v401;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v402 = v401;
    }
  }

  else if (v394 == 1)
  {
    sub_21D0CF7E0(v391, &qword_27CE61980, &qword_21DC27FD8);
    *v391 = *v392;
    v398 = *(v392 + 4);
    v400 = *(v392 + 1);
    v399 = *(v392 + 2);
    *(v391 + 48) = *(v392 + 3);
    *(v391 + 64) = v398;
    *(v391 + 16) = v400;
    *(v391 + 32) = v399;
  }

  else
  {
    *v391 = *v392;
    *(v391 + 8) = *(v392 + 1);
    sub_21DBF8E0C();

    *(v391 + 16) = *(v392 + 2);
    *(v391 + 24) = *(v392 + 3);
    sub_21DBF8E0C();

    *(v391 + 32) = *(v392 + 4);
    *(v391 + 40) = *(v392 + 5);
    sub_21DBF8E0C();

    *(v391 + 48) = v392[48];
    *(v391 + 56) = *(v392 + 7);
    *(v391 + 64) = *(v392 + 8);
    sub_21DBF8E0C();

    v403 = *(v391 + 72);
    v404 = *(v392 + 9);
    *(v391 + 72) = v404;
    v405 = v404;
  }

  *(a1 + a3[36]) = *(a2 + a3[36]);
  sub_21DBF8E0C();

  v406 = a3[37];
  v407 = a1 + v406;
  v408 = a2 + v406;
  v409 = *(a2 + v406 + 40);
  if (*(a1 + v406 + 40) == 255)
  {
    if (v409 == 255)
    {
      v428 = *v408;
      v429 = *(v408 + 1);
      *(v407 + 25) = *(v408 + 25);
      *v407 = v428;
      *(v407 + 16) = v429;
    }

    else
    {
      v421 = *v408;
      v422 = *(v408 + 1);
      v423 = *(v408 + 2);
      v424 = *(v408 + 3);
      v425 = *(v408 + 4);
      sub_21D7A9844(*v408, v422, v423, v424, v425, v408[40]);
      *v407 = v421;
      *(v407 + 8) = v422;
      *(v407 + 16) = v423;
      *(v407 + 24) = v424;
      v358 = a2;
      v359 = a3;
      *(v407 + 32) = v425;
      *(v407 + 40) = v409;
    }
  }

  else if (v409 == 255)
  {
    sub_21D0CF7E0(v407, &qword_27CE61988, &unk_21DC27FE0);
    v426 = *(v408 + 25);
    v427 = *(v408 + 1);
    *v407 = *v408;
    *(v407 + 16) = v427;
    *(v407 + 25) = v426;
  }

  else
  {
    v410 = *v408;
    v411 = *(v408 + 1);
    v412 = *(v408 + 2);
    v413 = *(v408 + 3);
    v414 = *(v408 + 4);
    sub_21D7A9844(*v408, v411, v412, v413, v414, v408[40]);
    v415 = *v407;
    v416 = *(v407 + 8);
    v417 = *(v407 + 16);
    v418 = *(v407 + 24);
    v419 = *(v407 + 32);
    *v407 = v410;
    *(v407 + 8) = v411;
    *(v407 + 16) = v412;
    *(v407 + 24) = v413;
    v358 = a2;
    v359 = a3;
    *(v407 + 32) = v414;
    v420 = *(v407 + 40);
    *(v407 + 40) = v409;
    sub_21D7A98B4(v415, v416, v417, v418, v419, v420);
  }

  v430 = v359[38];
  v431 = a1 + v430;
  v432 = v358 + v430;
  v433 = *(a1 + v430);
  v434 = *(v358 + v430);
  if (!v433)
  {
    if (!v434)
    {
      *v431 = *v432;
      v447 = *(v432 + 1);
      v448 = *(v432 + 2);
      v449 = *(v432 + 3);
      *(v431 + 64) = *(v432 + 8);
      *(v431 + 32) = v448;
      *(v431 + 48) = v449;
      *(v431 + 16) = v447;
      return a1;
    }

    *v431 = v434;
    *(v431 + 8) = *(v432 + 1);
    *(v431 + 16) = *(v432 + 2);
    *(v431 + 24) = *(v432 + 3);
    *(v431 + 32) = *(v432 + 4);
    v440 = *(v432 + 7);
    v441 = v434;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v440 != 1)
    {
LABEL_231:
      *(v431 + 40) = v432[40];
      if (*(v432 + 7))
      {
LABEL_232:
        *(v431 + 48) = *(v432 + 6);
        *(v431 + 56) = *(v432 + 7);
        v438 = *(v432 + 8);
        *(v431 + 64) = v438;
        sub_21DBF8E0C();
        v439 = v438;
        return a1;
      }

LABEL_247:
      v454 = *(v432 + 3);
      *(v431 + 64) = *(v432 + 8);
      *(v431 + 48) = v454;
      return a1;
    }

LABEL_235:
    v442 = *(v432 + 40);
    *(v431 + 56) = *(v432 + 56);
    *(v431 + 40) = v442;
    return a1;
  }

  if (!v434)
  {
    sub_21D7B1EA4(v431);
    *v431 = *v432;
    v444 = *(v432 + 2);
    v443 = *(v432 + 3);
    v445 = *(v432 + 1);
    *(v431 + 64) = *(v432 + 8);
    *(v431 + 32) = v444;
    *(v431 + 48) = v443;
    *(v431 + 16) = v445;
    return a1;
  }

  *v431 = v434;
  v435 = v434;

  *(v431 + 8) = *(v432 + 1);
  *(v431 + 16) = *(v432 + 2);
  sub_21DBF8E0C();

  *(v431 + 24) = *(v432 + 3);
  *(v431 + 32) = *(v432 + 4);
  sub_21DBF8E0C();

  v436 = *(v431 + 56);
  v437 = *(v432 + 7);
  if (v436 == 1)
  {
    if (v437 != 1)
    {
      goto LABEL_231;
    }

    goto LABEL_235;
  }

  if (v437 == 1)
  {
    sub_21D3A1A28(v431 + 40);
    v446 = *(v432 + 56);
    *(v431 + 40) = *(v432 + 40);
    *(v431 + 56) = v446;
    return a1;
  }

  *(v431 + 40) = v432[40];
  v450 = *(v432 + 7);
  if (!v436)
  {
    if (v450)
    {
      goto LABEL_232;
    }

    goto LABEL_247;
  }

  if (v450)
  {
    *(v431 + 48) = *(v432 + 6);
    *(v431 + 56) = *(v432 + 7);
    sub_21DBF8E0C();

    v451 = *(v431 + 64);
    v452 = *(v432 + 8);
    *(v431 + 64) = v452;
    v453 = v452;
  }

  else
  {
    sub_21D122250(v431 + 48);
    v456 = *(v432 + 8);
    *(v431 + 48) = *(v432 + 3);
    *(v431 + 64) = v456;
  }

  return a1;
}

void *initializeWithTake for TTRReminderDetailViewModel(void *a1, void *a2, int *a3)
{
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
          goto LABEL_87;
        }

LABEL_64:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_65;
      }

LABEL_32:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
LABEL_29:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
        goto LABEL_87;
      }

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
    }

    else
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
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
        (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
        goto LABEL_87;
      }
    }

LABEL_85:
    memcpy(a1 + v14, a2 + v14, *(v16 + 64));
    goto LABEL_86;
  }

  if (EnumCaseMultiPayload <= 6)
  {
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
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 1, v15))
    {
      goto LABEL_29;
    }

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
    goto LABEL_87;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_32;
  }

  *a1 = *a2;
  v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v18 = sub_21DBF8D7C();
  (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_87:
  swift_storeEnumTagMultiPayload();
LABEL_88:
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v42) = *(a2 + v42);
  v43 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v44 = a1 + v43;
  v45 = a2 + v43;
  v46 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v46;
  *(v44 + 2) = *(v45 + 2);
  v44[48] = v45[48];
  v47 = a3[9];
  v48 = a3[10];
  v49 = (a1 + v47);
  v50 = (a2 + v47);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(v49 + 73) = *(v50 + 73);
  v52 = v50[4];
  v49[3] = v50[3];
  v49[4] = v52;
  v49[2] = v50[2];
  *(a1 + v48) = *(a2 + v48);
  v53 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v53) = *(a2 + v53);
  v54 = a3[13];
  v55 = a3[14];
  v56 = (a1 + v54);
  v57 = (a2 + v54);
  v58 = v57[1];
  *v56 = *v57;
  v56[1] = v58;
  *(a1 + v55) = *(a2 + v55);
  v59 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v59) = *(a2 + v59);
  v60 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v60) = *(a2 + v60);
  v61 = a3[19];
  v62 = a3[20];
  v63 = *(a2 + v61);
  v64 = *(a2 + v61 + 16);
  v65 = (a1 + v61);
  *v65 = v63;
  v65[1] = v64;
  v66 = a1 + v62;
  v67 = a2 + v62;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v69 = *(v68 - 1);
  if ((*(v69 + 48))(v67, 1, v68))
  {
    v70 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v66, v67, *(*(v70 - 8) + 64));
  }

  else
  {
    v71 = sub_21DBF563C();
    v150 = *(v71 - 8);
    v151 = v71;
    v149 = *(v150 + 32);
    v149(v66, v67);
    v72 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v66[v72[5]] = v67[v72[5]];
    v73 = v72[6];
    v74 = sub_21DBF509C();
    (*(*(v74 - 8) + 32))(&v66[v73], &v67[v73], v74);
    v66[v72[7]] = v67[v72[7]];
    v75 = v72[8];
    v76 = &v66[v75];
    v77 = &v67[v75];
    v76[16] = v77[16];
    *v76 = *v77;
    v66[v72[9]] = v67[v72[9]];
    v66[v72[10]] = v67[v72[10]];
    v66[v72[11]] = v67[v72[11]];
    *&v66[v72[12]] = *&v67[v72[12]];
    v78 = v68[12];
    v79 = &v66[v78];
    v80 = &v67[v78];
    v81 = *(v80 + 2);
    *(v79 + 1) = *(v80 + 1);
    *(v79 + 2) = v81;
    *v79 = *v80;
    v82 = v68[16];
    __dst = &v66[v82];
    v83 = &v67[v82];
    v84 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v83, 1, v84))
    {
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v83, *(*(v86 - 8) + 64));
    }

    else
    {
      *__dst = *v83;
      v148 = *(v84 + 20);
      if ((*(v150 + 48))(&v83[v148], 1, v151))
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&__dst[v148], &v83[v148], *(*(v87 - 8) + 64));
      }

      else
      {
        (v149)(&__dst[v148], &v83[v148], v151);
        (*(v150 + 56))(&__dst[v148], 0, 1, v151);
      }

      (*(v85 + 56))(__dst, 0, 1, v84);
    }

    v66[v68[20]] = v67[v68[20]];
    v66[v68[24]] = v67[v68[24]];
    (*(v69 + 56))(v66, 0, 1, v68);
  }

  v88 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v88) = *(a2 + v88);
  v89 = a3[23];
  v90 = a3[24];
  v91 = a1 + v89;
  v92 = a2 + v89;
  v93 = *(v92 + 1);
  *v91 = *v92;
  *(v91 + 1) = v93;
  v91[32] = v92[32];
  v94 = a1 + v90;
  v95 = a2 + v90;
  *v94 = *v95;
  v94[8] = v95[8];
  v96 = a3[25];
  v97 = a3[26];
  v98 = a1 + v96;
  v99 = a2 + v96;
  *v98 = *v99;
  *(v98 + 2) = *(v99 + 2);
  v100 = a1 + v97;
  v101 = a2 + v97;
  v102 = *(v101 + 5);
  *(v100 + 4) = *(v101 + 4);
  *(v100 + 5) = v102;
  *(v100 + 6) = *(v101 + 6);
  *(v100 + 14) = *(v101 + 14);
  v103 = *(v101 + 1);
  *v100 = *v101;
  *(v100 + 1) = v103;
  v104 = *(v101 + 3);
  *(v100 + 2) = *(v101 + 2);
  *(v100 + 3) = v104;
  v105 = a3[27];
  v106 = a3[28];
  v107 = (a1 + v105);
  v108 = (a2 + v105);
  v109 = *v108;
  v110 = v108[1];
  v111 = v108[3];
  v107[2] = v108[2];
  v107[3] = v111;
  *v107 = v109;
  v107[1] = v110;
  v112 = v108[4];
  v113 = v108[5];
  v114 = v108[6];
  *(v107 + 105) = *(v108 + 105);
  v107[5] = v113;
  v107[6] = v114;
  v107[4] = v112;
  v115 = a1 + v106;
  v116 = a2 + v106;
  *v115 = *v116;
  *(v115 + 2) = *(v116 + 2);
  v117 = a3[29];
  v118 = a3[30];
  v119 = (a1 + v117);
  v120 = (a2 + v117);
  v121 = v120[1];
  *v119 = *v120;
  v119[1] = v121;
  *(a1 + v118) = *(a2 + v118);
  v122 = a3[31];
  v123 = a3[32];
  v124 = a1 + v122;
  v125 = a2 + v122;
  *v124 = *v125;
  v124[8] = v125[8];
  *(a1 + v123) = *(a2 + v123);
  v126 = a3[33];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v128 = *(v127 - 8);
  if ((*(v128 + 48))(a2 + v126, 1, v127))
  {
    v129 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(a1 + v126, a2 + v126, *(*(v129 - 8) + 64));
  }

  else
  {
    v130 = sub_21DBF54CC();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(a2 + v126, 1, v130))
    {
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(a1 + v126, a2 + v126, *(*(v132 - 8) + 64));
    }

    else
    {
      (*(v131 + 32))(a1 + v126, a2 + v126, v130);
      (*(v131 + 56))(a1 + v126, 0, 1, v130);
    }

    (*(v128 + 56))(a1 + v126, 0, 1, v127);
  }

  v133 = a3[35];
  *(a1 + a3[34]) = *(a2 + a3[34]);
  v134 = (a1 + v133);
  v135 = (a2 + v133);
  v136 = v135[3];
  v134[2] = v135[2];
  v134[3] = v136;
  v134[4] = v135[4];
  v137 = v135[1];
  *v134 = *v135;
  v134[1] = v137;
  v138 = a3[37];
  *(a1 + a3[36]) = *(a2 + a3[36]);
  v139 = (a1 + v138);
  v140 = (a2 + v138);
  v141 = v140[1];
  *v139 = *v140;
  v139[1] = v141;
  *(v139 + 25) = *(v140 + 25);
  v142 = a3[38];
  v143 = a1 + v142;
  v144 = a2 + v142;
  *(v143 + 8) = *(v144 + 8);
  v145 = *(v144 + 3);
  *(v143 + 2) = *(v144 + 2);
  *(v143 + 3) = v145;
  v146 = *(v144 + 1);
  *v143 = *v144;
  *(v143 + 1) = v146;
  return a1;
}

void *assignWithTake for TTRReminderDetailViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D799ED4(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v46 = *v44;
  v45 = v44[1];
  *v43 = v46;
  v43[1] = v45;

  v47 = a3[7];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  v49 = a3[8];
  v50 = a1 + v49;
  v51 = a2 + v49;
  v52 = v51[48];
  v53 = *v50;
  v54 = *(v50 + 1);
  v55 = *(v50 + 2);
  v56 = *(v50 + 3);
  v57 = *(v50 + 4);
  v58 = *(v50 + 5);
  v59 = v50[48];
  v60 = *(v51 + 1);
  *v50 = *v51;
  *(v50 + 1) = v60;
  *(v50 + 2) = *(v51 + 2);
  v50[48] = v52;
  sub_21D1078C0(v53, v54, v55, v56, v57, v58, v59);
  v61 = a3[9];
  v62 = a1 + v61;
  v63 = a2 + v61;
  if (*(a1 + v61 + 8) == 1)
  {
LABEL_92:
    v65 = *(v63 + 3);
    *(v62 + 2) = *(v63 + 2);
    *(v62 + 3) = v65;
    *(v62 + 4) = *(v63 + 4);
    *(v62 + 73) = *(v63 + 73);
    v66 = *(v63 + 1);
    *v62 = *v63;
    *(v62 + 1) = v66;
    goto LABEL_94;
  }

  v64 = *(v63 + 1);
  if (v64 == 1)
  {
    sub_21D5AF8C8(v62);
    goto LABEL_92;
  }

  *v62 = *v63;
  *(v62 + 1) = v64;

  v67 = v63[64];
  v68 = *(v62 + 2);
  v69 = *(v62 + 3);
  v70 = *(v62 + 4);
  v71 = *(v62 + 5);
  v72 = *(v62 + 6);
  v73 = *(v62 + 7);
  v74 = v62[64];
  v75 = *(v63 + 2);
  *(v62 + 1) = *(v63 + 1);
  *(v62 + 2) = v75;
  *(v62 + 3) = *(v63 + 3);
  v62[64] = v67;
  sub_21D1078C0(v68, v69, v70, v71, v72, v73, v74);
  v76 = v63[88];
  v77 = *(v62 + 9);
  v78 = *(v62 + 10);
  v79 = v62[88];
  *(v62 + 72) = *(v63 + 72);
  v62[88] = v76;
  sub_21D0FB9F4(v77, v78, v79);
LABEL_94:
  v80 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v80) = *(a2 + v80);
  v81 = a3[12];
  v82 = *(a1 + v81);
  *(a1 + v81) = *(a2 + v81);

  v83 = a3[13];
  v84 = (a1 + v83);
  v85 = (a2 + v83);
  if (*(a1 + v83 + 8))
  {
    v86 = v85[1];
    if (v86)
    {
      *v84 = *v85;
      v84[1] = v86;

      v84[2] = v85[2];

      v84[3] = v85[3];

      goto LABEL_99;
    }

    sub_21D0CF7E0(v84, &qword_27CE5A640, &qword_21DC0FE00);
  }

  v87 = *(v85 + 1);
  *v84 = *v85;
  *(v84 + 1) = v87;
LABEL_99:
  v88 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v88) = *(a2 + v88);
  v89 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v89) = *(a2 + v89);
  v90 = a3[18];
  v91 = *(a1 + v90);
  *(a1 + v90) = *(a2 + v90);

  v92 = a3[19];
  v93 = (a1 + v92);
  v94 = (a2 + v92);
  if (*(a1 + v92 + 8))
  {
    v95 = v94[1];
    if (v95)
    {
      *v93 = *v94;
      v93[1] = v95;

      v93[2] = v94[2];

      v93[3] = v94[3];

      goto LABEL_104;
    }

    sub_21D0CF7E0(v93, &qword_27CE5A640, &qword_21DC0FE00);
  }

  v96 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 1) = v96;
LABEL_104:
  v97 = a3[20];
  v98 = a1 + v97;
  v99 = a2 + v97;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v101 = *(v100 - 1);
  v102 = *(v101 + 48);
  v103 = v102(v98, 1, v100);
  v104 = v102(v99, 1, v100);
  if (!v103)
  {
    if (v104)
    {
      sub_21D0CF7E0(v98, &qword_27CE5C678, &unk_21DC16600);
      goto LABEL_110;
    }

    v122 = sub_21DBF563C();
    v279 = *(v122 - 8);
    v281 = v122;
    v276 = *(v279 + 40);
    v276(v98, v99);
    v123 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v98[v123[5]] = v99[v123[5]];
    v124 = v123[6];
    v125 = sub_21DBF509C();
    (*(*(v125 - 8) + 40))(&v98[v124], &v99[v124], v125);
    v98[v123[7]] = v99[v123[7]];
    v126 = v123[8];
    v127 = &v98[v126];
    v128 = &v99[v126];
    v127[16] = v128[16];
    *v127 = *v128;
    v98[v123[9]] = v99[v123[9]];
    v98[v123[10]] = v99[v123[10]];
    v98[v123[11]] = v99[v123[11]];
    v129 = v123[12];
    v130 = &v98[v129];
    v131 = &v99[v129];
    v133 = *v131;
    v132 = *(v131 + 1);
    *v130 = v133;
    *(v130 + 1) = v132;

    v134 = v100[12];
    v135 = &v98[v134];
    v136 = &v99[v134];
    *v135 = *&v99[v134];
    v135[8] = v99[v134 + 8];
    v137 = *&v99[v134 + 24];
    *(v135 + 2) = *&v99[v134 + 16];
    *(v135 + 3) = v137;

    v138 = *(v136 + 5);
    *(v135 + 4) = *(v136 + 4);
    *(v135 + 5) = v138;

    v139 = v100[16];
    v140 = &v98[v139];
    v287 = &v99[v139];
    v141 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v277 = *(v141 - 8);
    v142 = *(v277 + 48);
    v285 = v140;
    LODWORD(v140) = v142(v140, 1, v141);
    v143 = v142(v287, 1, v141);
    if (v140)
    {
      if (!v143)
      {
        *v285 = *v287;
        v148 = *(v141 + 20);
        if ((*(v279 + 48))(&v287[v148], 1, v281))
        {
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
          memcpy((v285 + v148), &v287[v148], *(*(v149 - 8) + 64));
        }

        else
        {
          (*(v279 + 32))(v285 + v148, &v287[v148], v281);
          (*(v279 + 56))(v285 + v148, 0, 1, v281);
        }

        (*(v277 + 56))(v285, 0, 1, v141);
        goto LABEL_130;
      }

      v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980) - 8) + 64);
      v145 = v285;
    }

    else
    {
      if (!v143)
      {
        v150 = *(v287 + 1);
        *v285 = *v287;
        *(v285 + 8) = v150;

        v151 = *(v141 + 20);
        v152 = *(v279 + 48);
        v283 = v152(v285 + v151, 1, v281);
        v153 = v152(&v287[v151], 1, v281);
        if (v283)
        {
          if (!v153)
          {
            (*(v279 + 32))(v285 + v151, &v287[v151], v281);
            (*(v279 + 56))(v285 + v151, 0, 1, v281);
            goto LABEL_130;
          }

          v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
          v145 = (v285 + v151);
        }

        else
        {
          if (!v153)
          {
            (v276)(v285 + v151, &v287[v151], v281);
            goto LABEL_130;
          }

          (*(v279 + 8))(v285 + v151, v281);
          v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
          v145 = (v285 + v151);
        }

        v147 = &v287[v151];
LABEL_119:
        memcpy(v145, v147, v144);
LABEL_130:
        v98[v100[20]] = v99[v100[20]];
        v98[v100[24]] = v99[v100[24]];
        goto LABEL_131;
      }

      sub_21D799ED4(v285, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980) - 8) + 64);
      v145 = v285;
    }

    v147 = v287;
    goto LABEL_119;
  }

  if (v104)
  {
LABEL_110:
    v121 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v98, v99, *(*(v121 - 8) + 64));
    goto LABEL_131;
  }

  v105 = sub_21DBF563C();
  v282 = *(v105 - 8);
  v284 = v105;
  v280 = *(v282 + 32);
  v280(v98, v99);
  v106 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v98[v106[5]] = v99[v106[5]];
  v107 = v106[6];
  v108 = sub_21DBF509C();
  (*(*(v108 - 8) + 32))(&v98[v107], &v99[v107], v108);
  v98[v106[7]] = v99[v106[7]];
  v109 = v106[8];
  v110 = &v98[v109];
  v111 = &v99[v109];
  v110[16] = v111[16];
  *v110 = *v111;
  v98[v106[9]] = v99[v106[9]];
  v98[v106[10]] = v99[v106[10]];
  v98[v106[11]] = v99[v106[11]];
  *&v98[v106[12]] = *&v99[v106[12]];
  v112 = v100[12];
  v113 = &v98[v112];
  v114 = &v99[v112];
  v115 = *(v114 + 2);
  *(v113 + 1) = *(v114 + 1);
  *(v113 + 2) = v115;
  *v113 = *v114;
  v116 = v100[16];
  v286 = &v98[v116];
  v117 = &v99[v116];
  v118 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v119 = *(v118 - 8);
  if ((*(v119 + 48))(v117, 1, v118))
  {
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
    memcpy(v286, v117, *(*(v120 - 8) + 64));
  }

  else
  {
    *v286 = *v117;
    v278 = *(v118 + 20);
    if ((*(v282 + 48))(&v117[v278], 1, v284))
    {
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
      memcpy(&v286[v278], &v117[v278], *(*(v146 - 8) + 64));
    }

    else
    {
      (v280)(&v286[v278], &v117[v278], v284);
      (*(v282 + 56))(&v286[v278], 0, 1, v284);
    }

    (*(v119 + 56))(v286, 0, 1, v118);
  }

  v98[v100[20]] = v99[v100[20]];
  v98[v100[24]] = v99[v100[24]];
  (*(v101 + 56))(v98, 0, 1, v100);
LABEL_131:
  v154 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v154) = *(a2 + v154);
  v155 = a3[23];
  v156 = a1 + v155;
  v157 = a2 + v155;
  v158 = v157[32];
  v159 = *v156;
  v160 = *(v156 + 1);
  v161 = *(v156 + 2);
  v162 = *(v156 + 3);
  v163 = *(v157 + 1);
  *v156 = *v157;
  *(v156 + 1) = v163;
  v164 = v156[32];
  v156[32] = v158;
  sub_21D48C240(v159, v160, v161, v162, v164);
  v165 = a3[24];
  v166 = a1 + v165;
  v167 = a2 + v165;
  *(a1 + v165) = *(a2 + v165);

  v166[8] = v167[8];
  v168 = a3[25];
  v169 = a1 + v168;
  v170 = a2 + v168;
  if (*(a1 + v168 + 8) < 3uLL)
  {
LABEL_134:
    *v169 = *v170;
    *(v169 + 2) = *(v170 + 2);
    goto LABEL_136;
  }

  v171 = *(v170 + 1);
  if (v171 < 3)
  {
    sub_21D122250(v169);
    goto LABEL_134;
  }

  *v169 = *v170;
  *(v169 + 1) = v171;

  v172 = *(v169 + 2);
  *(v169 + 2) = *(v170 + 2);

LABEL_136:
  v173 = a3[26];
  v174 = a1 + v173;
  v175 = a2 + v173;
  if (!*(a1 + v173))
  {
LABEL_142:
    v185 = *(v175 + 5);
    *(v174 + 4) = *(v175 + 4);
    *(v174 + 5) = v185;
    *(v174 + 6) = *(v175 + 6);
    *(v174 + 14) = *(v175 + 14);
    v186 = *(v175 + 1);
    *v174 = *v175;
    *(v174 + 1) = v186;
    v187 = *(v175 + 3);
    *(v174 + 2) = *(v175 + 2);
    *(v174 + 3) = v187;
    goto LABEL_145;
  }

  if (!*v175)
  {
    sub_21D0CF7E0(v174, &qword_27CE61978, &qword_21DC27FD0);
    goto LABEL_142;
  }

  *v174 = *v175;

  v176 = *(v174 + 1);
  v177 = *(v175 + 1);
  if (v176)
  {
    if (v177)
    {
      *(v174 + 1) = v177;

      v178 = *(v174 + 2);
      *(v174 + 2) = *(v175 + 2);

      v179 = *(v175 + 4);
      *(v174 + 3) = *(v175 + 3);
      *(v174 + 4) = v179;

      v180 = *(v175 + 6);
      *(v174 + 5) = *(v175 + 5);
      *(v174 + 6) = v180;

      v181 = *(v175 + 8);
      *(v174 + 7) = *(v175 + 7);
      *(v174 + 8) = v181;

      v182 = *(v175 + 10);
      *(v174 + 9) = *(v175 + 9);
      *(v174 + 10) = v182;

      v183 = *(v175 + 12);
      *(v174 + 11) = *(v175 + 11);
      *(v174 + 12) = v183;

      v174[104] = v175[104];
      v184 = *(v174 + 14);
      *(v174 + 14) = *(v175 + 14);

      goto LABEL_145;
    }

    sub_21D30DA04((v174 + 8));
  }

  v188 = *(v175 + 88);
  *(v174 + 72) = *(v175 + 72);
  *(v174 + 88) = v188;
  *(v174 + 104) = *(v175 + 104);
  v189 = *(v175 + 24);
  *(v174 + 8) = *(v175 + 8);
  *(v174 + 24) = v189;
  v190 = *(v175 + 56);
  *(v174 + 40) = *(v175 + 40);
  *(v174 + 56) = v190;
LABEL_145:
  v191 = a3[27];
  v192 = (a1 + v191);
  v193 = (a2 + v191);
  v194 = v193[7].n128_u64[0];
  v195 = v193[7].n128_i8[8];
  v196 = v192->n128_u64[0];
  v197 = v192->n128_u64[1];
  v198 = v192[1].n128_u64[0];
  v199 = v192[1].n128_i64[1];
  v200 = v192[2].n128_i64[0];
  v201 = v192[2].n128_i64[1];
  v202 = v192[3].n128_i64[0];
  v203 = v192[3].n128_i64[1];
  v204 = v192[4];
  v205 = v192[5];
  v206 = v192[6];
  v207 = v192[7].n128_u64[0];
  v208 = v192[7].n128_i8[8];
  v209 = v193[1];
  *v192 = *v193;
  v192[1] = v209;
  v210 = v193[3];
  v192[2] = v193[2];
  v192[3] = v210;
  v211 = v193[5];
  v192[4] = v193[4];
  v192[5] = v211;
  v192[6] = v193[6];
  v192[7].n128_u64[0] = v194;
  v192[7].n128_u8[8] = v195;
  sub_21D7AC858(v196, v197, v198, v199, v200, v201, v202, v203, v204, v204.n128_i64[0], v204.n128_i64[1], v205.n128_i64[0], v205.n128_i64[1], v206.n128_i64[0], v206.n128_u64[1], v207, v208);
  v212 = a3[28];
  v213 = a1 + v212;
  v214 = a2 + v212;
  *v213 = *(a2 + v212);
  *(v213 + 1) = *(a2 + v212 + 8);

  *(v213 + 2) = *(v214 + 2);

  v215 = a3[29];
  v216 = (a1 + v215);
  v217 = (a2 + v215);
  if (*(a1 + v215 + 8))
  {
    v218 = v217[1];
    if (v218)
    {
      *v216 = *v217;
      v216[1] = v218;

      v216[2] = v217[2];

      v216[3] = v217[3];

      goto LABEL_150;
    }

    sub_21D0CF7E0(v216, &qword_27CE5A640, &qword_21DC0FE00);
  }

  v219 = *(v217 + 1);
  *v216 = *v217;
  *(v216 + 1) = v219;
LABEL_150:
  v220 = a3[31];
  *(a1 + a3[30]) = *(a2 + a3[30]);
  v221 = a1 + v220;
  v222 = a2 + v220;
  *v221 = *v222;
  v221[8] = v222[8];
  *(a1 + a3[32]) = *(a2 + a3[32]);

  v223 = a3[33];
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
  v225 = *(v224 - 8);
  v226 = *(v225 + 48);
  v227 = v226(a1 + v223, 1, v224);
  v228 = v226(a2 + v223, 1, v224);
  if (v227)
  {
    if (!v228)
    {
      v229 = sub_21DBF54CC();
      v230 = *(v229 - 8);
      if ((*(v230 + 48))(a2 + v223, 1, v229))
      {
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
        memcpy(a1 + v223, a2 + v223, *(*(v231 - 8) + 64));
      }

      else
      {
        (*(v230 + 32))(a1 + v223, a2 + v223, v229);
        (*(v230 + 56))(a1 + v223, 0, 1, v229);
      }

      goto LABEL_162;
    }

    goto LABEL_156;
  }

  if (v228)
  {
    sub_21D0CF7E0(a1 + v223, &unk_27CE62230, &unk_21DC1CEB0);
LABEL_156:
    v232 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
LABEL_157:
    memcpy(a1 + v223, a2 + v223, *(*(v232 - 8) + 64));
    goto LABEL_163;
  }

  v224 = sub_21DBF54CC();
  v225 = *(v224 - 8);
  v233 = *(v225 + 48);
  v234 = v233(a1 + v223, 1, v224);
  v235 = v233(a2 + v223, 1, v224);
  if (v234)
  {
    if (!v235)
    {
      (*(v225 + 32))(a1 + v223, a2 + v223, v224);
LABEL_162:
      (*(v225 + 56))(a1 + v223, 0, 1, v224);
      goto LABEL_163;
    }

    goto LABEL_187;
  }

  if (v235)
  {
    (*(v225 + 8))(a1 + v223, v224);
LABEL_187:
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    goto LABEL_157;
  }

  (*(v225 + 40))(a1 + v223, a2 + v223, v224);
LABEL_163:
  v236 = a3[34];
  v237 = (a1 + v236);
  v238 = (a2 + v236);
  v240 = *v238;
  v239 = v238[1];
  *v237 = v240;
  v237[1] = v239;

  v241 = a3[35];
  v242 = a1 + v241;
  v243 = a2 + v241;
  if (*(a1 + v241 + 8) == 1)
  {
LABEL_166:
    v245 = *(v243 + 3);
    *(v242 + 2) = *(v243 + 2);
    *(v242 + 3) = v245;
    *(v242 + 4) = *(v243 + 4);
    v246 = *(v243 + 1);
    *v242 = *v243;
    *(v242 + 1) = v246;
    goto LABEL_168;
  }

  v244 = *(v243 + 1);
  if (v244 == 1)
  {
    sub_21D0CF7E0(v242, &qword_27CE61980, &qword_21DC27FD8);
    goto LABEL_166;
  }

  *v242 = *v243;
  *(v242 + 1) = v244;

  v247 = *(v243 + 3);
  *(v242 + 2) = *(v243 + 2);
  *(v242 + 3) = v247;

  v248 = *(v243 + 5);
  *(v242 + 4) = *(v243 + 4);
  *(v242 + 5) = v248;

  v242[48] = v243[48];
  v249 = *(v243 + 8);
  *(v242 + 7) = *(v243 + 7);
  *(v242 + 8) = v249;

  v250 = *(v242 + 9);
  *(v242 + 9) = *(v243 + 9);

LABEL_168:
  *(a1 + a3[36]) = *(a2 + a3[36]);

  v251 = a3[37];
  v252 = a1 + v251;
  v253 = a2 + v251;
  v254 = *(a1 + v251 + 40);
  if (v254 != 255)
  {
    v255 = v253[40];
    if (v255 != 255)
    {
      v256 = *(v253 + 4);
      v257 = *v252;
      v258 = *(v252 + 1);
      v259 = *(v252 + 2);
      v260 = *(v252 + 3);
      v261 = *(v252 + 4);
      v262 = *(v253 + 1);
      *v252 = *v253;
      *(v252 + 1) = v262;
      *(v252 + 4) = v256;
      v252[40] = v255;
      sub_21D7A98B4(v257, v258, v259, v260, v261, v254);
      goto LABEL_173;
    }

    sub_21D0CF7E0(v252, &qword_27CE61988, &unk_21DC27FE0);
  }

  v263 = *(v253 + 1);
  *v252 = *v253;
  *(v252 + 1) = v263;
  *(v252 + 25) = *(v253 + 25);
LABEL_173:
  v264 = a3[38];
  v265 = a1 + v264;
  v266 = a2 + v264;
  v267 = *(a1 + v264);
  if (!v267)
  {
LABEL_180:
    v272 = *(v266 + 3);
    *(v265 + 2) = *(v266 + 2);
    *(v265 + 3) = v272;
    *(v265 + 8) = *(v266 + 8);
    v273 = *(v266 + 1);
    *v265 = *v266;
    *(v265 + 1) = v273;
    return a1;
  }

  if (!*v266)
  {
    sub_21D7B1EA4(v265);
    goto LABEL_180;
  }

  *v265 = *v266;

  v268 = *(v266 + 2);
  *(v265 + 1) = *(v266 + 1);
  *(v265 + 2) = v268;

  v269 = *(v266 + 4);
  *(v265 + 3) = *(v266 + 3);
  *(v265 + 4) = v269;

  v270 = *(v265 + 7);
  if (v270 != 1)
  {
    v271 = *(v266 + 7);
    if (v271 != 1)
    {
      v265[40] = v266[40];
      if (v270)
      {
        if (v271)
        {
          *(v265 + 6) = *(v266 + 6);
          *(v265 + 7) = v271;

          v275 = *(v265 + 8);
          *(v265 + 8) = *(v266 + 8);

          return a1;
        }

        sub_21D122250((v265 + 48));
      }

      *(v265 + 3) = *(v266 + 3);
      *(v265 + 8) = *(v266 + 8);
      return a1;
    }

    sub_21D3A1A28((v265 + 40));
  }

  *(v265 + 40) = *(v266 + 40);
  *(v265 + 56) = *(v266 + 56);
  return a1;
}

uint64_t sub_21D7B5BD8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRReminderDetailViewModel.DueDateState(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRReminderDetailViewModel.URLState(319);
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.DatePickerModel(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v11 = a1 + v10;
    v12 = a2 + v10;
    *v11 = *v12;
    v11[16] = v12[16];
    v13 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v13) = *(a2 + v13);
    v14 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    sub_21DBF8E0C();
  }

  return a1;
}

double destroy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 24);
  v6 = sub_21DBF509C();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  return result;
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v13 = a3[12];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *v14 = *v15;
  v14[1] = v15[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v13) = *(a2 + v13);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v17 = *v15;
  v16 = v15[1];
  *v14 = v17;
  v14[1] = v16;

  return a1;
}

uint64_t sub_21D7B647C(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF509C();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.DueDateState(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v44 = v8;
    v12 = sub_21DBF563C();
    v42 = *(v12 - 8);
    v43 = v12;
    v41 = *(v42 + 16);
    (v41)(a1, a2);
    v13 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    *(a1 + v13[5]) = *(a2 + v13[5]);
    v14 = v13[6];
    v15 = sub_21DBF509C();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    *(a1 + v13[7]) = *(a2 + v13[7]);
    v16 = v13[8];
    v17 = a1 + v16;
    v18 = a2 + v16;
    v17[16] = v18[16];
    *v17 = *v18;
    *(a1 + v13[9]) = *(a2 + v13[9]);
    *(a1 + v13[10]) = *(a2 + v13[10]);
    *(a1 + v13[11]) = *(a2 + v13[11]);
    v19 = v13[12];
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    v23 = v7[12];
    v24 = a1 + v23;
    v25 = a2 + v23;
    *v24 = *v25;
    v24[8] = v25[8];
    v26 = *(v25 + 3);
    *(v24 + 2) = *(v25 + 2);
    *(v24 + 3) = v26;
    v27 = *(v25 + 5);
    *(v24 + 4) = *(v25 + 4);
    *(v24 + 5) = v27;
    v28 = v7[16];
    __dst = (a1 + v28);
    v29 = (a2 + v28);
    v30 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v30;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v32(v29, 1, v33))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v29, *(*(v34 - 8) + 64));
      v35 = v44;
    }

    else
    {
      v36 = v29[1];
      *__dst = *v29;
      __dst[1] = v36;
      v40 = v33;
      v37 = *(v33 + 20);
      v38 = *(v42 + 48);
      sub_21DBF8E0C();
      if (v38(v29 + v37, 1, v43))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(__dst + v37, v29 + v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v41(__dst + v37, v29 + v37, v43);
        (*(v42 + 56))(__dst + v37, 0, 1, v43);
      }

      v35 = v44;
      (*(v31 + 56))(__dst, 0, 1, v40);
    }

    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    (*(v35 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRReminderDetailViewModel.DueDateState(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF563C();
    v5 = *(v4 - 8);
    v11 = *(v5 + 8);
    v11(a1, v4);
    v6 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);

    v8 = a1 + *(v2 + 64);
    v9 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    result = (*(*(v9 - 8) + 48))(v8, 1, v9);
    if (!result)
    {

      v10 = *(v9 + 20);
      result = (*(v5 + 48))(v8 + v10, 1, v4);
      if (!result)
      {

        return (v11)(v8 + v10, v4);
      }
    }
  }

  return result;
}

char *initializeWithCopy for TTRReminderDetailViewModel.DueDateState(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v42 = v7;
    v10 = sub_21DBF563C();
    v40 = *(v10 - 8);
    v41 = v10;
    v39 = *(v40 + 16);
    v39(a1, a2);
    v11 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v11[5]] = a2[v11[5]];
    v12 = v11[6];
    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    a1[v11[7]] = a2[v11[7]];
    v14 = v11[8];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v15[16] = v16[16];
    *v15 = *v16;
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    a1[v11[11]] = a2[v11[11]];
    v17 = v11[12];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v21 = v6[12];
    v22 = &a1[v21];
    v23 = &a2[v21];
    *v22 = *v23;
    v22[8] = v23[8];
    v24 = *(v23 + 3);
    *(v22 + 2) = *(v23 + 2);
    *(v22 + 3) = v24;
    v25 = *(v23 + 5);
    *(v22 + 4) = *(v23 + 4);
    *(v22 + 5) = v25;
    v26 = v6[16];
    __dst = &a1[v26];
    v27 = &a2[v26];
    v28 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v28;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v30(v27, 1, v31))
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v27, *(*(v32 - 8) + 64));
      v33 = v42;
    }

    else
    {
      v34 = *(v27 + 1);
      *__dst = *v27;
      *(__dst + 1) = v34;
      v38 = v31;
      v35 = *(v31 + 20);
      v36 = *(v40 + 48);
      sub_21DBF8E0C();
      if (v36(&v27[v35], 1, v41))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&__dst[v35], &v27[v35], *(*(v37 - 8) + 64));
      }

      else
      {
        (v39)(&__dst[v35], &v27[v35], v41);
        (*(v40 + 56))(&__dst[v35], 0, 1, v41);
      }

      v33 = v42;
      (*(v29 + 56))(__dst, 0, 1, v38);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v33 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithCopy for TTRReminderDetailViewModel.DueDateState(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D0CF7E0(a1, &qword_27CE5C678, &unk_21DC16600);
      goto LABEL_7;
    }

    v34 = sub_21DBF563C();
    v75 = *(v34 - 8);
    __dsta = v34;
    v72 = *(v75 + 24);
    (v72)(a1, a2);
    v35 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v35[5]] = a2[v35[5]];
    v36 = v35[6];
    v37 = sub_21DBF509C();
    (*(*(v37 - 8) + 24))(&a1[v36], &a2[v36], v37);
    a1[v35[7]] = a2[v35[7]];
    v38 = v35[8];
    v39 = &a1[v38];
    v40 = &a2[v38];
    v41 = v40[16];
    *v39 = *v40;
    v39[16] = v41;
    a1[v35[9]] = a2[v35[9]];
    a1[v35[10]] = a2[v35[10]];
    a1[v35[11]] = a2[v35[11]];
    v42 = v35[12];
    v43 = &a1[v42];
    v44 = &a2[v42];
    *v43 = *v44;
    v43[1] = v44[1];
    sub_21DBF8E0C();

    v45 = v6[12];
    v46 = &a1[v45];
    v47 = &a2[v45];
    *v46 = *&a2[v45];
    v46[8] = a2[v45 + 8];
    *(v46 + 2) = *&a2[v45 + 16];
    *(v46 + 3) = *&a2[v45 + 24];
    sub_21DBF8E0C();

    *(v46 + 4) = *(v47 + 4);
    *(v46 + 5) = *(v47 + 5);
    sub_21DBF8E0C();

    v48 = v6[16];
    v49 = &a1[v48];
    v50 = &a2[v48];
    v51 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = v53(v49, 1, v51);
    v55 = v53(v50, 1, v51);
    if (v54)
    {
      if (!v55)
      {
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);
        v56 = *(v51 + 20);
        v73 = *(v75 + 48);
        sub_21DBF8E0C();
        if (v73(&v50[v56], 1, __dsta))
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
          memcpy(&v49[v56], &v50[v56], *(*(v57 - 8) + 64));
        }

        else
        {
          (*(v75 + 16))(&v49[v56], &v50[v56], __dsta);
          (*(v75 + 56))(&v49[v56], 0, 1, __dsta);
        }

        (*(v52 + 56))(v49, 0, 1, v51);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v55)
      {
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);
        sub_21DBF8E0C();

        v64 = *(v51 + 20);
        v65 = *(v75 + 48);
        v66 = v65(&v49[v64], 1, __dsta);
        v67 = v65(&v50[v64], 1, __dsta);
        if (v66)
        {
          if (!v67)
          {
            (*(v75 + 16))(&v49[v64], &v50[v64], __dsta);
            (*(v75 + 56))(&v49[v64], 0, 1, __dsta);
            goto LABEL_28;
          }
        }

        else
        {
          if (!v67)
          {
            v72(&v49[v64], &v50[v64], __dsta);
            goto LABEL_28;
          }

          (*(v75 + 8))(&v49[v64], __dsta);
        }

        v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
        v62 = &v49[v64];
        v63 = &v50[v64];
LABEL_19:
        memcpy(v62, v63, v61);
LABEL_28:
        a1[v6[20]] = a2[v6[20]];
        a1[v6[24]] = a2[v6[24]];
        return a1;
      }

      sub_21D799ED4(v49, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    }

    v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980) - 8) + 64);
    v62 = v49;
    v63 = v50;
    goto LABEL_19;
  }

  if (!v10)
  {
    v74 = v7;
    v11 = sub_21DBF563C();
    v70 = *(v11 - 8);
    v71 = v11;
    v69 = *(v70 + 16);
    (v69)(a1, a2);
    v12 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v12[5]] = a2[v12[5]];
    v13 = v12[6];
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    a1[v12[7]] = a2[v12[7]];
    v15 = v12[8];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = v17[16];
    *v16 = *v17;
    v16[16] = v18;
    a1[v12[9]] = a2[v12[9]];
    a1[v12[10]] = a2[v12[10]];
    a1[v12[11]] = a2[v12[11]];
    v19 = v12[12];
    v20 = &a1[v19];
    v21 = &a2[v19];
    *v20 = *v21;
    v20[1] = v21[1];
    v22 = v6[12];
    v23 = &a1[v22];
    v24 = &a2[v22];
    *v23 = *v24;
    v23[8] = v24[8];
    *(v23 + 2) = *(v24 + 2);
    *(v23 + 3) = *(v24 + 3);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = *(v24 + 5);
    v25 = v6[16];
    __dst = &a1[v25];
    v26 = &a2[v25];
    v27 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v27;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v29(v26, 1, v30))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(__dst, v26, *(*(v31 - 8) + 64));
    }

    else
    {
      *__dst = *v26;
      __dst[1] = v26[1];
      v68 = v30;
      v58 = *(v30 + 20);
      v59 = *(v70 + 48);
      sub_21DBF8E0C();
      if (v59(v26 + v58, 1, v71))
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(__dst + v58, v26 + v58, *(*(v60 - 8) + 64));
      }

      else
      {
        v69(__dst + v58, v26 + v58, v71);
        (*(v70 + 56))(__dst + v58, 0, 1, v71);
      }

      (*(v28 + 56))(__dst, 0, 1, v68);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v74 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

char *initializeWithTake for TTRReminderDetailViewModel.DueDateState(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    v30 = *(v10 - 8);
    v29 = *(v30 + 32);
    v29(a1, a2, v10);
    v11 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v11[5]] = a2[v11[5]];
    v12 = v11[6];
    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    a1[v11[7]] = a2[v11[7]];
    v14 = v11[8];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v15[16] = v16[16];
    *v15 = *v16;
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    a1[v11[11]] = a2[v11[11]];
    *&a1[v11[12]] = *&a2[v11[12]];
    v17 = v6[12];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 2);
    *(v18 + 1) = *(v19 + 1);
    *(v18 + 2) = v20;
    *v18 = *v19;
    v21 = v6[16];
    v22 = &a1[v21];
    v23 = &a2[v21];
    v24 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(v22, v23, *(*(v26 - 8) + 64));
    }

    else
    {
      *v22 = *v23;
      v27 = *(v24 + 20);
      if ((*(v30 + 48))(&v23[v27], 1, v10))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(&v22[v27], &v23[v27], *(*(v28 - 8) + 64));
      }

      else
      {
        v29(&v22[v27], &v23[v27], v10);
        (*(v30 + 56))(&v22[v27], 0, 1, v10);
      }

      (*(v25 + 56))(v22, 0, 1, v24);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithTake for TTRReminderDetailViewModel.DueDateState(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678, &unk_21DC16600);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D0CF7E0(a1, &qword_27CE5C678, &unk_21DC16600);
      goto LABEL_7;
    }

    v30 = sub_21DBF563C();
    v71 = *(v30 - 8);
    v67 = *(v71 + 40);
    v69 = v30;
    v67(a1, a2);
    v31 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v31[5]] = a2[v31[5]];
    v32 = v31[6];
    v33 = sub_21DBF509C();
    (*(*(v33 - 8) + 40))(&a1[v32], &a2[v32], v33);
    a1[v31[7]] = a2[v31[7]];
    v34 = v31[8];
    v35 = &a1[v34];
    v36 = &a2[v34];
    v35[16] = v36[16];
    *v35 = *v36;
    a1[v31[9]] = a2[v31[9]];
    a1[v31[10]] = a2[v31[10]];
    a1[v31[11]] = a2[v31[11]];
    v37 = v31[12];
    v38 = &a1[v37];
    v39 = &a2[v37];
    v41 = *v39;
    v40 = v39[1];
    *v38 = v41;
    v38[1] = v40;

    v42 = v6[12];
    v43 = &a1[v42];
    v44 = &a2[v42];
    *v43 = *&a2[v42];
    v43[8] = a2[v42 + 8];
    v45 = *&a2[v42 + 24];
    *(v43 + 2) = *&a2[v42 + 16];
    *(v43 + 3) = v45;

    v46 = *(v44 + 5);
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 5) = v46;

    v47 = v6[16];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    v53 = v52(v48, 1, v50);
    v54 = v52(v49, 1, v50);
    if (v53)
    {
      if (!v54)
      {
        *v48 = *v49;
        v55 = *(v50 + 20);
        if ((*(v71 + 48))(&v49[v55], 1, v69))
        {
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
          memcpy(&v48[v55], &v49[v55], *(*(v56 - 8) + 64));
        }

        else
        {
          (*(v71 + 32))(&v48[v55], &v49[v55], v69);
          (*(v71 + 56))(&v48[v55], 0, 1, v69);
        }

        (*(v51 + 56))(v48, 0, 1, v50);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v54)
      {
        v62 = *(v49 + 1);
        *v48 = *v49;
        *(v48 + 1) = v62;

        v63 = *(v50 + 20);
        v64 = *(v71 + 48);
        v65 = v64(&v48[v63], 1, v69);
        v66 = v64(&v49[v63], 1, v69);
        if (v65)
        {
          if (!v66)
          {
            (*(v71 + 32))(&v48[v63], &v49[v63], v69);
            (*(v71 + 56))(&v48[v63], 0, 1, v69);
            goto LABEL_28;
          }
        }

        else
        {
          if (!v66)
          {
            (v67)(&v48[v63], &v49[v63], v69);
            goto LABEL_28;
          }

          (*(v71 + 8))(&v48[v63], v69);
        }

        v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8) + 64);
        v60 = &v48[v63];
        v61 = &v49[v63];
LABEL_19:
        memcpy(v60, v61, v59);
LABEL_28:
        a1[v6[20]] = a2[v6[20]];
        a1[v6[24]] = a2[v6[24]];
        return a1;
      }

      sub_21D799ED4(v48, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    }

    v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980) - 8) + 64);
    v60 = v48;
    v61 = v49;
    goto LABEL_19;
  }

  if (!v10)
  {
    v11 = sub_21DBF563C();
    v70 = *(v11 - 8);
    v68 = *(v70 + 32);
    v68(a1, a2, v11);
    v12 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v12[5]] = a2[v12[5]];
    v13 = v12[6];
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
    a1[v12[7]] = a2[v12[7]];
    v15 = v12[8];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v16[16] = v17[16];
    *v16 = *v17;
    a1[v12[9]] = a2[v12[9]];
    a1[v12[10]] = a2[v12[10]];
    a1[v12[11]] = a2[v12[11]];
    *&a1[v12[12]] = *&a2[v12[12]];
    v18 = v6[12];
    v19 = &a1[v18];
    v20 = &a2[v18];
    v21 = v20[2];
    v19[1] = v20[1];
    v19[2] = v21;
    *v19 = *v20;
    v22 = v6[16];
    v23 = &a1[v22];
    v24 = &a2[v22];
    v25 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0, &unk_21DC17980);
      memcpy(v23, v24, *(*(v27 - 8) + 64));
    }

    else
    {
      *v23 = *v24;
      v57 = *(v25 + 20);
      if ((*(v70 + 48))(v24 + v57, 1, v11))
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
        memcpy(v23 + v57, v24 + v57, *(*(v58 - 8) + 64));
      }

      else
      {
        v68(v23 + v57, v24 + v57, v11);
        (*(v70 + 56))(v23 + v57, 0, 1, v11);
      }

      (*(v26 + 56))(v23, 0, 1, v25);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v28 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v28);
}

void sub_21D7B8670(uint64_t a1)
{
  type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(319);
  if (v1 <= 0x3F)
  {
    sub_21D7BA950(319, &qword_27CE61990, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout();
      swift_initEnumMetadataSinglePayload();
    }
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D48BB60(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D48BB60(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21D48C240(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21D48C240(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D7B8960(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D7B8990(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationQuickPicksState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationQuickPicksState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D7B8A78(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void destroy for TTRReminderDetailViewModel.PersonState(uint64_t a1)
{
  if (*(a1 + 8) >= 0xFFFFFFFFuLL)
  {

    v2 = *(a1 + 16);
  }
}

__n128 sub_21D7B8B0C(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    v3 = a2[1].n128_u64[0];
    a1[1].n128_u64[0] = v3;
    sub_21DBF8E0C();
    v4 = v3;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.PersonState(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      v8 = a2[2];
      *(a1 + 16) = v8;
      sub_21DBF8E0C();
      v9 = v8;
      return a1;
    }

LABEL_7:
    v10 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v10;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  v5 = *(a1 + 16);
  v6 = a2[2];
  *(a1 + 16) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.PersonState(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(v4 + 16);
      *(v4 + 16) = *(a2 + 16);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.PersonState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.PersonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_21D7B8D98(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void destroy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1)
{
  if (*a1)
  {

    v2 = *(a1 + 104);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    *result = v3;
    *(result + 8) = v5;
    v7 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(result + 16) = v4;
    *(result + 24) = v7;
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
    *(result + 32) = v6;
    *(result + 40) = v9;
    v11 = *(a2 + 56);
    v10 = *(a2 + 64);
    *(result + 48) = v8;
    *(result + 56) = v11;
    v13 = *(a2 + 72);
    v12 = *(a2 + 80);
    *(result + 64) = v10;
    *(result + 72) = v13;
    v14 = *(a2 + 88);
    *(result + 80) = v12;
    *(result + 88) = v14;
    *(result + 96) = *(a2 + 96);
    v15 = *(a2 + 104);
    *(result + 104) = v15;
    v16 = result;
    v17 = v3;
    v18 = v5;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19 = v15;
    result = v16;
  }

  else
  {
    v20 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v20;
    *(result + 96) = *(a2 + 96);
    v21 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v21;
    v22 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v22;
  }

  *(result + 112) = *(a2 + 112);
  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a1 + 8);
      v8 = *(a2 + 1);
      *(a1 + 8) = v8;
      v9 = v8;

      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      sub_21DBF8E0C();

      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      sub_21DBF8E0C();

      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      sub_21DBF8E0C();

      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      sub_21DBF8E0C();

      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      sub_21DBF8E0C();

      *(a1 + 96) = *(a2 + 96);
      v10 = *(a1 + 104);
      v11 = *(a2 + 13);
      *(a1 + 104) = v11;
      v12 = v11;
    }

    else
    {
      sub_21D30DA04(a1);
      v19 = a2[1];
      v18 = a2[2];
      *a1 = *a2;
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      v20 = a2[6];
      v22 = a2[3];
      v21 = a2[4];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v20;
      *(a1 + 48) = v22;
      *(a1 + 64) = v21;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v13 = *(a2 + 1);
    *(a1 + 8) = v13;
    *(a1 + 16) = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = a2[4];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 13);
    *(a1 + 104) = v14;
    v15 = v5;
    v16 = v13;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = v14;
  }

  else
  {
    v23 = *a2;
    v24 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v24;
    *a1 = v23;
    v25 = a2[3];
    v26 = a2[4];
    v27 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v27;
    *(a1 + 48) = v25;
    *(a1 + 64) = v26;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (!*a2)
  {
    sub_21D30DA04(a1);
LABEL_5:
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    *(a1 + 96) = *(a2 + 96);
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
    goto LABEL_6;
  }

  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  *(a1 + 96) = *(a2 + 96);
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

LABEL_6:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void destroy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    v2 = *(a1 + 8);
    if (v2)
    {

      v3 = *(a1 + 112);
    }
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, uint64_t *a2)
{
  if (*a2 < 0xFFFFFFFF)
  {
    v21 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v21;
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = a2[14];
    v22 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v22;
    v23 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v23;
  }

  else
  {
    *a1 = *a2;
    v4 = a2 + 1;
    v5 = a2[1];
    sub_21DBF8E0C();
    if (v5)
    {
      v7 = a2[2];
      v6 = a2[3];
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
      v9 = a2[4];
      v8 = a2[5];
      *(a1 + 24) = v6;
      *(a1 + 32) = v9;
      v11 = a2[6];
      v10 = a2[7];
      *(a1 + 40) = v8;
      *(a1 + 48) = v11;
      v13 = a2[8];
      v12 = a2[9];
      *(a1 + 56) = v10;
      *(a1 + 64) = v13;
      v15 = a2[10];
      v14 = a2[11];
      *(a1 + 72) = v12;
      *(a1 + 80) = v15;
      v16 = a2[12];
      *(a1 + 88) = v14;
      *(a1 + 96) = v16;
      *(a1 + 104) = *(a2 + 104);
      v17 = a2[14];
      *(a1 + 112) = v17;
      v18 = v5;
      v19 = v7;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = v17;
    }

    else
    {
      v24 = *(a2 + 11);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = v24;
      *(a1 + 104) = *(a2 + 13);
      v25 = *(a2 + 3);
      *(a1 + 8) = *v4;
      *(a1 + 24) = v25;
      v26 = *(a2 + 7);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = v26;
    }
  }

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v6 = (a1 + 8);
      v9 = (a2 + 8);
      v17 = *(a2 + 1);
      sub_21DBF8E0C();
      if (v17)
      {
        *(a1 + 8) = v17;
        v18 = *(a2 + 2);
        *(a1 + 16) = v18;
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        v19 = *(a2 + 14);
        *(a1 + 112) = v19;
        v20 = v17;
        v21 = v18;
LABEL_14:
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v32 = v19;
        return a1;
      }

LABEL_15:
      v33 = *v9;
      v34 = v9[2];
      v6[1] = v9[1];
      v6[2] = v34;
      *v6 = v33;
      v35 = v9[3];
      v36 = v9[4];
      v37 = v9[6];
      v6[5] = v9[5];
      v6[6] = v37;
      v6[3] = v35;
      v6[4] = v36;
      return a1;
    }

LABEL_11:
    v23 = *a2;
    v24 = a2[1];
    v25 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v25;
    *a1 = v23;
    *(a1 + 16) = v24;
    v26 = a2[4];
    v27 = a2[5];
    v28 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 80) = v27;
    *(a1 + 96) = v28;
    *(a1 + 64) = v26;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    v22 = *(a1 + 8);
    if (v22)
    {
    }

    goto LABEL_11;
  }

  *a1 = v5;
  sub_21DBF8E0C();

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v9 = (a2 + 8);
  v8 = *(a2 + 1);
  if (!v7)
  {
    if (v8)
    {
      *(a1 + 8) = v8;
      v29 = *(a2 + 2);
      *(a1 + 16) = v29;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      v19 = *(a2 + 14);
      *(a1 + 112) = v19;
      v30 = v8;
      v31 = v29;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v8)
  {
    *(a1 + 8) = v8;
    v10 = v8;

    v11 = *(a1 + 16);
    v12 = *(a2 + 2);
    *(a1 + 16) = v12;
    v13 = v12;

    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
    sub_21DBF8E0C();

    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    sub_21DBF8E0C();

    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    sub_21DBF8E0C();

    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = *(a2 + 10);
    sub_21DBF8E0C();

    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    sub_21DBF8E0C();

    *(a1 + 104) = *(a2 + 104);
    v14 = *(a1 + 112);
    v15 = *(a2 + 14);
    *(a1 + 112) = v15;
    v16 = v15;
  }

  else
  {
    sub_21D30DA04(a1 + 8);
    v39 = *(a2 + 24);
    v38 = *(a2 + 40);
    *v6 = *v9;
    *(a1 + 24) = v39;
    *(a1 + 40) = v38;
    v40 = *(a2 + 104);
    v42 = *(a2 + 56);
    v41 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = v40;
    *(a1 + 56) = v42;
    *(a1 + 72) = v41;
  }

  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, uint64_t a2)
{
  if (*a1 < 0xFFFFFFFFuLL)
  {
LABEL_8:
    v14 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v14;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    v16 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v16;
    return a1;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

    v13 = *(a1 + 8);
    if (v13)
    {
    }

    goto LABEL_8;
  }

  *a1 = *a2;

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
LABEL_11:
    v18 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v18;
    *(a1 + 104) = *(a2 + 104);
    v19 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v19;
    v20 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v20;
    return a1;
  }

  if (!v5)
  {
    sub_21D30DA04(a1 + 8);
    goto LABEL_11;
  }

  *(a1 + 8) = v5;

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  v9 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v9;

  v10 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v10;

  v11 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v11;

  *(a1 + 104) = *(a2 + 104);
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D7B9B0C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  sub_21D7ABD2C(*a2, v5, v6, v7, v8, v9, v10, v11, a3, v12, v14, v15, v16, v17, v18, v19, v20);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v27 = *(a2 + 72);
  v28 = *(a2 + 80);
  v29 = *(a2 + 88);
  v30 = *(a2 + 96);
  v31 = *(a2 + 104);
  v32 = *(a2 + 112);
  v33 = *(a2 + 120);
  sub_21D7ABD2C(*a2, v5, v6, v7, v8, v9, v10, v11, a3, v12, v27, v28, v29, v30, v31, v32, v33);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = *(a1 + 96);
  v24 = *(a1 + 112);
  v25 = *(a1 + 120);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v27;
  *(a1 + 80) = v28;
  *(a1 + 88) = v29;
  *(a1 + 96) = v30;
  *(a1 + 104) = v31;
  *(a1 + 112) = v32;
  *(a1 + 120) = v33;
  sub_21D7AC858(v13, v14, v15, v16, v17, v18, v19, v20, v21, v21.n128_i64[0], v21.n128_i64[1], v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
  return a1;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  sub_21D7AC858(v5, v7, v6, v8, v9, v10, v11, v12, v13, v13.n128_i64[0], v13.n128_i64[1], v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 120);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D7B9F38(uint64_t a1)
{
  if (*(a1 + 120) <= 1u)
  {
    return *(a1 + 120);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D7B9F50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 2;
    *(result + 104) = 0u;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    sub_21DBF8E0C();
    if (v10(&a2[v7], 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
      memcpy(&v4[v7], &a2[v7], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }
  }

  return v4;
}

uint64_t destroy for TTRReminderDetailViewModel.RecurrenceEnd(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_21DBF563C();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  sub_21DBF8E0C();
  if (v9(&a2[v6], 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  v6 = *(a3 + 20);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeWithTake for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
  return a1;
}

void sub_21D7BA89C(uint64_t a1)
{
  sub_21D7BA950(319, &qword_280D1B858, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D7BA950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void destroy for TTRReminderDetailViewModel.Attachment(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for TTRReminderDetailViewModel.Attachment(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = (*(*(v7 - 8) + 48))(a1, a2, v7);
  if (v8 >= 2)
  {
    return v8 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v8 = (a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, a3, v9);
}

uint64_t sub_21D7BAC74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, 1, v5);
}

uint64_t sub_21D7BACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, 1, v7);
}

void sub_21D7BAD68(uint64_t a1)
{
  sub_21D7BA950(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
  }
}

void destroy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1)
{

  v2 = *(a1 + 72);
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v7;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  *(a1 + 72) = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v7 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void destroy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = v2;
  }

  if (v3 - 1 < 0)
  {

    v4 = *(a1 + 72);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 8);
  }

  if (v3 - 1 < 0)
  {
    *result = *a2;
    *(result + 8) = v2;
    v6 = *(a2 + 24);
    *(result + 16) = *(a2 + 16);
    *(result + 24) = v6;
    v7 = *(a2 + 40);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = v7;
    *(result + 48) = *(a2 + 48);
    v8 = *(a2 + 64);
    *(result + 56) = *(a2 + 56);
    *(result + 64) = v8;
    v9 = *(a2 + 72);
    *(result + 72) = v9;
    v10 = result;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11 = v9;
    return v10;
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v4;
    *(result + 64) = *(a2 + 64);
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = -1;
  if (*(result + 8) >= 0xFFFFFFFFuLL)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = v3 - 1;
  if (*(a2 + 8) < 0xFFFFFFFFuLL)
  {
    v2 = *(a2 + 8);
  }

  v5 = v2 - 1;
  if (v4 < 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      v9 = result;

      *v9 = *a2;
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v13 = *(a2 + 64);
      *(v9 + 48) = *(a2 + 48);
      *(v9 + 64) = v13;
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
      return v9;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v17 = result;
    sub_21DBF8E0C();

    *(v17 + 16) = *(a2 + 16);
    *(v17 + 24) = *(a2 + 24);
    sub_21DBF8E0C();

    *(v17 + 32) = *(a2 + 32);
    *(v17 + 40) = *(a2 + 40);
    sub_21DBF8E0C();

    *(v17 + 48) = *(a2 + 48);
    *(v17 + 56) = *(a2 + 56);
    *(v17 + 64) = *(a2 + 64);
    sub_21DBF8E0C();

    v19 = *(v17 + 72);
    v20 = *(a2 + 72);
    v15 = v17;
    *(v17 + 72) = v20;
    v21 = v20;
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
      *result = *a2;
      v6 = *(a2 + 16);
      v7 = *(a2 + 32);
      v8 = *(a2 + 64);
      *(result + 48) = *(a2 + 48);
      *(result + 64) = v8;
      *(result + 16) = v6;
      *(result + 32) = v7;
      return result;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
    *(result + 24) = *(a2 + 24);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = *(a2 + 40);
    *(result + 48) = *(a2 + 48);
    *(result + 56) = *(a2 + 56);
    *(result + 64) = *(a2 + 64);
    v14 = *(a2 + 72);
    v15 = result;
    *(result + 72) = v14;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v16 = v14;
  }

  return v15;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = -1;
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v2 = *(result + 8);
  }

  if (v2 - 1 < 0)
  {
    v5 = *(a2 + 8);
    LODWORD(v6) = -1;
    if (v5 < 0xFFFFFFFF)
    {
      v6 = *(a2 + 8);
    }

    if (v6 - 1 < 0)
    {
      *result = *a2;
      *(result + 8) = v5;
      v7 = result;

      v12 = *(a2 + 24);
      *(v7 + 16) = *(a2 + 16);
      *(v7 + 24) = v12;

      v13 = *(a2 + 40);
      *(v7 + 32) = *(a2 + 32);
      *(v7 + 40) = v13;

      *(v7 + 48) = *(a2 + 48);
      *(v7 + 56) = *(a2 + 56);

      v14 = *(v7 + 72);
      *(v7 + 64) = *(a2 + 64);
    }

    else
    {
      v7 = result;

      v9 = *(a2 + 48);
      *(v7 + 32) = *(a2 + 32);
      *(v7 + 48) = v9;
      *(v7 + 64) = *(a2 + 64);
      v10 = *(a2 + 16);
      *v7 = *a2;
      *(v7 + 16) = v10;
    }

    return v7;
  }

  else
  {
    v3 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v3;
    *(result + 64) = *(a2 + 64);
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationDetailsState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D7BB52C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_21D7BB550(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

double sub_21D7BB5A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

    sub_21DBF8E0C();
  }

  else
  {
    if (a6 != 1)
    {
      if (a6)
      {
        return result;
      }

      v9 = a1;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      a1 = v9;
    }

    v7 = a1;
  }

  return result;
}

void sub_21D7BB63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

LABEL_6:

    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    goto LABEL_6;
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21D0FB960(v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  v12 = *(v2 + 72);
  v13 = *(v2 + 80);
  LOBYTE(v2) = *(v2 + 88);
  sub_21D0FB9BC(v12, v13, v2);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v2;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(v2 + 64);
  sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
  v18 = v2[9];
  v19 = v2[10];
  LOBYTE(v2) = *(v2 + 88);
  sub_21D0FB9BC(v18, v19, v2);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v2;
  sub_21D0FB9F4(v20, v21, v22);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 64);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v13;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  sub_21D1078C0(v6, v7, v8, v9, v10, v11, v12);
  v14 = *(a2 + 88);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  sub_21D0FB9F4(v15, v16, v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double destroy for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 2)
  {
    return sub_21D7A98B4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v1);
  }

  return result;
}

__n128 initializeWithCopy for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (v2 > 2)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[4];
    result.n128_f64[0] = sub_21D7A9844(*a2, v4, v5, v6, v7, v2);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v2;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v3 > 2)
  {
    if (v4 <= 2)
    {
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = *(a2 + 2);
      v19 = *(a2 + 3);
      v20 = *(a2 + 4);
      sub_21D7A9844(*a2, v17, v18, v19, v20, v4);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;
      *(a1 + 32) = v20;
      *(a1 + 40) = v4;
      return a1;
    }

    v22 = *a2;
    v23 = a2[1];
    v24 = *(a2 + 25);
LABEL_8:
    *(a1 + 25) = v24;
    *a1 = v22;
    *(a1 + 16) = v23;
    return a1;
  }

  if (v4 > 2)
  {
    sub_21D7A98B4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v3);
    v22 = *a2;
    v23 = a2[1];
    v24 = *(a2 + 25);
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  sub_21D7A9844(*a2, v6, v7, v8, v9, v4);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  v15 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D7A98B4(v10, v11, v12, v13, v14, v15);
  return a1;
}

_OWORD *assignWithTake for TTRReminderDetailViewModel.SectionPickerVisibility(_OWORD *result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2 > 2)
  {
    v12 = *(a2 + 16);
    *result = *a2;
    result[1] = v12;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 40);
    if (v3 > 2)
    {
      v11 = result;
      sub_21D7A98B4(*result, *(result + 1), *(result + 2), *(result + 3), *(result + 4), v2);
      v14 = *(a2 + 16);
      *v11 = *a2;
      v11[1] = v14;
      *(v11 + 25) = *(a2 + 25);
    }

    else
    {
      v4 = *(a2 + 32);
      v5 = *result;
      v6 = *(result + 1);
      v7 = *(result + 2);
      v8 = *(result + 3);
      v9 = *(result + 4);
      v10 = *(a2 + 16);
      *result = *a2;
      result[1] = v10;
      *(result + 4) = v4;
      *(result + 40) = v3;
      v11 = result;
      sub_21D7A98B4(v5, v6, v7, v8, v9, v2);
    }

    return v11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

uint64_t sub_21D7BBD74(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_21D7BBD88(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_21D7BBE1C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = *(a2 + 40);
  a4(*a2, v6, v7, v8, v9, v10);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return a1;
}

uint64_t *sub_21D7BBEC8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  a4(*a2, v8, v9, v10, v11, v12);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  v18 = *(a1 + 40);
  *(a1 + 40) = v12;
  a5(v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t *sub_21D7BBF7C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v13;
  a1[4] = v6;
  v14 = *(a1 + 40);
  *(a1 + 40) = v7;
  a4(v8, v10, v9, v11, v12, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D7BC070(uint64_t a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 2);
  }
}

void destroy for TTRReminderDetailViewModel.AppLink(uint64_t a1)
{

  if (*(a1 + 56) >= 2uLL)
  {

    v2 = *(a1 + 64);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 56);
  v8 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;
      v9 = *(a2 + 64);
      *(a1 + 64) = v9;
      sub_21DBF8E0C();
      v10 = v9;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
    }
  }

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v9 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v9;
      return a1;
    }

    *(a1 + 40) = *(a2 + 40);
    if (*(a2 + 56))
    {
LABEL_7:
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v11 = *(a2 + 64);
      *(a1 + 64) = v11;
      sub_21DBF8E0C();
      v12 = v11;
      return a1;
    }

LABEL_12:
    v17 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v17;
    return a1;
  }

  if (v8 == 1)
  {
    sub_21D3A1A28(a1 + 40);
    v10 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v10;
    return a1;
  }

  *(a1 + 40) = *(a2 + 40);
  v13 = *(a2 + 56);
  if (!v7)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v13)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    sub_21DBF8E0C();

    v14 = *(a1 + 64);
    v15 = *(a2 + 64);
    *(a1 + 64) = v15;
    v16 = v15;
  }

  else
  {
    sub_21D122250(a1 + 48);
    v18 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v18;
  }

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a1 + 56);
  if (v7 != 1)
  {
    v8 = *(a2 + 56);
    if (v8 != 1)
    {
      *(a1 + 40) = *(a2 + 40);
      if (v7)
      {
        if (v8)
        {
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 56) = v8;

          v10 = *(a1 + 64);
          *(a1 + 64) = *(a2 + 64);

          return a1;
        }

        sub_21D122250(a1 + 48);
      }

      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      return a1;
    }

    sub_21D3A1A28(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AppLink(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AppLink(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.PresenterStateDontCare(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.PresenterStateDontCare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D7BC5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21D7BC638@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, char **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{

  return sub_21D142838(a1, a2, a3, a4, a5, a6, a7, a8);
}

void *sub_21D7BC824(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 8) & ~v5, (a2 + v5 + 8) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *sub_21D7BC910(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_21D7BC980(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_21D7BC9F0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

Swift::Bool __swiftcall TTRExecutingWithinSiriProcess()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_21DBFA16C();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000021DC4A6B0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21DBFC64C();
  }

  return v6 & 1;
}

uint64_t static TTRAccessibilityUtil.dictLocalizedString(_:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_21DBF516C();

  return v3;
}

uint64_t TTRReminderSwipeAction.localizedTitle.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v1 == 3)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (v1 == 4)
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

      goto LABEL_34;
    }

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

      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (*v0 <= 8u)
  {
    if (v1 == 6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v1 == 7)
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

    goto LABEL_34;
  }

  if (v1 == 9)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_34;
  }

  if (v1 == 10)
  {
LABEL_18:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_34;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_34:
    swift_once();
  }

  return sub_21DBF516C();
}

id TTRReminderSwipeAction.image.getter()
{
  v1 = *v0;
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 != 1)
  {
    return 0;
  }

  if (v1 <= 5)
  {
LABEL_5:
    v2 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    return v5;
  }

  if ((v1 - 6) < 4)
  {
    return 0;
  }

  if (v1 == 10)
  {
    goto LABEL_5;
  }

  if (qword_280D168B8 != -1)
  {
    swift_once();
  }

  v3 = qword_280D168C0;
  v4 = qword_280D168C0;
  return v3;
}

id TTRReminderSwipeAction.backgroundColor.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 > 5)
  {
    if (*v0 > 8u)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          return result;
        }

        v9 = [objc_opt_self() ttr_systemIndigoColor];
        return v9;
      }

      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v14 = qword_280D21CE0;
      v15 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

    else if (v2 - 7 >= 2)
    {
      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v12 = qword_280D21CE0;
      v13 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v13 inBundle:v12 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

    else
    {
      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v5 = qword_280D21CE0;
      v6 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

LABEL_26:
    v9 = [v7 magentaColor];
    return v9;
  }

  if (*v0 > 3u)
  {
    v9 = [objc_opt_self() ttr_systemBrownColor];
    return v9;
  }

  if (v2 - 2 >= 2)
  {
    if (!*v0)
    {
      return result;
    }

    if (qword_280D173D8 != -1)
    {
      swift_once();
    }

    v10 = qword_280D21CE0;
    v11 = sub_21DBFA12C();
    v7 = objc_opt_self();
    v8 = [v7 colorNamed:v11 inBundle:v10 compatibleWithTraitCollection:0];

    if (!v8)
    {
      goto LABEL_26;
    }

    return v8;
  }

  if (qword_280D16948 != -1)
  {
    swift_once();
  }

  v3 = qword_280D16950;
  v4 = qword_280D16950;
  return v3;
}

uint64_t TTRReminderSwipeAction.accessibilityLabel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = sub_21DBF563C();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = sub_21DBF5C4C();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF5A2C();
  v81 = *(v18 - 8);
  v82 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF509C();
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  MEMORY[0x28223BE20](v27);
  v31 = *v0;
  if (v31 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v31 == 3)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (v31 == 4)
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

    else if (*v0)
    {
      if (v31 == 1)
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

    goto LABEL_57;
  }

  if (*v0 > 8u)
  {
    if (v31 == 9)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v31 == 10)
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

LABEL_57:
    swift_once();
    return sub_21DBF516C();
  }

  if (v31 == 6)
  {
    v76 = &v72 - v29;
    v77 = v28;
    v78 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21DC08D00;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    *(v39 + 32) = sub_21DBF516C();
    *(v39 + 40) = v40;
    v75 = v39;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    sub_21DBF58BC();
    v42 = v83;
    v73 = *(v83 + 8);
    v74 = v83 + 8;
    v73(v14, v84);
    (*(v80 + 8))(v17, v15);
    v43 = v82;
    v44 = *(v81 + 8);
    v44(v20, v82);
    static TTRReminderEditor.tomorrowDueDateComponents(now:)(v76);
    v45 = *(v78 + 8);
    v46 = v26;
    v78 += 8;
    v47 = v45;
    v45(v46, v77);
    v48 = [objc_opt_self() currentCalendar];
    sub_21DBF596C();

    v49 = v84;
    sub_21DBF597C();
    v44(v20, v43);
    if ((*(v42 + 48))(v6, 1, v49) == 1)
    {
      sub_21D46CB6C(v6);
      v50 = v75;
    }

    else
    {
      v52 = v79;
      (*(v42 + 32))(v79, v6, v49);
      if (qword_280D171B8 != -1)
      {
        swift_once();
      }

      v53 = qword_280D171C0;
      v54 = sub_21DBF55BC();
      v55 = [v53 stringFromDate_];

      v56 = sub_21DBFA16C();
      v58 = v57;

      v50 = v75;
      v60 = *(v75 + 2);
      v59 = *(v75 + 3);
      if (v60 >= v59 >> 1)
      {
        v50 = sub_21D210A84((v59 > 1), v60 + 1, 1, v75);
      }

      v73(v52, v84);
      *(v50 + 2) = v60 + 1;
      v61 = &v50[16 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
    }

    v85 = v50;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D1ADAA8();
    v62 = sub_21DBFA07C();

    v47(v76, v77);
    return v62;
  }

  if (v31 != 7)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_57;
  }

  v77 = v28;
  v78 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = sub_21DBF516C();
  *(v32 + 40) = v33;
  type metadata accessor for TTRReminderEditor();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.thisWeekendDueDateComponents(now:)(v14, v23);
  v34 = v83;
  v35 = *(v83 + 8);
  v36 = v14;
  v37 = v84;
  v35(v36, v84);
  v38 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  (*(v81 + 8))(v20, v82);
  if ((*(v34 + 48))(v3, 1, v37) == 1)
  {
    sub_21D46CB6C(v3);
  }

  else
  {
    (*(v34 + 32))(v9, v3, v37);
    if (qword_280D171B8 != -1)
    {
      swift_once();
    }

    v63 = qword_280D171C0;
    v64 = sub_21DBF55BC();
    v65 = [v63 stringFromDate_];

    v66 = sub_21DBFA16C();
    v68 = v67;

    v70 = *(v32 + 16);
    v69 = *(v32 + 24);
    if (v70 >= v69 >> 1)
    {
      v32 = sub_21D210A84((v69 > 1), v70 + 1, 1, v32);
    }

    v35(v9, v37);
    *(v32 + 16) = v70 + 1;
    v71 = v32 + 16 * v70;
    *(v71 + 32) = v66;
    *(v71 + 40) = v68;
  }

  v85 = v32;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v62 = sub_21DBFA07C();

  (*(v78 + 8))(v23, v77);
  return v62;
}

uint64_t TTRReminderSwipeAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7BEABC()
{
  result = qword_27CE619C8;
  if (!qword_27CE619C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderSwipeAction, &type metadata for TTRReminderSwipeAction, v0, v1);
    atomic_store(result, &qword_27CE619C8);
  }

  return result;
}

uint64_t TTRHashtagTokenTextInteraction.__allocating_init(tokenEditingBehavior:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  LOBYTE(a1) = *a1;
  type metadata accessor for HashtagTokenEditor();
  *(v2 + 24) = swift_allocObject();
  *(v2 + 16) = a1;
  return v2;
}

void TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)(void *a1@<X0>, uint64_t a2@<X1>, NSUInteger a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v10 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    sub_21D7C1880(a1, a2);
    if (v13)
    {
      length = 0;
      location = a2;
      goto LABEL_10;
    }

LABEL_24:
    *a6 = xmmword_21DC11550;
    goto LABEL_25;
  }

  sub_21D7BF51C(a1, a2, a3);
  sub_21DBFC10C();

  sub_21DBFC42C();
  location = a2;
  length = a3;
  if (v24)
  {
LABEL_6:

    if (location != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (length != a3)
    {
LABEL_11:
      *a6 = location;
      *(a6 + 8) = length;
      v14 = 2;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v15 = v23;
  v16 = a3 + a2;
  length = a3;
  location = a2;
  while (1)
  {
    v18 = v15.location == a2;
    if (v15.length != a3)
    {
      v18 = 0;
    }

    if (v15.location <= a2 && !v18)
    {
      v19 = v15.length + v15.location;
      if ((v15.length + v15.location) >= v16)
      {
        break;
      }
    }

    v25.location = location;
    v25.length = length;
    v17 = NSUnionRange(v25, v15);
    location = v17.location;
    length = v17.length;
    sub_21DBFC42C();
    v15 = v23;
    if (v24 == 1)
    {
      goto LABEL_6;
    }
  }

  v20 = v15.length;
  v21 = v15.location;

  if (v10)
  {
LABEL_20:
    *a6 = 0;
    *(a6 + 8) = 0;
LABEL_25:
    v14 = 3;
    goto LABEL_26;
  }

  if (v19 != v16)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v22 = *(v6 + 16);
  *a6 = v21;
  *(a6 + 8) = v20;
  if ((v22 & 1) == 0)
  {
    *(a6 + 16) = 0;
    return;
  }

  v14 = 1;
LABEL_26:
  *(a6 + 16) = v14;
}

__C::_NSRange __swiftcall TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(__C::_NSRange _, NSAttributedString in)
{
  length = _.length;
  location = _.location;
  if (sub_21DBF4B4C() != _.location)
  {
    if (length)
    {
      sub_21D7BF51C(in.super.isa, location, length);
      sub_21DBFC10C();

      sub_21DBFC42C();
      if ((v14 & 1) == 0)
      {
        v5 = v13;
        do
        {
          v15.location = location;
          v15.length = length;
          v6 = NSUnionRange(v15, v5);
          location = v6.location;
          length = v6.length;
          sub_21DBFC42C();
          v5 = v13;
        }

        while (v14 != 1);
      }
    }

    else
    {
      v7 = sub_21D7C1880(in.super.isa, location);
      if (v9)
      {
        length = 0;
      }

      else
      {
        location = v7;
        length = v8;
      }
    }
  }

  v10 = location;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

Swift::Bool __swiftcall TTRHashtagTokenTextInteraction.removeTokenAttribute(in:range:)(NSMutableAttributedString in, __C::_NSRange range)
{
  length = range.length;
  location = range.location;
  v5 = sub_21DBF4B4C();
  result = 0;
  if (v5 != location && length >= 1)
  {
    sub_21D7BF51C(in.super.super.isa, location, length);
    sub_21DBFC10C();
    while (1)
    {
      sub_21DBFC42C();
      if (v10)
      {
        break;
      }

      if (v8 == location && v9 == length)
      {

        [(objc_class *)in.super.super.isa rem_removeHashtagInRange:location, length];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

NSUInteger TTRHashtagTokenTextInteraction.hashtagTokenMenuItem(forSelectedRange:in:hashtagVisibility:)@<X0>(NSUInteger result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v7 = *a4;
  if (*a4)
  {
    v8 = v5;
    v11 = result;
    if ((sub_21D7BF650(a3, result, a2) & 1) == 0)
    {
      goto LABEL_7;
    }

    v32[0] = 0;
    v32[1] = 0;
    if (v11 < 0)
    {
      __break(1u);
    }

    v12 = [a3 string];
    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = MEMORY[0x223D42B30](v13, v15);

    v17 = [a3 rem:v11 hashtagAtIndex:v32 longestEffectiveRange:0 inRange:v16];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 objectIdentifier];
      v20 = sub_21DBFA16C();
      v22 = v21;

      LOBYTE(v19) = sub_21D1E1CE8(v20, v22, v7);

      if (v19)
      {
        v23 = &unk_282EA71D0;
      }

      else
      {
        v23 = &unk_282EA71F8;
      }

      v28 = sub_21D1D1B28(v23);
    }

    else
    {
LABEL_7:
      type metadata accessor for TTRHashtagEditingPresenterCapability();
      v24 = [a3 string];
      v25 = sub_21DBFA16C();
      v27 = v26;

      static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(v25, v27, v11, a2, v32);

      v28 = MEMORY[0x277D84FA0];
      if (LOBYTE(v32[0]) != 2 && (v32[0] & 0x100) == 0 && (v32[0] & 1) != 0)
      {
        v28 = sub_21D1D1B28(&unk_282EA7220);
      }
    }

    swift_beginAccess();
    if (*(v8 + 16))
    {
      v29 = &unk_282EA71A8;
    }

    else
    {
      v29 = &unk_282EA7180;
    }

    v30 = sub_21D1D1B28(v29);
    v31 = sub_21D7C0F34(v28, v30, sub_21D7C1110, sub_21D7C1110);

    sub_21D1957E4(v31, a5);
  }

  else
  {
    *a5 = 4;
  }

  return result;
}