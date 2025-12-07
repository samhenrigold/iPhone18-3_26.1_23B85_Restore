uint64_t sub_272423B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = sub_272434AB0();
  v4[20] = sub_272434AA0();
  v6 = sub_272434A90();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_272423BFC, v6, v5);
}

uint64_t sub_272423BFC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 201;
    v0[3] = sub_272423D40;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C8, &qword_272437000);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_272424050;
    v0[13] = &block_descriptor_122;
    v0[14] = v3;
    [v2 presentEnablementAndDataSharingPromptIfNeeded_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_272423D40()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_272423E48, v2, v1);
}

uint64_t sub_272423E48()
{
  v1 = *(v0 + 184);
  *(v0 + 200) = *(v0 + 201);

  return MEMORY[0x2822009F8](sub_272423EB8, 0, 0);
}

uint64_t sub_272423EB8()
{
  *(v0 + 192) = sub_272434AA0();
  v2 = sub_272434A90();

  return MEMORY[0x2822009F8](sub_272423F44, v2, v1);
}

uint64_t sub_272423F44()
{
  v1 = *(v0 + 144);

  sub_2724240AC((v0 + 200), v1);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_272423FF0, v2, v3);
}

uint64_t sub_272423FF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272424050(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

void sub_2724240AC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  if (v3 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678, &qword_272436DF8);
    sub_272434730();
    sub_2724170EC();
    if (v2)
    {
    }
  }

  else
  {
    v4 = sub_272433BA0();
    v5 = sub_272434B30();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_272406000, v4, v5, "VCUIAudioButton, dictationState -> .idle", v6, 2u);
      MEMORY[0x2743C99D0](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
    sub_272434740();
  }
}

uint64_t sub_272424224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C0, &qword_272436FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_27240A0F0(a3, v25 - v10, &qword_2808967C0, &qword_272436FD0);
  v12 = sub_272434AD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27240A158(v11, &qword_2808967C0, &qword_272436FD0);
  }

  else
  {
    sub_272434AC0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272434A90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_272434970() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_27240A158(a3, &qword_2808967C0, &qword_272436FD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27240A158(a3, &qword_2808967C0, &qword_272436FD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_272424524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_272429BD4(a2, a3, a4);
  result = sub_2724340B0();
  *a1 = v6;
  return result;
}

uint64_t sub_2724245C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_272433B30();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_272434900();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  sub_2724348F0();
  v12 = *(v6 + 16);
  v96 = v6 + 16;
  v95 = v12;
  v12(v9, v11, v5);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v93 = objc_opt_self();
  v94 = ObjCClassFromMetadata;
  v14 = [v93 bundleForClass_];
  sub_272433B20();
  v15 = sub_272434950();
  v17 = v16;
  v18 = *(v6 + 8);
  v106 = v5;
  v105 = v6 + 8;
  v92 = v18;
  v19 = (v18)(v11, v5);
  v117 = v15;
  v118 = v17;
  v91 = sub_27240A1B8(v19, v20, v21);
  v89 = sub_2724344C0();
  v88 = v22;
  v86 = v23;
  v90 = v24;
  KeyPath = swift_getKeyPath();
  v83 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v25 = (a1 + *(v83 + 32));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v117) = *v25;
  v118 = v27;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  v84 = a1;
  v85 = a2;
  if (v111 == 3)
  {

    v28 = 1.0;
  }

  else
  {
    v29 = sub_272434CF0();

    v28 = 1.0;
    if ((v29 & 1) == 0)
    {
      LOBYTE(v117) = v26;
      v118 = v27;
      sub_272434730();
      if (v111 <= 2u || v111 > 4u || v111 == 3)
      {
        v30 = sub_272434CF0();

        if (v30)
        {
          v28 = 1.0;
        }

        else
        {
          v28 = 0.0;
        }
      }

      else
      {
      }
    }
  }

  sub_2724348F0();
  v31 = v106;
  v95(v9, v11, v106);
  v32 = [v93 bundleForClass_];
  sub_272433B20();
  v33 = sub_272434950();
  v35 = v34;
  v92(v11, v31);
  v117 = v33;
  v118 = v35;
  v102 = sub_2724344C0();
  v101 = v36;
  LOBYTE(v33) = v37;
  v104 = v38;
  v100 = swift_getKeyPath();
  v103 = sub_272434470();
  v99 = swift_getKeyPath();
  v97 = v33 & 1;
  LOBYTE(v117) = v33 & 1;
  *(&v98 + 1) = sub_2724346D0();
  *&v98 = swift_getKeyPath();
  v39 = *v25;
  v40 = *(v25 + 1);
  LOBYTE(v117) = *v25;
  v118 = v40;
  sub_272434730();
  if (v111 <= 2u && !v111)
  {

    v42 = 1.0;
    goto LABEL_25;
  }

  v41 = sub_272434CF0();

  v42 = 1.0;
  if (v41)
  {
    goto LABEL_25;
  }

  LOBYTE(v117) = v39;
  v118 = v40;
  sub_272434730();
  if (v111 == 1)
  {
    goto LABEL_17;
  }

  v43 = sub_272434CF0();

  if (v43)
  {
    goto LABEL_25;
  }

  LOBYTE(v117) = v39;
  v118 = v40;
  sub_272434730();
  if (v111 > 4u && v111 != 5)
  {
LABEL_17:

    goto LABEL_25;
  }

  v44 = sub_272434CF0();

  if (v44)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

LABEL_25:
  sub_2724348F0();
  v45 = v106;
  v95(v9, v11, v106);
  v46 = [v93 bundleForClass_];
  sub_272433B20();
  v47 = sub_272434950();
  v49 = v48;
  v92(v11, v45);
  v117 = v47;
  v118 = v49;
  v50 = sub_2724344C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = swift_getKeyPath();
  v58 = *v25;
  v59 = *(v25 + 1);
  LOBYTE(v117) = v58;
  v118 = v59;
  sub_272434730();
  v106 = v50;
  v60 = v56;
  if (v111 == 2)
  {
    v61 = v85;
  }

  else
  {
    v61 = v85;
    v62 = sub_272434CF0();

    if ((v62 & 1) == 0)
    {
      LOBYTE(v117) = v58;
      v118 = v59;
      sub_272434730();
      if (v111 == 5)
      {
      }

      else
      {
        v63 = sub_272434CF0();

        if ((v63 & 1) == 0)
        {
LABEL_32:
          v64 = 0.0;
          goto LABEL_33;
        }
      }
    }
  }

  v64 = 1.0;
  if ((*(v84 + *(v83 + 76)) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v65 = v86 & 1;
  v110 = v86 & 1;
  v109 = v86 & 1;
  *&v111 = v102;
  *(&v111 + 1) = v101;
  LOBYTE(v112) = v97;
  *(&v112 + 1) = v130[0];
  DWORD1(v112) = *(v130 + 3);
  *(&v112 + 1) = v104;
  *&v113 = v100;
  BYTE8(v113) = 1;
  HIDWORD(v113) = *&v129[3];
  *(&v113 + 9) = *v129;
  *&v114 = v99;
  *(&v114 + 1) = v103;
  v115 = v98;
  v116 = v42;
  v66 = v54 & 1;
  v108 = v54 & 1;
  v67 = v86 & 1;
  v68 = v89;
  v69 = v61;
  *v61 = v89;
  v70 = v88;
  v69[1] = v88;
  *(v69 + 16) = v67;
  v71 = KeyPath;
  v69[3] = v90;
  v69[4] = v71;
  *(v69 + 40) = 1;
  *(v69 + 6) = v28;
  v72 = v113;
  v73 = v114;
  v74 = v116;
  *(v69 + 15) = v115;
  *(v69 + 13) = v73;
  *(v69 + 11) = v72;
  v75 = v111;
  *(v69 + 9) = v112;
  *(v69 + 7) = v75;
  *(v69 + 17) = v74;
  v76 = v106;
  v69[18] = v106;
  v69[19] = v52;
  *(v69 + 160) = v66;
  v69[21] = v60;
  v69[22] = v57;
  *(v69 + 184) = 1;
  *(v69 + 24) = v64;
  sub_27240A20C(v68, v70, v65);

  sub_27240A0F0(&v111, &v117, &qword_2808967B0, &qword_272436FC8);
  sub_27240A20C(v76, v52, v66);

  sub_27240A21C(v76, v52, v66, v77, v78);

  v117 = v102;
  v118 = v101;
  v119 = v97;
  *v120 = v130[0];
  *&v120[3] = *(v130 + 3);
  v121 = v104;
  v122 = v100;
  v123 = 1;
  *v124 = *v129;
  *&v124[3] = *&v129[3];
  v125 = v99;
  v126 = v103;
  v127 = v98;
  v128 = v42;
  sub_27240A158(&v117, &qword_2808967B0, &qword_272436FC8);
  sub_27240A21C(v68, v70, v110, v79, v80);
}

uint64_t sub_27242567C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v89 = sub_2724343A0();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v83 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = v5;
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896730, &qword_272436ED8);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896738, &qword_272436EE0);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v76 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896740, &qword_272436EE8);
  MEMORY[0x28223BE20](v90);
  v97 = &v76 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896748, &qword_272436EF0);
  v11 = MEMORY[0x28223BE20](v96);
  v100 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896750, &qword_272436EF8);
  v80 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896758, &qword_272436F00);
  v81 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896760, &qword_272436F08);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v94 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  v30 = a1;
  v31 = *(a1 + *(v4 + 20) + 8);
  swift_beginAccess();
  v32 = *(v31 + 24);
  v99 = v4;
  if (v32)
  {
    v33 = 1;
    v34 = v101;
    v35 = v83;
    v36 = v81;
    goto LABEL_24;
  }

  v77 = v22;
  v78 = v16;
  v79 = v6;
  v76 = v18;
  sub_272426578(v18);
  v37 = v30 + *(v4 + 32);
  v38 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v102 <= 2u)
  {
    v39 = v24;
    if (!v102)
    {

      v41 = 1.0;
      goto LABEL_22;
    }
  }

  else
  {
    v39 = v24;
  }

  v40 = sub_272434CF0();

  v41 = 1.0;
  if (v40)
  {
    goto LABEL_22;
  }

  v42 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v42;
  sub_272434730();
  if (v102 > 4u && v102 != 5)
  {

    goto LABEL_22;
  }

  v43 = sub_272434CF0();

  if (v43)
  {
LABEL_22:
    v35 = v83;
    v47 = v78;
    v48 = v80;
    v49 = v76;
    v36 = v81;
    v45 = v77;
    goto LABEL_23;
  }

  v44 = *(v37 + 8);
  LOBYTE(v104) = *v37;
  *(&v104 + 1) = v44;
  sub_272434730();
  if (v102 > 2u || !v102)
  {
    v35 = v83;
    v36 = v81;
    v45 = v77;
    goto LABEL_14;
  }

  v35 = v83;
  v36 = v81;
  v45 = v77;
  if (v102 != 1)
  {
LABEL_14:
    v46 = sub_272434CF0();

    if (v46)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }

    goto LABEL_17;
  }

LABEL_17:
  v47 = v78;
  v48 = v80;
  v49 = v76;
LABEL_23:
  (*(v48 + 32))(v45, v49, v47);
  *(v45 + *(v19 + 36)) = v41;
  sub_27242A258(v45, v39, &qword_280896758, &qword_272436F00);
  sub_27242A258(v39, v29, &qword_280896758, &qword_272436F00);
  v33 = 0;
  v34 = v101;
  v6 = v79;
LABEL_24:
  (*(v36 + 56))(v29, v33, 1, v19);
  sub_2724276E8(v30, v6);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  sub_272427750(v6, v51 + v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896768, &qword_272436F10);
  sub_272429A30();
  v52 = v82;
  sub_272434780();
  v53 = v87;
  sub_272434390();
  sub_27240BFB4(&qword_280896788, &qword_280896730, &qword_272436ED8, MEMORY[0x277CDF028]);
  sub_27242AA74(&qword_280896790, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v54 = v91;
  v55 = v86;
  v56 = v89;
  sub_272434500();
  (*(v88 + 8))(v53, v56);
  (*(v85 + 8))(v52, v55);
  v57 = v99;
  v58 = v30 + *(v99 + 32);
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v104) = v59;
  *(&v104 + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v102 <= 2u)
  {
    v61 = v97;
  }

  else
  {
    v61 = v97;
    if (v102 == 5)
    {

      v62 = 1.0;
      goto LABEL_32;
    }
  }

  v63 = sub_272434CF0();

  if (v63)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

LABEL_32:
  (*(v92 + 32))(v61, v54, v93);
  *(v61 + *(v90 + 36)) = v62;
  if ((*(v30 + *(v57 + 76)) & 1) == 0)
  {
    v64 = v30 + *(v57 + 40);
    v65 = *(v64 + 16);
    v104 = *v64;
    v105 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
    sub_272434730();
    if (!v103)
    {
      v66 = 1;
      goto LABEL_36;
    }
  }

  v66 = 0;
LABEL_36:
  KeyPath = swift_getKeyPath();
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v69 = v95;
  sub_27242A258(v61, v95, &qword_280896740, &qword_272436EE8);
  v70 = (v69 + *(v96 + 36));
  *v70 = KeyPath;
  v70[1] = sub_272429B00;
  v70[2] = v68;
  v71 = v98;
  sub_27242A258(v69, v98, &qword_280896748, &qword_272436EF0);
  v72 = v94;
  sub_27240A0F0(v29, v94, &qword_280896760, &qword_272436F08);
  v73 = v100;
  sub_27240A0F0(v71, v100, &qword_280896748, &qword_272436EF0);
  sub_27240A0F0(v72, v34, &qword_280896760, &qword_272436F08);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896798, &qword_272436F50);
  sub_27240A0F0(v73, v34 + *(v74 + 48), &qword_280896748, &qword_272436EF0);
  sub_27240A158(v71, &qword_280896748, &qword_272436EF0);
  sub_27240A158(v29, &qword_280896760, &qword_272436F08);
  sub_27240A158(v73, &qword_280896748, &qword_272436EF0);
  return sub_27240A158(v72, &qword_280896760, &qword_272436F08);
}

uint64_t sub_272426578@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_272433B30();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_272434900();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  sub_2724348F0();
  (*(v5 + 16))(v8, v10, v4);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v17 = sub_272434950();
  v19 = v18;
  (*(v5 + 8))(v10, v4);
  v32 = v17;
  v33 = v19;
  v20 = v28;
  sub_2724276E8(v30, v28);
  v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v22 = swift_allocObject();
  v23 = sub_272427750(v20, v22 + v21);
  sub_27240A1B8(v23, v24, v25);
  sub_2724347B0();
  sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  sub_272434610();
  return (*(v12 + 8))(v14, v11);
}

void *sub_272426940(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v73 - v7;
  v9 = *(v6 + 44);
  v76 = a1;
  v10 = (a1 + v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  *&v80 = *v10;
  *(&v80 + 1) = v12;
  v81 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0, &qword_272436F58);
  sub_272434730();
  v16 = v78;
  v15 = v79;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    sub_2724276E8(v76, v8);
    v18 = sub_272433BA0();
    v19 = sub_272434B30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v75 = v11;
      v22 = v21;
      v77 = v21;
      *v20 = 136315138;
      v23 = &v8[v2[11]];
      v24 = *v23;
      v25 = *(v23 + 2);
      v80 = v24;
      v81 = v25;
      v73[1] = v14;
      sub_272434730();
      v74 = v13;
      v26 = v12;
      v27 = v78;
      v28 = v79;
      sub_272413884(v8);
      v29 = sub_2724285FC(v27, v28, &v77);
      v12 = v26;
      v13 = v74;

      *(v20 + 4) = v29;
      _os_log_impl(&dword_272406000, v18, v19, "Phonetic vocabulary using IPA override: %s", v20, 0xCu);
      v30 = __swift_destroy_boxed_opaque_existential_0(v22);
      v31 = v22;
      v11 = v75;
      MEMORY[0x2743C99D0](v31, -1, -1, v30);
      MEMORY[0x2743C99D0](v20, -1, -1);
    }

    else
    {

      sub_272413884(v8);
    }

    v41 = *(v76 + v2[5] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420, &qword_272436F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_272436A80;
    *&v80 = v11;
    *(&v80 + 1) = v12;
    v81 = v13;
    sub_272434730();
    v43 = v79;
    *(inited + 32) = v78;
    *(inited + 40) = v43;
    sub_272414914(inited);
    swift_setDeallocating();
    v44 = inited + 32;
  }

  else
  {
    if (*(v76 + v2[19]) == 1)
    {
      sub_2724276E8(v76, v5);
      v32 = sub_272433BA0();
      v33 = sub_272434B30();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v80 = v35;
        *v34 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_272433C00();

        v36 = MEMORY[0x2743C9070](v78, MEMORY[0x277D837D0]);
        v38 = v37;

        sub_272413884(v5);
        v39 = sub_2724285FC(v36, v38, &v80);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_272406000, v32, v33, "Phonetic vocabulary using all IPAs: %s", v34, 0xCu);
        v40 = __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x2743C99D0](v35, -1, -1, v40);
        MEMORY[0x2743C99D0](v34, -1, -1);
      }

      else
      {

        sub_272413884(v5);
      }

      v70 = *(v76 + v2[5] + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_272433C00();

      sub_272414914(v80);

      v71 = (v70 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
      swift_beginAccess();
      v46 = *v71;
      v72 = *(v70 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
      v47 = *(v70 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_272433C00();

      v49 = v78;
      v50 = v72;
      goto LABEL_18;
    }

    v51 = (v76 + v2[10]);
    v52 = *(v51 + 2);
    v80 = *v51;
    v81 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
    result = sub_272434730();
    v54 = v79;
    if (!v79)
    {
      return result;
    }

    v55 = v78;

    v56 = sub_272433BA0();
    v57 = sub_272434B30();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v80 = v59;
      *v58 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420, &qword_272436F60);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_272436A80;
      *(v60 + 32) = v55;
      *(v60 + 40) = v54;

      v61 = v55;
      v62 = MEMORY[0x2743C9070](v60, MEMORY[0x277D837D0]);
      v64 = v63;

      v65 = v62;
      v55 = v61;
      v66 = sub_2724285FC(v65, v64, &v80);

      *(v58 + 4) = v66;
      _os_log_impl(&dword_272406000, v56, v57, "Phonetic vocabulary using selected IPA: %s", v58, 0xCu);
      v67 = __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x2743C99D0](v59, -1, -1, v67);
      MEMORY[0x2743C99D0](v58, -1, -1);
    }

    v41 = *(v76 + v2[5] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420, &qword_272436F60);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_272436A80;
    *(v68 + 32) = v55;
    v69 = v68 + 32;
    *(v68 + 40) = v54;
    sub_272414914(v68);
    swift_setDeallocating();
    v44 = v69;
  }

  sub_272429B08(v44);
  v45 = (v41 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v46 = *v45;
  v48 = *(v41 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  v47 = *(v41 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C00();

  v49 = v78;
  v50 = v48;
LABEL_18:
  v46(v50, v47, v49);
}

void sub_272427144(uint64_t a2@<X8>)
{
  v3 = sub_2724340D0();
  sub_2724271EC(v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v11[0];
  *&v9[48] = *(v11 + 9);
  v4 = sub_272434450();
  sub_272433CE0();
  *(a2 + 17) = *v9;
  *(a2 + 33) = *&v9[16];
  *(a2 + 49) = *&v9[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v9[48];
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = 0;
}

uint64_t sub_2724271EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  v15 = (*(v4 + 8))(v9, v3);
  v35 = v12;
  v36 = v14;
  sub_27240A1B8(v15, v16, v17);
  v18 = sub_2724344C0();
  v20 = v19;
  LOBYTE(v9) = v21;
  v22 = sub_2724344A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_27240A21C(v18, v20, v9 & 1, v29, v30);

  LOBYTE(v35) = 1;
  v38 = v26 & 1;
  v37 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v22;
  *(a1 + 24) = v24;
  *(a1 + 32) = v26 & 1;
  *(a1 + 40) = v28;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_27240A20C(v22, v24, v26 & 1);

  sub_27240A21C(v22, v24, v26 & 1, v31, v32);
}

uint64_t sub_27242749C(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2724276E8(a1, v4);
  v5 = sub_272433BA0();
  v6 = sub_272434B30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    v9 = *&v4[*(v2 + 20) + 8];

    sub_272413884(v4);
    v10 = *(v9 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    v11 = *(v9 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);

    v12 = sub_2724285FC(v10, v11, v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_272406000, v5, v6, "Phonetic vocabulary skipping recording for word %s", v7, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2743C99D0](v8, -1, -1, v13);
    MEMORY[0x2743C99D0](v7, -1, -1);
  }

  else
  {

    sub_272413884(v4);
  }

  v14 = *(a1 + *(v2 + 20) + 8);
  v15 = (v14 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v16 = *v15;
  v17 = *(v14 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  v18 = *(v14 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);

  v16(v17, v18, MEMORY[0x277D84F90]);
}

uint64_t sub_2724276E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272427750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272427A24(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_272427A98()
{
  result = qword_280896638;
  if (!qword_280896638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B0, &qword_272436CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965A8, &qword_272436CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8, &qword_2724361A0);
    v1 = sub_27240BFB4(&unk_280896610, &qword_2808965A8, &qword_272436CF0, MEMORY[0x277CE7668]);
    sub_27240A1B8(v1, v2, v3);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896638);
  }

  return result;
}

unint64_t sub_272427C24()
{
  result = qword_280896650;
  if (!qword_280896650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648, &unk_272436D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896658, &qword_272437340);
    sub_27240BFB4(&qword_280896660, &qword_280896658, &qword_272437340, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896650);
  }

  return result;
}

void sub_272427D38(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_272427DB8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

void sub_272427E34(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_272427EB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

double sub_272427F50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_272427F90(uint64_t a1)
{
  v3 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27241F714(a1, v4);
}

uint64_t sub_272428000(uint64_t a1)
{
  v3 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_272420600(a1, v4);
}

uint64_t sub_272428070(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_272428080()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_2724282C8()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_27241FAA4(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_272428344(uint64_t a1)
{
  v2 = sub_272433D50();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_272433FB0();
}

uint64_t sub_27242840C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_272428504;

  return v6(a1);
}

uint64_t sub_272428504()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2724285FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2724286C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2724297A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2724286C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2724287D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_272434CB0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2724287D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_272428820(a1, a2);
  sub_272428950(&unk_2881A2480);
  return v3;
}

void *sub_272428820(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_272428A3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_272434CB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2724349F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_272428A3C(v10, 0);
        result = sub_272434C60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_272428950(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v13 = v4 + v2;
  }

  else
  {
    v13 = v4;
  }

  result = sub_272428AB0(result, v13, 1, v3, v7, v8);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_272428A3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A8, &qword_272436E18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_272428AB0(char *result, int64_t a2, char a3, char *a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A8, &qword_272436E18);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_272428BA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968B0, &qword_2724370C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896858, &qword_2724370A0);
  sub_27240BFB4(&qword_2808968B8, &qword_2808968B0, &qword_2724370C8, MEMORY[0x277D83980]);
  sub_27242A41C();
  return sub_272434830();
}

void sub_272428CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v4 = a3;
  v39 = *(a3 + 16);
  if (v39 >= v3)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896950, &qword_272437138);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 24);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v3 < 0)
  {
    goto LABEL_67;
  }

  v11 = v10 >> 1;
  v44 = v8;
  if (!v7)
  {
    v14 = v8 + 32;
    v18 = a1;
    if (a1 == a2)
    {
      goto LABEL_53;
    }

LABEL_27:
    if (a1 > a2)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v19 = 0;
    v40 = v18 - a2;
    if (v18 <= a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = v18;
    }

    v43 = v20 - v18;
    v21 = v39;
    v41 = v39 - v7;
    v22 = (v4 + 16 * v7 + 40);
    v38 = v7;
    while (v18 >= a1)
    {
      if (v43 == v19)
      {
        goto LABEL_61;
      }

      if (v41 == v19)
      {
        goto LABEL_53;
      }

      if (v7 + v19 >= v21)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v7 + v19, 1))
      {
        goto LABEL_63;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      if (v11)
      {

        v25 = __OFSUB__(v11--, 1);
        if (v25)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v26 = *(v44 + 3);
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896950, &qword_272437138);
        v29 = swift_allocObject();
        v30 = (_swift_stdlib_malloc_size(v29) - 32) / 24;
        *(v29 + 2) = v28;
        *(v29 + 3) = 2 * v30;
        v31 = v29 + 32;
        v32 = *(v44 + 3) >> 1;
        v14 = &v29[24 * v32 + 32];
        v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;
        if (*(v44 + 2))
        {
          v34 = v44 + 32;
          if (v29 != v44 || v31 >= &v34[24 * v32])
          {
            memmove(v31, v34, 24 * v32);
          }

          *(v44 + 2) = 0;
        }

        else
        {
        }

        v44 = v29;
        v7 = v38;
        v21 = v39;
        v25 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v25)
        {
          goto LABEL_64;
        }
      }

      *v14 = v18 + v19;
      *(v14 + 1) = v23;
      *(v14 + 2) = v24;
      v14 += 24;
      ++v19;
      v22 += 2;
      if (!(v40 + v19))
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a1 > a2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = 0;
  v11 -= v7;
  v42 = v4;
  v13 = (v4 + 40);
  v14 = v8 + 56;
  v15 = 1;
  do
  {
    if (a1 - a2 + v15 == 1)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v15 - v39 == 1)
    {
      goto LABEL_58;
    }

    if (v12)
    {
      goto LABEL_59;
    }

    v17 = *(v13 - 1);
    v16 = *v13;
    *(v14 - 3) = a1 + v15 - 1;
    *(v14 - 2) = v17;
    *(v14 - 1) = v16;
    if (v7 == v15)
    {
      goto LABEL_24;
    }

    v12 = __OFADD__(v15, 1);

    ++v15;
    v13 += 2;
    v14 += 24;
  }

  while (a1 + v15 - 1 >= a1);
  __break(1u);
LABEL_24:

  v18 = a1 + v15;
  v4 = v42;
  if (a1 + v15 != a2)
  {
    goto LABEL_27;
  }

LABEL_53:
  v35 = *(v44 + 3);
  if (v35 < 2)
  {
    return;
  }

  v36 = v35 >> 1;
  v25 = __OFSUB__(v36, v11);
  v37 = v36 - v11;
  if (v25)
  {
LABEL_70:
    __break(1u);
    return;
  }

  *(v44 + 2) = v37;
}

uint64_t sub_272429094(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2724349B0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void sub_272429130(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v5 = *&v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (!a1)
  {
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v26 = a1;
    v27 = v2;
    osloga = sub_272433BA0();
    v28 = sub_272434B60();

    if (os_log_type_enabled(osloga, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v2;
      v31 = a1;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59[0] = v33;
      *v29 = 136315394;
      v60 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
      v34 = sub_272434BD0();
      v36 = sub_2724285FC(v34, v35, v59);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2112;
      v37 = *&v30[v4];
      *(v29 + 14) = v37;
      *v32 = v37;
      v38 = v37;
      _os_log_impl(&dword_272406000, osloga, v28, "[Guard] didRecognizeTranscriptionObjects callback received for unexpected connection (%s. Expected: %@", v29, 0x16u);
      sub_27240A158(v32, &qword_280896978, &qword_272437160);
      MEMORY[0x2743C99D0](v32, -1, -1);
      v39 = __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2743C99D0](v33, -1, -1, v39);
      MEMORY[0x2743C99D0](v29, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v5 != a1)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a2)
  {
    goto LABEL_41;
  }

  v56 = v2;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x277D84F70];
  if (!v6)
  {
    oslog = MEMORY[0x277D84F90];
LABEL_30:
    v40 = a1;
    v41 = sub_272433BA0();
    v42 = sub_272434B30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59[0] = v44;
      *v43 = 136315394;

      v46 = MEMORY[0x2743C9070](v45, MEMORY[0x277D837D0]);
      v48 = v47;

      v49 = sub_2724285FC(v46, v48, v59);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v60 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
      v50 = sub_272434BD0();
      v52 = sub_2724285FC(v50, v51, v59);

      *(v43 + 14) = v52;
      _os_log_impl(&dword_272406000, v41, v42, "dictationConnectionDidRecognizeTranscriptionObjects %s connection: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C99D0](v44, -1, -1);
      MEMORY[0x2743C99D0](v43, -1, -1);
    }

    v53 = *&v56[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
    if (v53)
    {
      v54 = *&v56[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock + 8];

      sub_272428070(v53, v54);
      v53(oslog);
      sub_272427F50(v53, v54);
    }

    sub_272417524();

    return;
  }

  oslog = MEMORY[0x277D84F90];
  v8 = a2 + 32;
  while (1)
  {
    sub_2724297A8(v8, v59);
    sub_27242AA04(0, &qword_280896980, 0x277CEF348);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v7;
    v10 = v60;
    v11 = [v60 phonemeSuggestions];
    if (!v11)
    {
      goto LABEL_40;
    }

    v12 = v11;
    v13 = sub_272434A50();

    v14 = *(v13 + 16);
    isa = oslog[2].isa;
    v16 = (isa + v14);
    if (__OFADD__(isa, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = oslog;
    if (!isUniquelyReferenced_nonNull_native || (v21 = oslog[3].isa >> 1, v21 < v16))
    {
      if (isa <= v16)
      {
        v22 = isa + v14;
      }

      else
      {
        v22 = isa;
      }

      v20 = sub_2724150F4(isUniquelyReferenced_nonNull_native, v22, 1, oslog, v18, v19);
      v21 = *(v20 + 3) >> 1;
    }

    oslog = v20;
    if (*(v13 + 16))
    {
      if (v21 - *(v20 + 2) < v14)
      {
        goto LABEL_38;
      }

      swift_arrayInitWithCopy();

      v7 = v9;
      if (v14)
      {
        v23 = oslog[2].isa;
        v24 = __OFADD__(v23, v14);
        v25 = (v23 + v14);
        if (v24)
        {
          goto LABEL_39;
        }

        oslog[2].isa = v25;
      }
    }

    else
    {

      v7 = v9;
      if (v14)
      {
        goto LABEL_37;
      }
    }

LABEL_8:
    v8 += 32;
    if (!--v6)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t sub_272429678(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_2724297A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27242981C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_272429BD4(a2, a3, a4);
  result = sub_2724340B0();
  *a1 = v6;
  return result;
}

unint64_t sub_2724298C4()
{
  result = qword_2808966E8;
  if (!qword_2808966E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808966D8, &qword_272436E70);
    sub_272429950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808966E8);
  }

  return result;
}

unint64_t sub_272429950()
{
  result = qword_2808966F0;
  if (!qword_2808966F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808966F8, &qword_272436E80);
    sub_27240BFB4(&qword_280896700, &qword_280896708, &qword_272436E88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808966F0);
  }

  return result;
}

unint64_t sub_272429A30()
{
  result = qword_280896770;
  if (!qword_280896770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896768, &qword_272436F10);
    sub_27240BFB4(&qword_280896778, &qword_280896780, &qword_272436F18, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896770);
  }

  return result;
}

uint64_t sub_272429B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272433FE0();
  *a1 = result;
  return result;
}

unint64_t sub_272429BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2808967B8;
  if (!qword_2808967B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808967B8);
  }

  return result;
}

uint64_t sub_272429C28()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[12];
  v8 = sub_272433BC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272429E70(uint64_t a1)
{
  v4 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272429F60;

  return sub_272423B60(a1, v6, v7, v1 + v5);
}

uint64_t sub_272429F60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27242A054()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27242A08C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27242AC24;

  return sub_27242840C(a1, v4);
}

uint64_t sub_27242A144(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272429F60;

  return sub_27242840C(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27242A258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_27242A2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_272421354(a1, a2, a3, v10, a4);
}

unint64_t sub_27242A398()
{
  result = qword_280896848;
  if (!qword_280896848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896840, &qword_272437098);
    sub_27242A41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896848);
  }

  return result;
}

unint64_t sub_27242A41C()
{
  result = qword_280896850;
  if (!qword_280896850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896858, &qword_2724370A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896860, &qword_2724370A8);
    sub_27242A514();
    swift_getOpaqueTypeConformance2();
    sub_27242AA74(&qword_280896890, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896850);
  }

  return result;
}

unint64_t sub_27242A514()
{
  result = qword_280896868;
  if (!qword_280896868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896860, &qword_2724370A8);
    sub_27240BFB4(&qword_280896870, &qword_280896878, &qword_2724370B0, MEMORY[0x277CE1138]);
    sub_27240BFB4(&qword_280896880, &qword_280896888, &qword_2724370B8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896868);
  }

  return result;
}

unint64_t sub_27242A610()
{
  result = qword_2808968A0;
  if (!qword_2808968A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896578, "l>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808968A0);
  }

  return result;
}

uint64_t sub_27242A68C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_27242A6D0()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_272433D50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = v1[12];
  v9 = sub_272433BC0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

void sub_27242A920()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_272422C80(v0 + v2, v4, v5);
}

unint64_t sub_27242A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896948;
  if (!qword_280896948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896948);
  }

  return result;
}

uint64_t sub_27242AA04(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27242AA74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27242AACC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B8, &unk_272436D00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896640, &qword_272436D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808965B0, &qword_272436CF8);
  v0 = sub_272427A98();
  sub_272418CF8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648, &unk_272436D50);
  sub_272427C24();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27242AC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_27242ACA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27242AD28@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v64 = sub_272433B80();
  v1 = *(v64 - 8);
  v63 = v64 - 8;
  v65 = v1;
  v66 = v1;
  MEMORY[0x28223BE20](v64 - 8);
  v68 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A0, &qword_272436CE8);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v51 - v4;
  v5 = sub_272433B30();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_272434900();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A00, &qword_2724372F0);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v76 = &v51 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A08, &qword_2724372F8);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v51 - v14;
  sub_2724348F0();
  v15 = *(v7 + 16);
  v15(v10, v12, v6);
  v62 = v7 + 16;
  v61 = v15;
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v59 = v17;
  v60 = ObjCClassFromMetadata;
  v18 = [v17 bundleForClass_];
  sub_272433B20();
  v57 = sub_272434950();
  v56 = v19;
  v52 = *(v7 + 8);
  v52(v12, v6);
  v58 = v7 + 8;
  sub_2724348F0();
  v55 = v6;
  v15(v10, v12, v6);
  v20 = [v17 bundleForClass_];
  sub_272433B20();
  v21 = v10;
  v54 = sub_272434950();
  v53 = v22;
  v23 = v52;
  v52(v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965C0, &unk_272437300);
  v24 = v66;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_272436A70;
  sub_272433B50();
  sub_272433B70();
  sub_272433B60();
  v80[0] = v25;
  sub_27242EEA4(&qword_2808965C8, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965D0, &qword_272436D10);
  sub_27240BFB4(&qword_2808965D8, &qword_2808965D0, &qword_272436D10, MEMORY[0x277D83970]);
  v26 = v68;
  v27 = v64;
  sub_272434C50();
  sub_272434820();
  (*(v24 + 8))(v26, v27);
  v28 = v75;
  v79 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A10, &qword_272437310);
  sub_27240BFB4(&qword_280896A18, &qword_280896A10, &qword_272437310, MEMORY[0x277CE14C0]);
  sub_272433B40();
  sub_2724348F0();
  v29 = v55;
  v61(v21, v12, v55);
  v30 = [v59 bundleForClass_];
  sub_272433B20();
  v31 = sub_272434950();
  v33 = v32;
  v23(v12, v29);
  v82 = v31;
  v83 = v33;
  v81 = *(v28 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
  sub_272434750();
  v78 = v28;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  v35 = sub_27240BFB4(&qword_280896A20, &qword_280896A00, &qword_2724372F0, MEMORY[0x277CE7668]);
  v49 = sub_27240A1B8(v35, v36, v37);
  v50 = sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  v38 = v69;
  v39 = v70;
  v40 = v76;
  sub_272434630();

  (*(v71 + 8))(v40, v39);
  v41 = v75;
  v77 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A28, &qword_272437318);
  v80[0] = v39;
  v80[1] = MEMORY[0x277D837D0];
  v80[2] = v34;
  v80[3] = v35;
  v80[4] = v49;
  v80[5] = v50;
  swift_getOpaqueTypeConformance2();
  sub_27240BFB4(&qword_280896A30, &qword_280896A28, &qword_272437318, MEMORY[0x277CDDF68]);
  v42 = v74;
  v43 = v72;
  sub_272434650();
  (*(v73 + 8))(v38, v43);
  v44 = swift_allocObject();
  v45 = *(v41 + 48);
  *(v44 + 48) = *(v41 + 32);
  *(v44 + 64) = v45;
  *(v44 + 80) = *(v41 + 64);
  v46 = *(v41 + 16);
  *(v44 + 16) = *v41;
  *(v44 + 32) = v46;
  v47 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A38, &qword_272437320) + 36));
  *v47 = sub_27242F15C;
  v47[1] = v44;
  v47[2] = 0;
  v47[3] = 0;
  return sub_27242E640(v41, v80);
}

uint64_t sub_27242B814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A78, &qword_272437420);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v144 = (&v134 - v3);
  v141 = sub_2724341A0();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A80, &qword_272437428);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v134 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A88, &qword_272437430);
  v6 = MEMORY[0x28223BE20](v139);
  v143 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v134 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A90, &qword_272437438);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v174 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = &v134 - v12;
  v171 = sub_272433EE0();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v167 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_272433DB0();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A98, &unk_272437440);
  MEMORY[0x28223BE20](v15 - 8);
  v151 = &v134 - v16;
  v17 = sub_272433B30();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_272434900();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v134 - v23;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896958, &unk_272437140);
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v26 = &v134 - v25;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AA0, &qword_272437450);
  v149 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v28 = &v134 - v27;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AA8, &qword_272437458);
  v154 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v145 = &v134 - v29;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AB0, &qword_272437460);
  v157 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v150 = &v134 - v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AB8, &qword_272437468);
  v160 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v152 = &v134 - v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AC0, &qword_272437470);
  v162 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v156 = &v134 - v32;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AC8, &qword_272437478) - 8;
  MEMORY[0x28223BE20](v166);
  v158 = &v134 - v33;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AD0, &qword_272437480);
  v34 = MEMORY[0x28223BE20](v169);
  v172 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v168 = &v134 - v37;
  MEMORY[0x28223BE20](v36);
  v178 = &v134 - v38;
  sub_2724348F0();
  (*(v19 + 16))(v22, v24, v18);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v41 = sub_272434950();
  v43 = v42;
  (*(v19 + 8))(v24, v18);
  v44 = a1[1];
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  sub_27242EEA4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
  sub_272433EA0();
  swift_getKeyPath();
  sub_272433EB0();

  *&v181 = v41;
  *(&v181 + 1) = v43;
  sub_27240A1B8(v45, v46, v47);
  sub_272434880();
  v48 = sub_27240BFB4(&qword_280896AD8, &qword_280896958, &unk_272437140, MEMORY[0x277CDF1A8]);
  v49 = v146;
  MEMORY[0x2743C8BB0](1, v146, v48);
  v50 = v49;
  (*(v147 + 8))(v26, v49);
  v51 = v151;
  sub_272434370();
  v52 = sub_272434380();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  *&v182 = v50;
  *(&v182 + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v145;
  v55 = v148;
  sub_2724345F0();
  sub_27242ED84(v51);
  (*(v149 + 8))(v28, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  v151 = v44;
  sub_272433C00();

  v181 = v182;
  v56 = swift_allocObject();
  v57 = *(a1 + 3);
  *(v56 + 48) = *(a1 + 2);
  *(v56 + 64) = v57;
  *(v56 + 80) = *(a1 + 64);
  v58 = *(a1 + 1);
  *(v56 + 16) = *a1;
  *(v56 + 32) = v58;
  sub_27242E640(a1, &v182);
  *&v182 = v55;
  *(&v182 + 1) = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = MEMORY[0x277D837F8];
  v61 = v150;
  v62 = v153;
  v63 = MEMORY[0x277D837D0];
  sub_272434660();

  (*(v154 + 8))(v54, v62);
  v64 = v163;
  sub_272433DA0();
  *&v182 = v62;
  *(&v182 + 1) = v63;
  v183 = v59;
  v184 = v60;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v152;
  v67 = v155;
  sub_272434530();
  (*(v164 + 8))(v64, v165);
  (*(v157 + 8))(v61, v67);
  v68 = swift_allocObject();
  v69 = *(a1 + 3);
  *(v68 + 48) = *(a1 + 2);
  *(v68 + 64) = v69;
  *(v68 + 80) = *(a1 + 64);
  v70 = *(a1 + 1);
  *(v68 + 16) = *a1;
  *(v68 + 32) = v70;
  sub_27242E640(a1, &v182);
  v71 = v167;
  sub_272433ED0();
  *&v182 = v67;
  *(&v182 + 1) = v65;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v156;
  v74 = v159;
  sub_272434670();

  (*(v170 + 8))(v71, v171);
  (*(v160 + 8))(v66, v74);
  v182 = *(a1 + 1);
  LOBYTE(v183) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A40, &qword_272437328);
  sub_272433D00();
  *&v182 = v74;
  *(&v182 + 1) = v72;
  swift_getOpaqueTypeConformance2();
  v75 = v158;
  v76 = v161;
  sub_272434640();

  (*(v162 + 8))(v73, v76);
  LOBYTE(v76) = sub_2724343F0();
  sub_272433CE0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AE0, &qword_272437488) + 36);
  *v85 = v76;
  *(v85 + 8) = v78;
  *(v85 + 16) = v80;
  *(v85 + 24) = v82;
  *(v85 + 32) = v84;
  *(v85 + 40) = 0;
  v86 = [objc_opt_self() tertiarySystemFillColor];
  v87 = sub_272434690();
  LOBYTE(v71) = sub_2724343F0();
  v88 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AE8, &qword_272437490) + 36);
  *v88 = v87;
  *(v88 + 8) = v71;
  v89 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AF0, &qword_272437498) + 36));
  v90 = *(sub_272433F90() + 20);
  v91 = *MEMORY[0x277CE0118];
  v92 = sub_272434140();
  (*(*(v92 - 8) + 104))(&v89[v90], v91, v92);
  __asm { FMOV            V0.2D, #12.0 }

  *v89 = _Q0;
  v98 = &v89[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896AF8, &qword_2724374A0) + 36)];
  *v98 = 0;
  v98[1] = 1;
  KeyPath = swift_getKeyPath();
  v100 = v75 + *(v166 + 44);
  *v100 = KeyPath;
  *(v100 + 8) = 1;
  LOBYTE(v89) = sub_272434400();
  v101 = sub_272434430();
  sub_272434430();
  if (sub_272434430() != v89)
  {
    v101 = sub_272434430();
  }

  sub_272433CE0();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v168;
  sub_27242A258(v75, v168, &qword_280896AC8, &qword_272437478);
  v111 = v110 + *(v169 + 36);
  *v111 = v101;
  *(v111 + 8) = v103;
  *(v111 + 16) = v105;
  *(v111 + 24) = v107;
  *(v111 + 32) = v109;
  *(v111 + 40) = 0;
  sub_27242A258(v110, v178, &qword_280896AD0, &qword_272437480);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v112 = sub_2724349A0();

  if (v112 < 51)
  {
    v127 = v173;
    (*(v175 + 56))(v173, 1, 1, v176);
  }

  else
  {
    sub_272434850();
    sub_272433DE0();
    v171 = v182;
    v170 = v183;
    v113 = v185;
    v114 = v186;
    LOBYTE(v181) = 1;
    v180 = BYTE8(v182);
    v179 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966F8, &qword_272436E80);
    sub_272429950();
    v115 = v135;
    sub_272434710();
    v116 = v138;
    sub_272434190();
    sub_27240BFB4(&qword_280896B08, &qword_280896A80, &qword_272437428, MEMORY[0x277CDEFF0]);
    sub_27242EEA4(&qword_280896B10, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
    v117 = v142;
    v118 = v137;
    v119 = v141;
    sub_2724344F0();
    (*(v140 + 8))(v116, v119);
    (*(v136 + 8))(v115, v118);
    v120 = sub_272434470();
    v121 = swift_getKeyPath();
    v122 = (v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B18, &qword_272437510) + 36));
    *v122 = v121;
    v122[1] = v120;
    *(v117 + *(v139 + 36)) = sub_272434310();
    LOBYTE(v116) = v181;
    LOBYTE(v118) = v180;
    v123 = v179;
    v124 = v143;
    sub_27240A0F0(v117, v143, &qword_280896A88, &qword_272437430);
    v125 = v144;
    *v144 = 0;
    *(v125 + 8) = v116;
    *(v125 + 16) = v171;
    *(v125 + 24) = v118;
    *(v125 + 32) = v170;
    *(v125 + 40) = v123;
    *(v125 + 48) = v113;
    *(v125 + 56) = v114;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B20, &qword_272437518);
    sub_27240A0F0(v124, v125 + *(v126 + 48), &qword_280896A88, &qword_272437430);
    sub_27240A158(v117, &qword_280896A88, &qword_272437430);
    sub_27240A158(v124, &qword_280896A88, &qword_272437430);
    v127 = v173;
    sub_27242A258(v125, v173, &qword_280896A78, &qword_272437420);
    (*(v175 + 56))(v127, 0, 1, v176);
  }

  v128 = v178;
  v129 = v172;
  sub_27240A0F0(v178, v172, &qword_280896AD0, &qword_272437480);
  v130 = v174;
  sub_27240A0F0(v127, v174, &qword_280896A90, &qword_272437438);
  v131 = v177;
  sub_27240A0F0(v129, v177, &qword_280896AD0, &qword_272437480);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B00, &qword_2724374D8);
  sub_27240A0F0(v130, v131 + *(v132 + 48), &qword_280896A90, &qword_272437438);
  sub_27240A158(v127, &qword_280896A90, &qword_272437438);
  sub_27240A158(v128, &qword_280896AD0, &qword_272437480);
  sub_27240A158(v130, &qword_280896A90, &qword_272437438);
  return sub_27240A158(v129, &qword_280896AD0, &qword_272437480);
}

void sub_27242CEF4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v1 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v1 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v17 = 0;
  v18 = v1;
  while (1)
  {
    v2 = sub_2724349E0();
    if (!v3)
    {

      return;
    }

    v4 = sub_27242E894(v2, v3);
    if ((v4 & 0x100000000) != 0)
    {
      break;
    }

    v5 = v4;

    if ((v5 - 14) > 0xFFFFFFFB || (v5 - 8232) < 2 || v5 == 133)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v6 = sub_272433BF0();
      v8 = v7;

      v9 = sub_2724349E0();
      if (!v10)
      {
LABEL_17:

        *v8 = 0;
        v8[1] = 0xE000000000000000;
        v6(&v15, 0);

        return;
      }

      v11 = v9;
      v12 = v10;
      while (1)
      {
        v14 = sub_27242E894(v11, v12);
        if ((v14 & 0x100000000) != 0)
        {
          break;
        }

        if ((v14 - 14) <= 0xFFFFFFFB && (v14 - 8232) >= 2 && v14 != 133)
        {
          MEMORY[0x2743C8FD0](v11, v12);
        }

        v11 = sub_2724349E0();
        v12 = v13;
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_27242D128(uint64_t a1)
{
  v2 = sub_272433AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v7 = sub_27241532C(v24[0], v24[1]);

  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v8 = sub_272433AB0();
    sub_27240A1B8(v8, v9, v10);
    v11 = sub_272434BF0();
    v13 = v12;
    (*(v3 + 8))(v5, v2);

    v14 = (v6 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    *v14 = v11;
    v14[1] = v13;

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = sub_272433BF0();
    v17 = v16;
    v18 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_272415000(0, *(v18 + 2) + 1, 1, v18, v20, v21);
      *v17 = v18;
    }

    v23 = *(v18 + 2);
    v22 = *(v18 + 3);
    if (v23 >= v22 >> 1)
    {
      v18 = sub_272415000((v22 > 1), v23 + 1, 1, v18, v20, v21);
      *v17 = v18;
    }

    *(v18 + 2) = v23 + 1;
    v18[v23 + 32] = 1;
    v15(v24, 0);
  }

  else
  {
    *v24 = *(a1 + 40);
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
    sub_272434740();
  }
}

uint64_t sub_27242D410@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  v15 = (*(v4 + 8))(v9, v3);
  v25[1] = v12;
  v25[2] = v14;
  sub_27240A1B8(v15, v16, v17);
  v18 = sub_2724344C0();
  v20 = v19;
  LOBYTE(v9) = v21;
  v23 = v22;
  result = swift_getKeyPath();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_27242D640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2724346F0();
  *a1 = result;
  return result;
}

uint64_t sub_27242D680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B8, &qword_272436E28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26[-v3];
  v5 = sub_272433B30();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_272434900();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  sub_2724348F0();
  (*(v7 + 16))(v10, v12, v6);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v15 = sub_272434950();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  v27 = v15;
  v28 = v17;
  sub_272433CC0();
  v18 = sub_272433CD0();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = sub_27242E640(a1, v26);
  sub_27240A1B8(v22, v23, v24);
  return sub_272434790();
}

uint64_t sub_27242D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A48, &qword_272437330);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A50, &qword_272437338);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_2724342C0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896658, &qword_272437340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_2724342A0();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  sub_272433DC0();
  sub_2724342B0();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A58, &qword_272437348);
  sub_27242E688();
  sub_272433DC0();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_2724341B0();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_27242DCC4(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_27242E640(a1, v6);
  return sub_272434780();
}

double sub_27242DD7C(uint64_t a1)
{
  v1 = (*(a1 + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(0, 0, 0);

  return result;
}

uint64_t sub_27242DDF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  v15 = (*(v4 + 8))(v9, v3);
  v22[1] = v12;
  v22[2] = v14;
  sub_27240A1B8(v15, v16, v17);
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_27242E004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_27242E640(a1, v12);
  sub_272434780();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v7 = sub_27241532C(v12[0], v12[1]);

  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A58, &qword_272437348);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = sub_27242ECF8;
  v11[2] = v9;
  return result;
}

double sub_27242E184(uint64_t a1)
{
  v2 = sub_272433AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v7 = sub_272433AB0();
  sub_27240A1B8(v7, v8, v9);
  v10 = sub_272434BF0();
  v12 = v11;
  (*(v3 + 8))(v5, v2);

  v13 = (v6 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v13 = v10;
  v13[1] = v12;

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_272433BF0();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_272415000(0, *(v17 + 2) + 1, 1, v17, v19, v20);
    *v16 = v17;
  }

  v22 = *(v17 + 2);
  v21 = *(v17 + 3);
  if (v22 >= v21 >> 1)
  {
    v17 = sub_272415000((v21 > 1), v22 + 1, 1, v17, v19, v20);
    *v16 = v17;
  }

  *(v17 + 2) = v22 + 1;
  v17[v22 + 32] = 1;
  v14(&v24, 0);

  return result;
}

uint64_t sub_27242E3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  v15 = (*(v4 + 8))(v9, v3);
  v22[1] = v12;
  v22[2] = v14;
  sub_27240A1B8(v15, v16, v17);
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

unint64_t sub_27242E688()
{
  result = qword_280896A60;
  if (!qword_280896A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A58, &qword_272437348);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
    sub_27240BFB4(&qword_280896A68, &qword_280896A70, &qword_272437350, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896A60);
  }

  return result;
}

uint64_t sub_27242E77C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434000();
  *a1 = result;
  return result;
}

uint64_t sub_27242E7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434020();
  *a1 = result;
  return result;
}

uint64_t sub_27242E828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434050();
  *a1 = result & 1;
  return result;
}

unint64_t sub_27242E894(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_27242E9E4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_272434C80();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_272434CB0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_27242E9E4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_27242EA7C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_27242EAF0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_27242EA7C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_27242EC14(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27242EAF0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_272434CB0();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_27242EC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_272434A10();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743C9010](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_27242EC90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434050();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27242ED84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896A98, &unk_272437440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{

  sub_27240E700(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_27242EE50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272434000();
  *a1 = result;
  return result;
}

uint64_t sub_27242EEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27242EEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434020();
  *a1 = result;
  return result;
}

unint64_t sub_27242EF48()
{
  result = qword_280896B28;
  if (!qword_280896B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A38, &qword_272437320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A08, &qword_2724372F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A28, &qword_272437318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896A00, &qword_2724372F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8, &qword_2724361A0);
    v1 = sub_27240BFB4(&qword_280896A20, &qword_280896A00, &qword_2724372F0, MEMORY[0x277CE7668]);
    sub_27240A1B8(v1, v2, v3);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_27240BFB4(&qword_280896A30, &qword_280896A28, &qword_272437318, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B28);
  }

  return result;
}

uint64_t sub_27242F168(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_27242F1B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_27242F21C@<D0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = [a1 label];
  v5 = [v4 string];

  sub_272434930();
  v6 = sub_272434720();
  v9 = sub_27242F358(v6, v7, v8);
  sub_27242F3AC(v9, v10, v11);
  sub_272434290();
  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  return result;
}

unint64_t sub_27242F358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896B30;
  if (!qword_280896B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B30);
  }

  return result;
}

unint64_t sub_27242F3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896B38;
  if (!qword_280896B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B38);
  }

  return result;
}

uint64_t sub_27242F414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27242F460(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_27242F4B4()
{
  result = qword_280896B40;
  if (!qword_280896B40)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896B48, &qword_272437640);
    v6 = sub_27242F358(v1, v2, v3);
    sub_27242F3AC(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B40);
  }

  return result;
}

uint64_t sub_27242F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FA98(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27242F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FA98(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27242F684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27242FA98(a1, a2, a3);
  sub_272434260();
  __break(1u);
}

id sub_27242F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = [objc_opt_self() *a5];
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0, &qword_272436F58);
    sub_272434730();
    v10 = sub_272434910();

    v11 = (v9)[2](v9, v10);

    sub_272434C40();
    swift_unknownObjectRelease();
    _Block_release(v9);
    sub_27242FC24();
    swift_dynamicCast();
    return v20;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v14 = objc_opt_self();
    v15 = [v14 blackColor];
    [v13 setBackgroundColor_];

    v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0, &qword_272436F58);
    sub_272434730();
    v17 = sub_272434910();

    [v16 setText_];

    v18 = [v14 whiteColor];
    [v16 setTextColor_];

    [v16 setTextAlignment_];
    [v13 addSubview_];

    return v13;
  }
}

uint64_t sub_27242F9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FAEC(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27242FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27242FAEC(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27242FA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27242FAEC(a1, a2, a3);
  sub_272434260();
  __break(1u);
}

unint64_t sub_27242FA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896B50;
  if (!qword_280896B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B50);
  }

  return result;
}

unint64_t sub_27242FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896B58;
  if (!qword_280896B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896B58);
  }

  return result;
}

uint64_t sub_27242FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [objc_opt_self() *a5];
  if (!v5)
  {
    return 0x4034000000000000;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0, &qword_272436F58);
  sub_272434730();
  v7 = sub_2724349A0();

  v8 = v6[2](v6, v7);
  _Block_release(v6);
  return *&v8;
}

unint64_t sub_27242FC24()
{
  result = qword_280896B60;
  if (!qword_280896B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896B60);
  }

  return result;
}

void sub_27242FC9C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_27242FD1C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_27242FD90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FE04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

double sub_27242FE78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FEF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FF64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27242FFD8(uint64_t a1, __n128 a2)
{
  if (a1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v2 = v8;
    v3 = v9;
    v4 = 3;
    v5 = 0;
LABEL_5:
    v6 = sub_27240EE70(v4, 1, v5, v2, v3);

    return v6;
  }

  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v2 = v8;
    v3 = v9;
    v4 = 2;
    v5 = 1;
    goto LABEL_5;
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

uint64_t VCUIBadgedTextOverlayModel.deinit()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8, &qword_272437830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78, &qword_272437838);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88, &qword_272437840);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98, &unk_272437848);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8, &qword_2724367E0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t VCUIBadgedTextOverlayModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8, &qword_272437830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78, &qword_272437838);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88, &qword_272437840);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98, &unk_272437848);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8, &qword_2724367E0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v11, v12);
}

uint64_t sub_272430484@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VCUIBadgedTextOverlayModel(0);
  result = sub_272433BD0();
  *a2 = result;
  return result;
}

id sub_2724304C4()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController];
  [v0 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BB0, &qword_272437858);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_272437810;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = [result leadingAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result trailingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = result;
  v20 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = result;
  v22 = [result topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
  *(v8 + 48) = v23;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v0 view];
  if (result)
  {
    v26 = result;
    v27 = objc_opt_self();
    v28 = [v26 bottomAnchor];

    v29 = [v25 constraintEqualToAnchor_];
    *(v8 + 56) = v29;
    sub_272430964();
    v30 = sub_272434A40();

    [v27 activateConstraints_];

    return [v1 didMoveToParentViewController_];
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_272430964()
{
  result = qword_280896BB8;
  if (!qword_280896BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896BB8);
  }

  return result;
}

uint64_t sub_272430AE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);

  return v1;
}

double sub_272430B8C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  *v5 = a1;
  v5[1] = a2;

  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();

  return result;
}

double (*sub_272430C54(void *a1))(uint64_t *a1, char a2, __n128 a3, __n128 a4)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  a1[1] = v3;

  return sub_272430CB0;
}

double sub_272430CB0(uint64_t *a1, char a2, __n128 a3, __n128 a4)
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_272430B8C(*a1, v4, a3, a4);
  }

  sub_272430B8C(v5, v4, v6, v7);

  return result;
}

double sub_272430D98(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();

  return result;
}

void (*sub_272430E4C(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type;
  v3[8] = v1;
  v3[9] = v4;
  v3[7] = *(v1 + v4);
  return sub_272430EC0;
}

void sub_272430EC0(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 64) + *(*a1 + 72)) = *(*a1 + 56);
  v3 = v1[8];
  v2 = v1[9];
  sub_2724341D0();
  v4 = *(v3 + v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v4;

  sub_272433C10();

  free(v1);
}

void sub_27243102C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();
}

void (*sub_2724310FC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect;
  *(v3 + 88) = v1;
  *(v3 + 96) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  *(v3 + 56) = *v5;
  *(v3 + 72) = v6;
  return sub_272431178;
}

void sub_272431178(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 88) + *(*a1 + 96));
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;

  sub_272433C10();

  free(v1);
}

double sub_2724312C8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();

  return result;
}

void (*sub_272431378(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex;
  v3[8] = v1;
  v3[9] = v4;
  v3[7] = *(v1 + v4);
  return sub_2724313EC;
}

void sub_2724313EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  *(*(*a1 + 64) + *(*a1 + 72)) = v2;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v2;

  sub_272433C10();

  free(v1);
}

double sub_27243151C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing) = a1;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_272433C10();

  return result;
}

void (*sub_2724315CC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  *(v3 + 49) = *(v1 + v4);
  return sub_272431640;
}

void sub_272431640(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 49);
  *(*(*a1 + 56) + *(*a1 + 64)) = v2;
  sub_2724341D0();
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v2;

  sub_272433C10();

  free(v1);
}

uint64_t sub_272431744()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2724317DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2724318D4()
{
  v1 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27243196C(char a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272431A1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3 == 1)
  {
    v9 = 3;
    v10 = a4;
    v11 = 0;

    return sub_27240EE70(v9, v10, v11, a1, a2);
  }

  if (!a3)
  {
    v9 = 2;
    v10 = a4;
    v11 = 1;

    return sub_27240EE70(v9, v10, v11, a1, a2);
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

uint64_t sub_272431BA8(uint64_t a1)
{
  sub_2724341D0();
  v2 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type);

  v4 = sub_27242FFD8(v2, v3);

  return v4;
}

id VCUIBadgedTextOverlayController_Swift.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_272434910();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VCUIBadgedTextOverlayController_Swift.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController;
  sub_272432510(v15);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BF8, &qword_2724379C8));
  *&v3[v7] = sub_2724341C0();
  v9 = &v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type] = 1;
  v10 = &v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex] = 1;
  v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing] = 0;
  *&v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder] = 10;
  v3[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay] = 1;
  if (a2)
  {
    v11 = sub_272434910();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id VCUIBadgedTextOverlayController_Swift.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VCUIBadgedTextOverlayController_Swift.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_hostingController;
  sub_272432510(v10);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896BF8, &qword_2724379C8));
  *&v1[v3] = sub_2724341C0();
  v5 = &v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__type] = 1;
  v6 = &v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect];
  *v6 = 0u;
  v6[1] = 0u;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__startIndex] = 1;
  v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__popoverShowing] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder] = 10;
  v1[OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id VCUIBadgedTextOverlayController_Swift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCUIBadgedTextOverlayController_Swift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_272432104(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_272432188(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

void sub_272432210(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_272432294(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

double sub_27243230C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_272432390(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

void sub_27243240C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_272432490(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

double sub_272432510@<D0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8, &qword_2724367E0);
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B98, &unk_272437848);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B88, &qword_272437840);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896B78, &qword_272437838);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8, &qword_272437830);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v39 = type metadata accessor for VCUIBadgedTextOverlayModel(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__text;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_272433BE0();
  (*(v13 + 32))(v16 + v17, v15, v12);
  v18 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__type;
  *&v42 = 1;
  type metadata accessor for VCUIOverlayTextOverlayType(0);
  sub_272433BE0();
  (*(v9 + 32))(v16 + v18, v11, v8);
  v19 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__focusRect;
  v20 = *(MEMORY[0x277CBF3A0] + 16);
  v42 = *MEMORY[0x277CBF3A0];
  v43 = v20;
  type metadata accessor for CGRect(0);
  sub_272433BE0();
  (*(v5 + 32))(v16 + v19, v7, v32);
  v21 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__startIndex;
  *&v42 = 1;
  v22 = v33;
  sub_272433BE0();
  (*(v34 + 32))(v16 + v21, v22, v35);
  v23 = OBJC_IVAR____TtC14VoiceControlUI26VCUIBadgedTextOverlayModel__popoverShowing;
  LOBYTE(v42) = 1;
  v24 = v36;
  sub_272433BE0();
  (*(v37 + 32))(v16 + v23, v24, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 1;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = 0u;
  v43 = 0u;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v42 = 1;

  sub_272433C10();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v42) = 1;

  sub_272433C10();
  sub_27240B410();
  v25 = sub_272433E90();
  v27 = v26;
  v41 = 1;
  sub_272434720();
  v28 = v42;
  v29 = *(&v42 + 1);
  result = 300.0;
  v31 = v40;
  *v40 = xmmword_272437820;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 32) = v28;
  *(v31 + 5) = v29;
  *(v31 + 48) = 0;
  return result;
}

uint64_t sub_272432AE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__text);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

double sub_272432B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_272430B8C(v1, v2, v3, v4);
}

__n128 sub_272432B84@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift__focusRect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

uint64_t sub_272432C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_272432CA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_zOrder;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_272432CF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_272432D50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14VoiceControlUI37VCUIBadgedTextOverlayController_Swift_isOverlay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for VCUIBadgedTextOverlayModel(uint64_t a1)
{
  result = qword_280896C00;
  if (!qword_280896C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272432DF8(uint64_t a1)
{
  sub_272415A7C(319, &qword_280896410, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_272432FF4(319, &qword_280896C10, type metadata accessor for VCUIOverlayTextOverlayType);
    if (v2 <= 0x3F)
    {
      sub_272432FF4(319, &qword_280896C18, type metadata accessor for CGRect);
      if (v3 <= 0x3F)
      {
        sub_272415A7C(319, &unk_280896C20, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_272415A7C(319, &qword_280896418, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_272432FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_272433C20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280897BE8 == -1)
  {
    if (qword_280897BF0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280897BF0)
    {
      return _availability_version_check();
    }
  }

  if (qword_280897BE0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280897BD4 > a3)
      {
        return 1;
      }

      if (dword_280897BD4 >= a3)
      {
        return dword_280897BD8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280897BF0;
  if (qword_280897BF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280897BF0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x2743C9480](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280897BD4, &dword_280897BD8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}