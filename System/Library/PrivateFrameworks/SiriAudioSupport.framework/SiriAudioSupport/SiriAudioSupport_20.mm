uint64_t sub_266491700(char a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v52 = a7;
  v53 = a8;
  v50 = a6;
  v46 = a4;
  v47 = a5;
  v54 = sub_2664DFE08();
  v51 = *(v54 - 8);
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v54);
  v44 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v48 = &v41[-v15];
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = a10;
  v20 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  v23 = os_log_type_enabled(v21, v22);
  v49 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v43 = v13;
    v25 = a3;
    v26 = v24;
    *v24 = 67240704;
    *(v24 + 4) = a1 & 1;
    *(v24 + 8) = 1026;
    v42 = a2;
    v27 = v25[33];
    v28 = v25[34];
    __swift_project_boxed_opaque_existential_1(v25 + 30, v27);
    *(v26 + 10) = (*(v28 + 88))(v27, v28) & 1;
    v13 = v43;

    *(v26 + 14) = 1026;
    *(v26 + 16) = v42 & 1;
    _os_log_impl(&dword_26629C000, v21, v22, "MediaPlaybackProvider#send setQueue starting... waited for TTS darwin notification: %{BOOL,public}d, featureFlags.skipWaitingForTTSSynthesis: %{BOOL,public}d, received notification: %{BOOL,public}d", v26, 0x14u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  else
  {
  }

  LODWORD(v43) = a9;
  (*(v17 + 8))(v19, v16);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v29 = qword_280F91D48;
  v30 = v48;
  sub_2664DFDE8();
  v31 = v51;
  v32 = v44;
  v33 = v54;
  (*(v51 + 16))(v44, v30, v54);
  v34 = (*(v31 + 80) + 33) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = "mediaPlaybackProviderCommandSendQueue";
  *(v35 + 24) = 37;
  *(v35 + 32) = 2;
  (*(v31 + 32))(v35 + v34, v32, v33);
  v36 = (v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v47;
  *v36 = v46;
  v36[1] = v37;

  v38 = sub_2664E0848();
  sub_2664DFDC8(v38, &dword_26629C000, v29, "mediaPlaybackProviderCommandSendQueue", 37, 2, v30, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2664B7414;
  *(v39 + 24) = v35;

  sub_266491BE0(sub_2664B7418, v39, v49, v50, v52, v53, v43 & 1, v45);

  return (*(v31 + 8))(v30, v33);
}

uint64_t sub_266491BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v73 = a8;
  v71 = a7;
  v76 = a6;
  v74 = a5;
  v81 = a4;
  v85 = a3;
  v75 = a2;
  v70 = a1;
  v79 = sub_2664DFE38();
  v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v80 = sub_2664DE4A8();
  v12 = *(v80 - 8);
  v13 = MEMORY[0x28223BE20](v80);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  v72 = sub_2664DE438();
  v84 = *(v72 - 8);
  v18 = MEMORY[0x28223BE20](v72);
  v82 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v19;
  MEMORY[0x28223BE20](v18);
  v83 = &v69 - v20;
  sub_2664DE428();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_280F90B40;
  v22 = unk_280F90B48;
  v23 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26);
  (*(v22 + 16))(v21, v22);
  v28 = v27;
  (*(v24 + 8))(v26, v21);
  if (v28)
  {
    sub_2664DE448();

    v29 = v80;
    if ((*(v12 + 48))(v11, 1, v80) == 1)
    {
      sub_2662A9238(v11, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      (*(v12 + 32))(v17, v11, v29);
      v30 = type metadata accessor for SiriAudioSelfLogger();
      v31 = [objc_allocWithZone(v30) init];
      sub_26646EAE8(v17);

      v32 = [objc_allocWithZone(v30) init];
      sub_26646BE04(2, v17);

      (*(v12 + 8))(v17, v29);
    }
  }

  else
  {
    v29 = v80;
  }

  v80 = mach_absolute_time();
  v33 = v85[15];
  v34 = v85[16];
  __swift_project_boxed_opaque_existential_1(v85 + 12, v33);
  v35 = (*(v34 + 16))(1005, v33, v34);
  sub_2664DE498();
  v36 = sub_2664DE458();
  v38 = v37;
  (*(v12 + 8))(v15, v29);
  v93 = v81;

  v39 = sub_2664E02A8();
  result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  v92 = result;
  *&v91 = v39;
  if (!*MEMORY[0x277D27CE8])
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2664AAA78(&v91, *MEMORY[0x277D27CE8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  v41 = sub_2664E0648();
  result = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v92 = result;
  *&v91 = v41;
  v42 = *MEMORY[0x277D27CF8];
  v43 = v79;
  v44 = v78;
  v45 = v77;
  if (!*MEMORY[0x277D27CF8])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v81 = v35;
  sub_2664AAA78(&v91, v42, &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v43, qword_280F914F0);
  swift_beginAccess();
  (*(v44 + 16))(v45, v46, v43);

  v47 = sub_2664DFE18();
  v48 = sub_2664E06C8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 136315138;
    v51 = sub_2662A320C(v36, v38, &aBlock);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_26629C000, v47, v48, "MediaPlaybackProvider#send sending command to MR with ID: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  else
  {
  }

  (*(v44 + 8))(v45, v43);
  v79 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v77 = v93;
  sub_2663178D4(v93);
  v78 = sub_2664E01A8();

  v52 = v84;
  v53 = v72;
  (*(v84 + 16))(v82, v83, v72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = v54 + v69;
  v56 = (((v54 + v69) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v82;
  v61 = v77;
  *(v59 + 16) = v81;
  *(v59 + 24) = v61;
  (*(v52 + 32))(v59 + v54, v60, v53);
  *(v59 + v55) = v71 & 1;
  v62 = v74;
  *(v59 + (v55 & 0xFFFFFFFFFFFFFFF8) + 8) = v74;
  v63 = (v59 + v56);
  v64 = v75;
  *v63 = v70;
  v63[1] = v64;
  *(v59 + v57) = v85;
  *(v59 + v58) = v80;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
  v89 = sub_2664B6BD8;
  v90 = v59;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v87 = sub_2663A0C48;
  v88 = &block_descriptor_354;
  v65 = _Block_copy(&aBlock);

  v66 = v62;

  v67 = v79;
  v68 = v78;
  [v79 sendPlaybackQueueWithResult:v66 toDestination:v76 withOptions:v78 completion:v65];
  _Block_release(v65);

  return (*(v84 + 8))(v83, v53);
}

void sub_2664925C0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v107 = a8;
  v106 = a7;
  LODWORD(v117) = a5;
  v101 = a4;
  v108 = a3;
  v118 = sub_2664DFD68();
  v14 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E0038();
  v113 = *(v17 - 8);
  v114 = v17;
  MEMORY[0x28223BE20](v17);
  v111 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2664E00B8();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2664DE438();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664DFE38();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v94 = &v91 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v91 - v28;
  if (a2)
  {
    sub_26636B8D0();
  }

  v116 = v29;
  v119 = v22;
  if (a1)
  {
    v115 = [a1 error];
    v30 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v31 = v25;
    v32 = v21;
    v33 = sub_2664E04A8();

    v34 = [a1 commandResult];
    v35 = [v34 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v120 = sub_2664E04A8();

    v36 = v33;
    v21 = v32;
    v25 = v31;
    a1 = [a1 commandResult];
  }

  else
  {
    v120 = 0;
    v36 = 0;
    v115 = 0;
  }

  v102 = [a6 shouldImmediatelyStartPlayback];
  v104 = sub_2664B2034();
  v103 = v37;
  v123 = MEMORY[0x277D84F90];
  if ((sub_2664E0D88() & 1) == 0)
  {
    if (sub_2664B21A4(&v123))
    {
      sub_2664DFD98();
      v38 = sub_2664DFD48();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = v123;
        v43 = sub_2664DFD48();
        sub_2664B29E0(v42, v43, v44);

        (*(v14 + 8))(v16, v118);
        goto LABEL_14;
      }

      (*(v14 + 8))(v16, v118);
    }
  }

LABEL_14:
  v105 = a1;
  v118 = 0x80000002664FBC60;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v100 = v117 & 1;
  v45 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  v46 = v119;
  v47 = v119[2];
  v48 = v116;
  v96 = v45;
  v95 = v47;
  v47(v116, v45, v21);

  v49 = sub_2664DFE18();
  v50 = v36;
  v51 = sub_2664E06E8();

  v117 = v50;

  if (os_log_type_enabled(v49, v51))
  {
    v91 = v25;
    v92 = 0x80000002664F3360;
    v93 = v21;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446978;
    *(v52 + 4) = sub_2662A320C(0xD00000000000001ALL, v118, aBlock);
    *(v52 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v52 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
    *(v52 + 22) = 2082;
    if (v117)
    {
      v54 = v117;
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v55 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v56 = MEMORY[0x2667834D0](v54, v55);
    v58 = v57;

    v59 = sub_2662A320C(v56, v58, aBlock);

    *(v52 + 24) = v59;
    *(v52 + 32) = 2082;
    if (v120)
    {
      v60 = v120;
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v61 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v62 = MEMORY[0x2667834D0](v60, v61);
    v64 = v63;

    v65 = sub_2662A320C(v62, v64, aBlock);

    *(v52 + 34) = v65;
    _os_log_impl(&dword_26629C000, v49, v51, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v52, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);

    v66 = v119[1];
    v21 = v93;
    v66(v116, v93);
    v67 = v92;
    v25 = v91;
  }

  else
  {

    v66 = v46[1];
    v66(v48, v21);
    v67 = 0x80000002664F3360;
  }

  v68 = v97;
  sub_2664DE428();
  sub_2664DE388();
  v70 = v69;
  (*(v98 + 8))(v68, v99);
  if (v70 >= 4.0)
  {
    v95(v25, v96, v21);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136446722;
      *(v73 + 4) = sub_2662A320C(0xD00000000000001ALL, v118, aBlock);
      *(v73 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v73 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v73 + 22) = 2050;
      *(v73 + 24) = v70;
      v75 = "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)";
      goto LABEL_36;
    }
  }

  else
  {
    v25 = v94;
    v95(v94, v96, v21);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06E8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136446722;
      *(v73 + 4) = sub_2662A320C(0xD00000000000001ALL, v118, aBlock);
      *(v73 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v73 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v73 + 22) = 2050;
      *(v73 + 24) = v70;
      v75 = "%{public}s %{public}s completed in %{public}f seconds";
LABEL_36:
      _os_log_impl(&dword_26629C000, v71, v72, v75, v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v73, -1, -1);

      v66(v25, v21);
      v76 = v117;
      v77 = v118;
      v78 = v115;
      goto LABEL_38;
    }
  }

  v66(v25, v21);
  v78 = v115;
  v76 = v117;
  v77 = v118;
LABEL_38:
  v79 = swift_allocObject();
  *(v79 + 16) = 0xD00000000000001ALL;
  *(v79 + 24) = v77;
  *(v79 + 32) = 0xD00000000000001DLL;
  *(v79 + 40) = v67;
  v80 = v67;
  v81 = v105;
  *(v79 + 48) = a11;
  *(v79 + 56) = v81;
  *(v79 + 64) = v100;
  v82 = v107;
  *(v79 + 72) = v106;
  *(v79 + 80) = v82;
  v119 = v81;

  sub_2664949C8(0xD00000000000001DLL, v80, v78, v76, v81, v102, sub_2664B741C, v79);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v83 = swift_allocObject();
  v84 = v108;
  *(v83 + 16) = a11;
  *(v83 + 24) = v84;
  *(v83 + 32) = 0xD00000000000001ALL;
  *(v83 + 40) = v77;
  *(v83 + 48) = 0xD00000000000001DLL;
  *(v83 + 56) = v80;
  *(v83 + 64) = v78;
  *(v83 + 72) = v76;
  *(v83 + 80) = v120;
  *(v83 + 88) = v81;
  *(v83 + 96) = "mediaPlaybackProviderStatusSendQueue";
  *(v83 + 104) = 36;
  *(v83 + 112) = 2;
  v85 = v103;
  *(v83 + 120) = v104;
  *(v83 + 128) = v85;
  aBlock[4] = sub_2664B7384;
  aBlock[5] = v83;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_365;
  v86 = _Block_copy(aBlock);

  v119 = v119;

  v87 = v78;
  v88 = v109;
  sub_2664E0068();
  v121 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v89 = v111;
  v90 = v114;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v88, v89, v86);
  _Block_release(v86);
  (*(v113 + 8))(v89, v90);
  (*(v110 + 8))(v88, v112);
}

uint64_t sub_2664934E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10)
{
  v34 = a4;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_266425254(a2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = a10;
  v32 = a9;
  v20 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v31 = a8;
    v24 = a7;
    v25 = a6;
    v26 = a5;
    v27 = a3;
    v28 = v23;
    *v23 = 67109120;
    *(v23 + 4) = v35 & 1;
    _os_log_impl(&dword_26629C000, v21, v22, "MediaPlaybackProvider#waitForTTSSynth setQueue done waiting on TTS synthesis, receivedNotification = %{BOOL}d", v23, 8u);
    v29 = v28;
    a3 = v27;
    a5 = v26;
    a6 = v25;
    a7 = v24;
    a8 = v31;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  sub_266491700(1, v35 & 1, a3, v34, a5, a6, a7, a8, v32 & 1, v33);
}

uint64_t sub_26649377C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v5 + 16);
  v30(v10, v11, v4);
  v12 = a1;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = v17;
    *v16 = 138543362;
    *(v16 + 4) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&dword_26629C000, v13, v14, "MediaPlaybackProvider#hasItems for query: %{public}@", v16, 0xCu);
    sub_2662A9238(v18, &qword_2800734B0, &unk_2664E3670);
    v20 = v18;
    v8 = v28;
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v16;
    a2 = v29;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v10, v4);
  v23 = [v12 _hasItems];
  v30(v8, v11, v4);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67240192;
    *(v26 + 4) = v23;
    _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackProvider#hasItems: %{BOOL,public}d", v26, 8u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  result = (v22)(v8, v4);
  *a2 = v23;
  return result;
}

uint64_t sub_266493A88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v10, v4);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = a2;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "MediaPlaybackProvider#hasSongs for library", v14, 2u);
    v17 = v16;
    a2 = v15;
    a1 = v25;
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = *(v5 + 8);
  v18(v9, v4);
  v19 = [a1 hasSongs];
  v11(v26, v10, v4);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v19;
    _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#hasSongs: %{BOOL}d", v22, 8u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  result = (v18)(v26, v4);
  *a2 = v19;
  return result;
}

void sub_266493D38(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v24 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v25 = 0xD000000000000012;
  v26 = 0x80000002664F5C10;
  MEMORY[0x2667833B0](v9, v10);
  v12 = v25;
  v11 = v26;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v5);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = a3;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2662A320C(v12, v11, &v27);
    _os_log_impl(&dword_26629C000, v14, v15, "Transformed playback identifier to spotlight identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v19 = v18;
    a3 = v23;
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v20 = sub_2664E02A8();

  v21 = [v24 entityWithSpotlightIdentifier_];

  if (v21)
  {
    v22 = [v21 representativeItem];
  }

  else
  {
    v22 = 0;
  }

  *a3 = v22;
}

uint64_t sub_266493FF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v26 = a2;
  v25 = a1;
  v24 = *v4;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "mediaPlaybackProviderSetRepeatMode";
  *(v15 + 24) = 34;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;

  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v12, "mediaPlaybackProviderSetRepeatMode", 34, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2664B7414;
  *(v19 + 24) = v15;

  sub_2664942B8(sub_2664B7418, v19, v25, v26, v24);

  return (*(v6 + 8))(v11, v5);
}

void sub_2664942B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FF0, &qword_2664EF710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  v14 = *MEMORY[0x277D27DC8];
  *(inited + 32) = *MEMORY[0x277D27DC8];
  v15 = MEMORY[0x277D849A8];
  *(inited + 40) = a3;
  v16 = *MEMORY[0x277D27DC0];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x277D837D0];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000002664FBDB0;
  v17 = v16;
  v18 = v14;
  v19 = sub_2663868A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F88, &qword_2664E90A0);
  swift_arrayDestroy();

  v20 = sub_266317B9C(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v19;
  sub_2664B337C(v20, sub_2664AA408, 0, isUniquelyReferenced_nonNull_native, aBlock);
  v50 = a1;

  v22 = [objc_opt_self() nowPlayingApplicationDestination];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v23, v9);
  v24 = v22;
  v25 = v9;
  v26 = v24;
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = a5;
    v30 = v29;
    v31 = swift_slowAlloc();
    v46 = v12;
    v47 = v25;
    v32 = v31;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v30 = 67240706;
    *(v30 + 4) = a3;
    *(v30 + 8) = 2112;
    *(v30 + 10) = v26;
    *v32 = v26;
    *(v30 + 18) = 2080;
    v34 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    sub_2664B7080();
    v35 = sub_2664E01D8();
    v37 = v36;

    v38 = sub_2662A320C(v35, v37, aBlock);

    *(v30 + 20) = v38;
    _os_log_impl(&dword_26629C000, v27, v28, "MediaPlaybackProvider#setRepeatMode sending mode:%{public}d to destination: %@ with options: %s", v30, 0x1Cu);
    sub_2662A9238(v32, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    v39 = v30;
    a5 = v48;
    MEMORY[0x266784AD0](v39, -1, -1);

    (*(v10 + 8))(v46, v47);
  }

  else
  {

    (*(v10 + 8))(v12, v25);
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D27828]) init];

  sub_266318040(v41);

  v42 = sub_2664E01A8();

  v43 = swift_allocObject();
  v44 = v49;
  v43[2] = v50;
  v43[3] = v44;
  v43[4] = a5;
  aBlock[4] = sub_2664B7074;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663A0C48;
  aBlock[3] = &block_descriptor_411;
  v45 = _Block_copy(aBlock);

  [v40 sendCommandWithResult:25 toDestination:v26 withOptions:v42 completion:v45];
  _Block_release(v45);
}

void sub_2664948A0(void *a1, void (*a2)(uint8_t **), uint64_t a3, __n128 a4)
{
  if (a1)
  {
    v7 = [a1 error];
    v8 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v9 = sub_2664E04A8();

    v10 = [a1 commandResult];
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
  }

  sub_2664949C8(0xD000000000000024, 0x80000002664FB250, v7, v9, v10, 0, a2, a3);
}

void sub_2664949C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), int a6, void (*a7)(uint8_t **), uint64_t a8)
{
  v893 = a8;
  v894 = a7;
  v846 = a6;
  v885 = a5;
  v891 = a4;
  v897 = a2;
  v895 = a1;
  v883 = sub_2664DFD68();
  v884 = *(v883 - 8);
  v9 = MEMORY[0x28223BE20](v883);
  v844 = &v829 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v845 = &v829 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v843 = &v829 - v14;
  MEMORY[0x28223BE20](v13);
  v892 = &v829 - v15;
  v16 = sub_2664DFE38();
  v896 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v829 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v829 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v829 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v829 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v829 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v829 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v36 = MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](v36);
  v38 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](&v829 - v39);
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v847 = &v829 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v47 = MEMORY[0x28223BE20](v46);
  v848 = &v829 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v50 = MEMORY[0x28223BE20](v49);
  v849 = &v829 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v851 = &v829 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v850 = &v829 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v853 = &v829 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v852 = &v829 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v855 = &v829 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v854 = &v829 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v857 = &v829 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v856 = &v829 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v861 = &v829 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v858 = &v829 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v862 = &v829 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v859 = &v829 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v860 = &v829 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v863 = &v829 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v864 = &v829 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v865 = &v829 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v866 = &v829 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v867 = &v829 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v868 = &v829 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v870 = &v829 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v869 = &v829 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v871 = &v829 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v872 = &v829 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v873 = &v829 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v874 = &v829 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v875 = &v829 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v876 = &v829 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v877 = &v829 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v878 = &v829 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v879 = &v829 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v880 = &v829 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v881 = &v829 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v882 = (&v829 - v117);
  v118 = MEMORY[0x28223BE20](v116);
  v120 = (&v829 - v119);
  v121 = MEMORY[0x28223BE20](v118);
  v890 = &v829 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v135 = &v829 - v134;
  if (a3)
  {
    v842 = v120;
    v837 = v130;
    v841 = v129;
    v835 = v128;
    v840 = v127;
    v832 = v126;
    v839 = v125;
    v838 = v124;
    v836 = v123;
    v833 = v133;
    v834 = v132;
    v831 = v131;
    v136 = sub_2664DE198();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v137 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v138 = v896;
    v139 = *(v896 + 16);
    v887 = v137;
    v889 = v896 + 16;
    v888 = v139;
    v139(v135, v137, v16);
    v140 = v136;
    v141 = v897;
    swift_bridgeObjectRetain_n();
    v142 = v140;
    v143 = sub_2664DFE18();
    v144 = sub_2664E06E8();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v830 = swift_slowAlloc();
      v902 = v830;
      *v145 = 136446722;

      v146 = sub_2662A320C(v895, v141, &v902);

      *(v145 + 4) = v146;
      swift_bridgeObjectRelease_n();
      *(v145 + 12) = 2082;
      v147 = [v142 domain];
      v148 = sub_2664E02C8();
      v149 = v138;
      v150 = v16;
      v152 = v151;

      v153 = sub_2662A320C(v148, v152, &v902);
      v16 = v150;
      v138 = v149;
      v141 = v897;

      *(v145 + 14) = v153;

      *(v145 + 22) = 2050;
      v154 = [v142 code];

      *(v145 + 24) = v154;
      _os_log_impl(&dword_26629C000, v143, v144, "MediaPlaybackProvider#readStatus MPCAssistantCommand received NSError (possibly informational) for: '%{public}s' - domain: %{public}s, code: %{public}ld...", v145, 0x20u);
      v155 = v830;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v155, -1, -1);
      MEMORY[0x266784AD0](v145, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v179 = *(v138 + 8);
    v179(v135, v16);
    v180 = v142;
    v181 = sub_2664DE198();

    IsInformational = MPCAssistantErrorIsInformational();
    if (IsInformational)
    {
      v183 = v890;
      v888(v890, v887, v16);
      v184 = v180;
      swift_bridgeObjectRetain_n();
      v185 = v184;
      v186 = sub_2664DFE18();
      v187 = sub_2664E06E8();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v886 = v16;
        v190 = v189;
        v902 = v189;
        *v188 = 136446722;

        v191 = sub_2662A320C(v895, v141, &v902);

        *(v188 + 4) = v191;
        swift_bridgeObjectRelease_n();
        *(v188 + 12) = 2082;
        v192 = [v185 domain];
        v193 = sub_2664E02C8();
        v194 = v179;
        v196 = v195;

        v197 = sub_2662A320C(v193, v196, &v902);

        *(v188 + 14) = v197;

        *(v188 + 22) = 2050;
        v198 = [v185 code];

        *(v188 + 24) = v198;
        _os_log_impl(&dword_26629C000, v186, v187, "MediaPlaybackProvider#readStatus MPCAssistantCommand received error that is informational only for: '%{public}s' - domain: %{public}s, code: %{public}ld - completed successfully", v188, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v190, -1, -1);
        MEMORY[0x266784AD0](v188, -1, -1);

        v194(v890, v886);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v179(v183, v16);
      }

      v902 = 0;
      v903 = 0uLL;
      v894(&v902);

      return;
    }

    v199 = v180;
    sub_2664DFD98();

    v200 = sub_2664DFD48();
    sub_26649D3A4(v200, v201, v895, v141, &v902);

    v202 = v902;
    v203 = [v199 domain];
    v204 = sub_2664E02C8();
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      goto LABEL_279;
    }

    v206 = v204;
    v207 = v205;

    if (v206 == sub_2664E02C8() && v207 == v208)
    {
    }

    else
    {
      v209 = sub_2664E0D88();

      if ((v209 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if ([v199 code]>= 200 && [v199 code]<= 298)
    {
      v210 = v842;
      v888(v842, v887, v16);
      v211 = v199;
      swift_bridgeObjectRetain_n();
      v212 = v211;
      v213 = sub_2664DFE18();
      v214 = sub_2664E06E8();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = v179;
        v216 = v16;
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v902 = v218;
        *v217 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v219 = qword_280072E18;
        v220 = qword_280072E20;

        v221 = sub_2662A320C(v219, v220, &v902);

        *(v217 + 4) = v221;
        *(v217 + 12) = 2082;
        v222 = v897;

        v223 = sub_2662A320C(v895, v222, &v902);

        *(v217 + 14) = v223;
        swift_bridgeObjectRelease_n();
        *(v217 + 22) = 2082;
        v224 = [v212 localizedDescription];
        v225 = sub_2664E02C8();
        v227 = v226;

        v228 = sub_2662A320C(v225, v227, &v902);

        *(v217 + 24) = v228;

        *(v217 + 32) = 2050;
        v229 = [v212 code];

        *(v217 + 34) = v229;
        _os_log_impl(&dword_26629C000, v213, v214, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Informational Error: %{public}s informational code: %{public}ld", v217, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v218, -1, -1);
        MEMORY[0x266784AD0](v217, -1, -1);

        v215(v842, v216);
        goto LABEL_81;
      }

      swift_bridgeObjectRelease_n();
      v254 = v210;
      v255 = v16;
LABEL_80:
      v179(v254, v255);
LABEL_81:
      v902 = 0;
      v903 = 0uLL;
      v894(&v902);

LABEL_145:
      v884[1](v892, v883);
      return;
    }

LABEL_30:
    v886 = v16;
    v230 = [v199 domain];
    v231 = sub_2664E02C8();
    v233 = v232;

    if (v231 == sub_2664E02C8() && v233 == v234)
    {
    }

    else
    {
      v235 = sub_2664E0D88();

      if ((v235 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if ([v199 code]== 6 || [v199 code]== 7)
    {
      v236 = v882;
      v237 = v886;
      v888(v882, v887, v886);
      v238 = v199;
      v239 = v897;
      swift_bridgeObjectRetain_n();
      v212 = v238;
      v240 = sub_2664DFE18();
      v241 = sub_2664E06E8();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v902 = v243;
        *v242 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v244 = qword_280072E18;
        v245 = qword_280072E20;

        v246 = sub_2662A320C(v244, v245, &v902);

        *(v242 + 4) = v246;
        *(v242 + 12) = 2082;

        v247 = sub_2662A320C(v895, v239, &v902);

        *(v242 + 14) = v247;
        swift_bridgeObjectRelease_n();
        *(v242 + 22) = 2082;
        v248 = [v212 localizedDescription];
        v249 = sub_2664E02C8();
        v251 = v250;

        v252 = sub_2662A320C(v249, v251, &v902);

        *(v242 + 24) = v252;

        *(v242 + 32) = 2050;
        v253 = [v212 &off_279BCCC78];

        *(v242 + 34) = v253;
        _os_log_impl(&dword_26629C000, v240, v241, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for WHA hijacking Primary: '%{public}s' - Informational Error: %{public}s informational code: %{public}ld", v242, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v243, -1, -1);
        MEMORY[0x266784AD0](v242, -1, -1);

        v254 = v882;
        v255 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v254 = v236;
        v255 = v237;
      }

      goto LABEL_80;
    }

LABEL_47:
    v269 = [v199 code];
    v270 = v886;
    if (v269 == 14)
    {
      v891 = v179;
      v271 = v881;
      v888(v881, v887, v886);
      v272 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v272;
      v274 = sub_2664DFE18();
      v275 = v270;
      v276 = sub_2664E06E8();
      if (os_log_type_enabled(v274, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        v902 = v278;
        *v277 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v279 = qword_280072E18;
        v280 = qword_280072E20;

        v281 = sub_2662A320C(v279, v280, &v902);

        *(v277 + 4) = v281;
        *(v277 + 12) = 2082;
        v282 = v897;

        v283 = sub_2662A320C(v895, v282, &v902);

        *(v277 + 14) = v283;
        swift_bridgeObjectRelease_n();
        *(v277 + 22) = 2082;
        v284 = [v273 localizedDescription];
        v285 = sub_2664E02C8();
        v287 = v286;

        v288 = sub_2662A320C(v285, v287, &v902);

        *(v277 + 24) = v288;

        *(v277 + 32) = 2050;
        v289 = [v273 &off_279BCCC78];

        *(v277 + 34) = v289;
        _os_log_impl(&dword_26629C000, v274, v276, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - CouldNotDiscoverClusterLeader Error: %{public}s CouldNotDiscoverClusterLeader code: %{public}ld", v277, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v278, -1, -1);
        MEMORY[0x266784AD0](v277, -1, -1);

        v290 = v881;
        v275 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v290 = v271;
      }

      (v891)(v290, v275);
      v344 = 0x80000002664FB4F0;
      v345 = v880;
      v888(v880, v887, v275);
      v346 = sub_2664DFE18();
      v347 = sub_2664E06B8();
      v348 = os_log_type_enabled(v346, v347);
      v349 = v894;
      if (v348)
      {
        v350 = v345;
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        v902 = v352;
        *v351 = 134218498;
        *(v351 + 4) = v202;
        *(v351 + 12) = 2048;
        *(v351 + 14) = 49;
        *(v351 + 22) = 2080;
        *(v351 + 24) = sub_2662A320C(0xD00000000000001ALL, 0x80000002664FB4F0, &v902);
        _os_log_impl(&dword_26629C000, v346, v347, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v351, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v352);
        MEMORY[0x266784AD0](v352, -1, -1);
        MEMORY[0x266784AD0](v351, -1, -1);

        v353 = v350;
        v354 = v886;
      }

      else
      {

        v353 = v345;
        v354 = v275;
      }

      (v891)(v353, v354);
      v373 = (v202 << 8) | 0x32;
      v374 = 0xD00000000000001ALL;
      goto LABEL_142;
    }

    if ([v199 code]== 17)
    {
      v305 = v879;
      v888(v879, v887, v270);
      v306 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v306;
      v307 = sub_2664DFE18();
      v308 = sub_2664E06E8();
      if (os_log_type_enabled(v307, v308))
      {
        v309 = swift_slowAlloc();
        v310 = swift_slowAlloc();
        v902 = v310;
        *v309 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v311 = qword_280072E18;
        v312 = qword_280072E20;

        v313 = sub_2662A320C(v311, v312, &v902);

        *(v309 + 4) = v313;
        *(v309 + 12) = 2082;
        v314 = v897;

        v315 = sub_2662A320C(v895, v314, &v902);

        *(v309 + 14) = v315;
        swift_bridgeObjectRelease_n();
        *(v309 + 22) = 2082;
        v316 = [v273 localizedDescription];
        v317 = sub_2664E02C8();
        v319 = v318;

        v320 = sub_2662A320C(v317, v319, &v902);

        *(v309 + 24) = v320;

        *(v309 + 32) = 2050;
        v321 = [v273 code];

        *(v309 + 34) = v321;
        _os_log_impl(&dword_26629C000, v307, v308, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - TimedOutWaitingForCanBeNowPlaying Error: %{public}s TimedOutWaitingForCanBeNowPlaying code: %{public}ld", v309, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v310, -1, -1);
        MEMORY[0x266784AD0](v309, -1, -1);

        v322 = v879;
        v270 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v322 = v305;
      }

      v179(v322, v270);
      v344 = 0x80000002664F3B80;
      v383 = v878;
      v888(v878, v887, v270);
      v384 = sub_2664DFE18();
      v385 = sub_2664E06B8();
      v386 = os_log_type_enabled(v384, v385);
      v349 = v894;
      if (v386)
      {
        v387 = swift_slowAlloc();
        v891 = v179;
        v388 = v387;
        v389 = swift_slowAlloc();
        v902 = v389;
        *v388 = 134218498;
        *(v388 + 4) = v202;
        *(v388 + 12) = 2048;
        *(v388 + 14) = 50;
        *(v388 + 22) = 2080;
        *(v388 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, &v902);
        _os_log_impl(&dword_26629C000, v384, v385, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v388, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v389);
        MEMORY[0x266784AD0](v389, -1, -1);
        MEMORY[0x266784AD0](v388, -1, -1);

        (v891)(v383, v886);
      }

      else
      {

        v179(v383, v270);
      }

      v373 = (v202 << 8) | 0x33;
      v374 = 0xD000000000000021;
      goto LABEL_142;
    }

    if ([v199 code]== 19)
    {
      v355 = v877;
      v888(v877, v887, v270);
      v356 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v356;
      v357 = sub_2664DFE18();
      v358 = sub_2664E06E8();
      if (os_log_type_enabled(v357, v358))
      {
        v359 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        v902 = v360;
        *v359 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v361 = qword_280072E18;
        v362 = qword_280072E20;

        v363 = sub_2662A320C(v361, v362, &v902);

        *(v359 + 4) = v363;
        *(v359 + 12) = 2082;
        v364 = v897;

        v365 = sub_2662A320C(v895, v364, &v902);

        *(v359 + 14) = v365;
        swift_bridgeObjectRelease_n();
        *(v359 + 22) = 2082;
        v366 = [v273 localizedDescription];
        v367 = sub_2664E02C8();
        v369 = v368;

        v370 = sub_2662A320C(v367, v369, &v902);

        *(v359 + 24) = v370;

        *(v359 + 32) = 2050;
        v371 = [v273 code];

        *(v359 + 34) = v371;
        _os_log_impl(&dword_26629C000, v357, v358, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - ApplicationTerminated Error: %{public}s ApplicationTerminated code: %{public}ld", v359, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v360, -1, -1);
        MEMORY[0x266784AD0](v359, -1, -1);

        v372 = v877;
        v270 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v372 = v355;
      }

      v179(v372, v270);
      v344 = 0x80000002664FB4D0;
      v408 = v876;
      v888(v876, v887, v270);
      v409 = sub_2664DFE18();
      v410 = sub_2664E06B8();
      v411 = os_log_type_enabled(v409, v410);
      v349 = v894;
      if (v411)
      {
        v412 = swift_slowAlloc();
        v891 = v179;
        v413 = v412;
        v414 = swift_slowAlloc();
        v902 = v414;
        *v413 = 134218498;
        *(v413 + 4) = v202;
        *(v413 + 12) = 2048;
        *(v413 + 14) = 148;
        *(v413 + 22) = 2080;
        *(v413 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664FB4D0, &v902);
        _os_log_impl(&dword_26629C000, v409, v410, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v413, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v414);
        MEMORY[0x266784AD0](v414, -1, -1);
        MEMORY[0x266784AD0](v413, -1, -1);

        (v891)(v408, v886);
      }

      else
      {

        v179(v408, v270);
      }

      v373 = (v202 << 8) | 0x99;
      v374 = 0xD000000000000015;
      goto LABEL_142;
    }

    if ([v199 code]== 15)
    {
      v390 = v875;
      v888(v875, v887, v270);
      v391 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v391;
      v392 = sub_2664DFE18();
      v393 = sub_2664E06E8();
      if (os_log_type_enabled(v392, v393))
      {
        v394 = swift_slowAlloc();
        v395 = swift_slowAlloc();
        v902 = v395;
        *v394 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v396 = qword_280072E18;
        v397 = qword_280072E20;

        v398 = sub_2662A320C(v396, v397, &v902);

        *(v394 + 4) = v398;
        *(v394 + 12) = 2082;
        v399 = v897;

        v400 = sub_2662A320C(v895, v399, &v902);

        *(v394 + 14) = v400;
        swift_bridgeObjectRelease_n();
        *(v394 + 22) = 2082;
        v401 = [v273 localizedDescription];
        v402 = sub_2664E02C8();
        v404 = v403;

        v405 = sub_2662A320C(v402, v404, &v902);

        *(v394 + 24) = v405;

        *(v394 + 32) = 2050;
        v406 = [v273 code];

        *(v394 + 34) = v406;
        _os_log_impl(&dword_26629C000, v392, v393, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - OperationApplicationRequiresPreflight Error: %{public}s OperationApplicationRequiresPreflight code: %{public}ld", v394, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v395, -1, -1);
        MEMORY[0x266784AD0](v394, -1, -1);

        v407 = v875;
        v270 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v407 = v390;
      }

      v179(v407, v270);
      v344 = 0x80000002664FB4A0;
      v433 = v874;
      v888(v874, v887, v270);
      v434 = sub_2664DFE18();
      v435 = sub_2664E06B8();
      v436 = os_log_type_enabled(v434, v435);
      v349 = v894;
      if (v436)
      {
        v437 = swift_slowAlloc();
        v891 = v179;
        v438 = v437;
        v439 = swift_slowAlloc();
        v902 = v439;
        *v438 = 134218498;
        *(v438 + 4) = v202;
        *(v438 + 12) = 2048;
        *(v438 + 14) = 51;
        *(v438 + 22) = 2080;
        *(v438 + 24) = sub_2662A320C(0xD000000000000025, 0x80000002664FB4A0, &v902);
        _os_log_impl(&dword_26629C000, v434, v435, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v438, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v439);
        MEMORY[0x266784AD0](v439, -1, -1);
        MEMORY[0x266784AD0](v438, -1, -1);

        (v891)(v433, v886);
      }

      else
      {

        v179(v433, v270);
      }

      v373 = (v202 << 8) | 0x34;
      v374 = 0xD000000000000025;
      goto LABEL_142;
    }

    if ([v199 code]== 16)
    {
      v415 = v873;
      v888(v873, v887, v270);
      v416 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v416;
      v417 = sub_2664DFE18();
      v418 = sub_2664E06E8();
      if (os_log_type_enabled(v417, v418))
      {
        v419 = swift_slowAlloc();
        v420 = swift_slowAlloc();
        v902 = v420;
        *v419 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v421 = qword_280072E18;
        v422 = qword_280072E20;

        v423 = sub_2662A320C(v421, v422, &v902);

        *(v419 + 4) = v423;
        *(v419 + 12) = 2082;
        v424 = v897;

        v425 = sub_2662A320C(v895, v424, &v902);

        *(v419 + 14) = v425;
        swift_bridgeObjectRelease_n();
        *(v419 + 22) = 2082;
        v426 = [v273 localizedDescription];
        v427 = sub_2664E02C8();
        v429 = v428;

        v430 = sub_2662A320C(v427, v429, &v902);

        *(v419 + 24) = v430;

        *(v419 + 32) = 2050;
        v431 = [v273 code];

        *(v419 + 34) = v431;
        _os_log_impl(&dword_26629C000, v417, v418, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - ErrorApplicationDisabled Error: %{public}s ErrorApplicationDisabled code: %{public}ld", v419, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v420, -1, -1);
        MEMORY[0x266784AD0](v419, -1, -1);

        v432 = v873;
        v270 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v432 = v415;
      }

      v179(v432, v270);
      v344 = 0x80000002664FB480;
      v471 = v872;
      v888(v872, v887, v270);
      v472 = sub_2664DFE18();
      v473 = sub_2664E06B8();
      v474 = os_log_type_enabled(v472, v473);
      v349 = v894;
      if (v474)
      {
        v475 = swift_slowAlloc();
        v891 = v179;
        v476 = v475;
        v477 = swift_slowAlloc();
        v902 = v477;
        *v476 = 134218498;
        *(v476 + 4) = v202;
        *(v476 + 12) = 2048;
        *(v476 + 14) = 52;
        *(v476 + 22) = 2080;
        *(v476 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FB480, &v902);
        _os_log_impl(&dword_26629C000, v472, v473, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v476, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v477);
        MEMORY[0x266784AD0](v477, -1, -1);
        MEMORY[0x266784AD0](v476, -1, -1);

        (v891)(v471, v886);
      }

      else
      {

        v179(v471, v270);
      }

      v478 = 53;
LABEL_141:
      v373 = v478 | (v202 << 8);
      v374 = 0xD000000000000018;
LABEL_142:
      v902 = v373;
      *&v903 = v374;
      *(&v903 + 1) = v344;
      v349(&v902);
LABEL_143:

LABEL_144:

      goto LABEL_145;
    }

    v440 = [v199 domain];
    v441 = sub_2664E02C8();
    v443 = v442;

    if (v441 == sub_2664E02C8() && v443 == v444)
    {
    }

    else
    {
      v445 = sub_2664E0D88();

      if ((v445 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    if ([v199 code]== 1)
    {
      v446 = v871;
      v447 = v886;
      v888(v871, v887, v886);
      v448 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v448;
      v449 = sub_2664DFE18();
      v450 = sub_2664E06E8();
      if (os_log_type_enabled(v449, v450))
      {
        v451 = swift_slowAlloc();
        v452 = swift_slowAlloc();
        v902 = v452;
        *v451 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v453 = qword_280072E18;
        v454 = qword_280072E20;

        v455 = sub_2662A320C(v453, v454, &v902);

        *(v451 + 4) = v455;
        *(v451 + 12) = 2082;
        v456 = v897;

        v457 = sub_2662A320C(v895, v456, &v902);

        *(v451 + 14) = v457;
        swift_bridgeObjectRelease_n();
        *(v451 + 22) = 2082;
        v458 = [v273 localizedDescription];
        v459 = sub_2664E02C8();
        v461 = v460;

        v462 = sub_2662A320C(v459, v461, &v902);

        *(v451 + 24) = v462;

        *(v451 + 32) = 2050;
        v463 = [v273 code];

        *(v451 + 34) = v463;
        _os_log_impl(&dword_26629C000, v449, v450, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - OutputDeviceNotFound Error: %{public}s OutputDeviceNotFound code: %{public}ld", v451, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v452, -1, -1);
        MEMORY[0x266784AD0](v451, -1, -1);

        v464 = v871;
        v447 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v464 = v446;
      }

      v179(v464, v447);
      v516 = v869;
      v888(v869, v887, v447);
      v517 = sub_2664DFE18();
      v518 = sub_2664E06B8();
      v519 = os_log_type_enabled(v517, v518);
      v520 = v894;
      if (v519)
      {
        v521 = swift_slowAlloc();
        v522 = v447;
        v523 = swift_slowAlloc();
        v902 = v523;
        *v521 = 134218498;
        *(v521 + 4) = v202;
        *(v521 + 12) = 2048;
        *(v521 + 14) = 13;
        *(v521 + 22) = 2080;
        *(v521 + 24) = sub_2662A320C(0x6F4E656369766544, 0xEE00646E756F4674, &v902);
        _os_log_impl(&dword_26629C000, v517, v518, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v521, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v523);
        MEMORY[0x266784AD0](v523, -1, -1);
        MEMORY[0x266784AD0](v521, -1, -1);

        v524 = v516;
        v525 = v522;
      }

      else
      {

        v524 = v516;
        v525 = v447;
      }

      v179(v524, v525);
      v902 = ((v202 << 8) | 0xD);
      v526 = xmmword_2664EF4C0;
LABEL_183:
      v903 = v526;
LABEL_184:
      v520(&v902);
      goto LABEL_143;
    }

LABEL_133:
    v465 = [v199 domain];
    v466 = sub_2664E02C8();
    v468 = v467;

    if (v466 == sub_2664E02C8() && v468 == v469)
    {

      v470 = v886;
    }

    else
    {
      v479 = sub_2664E0D88();

      v470 = v886;
      if ((v479 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    if ([v199 code]== 3 || [v199 code]== 2)
    {
      v480 = v870;
      v888(v870, v887, v470);
      v481 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v481;
      v482 = sub_2664DFE18();
      v483 = sub_2664E06E8();
      if (os_log_type_enabled(v482, v483))
      {
        v484 = swift_slowAlloc();
        v485 = swift_slowAlloc();
        v902 = v485;
        *v484 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v486 = qword_280072E18;
        v487 = qword_280072E20;

        v488 = sub_2662A320C(v486, v487, &v902);

        *(v484 + 4) = v488;
        *(v484 + 12) = 2082;
        v489 = v897;

        v490 = sub_2662A320C(v895, v489, &v902);

        *(v484 + 14) = v490;
        swift_bridgeObjectRelease_n();
        *(v484 + 22) = 2082;
        v491 = [v273 localizedDescription];
        v492 = sub_2664E02C8();
        v494 = v493;

        v495 = sub_2662A320C(v492, v494, &v902);

        *(v484 + 24) = v495;

        *(v484 + 32) = 2050;
        v496 = [v273 code];

        *(v484 + 34) = v496;
        _os_log_impl(&dword_26629C000, v482, v483, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - endpointConnectionFailed or endpointNotRemoteControllable Error: %{public}s endpointConnectionFailed or endpointNotRemoteControllable code: %{public}ld", v484, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v485, -1, -1);
        MEMORY[0x266784AD0](v484, -1, -1);

        v497 = v870;
        v470 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v497 = v480;
      }

      v179(v497, v470);
      v344 = 0x80000002664FAF30;
      v527 = v868;
      v888(v868, v887, v470);
      v528 = sub_2664DFE18();
      v529 = sub_2664E06B8();
      v530 = os_log_type_enabled(v528, v529);
      v349 = v894;
      if (v530)
      {
        v531 = swift_slowAlloc();
        v891 = v179;
        v532 = v531;
        v533 = swift_slowAlloc();
        v902 = v533;
        *v532 = 134218498;
        *(v532 + 4) = v202;
        *(v532 + 12) = 2048;
        *(v532 + 14) = 46;
        *(v532 + 22) = 2080;
        *(v532 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FAF30, &v902);
        _os_log_impl(&dword_26629C000, v528, v529, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v532, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v533);
        MEMORY[0x266784AD0](v533, -1, -1);
        MEMORY[0x266784AD0](v532, -1, -1);

        (v891)(v527, v886);
      }

      else
      {

        v179(v527, v470);
      }

      v478 = 47;
      goto LABEL_141;
    }

LABEL_153:
    if ([v199 code]== 61)
    {
      v498 = v867;
      v888(v867, v887, v470);
      v499 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v499;
      v500 = sub_2664DFE18();
      v501 = sub_2664E06E8();
      if (os_log_type_enabled(v500, v501))
      {
        v502 = swift_slowAlloc();
        v503 = swift_slowAlloc();
        v902 = v503;
        *v502 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v504 = qword_280072E18;
        v505 = qword_280072E20;

        v506 = sub_2662A320C(v504, v505, &v902);

        *(v502 + 4) = v506;
        *(v502 + 12) = 2082;
        v507 = v897;

        v508 = sub_2662A320C(v895, v507, &v902);

        *(v502 + 14) = v508;
        swift_bridgeObjectRelease_n();
        *(v502 + 22) = 2082;
        v509 = [v273 localizedDescription];
        v510 = sub_2664E02C8();
        v512 = v511;

        v513 = sub_2662A320C(v510, v512, &v902);

        *(v502 + 24) = v513;

        *(v502 + 32) = 2050;
        v514 = [v273 code];

        *(v502 + 34) = v514;
        _os_log_impl(&dword_26629C000, v500, v501, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - EmptyModelResponse Error: %{public}s EmptyModelResponse code: %{public}ld", v502, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v503, -1, -1);
        MEMORY[0x266784AD0](v502, -1, -1);

        v515 = v867;
        v470 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v515 = v498;
      }

      v179(v515, v470);
      v551 = v866;
      v888(v866, v887, v470);
      v552 = sub_2664DFE18();
      v553 = sub_2664E06B8();
      v554 = os_log_type_enabled(v552, v553);
      v520 = v894;
      if (v554)
      {
        v555 = swift_slowAlloc();
        v556 = v470;
        v557 = swift_slowAlloc();
        v902 = v557;
        *v555 = 134218498;
        *(v555 + 4) = v202;
        *(v555 + 12) = 2048;
        *(v555 + 14) = 17;
        *(v555 + 22) = 2080;
        *(v555 + 24) = sub_2662A320C(0x746963696C707845, 0xEF746E65746E6F43, &v902);
        _os_log_impl(&dword_26629C000, v552, v553, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v555, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v557);
        MEMORY[0x266784AD0](v557, -1, -1);
        MEMORY[0x266784AD0](v555, -1, -1);

        v558 = v551;
        v559 = v556;
      }

      else
      {

        v558 = v551;
        v559 = v470;
      }

      v179(v558, v559);
      v902 = ((v202 << 8) | 0x11);
      v526 = xmmword_2664EF4B0;
      goto LABEL_183;
    }

    if ([v199 code]== 12)
    {
      v888(v865, v887, v470);
      v534 = v199;
      swift_bridgeObjectRetain_n();
      v273 = v534;
      v535 = sub_2664DFE18();
      v536 = sub_2664E06E8();
      if (os_log_type_enabled(v535, v536))
      {
        v537 = swift_slowAlloc();
        v538 = swift_slowAlloc();
        v902 = v538;
        *v537 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v539 = qword_280072E18;
        v540 = qword_280072E20;

        v541 = sub_2662A320C(v539, v540, &v902);

        *(v537 + 4) = v541;
        *(v537 + 12) = 2082;
        v542 = v897;

        v543 = sub_2662A320C(v895, v542, &v902);

        *(v537 + 14) = v543;
        swift_bridgeObjectRelease_n();
        *(v537 + 22) = 2082;
        v544 = [v273 localizedDescription];
        v545 = sub_2664E02C8();
        v547 = v546;

        v548 = sub_2662A320C(v545, v547, &v902);

        *(v537 + 24) = v548;

        *(v537 + 32) = 2050;
        v549 = [v273 code];

        *(v537 + 34) = v549;
        _os_log_impl(&dword_26629C000, v535, v536, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - MaxStreamCountReached Error: %{public}s MaxStreamCountReached code: %{public}ld", v537, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v538, -1, -1);
        MEMORY[0x266784AD0](v537, -1, -1);

        v550 = v865;
        v470 = v886;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v550 = v865;
      }

      v179(v550, v470);
      v573 = v864;
      v888(v864, v887, v470);
      v574 = sub_2664DFE18();
      v575 = sub_2664E06B8();
      v576 = os_log_type_enabled(v574, v575);
      v520 = v894;
      if (v576)
      {
        v577 = swift_slowAlloc();
        v578 = v470;
        v579 = swift_slowAlloc();
        v902 = v579;
        *v577 = 134218498;
        *(v577 + 4) = v202;
        *(v577 + 12) = 2048;
        *(v577 + 14) = 14;
        *(v577 + 22) = 2080;
        *(v577 + 24) = sub_2662A320C(0x616572745378614DLL, 0xEE00746E756F436DLL, &v902);
        _os_log_impl(&dword_26629C000, v574, v575, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v577, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v579);
        MEMORY[0x266784AD0](v579, -1, -1);
        MEMORY[0x266784AD0](v577, -1, -1);

        v580 = v573;
        v581 = v578;
      }

      else
      {

        v580 = v573;
        v581 = v470;
      }

      v179(v580, v581);
      v902 = ((v202 << 8) | 0xE);
      v903 = xmmword_2664EF4A0;
      goto LABEL_184;
    }

    v890 = v199;
    v560 = sub_2664DFD48();
    v562 = sub_2664B0DC8(v560, v561);

    if (v562)
    {
      v891 = v202;
      v888(v863, v887, v470);
      swift_bridgeObjectRetain_n();
      v563 = sub_2664DFE18();
      v564 = sub_2664E06D8();
      if (os_log_type_enabled(v563, v564))
      {
        v565 = v179;
        v566 = swift_slowAlloc();
        v567 = swift_slowAlloc();
        v902 = v567;
        *v566 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v568 = qword_280072E18;
        v569 = qword_280072E20;

        v570 = sub_2662A320C(v568, v569, &v902);

        *(v566 + 4) = v570;
        *(v566 + 12) = 2082;
        v571 = v897;

        v572 = sub_2662A320C(v895, v571, &v902);

        *(v566 + 14) = v572;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v563, v564, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned XSchemeURLError", v566, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v567, -1, -1);
        MEMORY[0x266784AD0](v566, -1, -1);

        v179(v863, v886);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v565 = v179;
        v179(v863, v470);
      }

      v594 = sub_2664DFD48();
      v596 = sub_2664B1060(v594, v595);
      v598 = v597;

      if ((v598 & 1) == 0)
      {
        v620 = sub_26648C88C(&v902, v596);
        v622 = v621;
        v623 = v902;
        v888(v860, v887, v886);

        v624 = sub_2664DFE18();
        v625 = sub_2664E06B8();
        if (os_log_type_enabled(v624, v625))
        {
          v626 = swift_slowAlloc();
          v627 = swift_slowAlloc();
          v902 = v627;
          *v626 = 134218498;
          *(v626 + 4) = v891;
          *(v626 + 12) = 2048;
          *(v626 + 14) = qword_2664EF818[v623 ^ 0x80];
          *(v626 + 22) = 2080;
          v628 = sub_2662A320C(v620, v622, &v902);

          *(v626 + 24) = v628;
          _os_log_impl(&dword_26629C000, v624, v625, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v626, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v627);
          MEMORY[0x266784AD0](v627, -1, -1);
          MEMORY[0x266784AD0](v626, -1, -1);
        }

        else
        {
        }

        v565(v860, v886);
        v902 = (v623 | (v891 << 8));
        *&v903 = v620;
        *(&v903 + 1) = v622;
        goto LABEL_222;
      }

      v888(v859, v887, v886);
      v599 = sub_2664DFE18();
      v600 = sub_2664E06D8();
      if (os_log_type_enabled(v599, v600))
      {
        v601 = swift_slowAlloc();
        v900 = 0;
        v898 = 0;
        *v601 = 0;
        v902 = v601 + 2;
        sub_2664873D8(MEMORY[0x277D84F90], &v902, &v900, &v898);
        _os_log_impl(&dword_26629C000, v599, v600, "MediaPlaybackProvider#readStatus unable to extract XSchemeURLError error code!", v601, 2u);
        MEMORY[0x266784AD0](v601, -1, -1);
      }

      v565(v859, v886);
      v602 = 0x80000002664FB460;
      v888(v862, v887, v886);
      v603 = sub_2664DFE18();
      v604 = sub_2664E06B8();
      if (os_log_type_enabled(v603, v604))
      {
        v605 = swift_slowAlloc();
        v606 = swift_slowAlloc();
        v902 = v606;
        *v605 = 134218498;
        *(v605 + 4) = v891;
        *(v605 + 12) = 2048;
        *(v605 + 14) = 164;
        *(v605 + 22) = 2080;
        *(v605 + 24) = sub_2662A320C(0xD00000000000001ALL, 0x80000002664FB460, &v902);
        _os_log_impl(&dword_26629C000, v603, v604, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v605, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v606);
        MEMORY[0x266784AD0](v606, -1, -1);
        MEMORY[0x266784AD0](v605, -1, -1);
      }

      v565(v862, v886);
      v607 = (v891 << 8) | 0xA4;
      v608 = 0xD00000000000001ALL;
      goto LABEL_213;
    }

    v199 = 0xD000000000000014;
    v582 = sub_2664DFD48();
    v584 = sub_2664B0C3C(v891, v582, v583);

    if (v584)
    {
      v888(v858, v887, v470);
      swift_bridgeObjectRetain_n();
      v585 = sub_2664DFE18();
      v586 = sub_2664E06D8();
      if (os_log_type_enabled(v585, v586))
      {
        v587 = swift_slowAlloc();
        v588 = swift_slowAlloc();
        v902 = v588;
        *v587 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v589 = qword_280072E18;
        v590 = qword_280072E20;

        v591 = sub_2662A320C(v589, v590, &v902);

        *(v587 + 4) = v591;
        *(v587 + 12) = 2082;
        v592 = v897;

        v593 = sub_2662A320C(v895, v592, &v902);

        *(v587 + 14) = v593;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v585, v586, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned iTunes Account Error", v587, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v588, -1, -1);
        MEMORY[0x266784AD0](v587, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v858, v886);
      v602 = 0x80000002664FB440;
      v888(v861, v887, v886);
      v629 = sub_2664DFE18();
      v630 = sub_2664E06B8();
      if (os_log_type_enabled(v629, v630))
      {
        v631 = swift_slowAlloc();
        v632 = swift_slowAlloc();
        v902 = v632;
        *v631 = 134218498;
        *(v631 + 4) = v202;
        *(v631 + 12) = 2048;
        *(v631 + 14) = 1;
        *(v631 + 22) = 2080;
        *(v631 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664FB440, &v902);
        _os_log_impl(&dword_26629C000, v629, v630, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v631, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v632);
        MEMORY[0x266784AD0](v632, -1, -1);
        MEMORY[0x266784AD0](v631, -1, -1);
      }

      v179(v861, v886);
      v607 = (v202 << 8) | 1;
      v608 = 0xD000000000000010;
LABEL_213:
      v902 = v607;
      *&v903 = v608;
LABEL_214:
      *(&v903 + 1) = v602;
LABEL_222:
      v894(&v902);

      goto LABEL_144;
    }

    v902 = sub_2664DFD48();
    *&v903 = v609;
    v900 = 0xD00000000000003ALL;
    *&v901 = 0x80000002664FB080;
    sub_2662D2EBC();
    v610 = sub_2664E09B8();

    if (v610)
    {
      v888(v856, v887, v886);
      swift_bridgeObjectRetain_n();
      v611 = sub_2664DFE18();
      v612 = sub_2664E06D8();
      if (os_log_type_enabled(v611, v612))
      {
        v613 = swift_slowAlloc();
        v614 = swift_slowAlloc();
        v902 = v614;
        *v613 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v615 = qword_280072E18;
        v616 = qword_280072E20;

        v617 = sub_2662A320C(v615, v616, &v902);

        *(v613 + 4) = v617;
        *(v613 + 12) = 2082;
        v618 = v897;

        v619 = sub_2662A320C(v895, v618, &v902);

        *(v613 + 14) = v619;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v611, v612, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned music cellular data off error", v613, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v614, -1, -1);
        MEMORY[0x266784AD0](v613, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v856, v886);
      v602 = 0x80000002664FB420;
      v888(v857, v887, v886);
      v644 = sub_2664DFE18();
      v645 = sub_2664E06B8();
      if (os_log_type_enabled(v644, v645))
      {
        v646 = swift_slowAlloc();
        v647 = swift_slowAlloc();
        v902 = v647;
        *v646 = 134218498;
        *(v646 + 4) = v202;
        *(v646 + 12) = 2048;
        *(v646 + 14) = 150;
        *(v646 + 22) = 2080;
        *(v646 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664FB420, &v902);
        _os_log_impl(&dword_26629C000, v644, v645, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v646, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v647);
        MEMORY[0x266784AD0](v647, -1, -1);
        MEMORY[0x266784AD0](v646, -1, -1);
      }

      v179(v857, v886);
      v648 = 155;
LABEL_227:
      v902 = (v648 | (v202 << 8));
      *&v903 = 0xD000000000000014;
      goto LABEL_214;
    }

    v902 = sub_2664DFD48();
    *&v903 = v633;
    v900 = 0xD000000000000011;
    *&v901 = 0x80000002664FB2B0;
    v634 = sub_2664E09B8();

    if (v634)
    {
      v888(v854, v887, v886);
      swift_bridgeObjectRetain_n();
      v635 = sub_2664DFE18();
      v636 = sub_2664E06D8();
      if (os_log_type_enabled(v635, v636))
      {
        v637 = swift_slowAlloc();
        v638 = swift_slowAlloc();
        v902 = v638;
        *v637 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v639 = qword_280072E18;
        v640 = qword_280072E20;

        v641 = sub_2662A320C(v639, v640, &v902);

        *(v637 + 4) = v641;
        *(v637 + 12) = 2082;
        v642 = v897;

        v643 = sub_2662A320C(v895, v642, &v902);

        *(v637 + 14) = v643;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v635, v636, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned no local endpoint connection error", v637, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v638, -1, -1);
        MEMORY[0x266784AD0](v637, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v854, v886);
      v602 = 0x80000002664FB400;
      v888(v855, v887, v886);
      v661 = sub_2664DFE18();
      v662 = sub_2664E06B8();
      if (os_log_type_enabled(v661, v662))
      {
        v663 = swift_slowAlloc();
        v664 = swift_slowAlloc();
        v902 = v664;
        *v663 = 134218498;
        *(v663 + 4) = v202;
        *(v663 + 12) = 2048;
        *(v663 + 14) = 161;
        *(v663 + 22) = 2080;
        *(v663 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FB400, &v902);
        _os_log_impl(&dword_26629C000, v661, v662, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v663, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v664);
        MEMORY[0x266784AD0](v664, -1, -1);
        MEMORY[0x266784AD0](v663, -1, -1);
      }

      v179(v855, v886);
      v607 = (v202 << 8) | 0xA3;
      v608 = 0xD000000000000019;
      goto LABEL_213;
    }

    v649 = sub_2664DFD48();
    v651 = sub_2664B178C(v649, v650);

    if (v651)
    {
      v888(v852, v887, v886);
      swift_bridgeObjectRetain_n();
      v652 = sub_2664DFE18();
      v653 = sub_2664E06D8();
      if (os_log_type_enabled(v652, v653))
      {
        v654 = swift_slowAlloc();
        v655 = swift_slowAlloc();
        v902 = v655;
        *v654 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v656 = qword_280072E18;
        v657 = qword_280072E20;

        v658 = sub_2662A320C(v656, v657, &v902);

        *(v654 + 4) = v658;
        *(v654 + 12) = 2082;
        v659 = v897;

        v660 = sub_2662A320C(v895, v659, &v902);

        *(v654 + 14) = v660;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v652, v653, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned no network available error", v654, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v655, -1, -1);
        MEMORY[0x266784AD0](v654, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v852, v886);
      v888(v853, v887, v886);
      v677 = sub_2664DFE18();
      v678 = sub_2664E06B8();
      if (os_log_type_enabled(v677, v678))
      {
        v679 = swift_slowAlloc();
        v680 = swift_slowAlloc();
        v902 = v680;
        *v679 = 134218498;
        *(v679 + 4) = v202;
        *(v679 + 12) = 2048;
        *(v679 + 14) = 36;
        *(v679 + 22) = 2080;
        *(v679 + 24) = sub_2662A320C(0x726F7774654E6F4ELL, 0xE90000000000006BLL, &v902);
        _os_log_impl(&dword_26629C000, v677, v678, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v679, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v680);
        MEMORY[0x266784AD0](v680, -1, -1);
        MEMORY[0x266784AD0](v679, -1, -1);
      }

      v179(v853, v886);
      v902 = ((v202 << 8) | 0x25);
      v903 = xmmword_2664EF490;
      goto LABEL_222;
    }

    v665 = sub_2664DFD48();
    v667 = sub_2664B1890(v665, v666);

    if (v667)
    {
      v888(v850, v887, v886);
      swift_bridgeObjectRetain_n();
      v668 = sub_2664DFE18();
      v669 = sub_2664E06D8();
      if (os_log_type_enabled(v668, v669))
      {
        v670 = swift_slowAlloc();
        v671 = swift_slowAlloc();
        v902 = v671;
        *v670 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v672 = qword_280072E18;
        v673 = qword_280072E20;

        v674 = sub_2662A320C(v672, v673, &v902);

        *(v670 + 4) = v674;
        *(v670 + 12) = 2082;
        v675 = v897;

        v676 = sub_2662A320C(v895, v675, &v902);

        *(v670 + 14) = v676;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v668, v669, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned GDPR needed for someone in group error", v670, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v671, -1, -1);
        MEMORY[0x266784AD0](v670, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v850, v886);
      v602 = 0x80000002664FB3E0;
      v888(v851, v887, v886);
      v692 = sub_2664DFE18();
      v693 = sub_2664E06B8();
      if (os_log_type_enabled(v692, v693))
      {
        v694 = swift_slowAlloc();
        v695 = swift_slowAlloc();
        v902 = v695;
        *v694 = 134218498;
        *(v694 + 4) = v202;
        *(v694 + 12) = 2048;
        *(v694 + 14) = 53;
        *(v694 + 22) = 2080;
        *(v694 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664FB3E0, &v902);
        _os_log_impl(&dword_26629C000, v692, v693, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v694, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v695);
        MEMORY[0x266784AD0](v695, -1, -1);
        MEMORY[0x266784AD0](v694, -1, -1);
      }

      v179(v851, v886);
      v902 = ((v202 << 8) | 0x36);
      *&v903 = 0xD000000000000011;
      goto LABEL_214;
    }

    v681 = v890;
    v682 = sub_2664B19E4(v180, v891);
    v890 = v681;

    if (v682)
    {
      v888(v849, v887, v886);
      swift_bridgeObjectRetain_n();
      v683 = sub_2664DFE18();
      v684 = sub_2664E06D8();
      if (os_log_type_enabled(v683, v684))
      {
        v685 = swift_slowAlloc();
        v686 = swift_slowAlloc();
        v902 = v686;
        *v685 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v687 = qword_280072E18;
        v688 = qword_280072E20;

        v689 = sub_2662A320C(v687, v688, &v902);

        *(v685 + 4) = v689;
        *(v685 + 12) = 2082;
        v690 = v897;

        v691 = sub_2662A320C(v895, v690, &v902);

        *(v685 + 14) = v691;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v683, v684, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned AppNotInstalledError", v685, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v686, -1, -1);
        MEMORY[0x266784AD0](v685, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v849, v886);
      v888(v841, v887, v886);
      v707 = sub_2664DFE18();
      v708 = sub_2664E06B8();
      if (os_log_type_enabled(v707, v708))
      {
        v709 = swift_slowAlloc();
        v710 = swift_slowAlloc();
        v902 = v710;
        *v709 = 134218498;
        *(v709 + 4) = v202;
        *(v709 + 12) = 2048;
        *(v709 + 14) = 156;
        *(v709 + 22) = 2080;
        *(v709 + 24) = sub_2662A320C(0x6E49746F4E707041, 0xEF64656C6C617473, &v902);
        _os_log_impl(&dword_26629C000, v707, v708, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v709, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v710);
        MEMORY[0x266784AD0](v710, -1, -1);
        MEMORY[0x266784AD0](v709, -1, -1);
      }

      v179(v841, v886);
      v902 = ((v202 << 8) | 0xA0);
      v903 = xmmword_2664EF480;
      goto LABEL_222;
    }

    v902 = sub_2664DFD48();
    *&v903 = v696;
    v900 = 0xD000000000000021;
    *&v901 = 0x80000002664FB2D0;
    v697 = sub_2664E09B8();

    if (v697)
    {
      v888(v848, v887, v886);
      swift_bridgeObjectRetain_n();
      v698 = sub_2664DFE18();
      v699 = sub_2664E06D8();
      if (os_log_type_enabled(v698, v699))
      {
        v700 = swift_slowAlloc();
        v701 = swift_slowAlloc();
        v902 = v701;
        *v700 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v702 = qword_280072E18;
        v703 = qword_280072E20;

        v704 = sub_2662A320C(v702, v703, &v902);

        *(v700 + 4) = v704;
        *(v700 + 12) = 2082;
        v705 = v897;

        v706 = sub_2662A320C(v895, v705, &v902);

        *(v700 + 14) = v706;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v698, v699, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned requested station playing not currently allowed explicit content", v700, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v701, -1, -1);
        MEMORY[0x266784AD0](v700, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v848, v886);
      v602 = 0x80000002664FB3B0;
      v888(v840, v887, v886);
      v722 = sub_2664DFE18();
      v723 = sub_2664E06B8();
      if (os_log_type_enabled(v722, v723))
      {
        v724 = swift_slowAlloc();
        v725 = swift_slowAlloc();
        v902 = v725;
        *v724 = 134218498;
        *(v724 + 4) = v202;
        *(v724 + 12) = 2048;
        *(v724 + 14) = 155;
        *(v724 + 22) = 2080;
        *(v724 + 24) = sub_2662A320C(0xD000000000000022, 0x80000002664FB3B0, &v902);
        _os_log_impl(&dword_26629C000, v722, v723, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v724, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v725);
        MEMORY[0x266784AD0](v725, -1, -1);
        MEMORY[0x266784AD0](v724, -1, -1);
      }

      v179(v840, v886);
      v607 = (v202 << 8) | 0x9F;
      v608 = 0xD000000000000022;
      goto LABEL_213;
    }

    v711 = sub_2664DFD48();
    v713 = sub_2664B300C(v711, v712);

    if (v713)
    {
      v888(v847, v887, v886);
      swift_bridgeObjectRetain_n();
      v180 = sub_2664DFE18();
      v714 = sub_2664E06D8();
      if (os_log_type_enabled(v180, v714))
      {
        v715 = swift_slowAlloc();
        v716 = swift_slowAlloc();
        v902 = v716;
        *v715 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v717 = qword_280072E18;
        v718 = qword_280072E20;

        v719 = sub_2662A320C(v717, v718, &v902);

        *(v715 + 4) = v719;
        *(v715 + 12) = 2082;
        v720 = v897;

        v721 = sub_2662A320C(v895, v720, &v902);

        *(v715 + 14) = v721;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v180, v714, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned RadioStationNotAvailableInCurrentLocation", v715, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v716, -1, -1);
        MEMORY[0x266784AD0](v715, -1, -1);

        goto LABEL_280;
      }

LABEL_279:

      swift_bridgeObjectRelease_n();
LABEL_280:
      v179(v847, v886);
      v602 = 0x80000002664FB390;
      v888(v839, v887, v886);
      v738 = sub_2664DFE18();
      v739 = sub_2664E06B8();
      if (os_log_type_enabled(v738, v739))
      {
        v740 = swift_slowAlloc();
        v741 = swift_slowAlloc();
        v902 = v741;
        *v740 = 134218498;
        *(v740 + 4) = v202;
        *(v740 + 12) = 2048;
        *(v740 + 14) = 149;
        *(v740 + 22) = 2080;
        *(v740 + 24) = sub_2662A320C(&v199->isa + 3, 0x80000002664FB390, &v902);
        _os_log_impl(&dword_26629C000, v738, v739, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v740, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v741);
        MEMORY[0x266784AD0](v741, -1, -1);
        MEMORY[0x266784AD0](v740, -1, -1);
      }

      v179(v839, v886);
      v607 = (v202 << 8) | 0x9A;
      v608 = &v199->isa + 3;
      goto LABEL_213;
    }

    v726 = sub_2664DFD48();
    v728 = sub_2664B3164(v726, v727);

    if (v728)
    {
      v888(v837, v887, v886);
      swift_bridgeObjectRetain_n();
      v729 = sub_2664DFE18();
      v730 = sub_2664E06D8();
      if (os_log_type_enabled(v729, v730))
      {
        v731 = swift_slowAlloc();
        v732 = swift_slowAlloc();
        v902 = v732;
        *v731 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v733 = qword_280072E18;
        v734 = qword_280072E20;

        v735 = sub_2662A320C(v733, v734, &v902);

        *(v731 + 4) = v735;
        *(v731 + 12) = 2082;
        v736 = v897;

        v737 = sub_2662A320C(v895, v736, &v902);

        *(v731 + 14) = v737;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v729, v730, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned BroadcastStationDown", v731, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v732, -1, -1);
        MEMORY[0x266784AD0](v731, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v837, v886);
      v602 = 0x80000002664F3B60;
      v888(v838, v887, v886);
      v754 = sub_2664DFE18();
      v755 = sub_2664E06B8();
      if (os_log_type_enabled(v754, v755))
      {
        v756 = swift_slowAlloc();
        v757 = swift_slowAlloc();
        v902 = v757;
        *v756 = 134218498;
        *(v756 + 4) = v202;
        *(v756 + 12) = 2048;
        *(v756 + 14) = 154;
        *(v756 + 22) = 2080;
        *(v756 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, &v902);
        _os_log_impl(&dword_26629C000, v754, v755, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v756, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v757);
        MEMORY[0x266784AD0](v757, -1, -1);
        MEMORY[0x266784AD0](v756, -1, -1);
      }

      v179(v838, v886);
      v648 = 157;
      goto LABEL_227;
    }

    v742 = sub_2664DFD48();
    v744 = sub_2664B3274(v742, v743);

    if (v744)
    {
      v888(v835, v887, v886);
      swift_bridgeObjectRetain_n();
      v745 = sub_2664DFE18();
      v746 = sub_2664E06D8();
      if (os_log_type_enabled(v745, v746))
      {
        v747 = swift_slowAlloc();
        v748 = swift_slowAlloc();
        v902 = v748;
        *v747 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v749 = qword_280072E18;
        v750 = qword_280072E20;

        v751 = sub_2662A320C(v749, v750, &v902);

        *(v747 + 4) = v751;
        *(v747 + 12) = 2082;
        v752 = v897;

        v753 = sub_2662A320C(v895, v752, &v902);

        *(v747 + 14) = v753;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v745, v746, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned PoorNetworkConnection (timeout)", v747, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v748, -1, -1);
        MEMORY[0x266784AD0](v747, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v835, v886);
      v602 = 0x80000002664FB370;
      v888(v836, v887, v886);
      v769 = sub_2664DFE18();
      v770 = sub_2664E06B8();
      if (os_log_type_enabled(v769, v770))
      {
        v771 = swift_slowAlloc();
        v772 = swift_slowAlloc();
        v902 = v772;
        *v771 = 134218498;
        *(v771 + 4) = v202;
        *(v771 + 12) = 2048;
        *(v771 + 14) = 160;
        *(v771 + 22) = 2080;
        *(v771 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664FB370, &v902);
        _os_log_impl(&dword_26629C000, v769, v770, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v771, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v772);
        MEMORY[0x266784AD0](v772, -1, -1);
        MEMORY[0x266784AD0](v771, -1, -1);
      }

      v179(v836, v886);
      v607 = (v202 << 8) | 0xA2;
      v608 = 0xD000000000000015;
      goto LABEL_213;
    }

    v902 = sub_2664DFD48();
    *&v903 = v758;
    v900 = 0xD000000000000014;
    *&v901 = 0x80000002664FB300;
    v759 = sub_2664E09B8();

    if (v759)
    {
      v888(v832, v887, v886);
      swift_bridgeObjectRetain_n();
      v760 = sub_2664DFE18();
      v761 = sub_2664E06D8();
      if (os_log_type_enabled(v760, v761))
      {
        v762 = swift_slowAlloc();
        v763 = swift_slowAlloc();
        v902 = v763;
        *v762 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v764 = qword_280072E18;
        v765 = qword_280072E20;

        v766 = sub_2662A320C(v764, v765, &v902);

        *(v762 + 4) = v766;
        *(v762 + 12) = 2082;
        v767 = v897;

        v768 = sub_2662A320C(v895, v767, &v902);

        *(v762 + 14) = v768;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v760, v761, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned iTunes Account Error (sign in to ATV error)", v762, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v763, -1, -1);
        MEMORY[0x266784AD0](v762, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v179(v832, v886);
      LOBYTE(v900) = 21;
      LOBYTE(v898) = v202;
      v794._countAndFlagsBits = 0xD000000000000012;
      v794._object = 0x80000002664FB350;
      v906 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v900, &v898, v794);
      v900 = v902;
      v901 = v903;
      (v894)(&v900, v906.errorDescription._countAndFlagsBits, v906.errorDescription._object);

      goto LABEL_144;
    }

    v888(v833, v887, v886);
    swift_bridgeObjectRetain_n();
    v773 = v890;
    swift_bridgeObjectRetain_n();
    v890 = v773;
    v774 = sub_2664DFE18();
    LODWORD(v882) = sub_2664E06D8();
    if (os_log_type_enabled(v774, v882))
    {
      v775 = swift_slowAlloc();
      v881 = swift_slowAlloc();
      v902 = v881;
      *v775 = 136446978;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      v777 = qword_280072E18;
      v776 = qword_280072E20;

      v778 = sub_2662A320C(v777, v776, &v902);

      *(v775 + 4) = v778;
      *(v775 + 12) = 2082;
      v779 = v897;

      v780 = sub_2662A320C(v895, v779, &v902);

      *(v775 + 14) = v780;
      swift_bridgeObjectRelease_n();
      *(v775 + 22) = 2082;
      v781 = v890;
      v782 = [v890 localizedDescription];
      v783 = sub_2664E02C8();
      v785 = v784;

      v786 = sub_2662A320C(v783, v785, &v902);

      *(v775 + 24) = v786;

      *(v775 + 32) = 2082;
      if (v891)
      {
        v787 = v891;
      }

      else
      {
        v787 = MEMORY[0x277D84F90];
      }

      v788 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

      v789 = MEMORY[0x2667834D0](v787, v788);
      v791 = v790;

      v792 = sub_2662A320C(v789, v791, &v902);

      *(v775 + 34) = v792;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_26629C000, v774, v882, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error found - error: %{public}s, codes: %{public}s", v775, 0x2Au);
      v793 = v881;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v793, -1, -1);
      MEMORY[0x266784AD0](v775, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v795 = v890;

      swift_bridgeObjectRelease_n();
    }

    v179(v833, v886);
    v891 = sub_2664DFD78();
    v897 = v796;
    MEMORY[0x28223BE20](v891);
    v797 = v892;
    *(&v829 - 2) = v892;
    v798 = sub_26636E828(sub_2664B6A40, (&v829 - 4), &unk_2877E5780);
    v881 = 0;
    v895 = *(v798 + 16);

    v888(v834, v887, v886);
    v799 = v884;
    v800 = v884[2];
    v801 = v843;
    v802 = v797;
    v803 = v883;
    (v800)(v843, v802, v883);
    (v800)(v845, v801, v803);
    (v799[4])(v844, v801, v803);
    swift_bridgeObjectRetain_n();
    v804 = sub_2664DFE18();
    v805 = sub_2664E06E8();
    v882 = v804;
    if (os_log_type_enabled(v804, v805))
    {
      v806 = v895 != 0;
      v807 = swift_slowAlloc();
      v880 = swift_slowAlloc();
      v902 = v880;
      *v807 = 67109634;
      *(v807 + 4) = v806;
      *(v807 + 8) = 2080;
      v808 = v897;

      v809 = sub_2662A320C(v891, v808, &v902);

      *(v807 + 10) = v809;
      swift_bridgeObjectRelease_n();
      *(v807 + 18) = 2080;
      v810 = v845;
      v811 = sub_2664DFD48();
      v813 = sub_2662A320C(v811, v812, &v902);

      *(v807 + 20) = v813;
      v814 = v884[1];
      v815 = v883;
      v814(v844, v883);
      v885 = v814;
      v814(v810, v815);
      v816 = v882;
      _os_log_impl(&dword_26629C000, v882, v805, "MediaPlaybackProvider#readStatus timeOutMatched: %{BOOL}d, statusCodeStr: %s, error onion: %s", v807, 0x1Cu);
      v817 = v880;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v817, -1, -1);
      MEMORY[0x266784AD0](v807, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v818 = v884[1];
      v819 = v883;
      v818(v844, v883);
      v885 = v818;
      v818(v845, v819);
    }

    v179(v834, v886);
    if (!v895)
    {
      LODWORD(v902) = 555;
      if (v891 != sub_2664E0D48() || v897 != v820)
      {
        v825 = sub_2664E0D88();

        if ((v825 & 1) == 0)
        {
          goto LABEL_324;
        }

        goto LABEL_319;
      }
    }

LABEL_319:
    if (v846)
    {
      v888(v831, v887, v886);
      v821 = sub_2664DFE18();
      v822 = sub_2664E06E8();
      if (os_log_type_enabled(v821, v822))
      {
        v823 = swift_slowAlloc();
        v900 = 0;
        v898 = 0;
        *v823 = 0;
        v902 = v823 + 2;
        sub_2664873D8(MEMORY[0x277D84F90], &v902, &v900, &v898);
        _os_log_impl(&dword_26629C000, v821, v822, "MediaPlaybackProvider#readStatus reporting timeout error", v823, 2u);
        MEMORY[0x266784AD0](v823, -1, -1);
      }

      v179(v831, v886);
      LOBYTE(v900) = -95;
      LOBYTE(v898) = v202;
      v824._countAndFlagsBits = 0xD000000000000020;
      v824._object = 0x80000002664FB320;
      v907 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v900, &v898, v824);
      v900 = v902;
      v901 = v903;
      (v894)(&v900, v907.errorDescription._countAndFlagsBits, v907.errorDescription._object);

      goto LABEL_325;
    }

LABEL_324:
    LOBYTE(v898) = 0;
    v899 = v202;
    v902 = 0;
    *&v903 = 0xE000000000000000;
    MEMORY[0x2667833B0](0x456E776F6E6B6E55, 0xED00005F726F7272);
    v826 = v890;
    v900 = [v890 code];
    v827 = sub_2664E0D48();
    MEMORY[0x2667833B0](v827);

    MEMORY[0x2667833B0](0, 0xE000000000000000);
    v828._countAndFlagsBits = v902;
    v828._object = v903;
    v908 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v898, &v899, v828);
    v900 = v902;
    v901 = v903;
    (v894)(&v900, v908.errorDescription._countAndFlagsBits, v908.errorDescription._object);

LABEL_325:

    v885(v892, v883);
    return;
  }

  v884 = v25;
  v887 = v22;
  v885 = v28;
  v156 = v891;
  v157 = v894;
  v158 = v19;
  if (!v891)
  {
    goto LABEL_66;
  }

  v159 = v31;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v160 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v161 = v896;
  v162 = *(v896 + 16);
  v889 = v896 + 16;
  v890 = v160;
  v888 = v162;
  v162(v34, v160, v16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v163 = sub_2664DFE18();
  v164 = v16;
  v165 = sub_2664E06B8();
  if (os_log_type_enabled(v163, v165))
  {
    v886 = v164;
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *&v904 = v167;
    *v166 = 136315650;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    v169 = qword_280072E18;
    v168 = qword_280072E20;

    v170 = sub_2662A320C(v169, v168, &v904);

    *(v166 + 4) = v170;
    *(v166 + 12) = 2082;
    v171 = v897;

    v172 = sub_2662A320C(v895, v171, &v904);

    *(v166 + 14) = v172;
    swift_bridgeObjectRelease_n();
    *(v166 + 22) = 2082;
    v173 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v156 = v891;

    v175 = MEMORY[0x2667834D0](v174, v173);
    v177 = v176;

    v178 = sub_2662A320C(v175, v177, &v904);

    *(v166 + 24) = v178;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_26629C000, v163, v165, "MediaPlaybackProvider#readStatus %s MPCAssistantCommand status for: '%{public}s' - Result codes: %{public}s", v166, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v167, -1, -1);
    MEMORY[0x266784AD0](v166, -1, -1);

    v16 = v886;
    v892 = *(v896 + 8);
    (v892)(v34, v886);
    v157 = v894;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v892 = *(v161 + 8);
    (v892)(v34, v164);
    v16 = v164;
  }

  v256 = sub_266487828(v156);
  if (!v256)
  {
    v291 = v897;
    if (v895 == 0xD000000000000024 && 0x80000002664FB250 == v897 || (sub_2664E0D88() & 1) != 0)
    {
      v292 = v887;
      v888(v887, v890, v16);
      swift_bridgeObjectRetain_n();
      v293 = sub_2664DFE18();
      v294 = sub_2664E06E8();
      if (os_log_type_enabled(v293, v294))
      {
        v295 = v16;
        v296 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        *&v904 = v297;
        *v296 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v298 = qword_280072E18;
        v299 = qword_280072E20;

        v300 = sub_2662A320C(v298, v299, &v904);

        *(v296 + 4) = v300;
        *(v296 + 12) = 2082;
        v301 = v897;

        v302 = sub_2662A320C(v895, v301, &v904);

        *(v296 + 14) = v302;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v293, v294, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Repeat mode changing completed with no status codes / this is experientially expected", v296, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v297, -1, -1);
        MEMORY[0x266784AD0](v296, -1, -1);

        v303 = v887;
        v304 = v295;
        goto LABEL_97;
      }
    }

    else
    {
      v292 = v884;
      v888(v884, v890, v16);
      swift_bridgeObjectRetain_n();
      v293 = sub_2664DFE18();
      v375 = sub_2664E06E8();
      if (os_log_type_enabled(v293, v375))
      {
        v376 = v16;
        v377 = swift_slowAlloc();
        v378 = swift_slowAlloc();
        *&v904 = v378;
        *v377 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v379 = qword_280072E18;
        v380 = qword_280072E20;

        v381 = sub_2662A320C(v379, v380, &v904);

        *(v377 + 4) = v381;
        *(v377 + 12) = 2082;

        v382 = sub_2662A320C(v895, v291, &v904);

        *(v377 + 14) = v382;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v293, v375, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Completed with no status codes, returning success", v377, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v378, -1, -1);
        MEMORY[0x266784AD0](v377, -1, -1);

        v303 = v884;
        v304 = v376;
        goto LABEL_97;
      }
    }

    swift_bridgeObjectRelease_n();
    v303 = v292;
    v304 = v16;
LABEL_97:
    (v892)(v303, v304);
    v904 = 0uLL;
    v905 = 0;
    v335 = &v904;
LABEL_98:
    v157(v335);
    return;
  }

  v257 = v256;
  v258 = [v256 unsignedIntValue];
  if (!v258)
  {

LABEL_66:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v323 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v324 = v896;
    (*(v896 + 16))(v158, v323, v16);
    swift_bridgeObjectRetain_n();
    v325 = sub_2664DFE18();
    v326 = sub_2664E06B8();
    if (os_log_type_enabled(v325, v326))
    {
      v327 = v16;
      v328 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      v902 = v329;
      *v328 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      v330 = qword_280072E18;
      v331 = qword_280072E20;

      v332 = sub_2662A320C(v330, v331, &v902);

      *(v328 + 4) = v332;
      *(v328 + 12) = 2082;
      v333 = v897;

      v334 = sub_2662A320C(v895, v333, &v902);

      *(v328 + 14) = v334;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_26629C000, v325, v326, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - completed successfully", v328, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v329, -1, -1);
      MEMORY[0x266784AD0](v328, -1, -1);

      (*(v324 + 8))(v158, v327);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v324 + 8))(v158, v16);
    }

    v902 = 0;
    v903 = 0uLL;
    v335 = &v902;
    goto LABEL_98;
  }

  v259 = v258;
  v888(v159, v890, v16);
  swift_bridgeObjectRetain_n();
  v260 = sub_2664DFE18();
  v261 = sub_2664E06D8();
  if (os_log_type_enabled(v260, v261))
  {
    v886 = v16;
    v262 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    *&v904 = v263;
    *v262 = 136446722;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    v264 = qword_280072E18;
    v265 = qword_280072E20;

    v266 = sub_2662A320C(v264, v265, &v904);

    *(v262 + 4) = v266;
    *(v262 + 12) = 2082;
    v267 = v897;

    v268 = sub_2662A320C(v895, v267, &v904);

    *(v262 + 14) = v268;
    swift_bridgeObjectRelease_n();
    *(v262 + 22) = 1026;
    *(v262 + 24) = v259;
    _os_log_impl(&dword_26629C000, v260, v261, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Non-success status: %{public}u", v262, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v263, -1, -1);
    MEMORY[0x266784AD0](v262, -1, -1);

    v16 = v886;
    (v892)(v159, v886);
    v157 = v894;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (v892)(v159, v16);
  }

  v336 = v885;
  v888(v885, v890, v16);
  v337 = sub_2664DFE18();
  v338 = sub_2664E06B8();
  if (os_log_type_enabled(v337, v338))
  {
    v339 = v16;
    v340 = swift_slowAlloc();
    v341 = swift_slowAlloc();
    *&v904 = v341;
    *v340 = 134218498;
    *(v340 + 4) = 19;
    *(v340 + 12) = 2048;
    *(v340 + 14) = 2;
    *(v340 + 22) = 2080;
    *(v340 + 24) = sub_2662A320C(0xD000000000000020, 0x80000002664FB280, &v904);
    _os_log_impl(&dword_26629C000, v337, v338, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v340, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v341);
    MEMORY[0x266784AD0](v341, -1, -1);
    MEMORY[0x266784AD0](v340, -1, -1);

    v342 = v336;
    v343 = v339;
  }

  else
  {

    v342 = v336;
    v343 = v16;
  }

  (v892)(v342, v343);
  v904 = xmmword_2664EF4D0;
  v905 = 0x80000002664FB280;
  v157(&v904);
}

uint64_t sub_26649C600(unsigned __int16 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, unsigned int a8, void (*a9)(uint64_t *), uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v56 = a2;
  v57 = a4;
  v13 = a9;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = *(a1 + 2);
  if (v21)
  {
    v58 = a10;
    v22 = *(a1 + 1);
    v53 = *a1;
    v54 = v22;
    v23 = qword_280F914E8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v20, v24, v14);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();

    if (os_log_type_enabled(v25, v26))
    {
      v55 = a9;
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v27 = 136446978;
      *(v27 + 4) = sub_2662A320C(v56, a3, &v62);
      *(v27 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v27 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, &v62);
      *(v27 + 22) = 2082;
      *(v27 + 24) = sub_2662A320C(v57, a5, &v62);
      *(v27 + 32) = 2082;
      v28 = v53;
      v61 = v53;
      v29 = PlaybackCode.rawValue.getter();
      v31 = sub_2662A320C(v29, v30, &v62);

      *(v27 + 34) = v31;
      _os_log_impl(&dword_26629C000, v25, v26, "%{public}s %{public}s %{public}s completed with error code: %{public}s", v27, 0x2Au);
      v32 = v52;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);

      (*(v15 + 8))(v20, v14);
      v13 = v55;
      v33 = v59;
      if (!v59)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v15 + 8))(v20, v14);
      v28 = v53;
      v33 = v59;
      if (!v59)
      {
        goto LABEL_19;
      }
    }

    v39 = [v33 playerPath];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 origin];

      if (v41)
      {
        v42 = [v41 isLocallyHosted];

        v43 = v42;
LABEL_20:
        sub_2664B369C(v43, v60, 0);
        v62 = v28;
        v63 = v54;
        v64 = v21;
        v13(&v62);
      }
    }

LABEL_19:
    v43 = 2;
    goto LABEL_20;
  }

  v55 = a9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v34, v14);

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  if (os_log_type_enabled(v35, v36))
  {
    v58 = a10;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v62 = v38;
    *v37 = 136446722;
    *(v37 + 4) = sub_2662A320C(v56, a3, &v62);
    *(v37 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v37 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, &v62);
    *(v37 + 22) = 2082;
    *(v37 + 24) = sub_2662A320C(v57, a5, &v62);
    _os_log_impl(&dword_26629C000, v35, v36, "%{public}s %{public}s %{public}s completed successfully", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    (*(v15 + 8))(v18, v14);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v45 = v55;
  if (v59 && (v46 = [v59 playerPath]) != 0 && (v47 = v46, v48 = objc_msgSend(v46, sel_origin), v47, v48))
  {
    v49 = [v48 isLocallyHosted];

    v50 = v49;
  }

  else
  {
    v50 = 2;
  }

  sub_2664B369C(v50, v60, 1);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  return (v45)(&v62);
}

uint64_t sub_26649CC98(int a1, char a2, int a3)
{
  v50 = a3;
  v5 = a1;
  v6 = sub_2664DFE08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 == 2)
  {
    return result;
  }

  v49 = a1;
  v15 = a2;
  v48 = v7;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v46 = v6;
    v21 = v20;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v21 = 136315650;
    v22 = 1702195828;
    if (v15)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v22 = 0x65736C6166;
      v23 = 0xE500000000000000;
    }

    if (v15 == 2)
    {
      v24 = 0x3E6C696E3CLL;
    }

    else
    {
      v24 = v22;
    }

    v25 = sub_2662A320C(v24, v23, &v51);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (v49)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v49)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_2662A320C(v26, v27, &v51);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    v29 = v50;
    if (v50)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v50)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = sub_2662A320C(v30, v31, &v51);

    *(v21 + 24) = v32;
    _os_log_impl(&dword_26629C000, v17, v18, "MediaPlaybackProvider#logSendQueueCrossDeviceCommandResult Command is locally hosted: %s, isLibraryPlayback: %s, isCommandSuccessful: %s", v21, 0x20u);
    v33 = v45;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v33, -1, -1);
    v34 = v21;
    v6 = v46;
    MEMORY[0x266784AD0](v34, -1, -1);

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v29 = v50;
  }

  if (v15 == 2)
  {
    v35 = -1;
    if ((v49 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v36 = 1;
    v37 = 1;
    if (v29)
    {
      goto LABEL_32;
    }

LABEL_31:
    v37 = 0;
    goto LABEL_32;
  }

  v35 = v15 & 1;
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_27:
  v36 = 0;
  if ((v29 & 1) == 0)
  {
    goto LABEL_31;
  }

  v37 = 1;
LABEL_32:
  v38 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v39 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D83B88];
  *(v40 + 16) = xmmword_2664E36E0;
  v42 = MEMORY[0x277D83C10];
  *(v40 + 56) = v41;
  *(v40 + 64) = v42;
  *(v40 + 32) = v35;
  *(v40 + 96) = v41;
  *(v40 + 104) = v42;
  *(v40 + 72) = v36;
  *(v40 + 136) = v41;
  *(v40 + 144) = v42;
  *(v40 + 112) = v37;
  v43 = v47;
  sub_2664DFDF8();
  sub_2664DFDC8(v38, &dword_26629C000, v39, "sendQueueCrossDeviceCommandResult", 33, 2, v43, "isLocallyHosted=%{signpost.telemetry:number1,public}d isLibraryPlayback=%{signpost.telemetry:number2,public}d commandSuccessful=%{signpost.telemetry:number3,public}d enableTelemetry=YES", 185, 2, v40);

  return (*(v48 + 8))(v43, v6);
}

uint64_t sub_26649D1B0(id *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v19 = a4;
  v18 = a3;
  v6 = sub_2664DFE08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 integerValue];
  v11 = sub_2664DFD58();
  v12 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2664E34E0;
  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v16;
  *(v14 + 32) = v10;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = v11;
  sub_2664DFDF8();
  sub_2664DFDC8(v12, &dword_26629C000, v13, a2, v18, v19, v9, "status=%{signpost.telemetry:number1,public}d extendedStatus=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 118, 2, v14);

  return (*(v7 + 8))(v9, v6);
}

void sub_26649D3A4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X8>)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_9;
  }

  if (!*(sub_2664DFD38() + 16))
  {

LABEL_9:
    v17 = 19;
    goto LABEL_10;
  }

  sub_2662A3E98(a3, a4);
  v16 = v15;

  if (v16)
  {
    v17 = 12;
  }

  else
  {
    v17 = 19;
  }

LABEL_10:
  v24 = v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v18, v10);
  v19 = v24;
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v19;
    _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#determineDomainCode: %ld", v22, 0xCu);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  *a5 = v24;
}

uint64_t sub_26649D5F4(uint64_t *a1)
{
  sub_2664DFD48();
  sub_2662D2EBC();
  v1 = sub_2664E09B8();

  return v1 & 1;
}

uint64_t sub_26649D67C(unint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v7 = *v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  if ((sub_2664AEEB4(0, a1) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v23, v8);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackProvider#prepareForSetQueue preventing re-send MRMediaRemoteCommandPrepareForSetQueue for same Siri request", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    goto LABEL_18;
  }

  if (!MRMediaRemoteIsMusicAppInstalled())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v15, v27, v8);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#prepareForSetQueue MusicApp NOT installed, not issuing MRMediaRemoteCommandPrepareForSetQueue", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
LABEL_18:
    memset(v31, 0, sizeof(v31));
    return a2(v31);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v17, v18, v8);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#prepareForSetQueue...", v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v9 + 8))(v17, v8);

  sub_2664B5C78(a1, a2, a3, v7);
}

uint64_t sub_26649DAEC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v110 = a5;
  v114 = a4;
  v113 = a3;
  v127 = sub_2664E0038();
  v133 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2664E00B8();
  v132 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2664DE438();
  v122 = *(v124 - 8);
  v9 = MEMORY[0x28223BE20](v124);
  v120 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v10;
  MEMORY[0x28223BE20](v9);
  v121 = &v98 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v98 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v98 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v13 + 16);
  v130 = v13 + 16;
  v131 = v23;
  v129 = v24;
  v24(v22, v23, v12);
  v25 = a1;

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  v28 = os_log_type_enabled(v26, v27);
  v115 = v12;
  v118 = v13;
  v128 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v29 = 136446722;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &aBlock);
    *(v29 + 12) = 2112;
    *(v29 + 14) = v25;
    *v30 = v25;
    *(v29 + 22) = 2080;
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);
    v32 = v25;
    v33 = sub_2664E01D8();
    v35 = sub_2662A320C(v33, v34, &aBlock);

    *(v29 + 24) = v35;
    _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#prepareForSetQueue %{public}s MRMediaRemoteCommandPrepareForSetQueue for destination: %@ with options: %s", v29, 0x20u);
    sub_2662A9238(v30, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);

    v36 = *(v118 + 8);
    v12 = v115;
    v36(v22, v115);
  }

  else
  {

    v36 = *(v13 + 8);
    v36(v22, v12);
  }

  if (qword_280071CC8 != -1)
  {
    swift_once();
  }

  v111 = qword_280073F70;
  if (qword_280071CD0 != -1)
  {
    swift_once();
  }

  v109 = qword_280073F78;
  v129(v20, v131, v12);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06B8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v39 = 134218498;
    *(v39 + 4) = 19;
    *(v39 + 12) = 2048;
    *(v39 + 14) = 3;
    *(v39 + 22) = 2080;
    *(v39 + 24) = sub_2662A320C(0x74754F64656D6974, 0xE800000000000000, &aBlock);
    _os_log_impl(&dword_26629C000, v37, v38, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v39, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v36(v20, v12);
  v41 = swift_allocObject();
  v42 = v128;
  v41[2] = v25;
  v41[3] = v42;
  v117 = v41;
  v41[4] = v110;
  v43 = v116;
  v129(v116, v131, v12);
  v44 = v25;

  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_2662A320C(0xD000000000000028, 0x80000002664FAFF0, &aBlock);
    *(v47 + 12) = 2050;
    *(v47 + 14) = 5000;
    _os_log_impl(&dword_26629C000, v45, v46, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v36(v43, v12);
  v49 = v121;
  sub_2664DE428();
  v50 = dispatch_group_create();
  v51 = swift_allocObject();
  v108 = xmmword_2664EF4E0;
  *(v51 + 16) = xmmword_2664EF4E0;
  v116 = v51;
  *(v51 + 32) = 0xE800000000000000;
  aBlock = 0;
  v136 = 0xE000000000000000;

  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v136 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000028, 0x80000002664FAFF0);
  v52 = aBlock;
  v53 = v136;
  type metadata accessor for AtomicOnce();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 32) = v52;
  *(v54 + 40) = v53;
  v55 = qword_280F91468;

  v128 = 0x80000002664FAFF0;
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_280F91470;
  v138 = type metadata accessor for SiriKitTaskLoggingProvider();
  v139 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v56;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v54 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v52, v53, 1, &aBlock);
  dispatch_group_enter(v50);
  v57 = v50;
  v58 = v122;
  v59 = *(v122 + 16);
  v60 = v120;
  v61 = v124;
  v107 = v122 + 16;
  v106 = v59;
  v59(v120, v49, v124);
  v62 = *(v58 + 80);
  v104 = ~v62;
  v63 = (v62 + 56) & ~v62;
  v64 = (v119 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = v62;
  v65 = swift_allocObject();
  v66 = v117;
  *(v65 + 2) = sub_2664B67AC;
  *(v65 + 3) = v66;
  *(v65 + 4) = v54;
  *(v65 + 5) = 0xD000000000000028;
  *(v65 + 6) = v128;
  v105 = *(v58 + 32);
  v105(&v65[v63], v60, v61);
  *&v65[v64] = v116;
  *&v65[(v64 + 15) & 0xFFFFFFFFFFFFFFF8] = v57;
  v139 = sub_2664B67B8;
  v140 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_2662A3F90;
  v138 = &block_descriptor_219;
  v67 = _Block_copy(&aBlock);

  v110 = v54;

  v102 = v57;
  v68 = v123;
  sub_2664E0068();
  v134 = MEMORY[0x277D84F90];
  v69 = sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v71 = sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v72 = v126;
  v101 = v70;
  v100 = v71;
  v73 = v127;
  v103 = v69;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v68, v72, v67);
  _Block_release(v67);
  v74 = *(v133 + 8);
  v133 += 8;
  v109 = v74;
  v74(v72, v73);
  v75 = *(v132 + 8);
  v132 += 8;
  v99 = v75;
  v75(v68, v125);

  v76 = v112;
  v77 = v115;
  v129(v112, v131, v115);
  v78 = sub_2664DFE18();
  v79 = sub_2664E06E8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v80 = 136446210;
    *(v80 + 4) = sub_2662A320C(0xD000000000000028, v128, &aBlock);
    _os_log_impl(&dword_26629C000, v78, v79, "Completions#timeout waiting for completion: %{public}s...", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x266784AD0](v81, -1, -1);
    MEMORY[0x266784AD0](v80, -1, -1);
  }

  (*(v118 + 8))(v76, v77);
  v82 = v120;
  v83 = v121;
  v84 = v124;
  v106(v120, v121, v124);
  v85 = (v98 + 72) & v104;
  v86 = v85 + v119;
  v87 = (((v85 + v119) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v102;
  *(v88 + 16) = v102;
  *(v88 + 24) = xmmword_2664EF4F0;
  *(v88 + 40) = v128;
  *(v88 + 48) = v108;
  *(v88 + 64) = 0xE800000000000000;
  v105((v88 + v85), v82, v84);
  *(v88 + v86) = 0;
  v90 = v88 + (v86 & 0xFFFFFFFFFFFFFFF8);
  v91 = v114;
  *(v90 + 8) = v113;
  *(v90 + 16) = v91;
  *(v88 + v87) = v116;
  v139 = sub_2664B6818;
  v140 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_2662A3F90;
  v138 = &block_descriptor_225;
  v92 = _Block_copy(&aBlock);

  v93 = v89;

  v94 = v123;
  sub_2664E0068();
  v134 = MEMORY[0x277D84F90];
  v96 = v126;
  v95 = v127;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v94, v96, v92);
  _Block_release(v92);

  v109(v96, v95);
  v99(v94, v125);
  (*(v122 + 8))(v83, v84);
}

uint64_t sub_26649EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "mediaPlaybackProviderCommandPrepareForSetQueue";
  *(v15 + 24) = 46;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;

  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v12, "mediaPlaybackProviderCommandPrepareForSetQueue", 46, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2664B7414;
  *(v19 + 24) = v15;

  sub_26649EE14(sub_2664B7418, v19, v24, v25, v26);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26649EE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a3;
  v25 = a1;
  v26 = a2;
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  sub_2664DE428();
  v24 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  sub_2663178D4(a4);
  v13 = sub_2664E01A8();

  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v7 + 32))(v17 + v14, v10, v6);
  v18 = (v17 + v15);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  *(v17 + v16) = v27;
  aBlock[4] = sub_2664B695C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663A0C48;
  aBlock[3] = &block_descriptor_239;
  v20 = _Block_copy(aBlock);

  v21 = v24;
  [v24 sendCommandWithResult:132 toDestination:v28 withOptions:v13 completion:v20];
  _Block_release(v20);

  return (*(v7 + 8))(v12, v6);
}

void sub_26649F0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a3;
  v94 = a2;
  v10 = sub_2664E0038();
  v99 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v97 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2664E00B8();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2664DE438();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  v102 = v20;
  v105 = v15;
  v92 = a6;
  if (a1)
  {
    v23 = [a1 error];
    v24 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v106 = sub_2664E04A8();

    v25 = [a1 commandResult];
    v26 = [v25 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v27 = sub_2664E04A8();

    v14 = v102;
    v15 = v105;
    v91 = [a1 commandResult];
  }

  else
  {
    v91 = 0;
    v27 = 0;
    v106 = 0;
    v23 = 0;
  }

  v93 = v23;
  v103 = 0x80000002664FAFF0;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v104 = v28;

  v90 = sub_2664B2034();
  v89 = v29;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v88 = 0x80000002664F3330;
  v30 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v82 = v15[2];
  v82(v22, v30, v14);

  v31 = v15;
  v32 = v106;

  v33 = v14;
  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  v36 = os_log_type_enabled(v34, v35);
  v100 = v10;
  v101 = v27;
  if (v36)
  {
    v80 = v22;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136446978;
    *(v37 + 4) = sub_2662A320C(0xD000000000000028, v103, aBlock);
    *(v37 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v37 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
    *(v37 + 22) = 2082;
    v39 = MEMORY[0x277D84F90];
    if (v32)
    {
      v40 = v32;
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v41 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v42 = MEMORY[0x2667834D0](v40, v41);
    v44 = v43;

    v45 = sub_2662A320C(v42, v44, aBlock);

    *(v37 + 24) = v45;
    *(v37 + 32) = 2082;
    if (v101)
    {
      v46 = v101;
    }

    else
    {
      v46 = v39;
    }

    v47 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v48 = MEMORY[0x2667834D0](v46, v47);
    v50 = v49;

    v51 = sub_2662A320C(v48, v50, aBlock);

    *(v37 + 34) = v51;
    _os_log_impl(&dword_26629C000, v34, v35, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v52 = v105[1];
    v53 = v102;
    v52(v80, v102);
  }

  else
  {
    v106 = v32;

    v52 = v31[1];
    v52(v22, v33);
    v53 = v33;
  }

  v54 = v83;
  sub_2664DE428();
  sub_2664DE388();
  v56 = v55;
  (*(v84 + 8))(v54, v85);
  v57 = v87;
  if (v56 >= 4.0)
  {
    v82(v87, v30, v53);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136446722;
      *(v60 + 4) = sub_2662A320C(0xD000000000000028, v103, aBlock);
      *(v60 + 12) = 2082;
      v62 = v93;
      v63 = v104;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v60 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v60 + 22) = 2050;
      *(v60 + 24) = v56;
      v64 = "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)";
      goto LABEL_26;
    }
  }

  else
  {
    v57 = v81;
    v82(v81, v30, v53);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06E8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136446722;
      *(v60 + 4) = sub_2662A320C(0xD000000000000028, v103, aBlock);
      *(v60 + 12) = 2082;
      v62 = v93;
      v63 = v104;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v60 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v60 + 22) = 2050;
      *(v60 + 24) = v56;
      v64 = "%{public}s %{public}s completed in %{public}f seconds";
LABEL_26:
      _os_log_impl(&dword_26629C000, v58, v59, v64, v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v52(v57, v102);
      goto LABEL_28;
    }
  }

  v52(v57, v53);
  v62 = v93;
  v63 = v104;
LABEL_28:
  v65 = swift_allocObject();
  v66 = v103;
  *(v65 + 16) = 0xD000000000000028;
  *(v65 + 24) = v66;
  v67 = v88;
  *(v65 + 32) = 0xD000000000000026;
  *(v65 + 40) = v67;
  v68 = v92;
  v69 = v91;
  *(v65 + 48) = v92;
  *(v65 + 56) = v69;
  *(v65 + 64) = 2;
  *(v65 + 72) = sub_2664B6A0C;
  *(v65 + 80) = v63;
  v70 = v69;

  v71 = v106;
  sub_2664949C8(0xD000000000000026, v67, v62, v106, v69, 0, sub_2664B6A14, v65);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v72 = swift_allocObject();
  *(v72 + 16) = v68;
  *(v72 + 24) = v94;
  *(v72 + 32) = 0xD000000000000028;
  *(v72 + 40) = v66;
  *(v72 + 48) = 0xD000000000000026;
  *(v72 + 56) = v67;
  *(v72 + 64) = v62;
  v73 = v101;
  *(v72 + 72) = v71;
  *(v72 + 80) = v73;
  *(v72 + 88) = v69;
  *(v72 + 96) = "mediaPlaybackProviderStatusPrepareForSetQueue";
  *(v72 + 104) = 45;
  *(v72 + 112) = 2;
  v74 = v89;
  *(v72 + 120) = v90;
  *(v72 + 128) = v74;
  aBlock[4] = sub_2664B6A18;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_251;
  v75 = _Block_copy(aBlock);

  v105 = v70;

  v76 = v62;
  v77 = v95;
  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v78 = v97;
  v79 = v100;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v77, v78, v75);
  _Block_release(v75);
  (*(v99 + 8))(v78, v79);
  (*(v96 + 8))(v77, v98);
}

uint64_t sub_26649FE40(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v35 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  swift_beginAccess();
  qword_280073F80 = v12;
  qword_280073F88 = v13;
  qword_280073F90 = v14;

  if (!v14)
  {
    v40[0] = v12;
    v40[1] = v13;
    v40[2] = 0;
    v25 = v40;
    return a2(v25);
  }

  if (!sub_266457DC4(v12, &unk_2877E4AD8))
  {

    v26 = v35;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v26 + 16))(v9, v27, v6);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136446210;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v37);
      _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#prepareForSetQueue %{public}s IGNORING prepareForSetQueue response that's not an iTunesAccountError, a noNetwork error, a gdprNeededInGroup or a requiresPreflight error (likely does not impact request)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v26 + 8))(v9, v6);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v25 = &v37;
    return a2(v25);
  }

  v15 = v35;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v11, v16, v6);

  v17 = v15;
  v18 = sub_2664DFE18();
  v19 = sub_2664E06D8();

  if (os_log_type_enabled(v18, v19))
  {
    v33[1] = a3;
    v34 = a2;
    v20 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    v37 = v33[0];
    *v20 = 136446466;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v37);
    *(v20 + 12) = 2082;
    v36 = v12;
    v21 = PlaybackCode.rawValue.getter();
    v23 = sub_2662A320C(v21, v22, &v37);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_26629C000, v18, v19, "MediaPlaybackProvider#prepareForSetQueue %{public}s ACCEPTING prepareForSetQueue error code: %{public}s", v20, 0x16u);
    v24 = v33[0];
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    (*(v35 + 8))(v11, v6);
    a2 = v34;
  }

  else
  {

    (*(v17 + 8))(v11, v6);
  }

  v37 = v12;
  v38 = v13;
  v39 = v14;
  a2(&v37);
}

void sub_2664A0358(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!MRAVEndpointGetLocalEndpoint())
  {
    __break(1u);
    return;
  }

  v30 = v8;
  v31 = a4;
  v32 = a3;
  v12 = MRAVEndpointCopyUniqueIdentifier();
  v13 = v12;
  if (!a1)
  {
    v17 = 0;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  v14 = [a2 outputDeviceUIDs];
  v15 = sub_2664E04A8();

  v33 = sub_2664E02C8();
  v34 = v16;
  MEMORY[0x28223BE20](v33);
  *(&v29 - 2) = &v33;
  v17 = sub_2662AA720(sub_2663A6860, (&v29 - 4), v15);

  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_4:
  v18 = [a2 property descriptor for SiriAudioSelfLogger.MWTMusicMetadata.isPrimaryUser];
  v19 = sub_2664E04A8();

  v33 = sub_2664E02C8();
  v34 = v20;
  MEMORY[0x28223BE20](v33);
  *(&v29 - 2) = &v33;
  v21 = sub_2662AA720(sub_2662AA7CC, (&v29 - 4), v19);

LABEL_7:
  v22 = v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v23, v22);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v13;
    v27 = swift_slowAlloc();
    *v27 = 67109632;
    *(v27 + 4) = (v17 | v21) & 1;
    *(v27 + 8) = 1024;
    *(v27 + 10) = v17 & 1;
    *(v27 + 14) = 1024;
    *(v27 + 16) = v21 & 1;
    _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup:%{BOOL}d. pairingIDMatch:%{BOOL}d, localUIDMatch:%{BOOL}d", v27, 0x14u);
    v28 = v27;
    v13 = v26;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v9 + 8))(v11, v22);
  v32((v17 | v21) & 1);
}

uint64_t sub_2664A06F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v46 = a4;
  v47 = a5;
  v44 = a3;
  v45 = a2;
  v42 = *v9;
  v43 = a7;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = a9;
  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = a8;
    v21 = v20;
    v50 = a1;
    v51 = v20;
    *v19 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v51);
    v39 = a1;
    v25 = v24;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v26 = v45;
    v50 = v45;
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, &v51);

    *(v19 + 14) = v29;
    *(v19 + 22) = 1026;
    v30 = v44;
    *(v19 + 24) = v44;
    _os_log_impl(&dword_26629C000, v17, v18, "MediaPlaybackProvider#addToUpNext origin:%s queue:%{public}s position:%{public}d", v19, 0x1Cu);
    swift_arrayDestroy();
    v31 = v21;
    a8 = v40;
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    v32 = v12;
    v33 = v39;
    (*(v13 + 8))(v15, v32);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v33 = a1;
    v26 = v45;
    v30 = v44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
  swift_allocObject();
  v34 = sub_2662ED444(0xD000000000000037, 0x80000002664FAEF0, sub_2662EAAE8, 0);
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = 0xD000000000000021;
  v35[4] = 0x80000002664FAEC0;
  v35[5] = a8;
  v36 = v41;
  v35[6] = v41;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2664B7410;
  *(v37 + 24) = v35;

  sub_2664AD2F4(v33, v48, v46, v47, v49, v43, a8, v36, v26, v30, v42);
}

void sub_2664A0B24(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, char a10)
{
  v41 = a8;
  v42 = a2;
  v43 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v40[-v20];
  v22 = *a1;
  if (*a1 >= 2uLL)
  {
    v33 = *(a1 + 8);
    v34 = v22;
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    if (qword_280071CA8 != -1)
    {
      swift_once();
    }

    v35 = swift_allocObject();
    *(v35 + 16) = a6;
    *(v35 + 24) = v34;
    *(v35 + 32) = v22;
    *(v35 + 40) = v33;
    *(v35 + 48) = a4;
    *(v35 + 56) = a5;
    v36 = v42;
    v37 = v43;
    *(v35 + 64) = a7;
    *(v35 + 72) = v36;
    *(v35 + 80) = v37;
    *(v35 + 88) = v41;
    *(v35 + 92) = a9;
    *(v35 + 96) = a10 & 1;
    aBlock[4] = sub_2664AEB50;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_180;
    v38 = _Block_copy(aBlock);
    v39 = v34;
    sub_266465164(v22, v33);

    MRMediaRemoteGetSupportedCommandsForOrigin();
    _Block_release(v38);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v24 = *(v16 + 16);
    v24(v21, v23, v15);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#addToUpNext UserIdentity nil", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v28 = *(v16 + 8);
    v28(v21, v15);
    v24(v19, v23, v15);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06B8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v45 = v32;
      *v31 = 134218498;
      *(v31 + 4) = 19;
      *(v31 + 12) = 2048;
      *(v31 + 14) = 21;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_2662A320C(0x49726573556C694ELL, 0xEF797469746E6564, &v45);
      _os_log_impl(&dword_26629C000, v29, v30, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v28(v19, v15);
    v45 = xmmword_2664EF500;
    v46 = 0xEF797469746E6564;
    v42(&v45);
  }
}

uint64_t sub_2664A0FB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, unsigned int a11)
{
  v47 = a7;
  v38 = a4;
  v37 = a3;
  v40 = a1;
  v48 = sub_2664DFE38();
  v41 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = a5;
  v45 = a6;
  v20 = v47;
  v18[6] = a6;
  v18[7] = v20;
  v18[8] = a8;
  v18[9] = a9;
  v43 = a9;
  v18[10] = a10;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v42 = v21 + 16;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = sub_2664A4494;
  *(v23 + 32) = 0;
  v44 = a11;
  *(v23 + 40) = a11;
  *(v23 + 48) = v22;

  aBlock[4] = sub_2664AEC48;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664A4BD4;
  aBlock[3] = &block_descriptor_193;
  v24 = _Block_copy(aBlock);
  v47 = a8;
  swift_retain_n();
  v46 = a10;
  swift_retain_n();

  v25 = v37;
  sub_266465164(v38, v19);

  MRMediaRemoteCommandInfoEnumerateSupportedCommandsWithHandler();
  _Block_release(v24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v26 = v48;
  v27 = __swift_project_value_buffer(v48, qword_280F914F0);
  swift_beginAccess();
  v28 = v41;
  v29 = v39;
  (*(v41 + 16))(v39, v27, v26);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109376;
    swift_beginAccess();
    *(v32 + 4) = *(v21 + 16);

    *(v32 + 8) = 1024;
    swift_beginAccess();
    *(v32 + 10) = *(v22 + 16);

    _os_log_impl(&dword_26629C000, v30, v31, "MRMediaRemoteCommandInsertIntoPlaybackQueue supportedCommand: %{BOOL}d supportsOnlyNext: %{BOOL}d", v32, 0xEu);
    v33 = v32;
    v26 = v48;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  else
  {
  }

  (*(v28 + 8))(v29, v26);
  swift_beginAccess();
  v34 = *(v21 + 16);
  swift_beginAccess();
  sub_2664B60DC(v34, *(v22 + 16), sub_2664AEC10, v18, v44, v45, v43, v46);
}

void sub_2664A14C4(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v106 = a8;
  v109 = a7;
  v108 = a6;
  v105 = a5;
  v110 = a4;
  *&v114 = a3;
  v107 = a1;
  v123 = *MEMORY[0x277D85DE8];
  v104 = sub_2664E0198();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2664E0188();
  v112 = *(v113 - 8);
  v12 = MEMORY[0x28223BE20](v113);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v98 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v98 - v20;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v100 = *(v16 + 16);
    v100(v21, v22, v15);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();
    if (os_log_type_enabled(v23, v24))
    {
      v99 = v19;
      v98 = v16;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&aBlock = v26;
      *v25 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &aBlock);
      *(v25 + 12) = 2082;
      *&v116[0] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v27 = sub_2664E0318();
      v29 = sub_2662A320C(v27, v28, &aBlock);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_26629C000, v23, v24, "MediaPlaybackProvider#addToUpNext %{public}s Sending add request to %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      v30 = *(v98 + 8);
      v30(v21, v15);
      v19 = v99;
    }

    else
    {

      v30 = *(v16 + 8);
      v30(v21, v15);
    }

    v31 = *MEMORY[0x277D27E18];
    if (!*MEMORY[0x277D27E18])
    {
      __break(1u);
    }

    v32 = objc_opt_self();
    *&v116[0] = 0;
    v33 = v31;
    v34 = [v32 archivedDataWithRootObject:v114 requiringSecureCoding:1 error:v116];
    v35 = *&v116[0];
    if (v34)
    {
      v36 = sub_2664DE2F8();
      v38 = v37;

      v119 = MEMORY[0x277CC9318];
      *&aBlock = v36;
      *(&aBlock + 1) = v38;
      sub_266318804(&aBlock, v116);
      v39 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v39;
      sub_26634F694(v116, v33, isUniquelyReferenced_nonNull_native);

      v41 = v122;
    }

    else
    {
      v42 = v35;

      v43 = sub_2664DE1A8();
      swift_willThrow();
      v100(v19, v22, v15);
      v44 = v43;
      v45 = sub_2664DFE18();
      v46 = sub_2664E06D8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v99 = v19;
        v48 = v47;
        v49 = swift_slowAlloc();
        *&aBlock = v49;
        *v48 = 136315138;
        swift_getErrorValue();
        v50 = sub_2664E0DE8();
        v52 = sub_2662A320C(v50, v51, &aBlock);
        *&v114 = 0;
        v53 = v52;

        *(v48 + 4) = v53;
        _os_log_impl(&dword_26629C000, v45, v46, "MediaPlaybackProvider#addToUpNext Error getting user identity data - %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x266784AD0](v49, -1, -1);
        MEMORY[0x266784AD0](v48, -1, -1);

        v54 = v99;
      }

      else
      {

        v54 = v19;
      }

      v30(v54, v15);
      v41 = MEMORY[0x277D84F98];
    }

    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = qword_280F90B40;
    v56 = unk_280F90B48;
    v57 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v58 = *(v55 - 8);
    MEMORY[0x28223BE20](v57);
    v60 = &v98 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v60);
    v61 = (*(v56 + 16))(v55, v56);
    v63 = v62;
    (*(v58 + 8))(v60, v55);
    if (!v63)
    {
      goto LABEL_21;
    }

    v64 = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      __break(1u);
      goto LABEL_41;
    }

    v65 = v64;
    v66 = sub_2664E02A8();
    v119 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&aBlock = v66;
    sub_266318804(&aBlock, v116);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v41;
    sub_26634F694(v116, v65, v67);

    v99 = v115;

    v100 = v63;
    v68 = sub_26648BD18(v61, v63);
    a2 = v69;
    v16 = sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v19 = v101;
    v70 = v104;
    sub_2664E0178();
    sub_2663C50C4(v68, a2);
    sub_2664AB368(v68, a2, v19, v71);
    sub_266348774(v68, a2);
    v72 = v111;
    sub_2664E0168();
    sub_266348774(v68, a2);
    (*(v103 + 8))(v19, v70);
    (*(v112 + 16))(v102, v72, v113);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_2664E0438();
    v73 = *(&aBlock + 1);
    v21 = aBlock;
    v74 = *(aBlock + 16);
    v75 = MEMORY[0x277D84F90];
    if (*(&aBlock + 1) == v74)
    {
      break;
    }

    v15 = aBlock + 32;
    v114 = xmmword_2664E36F0;
    v92 = *(&aBlock + 1);
    while ((v73 & 0x8000000000000000) == 0)
    {
      if (v92 >= *(v21 + 2))
      {
        goto LABEL_37;
      }

      v93 = *(v15 + v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v94 = swift_allocObject();
      *(v94 + 16) = v114;
      *(v94 + 56) = MEMORY[0x277D84B78];
      *(v94 + 64) = MEMORY[0x277D84BC0];
      *(v94 + 32) = v93;
      v16 = sub_2664E02E8();
      v19 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_2663846F4(0, *(v75 + 2) + 1, 1, v75);
      }

      a2 = *(v75 + 2);
      v96 = *(v75 + 3);
      if (a2 >= v96 >> 1)
      {
        v75 = sub_2663846F4((v96 > 1), a2 + 1, 1, v75);
      }

      ++v92;
      *(v75 + 2) = a2 + 1;
      v97 = &v75[16 * a2];
      *(v97 + 4) = v16;
      *(v97 + 5) = v19;
      if (v74 == v92)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_19:
  (*(v112 + 8))(v111, v113);

  *&aBlock = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
  v76 = sub_2664E0288();
  v78 = v77;

  if (!*MEMORY[0x277D27DF0])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v79 = *MEMORY[0x277D27DF0];

  v119 = MEMORY[0x277D837D0];
  *&aBlock = v76;
  *(&aBlock + 1) = v78;
  sub_266318804(&aBlock, v116);
  v80 = v99;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v80;
  sub_26634F694(v116, v79, v81);

  v41 = v115;
LABEL_21:
  if (v110 == 1 || !v105)
  {

    goto LABEL_26;
  }

  v82 = *MEMORY[0x277D27DA8];
  if (*MEMORY[0x277D27DA8])
  {
    v83 = v105;
    v84 = v82;

    v85 = [v83 BOOLValue];
    v119 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v85;
    sub_266318804(&aBlock, v116);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v41;
    sub_26634F694(v116, v84, v86);

LABEL_26:
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);
    v87 = sub_2664E01A8();

    sub_2662C1744(0, &qword_280F8F5C0, 0x277D85C78);
    v88 = sub_2664E07C8();
    v89 = swift_allocObject();
    v90 = v108;
    v89[2] = v106;
    v89[3] = v90;
    v89[4] = a9;
    v89[5] = a10;
    v120 = sub_2664B6738;
    v121 = v89;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v118 = sub_2664A2C48;
    v119 = &block_descriptor_199;
    v91 = _Block_copy(&aBlock);

    MRMediaRemoteInsertSystemAppPlaybackQueueWithOptions();
    _Block_release(v91);

    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_2664A2358(int a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v67 = a5;
  v68 = a4;
  v66 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v64 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v69 = *(v7 + 16);
  v69(v20, v21);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = a1;
    _os_log_impl(&dword_26629C000, v22, v23, "MediaPlaybackProvider#addToUpNext received MRError code: %u", v24, 8u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v7 + 8);
  v25(v20, v6);
  if (a1 == 45)
  {
    v32 = v69;
    (v69)(v12, v21, v6);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "MediaPlaybackProvider#addToUpNext MRMediaRemoteError is cannotModifyQueueWithPlaybackTokenItems", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v25(v12, v6);
    sub_2664B5F24(v66);
    v36 = 0x80000002664FAF90;
    v37 = v63;
    v32(v63, v21, v6);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06B8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v37;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v71 = v42;
      *v41 = 134218498;
      *(v41 + 4) = 19;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 47;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_2662A320C(0xD000000000000027, 0x80000002664FAF90, &v71);
      _os_log_impl(&dword_26629C000, v38, v39, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      v25(v40, v6);
    }

    else
    {

      v25(v37, v6);
    }

    v54 = v68;
    v55 = xmmword_2664EF510;
    goto LABEL_27;
  }

  if (a1)
  {
    v43 = v65;
    (v69)(v65, v21, v6);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06D8();
    if (os_log_type_enabled(v44, v45))
    {
      v63 = (v7 + 8);
      v46 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v71 = v62;
      *v46 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v46 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v71);
      *(v46 + 12) = 2082;
      v70 = a1;
      type metadata accessor for MRMediaRemoteError(0);
      v47 = sub_2664E0318();
      v49 = sub_2662A320C(v47, v48, &v71);

      *(v46 + 14) = v49;
      _os_log_impl(&dword_26629C000, v44, v45, "MediaPlaybackProvider#addToUpNext %{public}s Error setting playback queue, error: %{public}s", v46, 0x16u);
      v50 = v62;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);

      v51 = v65;
      v52 = v6;
    }

    else
    {

      v51 = v43;
      v52 = v6;
    }

    v25(v51, v52);
    sub_2664B5F24(v66);
    v36 = 0x80000002664FAF70;
    v56 = v64;
    (v69)(v64, v21, v6);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06B8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v71 = v60;
      *v59 = 134218498;
      *(v59 + 4) = 19;
      *(v59 + 12) = 2048;
      *(v59 + 14) = 4;
      *(v59 + 22) = 2080;
      *(v59 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FAF70, &v71);
      _os_log_impl(&dword_26629C000, v57, v58, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v59, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v60, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v25(v56, v6);
    v54 = v68;
    v55 = xmmword_2664EF520;
LABEL_27:
    v71 = v55;
    v72 = v36;
    v54(&v71);
  }

  v26 = v62;
  (v69)(v62, v21, v6);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v71 = v30;
    *v29 = 136446210;
    v31 = v68;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v71);
    _os_log_impl(&dword_26629C000, v27, v28, "MediaPlaybackProvider#addToUpNext %{public}s set playback queue", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);

    v25(v26, v6);
  }

  else
  {

    v25(v26, v6);
    v31 = v68;
  }

  v71 = 0uLL;
  v72 = 0;
  return (v31)(&v71);
}

uint64_t sub_2664A2C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2664A2C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v56 = a7;
  v57 = a5;
  v17 = *v9;
  v18 = sub_2664DFE38();
  v19 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  if (a1)
  {
    v23 = a8;
    v24 = [objc_allocWithZone(MEMORY[0x277D27830]) init];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = a9;
    *(v25 + 32) = v10;
    *(v25 + 40) = a2;
    *(v25 + 48) = a3;
    *(v25 + 56) = a4;
    *(v25 + 64) = v57;
    *(v25 + 72) = a6;
    *(v25 + 80) = v56;
    aBlock[4] = sub_2664AEAA0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664A3614;
    aBlock[3] = &block_descriptor_165;
    v26 = _Block_copy(aBlock);

    [v24 connectToEndpoint:v55 completion:v26];
    _Block_release(v26);
  }

  else
  {
    v49 = v20;
    v50 = v17;
    v51 = v10;
    v52 = a9;
    v53 = a4;
    v54 = a8;
    if (qword_280F914E8 != -1)
    {
      v47 = v19;
      swift_once();
      v19 = v47;
    }

    v55 = a6;
    v27 = v19;
    v28 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    v29 = v49;
    (*(v49 + 16))(v22, v28, v27);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = 0;
      v60 = v48;
      *v32 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v33 = sub_2664E0318();
      v35 = sub_2662A320C(v33, v34, &v60);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v59 = a2;
      v36 = sub_2664E0318();
      v38 = sub_2662A320C(v36, v37, &v60);

      *(v32 + 14) = v38;
      *(v32 + 22) = 1026;
      *(v32 + 24) = a3;
      _os_log_impl(&dword_26629C000, v30, v31, "MediaPlaybackProvider#addToUpNext origin:%s queue:%{public}s position:%{public}d", v32, 0x1Cu);
      v39 = v48;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v29 + 8))(v22, v27);
    v41 = v51;
    v40 = v52;
    v42 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072698, &unk_2664E4810);
    swift_allocObject();
    v43 = sub_2662ED444(0xD000000000000037, 0x80000002664FAEF0, sub_2662EAAE8, 0);
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = 0xD000000000000021;
    v45 = v54;
    v44[4] = 0x80000002664FAEC0;
    v44[5] = v45;
    v44[6] = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_2664AEA9C;
    *(v46 + 24) = v44;

    sub_2664AD2F4(0, v41, v53, v57, v55, v56, v45, v40, a2, a3, v42);
  }
}

uint64_t sub_2664A31C4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  if (!a3)
  {
    return sub_2664A06F0(a2, a7, a8, a9, a10, a11, a12, a4, a5);
  }

  v51 = a5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v19 + 16);
  v25(v23, v24, v18);
  v26 = a3;
  v27 = sub_2664DFE18();
  v28 = v19;
  v29 = sub_2664E06D8();

  v30 = os_log_type_enabled(v27, v29);
  v52 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v50 = v25;
    v32 = v31;
    v33 = swift_slowAlloc();
    v49 = v28;
    v34 = v33;
    v54 = a3;
    *&v55 = v33;
    *v32 = 136446210;
    v35 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v36 = sub_2664E0318();
    v38 = sub_2662A320C(v36, v37, &v55);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_26629C000, v27, v29, "Failed to connect to endpoint, error: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    v39 = v32;
    v25 = v50;
    MEMORY[0x266784AD0](v39, -1, -1);

    v40 = *(v49 + 8);
  }

  else
  {

    v40 = *(v28 + 8);
  }

  v40(v23, v18);
  v42 = v53;
  v25(v53, v24, v18);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06B8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v42;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v55 = v47;
    *v46 = 134218498;
    *(v46 + 4) = 19;
    *(v46 + 12) = 2048;
    *(v46 + 14) = 7;
    *(v46 + 22) = 2080;
    *(v46 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FAF30, &v55);
    _os_log_impl(&dword_26629C000, v43, v44, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v46, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v48 = v45;
  }

  else
  {

    v48 = v42;
  }

  v40(v48, v18);
  v55 = xmmword_2664EF530;
  v56 = 0x80000002664FAF30;
  v52(&v55);
}

void sub_2664A3614(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2664A369C(void *a1, unint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v53 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v17 = sub_2664E08F8();
  v59 = v17;
  v55 = &v59;
  v18 = sub_2662C5584(sub_2664AEA7C, v54, a2);

  if (v18)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v20 = v53;
    (*(v53 + 16))(v15, v19, v8);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "Create radio success", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v20 + 8))(v15, v8);
    v57 = 0uLL;
    v58 = 0;
    return a3(&v57);
  }

  else
  {
    v50 = a4;
    v51 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v26 = v53;
    v48 = *(v53 + 16);
    v49 = v25;
    v48(v13, v25, v8);
    v27 = a1;

    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v30 = 136446466;
      if (a1)
      {
        swift_getErrorValue();
        v31 = sub_2664E0DE8();
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *&v57 = v31;
      *(&v57 + 1) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v34 = sub_2664E0318();
      v36 = sub_2662A320C(v34, v35, &v56);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      v37 = MEMORY[0x2667834D0](a2, v16);
      v39 = sub_2662A320C(v37, v38, &v56);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_26629C000, v28, v29, "Create radio failed. Error: %{public}s, statuses: %{public}s", v30, 0x16u);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);

      v33 = *(v53 + 8);
      v33(v13, v8);
    }

    else
    {

      v33 = *(v26 + 8);
      v33(v13, v8);
    }

    v41 = v52;
    v48(v52, v49, v8);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06B8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v57 = v45;
      *v44 = 134218498;
      *(v44 + 4) = 19;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 8;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5080, &v57);
      _os_log_impl(&dword_26629C000, v42, v43, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v44, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v33(v41, v8);
    v57 = xmmword_2664EF540;
    v58 = 0x80000002664F5080;
    v51(&v57);
  }
}

void sub_2664A3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D27830]) init];
    v8 = swift_allocObject();
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = v3;
    v10[4] = sub_2664AEA68;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2664A3614;
    v10[3] = &block_descriptor_140;
    v9 = _Block_copy(v10);

    [v7 connectToEndpoint:a1 completion:v9];
    _Block_release(v9);
  }

  else
  {

    sub_2664AD444(0, a2, a3);
  }
}

void sub_2664A3E0C(uint64_t a1, char *a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v55 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  if (a3)
  {
    v53 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v19 = *(v10 + 16);
    v19(v15, v18, v9);
    v20 = a3;
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v52 = v10;
      v24 = v23;
      v25 = swift_slowAlloc();
      v51 = v19;
      v26 = v25;
      v56 = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      *&v58 = sub_2664E0DE8();
      *(&v58 + 1) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v28 = sub_2664E0318();
      v30 = sub_2662A320C(v28, v29, &v56);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_26629C000, v21, v22, "Failed to connect to endpoint, error: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v31 = v26;
      v19 = v51;
      MEMORY[0x266784AD0](v31, -1, -1);
      v32 = v24;
      v10 = v52;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = *(v10 + 8);
    v33(v15, v9);
    v34 = v54;
    v19(v54, v18, v9);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v58 = v38;
      *v37 = 134218498;
      *(v37 + 4) = 19;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 8;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664FAEA0, &v58);
      _os_log_impl(&dword_26629C000, v35, v36, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v33(v34, v9);
    v58 = xmmword_2664EF550;
    v59 = 0x80000002664FAEA0;
    v55(&v58);
  }

  else
  {
    v54 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v17, v39, v9);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v56 = a1;
      aBlock[0] = v43;
      *v42 = 136315138;
      v44 = sub_2664E0318();
      v46 = sub_2662A320C(v44, v45, aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_26629C000, v40, v41, "Connected to endpoint: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    (*(v10 + 8))(v17, v9);
    v47 = [objc_allocWithZone(MEMORY[0x277D27850]) init];
    [v47 setOrigin_];
    v48 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
    v49 = swift_allocObject();
    *(v49 + 16) = v55;
    *(v49 + 24) = a5;
    aBlock[4] = sub_2664AEA74;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26634045C;
    aBlock[3] = &block_descriptor_146;
    v50 = _Block_copy(aBlock);

    [v48 sendCommand:121 toDestination:v47 withOptions:0 completion:v50];
    _Block_release(v50);
  }
}

uint64_t sub_2664A4494(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v58[-v16];
  if (v15)
  {
    v18 = MRMediaRemoteCommandInfoCopyValueForKey();
    if (v18)
    {
      v19 = v18;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v63 = v8;
      v20 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      v61 = *(v5 + 16);
      v62 = v20;
      v61(v11, v20, v4);
      v21 = sub_2664DFE18();
      v22 = sub_2664E06D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v59 = v2;
        v24 = v23;
        v25 = swift_slowAlloc();
        v60 = v5;
        v26 = v25;
        v64 = v19;
        v65 = v25;
        *v24 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FD8, &unk_2664EF6E0);
        v27 = sub_2664E0318();
        v29 = sub_2662A320C(v27, v28, &v65);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_26629C000, v21, v22, "supportedInsertionPositions: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        v30 = v26;
        v5 = v60;
        MEMORY[0x266784AD0](v30, -1, -1);
        v31 = v24;
        v2 = v59;
        MEMORY[0x266784AD0](v31, -1, -1);
      }

      v32 = *(v5 + 8);
      v32(v11, v4);
      swift_unknownObjectRetain();
      v33 = sub_2664E0E38();
      v34 = [v19 containsObject_];

      swift_unknownObjectRelease();
      if (v34)
      {
        return 1;
      }

      v44 = v2;
      v45 = v63;
      v61(v63, v62, v4);
      v46 = sub_2664DFE18();
      v47 = sub_2664E06D8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v65 = v62;
        *v48 = 136446466;
        LODWORD(v64) = v44;
        v49 = sub_2664E0D48();
        v51 = v45;
        v52 = sub_2662A320C(v49, v50, &v65);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2082;
        v64 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FD8, &unk_2664EF6E0);
        v53 = sub_2664E0318();
        v55 = sub_2662A320C(v53, v54, &v65);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_26629C000, v46, v47, "Mode %{public}s not in %{public}s", v48, 0x16u);
        v56 = v62;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v56, -1, -1);
        MEMORY[0x266784AD0](v48, -1, -1);

        v57 = v51;
      }

      else
      {

        v57 = v45;
      }

      v32(v57, v4);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v14, v40, v4);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "supportedInsertionPositions is nil", v43, 2u);
        MEMORY[0x266784AD0](v43, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v17, v36, v4);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "MediaPlaybackProvider#isInsertionPositionSupported MRMediaRemoteCommandInfoRef is nil", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v5 + 8))(v17, v4);
  }

  return 0;
}

void sub_2664A4B10(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 125)
  {
    if (MRMediaRemoteCommandInfoGetEnabled())
    {
      v12 = a4(a2, a6);
      swift_beginAccess();
      *(a3 + 16) = v12 & 1;
      v13 = a4(a2, 0);
      swift_beginAccess();
      *(a7 + 16) = v13 & 1;
    }
  }
}

uint64_t sub_2664A4BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_2664A4C34(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v24 = a4;
  v25 = a1;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a2;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v23 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 67240450;
    *(v14 + 4) = v25 != 0;
    *(v14 + 8) = 2082;
    if (a2)
    {
      v26 = v11;
      type metadata accessor for CFError(0);
      sub_2664B67D0(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v16 = sub_2664E0DE8();
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v26 = v16;
    v27 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v18 = sub_2664E0318();
    v20 = sub_2662A320C(v18, v19, &v28);

    *(v14 + 10) = v20;
    _os_log_impl(&dword_26629C000, v12, v13, "MediaPlaybackProvider#groupLeaderWithTimeOut completed with endpoint present?:%{BOOL,public}d, error: %{public}s...", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v7 + 8))(v9, v6);
    a3 = v23;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return a3(v25, a2);
}

uint64_t sub_2664A4F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280F91508;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "mediaPlaybackProviderDecodeHashedRouteUIDs";
  *(v17 + 24) = 42;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_2662C0D0C;
  v18[1] = v12;

  v19 = sub_2664E0848();
  sub_2664DFDC8(v19, &dword_26629C000, v14, "mediaPlaybackProviderDecodeHashedRouteUIDs", 42, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2662C0D38;
  *(v20 + 24) = v17;

  sub_2664A51FC(sub_2662C0DE0, v20, v22[0], v22[1]);

  return (*(v6 + 8))(v11, v5);
}

void sub_2664A51FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_280F914E8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v14, v8);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v12;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v21 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
    v23 = sub_2662A320C(v21, v22, aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#decodeHashedRouteUIDs for routes: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v12 = v31;
    MEMORY[0x266784AD0](v24, -1, -1);
    v25 = v18;
    a4 = v32;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v26 = *(a4 + 144);
  v27 = sub_2664E0488();
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = sub_2662C0CAC;
  v28[4] = v12;
  aBlock[4] = sub_2664AEA38;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648C248;
  aBlock[3] = &block_descriptor_128;
  v29 = _Block_copy(aBlock);

  [v26 decodeHashedRouteUIDs:v27 completion:v29];
  _Block_release(v29);
}

void sub_2664A5544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  sub_26640C820(v7, 0);
  v8 = sub_266410DDC();

  sub_2662B793C(aBlock[0]);
  if (v8 == v7)
  {
    v5 = a3;
    v4 = a4;
LABEL_4:
    v9 = *(a2 + 152);
    v10 = sub_2664E0488();

    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v4;
    aBlock[4] = sub_2664AEA44;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664A56E8;
    aBlock[3] = &block_descriptor_134;
    v12 = _Block_copy(aBlock);

    [v9 discoverRemoteControlEndpointsMatchingUIDs:v10 completion:v12];
    _Block_release(v12);

    return;
  }

  __break(1u);
}

uint64_t sub_2664A56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_2664E04A8();
  v5 = sub_2664E04A8();

  v3(v4, v5);
}

void sub_2664A5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2664E36F0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = sub_2664E0488();

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v14[4] = sub_2664AEA14;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2664A56E8;
  v14[3] = &block_descriptor_110;
  v13 = _Block_copy(v14);

  [v9 discoverRemoteControlEndpointsMatchingUIDs:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_2664A58D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x2667834D0](a1, MEMORY[0x277D84F70] + 8);
    v27 = v9;
    v20 = sub_2662A320C(v18, v19, &v28);
    v25 = v8;
    v21 = a3;
    v22 = v20;

    *(v16 + 4) = v22;
    a3 = v21;
    _os_log_impl(&dword_26629C000, v13, v14, v26, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v27 + 8))(v11, v25);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return a3(a1);
}

uint64_t sub_2664A5B64()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
  return v0;
}

uint64_t sub_2664A5BCC()
{
  sub_2664A5B64();

  return swift_deallocClassInstance();
}

uint64_t sub_2664A5C94()
{
  sub_2664A6030(v49);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280F905C8;
  v1 = BYTE1(qword_280F905C8);
  v2 = BYTE2(qword_280F905C8);
  v3 = BYTE3(qword_280F905C8);
  v4 = BYTE4(qword_280F905C8);
  v5 = BYTE5(qword_280F905C8);
  v6 = BYTE6(qword_280F905C8);
  v7 = HIBYTE(qword_280F905C8);
  v46 = byte_280F905D0;
  v43 = byte_280F905D1;
  v44 = byte_280F905D2;
  v45 = byte_280F905D3;
  v47 = byte_280F905D4;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  type metadata accessor for AppleMediaServicesProvider();
  v9 = swift_allocObject();
  v10 = 256;
  if (v1)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  if (v2)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v3)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v12 | v13 | v14;
  if (v4)
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0x10000000000;
  if ((v5 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000000000;
  if ((v6 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v16 | v17;
  if (v7)
  {
    v20 = 0x100000000000000;
  }

  else
  {
    v20 = 0;
  }

  v21 = v15 | v19 | v18;
  if ((v43 & 1) == 0)
  {
    v10 = 0;
  }

  v22 = v10 & 0xFFFFFFFFFFFFFFFELL | v46 & 1;
  if (v44)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  if (v45)
  {
    v24 = 0x1000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v23 | v24;
  if (v47)
  {
    v26 = 0x100000000;
  }

  else
  {
    v26 = 0;
  }

  swift_retain_n();
  v27 = sub_2664AAEF0(v21 | v20, v25 | v26, v8, v9);

  v28 = __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
  MEMORY[0x28223BE20](v28);
  v30 = &v42[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v31 + 16))(v30);
  v32 = *v30;
  v33 = type metadata accessor for MediaPlaybackProvider();
  v48[3] = v33;
  v48[4] = &off_2877F3740;
  v48[0] = v32;
  type metadata accessor for MediaPlaybackLite();
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v48, v33);
  MEMORY[0x28223BE20](v35);
  v37 = &v42[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v38 + 16))(v37);
  v39 = *v37;

  v40 = sub_2664AB120(v39, v27, v34);

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v49);
  qword_280073F98 = v40;
  return result;
}

uint64_t sub_2664A6030@<X0>(void *a1@<X8>)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, &v27, v5);

  v7 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v27);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v24 = qword_280F905C8;
  *(&v24 + 5) = *(&qword_280F905C8 + 5);
  v25 = &type metadata for FeatureFlagProvider;
  v26 = &protocol witness table for FeatureFlagProvider;
  v23 = &protocol witness table for SharedContextProvider;
  v22 = type metadata accessor for SharedContextProvider();
  v20 = &protocol witness table for SubscriptionProvider;
  *&v21 = swift_initStaticObject();
  v19 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v9;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v11[28] = &type metadata for WatchOSSupportProvider;
  v11[29] = &off_2877EC0A0;
  v11[5] = v4;
  v11[6] = &protocol witness table for AccountProvider;
  v11[2] = v6;
  v11[17] = v13;
  v11[18] = v7;
  v11[19] = v8;
  sub_2662A8618(&v27, (v11 + 20));
  sub_2662A8618(&v24, (v11 + 30));
  sub_2662A8618(&v21, (v11 + 35));
  sub_2662A8618(&v18, (v11 + 7));
  sub_2662A8618(&v15, (v11 + 12));

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  a1[3] = v10;
  a1[4] = &off_2877F3740;
  *a1 = v11;
  return result;
}

double static MediaPlaybackLite.shared.getter()
{
  if (qword_280071CD8 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_2664A63D0@<D0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;

  return result;
}

uint64_t sub_2664A6440(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  swift_beginAccess();
  *a2 = v7;
  *a4 = v8;
  *a3 = v9;
}

uint64_t sub_2664A6508(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  swift_beginAccess();
  *a5 = v10;
  *a7 = v11;
  *a6 = v12;
}

uint64_t sub_2664A6594()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000033, 0x80000002664FBD40, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073FB8 = v8;
  return result;
}

uint64_t sub_2664A672C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002CLL, 0x80000002664FBD10, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073FC0 = v8;
  return result;
}

uint64_t sub_2664A68C4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v3;
  *(v4 + 104) = v2;
}

uint64_t sub_2664A6924()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_2664A6970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_2664A69C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v68 = a2;
  v67 = a1;
  v4 = sub_2664E0198();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2664E0188();
  v70 = *(v71 - 8);
  v7 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v63 - v9;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v13, v14, v10);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06E8();

    v17 = os_log_type_enabled(v15, v16);
    v72 = a3;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v74[0] = v19;
      *v18 = 136446210;
      v20 = *(a3 + 120);
      *&v76[0] = *(a3 + 112);
      *(&v76[0] + 1) = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v21 = sub_2664E0318();
      *&v73 = v10;
      v23 = sub_2662A320C(v21, v22, v74);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) with refId: %{public}s...", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      MEMORY[0x266784AD0](v18, -1, -1);

      (*(v11 + 8))(v13, v73);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074018, &unk_2664EF740);
    result = swift_initStackObject();
    v73 = xmmword_2664E36F0;
    *(result + 16) = xmmword_2664E36F0;
    v25 = *MEMORY[0x277D27DC0];
    if (!*MEMORY[0x277D27DC0])
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(result + 32) = v25;
    v26 = result + 32;
    *(result + 64) = MEMORY[0x277D837D0];
    *(result + 40) = 0xD000000000000013;
    *(result + 48) = 0x80000002664FBDB0;
    v27 = result;
    v28 = v25;
    v29 = sub_266386AE4(v27);
    swift_setDeallocating();
    sub_2662A9238(v26, &qword_280072F90, &qword_2664E90A8);
    v77 = v29;
    if (*(v72 + 120))
    {
      v30 = *(v72 + 112);
      v31 = *(v72 + 120);
    }

    else
    {
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v33 = qword_280F90B40;
      v32 = unk_280F90B48;
      v34 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v35 = *(v33 - 8);
      MEMORY[0x28223BE20](v34);
      v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v37);
      v30 = (*(v32 + 16))(v33, v32);
      v31 = v38;
      (*(v35 + 8))(v37, v33);
      if (!v31)
      {
        v53 = 0;
        v54 = v72;
        goto LABEL_16;
      }
    }

    swift_bridgeObjectRetain_n();
    v39 = sub_2664E02A8();
    result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    v75 = result;
    v74[0] = v39;
    if (!*MEMORY[0x277D27D08])
    {
      goto LABEL_31;
    }

    sub_2664AAA78(v74, *MEMORY[0x277D27D08], v76);
    sub_2662A9238(v76, &unk_280074250, &unk_2664E3680);

    v64 = v30;
    v63 = v31;
    v40 = sub_26648BD18(v30, v31);
    v42 = v41;
    sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v43 = v65;
    sub_2664E0178();
    sub_2663C50C4(v40, v42);
    sub_2664AB368(v40, v42, v43, v44);
    sub_266348774(v40, v42);
    v45 = v69;
    sub_2664E0168();
    sub_266348774(v40, v42);
    v46 = *(v5 + 8);
    v5 += 8;
    v46(v43, v4);
    (*(v70 + 16))(v66, v45, v71);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_2664E0438();
    v10 = *(&v76[0] + 1);
    v13 = *&v76[0];
    v47 = *(*&v76[0] + 16);
    v48 = MEMORY[0x277D84F90];
    if (*(&v76[0] + 1) == v47)
    {
      break;
    }

    v11 = *&v76[0] + 32;
    a3 = *(&v76[0] + 1);
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (a3 >= *(v13 + 2))
      {
        goto LABEL_28;
      }

      v56 = *(v11 + a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v57 = swift_allocObject();
      *(v57 + 16) = v73;
      *(v57 + 56) = MEMORY[0x277D84B78];
      *(v57 + 64) = MEMORY[0x277D84BC0];
      *(v57 + 32) = v56;
      v58 = sub_2664E02E8();
      v60 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_2663846F4(0, *(v48 + 2) + 1, 1, v48);
      }

      v4 = *(v48 + 2);
      v61 = *(v48 + 3);
      v5 = v4 + 1;
      if (v4 >= v61 >> 1)
      {
        v48 = sub_2663846F4((v61 > 1), v4 + 1, 1, v48);
      }

      ++a3;
      *(v48 + 2) = v5;
      v62 = &v48[16 * v4];
      *(v62 + 4) = v58;
      *(v62 + 5) = v60;
      if (v47 == a3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_14:
  (*(v70 + 8))(v69, v71);

  *&v76[0] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
  v49 = sub_2664E0288();
  v51 = v50;

  v75 = MEMORY[0x277D837D0];
  v74[0] = v49;
  v74[1] = v51;
  v52 = *MEMORY[0x277D27DF0];
  if (*MEMORY[0x277D27DF0])
  {
    v53 = v63;

    sub_2664AAA78(v74, v52, v76);
    sub_2662A9238(v76, &unk_280074250, &unk_2664E3680);
    v29 = v77;
    v54 = v72;
    v30 = v64;
LABEL_16:
    __swift_project_boxed_opaque_existential_1((v54 + 56), *(v54 + 80));
    v55 = swift_allocObject();
    v55[2] = v30;
    v55[3] = v53;
    v55[4] = v67;
    v55[5] = v68;

    sub_26649D67C(v29, sub_2664B71E8, v55);
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664A742C(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  v36 = *a1;
  v17 = *(a1 + 2);
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v18, v10);

    v19 = sub_2664DFE18();
    v20 = sub_2664E06E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35[1] = a5;
      v22 = a4;
      v23 = v21;
      v24 = swift_slowAlloc();
      v25 = a2;
      v26 = v17;
      v27 = v24;
      *&v37 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_2662A320C(v25, a3, &v37);
      _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) completed with refId: %{public}s...", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v28 = v27;
      v17 = v26;
      MEMORY[0x266784AD0](v28, -1, -1);
      v29 = v23;
      a4 = v22;
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v16, v30, v10);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "MediaPlaybackLite#prepareForSetQueue (AtomicValue) completed with nil refId...", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
  }

  v37 = v36;
  v38 = v17;
  return a4(&v37);
}

uint64_t sub_2664A77A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v30 = sub_2664DFE08();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v5;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackLite#warm called to prewarm...", v18, 2u);
    v19 = v18;
    v5 = v17;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v20 = qword_280F91D48;
  sub_2664DFDE8();
  v21 = v30;
  (*(v4 + 16))(v7, v9, v30);
  v22 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = "mediaPlaybackProviderWarm";
  *(v23 + 24) = 25;
  *(v23 + 32) = 2;
  (*(v4 + 32))(v23 + v22, v7, v21);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;

  v26 = sub_2664E0848();
  sub_2664DFDC8(v26, &dword_26629C000, v20, "mediaPlaybackProviderWarm", 25, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2664B7414;
  *(v27 + 24) = v23;

  sub_2664A7BBC(0, v35, v33, v34, sub_2664B7418, v27);

  return (*(v4 + 8))(v9, v21);
}

uint64_t sub_2664A7BBC(int a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v27 = a3;
  v28 = a4;
  v26 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2664DFE08();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a2 + 80);
  v29 = a2;
  v16 = *__swift_project_boxed_opaque_existential_1((a2 + 56), v15);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  sub_2664DFDE8();
  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v17, "mediaPlaybackProviderStreamingAvailability", 42, 2, v14, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_26648D3D0(v26 & 0x1010101, v16, v32);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v12 + 8))(v14, v11);
  v19 = v32[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v20, v7);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349056;
    *(v23 + 4) = v19;
    _os_log_impl(&dword_26629C000, v21, v22, "MediaPlaybackLite#warm streaming availability: %{public}ld", v23, 0xCu);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return sub_2664A896C(v27, v28, 0, v30, v31, 10.0);
}

uint64_t sub_2664A7F24(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v27 = sub_2664DE438();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v27);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v7;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "MediaPlaybackLite#waitForPrepareForSetQueue...", v15, 2u);
    v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = v24;
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2664DE428();
  v17 = v27;
  (*(v2 + 16))(v5, v7, v27);
  v18 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v18, v5, v17);
  v20 = (v19 + ((v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;

  sub_26648A940(0, 1, sub_2664AB678, v19);

  return (*(v2 + 8))(v7, v17);
}

uint64_t sub_2664A8278(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v42 = a4;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v17 = *(a1 + 2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v18, v13);
  (*(v8 + 16))(v12, a2, v7);

  v19 = v7;
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  v22 = os_log_type_enabled(v20, v21);
  v41 = v17;
  if (v22)
  {
    v38 = v19;
    v39 = a3;
    v23 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v23 = 136315394;
    if (v17)
    {
      LOBYTE(v45) = v43;
      v24 = PlaybackCode.rawValue.getter();
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *&v45 = v24;
    *(&v45 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v26 = sub_2664E0318();
    v28 = sub_2662A320C(v26, v27, &v44);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2050;
    v29 = v40;
    sub_2664DE428();
    sub_2664DE388();
    v31 = v30;
    v32 = *(v8 + 8);
    v33 = v29;
    v34 = v38;
    v32(v33, v38);
    v32(v12, v34);
    *(v23 + 14) = v31;
    _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackLite#waitForPrepareForSetQueue completed with code: %s in %{public}f seconds", v23, 0x16u);
    v35 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);

    (*(v14 + 8))(v16, v13);
    a3 = v39;
  }

  else
  {

    (*(v8 + 8))(v12, v19);
    (*(v14 + 8))(v16, v13);
  }

  v45 = v43;
  v46 = v41;
  return a3(&v45);
}

uint64_t sub_2664A8678()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "MediaPlaybackLite#reset...", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  v12 = *(v1 + 8);
  v12(v6, v0);
  swift_beginAccess();
  if (qword_280073F90)
  {
    v13 = qword_280073F80;

    LOBYTE(v13) = sub_266457DC4(v13, &unk_2877E4AD8);

    if (v13)
    {
      v8(v4, v7, v0);
      v14 = sub_2664DFE18();
      v15 = sub_2664E06E8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_26629C000, v14, v15, "MediaPlaybackLite#reset resetting prepareForSetQueueValue", v16, 2u);
        MEMORY[0x266784AD0](v16, -1, -1);
      }

      v12(v4, v0);

      sub_2662DA108();
    }
  }

  qword_280073F80 = 0;
  qword_280073F88 = 0;
  qword_280073F90 = 0;
}

uint64_t sub_2664A896C(uint64_t a1, unint64_t a2, int a3, void (*a4)(__int128 *), uint64_t a5, double a6)
{
  v7 = v6;
  v67 = a5;
  v68 = a4;
  v69 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v60 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v60 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v70 = *(v12 + 16);
  v71 = v23;
  v70(v22, v23, v11);

  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v11;
    v28 = v7;
    v29 = v27;
    v72 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_2662A320C(a1, a2, &v72);
    *(v26 + 12) = 1026;
    *(v26 + 14) = v69 & 1;
    _os_log_impl(&dword_26629C000, v24, v25, "MediaPlaybackLite#prepareForSetQueue refId: %{public}s, ignoreCache: %{BOOL,public}d...", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v30 = v29;
    v7 = v28;
    v11 = v61;
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v31 = *(v12 + 8);
  v31(v22, v11);
  v32 = *(v7 + 120);
  v33 = v66;
  if (v32 && (*(v7 + 112) == a1 && v32 == a2 || (sub_2664E0D88() & 1) != 0))
  {
    v66 = v31;
    v34 = v65;
    v70(v65, v71, v11);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v72 = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_2662A320C(a1, a2, &v72);
      *(v37 + 12) = 1026;
      *(v37 + 14) = v69 & 1;
      _os_log_impl(&dword_26629C000, v35, v36, "MediaPlaybackLite#prepareForSetQueue already invoked with same refId: %{public}s, ignoreCache: %{BOOL,public}d...", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (v66)(v34, v11);

    v51 = 0;
    v52 = 1;
LABEL_25:
    sub_26648A940(v51, v52, v68, v67);
  }

  *(v7 + 112) = a1;
  *(v7 + 120) = a2;

  v70(v33, v71, v11);

  v39 = sub_2664DFE18();
  v40 = sub_2664E06E8();
  v41 = os_log_type_enabled(v39, v40);
  v62 = v7;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v72 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_2662A320C(a1, a2, &v72);
    *(v42 + 12) = 1026;
    v44 = v69;
    *(v42 + 14) = v69 & 1;
    _os_log_impl(&dword_26629C000, v39, v40, "MediaPlaybackLite#prepareForSetQueue updating refId: %{public}s, ignoreCache: %{BOOL,public}d...", v42, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);

    v31(v33, v11);
    if ((v44 & 1) == 0)
    {
LABEL_13:
      v45 = v64;
      v70(v64, v71, v11);
      v46 = v45;
      v47 = sub_2664DFE18();
      v48 = sub_2664E06E8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v72 = v50;
        *v49 = 136446210;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        *(v49 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v72);
        _os_log_impl(&dword_26629C000, v47, v48, "MediaPlaybackLite#prepareForSetQueue %{public}s NOT ignoring cache, computing...", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x266784AD0](v50, -1, -1);
        MEMORY[0x266784AD0](v49, -1, -1);
      }

      v31(v46, v11);

      v51 = *&a6;
      v52 = 0;
      goto LABEL_25;
    }
  }

  else
  {

    v31(v33, v11);
    if ((v69 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v53 = v63;
  v70(v63, v71, v11);
  v54 = v53;
  v55 = sub_2664DFE18();
  v56 = sub_2664E06E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v72 = v58;
    *v57 = 136446210;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v57 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v72);
    _os_log_impl(&dword_26629C000, v55, v56, "MediaPlaybackLite#prepareForSetQueue %{public}s ignoring cache and computing next", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);
  }

  v31(v54, v11);

  sub_2664889E0(v68, v67);
}

uint64_t sub_2664A91B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v62 = a4;
  v64 = a3;
  *&v73 = a2;
  v65 = a1;
  v5 = sub_2664E0198();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E0188();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v59 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v19 = *(v12 + 16);
    v19(v17, v18, v11);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackLite#setRepeatMode...", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    v23 = *(v12 + 8);
    result = v23(v17, v11);
    v25 = v73;
    if (!v73)
    {
      break;
    }

    if (!*MEMORY[0x277D27D08])
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v26 = *MEMORY[0x277D27D08];
    v27 = v65;
    v28 = sub_2664E02A8();
    v77 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&v76 = v28;
    sub_266318804(&v76, v75);
    v29 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v29;
    sub_26634F694(v75, v26, isUniquelyReferenced_nonNull_native);

    v60 = v74;

    v31 = sub_26648BD18(v27, v25);
    v33 = v32;
    v15 = sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v34 = v66;
    v12 = v69;
    sub_2664E0178();
    sub_2663C50C4(v31, v33);
    sub_2664AB368(v31, v33, v34, v35);
    sub_266348774(v31, v33);
    v36 = v70;
    sub_2664E0168();
    sub_266348774(v31, v33);
    (*(v68 + 8))(v34, v12);
    (*(v71 + 16))(v67, v36, v72);
    sub_2664B67D0(&qword_280073358, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_2664E0438();
    v37 = *(&v76 + 1);
    v17 = v76;
    v38 = *(v76 + 16);
    v39 = MEMORY[0x277D84F90];
    if (*(&v76 + 1) == v38)
    {
LABEL_7:
      (*(v71 + 8))(v70, v72);

      *&v76 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
      sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
      v40 = sub_2664E0288();
      v42 = v41;

      v43 = *MEMORY[0x277D27DF0];
      if (*MEMORY[0x277D27DF0])
      {
        v77 = MEMORY[0x277D837D0];
        *&v76 = v40;
        *(&v76 + 1) = v42;
        sub_266318804(&v76, v75);
        v44 = v43;
        v45 = v60;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v45;
        sub_26634F694(v75, v44, v46);

        v47 = v74;
        __swift_project_boxed_opaque_existential_1((v61 + 56), *(v61 + 80));
        v48 = swift_allocObject();
        *(v48 + 16) = v62;
        *(v48 + 24) = v63;

        sub_266493FF8(v64, v47, sub_2664AB718, v48);
      }

      goto LABEL_25;
    }

    v11 = v76 + 32;
    v73 = xmmword_2664E36F0;
    v52 = *(&v76 + 1);
    while ((v37 & 0x8000000000000000) == 0)
    {
      if (v52 >= *(v17 + 2))
      {
        goto LABEL_22;
      }

      v53 = *(v11 + v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v54 = swift_allocObject();
      *(v54 + 16) = v73;
      *(v54 + 56) = MEMORY[0x277D84B78];
      *(v54 + 64) = MEMORY[0x277D84BC0];
      *(v54 + 32) = v53;
      v12 = sub_2664E02E8();
      v15 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2663846F4(0, *(v39 + 2) + 1, 1, v39);
      }

      v57 = *(v39 + 2);
      v56 = *(v39 + 3);
      if (v57 >= v56 >> 1)
      {
        v39 = sub_2663846F4((v56 > 1), v57 + 1, 1, v39);
      }

      ++v52;
      *(v39 + 2) = v57 + 1;
      v58 = &v39[16 * v57];
      *(v58 + 4) = v12;
      *(v58 + 5) = v15;
      if (v38 == v52)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v19(v15, v18, v11);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06D8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "MediaPlaybackLite#setRepeatMode received unexpected nil refId; can't set repeat mode", v51, 2u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  return v23(v15, v11);
}

uint64_t sub_2664A99F8(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v11, v4);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v5;
    v15 = v14;
    v26 = swift_slowAlloc();
    v28 = v26;
    v29 = v9;
    *v15 = 136446210;
    v30 = v8;
    v31 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    v16 = sub_2664E0318();
    v24 = v13;
    v18 = sub_2662A320C(v16, v17, &v28);
    v25 = v4;
    v19 = a2;
    v20 = v18;

    *(v15 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_26629C000, v12, v24, "MediaPlaybackLite#setRepeatMode repeat mode set with success?: %{public}s", v15, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v27 + 8))(v7, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v29 = v9;
  v30 = v8;
  v31 = v10;
  return a2(&v29);
}

uint64_t sub_2664A9CC8(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_2664DFE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = "mediaPlaybackProviderInterruptIfCarPlay";
  *(v12 + 24) = 39;
  *(v12 + 32) = 2;
  v13 = v12 + v10;
  v14 = v2;
  (*(v3 + 32))(v13, v6, v2);
  v15 = (v12 + v11);
  v16 = v26;
  *v15 = v25;
  v15[1] = v16;

  v17 = sub_2664E0848();
  sub_2664DFDC8(v17, &dword_26629C000, v9, "mediaPlaybackProviderInterruptIfCarPlay", 39, 2, v8, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2664B7424;
  *(v18 + 24) = v12;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2662D31EC;
  *(v19 + 24) = v18;
  v20 = qword_280F90B20;

  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v27);
  v21 = v28;
  v22 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2662D31F0;
  *(v23 + 24) = v19;
  (*(v22 + 8))(sub_2664B706C, v23, v21, v22);

  (*(v3 + 8))(v8, v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_2664AA038(char a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446466;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, &v14);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_26629C000, v9, v10, "MediaPlaybackLite#prepareForAudioHandoff %{public}s complete. Result: %{BOOL,public}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1 & 1);
}

void *MediaPlaybackLite.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t MediaPlaybackLite.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2664AA3A8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2664AA3D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_2664AA408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_2662A01E8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t *sub_2664AA458@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2664AEC5C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2664DE148();
      swift_allocObject();
      v8 = sub_2664DE0F8();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_2664DE2B8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2664AA520(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_266348774(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      result = a1(&v19, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        result = v19;
      }

      v10 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v10;
      return result;
    }

    v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_266348774(v7, v6);
    *v4 = xmmword_2664EF560;
    sub_266348774(0, 0xC000000000000000);
    v14 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v14 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2664DE108() && __OFSUB__(v7, sub_2664DE138()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2664DE148();
      swift_allocObject();
      v15 = sub_2664DE0E8();

      v13 = v15;
    }

    if (v14 >= v7)
    {

      v17 = sub_2664AA9C4(v7, v7 >> 32, a1, v16);

      v12 = v13 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v12;
        return v17;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_266348774(v7, v6);
    v19 = v7;
    v20 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2664EF560;
    sub_266348774(0, 0xC000000000000000);
    sub_2664DE278();
    result = sub_2664AA9C4(*(v19 + 2), *(v19 + 3), a1, v11);
    v12 = v20 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v19;
      v4[1] = v12;
      return result;
    }

    *v4 = v19;
LABEL_21:
    v4[1] = v12;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v3)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_2664AA8C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2664AEC5C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2664AEDB4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2664AEE30(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2664AA958(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2664AA9C4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_2664DE108();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_2664DE138();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_2664DE128();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

_OWORD *sub_2664AAA78@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_26634DAA8(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_266451660(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_26634DAA8(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for CFString(0);
    v11 = sub_2664E0DD8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_266454598();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_266453714(v11, a2, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    result = a2;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_266318804((v10[7] + 32 * v11), a3);
  result = sub_266318804(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

void sub_2664AABB0(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_266450328(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_2662A3E98(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_2664E0DD8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v13;
    sub_266453AC4();
    v13 = v21;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2664535F8(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_266318804((v12[7] + 32 * v13), a4);
  sub_266318804(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
}

uint64_t sub_2664AACFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_2664AAD4C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_2664AAD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_2662A01E8(*(v3 + 56) + 32 * v13, v18);
    *&v20 = v14;
    sub_266318804(v18, (&v20 + 8));
    v15 = v22;
    result = v14;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v15;
      v17(v18);
      return sub_2662A9238(v18, &qword_280074000, &unk_2664EF718);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2664AAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for FeatureFlagProvider;
  v23 = &protocol witness table for FeatureFlagProvider;
  *&v21 = a1;
  BYTE12(v21) = BYTE4(a2);
  DWORD2(v21) = a2;
  v19 = type metadata accessor for SiriKitTaskLoggingProvider();
  v20 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v18 = a3;
  *(a4 + 16) = [objc_allocWithZone(type metadata accessor for AppleMediaServicesRequestHandler()) init];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "AppleMediaServicesProvider#init...", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2662A8618(&v21, a4 + 24);
  sub_2662A8618(&v18, a4 + 64);
  return a4;
}

uint64_t sub_2664AB120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = type metadata accessor for AppleMediaServicesProvider();
  v9[4] = &protocol witness table for AppleMediaServicesProvider;
  v9[0] = a2;
  v8[3] = type metadata accessor for MediaPlaybackProvider();
  v8[4] = &off_2877F3740;
  v8[0] = a1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = MEMORY[0x277D84F98];
  sub_2662A5550(v8, a3 + 56);
  sub_2662A5550(v9, a3 + 16);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073640, &qword_2664EB7E0);
  swift_allocObject();
  *(a3 + 136) = sub_2662ECF60(0xD000000000000019, 0x80000002664FBDD0, sub_2663F3108, 0);
  swift_allocObject();

  v6 = sub_2662ECF60(0xD000000000000032, 0x80000002664FBDF0, sub_2664B71E0, a3);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  *(a3 + 136) = v6;

  return a3;
}

uint64_t sub_2664AB29C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v12;

  sub_266489BC4(sub_2664AEADC, v13);
}

uint64_t sub_2664AB368(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_2664E0198();
      sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2664E0158();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2664AB548(v6, v7, a4);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_2664AB548(v6, v7, a4);
  }

  sub_2664E0198();
  sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_2664E0158();
}

uint64_t sub_2664AB548(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = sub_2664DE108();
  if (!result || (result = sub_2664DE138(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2664DE128();
      sub_2664E0198();
      sub_2664B67D0(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2664E0158();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2664AB628@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_2664E0B38();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2664AB678(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2664A8278(a1, v1 + v4, v6, v7);
}

uint64_t sub_2664AB720(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v13, v6);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2662A320C(a2, a3, &v23);
      _os_log_impl(&dword_26629C000, v14, v15, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow createTailSpinFile generated: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#generateTailSpinIfPolicyAndErrorAllow failed to create tailspin file", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  if (qword_280071CB0 != -1)
  {
    swift_once();
  }

  return sub_2664E0888();
}

uint64_t sub_2664ABA8C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2664ABAE0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2664ABB34(uint64_t a1, uint64_t a2)
{
  v114 = sub_2664E0038();
  v132 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v123 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2664E00B8();
  v131 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2664DE438();
  v119 = *(v121 - 8);
  v6 = MEMORY[0x28223BE20](v121);
  v118 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v7;
  MEMORY[0x28223BE20](v6);
  v130 = &v97 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v97 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v22 = *(v10 + 16);
  v127 = v10 + 16;
  v128 = v21;
  v126 = v22;
  v22(v20, v21, v9);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  v25 = os_log_type_enabled(v23, v24);
  v125 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "MediaPlaybackLite#prepareForAudioHandoff requested...", v26, 2u);
    v27 = v26;
    v9 = v125;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v10 + 8);
  v116 = v10 + 8;
  v129 = v28;
  v28(v20, v9);
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_280F90B40;
  v30 = unk_280F90B48;
  v31 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v34);
  v35 = (*(v30 + 24))(v29, v30);
  (*(v32 + 8))(v34, v29);
  if (v35 == 2 || (v35 & 1) == 0)
  {
    v36 = 100;
  }

  else
  {
    v36 = 500;
  }

  v37 = v125;
  v126(v18, v128, v125);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134349056;
    *(v40 + 4) = v36;
    _os_log_impl(&dword_26629C000, v38, v39, "MediaPlaybackLite#prepareForAudioHandoff using timeout: %{public}ldms", v40, 0xCu);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v129(v18, v37);
  if (qword_280071CE0 != -1)
  {
    swift_once();
  }

  v111 = qword_280073FB8;
  if (qword_280071CE8 != -1)
  {
    swift_once();
  }

  v108 = qword_280073FC0;
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = a2;
  v110 = v41;
  v126(v15, v128, v37);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v37;
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v44 = 136446466;
    *(v44 + 4) = sub_2662A320C(0xD000000000000028, 0x80000002664FBCB0, &aBlock);
    *(v44 + 12) = 2050;
    *(v44 + 14) = v36;
    _os_log_impl(&dword_26629C000, v42, v43, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);

    v47 = v15;
    v48 = v45;
  }

  else
  {

    v47 = v15;
    v48 = v37;
  }

  v129(v47, v48);
  v124 = 0x80000002664FBCB0;
  v112 = v36;
  v49 = v130;
  sub_2664DE428();
  v50 = dispatch_group_create();
  v115 = swift_allocObject();
  *(v115 + 16) = 1;
  aBlock = 0;
  v135 = 0xE000000000000000;
  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v135 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000028, 0x80000002664FBCB0);
  v51 = aBlock;
  v52 = v135;
  type metadata accessor for AtomicOnce();
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = v51;
  *(v53 + 40) = v52;
  v54 = qword_280F91468;

  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_280F91470;
  v137 = type metadata accessor for SiriKitTaskLoggingProvider();
  v138 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v55;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v53 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v51, v52, 1, &aBlock);
  dispatch_group_enter(v50);
  v56 = v119;
  v57 = *(v119 + 16);
  v58 = v50;
  v59 = v53;
  v60 = v118;
  v61 = v121;
  v107 = v119 + 16;
  v106 = v57;
  v57(v118, v49, v121);
  v62 = *(v56 + 80);
  v105 = ~v62;
  v63 = (v62 + 56) & ~v62;
  v64 = (v117 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = v62;
  v65 = swift_allocObject();
  v65[2] = sub_2664A9CC8;
  v65[3] = 0;
  v65[4] = v59;
  v65[5] = 0xD000000000000028;
  v65[6] = v124;
  v66 = *(v56 + 32);
  v104 = v56 + 32;
  v103 = v66;
  v66(v65 + v63, v60, v61);
  *(v65 + v64) = v115;
  *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v138 = sub_2664B6EF4;
  v139 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_2662A3F90;
  v137 = &block_descriptor_376;
  v67 = _Block_copy(&aBlock);
  v109 = v59;

  v101 = v58;
  v68 = v120;
  sub_2664E0068();
  v133 = MEMORY[0x277D84F90];
  v69 = sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v71 = sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v72 = v123;
  v100 = v70;
  v99 = v71;
  v73 = v114;
  v102 = v69;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v68, v72, v67);
  _Block_release(v67);
  v74 = *(v132 + 8);
  v132 += 8;
  v108 = v74;
  v74(v72, v73);
  v75 = *(v131 + 8);
  v131 += 8;
  v98 = v75;
  v75(v68, v122);

  v76 = v113;
  v77 = v125;
  v126(v113, v128, v125);
  v78 = sub_2664DFE18();
  v79 = sub_2664E06E8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v80 = 136446210;
    *(v80 + 4) = sub_2662A320C(0xD000000000000028, v124, &aBlock);
    _os_log_impl(&dword_26629C000, v78, v79, "Completions#timeout waiting for completion: %{public}s...", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x266784AD0](v81, -1, -1);
    MEMORY[0x266784AD0](v80, -1, -1);
  }

  v129(v76, v77);
  v82 = v118;
  v83 = v121;
  v106(v118, v130, v121);
  v84 = (v97 + 49) & v105;
  v85 = v84 + v117;
  v86 = (((v84 + v117) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v101;
  v89 = v112;
  *(v87 + 16) = v101;
  *(v87 + 24) = v89;
  *(v87 + 32) = 0xD000000000000028;
  *(v87 + 40) = v124;
  *(v87 + 48) = 1;
  v103(v87 + v84, v82, v83);
  *(v87 + v85) = 0;
  v90 = v87 + (v85 & 0xFFFFFFFFFFFFFFF8);
  v91 = v110;
  *(v90 + 8) = sub_2662D31E8;
  *(v90 + 16) = v91;
  *(v87 + v86) = v115;
  v138 = sub_2664B6FC4;
  v139 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_2662A3F90;
  v137 = &block_descriptor_382;
  v92 = _Block_copy(&aBlock);

  v93 = v88;

  v94 = v120;
  sub_2664E0068();
  v133 = MEMORY[0x277D84F90];
  v95 = v123;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v94, v95, v92);
  _Block_release(v92);

  v108(v95, v73);
  v98(v94, v122);
  (*(v119 + 8))(v130, v83);
}