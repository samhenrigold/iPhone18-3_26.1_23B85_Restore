uint64_t TTRAccountsListsViewModel.ItemIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v1, v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v6 = sub_21DBF56BC();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.description.getter()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v4, v7, v1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = 676086866;
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0x2859584F5250;
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0x2844495555;
    v10 = 0xE500000000000000;
  }

  v14[0] = v9;
  v14[1] = v10;
  sub_21D0DCFD0(&qword_280D17190, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v11 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v11);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v12 = v14[0];
  (*(v2 + 8))(v4, v1);
  return v12;
}

void sub_21DA25D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v46[1] = a4;
  v61 = a3;
  v46[3] = a2;
  v7 = sub_21DBF676C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v14 = sub_21DBF68CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D452E8])
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    MEMORY[0x223D3EFA0]();
    v47 = 0;
    (*(v8 + 16))(v10, v13, v7);
    TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v20, &v47, v10, &v48);
    v21 = sub_21DBF673C();
    if (!__OFADD__(*v61, v21))
    {
      *v61 += v21;
      v22 = v59;
      a5[10] = v58;
      a5[11] = v22;
      a5[12] = *v60;
      *(a5 + 202) = *&v60[10];
      v23 = v55;
      a5[6] = v54;
      a5[7] = v23;
      v24 = v57;
      a5[8] = v56;
      a5[9] = v24;
      v25 = v51;
      a5[2] = v50;
      a5[3] = v25;
      v26 = v53;
      a5[4] = v52;
      a5[5] = v26;
      v27 = v49;
      *a5 = v48;
      a5[1] = v27;
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      swift_storeEnumTagMultiPayload();

      (*(v8 + 8))(v13, v7);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
      v29 = v28;
      v30 = a5 + *(v28 + 52);
      *v30 = v20;
      v31 = 1;
LABEL_7:
      v30[8] = v31;
      *(a5 + *(v28 + 56)) = MEMORY[0x277D84F90];
      (*(*(v28 - 8) + 56))(a5, 0, 1, v29);
      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v46[0] = v8;
  if (v19 == *MEMORY[0x277D452E0])
  {
    (*(v15 + 96))(v18, v14);
    v32 = *v18;
    MEMORY[0x223D3EF90]();
    v33 = v46[0];
    (*(v46[0] + 16))(v10, v13, v7);
    v34 = sub_21DBF693C();
    TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v32, v10, v34, &v48);
    v35 = sub_21DBF673C();
    if (!__OFADD__(*v61, v35))
    {
      *v61 += v35;
      v36 = v59;
      a5[10] = v58;
      a5[11] = v36;
      a5[12] = *v60;
      *(a5 + 202) = *&v60[10];
      v37 = v55;
      a5[6] = v54;
      a5[7] = v37;
      v38 = v57;
      a5[8] = v56;
      a5[9] = v38;
      v39 = v51;
      a5[2] = v50;
      a5[3] = v39;
      v40 = v53;
      a5[4] = v52;
      a5[5] = v40;
      v41 = v49;
      *a5 = v48;
      a5[1] = v41;
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      swift_storeEnumTagMultiPayload();

      (*(v33 + 8))(v13, v7);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
      v29 = v28;
      v30 = a5 + *(v28 + 52);
      *v30 = v32;
      v31 = 2;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_10:
  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v42 = sub_21DBF84BC();
  __swift_project_value_buffer(v42, qword_280D0F4D8);
  v43 = MEMORY[0x277D84F90];
  v44 = sub_21D17716C(MEMORY[0x277D84F90]);
  v45 = sub_21D17716C(v43);
  sub_21DAEAB00("Unknown list type", 17, 2, v44, v45);
  __break(1u);
}

id sub_21DA262C8(void *a1)
{
  v1 = [a1 customContext];
  if (!v1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v8 = v1;
  sub_21D0D8CF0(0, &qword_27CE61F80, 0x277D44808);
  v2 = sub_21D1198C0();

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 emblem];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (qword_27CE56B40 != -1)
  {
    swift_once();
  }

  sub_21DBF8E0C();
  v6 = sub_21D22D5B4(v5);

  if ((v6 & 1) == 0)
  {

LABEL_9:
    v4 = *MEMORY[0x277D44960];
  }

  return v4;
}

uint64_t sub_21DA263EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO2eeoiySbAE_AEtFZ_0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21DA26418(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  result = sub_21D0E8DA0(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v5[2] = &v6;
    v5[3] = a1;
    return sub_21D174668(sub_21DA312A8, v5, 0, v4);
  }

  return result;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC22HashtagFilterOperationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  if ((sub_21D1D75BC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 2)
  {
    return v7 != 2 && ((v7 ^ v6) & 1) == 0;
  }

  return v7 == 2;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC15HashtagsSectionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CF0, &qword_21DC376E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v14 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
  v15 = *(v11 + 48);
  sub_21D0D3954(a1 + v14, v13, &qword_27CE5EB70, &unk_21DC364C0);
  sub_21D0D3954(a2 + v14, &v13[v15], &qword_27CE5EB70, &unk_21DC364C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EB70, &unk_21DC364C0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5EB70, &unk_21DC364C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
LABEL_7:
    sub_21D0CF7E0(v13, &qword_27CE64CF0, &qword_21DC376E0);
    return 0;
  }

  v18 = v21;
  sub_21D100E28(&v13[v15], v21, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  v19 = _s15RemindersUICore25TTRAccountsListsViewModelC22HashtagFilterOperationV2eeoiySbAE_AEtFZ_0(v10, v18);
  sub_21D101450(v18, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  sub_21D0CF7E0(v13, &qword_27CE5EB70, &unk_21DC364C0);
  return v19;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO010PinnedListH0O2eeoiySbAG_AGtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[11];
  v3 = a1[9];
  v80 = a1[10];
  v81 = v2;
  v4 = a1[11];
  v82[0] = a1[12];
  *(v82 + 10) = *(a1 + 202);
  v5 = a1[7];
  v6 = a1[5];
  v76 = a1[6];
  v77 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v78 = a1[8];
  v79 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v72 = a1[2];
  v73 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v74 = a1[4];
  v75 = v12;
  v13 = a1[1];
  v70 = *a1;
  v71 = v13;
  v14 = a2[11];
  v15 = a2[9];
  v93 = a2[10];
  v94 = v14;
  v16 = a2[11];
  v95[0] = a2[12];
  *(v95 + 10) = *(a2 + 202);
  v17 = a2[7];
  v18 = a2[5];
  v89 = a2[6];
  v90 = v17;
  v19 = a2[7];
  v20 = a2[9];
  v91 = a2[8];
  v92 = v20;
  v21 = a2[3];
  v22 = a2[1];
  v85 = a2[2];
  v86 = v21;
  v23 = a2[3];
  v24 = a2[5];
  v87 = a2[4];
  v88 = v24;
  v25 = a2[1];
  v83 = *a2;
  v84 = v25;
  v26 = a1[11];
  v96[10] = a1[10];
  v96[11] = v26;
  v97[0] = a1[12];
  *(v97 + 10) = *(a1 + 202);
  v27 = a1[7];
  v96[6] = a1[6];
  v96[7] = v27;
  v28 = a1[9];
  v96[8] = a1[8];
  v96[9] = v28;
  v29 = a1[3];
  v96[2] = a1[2];
  v96[3] = v29;
  v30 = a1[5];
  v96[4] = a1[4];
  v96[5] = v30;
  v31 = a1[1];
  v96[0] = *a1;
  v96[1] = v31;
  *(v98 + 10) = *(a2 + 202);
  v32 = a2[12];
  v97[13] = v16;
  v98[0] = v32;
  v97[9] = v19;
  v97[10] = v91;
  v97[12] = v93;
  v97[11] = v15;
  v97[5] = v23;
  v97[6] = v87;
  v97[8] = v89;
  v97[7] = v18;
  v97[2] = v83;
  v97[4] = v85;
  v97[3] = v22;
  v99[10] = v80;
  v99[11] = v4;
  v100[0] = a1[12];
  *(v100 + 10) = *(a1 + 202);
  v99[6] = v76;
  v99[7] = v7;
  v99[8] = v78;
  v99[9] = v3;
  v99[2] = v72;
  v99[3] = v11;
  v99[4] = v74;
  v99[5] = v6;
  v99[0] = v70;
  v99[1] = v10;
  if (sub_21D1577AC(v99) != 1)
  {
    v36 = *sub_21D14D0D4(v99);
    v67 = v93;
    v68 = v94;
    v69[0] = v95[0];
    *(v69 + 10) = *(v95 + 10);
    v63 = v89;
    v64 = v90;
    v65 = v91;
    v66 = v92;
    v59 = v85;
    v60 = v86;
    v61 = v87;
    v62 = v88;
    v57 = v83;
    v58 = v84;
    v37 = sub_21D1577AC(&v57);
    v38 = sub_21D14D0D4(&v57);
    if (v37 != 1)
    {
      v35 = sub_21D11ED58(v36, *v38);
      sub_21D0CF7E0(v96, &qword_27CE64CE0, &qword_21DC376C8);
      return v35 & 1;
    }

LABEL_7:
    sub_21DA31204(&v83, &v57);
    sub_21D0CF7E0(v96, &qword_27CE64CE0, &qword_21DC376C8);
    v35 = 0;
    return v35 & 1;
  }

  v33 = sub_21D14D0D4(v99);
  v67 = v93;
  v68 = v94;
  v69[0] = v95[0];
  *(v69 + 10) = *(v95 + 10);
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v59 = v85;
  v60 = v86;
  v61 = v87;
  v62 = v88;
  v57 = v83;
  v58 = v84;
  if (sub_21D1577AC(&v57) != 1)
  {
    sub_21D14D0D4(&v57);
    v54 = v80;
    v55 = v81;
    v56[0] = v82[0];
    *(v56 + 10) = *(v82 + 10);
    v50 = v76;
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v46 = v72;
    v47 = v73;
    v48 = v74;
    v49 = v75;
    v44 = v70;
    v45 = v71;
    v39 = sub_21D14D0D4(&v44);
    sub_21D567868(v39, v42);
    goto LABEL_7;
  }

  v34 = sub_21D14D0D4(&v57);
  v54 = v33[10];
  v55 = v33[11];
  v56[0] = v33[12];
  *(v56 + 10) = *(v33 + 202);
  v50 = v33[6];
  v51 = v33[7];
  v52 = v33[8];
  v53 = v33[9];
  v46 = v33[2];
  v47 = v33[3];
  v48 = v33[4];
  v49 = v33[5];
  v44 = *v33;
  v45 = v33[1];
  v42[10] = v34[10];
  v42[11] = v34[11];
  v43[0] = v34[12];
  *(v43 + 10) = *(v34 + 202);
  v42[6] = v34[6];
  v42[7] = v34[7];
  v42[8] = v34[8];
  v42[9] = v34[9];
  v42[2] = v34[2];
  v42[3] = v34[3];
  v42[4] = v34[4];
  v42[5] = v34[5];
  v42[0] = *v34;
  v42[1] = v34[1];
  sub_21DA31204(&v83, v41);
  sub_21DA31204(&v70, v41);
  sub_21DA31204(&v83, v41);
  sub_21DA31204(&v70, v41);
  v35 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(&v44, v42);
  sub_21D0CF7E0(v96, &qword_27CE64CE0, &qword_21DC376C8);
  sub_21DA311D4(&v83);
  sub_21DA311D4(&v70);
  return v35 & 1;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC5GroupV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v14 = a1[7];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_21DBFC64C();
    result = 0;
    if ((v11 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v7 && v4 == v8)
  {
    if (v5 != v9)
    {
      return 0;
    }

    goto LABEL_13;
  }

  v13 = sub_21DBFC64C();
  result = 0;
  if ((v13 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
LABEL_13:
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    return sub_21DBFB63C() & (v14 == v10);
  }

  return result;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC17PermissionRequestO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v29 = a1[2];
  v30 = v2;
  v4 = a1[3];
  *v31 = a1[4];
  *&v31[9] = *(a1 + 73);
  v5 = a1[1];
  v27 = *a1;
  v28 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *&v33[16] = *(a2 + 32);
  *&v33[32] = v6;
  v8 = *(a2 + 48);
  *v34 = *(a2 + 64);
  *&v34[9] = *(a2 + 73);
  v9 = *(a2 + 16);
  v32 = *a2;
  *v33 = v9;
  v35[2] = v29;
  v35[3] = v4;
  v36[0] = a1[4];
  *(v36 + 9) = *(a1 + 73);
  v35[0] = v27;
  v35[1] = v3;
  *(v37 + 9) = *(a2 + 73);
  v10 = *(a2 + 64);
  v36[5] = v8;
  v37[0] = v10;
  v36[2] = v32;
  v36[3] = v7;
  v36[4] = *&v33[16];
  if (!v31[24])
  {
    if (!v34[24])
    {
      v20 = v27;
      v21 = v5;
      v22 = v29;
      v23 = v30;
      v16 = v32;
      *v17 = *v33;
      *&v17[8] = *&v33[8];
      *&v17[24] = *&v33[24];
      sub_21DA3123C(&v32, v26);
      sub_21DA3123C(&v27, v26);
      sub_21DA3123C(&v27, v26);
      sub_21DA3123C(&v32, v26);
      v11 = _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(&v20, &v16);
      goto LABEL_9;
    }

LABEL_10:
    sub_21DA3123C(&v27, v26);
    sub_21DA3123C(&v32, v26);
    sub_21D0CF7E0(v35, &qword_27CE64CF8, &qword_21DC376E8);
    return 0;
  }

  if (v31[24] != 1)
  {
    if (v34[24] == 2)
    {
      v20 = v27;
      v21 = v28;
      v22 = v29;
      v23 = v30;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v12 = *(a2 + 48);
      *&v17[16] = *(a2 + 32);
      *&v17[32] = v12;
      v18 = *(a2 + 64);
      v19 = *(a2 + 80);
      v13 = *(a2 + 16);
      v16 = *a2;
      *v17 = v13;
      sub_21DA3123C(&v32, v26);
      sub_21DA3123C(&v27, v26);
      sub_21DA3123C(&v27, v26);
      sub_21DA3123C(&v32, v26);
      v11 = _s15RemindersUICore26TTRPermissionConfigurationV2eeoiySbAC_ACtFZ_0(&v20, &v16);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v34[24] != 1)
  {
    goto LABEL_10;
  }

  v20 = v27;
  v21 = v5;
  v16 = v32;
  *v17 = *v33;
  sub_21DA3123C(&v32, v26);
  sub_21DA3123C(&v27, v26);
  sub_21DA3123C(&v27, v26);
  sub_21DA3123C(&v32, v26);
  v11 = _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(&v20, &v16);
LABEL_9:
  v14 = v11;
  sub_21D0CF7E0(v35, &qword_27CE64CF8, &qword_21DC376E8);
  sub_21DA264B0(&v32);
  sub_21DA264B0(&v27);
  return v14;
}

unint64_t sub_21DA2716C()
{
  result = qword_27CE64BE8;
  if (!qword_27CE64BE8)
  {
    atomic_store(result, &qword_27CE64BE8);
  }

  return result;
}

unint64_t sub_21DA271DC()
{
  result = qword_27CE64C08;
  if (!qword_27CE64C08)
  {
    atomic_store(result, &qword_27CE64C08);
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_21DBF6C1C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v53 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CD8, &qword_21DC376C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  v21 = (&v53 + *(v20 + 56) - v18);
  sub_21D0FE734(a1, &v53 - v18, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  sub_21D0FE734(v56, v21, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0FE734(v19, v13, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
      v23 = v13[11];
      v73[10] = v13[10];
      v73[11] = v23;
      v74[0] = v13[12];
      *(v74 + 10) = *(v13 + 202);
      v24 = v13[7];
      v73[6] = v13[6];
      v73[7] = v24;
      v25 = v13[9];
      v73[8] = v13[8];
      v73[9] = v25;
      v26 = v13[3];
      v73[2] = v13[2];
      v73[3] = v26;
      v27 = v13[5];
      v73[4] = v13[4];
      v73[5] = v27;
      v28 = v13[1];
      v73[0] = *v13;
      v73[1] = v28;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v21[11];
        v30 = v21[9];
        v70 = v21[10];
        v71 = v29;
        v31 = v21[11];
        v72[0] = v21[12];
        *(v72 + 10) = *(v21 + 202);
        v32 = v21[7];
        v33 = v21[5];
        v66 = v21[6];
        v67 = v32;
        v34 = v21[7];
        v35 = v21[9];
        v68 = v21[8];
        v69 = v35;
        v36 = v21[3];
        v37 = v21[1];
        v62 = v21[2];
        v63 = v36;
        v38 = v21[3];
        v39 = v21[5];
        v64 = v21[4];
        v65 = v39;
        v40 = v21[1];
        v61[0] = *v21;
        v61[1] = v40;
        v41 = v13[11];
        v59[10] = v13[10];
        v59[11] = v41;
        v60[0] = v13[12];
        *(v60 + 10) = *(v13 + 202);
        v42 = v13[7];
        v59[6] = v13[6];
        v59[7] = v42;
        v43 = v13[9];
        v59[8] = v13[8];
        v59[9] = v43;
        v44 = v13[3];
        v59[2] = v13[2];
        v59[3] = v44;
        v45 = v13[5];
        v59[4] = v13[4];
        v59[5] = v45;
        v46 = v13[1];
        v59[0] = *v13;
        v59[1] = v46;
        v57[10] = v70;
        v57[11] = v31;
        v58[0] = v21[12];
        *(v58 + 10) = *(v21 + 202);
        v57[6] = v66;
        v57[7] = v34;
        v57[8] = v68;
        v57[9] = v30;
        v57[2] = v62;
        v57[3] = v38;
        v57[4] = v64;
        v57[5] = v33;
        v57[0] = v61[0];
        v57[1] = v37;
        v47 = _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO010PinnedListH0O2eeoiySbAG_AGtFZ_0(v59, v57);
        sub_21DA311D4(v61);
        sub_21DA311D4(v73);
LABEL_13:
        sub_21D101450(v19, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
        return v47 & 1;
      }

      sub_21DA311D4(v73);
    }

    else
    {
      sub_21D0FE734(v19, v10, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = v53;
        v48 = v54;
        v50 = v55;
        (*(v54 + 32))(v53, v21, v55);
        v47 = MEMORY[0x223D3F370](v10, v49);
        v51 = *(v48 + 8);
        v51(v49, v50);
        v51(v10, v50);
        goto LABEL_13;
      }

      (*(v54 + 8))(v10, v55);
    }
  }

  else
  {
    sub_21D0FE734(v19, v16, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D100E28(v21, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v47 = _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO2eeoiySbAE_AEtFZ_0(v16, v7);
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_13;
    }

    sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  sub_21D0CF7E0(v19, &qword_27CE64CD8, &qword_21DC376C0);
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_21DA27778(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFB1BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v48[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v48[-1] - v14);
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(a1, v18, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
    case 2:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      result = sub_21D101450(v18, type metadata accessor for TTRAccountsListsViewModel.Item);
      break;
    case 3:
      sub_21D100E28(v18, v8, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      *v12 = **(&unk_27832F608 + v8[*(v6 + 20)]);
      (*(v10 + 104))(v12, *MEMORY[0x277D45A00], v9);
      v42 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_21D2150B8(0, v42[2] + 1, 1, v42);
        *a4 = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        *a4 = sub_21D2150B8((v44 > 1), v45 + 1, 1, v42);
      }

      sub_21D101450(v8, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v46 = *a4;
      v46[2] = v45 + 1;
      result = (*(v10 + 32))(v46 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v45, v12, v9);
      break;
    case 5:
    case 6:
      v20 = v18[217];
      v21 = v18[216];
      v22 = v18[148];
      v23 = v18[147];
      v24 = v18[146];
      v25 = v18[145];
      v26 = v18[144];
      v27 = v18[120];
      v29 = *(v18 + 5);
      v28 = *(v18 + 6);
      v31 = *(v18 + 1);
      v30 = *(v18 + 2);
      v48[0] = *v18;
      v32 = v48[0];
      v48[1] = v31;
      v48[2] = v30;
      v49 = *(v18 + 24);
      v50 = v29;
      v51 = v28;
      v33 = *(v18 + 72);
      v52 = *(v18 + 56);
      v53 = v33;
      v34 = *(v18 + 104);
      v54 = *(v18 + 88);
      v55 = v34;
      v56 = v27;
      v57 = *(v18 + 8);
      v58 = v26;
      v59 = v25;
      v60 = v24;
      v61 = v23;
      v62 = v22;
      v63 = *(v18 + 152);
      v64 = *(v18 + 168);
      v65 = *(v18 + 184);
      v66 = *(v18 + 200);
      v67 = v21;
      v68 = v20;
      *v15 = v48[0];
      (*(v10 + 104))(v15, *MEMORY[0x277D45A08], v9);
      v35 = *a4;
      v36 = v32;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v35;
      if ((v37 & 1) == 0)
      {
        v35 = sub_21D2150B8(0, v35[2] + 1, 1, v35);
        *a4 = v35;
      }

      v39 = v35[2];
      v38 = v35[3];
      if (v39 >= v38 >> 1)
      {
        *a4 = sub_21D2150B8((v38 > 1), v39 + 1, 1, v35);
      }

      sub_21D1077D8(v48);
      v40 = *a4;
      v40[2] = v39 + 1;
      result = (*(v10 + 32))(v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v15, v9);
      break;
    case 15:
    case 16:
      return result;
    default:
      v41 = sub_21DBF56BC();
      result = (*(*(v41 - 8) + 8))(v18, v41);
      break;
  }

  return result;
}

uint64_t sub_21DA27C54(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;

  v3 = sub_21D261FB8();

  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v3;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability);
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  *(v5 + 8) = v4;
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490, &unk_21DC0F950);
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490, &unk_21DC0F950);
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490, &unk_21DC0F950);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return v1;
}

void _s15RemindersUICore25TTRAccountsListsViewModelC022generateEditablePinnedD007orderediD012capabilities022visiblePredefinedSmartD014reminderCountsSayAA23TTRTreeStorageNodeValueVyAC4ItemOAC13AuxiliaryDataVGGSay19ReminderKitInternal015REMAccountsListwE0C0F0V0I4ListOG_AC20AccountsCapabilitiesVSayAC0N4ListVGAS0xP0VtFZ_0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v120 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  v142 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v110[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v123 = &v110[-v11];
  MEMORY[0x28223BE20](v12);
  v122 = &v110[-v13];
  v119 = sub_21DBF676C();
  v14 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v110[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v117 = &v110[-v17];
  v18 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v125 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v110[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v136 = &v110[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v110[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D178, &unk_21DC18E60);
  MEMORY[0x28223BE20](v26 - 8);
  v135 = &v110[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v134 = &v110[-v29];
  v140 = sub_21DBF68BC();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v110[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180, &unk_21DC36510);
  MEMORY[0x28223BE20](v31 - 8);
  v121 = &v110[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v33);
  v124 = &v110[-v35];
  v36 = *a2;
  v141 = v7;
  if ((v36 & 0x40) == 0)
  {
    v37 = *(a3 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      *&v145 = MEMORY[0x277D84F90];
      sub_21D0F5590(0, v37, 0);
      v39 = v145;
      v40 = a3 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v41 = *(v125 + 72);
      do
      {
        sub_21D0FE734(v40, v20, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        sub_21D0FE734(v20, v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        type metadata accessor for TTRAccountsListsViewModel.Item(0);
        swift_storeEnumTagMultiPayload();
        sub_21D101450(v20, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v42 = &v9[*(v7 + 52)];
        *v42 = 0;
        v42[8] = -1;
        *&v9[*(v7 + 56)] = v38;
        *&v145 = v39;
        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_21D0F5590((v43 > 1), v44 + 1, 1);
          v39 = v145;
        }

        *(v39 + 16) = v44 + 1;
        sub_21D0D523C(v9, v39 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v44, &qword_27CE58180, &unk_21DC08F30);
        v40 += v41;
        --v37;
        v7 = v141;
      }

      while (v37);
    }

    return;
  }

  v45 = *(a1 + 16);
  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    return;
  }

  v47 = 0;
  v132 = v139 + 16;
  v131 = v139 + 88;
  v130 = *MEMORY[0x277D452D0];
  v129 = (v139 + 96);
  v128 = (v125 + 56);
  v127 = (v125 + 48);
  v114 = *MEMORY[0x277D452D8];
  v113 = (v14 + 16);
  v112 = (v14 + 8);
  v111 = *MEMORY[0x277D452C8];
  v115 = (v142 + 56);
  v116 = (v142 + 48);
  v48 = v140;
  v126 = a1;
  v133 = v45;
  while (2)
  {
    v137 = v46;
    v49 = v47;
    while (1)
    {
      if (v49 >= v45)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (__OFADD__(v49, 1))
      {
        goto LABEL_46;
      }

      v143 = v49 + 1;
      v51 = v139;
      v52 = v138;
      (*(v139 + 16))(v138, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, v48, v34);
      v53 = (*(v51 + 88))(v52, v48);
      if (v53 != v130)
      {
        if (v53 == v114)
        {
          (*v129)(v52, v48);
          v71 = *v52;
          v72 = v117;
          MEMORY[0x223D3EFA0]();
          v144 = 0;
          v73 = v118;
          v74 = v119;
          (*v113)(v118, v72, v119);
          TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v71, &v144, v73, &v145);
          v75 = v156;
          v76 = v124;
          *(v124 + 10) = v155;
          v76[11] = v75;
          v76[12] = *v157;
          *(v76 + 202) = *&v157[10];
          v77 = v152;
          v76[6] = v151;
          v76[7] = v77;
          v78 = v154;
          v76[8] = v153;
          v76[9] = v78;
          v79 = v148;
          v76[2] = v147;
          v76[3] = v79;
          v80 = v150;
          v76[4] = v149;
          v76[5] = v80;
          v81 = v146;
          *v76 = v145;
          v76[1] = v81;
          type metadata accessor for TTRAccountsListsViewModel.Item(0);
          swift_storeEnumTagMultiPayload();

          v82 = v72;
          v46 = v137;
          v83 = v74;
          v98 = v76;
          (*v112)(v82, v83);
          v99 = v141;
          v84 = v76 + *(v141 + 52);
          *v84 = v71;
          v84[8] = 1;
          *(v76 + *(v99 + 56)) = MEMORY[0x277D84F90];
          (*v115)(v76, 0, 1, v99);
          goto LABEL_35;
        }

        v99 = v141;
        if (v53 == v111)
        {
          (*v129)(v52, v48);
          v85 = *v52;
          v86 = v117;
          MEMORY[0x223D3EF90]();
          v87 = v118;
          v88 = v119;
          (*v113)(v118, v86, v119);
          TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v85, v87, 0, &v145);
          v89 = v156;
          v90 = v124;
          *(v124 + 10) = v155;
          v90[11] = v89;
          v90[12] = *v157;
          *(v90 + 202) = *&v157[10];
          v91 = v152;
          v90[6] = v151;
          v90[7] = v91;
          v92 = v154;
          v90[8] = v153;
          v90[9] = v92;
          v93 = v148;
          v90[2] = v147;
          v90[3] = v93;
          v94 = v150;
          v90[4] = v149;
          v90[5] = v94;
          v95 = v146;
          *v90 = v145;
          v90[1] = v95;
          type metadata accessor for TTRAccountsListsViewModel.Item(0);
          swift_storeEnumTagMultiPayload();

          v96 = v88;
          v98 = v90;
          (*v112)(v86, v96);
          v97 = v90 + *(v99 + 52);
          *v97 = v85;
          v97[8] = 2;
          *(v90 + *(v99 + 56)) = MEMORY[0x277D84F90];
          (*v115)(v90, 0, 1, v99);
          v46 = v137;
          goto LABEL_35;
        }

LABEL_47:
        if (qword_280D0F4D0 != -1)
        {
          swift_once();
        }

        v106 = sub_21DBF84BC();
        __swift_project_value_buffer(v106, qword_280D0F4D8);
        v107 = MEMORY[0x277D84F90];
        v108 = sub_21D17716C(MEMORY[0x277D84F90]);
        v109 = sub_21D17716C(v107);
        sub_21DAEAB00("Unknown list type", 17, 2, v108, v109);
        __break(1u);
        return;
      }

      (*v129)(v52, v48);
      v54 = *v52;
      v55 = a3;
      v56 = *(a3 + 16);
      if (v56)
      {
        v57 = a3 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
        v58 = *(v125 + 72);
        while (1)
        {
          sub_21D0FE734(v57, v25, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v59 = v18;
          v60 = sub_21DBFA16C();
          v62 = v61;
          if (v60 == sub_21DBFA16C() && v62 == v63)
          {
            break;
          }

          v65 = sub_21DBFC64C();

          if (v65)
          {
            goto LABEL_26;
          }

          sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v57 += v58;
          --v56;
          v18 = v59;
          if (!v56)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v66 = v134;
        sub_21D100E28(v25, v134, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v18 = v59;
        (*v128)(v66, 0, 1, v59);
      }

      else
      {
LABEL_24:
        v66 = v134;
        (*v128)(v134, 1, 1, v18);
      }

      v67 = v135;
      sub_21D0D3954(v66, v135, &qword_27CE5D178, &unk_21DC18E60);
      v68 = (*v127)(v67, 1, v18);
      v69 = v55;
      v70 = v136;
      if (v68 != 1)
      {
        break;
      }

      sub_21D0CF7E0(v66, &qword_27CE5D178, &unk_21DC18E60);

      v50 = v67;
LABEL_12:
      sub_21D0CF7E0(v50, &qword_27CE5D178, &unk_21DC18E60);
      v49 = v143;
      v45 = v133;
      v48 = v140;
      a3 = v69;
      a1 = v126;
      if (v143 == v133)
      {
        return;
      }
    }

    sub_21D100E28(v67, v136, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v46 = v137;
    if (v70[*(v18 + 20)] == 5)
    {

      sub_21D101450(v70, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v50 = v66;
      goto LABEL_12;
    }

    v98 = v124;
    sub_21D0FE734(v70, v124, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    swift_storeEnumTagMultiPayload();

    sub_21D101450(v70, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    sub_21D0CF7E0(v66, &qword_27CE5D178, &unk_21DC18E60);
    v99 = v141;
    v100 = &v98[*(v141 + 52)];
    *v100 = 0;
    v100[8] = -1;
    *&v98[*(v99 + 56)] = MEMORY[0x277D84F90];
    (*v115)(v98, 0, 1, v99);
    a3 = v69;
    a1 = v126;
LABEL_35:
    v101 = v121;
    sub_21D0D3954(v98, v121, &qword_27CE5D180, &unk_21DC36510);
    if ((*v116)(v101, 1, v99) == 1)
    {
      sub_21D0CF7E0(v98, &qword_27CE5D180, &unk_21DC36510);
      sub_21D0CF7E0(v101, &qword_27CE5D180, &unk_21DC36510);
    }

    else
    {
      v102 = v101;
      v103 = v122;
      sub_21D0D523C(v102, v122, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0D3954(v103, v123, &qword_27CE58180, &unk_21DC08F30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_21D0FBE34(0, v46[2] + 1, 1, v46);
      }

      v105 = v46[2];
      v104 = v46[3];
      if (v105 >= v104 >> 1)
      {
        v46 = sub_21D0FBE34((v104 > 1), v105 + 1, 1, v46);
      }

      sub_21D0CF7E0(v122, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0CF7E0(v124, &qword_27CE5D180, &unk_21DC36510);
      v46[2] = v105 + 1;
      sub_21D0D523C(v123, v46 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105, &qword_27CE58180, &unk_21DC08F30);
    }

    v48 = v140;
    v45 = v133;
    v47 = v143;
    if (v143 != v133)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_21DA28F9C()
{
  result = qword_27CE64C60;
  if (!qword_27CE64C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &type metadata for TTRAccountsListsViewModel.HashtagFilterOperation.Option, v0, v1);
    atomic_store(result, &qword_27CE64C60);
  }

  return result;
}

unint64_t sub_21DA29038()
{
  result = qword_27CE64C78;
  if (!qword_27CE64C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, &type metadata for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE64C78);
  }

  return result;
}

unint64_t sub_21DA29090()
{
  result = qword_27CE64C80;
  if (!qword_27CE64C80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, &type metadata for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE64C80);
  }

  return result;
}

unint64_t sub_21DA290E8()
{
  result = qword_27CE64C88;
  if (!qword_27CE64C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, &type metadata for TTRAccountsListsViewModel.ItemIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE64C88);
  }

  return result;
}

unint64_t sub_21DA29184()
{
  result = qword_27CE64C98;
  if (!qword_27CE64C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.AccountsCapabilities, &type metadata for TTRAccountsListsViewModel.AccountsCapabilities, v0, v1);
    atomic_store(result, &qword_27CE64C98);
  }

  return result;
}

unint64_t sub_21DA291DC()
{
  result = qword_27CE64CA0;
  if (!qword_27CE64CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsViewModel.AccountsCapabilities, &type metadata for TTRAccountsListsViewModel.AccountsCapabilities, v0, v1);
    atomic_store(result, &qword_27CE64CA0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.PinnedList(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = &v21[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = a2[2];
      *(a1 + 24) = *(a2 + 3);
      v8 = a2[6];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = v8;
      v9 = a2[8];
      *(a1 + 7) = a2[7];
      *(a1 + 8) = v9;
      v10 = a2[9];
      v11 = a2[10];
      v12 = a2[11];
      v13 = a2[12];
      v35 = a2[14];
      v36 = a2[13];
      v34 = *(a2 + 120);
      v14 = v6;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v10, v11, v12, v13, v36, v35, v34);
      *(a1 + 9) = v10;
      *(a1 + 10) = v11;
      *(a1 + 11) = v12;
      *(a1 + 12) = v13;
      *(a1 + 13) = v36;
      *(a1 + 14) = v35;
      a1[120] = v34;
      v15 = a2[16];
      v16 = a2[17];
      LOBYTE(v9) = *(a2 + 144);
      sub_21D0FB9BC(v15, v16, v9);
      *(a1 + 16) = v15;
      *(a1 + 17) = v16;
      a1[144] = v9;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 152) = *(a2 + 19);
      v17 = a2[22];
      *(a1 + 21) = a2[21];
      *(a1 + 22) = v17;
      v18 = a2[24];
      *(a1 + 23) = a2[23];
      *(a1 + 24) = v18;
      v19 = a2[26];
      *(a1 + 25) = a2[25];
      *(a1 + 26) = v19;
      *(a1 + 108) = *(a2 + 108);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = v18;
    }

    else
    {
      v22 = sub_21DBF56BC();
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      v23 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v23[5]] = *(a2 + v23[5]);
      *&a1[v23[6]] = *(a2 + v23[6]);
      v24 = v23[7];
      v25 = &a1[v24];
      v26 = (a2 + v24);
      v28 = *v26;
      v27 = v26[1];
      *v25 = v28;
      *(v25 + 1) = v27;
      *&a1[v23[8]] = *(a2 + v23[8]);
      a1[v23[9]] = *(a2 + v23[9]);
      v29 = v23[10];
      v30 = &a1[v29];
      v31 = (a2 + v29);
      v32 = v31[1];
      *v30 = *v31;
      *(v30 + 1) = v32;
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.PinnedList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v6 = *(a2 + 72);
      v7 = *(a2 + 80);
      v8 = *(a2 + 88);
      v9 = *(a2 + 96);
      v10 = *(a2 + 104);
      v27 = *(a2 + 112);
      v26 = *(a2 + 120);
      v11 = v5;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v6, v7, v8, v9, v10, v27, v26);
      *(a1 + 72) = v6;
      *(a1 + 80) = v7;
      *(a1 + 88) = v8;
      *(a1 + 96) = v9;
      *(a1 + 104) = v10;
      *(a1 + 112) = v27;
      *(a1 + 120) = v26;
      v12 = *(a2 + 128);
      v13 = *(a2 + 136);
      v14 = *(a2 + 144);
      sub_21D0FB9BC(v12, v13, v14);
      *(a1 + 128) = v12;
      *(a1 + 136) = v13;
      *(a1 + 144) = v14;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 146) = *(a2 + 146);
      *(a1 + 147) = *(a2 + 147);
      *(a1 + 148) = *(a2 + 148);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      v15 = *(a2 + 192);
      *(a1 + 192) = v15;
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v16 = v15;
    }

    else
    {
      v17 = sub_21DBF56BC();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      v18 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      *(a1 + v18[5]) = *(a2 + v18[5]);
      *(a1 + v18[6]) = *(a2 + v18[6]);
      v19 = v18[7];
      v20 = (a1 + v19);
      v21 = (a2 + v19);
      *v20 = *v21;
      v20[1] = v21[1];
      *(a1 + v18[8]) = *(a2 + v18[8]);
      *(a1 + v18[9]) = *(a2 + v18[9]);
      v22 = v18[10];
      v23 = (a1 + v22);
      v24 = (a2 + v22);
      *v23 = *v24;
      v23[1] = v24[1];
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsViewModel.PinnedList(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF56BC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    a1[v9[5]] = a2[v9[5]];
    *&a1[v9[6]] = *&a2[v9[6]];
    *&a1[v9[7]] = *&a2[v9[7]];
    *&a1[v9[8]] = *&a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    *&a1[v9[10]] = *&a2[v9[10]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *assignWithTake for TTRAccountsListsViewModel.PinnedList(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF56BC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    a1[v9[5]] = a2[v9[5]];
    *&a1[v9[6]] = *&a2[v9[6]];
    *&a1[v9[7]] = *&a2[v9[7]];
    *&a1[v9[8]] = *&a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    *&a1[v9[10]] = *&a2[v9[10]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.SmartList(void *a1, void *a2, int *a3)
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
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[7];
    v10 = a3[8];
    v11 = (a1 + v9);
    v12 = (a2 + v9);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    *(a1 + v10) = *(a2 + v10);
    v14 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v10 = a3[10];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v13) = *(a2 + v13);
  v14 = a3[10];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.List(uint64_t a1, uint64_t a2)
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
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  sub_21D0FB960(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  sub_21D1078C0(v14, v15, v16, v17, v18, v19, v20);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  LOBYTE(v9) = *(a2 + 144);
  sub_21D0FB9BC(v21, v22, v9);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v9;
  sub_21D0FB9F4(v23, v24, v25);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  sub_21DBF8E0C();

  *(a1 + 176) = *(a2 + 176);
  sub_21DBF8E0C();

  *(a1 + 184) = *(a2 + 184);
  sub_21DBF8E0C();

  v26 = *(a1 + 192);
  v27 = *(a2 + 192);
  *(a1 + 192) = v27;
  v28 = v27;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  sub_21DBF8E0C();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  v8 = *(a2 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v8;
  sub_21D1078C0(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 144);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  sub_21D0FB9F4(v17, v18, v19);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  v20 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);

  v21 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v21;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  return a1;
}

void destroy for TTRAccountsListsViewModel.Group(uint64_t a1)
{

  v2 = *(a1 + 48);
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;
  v6 = v4;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.Group(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.Account(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 31) = *(a2 + 31);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.Account(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 31) = *(a2 + 31);
  return a1;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  sub_21D5D5C84(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  sub_21D5D5C84(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  sub_21D5D60A0(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, v22);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
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
  v15 = *(a1 + 88);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  sub_21D5D60A0(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, v15);
  return a1;
}

uint64_t sub_21DA2A7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21DA2A840(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21DA2A8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A908(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.HashtagsSection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v8(v10, v11, v7);
      *&v10[*(v12 + 20)] = *&v11[*(v12 + 20)];
      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      v16 = *(v13 + 56);
      sub_21DBF8E0C();
      v16(v10, 0, 1, v12);
    }
  }

  return a1;
}

double destroy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v6 = a1 + *(a2 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v5(v6, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v7(v9, v10, v6);
    *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    v14 = *(v12 + 56);
    sub_21DBF8E0C();
    v14(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v19 = *(v6 - 8);
  v7 = *(v19 + 24);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v20 = a1;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      v7(v9, v10, v6);
      *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
      sub_21DBF8E0C();

      v9[*(v11 + 24)] = v10[*(v11 + 24)];
      return v20;
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    memcpy(v9, v10, *(*(v17 - 8) + 64));
    return v20;
  }

  (*(v19 + 16))(v9, v10, v6);
  *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
  v9[*(v11 + 24)] = v10[*(v11 + 24)];
  v16 = *(v12 + 56);
  sub_21DBF8E0C();
  v16(v9, 0, 1, v11);
  return v20;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v7(v9, v10, v6);
    *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v18 = *(v6 - 8);
  v7 = *(v18 + 40);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v19 = a1;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      v7(v9, v10, v6);
      *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];

      v9[*(v11 + 24)] = v10[*(v11 + 24)];
      return v19;
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
    memcpy(v9, v10, *(*(v16 - 8) + 64));
    return v19;
  }

  (*(v18 + 32))(v9, v10, v6);
  *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
  v9[*(v11 + 24)] = v10[*(v11 + 24)];
  (*(v12 + 56))(v9, 0, 1, v11);
  return v19;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.HashtagFilterOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.HashtagFilterOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *sub_21DA2B6D4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21DA2B7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF56BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *initializeWithCopy for TTRAccountsListsViewModel.RecentlyDeletedList(void *a1, uint64_t a2)
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
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.RecentlyDeletedList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.RecentlyDeletedList(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  *(a1 + 24) = a2[3];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.ItemIdentifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v6 = sub_21DBF56BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v4 = sub_21DBF56BC();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF56BC();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF56BC();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF56BC();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF56BC();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v7 = sub_21DBF56BC();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_20;
      case 2u:
        v34 = sub_21DBF56BC();
        (*(*(v34 - 8) + 16))(a1, a2, v34);
        v35 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v35 + 20)] = *&a2[*(v35 + 20)];
        a1[*(v35 + 24)] = a2[*(v35 + 24)];
        sub_21DBF8E0C();
        goto LABEL_20;
      case 3u:
        v38 = sub_21DBF56BC();
        (*(*(v38 - 8) + 16))(a1, a2, v38);
        v39 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v39[5]] = a2[v39[5]];
        *&a1[v39[6]] = *&a2[v39[6]];
        v40 = v39[7];
        v41 = &a1[v40];
        v42 = &a2[v40];
        v44 = *v42;
        v43 = *(v42 + 1);
        *v41 = v44;
        *(v41 + 1) = v43;
        *&a1[v39[8]] = *&a2[v39[8]];
        a1[v39[9]] = a2[v39[9]];
        v45 = v39[10];
        v46 = &a1[v45];
        v47 = &a2[v45];
        v48 = *(v47 + 1);
        *v46 = *v47;
        *(v46 + 1) = v48;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_20;
      case 4u:
        v14 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v14;
        v15 = *(a2 + 2);
        *(a1 + 2) = v15;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v16 = v15;
        goto LABEL_20;
      case 5u:
      case 6u:
        v53 = *a2;
        v54 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v54;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v55 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v55;
        v56 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v56;
        v57 = *(a2 + 9);
        v58 = *(a2 + 10);
        v59 = *(a2 + 11);
        v60 = *(a2 + 12);
        v75 = *(a2 + 14);
        v77 = *(a2 + 13);
        v73 = a2[120];
        v61 = v53;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v57, v58, v59, v60, v77, v75, v73);
        *(a1 + 9) = v57;
        *(a1 + 10) = v58;
        *(a1 + 11) = v59;
        *(a1 + 12) = v60;
        *(a1 + 13) = v77;
        *(a1 + 14) = v75;
        a1[120] = v73;
        v62 = *(a2 + 16);
        v63 = *(a2 + 17);
        LOBYTE(v56) = a2[144];
        sub_21D0FB9BC(v62, v63, v56);
        *(a1 + 16) = v62;
        *(a1 + 17) = v63;
        a1[144] = v56;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v64 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v64;
        v65 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v65;
        v66 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v66;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v67 = v65;
        sub_21DBF8E0C();
        goto LABEL_20;
      case 7u:
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v49;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v51 = *(a2 + 6);
        v50 = *(a2 + 7);
        *(a1 + 6) = v51;
        *(a1 + 7) = v50;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = v51;
        goto LABEL_20;
      case 9u:
        v25 = *a2;
        v26 = *(a2 + 1);
        v27 = *(a2 + 2);
        v28 = *(a2 + 3);
        v29 = *(a2 + 4);
        v30 = *(a2 + 5);
        v31 = *(a2 + 6);
        v71 = *(a2 + 8);
        v72 = *(a2 + 9);
        v74 = *(a2 + 10);
        v76 = a2[88];
        v32 = *a2;
        v33 = *(a2 + 7);
        sub_21D5D5C84(v32, v26, v27, v28, v29, v30, v31, v33, v71, v72, v74, v76);
        *a1 = v25;
        *(a1 + 1) = v26;
        *(a1 + 2) = v27;
        *(a1 + 3) = v28;
        *(a1 + 4) = v29;
        *(a1 + 5) = v30;
        *(a1 + 6) = v31;
        *(a1 + 7) = v33;
        *(a1 + 8) = v71;
        *(a1 + 9) = v72;
        *(a1 + 10) = v74;
        a1[88] = v76;
        goto LABEL_20;
      case 0xBu:
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;
        sub_21DBF8E0C();
        goto LABEL_20;
      case 0xCu:
        v17 = sub_21DBF56BC();
        v18 = *(*(v17 - 8) + 16);
        v18(a1, a2, v17);
        v19 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v20 = &a1[v19];
        v21 = &a2[v19];
        v22 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v21, 1, v22))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
          memcpy(v20, v21, *(*(v24 - 8) + 64));
        }

        else
        {
          v18(v20, v21, v17);
          *&v20[*(v22 + 20)] = *&v21[*(v22 + 20)];
          v20[*(v22 + 24)] = v21[*(v22 + 24)];
          v70 = *(v23 + 56);
          sub_21DBF8E0C();
          v70(v20, 0, 1, v22);
        }

        goto LABEL_20;
      case 0xDu:
        v68 = sub_21DBF56BC();
        (*(*(v68 - 8) + 16))(a1, a2, v68);
        v69 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v69 + 20)] = *&a2[*(v69 + 20)];
        a1[*(v69 + 24)] = a2[*(v69 + 24)];
        sub_21DBF8E0C();
        goto LABEL_20;
      case 0xEu:
        v9 = *a2;
        v10 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v10;
        v11 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v11;
        v12 = v9;
        sub_21DBF8E0C();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v36 = *(v6 + 64);

        return memcpy(a1, a2, v36);
    }
  }

  v8 = *a2;
  *a1 = *a2;
  a1 = (v8 + ((v5 + 16) & ~v5));

  return a1;
}

char *assignWithCopy for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v6 = sub_21DBF56BC();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_19;
      case 2u:
        v28 = sub_21DBF56BC();
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v29 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v29 + 20)] = *&a2[*(v29 + 20)];
        a1[*(v29 + 24)] = a2[*(v29 + 24)];
        sub_21DBF8E0C();
        goto LABEL_19;
      case 3u:
        v32 = sub_21DBF56BC();
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v33[5]] = a2[v33[5]];
        *&a1[v33[6]] = *&a2[v33[6]];
        v34 = v33[7];
        v35 = &a1[v34];
        v36 = &a2[v34];
        *v35 = *v36;
        *(v35 + 1) = *(v36 + 1);
        *&a1[v33[8]] = *&a2[v33[8]];
        a1[v33[9]] = a2[v33[9]];
        v37 = v33[10];
        v38 = &a1[v37];
        v39 = &a2[v37];
        *v38 = *v39;
        *(v38 + 1) = *(v39 + 1);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_19;
      case 4u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v9 = *(a2 + 2);
        *(a1 + 2) = v9;
        a1[24] = a2[24];
        a1[25] = a2[25];
        a1[26] = a2[26];
        a1[27] = a2[27];
        a1[28] = a2[28];
        a1[29] = a2[29];
        a1[30] = a2[30];
        a1[31] = a2[31];
        sub_21DBF8E0C();
        v10 = v9;
        goto LABEL_19;
      case 5u:
      case 6u:
        v42 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        v43 = *(a2 + 9);
        v44 = *(a2 + 10);
        v45 = *(a2 + 11);
        v46 = *(a2 + 12);
        v60 = *(a2 + 14);
        v62 = *(a2 + 13);
        v58 = a2[120];
        v47 = v42;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v43, v44, v45, v46, v62, v60, v58);
        *(a1 + 9) = v43;
        *(a1 + 10) = v44;
        *(a1 + 11) = v45;
        *(a1 + 12) = v46;
        *(a1 + 13) = v62;
        *(a1 + 14) = v60;
        a1[120] = v58;
        v48 = *(a2 + 16);
        v49 = *(a2 + 17);
        v50 = a2[144];
        sub_21D0FB9BC(v48, v49, v50);
        *(a1 + 16) = v48;
        *(a1 + 17) = v49;
        a1[144] = v50;
        a1[145] = a2[145];
        a1[146] = a2[146];
        a1[147] = a2[147];
        a1[148] = a2[148];
        *(a1 + 19) = *(a2 + 19);
        *(a1 + 20) = *(a2 + 20);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = *(a2 + 22);
        *(a1 + 23) = *(a2 + 23);
        v51 = *(a2 + 24);
        *(a1 + 24) = v51;
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = *(a2 + 26);
        a1[216] = a2[216];
        a1[217] = a2[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = v51;
        sub_21DBF8E0C();
        goto LABEL_19;
      case 7u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v40 = *(a2 + 6);
        *(a1 + 6) = v40;
        *(a1 + 7) = *(a2 + 7);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v41 = v40;
        goto LABEL_19;
      case 9u:
        v19 = *a2;
        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        v22 = *(a2 + 3);
        v23 = *(a2 + 4);
        v24 = *(a2 + 5);
        v25 = *(a2 + 6);
        v56 = *(a2 + 8);
        v57 = *(a2 + 9);
        v59 = *(a2 + 10);
        v61 = a2[88];
        v26 = *a2;
        v27 = *(a2 + 7);
        sub_21D5D5C84(v26, v20, v21, v22, v23, v24, v25, v27, v56, v57, v59, v61);
        *a1 = v19;
        *(a1 + 1) = v20;
        *(a1 + 2) = v21;
        *(a1 + 3) = v22;
        *(a1 + 4) = v23;
        *(a1 + 5) = v24;
        *(a1 + 6) = v25;
        *(a1 + 7) = v27;
        *(a1 + 8) = v56;
        *(a1 + 9) = v57;
        *(a1 + 10) = v59;
        a1[88] = v61;
        goto LABEL_19;
      case 0xBu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        sub_21DBF8E0C();
        goto LABEL_19;
      case 0xCu:
        v11 = sub_21DBF56BC();
        v12 = *(*(v11 - 8) + 16);
        v12(a1, a2, v11);
        v13 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v14 = &a1[v13];
        v15 = &a2[v13];
        v16 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v15, 1, v16))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
          memcpy(v14, v15, *(*(v18 - 8) + 64));
        }

        else
        {
          v12(v14, v15, v11);
          *&v14[*(v16 + 20)] = *&v15[*(v16 + 20)];
          v14[*(v16 + 24)] = v15[*(v16 + 24)];
          v55 = *(v17 + 56);
          sub_21DBF8E0C();
          v55(v14, 0, 1, v16);
        }

        goto LABEL_19;
      case 0xDu:
        v53 = sub_21DBF56BC();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        v54 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v54 + 20)] = *&a2[*(v54 + 20)];
        a1[*(v54 + 24)] = a2[*(v54 + 24)];
        sub_21DBF8E0C();
        goto LABEL_19;
      case 0xEu:
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v8 = v7;
        sub_21DBF8E0C();
LABEL_19:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v30 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v30);
    }
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload > 11)
    {
      if (EnumCaseMultiPayload == 12)
      {
        v14 = sub_21DBF56BC();
        v15 = *(*(v14 - 8) + 32);
        v15(a1, a2, v14);
        v16 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v17 = &a1[v16];
        v18 = &a2[v16];
        v19 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v15(v17, v18, v14);
          *&v17[*(v19 + 20)] = *&v18[*(v19 + 20)];
          v17[*(v19 + 24)] = v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 13)
      {
        v10 = sub_21DBF56BC();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v11 + 20)] = *&a2[*(v11 + 20)];
        a1[*(v11 + 24)] = a2[*(v11 + 24)];
        goto LABEL_23;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_4;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_21DBF56BC();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v13 + 20)] = *&a2[*(v13 + 20)];
      a1[*(v13 + 24)] = a2[*(v13 + 24)];
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v9[5]] = a2[v9[5]];
      *&a1[v9[6]] = *&a2[v9[6]];
      *&a1[v9[7]] = *&a2[v9[7]];
      *&a1[v9[8]] = *&a2[v9[8]];
      a1[v9[9]] = a2[v9[9]];
      *&a1[v9[10]] = *&a2[v9[10]];
      goto LABEL_23;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_4:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_23:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.AuxiliaryData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v3 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v7 = *a2;
      sub_21D0FF19C(*a2, *(a2 + 8));
      *a1 = v7;
      *(a1 + 8) = v3;
    }
  }

  else if (v3 == 255)
  {
    sub_21D104D50(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v4 = *a2;
    sub_21D0FF19C(*a2, *(a2 + 8));
    v5 = *a1;
    *a1 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    sub_21D0FF670(v5, v6);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.AuxiliaryData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.AuxiliaryData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.AuxiliaryData.Model(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D0FF19C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D0FF670(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.AuxiliaryData.Model(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D0FF670(v4, v5);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = sub_21DBF6C1C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      v10 = *(a2 + 3);
      v11 = *(a2 + 4);
      v12 = *(a2 + 5);
      v13 = *(a2 + 6);
      v14 = *(a2 + 7);
      v89 = *(a2 + 9);
      v90 = *(a2 + 10);
      v91 = *(a2 + 11);
      v92 = *(a2 + 12);
      v93 = *(a2 + 13);
      v94 = *(a2 + 14);
      v95 = *(a2 + 15);
      v96 = *(a2 + 16);
      v97 = *(a2 + 17);
      v98 = *(a2 + 18);
      v99 = *(a2 + 19);
      v100 = *(a2 + 20);
      v101 = *(a2 + 21);
      v102 = *(a2 + 22);
      v103 = *(a2 + 23);
      v104 = *(a2 + 24);
      v106 = *(a2 + 25);
      v109 = *(a2 + 26);
      v112 = *(a2 + 108);
      v15 = *(a2 + 8);
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v22 = v13;
      v23 = v14;
      sub_21DA30840(v7, v8, v9, v10, v11, v12, v13, v14, v15, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v106, v109, v112);
      *a1 = v16;
      *(a1 + 1) = v17;
      *(a1 + 2) = v18;
      *(a1 + 3) = v19;
      *(a1 + 4) = v20;
      *(a1 + 5) = v21;
      *(a1 + 6) = v22;
      *(a1 + 7) = v23;
      *(a1 + 8) = v15;
      *(a1 + 9) = v89;
      *(a1 + 10) = v90;
      *(a1 + 11) = v91;
      *(a1 + 12) = v92;
      *(a1 + 13) = v93;
      *(a1 + 14) = v94;
      *(a1 + 15) = v95;
      *(a1 + 16) = v96;
      *(a1 + 17) = v97;
      *(a1 + 18) = v98;
      *(a1 + 19) = v99;
      *(a1 + 20) = v100;
      *(a1 + 21) = v101;
      *(a1 + 22) = v102;
      *(a1 + 23) = v103;
      *(a1 + 24) = v104;
      *(a1 + 25) = v106;
      *(a1 + 26) = v109;
      *(a1 + 108) = v112;
    }

    else
    {
      v26 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v27 = sub_21DBF56BC();
          (*(*(v27 - 8) + 16))(a1, a2, v27);
          goto LABEL_22;
        case 2u:
          v53 = sub_21DBF56BC();
          (*(*(v53 - 8) + 16))(a1, a2, v53);
          v54 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          *&a1[*(v54 + 20)] = *&a2[*(v54 + 20)];
          a1[*(v54 + 24)] = a2[*(v54 + 24)];
          sub_21DBF8E0C();
          goto LABEL_22;
        case 3u:
          v55 = sub_21DBF56BC();
          (*(*(v55 - 8) + 16))(a1, a2, v55);
          v56 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
          a1[v56[5]] = a2[v56[5]];
          *&a1[v56[6]] = *&a2[v56[6]];
          v57 = v56[7];
          v58 = &a1[v57];
          v59 = &a2[v57];
          v61 = *v59;
          v60 = *(v59 + 1);
          *v58 = v61;
          *(v58 + 1) = v60;
          *&a1[v56[8]] = *&a2[v56[8]];
          a1[v56[9]] = a2[v56[9]];
          v62 = v56[10];
          v63 = &a1[v62];
          v64 = &a2[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          goto LABEL_22;
        case 4u:
          v33 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v33;
          v34 = *(a2 + 2);
          *(a1 + 2) = v34;
          a1[24] = a2[24];
          a1[25] = a2[25];
          *(a1 + 26) = *(a2 + 26);
          *(a1 + 15) = *(a2 + 15);
          sub_21DBF8E0C();
          v35 = v34;
          goto LABEL_22;
        case 5u:
        case 6u:
          v70 = *a2;
          v71 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v71;
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 24) = *(a2 + 24);
          v72 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v72;
          v73 = *(a2 + 8);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = v73;
          v74 = *(a2 + 9);
          v75 = *(a2 + 10);
          v76 = *(a2 + 11);
          v77 = *(a2 + 12);
          v111 = *(a2 + 14);
          v114 = *(a2 + 13);
          v108 = a2[120];
          v78 = v70;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21D0FB960(v74, v75, v76, v77, v114, v111, v108);
          *(a1 + 9) = v74;
          *(a1 + 10) = v75;
          *(a1 + 11) = v76;
          *(a1 + 12) = v77;
          *(a1 + 13) = v114;
          *(a1 + 14) = v111;
          a1[120] = v108;
          v79 = *(a2 + 16);
          v80 = *(a2 + 17);
          LOBYTE(v73) = a2[144];
          sub_21D0FB9BC(v79, v80, v73);
          *(a1 + 16) = v79;
          *(a1 + 17) = v80;
          a1[144] = v73;
          *(a1 + 145) = *(a2 + 145);
          *(a1 + 152) = *(a2 + 152);
          v81 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v81;
          v82 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v82;
          v83 = *(a2 + 26);
          *(a1 + 25) = *(a2 + 25);
          *(a1 + 26) = v83;
          *(a1 + 108) = *(a2 + 108);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v84 = v82;
          sub_21DBF8E0C();
          goto LABEL_22;
        case 7u:
          v66 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v66;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 4) = *(a2 + 4);
          a1[40] = a2[40];
          v68 = *(a2 + 6);
          v67 = *(a2 + 7);
          *(a1 + 6) = v68;
          *(a1 + 7) = v67;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v69 = v68;
          goto LABEL_22;
        case 9u:
          v44 = *a2;
          v45 = *(a2 + 1);
          v46 = *(a2 + 2);
          v47 = *(a2 + 3);
          v48 = *(a2 + 4);
          v49 = *(a2 + 5);
          v50 = *(a2 + 6);
          v105 = *(a2 + 8);
          v107 = *(a2 + 9);
          v110 = *(a2 + 10);
          v113 = a2[88];
          v51 = *a2;
          v52 = *(a2 + 7);
          sub_21D5D5C84(v51, v45, v46, v47, v48, v49, v50, v52, v105, v107, v110, v113);
          *a1 = v44;
          *(a1 + 1) = v45;
          *(a1 + 2) = v46;
          *(a1 + 3) = v47;
          *(a1 + 4) = v48;
          *(a1 + 5) = v49;
          *(a1 + 6) = v50;
          *(a1 + 7) = v52;
          *(a1 + 8) = v105;
          *(a1 + 9) = v107;
          *(a1 + 10) = v110;
          a1[88] = v113;
          goto LABEL_22;
        case 0xBu:
          v32 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v32;
          sub_21DBF8E0C();
          goto LABEL_22;
        case 0xCu:
          v36 = sub_21DBF56BC();
          v37 = *(*(v36 - 8) + 16);
          v37(a1, a2, v36);
          v38 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v39 = &a1[v38];
          v40 = &a2[v38];
          v41 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v42 = *(v41 - 8);
          if ((*(v42 + 48))(v40, 1, v41))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
            memcpy(v39, v40, *(*(v43 - 8) + 64));
          }

          else
          {
            v37(v39, v40, v36);
            *&v39[*(v41 + 20)] = *&v40[*(v41 + 20)];
            v39[*(v41 + 24)] = v40[*(v41 + 24)];
            v87 = *(v42 + 56);
            sub_21DBF8E0C();
            v87(v39, 0, 1, v41);
          }

          goto LABEL_22;
        case 0xDu:
          v85 = sub_21DBF56BC();
          (*(*(v85 - 8) + 16))(a1, a2, v85);
          v86 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v86 + 20)] = *&a2[*(v86 + 20)];
          a1[*(v86 + 24)] = a2[*(v86 + 24)];
          sub_21DBF8E0C();
          goto LABEL_22;
        case 0xEu:
          v28 = *a2;
          v29 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v29;
          v30 = *(a2 + 3);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = v30;
          v31 = v28;
          sub_21DBF8E0C();
LABEL_22:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v26 - 8) + 64));
          break;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for TTRAccountsListsViewModel.FallbackSelection(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v5 = sub_21DBF6C1C();
LABEL_9:
      v6 = *(*(v5 - 8) + 8);

      v6(a1, v5);
      break;
    case 1:
      return sub_21DA309F0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216));
    case 0:
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v5 = sub_21DBF56BC();
          goto LABEL_9;
        case 2u:
          v7 = sub_21DBF56BC();
          (*(*(v7 - 8) + 8))(a1, v7);
          type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          goto LABEL_24;
        case 3u:
          v13 = sub_21DBF56BC();
          (*(*(v13 - 8) + 8))(a1, v13);
          type metadata accessor for TTRAccountsListsViewModel.SmartList(0);

          goto LABEL_24;
        case 4u:

          v12 = *(a1 + 16);
          goto LABEL_20;
        case 5u:
        case 6u:

          sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
          sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));

          goto LABEL_24;
        case 7u:

          v12 = *(a1 + 48);
LABEL_20:

          return result;
        case 9u:
          sub_21D5D60A0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
          return result;
        case 0xBu:
          goto LABEL_24;
        case 0xCu:
          v8 = sub_21DBF56BC();
          v9 = *(*(v8 - 8) + 8);
          v9(a1, v8);
          v10 = a1 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          if ((*(*(v11 - 8) + 48))(v10, 1, v11))
          {
            return result;
          }

          v9(v10, v8);
LABEL_24:

          break;
        case 0xDu:
          v14 = sub_21DBF56BC();
          (*(*(v14 - 8) + 8))(a1, v14);
          type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          goto LABEL_24;
        case 0xEu:

          goto LABEL_24;
        default:
          return result;
      }

      break;
  }

  return result;
}

char *initializeWithCopy for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v23 = sub_21DBF6C1C();
    (*(*(v23 - 8) + 16))(a1, a2, v23);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    v11 = *(a2 + 5);
    v12 = *(a2 + 6);
    v13 = *(a2 + 7);
    v87 = *(a2 + 9);
    v88 = *(a2 + 10);
    v89 = *(a2 + 11);
    v90 = *(a2 + 12);
    v91 = *(a2 + 13);
    v92 = *(a2 + 14);
    v93 = *(a2 + 15);
    v94 = *(a2 + 16);
    v95 = *(a2 + 17);
    v96 = *(a2 + 18);
    v97 = *(a2 + 19);
    v98 = *(a2 + 20);
    v99 = *(a2 + 21);
    v100 = *(a2 + 22);
    v101 = *(a2 + 23);
    v102 = *(a2 + 24);
    v104 = *(a2 + 25);
    v107 = *(a2 + 26);
    v110 = *(a2 + 108);
    v14 = *(a2 + 8);
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    sub_21DA30840(v6, v7, v8, v9, v10, v11, v12, v13, v14, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v104, v107, v110);
    *a1 = v15;
    *(a1 + 1) = v16;
    *(a1 + 2) = v17;
    *(a1 + 3) = v18;
    *(a1 + 4) = v19;
    *(a1 + 5) = v20;
    *(a1 + 6) = v21;
    *(a1 + 7) = v22;
    *(a1 + 8) = v14;
    *(a1 + 9) = v87;
    *(a1 + 10) = v88;
    *(a1 + 11) = v89;
    *(a1 + 12) = v90;
    *(a1 + 13) = v91;
    *(a1 + 14) = v92;
    *(a1 + 15) = v93;
    *(a1 + 16) = v94;
    *(a1 + 17) = v95;
    *(a1 + 18) = v96;
    *(a1 + 19) = v97;
    *(a1 + 20) = v98;
    *(a1 + 21) = v99;
    *(a1 + 22) = v100;
    *(a1 + 23) = v101;
    *(a1 + 24) = v102;
    *(a1 + 25) = v104;
    *(a1 + 26) = v107;
    *(a1 + 108) = v110;
  }

  else
  {
    v25 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v26 = sub_21DBF56BC();
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        swift_storeEnumTagMultiPayload();
        break;
      case 2u:
        v52 = sub_21DBF56BC();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        v53 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v53 + 20)] = *&a2[*(v53 + 20)];
        a1[*(v53 + 24)] = a2[*(v53 + 24)];
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 3u:
        v54 = sub_21DBF56BC();
        (*(*(v54 - 8) + 16))(a1, a2, v54);
        v55 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v55[5]] = a2[v55[5]];
        *&a1[v55[6]] = *&a2[v55[6]];
        v56 = v55[7];
        v57 = &a1[v56];
        v58 = &a2[v56];
        v60 = *v58;
        v59 = *(v58 + 1);
        *v57 = v60;
        *(v57 + 1) = v59;
        *&a1[v55[8]] = *&a2[v55[8]];
        a1[v55[9]] = a2[v55[9]];
        v61 = v55[10];
        v62 = &a1[v61];
        v63 = &a2[v61];
        v64 = *(v63 + 1);
        *v62 = *v63;
        *(v62 + 1) = v64;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 4u:
        v32 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v32;
        v33 = *(a2 + 2);
        *(a1 + 2) = v33;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        break;
      case 5u:
      case 6u:
        v69 = *a2;
        v70 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v70;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v71 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v71;
        v72 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v72;
        v73 = *(a2 + 9);
        v74 = *(a2 + 10);
        v75 = *(a2 + 11);
        v76 = *(a2 + 12);
        v109 = *(a2 + 14);
        v112 = *(a2 + 13);
        v106 = a2[120];
        v77 = v69;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v73, v74, v75, v76, v112, v109, v106);
        *(a1 + 9) = v73;
        *(a1 + 10) = v74;
        *(a1 + 11) = v75;
        *(a1 + 12) = v76;
        *(a1 + 13) = v112;
        *(a1 + 14) = v109;
        a1[120] = v106;
        v78 = *(a2 + 16);
        v79 = *(a2 + 17);
        LOBYTE(v72) = a2[144];
        sub_21D0FB9BC(v78, v79, v72);
        *(a1 + 16) = v78;
        *(a1 + 17) = v79;
        a1[144] = v72;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v80 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v80;
        v81 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v81;
        v82 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v82;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v83 = v81;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 7u:
        v65 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v65;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v67 = *(a2 + 6);
        v66 = *(a2 + 7);
        *(a1 + 6) = v67;
        *(a1 + 7) = v66;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v68 = v67;
        swift_storeEnumTagMultiPayload();
        break;
      case 9u:
        v43 = *a2;
        v44 = *(a2 + 1);
        v45 = *(a2 + 2);
        v46 = *(a2 + 3);
        v47 = *(a2 + 4);
        v48 = *(a2 + 5);
        v49 = *(a2 + 6);
        v103 = *(a2 + 8);
        v105 = *(a2 + 9);
        v108 = *(a2 + 10);
        v111 = a2[88];
        v50 = *a2;
        v51 = *(a2 + 7);
        sub_21D5D5C84(v50, v44, v45, v46, v47, v48, v49, v51, v103, v105, v108, v111);
        *a1 = v43;
        *(a1 + 1) = v44;
        *(a1 + 2) = v45;
        *(a1 + 3) = v46;
        *(a1 + 4) = v47;
        *(a1 + 5) = v48;
        *(a1 + 6) = v49;
        *(a1 + 7) = v51;
        *(a1 + 8) = v103;
        *(a1 + 9) = v105;
        *(a1 + 10) = v108;
        a1[88] = v111;
        swift_storeEnumTagMultiPayload();
        break;
      case 0xBu:
        v31 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v31;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xCu:
        v35 = sub_21DBF56BC();
        v36 = *(*(v35 - 8) + 16);
        v36(a1, a2, v35);
        v37 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v41 = *(v40 - 8);
        if ((*(v41 + 48))(v39, 1, v40))
        {
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
          memcpy(v38, v39, *(*(v42 - 8) + 64));
        }

        else
        {
          v36(v38, v39, v35);
          *&v38[*(v40 + 20)] = *&v39[*(v40 + 20)];
          v38[*(v40 + 24)] = v39[*(v40 + 24)];
          v86 = *(v41 + 56);
          sub_21DBF8E0C();
          v86(v38, 0, 1, v40);
        }

        swift_storeEnumTagMultiPayload();
        break;
      case 0xDu:
        v84 = sub_21DBF56BC();
        (*(*(v84 - 8) + 16))(a1, a2, v84);
        v85 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v85 + 20)] = *&a2[*(v85 + 20)];
        a1[*(v85 + 24)] = a2[*(v85 + 24)];
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xEu:
        v27 = *a2;
        v28 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v28;
        v29 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v29;
        v30 = v27;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v25 - 8) + 64));
        break;
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v23 = sub_21DBF6C1C();
      (*(*(v23 - 8) + 16))(a1, a2, v23);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v9 = *(a2 + 3);
      v10 = *(a2 + 4);
      v11 = *(a2 + 5);
      v12 = *(a2 + 6);
      v13 = *(a2 + 7);
      v74 = *(a2 + 9);
      v75 = *(a2 + 10);
      v76 = *(a2 + 11);
      v77 = *(a2 + 12);
      v78 = *(a2 + 13);
      v79 = *(a2 + 14);
      v80 = *(a2 + 15);
      v81 = *(a2 + 16);
      v82 = *(a2 + 17);
      v83 = *(a2 + 18);
      v84 = *(a2 + 19);
      v85 = *(a2 + 20);
      v86 = *(a2 + 21);
      v87 = *(a2 + 22);
      v88 = *(a2 + 23);
      v89 = *(a2 + 24);
      v91 = *(a2 + 25);
      v94 = *(a2 + 26);
      v97 = *(a2 + 108);
      v14 = *(a2 + 8);
      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v22 = v13;
      sub_21DA30840(v6, v7, v8, v9, v10, v11, v12, v13, v14, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v91, v94, v97);
      *a1 = v15;
      *(a1 + 1) = v16;
      *(a1 + 2) = v17;
      *(a1 + 3) = v18;
      *(a1 + 4) = v19;
      *(a1 + 5) = v20;
      *(a1 + 6) = v21;
      *(a1 + 7) = v22;
      *(a1 + 8) = v14;
      *(a1 + 9) = v74;
      *(a1 + 10) = v75;
      *(a1 + 11) = v76;
      *(a1 + 12) = v77;
      *(a1 + 13) = v78;
      *(a1 + 14) = v79;
      *(a1 + 15) = v80;
      *(a1 + 16) = v81;
      *(a1 + 17) = v82;
      *(a1 + 18) = v83;
      *(a1 + 19) = v84;
      *(a1 + 20) = v85;
      *(a1 + 21) = v86;
      *(a1 + 22) = v87;
      *(a1 + 23) = v88;
      *(a1 + 24) = v89;
      *(a1 + 25) = v91;
      *(a1 + 26) = v94;
      *(a1 + 108) = v97;
    }

    else
    {
      v25 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v26 = sub_21DBF56BC();
          (*(*(v26 - 8) + 16))(a1, a2, v26);
          swift_storeEnumTagMultiPayload();
          break;
        case 2u:
          v48 = sub_21DBF56BC();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          v49 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          *&a1[*(v49 + 20)] = *&a2[*(v49 + 20)];
          a1[*(v49 + 24)] = a2[*(v49 + 24)];
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 3u:
          v50 = sub_21DBF56BC();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          v51 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
          a1[v51[5]] = a2[v51[5]];
          *&a1[v51[6]] = *&a2[v51[6]];
          v52 = v51[7];
          v53 = &a1[v52];
          v54 = &a2[v52];
          *v53 = *v54;
          *(v53 + 1) = *(v54 + 1);
          *&a1[v51[8]] = *&a2[v51[8]];
          a1[v51[9]] = a2[v51[9]];
          v55 = v51[10];
          v56 = &a1[v55];
          v57 = &a2[v55];
          *v56 = *v57;
          *(v56 + 1) = *(v57 + 1);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 4u:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          v29 = *(a2 + 2);
          *(a1 + 2) = v29;
          a1[24] = a2[24];
          a1[25] = a2[25];
          a1[26] = a2[26];
          a1[27] = a2[27];
          a1[28] = a2[28];
          a1[29] = a2[29];
          a1[30] = a2[30];
          a1[31] = a2[31];
          sub_21DBF8E0C();
          v30 = v29;
          swift_storeEnumTagMultiPayload();
          break;
        case 5u:
        case 6u:
          v60 = *a2;
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = *(a2 + 6);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = *(a2 + 8);
          v61 = *(a2 + 9);
          v62 = *(a2 + 10);
          v63 = *(a2 + 11);
          v64 = *(a2 + 12);
          v96 = *(a2 + 14);
          v99 = *(a2 + 13);
          v93 = a2[120];
          v65 = v60;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21D0FB960(v61, v62, v63, v64, v99, v96, v93);
          *(a1 + 9) = v61;
          *(a1 + 10) = v62;
          *(a1 + 11) = v63;
          *(a1 + 12) = v64;
          *(a1 + 13) = v99;
          *(a1 + 14) = v96;
          a1[120] = v93;
          v66 = *(a2 + 16);
          v67 = *(a2 + 17);
          v68 = a2[144];
          sub_21D0FB9BC(v66, v67, v68);
          *(a1 + 16) = v66;
          *(a1 + 17) = v67;
          a1[144] = v68;
          a1[145] = a2[145];
          a1[146] = a2[146];
          a1[147] = a2[147];
          a1[148] = a2[148];
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = *(a2 + 22);
          *(a1 + 23) = *(a2 + 23);
          v69 = *(a2 + 24);
          *(a1 + 24) = v69;
          *(a1 + 25) = *(a2 + 25);
          *(a1 + 26) = *(a2 + 26);
          a1[216] = a2[216];
          a1[217] = a2[217];
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v70 = v69;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 7u:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = *(a2 + 4);
          a1[40] = a2[40];
          v58 = *(a2 + 6);
          *(a1 + 6) = v58;
          *(a1 + 7) = *(a2 + 7);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v59 = v58;
          swift_storeEnumTagMultiPayload();
          break;
        case 9u:
          v39 = *a2;
          v40 = *(a2 + 1);
          v41 = *(a2 + 2);
          v42 = *(a2 + 3);
          v43 = *(a2 + 4);
          v44 = *(a2 + 5);
          v45 = *(a2 + 6);
          v90 = *(a2 + 8);
          v92 = *(a2 + 9);
          v95 = *(a2 + 10);
          v98 = a2[88];
          v46 = *a2;
          v47 = *(a2 + 7);
          sub_21D5D5C84(v46, v40, v41, v42, v43, v44, v45, v47, v90, v92, v95, v98);
          *a1 = v39;
          *(a1 + 1) = v40;
          *(a1 + 2) = v41;
          *(a1 + 3) = v42;
          *(a1 + 4) = v43;
          *(a1 + 5) = v44;
          *(a1 + 6) = v45;
          *(a1 + 7) = v47;
          *(a1 + 8) = v90;
          *(a1 + 9) = v92;
          *(a1 + 10) = v95;
          a1[88] = v98;
          swift_storeEnumTagMultiPayload();
          break;
        case 0xBu:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 0xCu:
          v31 = sub_21DBF56BC();
          v32 = *(*(v31 - 8) + 16);
          v32(a1, a2, v31);
          v33 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v34 = &a1[v33];
          v35 = &a2[v33];
          v36 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(v35, 1, v36))
          {
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
            memcpy(v34, v35, *(*(v38 - 8) + 64));
          }

          else
          {
            v32(v34, v35, v31);
            *&v34[*(v36 + 20)] = *&v35[*(v36 + 20)];
            v34[*(v36 + 24)] = v35[*(v36 + 24)];
            v73 = *(v37 + 56);
            sub_21DBF8E0C();
            v73(v34, 0, 1, v36);
          }

          swift_storeEnumTagMultiPayload();
          break;
        case 0xDu:
          v71 = sub_21DBF56BC();
          (*(*(v71 - 8) + 16))(a1, a2, v71);
          v72 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v72 + 20)] = *&a2[*(v72 + 20)];
          a1[*(v72 + 24)] = a2[*(v72 + 24)];
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 0xEu:
          v27 = *a2;
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = *(a2 + 3);
          v28 = v27;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v25 - 8) + 64));
          break;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *initializeWithTake for TTRAccountsListsViewModel.FallbackSelection(_BYTE *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 7)
    {
      if (v8 > 11)
      {
        if (v8 == 12)
        {
          v19 = sub_21DBF56BC();
          v20 = *(*(v19 - 8) + 32);
          v20(a1, a2, v19);
          v21 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v22 = &a1[v21];
          v23 = &a2[v21];
          v24 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v23, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
            memcpy(v22, v23, *(*(v26 - 8) + 64));
          }

          else
          {
            v20(v22, v23, v19);
            *&v22[*(v24 + 20)] = *&v23[*(v24 + 20)];
            v22[*(v24 + 24)] = v23[*(v24 + 24)];
            (*(v25 + 56))(v22, 0, 1, v24);
          }

          goto LABEL_27;
        }

        if (v8 == 13)
        {
          v15 = sub_21DBF56BC();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v16 + 20)] = *&a2[*(v16 + 20)];
          a1[*(v16 + 24)] = a2[*(v16 + 24)];
          goto LABEL_27;
        }
      }

      else if (v8 == 8 || v8 == 10)
      {
        goto LABEL_6;
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        v17 = sub_21DBF56BC();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v18 + 20)] = *&a2[*(v18 + 20)];
        a1[*(v18 + 24)] = a2[*(v18 + 24)];
        goto LABEL_27;
      }

      if (v8 == 3)
      {
        v13 = sub_21DBF56BC();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v14[5]] = a2[v14[5]];
        *&a1[v14[6]] = *&a2[v14[6]];
        *&a1[v14[7]] = *&a2[v14[7]];
        *&a1[v14[8]] = *&a2[v14[8]];
        a1[v14[9]] = a2[v14[9]];
        *&a1[v14[10]] = *&a2[v14[10]];
        goto LABEL_27;
      }
    }

    else if (v8 <= 1)
    {
LABEL_6:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      goto LABEL_28;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_28:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *assignWithTake for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 7)
    {
      if (v8 > 11)
      {
        if (v8 == 12)
        {
          v19 = sub_21DBF56BC();
          v20 = *(*(v19 - 8) + 32);
          v20(a1, a2, v19);
          v21 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v22 = &a1[v21];
          v23 = &a2[v21];
          v24 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v23, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
            memcpy(v22, v23, *(*(v26 - 8) + 64));
          }

          else
          {
            v20(v22, v23, v19);
            *&v22[*(v24 + 20)] = *&v23[*(v24 + 20)];
            v22[*(v24 + 24)] = v23[*(v24 + 24)];
            (*(v25 + 56))(v22, 0, 1, v24);
          }

          goto LABEL_28;
        }

        if (v8 == 13)
        {
          v15 = sub_21DBF56BC();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v16 + 20)] = *&a2[*(v16 + 20)];
          a1[*(v16 + 24)] = a2[*(v16 + 24)];
          goto LABEL_28;
        }
      }

      else if (v8 == 8 || v8 == 10)
      {
        goto LABEL_7;
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        v17 = sub_21DBF56BC();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v18 + 20)] = *&a2[*(v18 + 20)];
        a1[*(v18 + 24)] = a2[*(v18 + 24)];
        goto LABEL_28;
      }

      if (v8 == 3)
      {
        v13 = sub_21DBF56BC();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v14[5]] = a2[v14[5]];
        *&a1[v14[6]] = *&a2[v14[6]];
        *&a1[v14[7]] = *&a2[v14[7]];
        *&a1[v14[8]] = *&a2[v14[8]];
        a1[v14[9]] = a2[v14[9]];
        *&a1[v14[10]] = *&a2[v14[10]];
        goto LABEL_28;
      }
    }

    else if (v8 <= 1)
    {
LABEL_7:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      goto LABEL_29;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_29:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

id sub_21DA30840(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int16 a28)
{
  if (a28 < 0)
  {
    v28 = result;
    sub_21DBF8E0C();
    v29 = v28;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D0FB960(a10, a11, a12, a13, a14, a15, a16 & 1);
    sub_21D0FB9BC(a17, a18, a19 & 1);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return a25;
  }

  return result;
}

double sub_21DA309F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int16 a28)
{
  if (a28 < 0)
  {

    sub_21D1078C0(a10, a11, a12, a13, a14, a15, a16 & 1);
    sub_21D0FB9F4(a17, a18, a19 & 1);
  }

  return result;
}

uint64_t sub_21DA30B34(uint64_t a1, uint64_t a2)
{
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  v21 = *(a2 + 136);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  v25 = *(a2 + 168);
  v26 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a2 + 192);
  v29 = *(a2 + 200);
  v30 = *(a2 + 208);
  v31 = *(a2 + 216);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  sub_21DA30840(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  *(a1 + 128) = v20;
  *(a1 + 136) = v21;
  *(a1 + 144) = v22;
  *(a1 + 152) = v23;
  *(a1 + 160) = v24;
  *(a1 + 168) = v25;
  *(a1 + 176) = v26;
  *(a1 + 184) = v27;
  *(a1 + 192) = v28;
  *(a1 + 200) = v29;
  *(a1 + 208) = v30;
  *(a1 + 216) = v31;
  return a1;
}

uint64_t sub_21DA30CA0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v32 = *(a2 + 72);
  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v35 = *(a2 + 96);
  v36 = *(a2 + 104);
  v37 = *(a2 + 112);
  v38 = *(a2 + 120);
  v39 = *(a2 + 128);
  v40 = *(a2 + 136);
  v41 = *(a2 + 144);
  v42 = *(a2 + 152);
  v43 = *(a2 + 160);
  v44 = *(a2 + 168);
  v45 = *(a2 + 176);
  v46 = *(a2 + 184);
  v47 = *(a2 + 192);
  v48 = *(a2 + 200);
  v49 = *(a2 + 208);
  v50 = *(a2 + 216);
  v11 = *(a2 + 48);
  sub_21DA30840(*a2, v4, v5, v6, v7, v8, v11, v9, v10, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v11;
  *(a1 + 56) = v9;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *(a1 + 64) = v10;
  *(a1 + 72) = v32;
  *(a1 + 80) = v33;
  *(a1 + 88) = v34;
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  *(a1 + 96) = v35;
  *(a1 + 104) = v36;
  *(a1 + 112) = v37;
  *(a1 + 120) = v38;
  v24 = *(a1 + 128);
  v25 = *(a1 + 144);
  *(a1 + 128) = v39;
  *(a1 + 136) = v40;
  *(a1 + 144) = v41;
  *(a1 + 152) = v42;
  v26 = *(a1 + 160);
  v27 = *(a1 + 176);
  *(a1 + 160) = v43;
  *(a1 + 168) = v44;
  *(a1 + 176) = v45;
  *(a1 + 184) = v46;
  v28 = *(a1 + 192);
  *(a1 + 192) = v47;
  *(a1 + 200) = v48;
  v29 = *(a1 + 208);
  *(a1 + 208) = v49;
  v30 = *(a1 + 216);
  *(a1 + 216) = v50;
  sub_21DA309F0(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, SBYTE8(v23), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
  return a1;
}

uint64_t sub_21DA30E60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 208);
  v5 = *(a2 + 216);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  v17 = *(a1 + 112);
  v18 = *(a1 + 128);
  v19 = *(a1 + 144);
  v20 = *(a1 + 160);
  v21 = *(a1 + 176);
  v22 = *(a1 + 192);
  v23 = *(a1 + 208);
  v24 = *(a1 + 216);
  v25 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v25;
  v26 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v26;
  v27 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v27;
  v28 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v28;
  v29 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v29;
  v30 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v30;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v4;
  *(a1 + 216) = v5;
  sub_21DA309F0(v6, v7, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, SBYTE8(v17), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  return a1;
}

uint64_t sub_21DA30F28(uint64_t result, __int16 a2)
{
  v2 = *(result + 144) & 0x101FF0101;
  v3 = *(result + 216) & 0x101;
  *(result + 120) &= 1uLL;
  *(result + 144) = v2;
  *(result + 216) = v3 | (a2 << 15);
  return result;
}

unint64_t sub_21DA30F74()
{
  result = qword_27CE64CC0;
  if (!qword_27CE64CC0)
  {
    result = swift_getWitnessTable(byte_21DC37624, &type metadata for TTRAccountsListsViewModel.ItemIdentifier.ItemIdentifierError, v0, v1);
    atomic_store(result, &qword_27CE64CC0);
  }

  return result;
}

uint64_t sub_21DA30FF8(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return TTRTreeContentsQueryable.children(of:)(a1, v3, v4);
}

uint64_t sub_21DA31088@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DA310BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA31120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_21DA31184(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x1FFFFFFFELL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 202) = 0u;
  return result;
}

void *sub_21DA313B0(uint64_t a1, uint64_t a2)
{
  v8 = sub_21DBF97EC();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_21DBF97FC();
}

void *sub_21DA314A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_21DBF97EC();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_21DBF97FC();
}

uint64_t View.ttr_if<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v40 = sub_21DBF980C();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x28223BE20](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_21DA313B0(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_21DA314A8(v12, a5, a4);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43[0] = v41;
  v43[1] = v42;
  v33 = v40;
  swift_getWitnessTable(MEMORY[0x277CE0340], v40, v43, v35);
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_21DA31934()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64D00);
  v1 = __swift_project_value_buffer(v0, qword_27CE64D00);
  if (qword_27CE570E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8ECD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void UIApplicationShortcutItem.actionURL.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF7D4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D45800], v4, v6);
  v9 = sub_21DBF7D3C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = [v2 userInfo];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20, &unk_21DC1EE00);
  v14 = sub_21DBF9E6C();

  if (!*(v14 + 16))
  {

    goto LABEL_8;
  }

  sub_21D0CEF70(v9, v11);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_21DBFA16C();
    sub_21DBF54BC();
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
LABEL_9:
  if (qword_27CE56FC0 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE64D00);
  v18 = v2;
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAECC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v23 = [v18 userInfo];
    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20, &unk_21DC1EE00);
      v25 = sub_21DBF9E6C();
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D18, &qword_21DC376F8);
    v26 = sub_21DBFA1AC();
    v28 = sub_21D0CDFB4(v26, v27, &v31);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Unexpectedly missing action URL absolute string in user info. Returning nil. {userInfo: %s}", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  v29 = sub_21DBF54CC();
  (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

id TTRContainerWrappingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

RemindersUICore::TTRContainerWrappingView::LayoutResult __swiftcall TTRContainerWrappingView.LayoutResult.init(totalRowCountIncludingHidden:hiddenArrangedSubviewCount:)(Swift::Int totalRowCountIncludingHidden, Swift::Int hiddenArrangedSubviewCount)
{
  *v2 = totalRowCountIncludingHidden;
  v2[1] = hiddenArrangedSubviewCount;
  result.hiddenArrangedSubviewCount = hiddenArrangedSubviewCount;
  result.totalRowCountIncludingHidden = totalRowCountIncludingHidden;
  return result;
}

double sub_21DA31E80()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21DA31ED0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DA33CF8;
}

void sub_21DA31F64(double *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = v5;
  if (v5 != v8)
  {
    [v6 setNeedsInvalidation_];
  }
}

double sub_21DA31FD4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DA32024(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a2;
  if (v5 != a2)
  {
    [v2 setNeedsInvalidation_];
  }
}

uint64_t (*sub_21DA32090(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DA32124;
}

void sub_21DA32128(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsInvalidation_];
  }

  free(v1);
}

uint64_t sub_21DA3218C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
  swift_beginAccess();
  return *v1;
}

void sub_21DA321D8(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

LABEL_7:
    [v2 setNeedsInvalidation_];
    return;
  }

  if (v7 != a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
    goto LABEL_7;
  }
}

void (*sub_21DA32274(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21DA32314;
}

void sub_21DA32314(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[6] + (*a1)[5];
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = v3[8];
  *v3 = v2;
  v3[8] = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] setNeedsInvalidation_];
LABEL_9:

  free(v1);
}

void sub_21DA32398()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows) setRepresentation];
  v2 = sub_21DBFAAAC();

  v3 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  sub_21DBF8E0C();
  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_21D181CE0(*(v2 + 48) + 40 * (v10 | (v8 << 6)), v12);
    sub_21DBFBE1C();
    sub_21D181D3C(v12);
    sub_21D114EC8();
    if ((swift_dynamicCast() & 1) != 0 && v11)
    {
      MEMORY[0x223D42D80]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v3 = v13;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      sub_21D19F288(v3);

      return;
    }

    v6 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21DA3257C(uint64_t a1)
{
  sub_21DA32398();
  v4 = sub_21D322428(a1, v3);

  if (v4)
  {
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows);
    [v5 removeAllObjects];
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_21DBFBD1C();
      sub_21D114EC8();
      sub_21DA3386C();
      sub_21DBFAB5C();
      a1 = v23;
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }

    else
    {
      v8 = 0;
      v10 = -1 << *(a1 + 32);
      v6 = a1 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(a1 + 56);
    }

    v20 = v7;
    v13 = (v7 + 64) >> 6;
    if (a1 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_16:
      v17 = (v15 - 1) & v15;
      v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_22:
        sub_21D0CFAF8(a1);
        return;
      }

      while (1)
      {
        [v5 addObject_];

        v8 = v16;
        v9 = v17;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v19 = sub_21DBFBDBC();
        if (v19)
        {
          v21 = v19;
          sub_21D114EC8();
          swift_dynamicCast();
          v18 = v22;
          v16 = v8;
          v17 = v9;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_22;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void (*sub_21DA327B4(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_21DA32398();
  *a1 = v3;
  return sub_21DA327FC;
}

void sub_21DA327FC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_21DBF8E0C();
    sub_21DA3257C(v2);
  }

  else
  {
    sub_21DA3257C(*a1);
  }
}

uint64_t sub_21DA32854(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView) objectForKey_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = v3[2];

  return v4;
}

uint64_t sub_21DA328FC(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView) objectForKey_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = v3[4];

  return v4;
}

__n128 sub_21DA329A4@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

void sub_21DA32A74(double a1, double a2, double a3, double a4)
{
  v9 = [v4 visibleArrangedSubviews];
  if (v9)
  {
    v10 = v9;
    sub_21D114EC8();
    v11 = sub_21DBFA5EC();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_21DA32E0C(a1, a2, a3, a4);
  TTRWrappingArrangement.computeLayout()(&v38);
  rawValue = v38.frames._rawValue;
  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  sub_21D8ECC3C(&v38, v37);
  if (v13)
  {
    v14 = 0;
    v15 = (rawValue + 7);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v13 = sub_21DBFBD7C();
          goto LABEL_6;
        }

        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = rawValue[2];
      if (v14 == v18)
      {

        sub_21D6BA6FC(&v38);

        goto LABEL_21;
      }

      if (v14 >= v18)
      {
        goto LABEL_24;
      }

      v19 = v14 + 1;
      v20 = *(v15 - 3);
      v21 = *(v15 - 2);
      v22 = *(v15 - 1);
      v23 = *v15;
      v24 = v16;
      [v36 layoutFrameForArrangedSubview:v24 withProposedContentFrame:{v20, v21, v22, v23}];
      [v24 setUntransformedFrame_];
      v25 = v14 < v38.visibleSubviewCount;
      v26 = v14 < v38.visibleSubviewCount;
      if (v25)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 0.0;
      }

      [v24 setAlpha_];
      [v24 setUserInteractionEnabled_];

      v15 += 4;
      v14 = v19;
    }

    while (v13 != v19);
  }

  sub_21D6BA6FC(&v38);
LABEL_21:
  rowCount = v38.rowCount;
  v29 = rawValue[2];
  sub_21D6BA6FC(&v38);
  v30 = __OFSUB__(v29, v38.visibleSubviewCount);
  v31 = v29 - v38.visibleSubviewCount;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v32 = &v36[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
    swift_beginAccess();
    *v32 = rowCount;
    *(v32 + 1) = v31;
    v32[16] = 0;
    v33 = [v36 subviews];
    sub_21D114EC8();
    v34 = sub_21DBFA5EC();

    sub_21D7F6724(v34);

    v35 = sub_21DBFA5DC();

    [v36 setAccessibilityElements_];
  }
}

uint64_t sub_21DA32E0C(double a1, double a2, double a3, double a4)
{
  v9 = [v4 visibleArrangedSubviews];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    sub_21D114EC8();
    v12 = sub_21DBFA5EC();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  swift_beginAccess();
  v14 = *&v4[v13];
  v15 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  swift_beginAccess();
  v16 = *&v4[v15];
  v17 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[8];
  v20 = *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows];
  v21 = *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  type metadata accessor for TTRWrappingArrangement();
  v22 = swift_allocObject();
  *(v22 + 160) = 0u;
  *(v22 + 176) = 0u;
  *(v22 + 192) = 0u;
  *(v22 + 208) = 0u;
  *(v22 + 224) = v10;
  *(v22 + 248) = 0u;
  *(v22 + 296) = 0;
  *(v22 + 232) = 0u;
  *(v22 + 264) = 0u;
  *(v22 + 280) = 0u;
  *(v22 + 304) = 1;
  *(v22 + 16) = v4;
  *(v22 + 24) = v12;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  *(v22 + 64) = v14;
  *(v22 + 72) = v16;
  *(v22 + 80) = v18;
  *(v22 + 88) = v19;
  *(v22 + 128) = 0;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 136) = 1;
  *(v22 + 144) = v20;
  *(v22 + 152) = v21;
  v23 = v20;
  v24 = v21;
  v25 = v4;
  return v22;
}

uint64_t sub_21DA32FB8(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = *&a2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  v7 = [v6 objectForKey_];
  v8 = v7;
  if (!v7)
  {
    type metadata accessor for TTRWrappingArrangement.CustomSpacing();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 1;
  }

  type metadata accessor for TTRWrappingArrangement.CustomSpacing();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  swift_beginAccess();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  swift_beginAccess();
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  swift_beginAccess();
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4 & 1;
  if ((_s15RemindersUICore22TTRWrappingArrangementC13CustomSpacingC2eeoiySbAE_AEtFZ_0(v8, inited) & 1) == 0)
  {
    if (a4 & v13)
    {
      if (v7)
      {
        [v6 removeObjectForKey_];
      }
    }

    else if (!v7)
    {
      [v6 setObject:v8 forKey:a1];
    }

    [a2 setNeedsInvalidation_];
  }
}

uint64_t sub_21DA3317C(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = *&a2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  v7 = [v6 objectForKey_];
  v8 = v7;
  if (!v7)
  {
    type metadata accessor for TTRWrappingArrangement.CustomSpacing();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 1;
  }

  type metadata accessor for TTRWrappingArrangement.CustomSpacing();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  swift_beginAccess();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  swift_beginAccess();
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  swift_beginAccess();
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  if ((_s15RemindersUICore22TTRWrappingArrangementC13CustomSpacingC2eeoiySbAE_AEtFZ_0(v8, inited) & 1) == 0)
  {
    if (v11 & a4)
    {
      if (v7)
      {
        [v6 removeObjectForKey_];
      }
    }

    else if (!v7)
    {
      [v6 setObject:v8 forKey:a1];
    }

    [a2 setNeedsInvalidation_];
  }
}

id TTRContainerWrappingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v4[v11] = [objc_opt_self() hashTableWithOptions_];
  v12 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v4[v12] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TTRContainerWrappingView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRContainerWrappingView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id TTRContainerWrappingView.init(arrangedSubviews:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v1[v5] = [objc_opt_self() hashTableWithOptions_];
  v6 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v1[v6] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  if (a1)
  {
    sub_21D114EC8();
    v7 = sub_21DBFA5DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for TTRContainerWrappingView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithArrangedSubviews_, v7);

  return v8;
}

id TTRContainerWrappingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRContainerWrappingView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v1[v5] = [objc_opt_self() hashTableWithOptions_];
  v6 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v1[v6] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TTRContainerWrappingView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id TTRContainerWrappingView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRContainerWrappingView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21DA3386C()
{
  result = qword_27CE58AA8;
  if (!qword_27CE58AA8)
  {
    v3 = sub_21D114EC8();
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CE58AA8);
  }

  return result;
}

id sub_21DA33D08(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_21DBF54BC();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_21D3050B8(v12, v9);
    v15 = sub_21DBF54CC();
    v16 = *(v15 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v9, 1, v15) != 1)
    {
      v17 = sub_21DBF53FC();
      (*(v16 + 8))(v9, v15);
    }

    sub_21D17716C(MEMORY[0x277D84F90]);
    v18 = sub_21DBF9E5C();

    [v14 openSensitiveURL:v17 withOptions:v18];

    if (a2)
    {
      a2(a1);
    }

    v19 = [objc_opt_self() daemonUserDefaults];
    [v19 *off_27832F690[a4]];

    return sub_21D238E40(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA33F60(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char a4)
{
  if (a2)
  {
    a2(a1);
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 *off_27832F690[a4]];
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO21privacyAccessSettings4typeSo07UIAlertD0CAA14TTRPrivacyTypeO_tFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1 != 3)
  {
    goto LABEL_14;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_13:
  sub_21DBF516C();
  sub_21DBF516C();
LABEL_14:
  v2 = sub_21DBFA12C();

  v3 = sub_21DBFA12C();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  return v4;
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO036privacyAlertToRequestLocationAuthForA10InCalendarSo07UIAlertD0CyFZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = sub_21DBFA12C();

  v1 = sub_21DBFA12C();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0x800000021DC528D0}];

  return v2;
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO22contactsAccessSettings14relatedFeature07didOpenH7Handler06cancelM0So07UIAlertD0CSgAA011TTRContactsg5AlertJ0O_ySo0O6ActionCcSgAOtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() daemonUserDefaults];
  v11 = v10;
  if (v9)
  {
    if (v9 == 1)
    {
      v12 = [v10 hasViewedContactsAccessAlertForMessaging];
    }

    else
    {
      v12 = [v10 hasViewedContactsAccessAlertForCalDAVSharing];
    }
  }

  else
  {
    v12 = [v10 hasViewedContactsAccessAlertForLocation];
  }

  v13 = v12;

  if ((v13 & 1) != 0 || [objc_opt_self() authorizationStatusForEntityType_] != 2)
  {
    return 0;
  }

  v27 = a5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v14 = sub_21DBFA12C();

  v15 = sub_21DBFA12C();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:{1, 0x800000021DC480E0}];

  sub_21DBF516C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v9;
  sub_21D0D0E78(a2, a3);
  v18 = sub_21DBFA12C();

  v32 = sub_21DA34B64;
  v33 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_21D1B6000;
  v31 = &block_descriptor_131;
  v19 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:0 handler:{v19, 0x800000021DC47D70}];
  _Block_release(v19);

  [v16 addAction_];
  sub_21DBF516C();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = v27;
  *(v22 + 32) = v9;
  sub_21D0D0E78(a4, v27);
  v23 = sub_21DBFA12C();

  v32 = sub_21DA34B70;
  v33 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_21D1B6000;
  v31 = &block_descriptor_10_4;
  v24 = _Block_copy(&aBlock);

  v25 = [v20 actionWithTitle:v23 style:1 handler:{v24, 0x800000021DC52340}];
  _Block_release(v24);

  [v16 addAction_];
  return v16;
}

uint64_t sub_21DA34B84()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F1E0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F1E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_21DA34C9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v8 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*sub_21DA34E48(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21DA34EE8;
}

void sub_21DA34EE8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v3[3] = *v3[5];
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
      sub_21DBFA1AC();
      MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
      v8 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();
    }
  }

  free(v3);
}

void sub_21DA350A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21DA35104()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowRemindersInListDataModelSource.__allocating_init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, _BYTE *a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v43) = a5;
  v11 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list) = 0;
  p_info = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_shouldSkipReloadingListUponChangingSortingStyle) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v11 + v12) = a2;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted) = a3;
  sub_21D0D32E4(a6, v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceHideEmptySectionsContext();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance) = v21;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_tipKitContextInstance) = v22;
  type metadata accessor for TTRRemindersListDataModelSourceNewReminderContext();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_newReminderContextInstance) = v23;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v25 = sub_21DBF70DC();
  v26 = *(v25 - 8);
  v27 = v11 + v24;
  v28 = a4;
  (*(v26 + 16))(v27, a4, v25);
  *(v11 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v11 + 16) = v43 & 1;
  if (a2)
  {
    v29 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v44 = a2;
    v45 = 0;
    v30 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
    v31 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
    v32 = __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v30);
    v43 = &v42;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v28;
    v36 = &v42 - v35;
    (*(v37 + 16))(&v42 - v35, v33);
    v38 = *(v31 + 8);

    a2 = sub_21D6F1094(&v44, v36, v29, v30, v38);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(v34, v25);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowRemindersInListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    p_info = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
    v20 = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(a4, v25);
  }

  *(&p_info[433]->flags + v11) = a2;

  v39 = *(&v20[430]->flags + v11);
  swift_beginAccess();
  *(v39 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();
  v40 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance);
  swift_beginAccess();
  *(v40 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t TTRShowRemindersInListDataModelSource.init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, char *a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v43) = a5;
  v11 = *a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list) = 0;
  p_info = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_shouldSkipReloadingListUponChangingSortingStyle) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v12) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted) = v11;
  sub_21D0D32E4(a6, v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceHideEmptySectionsContext();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance) = v21;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_tipKitContextInstance) = v22;
  type metadata accessor for TTRRemindersListDataModelSourceNewReminderContext();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_newReminderContextInstance) = v23;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v25 = sub_21DBF70DC();
  v26 = *(v25 - 8);
  v27 = v6 + v24;
  v28 = a4;
  (*(v26 + 16))(v27, a4, v25);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v43 & 1;
  if (a2)
  {
    v29 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v44 = a2;
    v45 = 0;
    v30 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
    v31 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
    v32 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v30);
    v43 = &v42;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v28;
    v36 = &v42 - v35;
    (*(v37 + 16))(&v42 - v35, v33);
    v38 = *(v31 + 8);

    a2 = sub_21D6F1094(&v44, v36, v29, v30, v38);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(v34, v25);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowRemindersInListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    p_info = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
    v20 = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(a4, v25);
  }

  *(&p_info[433]->flags + v6) = a2;

  v39 = *(&v20[430]->flags + v6);
  swift_beginAccess();
  *(v39 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();
  v40 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance);
  swift_beginAccess();
  *(v40 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_21DA35ABC(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_280D17EB8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F1E0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowRemindersInListDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = sub_21DA36F58(v6);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_280D17EB8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F1E0);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "TTRShowRemindersInListDataModelSource start asynchronously", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = 10;
    sub_21DA39670(&v16);
  }
}

void sub_21DA35CB4(void *a1, char a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;
  v14 = [v13 objectID];
  v15 = v14;
  if (v12)
  {
    v16 = [v12 objectID];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v18 = sub_21DBFB63C();

        if (v18)
        {
          goto LABEL_13;
        }

LABEL_8:
        if (*(v2 + 16) == 1)
        {
          v19 = [v13 sortingStyle];
          v20 = sub_21DBFA16C();
          v22 = v21;
          if (v20 == sub_21DBFA16C() && v22 == v23)
          {
          }

          else
          {
            v25 = sub_21DBFC64C();

            if ((v25 & 1) == 0)
            {
              v28 = [v13 sortingStyle];
              sub_21DBFAF7C();

              goto LABEL_18;
            }
          }
        }

        sub_21DBF70AC();
LABEL_18:
        v26 = v30;
        (*(v6 + 16))(v30, v10, v5);
        v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        (*(v6 + 40))(v2 + v27, v26, v5);
        swift_endAccess();
        v31[0] = 0;
        sub_21DA39670(v31);

        (*(v6 + 8))(v10, v5);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v15 = v16;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (a2)
  {

    sub_21D852368(v24);
  }
}

uint64_t sub_21DA36094()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TTRShowRemindersInListDataModelSourceDeleteCompletedContext(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v3 + v4) = [v2 objectID];
  v5 = *MEMORY[0x277D45950];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  return v3;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.__allocating_init(list:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = [a1 objectID];

  *(v2 + v3) = v4;
  v5 = *MEMORY[0x277D45950];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v2 + v3, v5, v6);
  return v2;
}

id sub_21DA3626C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store);
    v11 = *(v1 + v3);
    v6 = type metadata accessor for TTRShowRemindersInListTipKitDataModelSource();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v11;
    v8 = v5;
    v4 = v11;
    v9 = &protocol witness table for TTRTipKitDataModelSourceBase;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v7;
  a1[3] = v6;
  a1[4] = v9;

  return v4;
}

double sub_21DA36368@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v27 = *(v1 + v14);
    if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) + 40))
    {
      v15 = MEMORY[0x277D45468];
    }

    else
    {
      v15 = MEMORY[0x277D45470];
    }

    (*(v8 + 104))(v13, *v15, v7);
    (*(v8 + 16))(v10, v13, v7);
    v26 = v6;
    v16 = v3;
    v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v18 = v6;
    v19 = v16;
    (*(v4 + 16))(v18, v1 + v17, v16);
    v20 = type metadata accessor for TTRShowRemindersInListPrintingDataModelSource(0);
    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v27;
    (*(v8 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted, v10, v7);
    (*(v4 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle, v26, v19);
    *(a1 + 24) = v20;
    *(a1 + 32) = &protocol witness table for TTRShowRemindersInListPrintingDataModelSource;
    *a1 = v21;
    v23 = *(v8 + 8);
    v24 = v22;
    v23(v13, v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTRShowRemindersInListPrintingDataModelSource.__allocating_init(list:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21DA3671C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 account];
    v5 = [v4 capabilities];

    LODWORD(v4) = [v5 supportsTemplates];
    if (v4)
    {
      type metadata accessor for TTRShowRemindersInListTemplateContext();
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  return 0;
}

uint64_t sub_21DA36834()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for TTRRemindersListDataModelSourceAutoCategorizationContext();
  swift_allocObject();
  v3 = v2;
  return TTRRemindersListDataModelSourceAutoCategorizationContext.init(list:)(v2);
}

uint64_t sub_21DA368AC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 groceryContext];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 shouldCategorizeGroceryItems];

      v6 = *(v0 + v1);
      if (!v6)
      {
        return v5 & 1;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(v0 + v1);
      if (!v6)
      {
        return v5 & 1;
      }
    }

    v7 = v6;
    v8 = sub_21DBFB5FC();

    if (v8)
    {
      v9 = [v8 shouldAutoCategorizeItems];

      v5 |= v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21DA36988(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = sub_21DBF773C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF6DDC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF714C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF734C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D60, &unk_21DC377A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D68, &qword_21DC42F70);
  v20 = *(v48 - 8);
  v21 = MEMORY[0x28223BE20](v48);
  v38 = &v37 - v22;
  v23 = *MEMORY[0x277D45470];
  v24 = *(v14 + 104);
  v47 = v13;
  v25 = v13;
  v26 = v45;
  v24(v16, v23, v25, v21);
  v27 = *MEMORY[0x277D45500];
  v28 = *(v10 + 104);
  v49 = v9;
  v28(v12, v27, v9);
  v29 = v46;
  (*(v26 + 104))(v8, *MEMORY[0x277D45450]);
  sub_21DBF6CCC();
  (*(v26 + 8))(v8, v29);
  (*(v10 + 8))(v12, v49);
  (*(v14 + 8))(v16, v47);
  v30 = v48;
  (*(v20 + 56))(v19, 0, 1, v48);
  v31 = v38;
  (*(v20 + 32))(v38, v19, v30);
  v32 = v39;
  v33 = sub_21DBF76DC();
  v34 = v42;
  MEMORY[0x223D3F580](v33);
  (*(v40 + 8))(v32, v41);
  v35 = sub_21DBF718C();
  (*(v43 + 8))(v34, v44);
  (*(v20 + 8))(v31, v30);
  return v35;
}

uint64_t sub_21DA36F58(void *a1)
{
  v176 = sub_21DBFB11C();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v163 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v172);
  v173 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v171 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  MEMORY[0x28223BE20](v6 - 8);
  v170 = &v163 - v7;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  MEMORY[0x28223BE20](v198);
  v195 = (&v163 - v8);
  v186 = sub_21DBF76AC();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v194 = &v163 - v11;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D70, &qword_21DC37B18);
  MEMORY[0x28223BE20](v179);
  v178 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v183 = &v163 - v14;
  v193 = sub_21DBF70DC();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_21DBF71BC();
  v16 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v18 = (&v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  v167 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v169 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v168 = &v163 - v22;
  MEMORY[0x28223BE20](v23);
  v181 = &v163 - v24;
  MEMORY[0x28223BE20](v25);
  v177 = &v163 - v26;
  MEMORY[0x28223BE20](v27);
  v187 = &v163 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v163 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v163 - v33;
  v166 = sub_21DBF719C();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v180 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v163 - v37;
  v39 = sub_21DBF6DBC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v189 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v163 - v43;
  sub_21DBF72BC();
  v45 = sub_21DBF72DC();
  (*(*(v45 - 8) + 56))(v34, 0, 1, v45);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v34, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v46 = sub_21DBFB60C();
  MEMORY[0x223D3F540](v38, v46);
  v182 = v19;
  v47 = *(v19 + 48);
  v200 = v40;
  v48 = v196;
  v49 = *(v40 + 16);
  v188 = v44;
  v199 = v39;
  v49(v31, v44, v39);
  v197 = v31;
  *&v31[v47] = 0;
  v50 = *(v48 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance);
  if (*(v50 + 40) == 1)
  {
    v51 = v190;
    (*(v16 + 104))(v18, *MEMORY[0x277D45468], v190);
  }

  else
  {
    swift_beginAccess();
    *v18 = *(v50 + 48);
    v51 = v190;
    (*(v16 + 104))(v18, *MEMORY[0x277D45480], v190);
    sub_21DBF8E0C();
  }

  v52 = *(v48 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted);
  v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v54 = v192;
  v55 = v48 + v53;
  v56 = v191;
  v57 = v193;
  (v192)[2](v191, v55, v193);
  type metadata accessor for TTRShowRemindersInListMonitorableDataView(0);
  v58 = swift_allocObject();
  *(v58 + 16) = a1;
  (*(v16 + 32))(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v18, v51);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v52;
  (v54)[4](v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v56, v57);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = 0;
  v59 = v195;
  sub_21D0D3954(v197, v195, &qword_27CE5C258, &qword_21DC377B0);
  swift_storeEnumTagMultiPayload();
  v60 = a1;
  v61 = v189;
  v62 = v194;
  v64 = TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(v189, v194, v59, 1);
  v192 = v60;
  v190 = 0;
  v193 = v58;
  sub_21D0CF7E0(v59, &qword_27CE5C250, &unk_21DC15D70);
  v65 = *(v200 + 32);
  v66 = v62;
  v67 = v183;
  v68 = v199;
  v65(v183, v61, v199);
  v69 = v182;
  *(v67 + *(v182 + 48)) = v64;
  v70 = v179;
  v71 = *(v179 + 48);
  v195 = *(v185 + 32);
  v72 = v186;
  v195(v67 + v71, v66, v186);
  v73 = v178;
  sub_21D0D3954(v67, v178, &qword_27CE64D70, &qword_21DC37B18);
  v74 = *(v69 + 48);
  v75 = *&v73[v74];
  v194 = *(v70 + 48);
  v76 = v187;
  v191 = v65;
  v65(v187, v73, v68);
  *(v76 + v74) = v75;
  v195(v184, &v73[v194], v72);
  v77 = v69;
  v78 = v177;
  sub_21D0D3954(v76, v177, &qword_27CE5C258, &qword_21DC377B0);
  if (*&v78[*(v77 + 48)])
  {
    v164 = *&v78[*(v77 + 48)];
    v79 = *(v200 + 8);
    v200 += 8;
    v194 = v79;
    v80 = v199;
    v79(v78, v199);
    v81 = v181;
    sub_21D0D3954(v76, v181, &qword_27CE5C258, &qword_21DC377B0);
    v82 = v77;
    v83 = *(v77 + 48);
    v84 = v82;
    v85 = *(v81 + v83);
    v86 = v168;
    (v191)(v168, v81, v80);
    *&v86[v83] = v85;
    v87 = v86;
    v191 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

    v88 = sub_21DBFB12C();
    v178 = v88;
    sub_21DBF60DC();
    v189 = sub_21DBF60BC();
    v89 = sub_21DBF60AC();
    v177 = v89;
    v195 = *MEMORY[0x277D76648];
    v179 = *MEMORY[0x277D76768];
    v90 = v179;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D8, &unk_21DC195C0);
    v91 = swift_allocObject();
    v92 = *(*v91 + 104);
    v93 = *(v167 + 56);
    v94 = v84;
    v93(v91 + v92, 1, 1, v84);
    v95 = (v91 + *(*v91 + 136));
    *v95 = 0;
    v95[1] = 0;
    *(v91 + *(*v91 + 112)) = v88;
    *(v91 + *(*v91 + 120)) = v89;
    sub_21D0D3954(v87, v91 + *(*v91 + 96), &qword_27CE5C258, &qword_21DC377B0);
    swift_storeEnumTagMultiPayload();
    v96 = v170;
    sub_21D0D3954(v87, v170, &qword_27CE5C258, &qword_21DC377B0);
    v93(v96, 0, 1, v94);
    swift_beginAccess();
    v97 = v195;
    v98 = v90;
    v178 = v178;
    v99 = v177;
    sub_21DA3DC4C(v96, v91 + v92);
    swift_endAccess();
    sub_21DBF9D4C();
    v205 = MEMORY[0x277D84F90];
    sub_21D66282C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
    sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
    sub_21DBFBCBC();
    (*(v175 + 104))(v174, *MEMORY[0x277D85260], v176);
    v100 = sub_21DBFB14C();
    v101 = v169;
    sub_21D0D3954(v87, v169, &qword_27CE5C258, &qword_21DC377B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E0, &qword_21DC195D0);
    v102 = swift_allocObject();
    *(v102 + 72) = 0u;
    *(v102 + 88) = 0u;
    *(v102 + 104) = 0;
    *(v102 + 108) = -1;
    *(v102 + 120) = 0;
    *(v102 + 128) = 1;
    v103 = *(*v102 + 216);
    v104 = swift_slowAlloc();
    *(v102 + v103) = v104;
    *(v102 + *(*v102 + 224)) = 0;
    v105 = v189;
    *(v102 + 16) = v100;
    *(v102 + 24) = v105;
    v106 = v193;
    *(v102 + 32) = v99;
    *(v102 + 40) = v106;
    sub_21D0D3954(v101, v102 + *(*v102 + 208), &qword_27CE5C258, &qword_21DC377B0);
    swift_storeEnumTagMultiPayload();
    *v104 = 0;

    sub_21D0CF7E0(v101, &qword_27CE5C258, &qword_21DC377B0);
    sub_21D0CF7E0(v87, &qword_27CE5C258, &qword_21DC377B0);
    v107 = v179;
    *(v102 + 48) = v195;
    *(v102 + 56) = v107;
    *(v102 + 64) = 1;
    *(v91 + *(*v91 + 128)) = v102;
    v108 = swift_allocObject();
    swift_weakInit();
    v109 = swift_allocObject();
    v110 = v196;
    swift_weakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v108;
    *(v111 + 24) = v109;
    v112 = *(v102 + 72);
    v113 = *(v102 + 80);
    *(v102 + 72) = sub_21D50471C;
    *(v102 + 80) = v111;

    sub_21D0D0E88(v112, v113);

    v114 = *(v91 + *(*v91 + 128));
    v115 = swift_allocObject();
    swift_weakInit();
    v116 = *(v114 + 88);
    v117 = *(v114 + 96);
    *(v114 + 88) = sub_21D504724;
    *(v114 + 96) = v115;

    sub_21D0D0E88(v116, v117);

    v118 = swift_allocObject();
    swift_weakInit();
    v119 = swift_allocObject();
    swift_weakInit();
    v120 = swift_allocObject();
    *(v120 + 16) = v118;
    *(v120 + 24) = v119;
    v121 = (v91 + *(*v91 + 136));
    v122 = *v121;
    v123 = v121[1];
    *v121 = sub_21D50472C;
    v121[1] = v120;

    sub_21D0D0E88(v122, v123);

    v124 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    *(v110 + v124) = v91;

    v125 = v181;
    sub_21D0D3954(v187, v181, &qword_27CE5C258, &qword_21DC377B0);

    MEMORY[0x223D3F550]();
    (v194)(v125, v199);
    v126 = v110 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v128 = *(v126 + 1), ObjectType = swift_getObjectType(), v130 = (*(*(v128 + 8) + 8))(ObjectType), v132 = v131, swift_unknownObjectRelease(), (v132 & 1) != 0))
    {
      v130 = 30;
    }

    v127.n128_f64[0] = v130 * 1.5;
    if (COERCE__INT64(fabs(v127.n128_f64[0])) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v127.n128_f64[0] > -9.22337204e18)
    {
      if (v127.n128_f64[0] < 9.22337204e18)
      {
        v130 = sub_21DA68CBC(v127.n128_f64[0], v127);
        if (qword_280D17EB8 == -1)
        {
LABEL_12:
          v133 = sub_21DBF84BC();
          __swift_project_value_buffer(v133, qword_280D0F1E0);
          sub_21DBF8E0C();
          v134 = sub_21DBF84AC();
          v135 = sub_21DBFAEAC();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v204 = v137;
            *v136 = 136315138;
            if (v130 >> 62)
            {
              v138 = sub_21DBFBD7C();
            }

            else
            {
              v138 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v203 = v138;
            sub_21D679D9C();
            v139 = sub_21DBFBC0C();
            v141 = sub_21D0CDFB4(v139, v140, &v204);

            *(v136 + 4) = v141;
            _os_log_impl(&dword_21D0C9000, v134, v135, "Fetching initial set of reminders {count: %s}", v136, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v137);
            MEMORY[0x223D46520](v137, -1, -1);
            MEMORY[0x223D46520](v136, -1, -1);

            v110 = v196;
          }

          else
          {
          }

          v150 = [v192 store];
          v151 = sub_21DBFB12C();
          v152 = swift_allocObject();
          *(v152 + 16) = 0;
          v153 = v164;
          v154 = sub_21D87E81C(v150, sub_21D554248, v152, v153, v151);
          swift_beginAccess();
          v154[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
          swift_unknownObjectWeakAssign();
          sub_21DAB0AFC(v130);

          v155 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
          swift_beginAccess();
          *(v110 + v155) = v154;

          if (*(v110 + v124))
          {

            sub_21D4009FC(1);
          }

          v201 = 0;
          v202 = 0xE000000000000000;
          sub_21DBFBEEC();
          v201 = *v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
          v156 = sub_21DBFA1AC();
          v158 = v157;

          v201 = v156;
          v202 = v158;
          MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
          v159 = sub_21DBFAEDC();
          MEMORY[0x28223BE20](v159);
          v160 = v192;
          *(&v163 - 4) = v110;
          *(&v163 - 3) = v160;
          v161 = v180;
          v162 = v184;
          *(&v163 - 2) = v180;
          *(&v163 - 1) = v162;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
          sub_21DBF625C();

          sub_21D0CF7E0(v187, &qword_27CE5C258, &qword_21DC377B0);
          sub_21D0CF7E0(v183, &qword_27CE64D70, &qword_21DC37B18);
          sub_21D0CF7E0(v197, &qword_27CE5C258, &qword_21DC377B0);
          (v194)(v188, v199);
          (*(v165 + 8))(v161, v166);
          (*(v185 + 8))(v162, v186);
          return 1;
        }

LABEL_28:
        swift_once();
        goto LABEL_12;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v142 = *(v200 + 8);
  v143 = v199;
  v142(v78, v199);
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v144 = sub_21DBF84BC();
  __swift_project_value_buffer(v144, qword_280D0F1E0);
  v145 = sub_21DBF84AC();
  v146 = sub_21DBFAEBC();
  v147 = os_log_type_enabled(v145, v146);
  v148 = v197;
  if (v147)
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&dword_21D0C9000, v145, v146, "startSynchronously failed, missing initial fetch result token", v149, 2u);
    v143 = v199;
    MEMORY[0x223D46520](v149, -1, -1);
  }

  sub_21D0CF7E0(v76, &qword_27CE5C258, &qword_21DC377B0);
  sub_21D0CF7E0(v183, &qword_27CE64D70, &qword_21DC37B18);
  sub_21D0CF7E0(v148, &qword_27CE5C258, &qword_21DC377B0);
  v142(v188, v143);
  (*(v185 + 8))(v184, v186);
  return 0;
}

uint64_t TTRShowRemindersInListMonitorableDataView.__allocating_init(list:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v10;
}

char *TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v59 = a1;
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C300, &unk_21DC290A0);
  MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70, &unk_21DC09E80);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v73 = &v53 - v10;
  v11 = sub_21DBF714C();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21DBF71BC();
  v17 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v78 = sub_21DBF734C();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v63 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v53 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v53 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  sub_21DBFC83C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5D3D0, &unk_21DC195B0);
    v77 = 0;
  }

  else
  {
    v77 = *&v30[*(v31 + 48)];
    v32 = sub_21DBF6DBC();
    (*(*(v32 - 8) + 8))(v30, v32);
  }

  v61 = *(v5 + 16);
  v33 = [v61 store];
  v34 = v33;
  if (a4)
  {
    v76 = v33;
    if (!v77)
    {
      v35 = MEMORY[0x277D45508];
      goto LABEL_9;
    }
  }

  else
  {
    v76 = [v33 nonUserInteractiveStore];
  }

  v35 = MEMORY[0x277D454F8];
LABEL_9:
  *v27 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount);
  (*(v23 + 104))(v27, *v35, v78);
  v36 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted);
  v37 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v62 = v34;
  if (v36 > 1)
  {
    v38 = v75;
    (*(v17 + 16))(v22, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v75);
    v39 = (*(v17 + 88))(v22, v38);
    if (v39 == *MEMORY[0x277D45478])
    {
      (*(v17 + 8))(v22, v38);
    }

    else if (v39 == *MEMORY[0x277D45480])
    {
      (*(v17 + 8))(v22, v75);
    }

    else if (v39 != *MEMORY[0x277D45470] && v39 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  (*(v65 + 16))(v64, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v66);
  (*(v17 + 16))(v19, v5 + v37, v75);
  v40 = v78;
  (*(v23 + 16))(v63, v27, v78);
  (*(v68 + 104))(v67, *MEMORY[0x277D45450], v69);
  v41 = v74;
  sub_21DBF737C();
  v42 = v72;
  v43 = v73;
  v45 = v76;
  v44 = v77;
  sub_21DBF6D0C();
  if (v42)
  {

    (*(v70 + 8))(v41, v71);
    (*(v23 + 8))(v27, v40);
  }

  else
  {
    v46 = v54;
    v47 = *(v54 + 48);
    v48 = v58;
    v76 = v45;
    v77 = v44;
    v49 = v57;
    sub_21DBF76DC();
    *(v48 + v47) = sub_21DBF76BC();
    v50 = v55;
    sub_21D0D3954(v48, v55, &qword_27CE5C300, &unk_21DC290A0);
    v41 = *(v50 + *(v46 + 48));
    v51 = sub_21DBF6DBC();
    (*(*(v51 - 8) + 32))(v59, v50, v51);
    sub_21DBF76CC();

    sub_21D0CF7E0(v48, &qword_27CE5C300, &unk_21DC290A0);
    (*(v56 + 8))(v43, v49);
    (*(v70 + 8))(v74, v71);
    (*(v23 + 8))(v27, v78);
  }

  return v41;
}

void sub_21DA395A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(a2, a3, a4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  *a5 = Strong == 0;
}

uint64_t sub_21DA39670(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_21DBF70DC();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21DBF71BC();
  v98 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  v96 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v92 - v14;
  v16 = sub_21DBF719C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_21DBF6DBC();
  v19 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *a1;
  v104 = v21;
  v105 = v19;
  v103 = v7;
  if (!v106)
  {
    v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v23 = *(v2 + v22);
    if (v23)
    {
      v24 = [v23 objectID];
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 2;
    }

    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v26 = qword_280D1AA18;
    type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
    v27 = swift_allocObject();
    v28 = sub_21D193548(v24, v25, v26, v27);

    *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v28;

    swift_beginAccess();
    v28[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
    swift_unknownObjectWeakAssign();

    v29 = *(v2 + v22);
    if (v29)
    {
      v30 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
      v114 = v29;
      v115 = 0;
      v32 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
      v31 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
      v33 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v32);
      v34 = MEMORY[0x28223BE20](v33);
      v36 = &v92 - v35;
      (*(v37 + 16))(&v92 - v35, v34);
      v38 = *(v31 + 8);
      v39 = v29;
      v40 = sub_21D6F1094(&v114, v36, v30, v32, v38);
      if (v40)
      {
        swift_beginAccess();
        *(v40 + 32) = &protocol witness table for TTRShowRemindersInListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      v40 = 0;
    }

    v21 = v104;
    v19 = v105;
    v7 = v103;
    *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = v40;
  }

  v41 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v109 = v41;
  if (*(v2 + v41))
  {
    v42 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 1);
      ObjectType = swift_getObjectType();
      v113[0] = v106;
      (*(*(v43 + 8) + 16))(v113, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v45 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v46 = *(v2 + v45);
  if (v46)
  {
    v47 = v46;
    sub_21DBF72BC();
    v48 = sub_21DBF72DC();
    (*(*(v48 - 8) + 56))(v15, 0, 1, v48);
    MEMORY[0x223D3F930](MEMORY[0x277D84F90], v15, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    v94 = v47;
    v49 = sub_21DBFB60C();
    MEMORY[0x223D3F540](v18, v49);
    v50 = *(v2 + v109);
    if (v50)
    {
      v51 = *(*v50 + 104);
      swift_beginAccess();
      v52 = v50 + v51;
      v53 = v95;
      sub_21D0D3954(v52, v95, &qword_27CE5D3D0, &unk_21DC195B0);
      if (v96[6](v53, 1, v7) == 1)
      {
        sub_21D0CF7E0(v53, &qword_27CE5D3D0, &unk_21DC195B0);
        v54 = 0;
      }

      else
      {
        v54 = *(v53 + *(v7 + 48));
        (*(v19 + 8))(v53, v110);
      }
    }

    else
    {
      v54 = 0;
    }

    v56 = *(v7 + 48);
    v57 = *(v19 + 16);
    v58 = v108;
    v95 = v19 + 16;
    v93 = v57;
    v57(v108, v21, v110);
    *&v58[v56] = v54;
    v59 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v96 = v54;
    if (Strong)
    {
      v61 = *(v59 + 1);
      v62 = swift_getObjectType();
      v63 = *(v61 + 8);
      v64 = *(v63 + 8);
      v65 = v54;
      v66 = v64(v62, v63);
      LOBYTE(v62) = v67;
      swift_unknownObjectRelease();
      if ((v62 & 1) == 0)
      {
        v92 = v66;
LABEL_28:
        v69 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance);
        v70 = v107;
        v72 = v97;
        v71 = v98;
        if (*(v69 + 40) == 1)
        {
          (*(v98 + 104))(v97, *MEMORY[0x277D45468], v107);
        }

        else
        {
          swift_beginAccess();
          *v72 = *(v69 + 48);
          (*(v71 + 104))(v72, *MEMORY[0x277D45480], v70);
          sub_21DBF8E0C();
        }

        v73 = v72;
        v74 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted);
        v75 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        v77 = v100;
        v76 = v101;
        v78 = v2 + v75;
        v79 = v102;
        (*(v101 + 16))(v100, v78, v102);
        type metadata accessor for TTRShowRemindersInListMonitorableDataView(0);
        v80 = swift_allocObject();
        v81 = v94;
        *(v80 + 16) = v94;
        (*(v71 + 32))(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v73, v107);
        *(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v74;
        (*(v76 + 32))(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v77, v79);
        v82 = v93;
        *(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = v92;
        v83 = *(v103 + 48);
        v84 = v99;
        v85 = v108;
        v82(v99, v108, v110);
        *(v84 + v83) = v96;
        v86 = v109;
        swift_beginAccess();
        v87 = v81;
        sub_21D4FC4AC((v2 + v86), v84, v80, v2, v106);
        sub_21D0CF7E0(v84, &qword_27CE5C258, &qword_21DC377B0);
        swift_endAccess();
        v111 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
        v111 = sub_21DBFA1AC();
        v112 = v88;
        MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
        v89 = sub_21DBFAEDC();
        MEMORY[0x28223BE20](v89);
        *(&v92 - 2) = v2;
        *(&v92 - 1) = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
        sub_21DBF625C();

        sub_21D0CF7E0(v85, &qword_27CE5C258, &qword_21DC377B0);
        return (*(v105 + 8))(v104, v110);
      }
    }

    else
    {
      v68 = v54;
    }

    v92 = 30;
    goto LABEL_28;
  }

  v55 = v109;
  if (*(v2 + v109))
  {

    sub_21D737CF0();
  }

  *(v2 + v55) = 0;

  v91 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v2 + v91) = 0;
}

void sub_21DA3A26C(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  *a3 = Strong == 0;
}

void sub_21DA3A324(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v6 = a1;

      sub_21D4F9F64(v6, a2);
    }

    else
    {
      v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        v9 = a1;
        v10 = v8;
        v11 = [v10 store];
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v12 = v2;
        v13 = sub_21DBFB12C();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        v15 = sub_21D87E81C(v11, sub_21D1947D8, v14, v9, v13);

        *(v12 + v5) = v15;

        swift_beginAccess();
        v15[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

uint64_t sub_21DA3A4F4()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults));
}

uint64_t TTRShowRemindersInListDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults));

  return v0;
}

uint64_t TTRShowRemindersInListDataModelSource.__deallocating_deinit()
{
  TTRShowRemindersInListDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21DA39670(&v2);
}

uint64_t sub_21DA3A7B8(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21DA39670(&v3);
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.listLayoutDidChange(shouldForceUpdate:)(Swift::Bool shouldForceUpdate)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 32))(shouldForceUpdate, ObjectType);
    swift_unknownObjectRelease();
  }
}

double sub_21DA3A8D4(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 32))(a1 & 1, ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA3A96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3F550]();
    (*(v13 + 24))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

double TTRShowRemindersInListDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowRemindersInListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v9 = sub_21DBF719C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_21DBF6DBC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v60 = v18;
  v20(v17, a2);
  v61 = v13;
  v21 = *(v13 + 48);
  v64 = v17;
  *&v17[v21] = a3;
  v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!v23)
  {
    v39 = a3;
    return sub_21D0CF7E0(v64, &qword_27CE5C258, &qword_21DC377B0);
  }

  v24 = a3;
  if (v23 != a1)
  {
    return sub_21D0CF7E0(v64, &qword_27CE5C258, &qword_21DC377B0);
  }

  v25 = sub_21DBF6E3C();
  sub_21D4F5F28(v25);
  v27 = v26;

  sub_21DA3A324(a3, v27);

  v28 = v62;
  sub_21D0D3954(v64, v62, &qword_27CE5C258, &qword_21DC377B0);

  MEMORY[0x223D3F550]();
  v58 = *(v19 + 8);
  v59 = v19 + 8;
  v58(v28, v60);
  v29 = sub_21DBF716C();
  (*(v10 + 8))(v12, v9);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_24:

LABEL_25:
    v46 = v64;
    v47 = v62;
    sub_21D0D3954(v64, v62, &qword_27CE5C258, &qword_21DC377B0);

    v48 = sub_21DBF6DAC();
    v58(v47, v60);
    v49 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v50 = *(v5 + v49);
    *(v5 + v49) = v48;

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_21DBFBEEC();
    v65 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
    v51 = sub_21DBFA1AC();
    v53 = v52;

    v65 = v51;
    v66 = v53;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v54 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v54);
    *(&v56 - 4) = v5;
    *(&v56 - 3) = v46;
    *(&v56 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v64, &qword_27CE5C258, &qword_21DC377B0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_24;
  }

  v30 = sub_21DBFBD7C();
  if (!v30)
  {
    v57 = v5;

    v32 = MEMORY[0x277D84F90];
LABEL_15:
    v5 = v57;
    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v40 = sub_21DBFC40C();
    }

    else
    {
      v40 = MEMORY[0x277D84F98];
    }

    v67[0] = v40;
    v41 = sub_21DBF8E0C();
    sub_21D1931C0(v41, 1, v67);

    v42 = v67[0];
    v43 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v5 + v43))
    {

      sub_21D188810(v42);
      v45 = v44;

      TTRBatchFetchManager<A>.override(objects:)(v45);
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_5:
  v57 = v5;
  v67[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v67[0];
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v33 objectID];
      v67[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21D18E6B8((v36 > 1), v37 + 1, 1);
        v32 = v67[0];
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
    }

    while (v30 != v31);

    goto LABEL_15;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21DA3B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a4;
  v6 = sub_21DBF719C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v17 = result;
  if (result)
  {
    v27 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = v30;
    sub_21D0D3954(v30, v14, &qword_27CE5C258, &qword_21DC377B0);

    v19 = sub_21DBF6DAC();
    v29 = v4;
    v25 = v19;
    v20 = sub_21DBF6DBC();
    v21 = *(v20 - 8);
    v26 = v6;
    v22 = *(v21 + 8);
    v22(v14, v20);
    sub_21D0D3954(v18, v11, &qword_27CE5C258, &qword_21DC377B0);

    MEMORY[0x223D3F550]();
    v22(v11, v20);
    v23 = v25;
    (*(v27 + 24))(v25, v8, v31, ObjectType);
    swift_unknownObjectRelease();

    result = (*(v32 + 8))(v8, v26);
  }

  *v33 = v17 == 0;
  return result;
}

double sub_21DA3B4A8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA3B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0) + 48));

  return TTRShowRemindersInListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

void sub_21DA3B6C8(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  *a3 = Strong == 0;
}

void TTRShowRemindersInListDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F1E0);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = 0xE000000000000000;
    v13 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_21DBFA16C();
      v12 = v17;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x223D42AA0](v16, v12);

    MEMORY[0x223D42AA0](0x203A7473696CLL, 0xE600000000000000);

    v18 = sub_21D0CDFB4(0, 0xE000000000000000, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowRemindersInListDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

id TTRShowRemindersInListPrintingDataModelSource.store.getter()
{
  v1 = [*(v0 + 16) store];

  return v1;
}

uint64_t TTRShowRemindersInListPrintingDataModelSource.init(list:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowRemindersInListPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v79 = retstr;
  v3 = sub_21DBF6F4C();
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v98 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21DBF6F8C();
  v73 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v100 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v72 - v7;
  v88 = sub_21DBF6DBC();
  v81 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF719C();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70, &unk_21DC09E80);
  v75 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v87 = &v72 - v11;
  v12 = sub_21DBF714C();
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v95 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21DBF734C();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v94 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF71BC();
  v16 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v91 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21DBF70DC();
  v18 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF738C();
  v83 = *(v21 - 8);
  v84 = v21;
  MEMORY[0x28223BE20](v21);
  v86 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17EB8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_280D0F1E0);

    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    v26 = os_log_type_enabled(v24, v25);
    v99 = v3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v72 = v12;
      v28 = v2;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = [v28[2] objectID];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch list tree {listID: %@}", v29, 0xCu);
      sub_21D0CF7E0(v30, &unk_27CE60070, &unk_21DC09550);
      v32 = v30;
      v3 = v99;
      MEMORY[0x223D46520](v32, -1, -1);
      v33 = v29;
      v2 = v28;
      v12 = v72;
      MEMORY[0x223D46520](v33, -1, -1);
    }

    (*(v18 + 16))(v20, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle, v89);
    (*(v16 + 16))(v91, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted, v90);
    (*(v92 + 104))(v94, *MEMORY[0x277D45500], v93);
    (*(v96 + 104))(v95, *MEMORY[0x277D45450], v12);
    v34 = v86;
    sub_21DBF737C();
    v35 = [v2[2] store];
    v36 = v97;
    sub_21DBF6D0C();
    if (v36)
    {
      (*(v83 + 8))(v34, v84);

      return;
    }

    v72 = 0;
    v2 = &v108;

    v12 = v80;
    v37 = sub_21DBF76DC();
    MEMORY[0x223D3F550](v37);
    v18 = v81 + 8;
    v97 = *(v81 + 8);
    v38 = v88;
    (v97)(v12, v88);
    sub_21DBF76DC();
    v16 = sub_21DBF6DAC();
    (v97)(v12, v38);
    v39 = sub_21DBF718C();
    v20 = *(v39 + 16);
    if (!v20)
    {
      break;
    }

    v81 = v16;
    v115 = MEMORY[0x277D84F90];
    v97 = v39;
    sub_21D18E6F8(0, v20, 0);
    if (*(v97 + 16))
    {
      v18 = 0;
      v12 = v115;
      v40 = v97 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v95 = (v74 + 88);
      v96 = v73 + 16;
      LODWORD(v94) = *MEMORY[0x277D453E0];
      LODWORD(v89) = *MEMORY[0x277D453D8];
      v88 = (v74 + 96);
      v41 = *(v73 + 72);
      v92 = *(v73 + 16);
      v93 = (v73 + 8);
      v90 = v41;
      v91 = v20 - 1;
      do
      {
        v42 = v100;
        (v92)(v100, v40, v116);
        v43 = v98;
        sub_21DBF6F5C();
        v44 = (*v95)(v43, v3);
        if (v44 == v94)
        {
          (*v88)(v43, v3);
          v45 = v43;
          v46 = *v43;
          v47 = *(v43 + 1);
          v48 = *(v45 + 2);

          *&v103 = v47;
          *(&v103 + 1) = v48;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          LODWORD(v107[0]) = 192;
          BYTE4(v107[0]) = 3;
          *(v107 + 5) = v101;
          BYTE7(v107[0]) = v102;
          *(v107 + 8) = 0u;
          *(&v107[1] + 8) = 0u;
          *(&v107[2] + 8) = 0u;
          WORD4(v107[3]) = 255;
          nullsub_1();
        }

        else
        {
          if (v44 != v89)
          {
            sub_21DBFC63C();
            __break(1u);
            return;
          }

          sub_21D6EEF24(&v103);
          v42 = v100;
        }

        v20 = sub_21DBF6F7C();
        v112 = v107[0];
        v113 = v107[1];
        v114[0] = v107[2];
        *(v114 + 10) = *(&v107[2] + 10);
        v108 = v103;
        v109 = v104;
        v110 = v105;
        v111 = v106;
        (*v93)(v42, v116);
        v105 = v110;
        v106 = v111;
        v107[2] = v114[0];
        v107[3] = v114[1];
        v107[0] = v112;
        v107[1] = v113;
        v103 = v108;
        v104 = v109;
        v115 = v12;
        v16 = *(v12 + 16);
        v49 = *(v12 + 24);
        if (v16 >= v49 >> 1)
        {
          sub_21D18E6F8((v49 > 1), v16 + 1, 1);
          v12 = v115;
        }

        *(v12 + 16) = v16 + 1;
        v50 = v12 + 136 * v16;
        v51 = v103;
        v52 = v104;
        v53 = v106;
        *(v50 + 64) = v105;
        *(v50 + 80) = v53;
        *(v50 + 32) = v51;
        *(v50 + 48) = v52;
        v54 = v107[0];
        v55 = v107[1];
        v56 = v107[3];
        *(v50 + 128) = v107[2];
        *(v50 + 144) = v56;
        *(v50 + 96) = v54;
        *(v50 + 112) = v55;
        *(v50 + 160) = v20;
        if (v91 == v18)
        {

          v16 = v81;
          goto LABEL_20;
        }

        v40 += v90;
        ++v18;
        v3 = v99;
      }

      while (v18 < *(v97 + 16));
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v57 = [v16 displayName];
  v116 = sub_21DBFA16C();
  v100 = v58;

  type metadata accessor for TTRListColors();
  *(&v104 + 1) = sub_21DBF605C();
  *&v105 = &protocol witness table for REMList;
  *&v103 = v16;
  v98 = v16;
  static TTRListColors.color(for:)(&v103, &v108);
  sub_21D0CF7E0(&v103, &qword_27CE59DC0, &qword_21DC0FBF0);
  v59 = v108;
  v60 = v109;
  v61 = *(&v110 + 1);
  v97 = v110;
  v62 = v111;
  v103 = v108;
  v104 = v109;
  v63 = *(&v109 + 1);
  v105 = v110;
  LOBYTE(v106) = v111;
  v99 = TTRListColors.Color.nativeColor.getter();
  sub_21D1078C0(v59, *(&v59 + 1), v60, v63, v97, v61, v62);
  v64 = v78;
  v65 = v85;
  sub_21DBF715C();
  v66 = sub_21DBF72DC();
  v67 = *(v66 - 8);
  v68 = (*(v67 + 48))(v64, 1, v66);
  if (v68 == 1)
  {

    (*(v76 + 8))(v65, v77);
    (*(v75 + 8))(v87, v82);
    (*(v83 + 8))(v86, v84);
    sub_21D0CF7E0(v64, &qword_27CE5D378, &qword_21DC19530);
    v69 = 0;
  }

  else
  {
    v69 = sub_21DBF72AC();

    (*(v76 + 8))(v65, v77);
    (*(v75 + 8))(v87, v82);
    (*(v83 + 8))(v86, v84);
    (*(v67 + 8))(v64, v66);
  }

  v70 = v79;
  v71 = v100;
  v79->listName._countAndFlagsBits = v116;
  v70->listName._object = v71;
  v70->listColor.super.isa = v99;
  v70->count.value = v69;
  v70->count.is_nil = v68 == 1;
  v70->sections._rawValue = v12;
  v70->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.init(list:)(void *a1)
{
  v3 = sub_21DBF806C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 objectID];

  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D45950], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete, v7, v3);
  return v1;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DA3CB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowRemindersInListMonitorableDataView.init(list:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = *a3;
  *(v6 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v6 + v11, a2, v12);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v10;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v6 + v13, a4, v14);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v6;
}

uint64_t sub_21DA3CD00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21DA3CD9C(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250, &unk_21DC15D70);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF6DBC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C250, &unk_21DC15D70);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C250, &unk_21DC15D70);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258, &qword_21DC377B0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5D3D0, &unk_21DC195B0);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(byte_21DC37AD0);
      swift_getKeyPath(aH_6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D183A0C();
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v35;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0, &unk_21DC1A7F0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v24;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      (*(v38 + 8))(v15, v21);
    }
  }
}

void sub_21DA3D408(void *a1)
{
  v2 = v1;
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F1E0);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v35);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = 0xE000000000000000;
    v38 = 0;
    v39 = 0xE000000000000000;
    v36 = 0x203A7473696CLL;
    v37 = 0xE600000000000000;
    v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = [v15 description];
      v17 = sub_21DBFA16C();
      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x223D42AA0](v17, v13);

    MEMORY[0x223D42AA0](v36, v37);

    v19 = sub_21D0CDFB4(v38, v39, &v35);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowRemindersInListDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v22 = [v21 objectID];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v25 = sub_21DBF52CC();
      LODWORD(v24) = [v24 isNoSuchObjectError:v25 forObjectID:v23];

      if (v24)
      {
        v26 = v23;
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEBC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v23;
          v31 = v26;
          _os_log_impl(&dword_21D0C9000, v27, v28, "List got deleted {listObjectID: %{public}@}", v29, 0xCu);
          sub_21D0CF7E0(v30, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v30, -1, -1);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        v32 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          (*(v33 + 40))(ObjectType, v33);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_21DA3DB10(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
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

uint64_t sub_21DA3DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0, &unk_21DC195B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA3DD20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = 0;
      while (a4 != v7)
      {
        v10 = v7;
        result = v8(&v10, a2);
        if (v4)
        {
          return v5;
        }

        if ((result & 1) != 0 && __OFADD__(v5++, 1))
        {
          __break(1u);
          break;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *TTRTreeStorageWithFilteredItems.__allocating_init(upstreamTree:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TTRTreeStorageWithFilteredItems.init(upstreamTree:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t TTRTreeStorageWithFilteredItems.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = (*(*(*(*(v3 + 88) + 8) + 8) + 24))(a1, *(v3 + 80));
  return sub_21DA3DF24(v4);
}

uint64_t sub_21DA3DF24(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = result;
  MEMORY[0x28223BE20](result);
  v6[2] = v1;
  v6[3] = v3;
  v4 = sub_21DA3DD20(sub_21DA3F4C4, v6, 0, v2);
  v5 = __OFSUB__(v2, v4);
  result = v2 - v4;
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TTRTreeStorageWithFilteredItems.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_21DA3E074(a1, a2);
  swift_beginAccess();
  return (*(*(*(*(v4 + 88) + 8) + 8) + 32))(v5, a2, *(v4 + 80));
}

uint64_t sub_21DA3E074(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v19 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v17 - v6;
  if (a1 < 0)
  {
    return a1;
  }

  v17 = v4;
  v8 = *(v4 + 32);
  v9 = v2[3];
  v10 = v2;
  swift_beginAccess();
  v11 = 0;
  v12 = (v5 + 8);
  while (1)
  {
    v21 = v10[2];
    v8(v11, v20, v19, v17);
    v13 = v9(v7);
    result = (*v12)(v7, AssociatedTypeWitness);
    if ((v13 & 1) == 0 && __OFADD__(a1++, 1))
    {
      break;
    }

    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      break;
    }

    ++v11;
    if (a1 < v16)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRTreeStorageWithFilteredItems.item(withID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  swift_beginAccess();
  v21 = *(v2 + 16);
  (*(v3 + 40))(v19, v4, v3);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    v17 = 1;
    v16 = v20;
    return (*(v10 + 56))(v16, v17, 1, AssociatedTypeWitness);
  }

  v14 = *(v10 + 32);
  v14(v13, v9, AssociatedTypeWitness);
  if (((*(v2 + 24))(v13) & 1) == 0)
  {
    (*(v10 + 8))(v13, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v15 = v20;
  v14(v20, v13, AssociatedTypeWitness);
  v16 = v15;
  v17 = 0;
  return (*(v10 + 56))(v16, v17, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFilteredItems.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v23 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = v3[3];
  if ((v15(a1, v12) & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v25 = v3[2];
  (*(v5 + 48))(a1, v23, v5);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v9, v22);
LABEL_7:
    v19 = 1;
    v18 = v24;
    return (*(v10 + 56))(v18, v19, 1, AssociatedTypeWitness);
  }

  v16 = *(v10 + 32);
  v16(v14, v9, AssociatedTypeWitness);
  if (((v15)(v14) & 1) == 0)
  {
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v17 = v24;
  v16(v24, v14, AssociatedTypeWitness);
  v18 = v17;
  v19 = 0;
  return (*(v10 + 56))(v18, v19, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFilteredItems.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(*(*v2 + 11) + 8);
  v5 = *(*v2 + 10);
  v31 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v30 = &v28 - v15;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v29 = a1;
  TTRTreeStorageTreeDeriving.item(at:)(a1, v5, v4, v12);
  swift_unknownObjectRelease();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    v16 = v30;
    (*(v13 + 32))(v30, v12, AssociatedTypeWitness);
    if ((v2)[3](v16))
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v19 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
      v20 = v29;
      v21 = sub_21DA3DF24(*(v29 + *(v19 + 36)));
      v22 = v28;
      (*(v8 + 16))(v28, v20, v7);
      v23 = v32;
      TTRDerivedTreeLocation.init(parent:index:)(v22, v21, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
      (*(v13 + 8))(v30, AssociatedTypeWitness);
      return (*(*(v19 - 8) + 56))(v23, 0, 1, v19);
    }

    (*(v13 + 8))(v30, AssociatedTypeWitness);
  }

  v25 = swift_getAssociatedConformanceWitness();
  v27 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, v25, v26);
  return (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
}

uint64_t TTRTreeStorageWithFilteredItems.convertToImmediateUpstream(_:for:)(uint64_t a1, _BYTE *a2)
{
  v5 = *v2;
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_21DBF5B8C();
  v33 = v7;
  if ((a2 & 1) == 0)
  {
    v20 = v5 + 80;
    v11 = *(v5 + 80);
    v19 = *(v20 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
    sub_21DA3E074(*(a1 + *(v17 + 36)), a1);
    v22 = sub_21DBF5AFC();
LABEL_12:
    MEMORY[0x28223BE20](v22);
    *(&v30 - 4) = v11;
    *(&v30 - 3) = v19;
    *(&v30 - 2) = a1;
    type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    v27 = sub_21DA3F2FC();
    v29 = sub_21D0E5014(sub_21DA3F2D8, (&v30 - 6), v6, v17, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);
    (*(v33 + 8))(v9, v6);
    return v29;
  }

  v31 = v6;
  v32 = v2;
  v10 = TTRTreeStorageWithFilteredItems.numberOfChildren(of:)(a1);
  v12 = v5 + 80;
  v11 = *(v5 + 80);
  v30 = *(v12 + 8);
  v13 = *(*(v30 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v18 = *(a1 + *(v17 + 36));
  if (v18 < v10)
  {
    sub_21DA3E074(v18, a1);
LABEL_10:
    v22 = sub_21DBF5AFC();
    v6 = v31;
    goto LABEL_11;
  }

  v23 = v32;
  swift_beginAccess();
  v34 = v23[2];
  v24 = (*(v13 + 24))(a1, v11, v13);
  if (v10 < 1)
  {
    sub_21DBF5AFC();
    goto LABEL_10;
  }

  result = sub_21DA3E074(v10 - 1, a1);
  v6 = v31;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (v24 >= result + 1)
  {
    v34 = result + 1;
    v35 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D78, &qword_21DC37B20);
    sub_21DA3F354();
    v22 = sub_21DBF5AEC();
LABEL_11:
    v19 = v30;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA3EEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = *a1;
  (*(v14 + 16))(v17 - v11, a2, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return TTRDerivedTreeLocation.init(parent:index:)(v12, v13, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
}

BOOL sub_21DA3F040(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = a2;
  v5 = *(*(*(*a2 + 88) + 8) + 8);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = *a1;
  v12 = *(v3 + 24);
  swift_beginAccess();
  v16 = *(v3 + 16);
  (*(v5 + 32))(v11, v15, v6, v5);
  LOBYTE(v3) = v12(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return (v3 & 1) == 0;
}

uint64_t TTRTreeStorageWithFilteredItems.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRTreeStorageWithFilteredItems.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21DA3F2FC()
{
  result = qword_280D1B820;
  if (!qword_280D1B820)
  {
    v3 = sub_21DBF5B9C();
    result = swift_getWitnessTable(MEMORY[0x277CC9A50], v3, v0, v1);
    atomic_store(result, &qword_280D1B820);
  }

  return result;
}

unint64_t sub_21DA3F354()
{
  result = qword_27CE64D80[0];
  if (!qword_27CE64D80[0])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64D78, &qword_21DC37B20);
    result = swift_getWitnessTable(MEMORY[0x277D83660], v3, v0, v1);
    atomic_store(result, qword_27CE64D80);
  }

  return result;
}

uint64_t sub_21DA3F3B8(uint64_t a1)
{
  result = swift_getWitnessTable("ݱ&elL\a");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21DA3F3F4(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageWithFilteredItems<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t Either.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

uint64_t Either.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_21DA3F834(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21DA3F900(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

uint64_t sub_21DA3FABC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v4 = *(*(*(a2 + 16) - 8) + 64);
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 16) - 8);
  }

  return (*(v10 + 8))();
}

uint64_t sub_21DA3FBE0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}