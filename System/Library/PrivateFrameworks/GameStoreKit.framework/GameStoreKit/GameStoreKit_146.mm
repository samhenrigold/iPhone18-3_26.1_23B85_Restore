uint64_t sub_24F4F5758(uint64_t a1)
{
  v2 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v3 = (a1 + *(v2 + 56));
  v4 = *v3;
  v5 = *(v2 + 28);
  result = (*v3)(a1 + v5);
  if (result)
  {
    result = sub_24F4F3DEC();
    if ((result & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F48();
      return v4(a1 + v5);
    }
  }

  return result;
}

uint64_t sub_24F4F5830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = sub_24F927748();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468F0, &qword_24FA03F78);
  MEMORY[0x28223BE20](v45);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468F8, &qword_24FA03F80);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for PlayerIcon(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v46 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(a1 + *(v23 + 28), &v22[*(v18 + 28)], type metadata accessor for ChallengesPlayerInviteType);
  v24 = sub_24F4F3B94();
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v22[*(v18 + 32)] = v24;
  *v16 = sub_24F924C98();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246900, &qword_24FA03FB8);
  sub_24F4F5D74(a1, &v16[*(v25 + 44)]);
  v26 = *(a1 + *(v23 + 32));
  v27 = sub_24F926DF8();
  v28 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  if (v26)
  {
    v30 = MEMORY[0x277CE13D8];
    v31 = sub_24F925198();
  }

  else
  {
    v30 = MEMORY[0x277CE13B8];
    v31 = sub_24F9251B8();
  }

  v32 = v31;
  v33 = *v30;
  v34 = v47;
  (*(v3 + 104))(v5, v33, v47);
  (*(v3 + 32))(&v9[*(v45 + 36)], v5, v34);
  *v9 = v27;
  *(v9 + 1) = KeyPath;
  *(v9 + 2) = v28;
  *(v9 + 6) = v32;
  v35 = v9;
  v36 = v49;
  sub_24E6009C8(v35, v49, &qword_27F2468F0, &qword_24FA03F78);
  v37 = v46;
  sub_24F4FB334(v22, v46, type metadata accessor for PlayerIcon);
  v38 = v48;
  sub_24E60169C(v16, v48, &qword_27F2468F8, &qword_24FA03F80);
  v39 = v50;
  sub_24E60169C(v36, v50, &qword_27F2468F0, &qword_24FA03F78);
  v40 = v51;
  sub_24F4FB334(v37, v51, type metadata accessor for PlayerIcon);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246908, &qword_24FA03FF0);
  sub_24E60169C(v38, v40 + v41[12], &qword_27F2468F8, &qword_24FA03F80);
  v42 = v40 + v41[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24E60169C(v39, v40 + v41[20], &qword_27F2468F0, &qword_24FA03F78);
  sub_24E601704(v36, &qword_27F2468F0, &qword_24FA03F78);
  sub_24E601704(v16, &qword_27F2468F8, &qword_24FA03F80);
  sub_24F4FB6DC(v22, type metadata accessor for PlayerIcon);
  sub_24E601704(v39, &qword_27F2468F0, &qword_24FA03F78);
  sub_24E601704(v38, &qword_27F2468F8, &qword_24FA03F80);
  return sub_24F4FB6DC(v37, type metadata accessor for PlayerIcon);
}

uint64_t sub_24F4F5D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v95 = type metadata accessor for GameHistoryInfoView(0);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8, &unk_24F965E50);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246910, &unk_24FA03FF8);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v101 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v83 - v14;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  v20 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v20);
  v91 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246918, &qword_24FA04008);
  MEMORY[0x28223BE20](v25 - 8);
  v92 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v85 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v89 = *(v85 + 28);
  sub_24F4FB334(a1 + v89, v24, type metadata accessor for ChallengesPlayerInviteType);
  v90 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v100 = v29;
  v98 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
    sub_24F4FB39C(v24, v19, type metadata accessor for Player);
    sub_24F37B534();
    v33 = v32;
    v35 = v34;
    sub_24F4FB6DC(v19, type metadata accessor for Player);

    sub_24E601704(&v24[v31], &qword_27F2212F8, &unk_24F965E50);
    if (v35)
    {
      v102 = v33;
      v103 = v35;
      sub_24E600AEC();
      v36 = sub_24F925E18();
      v38 = v37;
      v40 = v39;
      sub_24F925A08();
      v41 = sub_24F925C98();
      v84 = a1;
      v43 = v42;
      v44 = v11;
      v46 = v45;
      v48 = v47;

      sub_24E600B40(v36, v38, v40 & 1);

      v102 = v41;
      v103 = v43;
      LOBYTE(v38) = v46 & 1;
      v11 = v44;
      v104 = v38;
      v105 = v48;
      v49 = v99;
      sub_24F9268B8();
      v50 = v41;
      v10 = v98;
      a1 = v84;
      sub_24E600B40(v50, v43, v38);

      *(v49 + *(v10 + 36)) = sub_24F9251C8();
      v29 = v100;
      sub_24E6009C8(v49, v100, &qword_27F217358, &qword_24F9D1F60);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v29 = v100;
    }
  }

  else
  {
    sub_24F4FB6DC(v24, type metadata accessor for ChallengesPlayerInviteType);
    v51 = 1;
  }

  (*(v11 + 56))(v29, v51, 1, v10);
  v102 = sub_24F4F4FF4();
  v103 = v52;
  sub_24E600AEC();
  v53 = sub_24F925E18();
  v55 = v54;
  v57 = v56;
  sub_24F9258D8();
  v58 = sub_24F925C98();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_24E600B40(v53, v55, v57 & 1);

  v102 = v58;
  v103 = v60;
  v104 = v62 & 1;
  v105 = v64;
  v65 = v101;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v62 & 1);

  *(v65 + *(v98 + 36)) = sub_24F925198();
  v66 = v91;
  sub_24F4FB334(a1 + v89, v91, type metadata accessor for ChallengesPlayerInviteType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
    v68 = v86;
    sub_24F4FB39C(v66, v86, type metadata accessor for Player);
    v69 = v66 + v67;
    v70 = v87;
    sub_24E6009C8(v69, v87, &qword_27F2212F8, &unk_24F965E50);
    v71 = v88;
    sub_24F4FB39C(v68, v88, type metadata accessor for Player);
    v72 = v95;
    sub_24E60169C(a1 + *(v85 + 44), v71 + *(v95 + 20), &qword_27F212B28, &qword_24F939910);
    sub_24E6009C8(v70, v71 + *(v72 + 24), &qword_27F2212F8, &unk_24F965E50);
    v73 = v94;
    sub_24F4FB39C(v71, v94, type metadata accessor for GameHistoryInfoView);
    v74 = 0;
  }

  else
  {
    sub_24F4FB6DC(v66, type metadata accessor for ChallengesPlayerInviteType);
    v74 = 1;
    v73 = v94;
    v72 = v95;
  }

  (*(v93 + 56))(v73, v74, 1, v72);
  v75 = v100;
  v76 = v92;
  sub_24E60169C(v100, v92, &qword_27F246918, &qword_24FA04008);
  v77 = v101;
  v78 = v99;
  sub_24E60169C(v101, v99, &qword_27F217358, &qword_24F9D1F60);
  v79 = v96;
  sub_24E60169C(v73, v96, &qword_27F246910, &unk_24FA03FF8);
  v80 = v97;
  sub_24E60169C(v76, v97, &qword_27F246918, &qword_24FA04008);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246920, &qword_24FA04010);
  sub_24E60169C(v78, v80 + *(v81 + 48), &qword_27F217358, &qword_24F9D1F60);
  sub_24E60169C(v79, v80 + *(v81 + 64), &qword_27F246910, &unk_24FA03FF8);
  sub_24E601704(v73, &qword_27F246910, &unk_24FA03FF8);
  sub_24E601704(v77, &qword_27F217358, &qword_24F9D1F60);
  sub_24E601704(v75, &qword_27F246918, &qword_24FA04008);
  sub_24E601704(v79, &qword_27F246910, &unk_24FA03FF8);
  sub_24E601704(v78, &qword_27F217358, &qword_24F9D1F60);
  return sub_24E601704(v76, &qword_27F246918, &qword_24FA04008);
}

uint64_t sub_24F4F66F4()
{
  v1 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v96 = *(*(v1 - 1) + 80);
  v95 = (v96 + 16) & ~v96;
  v2 = v0 + v95;
  if (*(v0 + v95 + 40))
  {
    if (*(v2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v95));
    }
  }

  else
  {
  }

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = (v2 + v1[7]);
  type metadata accessor for ChallengesPlayerInviteType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = v0 + v95;
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      v7 = type metadata accessor for Player(0);
      v8 = v7[6];
      v9 = sub_24F9289E8();
      v92 = *(v9 - 8);
      v97 = *(v92 + 8);
      v97(v5 + v8, v9);

      if (*(v5 + v7[9] + 8) != 1)
      {
      }

      v10 = v5 + v7[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet(0);
      v91 = *(*(v11 - 8) + 48);
      if (!v91(v10, 1, v11))
      {
        v12 = type metadata accessor for CallProviderConversationHandle(0);
        v13 = *(*(v12 - 8) + 48);
        if (!v13(v10, 1, v12))
        {
          v14 = v1;

          v15 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v92 + 48))(&v10[v15], 1, v9))
          {
            v97(&v10[v15], v9);
          }

          v1 = v14;
        }

        v16 = &v10[*(v11 + 20)];
        if (!v13(v16, 1, v12))
        {

          v17 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v92 + 48))(&v16[v17], 1, v9))
          {
            v97(&v16[v17], v9);
          }
        }

        v2 = v0 + v95;
      }

      if (*(v5 + v7[15] + 8))
      {
      }

      v18 = v5 + v7[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      v89 = *(*(PlayedTogetherInfo - 8) + 48);
      v90 = PlayedTogetherInfo;
      v93 = v1;
      if (!v89(v18, 1))
      {

        v20 = type metadata accessor for Game(0);
        v97(&v18[v20[18]], v9);
        v21 = v20[19];
        if (!(*(v92 + 48))(&v18[v21], 1, v9))
        {
          v97(&v18[v21], v9);
        }

        v22 = v20[21];
        v23 = sub_24F920818();
        v24 = *(v23 - 8);
        if (!(*(v24 + 48))(&v18[v22], 1, v23))
        {
          (*(v24 + 8))(&v18[v22], v23);
        }

        v2 = v99;
      }

      v25 = v5 + v7[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      v88 = *(*(ChallengeInfo - 8) + 48);
      if (!v88(v25, 1, ChallengeInfo))
      {
        v86 = ChallengeInfo;

        v27 = type metadata accessor for Game(0);
        v97(&v25[v27[18]], v9);
        v28 = v27[19];
        if (!(*(v92 + 48))(&v25[v28], 1, v9))
        {
          v97(&v25[v28], v9);
        }

        v29 = v27[21];
        v30 = sub_24F920818();
        v31 = *(v30 - 8);
        if (!(*(v31 + 48))(&v25[v29], 1, v30))
        {
          (*(v31 + 8))(&v25[v29], v30);
        }

        v1 = v93;
        v2 = v99;
        ChallengeInfo = v86;
      }

      v32 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
      v33 = type metadata accessor for PlayActivity(0);
      if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
      {
        v87 = v33;

        v97(&v32[v7[6]], v9);

        if (*&v32[v7[9] + 8] != 1)
        {
        }

        v34 = &v32[v7[13]];
        if (!v91(v34, 1, v11))
        {
          v35 = type metadata accessor for CallProviderConversationHandle(0);
          v36 = *(*(v35 - 8) + 48);
          if (!v36(v34, 1, v35))
          {

            v37 = *(type metadata accessor for CallProvider(0) + 24);
            if (!(*(v92 + 48))(&v34[v37], 1, v9))
            {
              v97(&v34[v37], v9);
            }
          }

          v38 = &v34[*(v11 + 20)];
          v1 = v93;
          if (!v36(v38, 1, v35))
          {

            v39 = *(type metadata accessor for CallProvider(0) + 24);
            if (!(*(v92 + 48))(&v38[v39], 1, v9))
            {
              v97(&v38[v39], v9);
            }
          }

          v2 = v99;
        }

        if (*&v32[v7[15] + 8])
        {
        }

        v40 = &v32[v7[16]];
        if (!(v89)(v40, 1, v90))
        {

          v41 = type metadata accessor for Game(0);
          v97(&v40[v41[18]], v9);
          v42 = v41[19];
          if (!(*(v92 + 48))(&v40[v42], 1, v9))
          {
            v97(&v40[v42], v9);
          }

          v43 = v41[21];
          v44 = sub_24F920818();
          v45 = *(v44 - 8);
          if (!(*(v45 + 48))(&v40[v43], 1, v44))
          {
            (*(v45 + 8))(&v40[v43], v44);
          }

          v1 = v93;
          v2 = v99;
        }

        v46 = &v32[v7[17]];
        v47 = v88(v46, 1, ChallengeInfo);
        v48 = v87;
        if (!v47)
        {

          v49 = type metadata accessor for Game(0);
          v97(&v46[v49[18]], v9);
          v50 = v49[19];
          if (!(*(v92 + 48))(&v46[v50], 1, v9))
          {
            v97(&v46[v50], v9);
          }

          v51 = v49[21];
          v52 = sub_24F920818();
          v53 = *(v52 - 8);
          if (!(*(v53 + 48))(&v46[v51], 1, v52))
          {
            (*(v53 + 8))(&v46[v51], v52);
          }

          v48 = v87;
        }

        v54 = *(v48 + 20);
        v55 = sub_24F91F648();
        (*(*(v55 - 8) + 8))(&v32[v54], v55);
      }

      break;
    case 0:

      break;
  }

  v56 = v2 + v1[10];

  v57 = type metadata accessor for Player(0);
  v58 = v57[6];
  v59 = sub_24F9289E8();
  v98 = *(v59 - 8);
  v100 = *(v98 + 8);
  v100(v56 + v58, v59);

  if (*(v56 + v57[9] + 8) != 1)
  {
  }

  v60 = v56 + v57[13];
  v61 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    v94 = v1;
    v62 = type metadata accessor for CallProviderConversationHandle(0);
    v63 = *(*(v62 - 8) + 48);
    if (!v63(v60, 1, v62))
    {

      v64 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v98 + 48))(v60 + v64, 1, v59))
      {
        v100(v60 + v64, v59);
      }
    }

    v65 = v60 + *(v61 + 20);
    v66 = v63(v65, 1, v62);
    v1 = v94;
    if (!v66)
    {

      v67 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v98 + 48))(v65 + v67, 1, v59))
      {
        v100(v65 + v67, v59);
      }
    }

    v2 = v99;
  }

  if (*(v56 + v57[15] + 8))
  {
  }

  v68 = v56 + v57[16];
  v69 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
  {
    v70 = v1;

    v71 = type metadata accessor for Game(0);
    v100(v68 + v71[18], v59);
    v72 = v71[19];
    if (!(*(v98 + 48))(v68 + v72, 1, v59))
    {
      v100(v68 + v72, v59);
    }

    v73 = v71[21];
    v74 = sub_24F920818();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v68 + v73, 1, v74))
    {
      (*(v75 + 8))(v68 + v73, v74);
    }

    v1 = v70;
    v2 = v99;
  }

  v76 = v56 + v57[17];
  v77 = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
  {

    v78 = type metadata accessor for Game(0);
    v100(v76 + v78[18], v59);
    v79 = v78[19];
    if (!(*(v98 + 48))(v76 + v79, 1, v59))
    {
      v100(v76 + v79, v59);
    }

    v80 = v78[21];
    v81 = sub_24F920818();
    v82 = *(v81 - 8);
    if (!(*(v82 + 48))(v76 + v80, 1, v81))
    {
      (*(v82 + 8))(v76 + v80, v81);
    }
  }

  v83 = v2 + v1[11];
  v84 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
  {

    v100(v83 + *(v84 + 28), v59);
  }

  return swift_deallocObject();
}

double sub_24F4F7ACC()
{
  v1 = *(type metadata accessor for PlayTogetherPlayerSelectionRow(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F4F43D4(v3, v2);
}

unint64_t sub_24F4F7B34()
{
  result = qword_27F246858;
  if (!qword_27F246858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246850, &qword_24FA03EE0);
    sub_24F4F7BC0();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246858);
  }

  return result;
}

unint64_t sub_24F4F7BC0()
{
  result = qword_27F246860;
  if (!qword_27F246860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246868, &qword_24FA03EE8);
    sub_24E602068(&qword_27F246870, &qword_27F246878, &unk_24FA03EF0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246860);
  }

  return result;
}

double sub_24F4F7C78()
{
  v0._object = 0x800000024FA75ED0;
  v0._countAndFlagsBits = 0xD000000000000036;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  localizedString(_:comment:)(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246960, &unk_24FA04188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  sub_24E602068(&qword_27F246968, &qword_27F246960, &unk_24FA04188, MEMORY[0x277CE04B0]);
  sub_24E600AEC();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
  sub_24F926908();

  return result;
}

uint64_t sub_24F4F7E94@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA580D0;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_24F4F7F0C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 40) = 0xE400000000000000;
  v13 = *a1;
  *(inited + 48) = v13;
  sub_24E614DB0(&v13, &v12);
  v5 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
  v6._object = 0x800000024FA75F10;
  v6._countAndFlagsBits = 0xD000000000000039;
  v7 = localizedString(_:with:)(v6, v5);

  v12 = v7;
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_24F4F8068@<X0>(void (***a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v110 = a2;
  v102 = sub_24F91EAA8();
  v101 = *(v102 - 1);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v111);
  v117 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v94 - v7;
  v8 = type metadata accessor for Player(0);
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v115 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlayerAvatar(0);
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v94 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v94 - v16);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469B0, &qword_24FA04290);
  MEMORY[0x28223BE20](v108);
  v19 = &v94 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469B8, &qword_24FA04298);
  MEMORY[0x28223BE20](v104);
  v21 = &v94 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469C0, &unk_24FA042A0);
  MEMORY[0x28223BE20](v109);
  v105 = &v94 - v22;
  v23 = sub_24F927748();
  v103 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PlayerGroupView(0);
  MEMORY[0x28223BE20](v107);
  v27 = (&v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = (&v94 - v29);
  v31 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PlayerIcon(0);
  sub_24F4FB334(v118 + *(v34 + 20), v33, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v106 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
      v36 = v115;
      sub_24F4FB39C(v33, v115, type metadata accessor for Player);
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      v117 = v37;
      v39 = type metadata accessor for PlayerAvatar.Overlay(0);
      v40 = *(*(v39 - 8) + 56);
      v41 = v116;
      v40(v116, 1, 1, v39);
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v42 = v21;
      v43 = v114;
      v44 = *(v114 + 20);
      v40(v14 + v44, 1, 1, v39);
      v45 = v14 + *(v43 + 24);
      v122 = 0;
      v120 = 0u;
      v121 = 0u;
      *v45 = 0u;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0;

      sub_24E61DA68(&v120, v45, qword_27F21B590, &unk_24F93BE30);
      *v14 = v117;
      v14[1] = v38;
      sub_24E61DA68(v41, v14 + v44, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v123, v45, qword_27F21B590, &unk_24F93BE30);
      LOBYTE(v123) = 7;
      v46 = v112;
      sub_24F8319B8(v14, &v123, v112);
      sub_24F4FB334(v46, v42, type metadata accessor for PlayerAvatarView);
      swift_storeEnumTagMultiPayload();
      sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
      sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
      v47 = v105;
      sub_24F924E28();
      sub_24E60169C(v47, v106, &qword_27F2469C0, &unk_24FA042A0);
      swift_storeEnumTagMultiPayload();
      sub_24F4FC080();
      sub_24F924E28();
      sub_24E601704(v47, &qword_27F2469C0, &unk_24FA042A0);
      sub_24F4FB6DC(v46, type metadata accessor for PlayerAvatarView);
      sub_24F4FB6DC(v115, type metadata accessor for Player);
      return sub_24E601704(v118 + v33, &qword_27F2212F8, &unk_24F965E50);
    }

    v72 = *v33;
    v73 = [*v33 identifier];
    v74 = sub_24F92B0D8();
    v76 = v75;

    *&v123 = v74;
    *(&v123 + 1) = v76;
    v77 = v100;
    sub_24F91EA28();
    sub_24E600AEC();
    v78 = sub_24F92C578();
    v80 = v79;
    v101[1](v77, v102);
    if (!v80)
    {

      v78 = v74;
      v80 = v76;
    }

    *&v123 = 0x3A746361746E6F63;
    *(&v123 + 1) = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v78, v80);

    v81 = v123;
    v82 = type metadata accessor for PlayerAvatar.Overlay(0);
    v83 = *(*(v82 - 8) + 56);
    v84 = v116;
    v83(v116, 1, 1, v82);
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v85 = v114;
    v86 = *(v114 + 20);
    v87 = v99;
    v83(v99 + v86, 1, 1, v82);
    v88 = v87 + *(v85 + 24);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    *v88 = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0;
    sub_24E61DA68(&v120, v88, qword_27F21B590, &unk_24F93BE30);
    *v87 = v81;
    sub_24E61DA68(v84, v87 + v86, &qword_27F22DF80, &unk_24F942E50);
    sub_24E61DA68(&v123, v88, qword_27F21B590, &unk_24F93BE30);
    LOBYTE(v123) = 7;
    v89 = v117;
    sub_24F8319B8(v87, &v123, v117);
    sub_24F4FB334(v89, v106, type metadata accessor for PlayerAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC080();
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    sub_24F924E28();

    v90 = type metadata accessor for PlayerAvatarView;
    v91 = v89;
  }

  else
  {
    v118 = v17;
    v101 = v30;
    v102 = v21;
    v50 = *(v33 + 1);
    v49 = *(v33 + 2);
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v51 = sub_24F926D08();

    v52 = v103;
    (*(v103 + 104))(v25, *MEMORY[0x277CE13D8], v23);
    v53 = v49;
    v54 = v107;
    *(v27 + *(v107 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
    *(v27 + *(v54 + 32)) = 7;
    v55 = *(v49 + 16);
    v56 = v25;
    if (v55)
    {
      v95 = v51;
      v96 = v50;
      v97 = v27;
      v99 = v25;
      v100 = v23;
      v106 = v19;
      v119 = MEMORY[0x277D84F90];
      v57 = v53;
      sub_24F457BF8(0, v55, 0);
      v58 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v94 = v57;
      v59 = v57 + v58;
      v112 = *(v98 + 72);
      v61 = v118;
      v60 = v119;
      do
      {
        v118 = v60;
        v62 = v115;
        sub_24F4FB334(v59, v115, type metadata accessor for Player);
        v63 = *(v62 + 24);
        v117 = *(v62 + 16);

        sub_24F4FB6DC(v62, type metadata accessor for Player);
        v64 = type metadata accessor for PlayerAvatar.Overlay(0);
        v65 = *(*(v64 - 8) + 56);
        v66 = v116;
        v65(v116, 1, 1, v64);
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        v67 = v114;
        v68 = *(v114 + 20);
        v65(&v61[v68], 1, 1, v64);
        v69 = &v61[*(v67 + 24)];
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        *v69 = 0u;
        *(v69 + 16) = 0u;
        *(v69 + 32) = 0;
        sub_24E61DA68(&v120, v69, qword_27F21B590, &unk_24F93BE30);
        *v61 = v117;
        *(v61 + 1) = v63;
        v60 = v118;
        sub_24E61DA68(v66, &v61[v68], &qword_27F22DF80, &unk_24F942E50);
        sub_24E61DA68(&v123, v69, qword_27F21B590, &unk_24F93BE30);
        v119 = v60;
        v71 = v60[2];
        v70 = v60[3];
        if (v71 >= v70 >> 1)
        {
          sub_24F457BF8((v70 > 1), v71 + 1, 1);
          v60 = v119;
        }

        v60[2] = (v71 + 1);
        sub_24F4FB39C(v61, v60 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v71, type metadata accessor for PlayerAvatar);
        v59 += v112;
        --v55;
      }

      while (v55);

      v19 = v106;
      v23 = v100;
      v52 = v103;
      v56 = v99;
      v27 = v97;
      v51 = v95;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    *v27 = v60;
    v27[1] = v51;
    (*(v52 + 32))(v27 + *(v107 + 24), v56, v23);
    v92 = v101;
    sub_24F4FB39C(v27, v101, type metadata accessor for PlayerGroupView);
    sub_24F4FB334(v92, v102, type metadata accessor for PlayerGroupView);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    v93 = v105;
    sub_24F924E28();
    sub_24E60169C(v93, v19, &qword_27F2469C0, &unk_24FA042A0);
    swift_storeEnumTagMultiPayload();
    sub_24F4FC080();
    sub_24F924E28();
    sub_24E601704(v93, &qword_27F2469C0, &unk_24FA042A0);
    v90 = type metadata accessor for PlayerGroupView;
    v91 = v92;
  }

  return sub_24F4FB6DC(v91, v90);
}

uint64_t sub_24F4F9070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F929888();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F926E08();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D040, &unk_24F9DA660);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v33 - v17;
  if (*(a1 + *(type metadata accessor for PlayerIcon(0) + 24)) == 1)
  {
    v35 = v13;
    v18 = *a1;
    v19 = *(a1 + 8) == 1;
    v34 = v5;
    if (v19)
    {
      v25 = *&v18;
    }

    else
    {

      sub_24F92BDC8();
      v22 = v4;
      v23 = a2;
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      a2 = v23;
      v4 = v22;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v18, 0);
      (*(v10 + 8))(v12, v9);
      v25 = *v43;
    }

    v26 = 1;
    LOBYTE(v43[0]) = 1;
    if (sub_24EFFE798(v43, 0, 20.0, 20.0, v25))
    {
      sub_24F926DE8();
      v27 = v36;
      v28 = v37;
      (*(v36 + 104))(v8, *MEMORY[0x277CE0FE0], v37);
      v29 = sub_24F926E88();

      (*(v27 + 8))(v8, v28);
      sub_24F927618();
      sub_24F9238C8();
      v43[0] = v29;
      v43[1] = v48;
      v44 = v49;
      v45 = v50;
      v46 = v51;
      v47 = v52;
      memset(v42, 0, sizeof(v42));
      memset(v41, 0, sizeof(v41));
      v30 = v38;
      sub_24F929828();
      sub_24E601704(v41, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v42, &qword_27F2129B0, &unk_24F945320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217338, &qword_24F945480);
      sub_24E6A6234();
      sub_24F925EE8();
      (*(v34 + 8))(v30, v4);

      v26 = 0;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218200, &qword_24F948018);
    (*(*(v31 - 8) + 56))(v15, v26, 1, v31);
    v32 = v39;
    sub_24E6009C8(v15, v39, &qword_27F23D040, &unk_24F9DA660);
    sub_24E6009C8(v32, a2, &qword_27F23D040, &unk_24F9DA660);
    return (*(v40 + 56))(a2, 0, 1, v35);
  }

  else
  {
    v20 = *(v40 + 56);

    return v20(a2, 1, 1, v13);
  }
}

uint64_t sub_24F4F9688@<X0>(uint64_t a1@<X8>)
{
  sub_24F4F8068(v1, a1);
  sub_24F927618();
  sub_24F9238C8();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246998, &qword_24FA04278) + 36));
  *v3 = v10;
  v3[1] = v11;
  v3[2] = v12;
  v4 = sub_24F9275D8();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469A0, &qword_24FA04280) + 36);
  sub_24F4F9070(v1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2469A8, &qword_24FA04288);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

id sub_24F4F9764()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  [v0 setUnitsStyle_];
  result = [v0 setDateTimeStyle_];
  qword_27F246830 = v0;
  return result;
}

uint64_t sub_24F4F97C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246970, &unk_24FA04198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F4F9AA0(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F213FB0, &qword_24F93E6B0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_24F4FA2A8();
    if (v13)
    {
      *v5 = sub_24F9249A8();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246978, &qword_24FA041A8);
      sub_24F4FAE98(v12, &v5[*(v14 + 44)]);

      sub_24E6009C8(v5, a1, &qword_27F246970, &unk_24FA04198);
      (*(v3 + 56))(a1, 0, 1, v2);
      return (*(v10 + 8))(v12, v9);
    }

    (*(v10 + 8))(v12, v9);
  }

  return (*(v3 + 56))(a1, 1, 1, v2);
}

uint64_t sub_24F4F9AA0@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255200, &unk_24FA04260);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8, &unk_24F965E50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246990, &qword_24FA04270);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for GameActivityDraftGameInfo(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  v25 = type metadata accessor for GameHistoryInfoView(0);
  v61 = *(v25 + 20);
  sub_24E60169C(v1 + v61, v18, &qword_27F212B28, &qword_24F939910);
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
  }

  else
  {
    sub_24F4FB39C(v18, v24, type metadata accessor for GameActivityDraftGameInfo);
    sub_24F37F45C(*(v24 + 2), *(v24 + 3), v13);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
    v28 = (*(*(v27 - 8) + 48))(v13, 1, v27);
    sub_24E601704(v13, &qword_27F246990, &qword_24FA04270);
    if (v28 != 1)
    {
      v46 = *(v19 + 28);
      v47 = sub_24F9289E8();
      v48 = *(v47 - 8);
      v49 = &v24[v46];
      v50 = v66;
      (*(v48 + 16))(v66, v49, v47);
      sub_24F4FB6DC(v24, type metadata accessor for GameActivityDraftGameInfo);
      return (*(v48 + 56))(v50, 0, 1, v47);
    }

    sub_24F4FB6DC(v24, type metadata accessor for GameActivityDraftGameInfo);
  }

  sub_24E60169C(v1 + *(v25 + 24), v10, &qword_27F2212F8, &unk_24F965E50);
  v29 = type metadata accessor for PlayActivity(0);
  v30 = (*(*(v29 - 8) + 48))(v10, 1, v29);
  sub_24E601704(v10, &qword_27F2212F8, &unk_24F965E50);
  if (v30 != 1)
  {
    v31 = v62;
    sub_24E60169C(v1 + v61, v62, &qword_27F212B28, &qword_24F939910);
    if (v26(v31, 1, v19) != 1)
    {
      v51 = v58;
      sub_24F4FB39C(v31, v58, type metadata accessor for GameActivityDraftGameInfo);
      v52 = *(v19 + 28);
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      v55 = v51 + v52;
      v56 = v66;
      (*(v54 + 16))(v66, v55, v53);
      sub_24F4FB6DC(v51, type metadata accessor for GameActivityDraftGameInfo);
      return (*(v54 + 56))(v56, 0, 1, v53);
    }

    sub_24E601704(v31, &qword_27F212B28, &qword_24F939910);
  }

  v32 = v65;
  sub_24F37E69C(v65);
  v33 = v64;
  if ((*(v63 + 48))(v32, 1, v64) == 1)
  {
    sub_24E601704(v32, &unk_27F255200, &unk_24FA04260);
    v34 = sub_24F9289E8();
    return (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
  }

  else
  {
    v36 = v32;
    v37 = v59;
    sub_24E6009C8(v36, v59, &qword_27F255210, &qword_24F9EC0E0);
    v38 = v60;
    sub_24E6009C8(v37, v60, &qword_27F255210, &qword_24F9EC0E0);
    v39 = v38 + *(v33 + 64);
    v40 = *(type metadata accessor for Game(0) + 72);
    v41 = sub_24F9289E8();
    v42 = *(v41 - 8);
    v43 = v39 + v40;
    v44 = v66;
    (*(v42 + 16))(v66, v43, v41);
    sub_24F4FB6DC(v39, type metadata accessor for Game);
    (*(v42 + 56))(v44, 0, 1, v41);
    v45 = sub_24F91F648();
    return (*(*(v45 - 8) + 8))(v38, v45);
  }
}

uint64_t sub_24F4FA2A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255200, &unk_24FA04260);
  MEMORY[0x28223BE20](v1 - 8);
  v78 = &v71 - v2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v71 - v5;
  v82 = sub_24F91F648();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8, &unk_24F965E50);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v71 - v8;
  v85 = type metadata accessor for PlayActivity(0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246990, &qword_24FA04270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F8, &unk_24F9EC0B0);
  MEMORY[0x28223BE20](v72);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  v20 = type metadata accessor for GameActivityDraftGameInfo(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for GameHistoryInfoView(0);
  v74 = *(v24 + 20);
  sub_24E60169C(v0 + v74, v19, &qword_27F212B28, &qword_24F939910);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    sub_24E601704(v19, &qword_27F212B28, &qword_24F939910);
  }

  else
  {
    sub_24F4FB39C(v19, v23, type metadata accessor for GameActivityDraftGameInfo);
    sub_24F37F45C(v23[2], v23[3], v12);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
    if ((*(*(v26 - 8) + 48))(v12, 1, v26) != 1)
    {
      v40 = v12[*(v26 + 48)];
      v41 = v72;
      v42 = *(v72 + 48);
      v43 = v81;
      v44 = v12;
      v45 = v82;
      (*(v81 + 32))(v14, v44, v82);
      v14[v42] = v40;
      v46 = v14[*(v41 + 48)];
      (*(v43 + 8))(v14, v45);
      if (v46)
      {
        v47._object = 0x800000024FA75FA0;
        v47._countAndFlagsBits = 0xD000000000000042;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v47, v48)._countAndFlagsBits;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        *(inited + 32) = 0x656D614E656D6167;
        *(inited + 40) = 0xE800000000000000;
        v65 = v23[5];
        *(inited + 48) = v23[4];
        *(inited + 56) = v65;

        v66 = sub_24E6086DC(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
        v67._countAndFlagsBits = 0xD000000000000046;
        v67._object = 0x800000024FA75F50;
        countAndFlagsBits = localizedString(_:with:)(v67, v66)._countAndFlagsBits;
      }

      sub_24F4FB6DC(v23, type metadata accessor for GameActivityDraftGameInfo);
      return countAndFlagsBits;
    }

    sub_24E601704(v12, &qword_27F246990, &qword_24FA04270);
    sub_24F4FB6DC(v23, type metadata accessor for GameActivityDraftGameInfo);
  }

  v27 = v84;
  sub_24E60169C(v0 + *(v24 + 24), v84, &qword_27F2212F8, &unk_24F965E50);
  if ((*(v83 + 48))(v27, 1, v85) == 1)
  {
    v28 = &qword_27F2212F8;
    v29 = &unk_24F965E50;
    goto LABEL_9;
  }

  v30 = v76;
  sub_24F4FB39C(v27, v76, type metadata accessor for PlayActivity);
  v27 = v75;
  sub_24E60169C(v0 + v74, v75, &qword_27F212B28, &qword_24F939910);
  if (v25(v27, 1, v20) == 1)
  {
    sub_24F4FB6DC(v30, type metadata accessor for PlayActivity);
    v28 = &qword_27F212B28;
    v29 = &qword_24F939910;
LABEL_9:
    sub_24E601704(v27, v28, v29);
    v31 = v78;
    sub_24F37E69C(v78);
    v32 = v79;
    v33 = (*(v77 + 48))(v31, 1, v79);
    v34 = v80;
    if (v33 == 1)
    {
      sub_24E601704(v31, &unk_27F255200, &unk_24FA04260);
      return 0;
    }

    else
    {
      sub_24E6009C8(v31, v80, &qword_27F255210, &qword_24F9EC0E0);
      v36 = v73;
      sub_24E60169C(v34, v73, &qword_27F255210, &qword_24F9EC0E0);
      v37 = *(v36 + *(v32 + 48));
      sub_24F4FB6DC(v36 + *(v32 + 64), type metadata accessor for Game);
      (*(v81 + 8))(v36, v82);
      if (v37 == 1)
      {
        v38._object = 0x800000024FA75FA0;
        v38._countAndFlagsBits = 0xD000000000000042;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v38, v39)._countAndFlagsBits;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        v60 = swift_initStackObject();
        *(v60 + 32) = 0x656D614E656D6167;
        *(v60 + 16) = xmmword_24F93DE60;
        *(v60 + 40) = 0xE800000000000000;
        v61 = (v34 + *(v32 + 64));
        if (v61[7])
        {
          v62 = v61[6];
          v63 = v61[7];
        }

        else
        {
          v62 = v61[4];
          v63 = v61[5];
        }

        *(v60 + 48) = v62;
        *(v60 + 56) = v63;

        v68 = sub_24E6086DC(v60);
        swift_setDeallocating();
        sub_24E601704(v60 + 32, &qword_27F219F90, &qword_24F955020);
        v69._countAndFlagsBits = 0xD000000000000046;
        v69._object = 0x800000024FA75F50;
        countAndFlagsBits = localizedString(_:with:)(v69, v68)._countAndFlagsBits;
      }

      sub_24E601704(v34, &qword_27F255210, &qword_24F9EC0E0);
    }

    return countAndFlagsBits;
  }

  sub_24E601704(v27, &qword_27F212B28, &qword_24F939910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  v49 = swift_initStackObject();
  strcpy((v49 + 32), "lastPlayedDate");
  *(v49 + 16) = xmmword_24F93DE60;
  *(v49 + 47) = -18;
  if (qword_27F211318 != -1)
  {
    swift_once();
  }

  v50 = qword_27F246830;
  v51 = sub_24F91F578();
  v52 = v71;
  sub_24F91F638();
  v53 = sub_24F91F578();
  (*(v81 + 8))(v52, v82);
  v54 = [v50 localizedStringForDate:v51 relativeToDate:v53];

  v55 = sub_24F92B0D8();
  v57 = v56;

  *(v49 + 48) = v55;
  *(v49 + 56) = v57;
  v58 = sub_24E6086DC(v49);
  swift_setDeallocating();
  sub_24E601704(v49 + 32, &qword_27F219F90, &qword_24F955020);
  v59._countAndFlagsBits = 0xD00000000000003BLL;
  v59._object = 0x800000024FA75FF0;
  countAndFlagsBits = localizedString(_:with:)(v59, v58)._countAndFlagsBits;

  sub_24F4FB6DC(v30, type metadata accessor for PlayActivity);
  return countAndFlagsBits;
}

uint64_t sub_24F4FAE98@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v46 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246980, &unk_24FA041B0) - 8;
  MEMORY[0x28223BE20](v43);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B00, &qword_24FA00D08);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = type metadata accessor for GameIcon(0);
  v18 = v17[8];
  *&v14[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v14[v17[5]] = 1;
  v14[v17[6]] = 1;
  v14[v17[7]] = 0;
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B08, &qword_24FA18300) + 36)];
  *v19 = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v20 = &v14[*(v10 + 44)];
  v21 = v49;
  *v20 = v48;
  *(v20 + 1) = v21;
  *(v20 + 2) = v50;

  sub_24F925A18();
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;

  v47[0] = sub_24F9251C8();
  v27 = sub_24F925C58();
  v29 = v28;
  LOBYTE(v17) = v30;
  v32 = v31;
  sub_24E600B40(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v34 = &v8[*(v43 + 44)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0, &qword_24FA04220) + 28);
  v36 = *MEMORY[0x277CE0B28];
  v37 = sub_24F925C38();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v8 = v27;
  *(v8 + 1) = v29;
  v8[16] = v17 & 1;
  *(v8 + 3) = v32;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;
  v38 = v44;
  sub_24E60169C(v14, v44, &qword_27F245B00, &qword_24FA00D08);
  v39 = v45;
  sub_24E60169C(v8, v45, &qword_27F246980, &unk_24FA041B0);
  v40 = v46;
  sub_24E60169C(v38, v46, &qword_27F245B00, &qword_24FA00D08);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246988, &qword_24FA04258);
  sub_24E60169C(v39, v40 + *(v41 + 48), &qword_27F246980, &unk_24FA041B0);
  sub_24E601704(v8, &qword_27F246980, &unk_24FA041B0);
  sub_24E601704(v14, &qword_27F245B00, &qword_24FA00D08);
  sub_24E601704(v39, &qword_27F246980, &unk_24FA041B0);
  return sub_24E601704(v38, &qword_27F245B00, &qword_24FA00D08);
}

uint64_t sub_24F4FB334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4FB39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4FB404()
{
  result = qword_27F2468A8;
  if (!qword_27F2468A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246898, &qword_24FA03F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468B0, &qword_24FA03F20);
    sub_24F4FB4F8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468A8);
  }

  return result;
}

unint64_t sub_24F4FB4F8()
{
  result = qword_27F2468B8;
  if (!qword_27F2468B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468B0, &qword_24FA03F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468C0, &qword_24FA03F28);
    sub_24F4FB5F0();
    swift_getOpaqueTypeConformance2();
    sub_24F4FC16C(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468B8);
  }

  return result;
}

unint64_t sub_24F4FB5F0()
{
  result = qword_27F2468C8;
  if (!qword_27F2468C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2468C0, &qword_24FA03F28);
    sub_24E602068(&qword_27F2468D0, &qword_27F2468D8, &qword_24FA03F30, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2468C8);
  }

  return result;
}

uint64_t sub_24F4FB6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4FB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8, &unk_24F965E50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_24F4FB938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F8, &unk_24F965E50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_24F4FBA9C(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F4FBB98(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F4FBB98(319, &qword_27F246938, type metadata accessor for PlayActivity, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4FBB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F4FBC10(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 254)
  {
    v5 = *(a1 + 8);
    if (v5 > 1)
    {
      return (v5 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = type metadata accessor for ChallengesPlayerInviteType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F4FBCC8(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = type metadata accessor for ChallengesPlayerInviteType(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_24F4FBD68(uint64_t a1)
{
  sub_24F4FBE18(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChallengesPlayerInviteType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4FBE18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24F4FBE6C()
{
  result = qword_27F246950;
  if (!qword_27F246950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246888, &qword_24FA03F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246848, &qword_24FA03ED8);
    sub_24F9241F8();
    sub_24E602068(&qword_27F246880, &qword_27F246848, &qword_24FA03ED8, MEMORY[0x277CDF028]);
    sub_24F4FC16C(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_24F4FBFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246950);
  }

  return result;
}

unint64_t sub_24F4FBFB8()
{
  result = qword_27F246958;
  if (!qword_27F246958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246958);
  }

  return result;
}

unint64_t sub_24F4FC080()
{
  result = qword_27F2469C8;
  if (!qword_27F2469C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469C0, &unk_24FA042A0);
    sub_24F4FC16C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469C8);
  }

  return result;
}

uint64_t sub_24F4FC16C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4FC1B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246960, &unk_24FA04188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222D08, &unk_24F973580);
  sub_24E602068(&qword_27F246968, &qword_27F246960, &unk_24FA04188, MEMORY[0x277CE04B0]);
  sub_24E600AEC();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F4FC2D0()
{
  result = qword_27F2469D0;
  if (!qword_27F2469D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469D8, &qword_24FA042B0);
    sub_24E602068(&qword_27F2469E0, &qword_27F246970, &unk_24FA04198, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469D0);
  }

  return result;
}

unint64_t sub_24F4FC384()
{
  result = qword_27F2469E8;
  if (!qword_27F2469E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2469A0, &qword_24FA04280);
    sub_24F4FC43C();
    sub_24E602068(&qword_27F246A18, &qword_27F2469A8, &qword_24FA04288, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469E8);
  }

  return result;
}

unint64_t sub_24F4FC43C()
{
  result = qword_27F2469F0;
  if (!qword_27F2469F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246998, &qword_24FA04278);
    sub_24F4FC4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469F0);
  }

  return result;
}

unint64_t sub_24F4FC4C8()
{
  result = qword_27F2469F8;
  if (!qword_27F2469F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A00, &qword_24FA042B8);
    sub_24F4FC54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2469F8);
  }

  return result;
}

unint64_t sub_24F4FC54C()
{
  result = qword_27F246A08;
  if (!qword_27F246A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A10, &unk_24FA042C0);
    sub_24F4FC080();
    sub_24F4FC16C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A08);
  }

  return result;
}

double AchievementRecordingsDataIntent.achievements.getter()
{
  type metadata accessor for AchievementRecordingsDataIntent(0);

  return result;
}

uint64_t type metadata accessor for AchievementRecordingsDataIntent(uint64_t a1)
{
  result = qword_27F246A50;
  if (!qword_27F246A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4FC6D8()
{
  if (*v0)
  {
    return 0x6D65766569686361;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F4FC714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4FC7F4(uint64_t a1)
{
  v2 = sub_24F4FCA88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4FC830(uint64_t a1)
{
  v2 = sub_24F4FCA88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementRecordingsDataIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A20, &qword_24FA042F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4FCA88();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for Game(0);
  sub_24F4FCECC(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for AchievementRecordingsDataIntent(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A30, &qword_24FA042F8);
    sub_24F4FCE30(&qword_27F246A38, &qword_27F218950, &protocol conformance descriptor for Achievement, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F4FCA88()
{
  result = qword_27F246A28;
  if (!qword_27F246A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A28);
  }

  return result;
}

uint64_t AchievementRecordingsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A40, &qword_24FA04300);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AchievementRecordingsDataIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4FCA88();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24F4FCECC(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v14 = v19;
  sub_24F92CC68();
  sub_24E636644(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A30, &qword_24FA042F8);
  v22 = 1;
  sub_24F4FCE30(&qword_27F246A48, &qword_27F218968, &protocol conformance descriptor for Achievement, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F4FCF14(v12, v17, type metadata accessor for AchievementRecordingsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4FCF7C(v12, type metadata accessor for AchievementRecordingsDataIntent);
}

uint64_t sub_24F4FCE30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A30, &qword_24FA042F8);
    sub_24F4FCECC(a2, type metadata accessor for Achievement, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4FCECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4FCF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4FCF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4FD040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game(0);
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

uint64_t sub_24F4FD110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game(0);
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

void sub_24F4FD1C8(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    sub_24F4FD24C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4FD24C(uint64_t a1)
{
  if (!qword_27F246A60)
  {
    type metadata accessor for Achievement(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F246A60);
    }
  }
}

unint64_t sub_24F4FD2B8()
{
  result = qword_27F246A68;
  if (!qword_27F246A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A68);
  }

  return result;
}

unint64_t sub_24F4FD310()
{
  result = qword_27F246A70;
  if (!qword_27F246A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A70);
  }

  return result;
}

unint64_t sub_24F4FD368()
{
  result = qword_27F246A78;
  if (!qword_27F246A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A78);
  }

  return result;
}

uint64_t ChallengesAllLeaderboardsDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v2[7] = a2;
  v2[8] = v4;
  v5 = a1[2];
  v6 = a1[3];
  v2[9] = v3;
  v2[10] = v5;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_24F4FD444, 0, 0);
}

uint64_t sub_24F4FD444()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_24F4FD504;
  v4 = *(v0 + 56);

  return sub_24E64AB1C(v0 + 16, v4);
}

uint64_t sub_24F4FD504(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24F4FD65C, 0, 0);
  }

  else
  {
    sub_24F4FD6C0(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_24F4FD65C()
{
  sub_24F4FD6C0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4FD718(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = a2[1];
  v3[9] = *a2;
  v3[10] = v4;
  v5 = a2[3];
  v3[11] = a2[2];
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_24F4FD79C, 0, 0);
}

uint64_t sub_24F4FD79C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_24F4FD85C;
  v4 = *(v0 + 64);

  return sub_24E64AB1C(v0 + 16, v4);
}

uint64_t sub_24F4FD85C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_24F4FD9B0;
  }

  else
  {
    *(v4 + 120) = a1;
    sub_24F4FD6C0(v4 + 16);
    v5 = sub_24F4FD98C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F4FD9B0()
{
  sub_24F4FD6C0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_24F4FDA24(uint64_t a1)
{
  type metadata accessor for AchievementsCard(319);
  if (v1 <= 0x3F)
  {
    sub_24E6E8928(319, &qword_27F246B00, &type metadata for AchievementCardsCount, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E6C5550();
      if (v3 <= 0x3F)
      {
        sub_24E6E8928(319, &qword_27F21B190, &type metadata for HeroLayoutMode, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E7268F0(319);
          if (v5 <= 0x3F)
          {
            sub_24F4FDD1C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F4FDB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementsCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F4FDC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementsCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_24F4FDD1C(uint64_t a1)
{
  if (!qword_27F23EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214D88, &qword_24F9EC890);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23EA20);
    }
  }
}

uint64_t sub_24F4FDDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_24F924848();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
  v8 = *(a1 + 16);
  v55 = *(a1 + 24);
  type metadata accessor for AchievementsCardFanView(255, v8, v55, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF678];
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF690];
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  v45 = sub_24F923B88();
  v10 = sub_24F924038();
  sub_24F924E78();
  v44 = v10;
  v11 = sub_24F924038();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246B08, &qword_24FA04648);
  v48 = v11;
  v49 = sub_24F924038();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v50 = &v40 - v16;
  v17 = v43;
  (*(v5 + 16))(&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v43, a1, v15);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v53 = v8;
  v20 = v55;
  *(v19 + 16) = v8;
  *(v19 + 24) = v20;
  (*(v5 + 32))(v19 + v18, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v68 = sub_24F923B78();
  v69 = v21;
  v22 = &v17[*(a1 + 56)];
  v23 = *v22;
  if (v22[8] == 1)
  {
    v67 = *v22;
  }

  else
  {

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    v25 = v40;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v41 + 8))(v25, v42);
    v23 = v67;
  }

  swift_getKeyPath();
  *&v70 = v23;
  sub_24F501898(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v26 = swift_getWitnessTable();
  sub_24F926A38();

  v65[0] = v70;
  v65[1] = v71;
  v66[0] = v72[0];
  *(v66 + 9) = *(v72 + 9);
  v62 = v70;
  v63 = v71;
  v64[0] = v72[0];
  *(v64 + 9) = *(v72 + 9);
  v60 = v26;
  v61 = MEMORY[0x277CDF918];
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_24F2DAA5C(1, v27, v28);
  v30 = (*(*(v27 - 8) + 8))(v65, v27);
  v45 = &v40;
  MEMORY[0x28223BE20](v30);
  v31 = v55;
  *(&v40 - 4) = v53;
  *(&v40 - 3) = v31;
  *(&v40 - 2) = v17;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40, &unk_24F97CCC0);
  v58 = v28;
  v59 = MEMORY[0x277CE0350];
  v32 = v48;
  v33 = swift_getWitnessTable();
  sub_24EAACEBC();
  v34 = v47;
  sub_24F9268D8();
  (*(v51 + 8))(v29, v32);
  v35 = sub_24E602068(&qword_27F246B10, &qword_27F246B08, &qword_24FA04648, MEMORY[0x277CE03E8]);
  v56 = v33;
  v57 = v35;
  v36 = v49;
  swift_getWitnessTable();
  v37 = v50;
  sub_24E7896B8();
  v38 = *(v52 + 8);
  v38(v34, v36);
  sub_24E7896B8();
  return (v38)(v37, v36);
}

uint64_t sub_24F4FE670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
  type metadata accessor for AchievementsCardFanView(255, a3, a4, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  v39 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24F927108();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v42 = sub_24F924038();
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v34 - v13;
  v43 = sub_24F924038();
  v47 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v34 - v14;
  v15 = sub_24F924038();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = &v34 - v18;
  v35 = a1;
  sub_24F923998();
  v20 = type metadata accessor for AchievementCardsVisualView(0, a3, a4, v19);
  v36 = a2;
  sub_24F4FECD8(v20);
  sub_24F4FEFF8(v20, v60, v21);
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = v60;
  sub_24F924C88();
  v22 = v12;
  sub_24F9270F8();
  sub_24F500F18(v60);
  sub_24F923998();
  sub_24F923998();
  sub_24F9275F8();
  v23 = swift_getWitnessTable();
  v24 = v37;
  sub_24F926938();
  (*(v44 + 8))(v22, v10);
  sub_24F9278A8();
  v58 = v23;
  v59 = MEMORY[0x277CDF678];
  v25 = v42;
  v26 = swift_getWitnessTable();
  v27 = v40;
  sub_24F926228();
  (*(v46 + 8))(v24, v25);
  sub_24F50088C(v35, v20);
  v56 = v26;
  v57 = MEMORY[0x277CDF690];
  v28 = v43;
  v29 = swift_getWitnessTable();
  v30 = v41;
  sub_24F926978();
  (*(v47 + 8))(v27, v28);
  v54 = v29;
  v55 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  v31 = v45;
  sub_24E7896B8();
  v32 = *(v48 + 8);
  v32(v30, v15);
  sub_24E7896B8();
  return (v32)(v31, v15);
}

void *sub_24F4FECD8(int *a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v5) = *(v1 + a1[9]);
  if (v5 > 4)
  {
  }

  else
  {
    v7 = sub_24F92CE08();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v9 = (v1 + a1[15]);
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v17 = *v9;
  v18 = v10;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
  result = sub_24F926F38();
  if ((v16[24] & 1) == 0)
  {
    v12 = *(v1 + a1[11]);
    if (v12 != 4)
    {
      v13 = v1 + a1[13];
      v14 = *v13;
      if (*(v13 + 8) != 1)
      {

        sub_24F92BDC8();
        v15 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v14, 0);
        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

uint64_t sub_24F4FEFF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = *(v3 + a1[11]);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v24 = *(v3 + *(type metadata accessor for AchievementsCard(0) + 36));
      v76 = *(v3 + a1[9]);
      v80 = *(v3 + a1[10]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20, &qword_24FA04688);
      v25 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card(0);
      v26 = *(*(v25 - 1) + 72);
      v27 = (*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80);
      result = swift_allocObject();
      *(result + 16) = xmmword_24F9479A0;
      if (*(v24 + 16) >= 3uLL)
      {
        v78 = result;
        v28 = result + v27;
        v29 = *(type metadata accessor for Achievement(0) - 8);
        v30 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v31 = *(v29 + 72);
        sub_24F5018E0(v30 + 2 * v31, v28, type metadata accessor for Achievement);
        *(v28 + v25[5]) = 0xC01C000000000000;
        *(v28 + v25[6]) = 0x3FED99999999999ALL;
        *(v28 + v25[7]) = 0xBFF0000000000000;
        *(v28 + v25[8]) = 0x4000000000000000;
        *(v28 + v25[9]) = 0x3FE999999999999ALL;
        v32 = v28 + v26;
        sub_24F5018E0(v30 + v31, v28 + v26, type metadata accessor for Achievement);
        *(v32 + v25[5]) = 0x401C000000000000;
        *(v32 + v25[6]) = 0x3FED99999999999ALL;
        *(v32 + v25[7]) = 0x3FF0000000000000;
        *(v32 + v25[8]) = 0x4000000000000000;
        *(v32 + v25[9]) = 0x3FE999999999999ALL;
        v33 = v28 + 2 * v26;
        sub_24F5018E0(v30, v33, type metadata accessor for Achievement);
        *(v33 + v25[5]) = 0;
        *(v33 + v25[6]) = 0x3FF0000000000000;
        *(v33 + v25[7]) = 0;
        *(v33 + v25[8]) = 0;
        *(v33 + v25[9]) = 0x3FF0000000000000;
        if ((v76 & 0xFFFFFFFE) == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_24F93FC20;
          sub_24F926C98();
          *(v34 + 32) = sub_24F9273C8();
          *(v34 + 40) = v35;
          sub_24F926C98();
          *(v34 + 48) = sub_24F9273C8();
          *(v34 + 56) = v36;
          sub_24F926C88();
          *(v34 + 64) = sub_24F9273C8();
          *(v34 + 72) = v37;
          sub_24F926C88();
          v38 = sub_24F9273C8();
          result = v34;
          *(v34 + 80) = v38;
          *(v34 + 88) = v39;
        }

        else
        {
          result = MEMORY[0x277D84F90];
        }

        v21 = qword_24FA04690[v76];
        v22 = xmmword_24FA045B0;
        v23 = 0x4000000000000000;
        v14 = v80;
        v18 = v78;
        goto LABEL_31;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 != 3)
    {
      v18 = 0;
      result = 0;
      v21 = 0;
      v23 = 0;
      v14 = 0;
      v22 = 0uLL;
      a3 = 0.0;
LABEL_31:
      *a2 = v18;
      *(a2 + 8) = result;
      *(a2 + 16) = v21;
      *(a2 + 24) = v23;
      *(a2 + 32) = a3;
      *(a2 + 40) = v14;
      *(a2 + 48) = v22;
      return result;
    }

    v8 = *(v3 + *(type metadata accessor for AchievementsCard(0) + 36));
    v9 = *(v3 + a1[9]);
    v10 = *(v3 + a1[10]);
    if (v9 == 2)
    {
    }

    else
    {
      v55 = sub_24F92CE08();

      if ((v55 & 1) == 0)
      {
        v77 = 0x4000000000000000;
        v57 = 1.7;
        v56 = 0.9;
LABEL_26:
        v81 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20, &qword_24FA04688);
        v58 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card(0);
        v59 = *(*(v58 - 1) + 72);
        v60 = (*(*(v58 - 1) + 80) + 32) & ~*(*(v58 - 1) + 80);
        result = swift_allocObject();
        *(result + 16) = xmmword_24F942000;
        if (*(v8 + 16) >= 5uLL)
        {
          v75 = v9;
          v79 = result;
          v61 = result + v60;
          v62 = *(type metadata accessor for Achievement(0) - 8);
          v63 = v8 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          v64 = *(v62 + 72);
          sub_24F5018E0(v63 + 4 * v64, v61, type metadata accessor for Achievement);
          *(v61 + v58[5]) = 0xC02C000000000000;
          *(v61 + v58[6]) = 0x3FEA666666666666;
          *(v61 + v58[7]) = -v57;
          *(v61 + v58[8]) = 0x4018000000000000;
          *(v61 + v58[9]) = 0x3FE3333333333333;
          v65 = v61 + v59;
          sub_24F5018E0(v63 + 3 * v64, v61 + v59, type metadata accessor for Achievement);
          *(v65 + v58[5]) = 0x402C000000000000;
          *(v65 + v58[6]) = 0x3FEA666666666666;
          *(v65 + v58[7]) = v57;
          *(v65 + v58[8]) = 0x4018000000000000;
          *(v65 + v58[9]) = 0x3FE3333333333333;
          v66 = v61 + 2 * v59;
          sub_24F5018E0(v63 + 2 * v64, v66, type metadata accessor for Achievement);
          *(v66 + v58[5]) = 0xC01C000000000000;
          *(v66 + v58[6]) = 0x3FED99999999999ALL;
          *(v66 + v58[7]) = -v56;
          *(v66 + v58[8]) = 0x4000000000000000;
          *(v66 + v58[9]) = 0x3FE999999999999ALL;
          v67 = v61 + 3 * v59;
          sub_24F5018E0(v63 + v64, v67, type metadata accessor for Achievement);
          *(v67 + v58[5]) = 0x401C000000000000;
          *(v67 + v58[6]) = 0x3FED99999999999ALL;
          *(v67 + v58[7]) = v56;
          *(v67 + v58[8]) = 0x4000000000000000;
          *(v67 + v58[9]) = 0x3FE999999999999ALL;
          v68 = v61 + 4 * v59;
          sub_24F5018E0(v63, v68, type metadata accessor for Achievement);
          *(v68 + v58[5]) = 0;
          *(v68 + v58[6]) = 0x3FF0000000000000;
          *(v68 + v58[7]) = 0;
          *(v68 + v58[8]) = 0;
          *(v68 + v58[9]) = 0x3FF0000000000000;
          if ((v75 & 0xFFFFFFFE) == 2)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_24F93FC20;
            sub_24F926C98();
            *(v69 + 32) = sub_24F9273C8();
            *(v69 + 40) = v70;
            sub_24F926C98();
            *(v69 + 48) = sub_24F9273C8();
            *(v69 + 56) = v71;
            sub_24F926C88();
            *(v69 + 64) = sub_24F9273C8();
            *(v69 + 72) = v72;
            sub_24F926C88();
            v73 = sub_24F9273C8();
            result = v69;
            *(v69 + 80) = v73;
            *(v69 + 88) = v74;
          }

          else
          {
            result = MEMORY[0x277D84F90];
          }

          v14 = v81;
          v21 = qword_24FA046C0[v75];
          v22 = xmmword_24FA045A0;
          v23 = v77;
          v18 = v79;
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    v77 = 0x3FF4000000000000;
    v56 = 0.5;
    v57 = 0.95;
    goto LABEL_26;
  }

  if (!*(v3 + a1[11]))
  {
    v11 = *(v3 + *(type metadata accessor for AchievementsCard(0) + 36));
    v12 = a1[10];
    v13 = *(v3 + a1[9]);
    v14 = *(v3 + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20, &qword_24FA04688);
    v15 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card(0);
    v16 = (*(*(v15 - 1) + 80) + 32) & ~*(*(v15 - 1) + 80);
    result = swift_allocObject();
    *(result + 16) = xmmword_24F93DE60;
    if (*(v11 + 16))
    {
      v18 = result;
      v19 = result + v16;
      v20 = *(type metadata accessor for Achievement(0) - 8);
      sub_24F5018E0(v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, type metadata accessor for Achievement);
      *(v19 + v15[5]) = 0xC018000000000000;
      *(v19 + v15[6]) = 0x3FF0000000000000;
      *(v19 + v15[7]) = 0;
      *(v19 + v15[8]) = 0;
      *(v19 + v15[9]) = 0x3FF0000000000000;
      result = sub_24ECF9254(0, v13);
      v21 = 0x3FC999999999999ALL;
      if ((v13 & 0xFE) != 4)
      {
        v21 = 0;
      }

      v22 = xmmword_24F969540;
      v23 = 0x3FF3333333333333;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v40 = *(v3 + *(type metadata accessor for AchievementsCard(0) + 36));
  v41 = *(v3 + a1[9]);
  v14 = *(v3 + a1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F246B20, &qword_24FA04688);
  v42 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card(0);
  v43 = *(*(v42 - 1) + 72);
  v44 = (*(*(v42 - 1) + 80) + 32) & ~*(*(v42 - 1) + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F93A400;
  if (*(v40 + 16) >= 2uLL)
  {
    v18 = result;
    v45 = result + v44;
    v46 = *(type metadata accessor for Achievement(0) - 8);
    v47 = v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    sub_24F5018E0(v47 + *(v46 + 72), v45, type metadata accessor for Achievement);
    *(v45 + v42[5]) = 0x401C000000000000;
    *(v45 + v42[6]) = 0x3FED99999999999ALL;
    *(v45 + v42[7]) = 0x3FDCCCCCCCCCCCCDLL;
    *(v45 + v42[8]) = 0x3FF0000000000000;
    *(v45 + v42[9]) = 0x3FF0000000000000;
    v48 = v45 + v43;
    sub_24F5018E0(v47, v48, type metadata accessor for Achievement);
    *(v48 + v42[5]) = 0xC028000000000000;
    *(v48 + v42[6]) = 0x3FF0000000000000;
    *(v48 + v42[7]) = 0xBFDCCCCCCCCCCCCDLL;
    *(v48 + v42[8]) = 0;
    *(v48 + v42[9]) = 0x3FF0000000000000;
    if ((v41 & 0xFFFFFFFE) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_24F93FC20;
      sub_24F926C98();
      *(v49 + 32) = sub_24F9273C8();
      *(v49 + 40) = v50;
      sub_24F926C98();
      *(v49 + 48) = sub_24F9273C8();
      *(v49 + 56) = v51;
      sub_24F926C88();
      *(v49 + 64) = sub_24F9273C8();
      *(v49 + 72) = v52;
      sub_24F926C88();
      v53 = sub_24F9273C8();
      result = v49;
      *(v49 + 80) = v53;
      *(v49 + 88) = v54;
    }

    else
    {
      result = MEMORY[0x277D84F90];
    }

    v21 = qword_24FA04690[v41];
    v22 = xmmword_24FA045B0;
    v23 = 0x3FF6666666666666;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24F4FFC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a5;
  v8 = *a2;
  v9 = a2 + 1;
  v69 = a2[1];
  v10 = type metadata accessor for AchievementCardsVisualView(0, a3, a4, a4);
  v72 = *(v10 - 8);
  v84 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v63 - v13;
  v66 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v66);
  v82 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a3;
  v74 = a4;
  v16 = type metadata accessor for AchievementsCardFanView(0, a3, a4, v15);
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v83 = (&v63 - v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  v85 = v16;
  v18 = sub_24F924038();
  v78 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v75 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v63 - v21;
  v22 = sub_24F92C4A8();
  v80 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = &v63 - v26;
  v73 = v10;
  v27 = *(a1 + *(v10 + 36));
  if (v27 > 4)
  {

    v77 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v78 + 56))(v24, 1, 1, v18);
    WitnessTable = swift_getWitnessTable();
    v56 = sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
    v100[3] = WitnessTable;
    v100[4] = v56;
    swift_getWitnessTable();
    goto LABEL_6;
  }

  v28 = sub_24F92CE08();

  v77 = v28 ^ 1;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v29 = *(v9 + 1);
  v102 = *v9;
  v103 = v29;
  v104 = *(v9 + 2);
  v30 = v9[6];
  v101 = v8;
  v105 = v30;
  v31 = *(type metadata accessor for AchievementsCard(0) + 44);
  v32 = type metadata accessor for PlayerAvatar.Overlay(0);
  v33 = v67;
  (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
  v65 = a1;
  v34 = v82;
  sub_24F5018E0(a1 + v31, v82, type metadata accessor for PlayerAvatar);
  v35 = *(v66 + 20);

  sub_24E717FD0(v33, v34 + v35);
  v36 = v72;
  v64 = *(v72 + 16);
  v37 = v68;
  v38 = v73;
  v64(v68, a1, v73);
  v67 = v18;
  v39 = v74;
  v66 = v22;
  v40 = *(v36 + 80);
  v69 = v24;
  v41 = (v40 + 32) & ~v40;
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = v76;
  *(v42 + 24) = v39;
  v72 = *(v36 + 32);
  (v72)(v42 + v41, v37, v38);
  sub_24F02E404(&v101, v82, sub_24F500F80, v42, v43, v39, v83);
  v64(v37, v65, v38);
  v22 = v66;
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v39;
  v45 = v67;
  v46 = v44 + v41;
  v47 = v85;
  v24 = v69;
  (v72)(v46, v37, v38);
  type metadata accessor for CGSize(0);
  v48 = swift_getWitnessTable();
  sub_24F501898(&qword_27F224B90, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  v49 = v75;
  v50 = v83;
  sub_24F9264C8();

  (*(v70 + 8))(v50, v47);
  v51 = sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
  v86 = v48;
  v87 = v51;
  swift_getWitnessTable();
  v52 = v71;
  sub_24E7896B8();
  v53 = v78;
  v54 = *(v78 + 8);
  v54(v49, v45);
  sub_24E7896B8();
  v54(v52, v45);
  (*(v53 + 32))(v24, v49, v45);
  (*(v53 + 56))(v24, 0, 1, v45);
LABEL_6:
  v57 = v79;
  sub_24E8D5004(v24, v79);
  v58 = v80;
  v59 = *(v80 + 8);
  v59(v24, v22);
  v97 = 0;
  v98 = 0;
  v99 = v77 & 1;
  v100[0] = &v97;
  (*(v58 + 16))(v24, v57, v22);
  v95 = 0;
  v96 = 0;
  v100[1] = v24;
  v100[2] = &v95;
  v94[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA38, &qword_24F9E2868);
  v94[1] = v22;
  v94[2] = MEMORY[0x277CE1180];
  v91 = sub_24F314B24();
  v60 = swift_getWitnessTable();
  v61 = sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
  v89 = v60;
  v90 = v61;
  v88 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x277CE1170];
  sub_24F57BA64(v100, 3uLL, v94);
  v59(v57, v22);
  return (v59)(v24, v22);
}

void *sub_24F5007B8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for AchievementCardsVisualView(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
  result = sub_24F926F38();
  if (v10)
  {
    return sub_24F926F48();
  }

  if (v8 != v4 || v9 != v5)
  {
    return sub_24F926F48();
  }

  return result;
}

void sub_24F50088C(uint64_t a1, int *a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v6) = *(v2 + a2[9]);
  if (v6 > 4)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  v9 = v2 + a2[13];
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = *v9;
  }

  else
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v10, 0);
    (*(v5 + 8))(v7, v4);
    v11 = v17;
  }

  if (v11 == 1)
  {
    v13 = (v2 + a2[15]);
    v14 = *(v13 + 16);
    v15 = *(v13 + 3);
    v17 = *v13;
    v18 = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
    sub_24F926F38();
    if ((v16[24] & 1) == 0)
    {
      sub_24F923998();
    }
  }
}

void sub_24F500B64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F925828();
  v14 = type metadata accessor for AchievementCardsVisualView(0, a2, a3, v13);
  v15 = *(a1 + *(v14 + 36));
  if (v15 > 4)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      v17 = (a1 + *(v14 + 56));
      v18 = *v17;
      v19 = *(v17 + 8);

      if ((v19 & 1) == 0)
      {
        sub_24F92BDC8();
        v20 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v9 + 8))(v11, v8);
        v18 = v26;
      }

      swift_getKeyPath();
      v26 = v18;
      sub_24F501898(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD88();
    }
  }

  sub_24F923318();
  *a4 = v12;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = 0;
}

uint64_t sub_24F500E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for AchievementCardsVisualView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24F4FE670(a1, v9, v6, v7, a3);
}

uint64_t sub_24F500F18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246B18, &qword_24FA04680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = type metadata accessor for AchievementCardsVisualView(0, *(v4 + 16), *(v4 + 24), a4);
  v53 = *(*(v52 - 8) + 80);
  v5 = (v4 + ((v53 + 32) & ~v53));
  __swift_destroy_boxed_opaque_existential_1(v5);
  if (*(v5 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 5);
  }

  v6 = type metadata accessor for AchievementsCard(0);
  v7 = v6[6];
  v8 = sub_24F92A6D8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v5[v7], 1, v8))
  {
    (*(v9 + 8))(&v5[v7], v8);
  }

  v10 = v6[7];
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v5[v10], 1, v11))
  {
    (*(v12 + 8))(&v5[v10], v11);
  }

  v13 = &v5[v6[8]];

  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = v14[6];
  v16 = sub_24F9289E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(&v13[v15], 1, v16))
  {
    (*(v17 + 8))(&v13[v15], v16);
  }

  v19 = v14[7];
  v51 = v18;
  if (!v18(&v13[v19], 1, v16))
  {
    (*(v17 + 8))(&v13[v19], v16);
  }

  v54 = v17;
  v20 = &v13[v14[8]];
  v21 = type metadata accessor for GSKVideo(0);
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v48 = v5;
    v50 = v6;
    v22 = sub_24F91F4A8();
    (*(*(v22 - 8) + 8))(v20, v22);
    v49 = v16;
    (*(v54 + 8))(&v20[v21[5]], v16);
    v23 = v21[9];
    v24 = sub_24F928698();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (!v26(&v20[v23], 1, v24))
    {
      (*(v25 + 8))(&v20[v23], v24);
    }

    v47 = v25;
    v27 = v21[10];
    if (!v26(&v20[v27], 1, v24))
    {
      (*(v47 + 8))(&v20[v27], v24);
    }

    v6 = v50;
    v5 = v48;
    v16 = v49;
  }

  if (*&v13[v14[9]])
  {
  }

  v28 = v14[10];
  v29 = v54;
  if (!v51(&v13[v28], 1, v16))
  {
    (*(v54 + 8))(&v13[v28], v16);
  }

  v30 = &v13[v14[17]];
  v31 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = sub_24F928388();
    (*(*(v32 - 8) + 8))(v30, v32);

    v29 = v54;
  }

  v33 = &v13[v14[19]];
  if (*(v33 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v34 = &v13[v14[20]];
  v35 = type metadata accessor for CardPrimaryActionType(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v44 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v45 = sub_24F91F4A8();
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(&v34[v44], 1, v45))
        {
          (*(v46 + 8))(&v34[v44], v45);
        }

        break;
      case 1:

        break;
      case 0:

        break;
    }
  }

  v36 = *(v29 + 8);
  v36(&v5[v6[10]], v16);
  v37 = &v5[v6[11]];

  v38 = type metadata accessor for PlayerAvatar(0);
  v39 = *(v38 + 20);
  v40 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v40 - 8) + 48))(&v37[v39], 1, v40) && !swift_getEnumCaseMultiPayload())
  {
    v36(&v37[v39], v16);
  }

  v41 = &v37[*(v38 + 24)];
  if (*(v41 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  sub_24E62A5EC(*&v5[*(v52 + 52)], v5[*(v52 + 52) + 8]);

  return swift_deallocObject();
}

void *sub_24F50180C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AchievementCardsVisualView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24F5007B8(a1, v9, v6, v7);
}

uint64_t sub_24F501898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5018E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F501948(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
  type metadata accessor for AchievementsCardFanView(255, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F923B88();
  sub_24F924038();
  sub_24F924E78();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246B08, &qword_24FA04648);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F246B10, &qword_27F246B08, &qword_24FA04648, MEMORY[0x277CE03E8]);
  return swift_getWitnessTable();
}

uint64_t sub_24F501C24@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v466 = a5;
  v543 = a4;
  v541 = a3;
  v542 = a1;
  v545 = a8;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v470);
  v453 = (&v424 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v431 = (&v424 - v13);
  v426 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v426);
  v425 = &v424 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v428 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v424 = &v424 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v16 - 8);
  v430 = &v424 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v18 - 8);
  v432 = &v424 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v451 = &v424 - v21;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D80, &unk_24F968160);
  MEMORY[0x28223BE20](v468);
  v469 = &v424 - v22;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D88, &unk_24FA046F0);
  MEMORY[0x28223BE20](v435);
  v436 = (&v424 - v23);
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CA8, &qword_24F950010);
  MEMORY[0x28223BE20](v467);
  v437 = &v424 - v24;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C98, &unk_24F93E7B0);
  MEMORY[0x28223BE20](v498);
  v500 = &v424 - v25;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D90, &unk_24F968170);
  MEMORY[0x28223BE20](v495);
  v497 = &v424 - v26;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C88, &unk_24F950000);
  MEMORY[0x28223BE20](v520);
  v499 = &v424 - v27;
  v496 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v496);
  v464 = &v424 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v465 = &v424 - v30;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE0, &unk_24FA37430);
  MEMORY[0x28223BE20](v525);
  v527 = &v424 - v31;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BE8, &unk_24F967D10);
  MEMORY[0x28223BE20](v517);
  v519 = &v424 - v32;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BF0, &qword_24FA37440);
  MEMORY[0x28223BE20](v474);
  v493 = &v424 - v33;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C70, &unk_24F93E7A0);
  MEMORY[0x28223BE20](v518);
  v494 = &v424 - v34;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C60, &unk_24F94FFF0);
  MEMORY[0x28223BE20](v526);
  v521 = &v424 - v35;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  MEMORY[0x28223BE20](v539);
  v528 = &v424 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  MEMORY[0x28223BE20](v37 - 8);
  v460 = &v424 - v38;
  v491 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v491);
  v461 = &v424 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v492 = &v424 - v41;
  v450 = sub_24F924B38();
  v445 = *(v450 - 8);
  MEMORY[0x28223BE20](v450);
  v444 = &v424 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v448 = sub_24F921AF8();
  v447 = *(v448 - 8);
  MEMORY[0x28223BE20](v448);
  v446 = &v424 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  v462 = *(v463 - 8);
  MEMORY[0x28223BE20](v463);
  v449 = &v424 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v45 - 8);
  v452 = &v424 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v427 = &v424 - v48;
  MEMORY[0x28223BE20](v49);
  v458 = &v424 - v50;
  v471 = sub_24F9289E8();
  v472 = *(v471 - 8);
  MEMORY[0x28223BE20](v471);
  v443 = &v424 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v459 = &v424 - v53;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C00, &unk_24F93E770);
  MEMORY[0x28223BE20](v486);
  v490 = &v424 - v54;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB8, &qword_24F968198);
  MEMORY[0x28223BE20](v482);
  v484 = &v424 - v55;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BF0, &unk_24F94DAA0);
  MEMORY[0x28223BE20](v511);
  v488 = &v424 - v56;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC8, &qword_24F9681A0);
  MEMORY[0x28223BE20](v508);
  v510 = &v424 - v57;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DD0, &unk_24FA04700);
  MEMORY[0x28223BE20](v478);
  v479 = &v424 - v58;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BD8, &unk_24F93E760);
  MEMORY[0x28223BE20](v509);
  v483 = &v424 - v59;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
  MEMORY[0x28223BE20](v533);
  v512 = &v424 - v60;
  v477 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v477);
  v457 = &v424 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v480);
  v481 = &v424 - v62;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v516);
  v487 = &v424 - v63;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v507 = *(v523 - 8);
  MEMORY[0x28223BE20](v523);
  v473 = &v424 - v64;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v524);
  v504 = &v424 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v503 = &v424 - v67;
  MEMORY[0x28223BE20](v68);
  v502 = &v424 - v69;
  MEMORY[0x28223BE20](v70);
  v501 = &v424 - v71;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v536);
  v538 = &v424 - v72;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v530);
  v532 = &v424 - v73;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v522);
  v514 = &v424 - v74;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DB0, &qword_24F968190);
  MEMORY[0x28223BE20](v505);
  v485 = &v424 - v75;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
  MEMORY[0x28223BE20](v513);
  v489 = &v424 - v76;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v531);
  v515 = &v424 - v77;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v537);
  v534 = &v424 - v78;
  v442 = type metadata accessor for CardElementView.Category(0);
  MEMORY[0x28223BE20](v442);
  v433 = &v424 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA0, &unk_24F968180);
  MEMORY[0x28223BE20](v438);
  v441 = &v424 - v80;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B60, &unk_24F94FFB0);
  MEMORY[0x28223BE20](v440);
  v434 = &v424 - v81;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B50, &unk_24F93E720);
  v455 = *(v456 - 8);
  MEMORY[0x28223BE20](v456);
  v439 = &v424 - v82;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B40, &unk_24F94FFA0);
  MEMORY[0x28223BE20](v476);
  v475 = &v424 - v83;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  v546 = *(v544 - 8);
  MEMORY[0x28223BE20](v544);
  v535 = &v424 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v85 - 8);
  v540 = &v424 - v86;
  v506 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v506);
  v88 = (&v424 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v529 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v529);
  v90 = &v424 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v93 = &v424 - v92;
  MEMORY[0x28223BE20](v94);
  v96 = &v424 - v95;
  v98 = MEMORY[0x28223BE20](v97);
  v100 = &v424 - v99;
  v101 = a7;
  v102 = *(a7 + 24);
  v454 = a2;
  v103 = a6;
  v104 = a6;
  v105 = v101;
  v102(v104, v98);
  v106 = v541;
  v547 = v88;
  v107 = v88;
  v108 = v542;
  sub_24F506FA4(v541, v543, v107);
  if (sub_24F509134(v108, v106))
  {
    v543 = v100;
    switch(v108)
    {
      case 1u:
        LOBYTE(v551) = 0;
        goto LABEL_28;
      case 2u:
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);
        v189 = v494;
        sub_24F924E28();
        sub_24E60169C(v189, v519, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v190 = v521;
        sub_24F924E28();
        sub_24E601704(v189, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v190, v527, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v191 = v528;
        sub_24F924E28();
        sub_24E601704(v190, &qword_27F214C60, &unk_24F94FFF0);
        goto LABEL_30;
      case 3u:
        v192 = v458;
        sub_24E60169C(&v543[v529[10]], v458, &qword_27F213FB0, &qword_24F93E6B0);
        v193 = v472;
        v194 = v471;
        if ((*(v472 + 48))(v192, 1, v471) == 1)
        {
          sub_24E601704(v192, &qword_27F213FB0, &qword_24F93E6B0);
          v195 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v140 = v540;
          v196 = v490;
          v197 = v463;
        }

        else
        {
          (*(v193 + 32))();
          v329 = v443;
          sub_24F9289C8();
          v330 = *MEMORY[0x277CE0118];
          v331 = v445;
          v542 = *(v445 + 104);
          v332 = v444;
          v333 = v450;
          v542(v444, v330, v450);
          v334 = v446;
          sub_24F9219A8();
          (*(v331 + 8))(v332, v333);
          sub_24F509500(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
          sub_24F509500(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
          v335 = v449;
          v336 = v448;
          sub_24F925ED8();
          (*(v447 + 8))(v334, v336);
          v337 = *(v193 + 8);
          v337(v329, v194);
          v338 = sub_24F927618();
          v340 = v339;
          v341 = (v335 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
          v342 = sub_24F924258();
          v542(&v341[*(v342 + 20)], v330, v333);
          __asm { FMOV            V0.2D, #8.0 }

          *v341 = _Q0;
          v348 = v506;
          v349 = v547;
          v350 = v547 + v506[32];
          v351 = *v350;
          v352 = *(v350 + 1);
          v353 = *(v350 + 2);
          v354 = *(v350 + 3);
          v355 = &v341[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36)];
          *v355 = v354;
          *(v355 + 1) = v353;
          *(v355 + 2) = v351;
          *(v355 + 3) = v352;
          v356 = &v341[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36)];
          *v356 = v338;
          v356[1] = v340;
          v357 = *(v349 + v348[31]);

          sub_24F9278A8();
          v359 = v358;
          v361 = v360;
          v337(v459, v194);
          v197 = v463;
          v362 = (v335 + *(v463 + 36));
          *v362 = v357;
          v362[1] = v359;
          v362[2] = v361;
          v196 = v490;
          sub_24E6009C8(v335, v490, &qword_27F214C10, &unk_24F94FFD0);
          v195 = 0;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v140 = v540;
        }

        (*(v462 + 56))(v196, v195, 1, v197);
        sub_24E60169C(v196, v484, &qword_27F214C00, &unk_24F93E770);
        swift_storeEnumTagMultiPayload();
        sub_24E701AFC();
        v363 = v488;
        sub_24F924E28();
        sub_24E60169C(v363, v510, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v364 = v512;
        sub_24F924E28();
        sub_24E601704(v363, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v364, v532, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v365 = v534;
        sub_24F924E28();
        sub_24E601704(v364, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v365, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v365, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v490, &qword_27F214C00, &unk_24F93E770);
        goto LABEL_73;
      case 4u:
        v149 = &v543[v529[11]];
        v150 = *(v149 + 1);
        if (!v150)
        {
          goto LABEL_51;
        }

        v151 = *v149;
        v152 = HIBYTE(v150) & 0xF;
        if ((v150 & 0x2000000000000000) == 0)
        {
          v152 = v151 & 0xFFFFFFFFFFFFLL;
        }

        if (v152)
        {
          *&v548 = v151;
          *(&v548 + 1) = v150;
          sub_24E600AEC();

          v153 = sub_24F925E18();
          v155 = v154;
          v157 = v156;
          v158 = v506;
          v159 = v547;
          v160 = sub_24F925C98();
          v162 = v161;
          v164 = v163;
          sub_24E600B40(v153, v155, v157 & 1);

          LODWORD(v548) = sub_24F9251C8();
          v165 = sub_24F925C58();
          v167 = v166;
          v169 = v168;
          v171 = v170;
          sub_24E600B40(v160, v162, v164 & 1);

          v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v173 = *MEMORY[0x277CE13B8];
          v174 = sub_24F927748();
          v175 = v473;
          (*(*(v174 - 8) + 104))(&v473[v172], v173, v174);
          *v175 = v165;
          *(v175 + 8) = v167;
          *(v175 + 16) = v169 & 1;
          *(v175 + 24) = v171;
          v176 = *(v159 + v158[19]);
          KeyPath = swift_getKeyPath();
          v178 = v523;
          v179 = v175 + *(v523 + 36);
          *v179 = KeyPath;
          *(v179 + 8) = v176;
          *(v179 + 16) = 0;
          v180 = v501;
          sub_24E6009C8(v175, v501, &qword_27F214B98, &unk_24F93E740);
          v181 = 0;
          v137 = v545;
          v138 = v544;
          v139 = v546;
        }

        else
        {
LABEL_51:
          v181 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v178 = v523;
          v180 = v501;
        }

        (*(v507 + 56))(v180, v181, 1, v178);
        sub_24E60169C(v180, v485, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E7019F4();
        sub_24E701A78();
        v311 = v489;
        sub_24F924E28();
        sub_24E60169C(v311, v514, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v312 = v515;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v312, v532, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v313 = v534;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v313, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v313, &qword_27F214B10, &unk_24F93E700);
        v314 = &v533;
        goto LABEL_58;
      case 5u:
        v205 = &v543[v529[12]];
        v206 = *(v205 + 1);
        if (!v206)
        {
          goto LABEL_54;
        }

        v207 = *v205;
        v208 = HIBYTE(v206) & 0xF;
        if ((v206 & 0x2000000000000000) == 0)
        {
          v208 = v207 & 0xFFFFFFFFFFFFLL;
        }

        if (v208)
        {
          *&v548 = v207;
          *(&v548 + 1) = v206;
          sub_24E600AEC();

          v209 = sub_24F925E18();
          v211 = v210;
          v213 = v212;
          v214 = v506;
          v215 = v547;
          v216 = sub_24F925C98();
          v218 = v217;
          v220 = v219;
          sub_24E600B40(v209, v211, v213 & 1);

          LODWORD(v548) = sub_24F9251C8();
          v221 = sub_24F925C58();
          v223 = v222;
          v225 = v224;
          v227 = v226;
          sub_24E600B40(v216, v218, v220 & 1);

          v228 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v229 = *MEMORY[0x277CE13B8];
          v230 = sub_24F927748();
          v231 = v473;
          (*(*(v230 - 8) + 104))(&v473[v228], v229, v230);
          *v231 = v221;
          *(v231 + 8) = v223;
          *(v231 + 16) = v225 & 1;
          *(v231 + 24) = v227;
          v232 = *(v215 + v214[24]);
          v233 = swift_getKeyPath();
          v234 = v523;
          v235 = v231 + *(v523 + 36);
          *v235 = v233;
          *(v235 + 8) = v232;
          *(v235 + 16) = 0;
          v236 = v502;
          sub_24E6009C8(v231, v502, &qword_27F214B98, &unk_24F93E740);
          v237 = 0;
          v137 = v545;
          v138 = v544;
          v139 = v546;
        }

        else
        {
LABEL_54:
          v237 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v234 = v523;
          v236 = v502;
        }

        (*(v507 + 56))(v236, v237, 1, v234);
        sub_24E60169C(v236, v481, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E701A78();
        v317 = v487;
        sub_24F924E28();
        sub_24E60169C(v317, v514, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v318 = v515;
        sub_24F924E28();
        sub_24E601704(v317, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v318, v532, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v319 = v534;
        sub_24F924E28();
        sub_24E601704(v318, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v319, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v319, &qword_27F214B10, &unk_24F93E700);
        v314 = &v534;
        goto LABEL_58;
      case 6u:
        v242 = &v543[v529[13]];
        v243 = *(v242 + 1);
        if (!v243)
        {
          goto LABEL_56;
        }

        v244 = *v242;
        v245 = HIBYTE(v243) & 0xF;
        if ((v243 & 0x2000000000000000) == 0)
        {
          v245 = v244 & 0xFFFFFFFFFFFFLL;
        }

        if (v245)
        {
          *&v548 = v244;
          *(&v548 + 1) = v243;
          sub_24E600AEC();

          v246 = sub_24F925E18();
          v248 = v247;
          v250 = v249;
          v251 = v506;
          v252 = v547;
          v253 = sub_24F925C98();
          v255 = v254;
          v257 = v256;
          sub_24E600B40(v246, v248, v250 & 1);

          LODWORD(v548) = sub_24F9251C8();
          v258 = sub_24F925C58();
          v260 = v259;
          v262 = v261;
          v264 = v263;
          sub_24E600B40(v253, v255, v257 & 1);

          v265 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v266 = *MEMORY[0x277CE13B8];
          v267 = sub_24F927748();
          v268 = v473;
          (*(*(v267 - 8) + 104))(&v473[v265], v266, v267);
          *v268 = v258;
          *(v268 + 8) = v260;
          *(v268 + 16) = v262 & 1;
          *(v268 + 24) = v264;
          v269 = *(v252 + v251[26]);
          v270 = swift_getKeyPath();
          v271 = v523;
          v272 = v268 + *(v523 + 36);
          *v272 = v270;
          *(v272 + 8) = v269;
          *(v272 + 16) = 0;
          v273 = v503;
          sub_24E6009C8(v268, v503, &qword_27F214B98, &unk_24F93E740);
          v274 = 0;
          v137 = v545;
          v138 = v544;
          v139 = v546;
        }

        else
        {
LABEL_56:
          v274 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v271 = v523;
          v273 = v503;
        }

        (*(v507 + 56))(v273, v274, 1, v271);
        sub_24E60169C(v273, v481, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24E701A78();
        v320 = v487;
        sub_24F924E28();
        sub_24E60169C(v320, v514, &qword_27F214BB8, &unk_24F93E750);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v321 = v515;
        sub_24F924E28();
        sub_24E601704(v320, &qword_27F214BB8, &unk_24F93E750);
        sub_24E60169C(v321, v532, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v322 = v534;
        sub_24F924E28();
        sub_24E601704(v321, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v322, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v322, &qword_27F214B10, &unk_24F93E700);
        v314 = &v535;
LABEL_58:
        v323 = *(v314 - 32);
        v324 = &qword_27F214B88;
        v325 = &unk_24F94FFC0;
        goto LABEL_71;
      case 7u:
        v198 = v457;
        sub_24F5095B0(v543, v457, type metadata accessor for CommonCardAttributes);
        v199 = v477;
        sub_24F5095B0(v547, v198 + *(v477 + 20), type metadata accessor for CardLayoutMetrics);
        *(v198 + *(v199 + 24)) = v106;
        sub_24F5095B0(v198, v479, type metadata accessor for DefaultCardTitleView);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E701A78();
        v200 = v483;
        sub_24F924E28();
        sub_24E60169C(v200, v510, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v201 = v512;
        sub_24F924E28();
        sub_24E601704(v200, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v201, v532, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v202 = v534;
        sub_24F924E28();
        sub_24E601704(v201, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v202, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v202, &qword_27F214B10, &unk_24F93E700);
        sub_24F5094A0(v198, type metadata accessor for DefaultCardTitleView);
        goto LABEL_31;
      case 8u:
        v278 = &v543[v529[15]];
        v279 = *(v278 + 1);
        if (!v279)
        {
          goto LABEL_59;
        }

        v280 = *v278;
        v281 = HIBYTE(v279) & 0xF;
        if ((v279 & 0x2000000000000000) == 0)
        {
          v281 = v280 & 0xFFFFFFFFFFFFLL;
        }

        if (v281)
        {
          *&v548 = v280;
          *(&v548 + 1) = v279;
          sub_24E600AEC();

          v282 = sub_24F925E18();
          v284 = v283;
          v286 = v285;
          v287 = v506;
          v288 = v547;
          v289 = sub_24F925C98();
          v291 = v290;
          v293 = v292;
          sub_24E600B40(v282, v284, v286 & 1);

          LODWORD(v548) = sub_24F9251C8();
          v294 = sub_24F925C58();
          v296 = v295;
          v298 = v297;
          v300 = v299;
          sub_24E600B40(v289, v291, v293 & 1);

          v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v302 = *MEMORY[0x277CE13B8];
          v303 = sub_24F927748();
          v304 = v473;
          (*(*(v303 - 8) + 104))(&v473[v301], v302, v303);
          *v304 = v294;
          *(v304 + 8) = v296;
          *(v304 + 16) = v298 & 1;
          *(v304 + 24) = v300;
          v305 = *(v288 + v287[28]);
          v306 = swift_getKeyPath();
          v307 = v523;
          v308 = v304 + *(v523 + 36);
          *v308 = v306;
          *(v308 + 8) = v305;
          *(v308 + 16) = 0;
          v309 = v504;
          sub_24E6009C8(v304, v504, &qword_27F214B98, &unk_24F93E740);
          v310 = 0;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v140 = v540;
        }

        else
        {
LABEL_59:
          v310 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v140 = v540;
          v307 = v523;
          v309 = v504;
        }

        (*(v507 + 56))(v309, v310, 1, v307);
        sub_24E60169C(v309, v479, &qword_27F214B88, &unk_24F94FFC0);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
        sub_24E701A78();
        v326 = v483;
        sub_24F924E28();
        sub_24E60169C(v326, v510, &qword_27F214BD8, &unk_24F93E760);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v327 = v512;
        sub_24F924E28();
        sub_24E601704(v326, &qword_27F214BD8, &unk_24F93E760);
        sub_24E60169C(v327, v532, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v328 = v534;
        sub_24F924E28();
        sub_24E601704(v327, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v328, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v328, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v504, &qword_27F214B88, &unk_24F94FFC0);
        goto LABEL_73;
      case 9u:
        v551 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
        goto LABEL_29;
      case 0xAu:
        swift_storeEnumTagMultiPayload();
        sub_24E701AFC();
        v275 = v488;
        sub_24F924E28();
        sub_24E60169C(v275, v510, &qword_27F214BF0, &unk_24F94DAA0);
        swift_storeEnumTagMultiPayload();
        sub_24E63C9EC();
        sub_24E63CAD4();
        v276 = v512;
        sub_24F924E28();
        sub_24E601704(v275, &qword_27F214BF0, &unk_24F94DAA0);
        sub_24E60169C(v276, v532, &qword_27F214BC8, &unk_24F94DA90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v277 = v534;
        sub_24F924E28();
        sub_24E601704(v276, &qword_27F214BC8, &unk_24F94DA90);
        sub_24E60169C(v277, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v277, &qword_27F214B10, &unk_24F93E700);
        goto LABEL_31;
      case 0xBu:
        if (v106 == 1)
        {
          v141 = 2;
        }

        else
        {
          v141 = 1;
        }

        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v143 = v464;
        (*(*(v142 - 8) + 56))(v464, v141, 5, v142);
        v144 = v465;
        sub_24F509548(v143, v465, type metadata accessor for CardContentBackgroundStyle);
        sub_24F5095B0(v144, v497, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v145 = v499;
        sub_24F924E28();
        sub_24E60169C(v145, v519, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v146 = v521;
        sub_24F924E28();
        sub_24E601704(v145, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v146, v527, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v147 = v528;
        sub_24F924E28();
        sub_24E601704(v146, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v147, v538, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v147, &qword_27F214C50, &unk_24F93E790);
        sub_24F5094A0(v144, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_31;
      case 0xCu:
        if (v106 - 2 < 4)
        {
          v182 = sub_24F926C98();
          (v102)(v103, v105);
          v183 = v452;
          sub_24E60169C(&v90[v529[10]], v452, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24F5094A0(v90, type metadata accessor for CommonCardAttributes);
          v184 = v453;
          sub_24F6C4E24(v183, v106 != 5, v182, v453);

          sub_24E601704(v183, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24E60169C(v184, v469, &qword_27F214A10, &unk_24F94BD90);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          sub_24E63D150();
          v185 = v500;
          sub_24F924E28();
          v186 = v184;
          v187 = &qword_27F214A10;
          v188 = &unk_24F94BD90;
LABEL_69:
          sub_24E601704(v186, v187, v188);
          v137 = v545;
          v138 = v544;
          v139 = v546;
          goto LABEL_70;
        }

        if (!v106)
        {
          v366 = sub_24F926C98();
          v367 = sub_24F925808();
          v368 = v436;
          *v436 = v366;
          *(v368 + 8) = v367;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
          sub_24E63D098();
          sub_24E63D150();
          v369 = v437;
          sub_24F924E28();
          sub_24E60169C(v369, v469, &qword_27F214CA8, &qword_24F950010);
          swift_storeEnumTagMultiPayload();
          sub_24E63D00C();
          v185 = v500;
          sub_24F924E28();

          v186 = v369;
          v187 = &qword_27F214CA8;
          v188 = &qword_24F950010;
          goto LABEL_69;
        }

        v383 = v103;
        v384 = v103;
        v385 = v105;
        (v102)(v384, v105);
        v386 = v430;
        sub_24E60169C(&v96[v529[17]], v430, &qword_27F21F550, &unk_24F9EC960);
        sub_24F5094A0(v96, type metadata accessor for CommonCardAttributes);
        if ((*(v428 + 48))(v386, 1, v429) == 1)
        {
          sub_24E601704(v386, &qword_27F21F550, &unk_24F9EC960);
          v387 = type metadata accessor for ColorGroup(0);
          v388 = v432;
          (*(*(v387 - 8) + 56))(v432, 1, 1, v387);
          v389 = v472;
        }

        else
        {
          v400 = v424;
          sub_24F5095B0(v386, v424, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v401 = v400;
          v402 = v425;
          sub_24F509548(v401, v425, type metadata accessor for JSColor);
          v388 = v432;
          v389 = v472;
          if (qword_27F20FEE0 != -1)
          {
            swift_once();
          }

          ColorGrouping.colorGroup(for:)(*(v402 + *(v426 + 24)));
          sub_24F5094A0(v402, type metadata accessor for JSColor);
          sub_24F5094A0(v386, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
          v403 = type metadata accessor for ColorGroup(0);
          v404 = *(v403 - 8);
          if ((*(v404 + 48))(v388, 1, v403) != 1)
          {
            v412 = v451;
            sub_24F509548(v388, v451, type metadata accessor for ColorGroup);
            (*(v404 + 56))(v412, 0, 1, v403);
            v137 = v545;
            v138 = v544;
            v139 = v546;
            goto LABEL_98;
          }
        }

        (v102)(v383, v385);
        v405 = v427;
        sub_24E60169C(&v93[v529[10]], v427, &qword_27F213FB0, &qword_24F93E6B0);
        sub_24F5094A0(v93, type metadata accessor for CommonCardAttributes);
        if ((*(v389 + 48))(v405, 1, v471) == 1)
        {
          sub_24E601704(v405, &qword_27F213FB0, &qword_24F93E6B0);
          v406 = type metadata accessor for ColorGroup(0);
          (*(*(v406 - 8) + 56))(v451, 1, 1, v406);
          v137 = v545;
          v138 = v544;
          v139 = v546;
        }

        else
        {
          v407 = sub_24F9289A8();
          if (v407)
          {
            v408 = qword_27F20FEE0;
            v409 = v407;
            v137 = v545;
            v138 = v544;
            v139 = v546;
            if (v408 != -1)
            {
              v423 = v409;
              swift_once();
              v409 = v423;
            }

            v410 = v409;
            v411 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v411);
          }

          else
          {
            v413 = type metadata accessor for ColorGroup(0);
            (*(*(v413 - 8) + 56))(v451, 1, 1, v413);
            v137 = v545;
            v138 = v544;
            v139 = v546;
          }

          (*(v472 + 8))(v405, v471);
        }

        v414 = type metadata accessor for ColorGroup(0);
        if ((*(*(v414 - 8) + 48))(v388, 1, v414) != 1)
        {
          sub_24E601704(v388, &qword_27F2190D8, &unk_24F94BD70);
        }

LABEL_98:
        v415 = sub_24F926C98();
        v416 = sub_24F927618();
        v418 = v417;
        v419 = v431;
        v420 = v431 + *(v470 + 36);
        sub_24F594764(v451, 1, v420);
        v421 = (v420 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36));
        *v421 = v416;
        v421[1] = v418;
        *v419 = v415;
        sub_24E60169C(v419, v436, &qword_27F214A10, &unk_24F94BD90);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
        sub_24E63D098();
        sub_24E63D150();
        v422 = v437;
        sub_24F924E28();
        sub_24E60169C(v422, v469, &qword_27F214CA8, &qword_24F950010);
        swift_storeEnumTagMultiPayload();
        sub_24E63D00C();
        v185 = v500;
        sub_24F924E28();
        sub_24E601704(v422, &qword_27F214CA8, &qword_24F950010);
        sub_24E601704(v419, &qword_27F214A10, &unk_24F94BD90);
        sub_24E601704(v451, &qword_27F2190D8, &unk_24F94BD70);
LABEL_70:
        sub_24E60169C(v185, v497, &qword_27F214C98, &unk_24F93E7B0);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63CF80();
        v370 = v499;
        sub_24F924E28();
        sub_24E60169C(v370, v519, &qword_27F214C88, &unk_24F950000);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v371 = v521;
        sub_24F924E28();
        sub_24E601704(v370, &qword_27F214C88, &unk_24F950000);
        sub_24E60169C(v371, v527, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v372 = v528;
        sub_24F924E28();
        sub_24E601704(v371, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v372, v538, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v372, &qword_27F214C50, &unk_24F93E790);
        v323 = v500;
        v324 = &qword_27F214C98;
        v325 = &unk_24F93E7B0;
LABEL_71:
        sub_24E601704(v323, v324, v325);
LABEL_72:
        v140 = v540;
        goto LABEL_73;
      case 0xDu:
        v238 = v529;
        v239 = v543;
        v240 = v460;
        sub_24E60169C(&v543[v529[20]], v460, &qword_27F21B270, &unk_24F950890);
        sub_24E60169C(&v239[v238[19]], &v548, qword_27F24EC90, &unk_24F93C1D0);
        if (v106 <= 2u)
        {
          v241 = v466;
          if (v106)
          {
            v139 = v546;
            v137 = v545;
            v138 = v544;
LABEL_81:
            v140 = v540;
            v148 = v535;
            goto LABEL_82;
          }

LABEL_80:
          v137 = v545;
          v138 = v544;
          v139 = v546;
          goto LABEL_81;
        }

        v241 = v466;
        if (v106 == 3)
        {
          goto LABEL_80;
        }

        v137 = v545;
        v138 = v544;
        v139 = v546;
        v140 = v540;
        v148 = v535;
        if (v106 != 4)
        {
          v399 = 1;
          goto LABEL_83;
        }

LABEL_82:
        v399 = sub_24F92CE08();
LABEL_83:

        v390 = v461;
        sub_24E6009C8(v240, v461, &qword_27F21B270, &unk_24F950890);
        v391 = v491;
        v392 = v390 + *(v491 + 20);
        v393 = v549;
        *v392 = v548;
        *(v392 + 16) = v393;
        *(v392 + 32) = v550;
        *(v390 + *(v391 + 24)) = v399 & 1;
        *(v390 + *(v391 + 28)) = v241;
        v394 = v390;
        v395 = v492;
        sub_24F509548(v394, v492, type metadata accessor for CardPrimaryActionButton);
        sub_24F5095B0(v395, v493, type metadata accessor for CardPrimaryActionButton);
        swift_storeEnumTagMultiPayload();
        sub_24F509500(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton, &unk_24F9508C0);

        v396 = v494;
        sub_24F924E28();
        sub_24E60169C(v396, v519, &qword_27F214C70, &unk_24F93E7A0);
        swift_storeEnumTagMultiPayload();
        sub_24E63CEC4();
        sub_24E717ADC();
        v397 = v521;
        sub_24F924E28();
        sub_24E601704(v396, &qword_27F214C70, &unk_24F93E7A0);
        sub_24E60169C(v397, v527, &qword_27F214C60, &unk_24F94FFF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v398 = v528;
        sub_24F924E28();
        sub_24E601704(v397, &qword_27F214C60, &unk_24F94FFF0);
        sub_24E60169C(v398, v538, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        sub_24F924E28();
        sub_24E601704(v398, &qword_27F214C50, &unk_24F93E790);
        sub_24F5094A0(v492, type metadata accessor for CardPrimaryActionButton);
LABEL_73:
        sub_24F5094A0(v543, type metadata accessor for CommonCardAttributes);
        sub_24E6009C8(v148, v140, &qword_27F214B00, &unk_24F94FF80);
        v136 = 0;
        break;
      case 0xEu:
        LOBYTE(v551) = 1;
LABEL_28:
        sub_24F924E28();
        v551 = v548;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D00, &unk_24F93E7E0);
        sub_24E63D294();
LABEL_29:
        sub_24F924E28();
        v203 = BYTE1(v548);
        v204 = v527;
        *v527 = v548;
        v204[1] = v203;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CF0, &unk_24F94BDA0);
        sub_24E63CE0C();
        sub_24E63D208();
        v191 = v528;
        sub_24F924E28();
LABEL_30:
        sub_24E60169C(v191, v538, &qword_27F214C50, &unk_24F93E790);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v191, &qword_27F214C50, &unk_24F93E790);
LABEL_31:
        v137 = v545;
        v138 = v544;
        v139 = v546;
        goto LABEL_72;
      default:
        v109 = *(v543 + 2);
        if (!v109)
        {
          goto LABEL_53;
        }

        v110 = *(v543 + 1);
        v111 = HIBYTE(v109) & 0xF;
        if ((v109 & 0x2000000000000000) == 0)
        {
          v111 = v110 & 0xFFFFFFFFFFFFLL;
        }

        if (v111)
        {
          if (v106 == 1)
          {
            *&v548 = *(v543 + 1);
            *(&v548 + 1) = v109;
            sub_24E600AEC();

            v112 = sub_24F925E18();
            v114 = v113;
            v116 = v115;
            v117 = v506;
            v118 = v547;
            v119 = sub_24F925C98();
            v121 = v120;
            v123 = v122;
            v125 = v124;
            sub_24E600B40(v112, v114, v116 & 1);

            *&v548 = v119;
            *(&v548 + 1) = v121;
            v126 = v119;
            LOBYTE(v549) = v123 & 1;
            *(&v549 + 1) = v125;
            v127 = v434;
            sub_24F9268B8();
            sub_24E600B40(v126, v121, v123 & 1);

            v128 = *(v118 + v117[7]);
            v129 = swift_getKeyPath();
            v130 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730) + 36);
            *v130 = v129;
            *(v130 + 8) = v128;
            *(v130 + 16) = 0;
            LODWORD(v129) = sub_24F9251C8();
            v131 = (v127 + *(v440 + 36));
            v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
            v133 = *MEMORY[0x277CE13B8];
            v134 = sub_24F927748();
            (*(*(v134 - 8) + 104))(&v131[v132], v133, v134);
            *v131 = v129;
            sub_24E60169C(v127, v441, &qword_27F214B60, &unk_24F94FFB0);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24F509500(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v135 = v439;
            sub_24F924E28();
            sub_24E601704(v127, &qword_27F214B60, &unk_24F94FFB0);
          }

          else
          {
            v374 = v442;
            v375 = v433;
            sub_24E60169C(&v543[v529[6]], &v433[*(v442 + 20)], &qword_27F213FB0, &qword_24F93E6B0);
            v376 = *(v547 + v506[9]);
            v377 = *(v547 + v506[10]);
            v378 = *(v547 + v506[8]);
            v379 = *(v547 + v506[6]);
            *v375 = v110;
            v375[1] = v109;
            *(v375 + v374[6]) = v376;
            *(v375 + v374[7]) = v377;
            *(v375 + v374[8]) = v378;
            *(v375 + v374[9]) = v379;
            *&v548 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            *&v548 = 0x4008000000000000;
            sub_24F9237C8();
            *&v548 = 0x4018000000000000;
            sub_24F9237C8();
            *&v548 = 0x4010000000000000;
            sub_24F9237C8();
            sub_24F5095B0(v375, v441, type metadata accessor for CardElementView.Category);
            swift_storeEnumTagMultiPayload();
            sub_24E63C5D4();
            sub_24F509500(&qword_27F214B78, type metadata accessor for CardElementView.Category, &unk_24FA04858);
            v135 = v439;
            sub_24F924E28();
            sub_24F5094A0(v375, type metadata accessor for CardElementView.Category);
          }

          v137 = v545;
          v138 = v544;
          v140 = v540;
          v316 = v475;
          sub_24E6009C8(v135, v475, &qword_27F214B50, &unk_24F93E720);
          v315 = 0;
          v139 = v546;
        }

        else
        {
LABEL_53:
          v315 = 1;
          v137 = v545;
          v138 = v544;
          v139 = v546;
          v140 = v540;
          v316 = v475;
        }

        (*(v455 + 56))(v316, v315, 1, v456);
        sub_24E60169C(v316, v485, &qword_27F214B40, &unk_24F94FFA0);
        swift_storeEnumTagMultiPayload();
        sub_24E7019F4();
        sub_24E701A78();
        v380 = v489;
        sub_24F924E28();
        sub_24E60169C(v380, v514, &qword_27F214B30, &unk_24F93E710);
        swift_storeEnumTagMultiPayload();
        sub_24E63C434();
        sub_24E63C8B0();
        v381 = v515;
        sub_24F924E28();
        sub_24E601704(v380, &qword_27F214B30, &unk_24F93E710);
        sub_24E60169C(v381, v532, &qword_27F214B20, &unk_24F94FF90);
        swift_storeEnumTagMultiPayload();
        sub_24E63C3A8();
        sub_24E63C960();
        v382 = v534;
        sub_24F924E28();
        sub_24E601704(v381, &qword_27F214B20, &unk_24F94FF90);
        sub_24E60169C(v382, v538, &qword_27F214B10, &unk_24F93E700);
        swift_storeEnumTagMultiPayload();
        sub_24E63C31C();
        sub_24E63CD80();
        v148 = v535;
        sub_24F924E28();
        sub_24E601704(v382, &qword_27F214B10, &unk_24F93E700);
        sub_24E601704(v475, &qword_27F214B40, &unk_24F94FFA0);
        goto LABEL_73;
    }
  }

  else
  {
    sub_24F5094A0(v100, type metadata accessor for CommonCardAttributes);
    v136 = 1;
    v137 = v545;
    v138 = v544;
    v139 = v546;
    v140 = v540;
  }

  (*(v139 + 56))(v140, v136, 1, v138);
  sub_24E6009C8(v140, v137, &qword_27F214A20, &unk_24F94D670);
  return sub_24F5094A0(v547, type metadata accessor for CardLayoutMetrics);
}

void sub_24F506FA4(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, void (**a3)(uint64_t a1, char a2, uint64_t a3, char a4)@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {

        sub_24F4E9E44(a2, a3);
        return;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E640;
    }

LABEL_24:
    v6 = __swift_project_value_buffer(v4, v5);
    sub_24F5095B0(v6, a3, type metadata accessor for CardLayoutMetrics);
    return;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E658;
    }

    goto LABEL_24;
  }

  sub_24F4E9558(a2, a3);
}

uint64_t sub_24F507174@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C70, &qword_24FA04A10);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v6 = (v1 + *(type metadata accessor for CommonCardAttributes(0) + 56));
  v7 = v6[1];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *v6;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(type metadata accessor for DefaultCardTitleView(0) + 20);
    v41 = a1;
    v11 = (v1 + v10 + *(type metadata accessor for CardLayoutMetrics(0) + 88));
    v12 = v11[4];
    v38 = v11[3];
    v39 = v12;
    v37[1] = __swift_project_boxed_opaque_existential_1(v11, v38);
    v43 = v8;
    v44 = v7;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    v18 = sub_24F925C98();
    v20 = v19;
    v40 = v3;
    v22 = v21;
    sub_24E600B40(v13, v15, v17 & 1);

    v23 = sub_24F925C58();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_24E600B40(v18, v20, v22 & 1);

    sub_24F507458(v1, v23, v25, v27 & 1, v29, v5);
    sub_24E600B40(v23, v25, v27 & 1);

    v30 = sub_24F507B30();
    KeyPath = swift_getKeyPath();
    v32 = v40;
    v33 = &v5[*(v40 + 36)];
    *v33 = KeyPath;
    *(v33 + 1) = v30;
    v33[16] = 0;
    v34 = v41;
    sub_24E6009C8(v5, v41, &qword_27F246C70, &qword_24FA04A10);
    return (*(v42 + 56))(v34, 0, 1, v32);
  }

  else
  {
LABEL_6:
    v36 = *(v42 + 56);

    return v36(a1, 1, 1, v3);
  }
}

uint64_t sub_24F507458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a4;
  v75 = a6;
  v70 = type metadata accessor for FadeOutTruncationTextView(0);
  MEMORY[0x28223BE20](v70);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924A78();
  MEMORY[0x28223BE20](v12 - 8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C78, &qword_24FA04A18);
  MEMORY[0x28223BE20](v71);
  v72 = (v55 - v13);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C80, &qword_24FA04A20);
  MEMORY[0x28223BE20](v74);
  v15 = v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C88, &qword_24FA04A28);
  MEMORY[0x28223BE20](v16);
  v18 = v55 - v17;
  v19 = type metadata accessor for DefaultCardTitleView(0);
  if (*(a1 + *(v19 + 24)) == 1)
  {
    *v18 = a2;
    *(v18 + 1) = a3;
    v20 = v73 & 1;
    v18[16] = v73 & 1;
    *(v18 + 3) = a5;
    swift_storeEnumTagMultiPayload();
    sub_24E5FD138(a2, a3, v20);
    sub_24F50A1A0();

    return sub_24F924E28();
  }

  else
  {
    v22 = v19;
    v67 = a2;
    v68 = a3;
    v69 = a5;
    v23 = (a1 + *(type metadata accessor for CommonCardAttributes(0) + 72));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v63 = v24;
      v64 = v25;
      v76 = v25;
      v77 = v24;
      sub_24E600AEC();
      v65 = v16;
      swift_bridgeObjectRetain_n();
      v26 = sub_24F925E18();
      v28 = v27;
      v30 = v29;
      v31 = a1 + *(v22 + 20);
      v61 = v31;
      v60 = type metadata accessor for CardLayoutMetrics(0);
      v62 = *(v31 + *(v60 + 116));
      v32 = sub_24F925C98();
      v34 = v33;
      v66 = v15;
      v36 = v35;
      v55[1] = v37;
      sub_24E600B40(v26, v28, v30 & 1);

      LODWORD(v76) = sub_24F9251C8();
      v59 = sub_24F925C58();
      v58 = v38;
      v56 = v39;
      v57 = v40;
      sub_24E600B40(v32, v34, v36 & 1);

      sub_24F924A68();
      sub_24F924A58();
      sub_24F924A28();
      sub_24F924A58();
      LOBYTE(v32) = v56 & 1;
      sub_24F924A28();
      sub_24F924A58();
      sub_24F924A98();
      v41 = sub_24F925DE8();
      v43 = v42;
      LOBYTE(v34) = v44;
      v46 = v45;
      v47 = *(v61 + *(v60 + 80));
      *&v11[*(v70 + 36)] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      *v11 = v41;
      *(v11 + 1) = v43;
      v11[16] = v34 & 1;
      *(v11 + 3) = v46;
      v15 = v66;
      v48 = v58;
      *(v11 + 4) = v59;
      *(v11 + 5) = v48;
      v11[48] = v32;
      v49 = v63;
      v50 = v64;
      *(v11 + 7) = v57;
      *(v11 + 8) = v50;
      *(v11 + 9) = v49;
      *(v11 + 10) = v47;
      *(v11 + 11) = v62;
      sub_24F5095B0(v11, v72, type metadata accessor for FadeOutTruncationTextView);
      swift_storeEnumTagMultiPayload();
      sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView, &unk_24F9C42CC);

      sub_24F924E28();
      sub_24F5094A0(v11, type metadata accessor for FadeOutTruncationTextView);
    }

    else
    {
      v51 = v72;
      v52 = v67;
      v53 = v68;
      *v72 = v67;
      v51[1] = v53;
      v54 = v73 & 1;
      *(v51 + 16) = v73 & 1;
      v51[3] = v69;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v52, v53, v54);
      sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView, &unk_24F9C42CC);

      sub_24F924E28();
    }

    sub_24E60169C(v15, v18, &qword_27F246C80, &qword_24FA04A20);
    swift_storeEnumTagMultiPayload();
    sub_24F50A1A0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F246C80, &qword_24FA04A20);
  }
}

uint64_t sub_24F507B30()
{
  v1 = type metadata accessor for DefaultCardTitleView(0);
  if (*(v0 + *(v1 + 24)) != 5 || (v2 = (v0 + *(type metadata accessor for CommonCardAttributes(0) + 60)), (v3 = v2[1]) != 0) && ((v4 = *v2 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v3) & 0xF) : (v5 = v4), v5))
  {
    v6 = v0 + *(v1 + 20);
    return *(v6 + *(type metadata accessor for CardLayoutMetrics(0) + 84));
  }

  else
  {
    v8 = v0 + *(v1 + 20);
    v9 = type metadata accessor for CardLayoutMetrics(0);
    v10 = *(v8 + *(v9 + 84));
    v11 = *(v8 + *(v9 + 112));
    result = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      __break(1u);
    }
  }

  return result;
}

double sub_24F507BE4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BC8, &qword_24FA048A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BD0, &qword_24FA048B0);
  MEMORY[0x28223BE20](v46);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BD8, &qword_24FA048B8);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BE0, &qword_24FA048C0);
  MEMORY[0x28223BE20](v47);
  v11 = &v46 - v10;
  v12 = sub_24F9249A8();
  v13 = type metadata accessor for CardElementView.Category(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  v14 = v50;
  *v5 = v12;
  *(v5 + 1) = v14;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BE8, &qword_24FA048C8);
  sub_24F507FE8(v1, &v5[*(v15 + 44)]);
  v16 = sub_24F925868();
  v17 = *(v1 + *(v13 + 24));
  if (v17 == 1)
  {
    sub_24F9237D8();
  }

  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_24E6009C8(v5, v7, &qword_27F246BC8, &qword_24FA048A8);
  v26 = &v7[*(v46 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_24F9257F8();
  if (v17)
  {
    sub_24F9237D8();
  }

  sub_24F923318();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24E6009C8(v7, v9, &qword_27F246BD0, &qword_24FA048B0);
  v36 = &v9[*(v48 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_24F927618();
  v39 = v38;
  v40 = &v11[*(v47 + 36)];
  sub_24F508A14(v2, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BF0, &qword_24FA048D0) + 36));
  *v41 = v37;
  v41[1] = v39;
  sub_24E6009C8(v9, v11, &qword_27F246BD8, &qword_24FA048B8);
  if (v17)
  {
    sub_24F9237D8();
  }

  sub_24F927618();
  sub_24F9238C8();
  v42 = v49;
  sub_24E6009C8(v11, v49, &qword_27F246BE0, &qword_24FA048C0);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246BF8, &unk_24FA048D8) + 36));
  v44 = v51;
  *v43 = v50;
  v43[1] = v44;
  result = *&v52;
  v43[2] = v52;
  return result;
}

uint64_t sub_24F507FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v64 = a2;
  v2 = type metadata accessor for CardElementView.Category(0);
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v60 = v3;
  v61 = &v53[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C18, &qword_24FA04938);
  MEMORY[0x28223BE20](v63);
  v65 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v53[-v6];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C20, &qword_24FA04940);
  MEMORY[0x28223BE20](v56);
  v9 = &v53[-v8];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C28, &qword_24FA04948);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v53[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53[-v13];
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C30, &qword_24FA04950);
  MEMORY[0x28223BE20](v19 - 8);
  v62 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v58 = &v53[-v22];
  v66 = v2;
  sub_24E60169C(v67 + *(v2 + 20), v14, &qword_27F213FB0, &qword_24F93E6B0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F213FB0, &qword_24F93E6B0);
    v23 = v58;
    (*(v10 + 56))(v58, 1, 1, v57);
    v24 = *MEMORY[0x277CE1050];
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C48, &qword_24FA049F8) + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v54 = *MEMORY[0x277CE1050];
    v27 = v54;
    v28 = sub_24F926E78();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    (*(v16 + 16))(v9, v18, v15);
    v29 = *(v67 + *(v66 + 36));
    KeyPath = swift_getKeyPath();
    v31 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C50, &unk_24FA04A00) + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    *&v9[*(v56 + 36)] = 257;
    sub_24F509F74();
    sub_24F258DA8();

    v32 = v55;
    sub_24F925ED8();
    sub_24E601704(v9, &qword_27F246C20, &qword_24FA04940);
    (*(v16 + 8))(v18, v15);
    v33 = v57;
    v23 = v58;
    (*(v10 + 32))(v58, v32, v57);
    (*(v10 + 56))(v23, 0, 1, v33);
    v24 = v54;
  }

  v35 = v66;
  v34 = v67;
  v36 = *(v67 + *(v66 + 32));
  v37 = v61;
  sub_24F5095B0(v67, v61, type metadata accessor for CardElementView.Category);
  v38 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v39 = swift_allocObject();
  sub_24F509548(v37, v39 + v38, type metadata accessor for CardElementView.Category);
  v40 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D250, &qword_24F958D48) + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v42 = sub_24F926E78();
  (*(*(v42 - 8) + 104))(v40 + v41, v24, v42);
  *v40 = swift_getKeyPath();
  *v7 = v36;
  *(v7 + 1) = sub_24F509EFC;
  *(v7 + 2) = v39;
  *(v7 + 3) = sub_24F508850;
  *(v7 + 4) = 0;
  v43 = *(v34 + *(v35 + 36));
  v44 = swift_getKeyPath();
  v45 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C38, &qword_24FA049B8) + 36)];
  *v45 = v44;
  v45[1] = v43;
  v46 = swift_getKeyPath();
  v47 = v62;
  v48 = &v7[*(v63 + 36)];
  *v48 = v46;
  v48[8] = 0;
  sub_24E60169C(v23, v47, &qword_27F246C30, &qword_24FA04950);
  v49 = v65;
  sub_24E60169C(v7, v65, &qword_27F246C18, &qword_24FA04938);
  v50 = v64;
  sub_24E60169C(v47, v64, &qword_27F246C30, &qword_24FA04950);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C40, &qword_24FA049F0);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F246C18, &qword_24FA04938);

  sub_24E601704(v7, &qword_27F246C18, &qword_24FA04938);
  sub_24E601704(v23, &qword_27F246C30, &qword_24FA04950);
  sub_24E601704(v49, &qword_27F246C18, &qword_24FA04938);
  return sub_24E601704(v47, &qword_27F246C30, &qword_24FA04950);
}

uint64_t sub_24F5087FC(void *a1)
{
  sub_24E600AEC();

  return sub_24F925E18();
}

uint64_t sub_24F508850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - v1;
  sub_24F926DF8();
  v3 = sub_24F925E28();
  v5 = v4;
  v7 = v6;
  v8 = sub_24F9251C8();
  v9 = *(v0 + 36);
  v10 = *MEMORY[0x277CE13B8];
  v11 = sub_24F927748();
  (*(*(v11 - 8) + 104))(&v2[v9], v10, v11);
  *v2 = v8;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v12 = sub_24F925C58();
  sub_24E600B40(v3, v5, v7 & 1);

  sub_24E601704(v2, &qword_27F213F10, &unk_24F93BE10);
  return v12;
}

uint64_t sub_24F508A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v4);
  v6 = (v29 - v5);
  v7 = sub_24F927538();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C00, &qword_24FA048E8);
  MEMORY[0x28223BE20](v8);
  v10 = (v29 - v9);
  v11 = sub_24F926C98();
  v12 = type metadata accessor for CardElementView.Category(0);
  if (*(a1 + *(v12 + 24)) == 1)
  {
    if (*(a1 + *(v12 + 28)) == 1)
    {
      sub_24F927438();
    }

    else
    {
      sub_24F926C88();
      v13 = sub_24F926D08();

      v14 = *(v4 + 36);
      v15 = *MEMORY[0x277CE13B0];
      v16 = sub_24F927748();
      (*(*(v16 - 8) + 104))(v6 + v14, v15, v16);
      *v6 = v13;
      sub_24E602068(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60, MEMORY[0x277CE03C0]);
    }
  }

  else
  {
    v29[1] = sub_24F926C98();
  }

  v17 = sub_24F9238D8();
  v18 = (v10 + *(v8 + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C08, &qword_24FA048F0);
  v20 = *(v19 + 52);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = v17;
  *(v18 + *(v19 + 56)) = 256;
  *v10 = v11;
  KeyPath = swift_getKeyPath();
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246C10, &unk_24FA04928) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_24F9234D8();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  return sub_24E6009C8(v10, a2, &qword_27F246C00, &qword_24FA048E8);
}

double sub_24F508DA4@<D0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v31 = a1;
  v4 = type metadata accessor for MixedMediaItemView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v29 - v15);
  v17 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  sub_24F769764(v16);
  sub_24F769764(v13);
  v18 = v2 + *(v17 + 32);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    v30 = v7;
    v21 = v20;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v19, 0);
    (*(v8 + 8))(v10, v30);
    LODWORD(v19) = v32;
  }

  v22 = sub_24F5502F0(v16, v13, v19);
  v23 = 0xCu >> (v22 & 0xF);
  v24 = 0x1000100u >> (8 * v22);
  v26 = *v3;
  v25 = v3[1];
  v27 = 0x102030303uLL >> (8 * *(v3 + 16));
  *&v6[*(v4 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *&v6[*(v4 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *v6 = v26;
  *(v6 + 1) = v25;
  v6[16] = v27;
  v6[17] = v24;
  v6[18] = v23 & 1;
  sub_24F509548(v6, v31, type metadata accessor for MixedMediaItemView);

  return result;
}

uint64_t sub_24F509134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1;
  if (a1 <= 8u)
  {
    if (a1 > 2u || !a1)
    {
      return v2 & 1;
    }

    if (a1 == 1)
    {
      v2 = a2 > 2u;
      return v2 & 1;
    }

    if (a2 > 2u || a2)
    {
LABEL_25:
      v7 = sub_24F92CE08();

      v2 = v7 ^ 1;
      return v2 & 1;
    }

    goto LABEL_22;
  }

  if (a1 > 0xBu)
  {
    return v2 & 1;
  }

  if (a1 == 9)
  {
LABEL_23:
    v2 = 0;
    return v2 & 1;
  }

  if (a1 != 10)
  {
    if (a2 > 2u)
    {
      v3 = a2;
    }

    else
    {
      if (!a2)
      {
LABEL_22:

        goto LABEL_23;
      }

      v3 = a2;
    }

    v4 = sub_24F92CE08();

    v2 = 0;
    if (v4)
    {
      return v2 & 1;
    }

    if (v3 <= 4u)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a2 != 2)
  {
    v5 = sub_24F92CE08();

    return v5 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_24F5094A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F509500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F509548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5095B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F509620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F509688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommonCardAttributes(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CardLayoutMetrics(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 6)
      {
        return v14 - 5;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F5097A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CommonCardAttributes(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CardLayoutMetrics(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24F5098AC(uint64_t a1)
{
  result = type metadata accessor for CommonCardAttributes(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CardLayoutMetrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F50995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F509AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F509BE8(uint64_t a1)
{
  sub_24E6A7820(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ED3C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F509D28()
{
  v1 = type metadata accessor for CardElementView.Category(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[11], v7);
  v8(v2 + v1[12], v7);
  v8(v2 + v1[13], v7);

  return swift_deallocObject();
}

uint64_t sub_24F509EFC()
{
  v1 = *(type metadata accessor for CardElementView.Category(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24F5087FC(v2);
}

unint64_t sub_24F509F74()
{
  result = qword_27F246C58;
  if (!qword_27F246C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C20, &qword_24FA04940);
    sub_24F50A000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C58);
  }

  return result;
}

unint64_t sub_24F50A000()
{
  result = qword_27F246C60;
  if (!qword_27F246C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C50, &unk_24FA04A00);
    sub_24F50A0B8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C60);
  }

  return result;
}

unint64_t sub_24F50A0B8()
{
  result = qword_27F246C68;
  if (!qword_27F246C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C48, &qword_24FA049F8);
    sub_24F509500(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C68);
  }

  return result;
}

unint64_t sub_24F50A1A0()
{
  result = qword_27F246C98;
  if (!qword_27F246C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C80, &qword_24FA04A20);
    sub_24F509500(&qword_27F246C90, type metadata accessor for FadeOutTruncationTextView, &unk_24F9C42CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246C98);
  }

  return result;
}

uint64_t sub_24F50A278(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F50A348(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F50A418(uint64_t a1)
{
  sub_24E684120(319);
  if (v1 <= 0x3F)
  {
    sub_24F50A4B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F50A4B4()
{
  if (!qword_27F21CF60)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21CF60);
    }
  }
}

unint64_t sub_24F50A508()
{
  result = qword_27F246CB0;
  if (!qword_27F246CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BF8, &unk_24FA048D8);
    sub_24F50A594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CB0);
  }

  return result;
}

unint64_t sub_24F50A594()
{
  result = qword_27F246CB8;
  if (!qword_27F246CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BE0, &qword_24FA048C0);
    sub_24F50A64C();
    sub_24E602068(&qword_27F246CD8, &qword_27F246BF0, &qword_24FA048D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CB8);
  }

  return result;
}

unint64_t sub_24F50A64C()
{
  result = qword_27F246CC0;
  if (!qword_27F246CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BD8, &qword_24FA048B8);
    sub_24F50A6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CC0);
  }

  return result;
}

unint64_t sub_24F50A6D8()
{
  result = qword_27F246CC8;
  if (!qword_27F246CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246BD0, &qword_24FA048B0);
    sub_24E602068(&qword_27F246CD0, &qword_27F246BC8, &qword_24FA048A8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CC8);
  }

  return result;
}

unint64_t sub_24F50A794()
{
  result = qword_27F246CE0;
  if (!qword_27F246CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246CE8, &qword_24FA04A80);
    sub_24F50A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CE0);
  }

  return result;
}

unint64_t sub_24F50A818()
{
  result = qword_27F246CF0;
  if (!qword_27F246CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246C70, &qword_24FA04A10);
    sub_24F50A8D0();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CF0);
  }

  return result;
}

unint64_t sub_24F50A8D0()
{
  result = qword_27F246CF8;
  if (!qword_27F246CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D00, &qword_24FA04A88);
    sub_24F50A954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246CF8);
  }

  return result;
}

unint64_t sub_24F50A954()
{
  result = qword_27F246D08;
  if (!qword_27F246D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D10, &qword_24FA04A90);
    sub_24F50A1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D08);
  }

  return result;
}

uint64_t sub_24F50AA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F50AAA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F50AB1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_24F50ACB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengeDetailPlayerLockup(uint64_t a1)
{
  result = qword_27F246D18;
  if (!qword_27F246D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F50AE84(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
            if (v6 <= 0x3F)
            {
              sub_24E61C938(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F50B000(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E48, &qword_24FA04FD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F54C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCE8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CCA8();
  v8[13] = 2;
  sub_24F92CD38();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F50B1A4()
{
  v1 = 0x657474616D726F66;
  if (*v0 != 1)
  {
    v1 = 0x4374706D65747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C74706D65747461;
  }
}

uint64_t sub_24F50B21C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F50F914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F50B244(uint64_t a1)
{
  v2 = sub_24F50F54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F50B280(uint64_t a1)
{
  v2 = sub_24F50F54C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F50B2BC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24F50F348(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_24F50B31C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    v7 = 0x4D747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C686769487369;
    v9 = 0xD00000000000001ALL;
    if (a1 != 7)
    {
      v9 = 0x654D6C6169636F73;
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
    v1 = 25705;
    v2 = 0x676E6964616568;
    v3 = 0x656C746974;
    if (a1 != 4)
    {
      v3 = 0x746E4565726F6373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x697274536B6E6172;
    if (a1 != 1)
    {
      v4 = 0x726174617661;
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

uint64_t sub_24F50B4A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E28, &qword_24FA04FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F13C();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_24F92CCA8();
    v9 = type metadata accessor for ChallengeDetailPlayerLockup(0);
    LOBYTE(v15) = 2;
    type metadata accessor for PlayerAvatar(0);
    sub_24F50F300(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    LOBYTE(v15) = 4;
    sub_24F92CD08();
    v10 = (v3 + *(v9 + 36));
    v11 = *(v10 + 8);
    v12 = v10[4];
    v15 = *v10;
    v16 = v11;
    v17 = *(v10 + 1);
    v18 = v12;
    HIBYTE(v14) = 5;
    sub_24F50F2AC();
    sub_24F92CD48();
    LOBYTE(v15) = 6;
    sub_24F92CD18();
    LOBYTE(v15) = 7;
    sub_24F92CD18();
    v15 = *(v3 + *(v9 + 48));
    HIBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    sub_24E785388(&qword_27F21C1D8, sub_24E785400, MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v15) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v15) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v15) = 11;
    sub_24F929608();
    sub_24F50F300(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F50B9C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E10, &qword_24FA04FC0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 52)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v52 = v17;
  sub_24E61DA68(&v54, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = *(v13 + 56);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v51 = v18;
  v53 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F50F13C();
  v47 = v12;
  v22 = v49;
  sub_24F92D108();
  if (v22)
  {
    v23 = v53;
    __swift_destroy_boxed_opaque_existential_1(v50);

    sub_24E601704(v52, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v23 + v51, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v42 = v8;
    v43 = v10;
    v41 = v7;
    v49 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v55;
    v25 = v53;
    *v53 = v54;
    v25[1] = v24;
    *(v25 + 4) = v56;
    LOBYTE(v54) = 1;
    *(v25 + 5) = sub_24F92CBC8();
    *(v25 + 6) = v26;
    LOBYTE(v54) = 2;
    sub_24F50F300(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v27 = v43;
    sub_24F92CC68();
    v28 = v49;
    sub_24F50F190(v27, v25 + v49[6], type metadata accessor for PlayerAvatar);
    LOBYTE(v54) = 3;
    v29 = sub_24F92CBC8();
    v30 = (v25 + v28[7]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v54) = 4;
    v32 = sub_24F92CC28();
    v33 = (v25 + v28[8]);
    *v33 = v32;
    v33[1] = v34;
    v57 = 5;
    sub_24F50F1F8();
    sub_24F92CC68();
    v35 = BYTE8(v54);
    v36 = v56;
    v37 = v25 + v28[9];
    *v37 = v54;
    v37[8] = v35;
    *(v37 + 1) = v55;
    *(v37 + 4) = v36;
    LOBYTE(v54) = 6;
    *(v25 + v28[10]) = sub_24F92CC38() & 1;
    LOBYTE(v54) = 7;
    *(v25 + v28[11]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    v57 = 8;
    sub_24E785388(&qword_27F21C1A8, sub_24E7851CC, MEMORY[0x277D21D38]);
    sub_24F92CC68();
    *(v25 + v49[12]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v57 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v52, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v54) = 10;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v41, v53 + v51, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v54) = 11;
    sub_24F50F300(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v46 + 8))(v47, v48);
    v38 = v53;
    sub_24E6009C8(v45, v53 + v49[15], &qword_27F213E68, &unk_24F93BC80);
    sub_24F50ECB4(v38, v44, type metadata accessor for ChallengeDetailPlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_24F50F24C(v38, type metadata accessor for ChallengeDetailPlayerLockup);
  }
}

uint64_t sub_24F50C3FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F50FA3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F50C424(uint64_t a1)
{
  v2 = sub_24F50F13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F50C460(uint64_t a1)
{
  v2 = sub_24F50F13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F50C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 56), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

BOOL sub_24F50C5DC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v0 + 8);
  v5 = *v0;
  v18 = *v0;
  if (v19 == 1)
  {
    if (v5 != 0.0)
    {
      return 0;
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v18, &qword_27F218208, &qword_24F94E940);
    (*(v2 + 8))(v4, v1);
    if (*&v15 != 0.0)
    {
      return 0;
    }
  }

  v17 = *(v0 + 48);
  v8 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v8;
  if (v17 == 1)
  {
    v9 = *(&v16 + 1);
    v10 = *(&v15 + 1);
  }

  else
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v15, &qword_27F2445E0, &qword_24F9FB4F0);
    (*(v2 + 8))(v4, v1);
    v10 = v13;
    v9 = v14;
  }

  return v10 + v9 == 0.0;
}

uint64_t sub_24F50C830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_24F924258();
  MEMORY[0x28223BE20](v50);
  v47 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_24F9248C8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237D0, &qword_24F96E7F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237C0, &qword_24F96E7F0);
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D38, &qword_24FA04E48);
  MEMORY[0x28223BE20](v45);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D40, &qword_24FA04E50);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D48, &qword_24FA04E58);
  sub_24F50CE34(a1, &v9[*(v18 + 44)]);
  v19 = sub_24F925868();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223808, &qword_24F96E810) + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  v21 = sub_24F9257F8();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237F8, &qword_24F96E808) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2237E8, &qword_24F96E800) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99CE70();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v4 + 8))(v6, v46);
  sub_24E601704(v9, &qword_27F2237D0, &qword_24F96E7F8);
  v31 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  sub_24E9945E8(*(a1 + *(v31 + 48)));
  (*(v10 + 8))(v12, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D50, &unk_24FA04E60);
  sub_24F50EAD4();
  sub_24E6A4C1C();
  sub_24F50EB60();
  sub_24F926B08();
  sub_24E601704(v14, &qword_27F246D38, &qword_24FA04E48);
  if (*(a1 + *(v31 + 40)) == 1)
  {
    v52 = sub_24F9251A8();
  }

  else
  {
    v53 = sub_24F926C98();
  }

  v32 = sub_24F9238D8();
  if (sub_24F50C5DC())
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 12.0;
  }

  v34 = *(v50 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  v37 = v47;
  (*(*(v36 - 8) + 104))(v47 + v34, v35, v36);
  *v37 = v33;
  v37[1] = v33;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D88, &qword_24FA04E88);
  v39 = v51;
  v40 = (v51 + *(v38 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D90, &qword_24FA04E90);
  sub_24F50F190(v37, v40 + *(v41 + 52), MEMORY[0x277CDFC08]);
  *v40 = v32;
  *(v40 + *(v41 + 56)) = 256;
  return (*(v48 + 32))(v39, v17, v49);
}

uint64_t sub_24F50CE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D98, &qword_24FA04EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = (&v67 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DA0, &qword_24FA04EC8);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = (&v67 - v10);
  v11 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F60, &qword_24F97CCF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  MEMORY[0x28223BE20](v22 - 8);
  v80 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = *(a1 + 48);
  v79 = &v67 - v25;
  if (v26)
  {
    *&v81 = *(a1 + 40);
    *(&v81 + 1) = v26;
    sub_24E600AEC();
    v69 = v13;

    v27 = sub_24F925E18();
    v29 = v28;
    v31 = v30;
    sub_24F925888();
    v67 = v21;
    v32 = sub_24F925C98();
    v70 = v14;
    v71 = a1;
    v33 = v32;
    v68 = v18;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v79;
    sub_24E600B40(v27, v29, v31 & 1);

    *&v81 = v33;
    *(&v81 + 1) = v35;
    LOBYTE(v27) = v37 & 1;
    a1 = v71;
    LOBYTE(v82) = v27;
    *(&v82 + 1) = v39;
    v41 = v67;
    sub_24F9268B8();
    v42 = v33;
    v13 = v69;
    v14 = v70;
    sub_24E600B40(v42, v35, v27);

    v43 = v68;
    (*(v19 + 32))(v40, v41, v68);
    v44 = v40;
    (*(v19 + 56))(v40, 0, 1, v43);
  }

  else
  {
    v44 = &v67 - v25;
    (*(v19 + 56))(&v67 - v25, 1, 1, v18);
  }

  v45 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  sub_24F50ECB4(a1 + *(v45 + 24), v13, type metadata accessor for PlayerAvatar);
  LOBYTE(v81) = 7;
  v46 = v73;
  sub_24F8319B8(v13, &v81, v73);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F78, &qword_24F97CD10);
  v48 = v46 + *(v47 + 44);
  *(v48 + 24) = MEMORY[0x277CE1120];
  *(v48 + 32) = sub_24E63E454();
  v49 = v46 + *(v47 + 48);
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v50 = (v46 + *(v14 + 36));
  v51 = v82;
  *v50 = v81;
  v50[1] = v51;
  v50[2] = v83;
  v52 = sub_24F924C98();
  v53 = v75;
  *v75 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DA8, &qword_24FA04EF8);
  sub_24F50D5B0(a1, (v53 + *(v54 + 44)));
  v55 = sub_24F924CA8();
  v56 = v76;
  *v76 = v55;
  *(v56 + 8) = 0x4010000000000000;
  *(v56 + 16) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DB0, &qword_24FA04F00);
  sub_24F50E0B4(a1, v56 + *(v57 + 44));
  v58 = v80;
  sub_24E60169C(v44, v80, &qword_27F2128D8, &qword_24F939730);
  v59 = v74;
  sub_24E60169C(v46, v74, &qword_27F226F60, &qword_24F97CCF0);
  v60 = v77;
  sub_24E60169C(v53, v77, &qword_27F246DA0, &qword_24FA04EC8);
  v61 = v72;
  sub_24E60169C(v56, v72, &qword_27F246D98, &qword_24FA04EC0);
  v62 = v58;
  v63 = v78;
  sub_24E60169C(v62, v78, &qword_27F2128D8, &qword_24F939730);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DB8, &qword_24FA04F08);
  sub_24E60169C(v59, v63 + v64[12], &qword_27F226F60, &qword_24F97CCF0);
  sub_24E60169C(v60, v63 + v64[16], &qword_27F246DA0, &qword_24FA04EC8);
  v65 = v63 + v64[20];
  *v65 = 0;
  *(v65 + 8) = 0;
  sub_24E60169C(v61, v63 + v64[24], &qword_27F246D98, &qword_24FA04EC0);
  sub_24E601704(v56, &qword_27F246D98, &qword_24FA04EC0);
  sub_24E601704(v53, &qword_27F246DA0, &qword_24FA04EC8);
  sub_24E601704(v46, &qword_27F226F60, &qword_24F97CCF0);
  sub_24E601704(v79, &qword_27F2128D8, &qword_24F939730);
  sub_24E601704(v61, &qword_27F246D98, &qword_24FA04EC0);
  sub_24E601704(v60, &qword_27F246DA0, &qword_24FA04EC8);
  sub_24E601704(v59, &qword_27F226F60, &qword_24F97CCF0);
  return sub_24E601704(v80, &qword_27F2128D8, &qword_24F939730);
}

uint64_t sub_24F50D5B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DE0, &qword_24FA04F88);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v4 = &KeyPath - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DE8, &qword_24FA04F90);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &KeyPath - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DF0, &unk_24FA04F98);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &KeyPath - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v14);
  v16 = (&KeyPath - v15);
  v17 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  v18 = (a1 + *(v17 + 28));
  v19 = v18[1];
  v81 = v13;
  v71 = v14;
  if (v19)
  {
    v82 = *v18;
    v83 = v19;
    sub_24E600AEC();
    *&v70 = a1;

    v20 = sub_24F925E18();
    v22 = v21;
    v24 = v23;
    v69 = v17;
    sub_24F925A18();
    v25 = sub_24F925C98();
    v76 = v26;
    v28 = v27;
    v74 = v29;

    sub_24E600B40(v20, v22, v24 & 1);

    v30 = sub_24F9251C8();
    v31 = *(v14 + 36);
    v32 = *MEMORY[0x277CE13B8];
    v33 = sub_24F927748();
    v34 = v16 + v31;
    v13 = v81;
    (*(*(v33 - 8) + 104))(v34, v32, v33);
    *v16 = v30;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    LOBYTE(v32) = v28;
    v35 = v76;
    v36 = sub_24F925C58();
    v68 = v4;
    v38 = v37;
    LOBYTE(v30) = v39;
    v41 = v40;
    sub_24E600B40(v25, v35, v32 & 1);

    v17 = v69;
    sub_24E601704(v16, &qword_27F213F10, &unk_24F93BE10);
    v42 = v30 & 1;
    a1 = v70;
    v43 = v36;
    v76 = v38;
    v44 = v38;
    v4 = v68;
    v73 = v42;
    sub_24E5FD138(v36, v44, v42);
    v74 = v41;
  }

  else
  {
    v43 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
  }

  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4014000000000000;
  v13[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DF8, &qword_24FA04FA8);
  sub_24F50DCD0(a1, &v13[*(v45 + 44)]);
  if (*(a1 + *(v17 + 44)) == 1)
  {
    v68 = sub_24F9249A8();
    sub_24F50DFA4(&v82);
    v46 = v82;
    v69 = v83;
    v47 = v84;
    v70 = v85;
    v87 = 0;
    v86 = v84;
    v67 = sub_24F925A18();
    KeyPath = swift_getKeyPath();
    v48 = sub_24F9251C8();
    v49 = v75;
    v50 = &v4[*(v75 + 36)];
    v51 = *(v71 + 36);
    v52 = *MEMORY[0x277CE13B8];
    v53 = sub_24F927748();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    *v50 = v48;
    *v4 = v68;
    *(v4 + 1) = 0x4000000000000000;
    v4[16] = 0;
    *(v4 + 17) = v82;
    *(v4 + 5) = *(&v82 + 3);
    v54 = v69;
    *(v4 + 3) = v46;
    *(v4 + 4) = v54;
    v4[40] = v47;
    *(v4 + 41) = v88[0];
    *(v4 + 11) = *(v88 + 3);
    *(v4 + 3) = v70;
    v55 = v67;
    *(v4 + 8) = KeyPath;
    *(v4 + 9) = v55;
    v56 = v79;
    sub_24E6009C8(v4, v79, &qword_27F246DE0, &qword_24FA04F88);
    (*(v72 + 56))(v56, 0, 1, v49);
  }

  else
  {
    v56 = v79;
    (*(v72 + 56))(v79, 1, 1, v75);
  }

  v57 = v13;
  v58 = v78;
  sub_24E60169C(v57, v78, &qword_27F246DF0, &unk_24FA04F98);
  v59 = v80;
  sub_24E60169C(v56, v80, &qword_27F246DE8, &qword_24FA04F90);
  v60 = v76;
  v61 = v77;
  *v77 = v43;
  v61[1] = v60;
  v62 = v73;
  v63 = v74;
  v61[2] = v73;
  v61[3] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E00, &qword_24FA04FB0);
  sub_24E60169C(v58, v61 + *(v64 + 48), &qword_27F246DF0, &unk_24FA04F98);
  sub_24E60169C(v59, v61 + *(v64 + 64), &qword_27F246DE8, &qword_24FA04F90);
  sub_24E65D2B4(v43, v60, v62, v63);
  sub_24E65D2F8(v43, v60, v62, v63);
  sub_24E601704(v56, &qword_27F246DE8, &qword_24FA04F90);
  sub_24E601704(v81, &qword_27F246DF0, &unk_24FA04F98);
  sub_24E601704(v59, &qword_27F246DE8, &qword_24FA04F90);
  sub_24E601704(v58, &qword_27F246DF0, &unk_24FA04F98);
  return sub_24E65D2F8(v43, v60, v62, v63);
}

uint64_t sub_24F50DCD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  v10 = (a1 + *(v9 + 32));
  v11 = v10[1];
  v35 = *v10;
  v36 = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v35 = v12;
  v36 = v13;
  v16 = v15 & 1;
  v37 = v15 & 1;
  v38 = v17;
  sub_24F9268B8();
  sub_24E600B40(v12, v14, v16);

  v18 = 0;
  v19 = 0;
  KeyPath = 0;
  v21 = 0;
  if (*(a1 + *(v9 + 40)) == 1)
  {
    v18 = sub_24F926DF8();
    v22 = sub_24F9251C8();
    v21 = sub_24F925A18();
    KeyPath = swift_getKeyPath();
    v19 = v22;
  }

  v23 = *(v4 + 16);
  v24 = v34;
  v23(v34, v8, v3);
  v32 = v8;
  v25 = v33;
  v23(v33, v24, v3);
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E08, &qword_24FA04FB8) + 48)];
  sub_24F50F094(v18);
  v27 = sub_24F50F0E4(v18);
  *v26 = v18;
  v26[1] = v19;
  v26[2] = KeyPath;
  v26[3] = v21;
  v28 = *(v4 + 8);
  v28(v32, v3, v27);
  v29 = sub_24F50F0E4(v18);
  return (v28)(v24, v3, v29);
}

uint64_t sub_24F50DFA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211678 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_24F926DF8();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_24E5FD138(v2, v4, v6);

  sub_24E600B40(v2, v4, v6);
}

uint64_t sub_24F50E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = v45 - v8;
  v9 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  v10 = v9 - 8;
  v47 = *(v9 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DC0, &qword_24FA04F10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DC8, &qword_24FA04F18);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = v45 - v20;
  v23 = a1;
  v24 = (a1 + *(v10 + 44));
  if (*(v24 + 8) == 1)
  {
    (*(v13 + 56))(v45 - v20, 1, 1, v12, v21);
  }

  else
  {
    v46 = v12;
    v25 = *v24;
    result = sub_24F9249A8();
    *v15 = result;
    *(v15 + 1) = 0;
    v15[16] = 0;
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v45[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DD8, &unk_24FA04F28) + 44);
    v54 = 0;
    v55 = v25;
    v45[0] = swift_getKeyPath();
    sub_24F50ECB4(v23, v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengeDetailPlayerLockup);
    v27 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v28 = swift_allocObject();
    sub_24F50F190(v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ChallengeDetailPlayerLockup);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EE8, &qword_24F9BD390);
    sub_24E62A6CC();
    sub_24F00558C();
    sub_24F927228();
    sub_24E6009C8(v15, v22, &qword_27F246DC0, &qword_24FA04F10);
    (*(v13 + 56))(v22, 0, 1, v46, v29);
  }

  v30 = v24[3];
  v31 = v49;
  if (v30)
  {
    v54 = v24[2];
    v55 = v30;
    sub_24E600AEC();

    v32 = sub_24F925E18();
    v34 = v33;
    v54 = v32;
    v55 = v33;
    v36 = v35 & 1;
    v56 = v35 & 1;
    v57 = v37;
    v38 = v48;
    sub_24F9268B8();
    sub_24E600B40(v32, v34, v36);

    v40 = v50;
    v39 = v51;
    (*(v50 + 32))(v31, v38, v51);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v50;
    v39 = v51;
  }

  (*(v40 + 56))(v31, v41, 1, v39);
  sub_24E60169C(v22, v18, &qword_27F246DC8, &qword_24FA04F18);
  v42 = v52;
  sub_24E60169C(v31, v52, &qword_27F2128D8, &qword_24F939730);
  v43 = v53;
  sub_24E60169C(v18, v53, &qword_27F246DC8, &qword_24FA04F18);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246DD0, &qword_24FA04F20);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F2128D8, &qword_24F939730);
  sub_24E601704(v31, &qword_27F2128D8, &qword_24F939730);
  sub_24E601704(v22, &qword_27F246DC8, &qword_24FA04F18);
  sub_24E601704(v42, &qword_27F2128D8, &qword_24F939730);
  return sub_24E601704(v18, &qword_27F246DC8, &qword_24FA04F18);
}

uint64_t sub_24F50E6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(type metadata accessor for ChallengeDetailPlayerLockup(0) + 36) + 32);
  v6 = sub_24F926DF8();
  if (v4 >= v5)
  {
    v7 = sub_24F9251B8();
  }

  else
  {
    v7 = sub_24F925198();
  }

  v8 = v7;
  v9 = sub_24F925A18();
  result = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v9;
  return result;
}

uint64_t sub_24F50E770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, a2, &qword_27F246D38, &qword_24FA04E48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D80, &qword_24FA04E80);
  v4 = a2 + *(v3 + 40);
  *v4 = sub_24F923398() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6 & 1;
  v7 = a2 + *(v3 + 44);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24E488;
  v9 = sub_24F923398();
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D70, &qword_24FA04E78) + 36);
  *v14 = v8;
  *(v14 + 8) = v9 & 1;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13 & 1;
  LOBYTE(v8) = sub_24F923398();
  v16 = v15;
  LOBYTE(v11) = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246D50, &unk_24FA04E60);
  v19 = a2 + *(result + 36);
  *v19 = v8 & 1;
  *(v19 + 8) = v16;
  *(v19 + 16) = v11 & 1;
  return result;
}

uint64_t sub_24F50E914(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  sub_24E62AB1C(*v1, *(v1 + 8));
  sub_24F50F130(v3, v4, v5, v6, v7);
  sub_24F47DBD4();
  return sub_24F9218E8();
}

unint64_t sub_24F50EA00()
{
  result = qword_27F246D30;
  if (!qword_27F246D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D30);
  }

  return result;
}

unint64_t sub_24F50EAD4()
{
  result = qword_27F246D58;
  if (!qword_27F246D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D38, &qword_24FA04E48);
    sub_24E99CDA8();
    sub_24E99D124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D58);
  }

  return result;
}

unint64_t sub_24F50EB60()
{
  result = qword_27F246D60;
  if (!qword_27F246D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D50, &unk_24FA04E60);
    sub_24F50EBEC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D60);
  }

  return result;
}

unint64_t sub_24F50EBEC()
{
  result = qword_27F246D68;
  if (!qword_27F246D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D70, &qword_24FA04E78);
    sub_24E602068(&qword_27F246D78, &qword_27F246D80, &qword_24FA04E80, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246D68);
  }

  return result;
}

uint64_t sub_24F50ECB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F50ED1C()
{
  v1 = type metadata accessor for ChallengeDetailPlayerLockup(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = &v2[v1[6]];

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(&v3[v5], 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(&v3[v5], v7);
  }

  v8 = &v3[*(v4 + 24)];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = &v2[v1[13]];
  if (*(v9 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = v1[14];
  v11 = sub_24F92A6D8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v2[v10], 1, v11))
  {
    (*(v12 + 8))(&v2[v10], v11);
  }

  v13 = v1[15];
  v14 = sub_24F929608();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v2[v13], 1, v14))
  {
    (*(v15 + 8))(&v2[v13], v14);
  }

  return swift_deallocObject();
}

uint64_t sub_24F50F00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChallengeDetailPlayerLockup(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F50E6AC(a1, v6, a2);
}

uint64_t sub_24F50F094(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_24F50F0E4(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_24F50F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24F50F13C()
{
  result = qword_27F246E18;
  if (!qword_27F246E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E18);
  }

  return result;
}

uint64_t sub_24F50F190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F50F1F8()
{
  result = qword_27F246E20;
  if (!qword_27F246E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E20);
  }

  return result;
}

uint64_t sub_24F50F24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F50F2AC()
{
  result = qword_27F246E30;
  if (!qword_27F246E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E30);
  }

  return result;
}

uint64_t sub_24F50F300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F50F348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E38, &qword_24FA04FD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F50F54C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC08();
  v19 = v10;
  v11 = v9;
  v21 = 1;
  v12 = sub_24F92CBC8();
  v14 = v13;
  v18 = v12;
  v20 = 2;
  v15 = sub_24F92CC58();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v19 & 1;
  *(a2 + 16) = v18;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_24F50F54C()
{
  result = qword_27F246E40;
  if (!qword_27F246E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E40);
  }

  return result;
}

unint64_t sub_24F50F5C8()
{
  result = qword_27F246E50;
  if (!qword_27F246E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D88, &qword_24FA04E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D38, &qword_24FA04E48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246D50, &unk_24FA04E60);
    sub_24F50EAD4();
    sub_24E6A4C1C();
    sub_24F50EB60();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F246E58, &qword_27F246D90, &qword_24FA04E90, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E50);
  }

  return result;
}

unint64_t sub_24F50F708()
{
  result = qword_27F246E60;
  if (!qword_27F246E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E60);
  }

  return result;
}

unint64_t sub_24F50F760()
{
  result = qword_27F246E68;
  if (!qword_27F246E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E68);
  }

  return result;
}

unint64_t sub_24F50F7B8()
{
  result = qword_27F246E70;
  if (!qword_27F246E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E70);
  }

  return result;
}

unint64_t sub_24F50F810()
{
  result = qword_27F246E78;
  if (!qword_27F246E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E78);
  }

  return result;
}

unint64_t sub_24F50F868()
{
  result = qword_27F246E80;
  if (!qword_27F246E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E80);
  }

  return result;
}

unint64_t sub_24F50F8C0()
{
  result = qword_27F246E88;
  if (!qword_27F246E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246E88);
  }

  return result;
}

uint64_t sub_24F50F914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374706D65747461 && a2 == 0xEC000000746E756FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F50FA3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274536B6E6172 && a2 == 0xEA0000000000676ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E4565726F6373 && a2 == 0xEA00000000007972 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C686769487369 && a2 == 0xED00006465746867 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA74770 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24F50FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F50FF74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingAccessoryView(uint64_t a1)
{
  result = qword_27F246E98;
  if (!qword_27F246E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5100FC(uint64_t a1)
{
  sub_24F510208(319, &qword_27F246EA8, type metadata accessor for FriendsPlayingOptionProvider, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_24E600550(319);
    if (v2 <= 0x3F)
    {
      sub_24F510208(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F510208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F510288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_24F929888();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24F927768();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FriendsPlayingAccessoryView(0);
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v69);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EB0, &qword_24FA05288);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v9 = v57 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EB8, &qword_24FA05290);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v11 = v57 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EC0, &qword_24FA05298);
  MEMORY[0x28223BE20](v67);
  v13 = v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EC8, &unk_24FA052A0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v57 - v14;
  sub_24F512908(v2, v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + 80);
  v16 = (v15 + 16) & ~v15;
  v75 = v7;
  v65 = v15;
  v17 = swift_allocObject();
  v66 = v16;
  v76 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F512970(v76, v17 + v16);
  v80 = v2;
  v77 = v2;
  v79 = v2;
  v57[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA8, &qword_24FA052B0);
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246ED0, &qword_24FA052B8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8, &qword_24FA052C0);
  v19 = sub_24EF69804();
  v82 = v18;
  v83 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246ED8, &qword_24FA052C8);
  v21 = sub_24F9248E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EE0, &qword_24FA052D0);
  v23 = sub_24E602068(&qword_27F246EE8, &qword_27F246EE0, &qword_24FA052D0, MEMORY[0x277CDF038]);
  v82 = v22;
  v83 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v20;
  v83 = v21;
  v25 = v11;
  v84 = OpaqueTypeConformance2;
  v85 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  v26 = v58;
  sub_24F925AA8();
  v27 = v62;
  sub_24F927758();
  sub_24E602068(&qword_27F246EF0, &qword_27F246EB0, &qword_24FA05288, MEMORY[0x277CDE5B0]);
  v28 = v60;
  sub_24F926BA8();
  v29 = v59;
  (*(v63 + 8))(v27, v64);
  (*(v61 + 8))(v9, v28);
  v85 = MEMORY[0x277CE1120];
  v86 = sub_24E63E454();
  sub_24F512A70(&v82, v13);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F00, &qword_24FA052E0);
  (*(v26 + 16))(&v13[v30[9]], v25, v29);
  v31 = &v13[v30[10]];
  *v31 = sub_24F923398() & 1;
  *(v31 + 1) = v32;
  v31[16] = v33 & 1;
  v34 = &v13[v30[11]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v35 = qword_27F24E488;
  v36 = sub_24F923398();
  v38 = v37;
  v40 = v39;
  v41 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F08, &qword_24FA05310) + 36)];
  *v41 = v35;
  v41[8] = v36 & 1;
  *(v41 + 2) = v38;
  v41[24] = v40 & 1;
  LOBYTE(v35) = sub_24F923398();
  v43 = v42;
  LOBYTE(v38) = v44;
  sub_24E601704(&v82, &qword_27F246EF8, &qword_24FA052D8);
  (*(v26 + 8))(v25, v29);
  v45 = v67;
  v46 = &v13[*(v67 + 36)];
  *v46 = v35 & 1;
  *(v46 + 1) = v43;
  v46[16] = v38 & 1;
  v47 = v72;
  sub_24F9297E8();
  v48 = sub_24F512AE8();
  v49 = v68;
  sub_24F925EE8();
  (*(v73 + 8))(v47, v74);
  sub_24E601704(v13, &qword_27F246EC0, &qword_24FA05298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
  v50 = v77;
  sub_24F927358();
  v51 = v82;
  swift_getKeyPath();
  v82 = v51;
  sub_24EAC45B0();
  sub_24F91FD88();

  LOBYTE(v43) = *(v51 + 24);

  v81 = v43;
  v52 = v76;
  sub_24F512908(v50, v76);
  v53 = v66;
  v54 = swift_allocObject();
  sub_24F512970(v52, v54 + v53);
  v82 = v45;
  v83 = v48;
  swift_getOpaqueTypeConformance2();
  sub_24EAC4450();
  v55 = v71;
  sub_24F926AB8();

  return (*(v70 + 8))(v49, v55);
}

uint64_t sub_24F510C40(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FriendsPlayingAccessoryView(0);
  sub_24EF69E54(a2 + *(v11 + 24), &v20);
  if (v23 == 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v24, v12);
      *(&v21 + 1) = sub_24F9284A8();
      v22 = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_24F510F10(boxed_opaque_existential_1);
      sub_24F76973C(v6);
      sub_24F9218A8();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      return __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v19 = v7;
    v16 = v4;
    v17 = v15;
    sub_24F921FD8();

    v4 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v19);
    v12 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v24, &unk_27F212740, &unk_24F940730);
}

uint64_t sub_24F510F10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24F9294C8();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929458();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928698();
  v33 = *(v34 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v14 = sub_24F929448();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6449746567726174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v17;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v17;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();

  v22 = v31;
  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v22;
  v26 = v22;
  v27 = v34;
  (*(v9 + 16))(v24 + v23, v25, v34);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v9 + 8))(v26, v27);
  return sub_24F928498();
}

uint64_t sub_24F511450@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_24F9248E8();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  MEMORY[0x28223BE20](v1);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EE0, &qword_24FA052D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246ED8, &qword_24FA052C8);
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - v13;
  type metadata accessor for FriendsPlayingAccessoryView(0);
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v5 + 8))(v7, v4);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F28, &unk_24FA05400);
  sub_24F512E6C();
  sub_24F512EC0();
  sub_24F927088();
  v15 = sub_24E602068(&qword_27F246EE8, &qword_27F246EE0, &qword_24FA052D0, MEMORY[0x277CDF038]);
  sub_24F926968();
  (*(v9 + 8))(v11, v8);
  v16 = v22;
  sub_24F9248D8();
  v29 = v8;
  v30 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  v18 = v23;
  sub_24F9261F8();
  (*(v24 + 8))(v16, v18);
  return (*(v12 + 8))(v14, v17);
}

uint64_t sub_24F51185C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_24F9248C8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &KeyPath - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0, &qword_24F9D8240);
  MEMORY[0x28223BE20](v7);
  v9 = (&KeyPath - v8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CD0, &unk_24F9B4DA0);
  MEMORY[0x28223BE20](v38);
  v39 = &KeyPath - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB8, &qword_24FA052C0);
  MEMORY[0x28223BE20](v41);
  v12 = &KeyPath - v11;
  v37 = sub_24F926DF8();
  v36 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for FriendsPlayingAccessoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
  v40 = a1;
  sub_24F927358();
  v13 = v46;
  swift_getKeyPath();
  v46 = v13;
  sub_24EAC45B0();
  sub_24F91FD88();

  if (*(v13 + 24))
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {
      v15 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_24F924CF8();
  v15 = 0;
LABEL_6:
  v16 = sub_24F924D08();
  (*(*(v16 - 8) + 56))(v6, v15, 1, v16);
  v17 = swift_getKeyPath();
  v18 = (v9 + *(v7 + 36));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0);
  sub_24E6009C8(v6, v18 + *(v19 + 28), &qword_27F214410, &unk_24F9576A0);
  *v18 = v17;
  v21 = KeyPath;
  v20 = v36;
  *v9 = v37;
  v9[1] = v21;
  v9[2] = v20;
  sub_24F927358();
  v22 = v46;
  swift_getKeyPath();
  v46 = v22;
  sub_24F91FD88();

  if (*(v22 + 24))
  {
    v23 = sub_24F92CE08();

    v24 = v39;
    if ((v23 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {

    v24 = v39;
  }

  v25 = sub_24F926D18();
LABEL_11:
  v26 = swift_getKeyPath();
  sub_24E6009C8(v9, v24, &qword_27F234CE0, &qword_24F9D8240);
  v27 = (v24 + *(v38 + 36));
  *v27 = v26;
  v27[1] = v25;
  sub_24F927358();
  v28 = v46;
  swift_getKeyPath();
  v46 = v28;
  sub_24F91FD88();

  if (*(v28 + 24))
  {
    v29 = sub_24F92CE08();

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }
  }

  else
  {

    v30 = 0;
  }

  v31 = swift_getKeyPath();
  sub_24E6009C8(v24, v12, &qword_27F234CD0, &unk_24F9B4DA0);
  v32 = &v12[*(v41 + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v42;
  sub_24F9248B8();
  sub_24EF69804();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v43 + 8))(v33, v45);
  return sub_24E601704(v12, &qword_27F234CB8, &qword_24FA052C0);
}

uint64_t sub_24F511E74(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v22 = sub_24F921B58();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(type metadata accessor for FriendsPlayingAccessoryView(0) + 24);
  v21 = a3;
  sub_24EF69E54(a3 + v13, &v23);
  if (v26 != 1)
  {
    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v27, &unk_27F212740, &unk_24F940730);
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v27, &unk_27F212740, &unk_24F940730);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v27, v14);
  v15 = v12 == 0;
  if (v12)
  {
    v16 = 0x614E794274726F53;
  }

  else
  {
    v16 = 0x6552794274726F53;
  }

  if (v15)
  {
    v17 = 0xEC000000746E6563;
  }

  else
  {
    v17 = 0xEA0000000000656DLL;
  }

  *(&v24 + 1) = sub_24F9284A8();
  v25 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_24F512184(v16, v17, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v5 + 8))(v7, v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24F512184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v33 = a2;
  v32 = a1;
  v40 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24F928698();
  v37 = *(v38 - 8);
  v11 = v37;
  MEMORY[0x28223BE20](v38);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928AD8();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[1];
  v35 = *v4;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v18 = sub_24F929448();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = 0x6449746567726174;
  v22 = v32;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v22;
  *(inited + 104) = v33;
  *(inited + 120) = v21;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v21;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v21;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x7463656C6573;
  *(inited + 200) = 0xE600000000000000;

  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v23 = sub_24F92A2C8();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v33 = xmmword_24F93DE60;
  *(v26 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v26);
  swift_setDeallocating();
  (*(v24 + 8))(v26 + v25, v23);
  swift_deallocClassInstance();

  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = v38;
  (*(v11 + 16))(v28 + v27, v13, v38);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v11 + 8))(v13, v29);
  return sub_24F928498();
}

uint64_t sub_24F5126E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227420, qword_24F97E540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F40, &qword_24FA05410);
  sub_24E602068(&qword_27F246F48, &qword_27F227420, qword_24F97E540, MEMORY[0x277D83980]);
  sub_24F512E6C();
  swift_getOpaqueTypeConformance2();
  sub_24F512F84();
  return sub_24F927238();
}

uint64_t sub_24F512818@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_27F211618 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F211620 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24F512908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsPlayingAccessoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F512970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsPlayingAccessoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5129D4(uint64_t a1)
{
  v3 = *(type metadata accessor for FriendsPlayingAccessoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F510C40(a1, v4);
}

uint64_t sub_24F512A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246EF8, &qword_24FA052D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F512AE8()
{
  result = qword_27F246F10;
  if (!qword_27F246F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC0, &qword_24FA05298);
    sub_24F512B74();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F10);
  }

  return result;
}

unint64_t sub_24F512B74()
{
  result = qword_27F246F18;
  if (!qword_27F246F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F08, &qword_24FA05310);
    sub_24E602068(&qword_27F246F20, &qword_27F246F00, &qword_24FA052E0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F18);
  }

  return result;
}

uint64_t objectdestroyTm_72()
{
  v1 = type metadata accessor for FriendsPlayingAccessoryView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246E90, &unk_24FA05200);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[6];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F512DCC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for FriendsPlayingAccessoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F511E74(a1, a2, v6);
}

unint64_t sub_24F512E6C()
{
  result = qword_27F246F30;
  if (!qword_27F246F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F30);
  }

  return result;
}

unint64_t sub_24F512EC0()
{
  result = qword_27F246F38;
  if (!qword_27F246F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F28, &unk_24FA05400);
    sub_24F512E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F38);
  }

  return result;
}

unint64_t sub_24F512F84()
{
  result = qword_27F246F50;
  if (!qword_27F246F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246F50);
  }

  return result;
}

uint64_t sub_24F512FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC8, &unk_24FA052A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246EC0, &qword_24FA05298);
  sub_24F512AE8();
  swift_getOpaqueTypeConformance2();
  sub_24EAC4450();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F513090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a5;
  v7[11] = a7;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_24F513158;

  return MEMORY[0x28217F228](v7 + 2, v8, v8);
}

uint64_t sub_24F513158()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24E646B78;
  }

  else
  {
    v2 = sub_24F51326C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F51326C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_24E646A64;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v6, v7, v4, v5, v1, v2);
}

uint64_t sub_24F5133A4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v193 = a4;
  v194 = a5;
  *&v220 = a3;
  v222 = a6;
  LODWORD(v219) = a1;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v213);
  v187 = &v166 - v8;
  v9 = type metadata accessor for HeroCardGameHeadingView(0);
  v196 = *(v9 - 8);
  v197 = v9;
  MEMORY[0x28223BE20](v9);
  v195 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v207);
  v198 = &v166 - v11;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241770, &qword_24F9EE478);
  MEMORY[0x28223BE20](v199);
  v201 = &v166 - v12;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241778, &qword_24F9EE480);
  MEMORY[0x28223BE20](v206);
  v208 = &v166 - v13;
  v200 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v200);
  v183 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = &v166 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v170 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = v18;
  v172 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v186 = &v166 - v20;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50, &qword_24F949E80);
  MEMORY[0x28223BE20](v173);
  v175 = (&v166 - v21);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E938, &qword_24F95D578);
  MEMORY[0x28223BE20](v189);
  v174 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v176 = &v166 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v25 - 8);
  v216 = &v166 - v26;
  v27 = type metadata accessor for LeaderboardEntry(0);
  v169 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v215 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F60, &qword_24FA05498);
  MEMORY[0x28223BE20](v211);
  v212 = &v166 - v29;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F68, &qword_24FA054A0);
  MEMORY[0x28223BE20](v202);
  v204 = &v166 - v30;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F70, &qword_24FA054A8);
  MEMORY[0x28223BE20](v188);
  v191 = &v166 - v31;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F78, &qword_24FA054B0);
  MEMORY[0x28223BE20](v203);
  v192 = &v166 - v32;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F80, &qword_24FA054B8);
  MEMORY[0x28223BE20](v210);
  v205 = &v166 - v33;
  v179 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v179);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F88, &qword_24FA054C0);
  MEMORY[0x28223BE20](v181);
  v182 = &v166 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F90, &qword_24FA054C8);
  MEMORY[0x28223BE20](v37);
  v177 = &v166 - v38;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246F98, &qword_24FA054D0);
  MEMORY[0x28223BE20](v180);
  v178 = &v166 - v39;
  v214 = type metadata accessor for PlayerAvatar(0);
  v217 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v168 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = (&v166 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = &v166 - v45;
  v47 = type metadata accessor for CardCompactAvatarView(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246FA0, &qword_24FA054D8);
  MEMORY[0x28223BE20](v190);
  v184 = &v166 - v50;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246FA8, &unk_24FA054E0);
  v221 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v209 = &v166 - v51;
  if (v219 == 4)
  {
    if (v220 < 4u || v220 == 4)
    {
      v63 = sub_24F92CE08();

      if ((v63 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v68 = type metadata accessor for LeaderboardWithFriendCard(0);
    v69 = a2;
    v70 = a2 + *(v68 + 32);
    v71 = (v70 + *(type metadata accessor for CommonCardAttributes(0) + 44));
    v72 = v71[1];
    if (v72)
    {
      v73 = *v71;
      v74 = *(v68 + 40);
      v75 = sub_24F9289E8();
      v76 = v195;
      (*(*(v75 - 8) + 16))(v195, v69 + v74, v75);
      v77 = v197;
      v78 = v198;
      v79 = (v76 + *(v197 + 20));
      *v79 = v73;
      v79[1] = v72;
      sub_24F516FE0(v76, v78, type metadata accessor for HeroCardGameHeadingView);
      (*(v196 + 56))(v78, 0, 1, v77);
    }

    else
    {
      v78 = v198;
      (*(v196 + 56))(v198, 1, 1, v197);
    }

    sub_24E60169C(v78, v201, &qword_27F219E50, &unk_24F94D9F0);
    swift_storeEnumTagMultiPayload();
    sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    sub_24E7179AC();

    v80 = v208;
    sub_24F924E28();
    sub_24E60169C(v80, v204, &qword_27F241778, &qword_24F9EE480);
    swift_storeEnumTagMultiPayload();
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &qword_24F9EE480, sub_24E7179AC);
    v81 = v205;
    sub_24F924E28();
    sub_24E601704(v80, &qword_27F241778, &qword_24F9EE480);
    sub_24E60169C(v81, v212, &qword_27F246F80, &qword_24FA054B8);
    swift_storeEnumTagMultiPayload();
    sub_24F516C70();
    sub_24E701970();
    v82 = v209;
    sub_24F924E28();
    sub_24E601704(v81, &qword_27F246F80, &qword_24FA054B8);
    sub_24E601704(v78, &qword_27F219E50, &unk_24F94D9F0);
    goto LABEL_37;
  }

  v198 = a2;
  v52 = a2;
  v53 = v220;
  if (sub_24E92D030(a1, v52, v220))
  {
    if (a1 == 11)
    {
      v83 = dword_24FA056EC[v53];
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      v85 = v183;
      (*(*(v84 - 8) + 56))(v183, v83, 5, v84);
      v86 = v185;
      sub_24F516FE0(v85, v185, type metadata accessor for CardContentBackgroundStyle);
      sub_24F517D4C(v86, v201, type metadata accessor for CardContentBackgroundStyle);
      swift_storeEnumTagMultiPayload();
      sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      sub_24E7179AC();
      v87 = v208;
      sub_24F924E28();
      sub_24E60169C(v87, v204, &qword_27F241778, &qword_24F9EE480);
      swift_storeEnumTagMultiPayload();
      sub_24F516D28();
      sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &qword_24F9EE480, sub_24E7179AC);
      v88 = v205;
      sub_24F924E28();
      sub_24E601704(v87, &qword_27F241778, &qword_24F9EE480);
      sub_24E60169C(v88, v212, &qword_27F246F80, &qword_24FA054B8);
      swift_storeEnumTagMultiPayload();
      sub_24F516C70();
      sub_24E701970();
      v82 = v209;
      sub_24F924E28();
      sub_24E601704(v88, &qword_27F246F80, &qword_24FA054B8);
      sub_24F517DB4(v86, type metadata accessor for CardContentBackgroundStyle);
LABEL_37:
      v93 = v218;
      goto LABEL_38;
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        if (v53 - 2 >= 4)
        {
          v60 = v184;
          if (!v53)
          {
            swift_storeEnumTagMultiPayload();
            sub_24F516E40();
            sub_24F924E28();
LABEL_27:
            v93 = v218;
            sub_24E60169C(v60, v191, &qword_27F246FA0, &qword_24FA054D8);
            swift_storeEnumTagMultiPayload();
            sub_24F516DB4();
            sub_24E8178E0();
            v94 = v192;
            sub_24F924E28();
            sub_24E60169C(v94, v204, &qword_27F246F78, &qword_24FA054B0);
            swift_storeEnumTagMultiPayload();
            sub_24F516D28();
            sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &qword_24F9EE480, sub_24E7179AC);
            v95 = v205;
            sub_24F924E28();
            sub_24E601704(v94, &qword_27F246F78, &qword_24FA054B0);
            sub_24E60169C(v95, v212, &qword_27F246F80, &qword_24FA054B8);
            swift_storeEnumTagMultiPayload();
            sub_24F516C70();
            sub_24E701970();
            v82 = v209;
            sub_24F924E28();
            sub_24E601704(v95, &qword_27F246F80, &qword_24FA054B8);
            sub_24E601704(v60, &qword_27F246FA0, &qword_24FA054D8);
LABEL_38:
            v117 = v222;
LABEL_39:
            sub_24E6009C8(v82, v117, &qword_27F246FA8, &unk_24FA054E0);
            return (*(v221 + 56))(v117, 0, 1, v93);
          }

          v89 = type metadata accessor for LeaderboardWithFriendCard(0);
          sub_24F517D4C(v198 + *(v89 + 44), v46, type metadata accessor for PlayerAvatar);
          v90 = &v49[*(v47 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v90 = sub_24F923598();
          v90[8] = v91 & 1;
          sub_24F517D4C(v46, v43, type metadata accessor for PlayerAvatar);
          LOBYTE(v238) = 7;
          sub_24F8319B8(v43, &v238, v49);
          sub_24F517DB4(v46, type metadata accessor for PlayerAvatar);
          sub_24F517D4C(v49, v177, type metadata accessor for CardCompactAvatarView);
          swift_storeEnumTagMultiPayload();
          sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
          sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView, &unk_24FA05538);
          v92 = v178;
          sub_24F924E28();
          sub_24E60169C(v92, v182, &qword_27F246F98, &qword_24FA054D0);
          swift_storeEnumTagMultiPayload();
          sub_24F516E40();
          sub_24F924E28();
          sub_24E601704(v92, &qword_27F246F98, &qword_24FA054D0);
          v61 = type metadata accessor for CardCompactAvatarView;
          v62 = v49;
        }

        else
        {
          sub_24F517D4C(v198, v35, type metadata accessor for LeaderboardWithFriendCard);
          v54 = v179;
          v55 = *(v179 + 24);
          v56 = sub_24F923E98();
          (*(*(v56 - 8) + 16))(&v35[v55], v193, v56);
          v35[v54[5]] = v53;
          *&v35[v54[7]] = v194;
          v57 = &v35[v54[8]];
          type metadata accessor for CardSafeArea(0);
          sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);

          *v57 = sub_24F923598();
          v57[8] = v58 & 1;
          sub_24F517D4C(v35, v177, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
          sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView, &unk_24FA05538);
          v59 = v178;
          sub_24F924E28();
          sub_24E60169C(v59, v182, &qword_27F246F98, &qword_24FA054D0);
          swift_storeEnumTagMultiPayload();
          sub_24F516E40();
          v60 = v184;
          sub_24F924E28();
          sub_24E601704(v59, &qword_27F246F98, &qword_24FA054D0);
          v61 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView;
          v62 = v35;
        }

        sub_24F517DB4(v62, v61);
        goto LABEL_27;
      }

      goto LABEL_36;
    }

    if (v53)
    {
      v96 = sub_24F92CE08();

      if ((v96 & 1) == 0)
      {
LABEL_36:
        v116 = v187;
        sub_24E923A20(a1, v198, v53, v193, v194, v187);
        sub_24E60169C(v116, v212, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24F516C70();
        sub_24E701970();
        v82 = v209;
        sub_24F924E28();
        sub_24E601704(v116, &qword_27F214A20, &unk_24F94D670);
        goto LABEL_37;
      }
    }

    else
    {
    }

    v97 = type metadata accessor for LeaderboardWithFriendCard(0);
    v98 = v198;
    v99 = *(v198 + *(v97 + 36));
    v100 = *(v99 + 16);
    v101 = MEMORY[0x277D84F90];
    if (v100)
    {
      v200 = v97;
      v223[0] = MEMORY[0x277D84F90];
      sub_24F457BF8(0, v100, 0);
      v101 = v223[0];
      v102 = v168;
      v103 = v99 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      v201 = *(v169 + 72);
      v167 = v27;
      do
      {
        v219 = v103;
        *&v220 = v100;
        v104 = v215;
        sub_24F517D4C(v103, v215, type metadata accessor for LeaderboardEntry);
        v105 = v104 + *(v27 + 20);
        v106 = *(v105 + 16);
        v207 = *(v105 + 24);
        v208 = v106;

        sub_24F517DB4(v104, type metadata accessor for LeaderboardEntry);
        v107 = type metadata accessor for PlayerAvatar.Overlay(0);
        v108 = *(*(v107 - 8) + 56);
        v109 = v216;
        v108(v216, 1, 1, v107);
        *&v240 = 0;
        v238 = 0u;
        v239 = 0u;
        v110 = v214;
        v111 = *(v214 + 20);
        v108(&v102[v111], 1, 1, v107);
        v112 = &v102[*(v110 + 24)];
        *&v233 = 0;
        v231 = 0u;
        v232 = 0u;
        *v112 = 0u;
        *(v112 + 16) = 0u;
        *(v112 + 32) = 0;
        sub_24E61DA68(&v231, v112, qword_27F21B590, &unk_24F93BE30);
        v113 = v207;
        *v102 = v208;
        *(v102 + 1) = v113;
        sub_24E61DA68(v109, &v102[v111], &qword_27F22DF80, &unk_24F942E50);
        sub_24E61DA68(&v238, v112, qword_27F21B590, &unk_24F93BE30);
        v223[0] = v101;
        v115 = *(v101 + 16);
        v114 = *(v101 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_24F457BF8((v114 > 1), v115 + 1, 1);
          v101 = v223[0];
        }

        *(v101 + 16) = v115 + 1;
        sub_24F516FE0(v102, v101 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v115, type metadata accessor for PlayerAvatar);
        v103 = v219 + v201;
        v100 = v220 - 1;
        v27 = v167;
      }

      while (v220 != 1);
      v98 = v198;
      v97 = v200;
    }

    v118 = v98 + *(v97 + 32);
    v119 = type metadata accessor for CommonCardAttributes(0);
    sub_24E60169C(v118 + *(v119 + 40), v186, &qword_27F213FB0, &qword_24F93E6B0);
    if (qword_27F211940 != -1)
    {
      swift_once();
    }

    v220 = xmmword_27F2543C0;
    v120 = qword_27F2543D0;
    v121 = qword_27F2543D8;
    v122 = sub_24E608A68(qword_2861BE9F8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD0, &unk_24F93E930);
    swift_arrayDestroy();
    *&v249[8] = v220;
    *v249 = 0x4044000000000000;
    *&v249[24] = v120;
    *&v250 = v121;
    *(&v250 + 1) = v122;
    LOBYTE(v251) = 0;
    *(&v251 + 1) = 3;
    KeyPath = swift_getKeyPath();
    v124 = v175;
    *v175 = KeyPath;
    *(v124 + 8) = 0;
    LOBYTE(v231) = 0;
    sub_24F926F28();
    v125 = *(&v238 + 1);
    *(v124 + 16) = v238;
    v124[3] = v125;
    if (*(v101 + 16) >= 4uLL)
    {
      sub_24E6B8064(v101, v101 + ((*(v217 + 80) + 32) & ~*(v217 + 80)), 0, 7uLL);
      v127 = v126;

      v101 = v127;
    }

    *&v220 = v101;
    v124[4] = v101;
    v128 = v173;
    v129 = v186;
    sub_24E60169C(v186, v124 + *(v173 + 44), &qword_27F213FB0, &qword_24F93E6B0);
    v130 = (v124 + v128[13]);
    v131 = *&v249[16];
    *v130 = *v249;
    v130[1] = v131;
    v132 = v251;
    v130[2] = v250;
    v130[3] = v132;
    *(v124 + v128[12]) = 0xBFC657184AE74487;
    *(v124 + v128[14]) = 0x3FF0000000000000;
    v133 = v129;
    v134 = v172;
    sub_24E6009C8(v133, v172, &qword_27F213FB0, &qword_24F93E6B0);
    v135 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v136 = (v171 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 71) & 0xFFFFFFFFFFFFFFF8;
    v139 = v124;
    v140 = swift_allocObject();
    sub_24E6009C8(v134, v140 + v135, &qword_27F213FB0, &qword_24F93E6B0);
    *(v140 + v136) = 0xBFC657184AE74487;
    v141 = (v140 + v137);
    v142 = v139;
    v143 = v251;
    v141[2] = v250;
    v141[3] = v143;
    v144 = *&v249[16];
    *v141 = *v249;
    v141[1] = v144;
    *(v140 + v138) = 0x3FF0000000000000;
    v145 = (v139 + v128[15]);
    *v145 = sub_24E63DE54;
    v145[1] = v140;
    sub_24E63D388(v249, &v238);
    if (qword_27F211968 != -1)
    {
      swift_once();
    }

    v146 = xmmword_27F254460;
    v147 = qword_27F254470;
    v148 = qword_27F254478;
    v149 = sub_24F927618();
    v151 = v150;
    v152 = v130[3];
    v229 = v130[2];
    v230 = v152;
    v153 = v130[1];
    v228[0] = *v130;
    v228[1] = v153;
    v154 = *(v220 + 16);
    v224 = v228[0];
    v225 = v153;
    v226 = v229;
    v227 = v152;
    v233 = v229;
    v234 = v152;
    v231 = v228[0];
    v232 = v153;
    v220 = xmmword_24FA05420;
    *(v235 + 8) = xmmword_24FA05420;
    *&v235[0] = v154;
    *(&v235[1] + 1) = v148;
    *v236 = v147;
    *&v236[8] = v146;
    *&v236[24] = v149;
    v237 = v150;
    v155 = v174;
    sub_24E60169C(v142, v174, &qword_27F214A50, &qword_24F949E80);
    v156 = v155 + *(v189 + 36);
    v157 = *&v236[16];
    *(v156 + 96) = *v236;
    *(v156 + 112) = v157;
    *(v156 + 128) = v237;
    v158 = v234;
    *(v156 + 32) = v233;
    *(v156 + 48) = v158;
    v159 = v235[1];
    *(v156 + 64) = v235[0];
    *(v156 + 80) = v159;
    v160 = v232;
    *v156 = v231;
    *(v156 + 16) = v160;
    v238 = v224;
    v239 = v225;
    v240 = v226;
    v241 = v227;
    v243 = v220;
    v242 = v154;
    v244 = v148;
    v245 = v147;
    v246 = v146;
    v247 = v149;
    v248 = v151;
    sub_24E63D388(v228, v223);

    sub_24E60169C(&v231, v223, &qword_27F21E9A8, &unk_24F95D5B8);
    sub_24E601704(&v238, &qword_27F21E9A8, &unk_24F95D5B8);
    sub_24E601704(v142, &qword_27F214A50, &qword_24F949E80);
    v161 = v176;
    sub_24E6009C8(v155, v176, &qword_27F21E938, &qword_24F95D578);
    sub_24E60169C(v161, v191, &qword_27F21E938, &qword_24F95D578);
    swift_storeEnumTagMultiPayload();
    sub_24F516DB4();
    sub_24E8178E0();
    v162 = v192;
    sub_24F924E28();
    sub_24E60169C(v162, v204, &qword_27F246F78, &qword_24FA054B0);
    swift_storeEnumTagMultiPayload();
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &qword_24F9EE480, sub_24E7179AC);
    v163 = v205;
    sub_24F924E28();
    sub_24E601704(v162, &qword_27F246F78, &qword_24FA054B0);
    sub_24E60169C(v163, v212, &qword_27F246F80, &qword_24FA054B8);
    swift_storeEnumTagMultiPayload();
    sub_24F516C70();
    sub_24E701970();
    v164 = v209;
    sub_24F924E28();
    v165 = v163;
    v82 = v164;
    sub_24E601704(v165, &qword_27F246F80, &qword_24FA054B8);
    sub_24E601704(v161, &qword_27F21E938, &qword_24F95D578);
    v117 = v222;
    v93 = v218;
    goto LABEL_39;
  }

LABEL_12:
  v64 = v222;
  v65 = *(v221 + 56);
  v66 = v218;

  return v65(v64, 1, 1, v66);
}

void sub_24F5153F4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(0);
  v6 = *(v0 + *(v5 + 20)) - 3;
  v7 = (v0 + *(v5 + 32));
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v6 > 1)
  {

    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v13 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v8 = v15;
    }

    swift_getKeyPath();
    v15 = v8;
    sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      sub_24F92BDC8();
      v10 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v8 = v15;
    }

    swift_getKeyPath();
    v15 = v8;
    sub_24F517E14(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v11 = *(v8 + 16);

    v12 = sub_24F925868();
    sub_24EA91914(v12, v11);
  }
}

uint64_t sub_24F51570C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247008, &qword_24FA05588);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v37 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247010, &qword_24FA05590);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018, &qword_24FA05598);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247020, &qword_24FA055A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v37 - v14;
  v16 = *(v2 + *(type metadata accessor for LeaderboardWithFriendCard(0) + 36));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = type metadata accessor for LeaderboardEntry(0);
    v19 = *(v18 - 8);
    v20 = (v16 + *(v18 + 28) + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
    v21 = *v20;
    v22 = *(v20 + *(v19 + 72) * (v17 - 1));
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  sub_24F515C54(v2, v21 < v22, v6);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v9, &qword_27F247008, &qword_24FA05588);
  v23 = &v9[*(v7 + 36)];
  v24 = v37[5];
  *(v23 + 4) = v37[4];
  *(v23 + 5) = v24;
  *(v23 + 6) = v37[6];
  v25 = v37[1];
  *v23 = v37[0];
  *(v23 + 1) = v25;
  v26 = v37[3];
  *(v23 + 2) = v37[2];
  *(v23 + 3) = v26;
  v27 = sub_24F927618();
  v29 = v28;
  v30 = &v12[*(v10 + 36)];
  sub_24F516258(v2, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247028, &qword_24FA055A8) + 36));
  *v31 = v27;
  v31[1] = v29;
  sub_24E6009C8(v9, v12, &qword_27F247010, &qword_24FA05590);
  if (*(v2 + *(type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(0) + 20)) > 4u)
  {

    v33 = 1;
    sub_24F516948(1);
    sub_24E601704(v12, &qword_27F247018, &qword_24FA05598);
  }

  else
  {
    v32 = sub_24F92CE08();

    sub_24F516948(v32 & 1);
    sub_24E601704(v12, &qword_27F247018, &qword_24FA05598);
    v33 = sub_24F92CE08();
  }

  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v15, a1, &qword_27F247020, &qword_24FA055A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247030, &qword_24FA055D8);
  v36 = a1 + *(result + 36);
  *v36 = v33 & 1;
  *(v36 + 8) = KeyPath;
  *(v36 + 16) = 0;
  return result;
}

uint64_t sub_24F515C54@<X0>(uint64_t a1@<X0>, char a2@<W1>, int *a3@<X8>)
{
  v6 = type metadata accessor for CardLeaderboardView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247108, &qword_24FA05670);
  MEMORY[0x28223BE20](v42);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247110, &qword_24FA05678);
  MEMORY[0x28223BE20](v11);
  v13 = (&v41 - v12);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247080, &qword_24FA055F8);
  MEMORY[0x28223BE20](v43);
  v15 = &v41 - v14;
  v16 = *(a1 + *(type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(0) + 20));
  if (v16 - 2 >= 3)
  {
    v41 = v6;
    if (v16 >= 2)
    {
      v29 = *(a1 + *(type metadata accessor for LeaderboardWithFriendCard(0) + 36));

      sub_24F5153F4();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      type metadata accessor for HeroSafeAreaMetrics(0);
      sub_24F517E14(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
      v38 = sub_24F923598();
      *&v45 = v29;
      BYTE8(v45) = 5;
      BYTE9(v45) = a2 & 1;
      BYTE10(v45) = 5;
      *&v46 = v31;
      *(&v46 + 1) = v33;
      *v47 = v35;
      *&v47[8] = v37;
      *&v47[16] = v38;
      v47[24] = v39 & 1;
      v40 = v46;
      *v13 = v45;
      v13[1] = v40;
      v13[2] = *v47;
      *(v13 + 41) = *&v47[9];
      swift_storeEnumTagMultiPayload();
      sub_24F517E5C(&v45, v44);
      sub_24F5179F8();
      sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView, &unk_24FA33C88);
      sub_24F924E28();
      sub_24E60169C(v15, v10, &qword_27F247080, &qword_24FA055F8);
      swift_storeEnumTagMultiPayload();
      sub_24F51793C();
      sub_24F924E28();
      sub_24F517EB8(&v45);
      return sub_24E601704(v15, &qword_27F247080, &qword_24FA055F8);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_24F51793C();
      return sub_24F924E28();
    }
  }

  else
  {
    v17 = *(type metadata accessor for LeaderboardWithFriendCard(0) + 36);
    v41 = a3;
    v18 = *(a1 + v17);

    sub_24F5153F4();
    *v8 = v18;
    v8[8] = v16;
    v8[9] = a2 & 1;
    v8[10] = v16;
    *(v8 + 2) = v19;
    *(v8 + 3) = v20;
    *(v8 + 4) = v21;
    *(v8 + 5) = v22;
    *(v8 + 6) = 0;
    *(v8 + 7) = swift_getKeyPath();
    v8[64] = 0;
    v23 = v6[10];
    *&v8[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v24 = &v8[v6[11]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = &v8[v6[12]];
    v44[0] = sub_24E609BDC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247118, &qword_24FA056E0);
    sub_24F926F28();
    v26 = *(&v45 + 1);
    *v25 = v45;
    *(v25 + 1) = v26;
    v27 = &v8[v6[13]];
    *v27 = 0xD000000000000018;
    *(v27 + 1) = 0x800000024FA76070;
    sub_24F517D4C(v8, v13, type metadata accessor for CardLeaderboardView);
    swift_storeEnumTagMultiPayload();
    sub_24F5179F8();
    sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView, &unk_24FA33C88);
    sub_24F924E28();
    sub_24E60169C(v15, v10, &qword_27F247080, &qword_24FA055F8);
    swift_storeEnumTagMultiPayload();
    sub_24F51793C();
    sub_24F924E28();
    sub_24E601704(v15, &qword_27F247080, &qword_24FA055F8);
    return sub_24F517DB4(v8, type metadata accessor for CardLeaderboardView);
  }
}

uint64_t sub_24F516258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470A0, &qword_24FA05600);
  MEMORY[0x28223BE20](v51);
  *&v54 = &v43 - v2;
  *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470A8, &qword_24FA05608);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470B0, &qword_24FA05610);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470B8, &qword_24FA05618);
  MEMORY[0x28223BE20](v10);
  v12 = (&v43 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470C0, &qword_24FA05620);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470C8, &qword_24FA05628);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(0);
  v20 = *(v55 + v19[5]);
  if (v20 >= 4)
  {
    v43 = v4;
    v45 = v15;
    v22 = v52;
    v46 = v12;
    v23 = v53;
    v24 = v54;
    v47 = v13;
    v44 = v9;
    v48 = v18;
    v49 = v16;
    v50 = v10;
    if (v20 == 4)
    {
      v39 = v48;
      if (qword_27F20FFA0 != -1)
      {
        swift_once();
      }

      v25 = xmmword_27F39B048;

      v53 = unk_27F39B060;
      v54 = *(&xmmword_27F39B048 + 8);
      sub_24F5153F4();
      v27 = v26;
      v28 = sub_24F925868();
      v29 = sub_24EA91914(v28, v27);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = sub_24F925808();
      LOBYTE(v57[0]) = 0;
      v37 = v45;
      *v45 = v25;
      v38 = v54;
      *(v37 + 3) = v53;
      *(v37 + 1) = v38;
      *(v37 + 40) = v36;
      *(v37 + 6) = v29;
      v37[7] = v31;
      v37[8] = v33;
      v37[9] = v35;
      *(v37 + 80) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470E0, &qword_24FA05630);
      sub_24F517AD8();
      sub_24F517B64();
      sub_24F924E28();
      v40 = &qword_27F2470C8;
      v41 = &qword_24FA05628;
      sub_24E60169C(v39, v46, &qword_27F2470C8, &qword_24FA05628);
      swift_storeEnumTagMultiPayload();
      sub_24F517A4C();
      sub_24F924E28();
    }

    else
    {
      sub_24E923A20(0xC, v55, 5u, v55 + v19[6], *(v55 + v19[7]), v6);
      v57[3] = sub_24F925048();
      v57[4] = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(v57);
      sub_24F925258();
      sub_24E615E00(v57, v22 + *(v23 + 36));
      sub_24E60169C(v6, v22, &qword_27F214A20, &unk_24F94D670);
      sub_24E60169C(v22, v24, &qword_27F2470A8, &qword_24FA05608);
      swift_storeEnumTagMultiPayload();
      sub_24F517CA8();
      sub_24E701970();
      v39 = v44;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F2470A8, &qword_24FA05608);
      sub_24E601704(v6, &qword_27F214A20, &unk_24F94D670);
      __swift_destroy_boxed_opaque_existential_1(v57);
      *(v39 + *(v7 + 36)) = sub_24F925808();
      v40 = &qword_27F2470B0;
      v41 = &qword_24FA05610;
      sub_24E60169C(v39, v45, &qword_27F2470B0, &qword_24FA05610);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2470E0, &qword_24FA05630);
      sub_24F517AD8();
      sub_24F517B64();
      v42 = v48;
      sub_24F924E28();
      sub_24E60169C(v42, v46, &qword_27F2470C8, &qword_24FA05628);
      swift_storeEnumTagMultiPayload();
      sub_24F517A4C();
      sub_24F924E28();
      sub_24E601704(v42, &qword_27F2470C8, &qword_24FA05628);
    }

    return sub_24E601704(v39, v40, v41);
  }

  else
  {
    *v12 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24F517A4C();
    return sub_24F924E28();
  }
}