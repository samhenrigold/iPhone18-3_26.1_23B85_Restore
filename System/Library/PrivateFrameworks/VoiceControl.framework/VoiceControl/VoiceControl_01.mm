uint64_t VCSettings.removePronunciations(from:)(uint64_t a1)
{
  v131 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v1 - 8);
  v138 = &v116 - v2;
  v136 = sub_2723FE294();
  v133 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v137 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2723FE2D4();
  v130 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v129 = (&v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2723FE344();
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v116 - v10;
  v135 = type metadata accessor for VCVocabularyEntry(0);
  v125 = *(v135 - 1);
  v11 = MEMORY[0x28223BE20](v135);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v134 = &v116 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v116 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v116 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v116 - v21);
  v23 = sub_2723FE434();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v27 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_35;
  }

  v28 = sub_2723E4FAC(8);
  if ((v29 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v26 = sub_2723E4504(0, v26[2] + 1, 1, v26);
    goto LABEL_29;
  }

  v132 = v4;
  sub_2723D9360(v27[7] + *(v20 + 72) * v28, v22, &qword_280893F50, &qword_2723FFCE8);

  v30 = v23;
  (*(v24 + 32))(v26, v22 + *(v19 + 48), v23);
  v31 = v131;
  sub_2723D5C78(v131, v18);
  v32 = v126;
  sub_2723D5C78(v31, v126);
  v33 = sub_2723FE424();
  v34 = sub_2723FE8A4();
  if (os_log_type_enabled(v33, v34))
  {
    LODWORD(v120) = v34;
    v121 = v33;
    v122 = v9;
    v35 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v139 = v119;
    *v35 = 141558531;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2085;
    v36 = v135;
    v37 = &v18[v135[5]];
    v38 = *v37;
    v39 = v37[1];

    sub_2723E5038(v18);
    v40 = sub_2723E4A00(v38, v39, &v139);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2082;
    if (*(v32 + v36[8] + 8))
    {
      v42 = v129;
      v41 = v130;
      v43 = v132;
      (*(v130 + 104))(v129, *MEMORY[0x277CC9668], v132);
      v44 = sub_2723FE2C4();
      v46 = v45;
      v47 = *(v41 + 8);
      v48 = v42;
      v30 = v23;
      v49 = MEMORY[0x277D837D0];
      v47(v48, v43);
      v144 = v44;
      v145 = v46;
      v142 = 45;
      v143 = 0xE100000000000000;
      v140 = 95;
      v141 = 0xE100000000000000;
      v114 = sub_2723CD24C();
      v115 = v114;
      v112 = v49;
      v113 = v114;
      sub_2723FE984();

      v50 = v123;
      v51 = sub_2723FE2A4();
      v9 = v122;
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v118 = qword_280894080;
      v117 = sub_2723EC124();
      v54 = v53;
      v9 = v122;
      v50 = v123;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v116 = qword_280894088;
      v55 = [objc_opt_self() sharedPreferences];
      v56 = [v55 languageCode];

      if (v56)
      {
        v57 = sub_2723FE5B4();
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v116, v117, v54, v57, v59, v50);
    }

    v60 = MEMORY[0x2743C6F10](v51);
    v62 = v61;
    (*(v127 + 8))(v50, v128);
    sub_2723E5038(v126);
    v63 = sub_2723E4A00(v60, v62, &v139);

    *(v35 + 24) = v63;
    v64 = v121;
    _os_log_impl(&dword_2723CB000, v121, v120, "VCSettings.removePronunciations textOfEntry: %{sensitive,mask.hash}s, localeOfEntry: %{public}s", v35, 0x20u);
    v65 = v119;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v65, -1, -1);
    MEMORY[0x2743C8040](v35, -1, -1);

    v52 = (*(v24 + 8))(v26, v30);
    v31 = v131;
  }

  else
  {

    sub_2723E5038(v18);
    (*(v24 + 8))(v26, v23);
    v52 = sub_2723E5038(v32);
  }

  MEMORY[0x28223BE20](v52);
  v114 = v31;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E6380, &v112);
  v66 = v133;
  v67 = *(v133 + 16);
  v68 = v136;
  v123 = (v133 + 16);
  v122 = v67;
  (v67)(v137, v31, v136);
  v69 = v138;
  sub_2723FE284();
  v121 = *(v66 + 56);
  (v121)(v69, 0, 1, v68);
  v71 = v129;
  v70 = v130;
  if (*(v31 + v135[8] + 8))
  {
    v72 = *(v130 + 104);
    LODWORD(v126) = *MEMORY[0x277CC9668];
    v73 = v132;
    v72(v129);
    v74 = sub_2723FE2C4();
    v76 = v75;
    (*(v70 + 8))(v71, v73);
    v144 = v74;
    v145 = v76;
    v142 = 45;
    v143 = 0xE100000000000000;
    v140 = 95;
    v141 = 0xE100000000000000;
    v114 = sub_2723CD24C();
    v115 = v114;
    v113 = v114;
    v77 = MEMORY[0x277D837D0];
    v112 = MEMORY[0x277D837D0];
    sub_2723FE984();

    sub_2723FE2A4();
    v78 = v9;
    v79 = v70;
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v80 = sub_2723EC124();
    v82 = v81;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v83 = qword_280894088;
    v84 = [objc_opt_self() sharedPreferences];
    v85 = [v84 languageCode];

    if (v85)
    {
      v86 = sub_2723FE5B4();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v83, v80, v82, v86, v88, v9);

    LODWORD(v126) = *MEMORY[0x277CC9668];
    v78 = v9;
    v79 = v130;
    v31 = v131;
    v71 = v129;
    v77 = MEMORY[0x277D837D0];
  }

  v89 = v135;
  v90 = v135[6];
  v91 = (v31 + v135[5]);
  v92 = v91[1];
  v130 = *v91;
  v131 = v90;
  v120 = v92;
  v93 = v135[7];
  v94 = v134;
  v95 = v136;
  (v121)(v134 + v93, 1, 1, v136);
  v96 = v89[8];
  *(v94 + v89[9]) = 2;
  v129 = (v94 + v96);
  *(v94 + v89[10]) = xmmword_2723FFC50;
  (v122)(v94, v137, v95);

  sub_2723E50B8(v138, v94 + v93);
  v97 = v78;
  sub_2723FE2B4();
  v98 = v132;
  (*(v79 + 104))(v71, v126, v132);
  v99 = sub_2723FE2C4();
  v101 = v100;

  (*(v79 + 8))(v71, v98);
  v144 = v99;
  v145 = v101;
  v142 = 45;
  v143 = 0xE100000000000000;
  v140 = 95;
  v141 = 0xE100000000000000;
  v114 = sub_2723CD24C();
  v115 = v114;
  v112 = v77;
  v113 = v114;
  v102 = sub_2723FE984();
  v104 = v103;

  (*(v127 + 8))(v97, v128);
  sub_2723D9188(v138, &qword_280893EB0, &unk_2723FFC80);
  (*(v133 + 8))(v137, v136);
  v105 = v129;
  v106 = v130;
  *v129 = v102;
  v105[1] = v104;
  v107 = (v94 + v89[5]);
  v108 = v120;
  *v107 = v106;
  v107[1] = v108;
  *(v94 + v131) = 0;
  v9 = v124;
  sub_2723D5C78(v94, v124);
  v26 = sub_2723E6C70();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  v110 = v26[2];
  v109 = v26[3];
  if (v110 >= v109 >> 1)
  {
    v26 = sub_2723E4504((v109 > 1), v110 + 1, 1, v26);
  }

  v26[2] = v110 + 1;
  sub_2723D8978(v9, v26 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v110);
  sub_2723E7238(v26);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return sub_2723E5038(v134);
}

uint64_t sub_2723E2270(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FE344();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v66 = 0;
  v67 = 0xE000000000000000;
  v59 = type metadata accessor for VCVocabularyEntry(0);
  v13 = *(v59 + 32);
  v54 = a1;
  v14 = *(a1 + v13 + 8);
  v57 = v7;
  if (v14)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CC9668], v3);
    v15 = sub_2723FE2C4();
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v64 = v15;
    v65 = v17;
    v62 = 45;
    v63 = 0xE100000000000000;
    v60 = 95;
    v61 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
    v18 = v56;
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v58 = v8;
    v53 = sub_2723EC124();
    v20 = v19;
    v21 = v56;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v52 = qword_280894088;
    v22 = [objc_opt_self() sharedPreferences];
    v23 = [v22 languageCode];

    if (v23)
    {
      v24 = sub_2723FE5B4();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v52, v53, v20, v24, v26, v12);

    v18 = v21;
    v7 = v57;
    v8 = v58;
  }

  v27 = sub_2723FE2B4();
  v29 = v28;
  v30 = v8 + 8;
  v31 = *(v8 + 8);
  v58 = v30;
  v31(v12, v7);
  MEMORY[0x2743C7290](v27, v29);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  v32 = v59;
  MEMORY[0x2743C7290](*(v54 + *(v59 + 20)), *(v54 + *(v59 + 20) + 8));
  v34 = v66;
  v33 = v67;
  v66 = 0;
  v67 = 0xE000000000000000;
  if (*(v18 + *(v32 + 32) + 8))
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CC9668], v3);
    v35 = sub_2723FE2C4();
    v37 = v36;
    (*(v4 + 8))(v6, v3);
    v64 = v35;
    v65 = v37;
    v62 = 45;
    v63 = 0xE100000000000000;
    v60 = 95;
    v61 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    v38 = v55;
    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v54 = sub_2723EC124();
    v40 = v39;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v41 = qword_280894088;
    v42 = [objc_opt_self() sharedPreferences];
    v43 = [v42 languageCode];

    if (v43)
    {
      v44 = sub_2723FE5B4();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    sub_2723FE2F4();
    v38 = v55;
    sub_2723EB6EC(v41, v54, v40, v44, v46, v55);

    v18 = v56;
  }

  v47 = sub_2723FE2B4();
  v49 = v48;
  v31(v38, v57);
  MEMORY[0x2743C7290](v47, v49);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  MEMORY[0x2743C7290](*(v18 + *(v59 + 20)), *(v18 + *(v59 + 20) + 8));
  if (v34 == v66 && v33 == v67)
  {
    v50 = 1;
  }

  else
  {
    v50 = sub_2723FEC44();
  }

  return v50 & 1;
}

Swift::Void __swiftcall VCSettings._removeAllVocabularyEntriesFromCloud()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - v2);
  v4 = sub_2723FE434();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v8 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = sub_2723E4FAC(8);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_2723D9360(v8[7] + *(v1 + 72) * v9, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v5 + 32))(v7, v3 + *(v0 + 48), v4);
  v11 = sub_2723FE424();
  v12 = sub_2723FE8A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2723CB000, v11, v12, "VCSettings._removeAllVocabularyEntriesFromCloud()", v13, 2u);
    MEMORY[0x2743C8040](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  RXObjectSetProperty();
}

Swift::Int VCSettings.removeVocabularyEntries(texts:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-v6];
  v8 = sub_2723FE434();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v13 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(8);
  if ((v14 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v13[7] + *(v5 + 72) * result, v7, &qword_280893F50, &qword_2723FFCE8);

  (*(v9 + 32))(v12, v7 + *(v4 + 48), v8);
  v15 = sub_2723FE424();
  v16 = sub_2723FE8A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2723CB000, v15, v16, "VCSettings(ObjC).removeVocabularyEntries", v17, 2u);
    MEMORY[0x2743C8040](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v18 = sub_2723E6C70();
  MEMORY[0x28223BE20](v18);
  *&v22[-16] = a1;
  *&v22[-8] = a2;
  v20 = sub_2723D277C(sub_2723E6320, &v22[-32], v19);
  v21 = VCSettings.removeVocabularyEntries(_:)(v20);

  return v21;
}

uint64_t sub_2723E2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v6 = sub_2723FE2D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2723FE344();
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VCVocabularyEntry(0);
  v14 = (a1 + *(v13 + 20));
  v16 = *v14;
  v15 = v14[1];
  v39 = v16;
  v40 = v15;
  v34 = &v39;
  if (sub_2723E718C(sub_2723CE15C, v33, a2))
  {
    v31 = v3;
    if (*(a1 + *(v13 + 32) + 8))
    {
      (*(v7 + 104))(v9, *MEMORY[0x277CC9668], v6);
      v17 = sub_2723FE2C4();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      v39 = v17;
      v40 = v19;
      v37 = 45;
      v38 = 0xE100000000000000;
      v35 = 95;
      v36 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_2723EC124();
      v23 = v22;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v24 = qword_280894088;
      v25 = [objc_opt_self() sharedPreferences];
      v26 = [v25 languageCode];

      if (v26)
      {
        v27 = sub_2723FE5B4();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v24, v21, v23, v27, v29, v12);
    }

    v20 = MEMORY[0x2743C6F40](v12, v41);
    (*(v10 + 8))(v12, v32);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t VCSettings.setPronunciations(pronunciations:forText:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v4 = type metadata accessor for VCVocabularyEntry(0);
  v28 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v28 - v12);
  v14 = sub_2723FE434();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v19 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2723E4FAC(8);
  if ((v20 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2723D9360(v19[7] + *(v11 + 72) * result, v13, &qword_280893F50, &qword_2723FFCE8);

  (*(v15 + 32))(v18, v13 + *(v10 + 48), v14);
  v21 = sub_2723FE424();
  v22 = sub_2723FE8A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2723CB000, v21, v22, "VCSettings(ObjC).setPronunciations", v23, 2u);
    MEMORY[0x2743C8040](v23, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v24 = sub_2723E6C70();
  MEMORY[0x28223BE20](v24);
  v25 = v31;
  *(&v28 - 4) = v30;
  *(&v28 - 3) = v25;
  *(&v28 - 2) = v32;
  v27 = sub_2723D277C(sub_2723E6340, (&v28 - 6), v26);
  if (!*(v27 + 16))
  {
  }

  sub_2723D5C78(v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v7);

  sub_2723D8978(v7, v9);
  VCSettings.setPronunciations(pronunciations:for:)(v29, v9);
  return sub_2723E5038(v9);
}

uint64_t VCSettings.removePronunciations(fromText:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v3 = type metadata accessor for VCVocabularyEntry(0);
  v28 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v27 - v11);
  v13 = sub_2723FE434();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v18 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2723E4FAC(8);
  if ((v19 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2723D9360(v18[7] + *(v10 + 72) * result, v12, &qword_280893F50, &qword_2723FFCE8);

  (*(v14 + 32))(v17, v12 + *(v9 + 48), v13);
  v20 = sub_2723FE424();
  v21 = sub_2723FE8A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2723CB000, v20, v21, "VCSettings(ObjC).removePronunciations", v22, 2u);
    MEMORY[0x2743C8040](v22, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v23 = sub_2723E6C70();
  MEMORY[0x28223BE20](v23);
  v24 = v30;
  *(&v27 - 4) = v29;
  *(&v27 - 3) = v24;
  *(&v27 - 2) = v31;
  v26 = sub_2723D277C(sub_2723E6364, (&v27 - 6), v25);
  if (!*(v26 + 16))
  {
  }

  sub_2723D5C78(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v6);

  sub_2723D8978(v6, v8);
  VCSettings.removePronunciations(from:)(v8);
  return sub_2723E5038(v8);
}

uint64_t sub_2723E39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = sub_2723FE2D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2723FE344();
  v11 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VCVocabularyEntry(0);
  v15 = (a1 + *(v14 + 20));
  v16 = *v15 == a2 && v15[1] == a3;
  if (v16 || (v17 = 0, (sub_2723FEC44() & 1) != 0))
  {
    if (*(a1 + *(v14 + 32) + 8))
    {
      (*(v8 + 104))(v10, *MEMORY[0x277CC9668], v7);
      v18 = sub_2723FE2C4();
      v20 = v19;
      (*(v8 + 8))(v10, v7);
      v37 = v18;
      v38 = v20;
      v35 = 45;
      v36 = 0xE100000000000000;
      v33 = 95;
      v34 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_2723EC124();
      v23 = v22;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v24 = qword_280894088;
      v25 = [objc_opt_self() sharedPreferences];
      v26 = [v25 languageCode];

      if (v26)
      {
        v27 = sub_2723FE5B4();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      sub_2723FE2F4();
      sub_2723EB6EC(v24, v21, v23, v27, v29, v13);
    }

    v17 = MEMORY[0x2743C6F40](v13, v32);
    (*(v11 + 8))(v13, v31);
  }

  return v17 & 1;
}

uint64_t VCSettings.brokderdGetRawVocabularyEntries()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v15 - v2);
  v4 = sub_2723FE434();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2723E6C70();
  v9 = result;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v10 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v10[7] + *(v1 + 72) * result, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v5 + 32))(v7, v3 + *(v0 + 48), v4);

  v12 = sub_2723FE424();
  v13 = sub_2723FE884();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = *(v9 + 16);

    _os_log_impl(&dword_2723CB000, v12, v13, "brokderdGetRawVocabularyEntries count: %{public}ld", v14, 0xCu);
    MEMORY[0x2743C8040](v14, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return v9;
}

Swift::Void __swiftcall VCSettings.brokderdSetRawVocabularyEntries(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v17 - v4);
  v6 = sub_2723FE434();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v10 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = sub_2723E4FAC(8);
  if ((v12 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_2723D9360(v10[7] + *(v3 + 72) * v11, v5, &qword_280893F50, &qword_2723FFCE8);

  (*(v7 + 32))(v9, v5 + *(v2 + 48), v6);

  v13 = sub_2723FE424();
  v14 = sub_2723FE884();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = *(a1._rawValue + 2);

    _os_log_impl(&dword_2723CB000, v13, v14, "brokderdSetRawVocabularyEntries count: %{public}ld", v15, 0xCu);
    MEMORY[0x2743C8040](v15, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);

  sub_2723E7238(v16);
}

char *sub_2723E42F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894060, &qword_2724009B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2723E43F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2723E4504(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894078, &qword_272400068);
  v10 = *(type metadata accessor for VCVocabularyEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for VCVocabularyEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2723E46DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2723E48CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894068, &qword_272400060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2723E4A00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2723E4ACC(v11, 0, 0, 1, a1, a2);
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
    sub_2723D9230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2723E4ACC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2723E4BD8(a5, a6);
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
    result = sub_2723FEA94();
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

void *sub_2723E4BD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2723E4C24(a1, a2);
  sub_2723E4D54(&unk_28819F700);
  return v3;
}

void *sub_2723E4C24(uint64_t a1, unint64_t a2)
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

  v6 = sub_2723ED4E0(v5, 0);
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

  result = sub_2723FEA94();
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
        v10 = sub_2723FE684();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2723ED4E0(v10, 0);
        result = sub_2723FEA34();
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

uint64_t sub_2723E4D54(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2723E4E40(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2723E4E40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894070, &qword_272400420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2723E4F34(uint64_t a1, uint64_t a2)
{
  sub_2723FEC94();
  sub_2723FE634();
  v4 = sub_2723FECB4();

  return sub_2723E5130(a1, a2, v4);
}

unint64_t sub_2723E4FAC(uint64_t a1)
{
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  v2 = sub_2723FECB4();

  return sub_2723E51E8(a1, v2);
}

uint64_t sub_2723E5038(uint64_t a1)
{
  v2 = type metadata accessor for VCVocabularyEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723E50B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723E5130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2723FEC44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2723E51E8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = VCLogging.Category.rawValue.getter();
      v9 = v8;
      if (v7 == VCLogging.Category.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_2723FEC44();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_2723E5304(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for VCVocabularyEntry(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_2723E5404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for VCVocabularyEntry(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - v2);
  v4 = sub_2723FE434();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v9 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(8);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v9[7] + *(v1 + 72) * result, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v5 + 32))(v8, v3 + *(v0 + 48), v4);
  v11 = sub_2723FE424();
  v12 = sub_2723FE8A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2723CB000, v11, v12, "VCSettings.triggerVocabularySyncIfNecessary()", v13, 2u);
    MEMORY[0x2743C8040](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return RXObjectSetProperty();
}

uint64_t sub_2723E57E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2723E5848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = v76 - v5;
  v90 = sub_2723FE2D4();
  v6 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2723FE344();
  v8 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = (v76 - v11);
  v82 = sub_2723FE434();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VCVocabularyEntry(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v101 = v76 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v76 - v20;
  v22 = sub_2723E6C70();
  v23 = *(v22 + 16);
  if (v23)
  {
    v99 = v10;
    v76[2] = a1;
    v24 = v21;
    v25 = 0;
    v102 = 0;
    v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v76[1] = v22;
    v95 = v26;
    v27 = v8;
    v28 = v22 + v26;
    v29 = v24 + *(v13 + 32);
    v84 = v13;
    v30 = *(v13 + 20);
    v103 = v24;
    v97 = (v24 + v30);
    v88 = (v6 + 104);
    v87 = (v6 + 8);
    v93 = *(v14 + 72);
    v86 = *MEMORY[0x277CC9668];
    v96 = (v27 + 8);
    v31 = MEMORY[0x277D84F90];
    v98 = v17;
    v32 = v101;
    v94 = v29;
    v83 = a2;
    do
    {
      v33 = v103;
      sub_2723D5C78(v28, v103);
      sub_2723D5C78(v33, v32);
      v110[0] = 0;
      v110[1] = 0xE000000000000000;
      if (*(v29 + 8))
      {
        v34 = v89;
        v35 = v90;
        (*v88)(v89, v86, v90);
        v36 = sub_2723FE2C4();
        v38 = v37;
        (*v87)(v34, v35);
        v108 = v36;
        v109 = v38;
        v106 = 45;
        v107 = 0xE100000000000000;
        v104 = 95;
        v105 = 0xE100000000000000;
        v74 = sub_2723CD24C();
        v75 = v74;
        v73[1] = v74;
        v73[0] = MEMORY[0x277D837D0];
        sub_2723FE984();

        v39 = a2;
        v40 = v99;
        sub_2723FE2A4();
      }

      else
      {
        if (qword_280893DC8 != -1)
        {
          swift_once();
        }

        v92 = v25;
        v91 = sub_2723EC124();
        v42 = v41;
        if (qword_280893E00 != -1)
        {
          swift_once();
        }

        v43 = qword_280894088;
        v44 = [objc_opt_self() sharedPreferences];
        v45 = [v44 languageCode];

        if (v45)
        {
          v46 = sub_2723FE5B4();
          v48 = v47;
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        sub_2723FE2F4();
        v40 = v99;
        sub_2723EB6EC(v43, v91, v42, v46, v48, v99);

        v39 = v83;
        v25 = v92;
      }

      v49 = v100;
      v50 = sub_2723FE2B4();
      v52 = v51;
      (*v96)(v40, v49);
      MEMORY[0x2743C7290](v50, v52);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      v53 = MEMORY[0x2743C7290](*v97, v97[1]);
      MEMORY[0x28223BE20](v53);
      v74 = v110;
      v54 = v102;
      LOBYTE(v52) = sub_2723E718C(sub_2723CE180, v73, v39);
      v102 = v54;

      sub_2723E5038(v103);
      a2 = v39;
      if (v52)
      {
        v55 = v84;
        v32 = v101;
        v101[*(v84 + 36)] = 1;
        v56 = v85;
        sub_2723FE284();
        v57 = sub_2723FE294();
        (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
        sub_2723E6290(v56, v32 + *(v55 + 28));
        v58 = __OFADD__(v25++, 1);
        v59 = v98;
        if (v58)
        {
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v59 = v98;
        v32 = v101;
      }

      sub_2723D5C78(v32, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2723E4504(0, v31[2] + 1, 1, v31);
      }

      v61 = v31[2];
      v60 = v31[3];
      if (v61 >= v60 >> 1)
      {
        v31 = sub_2723E4504((v60 > 1), v61 + 1, 1, v31);
      }

      v31[2] = v61 + 1;
      v62 = v93;
      sub_2723D8978(v59, v31 + v95 + v61 * v93);
      sub_2723E5038(v32);
      v28 += v62;
      --v23;
      v29 = v94;
    }

    while (v23);
  }

  else
  {

    v25 = 0;
    v31 = MEMORY[0x277D84F90];
  }

  sub_2723E7238(v31);
  if (qword_280893E18 != -1)
  {
LABEL_31:
    swift_once();
  }

  v63 = off_280894260;
  v64 = v82;
  v65 = v81;
  v66 = v80;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_33;
  }

  v67 = sub_2723E4FAC(8);
  if ((v68 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v69 = v78;
  sub_2723D9360(v63[7] + *(v77 + 72) * v67, v78, &qword_280893F50, &qword_2723FFCE8);

  (*(v65 + 32))(v66, v69 + *(v79 + 48), v64);
  v70 = sub_2723FE424();
  v71 = sub_2723FE8A4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134349056;
    *(v72 + 4) = v25;
    _os_log_impl(&dword_2723CB000, v70, v71, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v72, 0xCu);
    MEMORY[0x2743C8040](v72, -1, -1);
  }

  (*(v65 + 8))(v66, v64);
}

uint64_t sub_2723E6290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VCSettings.activeLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2723EC124();
  v4 = v3;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v5 = qword_280894088;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    v8 = sub_2723FE5B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v5, v2, v4, v8, v10, a1);
}

uint64_t sub_2723E64B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6E6F697461657243;
  v4 = a1;
  v5 = 0x6574656C65447349;
  v6 = 0xE900000000000064;
  if (a1 != 5)
  {
    v5 = 0x6E6F697469646441;
    v6 = 0xEE006F666E496C61;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047316;
  if (a1 != 3)
  {
    v8 = 0x7341504974786554;
    v7 = 0xE800000000000000;
  }

  if (a1 > 4u)
  {
    v8 = v5;
    v7 = v6;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000272400A30;
  if (a1 != 1)
  {
    v9 = 0xD000000000000010;
    v10 = 0x8000000272400A50;
  }

  if (!a1)
  {
    v9 = 0x6E6F697461657243;
    v10 = 0xEC00000065746144;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000272400A30;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x8000000272400A50;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6574656C65447349)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEE006F666E496C61;
        if (v11 != 0x6E6F697469646441)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047316)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x7341504974786554;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_2723FEC44();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_2723E66D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v7 = 0xE400000000000000;
    v8 = 0x656C4564656D614ELL;
    v9 = 0xED000073746E656DLL;
    if (a1 != 2)
    {
      v8 = 0x64657265626D754ELL;
      v9 = 0xEC00000064697247;
    }

    v10 = 0xD000000000000010;
    if (a1)
    {
      v7 = 0x8000000272400C10;
    }

    else
    {
      v10 = 1701736270;
    }

    if (a1 <= 1u)
    {
      v5 = v10;
    }

    else
    {
      v5 = v8;
    }

    if (v2 <= 1)
    {
      v6 = v7;
    }

    else
    {
      v6 = v9;
    }
  }

  else if (a1 <= 5u)
  {
    v5 = 0x64657265626D754ELL;
    if (v2 == 4)
    {
      v6 = 0xED00007364726F57;
    }

    else
    {
      v6 = 0xED000073656E694CLL;
    }
  }

  else
  {
    v3 = 0x8000000272400C80;
    v4 = 0xD000000000000011;
    if (a1 != 7)
    {
      v4 = 0xD000000000000012;
      v3 = 0x8000000272400CA0;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 6)
    {
      v6 = 0x8000000272400C60;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v11 = 0x8000000272400C10;
        if (v5 != 0xD000000000000010)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        if (v5 != 1701736270)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v11 = 0xEC00000064697247;
      if (v5 != 0x64657265626D754ELL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v12 = 0x656C4564656D614ELL;
    v13 = 1953391981;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "NumberedCharacters";
      }

      else
      {
        if (a2 == 7)
        {
          v11 = 0x8000000272400C80;
          if (v5 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        v14 = "NumberedParagraphs";
      }

      v11 = (v14 - 32) | 0x8000000000000000;
      if (v5 != 0xD000000000000012)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v12 = 0x64657265626D754ELL;
    if (a2 == 4)
    {
      v13 = 1685221207;
    }

    else
    {
      v13 = 1701734732;
    }
  }

  v11 = v13 | 0xED00007300000000;
  if (v5 != v12)
  {
LABEL_51:
    v15 = sub_2723FEC44();
    goto LABEL_52;
  }

LABEL_49:
  if (v6 != v11)
  {
    goto LABEL_51;
  }

  v15 = 1;
LABEL_52:

  return v15 & 1;
}

uint64_t sub_2723E69CC(uint64_t a1, unsigned __int8 a2)
{
  sub_2723FE634();
}

uint64_t VCSettings.bestSupportedLocale(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v6 = qword_280894088;
  v7 = [objc_opt_self() sharedPreferences];
  v8 = [v7 languageCode];

  if (v8)
  {
    v9 = sub_2723FE5B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v6, a1, a2, v9, v11, a3);
}

uint64_t sub_2723E6C70()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30[-v3];
  v5 = sub_2723FE434();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
  if (!v9)
  {
    v33 = 0u;
    v34 = 0u;
LABEL_9:
    sub_2723EF760(&v33);
    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v11 = sub_2723FE574();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_9;
  }

  sub_2723D5A74(&v33, &v35);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v14 = sub_2723FEC34();
  *&v33 = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:&v33];
  swift_unknownObjectRelease();
  v16 = v33;
  if (!v15)
  {
    v20 = v16;
    v21 = sub_2723FE164();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    return MEMORY[0x277D84F90];
  }

  v17 = sub_2723FE224();
  v19 = v18;

  sub_2723FE054();
  swift_allocObject();
  sub_2723FE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894128, &qword_272400430);
  sub_2723F0414(&qword_280894138, qword_280894140, &protocol conformance descriptor for VCVocabularyEntry, MEMORY[0x277D83978]);
  sub_2723FE034();

  v23 = v33;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v24 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v25 = sub_2723E4FAC(8);
  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2723D9360(v24[7] + *(v2 + 72) * v25, v4, &qword_280893F50, &qword_2723FFCE8);

  (*(v6 + 32))(v8, v4 + *(v1 + 48), v5);

  v27 = sub_2723FE424();
  v28 = sub_2723FE884();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = *(v23 + 16);

    _os_log_impl(&dword_2723CB000, v27, v28, "VCSettings._rawVocabularyEntries getter called. Count: %{public}ld", v29, 0xCu);
    MEMORY[0x2743C8040](v29, -1, -1);
    sub_2723CE0C0(v17, v19);
  }

  else
  {
    sub_2723CE0C0(v17, v19);
  }

  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  return v23;
}

uint64_t sub_2723E718C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_2723E7238(uint64_t a1)
{
  v2 = v1;
  v33 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30[-1] - v6);
  v8 = sub_2723FE434();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v12 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v13 = sub_2723E4FAC(8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2723D9360(v12[7] + *(v5 + 72) * v13, v7, &qword_280893F50, &qword_2723FFCE8);

  (*(v9 + 32))(v11, v7 + *(v4 + 48), v8);

  v15 = sub_2723FE424();
  v16 = sub_2723FE884();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&dword_2723CB000, v15, v16, "VCSettings._rawVocabularyEntries setter called. Count: %{public}ld", v17, 0xCu);
    MEMORY[0x2743C8040](v17, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  sub_2723FE084();
  swift_allocObject();
  sub_2723FE074();
  *&v32[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894128, &qword_272400430);
  sub_2723F0414(&qword_280894130, &qword_280893EB8, &protocol conformance descriptor for VCVocabularyEntry, MEMORY[0x277D83948]);
  v18 = sub_2723FE064();
  v20 = v19;

  v21 = objc_opt_self();
  v22 = sub_2723FE214();
  v30[0] = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:v30];

  v24 = v30[0];
  if (v23)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
    sub_2723D5A74(v31, v32);
    v25 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
    if (v25)
    {
      sub_2723D9230(v32, v31);
      v26 = v25;
      sub_2723E88C8(v31, 7u);
      sub_2723CE0C0(v18, v20);

      sub_2723EF760(v31);
    }

    else
    {
      sub_2723CE0C0(v18, v20);
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v27 = v24;
    v28 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v18, v20);
  }
}

uint64_t sub_2723E76D4(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        if (qword_280893D98 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894018;
        goto LABEL_35;
      }

      if (a1 == 8)
      {
        if (qword_280893D90 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894010;
        goto LABEL_35;
      }
    }

    else
    {
      if (a1 == 5)
      {
        if (qword_280893D88 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894008;
        goto LABEL_35;
      }

      if (a1 == 6)
      {
        if (qword_280893DB8 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894038;
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        if (qword_280893DA8 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894028;
      }

      else
      {
        if (qword_280893DA0 != -1)
        {
          swift_once();
        }

        v2 = &qword_280894020;
      }

LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (a1 == 2)
    {
      if (qword_280893DB0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280894030;
      goto LABEL_35;
    }

    if (a1 == 3)
    {
      if (qword_280893DC0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280894040;
      goto LABEL_35;
    }
  }

  return v1;
}

unint64_t sub_2723E7934(unsigned __int8 a1)
{
  v1 = 0xD000000000000014;
  if (a1 <= 4u)
  {
    v5 = 0xD00000000000001BLL;
    v6 = 0xD000000000000018;
    if (a1 != 3)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    v3 = 0xD000000000000017;
    if (a1 != 9)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

VoiceControl::VCEngine_optional __swiftcall VCEngine.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

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

uint64_t VCEngine.rawValue.getter()
{
  if (*v0)
  {
    return 0x726173617571;
  }

  else
  {
    return 0x79636167656CLL;
  }
}

uint64_t sub_2723E7AF8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726173617571;
  }

  else
  {
    v2 = 0x79636167656CLL;
  }

  if (*a2)
  {
    v3 = 0x726173617571;
  }

  else
  {
    v3 = 0x79636167656CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2723FEC44();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2723E7B78()
{
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723E7BE8(uint64_t a1)
{
  sub_2723FE634();
}

uint64_t sub_2723E7C3C(uint64_t a1)
{
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723E7CA8@<X0>(char *a2@<X8>)
{
  v3 = sub_2723FEB64();

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

void sub_2723E7D08(uint64_t *a1@<X8>)
{
  v2 = 0x79636167656CLL;
  if (*v1)
  {
    v2 = 0x726173617571;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

VoiceControl::RXDebugAutomationMode_optional __swiftcall RXDebugAutomationMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

VoiceControl::VCOverlayType_optional __swiftcall VCOverlayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCOverlayType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 1701736270;
    v6 = 0x656C4564656D614ELL;
    if (v1 != 2)
    {
      v6 = 0x64657265626D754ELL;
    }

    if (*v0)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000011;
    if (v1 != 7)
    {
      v3 = 0xD000000000000012;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    if (*v0 <= 5u)
    {
      return 0x64657265626D754ELL;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2723E8008()
{
  v1 = *v0;
  sub_2723FEC94();
  sub_2723E69CC(v3, v1);
  return sub_2723FECB4();
}

uint64_t sub_2723E8058(uint64_t a1)
{
  v2 = *v1;
  sub_2723FEC94();
  sub_2723E69CC(v4, v2);
  return sub_2723FECB4();
}

uint64_t sub_2723E80A8@<X0>(uint64_t *a1@<X8>)
{
  result = VCOverlayType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2723E80E0(id result, uint64_t a2)
{
  if (a2)
  {
    v3 = &v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_prefDomain];
    *v3 = result;
    v3[1] = a2;
    v4 = objc_opt_self();

    v5 = [v4 processInfo];
    v6 = *v3;
    v7 = v3[1];

    LOBYTE(v6) = _sSo13NSProcessInfoC12VoiceControlE23canReadPreferenceDomainySbSSF_0(v6, v7);

    v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_canReadDomain] = v6 & 1;
    v8 = [v4 processInfo];
    v9 = *v3;
    v10 = v3[1];

    LOBYTE(v9) = _sSo13NSProcessInfoC12VoiceControlE24canWritePreferenceDomainySbSSF_0(v9, v10);

    v2[OBJC_IVAR____TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults_canWriteDomain] = v9 & 1;
    v11 = sub_2723FE574();

    v13.receiver = v2;
    v13.super_class = type metadata accessor for VCUserDefaults();
    v12 = objc_msgSendSuper2(&v13, sel_initWithSuiteName_, v11);

    if (v12)
    {
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2723E842C(unsigned __int8 a1)
{
  sub_2723E7934(a1);
  v2 = sub_2723FE574();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2723EF760(v34);
      return v30;
    }
  }

  else
  {
    sub_2723EF760(&v32);
  }

  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2723EF760(v34);
      return v30 == 1;
    }
  }

  else
  {
    sub_2723EF760(&v32);
  }

  sub_2723D9360(v34, &v32, &qword_280893F40, &unk_272400070);
  if (!*(&v33 + 1))
  {
    sub_2723EF760(v34);
    v13 = &v32;
LABEL_35:
    sub_2723EF760(v13);
    return 2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = v34;
    goto LABEL_35;
  }

  result = v30;
  v5 = HIBYTE(v31) & 0xF;
  v6 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v7 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    sub_2723EF760(v34);

    return 0;
  }

  if ((v31 & 0x1000000000000000) == 0)
  {
    if ((v31 & 0x2000000000000000) != 0)
    {
      *&v32 = v30;
      *(&v32 + 1) = v31 & 0xFFFFFFFFFFFFFFLL;
      if (v30 == 43)
      {
        if (v5)
        {
          if (--v5)
          {
            v9 = 0;
            v20 = &v32 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v5)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_88:
        __break(1u);
        return result;
      }

      if (v30 != 45)
      {
        if (v5)
        {
          v9 = 0;
          v25 = &v32;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v5)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v5)
      {
        if (--v5)
        {
          v9 = 0;
          v14 = &v32 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v5)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        result = (v31 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2723FEA94();
      }

      v8 = *result;
      if (v8 == 43)
      {
        if (v6 >= 1)
        {
          v5 = v6 - 1;
          if (v6 != 1)
          {
            v9 = 0;
            if (result)
            {
              v17 = (result + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_77;
                }

                v19 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_77;
                }

                v9 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_77;
                }

                ++v17;
                if (!--v5)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_87;
      }

      if (v8 != 45)
      {
        if (v6)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_77;
              }

              v24 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_77;
              }

              v9 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v6)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v9 = 0;
        LOBYTE(v5) = 1;
        goto LABEL_78;
      }

      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_77;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_77;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_77;
              }

              ++v10;
              if (!--v5)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v5) = 0;
LABEL_78:
          v28 = v5;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v9 = sub_2723EDE18(v30, v31, 10);
  v28 = v29;
LABEL_79:
  sub_2723EF760(v34);

  return (v28 & 1) == 0 && v9 == 1;
}

void sub_2723E88C8(uint64_t a1, unsigned __int8 a2)
{
  sub_2723D9360(a1, v11, &qword_280893F40, &unk_272400070);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_2723FEC34();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  sub_2723E7934(a2);
  v10 = sub_2723FE574();

  [v2 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_2723E8A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2723D9360(a1, v19, &qword_280893F40, &unk_272400070);
  v6 = v20;
  if (v20)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_2723FEC34();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2723FE574();
  v13 = type metadata accessor for VCUserDefaults();
  v18.receiver = v3;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, sel_setObject_forKey_, v11, v12);
  swift_unknownObjectRelease();

  v14 = sub_2723F02F8(a2, a3);
  if (v14 != 11)
  {
    v15 = sub_2723E76D4(v14);
    if (v15)
    {
      v16 = v15;
      v17 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v17, v16, 0, 0, 1u);
    }
  }
}

id sub_2723E8CEC(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for VCSettings()) init];
  qword_280894080 = result;
  return result;
}

id static VCSettings.shared.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_280894080;

  return v1;
}

void sub_2723E8E04(char a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = 0x747365742ELL;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x2743C7290](v4, v5);
  v6 = type metadata accessor for VCUserDefaults();
  v7 = objc_allocWithZone(v6);
  v8 = sub_2723FE574();

  v9 = [v7 initWithSuiteName_];

  v10 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
  v11 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain) = v9;

  MEMORY[0x2743C7290](v4, v5);
  v12 = objc_allocWithZone(v6);
  v13 = sub_2723FE574();

  v14 = [v12 initWithSuiteName_];

  v15 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon;
  v16 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon) = v14;

  MEMORY[0x2743C7290](v4, v5);
  v17 = objc_allocWithZone(v6);
  v18 = sub_2723FE574();

  v19 = [v17 initWithSuiteName_];

  v20 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary;
  v21 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary);
  *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary) = v19;

  if ((a1 & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = *(v2 + v10);
  if (v22)
  {
    v23 = v22;

    v24 = sub_2723FE574();

    [v23 removePersistentDomainForName_];
  }

  v25 = *(v2 + v15);
  if (v25 && (v26 = v25, , v27 = sub_2723FE574(), , [v26 removePersistentDomainForName_], v26, v27, (v28 = *(v2 + v15)) != 0))
  {
    v29 = *(v2 + v20);
    if (v29)
    {
      v30 = v28;
      v31 = v29;

      v32 = sub_2723FE574();

      [v30 removePersistentDomainForName_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_16:
  }
}

id sub_2723E920C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_2723E92A0()
{
  result = sub_2723E92C0();
  qword_280895EC0 = result;
  return result;
}

char *sub_2723E92C0()
{
  v21 = sub_2723FE2D4();
  v0 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v3 = 13;
  sub_2723D6BE8(0, 13, 0);
  v4 = v27;
  v19 = *MEMORY[0x277CC9668];
  v18 = *(v0 + 104);
  v5 = &unk_28819F548;
  v20 = v0 + 104;
  v6 = (v0 + 8);
  do
  {
    v7 = v21;
    v18(v2, v19, v21);

    v8 = sub_2723FE2C4();
    v10 = v9;
    (*v6)(v2, v7);
    v26[0] = v8;
    v26[1] = v10;
    v24 = 45;
    v25 = 0xE100000000000000;
    v22 = 95;
    v23 = 0xE100000000000000;
    sub_2723CD24C();
    v11 = sub_2723FE984();
    v13 = v12;

    v27 = v4;
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2723D6BE8((v14 > 1), v15 + 1, 1);
      v4 = v27;
    }

    *(v4 + 16) = v15 + 1;
    v16 = v4 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
    v5 += 16;
    --v3;
  }

  while (v3);
  swift_arrayDestroy();
  v26[0] = v4;

  sub_2723D61B0(v26);

  return v26[0];
}

char *sub_2723E9548()
{
  result = sub_2723E9568();
  qword_280895EC8 = result;
  return result;
}

char *sub_2723E9568()
{
  v26 = sub_2723FE2D4();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DD0 != -1)
  {
    swift_once();
  }

  v22 = qword_280895EC0;
  v32 = MEMORY[0x277D84F90];
  v3 = 8;
  sub_2723D6BE8(0, 8, 0);
  v4 = v32;
  v25 = *MEMORY[0x277CC9668];
  v6 = *(v0 + 104);
  v5 = v0 + 104;
  v7 = &unk_28819F638;
  v23 = (v5 - 96);
  v24 = v6;
  do
  {
    v8 = v26;
    v9 = v5;
    v24(v2, v25, v26);

    v10 = sub_2723FE2C4();
    v12 = v11;
    (*v23)(v2, v8);
    v31[0] = v10;
    v31[1] = v12;
    v29 = 45;
    v30 = 0xE100000000000000;
    v27 = 95;
    v28 = 0xE100000000000000;
    sub_2723CD24C();
    v13 = sub_2723FE984();
    v15 = v14;

    v32 = v4;
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_2723D6BE8((v16 > 1), v17 + 1, 1);
      v4 = v32;
    }

    *(v4 + 16) = v17 + 1;
    v18 = v4 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v15;
    v7 += 16;
    --v3;
    v5 = v9;
  }

  while (v3);
  swift_arrayDestroy();
  v31[0] = v4;

  sub_2723D61B0(v31);

  v19 = v31[0];
  v31[0] = v22;

  sub_2723DD0F4(v19);
  return v31[0];
}

char *sub_2723E9850()
{
  result = sub_2723E9870();
  qword_280895ED0 = result;
  return result;
}

char *sub_2723E9870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v40 - v2);
  v4 = sub_2723FE434();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2723FE2D4();
  v7 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = AFPreferencesSupportedLanguages();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v44 = v1;
  v12 = sub_2723FE744();

  v13 = sub_2723E9E50(v12);

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  v46 = v6;
  if (v14)
  {
    v41 = v3;
    v42 = v0;
    v43 = v4;
    v56 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v14, 0);
    v15 = v56;
    v48 = *MEMORY[0x277CC9668];
    v47 = *(v7 + 13);
    v49 = v7 + 104;
    v16 = (v7 + 8);
    v40 = v13;
    v17 = v13 + 40;
    do
    {
      v18 = v50;
      v47(v9, v48, v50);

      v19 = sub_2723FE2C4();
      v21 = v20;
      (*v16)(v9, v18);
      v55[0] = v19;
      v55[1] = v21;
      v53 = 45;
      v54 = 0xE100000000000000;
      v51 = 95;
      v52 = 0xE100000000000000;
      sub_2723CD24C();
      v22 = sub_2723FE984();
      v24 = v23;

      v56 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2723D6BE8((v25 > 1), v26 + 1, 1);
        v15 = v56;
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v17 += 16;
      --v14;
    }

    while (v14);
    v0 = v42;
    v4 = v43;
    v6 = v46;
    v3 = v41;
  }

  v55[0] = v15;

  sub_2723D61B0(v55);

  v7 = v55[0];
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v28 = off_280894260;
  v29 = v45;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v30 = sub_2723E4FAC(6);
  if ((v31 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2723D9360(v28[7] + *(v44 + 72) * v30, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v29 + 32))(v6, v3 + *(v0 + 48), v4);

  v32 = sub_2723FE424();
  v33 = sub_2723FE874();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55[0] = v35;
    *v34 = 136446210;
    v53 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30, MEMORY[0x277D83958]);
    v36 = sub_2723FE524();
    v38 = sub_2723E4A00(v36, v37, v55);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2723CB000, v32, v33, "Siri supported locales: [%{public}s]", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2743C8040](v35, -1, -1);
    MEMORY[0x2743C8040](v34, -1, -1);

    (*(v29 + 8))(v46, v4);
  }

  else
  {

    (*(v29 + 8))(v6, v4);
  }

  return v7;
}

uint64_t sub_2723E9E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_2723D9230(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2723D6BE8((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2723E9F54()
{
  result = sub_2723E9F74();
  qword_280895ED8 = result;
  return result;
}

char *sub_2723E9F74()
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = (v65 - v0);
  v1 = sub_2723FE434();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v71 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2723FE2D4();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2723FE344();
  v5 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DD8 != -1)
  {
    swift_once();
  }

  v9 = sub_2723D8614(v8);

  v85 = v9;
  v10 = objc_opt_self();
  v11 = [v10 enabledLocaleIdentifiers];
  v12 = sub_2723FE744();

  sub_2723EFFE0(v12);

  v13 = [v10 disabledLocaleIdentifiers];
  v14 = sub_2723FE744();

  sub_2723EA888(v14);

  v15 = sub_2723FD81C();
  v16 = *(v15 + 16);
  v70 = v1;
  v69 = v2;
  if (v16)
  {
    v84[0] = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v16, 0);
    v17 = v84[0];
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v73 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v65[1] = v15;
    v21 = v15 + v20;
    v72 = *(v18 + 56);
    v74 = v18;
    v22 = (v18 - 8);
    do
    {
      v23 = v77;
      (v73)(v7, v21, v77);
      v24 = sub_2723FE2B4();
      v26 = v25;
      (*v22)(v7, v23);
      v84[0] = v17;
      v28 = *(v17 + 2);
      v27 = *(v17 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_2723D6BE8((v27 > 1), v28 + 1, 1);
        v17 = v84[0];
      }

      *(v17 + 2) = v28 + 1;
      v29 = &v17[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      v21 += v72;
      --v16;
    }

    while (v16);

    v1 = v70;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v30 = sub_2723EE818(v17, v85);

  if (qword_280893DE0 != -1)
  {
    swift_once();
  }

  v31 = sub_2723EE818(qword_280895ED0, v30);
  v32 = v31;
  v33 = v31[2];
  if (v33)
  {
    v34 = sub_2723D612C(v31[2], 0);
    v35 = sub_2723D7A68(v84, v34 + 4, v33, v32);
    sub_2723D8970(v84[0]);
    if (v35 != v33)
    {
LABEL_32:
      __break(1u);

      __break(1u);
      return result;
    }

    v36 = *(v34 + 2);
    if (v36)
    {
      goto LABEL_15;
    }

LABEL_21:

    v37 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v34 = MEMORY[0x277D84F90];
  v36 = *(MEMORY[0x277D84F90] + 16);
  if (!v36)
  {
    goto LABEL_21;
  }

LABEL_15:
  v83 = MEMORY[0x277D84F90];
  sub_2723D6BE8(0, v36, 0);
  v37 = v83;
  v77 = *(v78 + 104);
  v78 += 104;
  v38 = (v78 - 96);
  LODWORD(v74) = *MEMORY[0x277CC9668];
  v73 = v34;
  v39 = v34 + 40;
  do
  {
    v41 = v75;
    v40 = v76;
    (v77)(v75, v74, v76);

    v42 = sub_2723FE2C4();
    v44 = v43;
    (*v38)(v41, v40);
    v84[0] = v42;
    v84[1] = v44;
    v81 = 45;
    v82 = 0xE100000000000000;
    v79 = 95;
    v80 = 0xE100000000000000;
    sub_2723CD24C();
    v45 = sub_2723FE984();
    v47 = v46;

    v83 = v37;
    v49 = *(v37 + 16);
    v48 = *(v37 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_2723D6BE8((v48 > 1), v49 + 1, 1);
      v37 = v83;
    }

    *(v37 + 16) = v49 + 1;
    v50 = v37 + 16 * v49;
    *(v50 + 32) = v45;
    *(v50 + 40) = v47;
    v39 += 16;
    --v36;
  }

  while (v36);

  v1 = v70;
LABEL_22:
  v84[0] = v37;

  sub_2723D61B0(v84);
  v51 = v69;
  v52 = v71;

  v34 = v84[0];
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v53 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v54 = sub_2723E4FAC(6);
  if ((v55 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v56 = v67;
  sub_2723D9360(v53[7] + *(v66 + 72) * v54, v67, &qword_280893F50, &qword_2723FFCE8);

  (*(v51 + 32))(v52, v56 + *(v68 + 48), v1);

  v57 = sub_2723FE424();
  v58 = sub_2723FE874();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v84[0] = v60;
    *v59 = 136446210;
    v81 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30, MEMORY[0x277D83958]);
    v61 = sub_2723FE524();
    v63 = sub_2723E4A00(v61, v62, v84);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_2723CB000, v57, v58, "Quasar locales: [%{public}s]", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x2743C8040](v60, -1, -1);
    MEMORY[0x2743C8040](v59, -1, -1);

    (*(v51 + 8))(v71, v1);
  }

  else
  {

    (*(v51 + 8))(v52, v1);
  }

  return v34;
}

uint64_t sub_2723EA888(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_2723EF3EC(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_2723EA904()
{
  result = sub_2723EA924();
  qword_280895EE0 = result;
  return result;
}

uint64_t sub_2723EA924()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v19 - v2);
  v4 = sub_2723FE434();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v9 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2723E4FAC(6);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2723D9360(v9[7] + *(v1 + 72) * result, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v5 + 32))(v8, v3 + *(v0 + 48), v4);
  v11 = sub_2723FE424();
  v12 = sub_2723FE874();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = MEMORY[0x277D84F90];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v13;
    v20 = v15;
    *v14 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30, MEMORY[0x277D83958]);
    v16 = sub_2723FE524();
    v18 = sub_2723E4A00(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2723CB000, v11, v12, "Legacy locales: [%{public}s]", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2743C8040](v15, -1, -1);
    MEMORY[0x2743C8040](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return MEMORY[0x277D84F90];
}

char *sub_2723EAC4C()
{
  result = sub_2723EAC6C();
  qword_280895EE8 = result;
  return result;
}

char *sub_2723EAC6C()
{
  v25 = sub_2723FE2D4();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2723F0050(1005);
  v4 = *(v3 + 2);
  if (v4)
  {
    v31 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v4, 0);
    v5 = v31;
    v24 = *MEMORY[0x277CC9668];
    v7 = *(v0 + 104);
    v6 = v0 + 104;
    v22 = (v6 - 96);
    v23 = v7;
    v21[1] = v3;
    v8 = v3 + 40;
    do
    {
      v9 = v25;
      v10 = v6;
      v23(v2, v24, v25);

      v11 = sub_2723FE2C4();
      v13 = v12;
      (*v22)(v2, v9);
      v30[0] = v11;
      v30[1] = v13;
      v28 = 45;
      v29 = 0xE100000000000000;
      v26 = 95;
      v27 = 0xE100000000000000;
      sub_2723CD24C();
      v14 = sub_2723FE984();
      v16 = v15;

      v31 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2723D6BE8((v17 > 1), v18 + 1, 1);
        v5 = v31;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v8 += 16;
      --v4;
      v6 = v10;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v30[0] = v5;

  sub_2723D61B0(v30);

  return v30[0];
}

uint64_t VCSettings.supportedLocales.getter()
{
  if (qword_280893E00 != -1)
  {
    swift_once();
  }
}

char *sub_2723EAF6C()
{
  result = sub_2723EAF8C();
  qword_280894088 = result;
  return result;
}

char *sub_2723EAF8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v51 - v2);
  v4 = sub_2723FE434();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE2D4();
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  MEMORY[0x28223BE20](v8);
  v60 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_2723D8614(v11);

  if (qword_280893DF8 != -1)
  {
    swift_once();
  }

  v14 = sub_2723D8614(v13);

  v15 = sub_2723EEC28(v14, v12);

  v69 = v15;
  if (qword_280893DF0 != -1)
  {
    swift_once();
  }

  sub_2723EFFE0(v16);

  v17 = v69;
  v18 = v69[2];
  v55 = v1;
  v56 = v5;
  if (v18)
  {
    v19 = sub_2723D612C(v18, 0);
    v20 = sub_2723D7A68(v68, v19 + 4, v18, v17);
    sub_2723D8970(v68[0]);
    if (v20 == v18)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_11:
  v21 = v19[2];
  v57 = v7;
  if (v21)
  {
    v52 = v3;
    v53 = v0;
    v54 = v4;
    v67 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v21, 0);
    v22 = v67;
    v59 = *MEMORY[0x277CC9668];
    v58 = *(v62 + 104);
    v62 += 104;
    v23 = (v62 - 96);
    v51[1] = v19;
    v24 = v19 + 5;
    do
    {
      v26 = v60;
      v25 = v61;
      v58(v60, v59, v61);

      v27 = sub_2723FE2C4();
      v29 = v28;
      (*v23)(v26, v25);
      v68[0] = v27;
      v68[1] = v29;
      v65 = 45;
      v66 = 0xE100000000000000;
      v63 = 95;
      v64 = 0xE100000000000000;
      sub_2723CD24C();
      v30 = sub_2723FE984();
      v32 = v31;

      v67 = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2723D6BE8((v33 > 1), v34 + 1, 1);
        v22 = v67;
      }

      *(v22 + 16) = v34 + 1;
      v35 = v22 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v24 += 2;
      --v21;
    }

    while (v21);

    v4 = v54;
    v7 = v57;
    v0 = v53;
    v3 = v52;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v68[0] = v22;

  sub_2723D61B0(v68);
  v36 = v56;

  v37 = v68[0];
  v38 = qword_280893E18;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v40 = sub_2723E4FAC(6);
  if ((v41 & 1) == 0)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2723D9360(v39[7] + *(v55 + 72) * v40, v3, &qword_280893F50, &qword_2723FFCE8);

  (*(v36 + 32))(v7, v3 + *(v0 + 48), v4);
  v42 = sub_2723FE424();
  v43 = sub_2723FE874();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68[0] = v45;
    *v44 = 136446210;
    v65 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723F0398(&qword_280894118, &qword_280893E70, &unk_2723FFA30, MEMORY[0x277D83958]);
    v46 = sub_2723FE524();
    v48 = v47;

    v49 = sub_2723E4A00(v46, v48, v68);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2723CB000, v42, v43, "Supported locales: [%{public}s]", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x2743C8040](v45, -1, -1);
    MEMORY[0x2743C8040](v44, -1, -1);

    (*(v36 + 8))(v57, v4);
  }

  else
  {

    (*(v36 + 8))(v7, v4);
  }

  return v37;
}

uint64_t sub_2723EB6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v76 = a6;
  v74 = a5;
  v11 = sub_2723FE2D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  if (a3)
  {
    v15 = objc_opt_self();

    v16 = sub_2723FE734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2723FFC60;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v18 = sub_2723FE734();

    v19 = [v15 preferredLocalizationsFromArray:v16 forPreferences:v18];

    v20 = sub_2723FE744();
    if (*(v20 + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = objc_opt_self();
    v38 = sub_2723FE734();
    v39 = sub_2723FE734();
    v40 = [v37 preferredLocalizationsFromArray:v38 forPreferences:v39];

    v41 = sub_2723FE744();
    if (*(v41 + 16))
    {
LABEL_3:
      v78 = a3;
      v79 = a7;

      v21 = *MEMORY[0x277CC9668];
      v22 = *(v12 + 104);
      v77 = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v22(v14, v21, v11);
      v23 = sub_2723FE2C4();
      v25 = v24;

      v26 = *(v12 + 8);
      v26(v14, v11);
      v86 = v23;
      v87 = v25;
      v84 = 45;
      v85 = 0xE100000000000000;
      v82 = 95;
      v83 = 0xE100000000000000;
      sub_2723CD24C();
      v80 = sub_2723FE984();
      v81 = v27;

      v28 = MEMORY[0x277D837D0];
      v73 = v21;
      v72 = v22;
      v22(v14, v21, v11);
      v29 = sub_2723FE2C4();
      v31 = v30;
      v69 = v14;
      v70 = v11;
      v71 = v26;
      v26(v14, v11);
      v86 = v29;
      v87 = v31;
      v84 = 45;
      v85 = 0xE100000000000000;
      v82 = 95;
      v83 = 0xE100000000000000;
      v32 = sub_2723CD24C();
      v66 = v32;
      v67 = v32;
      v64 = v28;
      v65 = v32;
      v33 = sub_2723FE984();
      v35 = v34;

      if (v78)
      {
LABEL_4:

        return sub_2723FE2A4();
      }

      v78 = v33;
      v68 = v35;
      v43 = v69;
      v42 = v70;
      v72(v69, v73, v70);
      v44 = sub_2723FE2C4();
      v46 = v45;
      v71(v43, v42);
      v86 = v44;
      v87 = v46;
      v84 = 45;
      v85 = 0xE100000000000000;
      v82 = 95;
      v83 = 0xE100000000000000;
      v66 = v32;
      v67 = v32;
      v64 = v28;
      v65 = v32;
      v47 = sub_2723FE984();
      v49 = v48;

      if (v80 == v47 && v81 == v49)
      {

        v51 = v68;
        v52 = v78;
      }

      else
      {
        v53 = sub_2723FEC44();

        v51 = v68;
        v52 = v78;
        if ((v53 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v86 = v52;
      v87 = v51;
      MEMORY[0x28223BE20](v50);
      v66 = &v86;
      if ((sub_2723E718C(sub_2723F0544, &v64, v75) & 1) != 0 && v76)
      {
        v55 = v69;
        v54 = v70;
        v72(v69, v73, v70);
        v56 = sub_2723FE2C4();
        v58 = v57;
        v59 = v55;
        v60 = v78;
        v71(v59, v54);
        v86 = v56;
        v87 = v58;
        v84 = 45;
        v85 = 0xE100000000000000;
        v82 = 95;
        v83 = 0xE100000000000000;
        v66 = v32;
        v67 = v32;
        v64 = v28;
        v65 = v32;
        v61 = sub_2723FE984();
        v63 = v62;

        if (v61 == v60 && v63 == v51)
        {
        }

        else
        {
          sub_2723FEC44();
        }
      }

      goto LABEL_4;
    }
  }

  return sub_2723FE2A4();
}

VoiceControl::VCEngine_optional __swiftcall VCSettings.engine(forLocale:)(Swift::String forLocale)
{
  object = forLocale._object;
  countAndFlagsBits = forLocale._countAndFlagsBits;
  v38 = v1;
  v4 = sub_2723FE2D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DE8 != -1)
  {
    swift_once();
  }

  v8 = qword_280895ED8;
  v9 = *(v5 + 104);
  v35 = *MEMORY[0x277CC9668];
  v34 = v9;
  v9(v7);
  v36 = countAndFlagsBits;
  v37 = object;
  v10 = sub_2723FE2C4();
  v12 = v11;
  v33 = *(v5 + 8);
  v33(v7, v4);
  v43 = v10;
  v44 = v12;
  v41 = 45;
  v42 = 0xE100000000000000;
  v39 = 95;
  v40 = 0xE100000000000000;
  v13 = sub_2723CD24C();
  v31 = v13;
  v28 = MEMORY[0x277D837D0];
  v29 = v13;
  v14 = 1;
  v15 = sub_2723FE984();
  v17 = v16;

  v43 = v15;
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v30 = &v43;
  LOBYTE(v15) = sub_2723E718C(sub_2723EF744, &v28, v8);

  if ((v15 & 1) == 0)
  {
    if (qword_280893DF0 != -1)
    {
      swift_once();
    }

    v20 = qword_280895EE0;
    v34(v7, v35, v4);
    v21 = sub_2723FE2C4();
    v23 = v22;
    v33(v7, v4);
    v43 = v21;
    v44 = v23;
    v41 = 45;
    v42 = 0xE100000000000000;
    v39 = 95;
    v40 = 0xE100000000000000;
    v30 = v13;
    v31 = v13;
    v29 = v13;
    v28 = MEMORY[0x277D837D0];
    v24 = sub_2723FE984();
    v26 = v25;

    v43 = v24;
    v44 = v26;
    MEMORY[0x28223BE20](v27);
    v30 = &v43;
    LOBYTE(v20) = sub_2723E718C(sub_2723F0544, &v28, v20);

    if (v20)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *v38 = v14;
  return result;
}

uint64_t sub_2723EC124()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_2723EF760(&v8);
    return 0;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall VCSettings.setPreferredLocale(_:)(Swift::String_optional a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    if (a1.value._object)
    {
      v3 = MEMORY[0x277D837D0];
      object = a1.value._object;
    }

    else
    {
      a1.value._countAndFlagsBits = 0;
      object = 0;
      v3 = 0;
      v6[2] = 0;
    }

    v6[0] = a1.value._countAndFlagsBits;
    v6[1] = object;
    v6[3] = v3;
    v5 = v2;

    sub_2723E88C8(v6, 1u);

    sub_2723EF760(v6);
  }
}

VoiceControl::VCOverlayType VCSettings.alwaysShowOverlayType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v3)
  {
    v11 = 0;
    v12 = 0u;
LABEL_11:
    result = sub_2723EF760(&v11);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2723FE574();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    countAndFlagsBits = 0;
    goto LABEL_13;
  }

  result = VCOverlayType.init(rawValue:)(v9).value;
  countAndFlagsBits = v11._countAndFlagsBits;
  if (LOBYTE(v11._countAndFlagsBits) == 9)
  {
    countAndFlagsBits = 0;
  }

LABEL_13:
  *a1 = countAndFlagsBits;
  return result;
}

_BYTE *VCSettings.alwaysShowOverlayType.setter(_BYTE *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = *result;
    if (v3 <= 3)
    {
      v10 = 0xE400000000000000;
      v11 = 1701736270;
      v12 = 0xED000073746E656DLL;
      v13 = 0x656C4564656D614ELL;
      if (v3 != 2)
      {
        v13 = 0x64657265626D754ELL;
        v12 = 0xEC00000064697247;
      }

      if (*result)
      {
        v11 = 0xD000000000000010;
        v10 = 0x8000000272400C10;
      }

      if (*result <= 1u)
      {
        v9 = v11;
      }

      else
      {
        v9 = v13;
      }

      if (*result > 1u)
      {
        v10 = v12;
      }
    }

    else
    {
      v4 = 0xD000000000000012;
      v5 = 0x8000000272400C60;
      v6 = 0x8000000272400C80;
      v7 = 0xD000000000000011;
      if (v3 != 7)
      {
        v7 = 0xD000000000000012;
        v6 = 0x8000000272400CA0;
      }

      if (v3 != 6)
      {
        v4 = v7;
        v5 = v6;
      }

      v8 = 0xED00007364726F57;
      if (v3 != 4)
      {
        v8 = 0xED000073656E694CLL;
      }

      if (*result <= 5u)
      {
        v9 = 0x64657265626D754ELL;
      }

      else
      {
        v9 = v4;
      }

      if (*result <= 5u)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }
    }

    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v14 = v2;
    sub_2723E88C8(v15, 0);

    return sub_2723EF760(v15);
  }

  return result;
}

uint64_t (*VCSettings.alwaysShowOverlayType.modify(uint64_t a1))()
{
  *a1 = v1;
  VCSettings.alwaysShowOverlayType.getter((a1 + 8));
  return sub_2723EC618;
}

_BYTE *sub_2723EC618(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return VCSettings.alwaysShowOverlayType.setter(v2);
}

uint64_t VCSettings.showTextResponseUponRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 1;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

void (*VCSettings.showTextResponseUponRecognition.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.showTextResponseUponRecognition.getter() & 1;
  return sub_2723EC7F0;
}

uint64_t VCSettings.playSoundUponRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 0;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v6;
  }

  return result;
}

void (*VCSettings.playSoundUponRecognition.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.playSoundUponRecognition.getter() & 1;
  return sub_2723EC988;
}

uint64_t sub_2723EC990()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_2723EF760(&v8);
    return 3;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v6 >= 4)
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

uint64_t VCSettings.showUserHints.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = 3;
    if ((result & 1) == 0)
    {
      v3 = 0;
    }

    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v3;
    v4 = v2;
    sub_2723E88C8(v5, 6u);

    return sub_2723EF760(v5);
  }

  return result;
}

void (*VCSettings.showUserHints.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_2723EC990() == 3;
  return sub_2723ECBC0;
}

void sub_2723ECBC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = 3;
    if (!v1[40])
    {
      v3 = 0;
    }

    *(v1 + 3) = MEMORY[0x277D83B88];
    *v1 = v3;
    v4 = v2;
    sub_2723E88C8(v1, 6u);

    sub_2723EF760(v1);
  }

  free(v1);
}

uint64_t VCSettings.syncVocabularyEntries.getter()
{
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v2)
    {
      v3 = v2;
      v4 = sub_2723FE574();
      v5 = [v3 objectForKey_];

      if (v5)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v6 = 0u;
        v7 = 0u;
      }

      v8 = v6;
      v9 = v7;
      if (*(&v7 + 1))
      {
        if (swift_dynamicCast())
        {
          return v6;
        }

        return 1;
      }
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    sub_2723EF760(&v8);
    return 1;
  }

  return result;
}

id VCSettings.syncVocabularyEntries.setter(char a1)
{
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v4)
    {
      v7 = MEMORY[0x277D839B0];
      v6[0] = a1 & 1;
      v5 = v4;
      sub_2723E88C8(v6, 8u);

      return sub_2723EF760(v6);
    }
  }

  return result;
}

void (*VCSettings.syncVocabularyEntries.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.syncVocabularyEntries.getter() & 1;
  return sub_2723ECE74;
}

void sub_2723ECE74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  if ([objc_opt_self() vocabularySyncEnabled])
  {
    v3 = *(v1[4] + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v3)
    {
      v1[3] = MEMORY[0x277D839B0];
      *v1 = v2;
      v4 = v3;
      sub_2723E88C8(v1, 8u);

      sub_2723EF760(v1);
    }
  }

  free(v1);
}

uint64_t VCSettings.persistentSleepState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_2723EF760(&v8);
    return 1;
  }

  v2 = v1;
  v3 = sub_2723FE574();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

char *sub_2723ED020(char *result, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = *(*a2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v5)
  {
    v7 = *result;
    v10 = MEMORY[0x277D839B0];
    v9[0] = v7;
    v8 = v5;
    sub_2723E88C8(v9, a5);

    return sub_2723EF760(v9);
  }

  return result;
}

uint64_t sub_2723ED09C(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    v7 = MEMORY[0x277D839B0];
    v6[0] = result & 1;
    v5 = v3;
    sub_2723E88C8(v6, a2);

    return sub_2723EF760(v6);
  }

  return result;
}

void (*VCSettings.persistentSleepState.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = VCSettings.persistentSleepState.getter() & 1;
  return sub_2723ED184;
}

void sub_2723ED18C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *a1;
  v4 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v4)
  {
    v6 = v3[40];
    *(v3 + 3) = MEMORY[0x277D839B0];
    *v3 = v6;
    v7 = v4;
    sub_2723E88C8(v3, a3);

    sub_2723EF760(v3);
  }

  free(v3);
}

uint64_t VCSettings.carPlayDebugOverlayUIEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2723E842C(0xAu);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t VCSettings.automationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_11:
    result = sub_2723EF760(&v11);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_2723FE574();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (v9 >= 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

LABEL_13:
  *a1 = v8;
  return result;
}

unsigned __int8 *VCSettings.automationMode.setter(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (v2)
  {
    v3 = *result;
    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v3;
    v4 = v2;
    sub_2723E88C8(v5, 4u);

    return sub_2723EF760(v5);
  }

  return result;
}

void (*VCSettings.automationMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  VCSettings.automationMode.getter((v3 + 40));
  return sub_2723ED464;
}

void sub_2723ED464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 32) + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon);
  if (v2)
  {
    v3 = *(v1 + 40);
    v1[3] = MEMORY[0x277D83B88];
    *v1 = v3;
    v4 = v2;
    sub_2723E88C8(v1, 4u);

    sub_2723EF760(v1);
  }

  free(v1);
}

void *sub_2723ED4E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894070, &qword_272400420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2723ED554(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2723FEC94();
  sub_2723FE634();
  v8 = sub_2723FECB4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2723FEC44() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2723ED904(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2723ED6A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA14();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2723FEC94();
      sub_2723FE634();
      result = sub_2723FECB4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2723ED904(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2723ED6A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2723EDA84();
      goto LABEL_16;
    }

    sub_2723EDBE0(v8 + 1);
  }

  v10 = *v4;
  sub_2723FEC94();
  sub_2723FE634();
  result = sub_2723FECB4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2723FEC44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2723FEC74();
  __break(1u);
  return result;
}

void *sub_2723EDA84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  v2 = *v0;
  v3 = sub_2723FEA04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2723EDBE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA14();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2723FEC94();

      sub_2723FE634();
      result = sub_2723FECB4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unsigned __int8 *sub_2723EDE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2723FE6E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2723EE3A4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2723FEA94();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2723EE3A4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2723FE6F4();
  v6 = sub_2723EE424(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2723EE424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2723FE954();
    if (!v9 || (v10 = v9, v11 = sub_2723ED4E0(v9, 0), v12 = sub_2723EE57C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2723FE624();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2723FE624();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2723FEA94();
LABEL_4:

  return sub_2723FE624();
}

unint64_t sub_2723EE57C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2723EE79C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2723FE6B4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2723FEA94();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2723EE79C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2723FE694();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2723EE79C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2723FE6C4();
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
    v5 = MEMORY[0x2743C72D0](15, a1 >> 16);
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

unint64_t *sub_2723EE818(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2723EE9B8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2723F03E0(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2743C8040](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_2723EE9B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_2723FEC94();

          sub_2723FE634();
          v13 = sub_2723FECB4();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_2723FEC44() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2723EF1C8(v25, a2, v24, a4);
}

unint64_t *sub_2723EEB98(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2723EEDEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2723EEC28(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2723EEDEC((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2723EEB98(v11, v6, a2, a1);

    MEMORY[0x2743C8040](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2723EEDEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_2723FEC94();

      sub_2723FE634();
      v26 = sub_2723FECB4();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_2723FEC44() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2723EF1C8(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_2723FEC94();

      sub_2723FE634();
      v39 = sub_2723FECB4();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_2723FEC44() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2723EF1C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894120, &qword_272400428);
  result = sub_2723FEA24();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2723FEC94();

    sub_2723FE634();
    result = sub_2723FECB4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2723EF3EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2723FEC94();
  sub_2723FE634();
  v6 = sub_2723FECB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2723FEC44() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2723EDA84();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2723EF528(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_2723EF528(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2723FE9D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2723FEC94();

        sub_2723FE634();
        v10 = sub_2723FECB4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2723EF6EC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2723FEC44() & 1;
  }
}

uint64_t sub_2723EF760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F40, &unk_272400070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2723EF7CC()
{
  result = qword_2808940A0;
  if (!qword_2808940A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940A0);
  }

  return result;
}

unint64_t sub_2723EF868()
{
  result = qword_2808940B8;
  if (!qword_2808940B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940B8);
  }

  return result;
}

unint64_t sub_2723EF904()
{
  result = qword_2808940D0;
  if (!qword_2808940D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808940D0);
  }

  return result;
}

uint64_t sub_2723EF99C@<X0>(BOOL *a1@<X8>)
{
  result = _AXSCommandAndControlEnabled();
  *a1 = result != 0;
  return result;
}

uint64_t sub_2723EF9D4@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.alwaysShowOverlayType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2723EFA48@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.showTextResponseUponRecognition.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2723EFA94@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.playSoundUponRecognition.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2723EFAE0@<X0>(BOOL *a1@<X8>)
{
  result = sub_2723EC990();
  *a1 = result == 3;
  return result;
}

uint64_t sub_2723EFB40@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.syncVocabularyEntries.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2723EFB98@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.persistentSleepState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2723EFBE4@<X0>(_BYTE *a1@<X8>)
{
  result = VCSettings.automationMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RXDebugAutomationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RXDebugAutomationMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCOverlayType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCOverlayType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2723EFFE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_2723ED554(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

char *sub_2723F0050(uint64_t a1)
{
  v27 = sub_2723FE2D4();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2723FD1B8(a1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v6, 0);
    v7 = v33;
    v26 = *MEMORY[0x277CC9668];
    v9 = *(v2 + 104);
    v8 = v2 + 104;
    v24 = (v8 - 96);
    v25 = v9;
    v23[1] = v5;
    v10 = v5 + 40;
    do
    {
      v11 = v27;
      v12 = v8;
      v25(v4, v26, v27);

      v13 = sub_2723FE2C4();
      v15 = v14;
      (*v24)(v4, v11);
      v32[0] = v13;
      v32[1] = v15;
      v30 = 45;
      v31 = 0xE100000000000000;
      v28 = 95;
      v29 = 0xE100000000000000;
      sub_2723CD24C();
      v16 = sub_2723FE984();
      v18 = v17;

      v33 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2723D6BE8((v19 > 1), v20 + 1, 1);
        v7 = v33;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v10 += 16;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v32[0] = v7;

  sub_2723D61B0(v32);

  return v32[0];
}

unint64_t sub_2723F02F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2723FEB64();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2723F0344()
{
  result = qword_280894110;
  if (!qword_280894110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894110);
  }

  return result;
}

uint64_t sub_2723F0398(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_2723F03E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_2723EE9B8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2723F0414(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280894128, &qword_272400430);
    sub_2723F049C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723F049C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VCVocabularyEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723F04E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2723FEC44() & 1;
  }
}

uint64_t VCArrayMergeResult.caseName.getter(uint64_t a1)
{
  v3 = sub_2723FECE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_2723FECC4();
  sub_2723FECD4();
  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_2723FEA54();
  swift_getObjectType();
  result = sub_2723FEA54();
  if (v8 == result)
  {
    v10 = sub_2723FEA64();
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2723FEAE4();
      swift_unknownObjectRelease();

      v11 = v13[4];
      v12 = v13[5];
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v12)
      {
        return v11;
      }
    }

    return 7104878;
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t VCElementMergeResult.hashValue.getter()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723F0868(uint64_t a1)
{
  sub_2723FEC94();
  VCElementMergeResult.hash(into:)();
  return sub_2723FECB4();
}

uint64_t Array<A>.merge(_:trimCutoffDate:maxNumberOfIsDeletedElements:)@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v206 = a4;
  v200 = a3;
  v240 = a2;
  v261 = a1;
  v205 = a8;
  v248 = a7;
  v10 = *(a7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v264 = sub_2723FE934();
  v207 = *(v264 - 8);
  v12 = MEMORY[0x28223BE20](v264);
  v262 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v263 = &v199 - v14;
  v15 = sub_2723FE934();
  v252 = swift_getTupleTypeMetadata2();
  v256 = *(v252 - 8);
  v16 = MEMORY[0x28223BE20](v252);
  v239 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v236 = &v199 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v19 - 8);
  v235 = &v199 - v20;
  v238 = sub_2723FE294();
  v254 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v225 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2723FE934();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v245 = &v199 - v24;
  v227 = v15;
  v25 = v15;
  v26 = a5;
  v253 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v23);
  v199 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v224 = &v199 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v237 = &v199 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v223 = &v199 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v222 = &v199 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v249 = &v199 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v260 = &v199 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v258 = &v199 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v257 = &v199 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v271 = &v199 - v46;
  v228 = *(AssociatedTypeWitness - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v255 = &v199 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v199 - v50;
  v267 = *(a6 - 1);
  v52 = MEMORY[0x28223BE20](v49);
  v212 = &v199 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v221 = &v199 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v211 = &v199 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v214 = &v199 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v220 = &v199 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v265 = (&v199 - v63);
  v251 = v64;
  MEMORY[0x28223BE20](v62);
  v66 = &v199 - v65;
  v259 = swift_getTupleTypeMetadata2();
  v67 = sub_2723FE784();
  v268 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v272 = AssociatedTypeWitness;
  v270 = AssociatedConformanceWitness;
  v69 = sub_2723F2FDC(v67, AssociatedTypeWitness, a6, AssociatedConformanceWitness);

  v278 = v69;
  v70 = sub_2723FE7B4();
  v269 = v51;
  if (v70)
  {
    v71 = 0;
    v266 = (v267 + 16);
    v72 = (v267 + 56);
    v73 = (v267 + 8);
    do
    {
      v74 = sub_2723FE7A4();
      sub_2723FE764();
      if (v74)
      {
        v75 = v26;
        v76 = v26 + ((v267[80] + 32) & ~v267[80]) + *(v267 + 9) * v71;
        v77 = *(v267 + 2);
        v77(v66, v76, a6);
        v78 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v75 = v26;
        v80 = sub_2723FEA74();
        if (v251 != 8)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          result = sub_2723FEAF4();
          __break(1u);
          return result;
        }

        v279[0] = v80;
        v77 = *v266;
        (*v266)(v66, v279, a6);
        swift_unknownObjectRelease();
        v78 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      sub_2723FEA44();
      v79 = v271;
      v77(v271, v66, a6);
      (*v72)(v79, 0, 1, a6);
      sub_2723FE4E4();
      sub_2723FE504();
      (*v73)(v66, a6);
      v26 = v75;
      ++v71;
    }

    while (v78 != sub_2723FE7B4());
  }

  v81 = sub_2723FE784();
  v82 = sub_2723F2FDC(v81, v272, a6, v270);

  v277 = v82;
  v83 = v261;
  v84 = sub_2723FE7B4();
  v85 = v271;
  if (!v84)
  {
    goto LABEL_21;
  }

  v86 = 0;
  v266 = (v267 + 16);
  v87 = (v267 + 56);
  v88 = (v267 + 8);
  while (1)
  {
    v89 = sub_2723FE7A4();
    sub_2723FE764();
    if (v89)
    {
      v90 = v83 + ((v267[80] + 32) & ~v267[80]) + *(v267 + 9) * v86;
      v91 = *(v267 + 2);
      v91(v265, v90, a6);
      v92 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      goto LABEL_15;
    }

    v94 = sub_2723FEA74();
    if (v251 != 8)
    {
      goto LABEL_94;
    }

    v279[0] = v94;
    v91 = *v266;
    (*v266)(v265, v279, a6);
    swift_unknownObjectRelease();
    v92 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

LABEL_15:
    v93 = v265;
    sub_2723FEA44();
    v91(v85, v93, a6);
    (*v87)(v85, 0, 1, a6);
    sub_2723FE4E4();
    sub_2723FE504();
    (*v88)(v93, a6);
    v83 = v261;
    ++v86;
    if (v92 == sub_2723FE7B4())
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v95 = sub_2723FE784();
  v96 = v272;
  v97 = v270;
  v98 = sub_2723F2FDC(v95, v272, a6, v270);

  v276 = v98;
  v99 = sub_2723FE784();
  v100 = sub_2723F2FDC(v99, v96, a6, v97);

  v275 = v100;
  v101 = v278;
  v279[0] = v278;
  sub_2723FE4B4();
  v243 = v101;

  swift_getWitnessTable();
  v102 = sub_2723FE854();
  v279[0] = v277;
  v242 = v277;

  v103 = sub_2723FE854();
  v279[0] = v103;
  sub_2723FE844();

  swift_getWitnessTable();
  v104 = sub_2723FE824();
  v204 = v102;
  v203 = v103;
  v202 = v104;
  if ((v104 & 0xC000000000000001) != 0)
  {

    sub_2723FE9E4();
    sub_2723FE834();
    v105 = v279[0];
    v213 = v279[1];
    v106 = v279[2];
    v234 = v279[3];
    v107 = v279[4];
  }

  else
  {
    v108 = -1 << *(v104 + 32);
    v109 = *(v104 + 56);
    v213 = v104 + 56;
    v106 = ~v108;
    v110 = -v108;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    else
    {
      v111 = -1;
    }

    v107 = v111 & v109;

    v234 = 0;
    v105 = v112;
  }

  v113 = v227;
  v114 = v245;
  v115 = v249;
  v116 = v256;
  v117 = v254;
  v215 = 0;
  v246 = 0;
  v244 = (v228 + 56);
  v201 = v106;
  v118 = (v106 + 64) >> 6;
  v241 = (v228 + 16);
  v265 = (v228 + 32);
  v268 = (v267 + 56);
  v254 = (v253 + 16);
  v261 = (v267 + 48);
  v266 = (v267 + 32);
  v210 = v248 + 24;
  v247 = (v267 + 8);
  v256 = (v253 + 8);
  v232 = (v117 + 6);
  v219 = (v117 + 4);
  v209 = v248 + 32;
  v218 = (v117 + 1);
  v217 = v248 + 40;
  v216 = (v267 + 16);
  v226 = v116 + 1;
  v231 = (v228 + 8);
  v119 = v260;
  v233 = v105;
  v230 = v118;
  while ((v105 & 0x8000000000000000) == 0)
  {
    if (!v107)
    {
      v121 = v234;
      while (1)
      {
        v120 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          break;
        }

        if (v120 >= v118)
        {
          goto LABEL_72;
        }

        v107 = *(v213 + 8 * v120);
        ++v121;
        if (v107)
        {
          v234 = v120;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v120 = v234;
LABEL_38:
    v122 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    (*(v228 + 16))(v114, *(v105 + 48) + *(v228 + 72) * (v122 | (v120 << 6)), v96);
LABEL_39:
    (*v244)(v114, 0, 1, v96);
    (*v265)(v255, v114, v96);
    v123 = v257;
    sub_2723FE4F4();
    sub_2723FE4F4();
    v251 = *v268;
    v251(v119, 1, 1, a6);
    v124 = *v254;
    (*v254)(v115, v123, v113);
    v125 = *v261;
    v126 = (*v261)(v115, 1, a6);
    v259 = v125;
    v267 = v124;
    if (v126 == 1)
    {
      v127 = *v256;
      (*v256)(v119, v113);
      v253 = v127;
      (v127)(v115, v113);
      (v124)(v119, v258, v113);
      v128 = v266;
      v129 = v124;
      v130 = v119;
      v131 = v235;
    }

    else
    {
      v132 = v220;
      v133 = v115;
      v128 = v266;
      v229 = *v266;
      v229(v220, v133, a6);
      v134 = v222;
      (v124)(v222, v258, v113);
      if ((v125)(v134, 1, a6) == 1)
      {
        v135 = v128;
        v136 = *v256;
        v130 = v260;
        (*v256)(v260, v113);
        v253 = v136;
        (v136)(v134, v113);
        v128 = v135;
        v229(v130, v132, a6);
        v251(v130, 0, 1, a6);
        v131 = v235;
      }

      else
      {
        v137 = v214;
        v138 = v134;
        v139 = v229;
        v229(v214, v138, a6);
        (*(v248 + 24))(v274, v137, a6);
        v140 = v137;
        v141 = v132;
        v142 = v256;
        v130 = v260;
        if (LOBYTE(v274[0]) >= 2u)
        {
          v140 = v132;
          v141 = v214;
          if (LOBYTE(v274[0]) != 2)
          {
            goto LABEL_95;
          }
        }

        (*v247)(v140, a6);
        v253 = *v142;
        (v253)(v130, v113);
        v139(v130, v141, a6);
        v251(v130, 0, 1, a6);
        v131 = v235;
      }

      v129 = v267;
    }

    sub_2723F32E8(v240, v131);
    v143 = v238;
    if ((*v232)(v131, 1, v238) == 1)
    {
      sub_2723F3358(v131);
    }

    else
    {
      v144 = v225;
      (*v219)(v225, v131, v143);
      v145 = v130;
      v146 = v223;
      (v129)(v223, v145, v113);
      v147 = v143;
      if (v259(v146, 1, a6) == 1)
      {
        (*v218)(v144, v143);
        (v253)(v146, v113);
        v130 = v260;
        v128 = v266;
      }

      else
      {
        v148 = v266;
        v149 = v211;
        (*v266)(v211, v146, a6);
        v150 = (*(v248 + 32))(v144, a6);
        (*v247)(v149, a6);
        v151 = v144;
        v128 = v148;
        (*v218)(v151, v147);
        v130 = v260;
        if (v150)
        {
          (v253)(v260, v113);
          v251(v130, 1, 1, a6);
        }
      }
    }

    v152 = v237;
    (v129)(v237, v130, v113);
    v153 = v259;
    v154 = v259(v152, 1, a6);
    v250 = v107;
    if (v154 == 1)
    {
      v155 = v253;
      (v253)(v152, v113);
      v156 = v236;
    }

    else
    {
      v157 = v221;
      (*v128)(v221, v152, a6);
      (*(v248 + 40))(a6);
      (*v241)(v269, v255, v272);
      v158 = v271;
      (*v216)(v271, v157, a6);
      v251(v158, 0, 1, a6);
      sub_2723FE4E4();
      sub_2723FE504();
      (*v247)(v157, a6);
      v113 = v227;
      v156 = v236;
      v130 = v260;
      v155 = v253;
      v153 = v259;
    }

    v159 = *(v252 + 48);
    v160 = v267;
    (v267)(v156, v257, v113);
    (v160)(&v156[v159], v130, v113);
    if (v153(v156, 1, a6) == 1)
    {
      if (v153(&v156[v159], 1, a6) == 1)
      {
        v155(v156, v113);
        v161 = v258;
        v162 = v252;
        goto LABEL_64;
      }
    }

    else
    {
      v163 = v224;
      (v160)(v224, v156, v113);
      if (v153(&v156[v159], 1, a6) != 1)
      {
        v164 = v212;
        (*v266)(v212, &v156[v159], a6);
        v165 = sub_2723FE534();
        v166 = *v247;
        (*v247)(v164, a6);
        v166(v163, a6);
        v155(v156, v113);
        v167 = v165 ^ 1;
        v153 = v259;
        v162 = v252;
        v246 |= v167;
        goto LABEL_63;
      }

      (*v247)(v163, a6);
    }

    v162 = v252;
    (*v226)(v156, v252);
    v246 = 1;
LABEL_63:
    v161 = v258;
LABEL_64:
    v168 = *(v162 + 48);
    v169 = v239;
    v170 = v267;
    (v267)(v239, v161, v113);
    v171 = v260;
    (v170)(&v169[v168], v260, v113);
    if (v153(v169, 1, a6) == 1)
    {
      v155(v171, v113);
      v155(v161, v113);
      v155(v257, v113);
      (*v231)(v255, v272);
      v172 = v153(&v169[v168], 1, a6);
      v114 = v245;
      v105 = v233;
      v107 = v250;
      if (v172 != 1)
      {
        goto LABEL_70;
      }

      v155(v169, v113);
      goto LABEL_67;
    }

    v173 = v199;
    (v170)(v199, v169, v113);
    if (v153(&v169[v168], 1, a6) == 1)
    {
      v155(v260, v113);
      v155(v258, v113);
      v155(v257, v113);
      (*v231)(v255, v272);
      (*v247)(v173, a6);
      v114 = v245;
      v105 = v233;
      v107 = v250;
LABEL_70:
      (*v226)(v169, v252);
      v215 = 1;
LABEL_67:
      v115 = v249;
      v119 = v260;
      v118 = v230;
      v96 = v272;
      continue;
    }

    v174 = v212;
    (*v266)(v212, &v169[v168], a6);
    v175 = sub_2723FE534();
    v176 = *v247;
    (*v247)(v174, a6);
    v177 = v260;
    v155(v260, v113);
    v155(v258, v113);
    v155(v257, v113);
    v178 = v155;
    v96 = v272;
    (*v231)(v255, v272);
    v176(v199, a6);
    v119 = v177;
    v178(v169, v113);
    v215 |= v175 ^ 1;
    v114 = v245;
    v115 = v249;
    v105 = v233;
    v118 = v230;
    v107 = v250;
  }

  if (sub_2723FE9F4())
  {
    sub_2723FEC24();
    swift_unknownObjectRelease();
    v115 = v249;
    goto LABEL_39;
  }

LABEL_72:

  (*v244)(v114, 1, 1, v96);
  v179 = sub_2723D8970(v105);
  if ((v206 & 1) == 0)
  {
    v179 = sub_2723FE4C4();
    v180 = v179 > v200;
    v215 |= v180;
    v246 |= v180;
  }

  v274[0] = v275;
  MEMORY[0x28223BE20](v179);
  v267 = a6;
  v181 = sub_2723FE4E4();

  swift_getWitnessTable();
  v260 = v181;
  v182 = sub_2723FE704();
  swift_bridgeObjectRelease_n();
  v273 = v182;
  v183 = TupleTypeMetadata2;
  sub_2723FE7E4();
  swift_getWitnessTable();
  sub_2723FE864();
  v184 = v274[1];
  v185 = v274[2];
  v186 = v274[3];
  swift_unknownObjectRetain();
  v187 = sub_2723FE9A4();
  v259 = (v186 >> 1);
  v261 = (v207 + 32);
  while (1)
  {
    if (v187 == sub_2723FE9C4())
    {
      v188 = *(v183 - 8);
      (*(v188 + 56))(v262, 1, 1, v183);
    }

    else
    {
      sub_2723FE9B4();
      if (v187 < v185 || v259 <= v187)
      {
        goto LABEL_92;
      }

      v188 = *(v183 - 8);
      v189 = v262;
      (*(v188 + 16))(v262, v184 + *(v188 + 72) * v187++, v183);
      (*(v188 + 56))(v189, 0, 1, v183);
    }

    v190 = v263;
    (*v261)();
    if ((*(v188 + 48))(v190, 1, v183) == 1)
    {
      break;
    }

    v191 = *(v183 + 48);
    (*v265)(v269, v190, v272);
    v192 = &v190[v191];
    v193 = v271;
    v194 = v267;
    (*v266)(v271, v192, v267);
    (*v268)(v193, 0, 1, v194);
    sub_2723FE504();
  }

  swift_unknownObjectRelease();
  v274[0] = v276;
  sub_2723FE4D4();

  swift_getWitnessTable();
  v195 = sub_2723FE7F4();
  swift_unknownObjectRelease();

  if (v246)
  {
    v197 = v205;
    *v205 = v195;
    if ((v215 & 1) == 0)
    {
      *(v197 + 8) = 0;
      return result;
    }

    v198 = 2;
  }

  else if (v215)
  {
    v197 = v205;
    *v205 = v195;
    v198 = 1;
  }

  else
  {

    v197 = v205;
    *v205 = 0;
    v198 = 3;
  }

  *(v197 + 8) = v198;
  return result;
}

uint64_t sub_2723F2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v18 = sub_2723FE294();
  v6 = *(v18 - 8);
  v7 = MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v12 = *(a4 + 48);
  v12(a3, a4);
  v12(a3, a4);
  v13 = sub_2723FE254();
  v14 = *(v6 + 8);
  v15 = v18;
  v14(v9, v18);
  v14(v11, v15);
  return v13 & 1;
}

unint64_t sub_2723F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2723FE514();

  return sub_2723F2E54(a1, v6, a2, a3);
}

unint64_t sub_2723F2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2723FE534();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2723F2FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2723FE7B4())
  {
    sub_2723FEB44();
    v13 = sub_2723FEB34();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2723FE7B4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2723FE7A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2723FEA74();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2723F2DF8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2723F32E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2723F3358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723F33E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2723F344C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 253;
}

void sub_2723F3558(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}