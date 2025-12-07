BOOL _s15RemindersUICore25TTRRemindersListViewModelC17SharingStatusDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66958, &unk_21DC3F1E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, &v21 - v12, &qword_27CE66838, &unk_21DC3D2B0);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE66838, &unk_21DC3D2B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE66838, &unk_21DC3D2B0);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v13, v10, &qword_27CE66838, &unk_21DC3D2B0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
LABEL_6:
    v18 = &qword_27CE66958;
    v19 = &unk_21DC3F1E8;
LABEL_7:
    sub_21D0CF7E0(v13, v18, v19);
    return 0;
  }

  sub_21DAF98D8(&v13[v15], v7, type metadata accessor for TTRSharedWithYouHighlight);
  if ((sub_21DBF544C() & 1) == 0)
  {
    sub_21D107038(v7, type metadata accessor for TTRSharedWithYouHighlight);
    sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
    v18 = &qword_27CE66838;
    v19 = &unk_21DC3D2B0;
    goto LABEL_7;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v20 = sub_21DBFB63C();
  sub_21D107038(v7, type metadata accessor for TTRSharedWithYouHighlight);
  sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
  sub_21D0CF7E0(v13, &qword_27CE66838, &unk_21DC3D2B0);
  return (v20 & 1) != 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO10EraAndYearV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v138 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v136 = &v114 - v5;
  MEMORY[0x28223BE20](v6);
  v135 = &v114 - v7;
  MEMORY[0x28223BE20](v8);
  v134 = &v114 - v9;
  MEMORY[0x28223BE20](v10);
  v133 = &v114 - v11;
  MEMORY[0x28223BE20](v12);
  v132 = &v114 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v121);
  v122 = &v114 - v14;
  v15 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v15 - 8);
  v119 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v128 = &v114 - v18;
  v115 = type metadata accessor for TTRTemplatePublicLinkData(0);
  MEMORY[0x28223BE20](v115);
  v118 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v114 - v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v117 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v114 - v25;
  v26 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v26 - 8);
  v131 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v130 = &v114 - v29;
  MEMORY[0x28223BE20](v30);
  v116 = &v114 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v114 - v33;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v114 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v114 - v42;
  MEMORY[0x28223BE20](v44);
  v124 = &v114 - v45;
  MEMORY[0x28223BE20](v46);
  v126 = &v114 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v114 - v49;
  MEMORY[0x28223BE20](v51);
  v125 = &v114 - v52;
  MEMORY[0x28223BE20](v53);
  v123 = &v114 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v114 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v114 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v114 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v114 - v65;
  sub_21D1055C4(v137, &v114 - v65, type metadata accessor for TTRRemindersListViewModel.Item);
  v137 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v57 = v40;
    v73 = v34;
    v74 = v131;
    v70 = v133;
    v76 = v135;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v68 = v73;
        sub_21DAF98D8(v66, v73, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D1055C4(v138, v63, type metadata accessor for TTRRemindersListViewModel.Item);
        if (!swift_getEnumCaseMultiPayload())
        {
          v70 = v116;
          sub_21DAF98D8(v63, v116, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v71 = _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(v68, v70);
          v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
          goto LABEL_28;
        }

        sub_21D107038(v68, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v63;
        goto LABEL_49;
      }

      v97 = v130;
      v75 = v130;
      sub_21DAF98D8(v66, v130, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D1055C4(v138, v60, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D107038(v75, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v60;
        goto LABEL_49;
      }

      sub_21DAF98D8(v60, v74, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v71 = _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(v75, v74);
      v98 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v99 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v100 = v74;
LABEL_31:
      sub_21D107038(v100, v98);
      v101 = v97;
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v68 = v132;
      sub_21DAF98D8(v66, v132, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1055C4(v138, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v108 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v109 = v68;
        goto LABEL_40;
      }

      v81 = v43;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v68 = v134;
        sub_21DAF98D8(v66, v134, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21D1055C4(v138, v40, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_21D107038(v68, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          goto LABEL_42;
        }

        v70 = v76;
        sub_21DAF98D8(v40, v76, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v77 = v68;
        v78 = v76;
LABEL_27:
        v71 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v77, v78);
        v72 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        goto LABEL_28;
      }

      v68 = v136;
      sub_21DAF98D8(v66, v136, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v69 = v37;
      sub_21D1055C4(v138, v37, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v110 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_46:
        v111 = v110;
        v112 = v68;
LABEL_48:
        sub_21D107038(v112, v111);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v69;
        goto LABEL_49;
      }

      v81 = v37;
      v70 = v120;
    }

    sub_21DAF98D8(v81, v70, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v77 = v68;
    v78 = v70;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v68 = v127;
        sub_21DAF98D8(v66, v127, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
        v69 = v123;
        sub_21D1055C4(v138, v123, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v70 = v117;
          sub_21DAF98D8(v69, v117, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
          v71 = _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(v68, v70);
          v72 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
LABEL_28:
          v99 = v72;
          sub_21D107038(v70, v72);
          v101 = v68;
LABEL_32:
          sub_21D107038(v101, v99);
          return v71 & 1;
        }

        v110 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
        goto LABEL_46;
      }

      v102 = v129;
      sub_21DAF98D8(v66, v129, type metadata accessor for TTRTemplatePublicLinkData);
      v69 = v125;
      sub_21D1055C4(v138, v125, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v111 = type metadata accessor for TTRTemplatePublicLinkData;
        v112 = v102;
        goto LABEL_48;
      }

      v103 = v118;
      sub_21DAF98D8(v69, v118, type metadata accessor for TTRTemplatePublicLinkData);
      if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(v102, v103))
      {
        v104 = v115;
        v105 = *(v102 + *(v115 + 20));
        sub_21D107038(v102, type metadata accessor for TTRTemplatePublicLinkData);
        v106 = *(v103 + *(v104 + 20));
        sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
        v71 = v105 == v106;
        return v71 & 1;
      }

      sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
      v80 = v102;
      v79 = type metadata accessor for TTRTemplatePublicLinkData;
LABEL_49:
      sub_21D107038(v80, v79);
      v71 = 0;
      return v71 & 1;
    }

    v82 = *v66;
    v83 = v66[8];
    v84 = v66[9];
    v85 = v66[10];
    v86 = *(v66 + 2);
    sub_21D1055C4(v138, v57, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v87 = *v57;
      v88 = v57[8];
      v89 = v57[9];
      v90 = v57[10];
      v91 = *(v57 + 2);
      v143 = v91;
      v144 = v82;
      v145 = v83;
      v146 = v84;
      v147 = v85;
      v148 = v86;
      v139 = v87;
      v140 = v88;
      v141 = v89;
      v142 = v90;
      v71 = _s15RemindersUICore25TTRRemindersListViewModelC09CompletedA5StateV2eeoiySbAE_AEtFZ_0(&v144, &v139);

      return v71 & 1;
    }

LABEL_42:
    v79 = type metadata accessor for TTRRemindersListViewModel.Item;
    v80 = v57;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v92 = v128;
    sub_21DAF98D8(v66, v128, type metadata accessor for TTRRemindersListTip);
    v43 = v126;
    sub_21D1055C4(v138, v126, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v93 = v43;
      v94 = v119;
      sub_21DAF98D8(v93, v119, type metadata accessor for TTRRemindersListTip);
      v95 = *(v121 + 48);
      v96 = v92;
      v97 = v122;
      sub_21DAF98D8(v96, v122, type metadata accessor for TTRRemindersListTip);
      sub_21DAF98D8(v94, &v97[v95], type metadata accessor for TTRRemindersListTip);
      v71 = *v97 ^ v97[v95] ^ 1;
      v98 = type metadata accessor for TTRRemindersListTips;
      v99 = type metadata accessor for TTRRemindersListTips;
      v100 = &v97[v95];
      goto LABEL_31;
    }

    v108 = type metadata accessor for TTRRemindersListTip;
    v109 = v92;
LABEL_40:
    sub_21D107038(v109, v108);
    v79 = type metadata accessor for TTRRemindersListViewModel.Item;
    v80 = v43;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_21D1055C4(v138, v50, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = swift_getEnumCaseMultiPayload() == 9;
    sub_21D107038(v50, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    v107 = v124;
    sub_21D1055C4(v138, v124, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = swift_getEnumCaseMultiPayload() == 10;
    sub_21D107038(v107, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  return v71 & 1;
}

uint64_t sub_21DB130E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s15RemindersUICore28TTRReminderSuggestedLocationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v5 = a1[5];
  v4 = a1[6];
  v6 = a2[2];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v14 = v4;
    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v10 = v6;
    v11 = v2;
    v12 = sub_21DBFB63C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = v4;
    if (v6)
    {
      return 0;
    }
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C() & 1) != 0 && (v3 == v7 && v5 == v8 || (sub_21DBFC64C()))
  {
    return v14 == v9;
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC15ImageAttachmentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v15 = a1;
  v16 = a2;
  v31 = v14;
  v32 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_21D0D3954(v15 + v17, v13, &qword_27CE5EA20, &qword_21DC0D4A0);
  v19 = v16 + v17;
  v20 = v16;
  sub_21D0D3954(v19, &v13[v18], &qword_27CE5EA20, &qword_21DC0D4A0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5EA20, &qword_21DC0D4A0);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_21DB15960(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v23 = sub_21DBFA10C();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      v20 = v16;
      sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21D0CF7E0(v13, &unk_27CE5F2A0, &unk_21DC09120);
    return 0;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_11:
  v25 = *(v31 + 24);
  v26 = *(v32 + v25);
  v27 = *(v20 + v25);
  if (v26)
  {
    if (v27)
    {
      sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
      v28 = v27;
      v29 = v26;
      v30 = sub_21DBFB63C();

      if (v30)
      {
        return 1;
      }
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC11DisplayDateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66960, &qword_21DC3F1F8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v15)
  {
    goto LABEL_25;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v17)
  {
    goto LABEL_25;
  }

  v18 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((sub_21DBF55EC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = v18;
  v19 = *(v18 + 28);
  v20 = *(v11 + 48);
  sub_21D0D3954(a1 + v19, v13, &unk_27CE60DB0, qword_21DC0BF70);
  sub_21D0D3954(a2 + v19, &v13[v20], &unk_27CE60DB0, qword_21DC0BF70);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &unk_27CE60DB0, qword_21DC0BF70);
    if (v21(&v13[v20], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_21;
    }

    (*(v5 + 32))(v7, &v13[v20], v4);
    sub_21DB15960(&qword_27CE64FE0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
    v23 = sub_21DBFA10C();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_21D0CF7E0(v13, &unk_27CE60DB0, qword_21DC0BF70);
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_25:
    v22 = 0;
    return v22 & 1;
  }

  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v13, &unk_27CE60DB0, qword_21DC0BF70);
LABEL_23:
    if (*(a1 + v27[8]) == *(a2 + v27[8]) && *(a1 + v27[9]) == *(a2 + v27[9]))
    {
      v22 = *(a1 + v27[10]) ^ *(a2 + v27[10]) ^ 1;
      return v22 & 1;
    }

    goto LABEL_25;
  }

LABEL_21:
  sub_21D0CF7E0(v13, &qword_27CE66960, &qword_21DC3F1F8);
  v22 = 0;
  return v22 & 1;
}

void sub_21DB13AA8(id a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v187) = a3;
  v195 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v10 - 8);
  v186 = &v179 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v12 - 8);
  v189 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v190 = &v179 - v15;
  v193 = sub_21DBF5A2C();
  v198 = *(v193 - 1);
  MEMORY[0x28223BE20](v193);
  v192 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v179 - v18;
  v20 = sub_21DBF509C();
  v191 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v194 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v196 = &v179 - v23;
  v24 = sub_21DBF563C();
  v204 = *(v24 - 8);
  v205 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v179 - v28;
  v200 = sub_21DBF5C4C();
  v197 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v31 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v179 - v33;
  MEMORY[0x28223BE20](v35);
  v199 = &v179 - v36;
  v37 = a5;
  if (!a5)
  {
    v37 = a4;
  }

  v201 = a4;
  v202 = v37;
  v38 = a5;
  v39 = [a1 isAllDay];
  v203 = a6;
  if (v39)
  {
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_27CE667F0);
    v41 = sub_21DBF84AC();
    v42 = sub_21DBFAEBC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v205;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21D0C9000, v41, v42, "TTRRemindersListViewModel: Should not display time zone for an all-day reminder", v45, 2u);
      MEMORY[0x223D46520](v45, -1, -1);
    }

LABEL_16:

    v59 = [a1 date];
    sub_21DBF55FC();

    v60 = sub_21DBF55BC();
    v61 = *(v204 + 8);
    v61(v29, v44);
    v62 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v64;

    v66 = [a1 &selRef_blueColor];
    sub_21DBF55FC();

    v67 = sub_21DBF55BC();
    v61(v29, v44);
    v68 = v202;
    v69 = [v202 stringFromDate_];

    v70 = sub_21DBFA16C();
    v72 = v71;

    v73 = 0;
    v74 = v203;
    goto LABEL_17;
  }

  v46 = [a1 timeZone];
  if (!v46)
  {
LABEL_12:
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v55 = sub_21DBF84BC();
    __swift_project_value_buffer(v55, qword_27CE667F0);
    v41 = sub_21DBF84AC();
    v56 = sub_21DBFAEBC();
    v57 = os_log_type_enabled(v41, v56);
    v44 = v205;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21D0C9000, v41, v56, "TTRRemindersListViewModel: Should not display time zone string for a reminder in the current time zone", v58, 2u);
      MEMORY[0x223D46520](v58, -1, -1);
    }

    goto LABEL_16;
  }

  v181 = v31;
  v182 = v26;
  v188 = a1;
  v184 = v20;
  v47 = v199;
  v48 = v46;
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v49 = sub_21DBF5BFC();
  v50 = v205;
  v51 = v204 + 8;
  v52 = *(v204 + 8);
  v52(v29, v205);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v53 = v195;
  v54 = sub_21DBF5BFC();
  v52(v29, v50);
  if (v49 == v54)
  {
    (v197)[1](v47, v200);
    a1 = v188;
    goto LABEL_12;
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v75 = v188;
  v76 = [v188 date];
  sub_21DBF55FC();

  sub_21DBF58BC();
  v52(v29, v50);
  v77 = *(v198 + 8);
  v198 += 8;
  v77(v19, v193);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v78 = [v75 timeZone];
  v185 = v51;
  v79 = v52;
  if (v78)
  {
    v80 = v78;
    sub_21DBF5C2C();

    v81 = v200;
    v82 = v189;
    v83 = v197;
  }

  else
  {
    v83 = v197;
    v81 = v200;
    (v197[2])(v34, v53, v200);
    v82 = v189;
  }

  v84 = v188;
  v85 = [v188 date];
  sub_21DBF55FC();

  v86 = v192;
  sub_21DBF58BC();
  v79(v29, v205);
  v87 = v83[1];
  v189 = (v83 + 1);
  v183 = v87;
  v87(v34, v81);
  v77(v86, v193);
  v88 = [v84 timeZone];
  v89 = v81;
  if (v88)
  {
    v90 = v88;
    sub_21DBF5C2C();

    v83 = v197;
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v74 = v203;
  v92 = v190;
  (v83[7])(v82, v91, 1, v81);
  sub_21D0D523C(v82, v92, &unk_27CE60DB0, qword_21DC0BF70);
  if ((v83[6])(v92, 1, v81) == 1)
  {
    sub_21D0CF7E0(v92, &unk_27CE60DB0, qword_21DC0BF70);
    v93 = v205;
LABEL_33:
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v113 = sub_21DBF84BC();
    __swift_project_value_buffer(v113, qword_27CE667F0);
    v114 = sub_21DBF84AC();
    v115 = sub_21DBFAEBC();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_21D0C9000, v114, v115, "TTRRemindersListViewModel: Unable to get the current time zone abbreviation for displayDateWithTimeZoneString", v116, 2u);
      MEMORY[0x223D46520](v116, -1, -1);
    }

    v117 = v188;
    v118 = [v188 date];
    sub_21DBF55FC();

    v119 = sub_21DBF55BC();
    v79(v29, v93);
    v120 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v121;

    v122 = [v117 &selRef_blueColor];
    sub_21DBF55FC();

    v110 = sub_21DBF55BC();
    v79(v29, v93);
    v111 = v202;
    v112 = [v202 stringFromDate_];
LABEL_38:
    v123 = v112;

    v70 = sub_21DBFA16C();
    v72 = v124;

    v125 = *(v191 + 8);
    v126 = v184;
    v125(v194, v184);
    v125(v196, v126);
    v183(v199, v200);
    v73 = 0;
    goto LABEL_17;
  }

  v94 = [v188 date];
  sub_21DBF55FC();

  v95 = sub_21DBF5BDC();
  v97 = v96;
  v93 = v205;
  v79(v29, v205);
  v183(v92, v89);
  if (!v97)
  {
    goto LABEL_33;
  }

  v98 = v186;
  sub_21DBF4F4C();
  v99 = v204;
  if ((*(v204 + 48))(v98, 1, v93) == 1)
  {

    sub_21D0CF7E0(v98, &qword_27CE58D68, &unk_21DC0C060);
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v100 = sub_21DBF84BC();
    __swift_project_value_buffer(v100, qword_27CE667F0);
    v101 = sub_21DBF84AC();
    v102 = sub_21DBFAEBC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_21D0C9000, v101, v102, "TTRRemindersListViewModel: Unable get the date in the current timezone for displayDateWithTimeZoneString", v103, 2u);
      MEMORY[0x223D46520](v103, -1, -1);
    }

    v104 = v188;
    v105 = [v188 date];
    sub_21DBF55FC();

    v106 = sub_21DBF55BC();
    v79(v29, v93);
    v107 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v108;

    v109 = [v104 &selRef_blueColor];
    sub_21DBF55FC();

    v110 = sub_21DBF55BC();
    v79(v29, v93);
    v111 = v202;
    v112 = [v202 stringFromDate_];
    goto LABEL_38;
  }

  (*(v99 + 32))(v182, v98, v93);
  v127 = [v188 isAllDay];
  if (v187)
  {
    if (v127)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v128 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v128 = &qword_280D14238;
    }
  }

  else if (v127)
  {
    if (qword_27CE57138 != -1)
    {
      swift_once();
    }

    v128 = &qword_27CE66810;
  }

  else
  {
    if (qword_280D194D8 != -1)
    {
      swift_once();
    }

    v128 = &qword_280D194E0;
  }

  v129 = *v128;
  v130 = [v188 isAllDay];
  v204 = v97;
  v180 = v79;
  v198 = v95;
  if (v187)
  {
    if (v130)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v131 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v131 = &qword_280D14238;
    }
  }

  else if (v130)
  {
    if (qword_27CE57158 != -1)
    {
      swift_once();
    }

    v131 = &qword_27CE66828;
  }

  else
  {
    if (qword_280D14220 != -1)
    {
      swift_once();
    }

    v131 = &qword_280D14228;
  }

  v132 = *v131;
  v133 = sub_21DBF5C0C();
  [v129 setTimeZone_];

  v134 = sub_21DBF55BC();
  v197 = v129;
  v135 = [v129 stringFromDate_];

  v136 = sub_21DBFA16C();
  v187 = v137;

  v138 = sub_21DBF55BC();
  v195 = v132;
  v139 = [v132 stringFromDate_];

  v192 = sub_21DBFA16C();
  v190 = v140;

  v141 = v188;
  if (qword_280D14230 != -1)
  {
    swift_once();
  }

  v142 = qword_280D14238;
  v143 = [v141 timeZone];
  v144 = v200;
  if (v143)
  {
    v145 = v181;
    v146 = v143;
    sub_21DBF5C2C();

    v147 = sub_21DBF5C0C();
    v183(v145, v144);
  }

  else
  {
    v147 = 0;
  }

  [v142 setTimeZone_];

  v148 = [v141 date];
  sub_21DBF55FC();

  v149 = sub_21DBF55BC();
  v180(v29, v205);
  v150 = [v142 stringFromDate_];

  v201 = sub_21DBFA16C();
  v152 = v151;

  v153 = sub_21DBF4F0C();
  v154 = MEMORY[0x277D837D0];
  v193 = v142;
  if (v155 & 1) != 0 || (v156 = v153, v157 = sub_21DBF4F0C(), (v158) || v156 == v157)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_21DC08D10;
    *(v159 + 56) = v154;
    v160 = sub_21D17A884();
    v161 = v187;
    *(v159 + 32) = v136;
    *(v159 + 40) = v161;
    *(v159 + 96) = v154;
    *(v159 + 104) = v160;
    v162 = v201;
    *(v159 + 64) = v160;
    *(v159 + 72) = v162;
    *(v159 + 80) = v152;
    *(v159 + 136) = v154;
    *(v159 + 144) = v160;
    v163 = v204;
    *(v159 + 112) = v198;
    *(v159 + 120) = v163;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v63 = sub_21DBFA17C();
    v65 = v164;

    v73 = 0;
    goto LABEL_80;
  }

  if (v156 < v157)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_88:
    swift_once();
  }

LABEL_87:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_21DC08D10;
  *(v173 + 56) = v154;
  v174 = sub_21D17A884();
  v175 = v187;
  *(v173 + 32) = v136;
  *(v173 + 40) = v175;
  *(v173 + 96) = v154;
  *(v173 + 104) = v174;
  v176 = v201;
  *(v173 + 64) = v174;
  *(v173 + 72) = v176;
  *(v173 + 80) = v152;
  *(v173 + 136) = v154;
  *(v173 + 144) = v174;
  v177 = v204;
  *(v173 + 112) = v198;
  *(v173 + 120) = v177;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v63 = sub_21DBFA17C();
  v65 = v178;

  v73 = 1;
LABEL_80:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_21DC08D10;
  *(v165 + 56) = v154;
  v166 = sub_21D17A884();
  v167 = v190;
  *(v165 + 32) = v192;
  *(v165 + 40) = v167;
  *(v165 + 96) = v154;
  *(v165 + 104) = v166;
  v168 = v201;
  *(v165 + 64) = v166;
  *(v165 + 72) = v168;
  *(v165 + 80) = v152;
  *(v165 + 136) = v154;
  *(v165 + 144) = v166;
  v169 = v204;
  *(v165 + 112) = v198;
  *(v165 + 120) = v169;
  v70 = sub_21DBFA17C();
  v72 = v170;

  v180(v182, v205);
  v171 = *(v191 + 8);
  v172 = v184;
  v171(v194, v184);
  v171(v196, v172);
  v183(v199, v200);
LABEL_17:
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v70;
  *(v74 + 24) = v72;
  *(v74 + 32) = v73;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV16urgentIconString4fromSSSgAA19TTRReminderProtocol_p_tFZ_0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if (((*(v2 + 168))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBFA17C();

  sub_21D176F0C();
  sub_21DBFBB8C();
  v3 = sub_21DBFBB5C();

  return v3;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(unint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  sub_21D0D3954(a2, v10, &qword_27CE58D68, &unk_21DC0C060);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  if (a1 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (v16 >= 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= 2)
    {
LABEL_7:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v17 = sub_21DBF516C();
      goto LABEL_20;
    }
  }

  if (v16 != 1)
  {
    goto LABEL_19;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223D44740](0, a1);
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a1 + 32);
LABEL_17:
    v19 = v18;
    v20 = objc_opt_self();
    v21 = sub_21DBF55BC();
    v22 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v23 = sub_21DBF5C0C();
    (*(v5 + 8))(v7, v4);
    v24 = [v20 shortNaturalLanguageDescriptionForRecurrenceRule:v19 date:v21 timeZone:v23 lowercase:0];

    v17 = sub_21DBFA16C();
LABEL_20:
    (*(v12 + 8))(v14, v11);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DB15960(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_21DB159C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21D8DA944(a1, a2);
  }

  return result;
}

id sub_21DB159EC(id result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = result;
    v6 = a2;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return v7;
  }

  return result;
}

id sub_21DB15A4C(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    sub_21DBF8E0C();

    return v3;
  }

  return result;
}

double sub_21DB15A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return sub_21DB15AA0(a1, a2, a3, a4);
  }

  return result;
}

double sub_21DB15AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

double sub_21DB15AE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_21D0FB960(a1, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

void sub_21DB15B5C(uint64_t a1, void *a2)
{
  if (a2 != 3)
  {
    sub_21DB15B70(a2);
  }
}

id sub_21DB15B70(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC4ItemO14itemTypesEqualySbAE_AEtFZ_0(char *a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v11);
  v45 = &v42 - v12;
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v43 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v42 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v42 - v33;
  sub_21D1055C4(v46, &v42 - v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v46 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_21D1055C4(v47, v28, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 1;
        v37 = v28;
      }

      else
      {
        sub_21D1055C4(v47, v31, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 0;
        v37 = v31;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21D1055C4(v47, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 2;
      v37 = v10;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21D1055C4(v47, v7, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 3;
      v37 = v7;
    }

    else
    {
      sub_21D1055C4(v47, v4, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 4;
      v37 = v4;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v39 = v44;
      sub_21D1055C4(v47, v44, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 8;
      v37 = v39;
LABEL_21:
      sub_21D107038(v37, type metadata accessor for TTRRemindersListViewModel.Item);
      v40 = v46;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v25 = v43;
      sub_21D1055C4(v47, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      v38 = swift_getEnumCaseMultiPayload() == 9;
    }

    else
    {
      v25 = v45;
      sub_21D1055C4(v47, v45, type metadata accessor for TTRRemindersListViewModel.Item);
      v38 = swift_getEnumCaseMultiPayload() == 10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_21D1055C4(v47, v22, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 6;
        v37 = v22;
      }

      else
      {
        sub_21D1055C4(v47, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 7;
        v37 = v19;
      }

      goto LABEL_21;
    }

    sub_21D107038(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D1055C4(v47, v25, type metadata accessor for TTRRemindersListViewModel.Item);
    v38 = swift_getEnumCaseMultiPayload() == 5;
  }

  v36 = v38;
  v40 = v25;
LABEL_27:
  sub_21D107038(v40, type metadata accessor for TTRRemindersListViewModel.Item);
  return v36;
}

unint64_t sub_21DB1616C()
{
  result = qword_280D14118;
  if (!qword_280D14118)
  {
    result = swift_getWitnessTable(byte_21DC3F164, &type metadata for TTRRemindersListViewModel.SectionID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14118);
  }

  return result;
}

unint64_t sub_21DB161C0()
{
  result = qword_280D14998;
  if (!qword_280D14998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ReminderID.CodingKeys, &type metadata for TTRRemindersListViewModel.ReminderID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14998);
  }

  return result;
}

unint64_t sub_21DB16214()
{
  result = qword_280D14290;
  if (!qword_280D14290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID.CodingKeys, &type metadata for TTRRemindersListViewModel.ItemID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14290);
  }

  return result;
}

unint64_t sub_21DB1626C()
{
  result = qword_27CE66898;
  if (!qword_27CE66898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle, &type metadata for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle, v0, v1);
    atomic_store(result, &qword_27CE66898);
  }

  return result;
}

unint64_t sub_21DB162C4()
{
  result = qword_27CE668A0;
  if (!qword_27CE668A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SectionID.NamedID, &type metadata for TTRRemindersListViewModel.SectionID.NamedID, v0, v1);
    atomic_store(result, &qword_27CE668A0);
  }

  return result;
}

unint64_t sub_21DB1631C()
{
  result = qword_27CE668A8;
  if (!qword_27CE668A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SectionID.EraAndYear, &type metadata for TTRRemindersListViewModel.SectionID.EraAndYear, v0, v1);
    atomic_store(result, &qword_27CE668A8);
  }

  return result;
}

unint64_t sub_21DB163BC()
{
  result = qword_27CE668B0;
  if (!qword_27CE668B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor, &type metadata for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor, v0, v1);
    atomic_store(result, &qword_27CE668B0);
  }

  return result;
}

unint64_t sub_21DB16414()
{
  result = qword_27CE668B8;
  if (!qword_27CE668B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize, &type metadata for TTRRemindersListViewModel.SectionHeaderTitle.TextSize, v0, v1);
    atomic_store(result, &qword_27CE668B8);
  }

  return result;
}

unint64_t sub_21DB1646C()
{
  result = qword_27CE668C0;
  if (!qword_27CE668C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.AssignmentData.VisibleElements, &type metadata for TTRRemindersListViewModel.AssignmentData.VisibleElements, v0, v1);
    atomic_store(result, &qword_27CE668C0);
  }

  return result;
}

unint64_t sub_21DB164C4()
{
  result = qword_27CE668C8;
  if (!qword_27CE668C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.AssignmentData.VisibleElements, &type metadata for TTRRemindersListViewModel.AssignmentData.VisibleElements, v0, v1);
    atomic_store(result, &qword_27CE668C8);
  }

  return result;
}

unint64_t sub_21DB1651C()
{
  result = qword_280D14830;
  if (!qword_280D14830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.AssignmentData.VisibleElements, &type metadata for TTRRemindersListViewModel.AssignmentData.VisibleElements, v0, v1);
    atomic_store(result, &qword_280D14830);
  }

  return result;
}

unint64_t sub_21DB16574()
{
  result = qword_280D14828;
  if (!qword_280D14828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.AssignmentData.VisibleElements, &type metadata for TTRRemindersListViewModel.AssignmentData.VisibleElements, v0, v1);
    atomic_store(result, &qword_280D14828);
  }

  return result;
}

unint64_t sub_21DB16614()
{
  result = qword_27CE668D0;
  if (!qword_27CE668D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions, &type metadata for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions, v0, v1);
    atomic_store(result, &qword_27CE668D0);
  }

  return result;
}

unint64_t sub_21DB166B0()
{
  result = qword_27CE668E8;
  if (!qword_27CE668E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID.NamedID, &type metadata for TTRRemindersListViewModel.ItemID.NamedID, v0, v1);
    atomic_store(result, &qword_27CE668E8);
  }

  return result;
}

unint64_t sub_21DB16750()
{
  result = qword_27CE668F0;
  if (!qword_27CE668F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat, &type metadata for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat, v0, v1);
    atomic_store(result, &qword_27CE668F0);
  }

  return result;
}

unint64_t sub_21DB167A8()
{
  result = qword_27CE668F8;
  if (!qword_27CE668F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.ImageType, &type metadata for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.ImageType, v0, v1);
    atomic_store(result, &qword_27CE668F8);
  }

  return result;
}

unint64_t sub_21DB16800()
{
  result = qword_27CE66900;
  if (!qword_27CE66900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType, &type metadata for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType, v0, v1);
    atomic_store(result, &qword_27CE66900);
  }

  return result;
}

unint64_t sub_21DB16858()
{
  result = qword_27CE66908;
  if (!qword_27CE66908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SubtaskCountDisplayStyle, &type metadata for TTRRemindersListViewModel.SubtaskCountDisplayStyle, v0, v1);
    atomic_store(result, &qword_27CE66908);
  }

  return result;
}

unint64_t sub_21DB168B0()
{
  result = qword_27CE66910;
  if (!qword_27CE66910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SupportsEditableSections, &type metadata for TTRRemindersListViewModel.SupportsEditableSections, v0, v1);
    atomic_store(result, &qword_27CE66910);
  }

  return result;
}

unint64_t sub_21DB16908()
{
  result = qword_27CE66918;
  if (!qword_27CE66918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.LeadingActionConfiguration, &type metadata for TTRRemindersListViewModel.LeadingActionConfiguration, v0, v1);
    atomic_store(result, &qword_27CE66918);
  }

  return result;
}

unint64_t sub_21DB169F0()
{
  result = qword_27CE66920;
  if (!qword_27CE66920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ReminderID.CodingKeys, &type metadata for TTRRemindersListViewModel.ReminderID.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE66920);
  }

  return result;
}

unint64_t sub_21DB16A48()
{
  result = qword_280D14988;
  if (!qword_280D14988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ReminderID.CodingKeys, &type metadata for TTRRemindersListViewModel.ReminderID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14988);
  }

  return result;
}

unint64_t sub_21DB16AA0()
{
  result = qword_280D14990;
  if (!qword_280D14990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ReminderID.CodingKeys, &type metadata for TTRRemindersListViewModel.ReminderID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14990);
  }

  return result;
}

unint64_t sub_21DB16AF8()
{
  result = qword_27CE66928;
  if (!qword_27CE66928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID.CodingKeys, &type metadata for TTRRemindersListViewModel.ItemID.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE66928);
  }

  return result;
}

unint64_t sub_21DB16B50()
{
  result = qword_280D14280;
  if (!qword_280D14280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID.CodingKeys, &type metadata for TTRRemindersListViewModel.ItemID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14280);
  }

  return result;
}

unint64_t sub_21DB16BA8()
{
  result = qword_280D14288;
  if (!qword_280D14288)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.ItemID.CodingKeys, &type metadata for TTRRemindersListViewModel.ItemID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14288);
  }

  return result;
}

double destroy for TTRReminderSuggestedLocation(uint64_t a1)
{

  return result;
}

void *initializeWithCopy for TTRReminderSuggestedLocation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  a1[2] = v4;
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  a1[6] = a2[6];
  sub_21DBF8E0C();
  v7 = v4;
  v8 = v5;
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderSuggestedLocation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;
  v9 = v7;

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for TTRReminderSuggestedLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void destroy for TTRRemindersListSectionMenuCapabilities(uint64_t a1)
{
  if (*(a1 + 8) != 255)
  {
  }
}

uint64_t sub_21DB16DF0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    *result = *a2;
    *(result + 8) = v3 & 1;
    v5 = result;
    v6 = v4;
    result = v5;
  }

  *(result + 9) = *(a2 + 9);
  return result;
}

uint64_t assignWithCopy for TTRRemindersListSectionMenuCapabilities(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v11 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v11;
    }

    else
    {
      v8 = *a2;
      *a1 = *a2;
      *(a1 + 8) = v4 & 1;
      v9 = v8;
    }
  }

  else if (v4 == 255)
  {
    sub_21DB16F10(a1);
    v10 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v10;
  }

  else
  {
    v5 = *a2;
    v6 = *a1;
    *a1 = *a2;
    *(a1 + 8) = v4 & 1;
    v7 = v5;
  }

  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListSectionMenuCapabilities(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 == 255)
    {
      v6 = result;
      sub_21DB16F10(result);
      result = v6;
      *v6 = *a2;
      *(v6 + 8) = *(a2 + 8);
    }

    else
    {
      v4 = *result;
      *result = *a2;
      *(result + 8) = v3 & 1;
      v5 = result;

      result = v5;
    }
  }

  *(result + 9) = *(a2 + 9);
  return result;
}

uint64_t sub_21DB17008(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21DB17028(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21DB17038(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21DB17008(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListSubtaskDisplayStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21DB17008(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DB17028(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListSubtaskDisplayStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21DB17028(v4, v5, v6);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.SectionID(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_20;
    }

LABEL_17:
    v10 = *a2;
    *a1 = *a2;
    v11 = v10;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_11:
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_11;
  }

LABEL_20:
  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void destroy for TTRRemindersListViewModel.SectionID(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_9;
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
LABEL_9:
      v4 = sub_21DBF563C();
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  v6 = *a1;
}

void **initializeWithCopy for TTRRemindersListViewModel.SectionID(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_9:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **assignWithCopy for TTRRemindersListViewModel.SectionID(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_19;
    }

LABEL_16:
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_10:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_10;
  }

LABEL_19:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for TTRRemindersListViewModel.SectionID(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_8;
    }
  }

  else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
LABEL_8:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithTake for TTRRemindersListViewModel.SectionID(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
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
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.NamedID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.NamedID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.EraAndYear(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.EraAndYear(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_18;
    }

LABEL_14:
    v11 = *v3;
    *a1 = *v3;
    v12 = v11;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_11;
      }

LABEL_18:
      memcpy(a1, v3, *(*(v7 - 8) + 64));
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_11:
  v10 = sub_21DBF563C();
  (*(*(v10 - 8) + 16))(a1, v3, v10);
  swift_storeEnumTagMultiPayload();
LABEL_19:
  v13 = v6[5];
  v14 = a1 + v13;
  v15 = v3 + v13;
  v16 = *(v3 + v13 + 8);
  if (v16)
  {
    v41 = v6;
    v42 = v3;
    *v14 = *v15;
    *(v14 + 1) = v16;
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 5);
    v21 = *(v15 + 6);
    v22 = *(v15 + 7);
    v23 = v15[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v17, v18, v19, v20, v21, v22, v23);
    *(v14 + 2) = v17;
    *(v14 + 3) = v18;
    *(v14 + 4) = v19;
    *(v14 + 5) = v20;
    *(v14 + 6) = v21;
    *(v14 + 7) = v22;
    v14[64] = v23;
    *(v14 + 65) = *(v15 + 65);
    v24 = v15[120];
    if (v24 == 255)
    {
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 104) = *(v15 + 104);
      v14[120] = v15[120];
    }

    else
    {
      v25 = *(v15 + 9);
      v26 = *(v15 + 10);
      v27 = *(v15 + 11);
      v28 = *(v15 + 12);
      v29 = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = v24 & 1;
      sub_21D0FB960(v25, v26, v27, v28, v29, v30, v24 & 1);
      *(v14 + 9) = v25;
      *(v14 + 10) = v26;
      *(v14 + 11) = v27;
      *(v14 + 12) = v28;
      *(v14 + 13) = v29;
      *(v14 + 14) = v30;
      v14[120] = v31;
    }

    v14[121] = v15[121];
    v6 = v41;
    v3 = v42;
  }

  else
  {
    v32 = *(v15 + 5);
    *(v14 + 4) = *(v15 + 4);
    *(v14 + 5) = v32;
    *(v14 + 6) = *(v15 + 6);
    *(v14 + 106) = *(v15 + 106);
    v33 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v33;
    v34 = *(v15 + 3);
    *(v14 + 2) = *(v15 + 2);
    *(v14 + 3) = v34;
  }

  v35 = v6[7];
  *(a1 + v6[6]) = *(v3 + v6[6]);
  *(a1 + v35) = *(v3 + v35);
  v36 = v6[9];
  *(a1 + v6[8]) = *(v3 + v6[8]);
  *(a1 + v36) = *(v3 + v36);
  v37 = v6[11];
  *(a1 + v6[10]) = *(v3 + v6[10]);
  v38 = *(v3 + v37);
  *(a1 + v37) = v38;
  v39 = v38;
  return a1;
}

void destroy for TTRRemindersListViewModel.SectionHeader(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_9:
    v5 = sub_21DBF563C();
    (*(*(v5 - 8) + 8))(a1, v5);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

LABEL_13:
  v6 = a1 + *(a2 + 20);
  if (*(v6 + 1))
  {

    sub_21D179EF0(*(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 7), v6[64]);
    v7 = v6[120];
    if (v7 != 255)
    {
      sub_21D1078C0(*(v6 + 9), *(v6 + 10), *(v6 + 11), *(v6 + 12), *(v6 + 13), *(v6 + 14), v7 & 1);
    }
  }

  v8 = *(a1 + *(a2 + 44));
}

void **initializeWithCopy for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_9:
      v8 = sub_21DBF563C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_12:
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

LABEL_16:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_17:
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(a2 + v11 + 8);
  if (v14)
  {
    v39 = a3;
    v40 = a2;
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = *(v13 + 2);
    v16 = *(v13 + 3);
    v17 = *(v13 + 4);
    v18 = *(v13 + 5);
    v19 = *(v13 + 6);
    v20 = *(v13 + 7);
    v21 = v13[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v15, v16, v17, v18, v19, v20, v21);
    *(v12 + 2) = v15;
    *(v12 + 3) = v16;
    *(v12 + 4) = v17;
    *(v12 + 5) = v18;
    *(v12 + 6) = v19;
    *(v12 + 7) = v20;
    v12[64] = v21;
    *(v12 + 65) = *(v13 + 65);
    v22 = v13[120];
    if (v22 == 255)
    {
      *(v12 + 72) = *(v13 + 72);
      *(v12 + 88) = *(v13 + 88);
      *(v12 + 104) = *(v13 + 104);
      v12[120] = v13[120];
    }

    else
    {
      v23 = *(v13 + 9);
      v24 = *(v13 + 10);
      v25 = *(v13 + 11);
      v26 = *(v13 + 12);
      v27 = *(v13 + 13);
      v28 = *(v13 + 14);
      v29 = v22 & 1;
      sub_21D0FB960(v23, v24, v25, v26, v27, v28, v22 & 1);
      *(v12 + 9) = v23;
      *(v12 + 10) = v24;
      *(v12 + 11) = v25;
      *(v12 + 12) = v26;
      *(v12 + 13) = v27;
      *(v12 + 14) = v28;
      v12[120] = v29;
    }

    v12[121] = v13[121];
    a3 = v39;
    a2 = v40;
  }

  else
  {
    v30 = *(v13 + 5);
    *(v12 + 4) = *(v13 + 4);
    *(v12 + 5) = v30;
    *(v12 + 6) = *(v13 + 6);
    *(v12 + 106) = *(v13 + 106);
    v31 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v31;
    v32 = *(v13 + 3);
    *(v12 + 2) = *(v13 + 2);
    *(v12 + 3) = v32;
  }

  v33 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v33) = *(a2 + v33);
  v34 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v34) = *(a2 + v34);
  v35 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v36 = *(a2 + v35);
  *(a1 + v35) = v36;
  v37 = v36;
  return a1;
}

void **assignWithCopy for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_10:
        v8 = sub_21DBF563C();
        (*(*(v8 - 8) + 16))(a1, v4, v8);
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }

LABEL_13:
      v9 = *v4;
      *a1 = *v4;
      v10 = v9;
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
      goto LABEL_10;
    }

LABEL_17:
    memcpy(a1, v4, *(*(v6 - 8) + 64));
  }

LABEL_18:
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = v4 + v11;
  v14 = *(a1 + v11 + 8);
  v15 = *(v4 + v11 + 8);
  if (v14)
  {
    if (v15)
    {
      v82 = a3;
      v83 = v4;
      *v12 = *v13;
      *(v12 + 1) = *(v13 + 1);
      sub_21DBF8E0C();

      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      v18 = *(v13 + 4);
      v19 = *(v13 + 5);
      v20 = *(v13 + 6);
      v21 = *(v13 + 7);
      v22 = v13[64];
      sub_21D2A7DB4(v16, v17, v18, v19, v20, v21, v22);
      v23 = *(v12 + 2);
      v24 = *(v12 + 3);
      v25 = *(v12 + 4);
      v26 = *(v12 + 5);
      v27 = *(v12 + 6);
      v28 = *(v12 + 7);
      *(v12 + 2) = v16;
      *(v12 + 3) = v17;
      *(v12 + 4) = v18;
      *(v12 + 5) = v19;
      *(v12 + 6) = v20;
      *(v12 + 7) = v21;
      v29 = v12[64];
      v12[64] = v22;
      sub_21D179EF0(v23, v24, v25, v26, v27, v28, v29);
      v12[65] = v13[65];
      v12[66] = v13[66];
      v12[67] = v13[67];
      v12[68] = v13[68];
      v30 = v13[120];
      if (v12[120] != 255)
      {
        if (v30 == 255)
        {
          sub_21D2E979C((v12 + 72));
          v74 = *(v13 + 88);
          v75 = *(v13 + 104);
          v76 = v13[120];
          *(v12 + 72) = *(v13 + 72);
          v12[120] = v76;
          *(v12 + 104) = v75;
          *(v12 + 88) = v74;
        }

        else
        {
          v31 = *(v13 + 9);
          v32 = *(v13 + 10);
          v33 = *(v13 + 11);
          v34 = *(v13 + 12);
          v35 = *(v13 + 13);
          v36 = *(v13 + 14);
          v37 = v30 & 1;
          sub_21D0FB960(v31, v32, v33, v34, v35, v36, v30 & 1);
          v38 = *(v12 + 9);
          v39 = *(v12 + 10);
          v40 = *(v12 + 11);
          v41 = *(v12 + 12);
          v42 = *(v12 + 13);
          v43 = *(v12 + 14);
          v44 = v12[120];
          *(v12 + 9) = v31;
          *(v12 + 10) = v32;
          *(v12 + 11) = v33;
          *(v12 + 12) = v34;
          *(v12 + 13) = v35;
          *(v12 + 14) = v36;
          v12[120] = v37;
          sub_21D1078C0(v38, v39, v40, v41, v42, v43, v44);
        }

LABEL_31:
        a3 = v82;
        v4 = v83;
        v12[121] = v13[121];
        goto LABEL_32;
      }

LABEL_25:
      if (v30 == 255)
      {
        v65 = *(v13 + 72);
        v66 = *(v13 + 88);
        v67 = *(v13 + 104);
        v12[120] = v13[120];
        *(v12 + 104) = v67;
        *(v12 + 88) = v66;
        *(v12 + 72) = v65;
      }

      else
      {
        v52 = *(v13 + 9);
        v53 = *(v13 + 10);
        v54 = *(v13 + 11);
        v55 = *(v13 + 12);
        v56 = *(v13 + 13);
        v57 = *(v13 + 14);
        v58 = v30 & 1;
        sub_21D0FB960(v52, v53, v54, v55, v56, v57, v30 & 1);
        *(v12 + 9) = v52;
        *(v12 + 10) = v53;
        *(v12 + 11) = v54;
        *(v12 + 12) = v55;
        *(v12 + 13) = v56;
        *(v12 + 14) = v57;
        v12[120] = v58;
      }

      goto LABEL_31;
    }

    sub_21D179E9C(v12);
    v59 = *(v13 + 3);
    v61 = *v13;
    v60 = *(v13 + 1);
    *(v12 + 2) = *(v13 + 2);
    *(v12 + 3) = v59;
    *v12 = v61;
    *(v12 + 1) = v60;
    v63 = *(v13 + 5);
    v62 = *(v13 + 6);
    v64 = *(v13 + 4);
    *(v12 + 106) = *(v13 + 106);
    *(v12 + 5) = v63;
    *(v12 + 6) = v62;
    *(v12 + 4) = v64;
  }

  else
  {
    if (v15)
    {
      v82 = a3;
      v83 = v4;
      *v12 = *v13;
      *(v12 + 1) = *(v13 + 1);
      v45 = *(v13 + 2);
      v46 = *(v13 + 3);
      v47 = *(v13 + 4);
      v48 = *(v13 + 5);
      v49 = *(v13 + 6);
      v50 = *(v13 + 7);
      v51 = v13[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v45, v46, v47, v48, v49, v50, v51);
      *(v12 + 2) = v45;
      *(v12 + 3) = v46;
      *(v12 + 4) = v47;
      *(v12 + 5) = v48;
      *(v12 + 6) = v49;
      *(v12 + 7) = v50;
      v12[64] = v51;
      v12[65] = v13[65];
      v12[66] = v13[66];
      v12[67] = v13[67];
      v12[68] = v13[68];
      v30 = v13[120];
      goto LABEL_25;
    }

    v68 = *v13;
    v69 = *(v13 + 1);
    v70 = *(v13 + 3);
    *(v12 + 2) = *(v13 + 2);
    *(v12 + 3) = v70;
    *v12 = v68;
    *(v12 + 1) = v69;
    v71 = *(v13 + 4);
    v72 = *(v13 + 5);
    v73 = *(v13 + 6);
    *(v12 + 106) = *(v13 + 106);
    *(v12 + 5) = v72;
    *(v12 + 6) = v73;
    *(v12 + 4) = v71;
  }

LABEL_32:
  *(a1 + a3[6]) = *(v4 + a3[6]);
  *(a1 + a3[7]) = *(v4 + a3[7]);
  *(a1 + a3[8]) = *(v4 + a3[8]);
  *(a1 + a3[9]) = *(v4 + a3[9]);
  *(a1 + a3[10]) = *(v4 + a3[10]);
  v77 = a3[11];
  v78 = *(a1 + v77);
  v79 = *(v4 + v77);
  *(a1 + v77) = v79;
  v80 = v79;

  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.SectionHeader(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_5;
    }

LABEL_12:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = sub_21DBF563C();
  (*(*(v8 - 8) + 32))(a1, a2, v8);
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v9 = a3[5];
  v10 = a3[6];
  v11 = &a1[v9];
  v12 = &a2[v9];
  *(v11 + 106) = *(v12 + 106);
  v13 = *(v12 + 6);
  *(v11 + 5) = *(v12 + 5);
  *(v11 + 6) = v13;
  v14 = *(v12 + 4);
  v15 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v15;
  v16 = *(v12 + 3);
  *(v11 + 2) = *(v12 + 2);
  *(v11 + 3) = v16;
  *(v11 + 4) = v14;
  a1[v10] = a2[v10];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v17] = a2[v17];
  v18 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v18] = a2[v18];
  *&a1[a3[11]] = *&a2[a3[11]];
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.SectionHeader(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_6;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_6:
      v8 = sub_21DBF563C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (*&a1[v9 + 8])
  {
    v12 = *(v11 + 1);
    if (v12)
    {
      *v10 = *v11;
      *(v10 + 1) = v12;

      v13 = v11[64];
      v14 = *(v10 + 2);
      v15 = *(v10 + 3);
      v16 = *(v10 + 4);
      v17 = *(v10 + 5);
      v18 = *(v10 + 6);
      v19 = *(v10 + 7);
      v20 = *(v11 + 2);
      *(v10 + 1) = *(v11 + 1);
      *(v10 + 2) = v20;
      *(v10 + 3) = *(v11 + 3);
      v21 = v10[64];
      v10[64] = v13;
      sub_21D179EF0(v14, v15, v16, v17, v18, v19, v21);
      *(v10 + 65) = *(v11 + 65);
      v10[67] = v11[67];
      v10[68] = v11[68];
      v22 = v10[120];
      if (v22 != 255)
      {
        v23 = v11[120];
        if (v23 != 255)
        {
          v24 = *(v10 + 9);
          v25 = *(v10 + 10);
          v26 = *(v10 + 11);
          v27 = *(v10 + 12);
          v28 = *(v10 + 13);
          v29 = *(v10 + 14);
          *(v10 + 72) = *(v11 + 72);
          *(v10 + 88) = *(v11 + 88);
          *(v10 + 104) = *(v11 + 104);
          v10[120] = v23 & 1;
          sub_21D1078C0(v24, v25, v26, v27, v28, v29, v22 & 1);
LABEL_23:
          v10[121] = v11[121];
          goto LABEL_24;
        }

        sub_21D2E979C((v10 + 72));
      }

      *(v10 + 72) = *(v11 + 72);
      *(v10 + 88) = *(v11 + 88);
      *(v10 + 104) = *(v11 + 104);
      v10[120] = v11[120];
      goto LABEL_23;
    }

    sub_21D179E9C(v10);
  }

  v30 = *(v11 + 5);
  *(v10 + 4) = *(v11 + 4);
  *(v10 + 5) = v30;
  *(v10 + 6) = *(v11 + 6);
  *(v10 + 106) = *(v11 + 106);
  v31 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v31;
  v32 = *(v11 + 3);
  *(v10 + 2) = *(v11 + 2);
  *(v10 + 3) = v32;
LABEL_24:
  v33 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v33] = a2[v33];
  v34 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v34] = a2[v34];
  v35 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  v36 = *&a1[v35];
  *&a1[v35] = *&a2[v35];

  return a1;
}

uint64_t sub_21DB19738(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1)
{

  sub_21D179EF0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 120);
  if (v2 != 255)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
    v8 = *(a1 + 112);

    sub_21D1078C0(v3, v4, v5, v6, v7, v8, v2 & 1);
  }
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
{
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
  sub_21D2A7DB4(v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 65) = *(a2 + 65);
  v12 = *(a2 + 120);
  if (v12 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    v13 = *(a2 + 72);
    v14 = *(a2 + 80);
    v15 = *(a2 + 88);
    v16 = *(a2 + 96);
    v17 = *(a2 + 104);
    v18 = *(a2 + 112);
    v19 = v12 & 1;
    sub_21D0FB960(v13, v14, v15, v16, v17, v18, v12 & 1);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v19;
  }

  *(a1 + 121) = *(a2 + 121);
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  sub_21D2A7DB4(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  v17 = *(a1 + 64);
  *(a1 + 64) = v10;
  sub_21D179EF0(v11, v12, v13, v14, v15, v16, v17);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 67) = *(a2 + 67);
  *(a1 + 68) = *(a2 + 68);
  v18 = *(a2 + 120);
  if (*(a1 + 120) == 255)
  {
    if (v18 == 255)
    {
      v43 = *(a2 + 72);
      v44 = *(a2 + 88);
      v45 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v45;
      *(a1 + 88) = v44;
      *(a1 + 72) = v43;
    }

    else
    {
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v35 = *(a2 + 88);
      v36 = *(a2 + 96);
      v37 = *(a2 + 104);
      v38 = *(a2 + 112);
      v39 = v18 & 1;
      sub_21D0FB960(v33, v34, v35, v36, v37, v38, v18 & 1);
      *(a1 + 72) = v33;
      *(a1 + 80) = v34;
      *(a1 + 88) = v35;
      *(a1 + 96) = v36;
      *(a1 + 104) = v37;
      *(a1 + 112) = v38;
      *(a1 + 120) = v39;
    }
  }

  else if (v18 == 255)
  {
    sub_21D2E979C(a1 + 72);
    v40 = *(a2 + 88);
    v41 = *(a2 + 104);
    v42 = *(a2 + 120);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 120) = v42;
    *(a1 + 104) = v41;
    *(a1 + 88) = v40;
  }

  else
  {
    v19 = *(a2 + 72);
    v20 = *(a2 + 80);
    v21 = *(a2 + 88);
    v22 = *(a2 + 96);
    v23 = *(a2 + 104);
    v24 = *(a2 + 112);
    v25 = v18 & 1;
    sub_21D0FB960(v19, v20, v21, v22, v23, v24, v18 & 1);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    v30 = *(a1 + 104);
    v31 = *(a1 + 112);
    v32 = *(a1 + 120);
    *(a1 + 72) = v19;
    *(a1 + 80) = v20;
    *(a1 + 88) = v21;
    *(a1 + 96) = v22;
    *(a1 + 104) = v23;
    *(a1 + 112) = v24;
    *(a1 + 120) = v25;
    sub_21D1078C0(v26, v27, v28, v29, v30, v31, v32);
  }

  *(a1 + 121) = *(a2 + 121);
  return a1;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
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
  v12 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v12;
  *(a1 + 48) = *(a2 + 48);
  v13 = *(a1 + 64);
  *(a1 + 64) = v5;
  sub_21D179EF0(v6, v7, v8, v9, v10, v11, v13);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 67) = *(a2 + 67);
  *(a1 + 68) = *(a2 + 68);
  v14 = *(a1 + 120);
  if (v14 == 255)
  {
    goto LABEL_5;
  }

  v15 = *(a2 + 120);
  if (v15 == 255)
  {
    sub_21D2E979C(a1 + 72);
LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    goto LABEL_6;
  }

  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v15 & 1;
  sub_21D1078C0(v16, v17, v18, v19, v20, v21, v14 & 1);
LABEL_6:
  *(a1 + 121) = *(a2 + 121);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D2A7DB4(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D2A7DB4(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_21D179EF0(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_21D179EF0(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 49))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21DB19F78(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21DB19FA4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -64;
  }

  return result;
}

void destroy for TTRRemindersListViewModel.AssignmentData(uint64_t a1)
{
  if (*a1)
  {

    v2 = *(a1 + 112);
    if (v2)
    {

      v3 = *(a1 + 216);
    }
  }
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    *a1 = v4;
    *(a1 + 8) = v6;
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    *(a1 + 16) = v5;
    *(a1 + 24) = v8;
    v10 = *(a2 + 40);
    v9 = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 40) = v10;
    v12 = *(a2 + 56);
    v11 = *(a2 + 64);
    *(a1 + 48) = v9;
    *(a1 + 56) = v12;
    v13 = *(a2 + 72);
    *(a1 + 64) = v11;
    *(a1 + 72) = v13;
    v14 = (a2 + 112);
    v46 = *(a2 + 112);
    v15 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v15;
    *(a1 + 96) = *(a2 + 96);
    v16 = *(a2 + 104);
    *(a1 + 104) = v16;
    v17 = v4;
    v18 = v6;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19 = v16;
    if (v46)
    {
      v21 = *(a2 + 120);
      v20 = *(a2 + 128);
      *(a1 + 112) = v46;
      *(a1 + 120) = v21;
      v23 = *(a2 + 136);
      v22 = *(a2 + 144);
      *(a1 + 128) = v20;
      *(a1 + 136) = v23;
      v25 = *(a2 + 152);
      v24 = *(a2 + 160);
      *(a1 + 144) = v22;
      *(a1 + 152) = v25;
      v27 = *(a2 + 168);
      v26 = *(a2 + 176);
      *(a1 + 160) = v24;
      *(a1 + 168) = v27;
      v29 = *(a2 + 184);
      v28 = *(a2 + 192);
      *(a1 + 176) = v26;
      *(a1 + 184) = v29;
      v30 = *(a2 + 200);
      *(a1 + 192) = v28;
      *(a1 + 200) = v30;
      *(a1 + 208) = *(a2 + 208);
      v31 = *(a2 + 216);
      *(a1 + 216) = v31;
      v32 = v46;
      v33 = v21;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v34 = v31;
    }

    else
    {
      v42 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v42;
      *(a1 + 208) = *(a2 + 208);
      v43 = *(a2 + 128);
      *(a1 + 112) = *v14;
      *(a1 + 128) = v43;
      v44 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v44;
    }
  }

  else
  {
    v35 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v35;
    v36 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v36;
    v37 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v37;
    v38 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v38;
    v39 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v39;
    v40 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v40;
    v41 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v41;
  }

  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v24 = *(a2 + 8);
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v25 = *(a2 + 104);
      *(a1 + 104) = v25;
      v26 = (a2 + 112);
      v70 = *(a2 + 112);
      v27 = v5;
      v28 = v24;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v29 = v25;
      if (v70)
      {
        *(a1 + 112) = v70;
        v30 = *(a2 + 120);
        *(a1 + 120) = v30;
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        v31 = *(a2 + 216);
        *(a1 + 216) = v31;
        v32 = v70;
LABEL_12:
        v44 = v30;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v45 = v31;
        goto LABEL_17;
      }

      v62 = *v26;
      v63 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v63;
      *(a1 + 112) = v62;
      v53 = *(a2 + 160);
      v54 = *(a2 + 176);
      v55 = *(a2 + 192);
      v56 = *(a2 + 208);
    }

    else
    {
      v46 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v46;
      v47 = *(a2 + 32);
      v48 = *(a2 + 48);
      v49 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v49;
      *(a1 + 32) = v47;
      *(a1 + 48) = v48;
      v50 = *(a2 + 96);
      v51 = *(a2 + 112);
      v52 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v52;
      *(a1 + 96) = v50;
      *(a1 + 112) = v51;
      v53 = *(a2 + 160);
      v54 = *(a2 + 176);
      v55 = *(a2 + 192);
      v56 = *(a2 + 208);
    }

    *(a1 + 192) = v55;
    *(a1 + 208) = v56;
    *(a1 + 160) = v53;
    *(a1 + 176) = v54;
    goto LABEL_17;
  }

  if (!v5)
  {
    sub_21D30DA58(a1);
    v33 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v33;
    v34 = *(a2 + 80);
    v36 = *(a2 + 32);
    v35 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v34;
    *(a1 + 32) = v36;
    *(a1 + 48) = v35;
    v37 = *(a2 + 144);
    v39 = *(a2 + 96);
    v38 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v37;
    *(a1 + 96) = v39;
    *(a1 + 112) = v38;
    v40 = *(a2 + 208);
    v42 = *(a2 + 160);
    v41 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v40;
    *(a1 + 160) = v42;
    *(a1 + 176) = v41;
    goto LABEL_17;
  }

  *a1 = v5;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  v13 = (a1 + 112);
  v14 = *(a1 + 112);
  v16 = (a2 + 112);
  v15 = *(a2 + 112);
  if (!v14)
  {
    if (!v15)
    {
      v65 = *v16;
      v66 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v66;
      *v13 = v65;
      v67 = *(a2 + 160);
      v68 = *(a2 + 176);
      v69 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v69;
      *(a1 + 160) = v67;
      *(a1 + 176) = v68;
      goto LABEL_17;
    }

    *(a1 + 112) = v15;
    v30 = *(a2 + 120);
    *(a1 + 120) = v30;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    v31 = *(a2 + 216);
    *(a1 + 216) = v31;
    v43 = v15;
    goto LABEL_12;
  }

  if (v15)
  {
    *(a1 + 112) = v15;
    v17 = v15;

    v18 = *(a1 + 120);
    v19 = *(a2 + 120);
    *(a1 + 120) = v19;
    v20 = v19;

    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    sub_21DBF8E0C();

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    sub_21DBF8E0C();

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    sub_21DBF8E0C();

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    sub_21DBF8E0C();

    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    sub_21DBF8E0C();

    *(a1 + 208) = *(a2 + 208);
    v21 = *(a1 + 216);
    v22 = *(a2 + 216);
    *(a1 + 216) = v22;
    v23 = v22;
  }

  else
  {
    sub_21D30DA04(a1 + 112);
    v58 = *(a2 + 128);
    v57 = *(a2 + 144);
    *v13 = *v16;
    *(a1 + 128) = v58;
    *(a1 + 144) = v57;
    v59 = *(a2 + 208);
    v61 = *(a2 + 160);
    v60 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v59;
    *(a1 + 160) = v61;
    *(a1 + 176) = v60;
  }

LABEL_17:
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if (!*a2)
  {
    sub_21D30DA58(a1);
LABEL_7:
    v21 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v21;
    v22 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v22;
    v23 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v23;
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    v25 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v25;
    v26 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v26;
    v27 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v27;
    goto LABEL_10;
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

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (!v12)
  {
LABEL_9:
    v28 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v28;
    *(a1 + 208) = *(a2 + 208);
    v29 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v29;
    v30 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v30;
    goto LABEL_10;
  }

  if (!v13)
  {
    sub_21D30DA04(a1 + 112);
    goto LABEL_9;
  }

  *(a1 + 112) = v13;

  v14 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v15 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v15;

  v16 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v16;

  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;

  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;

  v19 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v19;

  *(a1 + 208) = *(a2 + 208);
  v20 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

LABEL_10:
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.AssignmentData(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.AssignmentData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.Reminder(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = &v11[(v5 + 16) & ~v5];

    return v12;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v274 = v3;
  v275 = a1;
  v276 = v6;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v26 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = a1;
        v19 = *(v17 - 8);
        v27 = *(v19 + 48);
        v28 = v26;
        if (v27(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v40 = swift_getEnumCaseMultiPayload();
        if (v40 > 4)
        {
          if (v40 <= 7)
          {
            if (v40 == 5 || v40 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v40 != 8 && v40 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v40 > 2)
        {
          goto LABEL_114;
        }

        if (v40 == 1)
        {
          goto LABEL_113;
        }

        if (v40 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = a1;
        v19 = *(v17 - 8);
        v20 = *(v19 + 48);
        v21 = v15;
        if (v20(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
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

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(a1, v3, v54);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v55 = *v3;
        *a1 = *v3;
        v56 = v55;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_92:
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v60[5];
      v62 = a1 + v61;
      v63 = v3 + v61;
      v64 = *(v3 + v61 + 8);
      if (v64)
      {
        *v62 = *v63;
        *(v62 + 1) = v64;
        v65 = *(v63 + 2);
        v66 = *(v63 + 3);
        v67 = *(v63 + 4);
        v68 = *(v63 + 5);
        v69 = *(v63 + 6);
        v70 = *(v63 + 7);
        v71 = v63[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v62 + 2) = v65;
        *(v62 + 3) = v66;
        *(v62 + 4) = v67;
        *(v62 + 5) = v68;
        *(v62 + 6) = v69;
        *(v62 + 7) = v70;
        v62[64] = v71;
        *(v62 + 65) = *(v63 + 65);
        v72 = v63[120];
        if (v72 == 255)
        {
          *(v62 + 72) = *(v63 + 72);
          *(v62 + 88) = *(v63 + 88);
          *(v62 + 104) = *(v63 + 104);
          v62[120] = v63[120];
        }

        else
        {
          v73 = *(v63 + 9);
          v74 = *(v63 + 10);
          v75 = *(v63 + 11);
          v76 = *(v63 + 12);
          v77 = *(v63 + 13);
          v78 = *(v63 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v62 + 9) = v73;
          *(v62 + 10) = v74;
          *(v62 + 11) = v75;
          *(v62 + 12) = v76;
          *(v62 + 13) = v77;
          *(v62 + 14) = v78;
          v62[120] = v79;
        }

        v6 = v276;
        v3 = v274;
        v62[121] = v63[121];
        goto LABEL_98;
      }

LABEL_95:
      v80 = *(v63 + 5);
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 5) = v80;
      *(v62 + 6) = *(v63 + 6);
      *(v62 + 106) = *(v63 + 106);
      v81 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v81;
      v82 = *(v63 + 3);
      *(v62 + 2) = *(v63 + 2);
      *(v62 + 3) = v82;
LABEL_98:
      a1 = v275;
      *(v275 + v60[6]) = *(v3 + v60[6]);
      *(v275 + v60[7]) = *(v3 + v60[7]);
      *(v275 + v60[8]) = *(v3 + v60[8]);
      *(v275 + v60[9]) = *(v3 + v60[9]);
      *(v275 + v60[10]) = *(v3 + v60[10]);
      v83 = v60[11];
      v84 = *(v3 + v83);
      *(v275 + v83) = v84;
      v85 = v84;
      goto LABEL_129;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_69:
        v57 = sub_21DBF563C();
        (*(*(v57 - 8) + 16))(a1, v3, v57);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v58 = *v3;
      *a1 = *v3;
      v59 = v58;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v24 - 8) + 64));
LABEL_100:
    v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v60[5];
    v62 = a1 + v86;
    v63 = v3 + v86;
    v87 = *(v3 + v86 + 8);
    if (v87)
    {
      *v62 = *v63;
      *(v62 + 1) = v87;
      v88 = *(v63 + 2);
      v89 = *(v63 + 3);
      v90 = *(v63 + 4);
      v91 = *(v63 + 5);
      v93 = *(v63 + 6);
      v92 = *(v63 + 7);
      v94 = v63[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v88, v89, v90, v91, v93, v92, v94);
      *(v62 + 2) = v88;
      *(v62 + 3) = v89;
      *(v62 + 4) = v90;
      *(v62 + 5) = v91;
      *(v62 + 6) = v93;
      *(v62 + 7) = v92;
      v62[64] = v94;
      *(v62 + 65) = *(v63 + 65);
      v95 = v63[120];
      if (v95 == 255)
      {
        *(v62 + 72) = *(v63 + 72);
        *(v62 + 88) = *(v63 + 88);
        *(v62 + 104) = *(v63 + 104);
        v62[120] = v63[120];
      }

      else
      {
        v96 = *(v63 + 9);
        v97 = *(v63 + 10);
        v98 = *(v63 + 11);
        v99 = *(v63 + 12);
        v100 = *(v63 + 13);
        v101 = *(v63 + 14);
        v102 = v95 & 1;
        sub_21D0FB960(v96, v97, v98, v99, v100, v101, v95 & 1);
        *(v62 + 9) = v96;
        *(v62 + 10) = v97;
        *(v62 + 11) = v98;
        *(v62 + 12) = v99;
        *(v62 + 13) = v100;
        *(v62 + 14) = v101;
        v62[120] = v102;
      }

      v6 = v276;
      v3 = v274;
      v62[121] = v63[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v22 = v3[2];
      a1[2] = v22;
      v23 = v22;
      goto LABEL_129;
    }

    v33 = *v3;
    *a1 = *v3;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = a1;
    v19 = *(v17 - 8);
    v34 = *(v19 + 48);
    v35 = v33;
    if (v34(v3 + v16, 1, v17))
    {
LABEL_28:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v18 + v16, v3 + v16, *(*(v29 - 8) + 64));
      a1 = v18;
      goto LABEL_129;
    }

    v51 = swift_getEnumCaseMultiPayload();
    if (v51 > 4)
    {
      if (v51 <= 7)
      {
        if (v51 == 5 || v51 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v51 != 8 && v51 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v103 = *(v3 + v16);
      v104 = v275;
      *(v275 + v16) = v103;
      v105 = v103;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v19 + 56))(v104 + v16, 0, 1, v17);
      a1 = v104;
      goto LABEL_129;
    }

    if (v51 <= 2)
    {
      if (v51 != 1)
      {
        if (v51 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        v104 = v275;
        memcpy(v275 + v16, v3 + v16, *(v19 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v106 = sub_21DBF563C();
    v104 = v275;
    (*(*(v106 - 8) + 16))(v275 + v16, v3 + v16, v106);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v30 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v3, 1, v30))
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(a1, v3, *(*(v32 - 8) + 64));
    }

    else
    {
      *a1 = *v3;
      v41 = *(v30 + 20);
      v42 = sub_21DBF6C1C();
      v43 = *(*(v42 - 8) + 16);
      sub_21DBF8E0C();
      v44 = v42;
      a1 = v275;
      v43(v275 + v41, v3 + v41, v44);
      (*(v31 + 56))(v275, 0, 1, v30);
    }

    v45 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v46 = (a1 + v45);
    v47 = (v3 + v45);
    v48 = v47[1];
    if (v48)
    {
      *v46 = *v47;
      v46[1] = v48;
      v49 = v47[2];
      v46[2] = v49;
      sub_21DBF8E0C();
      v50 = v49;
    }

    else
    {
      *v46 = *v47;
      v46[2] = v47[2];
    }

    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v3, 1, v36))
    {
      v38 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, v3, *(*(v38 - 8) + 64));
    }

    else
    {
      v52 = sub_21DBF563C();
      (*(*(v52 - 8) + 16))(a1, v3, v52);
      *(a1 + *(v36 + 20)) = *(v3 + *(v36 + 20));
      (*(v37 + 56))(a1, 0, 1, v36);
    }

    v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v53 + 20)) = *(v3 + *(v53 + 20));
    goto LABEL_129;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_35:
    memcpy(a1, v3, *(*(v7 - 8) + 64));
    goto LABEL_130;
  }

  *a1 = *v3;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
  swift_storeEnumTagMultiPayload();
LABEL_130:
  v107 = v6[5];
  v108 = v6[6];
  v109 = *(v3 + v107);
  *(a1 + v107) = v109;
  v110 = a1 + v108;
  v111 = v3 + v108;
  *v110 = *v111;
  v110[1] = v111[1];
  v110[2] = v111[2];
  v112 = *(v111 + 2);
  *(v110 + 1) = *(v111 + 1);
  *(v110 + 2) = v112;
  *(v110 + 12) = *(v111 + 12);
  v113 = v6[7];
  v114 = v6[8];
  v115 = *(v3 + v113);
  *(a1 + v113) = v115;
  *(a1 + v114) = *(v3 + v114);
  v116 = v6[9];
  v117 = v6[10];
  v118 = (a1 + v116);
  v119 = (v3 + v116);
  v120 = v3;
  v121 = v119[1];
  *v118 = *v119;
  v118[1] = v121;
  v122 = (a1 + v117);
  v123 = (v120 + v117);
  v124 = v123[1];
  *v122 = *v123;
  v122[1] = v124;
  v125 = v6[11];
  __dst = (a1 + v125);
  v126 = (v120 + v125);
  v127 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v128 = *(v127 - 1);
  v129 = *(v128 + 48);
  v130 = v109;
  sub_21DBF8E0C();
  v131 = v115;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v129(v126, 1, v127))
  {
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    memcpy(__dst, v126, *(*(v132 - 8) + 64));
    v133 = v274;
    v134 = v276;
  }

  else
  {
    v135 = v126[1];
    *__dst = *v126;
    __dst[1] = v135;
    v136 = v126[3];
    __dst[2] = v126[2];
    __dst[3] = v136;
    v137 = v127[6];
    v138 = sub_21DBF563C();
    v139 = *(*(v138 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v139(__dst + v137, v126 + v137, v138);
    v140 = v127[7];
    v141 = sub_21DBF5C4C();
    v142 = *(v141 - 8);
    if ((*(v142 + 48))(v126 + v140, 1, v141))
    {
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      memcpy(__dst + v140, v126 + v140, *(*(v143 - 8) + 64));
    }

    else
    {
      (*(v142 + 16))(__dst + v140, v126 + v140, v141);
      (*(v142 + 56))(__dst + v140, 0, 1, v141);
    }

    v133 = v274;
    v134 = v276;
    *(__dst + v127[8]) = *(v126 + v127[8]);
    *(__dst + v127[9]) = *(v126 + v127[9]);
    *(__dst + v127[10]) = *(v126 + v127[10]);
    (*(v128 + 56))(__dst, 0, 1, v127);
  }

  v144 = v134[12];
  v145 = v134[13];
  v146 = (v275 + v144);
  v147 = (v133 + v144);
  v148 = v147[1];
  *v146 = *v147;
  v146[1] = v148;
  v149 = v275 + v145;
  v150 = v133 + v145;
  v151 = *(v133 + v145 + 24);
  sub_21DBF8E0C();
  if (v151)
  {
    v152 = *v150;
    v153 = *(v150 + 8);
    *v149 = *v150;
    *(v149 + 1) = v153;
    *(v149 + 2) = *(v150 + 16);
    *(v149 + 3) = v151;
    v154 = *(v150 + 40);
    *(v149 + 4) = *(v150 + 32);
    *(v149 + 5) = v154;
    v149[48] = *(v150 + 48);
    v155 = v152;
    v156 = v153;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v157 = *(v150 + 16);
    *v149 = *v150;
    *(v149 + 1) = v157;
    *(v149 + 2) = *(v150 + 32);
    v149[48] = *(v150 + 48);
  }

  v158 = v134[15];
  *(v275 + v134[14]) = *(v133 + v134[14]);
  v159 = *(v133 + v158);
  *(v275 + v158) = v159;
  v160 = v134[17];
  *(v275 + v134[16]) = *(v133 + v134[16]);
  *(v275 + v160) = *(v133 + v160);
  v161 = v134[19];
  *(v275 + v134[18]) = *(v133 + v134[18]);
  *(v275 + v161) = *(v133 + v161);
  v162 = v134[20];
  v163 = v134[21];
  v164 = v134;
  v165 = *(v133 + v162);
  *(v275 + v162) = v165;
  v166 = *(v133 + v163);
  *(v275 + v163) = v166;
  v167 = v134[22];
  v168 = v134[23];
  v169 = *(v133 + v167);
  *(v275 + v167) = v169;
  v170 = v275 + v168;
  v171 = v133 + v168;
  *v170 = *v171;
  v170[8] = *(v171 + 8);
  v172 = v134[25];
  *(v275 + v134[24]) = *(v133 + v134[24]);
  *(v275 + v172) = *(v133 + v172);
  v173 = v134[27];
  *(v275 + v134[26]) = *(v133 + v134[26]);
  *(v275 + v173) = *(v133 + v173);
  v174 = v134[29];
  *(v275 + v134[28]) = *(v133 + v134[28]);
  *(v275 + v174) = *(v133 + v174);
  v175 = v134[30];
  v176 = v134[31];
  v177 = (v275 + v175);
  v178 = (v133 + v175);
  v179 = v178[1];
  *v177 = *v178;
  v177[1] = v179;
  v180 = v275 + v176;
  v181 = v133 + v176;
  v182 = v133;
  v183 = *(v181 + 8);
  *v180 = *v181;
  *(v180 + 1) = v183;
  v180[16] = *(v181 + 16);
  v184 = v164[32];
  v185 = (v275 + v184);
  v186 = (v182 + v184);
  v187 = *(v182 + v184 + 8);
  v188 = v159;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v189 = v165;
  v190 = v166;
  v191 = v169;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v187)
  {
    *v185 = *v186;
    v185[1] = v187;
    v192 = v186[2];
    v185[2] = v192;
    sub_21DBF8E0C();
    v193 = v192;
  }

  else
  {
    *v185 = *v186;
    v185[2] = v186[2];
  }

  v12 = v275;
  v194 = v276[34];
  v195 = v274;
  *(v275 + v276[33]) = *(v274 + v276[33]);
  v196 = v275 + v194;
  v197 = v274 + v194;
  v198 = *(v274 + v194);
  if (!v198)
  {
    v206 = *(v197 + 11);
    *(v196 + 10) = *(v197 + 10);
    *(v196 + 11) = v206;
    v207 = *(v197 + 13);
    *(v196 + 12) = *(v197 + 12);
    *(v196 + 13) = v207;
    v208 = *(v197 + 7);
    *(v196 + 6) = *(v197 + 6);
    *(v196 + 7) = v208;
    v209 = *(v197 + 9);
    *(v196 + 8) = *(v197 + 8);
    *(v196 + 9) = v209;
    v210 = *(v197 + 3);
    *(v196 + 2) = *(v197 + 2);
    *(v196 + 3) = v210;
    v211 = *(v197 + 5);
    *(v196 + 4) = *(v197 + 4);
    *(v196 + 5) = v211;
    v212 = *(v197 + 1);
    *v196 = *v197;
    *(v196 + 1) = v212;
LABEL_150:
    *(v196 + 28) = *(v197 + 28);
    goto LABEL_151;
  }

  if (v198 != 1)
  {
    v214 = *(v197 + 1);
    v213 = *(v197 + 2);
    *v196 = v198;
    *(v196 + 1) = v214;
    v216 = *(v197 + 3);
    v215 = *(v197 + 4);
    *(v196 + 2) = v213;
    *(v196 + 3) = v216;
    v218 = *(v197 + 5);
    v217 = *(v197 + 6);
    *(v196 + 4) = v215;
    *(v196 + 5) = v218;
    v220 = *(v197 + 7);
    v219 = *(v197 + 8);
    *(v196 + 6) = v217;
    *(v196 + 7) = v220;
    v221 = *(v197 + 9);
    *(v196 + 8) = v219;
    *(v196 + 9) = v221;
    __dsta = *(v197 + 14);
    v222 = *(v197 + 11);
    *(v196 + 10) = *(v197 + 10);
    *(v196 + 11) = v222;
    v196[96] = v197[96];
    v223 = *(v197 + 13);
    *(v196 + 13) = v223;
    v224 = v198;
    v225 = v214;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v226 = v223;
    if (__dsta)
    {
      v228 = *(v197 + 15);
      v227 = *(v197 + 16);
      *(v196 + 14) = __dsta;
      *(v196 + 15) = v228;
      v230 = *(v197 + 17);
      v229 = *(v197 + 18);
      *(v196 + 16) = v227;
      *(v196 + 17) = v230;
      v232 = *(v197 + 19);
      v231 = *(v197 + 20);
      *(v196 + 18) = v229;
      *(v196 + 19) = v232;
      v234 = *(v197 + 21);
      v233 = *(v197 + 22);
      *(v196 + 20) = v231;
      *(v196 + 21) = v234;
      v236 = *(v197 + 23);
      v235 = *(v197 + 24);
      *(v196 + 22) = v233;
      *(v196 + 23) = v236;
      v237 = *(v197 + 25);
      *(v196 + 24) = v235;
      *(v196 + 25) = v237;
      v196[208] = v197[208];
      v238 = *(v197 + 27);
      *(v196 + 27) = v238;
      v239 = __dsta;
      v240 = v228;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v241 = v238;
    }

    else
    {
      v242 = *(v197 + 12);
      *(v196 + 11) = *(v197 + 11);
      *(v196 + 12) = v242;
      *(v196 + 13) = *(v197 + 13);
      v243 = *(v197 + 8);
      *(v196 + 7) = *(v197 + 7);
      *(v196 + 8) = v243;
      v244 = *(v197 + 10);
      *(v196 + 9) = *(v197 + 9);
      *(v196 + 10) = v244;
    }

    v195 = v274;
    v12 = v275;
    goto LABEL_150;
  }

  v199 = *(v197 + 13);
  *(v196 + 12) = *(v197 + 12);
  *(v196 + 13) = v199;
  *(v196 + 28) = *(v197 + 28);
  v200 = *(v197 + 9);
  *(v196 + 8) = *(v197 + 8);
  *(v196 + 9) = v200;
  v201 = *(v197 + 11);
  *(v196 + 10) = *(v197 + 10);
  *(v196 + 11) = v201;
  v202 = *(v197 + 5);
  *(v196 + 4) = *(v197 + 4);
  *(v196 + 5) = v202;
  v203 = *(v197 + 7);
  *(v196 + 6) = *(v197 + 6);
  *(v196 + 7) = v203;
  v204 = *(v197 + 1);
  *v196 = *v197;
  *(v196 + 1) = v204;
  v205 = *(v197 + 3);
  *(v196 + 2) = *(v197 + 2);
  *(v196 + 3) = v205;
LABEL_151:
  v245 = v276[35];
  v246 = v276[36];
  v247 = v12 + v245;
  v248 = v195 + v245;
  *v247 = *v248;
  v249 = *(v248 + 2);
  *(v247 + 1) = *(v248 + 1);
  *(v247 + 2) = v249;
  *(v12 + v246) = *(v195 + v246);
  v250 = v276[37];
  v251 = (v12 + v250);
  v252 = (v195 + v250);
  v253 = *(v195 + v250 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v253 > 1)
  {
    *v251 = *v252;
    v251[1] = v253;
    v255 = v252[3];
    v251[2] = v252[2];
    v251[3] = v255;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v254 = *(v252 + 1);
    *v251 = *v252;
    *(v251 + 1) = v254;
  }

  v256 = v276[38];
  v257 = (v12 + v256);
  v258 = v195 + v256;
  v259 = *(v195 + v256);
  if (v259)
  {
    v260 = *(v258 + 8);
    v261 = *(v258 + 16);
    *v257 = v259;
    v257[1] = v260;
    v257[2] = v261;
    v262 = v259;
    sub_21DBF8E0C();
  }

  else
  {
    *v257 = *v258;
    v257[2] = *(v258 + 16);
  }

  v263 = v276[39];
  v264 = v276[40];
  v265 = (v12 + v263);
  v266 = (v195 + v263);
  v267 = v266[1];
  *v265 = *v266;
  v265[1] = v267;
  *(v12 + v264) = *(v195 + v264);
  v268 = v276[42];
  *(v12 + v276[41]) = *(v195 + v276[41]);
  v269 = *(v195 + v268);
  *(v12 + v268) = v269;
  *(v12 + v276[43]) = *(v195 + v276[43]);
  *(v12 + v276[45]) = *(v195 + v276[45]);
  sub_21DBF8E0C();
  v270 = v269;
  return v12;
}

void destroy for TTRRemindersListViewModel.Reminder(id *a1, int *a2)
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
      if (v10 > 7)
      {
        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_46;
        }

        goto LABEL_65;
      }

      if (v10 != 5 && v10 != 6)
      {
        goto LABEL_46;
      }
    }

    else if (v10 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

LABEL_65:

      goto LABEL_46;
    }

LABEL_45:
    v21 = sub_21DBF563C();
    (*(*(v21 - 8) + 8))(a1 + v8, v21);
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

  v22 = a1 + a2[11];
  v23 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v24 = *(v23 + 24);
    v25 = sub_21DBF563C();
    (*(*(v25 - 8) + 8))(&v22[v24], v25);
    v26 = *(v23 + 28);
    v27 = sub_21DBF5C4C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v22[v26], 1, v27))
    {
      (*(v28 + 8))(&v22[v26], v27);
    }
  }

  v29 = (a1 + a2[13]);
  if (v29[3])
  {
  }

  v30 = (a1 + a2[32]);
  if (v30[1])
  {
  }

  v31 = (a1 + a2[34]);
  if (*v31 >= 2)
  {

    v32 = v31[14];
    if (v32)
    {
    }
  }

  if (*(a1 + a2[37] + 8) >= 2)
  {
  }

  v33 = (a1 + a2[38]);
  if (*v33)
  {
  }

  v34 = *(a1 + a2[42]);
}

void **initializeWithCopy for TTRRemindersListViewModel.Reminder(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v272 = a2;
  v273 = a1;
  v274 = a3;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = a1;
        v16 = *(v14 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v37 > 2)
        {
          goto LABEL_112;
        }

        if (v37 == 1)
        {
          goto LABEL_111;
        }

        if (v37 != 2)
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
        v15 = a1;
        v16 = *(v14 - 8);
        v17 = *(v16 + 48);
        v18 = v12;
        if (v17(a2 + v13, 1, v14))
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
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(a1, a2, v51);
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
        v52 = *a2;
        *a1 = *a2;
        v53 = v52;
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
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v58 = v57[5];
      v59 = a1 + v58;
      v60 = a2 + v58;
      v61 = *(a2 + v58 + 8);
      if (v61)
      {
        *v59 = *v60;
        *(v59 + 1) = v61;
        v62 = *(v60 + 2);
        v63 = *(v60 + 3);
        v64 = *(v60 + 4);
        v65 = *(v60 + 5);
        v66 = *(v60 + 6);
        v67 = *(v60 + 7);
        v68 = v60[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v62, v63, v64, v65, v66, v67, v68);
        *(v59 + 2) = v62;
        *(v59 + 3) = v63;
        *(v59 + 4) = v64;
        *(v59 + 5) = v65;
        *(v59 + 6) = v66;
        *(v59 + 7) = v67;
        v59[64] = v68;
        *(v59 + 65) = *(v60 + 65);
        v69 = v60[120];
        if (v69 == 255)
        {
          *(v59 + 72) = *(v60 + 72);
          *(v59 + 88) = *(v60 + 88);
          *(v59 + 104) = *(v60 + 104);
          v59[120] = v60[120];
        }

        else
        {
          v70 = *(v60 + 9);
          v71 = *(v60 + 10);
          v72 = *(v60 + 11);
          v73 = *(v60 + 12);
          v74 = *(v60 + 13);
          v75 = *(v60 + 14);
          v76 = v69 & 1;
          sub_21D0FB960(v70, v71, v72, v73, v74, v75, v69 & 1);
          *(v59 + 9) = v70;
          *(v59 + 10) = v71;
          *(v59 + 11) = v72;
          *(v59 + 12) = v73;
          *(v59 + 13) = v74;
          *(v59 + 14) = v75;
          v59[120] = v76;
        }

        a3 = v274;
        a2 = v272;
        v59[121] = v60[121];
        goto LABEL_96;
      }

LABEL_93:
      v77 = *(v60 + 5);
      *(v59 + 4) = *(v60 + 4);
      *(v59 + 5) = v77;
      *(v59 + 6) = *(v60 + 6);
      *(v59 + 106) = *(v60 + 106);
      v78 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v78;
      v79 = *(v60 + 3);
      *(v59 + 2) = *(v60 + 2);
      *(v59 + 3) = v79;
LABEL_96:
      a1 = v273;
      *(v273 + v57[6]) = *(a2 + v57[6]);
      *(v273 + v57[7]) = *(a2 + v57[7]);
      *(v273 + v57[8]) = *(a2 + v57[8]);
      *(v273 + v57[9]) = *(a2 + v57[9]);
      *(v273 + v57[10]) = *(a2 + v57[10]);
      v80 = v57[11];
      v81 = *(a2 + v80);
      *(v273 + v80) = v81;
      v82 = v81;
      goto LABEL_127;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 <= 4)
    {
      if (v22 > 2)
      {
LABEL_67:
        v54 = sub_21DBF563C();
        (*(*(v54 - 8) + 16))(a1, a2, v54);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v55 = *a2;
      *a1 = *a2;
      v56 = v55;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v22 > 7)
    {
      if (v22 == 8 || v22 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v22 == 5 || v22 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v21 - 8) + 64));
LABEL_98:
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v57[5];
    v59 = a1 + v83;
    v60 = a2 + v83;
    v84 = *(a2 + v83 + 8);
    if (v84)
    {
      *v59 = *v60;
      *(v59 + 1) = v84;
      v85 = *(v60 + 2);
      v86 = *(v60 + 3);
      v87 = *(v60 + 4);
      v88 = *(v60 + 5);
      v90 = *(v60 + 6);
      v89 = *(v60 + 7);
      v91 = v60[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v85, v86, v87, v88, v90, v89, v91);
      *(v59 + 2) = v85;
      *(v59 + 3) = v86;
      *(v59 + 4) = v87;
      *(v59 + 5) = v88;
      *(v59 + 6) = v90;
      *(v59 + 7) = v89;
      v59[64] = v91;
      *(v59 + 65) = *(v60 + 65);
      v92 = v60[120];
      if (v92 == 255)
      {
        *(v59 + 72) = *(v60 + 72);
        *(v59 + 88) = *(v60 + 88);
        *(v59 + 104) = *(v60 + 104);
        v59[120] = v60[120];
      }

      else
      {
        v93 = *(v60 + 9);
        v94 = *(v60 + 10);
        v95 = *(v60 + 11);
        v96 = *(v60 + 12);
        v97 = *(v60 + 13);
        v98 = *(v60 + 14);
        v99 = v92 & 1;
        sub_21D0FB960(v93, v94, v95, v96, v97, v98, v92 & 1);
        *(v59 + 9) = v93;
        *(v59 + 10) = v94;
        *(v59 + 11) = v95;
        *(v59 + 12) = v96;
        *(v59 + 13) = v97;
        *(v59 + 14) = v98;
        v59[120] = v99;
      }

      a3 = v274;
      a2 = v272;
      v59[121] = v60[121];
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
      v19 = a2[2];
      a1[2] = v19;
      v20 = v19;
      goto LABEL_127;
    }

    v30 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = a1;
    v16 = *(v14 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(a2 + v13, 1, v14))
    {
LABEL_26:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v15 + v13, a2 + v13, *(*(v26 - 8) + 64));
      a1 = v15;
      goto LABEL_127;
    }

    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 4)
    {
      if (v48 <= 7)
      {
        if (v48 == 5 || v48 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v48 != 8 && v48 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v100 = *(a2 + v13);
      v101 = v273;
      *(v273 + v13) = v100;
      v102 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v16 + 56))(v101 + v13, 0, 1, v14);
      a1 = v101;
      goto LABEL_127;
    }

    if (v48 <= 2)
    {
      if (v48 != 1)
      {
        if (v48 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        v101 = v273;
        memcpy(v273 + v13, a2 + v13, *(v16 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v103 = sub_21DBF563C();
    v101 = v273;
    (*(*(v103 - 8) + 16))(v273 + v13, a2 + v13, v103);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(a2, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(a1, a2, *(*(v29 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v38 = *(v27 + 20);
      v39 = sub_21DBF6C1C();
      v40 = *(*(v39 - 8) + 16);
      sub_21DBF8E0C();
      v41 = v39;
      a1 = v273;
      v40(v273 + v38, a2 + v38, v41);
      (*(v28 + 56))(v273, 0, 1, v27);
    }

    v42 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v43 = (a1 + v42);
    v44 = (a2 + v42);
    v45 = v44[1];
    if (v45)
    {
      *v43 = *v44;
      v43[1] = v45;
      v46 = v44[2];
      v43[2] = v46;
      sub_21DBF8E0C();
      v47 = v46;
    }

    else
    {
      *v43 = *v44;
      v43[2] = v44[2];
    }

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(a2, 1, v33))
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v35 - 8) + 64));
    }

    else
    {
      v49 = sub_21DBF563C();
      (*(*(v49 - 8) + 16))(a1, a2, v49);
      *(a1 + *(v33 + 20)) = *(a2 + *(v33 + 20));
      (*(v34 + 56))(a1, 0, 1, v33);
    }

    v50 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v50 + 20)) = *(a2 + *(v50 + 20));
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
  v104 = a3[5];
  v105 = a3[6];
  v106 = *(a2 + v104);
  *(a1 + v104) = v106;
  v107 = a1 + v105;
  v108 = a2 + v105;
  *v107 = *v108;
  v107[1] = v108[1];
  v107[2] = v108[2];
  v109 = *(v108 + 2);
  *(v107 + 1) = *(v108 + 1);
  *(v107 + 2) = v109;
  *(v107 + 12) = *(v108 + 12);
  v110 = a3[7];
  v111 = a3[8];
  v112 = *(a2 + v110);
  *(a1 + v110) = v112;
  *(a1 + v111) = *(a2 + v111);
  v113 = a3[9];
  v114 = a3[10];
  v115 = (a1 + v113);
  v116 = (a2 + v113);
  v117 = a2;
  v118 = v116[1];
  *v115 = *v116;
  v115[1] = v118;
  v119 = (a1 + v114);
  v120 = (v117 + v114);
  v121 = v120[1];
  *v119 = *v120;
  v119[1] = v121;
  v122 = a3[11];
  __dst = (a1 + v122);
  v123 = (v117 + v122);
  v124 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v125 = *(v124 - 1);
  v126 = *(v125 + 48);
  v127 = v106;
  sub_21DBF8E0C();
  v128 = v112;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v126(v123, 1, v124))
  {
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    memcpy(__dst, v123, *(*(v129 - 8) + 64));
    v130 = v272;
    v131 = v274;
  }

  else
  {
    v132 = v123[1];
    *__dst = *v123;
    __dst[1] = v132;
    v133 = v123[3];
    __dst[2] = v123[2];
    __dst[3] = v133;
    v134 = v124[6];
    v135 = sub_21DBF563C();
    v136 = *(*(v135 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v136(__dst + v134, v123 + v134, v135);
    v137 = v124[7];
    v138 = sub_21DBF5C4C();
    v139 = *(v138 - 8);
    if ((*(v139 + 48))(v123 + v137, 1, v138))
    {
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      memcpy(__dst + v137, v123 + v137, *(*(v140 - 8) + 64));
    }

    else
    {
      (*(v139 + 16))(__dst + v137, v123 + v137, v138);
      (*(v139 + 56))(__dst + v137, 0, 1, v138);
    }

    v130 = v272;
    v131 = v274;
    *(__dst + v124[8]) = *(v123 + v124[8]);
    *(__dst + v124[9]) = *(v123 + v124[9]);
    *(__dst + v124[10]) = *(v123 + v124[10]);
    (*(v125 + 56))(__dst, 0, 1, v124);
  }

  v141 = v131[12];
  v142 = v131[13];
  v143 = (v273 + v141);
  v144 = (v130 + v141);
  v145 = v144[1];
  *v143 = *v144;
  v143[1] = v145;
  v146 = v273 + v142;
  v147 = v130 + v142;
  v148 = *(v130 + v142 + 24);
  sub_21DBF8E0C();
  if (v148)
  {
    v149 = *v147;
    v150 = *(v147 + 1);
    *v146 = *v147;
    *(v146 + 1) = v150;
    *(v146 + 2) = *(v147 + 2);
    *(v146 + 3) = v148;
    v151 = *(v147 + 5);
    *(v146 + 4) = *(v147 + 4);
    *(v146 + 5) = v151;
    v146[48] = v147[48];
    v152 = v149;
    v153 = v150;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v154 = *(v147 + 1);
    *v146 = *v147;
    *(v146 + 1) = v154;
    *(v146 + 2) = *(v147 + 2);
    v146[48] = v147[48];
  }

  v155 = v131[15];
  *(v273 + v131[14]) = *(v130 + v131[14]);
  v156 = *(v130 + v155);
  *(v273 + v155) = v156;
  v157 = v131[17];
  *(v273 + v131[16]) = *(v130 + v131[16]);
  *(v273 + v157) = *(v130 + v157);
  v158 = v131[19];
  *(v273 + v131[18]) = *(v130 + v131[18]);
  *(v273 + v158) = *(v130 + v158);
  v159 = v131[20];
  v160 = v131[21];
  v161 = v131;
  v162 = *(v130 + v159);
  *(v273 + v159) = v162;
  v163 = *(v130 + v160);
  *(v273 + v160) = v163;
  v164 = v131[22];
  v165 = v131[23];
  v166 = *(v130 + v164);
  *(v273 + v164) = v166;
  v167 = v273 + v165;
  v168 = v130 + v165;
  *v167 = *v168;
  v167[8] = v168[8];
  v169 = v131[25];
  *(v273 + v131[24]) = *(v130 + v131[24]);
  *(v273 + v169) = *(v130 + v169);
  v170 = v131[27];
  *(v273 + v131[26]) = *(v130 + v131[26]);
  *(v273 + v170) = *(v130 + v170);
  v171 = v131[29];
  *(v273 + v131[28]) = *(v130 + v131[28]);
  *(v273 + v171) = *(v130 + v171);
  v172 = v131[30];
  v173 = v131[31];
  v174 = (v273 + v172);
  v175 = (v130 + v172);
  v176 = v175[1];
  *v174 = *v175;
  v174[1] = v176;
  v177 = v273 + v173;
  v178 = v130 + v173;
  v179 = v130;
  v180 = *(v178 + 1);
  *v177 = *v178;
  *(v177 + 1) = v180;
  v177[16] = v178[16];
  v181 = v161[32];
  v182 = (v273 + v181);
  v183 = (v179 + v181);
  v184 = *(v179 + v181 + 8);
  v185 = v156;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v186 = v162;
  v187 = v163;
  v188 = v166;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v184)
  {
    *v182 = *v183;
    v182[1] = v184;
    v189 = v183[2];
    v182[2] = v189;
    sub_21DBF8E0C();
    v190 = v189;
  }

  else
  {
    *v182 = *v183;
    v182[2] = v183[2];
  }

  v191 = v273;
  v192 = v274[34];
  v193 = v272;
  *(v273 + v274[33]) = *(v272 + v274[33]);
  v194 = v273 + v192;
  v195 = v272 + v192;
  v196 = *(v272 + v192);
  if (v196)
  {
    if (v196 == 1)
    {
      v197 = *(v195 + 13);
      *(v194 + 12) = *(v195 + 12);
      *(v194 + 13) = v197;
      *(v194 + 28) = *(v195 + 28);
      v198 = *(v195 + 9);
      *(v194 + 8) = *(v195 + 8);
      *(v194 + 9) = v198;
      v199 = *(v195 + 11);
      *(v194 + 10) = *(v195 + 10);
      *(v194 + 11) = v199;
      v200 = *(v195 + 5);
      *(v194 + 4) = *(v195 + 4);
      *(v194 + 5) = v200;
      v201 = *(v195 + 7);
      *(v194 + 6) = *(v195 + 6);
      *(v194 + 7) = v201;
      v202 = *(v195 + 1);
      *v194 = *v195;
      *(v194 + 1) = v202;
      v203 = *(v195 + 3);
      *(v194 + 2) = *(v195 + 2);
      *(v194 + 3) = v203;
      goto LABEL_149;
    }

    v212 = *(v195 + 1);
    v211 = *(v195 + 2);
    *v194 = v196;
    *(v194 + 1) = v212;
    v214 = *(v195 + 3);
    v213 = *(v195 + 4);
    *(v194 + 2) = v211;
    *(v194 + 3) = v214;
    v216 = *(v195 + 5);
    v215 = *(v195 + 6);
    *(v194 + 4) = v213;
    *(v194 + 5) = v216;
    v218 = *(v195 + 7);
    v217 = *(v195 + 8);
    *(v194 + 6) = v215;
    *(v194 + 7) = v218;
    v219 = *(v195 + 9);
    *(v194 + 8) = v217;
    *(v194 + 9) = v219;
    __dsta = *(v195 + 14);
    v220 = *(v195 + 11);
    *(v194 + 10) = *(v195 + 10);
    *(v194 + 11) = v220;
    v194[96] = v195[96];
    v221 = *(v195 + 13);
    *(v194 + 13) = v221;
    v222 = v196;
    v223 = v212;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v224 = v221;
    if (__dsta)
    {
      v226 = *(v195 + 15);
      v225 = *(v195 + 16);
      *(v194 + 14) = __dsta;
      *(v194 + 15) = v226;
      v228 = *(v195 + 17);
      v227 = *(v195 + 18);
      *(v194 + 16) = v225;
      *(v194 + 17) = v228;
      v230 = *(v195 + 19);
      v229 = *(v195 + 20);
      *(v194 + 18) = v227;
      *(v194 + 19) = v230;
      v232 = *(v195 + 21);
      v231 = *(v195 + 22);
      *(v194 + 20) = v229;
      *(v194 + 21) = v232;
      v234 = *(v195 + 23);
      v233 = *(v195 + 24);
      *(v194 + 22) = v231;
      *(v194 + 23) = v234;
      v235 = *(v195 + 25);
      *(v194 + 24) = v233;
      *(v194 + 25) = v235;
      v194[208] = v195[208];
      v236 = *(v195 + 27);
      *(v194 + 27) = v236;
      v237 = __dsta;
      v238 = v226;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v239 = v236;
    }

    else
    {
      v240 = *(v195 + 12);
      *(v194 + 11) = *(v195 + 11);
      *(v194 + 12) = v240;
      *(v194 + 13) = *(v195 + 13);
      v241 = *(v195 + 8);
      *(v194 + 7) = *(v195 + 7);
      *(v194 + 8) = v241;
      v242 = *(v195 + 10);
      *(v194 + 9) = *(v195 + 9);
      *(v194 + 10) = v242;
    }

    v193 = v272;
    v191 = v273;
  }

  else
  {
    v204 = *(v195 + 11);
    *(v194 + 10) = *(v195 + 10);
    *(v194 + 11) = v204;
    v205 = *(v195 + 13);
    *(v194 + 12) = *(v195 + 12);
    *(v194 + 13) = v205;
    v206 = *(v195 + 7);
    *(v194 + 6) = *(v195 + 6);
    *(v194 + 7) = v206;
    v207 = *(v195 + 9);
    *(v194 + 8) = *(v195 + 8);
    *(v194 + 9) = v207;
    v208 = *(v195 + 3);
    *(v194 + 2) = *(v195 + 2);
    *(v194 + 3) = v208;
    v209 = *(v195 + 5);
    *(v194 + 4) = *(v195 + 4);
    *(v194 + 5) = v209;
    v210 = *(v195 + 1);
    *v194 = *v195;
    *(v194 + 1) = v210;
  }

  *(v194 + 28) = *(v195 + 28);
LABEL_149:
  v243 = v274[35];
  v244 = v274[36];
  v245 = v191 + v243;
  v246 = v193 + v243;
  *v245 = *v246;
  v247 = *(v246 + 2);
  *(v245 + 1) = *(v246 + 1);
  *(v245 + 2) = v247;
  *(v191 + v244) = *(v193 + v244);
  v248 = v274[37];
  v249 = (v191 + v248);
  v250 = (v193 + v248);
  v251 = *(v193 + v248 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v251 > 1)
  {
    *v249 = *v250;
    v249[1] = v251;
    v253 = v250[3];
    v249[2] = v250[2];
    v249[3] = v253;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v252 = *(v250 + 1);
    *v249 = *v250;
    *(v249 + 1) = v252;
  }

  v254 = v274[38];
  v255 = (v191 + v254);
  v256 = v193 + v254;
  v257 = *(v193 + v254);
  if (v257)
  {
    v258 = *(v256 + 1);
    v259 = *(v256 + 2);
    *v255 = v257;
    v255[1] = v258;
    v255[2] = v259;
    v260 = v257;
    sub_21DBF8E0C();
  }

  else
  {
    *v255 = *v256;
    v255[2] = *(v256 + 2);
  }

  v261 = v274[39];
  v262 = v274[40];
  v263 = (v191 + v261);
  v264 = (v193 + v261);
  v265 = v264[1];
  *v263 = *v264;
  v263[1] = v265;
  *(v191 + v262) = *(v193 + v262);
  v266 = v274[42];
  *(v191 + v274[41]) = *(v193 + v274[41]);
  v267 = *(v193 + v266);
  *(v191 + v266) = v267;
  *(v191 + v274[43]) = *(v193 + v274[43]);
  *(v191 + v274[45]) = *(v193 + v274[45]);
  sub_21DBF8E0C();
  v268 = v267;
  return v191;
}

void **assignWithCopy for TTRRemindersListViewModel.Reminder(void **a1, void **a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
              v39 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v4 = a2;
              v39(a1 + v37, a2 + v37, v38);
              v3 = a3;
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v41 = (a1 + v40);
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
              v47 = sub_21DBF563C();
              (*(*(v47 - 8) + 16))(a1, v4, v47);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v48 + 20)) = *(v4 + *(v48 + 20));
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

LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
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
        v101 = *(v4 + v13);
        *(a1 + v13) = v101;
        v102 = v101;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
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
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v103 = sub_21DBF563C();
      (*(*(v103 - 8) + 16))(a1 + v13, v4 + v13, v103);
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
          (*(*(v49 - 8) + 16))(a1, v4, v49);
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
        *a1 = *v4;
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
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = v4 + v56;
      if (*(v4 + v56 + 8))
      {
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v60 = *(v58 + 2);
        v59 = *(v58 + 3);
        v61 = *(v58 + 4);
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v331 = *(v58 + 7);
        v64 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v59, v61, v62, v63, v331, v64);
        *(v57 + 2) = v60;
        *(v57 + 3) = v59;
        *(v57 + 4) = v61;
        *(v57 + 5) = v62;
        *(v57 + 6) = v63;
        *(v57 + 7) = v331;
        v57[64] = v64;
        v57[65] = v58[65];
        v57[66] = v58[66];
        v57[67] = v58[67];
        v57[68] = v58[68];
        v65 = v58[120];
        if (v65 == 255)
        {
          v78 = *(v58 + 72);
          v79 = *(v58 + 88);
          v80 = *(v58 + 104);
          v57[120] = v58[120];
          *(v57 + 104) = v80;
          *(v57 + 88) = v79;
          *(v57 + 72) = v78;
        }

        else
        {
          v66 = *(v58 + 9);
          v67 = *(v58 + 10);
          v68 = *(v58 + 12);
          v332 = *(v58 + 11);
          v69 = *(v58 + 13);
          v70 = *(v58 + 14);
          v71 = v65 & 1;
          sub_21D0FB960(v66, v67, v332, v68, v69, v70, v65 & 1);
          *(v57 + 9) = v66;
          *(v57 + 10) = v67;
          *(v57 + 11) = v332;
          *(v57 + 12) = v68;
          *(v57 + 13) = v69;
          *(v57 + 14) = v70;
          v57[120] = v71;
        }

        v4 = a2;
        v3 = a3;
        v57[121] = v58[121];
        goto LABEL_97;
      }

LABEL_94:
      v72 = *v58;
      v73 = *(v58 + 1);
      v74 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v74;
      *v57 = v72;
      *(v57 + 1) = v73;
      v75 = *(v58 + 4);
      v76 = *(v58 + 5);
      v77 = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      *(v57 + 5) = v76;
      *(v57 + 6) = v77;
      *(v57 + 4) = v75;
      v3 = a3;
LABEL_97:
      *(a1 + v55[6]) = *(v4 + v55[6]);
      *(a1 + v55[7]) = *(v4 + v55[7]);
      *(a1 + v55[8]) = *(v4 + v55[8]);
      *(a1 + v55[9]) = *(v4 + v55[9]);
      *(a1 + v55[10]) = *(v4 + v55[10]);
      v81 = v55[11];
      v82 = *(v4 + v81);
      *(a1 + v81) = v82;
      v83 = v82;
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
        (*(*(v52 - 8) + 16))(a1, v4, v52);
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
      *a1 = *v4;
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
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v55[5];
    v57 = a1 + v84;
    v58 = v4 + v84;
    if (*(v4 + v84 + 8))
    {
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v85 = *(v58 + 2);
      v86 = *(v58 + 3);
      v87 = *(v58 + 4);
      v88 = *(v58 + 5);
      v90 = *(v58 + 6);
      v89 = *(v58 + 7);
      v333 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v85, v86, v87, v88, v90, v89, v333);
      *(v57 + 2) = v85;
      *(v57 + 3) = v86;
      *(v57 + 4) = v87;
      *(v57 + 5) = v88;
      *(v57 + 6) = v90;
      *(v57 + 7) = v89;
      v57[64] = v333;
      v57[65] = v58[65];
      v57[66] = v58[66];
      v57[67] = v58[67];
      v57[68] = v58[68];
      v91 = v58[120];
      if (v91 == 255)
      {
        v98 = *(v58 + 72);
        v99 = *(v58 + 88);
        v100 = *(v58 + 104);
        v57[120] = v58[120];
        *(v57 + 104) = v100;
        *(v57 + 88) = v99;
        *(v57 + 72) = v98;
      }

      else
      {
        v92 = *(v58 + 9);
        v93 = *(v58 + 10);
        v94 = *(v58 + 12);
        v334 = *(v58 + 11);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v91 & 1;
        sub_21D0FB960(v92, v93, v334, v94, v95, v96, v91 & 1);
        *(v57 + 9) = v92;
        *(v57 + 10) = v93;
        *(v57 + 11) = v334;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      v4 = a2;
      v3 = a3;
      v57[121] = v58[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  v104 = v3[5];
  v105 = *(v4 + v104);
  v106 = *(a1 + v104);
  *(a1 + v104) = v105;
  v107 = v105;

  v108 = v3[6];
  v109 = a1 + v108;
  v110 = v4 + v108;
  *v109 = *(v4 + v108);
  v109[1] = *(v4 + v108 + 1);
  v109[2] = *(v4 + v108 + 2);
  *(v109 + 1) = *(v4 + v108 + 8);
  *(v109 + 2) = *(v4 + v108 + 16);
  sub_21DBF8E0C();

  v109[24] = v110[24];
  v109[25] = v110[25];
  v111 = v3[7];
  v112 = *(a1 + v111);
  v113 = *(v4 + v111);
  *(a1 + v111) = v113;
  v114 = v113;

  *(a1 + v3[8]) = *(v4 + v3[8]);
  v115 = v3[9];
  v116 = (a1 + v115);
  v117 = (v4 + v115);
  *v116 = *v117;
  v116[1] = v117[1];
  sub_21DBF8E0C();

  v118 = v3[10];
  v119 = (a1 + v118);
  v120 = (v4 + v118);
  *v119 = *v120;
  v119[1] = v120[1];
  sub_21DBF8E0C();

  v121 = v3[11];
  v122 = a1 + v121;
  v123 = v4 + v121;
  v124 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v125 = *(v124 - 1);
  v126 = *(v125 + 48);
  v127 = v126(v122, 1, v124);
  v128 = v126(v123, 1, v124);
  if (!v127)
  {
    if (v128)
    {
      sub_21D107038(v122, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
      goto LABEL_135;
    }

    *v122 = *v123;
    *(v122 + 1) = *(v123 + 1);
    sub_21DBF8E0C();

    *(v122 + 2) = *(v123 + 2);
    *(v122 + 3) = *(v123 + 3);
    sub_21DBF8E0C();

    v138 = v124[6];
    v139 = sub_21DBF563C();
    (*(*(v139 - 8) + 24))(&v122[v138], &v123[v138], v139);
    v140 = v124[7];
    v141 = sub_21DBF5C4C();
    v142 = *(v141 - 8);
    v143 = *(v142 + 48);
    v144 = v143(&v122[v140], 1, v141);
    v145 = v143(&v123[v140], 1, v141);
    if (v144)
    {
      if (!v145)
      {
        (*(v142 + 16))(&v122[v140], &v123[v140], v141);
        (*(v142 + 56))(&v122[v140], 0, 1, v141);
LABEL_144:
        v136 = a2;
        v137 = a3;
        v122[v124[8]] = v123[v124[8]];
        v122[v124[9]] = v123[v124[9]];
        v122[v124[10]] = v123[v124[10]];
        goto LABEL_145;
      }
    }

    else
    {
      if (!v145)
      {
        (*(v142 + 24))(&v122[v140], &v123[v140], v141);
        goto LABEL_144;
      }

      (*(v142 + 8))(&v122[v140], v141);
    }

    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&v122[v140], &v123[v140], *(*(v146 - 8) + 64));
    goto LABEL_144;
  }

  if (v128)
  {
LABEL_135:
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    memcpy(v122, v123, *(*(v135 - 8) + 64));
    v136 = a2;
    v137 = a3;
    goto LABEL_145;
  }

  *v122 = *v123;
  *(v122 + 1) = *(v123 + 1);
  *(v122 + 2) = *(v123 + 2);
  *(v122 + 3) = *(v123 + 3);
  v129 = v124[6];
  v130 = sub_21DBF563C();
  v335 = *(*(v130 - 8) + 16);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v335(&v122[v129], &v123[v129], v130);
  v131 = v124[7];
  v132 = sub_21DBF5C4C();
  v133 = *(v132 - 8);
  if ((*(v133 + 48))(&v123[v131], 1, v132))
  {
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&v122[v131], &v123[v131], *(*(v134 - 8) + 64));
  }

  else
  {
    (*(v133 + 16))(&v122[v131], &v123[v131], v132);
    (*(v133 + 56))(&v122[v131], 0, 1, v132);
  }

  v137 = a3;
  v122[v124[8]] = v123[v124[8]];
  v122[v124[9]] = v123[v124[9]];
  v122[v124[10]] = v123[v124[10]];
  (*(v125 + 56))(v122, 0, 1, v124);
  v136 = a2;
LABEL_145:
  v147 = v137[12];
  v148 = (a1 + v147);
  v149 = (v136 + v147);
  *v148 = *v149;
  v148[1] = v149[1];
  sub_21DBF8E0C();

  v150 = v137[13];
  v151 = a1 + v150;
  v152 = v136 + v150;
  v153 = *(a1 + v150 + 24);
  v154 = *(v136 + v150 + 24);
  if (v153)
  {
    if (v154)
    {
      v155 = *v151;
      v156 = *v152;
      *v151 = *v152;
      v157 = v156;

      v158 = *(v151 + 1);
      v159 = *(v152 + 1);
      *(v151 + 1) = v159;
      v160 = v159;

      *(v151 + 2) = *(v152 + 2);
      *(v151 + 3) = *(v152 + 3);
      sub_21DBF8E0C();

      *(v151 + 4) = *(v152 + 4);
      *(v151 + 5) = *(v152 + 5);
      sub_21DBF8E0C();

      v151[48] = v152[48];
    }

    else
    {
      sub_21D30D95C(v151);
      v166 = *(v152 + 1);
      v165 = *(v152 + 2);
      v167 = *v152;
      v151[48] = v152[48];
      *(v151 + 1) = v166;
      *(v151 + 2) = v165;
      *v151 = v167;
    }
  }

  else if (v154)
  {
    v161 = *v152;
    *v151 = *v152;
    v162 = *(v152 + 1);
    *(v151 + 1) = v162;
    *(v151 + 2) = *(v152 + 2);
    *(v151 + 3) = *(v152 + 3);
    *(v151 + 4) = *(v152 + 4);
    *(v151 + 5) = *(v152 + 5);
    v151[48] = v152[48];
    v163 = v161;
    v164 = v162;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v168 = *v152;
    v169 = *(v152 + 1);
    v170 = *(v152 + 2);
    v151[48] = v152[48];
    *(v151 + 1) = v169;
    *(v151 + 2) = v170;
    *v151 = v168;
  }

  *(a1 + v137[14]) = *(v136 + v137[14]);
  v171 = v137[15];
  v172 = *(a1 + v171);
  v173 = *(v136 + v171);
  *(a1 + v171) = v173;
  v174 = v173;

  *(a1 + v137[16]) = *(v136 + v137[16]);
  sub_21DBF8E0C();

  *(a1 + v137[17]) = *(v136 + v137[17]);
  sub_21DBF8E0C();

  *(a1 + v137[18]) = *(v136 + v137[18]);
  *(a1 + v137[19]) = *(v136 + v137[19]);
  v175 = v137[20];
  v176 = *(v136 + v175);
  v177 = *(a1 + v175);
  *(a1 + v175) = v176;
  v178 = v176;

  v179 = v137[21];
  v180 = *(v136 + v179);
  v181 = *(a1 + v179);
  *(a1 + v179) = v180;
  v182 = v180;

  v183 = v137[22];
  v184 = *(v136 + v183);
  v185 = *(a1 + v183);
  *(a1 + v183) = v184;
  v186 = v184;

  v187 = v137[23];
  v188 = a1 + v187;
  v189 = v136 + v187;
  v190 = *v189;
  v188[8] = v189[8];
  *v188 = v190;
  *(a1 + v137[24]) = *(v136 + v137[24]);
  *(a1 + v137[25]) = *(v136 + v137[25]);
  *(a1 + v137[26]) = *(v136 + v137[26]);
  *(a1 + v137[27]) = *(v136 + v137[27]);
  *(a1 + v137[28]) = *(v136 + v137[28]);
  *(a1 + v137[29]) = *(v136 + v137[29]);
  v191 = v137[30];
  v192 = (a1 + v191);
  v193 = (v136 + v191);
  *v192 = *v193;
  v192[1] = v193[1];
  sub_21DBF8E0C();

  v194 = v137[31];
  v195 = a1 + v194;
  v196 = v136 + v194;
  *v195 = *(v136 + v194);
  *(v195 + 1) = *(v136 + v194 + 8);
  sub_21DBF8E0C();

  v195[16] = v196[16];
  v197 = v137[32];
  v198 = (a1 + v197);
  v199 = (v136 + v197);
  v200 = *(a1 + v197 + 8);
  v201 = *(v136 + v197 + 8);
  if (v200)
  {
    if (v201)
    {
      *v198 = *v199;
      v198[1] = v199[1];
      sub_21DBF8E0C();

      v202 = v198[2];
      v203 = v199[2];
      v198[2] = v203;
      v204 = v203;
    }

    else
    {
      sub_21D122250(v198);
      v207 = v199[2];
      *v198 = *v199;
      v198[2] = v207;
    }
  }

  else if (v201)
  {
    *v198 = *v199;
    v198[1] = v199[1];
    v205 = v199[2];
    v198[2] = v205;
    sub_21DBF8E0C();
    v206 = v205;
  }

  else
  {
    v208 = *v199;
    v198[2] = v199[2];
    *v198 = v208;
  }

  *(a1 + v137[33]) = *(v136 + v137[33]);
  v209 = v137[34];
  v210 = a1 + v209;
  v211 = v136 + v209;
  v212 = *(a1 + v209);
  v213 = *(v136 + v209);
  if (v212 == 1)
  {
    if (v213)
    {
      if (v213 == 1)
      {
        v214 = *v211;
        v215 = *(v211 + 2);
        *(v210 + 1) = *(v211 + 1);
        *(v210 + 2) = v215;
        *v210 = v214;
        v216 = *(v211 + 3);
        v217 = *(v211 + 4);
        v218 = *(v211 + 6);
        *(v210 + 5) = *(v211 + 5);
        *(v210 + 6) = v218;
        *(v210 + 3) = v216;
        *(v210 + 4) = v217;
        v219 = *(v211 + 7);
        v220 = *(v211 + 8);
        v221 = *(v211 + 10);
        *(v210 + 9) = *(v211 + 9);
        *(v210 + 10) = v221;
        *(v210 + 7) = v219;
        *(v210 + 8) = v220;
        v222 = *(v211 + 11);
        v223 = *(v211 + 12);
        v224 = *(v211 + 13);
        *(v210 + 28) = *(v211 + 28);
        *(v210 + 12) = v223;
        *(v210 + 13) = v224;
        *(v210 + 11) = v222;
        goto LABEL_183;
      }

      goto LABEL_171;
    }
  }

  else
  {
    if (v213 == 1)
    {
      sub_21D30DAAC(v210);
      v226 = *(v211 + 1);
      v225 = *(v211 + 2);
      *v210 = *v211;
      *(v210 + 1) = v226;
      *(v210 + 2) = v225;
      v227 = *(v211 + 6);
      v229 = *(v211 + 3);
      v228 = *(v211 + 4);
      *(v210 + 5) = *(v211 + 5);
      *(v210 + 6) = v227;
      *(v210 + 3) = v229;
      *(v210 + 4) = v228;
      v230 = *(v211 + 10);
      v232 = *(v211 + 7);
      v231 = *(v211 + 8);
      *(v210 + 9) = *(v211 + 9);
      *(v210 + 10) = v230;
      *(v210 + 7) = v232;
      *(v210 + 8) = v231;
      v234 = *(v211 + 12);
      v233 = *(v211 + 13);
      v235 = *(v211 + 11);
      *(v210 + 28) = *(v211 + 28);
      *(v210 + 12) = v234;
      *(v210 + 13) = v233;
      *(v210 + 11) = v235;
      goto LABEL_183;
    }

    if (v212)
    {
      if (v213)
      {
        *v210 = v213;
        v236 = v213;

        v237 = *(v210 + 1);
        v238 = *(v211 + 1);
        *(v210 + 1) = v238;
        v239 = v238;

        *(v210 + 2) = *(v211 + 2);
        *(v210 + 3) = *(v211 + 3);
        sub_21DBF8E0C();

        *(v210 + 4) = *(v211 + 4);
        *(v210 + 5) = *(v211 + 5);
        sub_21DBF8E0C();

        *(v210 + 6) = *(v211 + 6);
        *(v210 + 7) = *(v211 + 7);
        sub_21DBF8E0C();

        *(v210 + 8) = *(v211 + 8);
        *(v210 + 9) = *(v211 + 9);
        sub_21DBF8E0C();

        *(v210 + 10) = *(v211 + 10);
        *(v210 + 11) = *(v211 + 11);
        sub_21DBF8E0C();

        v210[96] = v211[96];
        v240 = *(v210 + 13);
        v241 = *(v211 + 13);
        *(v210 + 13) = v241;
        v242 = v241;

        v243 = v210 + 112;
        v244 = *(v210 + 14);
        v246 = v211 + 112;
        v245 = *(v211 + 14);
        if (v244)
        {
          if (v245)
          {
            *(v210 + 14) = v245;
            v247 = v245;

            v248 = *(v210 + 15);
            v249 = *(v211 + 15);
            *(v210 + 15) = v249;
            v250 = v249;

            *(v210 + 16) = *(v211 + 16);
            *(v210 + 17) = *(v211 + 17);
            sub_21DBF8E0C();

            *(v210 + 18) = *(v211 + 18);
            *(v210 + 19) = *(v211 + 19);
            sub_21DBF8E0C();

            *(v210 + 20) = *(v211 + 20);
            *(v210 + 21) = *(v211 + 21);
            sub_21DBF8E0C();

            *(v210 + 22) = *(v211 + 22);
            *(v210 + 23) = *(v211 + 23);
            sub_21DBF8E0C();

            *(v210 + 24) = *(v211 + 24);
            *(v210 + 25) = *(v211 + 25);
            sub_21DBF8E0C();

            v210[208] = v211[208];
            v251 = *(v210 + 27);
            v252 = *(v211 + 27);
            *(v210 + 27) = v252;
            v253 = v252;
          }

          else
          {
            sub_21D30DA04((v210 + 112));
            v295 = *(v211 + 8);
            v294 = *(v211 + 9);
            *v243 = *v246;
            *(v210 + 8) = v295;
            *(v210 + 9) = v294;
            v296 = *(v211 + 13);
            v298 = *(v211 + 10);
            v297 = *(v211 + 11);
            *(v210 + 12) = *(v211 + 12);
            *(v210 + 13) = v296;
            *(v210 + 10) = v298;
            *(v210 + 11) = v297;
          }
        }

        else if (v245)
        {
          *(v210 + 14) = v245;
          v289 = *(v211 + 15);
          *(v210 + 15) = v289;
          *(v210 + 16) = *(v211 + 16);
          *(v210 + 17) = *(v211 + 17);
          *(v210 + 18) = *(v211 + 18);
          *(v210 + 19) = *(v211 + 19);
          *(v210 + 20) = *(v211 + 20);
          *(v210 + 21) = *(v211 + 21);
          *(v210 + 22) = *(v211 + 22);
          *(v210 + 23) = *(v211 + 23);
          *(v210 + 24) = *(v211 + 24);
          *(v210 + 25) = *(v211 + 25);
          v210[208] = v211[208];
          v290 = *(v211 + 27);
          *(v210 + 27) = v290;
          v291 = v245;
          v292 = v289;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v136 = a2;
          sub_21DBF8E0C();
          v137 = a3;
          sub_21DBF8E0C();
          v293 = v290;
        }

        else
        {
          v299 = *v246;
          v300 = *(v211 + 9);
          *(v210 + 8) = *(v211 + 8);
          *(v210 + 9) = v300;
          *v243 = v299;
          v301 = *(v211 + 10);
          v302 = *(v211 + 11);
          v303 = *(v211 + 13);
          *(v210 + 12) = *(v211 + 12);
          *(v210 + 13) = v303;
          *(v210 + 10) = v301;
          *(v210 + 11) = v302;
        }
      }

      else
      {
        sub_21D30DA58(v210);
        v279 = *(v211 + 1);
        *v210 = *v211;
        *(v210 + 1) = v279;
        v280 = *(v211 + 5);
        v282 = *(v211 + 2);
        v281 = *(v211 + 3);
        *(v210 + 4) = *(v211 + 4);
        *(v210 + 5) = v280;
        *(v210 + 2) = v282;
        *(v210 + 3) = v281;
        v283 = *(v211 + 9);
        v285 = *(v211 + 6);
        v284 = *(v211 + 7);
        *(v210 + 8) = *(v211 + 8);
        *(v210 + 9) = v283;
        *(v210 + 6) = v285;
        *(v210 + 7) = v284;
        v286 = *(v211 + 13);
        v288 = *(v211 + 10);
        v287 = *(v211 + 11);
        *(v210 + 12) = *(v211 + 12);
        *(v210 + 13) = v286;
        *(v210 + 10) = v288;
        *(v210 + 11) = v287;
      }

      goto LABEL_182;
    }

    if (v213)
    {
LABEL_171:
      *v210 = v213;
      v254 = *(v211 + 1);
      *(v210 + 1) = v254;
      *(v210 + 2) = *(v211 + 2);
      *(v210 + 3) = *(v211 + 3);
      *(v210 + 4) = *(v211 + 4);
      *(v210 + 5) = *(v211 + 5);
      *(v210 + 6) = *(v211 + 6);
      *(v210 + 7) = *(v211 + 7);
      *(v210 + 8) = *(v211 + 8);
      *(v210 + 9) = *(v211 + 9);
      *(v210 + 10) = *(v211 + 10);
      *(v210 + 11) = *(v211 + 11);
      v210[96] = v211[96];
      v255 = *(v211 + 13);
      *(v210 + 13) = v255;
      v336 = *(v211 + 14);
      v256 = v213;
      v257 = v254;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v258 = v255;
      if (v336)
      {
        *(v210 + 14) = v336;
        v259 = *(v211 + 15);
        *(v210 + 15) = v259;
        *(v210 + 16) = *(v211 + 16);
        *(v210 + 17) = *(v211 + 17);
        *(v210 + 18) = *(v211 + 18);
        *(v210 + 19) = *(v211 + 19);
        *(v210 + 20) = *(v211 + 20);
        *(v210 + 21) = *(v211 + 21);
        *(v210 + 22) = *(v211 + 22);
        *(v210 + 23) = *(v211 + 23);
        *(v210 + 24) = *(v211 + 24);
        *(v210 + 25) = *(v211 + 25);
        v210[208] = v211[208];
        v260 = *(v211 + 27);
        *(v210 + 27) = v260;
        v261 = v336;
        v262 = v259;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v263 = v260;
      }

      else
      {
        v274 = *(v211 + 7);
        v275 = *(v211 + 9);
        *(v210 + 8) = *(v211 + 8);
        *(v210 + 9) = v275;
        *(v210 + 7) = v274;
        v276 = *(v211 + 10);
        v277 = *(v211 + 11);
        v278 = *(v211 + 13);
        *(v210 + 12) = *(v211 + 12);
        *(v210 + 13) = v278;
        *(v210 + 10) = v276;
        *(v210 + 11) = v277;
      }

      v136 = a2;
      v137 = a3;
      goto LABEL_182;
    }
  }

  v264 = *(v211 + 1);
  *v210 = *v211;
  *(v210 + 1) = v264;
  v265 = *(v211 + 2);
  v266 = *(v211 + 3);
  v267 = *(v211 + 5);
  *(v210 + 4) = *(v211 + 4);
  *(v210 + 5) = v267;
  *(v210 + 2) = v265;
  *(v210 + 3) = v266;
  v268 = *(v211 + 6);
  v269 = *(v211 + 7);
  v270 = *(v211 + 9);
  *(v210 + 8) = *(v211 + 8);
  *(v210 + 9) = v270;
  *(v210 + 6) = v268;
  *(v210 + 7) = v269;
  v271 = *(v211 + 10);
  v272 = *(v211 + 11);
  v273 = *(v211 + 13);
  *(v210 + 12) = *(v211 + 12);
  *(v210 + 13) = v273;
  *(v210 + 10) = v271;
  *(v210 + 11) = v272;
LABEL_182:
  *(v210 + 28) = *(v211 + 28);
LABEL_183:
  v304 = v137[35];
  v305 = a1 + v304;
  v306 = v136 + v304;
  *v305 = *(v136 + v304);
  *(v305 + 1) = *(v136 + v304 + 8);
  sub_21DBF8E0C();

  *(v305 + 2) = *(v306 + 2);
  sub_21DBF8E0C();

  *(a1 + v137[36]) = *(v136 + v137[36]);
  v307 = v137[37];
  v308 = a1 + v307;
  v309 = v136 + v307;
  v310 = *(a1 + v307 + 8);
  v311 = *(v136 + v307 + 8);
  if (v310 == 1)
  {
    if (v311 <= 1)
    {
LABEL_185:
      v312 = *(v309 + 1);
      *v308 = *v309;
      *(v308 + 1) = v312;
      goto LABEL_194;
    }

    goto LABEL_193;
  }

  if (v311 == 1)
  {
    sub_21D30DB00(v308);
    goto LABEL_188;
  }

  if (v310)
  {
    if (v311)
    {
      *v308 = *v309;
      *(v308 + 1) = *(v309 + 1);
      sub_21DBF8E0C();

      *(v308 + 2) = *(v309 + 2);
      *(v308 + 3) = *(v309 + 3);
      sub_21DBF8E0C();

      goto LABEL_194;
    }

    sub_21D0CF7E0(v308, &qword_27CE5A6F0, &qword_21DC100F0);
LABEL_188:
    v313 = *(v309 + 1);
    *v308 = *v309;
    *(v308 + 1) = v313;
    goto LABEL_194;
  }

  if (!v311)
  {
    goto LABEL_185;
  }

LABEL_193:
  *v308 = *v309;
  *(v308 + 1) = *(v309 + 1);
  *(v308 + 2) = *(v309 + 2);
  *(v308 + 3) = *(v309 + 3);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
LABEL_194:
  v314 = v137[38];
  v315 = (a1 + v314);
  v316 = v136 + v314;
  v317 = *(a1 + v314);
  v318 = *(v136 + v314);
  if (v317)
  {
    if (v318)
    {
      *v315 = v318;
      v319 = v318;

      v315[1] = *(v316 + 1);
      v315[2] = *(v316 + 2);
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D30DB54(v315);
      v321 = *(v316 + 2);
      *v315 = *v316;
      v315[2] = v321;
    }
  }

  else if (v318)
  {
    *v315 = v318;
    v315[1] = *(v316 + 1);
    v315[2] = *(v316 + 2);
    v320 = v318;
    sub_21DBF8E0C();
  }

  else
  {
    v322 = *v316;
    v315[2] = *(v316 + 2);
    *v315 = v322;
  }

  v323 = v137[39];
  v324 = (a1 + v323);
  v325 = (v136 + v323);
  *v324 = *v325;
  v324[1] = v325[1];
  sub_21DBF8E0C();

  *(a1 + v137[40]) = *(v136 + v137[40]);
  *(a1 + v137[41]) = *(v136 + v137[41]);
  v326 = v137[42];
  v327 = *(a1 + v326);
  v328 = *(v136 + v326);
  *(a1 + v326) = v328;
  v329 = v328;

  *(a1 + v137[43]) = *(v136 + v137[43]);
  *(a1 + v137[45]) = *(v136 + v137[45]);
  return a1;
}

void *initializeWithTake for TTRRemindersListViewModel.Reminder(void *a1, void *a2, int *a3)
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
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  *v43 = *v44;
  *(v43 + 10) = *(v44 + 10);
  v45 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v45) = *(a2 + v45);
  v46 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v46) = *(a2 + v46);
  v47 = a3[11];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v51 = *(v50 - 1);
  if ((*(v51 + 48))(v49, 1, v50))
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    memcpy(v48, v49, *(*(v52 - 8) + 64));
  }

  else
  {
    v53 = v49[1];
    *v48 = *v49;
    v48[1] = v53;
    v54 = v50[6];
    v55 = sub_21DBF563C();
    (*(*(v55 - 8) + 32))(v48 + v54, v49 + v54, v55);
    v56 = v50[7];
    v57 = sub_21DBF5C4C();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v49 + v56, 1, v57))
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      memcpy(v48 + v56, v49 + v56, *(*(v59 - 8) + 64));
    }

    else
    {
      (*(v58 + 32))(v48 + v56, v49 + v56, v57);
      (*(v58 + 56))(v48 + v56, 0, 1, v57);
    }

    *(v48 + v50[8]) = *(v49 + v50[8]);
    *(v48 + v50[9]) = *(v49 + v50[9]);
    *(v48 + v50[10]) = *(v49 + v50[10]);
    (*(v51 + 56))(v48, 0, 1, v50);
  }

  v60 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v61 = a1 + v60;
  v62 = a2 + v60;
  v63 = *(v62 + 1);
  *v61 = *v62;
  *(v61 + 1) = v63;
  *(v61 + 2) = *(v62 + 2);
  v61[48] = v62[48];
  v64 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v64) = *(a2 + v64);
  v65 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v65) = *(a2 + v65);
  v66 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + v66) = *(a2 + v66);
  v67 = a3[21];
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + v67) = *(a2 + v67);
  v68 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  v69 = a1 + v68;
  v70 = a2 + v68;
  *v69 = *v70;
  v69[8] = v70[8];
  v71 = a3[25];
  *(a1 + a3[24]) = *(a2 + a3[24]);
  *(a1 + v71) = *(a2 + v71);
  v72 = a3[27];
  *(a1 + a3[26]) = *(a2 + a3[26]);
  *(a1 + v72) = *(a2 + v72);
  v73 = a3[29];
  *(a1 + a3[28]) = *(a2 + a3[28]);
  *(a1 + v73) = *(a2 + v73);
  v74 = a3[31];
  *(a1 + a3[30]) = *(a2 + a3[30]);
  v75 = a1 + v74;
  v76 = a2 + v74;
  *v75 = *v76;
  v75[16] = v76[16];
  v77 = a3[32];
  v78 = a3[33];
  v79 = a1 + v77;
  v80 = a2 + v77;
  *v79 = *v80;
  *(v79 + 2) = *(v80 + 2);
  *(a1 + v78) = *(a2 + v78);
  v81 = a3[34];
  v82 = a3[35];
  v83 = a1 + v81;
  v84 = a2 + v81;
  *(v83 + 28) = *(v84 + 28);
  v85 = *(v84 + 13);
  *(v83 + 12) = *(v84 + 12);
  *(v83 + 13) = v85;
  v86 = *(v84 + 9);
  *(v83 + 8) = *(v84 + 8);
  *(v83 + 9) = v86;
  v87 = *(v84 + 11);
  *(v83 + 10) = *(v84 + 10);
  *(v83 + 11) = v87;
  v88 = *(v84 + 5);
  *(v83 + 4) = *(v84 + 4);
  *(v83 + 5) = v88;
  v89 = *(v84 + 7);
  *(v83 + 6) = *(v84 + 6);
  *(v83 + 7) = v89;
  v90 = *(v84 + 1);
  *v83 = *v84;
  *(v83 + 1) = v90;
  v91 = *(v84 + 3);
  *(v83 + 2) = *(v84 + 2);
  *(v83 + 3) = v91;
  v92 = a1 + v82;
  v93 = a2 + v82;
  *v92 = *v93;
  *(v92 + 2) = *(v93 + 2);
  v94 = a3[37];
  *(a1 + a3[36]) = *(a2 + a3[36]);
  v95 = (a1 + v94);
  v96 = (a2 + v94);
  v97 = v96[1];
  *v95 = *v96;
  v95[1] = v97;
  v98 = a3[38];
  v99 = a3[39];
  v100 = a1 + v98;
  v101 = a2 + v98;
  *v100 = *v101;
  *(v100 + 2) = *(v101 + 2);
  *(a1 + v99) = *(a2 + v99);
  v102 = a3[41];
  *(a1 + a3[40]) = *(a2 + a3[40]);
  *(a1 + v102) = *(a2 + v102);
  v103 = a3[43];
  *(a1 + a3[42]) = *(a2 + a3[42]);
  *(a1 + v103) = *(a2 + v103);
  *(a1 + a3[45]) = *(a2 + a3[45]);
  return a1;
}

void *assignWithTake for TTRRemindersListViewModel.Reminder(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
  v42 = a3[5];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[6];
  v45 = a1 + v44;
  v46 = a2 + v44;
  *v45 = *(a2 + v44);
  v45[1] = *(a2 + v44 + 1);
  v45[2] = *(a2 + v44 + 2);
  v47 = *(a2 + v44 + 16);
  *(v45 + 1) = *(a2 + v44 + 8);
  *(v45 + 2) = v47;

  v45[24] = v46[24];
  v45[25] = v46[25];
  v48 = a3[7];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);

  v50 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v51 = (a1 + v50);
  v52 = (a2 + v50);
  v54 = *v52;
  v53 = v52[1];
  *v51 = v54;
  v51[1] = v53;

  v55 = a3[10];
  v56 = (a1 + v55);
  v57 = (a2 + v55);
  v59 = *v57;
  v58 = v57[1];
  *v56 = v59;
  v56[1] = v58;

  v60 = a3[11];
  v61 = a1 + v60;
  v62 = a2 + v60;
  v63 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v64 = *(v63 - 1);
  v65 = *(v64 + 48);
  v66 = v65(v61, 1, v63);
  v67 = v65(v62, 1, v63);
  if (!v66)
  {
    if (v67)
    {
      sub_21D107038(v61, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
      goto LABEL_95;
    }

    v76 = *(v62 + 1);
    *v61 = *v62;
    *(v61 + 1) = v76;

    v77 = *(v62 + 3);
    *(v61 + 2) = *(v62 + 2);
    *(v61 + 3) = v77;

    v78 = v63[6];
    v79 = sub_21DBF563C();
    (*(*(v79 - 8) + 40))(&v61[v78], &v62[v78], v79);
    v80 = v63[7];
    v81 = sub_21DBF5C4C();
    v191 = *(v81 - 8);
    v82 = *(v191 + 48);
    v192 = v82(&v61[v80], 1, v81);
    v83 = v82(&v62[v80], 1, v81);
    if (v192)
    {
      if (!v83)
      {
        (*(v191 + 32))(&v61[v80], &v62[v80], v81);
        (*(v191 + 56))(&v61[v80], 0, 1, v81);
        goto LABEL_106;
      }

      v84 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70) - 8) + 64);
      v85 = &v61[v80];
      v86 = &v62[v80];
    }

    else
    {
      if (!v83)
      {
        (*(v191 + 40))(&v61[v80], &v62[v80], v81);
        goto LABEL_106;
      }

      (*(v191 + 8))(&v61[v80], v81);
      v84 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70) - 8) + 64);
      v85 = &v61[v80];
      v86 = &v62[v80];
    }

    memcpy(v85, v86, v84);
LABEL_106:
    v61[v63[8]] = v62[v63[8]];
    v61[v63[9]] = v62[v63[9]];
    v61[v63[10]] = v62[v63[10]];
    goto LABEL_107;
  }

  if (v67)
  {
LABEL_95:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
    memcpy(v61, v62, *(*(v75 - 8) + 64));
    goto LABEL_107;
  }

  v68 = *(v62 + 1);
  *v61 = *v62;
  *(v61 + 1) = v68;
  v69 = v63[6];
  v70 = sub_21DBF563C();
  (*(*(v70 - 8) + 32))(&v61[v69], &v62[v69], v70);
  v71 = v63[7];
  v72 = sub_21DBF5C4C();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(&v62[v71], 1, v72))
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&v61[v71], &v62[v71], *(*(v74 - 8) + 64));
  }

  else
  {
    (*(v73 + 32))(&v61[v71], &v62[v71], v72);
    (*(v73 + 56))(&v61[v71], 0, 1, v72);
  }

  v61[v63[8]] = v62[v63[8]];
  v61[v63[9]] = v62[v63[9]];
  v61[v63[10]] = v62[v63[10]];
  (*(v64 + 56))(v61, 0, 1, v63);
LABEL_107:
  v87 = a3[12];
  v88 = (a1 + v87);
  v89 = (a2 + v87);
  v91 = *v89;
  v90 = v89[1];
  *v88 = v91;
  v88[1] = v90;

  v92 = a3[13];
  v93 = a1 + v92;
  v94 = a2 + v92;
  if (*(a1 + v92 + 24))
  {
    if (*(v94 + 3))
    {
      v95 = *v93;
      *v93 = *v94;

      v96 = *(v93 + 1);
      *(v93 + 1) = *(v94 + 1);

      v97 = *(v94 + 3);
      *(v93 + 2) = *(v94 + 2);
      *(v93 + 3) = v97;

      v98 = *(v94 + 5);
      *(v93 + 4) = *(v94 + 4);
      *(v93 + 5) = v98;

      goto LABEL_112;
    }

    sub_21D30D95C(v93);
  }

  v99 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 1) = v99;
  *(v93 + 2) = *(v94 + 2);
LABEL_112:
  v93[48] = v94[48];
  v100 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  v101 = *(a1 + v100);
  *(a1 + v100) = *(a2 + v100);

  *(a1 + a3[16]) = *(a2 + a3[16]);

  *(a1 + a3[17]) = *(a2 + a3[17]);

  v102 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + v102) = *(a2 + v102);
  v103 = a3[20];
  v104 = *(a1 + v103);
  *(a1 + v103) = *(a2 + v103);

  v105 = a3[21];
  v106 = *(a1 + v105);
  *(a1 + v105) = *(a2 + v105);

  v107 = a3[22];
  v108 = *(a1 + v107);
  *(a1 + v107) = *(a2 + v107);

  v109 = a3[23];
  v110 = a3[24];
  v111 = a1 + v109;
  v112 = a2 + v109;
  v111[8] = v112[8];
  *v111 = *v112;
  *(a1 + v110) = *(a2 + v110);
  v113 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  *(a1 + v113) = *(a2 + v113);
  v114 = a3[28];
  *(a1 + a3[27]) = *(a2 + a3[27]);
  *(a1 + v114) = *(a2 + v114);
  v115 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  v116 = (a1 + v115);
  v117 = (a2 + v115);
  v119 = *v117;
  v118 = v117[1];
  *v116 = v119;
  v116[1] = v118;

  v120 = a3[31];
  v121 = a1 + v120;
  v122 = a2 + v120;
  v123 = *(a2 + v120 + 8);
  *v121 = *(a2 + v120);
  *(v121 + 1) = v123;

  v121[16] = v122[16];
  v124 = a3[32];
  v125 = (a1 + v124);
  v126 = (a2 + v124);
  if (*(a1 + v124 + 8))
  {
    v127 = v126[1];
    if (v127)
    {
      *v125 = *v126;
      v125[1] = v127;

      v128 = v125[2];
      v125[2] = v126[2];

      goto LABEL_117;
    }

    sub_21D122250(v125);
  }

  *v125 = *v126;
  v125[2] = v126[2];
LABEL_117:
  v129 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  v130 = a1 + v129;
  v131 = a2 + v129;
  v132 = *(a1 + v129);
  if (v132 == 1)
  {
LABEL_120:
    v134 = *(v131 + 13);
    *(v130 + 12) = *(v131 + 12);
    *(v130 + 13) = v134;
    *(v130 + 28) = *(v131 + 28);
    v135 = *(v131 + 9);
    *(v130 + 8) = *(v131 + 8);
    *(v130 + 9) = v135;
    v136 = *(v131 + 11);
    *(v130 + 10) = *(v131 + 10);
    *(v130 + 11) = v136;
    v137 = *(v131 + 5);
    *(v130 + 4) = *(v131 + 4);
    *(v130 + 5) = v137;
    v138 = *(v131 + 7);
    *(v130 + 6) = *(v131 + 6);
    *(v130 + 7) = v138;
    v139 = *(v131 + 1);
    *v130 = *v131;
    *(v130 + 1) = v139;
    v140 = *(v131 + 3);
    *(v130 + 2) = *(v131 + 2);
    *(v130 + 3) = v140;
    goto LABEL_131;
  }

  v133 = *v131;
  if (*v131 == 1)
  {
    sub_21D30DAAC(v130);
    goto LABEL_120;
  }

  if (!v132)
  {
    goto LABEL_127;
  }

  if (!v133)
  {
    sub_21D30DA58(v130);
LABEL_127:
    v157 = *(v131 + 11);
    *(v130 + 10) = *(v131 + 10);
    *(v130 + 11) = v157;
    v158 = *(v131 + 13);
    *(v130 + 12) = *(v131 + 12);
    *(v130 + 13) = v158;
    v159 = *(v131 + 7);
    *(v130 + 6) = *(v131 + 6);
    *(v130 + 7) = v159;
    v160 = *(v131 + 9);
    *(v130 + 8) = *(v131 + 8);
    *(v130 + 9) = v160;
    v161 = *(v131 + 3);
    *(v130 + 2) = *(v131 + 2);
    *(v130 + 3) = v161;
    v162 = *(v131 + 5);
    *(v130 + 4) = *(v131 + 4);
    *(v130 + 5) = v162;
    v163 = *(v131 + 1);
    *v130 = *v131;
    *(v130 + 1) = v163;
    goto LABEL_130;
  }

  *v130 = v133;

  v141 = *(v130 + 1);
  *(v130 + 1) = *(v131 + 1);

  v142 = *(v131 + 3);
  *(v130 + 2) = *(v131 + 2);
  *(v130 + 3) = v142;

  v143 = *(v131 + 5);
  *(v130 + 4) = *(v131 + 4);
  *(v130 + 5) = v143;

  v144 = *(v131 + 7);
  *(v130 + 6) = *(v131 + 6);
  *(v130 + 7) = v144;

  v145 = *(v131 + 9);
  *(v130 + 8) = *(v131 + 8);
  *(v130 + 9) = v145;

  v146 = *(v131 + 11);
  *(v130 + 10) = *(v131 + 10);
  *(v130 + 11) = v146;

  v130[96] = v131[96];
  v147 = *(v130 + 13);
  *(v130 + 13) = *(v131 + 13);

  v148 = *(v130 + 14);
  v149 = *(v131 + 14);
  if (!v148)
  {
LABEL_129:
    v164 = *(v131 + 12);
    *(v130 + 11) = *(v131 + 11);
    *(v130 + 12) = v164;
    *(v130 + 13) = *(v131 + 13);
    v165 = *(v131 + 8);
    *(v130 + 7) = *(v131 + 7);
    *(v130 + 8) = v165;
    v166 = *(v131 + 10);
    *(v130 + 9) = *(v131 + 9);
    *(v130 + 10) = v166;
    goto LABEL_130;
  }

  if (!v149)
  {
    sub_21D30DA04((v130 + 112));
    goto LABEL_129;
  }

  *(v130 + 14) = v149;

  v150 = *(v130 + 15);
  *(v130 + 15) = *(v131 + 15);

  v151 = *(v131 + 17);
  *(v130 + 16) = *(v131 + 16);
  *(v130 + 17) = v151;

  v152 = *(v131 + 19);
  *(v130 + 18) = *(v131 + 18);
  *(v130 + 19) = v152;

  v153 = *(v131 + 21);
  *(v130 + 20) = *(v131 + 20);
  *(v130 + 21) = v153;

  v154 = *(v131 + 23);
  *(v130 + 22) = *(v131 + 22);
  *(v130 + 23) = v154;

  v155 = *(v131 + 25);
  *(v130 + 24) = *(v131 + 24);
  *(v130 + 25) = v155;

  v130[208] = v131[208];
  v156 = *(v130 + 27);
  *(v130 + 27) = *(v131 + 27);

LABEL_130:
  *(v130 + 28) = *(v131 + 28);
LABEL_131:
  v167 = a3[35];
  v168 = a1 + v167;
  v169 = a2 + v167;
  *v168 = *(a2 + v167);
  *(v168 + 1) = *(a2 + v167 + 8);

  *(v168 + 2) = *(v169 + 2);

  v170 = a3[37];
  *(a1 + a3[36]) = *(a2 + a3[36]);
  v171 = (a1 + v170);
  v172 = (a2 + v170);
  v173 = *(a1 + v170 + 8);
  if (v173 != 1)
  {
    v174 = v172[1];
    if (v174 == 1)
    {
      sub_21D30DB00(a1 + v170);
    }

    else if (v173)
    {
      if (v174)
      {
        *v171 = *v172;
        v171[1] = v174;

        v175 = v172[3];
        v171[2] = v172[2];
        v171[3] = v175;

        goto LABEL_139;
      }

      sub_21D0CF7E0(a1 + v170, &qword_27CE5A6F0, &qword_21DC100F0);
    }
  }

  v176 = *(v172 + 1);
  *v171 = *v172;
  *(v171 + 1) = v176;
LABEL_139:
  v177 = a3[38];
  v178 = a1 + v177;
  v179 = a2 + v177;
  v180 = *(a1 + v177);
  if (!v180)
  {
LABEL_143:
    *v178 = *v179;
    *(v178 + 2) = *(v179 + 2);
    goto LABEL_144;
  }

  if (!*v179)
  {
    sub_21D30DB54(v178);
    goto LABEL_143;
  }

  *v178 = *v179;

  v181 = *(v179 + 2);
  *(v178 + 1) = *(v179 + 1);
  *(v178 + 2) = v181;

LABEL_144:
  v182 = a3[39];
  v183 = (a1 + v182);
  v184 = (a2 + v182);
  v186 = *v184;
  v185 = v184[1];
  *v183 = v186;
  v183[1] = v185;

  v187 = a3[41];
  *(a1 + a3[40]) = *(a2 + a3[40]);
  *(a1 + v187) = *(a2 + v187);
  v188 = a3[42];
  v189 = *(a1 + v188);
  *(a1 + v188) = *(a2 + v188);

  *(a1 + a3[43]) = *(a2 + a3[43]);
  *(a1 + a3[45]) = *(a2 + a3[45]);
  return a1;
}

void sub_21DB24654(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    sub_21D0DBFB4(319, &qword_280D19798, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.Reminder.Override(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
LABEL_9:
      v10 = *a2;
      *a1 = *a2;
      v11 = v10;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
    {
      goto LABEL_19;
    }

LABEL_14:
    v12 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v12;
    sub_21DBF8E0C();
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    v14 = *(v13 - 1);
    if ((*(v14 + 48))(a2, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
      memcpy(a1, a2, *(*(v15 - 8) + 64));
    }

    else
    {
      v27 = v14;
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v18;
      v19 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v19;
      v20 = v13[6];
      v21 = sub_21DBF563C();
      v22 = *(*(v21 - 8) + 16);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v22(&a1[v20], a2 + v20, v21);
      v23 = v13[7];
      v24 = sub_21DBF5C4C();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(a2 + v23, 1, v24))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
        memcpy(&a1[v23], a2 + v23, *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 16))(&a1[v23], a2 + v23, v24);
        (*(v25 + 56))(&a1[v23], 0, 1, v24);
      }

      a1[v13[8]] = *(a2 + v13[8]);
      a1[v13[9]] = *(a2 + v13[9]);
      a1[v13[10]] = *(a2 + v13[10]);
      (*(v27 + 56))(a1, 0, 1, v13);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v8;
    a1[16] = *(a2 + 16);
    sub_21DBF8E0C();
LABEL_26:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_19:
  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

void destroy for TTRRemindersListViewModel.Reminder.Override(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_9:
    v4 = *a1;

    return;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
LABEL_14:

      return;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
    v8 = *(v5 + 28);
    v9 = sub_21DBF5C4C();
    v11 = *(v9 - 8);
    if (!(*(v11 + 48))(a1 + v8, 1, v9))
    {
      v10 = *(v11 + 8);

      v10(a1 + v8, v9);
    }
  }
}

void **initializeWithCopy for TTRRemindersListViewModel.Reminder.Override(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
LABEL_7:
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
    {
      goto LABEL_17;
    }

LABEL_12:
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    sub_21DBF8E0C();
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    v12 = *(v11 - 1);
    if ((*(v12 + 48))(a2, 1, v11))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
      memcpy(a1, a2, *(*(v13 - 8) + 64));
    }

    else
    {
      v25 = v12;
      v16 = a2[1];
      *a1 = *a2;
      a1[1] = v16;
      v17 = a2[3];
      a1[2] = a2[2];
      a1[3] = v17;
      v18 = v11[6];
      v19 = sub_21DBF563C();
      v20 = *(*(v19 - 8) + 16);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20(a1 + v18, a2 + v18, v19);
      v21 = v11[7];
      v22 = sub_21DBF5C4C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2 + v21, 1, v22))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
        memcpy(a1 + v21, a2 + v21, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v23 + 16))(a1 + v21, a2 + v21, v22);
        (*(v23 + 56))(a1 + v21, 0, 1, v22);
      }

      *(a1 + v11[8]) = *(a2 + v11[8]);
      *(a1 + v11[9]) = *(a2 + v11[9]);
      *(a1 + v11[10]) = *(a2 + v11[10]);
      (*(v25 + 56))(a1, 0, 1, v11);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    *(a1 + 16) = *(a2 + 16);
    sub_21DBF8E0C();
LABEL_24:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_17:
  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void **assignWithCopy for TTRRemindersListViewModel.Reminder.Override(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Reminder.Override);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
LABEL_8:
      v7 = *a2;
      *a1 = *a2;
      v8 = v7;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
    {
      goto LABEL_18;
    }

LABEL_13:
    *a1 = *a2;
    a1[1] = a2[1];
    sub_21DBF8E0C();
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    v10 = *(v9 - 1);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      v21 = v10;
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      v14 = v9[6];
      v15 = sub_21DBF563C();
      v16 = *(*(v15 - 8) + 16);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v16(a1 + v14, a2 + v14, v15);
      v17 = v9[7];
      v18 = sub_21DBF5C4C();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(a2 + v17, 1, v18))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
        memcpy(a1 + v17, a2 + v17, *(*(v20 - 8) + 64));
      }

      else
      {
        (*(v19 + 16))(a1 + v17, a2 + v17, v18);
        (*(v19 + 56))(a1 + v17, 0, 1, v18);
      }

      *(a1 + v9[8]) = *(a2 + v9[8]);
      *(a1 + v9[9]) = *(a2 + v9[9]);
      *(a1 + v9[10]) = *(a2 + v9[10]);
      (*(v21 + 56))(a1, 0, 1, v9);
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    *(a1 + 16) = *(a2 + 16);
    sub_21DBF8E0C();
LABEL_25:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_18:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_OWORD *initializeWithTake for TTRRemindersListViewModel.Reminder.Override(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    v7 = *(v6 - 1);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      v12 = v6[6];
      v13 = sub_21DBF563C();
      (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
      v14 = v6[7];
      v15 = sub_21DBF5C4C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
        memcpy(a1 + v14, a2 + v14, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(a1 + v14, a2 + v14, v15);
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
      }

      *(a1 + v6[8]) = *(a2 + v6[8]);
      *(a1 + v6[9]) = *(a2 + v6[9]);
      *(a1 + v6[10]) = *(a2 + v6[10]);
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

_OWORD *assignWithTake for TTRRemindersListViewModel.Reminder.Override(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Reminder.Override);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    v7 = *(v6 - 1);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      v12 = v6[6];
      v13 = sub_21DBF563C();
      (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
      v14 = v6[7];
      v15 = sub_21DBF5C4C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
        memcpy(a1 + v14, a2 + v14, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(a1 + v14, a2 + v14, v15);
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
      }

      *(a1 + v6[8]) = *(a2 + v6[8]);
      *(a1 + v6[9]) = *(a2 + v6[9]);
      *(a1 + v6[10]) = *(a2 + v6[10]);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_21DB25C9C(uint64_t a1)
{
  sub_21D0DBFB4(319, &qword_280D19798, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.DisplayDate(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *v4 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = sub_21DBF563C();
    v11 = *(*(v10 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11(&v4[v9], &a2[v9], v10);
    v12 = a3[7];
    v13 = sub_21DBF5C4C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&a2[v12], 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
      memcpy(&v4[v12], &a2[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v4[v12], &a2[v12], v13);
      (*(v14 + 56))(&v4[v12], 0, 1, v13);
    }

    v17 = a3[9];
    v4[a3[8]] = a2[a3[8]];
    v4[v17] = a2[v17];
    v4[a3[10]] = a2[a3[10]];
  }

  return v4;
}

uint64_t destroy for TTRRemindersListViewModel.DisplayDate(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF563C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 28);
  v7 = sub_21DBF5C4C();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for TTRRemindersListViewModel.DisplayDate(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = sub_21DBF563C();
  v10 = *(*(v9 - 8) + 16);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v10(&a1[v8], &a2[v8], v9);
  v11 = a3[7];
  v12 = sub_21DBF5C4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  v15 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v15] = a2[v15];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

char *assignWithCopy for TTRRemindersListViewModel.DisplayDate(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  sub_21DBF8E0C();

  v6 = a3[6];
  v7 = sub_21DBF563C();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  v9 = sub_21DBF5C4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 24))(&a1[v8], &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 16))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
LABEL_7:
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}