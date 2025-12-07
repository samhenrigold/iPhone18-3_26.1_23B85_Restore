unint64_t ChallengesAllGamesShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x73656D6167;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v8 = sub_24E70EA00(&qword_27F219830, &qword_27F217960, &protocol conformance descriptor for Game, MEMORY[0x277D22590]);
  *(inited + 48) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;
  *(inited + 144) = 0x706574537478656ELL;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = &type metadata for ChallengesGamePickerNextStep;
  *(inited + 192) = sub_24E606E50();
  *(inited + 160) = v6;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_24E70E340()
{
  v1 = 0x444965676170;
  if (*v0 != 1)
  {
    v1 = 0x706574537478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D6167;
  }
}

uint64_t sub_24E70E394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E70EC80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E70E3BC(uint64_t a1)
{
  v2 = sub_24E70E9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E70E3F8(uint64_t a1)
{
  v2 = sub_24E70E9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllGamesShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219838, &qword_24F94CCD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  HIDWORD(v12) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E70E9AC();

  sub_24F92D128();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  sub_24E70EA00(&qword_27F219848, &qword_27F214950, &protocol conformance descriptor for Game, MEMORY[0x277D83948]);
  sub_24F92CD48();

  if (!v2)
  {
    v10 = BYTE4(v12);
    v17 = 1;
    sub_24F92CD08();
    v16 = v10;
    v15 = 2;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesAllGamesShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219850, &qword_24F94CCD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E70E9AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v22 = 0;
  sub_24E70EA00(&qword_27F219858, &qword_27F214968, &protocol conformance descriptor for Game, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v18 = a2;
  v9 = v23;
  v21 = 1;
  v10 = sub_24F92CC28();
  v17 = v11;
  v19 = 2;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v14 = v17;
  v13 = v18;
  *v18 = v9;
  v13[1] = v10;
  v13[2] = v14;
  *(v13 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E70E9AC()
{
  result = qword_27F219840;
  if (!qword_27F219840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219840);
  }

  return result;
}

uint64_t sub_24E70EA00(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FD0, &qword_24F944DC0);
    sub_24E70EA88(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E70EA88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Game(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E70EACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24E70EB14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E70EB7C()
{
  result = qword_27F219860;
  if (!qword_27F219860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219860);
  }

  return result;
}

unint64_t sub_24E70EBD4()
{
  result = qword_27F219868;
  if (!qword_27F219868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219868);
  }

  return result;
}

unint64_t sub_24E70EC2C()
{
  result = qword_27F219870[0];
  if (!qword_27F219870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F219870);
  }

  return result;
}

uint64_t sub_24E70EC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
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

unint64_t sub_24E70EDAC()
{
  result = qword_27F216290;
  if (!qword_27F216290)
  {
    type metadata accessor for DraftPlayTogetherAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216290);
  }

  return result;
}

uint64_t sub_24E70EE0C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v107 = sub_24F928AE8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v10 - 8);
  v124 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v130 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v14 - 8);
  v122 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v137 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = &v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v22 - 8);
  v120 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v135 = &v104 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v26 - 8);
  v123 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v132 = &v104 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  MEMORY[0x28223BE20](v33);
  v131 = &v104 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v35 - 8);
  v119 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v134 = &v104 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v104 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v104 - v43;
  type metadata accessor for GameActivityDraftBuilder();
  v127 = a2;
  sub_24F928F28();
  v125 = v141;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v45 = sub_24F9220D8();
  __swift_project_value_buffer(v45, qword_27F39E778);
  v46 = sub_24F9220B8();
  v47 = sub_24F92BD98();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24E5DD000, v46, v47, "Start drafting a challenge", v48, 2u);
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  v49 = type metadata accessor for DraftPlayTogetherAction(0);
  v50 = v49;
  v51 = *(a1 + *(v49 + 48));
  if (!v51)
  {
    sub_24E60169C(a1 + *(v49 + 40), v44, &qword_27F212A08, &qword_24F9397D0);
    v52 = type metadata accessor for ChallengeDefinitionDetail(0);
    if ((*(*(v52 - 8) + 48))(v44, 1, v52) == 1)
    {
      sub_24E601704(v44, &qword_27F212A08, &qword_24F9397D0);
    }

    else
    {
      v53 = *&v44[*(v52 + 40)];

      sub_24E710018(v44);
      if (*(v53 + 16))
      {
        v51 = *(v53 + 32);

        goto LABEL_12;
      }
    }

    v51 = 0;
  }

LABEL_12:
  v118 = v51;
  sub_24E60169C(a1 + v50[13], v32, &qword_27F2198F8, &unk_24F94CFA0);
  v54 = sub_24F920A88();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v57 = v56(v32, 1, v54);
  v114 = v55;
  v113 = v54;
  if (v57 != 1)
  {
    v59 = v131;
    (*(v55 + 32))(v131, v32, v54);
    (*(v55 + 56))(v59, 0, 1, v54);

    goto LABEL_22;
  }

  sub_24E60169C(a1 + v50[10], v41, &qword_27F212A08, &qword_24F9397D0);
  v58 = type metadata accessor for ChallengeDefinitionDetail(0);
  if ((*(*(v58 - 8) + 48))(v41, 1, v58) == 1)
  {

    sub_24E601704(v41, &qword_27F212A08, &qword_24F9397D0);
  }

  else
  {
    v60 = *&v41[*(v58 + 48)];

    sub_24E710018(v41);
    if (*(v60 + 16))
    {
      v61 = v131;
      (*(v55 + 16))(v131, v60 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v54);

      v62 = 0;
      goto LABEL_20;
    }
  }

  v62 = 1;
  v61 = v131;
LABEL_20:
  (*(v55 + 56))(v61, v62, 1, v54);
  v59 = v61;
  if (v56(v32, 1, v54) != 1)
  {
    sub_24E601704(v32, &qword_27F2198F8, &unk_24F94CFA0);
  }

LABEL_22:
  sub_24E60169C(a1 + v50[8], v135, &qword_27F212B28, &qword_24F939910);
  v63 = sub_24F9289E8();
  v64 = *(*(v63 - 8) + 56);
  v64(v136, 1, 1, v63);
  sub_24E60169C(a1 + v50[9], v137, &qword_27F212890, &qword_24F939670);
  sub_24E60169C(a1 + v50[10], v134, &qword_27F212A08, &qword_24F9397D0);
  v65 = v50[11];
  v116 = v50;
  sub_24E60169C(a1 + v65, v130, &qword_27F2142A0, &unk_24F94CF90);
  v66 = a1;
  v67 = sub_24F920418();
  v111 = *(*(v67 - 8) + 56);
  v111(v133, 1, 1, v67);
  sub_24E60169C(v59, v132, &qword_27F2198F8, &unk_24F94CFA0);
  v117 = v66;
  *&v143[9] = *(v66 + 41);
  v68 = v66[1];
  v141 = *v66;
  v142 = v68;
  *v143 = v66[2];
  v128 = *(v66 + 8);
  v129 = *(v66 + 10);
  v69 = (v66 + v50[14]);
  v70 = v69[1];
  v115 = *v69;
  v112 = v70;
  type metadata accessor for GameActivityDraft(0);
  v71 = swift_allocObject();
  v72 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  v73 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v73 - 8) + 56))(v71 + v72, 1, 1, v73);
  v74 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
  v64(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork, 1, 1, v63);
  v75 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  v76 = type metadata accessor for Leaderboard(0);
  (*(*(v76 - 8) + 56))(v71 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  v78 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v78 - 8) + 56))(v71 + v77, 1, 1, v78);
  v79 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v109 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v80 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v80 - 8) + 56))(v71 + v79, 1, 1, v80);
  v110 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v111(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance, 1, 1, v67);
  v81 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
  v111 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  (*(v114 + 56))(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit, 1, 1, v113);
  v82 = (v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v82 = 0;
  v82[1] = 0;
  sub_24E6F261C(&v141, &v140);

  sub_24F91FDB8();
  v83 = v120;
  sub_24E60169C(v135, v120, &qword_27F212B28, &qword_24F939910);
  sub_24E601704(v71 + v72, &qword_27F212B28, &qword_24F939910);
  sub_24E6009C8(v83, v71 + v72, &qword_27F212B28, &qword_24F939910);
  v84 = v121;
  sub_24E60169C(v136, v121, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v71 + v74, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E6009C8(v84, v71 + v74, &qword_27F213FB0, &qword_24F93E6B0);
  v85 = v122;
  sub_24E60169C(v137, v122, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v71 + v75, &qword_27F212890, &qword_24F939670);
  sub_24E6009C8(v85, v71 + v75, &qword_27F212890, &qword_24F939670);
  v86 = v119;
  sub_24E60169C(v134, v119, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v71 + v77, &qword_27F212A08, &qword_24F9397D0);
  sub_24E6009C8(v86, v71 + v77, &qword_27F212A08, &qword_24F9397D0);

  *(v71 + v81) = v118;
  v87 = v130;
  v88 = v124;
  sub_24E60169C(v130, v124, &qword_27F2142A0, &unk_24F94CF90);
  v89 = v109;
  sub_24E601704(v71 + v109, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E6009C8(v88, v71 + v89, &qword_27F2142A0, &unk_24F94CF90);
  v90 = v133;
  v91 = v126;
  sub_24E60169C(v133, v126, &qword_27F2142B8, &unk_24F954820);
  v92 = v110;
  sub_24E601704(v71 + v110, &qword_27F2142B8, &unk_24F954820);
  sub_24E6009C8(v91, v71 + v92, &qword_27F2142B8, &unk_24F954820);
  v93 = v132;
  v94 = v123;
  sub_24E60169C(v132, v123, &qword_27F2198F8, &unk_24F94CFA0);
  v95 = v111;
  sub_24E601704(v111 + v71, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E6009C8(v94, v95 + v71, &qword_27F2198F8, &unk_24F94CFA0);
  v96 = (v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v97 = v142;
  *v96 = v141;
  v96[1] = v97;
  v96[2] = *v143;
  *(v96 + 41) = *&v143[9];
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(MEMORY[0x277D84F90]);
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v128;
  *(v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v129;
  sub_24F34EFA4(v115, v112);
  sub_24E601704(v93, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E601704(v90, &qword_27F2142B8, &unk_24F954820);
  sub_24E601704(v87, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E601704(v134, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v137, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v136, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v135, &qword_27F212B28, &qword_24F939910);
  v98 = v125;
  swift_beginAccess();
  *(v98 + 16) = v71;

  type metadata accessor for ASKBagContract(0);
  v99 = v127;
  sub_24F928F28();
  sub_24E60169C(v117 + v116[15], &v138, &qword_27F213EA8, &unk_24F93D030);
  if (v139)
  {
    sub_24E612C80(&v138, &v140);
    type metadata accessor for DraftPlayTogetherActionImplementation(0, v108, v100, v101);
    swift_getWitnessTable();
    v102 = sub_24F1489C4(&v140, v99);

    __swift_destroy_boxed_opaque_existential_1(&v140);
  }

  else
  {
    sub_24E601704(&v138, qword_27F21B590, &unk_24F93BE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    (*(v106 + 104))(v105, *MEMORY[0x277D21CA8], v107);
    v102 = sub_24F92A988();
  }

  sub_24E601704(v131, &qword_27F2198F8, &unk_24F94CFA0);
  return v102;
}

uint64_t sub_24E710018(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E710088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24F928AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24E710114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for CompleteWelcomeMoltresAction(uint64_t a1)
{
  result = qword_27F219900;
  if (!qword_27F219900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7101DC(uint64_t a1)
{
  sub_24E659BE8();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E710260(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219920, &qword_24F94D050);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7108C4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCE8();
  if (!v1)
  {
    type metadata accessor for CompleteWelcomeMoltresAction(0);
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E710408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_24F928AD8();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219910, &qword_24F94D048);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CompleteWelcomeMoltresAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7108C4();
  sub_24F92D108();
  if (!v2)
  {
    v18 = v8;
    v11 = v21;
    v12 = v22;
    v25 = 0;
    v13 = v23;
    *v10 = sub_24F92CC08();
    v10[8] = v14 & 1;
    v24 = 1;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v17 = v5;
    sub_24F92CC68();
    (*(v11 + 8))(v7, v13);
    (*(v19 + 32))(&v10[*(v18 + 20)], v17, v12);
    sub_24E710918(v10, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7106E0()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_24E71072C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x800000024FA462B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24E71081C(uint64_t a1)
{
  v2 = sub_24E7108C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E710858(uint64_t a1)
{
  v2 = sub_24E7108C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7108C4()
{
  result = qword_27F219918;
  if (!qword_27F219918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219918);
  }

  return result;
}

uint64_t sub_24E710918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteWelcomeMoltresAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E710990()
{
  result = qword_27F219928;
  if (!qword_27F219928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219928);
  }

  return result;
}

unint64_t sub_24E7109E8()
{
  result = qword_27F219930;
  if (!qword_27F219930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219930);
  }

  return result;
}

unint64_t sub_24E710A40()
{
  result = qword_27F219938;
  if (!qword_27F219938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219938);
  }

  return result;
}

uint64_t BagProfile.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BagProfile.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BagProfile.stubs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BagProfile(0) + 24);
  v4 = sub_24F92A3E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BagProfile(uint64_t a1)
{
  result = qword_27F219940;
  if (!qword_27F219940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double BagProfile.overrides.getter()
{
  type metadata accessor for BagProfile(0);

  return result;
}

uint64_t BagProfile.init(name:version:stubs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = type metadata accessor for BagProfile(0);
  v9 = *(v8 + 24);
  v10 = sub_24F92A3E8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a6[v9], a5, v10);
  v12 = sub_24E609EE0(MEMORY[0x277D84F90]);
  result = (*(v11 + 8))(a5, v10);
  *&a6[*(v8 + 28)] = v12;
  return result;
}

uint64_t BagProfile.init(name:version:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for BagProfile(0);
  result = sub_24F92A3D8();
  *(a6 + *(v8 + 28)) = a5;
  return result;
}

uint64_t sub_24E710D28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A3E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E710DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A3E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E710E8C(uint64_t a1)
{
  sub_24F92A3E8();
  if (v1 <= 0x3F)
  {
    sub_24E710F20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E710F20(uint64_t a1)
{
  if (!qword_27F219950)
  {
    type metadata accessor for AMSBagKey(255);
    sub_24F92A388();
    sub_24E710F9C();
    v1 = sub_24F92AEA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F219950);
    }
  }
}

unint64_t sub_24E710F9C()
{
  result = qword_27F2122C8;
  if (!qword_27F2122C8)
  {
    type metadata accessor for AMSBagKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2122C8);
  }

  return result;
}

uint64_t sub_24E711008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958, &unk_24F94D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E7110E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958, &unk_24F94D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PickActivityTransitionView(uint64_t a1)
{
  result = qword_27F219960;
  if (!qword_27F219960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7111FC(uint64_t a1)
{
  sub_24E711298(319);
  if (v1 <= 0x3F)
  {
    sub_24E7112FC();
    if (v2 <= 0x3F)
    {
      sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E711298(uint64_t a1)
{
  if (!qword_27F219970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219978, &qword_24F94D1C0);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F219970);
    }
  }
}

unint64_t sub_24E7112FC()
{
  result = qword_27F219980;
  if (!qword_27F219980)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F219980);
  }

  return result;
}

uint64_t sub_24E711384@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219988, &qword_24F94D220);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v31 - v4;
  v5 = type metadata accessor for PickActivityTransitionView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219990, &qword_24F94D228);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219998, &qword_24F94D230);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  MEMORY[0x28223BE20](v12);
  v32 = &v31 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A0, &unk_24F94D238);
  MEMORY[0x28223BE20](v36);
  v33 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958, &unk_24F94D190);
  sub_24F926F58();
  sub_24E711C5C(v1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_24E711DE0(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A8, &qword_24F94D248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0, &unk_24F94D250);
  sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
  sub_24E711ED0();
  sub_24E714410();
  v18 = v32;
  sub_24F921918();
  v19 = (v1 + *(v6 + 28));
  sub_24F926F58();
  v20 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v21 = MEMORY[0x28223BE20](v20);
  (*(v23 + 16))(&v31 - v22, v21);
  v24 = v37;
  sub_24F928D38();
  v25 = sub_24E602068(&qword_27F219DD8, &qword_27F219998, &qword_24F94D230, MEMORY[0x277D7EB38]);
  v26 = sub_24E602068(&qword_27F219DE0, &qword_27F219988, &qword_24F94D220, MEMORY[0x277D21CF8]);
  v28 = v33;
  v27 = v34;
  v29 = v38;
  sub_24F925FC8();
  (*(v39 + 8))(v24, v29);
  sub_24E71450C(v11);
  (*(v35 + 8))(v18, v27);
  v41 = v27;
  v42 = v29;
  v43 = v25;
  v44 = v26;
  swift_getOpaqueTypeConformance2();
  sub_24F923FC8();
  return sub_24E714574(v28);
}

__n128 sub_24E711924@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v22[1] = a2;
  v24 = a4;
  v5 = sub_24F921CB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DE8, &qword_24FA07590);
  v13 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v15 = v22 - v14;
  v16 = a1;

  sub_24F921A18();
  (*(v6 + 104))(v8, *MEMORY[0x277D7ECB0], v5);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
  sub_24F925E38();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  sub_24F927618();
  sub_24F9242E8();
  v17 = v24;
  (*(v13 + 32))(v24, v15, v23);
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199B0, &unk_24F94D250) + 36);
  v19 = v30;
  *(v18 + 64) = v29;
  *(v18 + 80) = v19;
  *(v18 + 96) = v31;
  v20 = v26;
  *v18 = v25;
  *(v18 + 16) = v20;
  result = v28;
  *(v18 + 32) = v27;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_24E711C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickActivityTransitionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E711CC0()
{
  v1 = (type metadata accessor for PickActivityTransitionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219978, &qword_24F94D1C0);
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219958, &unk_24F94D190);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[7]));

  return swift_deallocObject();
}

uint64_t sub_24E711DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickActivityTransitionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E711ED0()
{
  result = qword_27F2199B8;
  if (!qword_27F2199B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199A8, &qword_24F94D248);
    sub_24E711F5C();
    sub_24E713C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199B8);
  }

  return result;
}

unint64_t sub_24E711F5C()
{
  result = qword_27F2199C0;
  if (!qword_27F2199C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199C8, &qword_24F9F8890);
    sub_24E711FE8();
    sub_24E71335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199C0);
  }

  return result;
}

unint64_t sub_24E711FE8()
{
  result = qword_27F2199D0;
  if (!qword_27F2199D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199D8, &unk_24F94D260);
    sub_24E712074();
    sub_24E71304C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199D0);
  }

  return result;
}

unint64_t sub_24E712074()
{
  result = qword_27F2199E0;
  if (!qword_27F2199E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199E8, &unk_24F9F8880);
    sub_24E712100();
    sub_24E7121E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199E0);
  }

  return result;
}

unint64_t sub_24E712100()
{
  result = qword_27F2199F0;
  if (!qword_27F2199F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199F8, &qword_24F94D270);
    sub_24E71218C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2199F0);
  }

  return result;
}

unint64_t sub_24E71218C()
{
  result = qword_27F219A00;
  if (!qword_27F219A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A00);
  }

  return result;
}

unint64_t sub_24E7121E0()
{
  result = qword_27F219A08;
  if (!qword_27F219A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A10, &qword_24F94D278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A18, &unk_24F94D280);
    type metadata accessor for FlowAction(255);
    sub_24E712330();
    sub_24E7143C8(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
    sub_24E7143C8(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    swift_getOpaqueTypeConformance2();
    sub_24E712FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A08);
  }

  return result;
}

unint64_t sub_24E712330()
{
  result = qword_27F219A20;
  if (!qword_27F219A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A18, &unk_24F94D280);
    sub_24E7123BC();
    sub_24E712F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A20);
  }

  return result;
}

unint64_t sub_24E7123BC()
{
  result = qword_27F219A28;
  if (!qword_27F219A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A30, &unk_24F9F8900);
    sub_24E712448();
    sub_24E712988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A28);
  }

  return result;
}

unint64_t sub_24E712448()
{
  result = qword_27F219A38;
  if (!qword_27F219A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A40, &unk_24F94D290);
    sub_24E7124D4();
    sub_24E712700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A38);
  }

  return result;
}

unint64_t sub_24E7124D4()
{
  result = qword_27F219A48;
  if (!qword_27F219A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A50, &unk_24F9F8910);
    sub_24E712560();
    sub_24E71264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A48);
  }

  return result;
}

unint64_t sub_24E712560()
{
  result = qword_27F219A58;
  if (!qword_27F219A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A60, &unk_24F94D2A0);
    sub_24E7143C8(&qword_27F219A68, type metadata accessor for LibraryPageView, &unk_24F95DFFC);
    sub_24E7143C8(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView, &unk_24FA362C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A58);
  }

  return result;
}

unint64_t sub_24E71264C()
{
  result = qword_27F219A78;
  if (!qword_27F219A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A80, &unk_24F9F8920);
    sub_24E7143C8(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A78);
  }

  return result;
}

unint64_t sub_24E712700()
{
  result = qword_27F219A90;
  if (!qword_27F219A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219A98, &unk_24F94D2B0);
    sub_24E71278C();
    sub_24E712878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219A90);
  }

  return result;
}

unint64_t sub_24E71278C()
{
  result = qword_27F219AA0;
  if (!qword_27F219AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AA8, &unk_24F9F8930);
    sub_24E7143C8(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
    sub_24E7143C8(&qword_27F219AB0, type metadata accessor for AchievementsPageView, &unk_24F9D2588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AA0);
  }

  return result;
}

unint64_t sub_24E712878()
{
  result = qword_27F219AB8;
  if (!qword_27F219AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AC0, &unk_24F94D2C0);
    sub_24E7143C8(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView, &unk_24F9D44F8);
    sub_24E712934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AB8);
  }

  return result;
}

unint64_t sub_24E712934()
{
  result = qword_27F219AD0;
  if (!qword_27F219AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AD0);
  }

  return result;
}

unint64_t sub_24E712988()
{
  result = qword_27F219AD8;
  if (!qword_27F219AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AE0, &unk_24F9F8940);
    sub_24E712A14();
    sub_24E712CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AD8);
  }

  return result;
}

unint64_t sub_24E712A14()
{
  result = qword_27F219AE8;
  if (!qword_27F219AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219AF0, &unk_24F94D2D0);
    sub_24E712AA0();
    sub_24E712B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AE8);
  }

  return result;
}

unint64_t sub_24E712AA0()
{
  result = qword_27F219AF8;
  if (!qword_27F219AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B00, &unk_24F9F8950);
    sub_24E7143C8(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView, &unk_24F970020);
    sub_24E7143C8(&qword_27F219B10, type metadata accessor for PlayNowPageView, &unk_24FA278D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219AF8);
  }

  return result;
}

unint64_t sub_24E712B8C()
{
  result = qword_27F219B18;
  if (!qword_27F219B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B20, &unk_24F94D2E0);
    sub_24E712C18();
    sub_24E712C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B18);
  }

  return result;
}

unint64_t sub_24E712C18()
{
  result = qword_27F219B28;
  if (!qword_27F219B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B28);
  }

  return result;
}

unint64_t sub_24E712C6C()
{
  result = qword_27F219B30;
  if (!qword_27F219B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B30);
  }

  return result;
}

unint64_t sub_24E712CC0()
{
  result = qword_27F219B38;
  if (!qword_27F219B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B40, &unk_24F9F8960);
    sub_24E712D4C();
    sub_24E712E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B38);
  }

  return result;
}

unint64_t sub_24E712D4C()
{
  result = qword_27F219B48;
  if (!qword_27F219B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B50, &unk_24F94D2F0);
    sub_24E7143C8(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView, &unk_24F979148);
    sub_24E7143C8(&qword_27F219B60, type metadata accessor for AchievementsByGameView, &unk_24F9DD418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B48);
  }

  return result;
}

unint64_t sub_24E712E38()
{
  result = qword_27F219B68;
  if (!qword_27F219B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B70, &unk_24F9F8970);
    sub_24E712EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B68);
  }

  return result;
}

unint64_t sub_24E712EBC()
{
  result = qword_27F219B78;
  if (!qword_27F219B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B78);
  }

  return result;
}

unint64_t sub_24E712F10()
{
  result = qword_27F219B80;
  if (!qword_27F219B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219B88, &unk_24F94D300);
    sub_24E7143C8(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView, &unk_24F978920);
    sub_24E602068(&qword_27F215758, &qword_27F215760, &unk_24F940B30, &unk_24FA0AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219B80);
  }

  return result;
}

unint64_t sub_24E712FF8()
{
  result = qword_27F219BA8;
  if (!qword_27F219BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BA8);
  }

  return result;
}

unint64_t sub_24E71304C()
{
  result = qword_27F219BB0;
  if (!qword_27F219BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BB8, &qword_24F94D310);
    sub_24E7130D8();
    sub_24E713220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BB0);
  }

  return result;
}

unint64_t sub_24E7130D8()
{
  result = qword_27F219BC0;
  if (!qword_27F219BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BC8, &qword_24F94D318);
    sub_24E713164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BC0);
  }

  return result;
}

unint64_t sub_24E713164()
{
  result = qword_27F219BD0;
  if (!qword_27F219BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BD8, &qword_24F94D320);
    sub_24E7143C8(&qword_27F219BE0, type metadata accessor for SearchPageContainerView, &unk_24F940740);
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BD0);
  }

  return result;
}

unint64_t sub_24E713220()
{
  result = qword_27F219BE8;
  if (!qword_27F219BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219BF0, &qword_24F94D328);
    sub_24E632AD0();
    swift_getOpaqueTypeConformance2();
    sub_24E7132D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BE8);
  }

  return result;
}

unint64_t sub_24E7132D8()
{
  result = qword_27F219BF8;
  if (!qword_27F219BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C00, &qword_24F94D330);
    sub_24E632AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BF8);
  }

  return result;
}

unint64_t sub_24E71335C()
{
  result = qword_27F219C08;
  if (!qword_27F219C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C10, &qword_24F94D338);
    sub_24E7133E8();
    sub_24E7136C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C08);
  }

  return result;
}

unint64_t sub_24E7133E8()
{
  result = qword_27F219C18;
  if (!qword_27F219C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C20, &qword_24F94D340);
    sub_24E713474();
    sub_24E713568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C18);
  }

  return result;
}

unint64_t sub_24E713474()
{
  result = qword_27F219C28;
  if (!qword_27F219C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C30, &qword_24F94D348);
    sub_24E632AD0();
    type metadata accessor for ReportPlayerProblemView(255);
    sub_24E7143C8(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView, &unk_24F948738);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C28);
  }

  return result;
}

unint64_t sub_24E713568()
{
  result = qword_27F219C40;
  if (!qword_27F219C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C48, &unk_24F94D350);
    sub_24E7143C8(&qword_27F219C50, type metadata accessor for PickActivityTransitionView, &unk_24F94D1CC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C58, &qword_24F9F87E0);
    type metadata accessor for ChallengesPlayerPickerView(255);
    sub_24E7143C8(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView, "uk}28d\t");
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C40);
  }

  return result;
}

unint64_t sub_24E7136C8()
{
  result = qword_27F219C68;
  if (!qword_27F219C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C70, &unk_24F94D360);
    sub_24E713754();
    sub_24E713954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C68);
  }

  return result;
}

unint64_t sub_24E713754()
{
  result = qword_27F219C78;
  if (!qword_27F219C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C80, &qword_24F9F87C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C88, &unk_24F94D370);
    type metadata accessor for ChallengesReviewView(255);
    sub_24E7143C8(&qword_27F219C90, type metadata accessor for ChallengesReviewView, &unk_24FA1D2A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219C98, &qword_24F9F87A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CA0, &unk_24F94D380);
    type metadata accessor for MultiplayerActivityReviewView(255);
    sub_24E7143C8(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView, &unk_24F96F3DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219C78);
  }

  return result;
}

unint64_t sub_24E713954()
{
  result = qword_27F219CB0;
  if (!qword_27F219CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CB8, &unk_24F9F8790);
    sub_24E7143C8(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView, &unk_24F95AA30);
    sub_24E713A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CB0);
  }

  return result;
}

unint64_t sub_24E713A10()
{
  result = qword_27F219CC8;
  if (!qword_27F219CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CD0, &unk_24F94D390);
    sub_24E713A9C();
    sub_24E713BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CC8);
  }

  return result;
}

unint64_t sub_24E713A9C()
{
  result = qword_27F219CD8;
  if (!qword_27F219CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219CE0, &qword_24F9F8980);
    sub_24E7143C8(&qword_27F219CE8, type metadata accessor for ActivitySharingPromptView, &unk_24F9F4368);
    sub_24E713B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CD8);
  }

  return result;
}

unint64_t sub_24E713B58()
{
  result = qword_27F219CF0;
  if (!qword_27F219CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CF0);
  }

  return result;
}

unint64_t sub_24E713BAC()
{
  result = qword_27F219CF8;
  if (!qword_27F219CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219CF8);
  }

  return result;
}

unint64_t sub_24E713C00()
{
  result = qword_27F219D00;
  if (!qword_27F219D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D08, &qword_24F94D3A0);
    sub_24E713D7C();
    type metadata accessor for InviteFriendsPageView(255);
    type metadata accessor for FlowAction(255);
    sub_24E7143C8(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
    sub_24E7143C8(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
    sub_24E7143C8(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D00);
  }

  return result;
}

unint64_t sub_24E713D7C()
{
  result = qword_27F219D10;
  if (!qword_27F219D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D18, &qword_24F94D3A8);
    sub_24E713E08();
    sub_24E714044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D10);
  }

  return result;
}

unint64_t sub_24E713E08()
{
  result = qword_27F219D20;
  if (!qword_27F219D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D28, &qword_24F94D3B0);
    sub_24E713EFC();
    type metadata accessor for PlayTogetherWelcomePageView(255);
    sub_24E7143C8(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView, &protocol conformance descriptor for PlayTogetherWelcomePageView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D20);
  }

  return result;
}

unint64_t sub_24E713EFC()
{
  result = qword_27F219D30;
  if (!qword_27F219D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D38, &qword_24F94D3B8);
    sub_24E713F88();
    sub_24E713BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D30);
  }

  return result;
}

unint64_t sub_24E713F88()
{
  result = qword_27F219D40;
  if (!qword_27F219D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D48, &unk_24F94D3C0);
    sub_24E7143C8(&qword_27F219D50, type metadata accessor for ContactsIntegrationPromptView, &unk_24FA10D28);
    sub_24E713B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D40);
  }

  return result;
}

unint64_t sub_24E714044()
{
  result = qword_27F219D60;
  if (!qword_27F219D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D68, &qword_24F9F8750);
    type metadata accessor for AchievementDetailsPageView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D70, &unk_24F94D3D0);
    sub_24E7143C8(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView, &unk_24FA0572C);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80, &qword_24FA19330);
    sub_24E7141DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D98, &unk_24F94D3E0);
    sub_24E7142E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D60);
  }

  return result;
}

unint64_t sub_24E7141DC()
{
  result = qword_27F219D88;
  if (!qword_27F219D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80, &qword_24FA19330);
    sub_24E71428C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D88);
  }

  return result;
}

unint64_t sub_24E71428C()
{
  result = qword_27F219D90;
  if (!qword_27F219D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219D90);
  }

  return result;
}

unint64_t sub_24E7142E0()
{
  result = qword_27F219DA0;
  if (!qword_27F219DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D98, &unk_24F94D3E0);
    sub_24E7143C8(&qword_27F219DA8, type metadata accessor for ProfileEditorView, &unk_24F992010);
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219DA0);
  }

  return result;
}

uint64_t sub_24E7143C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E714410()
{
  result = qword_27F219DC0;
  if (!qword_27F219DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2199B0, &unk_24F94D250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DC8, &unk_24F94D3F0);
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219DC0);
  }

  return result;
}

uint64_t sub_24E71450C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219990, &qword_24F94D228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E714574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199A0, &unk_24F94D238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7145DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219998, &qword_24F94D230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DF0, &unk_24F94D400);
  sub_24E602068(&qword_27F219DD8, &qword_27F219998, &qword_24F94D230, MEMORY[0x277D7EB38]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219988, &qword_24F94D220);
  sub_24E602068(&qword_27F219DE0, &qword_27F219988, &qword_24F94D220, MEMORY[0x277D21CF8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ResetDebugSettingsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E714798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E714828(uint64_t a1)
{
  v2 = sub_24E714A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E714864(uint64_t a1)
{
  v2 = sub_24E714A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetDebugSettingsAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DF8, &qword_24F94D410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E714A04()
{
  result = qword_27F219E00;
  if (!qword_27F219E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E00);
  }

  return result;
}

uint64_t ResetDebugSettingsAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E08, &qword_24F94D418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ResetDebugSettingsAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24E714D10(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ResetDebugSettingsAction(uint64_t a1)
{
  result = qword_27F219E10;
  if (!qword_27F219E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E714D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetDebugSettingsAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E714D74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E714DF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DF8, &qword_24F94D410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E714A04();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E714F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E714FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E71505C(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7150DC()
{
  result = qword_27F219E20;
  if (!qword_27F219E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E20);
  }

  return result;
}

unint64_t sub_24E715134()
{
  result = qword_27F219E28;
  if (!qword_27F219E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E28);
  }

  return result;
}

unint64_t sub_24E71518C()
{
  result = qword_27F219E30;
  if (!qword_27F219E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219E30);
  }

  return result;
}

uint64_t sub_24E715254(double a1)
{
  v1 = sub_24F9275F8();
  if (qword_27F211948 != -1)
  {
    v4 = v1;
    v5 = v2;
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  *&xmmword_27F39A7D8 = 0x404C000000000000;
  *(&xmmword_27F39A7D8 + 1) = v1;
  qword_27F39A7E8 = v2;
  unk_27F39A7F0 = xmmword_27F2543E0;
  qword_27F39A800 = qword_27F2543F0;
  qword_27F39A808 = qword_27F2543F8;
  unk_27F39A810 = xmmword_24F94D5D0;
}

uint64_t sub_24E71530C(double a1)
{
  v1 = sub_24F9275F8();
  if (qword_27F211948 != -1)
  {
    v4 = v1;
    v5 = v2;
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  *&xmmword_27F39A820 = 0x402C000000000000;
  *(&xmmword_27F39A820 + 1) = v1;
  qword_27F39A830 = v2;
  *algn_27F39A838 = xmmword_27F2543E0;
  qword_27F39A848 = qword_27F2543F0;
  qword_27F39A850 = qword_27F2543F8;
  *algn_27F39A858 = xmmword_24F94D5E0;
}

uint64_t sub_24E7153C4(uint64_t a1)
{
  v1 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v4 = v1;
    v5 = v2;
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  *&xmmword_27F39A868 = 0;
  *(&xmmword_27F39A868 + 1) = v1;
  qword_27F39A878 = v2;
  unk_27F39A880 = xmmword_27F254420;
  qword_27F39A890 = qword_27F254430;
  qword_27F39A898 = qword_27F254438;
  unk_27F39A8A0 = xmmword_24F94D5F0;
}

uint64_t sub_24E715478(uint64_t a1)
{
  v1 = sub_24F927618();
  if (qword_27F211958 != -1)
  {
    v4 = v1;
    v5 = v2;
    swift_once();
    v2 = v5;
    v1 = v4;
  }

  *&xmmword_27F39A8B0 = 0;
  *(&xmmword_27F39A8B0 + 1) = v1;
  qword_27F39A8C0 = v2;
  *algn_27F39A8C8 = xmmword_27F254420;
  qword_27F39A8D8 = qword_27F254430;
  qword_27F39A8E0 = qword_27F254438;
  *algn_27F39A8E8 = xmmword_24F94D600;
}

uint64_t sub_24E71552C@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E658;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_24F4E9E44(a2, v8);
      goto LABEL_21;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E628;
  }

  else
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E640;
  }

  v10 = __swift_project_value_buffer(v6, v9);
  sub_24E718A3C(v10, v8, type metadata accessor for CardLayoutMetrics);
LABEL_21:
  sub_24E718AA4(v8, a3, type metadata accessor for CardLayoutMetrics);
  result = sub_24F924978();
  *(a3 + *(v6 + 44)) = result;
  if (a1 == 1)
  {
    *(a3 + *(v6 + 32)) = 0;
  }

  return result;
}

uint64_t sub_24E71574C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v144 = a5;
  v143 = a4;
  v167 = a6;
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v10);
  v141 = &v113 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E40, &qword_24F9D1E70);
  MEMORY[0x28223BE20](v152);
  v154 = &v113 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E48, &unk_24F94D680);
  MEMORY[0x28223BE20](v162);
  v14 = &v113 - v13;
  v137 = type metadata accessor for HeroCardGameHeadingView(0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v126 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v151);
  v140 = &v113 - v16;
  v153 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v153);
  v135 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v113 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E58, &qword_24F94D690);
  MEMORY[0x28223BE20](v149);
  v150 = &v113 - v20;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E60, &qword_24F94D698);
  MEMORY[0x28223BE20](v159);
  v22 = &v113 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v23 - 8);
  v134 = &v113 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v148);
  v138 = &v113 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E68, &qword_24F94D6A0);
  MEMORY[0x28223BE20](v164);
  v161 = &v113 - v26;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E70, &qword_24F94D6A8);
  MEMORY[0x28223BE20](v156);
  v158 = &v113 - v27;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E78, &qword_24F94D6B0);
  MEMORY[0x28223BE20](v146);
  v147 = &v113 - v28;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E80, &qword_24F94D6B8);
  MEMORY[0x28223BE20](v157);
  v30 = &v113 - v29;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E88, &qword_24F94D6C0);
  MEMORY[0x28223BE20](v165);
  v160 = &v113 - v31;
  v124 = sub_24F923E98();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = v32;
  v122 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for AchievementsCard(0);
  v117 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v120 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v33;
  MEMORY[0x28223BE20](v34);
  v127 = &v113 - v35;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E90, &qword_24F94D6C8);
  MEMORY[0x28223BE20](v131);
  v125 = &v113 - v36;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E98, &qword_24F94D6D0);
  MEMORY[0x28223BE20](v128);
  v130 = &v113 - v37;
  v133 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v133);
  v116 = (&v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v142 = (&v113 - v40);
  v129 = type metadata accessor for CardCompactAvatarView(0);
  MEMORY[0x28223BE20](v129);
  v119 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA0, &qword_24F94D6D8);
  MEMORY[0x28223BE20](v145);
  v132 = &v113 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA8, &unk_24F94D6E0);
  v166 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v163 = &v113 - v44;
  if (v9 == 4)
  {
    v45 = a1;
    v46 = a3;
    if (a3 > 2u)
    {
      v49 = v167;
      if (a3 == 3)
      {
        v115 = v30;
        v114 = v22;
        v47 = v167;
      }

      else
      {
        if (a3 != 4)
        {

LABEL_26:
          if (qword_27F20FE08 != -1)
          {
            swift_once();
          }

          v50 = &xmmword_27F39A8B0;
          goto LABEL_29;
        }

        v115 = v30;
        v114 = v22;
        v47 = v167;
      }
    }

    else
    {
      v115 = v30;
      v114 = v22;
      v47 = v167;
    }

    v51 = sub_24F92CE08();

    v49 = v47;
    v22 = v114;
    v30 = v115;
    if ((v51 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_5:
    v46 = a3;
    switch(a3)
    {
      case 2u:
        if (qword_27F20FE00 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A868;
        break;
      case 3u:
        if (qword_27F20FDF8 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A820;
        break;
      case 4u:
        if (qword_27F20FDF0 != -1)
        {
          swift_once();
        }

        v50 = &xmmword_27F39A7D8;
        break;
      default:
        goto LABEL_26;
    }

LABEL_29:
    v54 = v50[3];
    v169[2] = v50[2];
    v169[3] = v54;
    v170 = *(v50 + 8);
    v55 = v50[1];
    v169[0] = *v50;
    v169[1] = v55;
    if (v45 <= 2u)
    {
      if (v45 == 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_24E717974(v169, v168);
        sub_24E717CD4();
        sub_24F924E28();
        sub_24E60169C(v30, v158, &qword_27F219E80, &qword_24F94D6B8);
        swift_storeEnumTagMultiPayload();
        sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &qword_24F94D6B8, sub_24E717CD4);
        sub_24E717DBC();
        v93 = v160;
        sub_24F924E28();
        sub_24E601704(v30, &qword_27F219E80, &qword_24F94D6B8);
        v94 = &qword_24F94D6C0;
        sub_24E60169C(v93, v161, &qword_27F219E88, &qword_24F94D6C0);
        swift_storeEnumTagMultiPayload();
        sub_24E717B98();
        sub_24E717E78();
        v61 = v163;
        sub_24F924E28();
        sub_24E717F30(v169);
        v95 = v93;
        v96 = &qword_27F219E88;
LABEL_43:
        sub_24E601704(v95, v96, v94);
        goto LABEL_48;
      }

      if (v45 == 2)
      {
        v115 = v30;
        v113 = v43;
        if (v46 == 1)
        {
          v62 = v142;
          sub_24E718A3C(a2 + *(v155 + 44), v142, type metadata accessor for PlayerAvatar);
          v63 = v119;
          v64 = &v119[*(v129 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24E717974(v169, v168);
          sub_24E71898C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v64 = sub_24F923598();
          v64[8] = v65 & 1;
          v66 = v116;
          sub_24E718A3C(v62, v116, type metadata accessor for PlayerAvatar);
          LOBYTE(v168[0]) = 7;
          sub_24F8319B8(v66, v168, v63);
          sub_24E7189DC(v62, type metadata accessor for PlayerAvatar);
          sub_24E718A3C(v63, v130, type metadata accessor for CardCompactAvatarView);
          swift_storeEnumTagMultiPayload();
          sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
          sub_24E602068(&qword_27F219EE0, &qword_27F219E90, &qword_24F94D6C8, &unk_24FA045F8);
          v67 = v132;
          sub_24F924E28();
          sub_24E7189DC(v63, type metadata accessor for CardCompactAvatarView);
        }

        else
        {
          sub_24E718A3C(a2, v127, type metadata accessor for AchievementsCard);
          v98 = a2;
          v99 = v120;
          sub_24E718A3C(v98, v120, type metadata accessor for AchievementsCard);
          v100 = v123;
          v101 = v122;
          v102 = v124;
          (*(v123 + 16))(v122, v143, v124);
          v103 = *(v117 + 80);
          v155 = v46;
          v104 = (v103 + 24) & ~v103;
          v105 = v104 + v118;
          v106 = (*(v100 + 80) + v104 + v118 + 1) & ~*(v100 + 80);
          v107 = swift_allocObject();
          *(v107 + 16) = v144;
          sub_24E718AA4(v99, v107 + v104, type metadata accessor for AchievementsCard);
          LOBYTE(v104) = v155;
          *(v107 + v105) = v155;
          (*(v100 + 32))(v107 + v106, v101, v102);
          sub_24E717974(v169, v168);

          v108 = v125;
          sub_24E717634(v127, v104, sub_24E7188A8, v107, v125);
          sub_24E60169C(v108, v130, &qword_27F219E90, &qword_24F94D6C8);
          swift_storeEnumTagMultiPayload();
          sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
          sub_24E602068(&qword_27F219EE0, &qword_27F219E90, &qword_24F94D6C8, &unk_24FA045F8);
          v67 = v132;
          sub_24F924E28();
          sub_24E601704(v108, &qword_27F219E90, &qword_24F94D6C8);
        }

        v109 = v161;
        sub_24E60169C(v67, v147, &qword_27F219EA0, &qword_24F94D6D8);
        swift_storeEnumTagMultiPayload();
        sub_24E717CD4();
        v110 = v115;
        sub_24F924E28();
        sub_24E60169C(v110, v158, &qword_27F219E80, &qword_24F94D6B8);
        swift_storeEnumTagMultiPayload();
        sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &qword_24F94D6B8, sub_24E717CD4);
        sub_24E717DBC();
        v111 = v160;
        sub_24F924E28();
        sub_24E601704(v110, &qword_27F219E80, &qword_24F94D6B8);
        sub_24E60169C(v111, v109, &qword_27F219E88, &qword_24F94D6C0);
        swift_storeEnumTagMultiPayload();
        sub_24E717B98();
        sub_24E717E78();
        v61 = v163;
        sub_24F924E28();
        sub_24E717F30(v169);
        sub_24E601704(v111, &qword_27F219E88, &qword_24F94D6C0);
        sub_24E601704(v67, &qword_27F219EA0, &qword_24F94D6D8);
        v43 = v113;
        goto LABEL_48;
      }
    }

    else
    {
      switch(v45)
      {
        case 3u:
          v113 = v43;
          v68 = v155;
          v69 = *(v155 + 44);
          v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
          v71 = *(v68 + 40);
          v72 = sub_24F9289E8();
          v73 = a2 + v71;
          v74 = v134;
          (*(*(v72 - 8) + 16))(v134, v73, v72);
          *(v74 + v70) = v170;
          v75 = type metadata accessor for PlayerAvatar.Overlay(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
          v76 = v142;
          sub_24E718A3C(a2 + v69, v142, type metadata accessor for PlayerAvatar);
          v77 = *(v133 + 20);
          sub_24E717974(v169, v168);
          sub_24E717FD0(v74, v76 + v77);
          LOBYTE(v168[0]) = 7;
          v78 = v138;
          sub_24F8319B8(v76, v168, v138);
          sub_24F927618();
          sub_24F9238C8();
          v79 = (v78 + *(v148 + 36));
          v80 = v168[1];
          *v79 = v168[0];
          v79[1] = v80;
          v79[2] = v168[2];
          sub_24E60169C(v78, v150, &qword_27F2233D0, &qword_24F958810);
          swift_storeEnumTagMultiPayload();
          sub_24E680290();
          sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24F924E28();
          sub_24E60169C(v22, v158, &qword_27F219E60, &qword_24F94D698);
          swift_storeEnumTagMultiPayload();
          sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &qword_24F94D6B8, sub_24E717CD4);
          sub_24E717DBC();
          v81 = v160;
          sub_24F924E28();
          sub_24E601704(v22, &qword_27F219E60, &qword_24F94D698);
          sub_24E60169C(v81, v161, &qword_27F219E88, &qword_24F94D6C0);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v163;
          sub_24F924E28();
          sub_24E717F30(v169);
          v43 = v113;
          sub_24E601704(v81, &qword_27F219E88, &qword_24F94D6C0);
          sub_24E601704(v78, &qword_27F2233D0, &qword_24F958810);
          goto LABEL_48;
        case 4u:
          v160 = v10;
          v82 = v155;
          v83 = a2 + *(v155 + 32);
          v84 = (v83 + *(type metadata accessor for CommonCardAttributes(0) + 44));
          v85 = v84[1];
          v113 = v43;
          if (v85)
          {
            v86 = *v84;
            v87 = *(v82 + 40);
            v88 = sub_24F9289E8();
            v89 = v126;
            (*(*(v88 - 8) + 16))(v126, a2 + v87, v88);
            v90 = v137;
            v91 = (v89 + *(v137 + 20));
            *v91 = v86;
            v91[1] = v85;
            v92 = v140;
            sub_24E718AA4(v89, v140, type metadata accessor for HeroCardGameHeadingView);
            (*(v136 + 56))(v92, 0, 1, v90);
          }

          else
          {
            v92 = v140;
            (*(v136 + 56))(v140, 1, 1, v137);
          }

          v112 = v161;
          sub_24E60169C(v92, v154, &qword_27F219E50, &unk_24F94D9F0);
          swift_storeEnumTagMultiPayload();
          sub_24E717974(v169, v168);
          sub_24E7179AC();
          sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);

          sub_24F924E28();
          sub_24E60169C(v14, v112, &qword_27F219E48, &unk_24F94D680);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v163;
          sub_24F924E28();
          sub_24E717F30(v169);
          sub_24E601704(v14, &qword_27F219E48, &unk_24F94D680);
          sub_24E601704(v92, &qword_27F219E50, &unk_24F94D9F0);
          v43 = v113;
          v49 = v167;
          goto LABEL_48;
        case 0xBu:
          v56 = dword_24F94D76C[v46];
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
          v58 = v135;
          (*(*(v57 - 8) + 56))(v135, v56, 5, v57);
          v59 = v139;
          sub_24E718AA4(v58, v139, type metadata accessor for CardContentBackgroundStyle);
          sub_24E718A3C(v59, v150, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E717974(v169, v168);
          sub_24E680290();
          sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24F924E28();
          sub_24E60169C(v22, v158, &qword_27F219E60, &qword_24F94D698);
          swift_storeEnumTagMultiPayload();
          sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &qword_24F94D6B8, sub_24E717CD4);
          sub_24E717DBC();
          v60 = v160;
          sub_24F924E28();
          sub_24E601704(v22, &qword_27F219E60, &qword_24F94D698);
          sub_24E60169C(v60, v161, &qword_27F219E88, &qword_24F94D6C0);
          swift_storeEnumTagMultiPayload();
          sub_24E717B98();
          sub_24E717E78();
          v61 = v163;
          sub_24F924E28();
          sub_24E717F30(v169);
          sub_24E601704(v60, &qword_27F219E88, &qword_24F94D6C0);
          sub_24E7189DC(v59, type metadata accessor for CardContentBackgroundStyle);
LABEL_48:
          sub_24E717F60(v61, v49);
          return (*(v166 + 56))(v49, 0, 1, v43);
      }
    }

    sub_24E717974(v169, v168);
    v97 = v141;
    sub_24E923960(v45, a2, v46, v143, v144, v141);
    v94 = &unk_24F94D670;
    sub_24E60169C(v97, v154, &qword_27F214A20, &unk_24F94D670);
    swift_storeEnumTagMultiPayload();
    sub_24E7179AC();
    sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24F924E28();
    sub_24E60169C(v14, v161, &qword_27F219E48, &unk_24F94D680);
    swift_storeEnumTagMultiPayload();
    sub_24E717B98();
    sub_24E717E78();
    v61 = v163;
    sub_24F924E28();
    sub_24E717F30(v169);
    sub_24E601704(v14, &qword_27F219E48, &unk_24F94D680);
    v95 = v97;
    v96 = &qword_27F214A20;
    goto LABEL_43;
  }

  v45 = a1;
  v48 = sub_24E92D030(a1, a2, a3);
  v49 = v167;
  if (v48)
  {
    goto LABEL_5;
  }

LABEL_22:
  v52 = *(v166 + 56);

  return v52(v49, 1, 1, v43);
}

uint64_t sub_24E717634@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E90, &qword_24F94D6C8);
  v12 = a5 + v11[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v11[14];
  type metadata accessor for CardSafeArea(0);
  sub_24E71898C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  *v13 = sub_24F923598();
  *(v13 + 8) = v14 & 1;
  v15 = a5 + v11[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88, &qword_24F9EC890);
  sub_24F926F28();
  *v15 = v22;
  *(v15 + 16) = v23;
  *(v15 + 24) = v24;
  *(a5 + v11[9]) = a2;
  sub_24E718A3C(a1, a5, type metadata accessor for AchievementsCard);
  if (v10 == 3)
  {

    v17 = 2;
  }

  else
  {
    v16 = sub_24F92CE08();

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }
  }

  *(a5 + v11[10]) = v17;
  v18 = *(*(a1 + *(type metadata accessor for AchievementsCard(0) + 36)) + 16);
  switch(v18)
  {
    case 3:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 2;
      break;
    case 2:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 1;
      break;
    case 1:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      v20 = 0;
      break;
    default:
      result = sub_24E7189DC(a1, type metadata accessor for AchievementsCard);
      if (v18 == 5)
      {
        if ((v10 - 3) >= 3)
        {
          v20 = 2;
        }

        else
        {
          v20 = 3;
        }
      }

      else
      {
        v20 = 4;
      }

      break;
  }

  *(a5 + v11[11]) = v20;
  v21 = (a5 + v11[12]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

unint64_t sub_24E7179AC()
{
  result = qword_27F219EB0;
  if (!qword_27F219EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E50, &unk_24F94D9F0);
    sub_24E71898C(&qword_27F219EB8, type metadata accessor for HeroCardGameHeadingView, &unk_24F987BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EB0);
  }

  return result;
}

uint64_t sub_24E717A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E717ADC()
{
  result = qword_27F214C80;
  if (!qword_27F214C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C88, &unk_24F950000);
    sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    sub_24E63CF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214C80);
  }

  return result;
}

unint64_t sub_24E717B98()
{
  result = qword_27F219EC0;
  if (!qword_27F219EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E88, &qword_24F94D6C0);
    sub_24E717C50(&qword_27F219EC8, &qword_27F219E80, &qword_24F94D6B8, sub_24E717CD4);
    sub_24E717DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EC0);
  }

  return result;
}

uint64_t sub_24E717C50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E717CD4()
{
  result = qword_27F219ED0;
  if (!qword_27F219ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219EA0, &qword_24F94D6D8);
    sub_24E71898C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
    sub_24E602068(&qword_27F219EE0, &qword_27F219E90, &qword_24F94D6C8, &unk_24FA045F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219ED0);
  }

  return result;
}

unint64_t sub_24E717DBC()
{
  result = qword_27F219EE8;
  if (!qword_27F219EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E60, &qword_24F94D698);
    sub_24E680290();
    sub_24E71898C(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EE8);
  }

  return result;
}

unint64_t sub_24E717E78()
{
  result = qword_27F219EF0;
  if (!qword_27F219EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219E48, &unk_24F94D680);
    sub_24E7179AC();
    sub_24E717A60(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219EF0);
  }

  return result;
}

uint64_t sub_24E717F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219EA8, &unk_24F94D6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E717FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E718040()
{
  v1 = v0;
  v2 = type metadata accessor for AchievementsCard(0);
  v53 = *(*(v2 - 1) + 80);
  v50 = *(*(v2 - 1) + 64);
  v52 = sub_24F923E98();
  v49 = *(v52 - 8);
  v48 = *(v49 + 80);

  v51 = (v53 + 24) & ~v53;
  v3 = v0 + v51;
  __swift_destroy_boxed_opaque_existential_1((v0 + v51));
  if (*(v0 + v51 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 40));
  }

  v4 = v2[6];
  v5 = sub_24F92A6D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v2[7];
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v47 = v3;
  v10 = v3 + v2[8];

  v11 = type metadata accessor for CommonCardAttributes(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v10 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v16 = v11[7];
  v46 = v15;
  if (!v15(v10 + v16, 1, v13))
  {
    (*(v14 + 8))(v10 + v16, v13);
  }

  v54 = v14;
  v17 = v10 + v11[8];
  v18 = type metadata accessor for GSKVideo(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v44 = v2;
    v45 = v1;
    v19 = sub_24F91F4A8();
    (*(*(v19 - 8) + 8))(v17, v19);
    v43 = v13;
    (*(v14 + 8))(v17 + v18[5], v13);
    v20 = v18[9];
    v21 = sub_24F928698();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (!v23(v17 + v20, 1, v21))
    {
      (*(v22 + 8))(v17 + v20, v21);
    }

    v24 = v18[10];
    if (!v23(v17 + v24, 1, v21))
    {
      (*(v22 + 8))(v17 + v24, v21);
    }

    v2 = v44;
    v1 = v45;
    v13 = v43;
  }

  if (*(v10 + v11[9]))
  {
  }

  v25 = v11[10];
  if (!v46(v10 + v25, 1, v13))
  {
    (*(v54 + 8))(v10 + v25, v13);
  }

  v26 = v10 + v11[17];
  v27 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = sub_24F928388();
    (*(*(v28 - 8) + 8))(v26, v28);
  }

  v29 = (v10 + v11[19]);
  if (v29[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = v10 + v11[20];
  v31 = type metadata accessor for CardPrimaryActionType(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v40 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v30 + v40, 1, v41))
        {
          (*(v42 + 8))(v30 + v40, v41);
        }

        break;
      case 1:

        break;
      case 0:

        break;
    }
  }

  v32 = *(v54 + 8);
  v32(v47 + v2[10], v13);
  v33 = v47 + v2[11];

  v34 = type metadata accessor for PlayerAvatar(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v36 - 8) + 48))(v33 + v35, 1, v36) && !swift_getEnumCaseMultiPayload())
  {
    v32(v33 + v35, v13);
  }

  v37 = (v33 + *(v34 + 24));
  if (v37[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  (*(v49 + 8))(v1 + ((v50 + v51 + v48 + 1) & ~v48), v52);

  return swift_deallocObject();
}

uint64_t sub_24E7188A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementsCard(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_24F923E98() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_24E923960(0xC, v1 + v4, v8, v9, v7, a1);
}

uint64_t sub_24E71898C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E7189DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E718A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E718AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E718B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E718B54(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_24E718BF8()
{
  result = qword_27F219F08[0];
  if (!qword_27F219F08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219EA8, &unk_24F94D6E0);
    sub_24E717B98();
    sub_24E717E78();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F219F08);
  }

  return result;
}

uint64_t sub_24E718C84(uint64_t a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v28 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v37 = MEMORY[0x277D84F90];
  v30 = v4;
  sub_24F4579F8(0, v7, 0);
  v8 = v37;
  v9 = v30 + 56;
  result = sub_24F92C6B8();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v33 = v3 + 32;
  v34 = v3;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(v12 + 36);
    v17 = v12;

    sub_24F920FC8();
    v37 = v8;
    v18 = v6;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_24F4579F8((v19 > 1), v20 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v20 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v18, v35);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_24E6586A8(v11, v36, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_24E6586A8(v11, v36, 0);
      v12 = v30;
LABEL_19:
      v6 = v18;
    }

    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t InvitePlayersToChallengeActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for InvitePlayersToChallengeAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24E71B294(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InvitePlayersToChallengeAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 24) = a2;
  sub_24E719BE0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F94D7A0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E7191F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for Player(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E719284, 0, 0);
}

uint64_t sub_24E719284()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E71931C, v2, v1);
}

uint64_t sub_24E71931C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24E7193A4, 0, 0);
}

uint64_t sub_24E7193A4(uint64_t a1)
{
  *(v1 + 120) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E719430, v3, v2);
}

uint64_t sub_24E719430()
{
  v1 = v0[14];
  v2 = v0[11];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E71B24C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E71B294(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24E719560, 0, 0);
}

uint64_t sub_24E719560()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = *v2;
  v0[16] = *v2;
  v4 = v2[1];
  v0[17] = v4;
  v5 = v2[4];
  v6 = *v1;
  v7 = v1[1];
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24E719638;
  v9 = v0[8];

  return sub_24E71B2FC(v3, v4, v5, v6, v7, v9);
}

uint64_t sub_24E719638()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E719934;
  }

  else
  {
    v2 = sub_24E71974C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71974C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v1[5];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  v0[20] = v6;
  v9 = type metadata accessor for InvitePlayersToChallengeActionImplementation(0, v2, v7, v8);
  *v6 = v0;
  v6[1] = sub_24E719820;
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[11];
  v13 = v0[8];

  return sub_24E719D38(v10, v11, v3, v12, v4, v5, v13, v9);
}

uint64_t sub_24E719820()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24E719A68;
  }

  else
  {
    v2 = sub_24E7199A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E719934()
{
  sub_24E71BF38(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7199A4()
{
  v1 = v0[7];
  sub_24E71BF38(v0[11]);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E719A68()
{
  sub_24E71BF38(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E719AD8()
{
  v1 = (type metadata accessor for InvitePlayersToChallengeAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E719BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToChallengeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E719C44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for InvitePlayersToChallengeAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E7191F0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24E719D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_24E719D64, 0, 0);
}

uint64_t sub_24E719D64()
{
  v1 = *(v0[4] + 16);
  v0[10] = v1;
  if (v1)
  {
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v2 = qword_27F24F280;
    v3 = sub_24F92B098();
    v4 = sub_24F92B098();
    v5 = [v2 pathForResource:v3 ofType:v4];

    if (v5)
    {
      v6 = sub_24F92B0D8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[11] = v6;
    v0[12] = v8;
    v13 = v0[5];
    v15 = *v13;
    v14 = v13[1];
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_24E71A010;
    v18 = v0[2];
    v17 = v0[3];

    return sub_24E71BF94(v18, v17, v15, v14);
  }

  else
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);

    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = 1;

      _os_log_impl(&dword_24E5DD000, v10, v11, "Skip invite via iMessage. Contact list is empty: %{BOOL}d", v12, 8u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_24E71A010(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E71A160, 0, 0);
  }
}

uint64_t sub_24E71A160()
{
  v36 = v0;
  v1 = *(v0 + 120);
  if (v1 && (v2 = sub_24E71A5D8(*(v0 + 112), v1, *(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 88), *(v0 + 96), *(v0 + 72)), , v2))
  {
    v3 = sub_24F92B098();
    v4 = [v2 _pluginPayloadWithAppIconData_appName_allowDataPayloads_];

    v5 = [v4 data];
    if (v5)
    {
      v6 = sub_24F91F4E8();
      v8 = v7;

      sub_24E71CBC0(v6, v8);
      v5 = sub_24F91F4C8();
      v34 = v8;
      sub_24E627880(v6, v8);
    }

    else
    {
      v6 = 0;
      v34 = 0xF000000000000000;
    }

    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = sub_24F92B588();
    v16 = sub_24F92B098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24F93DE60;
    if (v13)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0xE000000000000000;
    if (v13)
    {
      v19 = v13;
    }

    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v20 = sub_24F92B588();

    v21 = IMSPISendMSMessagePayload();

    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E778);

    v10 = sub_24F9220B8();
    v23 = sub_24F92BD98();

    if (os_log_type_enabled(v10, v23))
    {
      v33 = v6;
      v24 = *(v0 + 80);
      v25 = *(v0 + 24);
      v26 = *(v0 + 16);
      v27 = swift_slowAlloc();
      v32 = v2;
      v28 = v21;
      v29 = swift_slowAlloc();
      v35 = v29;
      *v27 = 134218498;
      *(v27 + 4) = v24;

      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_24E7620D4(v26, v25, &v35);
      *(v27 + 22) = 1024;
      *(v27 + 24) = v28;
      _os_log_impl(&dword_24E5DD000, v10, v23, "Invited %ld contacts to challenge %s, success: %{BOOL}d", v27, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v27, -1, -1);
      sub_24E71CBAC(v33, v34);
    }

    else
    {

      sub_24E71CBAC(v6, v34);
    }
  }

  else
  {

    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "Failed to create challenge invite message", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

id sub_24E71A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v25 = v24;
  v27 = v26;
  sub_24E71ABA4(v23, a2, a3, a4, a5, v19);
  if ((*(v25 + 48))(v19, 1, v27) == 1)
  {
    sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
    return 0;
  }

  else
  {
    v55 = v25;
    v29 = *(v25 + 32);
    v56 = v22;
    v58 = v27;
    v29(v22, v19, v27);
    v30 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
    v31._countAndFlagsBits = 0xD000000000000024;
    v31._object = 0x800000024FA46360;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    localizedString(_:comment:)(v31, v32);
    v33 = sub_24F92B098();

    [v30 setCaption_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x4E72657469766E69;
    *(inited + 40) = 0xEB00000000656D61;
    v35 = (a5 + *(type metadata accessor for Player(0) + 28));
    v36 = v35[1];
    *(inited + 48) = *v35;
    *(inited + 56) = v36;
    *(inited + 64) = 0x656D614E656D6167;
    *(inited + 72) = 0xE800000000000000;
    v57 = a6;
    *(inited + 80) = a6;
    *(inited + 88) = a7;

    v37 = sub_24E6086DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
    swift_arrayDestroy();
    v38._countAndFlagsBits = 0xD000000000000027;
    v38._object = 0x800000024FA46390;
    localizedString(_:with:)(v38, v37);

    v39 = sub_24F92B098();

    [v30 setSubcaption_];

    v40 = a7;
    if (a9)
    {
      v41 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v42 = sub_24F92B098();
      v43 = [v41 initWithContentsOfFile_];

      [v30 setImage_];
    }

    v44 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
    v45 = [objc_allocWithZone(MEMORY[0x277CD68F8]) initWithSession_];
    v46 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
    [v45 setLayout_];
    v47 = v56;
    v48 = sub_24F91F3B8();
    [v45 setURL_];

    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_24F93DE60;
    *(v49 + 32) = 0x656D614E656D6167;
    v50 = v57;
    *(v49 + 40) = 0xE800000000000000;
    *(v49 + 48) = v50;
    *(v49 + 56) = v40;

    v51 = sub_24E6086DC(v49);
    swift_setDeallocating();
    sub_24E601704(v49 + 32, &qword_27F219F90, &qword_24F955020);
    v52._object = 0x800000024FA463C0;
    v52._countAndFlagsBits = 0xD00000000000001BLL;
    localizedString(_:with:)(v52, v51);

    v53 = sub_24F92B098();

    [v45 setSummaryText_];

    v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v45 setOverriddenAdamID_];

    (*(v55 + 8))(v47, v58);
    return v45;
  }
}

uint64_t sub_24E71ABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v38 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_24F91EC58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x6F43657469766E69;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x676E656C6C616863;
  *(inited + 72) = 0xEB00000000444965;
  *(inited + 80) = a3;
  *(inited + 88) = a4;
  *(inited + 96) = 0x4972657469766E69;
  v18 = *a5;
  v19 = a5[1];
  *(inited + 104) = 0xE900000000000044;
  *(inited + 112) = v18;
  *(inited + 120) = v19;

  sub_24E6086DC(inited);
  v20 = v14;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
  swift_arrayDestroy();
  sub_24F91EC38();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_24E601704(v13, &qword_27F219F98, &unk_24F94D890);
    v21 = sub_24F91F4A8();
    return (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  }

  else
  {
    v23 = v35;
    v24 = v36;
    (*(v15 + 32))(v35, v13, v20);
    v25 = objc_opt_self();
    v26 = sub_24F92AE28();

    v37 = 0;
    v27 = [v25 dataWithJSONObject:v26 options:0 error:&v37];

    v28 = v37;
    if (v27)
    {
      v29 = sub_24F91F4E8();
      v31 = v30;

      sub_24F91F4D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B48, &qword_24F9FAAD0);
      sub_24F91EB98();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F91EB68();

      sub_24F91EBD8();
      sub_24F91EBF8();
      sub_24E627880(v29, v31);
      return (*(v15 + 8))(v23, v20);
    }

    else
    {
      v32 = v28;
      v33 = sub_24F91F278();

      swift_willThrow();
      (*(v15 + 8))(v23, v20);

      v34 = sub_24F91F4A8();
      return (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
    }
  }
}

uint64_t sub_24E71B0C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E71B108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E694534(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24E71B24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E71B294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E71B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E71B438, 0, 0);
}

uint64_t sub_24E71B438()
{
  if (*(v0[14] + 16))
  {

    v0[24] = sub_24F45D828(v1);

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_24E71B560;

    return MEMORY[0x28217F228](v0 + 7, v2, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24E71B560()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_24E71B9E8;
  }

  else
  {
    v2 = sub_24E71B67C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71B67C()
{
  v7 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  sub_24F920FC8();

  sub_24F920FF8();
  v2 = sub_24E718C84(v7);
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_24E71B7E0;
  v4 = v0[23];
  v5 = v0[20];

  return MEMORY[0x282165160](v4, v5, v2, v1, v8);
}

uint64_t sub_24E71B7E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 152);
  *(*v2 + 232) = v1;

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  if (v1)
  {
    v8 = v3[23];
    v10 = v3[20];
    v9 = v3[21];
    v11 = v3[18];

    (*v6)(v10, v11);
    (*v7)(v8, v9);
    v12 = sub_24E71BD84;
  }

  else
  {
    v13 = v3[23];
    v15 = v3[20];
    v14 = v3[21];
    v16 = v3[18];

    (*v6)(v15, v16);
    (*v7)(v13, v14);
    v12 = sub_24E71BB94;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_24E71B9E8()
{
  v1 = *(v0 + 208);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to invite players with error %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E71BB94()
{
  v14 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 134218242;
    v10 = *(v5 + 16);

    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24E7620D4(v7, v6, &v13);
    _os_log_impl(&dword_24E5DD000, v2, v3, "Invited %ld players to challenge %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24E71BD84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[29];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to invite players with error %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E71BF38(uint64_t a1)
{
  v2 = type metadata accessor for Player(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E71BF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_24F920898();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = sub_24F9208B8();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v10 = swift_task_alloc();
  v4[28] = v10;
  *v10 = v4;
  v10[1] = sub_24E71C1E0;

  return MEMORY[0x28217F228](v4 + 7, v9, v9);
}

uint64_t sub_24E71C1E0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24E71C628;
  }

  else
  {
    v2 = sub_24E71C2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E71C2F4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  sub_24F920FC8();

  sub_24F920FF8();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_24E71C43C;
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];

  return MEMORY[0x282165168](v4, v5, v6, v1, v2);
}

uint64_t sub_24E71C43C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 152);
  v2[31] = v0;

  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v2[32] = v9;
  v2[33] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  if (v0)
  {
    v10 = sub_24E71C9CC;
  }

  else
  {
    v10 = sub_24E71C800;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24E71C628()
{
  v1 = *(v0 + 232);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get invite code: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_24E71C800()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F9208A8();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v5 + 88))(v4, v6);
  if (v7 == *MEMORY[0x277D0CFC8])
  {
    v8 = v0[32];
    v9 = v0[22];
    v10 = v0[18];
    (*(v0[17] + 96))(v10, v0[16]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA8, &unk_24F94D8B0);
    v12 = *(v11 + 48);
    sub_24E601704(v10 + *(v11 + 64), &unk_27F22EC30, &qword_24F939880);
    v8(v10 + v12, v9);
    v8(v10, v9);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[18];
    v15 = v0[16];
    if (v7 == *MEMORY[0x277D0CFC0])
    {
      (*(v13 + 96))(v0[18], v15);
      v17 = *v14;
      v16 = v14[1];
      goto LABEL_7;
    }

    (*(v13 + 8))(v0[18], v15);
  }

  v17 = 0;
  v16 = 0;
LABEL_7:

  v18 = v0[1];

  return v18(v17, v16);
}

uint64_t sub_24E71C9CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[31];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get invite code: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0, 0);
}

uint64_t sub_24E71CBAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24E627880(result, a2);
  }

  return result;
}

uint64_t sub_24E71CBC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24E71CC88@<X0>(int a1@<W0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v500 = a5;
  v527 = a4;
  v544 = a3;
  v538 = a2;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FC0, &qword_24F94D920);
  MEMORY[0x28223BE20](v497);
  v498 = &v402 - v8;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FC8, &qword_24F94D928);
  MEMORY[0x28223BE20](v536);
  v495 = &v402 - v9;
  v410 = type metadata accessor for ChallengeCardCapsuleSubtitle(0);
  v409 = *(v410 - 8);
  MEMORY[0x28223BE20](v410);
  v404 = &v402 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD0, &qword_24F94D930);
  MEMORY[0x28223BE20](v496);
  v411 = &v402 - v11;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD8, &qword_24F94D938);
  v440 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v419 = &v402 - v12;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE0, &qword_24F94D940);
  MEMORY[0x28223BE20](v473);
  v439 = &v402 - v13;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE8, &qword_24F94D948);
  MEMORY[0x28223BE20](v471);
  v472 = &v402 - v14;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF0, &unk_24F94D950);
  MEMORY[0x28223BE20](v520);
  v474 = &v402 - v15;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20);
  v459 = *(v465 - 8);
  MEMORY[0x28223BE20](v465);
  v456 = &v402 - v16;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A000, &qword_24F94D960);
  MEMORY[0x28223BE20](v470);
  v460 = &v402 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v18 - 8);
  v457 = &v402 - v19;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v488);
  v458 = (&v402 - v20);
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18, &unk_24F93E670);
  MEMORY[0x28223BE20](v486);
  v487 = &v402 - v21;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28, &unk_24F93E680);
  MEMORY[0x28223BE20](v510);
  v490 = &v402 - v22;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A008, &qword_24F94D968);
  MEMORY[0x28223BE20](v516);
  v518 = &v402 - v23;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30, &unk_24F94D970);
  MEMORY[0x28223BE20](v508);
  v509 = &v402 - v24;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38, &unk_24F93E690);
  MEMORY[0x28223BE20](v517);
  v511 = &v402 - v25;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A010, &unk_24F94D980);
  MEMORY[0x28223BE20](v532);
  v519 = &v402 - v26;
  v507 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v507);
  v484 = &v402 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v485 = &v402 - v29;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v521);
  v499 = &v402 - v30;
  v418 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v418);
  v405 = &v402 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A018, &unk_24F94D990);
  MEMORY[0x28223BE20](v415);
  v417 = &v402 - v32;
  v416 = type metadata accessor for ChallengeCardTitleView(0);
  MEMORY[0x28223BE20](v416);
  v406 = (&v402 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v34 - 8);
  v408 = &v402 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v412 = &v402 - v37;
  v455 = sub_24F91F648();
  v441 = *(v455 - 8);
  MEMORY[0x28223BE20](v455);
  v403 = &v402 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v437 = &v402 - v40;
  MEMORY[0x28223BE20](v41);
  v413 = &v402 - v42;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A020, &qword_24F94D9A0);
  v452 = *(v453 - 8);
  MEMORY[0x28223BE20](v453);
  v414 = &v402 - v43;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A028, &qword_24F94D9A8);
  MEMORY[0x28223BE20](v468);
  v454 = &v402 - v44;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A030, &qword_24F94D9B0);
  MEMORY[0x28223BE20](v489);
  v492 = &v402 - v45;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A038, &qword_24F94D9B8);
  MEMORY[0x28223BE20](v466);
  v467 = (&v402 - v46);
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A040, &qword_24F94D9C0);
  MEMORY[0x28223BE20](v491);
  v469 = &v402 - v47;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A048, &qword_24F94D9C8);
  MEMORY[0x28223BE20](v501);
  v49 = &v402 - v48;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A050, &qword_24F94D9D0);
  MEMORY[0x28223BE20](v513);
  v514 = &v402 - v50;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A058, &qword_24F94D9D8);
  MEMORY[0x28223BE20](v526);
  v515 = &v402 - v51;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  MEMORY[0x28223BE20](v451);
  v436 = &v402 - v52;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060, &unk_24F9EC4F0);
  MEMORY[0x28223BE20](v478);
  v480 = &v402 - v53;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068, &unk_24F94D9E0);
  MEMORY[0x28223BE20](v448);
  v449 = &v402 - v54;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070, &unk_24F9EC500);
  MEMORY[0x28223BE20](v477);
  v450 = &v402 - v55;
  v434 = type metadata accessor for HeroCardGameHeadingView(0);
  v433 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v407 = &v402 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v447);
  v435 = &v402 - v57;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078, &qword_24F9EC510);
  MEMORY[0x28223BE20](v512);
  v483 = &v402 - v58;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A080, &qword_24F94DA00);
  MEMORY[0x28223BE20](v462);
  v463 = &v402 - v59;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A088, &qword_24F94DA08);
  MEMORY[0x28223BE20](v482);
  v464 = &v402 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v61 - 8);
  v431 = &v402 - v62;
  v428 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v428);
  v429 = (&v402 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v461);
  v432 = &v402 - v64;
  v445 = type metadata accessor for PrimaryIconView(0);
  MEMORY[0x28223BE20](v445);
  v430 = &v402 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A090, &qword_24F94DA10);
  MEMORY[0x28223BE20](v475);
  v479 = &v402 - v66;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A098, &qword_24F94DA18);
  MEMORY[0x28223BE20](v443);
  v444 = &v402 - v67;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0A0, &unk_24F94DA20);
  MEMORY[0x28223BE20](v476);
  v446 = &v402 - v68;
  v426 = sub_24F924B38();
  v422 = *(v426 - 8);
  MEMORY[0x28223BE20](v426);
  v420 = &v402 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = sub_24F921AF8();
  v424 = *(v425 - 8);
  MEMORY[0x28223BE20](v425);
  v423 = &v402 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = sub_24F9289E8();
  v493 = *(v494 - 8);
  MEMORY[0x28223BE20](v494);
  v421 = &v402 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  MEMORY[0x28223BE20](v442);
  v427 = &v402 - v72;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0A8, &qword_24F94DA30);
  MEMORY[0x28223BE20](v506);
  v481 = &v402 - v73;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0B0, &qword_24F94DA38);
  MEMORY[0x28223BE20](v533);
  v535 = &v402 - v74;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0B8, &qword_24F94DA40);
  MEMORY[0x28223BE20](v528);
  v530 = &v402 - v75;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0C0, &qword_24F94DA48);
  MEMORY[0x28223BE20](v522);
  v524 = &v402 - v76;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0C8, &qword_24F94DA50);
  MEMORY[0x28223BE20](v503);
  v504 = &v402 - v77;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0D0, &qword_24F94DA58);
  MEMORY[0x28223BE20](v523);
  v505 = &v402 - v78;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0D8, &qword_24F94DA60);
  MEMORY[0x28223BE20](v529);
  v525 = &v402 - v79;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0E0, &qword_24F94DA68);
  MEMORY[0x28223BE20](v534);
  v531 = &v402 - v80;
  v502 = type metadata accessor for VisualView(0);
  MEMORY[0x28223BE20](v502);
  v82 = &v402 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A0E8, &unk_24F94DA70);
  v541 = *(v83 - 8);
  v542 = v83;
  MEMORY[0x28223BE20](v83);
  v539 = &v402 - v84;
  v85 = sub_24F9259C8();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v402 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v537);
  v90 = &v402 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v93 = (&v402 - v92);
  MEMORY[0x28223BE20](v94);
  v96 = &v402 - v95;
  MEMORY[0x28223BE20](v97);
  v543 = &v402 - v98;
  LODWORD(v540) = a1;
  v99 = a1;
  v100 = v49;
  if (v99 == 8)
  {
    v103 = v544;
    v101 = a6;
    if (v544 <= 2u)
    {
      if (v544)
      {
        v104 = v544;
        if (v544 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      goto LABEL_28;
    }

LABEL_17:
    if (v103 != 3)
    {
      _ZF = v103 == 4;
LABEL_19:
      v106 = v539;
      if (_ZF)
      {
        v107 = v544;
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v111 = qword_27F39E610;
      }

      else
      {
        v107 = v544;
        if (qword_27F211308 != -1)
        {
          swift_once();
        }

        v111 = qword_27F39E658;
      }

      v112 = __swift_project_value_buffer(v537, v111);
      sub_24E7263C0(v112, v96, type metadata accessor for CardLayoutMetrics);
      goto LABEL_36;
    }

    sub_24F4E9558(v527, v93);
    sub_24E726A7C(v93, v96, type metadata accessor for CardLayoutMetrics);
    v118 = v537;
    v96[v537[17]] = 0;
    v119 = v118[30];
    goto LABEL_35;
  }

  v101 = a6;
  if (v99 != 4)
  {
    v105 = v544;
    if ((sub_24E92D030(v540, v538, v544) & 1) == 0)
    {
      goto LABEL_14;
    }

    v103 = v105;
    if (v105 <= 2u)
    {
      if (v105)
      {
        v104 = v544;
        if (v105 == 1)
        {
LABEL_13:
          sub_24F4E9E44(v527, v93);
          sub_24E726A7C(v93, v96, type metadata accessor for CardLayoutMetrics);
          v106 = v539;
          v107 = v104;
LABEL_36:
          v117 = v101;
          goto LABEL_37;
        }

        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v120 = v537;
        v121 = __swift_project_value_buffer(v537, qword_27F39E628);
        sub_24E7263C0(v121, v96, type metadata accessor for CardLayoutMetrics);
        v119 = v120[30];
LABEL_35:
        *&v96[v119] = 0x403A000000000000;
        v106 = v539;
        v107 = v544;
        goto LABEL_36;
      }

LABEL_28:
      v402 = v101;
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v113 = v537;
      v114 = __swift_project_value_buffer(v537, qword_27F39E640);
      sub_24E7263C0(v114, v96, type metadata accessor for CardLayoutMetrics);
      sub_24F925898();
      sub_24F9258E8();

      (*(v86 + 104))(v88, *MEMORY[0x277CE0A10], v85);
      v115 = sub_24F9259F8();

      (*(v86 + 8))(v88, v85);
      v116 = v113[20];

      *&v96[v116] = v115;
      v117 = v402;
      v106 = v539;
      v107 = v544;
LABEL_37:
      v122 = v100;
      sub_24E726A7C(v96, v543, type metadata accessor for CardLayoutMetrics);
      if (v540 > 6u)
      {
        if (v540 <= 0xAu)
        {
          if (v540 != 7)
          {
            if (v540 == 8)
            {
              if (v107 < 4u || v107 == 4)
              {
                v302 = sub_24F92CE08();

                if ((v302 & 1) == 0)
                {
                  if (!v107)
                  {

LABEL_101:
                    v336 = v538 + *(type metadata accessor for ChallengeInviteCard(0) + 32);
                    v337 = (v336 + *(type metadata accessor for CommonCardAttributes(0) + 60));
                    v338 = v337[1];
                    if (v338)
                    {
                      *&v545 = *v337;
                      *(&v545 + 1) = v338;
                      sub_24E600AEC();

                      v339 = sub_24F925E18();
                      v341 = v340;
                      v343 = v342;
                      sub_24F925A08();
                      v344 = v117;
                      v345 = sub_24F925C98();
                      v347 = v346;
                      v349 = v348;
                      v351 = v350;

                      sub_24E600B40(v339, v341, v343 & 1);

                      *&v545 = v345;
                      *(&v545 + 1) = v347;
                      LOBYTE(v546) = v349 & 1;
                      *(&v546 + 1) = v351;
                      v352 = v419;
                      sub_24F9268B8();
                      v353 = v345;
                      v117 = v344;
                      v106 = v539;
                      sub_24E600B40(v353, v347, v349 & 1);

                      LODWORD(v339) = sub_24F9251C8();
                      *(v352 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v339;
                      v354 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0) + 36);
                      v355 = *MEMORY[0x277CE13B8];
                      v356 = sub_24F927748();
                      (*(*(v356 - 8) + 104))(v352 + v354, v355, v356);
                      v357 = *(v543 + v537[28]);
                      KeyPath = swift_getKeyPath();
                      v359 = v352 + *(v465 + 36);
                      *v359 = KeyPath;
                      *(v359 + 8) = v357;
                      *(v359 + 16) = 0;
                      LOBYTE(v357) = sub_24F925818();
                      sub_24F923318();
                      v360 = v438;
                      v361 = v352 + *(v438 + 36);
                      *v361 = v357;
                      *(v361 + 8) = v362;
                      *(v361 + 16) = v363;
                      *(v361 + 24) = v364;
                      *(v361 + 32) = v365;
                      *(v361 + 40) = 0;
                      v366 = v439;
                      sub_24E6009C8(v352, v439, &qword_27F219FD8, &qword_24F94D938);
                      v367 = 0;
                    }

                    else
                    {
                      v367 = 1;
                      v366 = v439;
                      v360 = v438;
                    }

                    (*(v440 + 56))(v366, v367, 1, v360);
                    v228 = &qword_24F94D940;
                    sub_24E60169C(v366, v472, &qword_27F219FE0, &qword_24F94D940);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725750(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
                    sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
                    v368 = v474;
                    sub_24F924E28();
                    sub_24E60169C(v368, v518, &qword_27F219FF0, &unk_24F94D950);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
                    sub_24E726054();
                    v369 = v519;
                    sub_24F924E28();
                    sub_24E601704(v368, &qword_27F219FF0, &unk_24F94D950);
                    sub_24E60169C(v369, v530, &qword_27F21A010, &unk_24F94D980);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725858();
                    sub_24E725EE8();
                    v370 = v531;
                    sub_24F924E28();
                    sub_24E601704(v369, &qword_27F21A010, &unk_24F94D980);
                    sub_24E60169C(v370, v535, &qword_27F21A0E0, &qword_24F94DA68);
                    swift_storeEnumTagMultiPayload();
                    sub_24E7257CC();
                    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
                    sub_24F924E28();
                    sub_24E601704(v370, &qword_27F21A0E0, &qword_24F94DA68);
                    v233 = v366;
                    v234 = &qword_27F219FE0;
                    goto LABEL_119;
                  }

                  v335 = sub_24F92CE08();

                  if (v335)
                  {
                    goto LABEL_101;
                  }

                  if (v107 == 1)
                  {

LABEL_116:
                    v385 = type metadata accessor for ChallengeInviteCard(0);
                    v386 = v408;
                    sub_24E60169C(v538 + *(v385 + 52), v408, &unk_27F22EC30, &qword_24F939880);
                    v387 = v441;
                    v388 = v455;
                    if ((*(v441 + 48))(v386, 1, v455) == 1)
                    {
                      sub_24E601704(v386, &unk_27F22EC30, &qword_24F939880);
                      v389 = 1;
                      v390 = v498;
                      v391 = v411;
                      v392 = v410;
                    }

                    else
                    {
                      v395 = v403;
                      (*(v387 + 32))(v403, v386, v388);
                      v396 = *(v387 + 16);
                      v397 = v437;
                      v396(v437, v395, v388);
                      v398 = v404;
                      v396(v404, v397, v388);
                      v399 = sub_24F268DBC();
                      v400 = *(v387 + 8);
                      v400(v397, v388);
                      v400(v395, v388);
                      v392 = v410;
                      *(v398 + *(v410 + 20)) = v399;
                      v391 = v411;
                      sub_24E726A7C(v398, v411, type metadata accessor for ChallengeCardCapsuleSubtitle);
                      v389 = 0;
                      v390 = v498;
                    }

                    (*(v409 + 56))(v391, v389, 1, v392);
                    v228 = &qword_24F94D930;
                    sub_24E60169C(v391, v390, &qword_27F219FD0, &qword_24F94D930);
                    swift_storeEnumTagMultiPayload();
                    sub_24E725654();
                    sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                    v401 = v495;
                    sub_24F924E28();
                    sub_24E60169C(v401, v535, &qword_27F219FC8, &qword_24F94D928);
                    swift_storeEnumTagMultiPayload();
                    sub_24E7257CC();
                    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
                    sub_24F924E28();
                    sub_24E601704(v401, &qword_27F219FC8, &qword_24F94D928);
                    v233 = v391;
                    v234 = &qword_27F219FD0;
                    goto LABEL_119;
                  }

                  v384 = sub_24F92CE08();

                  if (v384)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_118;
                }
              }

              else
              {
              }

              v303 = v538 + *(type metadata accessor for ChallengeInviteCard(0) + 32);
              v304 = (v303 + *(type metadata accessor for CommonCardAttributes(0) + 60));
              v305 = v304[1];
              if (v305)
              {
                *&v545 = *v304;
                *(&v545 + 1) = v305;
                sub_24E600AEC();

                v306 = sub_24F925E18();
                v308 = v307;
                v310 = v309;
                sub_24F925A18();
                v311 = v117;
                v312 = sub_24F925C98();
                v314 = v313;
                v316 = v315;
                v318 = v317;

                sub_24E600B40(v306, v308, v310 & 1);

                *&v545 = v312;
                *(&v545 + 1) = v314;
                LOBYTE(v546) = v316 & 1;
                *(&v546 + 1) = v318;
                v319 = v456;
                sub_24F9268B8();
                v320 = v312;
                v117 = v311;
                v106 = v539;
                sub_24E600B40(v320, v314, v316 & 1);

                LODWORD(v306) = sub_24F9251C8();
                *(v319 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v306;
                v321 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0) + 36);
                v322 = *MEMORY[0x277CE13B8];
                v323 = sub_24F927748();
                (*(*(v323 - 8) + 104))(v319 + v321, v322, v323);
                v324 = *(v543 + v537[28]);
                v325 = swift_getKeyPath();
                v326 = v465;
                v327 = v319 + *(v465 + 36);
                *v327 = v325;
                *(v327 + 8) = v324;
                *(v327 + 16) = 0;
                v328 = v460;
                sub_24E6009C8(v319, v460, &qword_27F219FF8, &unk_24F987C20);
                v329 = 0;
              }

              else
              {
                v329 = 1;
                v326 = v465;
                v328 = v460;
              }

              (*(v459 + 56))(v328, v329, 1, v326);
              v228 = &qword_24F94D960;
              sub_24E60169C(v328, v472, &qword_27F21A000, &qword_24F94D960);
              swift_storeEnumTagMultiPayload();
              sub_24E725750(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
              sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
              v330 = v474;
              sub_24F924E28();
              sub_24E60169C(v330, v518, &qword_27F219FF0, &unk_24F94D950);
              swift_storeEnumTagMultiPayload();
              sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24E726054();
              v331 = v519;
              sub_24F924E28();
              sub_24E601704(v330, &qword_27F219FF0, &unk_24F94D950);
              sub_24E60169C(v331, v530, &qword_27F21A010, &unk_24F94D980);
              swift_storeEnumTagMultiPayload();
              sub_24E725858();
              sub_24E725EE8();
              v332 = v531;
              sub_24F924E28();
              sub_24E601704(v331, &qword_27F21A010, &unk_24F94D980);
              sub_24E60169C(v332, v535, &qword_27F21A0E0, &qword_24F94DA68);
              swift_storeEnumTagMultiPayload();
              sub_24E7257CC();
              sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
              sub_24F924E28();
              sub_24E601704(v332, &qword_27F21A0E0, &qword_24F94DA68);
              v233 = v328;
              v234 = &qword_27F21A000;
              goto LABEL_119;
            }

LABEL_118:
            v402 = v117;
            v393 = v499;
            sub_24E9239C0(v540, v538, v107, v527, v500, v499);
            v228 = &unk_24F94D670;
            sub_24E60169C(v393, v498, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            sub_24E725654();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            v394 = v495;
            sub_24F924E28();
            sub_24E60169C(v394, v535, &qword_27F219FC8, &qword_24F94D928);
            swift_storeEnumTagMultiPayload();
            sub_24E7257CC();
            sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
            sub_24F924E28();
            sub_24E601704(v394, &qword_27F219FC8, &qword_24F94D928);
            v233 = v393;
            v117 = v402;
            v234 = &qword_27F214A20;
            goto LABEL_119;
          }

          v402 = v117;
          if (v107 > 2u)
          {
            v157 = v538 + *(type metadata accessor for ChallengeInviteCard(0) + 32);
            v158 = (v157 + *(type metadata accessor for CommonCardAttributes(0) + 56));
            v159 = v158[1];
            if (v159)
            {
              v160 = *v158;
              v161 = HIBYTE(v159) & 0xF;
              if ((v159 & 0x2000000000000000) == 0)
              {
                v161 = v160 & 0xFFFFFFFFFFFFLL;
              }

              if (v161)
              {
                v162 = (v543 + v537[22]);
                v163 = v162[3];
                v540 = v162[4];
                __swift_project_boxed_opaque_existential_1(v162, v163);
                *&v545 = v160;
                *(&v545 + 1) = v159;
                sub_24E600AEC();

                v164 = sub_24F925E18();
                v166 = v165;
                v168 = v167;
                v169 = sub_24F925C98();
                v544 = v122;
                v170 = v169;
                v172 = v171;
                v174 = v173;
                sub_24E600B40(v164, v166, v168 & 1);

                v175 = sub_24F925C58();
                v177 = v176;
                LOBYTE(v166) = v178;
                v159 = v179;
                v180 = v170;
                v122 = v544;
                sub_24E600B40(v180, v172, v174 & 1);

                v181 = v166 & 1;
                sub_24E5FD138(v175, v177, v166 & 1);
              }

              else
              {
                v175 = 0;
                v177 = 0;
                v181 = 0;
                v159 = 0;
              }
            }

            else
            {
              v175 = 0;
              v177 = 0;
              v181 = 0;
            }

            v333 = v467;
            *v467 = v175;
            v333[1] = v177;
            v333[2] = v181;
            v333[3] = v159;
            swift_storeEnumTagMultiPayload();
            sub_24E65D2B4(v175, v177, v181, v159);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
            sub_24E6C08EC();
            sub_24E725750(&qword_27F21A168, &qword_27F21A028, &qword_24F94D9A8, sub_24E725DFC);
            v334 = v469;
            sub_24F924E28();
            sub_24E60169C(v334, v492, &qword_27F21A040, &qword_24F94D9C0);
            swift_storeEnumTagMultiPayload();
            sub_24E725D44();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E65D2F8(v175, v177, v181, v159);
            sub_24E65D2F8(v175, v177, v181, v159);
            sub_24E601704(v334, &qword_27F21A040, &qword_24F94D9C0);
          }

          else
          {
            v133 = v538;
            if (v107 == 1)
            {
              v134 = v499;
              sub_24E9239C0(7, v538, 1u, v527, v500, v499);
              sub_24E60169C(v134, v492, &qword_27F214A20, &unk_24F94D670);
              swift_storeEnumTagMultiPayload();
              sub_24E725D44();
              sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v134, &qword_27F214A20, &unk_24F94D670);
            }

            else
            {
              v267 = type metadata accessor for ChallengeInviteCard(0);
              v268 = v133 + *(v267 + 32);
              v269 = (v268 + *(type metadata accessor for CommonCardAttributes(0) + 56));
              v270 = v269[1];
              if (!v270)
              {
                goto LABEL_85;
              }

              v271 = *v269;
              v272 = HIBYTE(v270) & 0xF;
              if ((v270 & 0x2000000000000000) == 0)
              {
                v272 = v271 & 0xFFFFFFFFFFFFLL;
              }

              if (v272)
              {
                v273 = v538 + *(v267 + 52);
                v274 = v412;
                sub_24E60169C(v273, v412, &unk_27F22EC30, &qword_24F939880);
                v275 = v441;
                if ((*(v441 + 48))(v274, 1, v455) == 1)
                {
                  sub_24E601704(v274, &unk_27F22EC30, &qword_24F939880);
                  v276 = v405;
                  sub_24E7263C0(v268, v405, type metadata accessor for CommonCardAttributes);
                  v277 = v418;
                  sub_24E7263C0(v543, v276 + *(v418 + 20), type metadata accessor for CardLayoutMetrics);
                  *(v276 + *(v277 + 24)) = v107;
                  sub_24E7263C0(v276, v417, type metadata accessor for DefaultCardTitleView);
                  swift_storeEnumTagMultiPayload();
                  sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
                  sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
                  v278 = v414;
                  sub_24F924E28();
                  sub_24E726428(v276, type metadata accessor for DefaultCardTitleView);
                }

                else
                {
                  v371 = v413;
                  v372 = v455;
                  (*(v275 + 32))(v413, v274);
                  v544 = *(v275 + 16);
                  v373 = v371;
                  v374 = v372;
                  v544(v437, v373, v372);
                  v540 = type metadata accessor for CardLayoutMetrics;
                  sub_24E7263C0(v543, v90, type metadata accessor for CardLayoutMetrics);
                  v375 = v406;
                  *v406 = v271;
                  *(v375 + 8) = v270;
                  v376 = v416;
                  v377 = v437;
                  v544(v375 + *(v416 + 20), v437, v374);
                  sub_24E7263C0(v90, v375 + *(v376 + 24), v540);

                  v378 = sub_24F268DBC();
                  sub_24E726428(v90, type metadata accessor for CardLayoutMetrics);
                  v379 = *(v441 + 8);
                  v379(v377, v374);
                  *(v375 + *(v376 + 28)) = v378;
                  sub_24E7263C0(v375, v417, type metadata accessor for ChallengeCardTitleView);
                  swift_storeEnumTagMultiPayload();
                  sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
                  sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
                  v278 = v414;
                  sub_24F924E28();
                  sub_24E726428(v375, type metadata accessor for ChallengeCardTitleView);
                  v379(v413, v455);
                }

                v280 = v454;
                sub_24E6009C8(v278, v454, &qword_27F21A020, &qword_24F94D9A0);
                v279 = 0;
              }

              else
              {
LABEL_85:
                v279 = 1;
                v280 = v454;
              }

              (*(v452 + 56))(v280, v279, 1, v453);
              sub_24E60169C(v280, v467, &qword_27F21A028, &qword_24F94D9A8);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
              sub_24E6C08EC();
              sub_24E725750(&qword_27F21A168, &qword_27F21A028, &qword_24F94D9A8, sub_24E725DFC);
              v380 = v469;
              sub_24F924E28();
              sub_24E60169C(v380, v492, &qword_27F21A040, &qword_24F94D9C0);
              swift_storeEnumTagMultiPayload();
              sub_24E725D44();
              sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v380, &qword_27F21A040, &qword_24F94D9C0);
              sub_24E601704(v280, &qword_27F21A028, &qword_24F94D9A8);
            }
          }

          v188 = &qword_27F21A048;
          v189 = &qword_24F94D9C8;
          sub_24E60169C(v122, v514, &qword_27F21A048, &qword_24F94D9C8);
          swift_storeEnumTagMultiPayload();
          sub_24E725C2C();
          sub_24E726308(&qword_27F21A158, &qword_27F21A048, &qword_24F94D9C8, sub_24E725D44);
          v126 = v122;
          v381 = v515;
          sub_24F924E28();
          sub_24E60169C(v381, v524, &qword_27F21A058, &qword_24F94D9D8);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v382 = v525;
          sub_24F924E28();
          sub_24E601704(v381, &qword_27F21A058, &qword_24F94D9D8);
          sub_24E60169C(v382, v530, &qword_27F21A0D8, &qword_24F94DA60);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v192 = v531;
          sub_24F924E28();
          sub_24E601704(v382, &qword_27F21A0D8, &qword_24F94DA60);
          sub_24E60169C(v192, v535, &qword_27F21A0E0, &qword_24F94DA68);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
          v106 = v539;
          goto LABEL_112;
        }

        if (v540 != 11)
        {
          if (v540 != 12)
          {
            goto LABEL_118;
          }

          v402 = v117;
          v124 = v107;
          if (v107 > 1u)
          {
            v182 = sub_24F926C98();
            v183 = type metadata accessor for ChallengeInviteCard(0);
            v184 = v493;
            v185 = v457;
            v186 = v494;
            (*(v493 + 16))(v457, v538 + *(v183 + 36), v494);
            (*(v184 + 56))(v185, 0, 1, v186);
            v187 = v458;
            sub_24F6C4E24(v185, v124 != 5, v182, v458);

            sub_24E601704(v185, &qword_27F213FB0, &qword_24F93E6B0);
            sub_24E60169C(v187, v487, &qword_27F214A10, &unk_24F94BD90);
            swift_storeEnumTagMultiPayload();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24E63D150();
            v126 = v490;
            sub_24F924E28();
            sub_24E601704(v187, &qword_27F214A10, &unk_24F94BD90);
          }

          else
          {
            v125 = v499;
            sub_24E9239C0(0xC, v538, v107, v527, v500, v499);
            sub_24E60169C(v125, v487, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24E63D150();
            v126 = v490;
            sub_24F924E28();
            sub_24E601704(v125, &qword_27F214A20, &unk_24F94D670);
          }

          v188 = &qword_27F214A28;
          v189 = &unk_24F93E680;
          sub_24E60169C(v126, v509, &qword_27F214A28, &unk_24F93E680);
          swift_storeEnumTagMultiPayload();
          sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24E63C1D8();
          v190 = v511;
          sub_24F924E28();
          sub_24E60169C(v190, v518, &qword_27F214A38, &unk_24F93E690);
          swift_storeEnumTagMultiPayload();
          sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
          sub_24E726054();
          v191 = v519;
          sub_24F924E28();
          sub_24E601704(v190, &qword_27F214A38, &unk_24F93E690);
          sub_24E60169C(v191, v530, &qword_27F21A010, &unk_24F94D980);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v192 = v531;
          sub_24F924E28();
          sub_24E601704(v191, &qword_27F21A010, &unk_24F94D980);
          sub_24E60169C(v192, v535, &qword_27F21A0E0, &qword_24F94DA68);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
LABEL_112:
          sub_24F924E28();
          sub_24E601704(v192, &qword_27F21A0E0, &qword_24F94DA68);
          sub_24E601704(v126, v188, v189);
          v117 = v402;
          goto LABEL_120;
        }

        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v136 = v484;
        (*(*(v135 - 8) + 56))(v484, dword_24F94DDF4[v107], 5, v135);
        v137 = v485;
        sub_24E726A7C(v136, v485, type metadata accessor for CardContentBackgroundStyle);
        sub_24E7263C0(v137, v509, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E63C1D8();
        v138 = v511;
        sub_24F924E28();
        sub_24E60169C(v138, v518, &qword_27F214A38, &unk_24F93E690);
        swift_storeEnumTagMultiPayload();
        sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
        sub_24E726054();
        v139 = v519;
        sub_24F924E28();
        sub_24E601704(v138, &qword_27F214A38, &unk_24F93E690);
        sub_24E60169C(v139, v530, &qword_27F21A010, &unk_24F94D980);
        swift_storeEnumTagMultiPayload();
        sub_24E725858();
        sub_24E725EE8();
        v140 = v531;
        sub_24F924E28();
        sub_24E601704(v139, &qword_27F21A010, &unk_24F94D980);
        sub_24E60169C(v140, v535, &qword_27F21A0E0, &qword_24F94DA68);
        swift_storeEnumTagMultiPayload();
        sub_24E7257CC();
        sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
        sub_24F924E28();
        sub_24E601704(v140, &qword_27F21A0E0, &qword_24F94DA68);
        sub_24E726428(v137, type metadata accessor for CardContentBackgroundStyle);
LABEL_120:
        sub_24E6009C8(v106, v117, &qword_27F21A0E8, &unk_24F94DA70);
        (*(v541 + 56))(v117, 0, 1, v542);
        return sub_24E726428(v543, type metadata accessor for CardLayoutMetrics);
      }

      if (v540 == 2)
      {
        v127 = v502;
        sub_24E7263C0(v538, &v82[*(v502 + 20)], type metadata accessor for ChallengeInviteCard);
        *v82 = v107;
        v128 = &v82[*(v127 + 24)];
        type metadata accessor for CardSafeArea(0);
        sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
        *v128 = sub_24F923598();
        v128[8] = v129 & 1;
        sub_24E7263C0(v82, v504, type metadata accessor for VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView, &unk_24F94DB78);
        sub_24E7259A0();
        v130 = v505;
        sub_24F924E28();
        sub_24E60169C(v130, v524, &qword_27F21A0D0, &qword_24F94DA58);
        swift_storeEnumTagMultiPayload();
        sub_24E7258E4();
        sub_24E725B74();
        v131 = v525;
        sub_24F924E28();
        sub_24E601704(v130, &qword_27F21A0D0, &qword_24F94DA58);
        sub_24E60169C(v131, v530, &qword_27F21A0D8, &qword_24F94DA60);
        swift_storeEnumTagMultiPayload();
        sub_24E725858();
        sub_24E725EE8();
        v132 = v531;
        sub_24F924E28();
        sub_24E601704(v131, &qword_27F21A0D8, &qword_24F94DA60);
        sub_24E60169C(v132, v535, &qword_27F21A0E0, &qword_24F94DA68);
        swift_storeEnumTagMultiPayload();
        sub_24E7257CC();
        sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
        sub_24F924E28();
        sub_24E601704(v132, &qword_27F21A0E0, &qword_24F94DA68);
        sub_24E726428(v82, type metadata accessor for VisualView);
        goto LABEL_120;
      }

      if (v540 != 3)
      {
        if (v540 == 4)
        {
          if (v107 >= 4u)
          {
            if (v107 == 4)
            {
              v235 = (v538 + *(type metadata accessor for ChallengeInviteCard(0) + 40));
              v236 = v235[1];
              *&v545 = *v235;
              *(&v545 + 1) = v236;
              sub_24E600AEC();

              v237 = sub_24F925E18();
              v239 = v238;
              v241 = v240;
              v242 = v537;
              v243 = sub_24F925C98();
              v402 = v117;
              v245 = v244;
              v247 = v246;
              sub_24E600B40(v237, v239, v241 & 1);

              LODWORD(v545) = sub_24F9251C8();
              v248 = sub_24F925C58();
              v250 = v249;
              v252 = v251;
              v254 = v253;
              sub_24E600B40(v243, v245, v247 & 1);

              v255 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
              v256 = *MEMORY[0x277CE13B8];
              v257 = sub_24F927748();
              v258 = v436;
              v259 = &v436[v255];
              v117 = v402;
              (*(*(v257 - 8) + 104))(v259, v256, v257);
              *v258 = v248;
              *(v258 + 8) = v250;
              *(v258 + 16) = v252 & 1;
              *(v258 + 24) = v254;
              v260 = *(v543 + v242[19]);
              v261 = swift_getKeyPath();
              v262 = v258 + *(v451 + 36);
              *v262 = v261;
              *(v262 + 8) = v260;
              *(v262 + 16) = 0;
              sub_24E60169C(v258, v449, &qword_27F214B98, &unk_24F93E740);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();
              v263 = v450;
              sub_24F924E28();
              sub_24E60169C(v263, v480, &qword_27F21A070, &unk_24F9EC500);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v123 = v483;
              sub_24F924E28();
              sub_24E601704(v263, &qword_27F21A070, &unk_24F9EC500);
              sub_24E601704(v258, &qword_27F214B98, &unk_24F93E740);
            }

            else
            {
              v281 = type metadata accessor for ChallengeInviteCard(0);
              v282 = v538;
              v283 = v538 + *(v281 + 32);
              v284 = (v283 + *(type metadata accessor for CommonCardAttributes(0) + 44));
              v285 = v284[1];
              if (v285)
              {
                v286 = *v284;
                v287 = v282 + *(v281 + 36);
                v288 = v407;
                (*(v493 + 16))(v407, v287, v494);
                v289 = v434;
                v290 = &v288[*(v434 + 20)];
                *v290 = v286;
                *(v290 + 1) = v285;
                v291 = v288;
                v292 = v435;
                sub_24E726A7C(v291, v435, type metadata accessor for HeroCardGameHeadingView);
                v293 = 0;
              }

              else
              {
                v293 = 1;
                v292 = v435;
                v289 = v434;
              }

              (*(v433 + 56))(v292, v293, 1, v289);
              sub_24E60169C(v292, v449, &qword_27F219E50, &unk_24F94D9F0);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();

              v383 = v450;
              sub_24F924E28();
              sub_24E60169C(v383, v480, &qword_27F21A070, &unk_24F9EC500);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v123 = v483;
              sub_24F924E28();
              sub_24E601704(v383, &qword_27F21A070, &unk_24F9EC500);
              sub_24E601704(v292, &qword_27F219E50, &unk_24F94D9F0);
            }
          }

          else
          {
            swift_storeEnumTagMultiPayload();
            sub_24E725CB8();
            v123 = v483;
            sub_24F924E28();
          }

          v228 = &qword_24F9EC510;
          sub_24E60169C(v123, v514, &qword_27F21A078, &qword_24F9EC510);
          swift_storeEnumTagMultiPayload();
          sub_24E725C2C();
          sub_24E726308(&qword_27F21A158, &qword_27F21A048, &qword_24F94D9C8, sub_24E725D44);
          v264 = v515;
          sub_24F924E28();
          sub_24E60169C(v264, v524, &qword_27F21A058, &qword_24F94D9D8);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v265 = v525;
          sub_24F924E28();
          sub_24E601704(v264, &qword_27F21A058, &qword_24F94D9D8);
          sub_24E60169C(v265, v530, &qword_27F21A0D8, &qword_24F94DA60);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v266 = v531;
          sub_24F924E28();
          sub_24E601704(v265, &qword_27F21A0D8, &qword_24F94DA60);
          sub_24E60169C(v266, v535, &qword_27F21A0E0, &qword_24F94DA68);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
          v106 = v539;
          sub_24F924E28();
          sub_24E601704(v266, &qword_27F21A0E0, &qword_24F94DA68);
          v233 = v123;
          v234 = &qword_27F21A078;
          goto LABEL_119;
        }

        goto LABEL_118;
      }

      if (v107 > 2u)
      {
        v193 = v538;
        if (v107 == 3)
        {
          v294 = type metadata accessor for ChallengeInviteCard(0);
          v295 = v430;
          (*(v493 + 16))(v430, v193 + *(v294 + 36), v494);
          v296 = v543 + v537[32];
          v297 = *(v296 + 16);
          v298 = *(v296 + 24);
          v299 = v445;
          *(v295 + *(v445 + 20)) = *(v543 + v537[30]);
          v300 = v295 + *(v299 + 24);
          *v300 = *v296;
          *(v300 + 16) = v297;
          *(v300 + 24) = v298;
          *(v295 + *(v299 + 28)) = 3;
          sub_24E7263C0(v295, v444, type metadata accessor for PrimaryIconView);
          swift_storeEnumTagMultiPayload();
          sub_24E63CB8C();
          sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView, &unk_24F94DB28);

          v301 = v446;
          sub_24F924E28();
          sub_24E60169C(v301, v479, &qword_27F21A0A0, &unk_24F94DA20);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v155 = v481;
          sub_24F924E28();
          sub_24E601704(v301, &qword_27F21A0A0, &unk_24F94DA20);
          sub_24E726428(v295, type metadata accessor for PrimaryIconView);
          goto LABEL_74;
        }

        if (v107 == 4)
        {
          type metadata accessor for ChallengeInviteCard(0);
          v194 = v421;
          sub_24F9289C8();
          v195 = *MEMORY[0x277CE0118];
          v196 = v422;
          v544 = *(v422 + 104);
          v197 = v420;
          v198 = v426;
          v544(v420, v195, v426);
          v199 = v423;
          sub_24F9219A8();
          (*(v196 + 8))(v197, v198);
          sub_24E725708(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
          sub_24E725708(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
          v200 = v427;
          v201 = v494;
          v202 = v425;
          sub_24F925ED8();
          (*(v424 + 8))(v199, v202);
          (*(v493 + 8))(v194, v201);
          v203 = sub_24F927618();
          v205 = v204;
          v206 = v117;
          v207 = (v200 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
          v208 = sub_24F924258();
          v544(v207 + *(v208 + 20), v195, v198);
          __asm { FMOV            V0.2D, #8.0 }

          *v207 = _Q0;
          v213 = v537;
          v214 = v543;
          v215 = (v543 + v537[32]);
          v216 = *v215;
          v217 = v215[1];
          v218 = v215[2];
          v219 = v215[3];
          v220 = (v207 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36));
          *v220 = v219;
          v220[1] = v218;
          v220[2] = v216;
          v220[3] = v217;
          v221 = (v207 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36));
          v117 = v206;
          *v221 = v203;
          v221[1] = v205;
          v222 = *(v214 + v213[31]);

          sub_24F9278A8();
          v223 = (v200 + *(v442 + 36));
          *v223 = v222;
          v223[1] = v224;
          v223[2] = v225;
          sub_24E60169C(v200, v444, &qword_27F214C10, &unk_24F94FFD0);
          swift_storeEnumTagMultiPayload();
          sub_24E63CB8C();
          sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView, &unk_24F94DB28);
          v226 = v446;
          sub_24F924E28();
          sub_24E60169C(v226, v479, &qword_27F21A0A0, &unk_24F94DA20);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v155 = v481;
          sub_24F924E28();
          sub_24E601704(v226, &qword_27F21A0A0, &unk_24F94DA20);
          sub_24E601704(v200, &qword_27F214C10, &unk_24F94FFD0);
LABEL_74:
          v228 = &qword_24F94DA30;
          sub_24E60169C(v155, v504, &qword_27F21A0A8, &qword_24F94DA30);
          swift_storeEnumTagMultiPayload();
          sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView, &unk_24F94DB78);
          sub_24E7259A0();
          v229 = v505;
          sub_24F924E28();
          sub_24E60169C(v229, v524, &qword_27F21A0D0, &qword_24F94DA58);
          swift_storeEnumTagMultiPayload();
          sub_24E7258E4();
          sub_24E725B74();
          v230 = v155;
          v231 = v525;
          sub_24F924E28();
          sub_24E601704(v229, &qword_27F21A0D0, &qword_24F94DA58);
          sub_24E60169C(v231, v530, &qword_27F21A0D8, &qword_24F94DA60);
          swift_storeEnumTagMultiPayload();
          sub_24E725858();
          sub_24E725EE8();
          v232 = v531;
          sub_24F924E28();
          sub_24E601704(v231, &qword_27F21A0D8, &qword_24F94DA60);
          sub_24E60169C(v232, v535, &qword_27F21A0E0, &qword_24F94DA68);
          swift_storeEnumTagMultiPayload();
          sub_24E7257CC();
          sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
          v106 = v539;
          sub_24F924E28();
          sub_24E601704(v232, &qword_27F21A0E0, &qword_24F94DA68);
          v233 = v230;
          v234 = &qword_27F21A0A8;
LABEL_119:
          sub_24E601704(v233, v234, v228);
          goto LABEL_120;
        }
      }

      else
      {
        v141 = v538;
        if (v107 - 1 >= 2)
        {
          v142 = type metadata accessor for ChallengeInviteCard(0);
          v143 = v141;
          v144 = *(v142 + 44);
          v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
          v146 = v431;
          (*(v493 + 16))(v431, v143 + *(v142 + 36), v494);
          *(v146 + v145) = 0xC024000000000000;
          v147 = type metadata accessor for PlayerAvatar.Overlay(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v147 - 8) + 56))(v146, 0, 1, v147);
          v148 = v429;
          sub_24E7263C0(v143 + v144, v429, type metadata accessor for PlayerAvatar);
          sub_24E717FD0(v146, v148 + *(v428 + 20));
          LOBYTE(v545) = 7;
          v149 = v432;
          sub_24F8319B8(v148, &v545, v432);
          sub_24F927618();
          sub_24F9238C8();
          v150 = (v149 + *(v461 + 36));
          v151 = v546;
          *v150 = v545;
          v150[1] = v151;
          v150[2] = v547;
          v152 = &qword_27F2233D0;
          v153 = &qword_24F958810;
          sub_24E60169C(v149, v463, &qword_27F2233D0, &qword_24F958810);
          swift_storeEnumTagMultiPayload();
          sub_24E680290();
          v154 = v464;
          sub_24F924E28();
          sub_24E60169C(v154, v479, &qword_27F21A088, &qword_24F94DA08);
          swift_storeEnumTagMultiPayload();
          sub_24E725A2C();
          sub_24E725AE8();
          v155 = v481;
          sub_24F924E28();
          sub_24E601704(v154, &qword_27F21A088, &qword_24F94DA08);
          v156 = v149;
LABEL_73:
          sub_24E601704(v156, v152, v153);
          goto LABEL_74;
        }
      }

      swift_storeEnumTagMultiPayload();
      sub_24E680290();
      v227 = v464;
      sub_24F924E28();
      v152 = &qword_27F21A088;
      v153 = &qword_24F94DA08;
      sub_24E60169C(v227, v479, &qword_27F21A088, &qword_24F94DA08);
      swift_storeEnumTagMultiPayload();
      sub_24E725A2C();
      sub_24E725AE8();
      v155 = v481;
      sub_24F924E28();
      v156 = v227;
      goto LABEL_73;
    }

    goto LABEL_17;
  }

  _ZF = v544 == 4;
  if (v544 >= 4u)
  {
    goto LABEL_19;
  }

LABEL_14:
  v108 = v542;
  v109 = *(v541 + 56);

  return v109(v101, 1, 1, v108);
}

uint64_t sub_24E722834@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24F9259C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          v24 = v11;
          swift_once();
          v11 = v24;
        }

        v14 = qword_27F39E610;
      }

      else
      {
        if (qword_27F211308 != -1)
        {
          v26 = v11;
          swift_once();
          v11 = v26;
        }

        v14 = qword_27F39E658;
      }

      v22 = __swift_project_value_buffer(v11, v14);
      sub_24E7263C0(v22, v13, type metadata accessor for CardLayoutMetrics);
      return sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    }

    v20 = v11;
    sub_24F4E9558(a2, v13);
    result = sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    *(a3 + *(v20 + 68)) = 0;
LABEL_17:
    *(a3 + *(v20 + 120)) = 0x403A000000000000;
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_24F4E9E44(a2, v13);
      return sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    }

    if (qword_27F2112F8 != -1)
    {
      v25 = v11;
      swift_once();
      v11 = v25;
    }

    v20 = v11;
    v21 = __swift_project_value_buffer(v11, qword_27F39E628);
    sub_24E7263C0(v21, v13, type metadata accessor for CardLayoutMetrics);
    result = sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
    goto LABEL_17;
  }

  if (qword_27F211300 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  v15 = v11;
  v16 = __swift_project_value_buffer(v11, qword_27F39E640);
  sub_24E7263C0(v16, v13, type metadata accessor for CardLayoutMetrics);
  sub_24E726A7C(v13, a3, type metadata accessor for CardLayoutMetrics);
  sub_24F925898();
  sub_24F9258E8();

  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  v17 = sub_24F9259F8();

  (*(v7 + 8))(v9, v6);
  v18 = *(v15 + 80);

  *(a3 + v18) = v17;
  return result;
}

uint64_t sub_24E722C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A290, &qword_24F94DC58);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CardSmallGameIcon(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrimaryIconView(0);
  if (*(a1 + *(v8 + 28)) == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);
    return sub_24F924E28();
  }

  else
  {
    v10 = v8;
    v11 = sub_24F9289E8();
    (*(*(v11 - 8) + 16))(v7, a1, v11);
    v12 = *(a1 + *(v10 + 20));
    v13 = a1 + *(v10 + 24);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    *&v7[*(v5 + 20)] = v12;
    v16 = &v7[*(v5 + 24)];
    *v16 = *v13;
    *(v16 + 2) = v14;
    *(v16 + 3) = v15;
    sub_24E7263C0(v7, v4, type metadata accessor for CardSmallGameIcon);
    swift_storeEnumTagMultiPayload();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);

    sub_24F924E28();
    return sub_24E726428(v7, type metadata accessor for CardSmallGameIcon);
  }
}

uint64_t sub_24E722EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9289E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for PrimaryIconView(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + *(v5 + 20));
  v13 = *(a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v10 = type metadata accessor for CardSmallGameIcon(0);
  *(a2 + *(v10 + 20)) = v7;
  v11 = a2 + *(v10 + 24);
  *v11 = v13;
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
}

uint64_t sub_24E722F80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A278, &qword_24F94DC50);
  type metadata accessor for CardSmallGameIcon(0);
  sub_24E6A4C1C();
  sub_24E726DB0();
  sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);
  return sub_24F927568();
}

uint64_t sub_24E723078@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_24F924848();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A208, &qword_24F94DBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A210, &qword_24F94DBD0);
  MEMORY[0x28223BE20](v68);
  v70 = &v63 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A218, &qword_24F94DBD8);
  MEMORY[0x28223BE20](v67);
  v69 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v23 = *v2;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v63 = v20;
    }

    else
    {
      if (v23 == 4)
      {
        goto LABEL_15;
      }

      v63 = v20;
    }
  }

  else
  {
    v63 = v20;
  }

  v24 = sub_24F92CE08();

  if (v24)
  {
    goto LABEL_11;
  }

  if (v23 >= 4)
  {
    goto LABEL_15;
  }

  v25 = sub_24F92CE08();

  if (v25)
  {
    goto LABEL_11;
  }

  if (v23 > 2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v62 = sub_24F92CE08();

  if ((v62 & 1) == 0)
  {
    if (v23 <= 1 && v23)
    {

      goto LABEL_12;
    }

    sub_24F92CE08();
  }

LABEL_11:
  if ((v23 - 3) < 3)
  {
LABEL_16:
    v26 = type metadata accessor for VisualView(0);
    v32 = &v2[*(v26 + 20)];
    v33 = type metadata accessor for ChallengeInviteCard(0);
    sub_24E7263C0(&v32[*(v33 + 44)], v18, type metadata accessor for PlayerAvatar);
    goto LABEL_21;
  }

LABEL_12:
  v26 = type metadata accessor for VisualView(0);
  v27 = &v2[*(v26 + 20)];
  v28 = type metadata accessor for ChallengeInviteCard(0);
  sub_24E7263C0(&v27[*(v28 + 44)], v15, type metadata accessor for PlayerAvatar);
  v29 = *(v28 + 36);
  v30 = sub_24F9289E8();
  (*(*(v30 - 8) + 16))(v12, &v27[v29], v30);
  if (v23 == 1)
  {

    v31 = 10.0;
  }

  else
  {
    v34 = sub_24F92CE08();

    if (v34)
    {
      v31 = 10.0;
    }

    else
    {
      v31 = -10.0;
    }
  }

  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48)] = v31;
  v35 = type metadata accessor for PlayerAvatar.Overlay(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
  sub_24E726A7C(v15, v18, type metadata accessor for PlayerAvatar);
  sub_24E717FD0(v12, &v18[*(v63 + 20)]);
LABEL_21:
  sub_24E726A7C(v18, v22, type metadata accessor for PlayerAvatar);
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A220, &qword_24F94DBE0);
  sub_24E723B94(v22, v2, &v7[*(v36 + 44)]);
  type metadata accessor for VisualView(0);
  v37 = &v2[*(v26 + 24)];
  v38 = *v37;
  v39 = v37[8];

  if ((v39 & 1) == 0)
  {
    sub_24F92BDC8();
    v40 = sub_24F9257A8();
    sub_24F921FD8();

    v41 = v64;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v65 + 8))(v41, v66);
    v38 = v72;
  }

  swift_getKeyPath();
  v72 = v38;
  sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v42 = *(v38 + 16);

  if (v23 == 4)
  {

    v43 = sub_24F925868();
  }

  else
  {
    v44 = sub_24F92CE08();

    if (v44)
    {
      v43 = sub_24F925868();
    }

    else
    {
      v43 = sub_24F925848();
    }
  }

  v45 = sub_24EA91914(v43, v42);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = sub_24F925808();
  v53 = v7;
  v54 = v70;
  sub_24E6009C8(v53, v70, &qword_27F21A208, &qword_24F94DBC8);
  v55 = v54 + *(v68 + 36);
  *v55 = v52;
  *(v55 + 8) = v45;
  *(v55 + 16) = v47;
  *(v55 + 24) = v49;
  *(v55 + 32) = v51;
  *(v55 + 40) = 0;
  v56 = sub_24F927618();
  v58 = v57;
  v59 = v69;
  v60 = &v69[*(v67 + 36)];
  sub_24E724488(v2, v60);
  *(v60 + 104) = v56;
  *(v60 + 112) = v58;
  sub_24E6009C8(v54, v59, &qword_27F21A210, &qword_24F94DBD0);
  sub_24E6009C8(v59, v71, &qword_27F21A218, &qword_24F94DBD8);
  return sub_24E726428(v22, type metadata accessor for PlayerAvatar);
}

uint64_t sub_24E723B94@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v84 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A228, &qword_24F94DC18);
  MEMORY[0x28223BE20](v76);
  v78 = (&v70 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A230, &qword_24F94DC20);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A238, &qword_24F94DC28);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v80 = &v70 - v11;
  v12 = type metadata accessor for PlayerAvatar(0);
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v15);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A240, &qword_24F94DC30);
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v70 - v24;
  MEMORY[0x28223BE20](v25);
  v74 = &v70 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  sub_24E7263C0(a1, v14, type metadata accessor for PlayerAvatar);
  LOBYTE(v98) = 7;
  sub_24F8319B8(v14, &v98, v19);
  sub_24F927618();
  sub_24F9238C8();
  v33 = &v19[*(v15 + 36)];
  v34 = v86;
  *v33 = v85;
  *(v33 + 1) = v34;
  *(v33 + 2) = v87;
  sub_24F927618();
  v35 = 1;
  sub_24F9242E8();
  v36 = v19;
  v37 = v79;
  sub_24E6009C8(v36, v29, &qword_27F2233D0, &qword_24F958810);
  v75 = v20;
  v38 = &v29[*(v20 + 36)];
  v39 = v93;
  *(v38 + 4) = v92;
  *(v38 + 5) = v39;
  *(v38 + 6) = v94;
  v40 = v89;
  *v38 = v88;
  *(v38 + 1) = v40;
  v41 = v91;
  *(v38 + 2) = v90;
  *(v38 + 3) = v41;
  sub_24E6009C8(v29, v32, &qword_27F21A240, &qword_24F94DC30);
  v42 = &v37[*(type metadata accessor for VisualView(0) + 20)];
  v43 = *&v42[*(type metadata accessor for ChallengeInviteCard(0) + 48)];
  v44 = *(v43 + 16);
  if (v44 && *v37 >= 3u)
  {
    if (v44 == 1)
    {
      sub_24E7263C0(v43 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v14, type metadata accessor for PlayerAvatar);
      LOBYTE(v98) = 7;
      v46 = v73;
      sub_24F8319B8(v14, &v98, v73);
      sub_24F927618();
      sub_24F9238C8();
      v47 = (v46 + *(v15 + 36));
      v48 = v96;
      *v47 = v95;
      v47[1] = v48;
      v47[2] = v97;
      sub_24F927618();
      sub_24F9242E8();
      v49 = v46;
      v50 = v72;
      sub_24E6009C8(v49, v72, &qword_27F2233D0, &qword_24F958810);
      v51 = (v50 + *(v75 + 36));
      v52 = v103;
      v51[4] = v102;
      v51[5] = v52;
      v51[6] = v104;
      v53 = v99;
      *v51 = v98;
      v51[1] = v53;
      v54 = v101;
      v51[2] = v100;
      v51[3] = v54;
      v55 = v50;
      v56 = v74;
      sub_24E6009C8(v55, v74, &qword_27F21A240, &qword_24F94DC30);
      sub_24E60169C(v56, v78, &qword_27F21A240, &qword_24F94DC30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A248, &qword_24F94DC38);
      sub_24E726C34();
      sub_24E726CC0();
      v57 = v77;
      sub_24F924E28();
      sub_24E601704(v56, &qword_27F21A240, &qword_24F94DC30);
    }

    else
    {

      v59 = sub_24E726AEC(v58);
      v61 = v60;

      sub_24F927618();
      sub_24F9242E8();
      v62 = v78;
      *v78 = v59;
      v62[1] = v61;
      v63 = v103;
      *(v62 + 5) = v102;
      *(v62 + 6) = v63;
      *(v62 + 7) = v104;
      v64 = v99;
      *(v62 + 1) = v98;
      *(v62 + 2) = v64;
      v65 = v101;
      *(v62 + 3) = v100;
      *(v62 + 4) = v65;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A248, &qword_24F94DC38);
      sub_24E726C34();
      sub_24E726CC0();
      v57 = v77;
      sub_24F924E28();
    }

    v45 = v80;
    sub_24E6009C8(v57, v80, &qword_27F21A230, &qword_24F94DC20);
    v35 = 0;
  }

  else
  {
    v45 = v80;
  }

  (*(v81 + 56))(v45, v35, 1, v82);
  sub_24E60169C(v32, v22, &qword_27F21A240, &qword_24F94DC30);
  v66 = v83;
  sub_24E60169C(v45, v83, &qword_27F21A238, &qword_24F94DC28);
  v67 = v84;
  sub_24E60169C(v22, v84, &qword_27F21A240, &qword_24F94DC30);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A268, &qword_24F94DC40);
  sub_24E60169C(v66, v67 + *(v68 + 48), &qword_27F21A238, &qword_24F94DC28);
  sub_24E601704(v45, &qword_27F21A238, &qword_24F94DC28);
  sub_24E601704(v32, &qword_27F21A240, &qword_24F94DC30);
  sub_24E601704(v66, &qword_27F21A238, &qword_24F94DC28);
  return sub_24E601704(v22, &qword_27F21A240, &qword_24F94DC30);
}

uint64_t sub_24E724488@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v8 = *a1;
  if (v8 == 1)
  {

LABEL_4:
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    return result;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_4;
  }

  if (v8 > 4)
  {

    v12 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();

    v12 = v11 & 1;
  }

  v13 = &a1[*(type metadata accessor for VisualView(0) + 24)];
  v14 = *v13;
  v15 = v13[8];

  if ((v15 & 1) == 0)
  {
    sub_24F92BDC8();
    v16 = v12;
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    v12 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v14 = v46;
  }

  swift_getKeyPath();
  v46 = v14;
  sub_24E725708(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v18 = *(v14 + 16);

  if (v8 > 4)
  {
  }

  else
  {
    v19 = sub_24F92CE08();

    if ((v19 & 1) == 0)
    {
      v20 = sub_24F925868();
LABEL_18:
      v24 = v20;
      goto LABEL_19;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v22 = sub_24F925818();
  *(inited + 32) = v22;
  v23 = sub_24F925858();
  *(inited + 33) = v23;
  v24 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v22)
  {
    v24 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v23)
  {
    v20 = sub_24F925848();
    goto LABEL_18;
  }

LABEL_19:
  v25 = sub_24EA91914(v24, v18);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_24F925808();
  v58 = 0;
  if (v8 > 4)
  {

    v56 = sub_24F925048();
    v57 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F925258();
    goto LABEL_23;
  }

  v33 = sub_24F92CE08();

  v56 = sub_24F925048();
  v57 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(v55);
  sub_24F925258();
  if (v33)
  {
LABEL_23:
    sub_24E615E00(v55, &v45);
    v35[0] = 1;
    v35[1] = v12;
    v35[2] = 0;
    v36 = v60;
    v37 = v61;
    v38 = v32;
    *v39 = *v59;
    *&v39[3] = *&v59[3];
    v40 = v25;
    v41 = v27;
    v42 = v29;
    v43 = v31;
    v44 = 0;
    sub_24E60169C(v35, &v46, &qword_27F214DD8, &qword_24F94DC10);
    v54 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8, &qword_24F94DC10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0, &qword_24F93E940);
    sub_24E63DF14();
    sub_24E63DFA0();
    sub_24F924E28();
    sub_24E601704(v35, &qword_27F214DD8, &qword_24F94DC10);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  LOBYTE(v46) = 1;
  *(&v46 + 1) = v12;
  *(&v46 + 3) = v60;
  HIBYTE(v46) = v61;
  v47 = v32;
  *v48 = *v59;
  *&v48[3] = *&v59[3];
  v49 = v25;
  v50 = v27;
  v51 = v29;
  v52 = v31;
  v53 = 0;
  v54 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DD8, &qword_24F94DC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214DE0, &qword_24F93E940);
  sub_24E63DF14();
  sub_24E63DFA0();
  sub_24F924E28();
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_24E724C74()
{
  v0 = sub_24E60B340(qword_2861BF220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A270, &qword_24F94DC48);
  result = swift_arrayDestroy();
  off_27F219FB0 = v0;
  return result;
}

uint64_t sub_24E724CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2D0, &qword_24F94DD28);
  MEMORY[0x28223BE20](v6);
  v9 = (v23 - v8);
  if (qword_27F20FE10 != -1)
  {
    v23[0] = v7;
    swift_once();
    v7 = v23[0];
  }

  v10 = off_27F219FB0;
  if (*(off_27F219FB0 + 2) && (v11 = *(a1 + 16), v23[0] = v7, v12 = sub_24E7728CC(v11), v7 = v23[0], (v13 & 1) != 0))
  {
    v14 = *(v10[7] + 8 * v12);

    *v9 = sub_24F927618();
    v9[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2D8, &qword_24F94DD30);
    sub_24F40650C(a1);
    v23[1] = v16;
    swift_getKeyPath();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = v14;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24E727130;
    *(v18 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E0, &qword_24F94DD58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E8, &qword_24F94DD60);
    sub_24E602068(&qword_27F21A2F0, &qword_27F21A2E0, &qword_24F94DD58, MEMORY[0x277D83980]);
    sub_24E7271DC();
    sub_24F927228();
    v19 = sub_24F925808();
    v20 = v9 + *(v6 + 36);
    *v20 = v19;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 1;
    sub_24E6009C8(v9, a3, &qword_27F21A2D0, &qword_24F94DD28);
    return (*(v23[0] + 56))(a3, 0, 1, v6);
  }

  else
  {
    v22 = *(v7 + 56);

    return v22(a3, 1, 1, v6);
  }
}

void sub_24E724FF8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v11 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A370, &unk_24F94E9F0);
  MEMORY[0x28223BE20](v36);
  v15 = &v34 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A380, &qword_24F94DDA8);
  MEMORY[0x28223BE20](v34);
  v17 = &v34 - v16;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A308, &qword_24F94DD68);
  MEMORY[0x28223BE20](v35);
  v19 = &v34 - v18;
  if (*(a3 + 16) - 1 != a1 || a4 < 1)
  {
    sub_24E7263C0(a2, v13, type metadata accessor for PlayerAvatar);
    LOBYTE(v54) = 7;
    sub_24F8319B8(v13, &v54, v15);
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 16) > a1)
      {
        sub_24F927618();
        sub_24F9238C8();
        v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810) + 36)];
        v33 = v55;
        *v32 = v54;
        *(v32 + 1) = v33;
        *(v32 + 2) = v56;
        *&v15[*(v36 + 36)] = *(a5 + 24 * a1 + 32);
        v29 = &qword_27F21A370;
        v30 = &unk_24F94E9F0;
        sub_24E60169C(v15, v17, &qword_27F21A370, &unk_24F94E9F0);
        swift_storeEnumTagMultiPayload();
        sub_24E727268();
        sub_24E727544();
        sub_24F924E28();
        v31 = v15;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = sub_24F927618();
  v22 = v21;
  sub_24E7254D4(a5, a1, &v39);
  v47[6] = v45;
  v47[0] = v39;
  v47[1] = v40;
  v47[2] = v41;
  v47[3] = v42;
  *&v48 = v46;
  *(&v48 + 1) = v20;
  v56 = v41;
  v57 = v42;
  v54 = v39;
  v55 = v40;
  v60 = v45;
  v61 = v48;
  v47[4] = v43;
  v47[5] = v44;
  v49 = v22;
  v62 = v22;
  v58 = v43;
  v59 = v44;
  v50[4] = v43;
  v50[5] = v44;
  v50[6] = v45;
  v50[0] = v39;
  v50[1] = v40;
  v50[2] = v41;
  v50[3] = v42;
  v51 = v46;
  v52 = v20;
  v53 = v22;
  sub_24E60169C(v47, v38, &qword_27F21A350, &qword_24F94DD88);
  sub_24E601704(v50, &qword_27F21A350, &qword_24F94DD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A328, &qword_24F94DD78);
  sub_24F927438();
  v23 = v61;
  *(v19 + 6) = v60;
  *(v19 + 7) = v23;
  *(v19 + 16) = v62;
  v24 = v57;
  *(v19 + 2) = v56;
  *(v19 + 3) = v24;
  v25 = v59;
  *(v19 + 4) = v58;
  *(v19 + 5) = v25;
  v26 = v55;
  *v19 = v54;
  *(v19 + 1) = v26;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (*(a5 + 16) > a1)
  {
    sub_24F927618();
    sub_24F9238C8();
    v27 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A318, &qword_24F94DD70) + 36)];
    v28 = v38[1];
    *v27 = v38[0];
    *(v27 + 1) = v28;
    *(v27 + 2) = v38[2];
    *&v19[*(v35 + 36)] = *(a5 + 24 * a1 + 32);
    v29 = &qword_27F21A308;
    v30 = &qword_24F94DD68;
    sub_24E60169C(v19, v17, &qword_27F21A308, &qword_24F94DD68);
    swift_storeEnumTagMultiPayload();
    sub_24E727268();
    sub_24E727544();
    sub_24F924E28();
    v31 = v19;
LABEL_9:
    sub_24E601704(v31, v29, v30);
    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_24E7254D4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *&v12 = 43;
  *(&v12 + 1) = 0xE100000000000000;
  v6 = sub_24F92CD88();
  MEMORY[0x253050C20](v6);

  v7 = v12;
  KeyPath = swift_getKeyPath();
  LOBYTE(v12) = 0;
  result = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16) > a2)
  {
    v10 = result;
    sub_24F927618();
    result = sub_24F9238C8();
    *(a3 + 72) = v12;
    *a3 = v7;
    v11 = MEMORY[0x277D84F90];
    *(a3 + 16) = 0;
    *(a3 + 24) = v11;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = KeyPath;
    *(a3 + 56) = 0x3FB999999999999ALL;
    *(a3 + 64) = v10;
    *(a3 + 88) = v13;
    *(a3 + 104) = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E725654()
{
  result = qword_27F21A0F0;
  if (!qword_27F21A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FD0, &qword_24F94D930);
    sub_24E725708(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle, &unk_24F958E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A0F0);
  }

  return result;
}

uint64_t sub_24E725708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E725750(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7257CC()
{
  result = qword_27F21A100;
  if (!qword_27F21A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0E0, &qword_24F94DA68);
    sub_24E725858();
    sub_24E725EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A100);
  }

  return result;
}

unint64_t sub_24E725858()
{
  result = qword_27F21A108;
  if (!qword_27F21A108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0D8, &qword_24F94DA60);
    sub_24E7258E4();
    sub_24E725B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A108);
  }

  return result;
}

unint64_t sub_24E7258E4()
{
  result = qword_27F21A110;
  if (!qword_27F21A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0D0, &qword_24F94DA58);
    sub_24E725708(&qword_27F21A118, type metadata accessor for VisualView, &unk_24F94DB78);
    sub_24E7259A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A110);
  }

  return result;
}

unint64_t sub_24E7259A0()
{
  result = qword_27F21A120;
  if (!qword_27F21A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0A8, &qword_24F94DA30);
    sub_24E725A2C();
    sub_24E725AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A120);
  }

  return result;
}

unint64_t sub_24E725A2C()
{
  result = qword_27F21A128;
  if (!qword_27F21A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0A0, &unk_24F94DA20);
    sub_24E63CB8C();
    sub_24E725708(&qword_27F21A130, type metadata accessor for PrimaryIconView, &unk_24F94DB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A128);
  }

  return result;
}

unint64_t sub_24E725AE8()
{
  result = qword_27F21A138;
  if (!qword_27F21A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A088, &qword_24F94DA08);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A138);
  }

  return result;
}

unint64_t sub_24E725B74()
{
  result = qword_27F21A140;
  if (!qword_27F21A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A058, &qword_24F94D9D8);
    sub_24E725C2C();
    sub_24E726308(&qword_27F21A158, &qword_27F21A048, &qword_24F94D9C8, sub_24E725D44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A140);
  }

  return result;
}

unint64_t sub_24E725C2C()
{
  result = qword_27F21A148;
  if (!qword_27F21A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A078, &qword_24F9EC510);
    sub_24E725CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A148);
  }

  return result;
}

unint64_t sub_24E725CB8()
{
  result = qword_27F21A150;
  if (!qword_27F21A150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A070, &unk_24F9EC500);
    sub_24E7179AC();
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A150);
  }

  return result;
}

unint64_t sub_24E725D44()
{
  result = qword_27F21A160;
  if (!qword_27F21A160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A040, &qword_24F94D9C0);
    sub_24E6C08EC();
    sub_24E725750(&qword_27F21A168, &qword_27F21A028, &qword_24F94D9A8, sub_24E725DFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A160);
  }

  return result;
}

unint64_t sub_24E725DFC()
{
  result = qword_27F21A170;
  if (!qword_27F21A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A020, &qword_24F94D9A0);
    sub_24E725708(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
    sub_24E725708(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A170);
  }

  return result;
}

unint64_t sub_24E725EE8()
{
  result = qword_27F21A180;
  if (!qword_27F21A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A010, &unk_24F94D980);
    sub_24E725FA0(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
    sub_24E726054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A180);
  }

  return result;
}

uint64_t sub_24E725FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E725708(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E726054()
{
  result = qword_27F21A188;
  if (!qword_27F21A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FF0, &unk_24F94D950);
    sub_24E725750(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
    sub_24E725750(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A188);
  }

  return result;
}

unint64_t sub_24E726138()
{
  result = qword_27F21A198;
  if (!qword_27F21A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FF8, &unk_24F987C20);
    sub_24E7261F0();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A198);
  }

  return result;
}

unint64_t sub_24E7261F0()
{
  result = qword_27F21A1A0;
  if (!qword_27F21A1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A1A8, &qword_24F94DAB0);
    sub_24E6A62C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A1A0);
  }

  return result;
}

unint64_t sub_24E72627C()
{
  result = qword_27F21A1B8;
  if (!qword_27F21A1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219FD8, &qword_24F94D938);
    sub_24E726138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A1B8);
  }

  return result;
}

uint64_t sub_24E726308(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E725750(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7263C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E726428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E72649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E726570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24E72662C(uint64_t a1)
{
  result = sub_24F9289E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E7266C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeInviteCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E72679C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeInviteCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24E72685C(uint64_t a1)
{
  type metadata accessor for ChallengeInviteCard(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7268F0(uint64_t a1)
{
  if (!qword_27F214D30)
  {
    type metadata accessor for CardSafeArea(255);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F214D30);
    }
  }
}

unint64_t sub_24E72698C()
{
  result = qword_27F21A200;
  if (!qword_27F21A200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A0E8, &unk_24F94DA70);
    sub_24E7257CC();
    sub_24E726308(&qword_27F21A1C0, &qword_27F219FC8, &qword_24F94D928, sub_24E725654);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A200);
  }

  return result;
}

uint64_t sub_24E726A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E726AEC(uint64_t a1)
{
  v2 = qword_27F20FE10;

  if (v2 != -1)
  {
    swift_once();
  }

  v6 = sub_24E6B7C48(*(off_27F219FB0 + 2), a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 = v5;
  v10 = v4;
  v11 = v3;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 != (v9 >> 1) - v10)
  {
LABEL_14:
    swift_unknownObjectRelease();
    v5 = v9;
    v4 = v10;
    v3 = v11;
LABEL_4:
    sub_24E6B8064(v6, v3, v4, v5);
    v8 = v7;
LABEL_11:
    swift_unknownObjectRelease();
    return v8;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v8;
}

unint64_t sub_24E726C34()
{
  result = qword_27F21A250;
  if (!qword_27F21A250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A240, &qword_24F94DC30);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A250);
  }

  return result;
}

unint64_t sub_24E726CC0()
{
  result = qword_27F21A258;
  if (!qword_27F21A258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A248, &qword_24F94DC38);
    sub_24E726D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A258);
  }

  return result;
}

unint64_t sub_24E726D4C()
{
  result = qword_27F21A260;
  if (!qword_27F21A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A260);
  }

  return result;
}

unint64_t sub_24E726DB0()
{
  result = qword_27F21A280;
  if (!qword_27F21A280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A278, &qword_24F94DC50);
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A280);
  }

  return result;
}

unint64_t sub_24E726E90()
{
  result = qword_27F21A298;
  if (!qword_27F21A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A218, &qword_24F94DBD8);
    sub_24E726F48();
    sub_24E602068(&qword_27F21A2B0, &qword_27F21A2B8, &qword_24F94DCC8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A298);
  }

  return result;
}

unint64_t sub_24E726F48()
{
  result = qword_27F21A2A0;
  if (!qword_27F21A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A210, &qword_24F94DBD0);
    sub_24E602068(&qword_27F21A2A8, &qword_27F21A208, &qword_24F94DBC8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2A0);
  }

  return result;
}

unint64_t sub_24E727004()
{
  result = qword_27F21A2C0;
  if (!qword_27F21A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2C8, &qword_24F94DCD0);
    sub_24E6A4C1C();
    sub_24E726DB0();
    sub_24E725708(&qword_27F21A288, type metadata accessor for CardSmallGameIcon, &unk_24F9AE9A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2C0);
  }

  return result;
}

uint64_t sub_24E7270F0()
{

  return swift_deallocObject();
}

uint64_t sub_24E72713C()
{

  return swift_deallocObject();
}

uint64_t sub_24E727174(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378, &qword_24F94DDA0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_24E7271DC()
{
  result = qword_27F21A2F8;
  if (!qword_27F21A2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2E8, &qword_24F94DD60);
    sub_24E727268();
    sub_24E727544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A2F8);
  }

  return result;
}

unint64_t sub_24E727268()
{
  result = qword_27F21A300;
  if (!qword_27F21A300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A308, &qword_24F94DD68);
    sub_24E7272F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A300);
  }

  return result;
}

unint64_t sub_24E7272F4()
{
  result = qword_27F21A310;
  if (!qword_27F21A310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A318, &qword_24F94DD70);
    sub_24E727380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A310);
  }

  return result;
}

unint64_t sub_24E727380()
{
  result = qword_27F21A320;
  if (!qword_27F21A320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A328, &qword_24F94DD78);
    sub_24E727438();
    sub_24E602068(&qword_27F21A358, &qword_27F21A360, &unk_24F94DD90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A320);
  }

  return result;
}

unint64_t sub_24E727438()
{
  result = qword_27F21A330;
  if (!qword_27F21A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A338, &qword_24F94DD80);
    sub_24E7274F0();
    sub_24E602068(&qword_27F21A348, &qword_27F21A350, &qword_24F94DD88, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A330);
  }

  return result;
}

unint64_t sub_24E7274F0()
{
  result = qword_27F21A340;
  if (!qword_27F21A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A340);
  }

  return result;
}

unint64_t sub_24E727544()
{
  result = qword_27F21A368;
  if (!qword_27F21A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A370, &unk_24F94E9F0);
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A368);
  }

  return result;
}

unint64_t sub_24E72761C()
{
  result = qword_27F21A398;
  if (!qword_27F21A398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A2D0, &qword_24F94DD28);
    sub_24E602068(&qword_27F21A3A0, &qword_27F21A3A8, &qword_24F94DDE8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A398);
  }

  return result;
}

double sub_24E7276D4()
{
  xmmword_27F21A3B0 = xmmword_24F94DE10;
  unk_27F21A3C0 = xmmword_24F94DE20;
  result = 38.0;
  xmmword_27F21A3D0 = xmmword_24F94DE30;
  unk_27F21A3E0 = xmmword_24F94DE40;
  qword_27F21A3F0 = 0x402C000000000000;
  return result;
}

__n128 static OnboardingLayoutMetrics.phone.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F20FE18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_27F21A3E0;
  *(a1 + 32) = xmmword_27F21A3D0;
  *(a1 + 48) = v1;
  *(a1 + 64) = qword_27F21A3F0;
  result = unk_27F21A3C0;
  *a1 = xmmword_27F21A3B0;
  *(a1 + 16) = result;
  return result;
}

double sub_24E727788()
{
  xmmword_27F21A3F8 = xmmword_24F94DE10;
  unk_27F21A408 = xmmword_24F94DE50;
  result = 38.0;
  xmmword_27F21A418 = xmmword_24F94DE30;
  unk_27F21A428 = xmmword_24F94DE60;
  qword_27F21A438 = 0x402C000000000000;
  return result;
}

__n128 static OnboardingLayoutMetrics.pad.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F20FE20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_27F21A428;
  *(a1 + 32) = xmmword_27F21A418;
  *(a1 + 48) = v1;
  *(a1 + 64) = qword_27F21A438;
  result = unk_27F21A408;
  *a1 = xmmword_27F21A3F8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24E72783C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E72785C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_24E7278A8(uint64_t a1)
{
  v2 = sub_24E728014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7278E4(uint64_t a1)
{
  v2 = sub_24E728014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E727940(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A450, &qword_24F94E0D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E728014();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

void FriendRequestsPrivacyState.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x73746361746E6F63;
  if (*v1)
  {
    v3 = 0x656E6F7972657665;
  }

  v4 = 0xEC000000796C6E4FLL;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t FriendRequestsPrivacyState.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E6F7972657665;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

GameStoreKit::FriendRequestsPrivacyState_optional __swiftcall FriendRequestsPrivacyState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E727B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E6F7972657665;
  }

  else
  {
    v3 = 0x73746361746E6F63;
  }

  if (v2)
  {
    v4 = 0xEC000000796C6E4FLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E6F7972657665;
  }

  else
  {
    v5 = 0x73746361746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC000000796C6E4FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24E727C0C()
{
  result = qword_27F21A440;
  if (!qword_27F21A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A440);
  }

  return result;
}

uint64_t sub_24E727C60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E727CEC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E727D64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E727DEC@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24E727E4C(uint64_t *a1@<X8>)
{
  v2 = 0x73746361746E6F63;
  if (*v1)
  {
    v2 = 0x656E6F7972657665;
  }

  v3 = 0xEC000000796C6E4FLL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_24E727F44(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x73746361746E6F63;
  if (*v1)
  {
    v3 = 0x656E6F7972657665;
  }

  v4 = 0xEC000000796C6E4FLL;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_24E727FB0()
{
  result = qword_27F21A448;
  if (!qword_27F21A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A448);
  }

  return result;
}

unint64_t sub_24E728014()
{
  result = qword_27F21A458;
  if (!qword_27F21A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A458);
  }

  return result;
}

unint64_t sub_24E72807C()
{
  result = qword_27F21A460;
  if (!qword_27F21A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A460);
  }

  return result;
}

unint64_t sub_24E7280D4()
{
  result = qword_27F21A468;
  if (!qword_27F21A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A468);
  }

  return result;
}

uint64_t sub_24E728128()
{
  type metadata accessor for GameKitAuthenticationDataIntentImplementation.Cache(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate;
  v2 = sub_24F91F648();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential) = 0;
  qword_27F21A470 = v0;
  return result;
}

uint64_t sub_24E7281BC()
{
  sub_24E728998(v0 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24E728238()
{
  if (qword_27F20FE28 != -1)
  {
    swift_once();
  }

  v1 = qword_27F21A470;
  *(v0 + 24) = qword_27F21A470;

  return MEMORY[0x2822009F8](sub_24E7282D0, v1, 0);
}

uint64_t sub_24E7282D0()
{
  v1 = sub_24E7284F0();
  *(v0 + 32) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_24E728344, 0, 0);
}

uint64_t sub_24E728344()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [v1 playerID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_24F92B0D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v9 = [*(v0 + 32) authenticationToken];
    v10 = *(v0 + 32);
    if (v9)
    {
      v11 = v9;
      v7 = sub_24F92B0D8();
      v8 = v12;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  v13 = *(v0 + 16);
  *v13 = v4;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24E728458(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return GameKitAuthenticationDataIntentImplementation.perform(_:objectGraph:)(a1);
}

uint64_t sub_24E7284F0()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  v12 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_fetchDate;
  swift_beginAccess();
  sub_24E728A00(v1 + v12, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_24E728998(v11);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_24E728998(v11);
    sub_24F91F5C8();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    if (v14 >= 15.0)
    {
      (*(v3 + 56))(v8, 1, 1, v2);
      swift_beginAccess();
      sub_24E728A70(v8, v1 + v12);
      swift_endAccess();
      v15 = *(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential);
      *(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential) = 0;
    }
  }

  v16 = OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential;
  if (!*(v1 + OBJC_IVAR____TtCV12GameStoreKit45GameKitAuthenticationDataIntentImplementationP33_72D53E1B6A518321D1A49DE2C3AA7EF05Cache_credential))
  {
    v17 = [objc_opt_self() daemonProxy];
    v18 = [v17 authenticatedCredential];

    if (v18)
    {
      sub_24F91F638();
      (*(v3 + 56))(v8, 0, 1, v2);
      swift_beginAccess();
      sub_24E728A70(v8, v1 + v12);
      swift_endAccess();
      v19 = *(v1 + v16);
      *(v1 + v16) = v18;
    }
  }

  return *(v1 + v16);
}

unint64_t sub_24E7287E4()
{
  result = qword_27F21A478;
  if (!qword_27F21A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A478);
  }

  return result;
}

uint64_t type metadata accessor for GameKitAuthenticationDataIntentImplementation.Cache(uint64_t a1)
{
  result = qword_27F21A490;
  if (!qword_27F21A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E72889C(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E728940(uint64_t a1)
{
  if (!qword_27F21A4A0)
  {
    sub_24F91F648();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21A4A0);
    }
  }
}

uint64_t sub_24E728998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E728A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E728A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E728AE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C8, &qword_24F94E328);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F94E270;
  v1 = sub_24E729620();
  *(v0 + 32) = &type metadata for AchievementsCountDataIntent;
  *(v0 + 40) = v1;
  v2 = type metadata accessor for AchievementRecordingsDataIntent(0);
  v3 = sub_24E72A0F4(&qword_27F21A4D8, type metadata accessor for AchievementRecordingsDataIntent, &protocol conformance descriptor for AchievementRecordingsDataIntent);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = sub_24E635118();
  *(v0 + 64) = &type metadata for AchievementsCountByPlayerDataIntent;
  *(v0 + 72) = v4;
  v5 = sub_24E729674();
  *(v0 + 80) = &type metadata for ActiveCallsDataIntent;
  *(v0 + 88) = v5;
  v6 = sub_24E6C2FA4();
  *(v0 + 96) = &type metadata for ActivityFeedDataIntent;
  *(v0 + 104) = v6;
  v7 = sub_24E70D7C4();
  *(v0 + 112) = &type metadata for AllFriendsPlayingGamesDataIntent;
  *(v0 + 120) = v7;
  v8 = sub_24E65404C();
  *(v0 + 128) = &type metadata for ChallengeDefinitionDataIntent;
  *(v0 + 136) = v8;
  v9 = sub_24E7296C8();
  *(v0 + 144) = &type metadata for ChallengeDefinitionsDataIntent;
  *(v0 + 152) = v9;
  v10 = sub_24E72971C();
  *(v0 + 160) = &type metadata for ChallengeDetailDataIntent;
  *(v0 + 168) = v10;
  v11 = sub_24E6512B8();
  *(v0 + 176) = &type metadata for ChallengesAllGamesDataIntent;
  *(v0 + 184) = v11;
  v12 = sub_24E729770();
  *(v0 + 192) = &type metadata for ChallengesFriendComparisonDataIntent;
  *(v0 + 200) = v12;
  v13 = sub_24E7297C4();
  *(v0 + 208) = &type metadata for ChallengesHistoryDataIntent;
  *(v0 + 216) = v13;
  v14 = sub_24E653EA8();
  *(v0 + 224) = &type metadata for ChallengesHubDataIntent;
  *(v0 + 232) = v14;
  v15 = sub_24E729818();
  *(v0 + 240) = &type metadata for CompletedChallengesDataIntent;
  *(v0 + 248) = v15;
  v16 = type metadata accessor for ContinuePlayingDataIntent(0);
  v17 = sub_24E72A0F4(&qword_27F215230, type metadata accessor for ContinuePlayingDataIntent, &unk_24F9A4618);
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v18 = sub_24E72986C();
  *(v0 + 272) = &type metadata for FriendOutboxDataIntent;
  *(v0 + 280) = v18;
  v19 = sub_24E650FC4();
  *(v0 + 288) = &type metadata for FriendRequestsDataIntent;
  *(v0 + 296) = v19;
  v20 = sub_24E6540F4();
  *(v0 + 304) = &type metadata for FriendRequestsPrivacyToggleDataIntent;
  *(v0 + 312) = v20;
  v21 = type metadata accessor for FriendsDataIntent(0);
  v22 = sub_24E72A0F4(&qword_27F2151B0, type metadata accessor for FriendsDataIntent, &unk_24FA17854);
  *(v0 + 320) = v21;
  *(v0 + 328) = v22;
  v23 = sub_24E651210();
  *(v0 + 336) = &type metadata for FriendSuggestionsDataIntent;
  *(v0 + 344) = v23;
  v24 = sub_24E7298C0();
  *(v0 + 352) = &type metadata for FriendSuggestionsDenyListDataIntent;
  *(v0 + 360) = v24;
  v25 = sub_24E729914();
  *(v0 + 368) = &type metadata for FriendshipStatusDataIntent;
  *(v0 + 376) = v25;
  v26 = sub_24E65130C();
  *(v0 + 384) = &type metadata for FriendsPlayingGameDataIntent;
  *(v0 + 392) = v26;
  v27 = sub_24E6540A0();
  *(v0 + 400) = &type metadata for FriendsPlayingGamesDataIntent;
  *(v0 + 408) = v27;
  v28 = sub_24E6F6358();
  *(v0 + 416) = &type metadata for GameAchievementsListDataIntent;
  *(v0 + 424) = v28;
  v29 = sub_24E729968();
  *(v0 + 432) = &type metadata for GameActivityDefinitionDataIntent;
  *(v0 + 440) = v29;
  v30 = sub_24E7299BC();
  *(v0 + 448) = &type metadata for GameActivityInstanceDataIntent;
  *(v0 + 456) = v30;
  v31 = sub_24E729A10();
  *(v0 + 464) = &type metadata for GameActivitiesListDataIntent;
  *(v0 + 472) = v31;
  v32 = sub_24E653FF8();
  *(v0 + 480) = &type metadata for GameDataIntent;
  *(v0 + 488) = v32;
  v33 = sub_24E729A64();
  *(v0 + 496) = &type metadata for GamePurchaseStateDataIntent;
  *(v0 + 504) = v33;
  v34 = sub_24E729AB8();
  *(v0 + 512) = &type metadata for GameStorePurchaseStateDataIntent;
  *(v0 + 520) = v34;
  v35 = sub_24E729B0C();
  *(v0 + 528) = &type metadata for GameRecordingsDataIntent;
  *(v0 + 536) = v35;
  v36 = sub_24E651018();
  *(v0 + 544) = &type metadata for GamesDataIntent;
  *(v0 + 552) = v36;
  v37 = type metadata accessor for GameDescriptorDataIntent(0);
  v38 = sub_24E72A0F4(&qword_27F21A558, type metadata accessor for GameDescriptorDataIntent, &protocol conformance descriptor for GameDescriptorDataIntent);
  *(v0 + 560) = v37;
  *(v0 + 568) = v38;
  v39 = type metadata accessor for GameLibraryDataIntent(0);
  v40 = sub_24E72A0F4(&qword_27F21A560, type metadata accessor for GameLibraryDataIntent, &protocol conformance descriptor for GameLibraryDataIntent);
  *(v0 + 576) = v39;
  *(v0 + 584) = v40;
  v41 = type metadata accessor for GameLibraryRefsDataIntent(0);
  v42 = sub_24E72A0F4(&qword_27F21A568, type metadata accessor for GameLibraryRefsDataIntent, &protocol conformance descriptor for GameLibraryRefsDataIntent);
  *(v0 + 592) = v41;
  *(v0 + 600) = v42;
  v43 = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  v44 = sub_24E72A0F4(&qword_27F2151B8, type metadata accessor for GamesRecentlyPlayedDataIntent, &unk_24F9ED0C8);
  *(v0 + 608) = v43;
  *(v0 + 616) = v44;
  v45 = sub_24E729B60();
  *(v0 + 624) = &type metadata for HasLibraryGameDataIntent;
  *(v0 + 632) = v45;
  v46 = sub_24E729BB4();
  *(v0 + 640) = &type metadata for LeaderboardsCountDataIntent;
  *(v0 + 648) = v46;
  v47 = sub_24E653F50();
  *(v0 + 656) = &type metadata for LeaderboardDataIntent;
  *(v0 + 664) = v47;
  v48 = type metadata accessor for LeaderboardsListDataIntent(0);
  v49 = sub_24E72A0F4(&qword_27F215278, type metadata accessor for LeaderboardsListDataIntent, &unk_24FA1F1AC);
  *(v0 + 672) = v48;
  *(v0 + 680) = v49;
  v50 = sub_24E729C08();
  *(v0 + 688) = &type metadata for LeaderboardSetDataIntent;
  *(v0 + 696) = v50;
  v51 = type metadata accessor for LeaderboardSetsDataIntent(0);
  v52 = sub_24E72A0F4(&qword_27F21A588, type metadata accessor for LeaderboardSetsDataIntent, &unk_24F95D994);
  *(v0 + 704) = v51;
  *(v0 + 712) = v52;
  v53 = type metadata accessor for LeaderboardsWithActivityDataIntent(0);
  v54 = sub_24E72A0F4(&qword_27F21A590, type metadata accessor for LeaderboardsWithActivityDataIntent, &unk_24F973E8C);
  *(v0 + 720) = v53;
  *(v0 + 728) = v54;
  v55 = type metadata accessor for LeaderboardsWithFriendActivityDataIntent(0);
  v56 = sub_24E72A0F4(&qword_27F21A598, type metadata accessor for LeaderboardsWithFriendActivityDataIntent, &unk_24FA37A14);
  *(v0 + 736) = v55;
  *(v0 + 744) = v56;
  v57 = sub_24E729C5C();
  *(v0 + 752) = &type metadata for OnDevicePersonalizationDataIntent;
  *(v0 + 760) = v57;
  v58 = sub_24E729CB0();
  *(v0 + 768) = &type metadata for PhotosAssetMediaDataIntent;
  *(v0 + 776) = v58;
  v59 = sub_24E729D04();
  *(v0 + 784) = &type metadata for PlayerDataIntent;
  *(v0 + 792) = v59;
  v60 = sub_24E729D58();
  *(v0 + 800) = &type metadata for PlayerIDDataIntent;
  *(v0 + 808) = v60;
  v61 = sub_24E65106C();
  *(v0 + 816) = &type metadata for PlayersDataIntent;
  *(v0 + 824) = v61;
  v62 = sub_24E729DAC();
  *(v0 + 832) = &type metadata for PlayerProfileDataIntent;
  *(v0 + 840) = v62;
  v63 = sub_24E729E00();
  *(v0 + 848) = &type metadata for PlayTogetherChallengesDataIntent;
  *(v0 + 856) = v63;
  v64 = sub_24E729E54();
  *(v0 + 864) = &type metadata for PlayTogetherGamesDataIntent;
  *(v0 + 872) = v64;
  v65 = sub_24E729EA8();
  *(v0 + 880) = &type metadata for PlayTogetherPlayerDraftDataIntent;
  *(v0 + 888) = v65;
  v66 = sub_24E67D40C();
  *(v0 + 896) = &type metadata for RecentSearchesDataIntent;
  *(v0 + 904) = v66;
  v67 = sub_24E7287E4();
  *(v0 + 912) = &type metadata for GameKitAuthenticationDataIntent;
  *(v0 + 920) = v67;
  v68 = sub_24E729EFC();
  *(v0 + 928) = &type metadata for RealNameMapDataIntent;
  *(v0 + 936) = v68;
  v69 = sub_24E729F50();
  *(v0 + 944) = &type metadata for ReportFriendProfilePageDidVisitIntent;
  *(v0 + 952) = v69;
  v70 = sub_24E729FA4();
  *(v0 + 960) = &type metadata for ReportFriendRequestsPageDidVisitIntent;
  *(v0 + 968) = v70;
  v71 = sub_24E729FF8();
  *(v0 + 976) = &type metadata for RestrictionsCheckDataIntent;
  *(v0 + 984) = v71;
  v72 = sub_24E72A04C();
  *(v0 + 992) = &type metadata for SocialIntegrationQueryDataIntent;
  *(v0 + 1000) = v72;
  v73 = sub_24E72A0A0();
  *(v0 + 1008) = &type metadata for SocialIntegrationsDataIntent;
  *(v0 + 1016) = v73;
  v74 = type metadata accessor for SocialSuggestionsDataIntent(0);
  result = sub_24E72A0F4(&qword_27F21A600, type metadata accessor for SocialSuggestionsDataIntent, &unk_24FA13590);
  *(v0 + 1024) = v74;
  *(v0 + 1032) = result;
  off_27F21A4A8 = v0;
  return result;
}

uint64_t sub_24E729218()
{
  if (qword_27F20FE30 != -1)
  {
    swift_once();
  }

  v0 = off_27F21A4A8;
  v1 = *(off_27F21A4A8 + 2);
  if (v1)
  {

    v2 = MEMORY[0x277D84F90];
    v3 = 32;
    do
    {
      v13 = *&v0[v3];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      sub_24F9284C8();
      if (swift_dynamicCast())
      {
        v5 = v14[0];
        v6 = v14[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24E6172A8(0, v2[2] + 1, 1, v2);
        }

        v8 = v2[2];
        v7 = v2[3];
        if (v8 >= v7 >> 1)
        {
          v2 = sub_24E6172A8((v7 > 1), v8 + 1, 1, v2);
        }

        v2[2] = v8 + 1;
        v9 = &v2[4 * v8];
        v9[4] = v5;
        v9[5] = v6;
        *(v9 + 3) = v13;
      }

      v3 += 16;
      --v1;
    }

    while (v1);

    if (v2[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A4C0, &qword_24F94E320);
  v10 = sub_24F92CB58();
LABEL_16:
  v14[0] = v10;

  sub_24E7C512C(v11, 1, v14);

  qword_27F21A4B0 = v14[0];
  return result;
}

double static NativeIntentDispatchableKinds.table.getter()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_24E7294EC()
{
  result = qword_27F21A4B8;
  if (!qword_27F21A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4B8);
  }

  return result;
}

double sub_24E729540()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_24E72959C()
{
  if (qword_27F20FE38 != -1)
  {
    swift_once();
  }

  v1 = qword_27F21A4B0;

  sub_24E7C54B8(v1);
}

unint64_t sub_24E729620()
{
  result = qword_27F21A4D0;
  if (!qword_27F21A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4D0);
  }

  return result;
}

unint64_t sub_24E729674()
{
  result = qword_27F21A4E0;
  if (!qword_27F21A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4E0);
  }

  return result;
}

unint64_t sub_24E7296C8()
{
  result = qword_27F21A4E8;
  if (!qword_27F21A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4E8);
  }

  return result;
}

unint64_t sub_24E72971C()
{
  result = qword_27F21A4F0;
  if (!qword_27F21A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4F0);
  }

  return result;
}

unint64_t sub_24E729770()
{
  result = qword_27F21A4F8;
  if (!qword_27F21A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A4F8);
  }

  return result;
}

unint64_t sub_24E7297C4()
{
  result = qword_27F21A500;
  if (!qword_27F21A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A500);
  }

  return result;
}

unint64_t sub_24E729818()
{
  result = qword_27F21A508;
  if (!qword_27F21A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A508);
  }

  return result;
}

unint64_t sub_24E72986C()
{
  result = qword_27F21A510;
  if (!qword_27F21A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A510);
  }

  return result;
}

unint64_t sub_24E7298C0()
{
  result = qword_27F21A518;
  if (!qword_27F21A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A518);
  }

  return result;
}

unint64_t sub_24E729914()
{
  result = qword_27F21A520;
  if (!qword_27F21A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A520);
  }

  return result;
}

unint64_t sub_24E729968()
{
  result = qword_27F21A528;
  if (!qword_27F21A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A528);
  }

  return result;
}

unint64_t sub_24E7299BC()
{
  result = qword_27F21A530;
  if (!qword_27F21A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A530);
  }

  return result;
}

unint64_t sub_24E729A10()
{
  result = qword_27F21A538;
  if (!qword_27F21A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A538);
  }

  return result;
}

unint64_t sub_24E729A64()
{
  result = qword_27F21A540;
  if (!qword_27F21A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A540);
  }

  return result;
}

unint64_t sub_24E729AB8()
{
  result = qword_27F21A548;
  if (!qword_27F21A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A548);
  }

  return result;
}

unint64_t sub_24E729B0C()
{
  result = qword_27F21A550;
  if (!qword_27F21A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A550);
  }

  return result;
}

unint64_t sub_24E729B60()
{
  result = qword_27F21A570;
  if (!qword_27F21A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A570);
  }

  return result;
}

unint64_t sub_24E729BB4()
{
  result = qword_27F21A578;
  if (!qword_27F21A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A578);
  }

  return result;
}

unint64_t sub_24E729C08()
{
  result = qword_27F21A580;
  if (!qword_27F21A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A580);
  }

  return result;
}

unint64_t sub_24E729C5C()
{
  result = qword_27F21A5A0;
  if (!qword_27F21A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5A0);
  }

  return result;
}

unint64_t sub_24E729CB0()
{
  result = qword_27F21A5A8;
  if (!qword_27F21A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5A8);
  }

  return result;
}

unint64_t sub_24E729D04()
{
  result = qword_27F21A5B0;
  if (!qword_27F21A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5B0);
  }

  return result;
}

unint64_t sub_24E729D58()
{
  result = qword_27F21A5B8;
  if (!qword_27F21A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5B8);
  }

  return result;
}

unint64_t sub_24E729DAC()
{
  result = qword_27F21A5C0;
  if (!qword_27F21A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5C0);
  }

  return result;
}

unint64_t sub_24E729E00()
{
  result = qword_27F21A5C8;
  if (!qword_27F21A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5C8);
  }

  return result;
}

unint64_t sub_24E729E54()
{
  result = qword_27F21A5D0;
  if (!qword_27F21A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5D0);
  }

  return result;
}

unint64_t sub_24E729EA8()
{
  result = qword_27F23AD50[0];
  if (!qword_27F23AD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23AD50);
  }

  return result;
}

unint64_t sub_24E729EFC()
{
  result = qword_27F21A5D8;
  if (!qword_27F21A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5D8);
  }

  return result;
}

unint64_t sub_24E729F50()
{
  result = qword_27F21A5E0;
  if (!qword_27F21A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5E0);
  }

  return result;
}

unint64_t sub_24E729FA4()
{
  result = qword_27F21A5E8;
  if (!qword_27F21A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5E8);
  }

  return result;
}

unint64_t sub_24E729FF8()
{
  result = qword_27F21A5F0;
  if (!qword_27F21A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5F0);
  }

  return result;
}

unint64_t sub_24E72A04C()
{
  result = qword_27F253B20;
  if (!qword_27F253B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F253B20);
  }

  return result;
}

unint64_t sub_24E72A0A0()
{
  result = qword_27F21A5F8;
  if (!qword_27F21A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A5F8);
  }

  return result;
}

uint64_t sub_24E72A0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000024FA464A0;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608, &qword_24F94E370);
  v7 = sub_24E72AB38(&qword_27F21A610, &qword_27F21A618, &protocol conformance descriptor for ChallengesLeaderboardSuggestion, MEMORY[0x277D22590]);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E72A324()
{
  if (*v0)
  {
    return 0x444965676170;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_24E72A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA464A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24E72A444(uint64_t a1)
{
  v2 = sub_24E72AAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72A480(uint64_t a1)
{
  v2 = sub_24E72AAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A620, &qword_24F94E378);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72AAE4();

  sub_24F92D128();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608, &qword_24F94E370);
  sub_24E72AB38(&qword_27F21A630, &qword_27F21A638, &protocol conformance descriptor for ChallengesLeaderboardSuggestion, MEMORY[0x277D83948]);
  sub_24F92CD48();

  if (!v2)
  {
    v12 = 1;
    sub_24F92CD08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesSuggestedLeaderboardsShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A640, &qword_24F94E380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E72AAE4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608, &qword_24F94E370);
  v14[15] = 0;
  sub_24E72AB38(&qword_27F21A648, &qword_27F21A650, &protocol conformance descriptor for ChallengesLeaderboardSuggestion, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_24F92CC28();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E72A950@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000024FA464A0;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A608, &qword_24F94E370);
  v7 = sub_24E72AB38(&qword_27F21A610, &qword_27F21A618, &protocol conformance descriptor for ChallengesLeaderboardSuggestion, MEMORY[0x277D22590]);
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0x444965676170;
  v8 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v8;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

unint64_t sub_24E72AAE4()
{
  result = qword_27F21A628;
  if (!qword_27F21A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A628);
  }

  return result;
}

uint64_t sub_24E72AB38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A608, &qword_24F94E370);
    sub_24E72ABC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E72ABC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengesLeaderboardSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E72AC04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24E72AC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E72ACB0()
{
  result = qword_27F21A658;
  if (!qword_27F21A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A658);
  }

  return result;
}

unint64_t sub_24E72AD08()
{
  result = qword_27F21A660;
  if (!qword_27F21A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A660);
  }

  return result;
}

unint64_t sub_24E72AD60()
{
  result = qword_27F21A668;
  if (!qword_27F21A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A668);
  }

  return result;
}

uint64_t sub_24E72ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24E72AE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24E72AE90(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E72B028(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for IncomingFriendRequest(uint64_t a1)
{
  result = qword_27F21A670;
  if (!qword_27F21A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E72B1F8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PlayerAvatar(319);
          if (v5 <= 0x3F)
          {
            sub_24E72B340();
            if (v6 <= 0x3F)
            {
              sub_24E6CFC68(319);
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

void sub_24E72B340()
{
  if (!qword_27F21A680)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21A680);
    }
  }
}

uint64_t sub_24E72B3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A7F8, &qword_24F94EA48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E73042C();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v5)
  {
    v13 = 1;
    sub_24F92CD08();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E72B534()
{
  if (*v0)
  {
    return 0x614E6C6F626D7973;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24E72B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_24E72B650(uint64_t a1)
{
  v2 = sub_24E73042C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E72B68C(uint64_t a1)
{
  v2 = sub_24E73042C();

  return MEMORY[0x2821FE720](a1, v2);
}