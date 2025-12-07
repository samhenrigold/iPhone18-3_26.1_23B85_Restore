uint64_t sub_22603E620(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v99 = a2;
  v66 = "Fatal error";
  v67 = "Not enough bits to represent the passed value";
  v68 = "Swift/Integers.swift";
  v69 = "Not enough bits to represent a signed value";
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105[0] = 0;
  v105[1] = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, 0x28uLL);
  memset(v103, 0, sizeof(v103));
  v102 = 0;
  v92 = 0;
  v72 = sub_226099828();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v76 = &v16 - v75;
  v114 = &v16 - v75;
  v77 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FB8, &unk_2260A1428) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92);
  v78 = &v16 - v77;
  v79 = sub_226098BA8();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v83 = &v16 - v82;
  v113 = &v16 - v82;
  v84 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E38, &unk_22609F960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92);
  v85 = &v16 - v84;
  v86 = sub_226099808();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v90 = &v16 - v89;
  v112 = &v16 - v89;
  v94 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64);
  v93 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92);
  v95 = &v16 - v93;
  v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v97 = &v16 - v96;
  v111 = v4;
  v110 = v5;
  v109 = v2;
  sub_226046184();
  v98 = sub_225F26174();
  v108 = v98;
  MEMORY[0x277D82BE0](v99);
  if (v99)
  {
    v65 = v99;
    v64 = v99;
    v106 = v99;
    MEMORY[0x277D82BE0](v98);
    if (v98)
    {
      v63 = v98;
      v61 = v98;
      v62 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled);
      if (v62 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8(v66, 11, 2, v69, 43, 2, v68, 20, 2, 3262, 0);
        __break(1u);
      }

      if (v62 > 0x7FFFFFFF)
      {
        sub_22609A3B8(v66, 11, 2, v67, 45, 2, v68, 20, 2, 3268, 0);
        __break(1u);
      }

      [v61 setMaxEnrolled_];
      MEMORY[0x277D82BD8](v61);
    }

    MEMORY[0x277D82BE0](v98);
    if (v98)
    {
      v60 = v98;
      v59 = v98;
      [v98 setRetrievalTimeout_];
      MEMORY[0x277D82BD8](v59);
    }

    MEMORY[0x277D82BE0](v98);
    if (v98)
    {
      v58 = v98;
      v56 = v98;
      v57 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars);
      if (v57 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8(v66, 11, 2, v69, 43, 2, v68, 20, 2, 3262, 0);
        __break(1u);
      }

      if (v57 > 0x7FFFFFFF)
      {
        sub_22609A3B8(v66, 11, 2, v67, 45, 2, v68, 20, 2, 3268, 0);
        __break(1u);
      }

      [v56 setMaxEntityChars_];
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BE0](v98);
    if (v98)
    {
      v55 = v98;
      v53 = v98;
      v54 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords);
      if (v54 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8(v66, 11, 2, v69, 43, 2, v68, 20, 2, 3262, 0);
        __break(1u);
      }

      if (v54 > 0x7FFFFFFF)
      {
        sub_22609A3B8(v66, 11, 2, v67, 45, 2, v68, 20, 2, 3268, 0);
        __break(1u);
      }

      [v53 setMaxEntityWords_];
      MEMORY[0x277D82BD8](v53);
    }

    v51 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
    sub_2260998E8();
    __b[5] = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E80, &unk_22609F9A0);
    sub_22604624C();
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FC0, &qword_2260A1438);
      sub_22609A388();
      if ((*(v87 + 48))(v97, 1, v86) == 1)
      {
        break;
      }

      (*(v87 + 32))(v90, v97, v86);
      MEMORY[0x277D82BE0](v98);
      if (v98)
      {
        v50 = v98;
        v49 = v98;
        (*(v87 + 16))(v95, v90, v86);
        (*(v87 + 56))(v95, 0, 1, v86);
        v48 = sub_226040AD4(v95);
        sub_225F149A8(v95);
        [v49 addEnabledTasks_];
        MEMORY[0x277D82BD8](v49);
      }

      (*(v87 + 8))(v90, v86);
    }

    sub_225EFE6E8(v105);
    MEMORY[0x277D82BE0](v98);
    if (v98)
    {
      v47 = v98;
      v46 = v98;
      sub_225F144A4(v95);
      v45 = sub_226040AD4(v95);
      sub_225F149A8(v95);
      [v46 setRequestTask_];
      MEMORY[0x277D82BD8](v46);
    }

    v43 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
    sub_2260998E8();
    sub_225F15678();
    v44 = &v115;
    sub_226099F18();
    memcpy(__b, v44, 0x28uLL);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FC8, &qword_2260A1440);
      sub_226099F68();
      if ((*(v80 + 48))(v85, 1, v79) == 1)
      {
        break;
      }

      (*(v80 + 32))(v83, v85, v79);
      MEMORY[0x277D82BE0](v98);
      if (v98)
      {
        v42 = v98;
        v41 = v98;
        v6 = sub_226040F84(v83);
        [v41 addRejectedContextTypes_];
        MEMORY[0x277D82BD8](v41);
      }

      (*(v80 + 8))(v83, v79);
    }

    sub_225F15874(__b);
    v39 = *(v64 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
    sub_2260998E8();
    sub_225F157F4();
    v40 = &v116;
    sub_226099F18();
    memcpy(v103, v40, sizeof(v103));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FD0, &unk_2260A1448);
      sub_226099F68();
      if ((*(v73 + 48))(v78, 1, v72) == 1)
      {
        break;
      }

      (*(v73 + 32))(v76, v78, v72);
      sub_2260462D4();
      v38 = sub_225F26174();
      if (!v38)
      {
        (*(v73 + 8))(v76, v72);
        break;
      }

      v37 = v38;
      v35 = v38;
      v102 = v38;
      sub_226099818();
      v24 = v7;
      v25 = sub_2260999F8();

      [v35 setBundleId_];
      MEMORY[0x277D82BD8](v25);
      v28 = 0;
      v8 = sub_22609A4E8();
      v31 = &v100;
      v100 = v8;
      v101 = v9;
      v27 = "";
      v29 = 1;
      v10 = sub_226099AA8();
      v26 = v11;
      MEMORY[0x22AA735F0](v10);

      sub_22609A4A8();
      v12 = sub_226099AA8();
      v30 = v13;
      MEMORY[0x22AA735F0](v12);

      v33 = v100;
      v32 = v101;
      sub_2260998E8();
      sub_225EFE6BC(v31);
      sub_226099A88();
      v34 = v14;
      v36 = sub_2260999F8();

      [v35 setNameOfTypedValue_];
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BE0](v98);
      if (v98)
      {
        v23 = v98;
        v22 = v98;
        [v98 addRejectedEntityTypes_];
        MEMORY[0x277D82BD8](v22);
      }

      MEMORY[0x277D82BD8](v35);
      (*(v73 + 8))(v76, v72);
    }

    sub_225F15874(v103);
    MEMORY[0x277D82BD8](v64);
  }

  sub_2260461E8();
  v21 = sub_225F26174();
  v107 = v21;
  MEMORY[0x277D82BE0](v21);
  if (v21)
  {
    v20 = v21;
    v19 = v21;
    [v21 setStartedOrChanged_];
    MEMORY[0x277D82BD8](v19);
  }

  MEMORY[0x277D82BE0](v21);
  if (v21)
  {
    v18 = v21;
    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

  v16 = v17;
  sub_22604158C(v17, v91, 0, 1);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v21);
  return MEMORY[0x277D82BD8](v98);
}

uint64_t *sub_22603F678()
{
  if (qword_27D785DC8 != -1)
  {
    swift_once();
  }

  return &qword_27D788430;
}

uint64_t *sub_22603F6D8()
{
  if (qword_27D785DD0 != -1)
  {
    swift_once();
  }

  return &qword_27D788440;
}

uint64_t *sub_22603F738()
{
  if (qword_27D785DD8 != -1)
  {
    swift_once();
  }

  return &qword_27D788450;
}

uint64_t sub_22603F798(uint64_t a1, uint64_t a2)
{
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v64[0] = 0;
  v64[1] = 0;
  v61 = 0;
  v60 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v70 = a1;
  v69 = a2;
  sub_226046338();
  v35 = sub_225F26174();
  v67 = v35;
  sub_2260998E8();
  if (a2)
  {
    v65 = a2;
    sub_2260998E8();
    v63 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786330, &qword_2260A04C0);
    sub_225F4C138();
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
      sub_22609A388();
      if (!v62)
      {
LABEL_52:
        sub_225EFE6E8(v64);

        goto LABEL_53;
      }

      v61 = v62;
      sub_22604639C();
      v33 = sub_225F26174();
      if (!v33)
      {

        goto LABEL_52;
      }

      v60 = v33;
      v2 = sub_22603F6D8();
      v27 = *v2;
      v28 = v2[1];
      sub_2260998E8();
      v59[0] = v27;
      v59[1] = v28;
      sub_226099938();
      sub_225EFE6BC(v59);
      v29 = v59[2];
      v30 = v59[3];
      sub_2260998E8();
      v3 = sub_22603F738();
      v31 = *v3;
      v32 = v3[1];
      sub_2260998E8();
      sub_2260998E8();
      v58[0] = v29;
      v58[1] = v30;
      v55 = v31;
      v56 = v32;
      sub_225F4C5E0(v58, &v57);
      if (v56)
      {
        break;
      }

      if (*(&v57 + 1))
      {
        goto LABEL_14;
      }

      sub_225EFE6BC(&v55);
      v26 = 1;
LABEL_12:

      if (v26)
      {

        [v33 setContextType_];

        goto LABEL_40;
      }

      sub_2260998E8();
      v4 = sub_226040948();
      v23 = *v4;
      v24 = v4[1];
      sub_2260998E8();
      sub_2260998E8();
      v54[0] = v29;
      v54[1] = v30;
      v51 = v23;
      v52 = v24;
      sub_225F4C5E0(v54, &v53);
      if (v52)
      {
        sub_225F4C5E0(&v51, v40);
        if (*(&v53 + 1))
        {
          v39 = v53;
          v21 = MEMORY[0x22AA72BD0](v40[0], v40[1], v53, *(&v53 + 1));
          sub_225EFE6BC(&v39);
          sub_225EFE6BC(v40);
          sub_225EFE6BC(&v51);
          v22 = v21;
          goto LABEL_23;
        }

        sub_225EFE6BC(v40);
LABEL_25:
        sub_225F4C1C0(&v51);
        v22 = 0;
        goto LABEL_23;
      }

      if (*(&v53 + 1))
      {
        goto LABEL_25;
      }

      sub_225EFE6BC(&v51);
      v22 = 1;
LABEL_23:

      if (v22)
      {

        [v33 setContextType_];

        goto LABEL_40;
      }

      sub_2260998E8();
      v5 = sub_226040A30();
      v19 = *v5;
      v20 = v5[1];
      sub_2260998E8();
      sub_2260998E8();
      v50[0] = v29;
      v50[1] = v30;
      v47 = v19;
      v48 = v20;
      sub_225F4C5E0(v50, &v49);
      if (!v48)
      {
        if (!*(&v49 + 1))
        {
          sub_225EFE6BC(&v47);
          v18 = 1;
          goto LABEL_34;
        }

        goto LABEL_37;
      }

      sub_225F4C5E0(&v47, v42);
      if (!*(&v49 + 1))
      {
        sub_225EFE6BC(v42);
LABEL_37:
        sub_225F4C1C0(&v47);
        v18 = 0;
        goto LABEL_34;
      }

      v41 = v49;
      v17 = MEMORY[0x22AA72BD0](v42[0], v42[1], v49, *(&v49 + 1));
      sub_225EFE6BC(&v41);
      sub_225EFE6BC(v42);
      sub_225EFE6BC(&v47);
      v18 = v17;
LABEL_34:

      if (v18)
      {
        [v33 setContextType_];
      }

      else
      {
        [v33 setContextType_];
      }

LABEL_40:
      sub_2260462D4();
      v16 = sub_225F26174();
      if (v16)
      {
        v46 = v16;
        v6 = sub_22603F678();
        v12 = *v6;
        v13 = v6[1];
        sub_2260998E8();
        v45[0] = v12;
        v45[1] = v13;
        sub_226099938();
        sub_225EFE6BC(v45);
        v14 = sub_226042C28(v45[2], v45[3]);
        v15 = v7;

        if (v15)
        {
          v43 = v14;
          v44 = v15;
          sub_2260998E8();
          v11 = sub_2260999F8();

          [v16 setBundleId_];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BE0](v16);
          [v33 setEntityType_];
          MEMORY[0x277D82BD8](v16);
        }

        MEMORY[0x277D82BD8](v16);
      }

      [v33 setEnrollmentResult_];
      MEMORY[0x277D82BE0](v35);
      if (v35)
      {
        [v35 addRetrievedEntityStates_];
        MEMORY[0x277D82BD8](v35);
      }

      MEMORY[0x277D82BD8](v33);
    }

    sub_225F4C5E0(&v55, v38);
    if (*(&v57 + 1))
    {
      v37 = v57;
      v25 = MEMORY[0x22AA72BD0](v38[0], v38[1], v57, *(&v57 + 1));
      sub_225EFE6BC(&v37);
      sub_225EFE6BC(v38);
      sub_225EFE6BC(&v55);
      v26 = v25;
      goto LABEL_12;
    }

    sub_225EFE6BC(v38);
LABEL_14:
    sub_225F4C1C0(&v55);
    v26 = 0;
    goto LABEL_12;
  }

LABEL_53:
  sub_2260461E8();
  v10 = sub_225F26174();
  v66 = v10;
  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    [v10 setEnded_];
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_22604158C(v9, a1, 0, 1);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  return MEMORY[0x277D82BD8](v35);
}

void sub_226040104(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v38 = a1;
  v39 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v47 = a1;
  v48 = a2;
  sub_226046400();
  v40 = sub_225F26174();
  v45 = v40;
  sub_2260998E8();
  if (v41)
  {
    v36 = v38;
    v37 = v41;
    v28 = v41;
    v29 = v38;
    v43 = v38;
    v44 = v41;
    v35 = sub_226098A78();
    v22 = v35;
    v23 = *(v35 - 8);
    v33 = v23;
    v24 = v23;
    v25 = *(v23 + 64);
    v26 = &v10;
    MEMORY[0x28223BE20](&v10);
    v27 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v27;
    v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v30 = &v10;
    v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v29);
    v34 = &v10 - v31;
    v32 = &v10 - v31;
    sub_226098A18();
    if ((*(v33 + 48))(v34, 1, v35) == 1)
    {
      sub_225F7C078(v32);
    }

    else
    {
      (*(v24 + 32))(v27, v32, v22);
      v4 = v40;
      if (v40)
      {
        v21 = v40;
        v20 = v40;
        sub_225F7BD5C();
        v18 = &v10;
        v5 = MEMORY[0x28223BE20](&v10);
        v17 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v5);
        v19 = sub_22603E5E0(v17);
        [v20 setOriginalAsrId_];
      }

      (*(v24 + 8))(v27, v22);
    }
  }

  v7 = v40;
  if (v40)
  {
    v16 = v40;
    v15 = v40;
  }

  else
  {
    v15 = 0;
  }

  v13 = v15;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v14 = &v10;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10);
  v12 = &v10 - v11;
  v9 = sub_226098A78();
  (*(*(v9 - 8) + 56))(v12, 1);
  sub_2260430A0(v13, v12);
  sub_225F7C078(v12);
}

uint64_t sub_2260405B8()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786F50);
  __swift_project_value_buffer(v1, qword_27D786F50);
  return sub_226040604();
}

uint64_t sub_226040604()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESASelfHelper.swift", 50, 2, 20, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226040700()
{
  if (qword_27D785DC0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786F50);
}

uint64_t sub_22604076C()
{
  result = sub_226099AA8();
  qword_27D788430 = result;
  qword_27D788438 = v1;
  return result;
}

uint64_t sub_2260407B0()
{
  v1 = *sub_22603F678();
  sub_2260998E8();
  return v1;
}

uint64_t sub_2260407F4()
{
  result = sub_226099AA8();
  qword_27D788440 = result;
  qword_27D788448 = v1;
  return result;
}

uint64_t sub_226040838()
{
  v1 = *sub_22603F6D8();
  sub_2260998E8();
  return v1;
}

uint64_t sub_22604087C()
{
  result = sub_226099AA8();
  qword_27D788450 = result;
  qword_27D788458 = v1;
  return result;
}

uint64_t sub_2260408C0()
{
  v1 = *sub_22603F738();
  sub_2260998E8();
  return v1;
}

uint64_t sub_226040904()
{
  result = sub_226099AA8();
  qword_27D788460 = result;
  qword_27D788468 = v1;
  return result;
}

uint64_t *sub_226040948()
{
  if (qword_27D785DE0 != -1)
  {
    swift_once();
  }

  return &qword_27D788460;
}

uint64_t sub_2260409A8()
{
  v1 = *sub_226040948();
  sub_2260998E8();
  return v1;
}

uint64_t sub_2260409EC()
{
  result = sub_226099AA8();
  qword_27D788470 = result;
  qword_27D788478 = v1;
  return result;
}

uint64_t *sub_226040A30()
{
  if (qword_27D785DE8 != -1)
  {
    swift_once();
  }

  return &qword_27D788470;
}

uint64_t sub_226040A90()
{
  v1 = *sub_226040A30();
  sub_2260998E8();
  return v1;
}

uint64_t sub_226040AD4(uint64_t a1)
{
  v9 = a1;
  v18 = 0;
  v17 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v11 = &v6 - v10;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v12;
  v18 = v4;
  v17 = v1;
  sub_225F14508(v4, &v6 - v12);
  v14 = sub_226099808();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1))
  {
    goto LABEL_35;
  }

  sub_225F14508(v13, v11);
  v8 = (*(v15 + 88))(v11, v14);
  if (v8 == *MEMORY[0x277CDCE70])
  {
    sub_225F149A8(v13);
    return 1;
  }

  else if (v8 == *MEMORY[0x277CDCE50])
  {
    sub_225F149A8(v13);
    return 2;
  }

  else if (v8 == *MEMORY[0x277CDCE10])
  {
    sub_225F149A8(v13);
    return 3;
  }

  else if (v8 == *MEMORY[0x277CDCE68])
  {
    sub_225F149A8(v13);
    return 4;
  }

  else if (v8 == *MEMORY[0x277CDCE38])
  {
    sub_225F149A8(v13);
    return 5;
  }

  else if (v8 == *MEMORY[0x277CDCE28])
  {
    sub_225F149A8(v13);
    return 6;
  }

  else if (v8 == *MEMORY[0x277CDCE20])
  {
    sub_225F149A8(v13);
    return 7;
  }

  else if (v8 == *MEMORY[0x277CDCE78])
  {
    sub_225F149A8(v13);
    return 8;
  }

  else if (v8 == *MEMORY[0x277CDCE18])
  {
    sub_225F149A8(v13);
    return 9;
  }

  else if (v8 == *MEMORY[0x277CDCE00])
  {
    sub_225F149A8(v13);
    return 10;
  }

  else if (v8 == *MEMORY[0x277CDCE08])
  {
    sub_225F149A8(v13);
    return 11;
  }

  else if (v8 == *MEMORY[0x277CDCE58])
  {
    sub_225F149A8(v13);
    return 12;
  }

  else if (v8 == *MEMORY[0x277CDCE60])
  {
    sub_225F149A8(v13);
    return 13;
  }

  else if (v8 == *MEMORY[0x277CDCE48])
  {
    sub_225F149A8(v13);
    return 14;
  }

  else if (v8 == *MEMORY[0x277CDCE40])
  {
    sub_225F149A8(v13);
    return 15;
  }

  else
  {
    if (v8 != *MEMORY[0x277CDCE30])
    {
      (*(v15 + 8))(v11, v14);
LABEL_35:
      sub_225F149A8(v13);
      return 0;
    }

    sub_225F149A8(v13);
    return 16;
  }
}

uint64_t sub_226040F84(uint64_t a1)
{
  v6 = a1;
  v14 = 0;
  v13 = 0;
  v10 = sub_226098BA8();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10);
  v11 = &v5 - v7;
  v14 = v3;
  v13 = v1;
  (*(v8 + 16))(v2);
  v12 = (*(v8 + 88))(v11, v10);
  if (v12 == *MEMORY[0x277D1EAB8])
  {
    HIDWORD(v5) = 1;
  }

  else if (v12 == *MEMORY[0x277D1EA58])
  {
    HIDWORD(v5) = 2;
  }

  else if (v12 == *MEMORY[0x277D1EA78])
  {
    HIDWORD(v5) = 3;
  }

  else if (v12 == *MEMORY[0x277D1EA90])
  {
    HIDWORD(v5) = 4;
  }

  else if (v12 == *MEMORY[0x277D1EA60])
  {
    HIDWORD(v5) = 5;
  }

  else if (v12 == *MEMORY[0x277D1EB10])
  {
    HIDWORD(v5) = 6;
  }

  else if (v12 == *MEMORY[0x277D1EA98])
  {
    HIDWORD(v5) = 7;
  }

  else if (v12 == *MEMORY[0x277D1EAA8])
  {
    HIDWORD(v5) = 8;
  }

  else if (v12 == *MEMORY[0x277D1EAB0])
  {
    HIDWORD(v5) = 9;
  }

  else if (v12 == *MEMORY[0x277D1EB38])
  {
    HIDWORD(v5) = 10;
  }

  else if (v12 == *MEMORY[0x277D1EB28])
  {
    HIDWORD(v5) = 11;
  }

  else if (v12 == *MEMORY[0x277D1EB48])
  {
    HIDWORD(v5) = 12;
  }

  else if (v12 == *MEMORY[0x277D1EB00])
  {
    HIDWORD(v5) = 13;
  }

  else if (v12 == *MEMORY[0x277D1EB18])
  {
    HIDWORD(v5) = 14;
  }

  else if (v12 == *MEMORY[0x277D1EA68])
  {
    HIDWORD(v5) = 31;
  }

  else if (v12 == *MEMORY[0x277D1EA80])
  {
    HIDWORD(v5) = 15;
  }

  else if (v12 == *MEMORY[0x277D1EAA0])
  {
    HIDWORD(v5) = 18;
  }

  else if (v12 == *MEMORY[0x277D1EA88])
  {
    HIDWORD(v5) = 30;
  }

  else if (v12 == *MEMORY[0x277D1EAD8])
  {
    HIDWORD(v5) = 25;
  }

  else if (v12 == *MEMORY[0x277D1EA50])
  {
    HIDWORD(v5) = 26;
  }

  else if (v12 == *MEMORY[0x277D1EAD0])
  {
    HIDWORD(v5) = 27;
  }

  else if (v12 == *MEMORY[0x277D1EB20])
  {
    HIDWORD(v5) = 28;
  }

  else if (v12 == *MEMORY[0x277D1EB08])
  {
    HIDWORD(v5) = 29;
  }

  else if (v12 == *MEMORY[0x277D1EAF8])
  {
    HIDWORD(v5) = 19;
  }

  else if (v12 == *MEMORY[0x277D1EB30])
  {
    HIDWORD(v5) = 20;
  }

  else if (v12 == *MEMORY[0x277D1EAE0])
  {
    HIDWORD(v5) = 21;
  }

  else if (v12 == *MEMORY[0x277D1EAE8])
  {
    HIDWORD(v5) = 22;
  }

  else if (v12 == *MEMORY[0x277D1EAC0])
  {
    HIDWORD(v5) = 23;
  }

  else if (v12 == *MEMORY[0x277D1EAC8])
  {
    HIDWORD(v5) = 24;
  }

  else if (v12 == *MEMORY[0x277D1EA70])
  {
    HIDWORD(v5) = 16;
  }

  else if (v12 == *MEMORY[0x277D1EAF0])
  {
    HIDWORD(v5) = 17;
  }

  else
  {
    (*(v8 + 8))(v11, v10);
    HIDWORD(v5) = 0;
  }

  return HIDWORD(v5);
}

uint64_t sub_22604158C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v151 = a4;
  v150 = a3;
  v152 = a2;
  v162 = a1;
  v147 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v148 = 0;
  v178 = 0;
  v173 = 0;
  v168 = 0;
  v167 = 0;
  v149 = a4;
  v153 = sub_226098C58();
  v154 = *(v153 - 8);
  v155 = v154;
  v158 = *(v154 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = &v36 - v160;
  MEMORY[0x28223BE20](v5);
  v157 = &v36 - v160;
  MEMORY[0x28223BE20](v6);
  v159 = &v36 - v160;
  MEMORY[0x28223BE20](v7);
  v161 = &v36 - v160;
  v187 = v8;
  v186 = v9;
  v184 = v10;
  v185 = v11 & 1;
  v183 = v4;
  v12 = v8;
  if (v162)
  {
    v146 = v162;
    v144 = v162;
    v178 = v162;
    sub_22603929C();
    v145 = sub_225F26174();
    if (v145)
    {
      v143 = v145;
      v139 = v145;
      v173 = v145;
      v141 = 0;
      sub_225F7BD5C();
      v135 = *(sub_226098A78() - 8);
      v136 = v135;
      v138 = &v36;
      v13 = MEMORY[0x28223BE20](&v36);
      v137 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v136 + 16))(v13);
      v140 = sub_22603E5E0(v137);
      [v139 setAsrId_];

      sub_226039300();
      v142 = sub_225F26174();
      if (v142)
      {
        v134 = v142;
        v133 = v142;
        v168 = v142;
        v15 = v139;
        [v133 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v16 = v144;
          objc_opt_self();
          v132 = swift_dynamicCastObjCClass();
          if (v132)
          {
            v131 = v132;
          }

          else
          {

            v131 = 0;
          }

          v129 = v131;
          [v133 setContextualEntityCollectionTriggered_];

          v130 = v148;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v17 = v144;
            objc_opt_self();
            v128 = swift_dynamicCastObjCClass();
            if (v128)
            {
              v127 = v128;
            }

            else
            {

              v127 = 0;
            }

            v126 = v127;
            [v133 setContextualEntityRetrievalContext_];

            v130 = v148;
          }

          else
          {
            v18 = v161;
            v19 = sub_226040700();
            (*(v155 + 16))(v18, v19, v153);
            v124 = sub_226098C48();
            v121 = v124;
            v123 = sub_22609A098();
            v122 = v123;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            v125 = sub_22609A4F8();
            if (os_log_type_enabled(v124, v123))
            {
              v20 = v148;
              v112 = sub_22609A188();
              v108 = v112;
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v110 = 0;
              v113 = sub_225EF5468(0, v109, v109);
              v111 = v113;
              v114 = sub_225EF5468(v110, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v166 = v112;
              v165 = v113;
              v164 = v114;
              v115 = 0;
              v116 = &v166;
              sub_225EF54BC(0, &v166);
              sub_225EF54BC(v115, v116);
              v163 = v125;
              v117 = &v36;
              MEMORY[0x28223BE20](&v36);
              v118 = &v36 - 6;
              *(&v36 - 4) = v21;
              *(&v36 - 3) = &v165;
              *(&v36 - 2) = &v164;
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
              sub_225EFE598();
              sub_226099C28();
              v120 = v20;
              if (v20)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_225EEB000, v121, v122, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v108, 2u);
                v106 = 0;
                sub_225EF7AF4(v111, 0, v109);
                sub_225EF7AF4(v114, v106, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v107 = v120;
              }
            }

            else
            {

              v107 = v148;
            }

            v105 = v107;

            (*(v155 + 8))(v161, v153);
            v130 = v105;
          }
        }

        v104 = v130;
        if (v149)
        {
          v100 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          [v100 emitMessage_];
        }

        else
        {
          v103 = v150;
          v101 = v150;
          v167 = v150;
          v102 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          v22 = sub_226042F9C(v101);
          [v102 emitMessage:v133 timestamp:v22];
        }

        swift_unknownObjectRelease();

        return v104;
      }

      else
      {
        v23 = v159;
        v24 = sub_226040700();
        (*(v155 + 16))(v23, v24, v153);
        v97 = sub_226098C48();
        v94 = v97;
        v96 = sub_22609A098();
        v95 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v98 = sub_22609A4F8();
        if (os_log_type_enabled(v97, v96))
        {
          v25 = v148;
          v85 = sub_22609A188();
          v81 = v85;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v83 = 0;
          v86 = sub_225EF5468(0, v82, v82);
          v84 = v86;
          v87 = sub_225EF5468(v83, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v172 = v85;
          v171 = v86;
          v170 = v87;
          v88 = 0;
          v89 = &v172;
          sub_225EF54BC(0, &v172);
          sub_225EF54BC(v88, v89);
          v169 = v98;
          v90 = &v36;
          MEMORY[0x28223BE20](&v36);
          v91 = &v36 - 6;
          *(&v36 - 4) = v26;
          *(&v36 - 3) = &v171;
          *(&v36 - 2) = &v170;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v93 = v25;
          if (v25)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v94, v95, "Failed to create SELF event", v81, 2u);
            v79 = 0;
            sub_225EF7AF4(v84, 0, v82);
            sub_225EF7AF4(v87, v79, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v80 = v93;
          }
        }

        else
        {

          v80 = v148;
        }

        v78 = v80;

        (*(v155 + 8))(v159, v153);
        return v78;
      }
    }

    else
    {
      v27 = v157;
      v28 = sub_226040700();
      (*(v155 + 16))(v27, v28, v153);
      v76 = sub_226098C48();
      v73 = v76;
      v75 = sub_22609A098();
      v74 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v77 = sub_22609A4F8();
      if (os_log_type_enabled(v76, v75))
      {
        v29 = v148;
        v64 = sub_22609A188();
        v60 = v64;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v62 = 0;
        v65 = sub_225EF5468(0, v61, v61);
        v63 = v65;
        v66 = sub_225EF5468(v62, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v177 = v64;
        v176 = v65;
        v175 = v66;
        v67 = 0;
        v68 = &v177;
        sub_225EF54BC(0, &v177);
        sub_225EF54BC(v67, v68);
        v174 = v77;
        v69 = &v36;
        MEMORY[0x28223BE20](&v36);
        v70 = &v36 - 6;
        *(&v36 - 4) = v30;
        *(&v36 - 3) = &v176;
        *(&v36 - 2) = &v175;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v72 = v29;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v73, v74, "Failed to create SELF event metadata", v60, 2u);
          v58 = 0;
          sub_225EF7AF4(v63, 0, v61);
          sub_225EF7AF4(v66, v58, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v59 = v72;
        }
      }

      else
      {

        v59 = v148;
      }

      v57 = v59;

      (*(v155 + 8))(v157, v153);
      return v57;
    }
  }

  else
  {
    v31 = v156;
    v32 = sub_226040700();
    (*(v155 + 16))(v31, v32, v153);
    v55 = sub_226098C48();
    v52 = v55;
    v54 = sub_22609A098();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v56 = sub_22609A4F8();
    if (os_log_type_enabled(v55, v54))
    {
      v33 = v148;
      v43 = sub_22609A188();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v41 = 0;
      v44 = sub_225EF5468(0, v40, v40);
      v42 = v44;
      v45 = sub_225EF5468(v41, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v182 = v43;
      v181 = v44;
      v180 = v45;
      v46 = 0;
      v47 = &v182;
      sub_225EF54BC(0, &v182);
      sub_225EF54BC(v46, v47);
      v179 = v56;
      v48 = &v36;
      MEMORY[0x28223BE20](&v36);
      v49 = &v36 - 6;
      *(&v36 - 4) = v34;
      *(&v36 - 3) = &v181;
      *(&v36 - 2) = &v180;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v51 = v33;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v52, v53, "topLevelEvent is nil", v39, 2u);
        v37 = 0;
        sub_225EF7AF4(v42, 0, v40);
        sub_225EF7AF4(v45, v37, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v38 = v51;
      }
    }

    else
    {

      v38 = v148;
    }

    v36 = v38;

    (*(v155 + 8))(v156, v153);
    return v36;
  }
}

uint64_t sub_226042C28(uint64_t a1, uint64_t a2)
{
  v6 = a2 != 0;
  sub_2260998E8();
  if (v6)
  {
    sub_2260998E8();
    if (a2)
    {
      sub_226099AA8();
      v4 = sub_226099B98();

      v5 = v4;
      goto LABEL_6;
    }

    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CESASelfHelper.swift", 50, 2, 385, 0);
    __break(1u);
  }

  v5 = 0;
LABEL_6:

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_2260998E8();
  return a1;
}

unint64_t sub_226042F9C(unint64_t a1)
{
  mach_get_times();
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2260430A0(void *a1, uint64_t a2)
{
  v211 = a2;
  v222 = a1;
  v209 = 0;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  v210 = 0;
  v241 = 0;
  v236 = 0;
  v231 = 0;
  v212 = sub_226098C58();
  v213 = *(v212 - 8);
  v214 = v213;
  v218 = *(v213 + 64);
  MEMORY[0x28223BE20](v222);
  v220 = (v218 + 15) & 0xFFFFFFFFFFFFFFF0;
  v215 = &v51 - v220;
  MEMORY[0x28223BE20](v3);
  v216 = &v51 - v220;
  MEMORY[0x28223BE20](v4);
  v217 = &v51 - v220;
  MEMORY[0x28223BE20](v5);
  v219 = &v51 - v220;
  MEMORY[0x28223BE20](v6);
  v221 = &v51 - v220;
  v248 = v7;
  v247 = v8;
  v246 = v2;
  v9 = v7;
  if (v222)
  {
    v208 = v222;
    v206 = v222;
    v241 = v222;
    sub_225F7BCF8();
    v207 = sub_225F26174();
    if (v207)
    {
      v205 = v207;
      v188 = v207;
      v236 = v207;
      v189 = 0;
      v190 = sub_225F7BD5C();
      v191 = v190;
      v201 = sub_226098A78();
      v192 = v201;
      v193 = *(v201 - 8);
      v200 = v193;
      v194 = v193;
      v195 = &v51;
      MEMORY[0x28223BE20](&v51);
      v196 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v197 = &v51;
      v198 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v211);
      v202 = &v51 - v198;
      v199 = &v51 - v198;
      sub_225F7BF50(v12, &v51 - v198);
      v203 = *(v200 + 48);
      v204 = (v200 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v203(v202, 1, v201) == 1)
      {
        sub_226098A68();
        if (v203(v199, 1, v192) != 1)
        {
          sub_225F7C078(v199);
        }
      }

      else
      {
        (*(v194 + 32))(v196, v199, v192);
      }

      v186 = sub_22603E5E0(v196);
      [v188 setDodMlId_];

      sub_225F7BDC0();
      v187 = sub_225F26174();
      if (v187)
      {
        v185 = v187;
        v184 = v187;
        v231 = v187;
        v13 = v188;
        [v184 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v14 = v206;
          objc_opt_self();
          v183 = swift_dynamicCastObjCClass();
          if (v183)
          {
            v182 = v183;
          }

          else
          {

            v182 = 0;
          }

          v181 = v182;
          [v184 setContextualReplayBiomeRecordCreated_];

LABEL_34:
          v22 = v219;
          v23 = sub_226040700();
          (*(v214 + 16))(v22, v23, v212);
          v24 = v206;
          v138 = 7;
          v139 = swift_allocObject();
          *(v139 + 16) = v206;
          v149 = sub_226098C48();
          v132 = v149;
          v148 = sub_22609A088();
          v133 = v148;
          v134 = 17;
          v142 = swift_allocObject();
          v135 = v142;
          *(v142 + 16) = 64;
          v143 = swift_allocObject();
          v136 = v143;
          *(v143 + 16) = 8;
          v137 = 32;
          v25 = swift_allocObject();
          v26 = v139;
          v140 = v25;
          *(v25 + 16) = sub_225F3E198;
          *(v25 + 24) = v26;
          v27 = swift_allocObject();
          v28 = v140;
          v146 = v27;
          v141 = v27;
          *(v27 + 16) = sub_225F3E1C8;
          *(v27 + 24) = v28;
          v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
          v144 = sub_22609A4F8();
          v145 = v29;

          v30 = v142;
          v31 = v145;
          *v145 = sub_225EF7434;
          v31[1] = v30;

          v32 = v143;
          v33 = v145;
          v145[2] = sub_225EF7434;
          v33[3] = v32;

          v34 = v145;
          v35 = v146;
          v145[4] = sub_225F3E358;
          v34[5] = v35;
          sub_225EF5418();

          if (os_log_type_enabled(v149, v148))
          {
            v36 = v210;
            v125 = sub_22609A188();
            v122 = v125;
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v128 = 1;
            v126 = sub_225EF5468(1, v123, v123);
            v124 = v126;
            v127 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v227[0] = v125;
            v226 = v126;
            v225 = v127;
            v129 = v227;
            sub_225EF54BC(2, v227);
            sub_225EF54BC(v128, v129);
            v223 = sub_225EF7434;
            v224 = v135;
            sub_225EF73E8(&v223, v129, &v226, &v225);
            v130 = v36;
            v131 = v36;
            if (v36)
            {
              v120 = 0;

              __break(1u);
            }

            else
            {
              v223 = sub_225EF7434;
              v224 = v136;
              sub_225EF73E8(&v223, v227, &v226, &v225);
              v118 = 0;
              v119 = 0;
              v223 = sub_225F3E358;
              v224 = v141;
              sub_225EF73E8(&v223, v227, &v226, &v225);
              v116 = 0;
              v117 = 0;
              _os_log_impl(&dword_225EEB000, v132, v133, "SELF: Wrapping and logging an event of type %@", v122, 0xCu);
              sub_225EF7AF4(v124, 1, v123);
              sub_225EF7AF4(v127, 0, MEMORY[0x277D84F70] + 8);
              sub_22609A168();

              v121 = v116;
            }
          }

          else
          {
            v37 = v210;

            v121 = v37;
          }

          v115 = v121;

          (*(v214 + 8))(v219, v212);
          v114 = [objc_opt_self() sharedStream];
          swift_getObjectType();
          [v114 emitMessage_];
          swift_unknownObjectRelease();

          return v115;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v15 = v206;
          objc_opt_self();
          v180 = swift_dynamicCastObjCClass();
          if (v180)
          {
            v179 = v180;
          }

          else
          {

            v179 = 0;
          }

          v178 = v179;
          [v184 setContextualReplayBiomeRecordDeleted_];

          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v16 = v206;
          objc_opt_self();
          v177 = swift_dynamicCastObjCClass();
          if (v177)
          {
            v176 = v177;
          }

          else
          {

            v176 = 0;
          }

          v175 = v176;
          [v184 setPersonalizationExperimentContext_];

          goto LABEL_34;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v17 = v206;
          objc_opt_self();
          v174 = swift_dynamicCastObjCClass();
          if (v174)
          {
            v173 = v174;
          }

          else
          {

            v173 = 0;
          }

          v172 = v173;
          [v184 setAudioFileResultTier1_];

          goto LABEL_34;
        }

        v18 = v221;
        v19 = sub_226040700();
        (*(v214 + 16))(v18, v19, v212);
        v170 = sub_226098C48();
        v167 = v170;
        v169 = sub_22609A098();
        v168 = v169;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v171 = sub_22609A4F8();
        if (os_log_type_enabled(v170, v169))
        {
          v20 = v210;
          v158 = sub_22609A188();
          v154 = v158;
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v156 = 0;
          v159 = sub_225EF5468(0, v155, v155);
          v157 = v159;
          v160 = sub_225EF5468(v156, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v230 = v158;
          v229 = v159;
          v228 = v160;
          v161 = 0;
          v162 = &v230;
          sub_225EF54BC(0, &v230);
          sub_225EF54BC(v161, v162);
          v227[1] = v171;
          v163 = &v51;
          MEMORY[0x28223BE20](&v51);
          v164 = &v51 - 6;
          *(&v51 - 4) = v21;
          *(&v51 - 3) = &v229;
          *(&v51 - 2) = &v228;
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v166 = v20;
          if (v20)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v167, v168, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the DODML ASR SELF schema.", v154, 2u);
            v152 = 0;
            sub_225EF7AF4(v157, 0, v155);
            sub_225EF7AF4(v160, v152, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v153 = v166;
          }
        }

        else
        {

          v153 = v210;
        }

        v150 = v153;

        (*(v214 + 8))(v221, v212);
        return v150;
      }

      else
      {
        v38 = v217;
        v39 = sub_226040700();
        (*(v214 + 16))(v38, v39, v212);
        v112 = sub_226098C48();
        v109 = v112;
        v111 = sub_22609A078();
        v110 = v111;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v113 = sub_22609A4F8();
        if (os_log_type_enabled(v112, v111))
        {
          v40 = v210;
          v100 = sub_22609A188();
          v96 = v100;
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v98 = 0;
          v101 = sub_225EF5468(0, v97, v97);
          v99 = v101;
          v102 = sub_225EF5468(v98, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v235 = v100;
          v234 = v101;
          v233 = v102;
          v103 = 0;
          v104 = &v235;
          sub_225EF54BC(0, &v235);
          sub_225EF54BC(v103, v104);
          v232 = v113;
          v105 = &v51;
          MEMORY[0x28223BE20](&v51);
          v106 = &v51 - 6;
          *(&v51 - 4) = v41;
          *(&v51 - 3) = &v234;
          *(&v51 - 2) = &v233;
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v108 = v40;
          if (v40)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v109, v110, "Failed to create DODMLSchemaDODMLClientEvent", v96, 2u);
            v94 = 0;
            sub_225EF7AF4(v99, 0, v97);
            sub_225EF7AF4(v102, v94, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v95 = v108;
          }
        }

        else
        {

          v95 = v210;
        }

        v93 = v95;

        (*(v214 + 8))(v217, v212);
        return v93;
      }
    }

    else
    {
      v42 = v216;
      v43 = sub_226040700();
      (*(v214 + 16))(v42, v43, v212);
      v91 = sub_226098C48();
      v88 = v91;
      v90 = sub_22609A098();
      v89 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v92 = sub_22609A4F8();
      if (os_log_type_enabled(v91, v90))
      {
        v44 = v210;
        v79 = sub_22609A188();
        v75 = v79;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v77 = 0;
        v80 = sub_225EF5468(0, v76, v76);
        v78 = v80;
        v81 = sub_225EF5468(v77, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v240 = v79;
        v239 = v80;
        v238 = v81;
        v82 = 0;
        v83 = &v240;
        sub_225EF54BC(0, &v240);
        sub_225EF54BC(v82, v83);
        v237 = v92;
        v84 = &v51;
        MEMORY[0x28223BE20](&v51);
        v85 = &v51 - 6;
        *(&v51 - 4) = v45;
        *(&v51 - 3) = &v239;
        *(&v51 - 2) = &v238;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v87 = v44;
        if (v44)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v88, v89, "Failed to create event metadata", v75, 2u);
          v73 = 0;
          sub_225EF7AF4(v78, 0, v76);
          sub_225EF7AF4(v81, v73, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v74 = v87;
        }
      }

      else
      {

        v74 = v210;
      }

      v72 = v74;

      (*(v214 + 8))(v216, v212);
      return v72;
    }
  }

  else
  {
    v46 = v215;
    v47 = sub_226040700();
    (*(v214 + 16))(v46, v47, v212);
    v70 = sub_226098C48();
    v67 = v70;
    v69 = sub_22609A078();
    v68 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v71 = sub_22609A4F8();
    if (os_log_type_enabled(v70, v69))
    {
      v48 = v210;
      v58 = sub_22609A188();
      v54 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v56 = 0;
      v59 = sub_225EF5468(0, v55, v55);
      v57 = v59;
      v60 = sub_225EF5468(v56, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v245 = v58;
      v244 = v59;
      v243 = v60;
      v61 = 0;
      v62 = &v245;
      sub_225EF54BC(0, &v245);
      sub_225EF54BC(v61, v62);
      v242 = v71;
      v63 = &v51;
      MEMORY[0x28223BE20](&v51);
      v64 = &v51 - 6;
      *(&v51 - 4) = v49;
      *(&v51 - 3) = &v244;
      *(&v51 - 2) = &v243;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v66 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v67, v68, "topLevelEvent is nil", v54, 2u);
        v52 = 0;
        sub_225EF7AF4(v57, 0, v55);
        sub_225EF7AF4(v60, v52, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v53 = v66;
      }
    }

    else
    {

      v53 = v210;
    }

    v51 = v53;

    (*(v214 + 8))(v215, v212);
    return v51;
  }
}

void sub_226044FA4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v38 = a1;
  v39 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v47 = a1;
  v48 = a2;
  sub_226046464();
  v40 = sub_225F26174();
  v45 = v40;
  sub_2260998E8();
  if (v41)
  {
    v36 = v38;
    v37 = v41;
    v28 = v41;
    v29 = v38;
    v43 = v38;
    v44 = v41;
    v35 = sub_226098A78();
    v22 = v35;
    v23 = *(v35 - 8);
    v33 = v23;
    v24 = v23;
    v25 = *(v23 + 64);
    v26 = &v10;
    MEMORY[0x28223BE20](&v10);
    v27 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v27;
    v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v30 = &v10;
    v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v29);
    v34 = &v10 - v31;
    v32 = &v10 - v31;
    sub_226098A18();
    if ((*(v33 + 48))(v34, 1, v35) == 1)
    {
      sub_225F7C078(v32);
    }

    else
    {
      (*(v24 + 32))(v27, v32, v22);
      v4 = v40;
      if (v40)
      {
        v21 = v40;
        v20 = v40;
        sub_225F7BD5C();
        v18 = &v10;
        v5 = MEMORY[0x28223BE20](&v10);
        v17 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v5);
        v19 = sub_22603E5E0(v17);
        [v20 setOriginalAsrId_];
      }

      (*(v24 + 8))(v27, v22);
    }
  }

  v7 = v40;
  if (v40)
  {
    v16 = v40;
    v15 = v40;
  }

  else
  {
    v15 = 0;
  }

  v13 = v15;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v14 = &v10;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10);
  v12 = &v10 - v11;
  v9 = sub_226098A78();
  (*(*(v9 - 8) + 56))(v12, 1);
  sub_2260430A0(v13, v12);
  sub_225F7C078(v12);
}

unint64_t sub_226045530()
{
  v2 = qword_27D786F70;
  if (!qword_27D786F70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F70);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226045594()
{
  v2 = qword_27D786F78;
  if (!qword_27D786F78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F78);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_22604578C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37 = a1;
  v38 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v36 = 0;
  v46 = 0;
  v40 = sub_226098C58();
  v41 = *(v40 - 8);
  v42 = v41;
  v43 = *(v41 + 64);
  MEMORY[0x28223BE20](0);
  v44 = &v10 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v3;
  v53 = v4;
  v51 = v2;
  sub_226046120();
  v45 = sub_225F26174();
  if (v45)
  {
    v35 = v45;
    v32 = v45;
    v46 = v45;
    sub_2260998E8();
    v31 = sub_2260999F8();

    [v32 setPostItn_];

    v33 = v32;
    v34 = v36;
  }

  else
  {
    v5 = v44;
    v6 = sub_226040700();
    (*(v42 + 16))(v5, v6, v40);
    v29 = sub_226098C48();
    v26 = v29;
    v28 = sub_22609A078();
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v30 = sub_22609A4F8();
    if (os_log_type_enabled(v29, v28))
    {
      v7 = v36;
      v17 = sub_22609A188();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v15 = 0;
      v18 = sub_225EF5468(0, v14, v14);
      v16 = v18;
      v19 = sub_225EF5468(v15, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v50 = v17;
      v49 = v18;
      v48 = v19;
      v20 = 0;
      v21 = &v50;
      sub_225EF54BC(0, &v50);
      sub_225EF54BC(v20, v21);
      v47 = v30;
      v22 = &v10;
      MEMORY[0x28223BE20](&v10);
      v23 = &v10 - 6;
      *(&v10 - 4) = v8;
      *(&v10 - 3) = &v49;
      *(&v10 - 2) = &v48;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v25 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v26, v27, "Failed to create ASROneBestTranscriptTier1", v13, 2u);
        v11 = 0;
        sub_225EF7AF4(v16, 0, v14);
        sub_225EF7AF4(v19, v11, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v12 = v25;
      }
    }

    else
    {

      v12 = v36;
    }

    v10 = v12;

    (*(v42 + 8))(v44, v40);
    v33 = 0;
    v34 = v10;
  }

  return v33;
}

id CESASelfHelper.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for CESASelfHelper();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id CESASelfHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CESASelfHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_226045F50(uint64_t a1)
{
  v4 = sub_226098A38();
  v6 = [v1 initWithNSUUID_];
  MEMORY[0x277D82BD8](v4);
  v2 = sub_226098A78();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

unint64_t sub_226045FF4()
{
  v2 = qword_27D786F80;
  if (!qword_27D786F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046058()
{
  v2 = qword_27D786F88;
  if (!qword_27D786F88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260460BC()
{
  v2 = qword_27D786F90;
  if (!qword_27D786F90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F90);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046120()
{
  v2 = qword_27D786F98;
  if (!qword_27D786F98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046184()
{
  v2 = qword_280D763C8;
  if (!qword_280D763C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260461E8()
{
  v2 = qword_280D763D0;
  if (!qword_280D763D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604624C()
{
  v2 = qword_280D76620;
  if (!qword_280D76620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D785E80, &unk_22609F9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260462D4()
{
  v2 = qword_27D786FD8;
  if (!qword_27D786FD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046338()
{
  v2 = qword_280D763D8;
  if (!qword_280D763D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604639C()
{
  v2 = qword_27D786FE0;
  if (!qword_27D786FE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046400()
{
  v2 = qword_27D786FE8;
  if (!qword_27D786FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046464()
{
  v2 = qword_27D786FF0;
  if (!qword_27D786FF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786FF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226046574()
{
  v2 = qword_27D786FF8;
  if (!qword_27D786FF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226046664()
{
  v2 = qword_27D787000;
  if (!qword_27D787000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226046714(unsigned int a1, void *a2)
{
  v187 = a2;
  v200 = a1;
  v182 = a1;
  v220 = 0;
  v186 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v183 = 0;
  v184 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v185 = &v74 - v184;
  v188 = sub_226098C58();
  v189 = *(v188 - 8);
  v190 = v189;
  v191 = *(v189 + 64);
  MEMORY[0x28223BE20](v186);
  v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v192 = &v74 - v193;
  MEMORY[0x28223BE20](v3);
  v194 = &v74 - v193;
  v220 = v4;
  v219 = v5;
  v218 = v2;
  v206 = sub_226098A78();
  v195 = v206;
  v196 = *(v206 - 8);
  v204 = v196;
  v197 = v196;
  v198 = *(v196 + 64);
  MEMORY[0x28223BE20](v206 - 8);
  v199 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v199;
  v201 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v200);
  v205 = &v74 - v201;
  v202 = &v74 - v201;
  sub_2260484EC(v7);
  v203 = v8;
  sub_226098A18();

  if ((*(v204 + 48))(v205, 1, v206) == 1)
  {
    v56 = v192;
    sub_225F7C078(v202);
    v57 = sub_226047F30();
    (*(v190 + 16))(v56, v57, v188);
    v94 = 17;
    v99 = 7;
    v100 = swift_allocObject();
    *(v100 + 16) = v182;
    v110 = sub_226098C48();
    v92 = v110;
    v109 = sub_22609A098();
    v93 = v109;
    v103 = swift_allocObject();
    v95 = v103;
    v96 = 32;
    *(v103 + 16) = 32;
    v58 = swift_allocObject();
    v59 = v96;
    v104 = v58;
    v97 = v58;
    *(v58 + 16) = 8;
    v98 = v59;
    v60 = swift_allocObject();
    v61 = v100;
    v101 = v60;
    *(v60 + 16) = sub_226048A58;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v101;
    v107 = v62;
    v102 = v62;
    *(v62 + 16) = sub_225EF7B84;
    *(v62 + 24) = v63;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v105 = sub_22609A4F8();
    v106 = v64;

    v65 = v103;
    v66 = v106;
    *v106 = sub_225EF7434;
    v66[1] = v65;

    v67 = v104;
    v68 = v106;
    v106[2] = sub_225EF7434;
    v68[3] = v67;

    v69 = v106;
    v70 = v107;
    v106[4] = sub_225EF7B90;
    v69[5] = v70;
    sub_225EF5418();

    if (os_log_type_enabled(v110, v109))
    {
      v71 = v183;
      v85 = sub_22609A188();
      v82 = v85;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v86 = sub_225EF5468(0, v83, v83);
      v84 = v86;
      v88 = 1;
      v87 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v216 = v85;
      v215 = v86;
      v214 = v87;
      v89 = &v216;
      sub_225EF54BC(2, &v216);
      sub_225EF54BC(v88, v89);
      v212 = sub_225EF7434;
      v213 = v95;
      sub_225EF73E8(&v212, v89, &v215, &v214);
      v90 = v71;
      v91 = v71;
      if (v71)
      {
        v80 = 0;

        __break(1u);
      }

      else
      {
        v212 = sub_225EF7434;
        v213 = v97;
        sub_225EF73E8(&v212, &v216, &v215, &v214);
        v78 = 0;
        v79 = 0;
        v212 = sub_225EF7B90;
        v213 = v102;
        sub_225EF73E8(&v212, &v216, &v215, &v214);
        v76 = 0;
        v77 = 0;
        _os_log_impl(&dword_225EEB000, v92, v93, "Invalid codepath UUID string: %s", v82, 0xCu);
        sub_225EF7AF4(v84, 0, v83);
        sub_225EF7AF4(v87, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v81 = v76;
      }
    }

    else
    {
      v72 = v183;

      v81 = v72;
    }

    v75 = v81;

    (*(v190 + 8))(v192, v188);
    return v75;
  }

  else
  {
    v9 = v194;
    v151 = *(v197 + 32);
    v150 = v197 + 32;
    v142 = v151;
    v143 = (v197 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v151(v199, v202, v195);
    v10 = sub_226047F30();
    (*(v190 + 16))(v9, v10, v188);
    v152 = &v74;
    v11 = MEMORY[0x28223BE20](&v74);
    v149 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *(v197 + 16);
    v146 = v197 + 16;
    v144 = v13;
    v145 = (v197 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v11);
    v147 = *(v146 + 64);
    v148 = (v147 + 16) & ~v147;
    v157 = swift_allocObject();
    v151((v157 + v148), v149, v195);
    v14 = v187;
    v166 = 7;
    v167 = swift_allocObject();
    *(v167 + 16) = v187;
    v180 = sub_226098C48();
    v153 = v180;
    v179 = sub_22609A088();
    v154 = v179;
    v161 = 17;
    v170 = swift_allocObject();
    v155 = v170;
    v160 = 32;
    *(v170 + 16) = 32;
    v15 = swift_allocObject();
    v16 = v160;
    v171 = v15;
    v156 = v15;
    v163 = 8;
    *(v15 + 16) = 8;
    v165 = v16;
    v17 = swift_allocObject();
    v18 = v157;
    v158 = v17;
    *(v17 + 16) = sub_2260498E0;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v158;
    v172 = v19;
    v159 = v19;
    *(v19 + 16) = sub_225EF7B84;
    *(v19 + 24) = v20;
    v173 = swift_allocObject();
    v162 = v173;
    *(v173 + 16) = v160;
    v174 = swift_allocObject();
    v164 = v174;
    *(v174 + 16) = v163;
    v21 = swift_allocObject();
    v22 = v167;
    v168 = v21;
    *(v21 + 16) = sub_226049944;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v168;
    v177 = v23;
    v169 = v23;
    *(v23 + 16) = sub_225EF7B84;
    *(v23 + 24) = v24;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v175 = sub_22609A4F8();
    v176 = v25;

    v26 = v170;
    v27 = v176;
    *v176 = sub_225EF7434;
    v27[1] = v26;

    v28 = v171;
    v29 = v176;
    v176[2] = sub_225EF7434;
    v29[3] = v28;

    v30 = v172;
    v31 = v176;
    v176[4] = sub_225EF7B90;
    v31[5] = v30;

    v32 = v173;
    v33 = v176;
    v176[6] = sub_225EF7434;
    v33[7] = v32;

    v34 = v174;
    v35 = v176;
    v176[8] = sub_225EF7434;
    v35[9] = v34;

    v36 = v176;
    v37 = v177;
    v176[10] = sub_225EF7B90;
    v36[11] = v37;
    sub_225EF5418();

    if (os_log_type_enabled(v180, v179))
    {
      v38 = v183;
      v135 = sub_22609A188();
      v132 = v135;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v136 = sub_225EF5468(0, v133, v133);
      v134 = v136;
      v138 = 2;
      v137 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v211 = v135;
      v210 = v136;
      v209 = v137;
      v139 = &v211;
      sub_225EF54BC(v138, &v211);
      sub_225EF54BC(v138, v139);
      v207 = sub_225EF7434;
      v208 = v155;
      sub_225EF73E8(&v207, v139, &v210, &v209);
      v140 = v38;
      v141 = v38;
      if (v38)
      {
        v130 = 0;

        __break(1u);
      }

      else
      {
        v207 = sub_225EF7434;
        v208 = v156;
        sub_225EF73E8(&v207, &v211, &v210, &v209);
        v128 = 0;
        v129 = 0;
        v207 = sub_225EF7B90;
        v208 = v159;
        sub_225EF73E8(&v207, &v211, &v210, &v209);
        v126 = 0;
        v127 = 0;
        v207 = sub_225EF7434;
        v208 = v162;
        sub_225EF73E8(&v207, &v211, &v210, &v209);
        v124 = 0;
        v125 = 0;
        v207 = sub_225EF7434;
        v208 = v164;
        sub_225EF73E8(&v207, &v211, &v210, &v209);
        v122 = 0;
        v123 = 0;
        v207 = sub_225EF7B90;
        v208 = v169;
        sub_225EF73E8(&v207, &v211, &v210, &v209);
        v120 = 0;
        v121 = 0;
        _os_log_impl(&dword_225EEB000, v153, v154, "Enqueuing experiment trigger log on a background task. codepathId=%s requestId=%s", v132, 0x16u);
        sub_225EF7AF4(v134, 0, v133);
        sub_225EF7AF4(v137, 2, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v131 = v120;
      }
    }

    else
    {
      v39 = v183;

      v131 = v39;
    }

    v118 = v131;

    (*(v190 + 8))(v194, v188);
    sub_226099D78();
    v115 = 0;
    v40 = sub_226099DA8();
    (*(*(v40 - 8) + 56))(v185, 0, 1);
    v117 = &v74;
    v41 = MEMORY[0x28223BE20](&v74);
    v112 = &v74 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42(v41);
    v43 = v187;
    v111 = (v147 + 40) & ~v147;
    v113 = v111 + v198;
    v114 = (v111 + v198 + 8) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v181;
    v46 = v111;
    v47 = v112;
    v48 = v142;
    v49 = v115;
    v50 = v195;
    v116 = v44;
    v44[2] = v115;
    v44[3] = v49;
    v44[4] = v45;
    v48(v44 + v46, v47, v50);
    v51 = v114;
    v52 = v187;
    v53 = v115;
    v54 = v185;
    v55 = v116;
    *(v116 + v113) = v182;
    *(v55 + v51) = v52;
    sub_225F38F2C(v53, v53, v54, &unk_2260A1538, v55, MEMORY[0x277D84F78] + 8);

    (*(v197 + 8))(v199, v195);
    return v118;
  }
}

uint64_t sub_226047DE8()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76858);
  __swift_project_value_buffer(v1, qword_280D76858);
  return sub_226047E34();
}

uint64_t sub_226047E34()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAExperimentationManager.swift", 62, 2, 18, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226047F30()
{
  if (qword_280D76850 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76858);
}

BOOL sub_226047F9C(uint64_t a1, uint64_t a2)
{
  sub_22609A4F8();
  *v2 = "SIRI_SPEECH_SV_SPEECH_PROFILE";
  *(v2 + 8) = 29;
  *(v2 + 16) = 2;
  sub_225EF5418();
  v4 = sub_22609A478();

  return v4 != 0;
}

BOOL sub_2260481D0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226047F9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_226048210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2260466E0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_226048280(uint64_t a1, uint64_t a2)
{
  sub_22609A4F8();
  *v2 = "564d6ff3-3ffe-4043-ae8f-a8cd94439700";
  *(v2 + 8) = 36;
  *(v2 + 16) = 2;
  *(v2 + 24) = "919f4f9e-5c16-4a9a-a5fe-961764dfe664";
  *(v2 + 32) = 36;
  *(v2 + 40) = 2;
  *(v2 + 48) = "92dead10-2f1e-4683-9870-8f8c48540c95";
  *(v2 + 56) = 36;
  *(v2 + 64) = 2;
  *(v2 + 72) = "ec4cd78f-f001-461c-a92a-b473eec3d65c";
  *(v2 + 80) = 36;
  *(v2 + 88) = 2;
  *(v2 + 96) = "cd58f65f-e518-49c3-9863-8fb2f43a8153";
  *(v2 + 104) = 36;
  *(v2 + 112) = 2;
  sub_225EF5418();
  v6 = sub_22609A478();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

void sub_226048484()
{
  sub_22609A4F8();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  sub_225EF5418();
}

uint64_t sub_22604874C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226048280(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_226048784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2260484EC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2260487E4()
{
  sub_226098BD8();
  result = sub_226098BC8();
  qword_280D77718 = result;
  return result;
}

uint64_t *sub_226048818()
{
  if (qword_280D76CC8 != -1)
  {
    swift_once();
  }

  return &qword_280D77718;
}

uint64_t sub_226048878()
{
  v0 = sub_226048818();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_2260488B0(unsigned int a1, uint64_t a2)
{
  v8 = a1;
  v10 = a2;
  v17 = 0;
  v19 = a1;
  v18 = a2;
  v12 = 0;
  v9 = type metadata accessor for CESAExperimentationManager();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v13 = &v4 - v11;
  sub_225F7BF50(v2, &v4 - v11);
  v14 = sub_226098A78();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_226098A38();
    (*(v15 + 8))(v13, v14);
    v7 = v6;
  }

  v5 = v7;
  sub_226046714(v8, v7);
  return MEMORY[0x277D82BD8](v5);
}

uint64_t sub_226048A84(void *a1)
{
  if (!a1)
  {
    return sub_226099AA8();
  }

  MEMORY[0x277D82BE0](a1);
  v2 = [a1 UUIDString];
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_226048C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 64) = a7;
  *(v7 + 161) = a6;
  *(v7 + 56) = a5;
  *(v7 + 16) = v7;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 160) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  v8 = sub_226098C58();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 160) = a6;
  *(v7 + 40) = a7;

  return MEMORY[0x2822009F8](sub_226048D5C, 0, 0);
}

uint64_t sub_226048D5C()
{
  v11 = MEMORY[0x277CE4828];
  v8 = v0[7];
  v0[2] = v0;
  v1 = sub_226048818();
  v10 = *v1;
  v0[12] = *v1;
  MEMORY[0x277D82BE0](v10);
  v9 = sub_226098A78();
  v0[13] = v9;
  v7 = *(v9 - 8);
  v0[14] = v7;
  v2 = swift_task_alloc();
  v0[15] = v2;
  (*(v7 + 16))(v2, v8, v9);
  v16 = sub_226098A38();
  v0[16] = v16;
  sub_22604826C();
  v13 = sub_2260466E0();
  v14 = v3;
  v0[17] = v3;
  v15 = (v11 + *v11);
  v4 = swift_task_alloc();
  v12[18] = v4;
  *v4 = v12[2];
  v4[1] = sub_226048F44;
  v5 = v12[8];

  return v15(v16, v13, v14, v5);
}

uint64_t sub_226048F44()
{
  v9 = *v1;
  v9[2] = *v1;
  v9[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22604917C, 0, 0);
  }

  else
  {
    v4 = v9[16];
    v7 = v9[15];
    v5 = v9[14];
    v6 = v9[13];
    v8 = v9[12];

    (*(v5 + 8))(v7, v6);

    v2 = *(v9[2] + 8);

    return v2();
  }
}

uint64_t sub_22604917C()
{
  v38 = v0;
  v24 = v0[19];
  v17 = v0[16];
  v20 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v21 = v0[12];
  v1 = v0[11];
  v22 = v0[10];
  v23 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v17);
  (*(v18 + 8))(v20, v19);

  MEMORY[0x277D82BD8](v21);
  v2 = v24;
  v0[6] = v24;
  v3 = sub_226047F30();
  (*(v22 + 16))(v1, v3, v23);
  v4 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v31 = sub_226098C48();
  v32 = sub_22609A098();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22602A774;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v30 = v5;

  *v30 = sub_225EF7434;
  v30[1] = v27;

  v30[2] = sub_225EF7434;
  v30[3] = v28;

  v30[4] = sub_225EF7B90;
  v30[5] = v29;
  sub_225EF5418();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_22609A188();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v14 = sub_225EF5468(0, v12, v12);
    v15 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = buf;
    v34 = v14;
    v35 = v15;
    sub_225EF54BC(2, &v33);
    sub_225EF54BC(1, &v33);
    v36 = sub_225EF7434;
    v37 = v27;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v28;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7B90;
    v37 = v29;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_225EEB000, v31, v32, "Error emitting codepath trigger: %s", buf, 0xCu);
    sub_225EF7AF4(v14, 0, v12);
    sub_225EF7AF4(v15, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v16[19];
  v9 = v16[11];
  v10 = v16[9];
  v8 = v16[10];
  MEMORY[0x277D82BD8](v31);
  (*(v8 + 8))(v9, v10);

  v6 = *(v16[2] + 8);

  return v6();
}

uint64_t sub_2260498E0()
{
  v1 = *(sub_226098A78() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_226048A60(v2);
}

uint64_t sub_22604994C(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_226098A78() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = v11 + *(v6 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v13 = *(v1 + ((v3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226048C04(a1, v8, v9, v10, v1 + v11, v12, v13);
}

unint64_t sub_226049AB8()
{
  v2 = qword_27D787008;
  if (!qword_27D787008)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226049B34()
{
  v2 = qword_27D787010;
  if (!qword_27D787010)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226049BEC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_226049D54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_226049F7C()
{
  v2 = qword_27D787018;
  if (!qword_27D787018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787020, qword_2260A1590);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A01C()
{
  v2 = qword_27D787028;
  if (!qword_27D787028)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A0B0()
{
  v2 = qword_27D787030;
  if (!qword_27D787030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787038, qword_2260A1638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604A150()
{
  v2 = qword_27D787040;
  if (!qword_27D787040)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787040);
    return WitnessTable;
  }

  return v2;
}

uint64_t CESAContextualData.init(assets:taskName:applicationName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v17 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v24 = sub_2260997E8();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v6 = MEMORY[0x28223BE20](v24);
  v16 = &v16 - v7;
  v31 = v8;
  v29 = v17;
  v30 = v20;
  v27 = v9;
  v28 = v10;
  v26 = v5;
  (*(v21 + 16))(v6);
  (*(v21 + 32))(v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets, v16, v24);
  sub_2260998E8();
  v11 = v20;
  v12 = (v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  *v12 = v17;
  v12[1] = v11;
  sub_2260998E8();
  v13 = v18;
  v14 = (v5 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  *v14 = v19;
  v14[1] = v13;

  (*(v21 + 8))(v23, v24);
  return v25;
}

uint64_t CESAContextualData.fetchNamedEntities(timeInterval:)(double a1)
{
  *(v2 + 368) = v1;
  *(v2 + 360) = a1;
  *(v2 + 192) = v2;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 240) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 296) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 328) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 376) = sub_226099628();
  *(v2 + 384) = swift_task_alloc();
  v3 = sub_2260996E8();
  *(v2 + 392) = v3;
  *(v2 + 400) = *(v3 - 8);
  *(v2 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787060, &qword_2260A1758);
  *(v2 + 416) = swift_task_alloc();
  v4 = sub_226099698();
  *(v2 + 424) = v4;
  v7 = *(v4 - 8);
  *(v2 + 432) = v7;
  *(v2 + 440) = *(v7 + 64);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787068, &qword_2260A1760);
  *(v2 + 464) = swift_task_alloc();
  v5 = sub_2260997E8();
  *(v2 + 472) = v5;
  *(v2 + 480) = *(v5 - 8);
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;

  return MEMORY[0x2822009F8](sub_22604A768, 0, 0);
}

uint64_t sub_22604A768()
{
  v8 = v0[62];
  v6 = v0[60];
  v7 = v0[59];
  v11 = v0[46];
  v0[24] = v0;
  v5 = swift_allocObject();
  v0[63] = v5;
  v0[27] = v5 + 16;
  *(v5 + 16) = sub_22609A4F8();
  sub_22604CA6C();
  v1 = sub_225F26174();
  v0[64] = v1;
  v0[28] = v1;
  v2 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v3 = *(v6 + 16);
  v0[65] = v3;
  v0[66] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v8, v11 + v2, v7);
  v9 = *(v11 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  v10 = *(v11 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName + 8);
  v0[67] = v10;
  sub_2260998E8();
  v12 = *(v11 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  v13 = *(v11 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName + 8);
  v0[68] = v13;
  sub_2260998E8();
  v14 = swift_task_alloc();
  v0[69] = v14;
  *v14 = v0[24];
  v14[1] = sub_22604A9A8;

  return MEMORY[0x28212C2F0](v9, v10, v12, v13);
}

uint64_t sub_22604A9A8(uint64_t a1)
{
  v9 = *v2;
  v9[24] = *v2;
  v9[70] = a1;
  v9[71] = v1;

  if (v1)
  {
    v4 = sub_22604C674;
  }

  else
  {
    v7 = v9[62];
    v6 = v9[60];
    v8 = v9[59];

    v3 = *(v6 + 8);
    v9[72] = v3;
    v9[73] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v3(v7, v8);
    v4 = sub_22604ABE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22604ABE8()
{
  v1 = v0[70];
  v0[24] = v0;
  v0[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787078, &qword_2260A1768);
  sub_22604CAD0();
  sub_22609A028();
  while (1)
  {
    v48 = v50[58];
    v49 = v50[53];
    v47 = v50[54];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787088, &qword_2260A1770);
    sub_22609A388();
    if ((*(v47 + 48))(v48, 1, v49) == 1)
    {
      break;
    }

    v2 = (v50[54] + 32);
    v44 = *v2;
    (*v2)();
    sub_22604D48C();
    v45 = sub_225F26174();
    v50[42] = v45;
    sub_226099658();
    v46 = sub_226099F58();

    if ((v46 & 1) == 0)
    {
      sub_226099658();
      v43 = sub_226099ED8();

      [v45 setMatchingSourceBundleIds_];
      MEMORY[0x277D82BD8](v43);
    }

    v39 = v50[64];
    v33 = v50[63];
    v32 = v50[57];
    v36 = v50[56];
    v37 = v50[53];
    v31 = v50[54];
    v27 = sub_226098A08();
    v22 = *(v27 - 8);
    v24 = swift_task_alloc();
    v23 = swift_task_alloc();
    sub_226099688();
    sub_2260989C8();
    v28 = *(v22 + 8);
    v28(v23, v27);

    v25 = sub_2260989D8();
    v28(v24, v27);

    [v45 setFromDate_];
    MEMORY[0x277D82BD8](v25);
    v29 = swift_task_alloc();
    v26 = swift_task_alloc();
    sub_226099678();
    sub_2260989C8();
    v28(v26, v27);

    v30 = sub_2260989D8();
    v28(v29, v27);

    [v45 setToDate_];
    MEMORY[0x277D82BD8](v30);
    v34 = swift_allocObject();
    v50[43] = v34 + 16;
    *(v34 + 16) = 0;

    (*(v31 + 16))(v36, v32, v37);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v34;
    (v44)(v38 + v35, v36, v37);
    v50[6] = sub_22604D4F0;
    v50[7] = v38;
    v50[2] = MEMORY[0x277D85DD0];
    *(v50 + 6) = 1107296256;
    *(v50 + 7) = 0;
    v50[4] = sub_22604D148;
    v50[5] = &block_descriptor_2;
    v41 = _Block_copy(v50 + 2);

    v50[44] = 0;
    v42 = [v39 iterRankedNamedEntitiesWithQuery:v45 error:v50 + 44 block:v41];
    v40 = v50[44];
    MEMORY[0x277D82BE0](v40);
    MEMORY[0x277D82BD8](0);
    _Block_release(v41);
    if ((v42 & 1) == 0)
    {
      v9 = v50[64];
      v7 = v50[57];
      v8 = v50[53];
      v6 = v50[54];
      sub_2260988E8();
      MEMORY[0x277D82BD8](v40);
      swift_willThrow();

      MEMORY[0x277D82BD8](v45);
      (*(v6 + 8))(v7, v8);
      sub_225EFE6E8(v50 + 14);
      MEMORY[0x277D82BD8](v9);

      v4 = *(v50[24] + 8);

      return v4();
    }

    v20 = v50[57];
    v21 = v50[53];
    v19 = v50[54];

    MEMORY[0x277D82BD8](v45);
    (*(v19 + 8))(v20, v21);
  }

  v11 = v50[65];
  v12 = v50[61];
  v10 = v50[59];
  v15 = v50[46];
  sub_225EFE6E8(v50 + 14);
  sub_22604CB58();
  v3 = sub_225F26174();
  v50[74] = v3;
  v50[30] = v3;
  v11(v12, v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets, v10);
  v13 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  v14 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName + 8);
  v50[75] = v14;
  sub_2260998E8();
  v16 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  v17 = *(v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName + 8);
  v50[76] = v17;
  sub_2260998E8();
  v18 = swift_task_alloc();
  v50[77] = v18;
  *v18 = v50[24];
  v18[1] = sub_22604B670;

  return MEMORY[0x28212C2F8](v13, v14, v16, v17);
}

uint64_t sub_22604B670(uint64_t a1)
{
  v8 = *v2;
  v8[24] = *v2;
  v8[78] = a1;
  v8[79] = v1;

  if (v1)
  {
    v3 = sub_22604C864;
  }

  else
  {
    v7 = v8[72];
    v5 = v8[61];
    v6 = v8[59];

    v7(v5, v6);
    v3 = sub_22604B89C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22604B89C()
{
  v1 = v0[78];
  v0[24] = v0;
  v0[31] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D787098, &qword_2260A1778);
  sub_22604D1C8();
  sub_22609A028();
  while (1)
  {
    v40 = v42[52];
    v41 = v42[49];
    v39 = v42[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870A8, &qword_2260A1780);
    sub_22609A388();
    if ((*(v39 + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v34 = v42[74];
    (*(v42[50] + 32))();
    sub_22604D250();
    v33 = sub_225F26174();
    v42[32] = v33;
    sub_2260996B8();
    v26 = sub_2260999F8();

    [v33 setBundleID_];
    MEMORY[0x277D82BD8](v26);
    v29 = sub_226098A08();
    v27 = *(v29 - 8);
    v31 = swift_task_alloc();
    v28 = swift_task_alloc();
    sub_2260996D8();
    sub_2260989C8();
    v30 = *(v27 + 8);
    v30(v28, v29);

    v32 = sub_2260989D8();
    v30(v31, v29);

    [v33 setSuggestionDate_];
    MEMORY[0x277D82BD8](v32);
    v35 = [v34 rankedGlobalSuggestionsFromContext:v33 contactsOnly:sub_2260996A8() & 1];
    sub_22604D2B4();
    v36 = sub_226099C88();
    v42[33] = v36;
    MEMORY[0x277D82BD8](v35);
    v42[34] = 0;
    sub_2260998E8();
    v42[35] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870C0, &qword_2260A1788);
    sub_22604D318();
    sub_22609A028();
    v37 = 0;
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870D0, &qword_2260A1790);
    sub_22609A388();
    v25 = v42[36];
    if (v25)
    {
      v42[37] = v25;
      v24 = [v25 recipients];
      if (v24)
      {
        sub_22604D3A0();
        v22 = sub_226099C88();
        MEMORY[0x277D82BD8](v24);
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v42[38] = v23;
      if (v42[38])
      {
        v43 = v42[38];
      }

      else
      {
        sub_22604D3A0();
        v43 = sub_22609A4F8();
        if (v42[38])
        {
          sub_225EFE6E8(v42 + 38);
        }
      }

      v42[39] = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870E0, &qword_2260A1798);
      sub_22604D404();
      sub_22609A028();
      for (i = v37; ; ++i)
      {
LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7870F0, &unk_2260A17A0);
        sub_22609A388();
        v20 = v42[40];
        if (!v20)
        {
          sub_225EFE6E8(v42 + 20);
          MEMORY[0x277D82BD8](v25);
          v37 = i;
          goto LABEL_4;
        }

        v42[41] = v20;
        v19 = [v20 displayName];
        if (v19)
        {
          v15 = sub_226099A08();
          v16 = v2;
          MEMORY[0x277D82BD8](v19);
          v17 = v15;
          v18 = v16;
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        if (!v18)
        {
          goto LABEL_29;
        }

        v42[22] = v17;
        v42[23] = v18;
        if (sub_226099B18())
        {
          break;
        }

        sub_2260998E8();
        sub_226099618();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
        sub_226099CE8();
        result = swift_endAccess();
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
          return result;
        }

        v42[34] = v14;
        if (v14 >= sub_2260996C8())
        {

          MEMORY[0x277D82BD8](v20);
          sub_225EFE6E8(v42 + 20);
          MEMORY[0x277D82BD8](v25);
          v13 = v38;
          goto LABEL_32;
        }

        MEMORY[0x277D82BD8](v20);
      }

LABEL_29:
      MEMORY[0x277D82BD8](v20);
      goto LABEL_14;
    }

    v13 = v38;
LABEL_32:
    v11 = v42[51];
    v12 = v42[49];
    v10 = v42[50];
    sub_225EFE6E8(v42 + 18);

    MEMORY[0x277D82BD8](v33);
    (*(v10 + 8))(v11, v12);
    v38 = v13;
  }

  v8 = v42[74];
  v9 = v42[64];
  v6 = (v42[63] + 16);
  sub_225EFE6E8(v42 + 16);
  swift_beginAccess();
  v7 = *v6;
  sub_2260998E8();
  swift_endAccess();
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  v5 = *(v42[24] + 8);

  return v5(v7);
}

uint64_t sub_22604C674()
{
  v6 = v0[64];
  v4 = v0[62];
  v3 = v0[60];
  v5 = v0[59];
  v0[24] = v0;

  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[24] + 8);

  return v1();
}

uint64_t sub_22604C864()
{
  v6 = v0[74];
  v5 = v0[72];
  v7 = v0[64];
  v3 = v0[61];
  v4 = v0[59];
  v0[24] = v0;

  v5(v3, v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  v1 = *(v0[24] + 8);

  return v1();
}

unint64_t sub_22604CA6C()
{
  v2 = qword_27D787070;
  if (!qword_27D787070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D787070);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604CAD0()
{
  v2 = qword_27D787080;
  if (!qword_27D787080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787078, &qword_2260A1768);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D787080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604CB58()
{
  v2 = qword_27D787090;
  if (!qword_27D787090)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D787090);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22604CBBC(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v49 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v43 = "Fatal error";
  v44 = "Not enough bits to represent the passed value";
  v45 = "Swift/Integers.swift";
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v51 = (*(*(sub_226099628() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v50);
  v52 = v20 - v51;
  v64 = v6;
  v63 = v7;
  v62 = v8 + 16;
  v61 = v9 + 16;
  v60 = v10;
  v53 = [v6 item];
  v56 = [v53 name];
  v54 = sub_226099A08();
  v55 = v11;
  MEMORY[0x277D82BD8](v53);
  v57 = sub_226099B18();

  MEMORY[0x277D82BD8](v56);
  result = v57;
  if ((v57 & 1) == 0)
  {
    v38 = [v50 item];
    v41 = [v38 bestLanguage];
    v39 = sub_226099A08();
    v40 = v13;
    MEMORY[0x277D82BD8](v38);
    v42 = sub_226099B18();

    MEMORY[0x277D82BD8](v41);
    result = v42;
    if ((v42 & 1) == 0)
    {
      v33 = 0x1FB269000uLL;
      v30 = [v50 0x1FB2698F8];
      v29 = [v30 name];
      v31 = sub_226099A08();
      v32 = v14;
      MEMORY[0x277D82BD8](v30);
      [v50 score];
      v34 = v15;
      v35 = [v50 (v33 + 2296)];
      v36 = [v35 category];
      MEMORY[0x277D82BD8](v35);
      sub_225EF81A8();
      v37 = v16;
      if (v16 > 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_22609A3B8(v43, 11, 2, v44, 45, 2, v45, 20, 2, 3268, 0);
        __break(1u);
      }

      v21 = [v50 item];
      v24 = [v21 bestLanguage];
      v22 = sub_226099A08();
      v23 = v17;
      MEMORY[0x277D82BD8](v21);
      sub_226099608();
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v29);
      v25 = &v59;
      v26 = 33;
      v27 = 0;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D20, &qword_2260A0F00);
      sub_226099CE8();
      swift_endAccess();
      result = swift_beginAccess();
      v18 = *(v47 + 16);
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        v20[1] = v47 + 16;
        *(v47 + 16) = v28;
        swift_endAccess();
        v20[2] = &v58;
        swift_beginAccess();
        swift_endAccess();
        result = sub_226099668();
        if (v28 >= result)
        {
          *v49 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22604D148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v5(a2, a3);
  MEMORY[0x277D82BD8](a2);
}

unint64_t sub_22604D1C8()
{
  v2 = qword_27D7870A0;
  if (!qword_27D7870A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D787098, &qword_2260A1778);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D250()
{
  v2 = qword_27D7870B0;
  if (!qword_27D7870B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D2B4()
{
  v2 = qword_27D7870B8;
  if (!qword_27D7870B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D318()
{
  v2 = qword_27D7870C8;
  if (!qword_27D7870C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7870C0, &qword_2260A1788);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D3A0()
{
  v2 = qword_27D7870D8;
  if (!qword_27D7870D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22604D404()
{
  v2 = qword_27D7870E8;
  if (!qword_27D7870E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7870E0, &qword_2260A1798);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7870E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22604D48C()
{
  v2 = qword_27D7870F8;
  if (!qword_27D7870F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7870F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22604D4F0(void *a1, _BYTE *a2)
{
  v3 = sub_226099698();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_22604CBBC(a1, a2, v4, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_22604D5DC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v2 = sub_2260997E8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_22604D648()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  sub_2260998E8();
  return v2;
}

uint64_t sub_22604D68C()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  sub_2260998E8();
  return v2;
}

uint64_t CESAContextualData.deinit()
{
  v3 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_assets;
  v1 = sub_2260997E8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_225EFE6BC(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_applicationName);
  sub_225EFE6BC(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition18CESAContextualData_taskName);
  return v4;
}

uint64_t type metadata accessor for CESAContextualData(uint64_t a1)
{
  v2 = qword_27D787100;
  if (!qword_27D787100)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_22604D858(uint64_t a1)
{
  updated = sub_2260997E8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

__CFString *CESRSpeechProfileUpdateTypeDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F000[(a1 - 1)];
  }
}

void sub_22604DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CESRSpeechProfileUpdateResultTypeDescription(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F040[(a1 - 1)];
  }
}

void sub_22604E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CESRSpeechProfileBuilderServiceGetXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283963940];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_addVocabularyItems_sourceBundleIds_isBoosted_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void ___reverseLookupFieldTypeFromOntologyLabel_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _reverseLookupFieldTypeFromOntologyLabel_lookupCache;
  _reverseLookupFieldTypeFromOntologyLabel_lookupCache = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes;
  _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes = v2;

  if ((*MEMORY[0x277D22CB8] & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = *MEMORY[0x277D22CB8] + 1;
    do
    {
      if (KVFieldTypeIsValidForItemType())
      {
        v6 = _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes;
        v7 = KVFieldTypeToNumber();
        [v6 addObject:v7];
      }

      ++v4;
    }

    while (v5 != v4);
  }
}

void sub_226050E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_226052060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226053098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2260541F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226054A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CESRSpeechProfileAdminResultDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Undefined";
  }

  else
  {
    return off_27857F328[a1 - 1];
  }
}

id _BOOLValueForKey(const __CFString *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(a1, @"com.apple.SpeechProfile");
  if (v2 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_BOOLValueForKey";
      v7 = 2112;
      v8 = v2;
      v9 = 2112;
      v10 = a1;
      _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s value %@ for key %@ should respond to -BOOLValue", &v5, 0x20u);
    }

    v2 = 0;
  }

  return v2;
}

void sub_2260576D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__388(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226058D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _buildLaunchHandlerWithFunction(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___buildLaunchHandlerWithFunction_block_invoke;
  aBlock[3] = &unk_27857F470;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void _registerBGST(void *a1, void *a2)
{
  v3 = MEMORY[0x277CF0810];
  v4 = a2;
  v5 = a1;
  v6 = [v3 sharedScheduler];
  [v6 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v4];
}

void _submitBGSTRequest(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:v3];

  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  v9 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v9)
    {
      *buf = 136315394;
      v17 = "_submitBGSTRequest";
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Skipping submission of existing task %@.", buf, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 136315394;
      v17 = "_submitBGSTRequest";
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Starting submission of task %@.", buf, 0x16u);
    }

    v6 = v4[2](v4, v3);
    v10 = [MEMORY[0x277CF0810] sharedScheduler];
    v15 = 0;
    v11 = [v10 submitTaskRequest:v6 error:&v15];
    v12 = v15;

    v13 = *v7;
    v14 = *v7;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "_submitBGSTRequest";
        v18 = 2112;
        v19 = v3;
        _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Successfully submitted task %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "_submitBGSTRequest";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v12;
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to submit task %@. Error: %@", buf, 0x20u);
    }
  }
}

id ___registerAndSubmitReplayRecordPruningBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setInterval:900.0];
  [v4 setPriority:2];

  return v4;
}

void ___registerAndSubmitReplayRecordPruningBGST_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = BiomeLibrary();
  v2 = [v1 Siri];
  v3 = [v2 ASR];
  v4 = [v3 ContextualReplayRecord];

  v5 = [v4 pruner];
  [v5 deleteWithPolicy:@"replay-record-pruning" eventsPassingTest:&__block_literal_global_373];

  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "_runReplayRecordPruning";
    _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering replay record pruning", &v7, 0xCu);
  }
}

BOOL ___runReplayRecordPruning_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  [v2 timestamp];
  v5 = Current - v4;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    [v2 timestamp];
    v15 = 136315650;
    v16 = "_runReplayRecordPruning_block_invoke";
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering replay record pruning for event of age %f with timestamp %f", &v15, 0x20u);
  }

  if (v5 >= 900.0)
  {
    v9 = objc_opt_class();
    v10 = [v2 eventBody];
    v11 = [v10 metadata];
    v12 = [v11 ids];
    v13 = [v12 asrId];
    [v9 logContextualReplayBiomeRecordDeleted:v13];
  }

  return v5 >= 900.0;
}

id ___registerAndSubmitDailyANECompilationBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = _createGenericDailyMaintenanceRequest(a2);
  [v2 setRequiresExternalPower:0];

  return v2;
}

id _createGenericDailyMaintenanceRequest(void *a1)
{
  v1 = MEMORY[0x277CF07D8];
  v2 = a1;
  v3 = [[v1 alloc] initWithIdentifier:v2];

  [v3 setInterval:86400.0];
  [v3 setPriority:1];
  [v3 setRequiresUserInactivity:1];

  return v3;
}

void ___registerAndSubmitDailyANECompilationBGST_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&__block_literal_global_363];
  }

  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "_runDailyANECompilation";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v1, 0xCu);
  }
}

uint64_t ___runDailyANECompilation_block_invoke()
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  return +[CoreEmbeddedSpeechAnalyzer resetCache];
}

id _createGenericPostInstallUtilityRequest(void *a1)
{
  v1 = MEMORY[0x277CF07C8];
  v2 = a1;
  v3 = [[v1 alloc] initWithIdentifier:v2];

  [v3 setPostInstall:1];
  [v3 setPriority:2];

  return v3;
}

void ___registerAndSubmitPostInstallANECompilationBGST_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (+[CESRUtilities isAutomaticCompilationEnabled])
  {
    [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:3 completion:&__block_literal_global_356];
  }

  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "_runPostInstallANECompilation";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering ANE compilation", &v1, 0xCu);
  }
}

uint64_t ___runPostInstallANECompilation_block_invoke()
{
  [CoreEmbeddedSpeechRecognizer compileAllAssetsWithType:7 completion:0];

  return +[CoreEmbeddedSpeechAnalyzer resetCache];
}

void ___registerAndSubmitDailyAssetSubscriptionCleanupBGST_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  +[CoreEmbeddedSpeechRecognizer cleanupUnusedSubscriptions];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "_runSubscriptionCleanup";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily subscription cleanup.", &v1, 0xCu);
  }
}

void ___registerAndSubmitPostInstallAssetSubscriptionBGST_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  +[CoreEmbeddedSpeechRecognizer handlePostInstallSubscriptions];
  v0 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "_runPostInstallAssetSubscription";
    _os_log_impl(&dword_225EEB000, v0, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install subscription.", &v1, 0xCu);
  }
}

id ___registerAndSubmitDailySpeechProfileMaintenanceBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07D8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setPriority:1];
  [v4 setInterval:86400.0];
  [v4 setRequiresNetworkConnectivity:0];
  [v4 setRequiresExternalPower:1];

  return v4;
}

void ___registerAndSubmitDailySpeechProfileMaintenanceBGST_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CEF0E8];
  v1 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&dword_225EEB000, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering daily speech profile maintenance.", &v4, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMaintenanceWithShouldDefer:0 completion:0];

  v3 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runDailySpeechProfileMaintenance";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering daily speech profile maintenance.", &v4, 0xCu);
  }
}

id ___registerAndSubmitPostInstallSpeechProfileMigrationBGST_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF07C8];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  [v4 setPostInstall:1];
  [v4 setPriority:2];
  [v4 setTrySchedulingBefore:300.0];
  [v4 setRequiresNetworkConnectivity:0];
  [v4 setRequiresExternalPower:0];
  [v4 setRequiresProtectionClass:4];

  return v4;
}

void ___buildLaunchHandlerWithFunction_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___buildLaunchHandlerWithFunction_block_invoke_2;
  v13[3] = &unk_27857F448;
  v13[4] = &v14;
  [v3 setExpirationHandler:v13];
  (*(*(a1 + 32) + 16))();
  v4 = *(v15 + 24);
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v7)
    {
      *buf = 136315138;
      v19 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: ExpirationHandler called.", buf, 0xCu);
    }

    v12 = 0;
    v8 = [v3 setTaskExpiredWithRetryAfter:&v12 error:0.0];
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v11 = @"Unknown";
        if (v9)
        {
          v11 = v9;
        }

        *buf = 136315394;
        v19 = "_buildLaunchHandlerWithFunction_block_invoke";
        v20 = 2112;
        v21 = v11;
        _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to expire task with error: %@", buf, 0x16u);
      }

      [v3 setTaskCompleted];
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v19 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: Task completed before expiration.", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }

  _Block_object_dispose(&v14, 8);
}

void sub_22605CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___registerAndSubmitPostInstallSpeechProfileMigrationBGST_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CEF0E8];
  v1 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&dword_225EEB000, v1, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Triggering post-install speech profile migration.", &v4, 0xCu);
  }

  v2 = +[CESRSpeechProfileDispatcher sharedDispatcher];
  [v2 runMigration:0];

  v3 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "_runPostInstallSpeechProfileMigration";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Done triggering post-install speech profile migration.", &v4, 0xCu);
  }
}

void sub_22605EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22605F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__941(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226062088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1057(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22606315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AFPhrasesAndUtterancesForEARSausage_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v5 objectAtIndexedSubscript:*(a1 + 56)];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
  v10 = [CESRUtilities afTokensForEARTokens:v9 removeSpaceBefore:*(a1 + 64)];
  if ([v10 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CEF458]);
    [v11 setTokens:v10];
    v12 = [*(a1 + 48) containsObject:v11];
    v13 = *(a1 + 48);
    if (v12)
    {
      v14 = [v13 indexOfObject:v11];
    }

    else
    {
      v14 = [v13 count];
      [*(a1 + 48) addObject:v11];
    }

    v15 = [v6 interpretationIndices];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v17 = [v15 arrayByAddingObject:v16];
    [v6 setInterpretationIndices:v17];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v25 + 1) + 8 * i) confidence];
          v22 = v22 + v24;
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    [v6 setConfidenceScore:{(v22 + objc_msgSend(v6, "confidenceScore"))}];
  }
}

void *CESRSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id CESRISO8601StringForDate(void *a1)
{
  v1 = MEMORY[0x277CCAA68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setFormatOptions:{objc_msgSend(v3, "formatOptions") | 0x800}];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

id CESRLaterDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    if (!v3 || v4)
    {
      if (v3 || !v4)
      {
        v6 = [v3 laterDate:v4];
      }

      else
      {
        v6 = v4;
      }
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _speechCategoriesDescription(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

void sub_22606B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22606BB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22606C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22606C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22606CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22606CE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606D260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22606DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22606DD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226072938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1922(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226075064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CESRSpeechServiceGetXPCInterface()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2839639A0];
  v1 = MEMORY[0x277CBEB98];
  v29[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandlerWithInfo_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_startSpeechRecognitionWithParameters_didStartHandlerWithInfo_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_runEvaluationWithDESRecordDatas_language_recipe_attachments_fidesPersonalizedLMPath_fidesPersonalizedLMTrainingAsset_scrubResult_completion_ argumentIndex:3 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_fetchModelPropertiesForAssetConfig_completion_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_fetchModelPropertiesForAssetConfig_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

id CESRSpeechServiceDelegateGetXPCInterface()
{
  v57[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28395EA00];
  v1 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_speechServiceDidRecognizeTokens_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_speechServiceDidRecognizeTokens_withMetadata_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_speechServiceDidRecognizeTokens_withMetadata_ argumentIndex:1 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_speechServiceDidRecognizePartialPackage_withMetadata_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v53 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_speechServiceDidRecognizePartialPackage_withMetadata_ argumentIndex:1 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v52[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_speechServiceDidFinishRecognitionWithStatistics_error_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_speechServiceDidProduceEndpointFeaturesWithWordCount_trailingSilenceDuration_eosLikelihood_pauseCounts_silencePosterior_processedAudioDurationInMilliseconds_acousticEndpointerScore_ argumentIndex:3 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_speechServiceDidSelectRecognitionModelWithModelProperties_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_speechServiceDidRecognizePackage_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_speechServiceDidRecognizePackage_withMetadata_ argumentIndex:0 ofReply:0];

  v31 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v33 = [v31 setWithArray:v32];
  [v0 setClasses:v33 forSelector:sel_speechServiceDidRecognizePackage_withMetadata_ argumentIndex:1 ofReply:0];

  v34 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v36 = [v34 setWithArray:v35];
  [v0 setClasses:v36 forSelector:sel_speechServiceDidRecognizeFinalResultCandidatePackage_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v45 = objc_opt_class();
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v39 = [v37 setWithArray:v38];
  [v0 setClasses:v39 forSelector:sel_speechServiceDidRecognizeVoiceCommandCandidatePackage_withMetadata_ argumentIndex:0 ofReply:0];

  v40 = MEMORY[0x277CBEB98];
  v44 = objc_opt_class();
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v42 = [v40 setWithArray:v41];
  [v0 setClasses:v42 forSelector:sel_speechServiceDidRecognizeVoiceCommandCandidatePackage_withMetadata_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_226077974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2166(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___applyItemTypeFilter_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      KVItemTypeFromNumber();
      v6 = KVItemTypeDescription();
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "_applyItemTypeFilter_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Omitting all vocabulary items with itemType: %@ based on omitted set: %@", &v8, 0x20u);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }
}

id loadBookmark(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = getLibraryPath();
  v3 = v2;
  if (a1 == 1)
  {
    v4 = @"/Assistant/DictationUserEdit/FullPayloadCorrection";
  }

  else
  {
    v4 = @"/Assistant/DictationUserEdit/ConfusionPair";
  }

  v5 = [v2 stringByAppendingPathComponent:v4];
  v6 = [v5 stringByAppendingPathComponent:@"bookmark"];

  if (![v6 length])
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "loadBookmark";
      v25 = 2112;
      v26 = v6;
      v18 = "%s User Edit: invalid bookmark path %@, start enumeration from beginning";
LABEL_15:
      _os_log_impl(&dword_225EEB000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
    }

LABEL_16:
    v16 = 0;
    goto LABEL_21;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "loadBookmark";
      v25 = 2112;
      v26 = v6;
      v18 = "%s User Edit: cannot find bookmark from path %@, start enumeration from beginning";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v9 = MEMORY[0x277CCAAC8];
  v10 = [MEMORY[0x277CCA910] bm_allowedClassesForSecureCodingBMBookmark];
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  v22 = 0;
  v12 = [v9 unarchivedObjectOfClasses:v10 fromData:v11 error:&v22];
  v13 = v22;

  v14 = *MEMORY[0x277CEF0E8];
  v15 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v13 || !v12)
  {
    if (v15)
    {
      v19 = v14;
      v20 = [v13 description];
      *buf = 136315394;
      v24 = "loadBookmark";
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to deserialize bookmark, error: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    if (v15)
    {
      *buf = 136315394;
      v24 = "loadBookmark";
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_225EEB000, v14, OS_LOG_TYPE_DEFAULT, "%s User Edit: loaded bookmark from Biome %@", buf, 0x16u);
    }

    v16 = v12;
  }

LABEL_21:

  return v16;
}

id getLibraryPath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  return v1;
}

uint64_t saveBookmark(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = @"/Assistant/DictationUserEdit/ConfusionPair";
  if (a1 == 1)
  {
    v4 = @"/Assistant/DictationUserEdit/FullPayloadCorrection";
  }

  v5 = v4;
  if ([(__CFString *)v5 length])
  {
    v6 = getLibraryPath();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringByAppendingPathComponent:v5];
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

      v11 = 0;
      if (v10)
      {
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = [v11 stringByAppendingPathComponent:@"bookmark"];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length])
  {
    v25 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:0 error:&v25];
    v14 = v25;
    if (v14 || !v13)
    {
      v20 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v14 description];
        *buf = 136315394;
        v27 = "saveBookmark";
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to serialize bookmark, error: %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = 0;
      v15 = [v13 writeToFile:v12 options:1073741825 error:&v24];
      v14 = v24;
      v16 = *MEMORY[0x277CEF0E8];
      v17 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *buf = 136315394;
          v27 = "saveBookmark";
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEFAULT, "%s User Edit: saved Biome bookmark on disk %@", buf, 0x16u);
        }

        v18 = 1;
        goto LABEL_28;
      }

      if (v17)
      {
        *buf = 136315394;
        v27 = "saveBookmark";
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEFAULT, "%s User Edit: failed to save bookmark on disk %@", buf, 0x16u);
      }
    }

    v18 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v19 = *MEMORY[0x277CEF0E8];
  v18 = 0;
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "saveBookmark";
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEFAULT, "%s User Edit: invalid file path for bookmark file %@", buf, 0x16u);
    v18 = 0;
  }

LABEL_29:

  return v18;
}

uint64_t CESRCorrectionPronunciationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addTtsPronunciations:v24];
          }

          goto LABEL_46;
        }

        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v21 = PBReaderReadData();
        v22 = 16;
        goto LABEL_45;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadString();
        v22 = 56;
LABEL_45:
        v25 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_46;
      }

      if (v13 != 5)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 64) |= 1u;
      while (1)
      {
        v28 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v28 & 0x7F) << v14;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_51;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_51:
      *(a1 + 40) = v20;
LABEL_46:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 32;
        break;
      case 2:
        v21 = PBReaderReadString();
        v22 = 24;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 8;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void sub_22607FFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2879(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226080618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CESRUserCorrectionsProfileEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v34 = PBReaderReadString();
        v35 = *(a1 + 16);
        *(a1 + 16) = v34;

        goto LABEL_69;
      }

      if (v13 != 2)
      {
        goto LABEL_54;
      }

      v21 = objc_alloc_init(CESRCorrectionPronunciation);
      objc_storeStrong((a1 + 24), v21);
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !CESRCorrectionPronunciationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v39[0] & 0x7F) << v22;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_59:
        v36 = 32;
        goto LABEL_68;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39[0] & 0x7F) << v28;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_63:
        v36 = 36;
        goto LABEL_68;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v39[0] & 0x7F) << v14;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_67:
        v36 = 8;
LABEL_68:
        *(a1 + v36) = v20;
        goto LABEL_69;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t CESRRawSpeechProfileWordTagFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"\\contact-first"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"\\contact-middle"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"\\contact-last"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"\\contact-nickname"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"\\contact-first-phonetic"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"\\contact-last-phonetic"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_226085F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3369(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226088A24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id AppOovDirectory(void *a1)
{
  v1 = a1;
  v2 = AFLibraryDirectoryWithSubPath();
  v3 = [v2 stringByAppendingPathComponent:@"SpeechModels"];
  v4 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

uint64_t CESRAppEntityAllocationStrategyEnumFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"in_order"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"equal"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"proportional"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CESRAppEntityProportionTransformationFunctionEnumFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"identity"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"log"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"exponent"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *CESRAppEntityAllocationStrategyEnumAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", a1];
  }

  else
  {
    v2 = off_27857FD98[a1];
  }

  return v2;
}

__CFString *CESRAppEntityProportionTransformationFunctionEnumAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", a1];
  }

  else
  {
    v2 = off_27857FDB8[a1];
  }

  return v2;
}

id CESRSpeechProfileInstanceOptionsDescription(char a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Assistant"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"Dictation"];
  }

  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

uint64_t __Block_byref_object_copy__4503(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226092A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226093074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2260934B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2260938A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22609616C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t CoreEmbeddedSpeechRecognizerGetQoSClassFromInstanceUUID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (uuid_is_null(result))
    {
      return 0;
    }

    else if (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive))
    {
      if (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDBackground))
      {
        return 0;
      }

      else
      {
        return 17;
      }
    }

    else
    {
      return 25;
    }
  }

  return result;
}

void sub_226096A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_226096DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2260971A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

const unsigned __int8 *CoreEmbeddedSpeechRecognizerGetIsHighPriorityFromInstanceUUID(const unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    if (uuid_is_null(result))
    {
      return 0;
    }

    else
    {
      return (uuid_compare(v1, CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive) == 0);
    }
  }

  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}