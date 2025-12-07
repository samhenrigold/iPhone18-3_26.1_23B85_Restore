void sub_225C07204(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v97 = a1;
  v96 = a3;
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758, &qword_225CF2990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v10 + 16))(v12, &v13[v14], v9);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "Attempting to parse type 2 MRZ", v18, 2u);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = v97;
  v19 = v98;
  v102 = v97;
  v103 = v98;
  sub_225CCD814();
  v21 = sub_225B53BA0();
  sub_2259D8B24(&qword_27D73E770, &qword_27D73E758, &qword_225CF2990, MEMORY[0x277D85AC0]);
  v22 = sub_225CCE364();
  v25 = *(v6 + 8);
  v24 = v6 + 8;
  v23 = v25;
  v25(v8, v5);
  if (v22)
  {
    v26 = sub_225CCE604();
    v28 = sub_225CCE604() >> 14;
    if (v28 < v26 >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_225CCE5E4();
      v29 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v29);

      v19 = sub_225CCE534();
      v21 = v30;

      v23 = v95;
      swift_beginAccess();
      v31 = *(v23 + 88);
      v28 = *(v31 + 16);
      if (v28)
      {

        v32 = sub_2259F18D4(v19, v21);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 8 * v32);
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v44 = __OFADD__(v34, 1);
      v26 = v34 + 1;
      if (!v44)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = *(v23 + 88);
        *(v23 + 88) = 0x8000000000000000;
        sub_225A04D6C(v26, v19, v21, isUniquelyReferenced_nonNull_native);

        *(v23 + 88) = v100[0];
        swift_endAccess();
        v43 = 0;
LABEL_21:
        swift_beginAccess();
        *(v23 + 56) = 1;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v102 = v20;
  v103 = v19;
  sub_225CCD814();
  v35 = sub_225CCE364();
  (v23)(v8, v5);
  if ((v35 & 1) == 0)
  {
    v43 = 2;
LABEL_22:
    *v96 = v43;
    return;
  }

  v26 = sub_225CCE604();
  v28 = sub_225CCE604() >> 14;
  if (v28 < v26 >> 14)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v36 = sub_225CCE704();
  v37 = MEMORY[0x22AA6CD90](v36);
  v21 = v38;

  v23 = v95;
  swift_beginAccess();
  v39 = *(v23 + 80);
  v28 = *(v39 + 16);
  if (v28)
  {

    v40 = sub_2259F18D4(v37, v21);
    if (v41)
    {
      v42 = *(*(v39 + 56) + 8 * v40);
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v44 = __OFADD__(v42, 1);
  v26 = v42 + 1;
  if (v44)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v100[0] = *(v23 + 80);
  *(v23 + 80) = 0x8000000000000000;
  sub_225A04D6C(v26, v37, v21, v46);

  *(v23 + 80) = v100[0];
  swift_endAccess();
  v26 = sub_225CCE604();
  v28 = sub_225CCE604() >> 14;
  if (v28 < v26 >> 14)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_225CCE5E4();
  v47 = sub_225CCE704();
  v48 = MEMORY[0x22AA6CD90](v47);
  v21 = v49;

  v50 = sub_225C06108(v48, v21, 1);

  if ((v50 & 1) == 0)
  {
    v19 = 0x8000000225D25630;
    v59 = MEMORY[0x277D84F90];
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v21 = v61;
    v62 = sub_225CCE954();
    v63 = *(v62 - 8);
    v64 = v94;
    (*(v63 + 56))(v94, 1, 1, v62);
    LODWORD(v62) = (*(v63 + 48))(v64, 1, v62);
    sub_2259CB640(v64, &unk_27D73B050, &unk_225CD3AD0);
    if (v62)
    {
      LOWORD(v20) = 855;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v65 = sub_225B2C374(v59);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v65;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, v66, v101);

    v24 = v101[0];
    v27 = sub_225B29AA0(0, 1, 1, v59);
    v23 = *(v27 + 2);
    v28 = *(v27 + 3);
    v26 = v23 + 1;
    if (v23 < v28 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  v26 = sub_225CCE604();
  v28 = sub_225CCE604() >> 14;
  if (v28 < v26 >> 14)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v27 = sub_225B29AA0((v28 > 1), v26, 1, v27);
LABEL_37:
    v67 = 0xEB00000000424F44;
    *(v27 + 2) = v26;
    v68 = &v27[56 * v23];
    *(v68 + 2) = xmmword_225CFA6E0;
    *(v68 + 6) = 0xD000000000000025;
    *(v68 + 7) = v19;
    strcpy(v68 + 64, "parseTD2(_:)");
    v68[77] = 0;
    *(v68 + 39) = -5120;
    *(v68 + 10) = 240;
    *v21 = v20;
LABEL_53:
    *(v21 + 8) = v27;
    *(v21 + 16) = 0x2064696C61766E69;
    *(v21 + 24) = v67;
    *(v21 + 32) = v24;
    *(v21 + 40) = 0;
    swift_willThrow();
    return;
  }

  sub_225CCE5E4();
  v51 = sub_225CCE704();
  v52 = MEMORY[0x22AA6CD90](v51);
  v21 = v53;

  swift_beginAccess();
  v54 = *(v23 + 64);
  v55 = *(v54 + 16);
  if (v55)
  {

    v56 = sub_2259F18D4(v52, v21);
    if (v57)
    {
      v58 = *(*(v54 + 56) + 8 * v56);
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
  }

  v44 = __OFADD__(v58, 1);
  v69 = v58 + 1;
  if (v44)
  {
    __break(1u);
    goto LABEL_67;
  }

  swift_beginAccess();
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v23 + 64);
  *(v23 + 64) = 0x8000000000000000;
  sub_225A04D6C(v69, v52, v21, v70);

  *(v23 + 64) = v99;
  swift_endAccess();
  v69 = sub_225CCE604();
  v55 = sub_225CCE604() >> 14;
  if (v55 < v69 >> 14)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_225CCE5E4();
  v71 = sub_225CCE704();
  v72 = MEMORY[0x22AA6CD90](v71);
  v21 = v73;

  v74 = sub_225C06108(v72, v21, 0);

  if ((v74 & 1) == 0)
  {
    v19 = 0x8000000225D25630;
    v83 = MEMORY[0x277D84F90];
    v84 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v21 = v85;
    v86 = sub_225CCE954();
    v87 = *(v86 - 8);
    v88 = v94;
    (*(v87 + 56))(v94, 1, 1, v86);
    LODWORD(v86) = (*(v87 + 48))(v88, 1, v86);
    sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
    if (v86)
    {
      LOWORD(v20) = 856;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v89 = sub_225B2C374(v83);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v89;
    sub_225B2C4A0(v84, sub_225B2AC40, 0, v90, v100);

    v24 = v100[0];
    v27 = sub_225B29AA0(0, 1, 1, v83);
    v23 = *(v27 + 2);
    v55 = *(v27 + 3);
    v69 = v23 + 1;
    if (v23 < v55 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

  v69 = sub_225CCE604();
  v55 = sub_225CCE604() >> 14;
  if (v55 < v69 >> 14)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v27 = sub_225B29AA0((v55 > 1), v69, 1, v27);
LABEL_52:
    *(v27 + 2) = v69;
    v91 = &v27[56 * v23];
    *(v91 + 2) = xmmword_225CFA6F0;
    *(v91 + 6) = 0xD000000000000025;
    *(v91 + 7) = v19;
    strcpy(v91 + 64, "parseTD2(_:)");
    v91[77] = 0;
    *(v91 + 39) = -5120;
    *(v91 + 10) = 246;
    *v21 = v20;
    v67 = 0xEB00000000454F44;
    goto LABEL_53;
  }

  sub_225CCE5E4();
  v75 = sub_225CCE704();
  v76 = MEMORY[0x22AA6CD90](v75);
  v78 = v77;

  swift_beginAccess();
  v79 = *(v23 + 72);
  if (*(v79 + 16))
  {

    v80 = sub_2259F18D4(v76, v78);
    if (v81)
    {
      v82 = *(*(v79 + 56) + 8 * v80);
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  v44 = __OFADD__(v82, 1);
  v92 = v82 + 1;
  if (!v44)
  {
    swift_beginAccess();
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v23 + 72);
    *(v23 + 72) = 0x8000000000000000;
    sub_225A04D6C(v92, v76, v78, v93);

    *(v23 + 72) = v104;
    swift_endAccess();
    v43 = 1;
    goto LABEL_21;
  }

  __break(1u);
}

void sub_225C08018(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v94 = a3;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v92 - v8;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v10 + 16))(v12, &v13[v14], v9);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "Attempting to parse type 3 MRZ", v14, 2u);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  v19 = *(v10 + 8);
  v18 = v10 + 8;
  v19(v12, v9);
  if (sub_225C08D50(15440, 0xE200000000000000, a1, a2))
  {
    v20 = sub_225CCE604();
    v22 = sub_225CCE604() >> 14;
    if (v22 >= v20 >> 14)
    {
      sub_225CCE5E4();
      v23 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v23);
      v17 = v24;

      v25 = sub_225CCE534();
      v27 = v26;

      swift_beginAccess();
      v28 = *(v4 + 88);
      v22 = *(v28 + 16);
      if (v22)
      {

        v29 = sub_2259F18D4(v25, v27);
        if (v30)
        {
          v14 = *(*(v28 + 56) + 8 * v29);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v18 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = *(v4 + 88);
        *(v4 + 88) = 0x8000000000000000;
        sub_225A04D6C(v14 + 1, v25, v27, isUniquelyReferenced_nonNull_native);

        *(v4 + 88) = v96[0];
        swift_endAccess();
        v39 = 0;
LABEL_20:
        swift_beginAccess();
        *(v4 + 56) = 2;
        *v94 = v39;
        return;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    do
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v21 = sub_225B29AA0((v22 > 1), v14, 1, v21);
LABEL_34:
      v62 = 0xEB00000000424F44;
      *(v21 + 2) = v14;
      v63 = &v21[56 * v17];
      *(v63 + 2) = xmmword_225CFA6E0;
      *(v63 + 6) = 0xD000000000000025;
      *(v63 + 7) = v94;
      strcpy(v63 + 64, "parseTD3(_:)");
      v63[77] = 0;
      *(v63 + 39) = -5120;
      *(v63 + 10) = 277;
      *v4 = v16;
LABEL_50:
      *(v4 + 8) = v21;
      *(v4 + 16) = 0x2064696C61766E69;
      *(v4 + 24) = v62;
      *(v4 + 32) = v18;
      *(v4 + 40) = 0;
      swift_willThrow();
      v14 = sub_225CCE604();
      v22 = sub_225CCE604() >> 14;
    }

    while (v22 < v14 >> 14);
    sub_225CCE5E4();
    v87 = sub_225CCE704();
    v88 = MEMORY[0x22AA6CD90](v87);
    v90 = v89;

    _s13CoreIDVShared11UIAnalyticsC16sendIncorrectMRZ16documentTypeCodeySS_tFZ_0(v88, v90);

    swift_willThrow();
    return;
  }

  v31 = sub_225CCE604();
  v22 = sub_225CCE604() >> 14;
  if (v22 < v31 >> 14)
  {
    goto LABEL_58;
  }

  sub_225CCE5E4();
  v32 = sub_225CCE704();
  v16 = MEMORY[0x22AA6CD90](v32);
  v34 = v33;

  swift_beginAccess();
  v35 = *(v4 + 80);
  v22 = *(v35 + 16);
  if (v22)
  {

    v36 = sub_2259F18D4(v16, v34);
    if (v37)
    {
      v14 = *(*(v35 + 56) + 8 * v36);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = *(v4 + 80);
  *(v4 + 80) = 0x8000000000000000;
  sub_225A04D6C(v14 + 1, v16, v34, v40);

  *(v4 + 80) = v96[0];
  swift_endAccess();
  v41 = sub_225CCE604();
  v22 = sub_225CCE604() >> 14;
  if (v22 < v41 >> 14)
  {
    goto LABEL_61;
  }

  sub_225CCE5E4();
  v42 = sub_225CCE704();
  v43 = MEMORY[0x22AA6CD90](v42);
  v17 = v44;

  v14 = sub_225C06108(v43, v17, 1);

  if ((v14 & 1) == 0)
  {
    v94 = 0x8000000225D25630;
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v4 = v56;
    v57 = sub_225CCE954();
    v58 = *(v57 - 8);
    v59 = v93;
    (*(v58 + 56))(v93, 1, 1, v57);
    LODWORD(v57) = (*(v58 + 48))(v59, 1, v57);
    sub_2259CB640(v59, &unk_27D73B050, &unk_225CD3AD0);
    if (v57)
    {
      LOWORD(v16) = 855;
    }

    else
    {
      LOWORD(v16) = 23;
    }

    v60 = sub_225B2C374(v54);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v60;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v61, v97);

    v18 = v97[0];
    v21 = sub_225B29AA0(0, 1, 1, v54);
    v17 = *(v21 + 2);
    v22 = *(v21 + 3);
    v14 = v17 + 1;
    if (v17 >= v22 >> 1)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v45 = sub_225CCE604();
  v22 = sub_225CCE604() >> 14;
  if (v22 < v45 >> 14)
  {
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v46 = sub_225CCE704();
  v16 = MEMORY[0x22AA6CD90](v46);
  v48 = v47;

  swift_beginAccess();
  v49 = *(v4 + 64);
  v50 = *(v49 + 16);
  if (v50)
  {

    v51 = sub_2259F18D4(v16, v48);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  v17 = v53 + 1;
  if (__OFADD__(v53, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  swift_beginAccess();
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v4 + 64);
  *(v4 + 64) = 0x8000000000000000;
  sub_225A04D6C(v53 + 1, v16, v48, v64);

  *(v4 + 64) = v95;
  swift_endAccess();
  v65 = sub_225CCE604();
  v50 = sub_225CCE604() >> 14;
  if (v50 < v65 >> 14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_225CCE5E4();
  v66 = sub_225CCE704();
  v67 = MEMORY[0x22AA6CD90](v66);
  v17 = v68;

  v53 = sub_225C06108(v67, v17, 0);

  if ((v53 & 1) == 0)
  {
    v94 = 0x8000000225D25630;
    v78 = MEMORY[0x277D84F90];
    v79 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v4 = v80;
    v81 = sub_225CCE954();
    v82 = *(v81 - 8);
    v83 = v93;
    (*(v82 + 56))(v93, 1, 1, v81);
    LODWORD(v81) = (*(v82 + 48))(v83, 1, v81);
    sub_2259CB640(v83, &unk_27D73B050, &unk_225CD3AD0);
    if (v81)
    {
      LOWORD(v16) = 856;
    }

    else
    {
      LOWORD(v16) = 23;
    }

    v84 = sub_225B2C374(v78);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v84;
    sub_225B2C4A0(v79, sub_225B2AC40, 0, v85, v96);

    v18 = v96[0];
    v21 = sub_225B29AA0(0, 1, 1, v78);
    v17 = *(v21 + 2);
    v50 = *(v21 + 3);
    v53 = v17 + 1;
    if (v17 < v50 >> 1)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  v69 = sub_225CCE604();
  v50 = sub_225CCE604() >> 14;
  if (v50 < v69 >> 14)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    v21 = sub_225B29AA0((v50 > 1), v53, 1, v21);
LABEL_49:
    *(v21 + 2) = v53;
    v86 = &v21[56 * v17];
    *(v86 + 2) = xmmword_225CFA6F0;
    *(v86 + 6) = 0xD000000000000025;
    *(v86 + 7) = v94;
    strcpy(v86 + 64, "parseTD3(_:)");
    v86[77] = 0;
    *(v86 + 39) = -5120;
    *(v86 + 10) = 283;
    *v4 = v16;
    v62 = 0xEB00000000454F44;
    goto LABEL_50;
  }

  sub_225CCE5E4();
  v70 = sub_225CCE704();
  v71 = MEMORY[0x22AA6CD90](v70);
  v73 = v72;

  swift_beginAccess();
  v74 = *(v4 + 72);
  if (*(v74 + 16))
  {

    v75 = sub_2259F18D4(v71, v73);
    if (v76)
    {
      v77 = *(*(v74 + 56) + 8 * v75);
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v77 = 0;
  }

  if (!__OFADD__(v77, 1))
  {
    swift_beginAccess();
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v4 + 72);
    *(v4 + 72) = 0x8000000000000000;
    sub_225A04D6C(v77 + 1, v71, v73, v91);

    *(v4 + 72) = v98;
    swift_endAccess();
    v39 = 1;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_225C08D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_225CCE644();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_225CCE644();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_225CCF934();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_225CCE644();
      v7 = v9;
    }

    while (v9);
  }

  sub_225CCE644();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_225C08EAC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_225CCD954();
  MEMORY[0x28223BE20](v6);
  v7 = sub_225CCE5D4();
  v8 = byte_2839000A0;
  if (qword_225CFA9B0[byte_2839000A0] == v7 || (v8 = byte_2839000A1, qword_225CFA9B0[byte_2839000A1] == v7) || (v8 = byte_2839000A2, qword_225CFA9B0[byte_2839000A2] == v7))
  {
    if (v8)
    {
      if (v8 == 1)
      {
        sub_225C07204(a1, a2, a3);
      }

      else
      {
        sub_225C08018(a1, a2, a3);
      }
    }

    else
    {
      sub_225C063D4(a1, a2, a3);
    }
  }

  else
  {
    *a3 = 2;
  }
}

BOOL sub_225C091E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v95 = a5;
  v100 = a1;
  v101 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v88 - v10;
  v11 = sub_225CCD284();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCCB74();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  v91 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD0B4();
  v16 = *(v15 - 8);
  v98 = v15;
  v99 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v88 - v19;
  v20 = sub_225CCD954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
LABEL_45:
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v25 = sub_225CCE444();
    v26 = [v24 BOOLForKey_];

    if (v26)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v27 = off_28105B918;
      v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v29));
      (*(v21 + 16))(v23, &v27[v28], v20);
      os_unfair_lock_unlock(&v27[v29]);
      v30 = sub_225CCD934();
      v31 = sub_225CCED04();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2259A7000, v30, v31, "Internal flag set, skipping age verification", v32, 2u);
        MEMORY[0x22AA6F950](v32, -1, -1);
      }

      (*(v21 + 8))(v23, v20);
      return 0;
    }
  }

  else
  {
  }

  v23 = *(v6 + 48);
  if (!(v23 >> 62))
  {
    v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v20 = sub_225CCF144();
  if (!v20)
  {
    return 0;
  }

LABEL_12:
  v21 = 0;
  v6 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v33 = MEMORY[0x22AA6DA80](v21, v23);
    }

    else
    {
      if (v21 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v33 = *&v23[8 * v21 + 32];
    }

    v24 = v33;
    v34 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v35 = *&v33[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode] == a3 && *&v33[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_countryCode + 8] == a4;
    if (v35 || (sub_225CCF934() & 1) != 0)
    {
      break;
    }

    ++v21;
    if (v34 == v20)
    {
      return 0;
    }
  }

  v36 = v24;
  v37 = v102;
  v38 = v103;
  sub_225C0A19C(v100, v101, 1);

  if (v38)
  {

    return v39;
  }

  v103 = 0;
  v40 = v92;
  sub_225CCD244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v41 = sub_225CCD264();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_225CD30F0;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x277CC9988], v41);
  sub_2259F4D58(v44);
  swift_setDeallocating();
  (*(v42 + 8))(v44 + v43, v41);
  swift_deallocClassInstance();
  v45 = v95[3];
  v46 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v45);
  v47 = v90;
  (*(v46 + 8))(v45, v46);
  v48 = v91;
  sub_225CCD214();

  v49 = v99 + 8;
  v50 = v47;
  v51 = *(v99 + 8);
  v51(v50, v98);
  (*(v96 + 8))(v40, v97);
  v52 = sub_225CCCAF4();
  LOBYTE(v41) = v53;
  (*(v93 + 8))(v48, v94);
  if (v41)
  {
    v99 = v49;
    v54 = 0x8000000225D25660;
    v100 = 0x8000000225D25630;
    v101 = v36;
    v97 = 0x8000000225D25680;
    v55 = MEMORY[0x277D84F90];
    v56 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v58 = v57;
    v59 = sub_225CCE954();
    v60 = *(v59 - 8);
    v61 = v89;
    (*(v60 + 56))(v89, 1, 1, v59);
    LODWORD(v59) = (*(v60 + 48))(v61, 1, v59);
    sub_2259CB640(v61, &unk_27D73B050, &unk_225CD3AD0);
    if (v59)
    {
      v62 = 872;
    }

    else
    {
      v62 = 23;
    }

    v63 = sub_225B2C374(v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v63;
    sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v104);

    v65 = v104;
    v66 = sub_225B29AA0(0, 1, 1, v55);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
    }

    *(v66 + 2) = v68 + 1;
    v69 = &v66[56 * v68];
    *(v69 + 4) = 0xD000000000000017;
    *(v69 + 5) = 0x8000000225D25660;
    v70 = v100;
    v71 = v101;
    *(v69 + 6) = 0xD000000000000025;
    *(v69 + 7) = v70;
    v72 = v97;
    *(v69 + 8) = 0xD00000000000003CLL;
    *(v69 + 9) = v72;
    *(v69 + 10) = 330;
    *v58 = v62;
    *(v58 + 8) = v66;
    *(v58 + 16) = 0xD000000000000017;
  }

  else
  {
    if ((v52 & 0x8000000000000000) == 0)
    {
      v51(v37, v98);
      v73 = *&v36[OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age];

      return v73 >= v52;
    }

    v99 = v49;
    v54 = 0x8000000225D256C0;
    v100 = 0x8000000225D25630;
    v101 = v36;
    v97 = 0x8000000225D25680;
    v74 = MEMORY[0x277D84F90];
    v75 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v58 = v76;
    v77 = sub_225CCE954();
    v78 = *(v77 - 8);
    v79 = v89;
    (*(v78 + 56))(v89, 1, 1, v77);
    LODWORD(v77) = (*(v78 + 48))(v79, 1, v77);
    sub_2259CB640(v79, &unk_27D73B050, &unk_225CD3AD0);
    if (v77)
    {
      v80 = 1018;
    }

    else
    {
      v80 = 23;
    }

    v81 = sub_225B2C374(v74);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v81;
    sub_225B2C4A0(v75, sub_225B2AC40, 0, v82, &v104);

    v65 = v104;
    v83 = sub_225B29AA0(0, 1, 1, v74);
    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v86 = &v83[56 * v85];
    *(v86 + 4) = 0xD00000000000001CLL;
    *(v86 + 5) = 0x8000000225D256C0;
    *(v86 + 6) = 0xD000000000000025;
    v71 = v101;
    *(v86 + 7) = v100;
    *(v86 + 8) = 0xD00000000000003CLL;
    *(v86 + 9) = v97;
    *(v86 + 10) = 334;
    *v58 = v80;
    *(v58 + 8) = v83;
    *(v58 + 16) = 0xD00000000000001CLL;
  }

  *(v58 + 24) = v54;
  *(v58 + 32) = v65;
  *(v58 + 40) = 0;
  swift_willThrow();

  v51(v102, v98);
  return v39;
}

void sub_225C09D7C(uint64_t a1, unint64_t a2)
{
  v5 = sub_225CCD284();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCCB74();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD0B4();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  sub_225C0A19C(a1, a2, 0);
  if (!v2)
  {
    v30[1] = 0;
    sub_225CCD244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
    v18 = sub_225CCD264();
    v19 = *(v18 - 8);
    v32 = v5;
    v20 = v19;
    v21 = *(v19 + 80);
    v31 = v6;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_225CD30F0;
    (*(v20 + 104))(v23 + v22, *MEMORY[0x277CC9968], v18);
    sub_2259F4D58(v23);
    swift_setDeallocating();
    (*(v20 + 8))(v23 + v22, v18);
    swift_deallocClassInstance();
    _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
    sub_225CCD214();

    v24 = v34;
    v25 = *(v33 + 8);
    v25(v15, v34);
    (*(v31 + 8))(v8, v32);
    v26 = sub_225CCCAC4();
    v28 = v27;
    (*(v35 + 8))(v11, v36);
    if (v28)
    {
      v25(v17, v24);
      return;
    }

    v29 = floor(v26 / 365.0);
    v25(v17, v24);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        return;
      }

LABEL_10:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_225C0A19C(uint64_t a1, unint64_t a2, Swift::Bool a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;

  v9 = sub_225C0B128(1, a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x22AA6CD90](v9, v11, v13, v15);
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  v20 = formatPassportDate(date:isBirthDate:)(v19, a3);
  if (v21)
  {
  }

  else
  {

    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v23 = sub_225CCE444();
    [v22 setDateFormat_];

    v43 = v20;
    sub_225CCE6F4();
    v24 = sub_225CCE444();

    v25 = [v22 dateFromString_];

    if (v25)
    {
      sub_225CCD094();
    }

    else
    {
      v44 = 0x8000000225D25630;
      v42 = 0x8000000225D256E0;
      v26 = MEMORY[0x277D84F90];
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v29 = v28;
      v30 = sub_225CCE954();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v8, 1, 1, v30);
      LODWORD(v30) = (*(v31 + 48))(v8, 1, v30);
      sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
      if (v30)
      {
        v32 = 873;
      }

      else
      {
        v32 = 23;
      }

      v33 = sub_225B2C374(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43._countAndFlagsBits = v33;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v43._countAndFlagsBits);

      countAndFlagsBits = v43._countAndFlagsBits;
      v36 = sub_225B29AA0(0, 1, 1, v26);
      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[56 * v38];
      *(v39 + 2) = xmmword_225CFA700;
      v40 = v44;
      *(v39 + 6) = 0xD000000000000025;
      *(v39 + 7) = v40;
      *(v39 + 8) = 0xD000000000000017;
      *(v39 + 9) = v42;
      *(v39 + 10) = 359;
      *v29 = v32;
      *(v29 + 8) = v36;
      *(v29 + 16) = xmmword_225CFA700;
      *(v29 + 32) = countAndFlagsBits;
      *(v29 + 40) = 0;
      swift_willThrow();
    }
  }
}

void *PassportMRZParser.deinit()
{

  return v0;
}

uint64_t PassportMRZParser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_225C0A630(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_225C0A6D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340, &unk_225CFA9A0);
  result = sub_225CCF584();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_225CCFBD4();

    sub_225CCE5B4();
    result = sub_225CCFC24();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_225C0A92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348, &qword_225CD9558);
  result = sub_225CCF584();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_225CCFBD4();

    sub_225CCE5B4();
    result = sub_225CCFC24();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_225C0AB68(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 16))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225C0AC5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 24))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_225C0AD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = sub_225C0A630(v17, v12, a1, a2, a4);
      MEMORY[0x22AA6F950](v17, -1, -1);

      return v15;
    }
  }

  MEMORY[0x28223BE20](v14);
  bzero(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v15;
}

unint64_t *sub_225C0AF20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 32))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225C0B014(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= *(a4 + 40))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_225C0A92C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_225C0A92C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0B128(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_225CCE5D4();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_225CCE5F4();

  return sub_225CCE704();
}

unint64_t sub_225C0B1F8()
{
  result = qword_27D740428;
  if (!qword_27D740428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740428);
  }

  return result;
}

unint64_t sub_225C0B250()
{
  result = qword_27D740430;
  if (!qword_27D740430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740430);
  }

  return result;
}

CoreIDVShared::PIIHashKey_optional __swiftcall PIIHashKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PIIHashKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7265646C6F68;
  v3 = 0x797269707865;
  v4 = 0x6C616E6F6974616ELL;
  if (v1 != 3)
  {
    v4 = 0x65626D754E636F64;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6451044;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225C0B910()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C0B9F0(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225C0BABC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225C0BBA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7265646C6F68;
  v5 = 0xE600000000000000;
  v6 = 0x797269707865;
  v7 = 0xEB00000000797469;
  v8 = 0x6C616E6F6974616ELL;
  if (v2 != 3)
  {
    v8 = 0x65626D754E636F64;
    v7 = 0xE900000000000072;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6451044;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t static PassportPIIHashUtility.generatePIIHashes(portrait:holder:dob:doe:nationality:docNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  v161 = a8;
  v157 = a7;
  v158 = a6;
  v156 = a5;
  v155 = a4;
  v164 = a12;
  v163 = a9;
  v162 = a10;
  v15 = sub_225CCD6B4();
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v144 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v134 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v138 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v143 = &v134 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v148 = &v134 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v152 = &v134 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v134 - v33;
  v165 = sub_225CCD624();
  v159 = *(v165 - 8);
  v35 = MEMORY[0x28223BE20](v165);
  v137 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v142 = &v134 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v147 = &v134 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v151 = &v134 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v134 - v43;
  v166 = type metadata accessor for AlgorithmIdentifier(0);
  v45 = MEMORY[0x28223BE20](v166);
  v136 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v141 = &v134 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v146 = &v134 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v150 = &v134 - v52;
  MEMORY[0x28223BE20](v51);
  v169 = &v134 - v53;
  v167 = a1;
  v168 = a2;

  MEMORY[0x22AA6CE70](a3, v155);
  v155 = sub_225CCE514();
  v154 = v54;

  v167 = a1;
  v168 = a2;

  MEMORY[0x22AA6CE70](v156, v158);
  v156 = sub_225CCE514();
  v158 = v55;

  v167 = a1;
  v168 = a2;

  MEMORY[0x22AA6CE70](v157, v161);
  v145 = sub_225CCE514();
  v161 = v56;

  v167 = a1;
  v168 = a2;

  MEMORY[0x22AA6CE70](v163, v162);
  v140 = sub_225CCE514();
  v163 = v57;

  v167 = a1;
  v168 = a2;

  MEMORY[0x22AA6CE70](a11, v164);
  v135 = sub_225CCE514();
  v164 = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68, &unk_225CF90E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73C0;
  *(inited + 32) = 0x7265646C6F68;
  v134 = inited + 32;
  v162 = inited;
  *(inited + 40) = 0xE600000000000000;
  sub_225CCD604();
  sub_225CCD6A4();
  v157 = v15;
  v60 = v160;
  sub_225CCD644();
  if (v60)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v61 = sub_225CCD654();
    v62 = *(v61 - 8);
    v63 = *(v62 + 56);
    v64 = v62 + 56;
    (v63)(v34, 0, 1, v61);
    v65 = v159[4];
    v66 = v169;
    v65(v169, v44, v165);
    sub_225C0CB18(v34, v66 + *(v166 + 20));
    v67 = sub_2259D25B0(v155, v154);
    v69 = v68;
    v70 = AlgorithmIdentifier.hash(_:)(v67, v68);
    v154 = v65;
    v155 = v64;
    v159 = v63;
    v160 = v61;
    v71 = v165;
    v72 = v70;
    v74 = v73;
    sub_225C0CB88(v169);
    sub_2259BEF00(v67, v69);
    v75 = sub_225CCCF84();
    v77 = v76;
    sub_2259BEF00(v72, v74);
    v78 = v162;
    v162[6] = v75;
    v78[7] = v77;
    v78[8] = 6451044;
    v78[9] = 0xE300000000000000;
    v79 = v151;
    sub_225CCD604();
    sub_225CCD6A4();
    v80 = v152;
    sub_225CCD644();
    (v159)(v80, 0, 1, v160);
    v81 = v150;
    v154(v150, v79, v71);
    v82 = v166;
    sub_225C0CB18(v80, &v81[*(v166 + 20)]);
    v83 = sub_2259D25B0(v156, v158);
    v85 = v84;
    v86 = AlgorithmIdentifier.hash(_:)(v83, v84);
    v87 = v81;
    v89 = v88;
    sub_225C0CB88(v87);
    sub_2259BEF00(v83, v85);
    v90 = sub_225CCCF84();
    v92 = v91;
    sub_2259BEF00(v86, v89);
    v78[10] = v90;
    v78[11] = v92;
    v78[12] = 0x797269707865;
    v78[13] = 0xE600000000000000;
    v93 = v147;
    sub_225CCD604();
    sub_225CCD6A4();
    v94 = v148;
    sub_225CCD644();
    (v159)(v94, 0, 1, v160);
    v95 = v146;
    v154(v146, v93, v71);
    sub_225C0CB18(v94, &v95[*(v82 + 20)]);
    v96 = sub_2259D25B0(v145, v161);
    v98 = v97;
    v99 = AlgorithmIdentifier.hash(_:)(v96, v97);
    v100 = v95;
    v102 = v101;
    sub_225C0CB88(v100);
    sub_2259BEF00(v96, v98);
    v103 = sub_225CCCF84();
    v105 = v104;
    sub_2259BEF00(v99, v102);
    v78[14] = v103;
    v78[15] = v105;
    v78[16] = 0x6C616E6F6974616ELL;
    v78[17] = 0xEB00000000797469;
    v106 = v142;
    sub_225CCD604();
    sub_225CCD6A4();
    v107 = v143;
    sub_225CCD644();
    (v159)(v107, 0, 1, v160);
    v108 = v141;
    v154(v141, v106, v71);
    sub_225C0CB18(v107, &v108[*(v82 + 20)]);
    v109 = sub_2259D25B0(v140, v163);
    v111 = v110;
    v112 = AlgorithmIdentifier.hash(_:)(v109, v110);
    v113 = v108;
    v115 = v114;
    sub_225C0CB88(v113);
    sub_2259BEF00(v109, v111);
    v116 = sub_225CCCF84();
    v118 = v117;
    sub_2259BEF00(v112, v115);
    v78[18] = v116;
    v78[19] = v118;
    v78[20] = 0x65626D754E636F64;
    v78[21] = 0xE900000000000072;
    v119 = v137;
    sub_225CCD604();
    sub_225CCD6A4();
    v120 = v138;
    sub_225CCD644();
    (v159)(v120, 0, 1, v160);
    v121 = v136;
    v154(v136, v119, v71);
    sub_225C0CB18(v120, &v121[*(v82 + 20)]);
    v122 = sub_2259D25B0(v135, v164);
    v124 = v123;
    v126 = AlgorithmIdentifier.hash(_:)(v122, v123);
    v127 = v121;
    v129 = v128;
    sub_225C0CB88(v127);
    sub_2259BEF00(v122, v124);
    v130 = sub_225CCCF84();
    v132 = v131;
    sub_2259BEF00(v126, v129);
    v78[22] = v130;
    v78[23] = v132;
    v133 = sub_225B2E928(v78);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
    swift_arrayDestroy();
    return v133;
  }

  return result;
}

uint64_t sub_225C0CB18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C0CB88(uint64_t a1)
{
  v2 = type metadata accessor for AlgorithmIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225C0CBE8()
{
  result = qword_27D740450;
  if (!qword_27D740450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740450);
  }

  return result;
}

char *sub_225C0CC5C(uint64_t a1)
{
  sub_225C0D790();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_2259CB710(v4, v5);
  v59 = sub_225C0F394(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225CD73A0;
  *(v6 + 32) = *(a1 + 16);
  v7 = *(a1 + 17);
  *(v6 + 33) = v7;
  v50 = *(a1 + 18);
  *(v6 + 34) = v50;
  v49 = *(a1 + 19);
  *(v6 + 35) = v49;
  v8 = sub_2259D8490(v6);
  v10 = v9;

  sub_2259CB710(v8, v10);
  v51 = sub_225C0F394(v8, v10);
  sub_2259BE4EC(&unk_283900420);
  v11 = v51;
  v12 = *(v51 + 2);
  if ((v12 & 7) != 0)
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v14 = *(v11 + 3) >> 1, v14 <= v12))
      {
        result = sub_2259BE5D8(result, v12 + 1, 1, v11);
        v11 = result;
        v14 = *(result + 3) >> 1;
      }

      v15 = *(v11 + 2);
      if (v14 <= v15)
      {
        break;
      }

      v11[v15 + 32] = byte_283900468;
      v12 = v15 + 1;
      *(v11 + 2) = v15 + 1;
      if (((v15 + 1) & 7) == 0)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v16 = sub_2259D8490(v11);
    v18 = v17;

    sub_2259BEF00(v8, v10);
    sub_2259CB710(v16, v18);
    v19 = sub_225C0F394(v16, v18);
    sub_2259BE4EC(v19);
    v20 = sub_225C0D2F4(*(a1 + 24), *(a1 + 32));
    if (v2)
    {

      sub_2259BEF00(v16, v18);
    }

    else
    {
      v22 = v20;
      v23 = v21;
      v46 = v7;
      sub_2259CB710(v20, v21);
      v24 = sub_225C0F394(v22, v23);
      sub_2259BE4EC(v24);
      v25 = sub_225C0EC28(*(a1 + 40));
      v27 = v26;
      sub_2259CB710(v25, v26);
      v47 = v25;
      v48 = v27;
      v28 = sub_225C0F394(v25, v27);
      sub_2259BE4EC(v28);
      v29 = sub_2259D8490(v59);
      v31 = v30;

      v32 = sub_225C0D074(v29, v31);
      v44 = v33;
      v45 = v32;
      sub_2259BEF00(v29, v31);
      v55 = v22;
      v56 = v23;
      v53 = MEMORY[0x277CC9318];
      v54 = MEMORY[0x277CC9300];
      v51 = v47;
      v52 = v27;
      v34 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
      v36 = *v34;
      v35 = v34[1];
      sub_2259CB710(v22, v23);
      sub_2259CB710(v47, v48);
      sub_225C0EA34(v36, v35, &v55);
      __swift_destroy_boxed_opaque_existential_0(&v51);
      v38 = v55;
      v37 = v56;
      v57 = v55;
      v58 = v56;
      v53 = MEMORY[0x277CC9318];
      v54 = MEMORY[0x277CC9300];
      v51 = v45;
      v52 = v44;
      v39 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
      v40 = v39[1];
      v43 = *v39;
      sub_2259CB710(v38, v37);
      sub_2259CB710(v45, v44);
      sub_225C0EA34(v43, v40, &v57);
      sub_2259BEF00(v38, v37);
      __swift_destroy_boxed_opaque_existential_0(&v51);
      v41 = v57;
      v42 = v58;
      type metadata accessor for PassportCommandAPDU();
      a1 = swift_allocObject();
      *(a1 + 16) = 12;
      *(a1 + 17) = v46;
      *(a1 + 18) = v50;
      *(a1 + 19) = v49;
      *(a1 + 24) = v41;
      *(a1 + 32) = v42;
      sub_2259BEF00(v45, v44);
      sub_2259BEF00(v47, v48);
      sub_2259BEF00(v22, v23);
      sub_2259BEF00(v16, v18);
      *(a1 + 40) = xmmword_225CFAAD0;
      *(a1 + 56) = 0xE000000000000000;
    }

    return a1;
  }

  return result;
}

char *sub_225C0D074(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  sub_2259CB710(a1, a2);
  v28 = sub_225C0F394(a1, a2);
  sub_2259BE4EC(&unk_2839003D0);
  v8 = v28;
  v9 = *(v28 + 2);
  if ((v9 & 7) != 0)
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v11 = *(v8 + 3) >> 1, v11 <= v9))
      {
        result = sub_2259BE5D8(result, v9 + 1, 1, v8);
        v8 = result;
        v11 = *(result + 3) >> 1;
      }

      v12 = *(v8 + 2);
      if (v11 <= v12)
      {
        break;
      }

      v8[v12 + 32] = byte_283900418;
      v9 = v12 + 1;
      *(v8 + 2) = v12 + 1;
      if (((v12 + 1) & 7) == 0)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v13 = sub_2259D8490(v8);
  v15 = v14;

  v16 = sub_225C0187C(v13, v15, *(v4 + 24), *(v4 + 32), 0x10uLL);
  if (v3)
  {
    return sub_2259BEF00(v13, v15);
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
  result = swift_allocObject();
  v20 = result;
  *(result + 1) = xmmword_225CD4890;
  result[32] = -114;
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = HIWORD(v19);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v21 != 2)
  {
LABEL_29:
    LOBYTE(v22) = 0;
    goto LABEL_30;
  }

  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_24:
    LODWORD(v22) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v22 = v22;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v22 > 0xFF)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  result[33] = v22;
  sub_2259CB710(v18, v19);
  v26 = sub_225C0F394(v18, v19);
  sub_2259BE4EC(v26);
  v27 = sub_2259D8490(v20);

  sub_2259BEF00(v18, v19);
  sub_2259BEF00(v13, v15);
  return v27;
}

uint64_t sub_225C0D2F4(uint64_t a1, unint64_t a2)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_9:
      sub_2259B97A8(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = v2;
    sub_2259CB710(a1, a2);
    v38 = sub_225C0F394(a1, a2);
    sub_2259BE4EC(&unk_283900380);
    v18 = v38;
    v9 = *(v38 + 2);
    if ((v9 & 7) != 0)
    {
      v6 = &unk_283900000;
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v20 = *(v18 + 3) >> 1, v20 <= v9))
        {
          v18 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v18);
          v20 = *(v18 + 3) >> 1;
        }

        v21 = *(v18 + 2);
        if (v20 <= v21)
        {
          break;
        }

        v18[v21 + 32] = byte_2839003C8;
        v9 = v21 + 1;
        *(v18 + 2) = v21 + 1;
        if (((v21 + 1) & 7) == 0)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_23:
    v22 = sub_2259D8490(v18);
    v24 = v23;

    result = sub_225C02CA4(v22, v24, *(v7 + 16), 0);
    if (v3)
    {
      sub_2259BEF00(v22, v24);
      return sub_2259B97A8(a1, a2);
    }

    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_37;
      }

      v29 = *(result + 16);
      v28 = *(result + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (!v30)
      {
LABEL_34:
        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v27 <= 0xFF)
        {
LABEL_38:
          v31 = v27 + 1;
          if (((v31 >> 8) & 1) == 0)
          {
            v32 = v25;
            v33 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
            v34 = swift_allocObject();
            *(v34 + 1) = xmmword_225CD73B0;
            *(v34 + 32) = -121;
            *(v34 + 33) = v31;
            *(v34 + 34) = 1;
            sub_2259CB710(v33, v32);
            v35 = sub_225C0F394(v33, v32);
            v38 = v34;
            sub_2259BE4EC(v35);
            v37 = sub_2259D8490(v38);

            sub_2259BEF00(v33, v32);
            sub_2259BEF00(v22, v24);
            sub_2259B97A8(a1, a2);
            return v37;
          }

          goto LABEL_43;
        }

        __break(1u);
LABEL_37:
        LOBYTE(v27) = 0;
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = HIWORD(v25);
      goto LABEL_38;
    }

    LODWORD(v27) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v27 = v27;
    goto LABEL_34;
  }

  if (a1 != a1 >> 32)
  {
LABEL_15:
    sub_2259CB6FC(a1, a2);
    goto LABEL_16;
  }

LABEL_11:
  if (qword_28105B910 != -1)
  {
LABEL_41:
    swift_once();
  }

  v11 = off_28105B918;
  v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v13));
  (*(v7 + 16))(v9, &v11[v12], v6);
  os_unfair_lock_unlock(&v11[v13]);
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2259A7000, v14, v15, "No data to encrypt", v16, 2u);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

uint64_t sub_225C0D790()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_2259CB710(v1, v2);
  v3 = sub_225C0F394(v1, v2);
  v4 = v3[2];
  if (v4)
  {
    v5 = v4 + 31;
    while (1)
    {
      v6 = v5 - 31;
      if ((v5 - 31) > v3[2])
      {
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v3 + v5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v7 != 255)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        v3 = sub_225C0EC14(v3);
      }

      *(v3 + v5--) = 0;
      if (v6 <= 1)
      {
        goto LABEL_13;
      }
    }

    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    result = sub_225C0EC14(v3);
    v3 = result;
LABEL_10:
    if (v6 > v3[2])
    {
      __break(1u);
    }

    else
    {
      v9 = *(v3 + v5) + 1;
      if (((v9 >> 8) & 1) == 0)
      {
        *(v3 + v5) = v9;
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

LABEL_13:

  v11 = sub_2259D8490(v10);
  v13 = v12;

  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  *(v0 + 40) = v11;
  *(v0 + 48) = v13;
  sub_2259BEF00(v14, v15);
}

void *sub_225C0D8B0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v145 - v7;
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_9:
      sub_2259B97A8(a1, a2);
      goto LABEL_11;
    }

    if (*(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_11:
    v156 = 0x8000000225D25900;
    v10 = MEMORY[0x277D84F90];
    v11 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v13 = v12;
    v14 = sub_225CCE954();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    LODWORD(v14) = (*(v15 + 48))(v8, 1, v14);
    sub_2259DB318(v8);
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 23;
    }

    v17 = sub_225B2C374(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v17;
    sub_225B2C4A0(v11, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v159);

    v19 = v159;
    v20 = sub_225B29AA0(0, 1, 1, v10);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_225B29AA0((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[56 * v22];
    *(v23 + 4) = 0xD000000000000013;
    *(v23 + 5) = 0x8000000225D258E0;
    v24 = v156;
    *(v23 + 6) = 0xD000000000000023;
    *(v23 + 7) = v24;
    *(v23 + 8) = 0xD000000000000013;
    *(v23 + 9) = 0x8000000225D25930;
    *(v23 + 10) = 122;
    *v13 = v16;
    *(v13 + 8) = v20;
    *(v13 + 16) = 0xD000000000000013;
    *(v13 + 24) = 0x8000000225D258E0;
    *(v13 + 32) = v19;
    *(v13 + 40) = 0;
    swift_willThrow();
    return v22;
  }

  if (v9)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_11;
    }

LABEL_18:
    sub_2259CB6FC(a1, a2);
    goto LABEL_19;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  sub_2259D8718(0, &qword_27D740458, 0x277CC55F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = sub_225CCCF74();
  v28 = [ObjCClassFromMetadata sequenceOfRecordsFromData_];

  if (!v28)
  {
    v155 = 0x8000000225D25900;
    v156 = 0x8000000225D25950;
    v154 = 0x8000000225D25930;
    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v70 = v69;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    (*(v72 + 56))(v8, 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v8, 1, v71);
    sub_2259DB318(v8);
    if (v71)
    {
      v73 = 865;
    }

    else
    {
      v73 = 23;
    }

    v74 = sub_225B2C374(v67);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v74;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, v75, &v159);

    v76 = v159;
    v77 = sub_225B29AA0(0, 1, 1, v67);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    v22 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      v77 = sub_225B29AA0((v78 > 1), v79 + 1, 1, v77);
    }

    *(v77 + 2) = v22;
    v80 = &v77[56 * v79];
    v81 = v156;
    *(v80 + 4) = 0xD00000000000001ALL;
    *(v80 + 5) = v81;
    *(v80 + 6) = 0xD000000000000023;
    *(v80 + 7) = v155;
    *(v80 + 8) = 0xD000000000000013;
    *(v80 + 9) = v154;
    *(v80 + 10) = 127;
    *v70 = v73;
    *(v70 + 8) = v77;
    *(v70 + 16) = 0xD00000000000001ALL;
    *(v70 + 24) = v81;
    *(v70 + 32) = v76;
    *(v70 + 40) = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  sub_2259D8718(0, &unk_27D740460, 0x277CC5618);
  v29 = sub_225CCE814();

  v30 = sub_225C0ECBC(v29, 153);
  v22 = v30;
  if (!v30)
  {
LABEL_41:

    v155 = 0x8000000225D25900;
    v156 = 0x8000000225D25970;
    v154 = 0x8000000225D25930;
    v82 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v83;
    v84 = sub_225CCE954();
    v85 = *(v84 - 8);
    (*(v85 + 56))(v8, 1, 1, v84);
    LODWORD(v84) = (*(v85 + 48))(v8, 1, v84);
    sub_2259DB318(v8);
    if (v84)
    {
      LOWORD(v51) = 865;
    }

    else
    {
      LOWORD(v51) = 23;
    }

    v86 = MEMORY[0x277D84F90];
    v87 = sub_225B2C374(MEMORY[0x277D84F90]);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v87;
    sub_225B2C4A0(v82, sub_225B2AC40, 0, v88, &v159);

    v8 = v159;
    v56 = sub_225B29AA0(0, 1, 1, v86);
    v3 = *(v56 + 2);
    v57 = *(v56 + 3);
    v53 = v3 + 1;
    if (v3 < v57 >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_73;
  }

  v31 = v30;
  if (!sub_225C0EDB0(v31))
  {

    goto LABEL_41;
  }

  v32 = sub_225C0ECBC(v29, 135);
  v33 = sub_225C0ECBC(v29, 142);

  v155 = v31;
  v156 = v32;
  if (!v33)
  {
    v153 = 0x8000000225D25900;
    v154 = 0x8000000225D25990;
    v152 = 0x8000000225D25930;
    v91 = MEMORY[0x277D84F90];
    v92 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v94 = v93;
    v95 = sub_225CCE954();
    v96 = *(v95 - 8);
    (*(v96 + 56))(v8, 1, 1, v95);
    LODWORD(v95) = (*(v96 + 48))(v8, 1, v95);
    sub_2259DB318(v8);
    if (v95)
    {
      v66 = 865;
    }

    else
    {
      v66 = 23;
    }

    v97 = sub_225B2C374(v91);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v97;
    sub_225B2C4A0(v92, sub_225B2AC40, 0, v98, &v159);

    v99 = v159;
    v100 = sub_225B29AA0(0, 1, 1, v91);
    v102 = *(v100 + 2);
    v101 = *(v100 + 3);
    v22 = v102 + 1;
    if (v102 < v101 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_75;
  }

  v152 = v33;
  v34 = [v33 value];
  v153 = sub_225CCCFA4();
  v154 = v35;

  sub_225C0D790();
  v36 = *(v3 + 40);
  v37 = *(v3 + 48);
  sub_2259CB710(v36, v37);
  v159 = sub_225C0F394(v36, v37);
  if (v32)
  {
    v151 = v32;
    v38 = [v151 data];
    v39 = sub_225CCCFA4();
    v40 = v31;
    v42 = v41;

    v43 = v42;
    v31 = v40;
    v44 = sub_225C0F394(v39, v43);
    sub_2259BE4EC(v44);
  }

  v45 = [v31 data];
  v46 = sub_225CCCFA4();
  v48 = v47;

  v49 = sub_225C0F394(v46, v48);
  sub_2259BE4EC(v49);
  v22 = sub_2259D8490(v159);
  v51 = v50;

  sub_2259CB710(v22, v51);
  v158 = sub_225C0F394(v22, v51);
  sub_2259BE4EC(&unk_283900470);
  v52 = v158;
  v53 = *(v158 + 2);
  if ((v53 & 7) != 0)
  {
    v54 = &unk_283900000;
    while (1)
    {
      v55 = swift_isUniquelyReferenced_nonNull_native();
      if (!v55 || (v57 = *(v52 + 3) >> 1, v57 <= v53))
      {
        v52 = sub_2259BE5D8(v55, v53 + 1, 1, v52);
        v57 = *(v52 + 3) >> 1;
      }

      v58 = *(v52 + 2);
      if (v57 <= v58)
      {
        break;
      }

      v52[v58 + 32] = byte_2839004B8;
      v53 = v58 + 1;
      *(v52 + 2) = v58 + 1;
      if (((v58 + 1) & 7) == 0)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_73:
    v56 = sub_225B29AA0((v57 > 1), v53, 1, v56);
LABEL_45:
    *(v56 + 2) = v53;
    v89 = &v56[56 * v3];
    v90 = v156;
    *(v89 + 4) = 0xD000000000000013;
    *(v89 + 5) = v90;
    *(v89 + 6) = 0xD000000000000023;
    *(v89 + 7) = v155;
    *(v89 + 8) = 0xD000000000000013;
    *(v89 + 9) = v154;
    *(v89 + 10) = 133;
    *v54 = v51;
    v54[1] = v56;
    v54[2] = 0xD000000000000013;
    v54[3] = v90;
    v54[4] = v8;
    v54[5] = 0;
    swift_willThrow();

LABEL_46:
    sub_2259B97A8(a1, a2);
    return v22;
  }

LABEL_32:
  v59 = sub_2259D8490(v52);
  v61 = v60;
  v62 = v59;

  sub_2259BEF00(v22, v51);
  v63 = v157;
  v64 = sub_225C0187C(v62, v61, *(v3 + 24), *(v3 + 32), 0x10uLL);
  v66 = v63;
  if (v63)
  {
    sub_2259B97A8(a1, a2);

    sub_2259BEF00(v153, v154);
    sub_2259BEF00(v62, v61);
    return v22;
  }

  v106 = v65;
  v157 = v64;
  if (!sub_2259D8228(v153, v154, v64, v65))
  {
    v150 = v106;
    v151 = v62;
    v149 = v61;
    v146 = 0x8000000225D25900;
    v147 = 0x8000000225D259B0;
    v145 = 0x8000000225D25930;
    v124 = MEMORY[0x277D84F90];
    v125 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v148 = swift_allocError();
    v127 = v126;
    v128 = sub_225CCE954();
    v129 = *(v128 - 8);
    (*(v129 + 56))(v8, 1, 1, v128);
    LODWORD(v128) = (*(v129 + 48))(v8, 1, v128);
    sub_2259DB318(v8);
    if (v128)
    {
      v130 = 867;
    }

    else
    {
      v130 = 23;
    }

    v131 = sub_225B2C374(v124);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v131;
    sub_225B2C4A0(v125, sub_225B2AC40, 0, v132, &v158);

    v133 = v158;
    v134 = sub_225B29AA0(0, 1, 1, v124);
    v136 = *(v134 + 2);
    v135 = *(v134 + 3);
    v22 = v136 + 1;
    if (v136 >= v135 >> 1)
    {
      v134 = sub_225B29AA0((v135 > 1), v136 + 1, 1, v134);
    }

    v137 = v156;
    v138 = v152;
    *(v134 + 2) = v22;
    v139 = &v134[56 * v136];
    v140 = v147;
    *(v139 + 4) = 0xD000000000000014;
    *(v139 + 5) = v140;
    *(v139 + 6) = 0xD000000000000023;
    *(v139 + 7) = v146;
    *(v139 + 8) = 0xD000000000000013;
    *(v139 + 9) = v145;
    *(v139 + 10) = 163;
    *v127 = v130;
    *(v127 + 8) = v134;
    *(v127 + 16) = 0xD000000000000014;
    *(v127 + 24) = v140;
    *(v127 + 32) = v133;
    *(v127 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(a1, a2);

    sub_2259BEF00(v153, v154);
    sub_2259BEF00(v157, v150);
    sub_2259BEF00(v151, v149);
    return v22;
  }

  v94 = v156;
  if (!v156)
  {
    sub_2259B97A8(a1, a2);
    sub_2259BEF00(v153, v154);

    sub_2259BEF00(v157, v106);
    sub_2259BEF00(v62, v61);
    return 0;
  }

  v150 = v106;
  v151 = v62;
  v149 = v61;
  v107 = [v156 value];
  v108 = sub_225CCCFA4();
  v110 = v109;

  result = sub_225C0F394(v108, v110);
  v111 = result[2];
  if (v111)
  {
    v112 = *(result + 32);
    sub_2259D2AD0(result, result + 4, 1, (2 * v111) | 1);
    v102 = v113;
    if (v112 == 1)
    {
      v115 = v114;
      sub_2259CB710(v113, v114);
      v148 = v115;
      v158 = sub_225C0F394(v102, v115);
      sub_2259BE4EC(&unk_2839004C0);
      v116 = v158;
      v22 = *(v158 + 2);
      if ((v22 & 7) != 0)
      {
        v99 = &unk_283900000;
        while (1)
        {
          v117 = swift_isUniquelyReferenced_nonNull_native();
          if (!v117 || (v101 = *(v116 + 3) >> 1, v101 <= v22))
          {
            v116 = sub_2259BE5D8(v117, v22 + 1, 1, v116);
            v101 = *(v116 + 3) >> 1;
          }

          v118 = *(v116 + 2);
          if (v101 <= v118)
          {
            break;
          }

          v116[v118 + 32] = byte_283900508;
          v22 = v118 + 1;
          *(v116 + 2) = v118 + 1;
          if (((v118 + 1) & 7) == 0)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_75:
        v100 = sub_225B29AA0((v101 > 1), v22, 1, v100);
LABEL_51:
        *(v100 + 2) = v22;
        v103 = &v100[56 * v102];
        v104 = v154;
        *(v103 + 4) = 0xD000000000000013;
        *(v103 + 5) = v104;
        *(v103 + 6) = 0xD000000000000023;
        *(v103 + 7) = v153;
        *(v103 + 8) = 0xD000000000000013;
        *(v103 + 9) = v152;
        *(v103 + 10) = 141;
        *v94 = v66;
        v94[1] = v100;
        v94[2] = 0xD000000000000013;
        v94[3] = v104;
        v94[4] = v99;
        v94[5] = 0;
        swift_willThrow();
        v105 = v155;

        goto LABEL_46;
      }

LABEL_63:
      v119 = sub_2259D8490(v116);
      v121 = v120;

      sub_2259BEF00(v102, v148);
      v102 = v119;
      v114 = v121;
    }

    v122 = *(v3 + 16);
    v123 = v114;
    v141 = sub_225C02CA4(v102, v114, v122, 1);
    v143 = v142;
    sub_225C03A90(v141, v142);
    v22 = v144;
    sub_2259B97A8(a1, a2);
    sub_2259BEF00(v141, v143);

    sub_2259BEF00(v157, v150);
    sub_2259BEF00(v151, v149);
    sub_2259BEF00(v153, v154);

    sub_2259BEF00(v102, v123);
    return v22;
  }

  __break(1u);
  return result;
}

void *SecureMessaging.deinit()
{

  sub_2259BEF00(*(v0 + 24), *(v0 + 32));
  sub_2259BEF00(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t SecureMessaging.__deallocating_deinit()
{

  sub_2259BEF00(*(v0 + 24), *(v0 + 32));
  sub_2259BEF00(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_225C0EA34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_225CCCF44();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225C0EB6C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_225C0EB6C(v4, v5);
  }

  return sub_225CCCF44();
}

uint64_t sub_225C0EB6C(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      return sub_225CCCF44();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0EC28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_225CD73B0;
  *(v2 + 32) = 407;
  *(v2 + 34) = a1;
  if (a1 < 0)
  {

    return 0;
  }

  else
  {
    v3 = sub_2259D8490(v2);
  }

  return v3;
}

void *sub_225C0ECBC(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
  {
    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v2 = v7;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 tag] == v6)
      {
        return v2;
      }

      ++v5;
      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

BOOL sub_225C0EDB0(void *a1)
{
  v2 = [a1 value];
  v3 = sub_225CCCFA4();
  v5 = v4;

  v7 = Data.init(base16Encoded:)(808464441, 0xE400000000000000);
  v8 = v6;
  if (v5 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v9 = v3;
      v10 = v5;
LABEL_9:
      sub_2259B97A8(v9, v10);
      return 1;
    }

    goto LABEL_5;
  }

  if (v6 >> 60 == 15)
  {
LABEL_5:
    sub_2259B97A8(v3, v5);
    sub_2259B97A8(v7, v8);
    goto LABEL_6;
  }

  sub_2259CB710(v3, v5);
  sub_2259CB6FC(v7, v8);
  v19 = sub_2259D8228(v3, v5, v7, v8);
  sub_2259B97A8(v7, v8);
  sub_2259B97A8(v7, v8);
  sub_2259BEF00(v3, v5);
  sub_2259B97A8(v3, v5);
  if (v19)
  {
    return 1;
  }

LABEL_6:
  v11 = [a1 value];
  v12 = sub_225CCCFA4();
  v14 = v13;

  v16 = Data.init(base16Encoded:)(842543670, 0xE400000000000000);
  v17 = v15;
  if (v14 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      v9 = v12;
      v10 = v14;
      goto LABEL_9;
    }

LABEL_11:
    sub_2259B97A8(v12, v14);
    sub_2259B97A8(v16, v17);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_11;
  }

  sub_2259CB710(v12, v14);
  sub_2259CB6FC(v16, v17);
  v20 = sub_2259D8228(v12, v14, v16, v17);
  sub_2259B97A8(v16, v17);
  sub_2259B97A8(v16, v17);
  sub_2259BEF00(v12, v14);
  sub_2259B97A8(v12, v14);
  return v20;
}

uint64_t sub_225C0EFD4(int a1)
{
  if (a1 <= 27012)
  {
    if (a1 <= 25535)
    {
      if (a1 <= 25218)
      {
        if (a1 > 25215)
        {
          if (a1 == 25216)
          {
            return 1;
          }

          if (a1 == 25218)
          {
            return 2;
          }
        }

        else
        {
          if (a1 == -1)
          {
            return 38;
          }

          if (a1 == 24832)
          {
            return 0;
          }
        }
      }

      else if (a1 <= 25359)
      {
        if (a1 == 25219)
        {
          return 3;
        }

        if (a1 == 25344)
        {
          return 4;
        }
      }

      else
      {
        switch(a1)
        {
          case 25360:
            return 5;
          case 25376:
            return 6;
          case 25392:
            return 7;
        }
      }

      return 39;
    }

    if (a1 <= 26752)
    {
      if (a1 <= 26131)
      {
        if (a1 == 25536)
        {
          return 8;
        }

        if (a1 == 25601)
        {
          return 9;
        }
      }

      else
      {
        switch(a1)
        {
          case 26132:
            return 10;
          case 26277:
            return 11;
          case 26368:
            return 12;
        }
      }

      return 39;
    }

    if (a1 <= 27009)
    {
      if (a1 == 26753)
      {
        return 13;
      }

      if (a1 == 26756)
      {
        return 14;
      }

      return 39;
    }

    if (a1 == 27010)
    {
      return 15;
    }

    else if (a1 == 27011)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }

  else
  {
    if (a1 > 27268)
    {
      if (a1 > 28159)
      {
        if (a1 <= 28415)
        {
          if (a1 == 28160)
          {
            return 33;
          }

          if (a1 == 28261)
          {
            return 34;
          }
        }

        else
        {
          switch(a1)
          {
            case 28416:
              return 35;
            case 36864:
              return 36;
            case 38021:
              return 37;
          }
        }
      }

      else if (a1 <= 27271)
      {
        if (a1 == 27269)
        {
          return 28;
        }

        if (a1 == 27270)
        {
          return 29;
        }
      }

      else
      {
        switch(a1)
        {
          case 27272:
            return 30;
          case 27392:
            return 31;
          case 27904:
            return 32;
        }
      }

      return 39;
    }

    if (a1 > 27263)
    {
      if (a1 <= 27265)
      {
        if (a1 == 27264)
        {
          return 23;
        }

        else
        {
          return 24;
        }
      }

      else if (a1 == 27266)
      {
        return 25;
      }

      else if (a1 == 27267)
      {
        return 26;
      }

      else
      {
        return 27;
      }
    }

    else
    {
      if (a1 > 27014)
      {
        switch(a1)
        {
          case 27015:
            return 20;
          case 27016:
            return 21;
          case 27033:
            return 22;
        }

        return 39;
      }

      if (a1 == 27013)
      {
        return 18;
      }

      else
      {
        return 19;
      }
    }
  }
}

void *sub_225C0F394(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCCFE4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2259BEF00(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_225C0060C(v10, 0);
      v14 = sub_225CCCEF4();
      sub_2259BEF00(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t PassportCommandAPDU.asData.getter()
{
  v1 = v0;
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = *(v0 + 16);
  *(inited + 33) = *(v0 + 17);
  *(inited + 34) = *(v0 + 18);
  *(inited + 35) = *(v0 + 19);
  result = sub_2259BE4EC(inited);
  v4 = *(v0 + 32);
  if (v4 >> 60 == 15)
  {
    v5 = *(v0 + 40);
    if (v5 > 0)
    {
      if (v5 >= 0x101)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_56:
    v27 = sub_2259D8490(v28);

    return v27;
  }

  v6 = *(v0 + 24);
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v5 = *(v1 + 40);
      v13 = v5 > 0x100;
      sub_2259B97A8(v6, v4);
      if (v5 <= 0)
      {
        goto LABEL_56;
      }

      v8 = 0;
      goto LABEL_51;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v9 = v10 - v11;
    if (__OFSUB__(v10, v11))
    {
      goto LABEL_58;
    }

    v5 = *(v1 + 40);
    v8 = v9 > 255;
  }

  else
  {
    if (!v7)
    {
      v8 = 0;
      v5 = *(v1 + 40);
      v9 = BYTE6(v4);
      goto LABEL_14;
    }

    v12 = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v5 = *(v1 + 40);
    v8 = v12 > 255;
    v9 = v12;
  }

  result = sub_2259CB710(v6, v4);
LABEL_14:
  v13 = v5 > 256;
  if (v9 <= 0)
  {
    sub_2259B97A8(v6, v4);
    if (v5 <= 0)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v7 == 2)
  {
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    v14 = BYTE6(v4);
    goto LABEL_27;
  }

  if (v7 != 1)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v14 = HIDWORD(v6) - v6;
LABEL_27:
  v17 = v5 > 256 || v8;
  if (v17 == 1)
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_225CD73B0;
    *(result + 32) = 0;
    if (!v7)
    {
      *(result + 33) = 0;
      v20 = HIWORD(v4);
      v21 = (result + 34);
      goto LABEL_47;
    }

    if (v7 == 2)
    {
      v18 = *(v6 + 16);
      v20 = *(v6 + 24);
      v19 = __OFSUB__(v20, v18);
      LOWORD(v20) = v20 - v18;
      if (!v19)
      {
        *(result + 33) = BYTE1(v20);
        v21 = (result + 34);
        goto LABEL_47;
      }

      goto LABEL_61;
    }

    goto LABEL_44;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_225CD30F0;
  v21 = (result + 32);
  if (v7 == 2)
  {
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    v19 = __OFSUB__(v22, v23);
    v20 = v22 - v23;
    if (v19)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    if (v7 != 1)
    {
      v20 = HIWORD(v4);
LABEL_47:
      *v21 = v20;
      sub_2259BE4EC(result);
      sub_2259CB710(v6, v4);
      v24 = sub_225C0F394(v6, v4);
      sub_2259BE4EC(v24);
      sub_2259B97A8(v6, v4);
      if (v5 < 1)
      {
        goto LABEL_56;
      }

      if (v14)
      {
        if (v5 <= 256 && !v8)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

LABEL_51:
      if (v13)
      {
LABEL_52:
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_225CD73B0;
        *(v25 + 32) = 0;
        *(v25 + 33) = BYTE1(v5);
        v26 = (v25 + 34);
        goto LABEL_55;
      }

      if (!v8)
      {
LABEL_50:
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_225CD30F0;
        v26 = (v25 + 32);
LABEL_55:
        *v26 = v5;
        sub_2259BE4EC(v25);
        goto LABEL_56;
      }

LABEL_54:
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_225CD4890;
      *(v25 + 32) = BYTE1(v5);
      v26 = (v25 + 33);
      goto LABEL_55;
    }

    LODWORD(v20) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v20 = v20;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_44:
  LOWORD(v20) = WORD2(v6) - v6;
  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    *(result + 33) = BYTE1(v20);
    v21 = (result + 34);
    goto LABEL_47;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t PassportResponseAPDU.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  result = Data.init(base16Encoded:)(a1, a2);
  if (v10 >> 60 == 15)
  {
    v11 = MEMORY[0x277D84F90];
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v13;
    v15 = sub_225CCE954();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v8, 1, 1, v15);
    LODWORD(v15) = (*(v16 + 48))(v8, 1, v15);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v15)
    {
      v17 = 929;
    }

    else
    {
      v17 = 23;
    }

    v18 = sub_225B2C374(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v18;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v60);

    v20 = v60;
    v21 = sub_225B29AA0(0, 1, 1, v11);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD00000000000001CLL;
    *(v24 + 5) = 0x8000000225D259D0;
    *(v24 + 6) = 0xD00000000000001DLL;
    *(v24 + 7) = 0x8000000225D259F0;
    *(v24 + 8) = 0x6F72662874696E69;
    *(v24 + 9) = 0xEB00000000293A6DLL;
    *(v24 + 10) = 396;
    *v14 = v17;
    *(v14 + 8) = v21;
    *(v14 + 16) = 0xD00000000000001CLL;
    *(v14 + 24) = 0x8000000225D259D0;
    *(v14 + 32) = v20;
    *(v14 + 40) = 0;
    return swift_willThrow();
  }

  v25 = result;
  v26 = v10;
  v27 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_15;
    }

    v29 = *(result + 16);
    v28 = *(result + 24);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v31 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    if (v27 == 2)
    {
      v49 = *(result + 16);
      v48 = *(result + 24);
      v30 = __OFSUB__(v48, v49);
      v47 = v48 - v49;
      if (!v30)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (v27 == 1)
    {
      LODWORD(v47) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v47 = v47;
      goto LABEL_31;
    }

    v47 = BYTE6(v10);
LABEL_31:
    if (__OFSUB__(v47, 1))
    {
      __break(1u);
    }

    else
    {
      v50 = v47 - 2;
      if (!__OFSUB__(v47 - 1, 1))
      {
        v51 = sub_225CCCF64();
        result = sub_225CCCF64();
        v52 = result;
        if (v27 == 2)
        {
          v54 = *(v25 + 16);
          v53 = *(v25 + 24);
          v30 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v30)
          {
LABEL_57:
            __break(1u);
            return result;
          }

          if (v55 < 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v27 == 1)
          {
            if (__OFSUB__(HIDWORD(v25), v25))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if (HIDWORD(v25) - v25 < 3)
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          }

          if (BYTE6(v26) < 3uLL)
          {
LABEL_44:
            v56 = 0;
            v57 = 0xF000000000000000;
LABEL_49:
            result = sub_2259B97A8(v25, v26);
            *a3 = v56;
            *(a3 + 8) = v57;
            *(a3 + 16) = v51;
            *(a3 + 17) = v52;
            return result;
          }
        }

LABEL_40:
        if (v27)
        {
          if (v27 == 2)
          {
            result = *(v25 + 16);
          }

          else
          {
            result = v25;
          }
        }

        else
        {
          result = 0;
        }

        if (v50 >= result)
        {
          v56 = sub_225CCCF54();
          v57 = v58;
          goto LABEL_49;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v27)
  {
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (HIDWORD(result) - result < 2)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (BYTE6(v10) >= 2uLL)
  {
    goto LABEL_23;
  }

LABEL_15:
  v59 = 0x8000000225D259F0;
  v32 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v34 = v33;
  v35 = sub_225CCE954();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v8, 1, 1, v35);
  LODWORD(v35) = (*(v36 + 48))(v8, 1, v35);
  sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
  if (v35)
  {
    v37 = 871;
  }

  else
  {
    v37 = 23;
  }

  v38 = MEMORY[0x277D84F90];
  v39 = sub_225B2C374(MEMORY[0x277D84F90]);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v39;
  sub_225B2C4A0(v32, sub_225B2AC40, 0, v40, &v60);

  v41 = v60;
  v42 = sub_225B29AA0(0, 1, 1, v38);
  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
  }

  *(v42 + 2) = v44 + 1;
  v45 = &v42[56 * v44];
  *(v45 + 4) = 0xD000000000000027;
  *(v45 + 5) = 0x8000000225D25A10;
  v46 = v59;
  *(v45 + 6) = 0xD00000000000001DLL;
  *(v45 + 7) = v46;
  *(v45 + 8) = 0x6F72662874696E69;
  *(v45 + 9) = 0xEB00000000293A6DLL;
  *(v45 + 10) = 400;
  *v34 = v37;
  *(v34 + 8) = v42;
  *(v34 + 16) = 0xD000000000000027;
  *(v34 + 24) = 0x8000000225D25A10;
  *(v34 + 32) = v41;
  *(v34 + 40) = 0;
  swift_willThrow();
  return sub_2259B97A8(v25, v26);
}

uint64_t PassportCommandAPDU.__allocating_init(instructionClass:instructionCode:p1Parameter:p2Parameter:data:expectedResponseLength:description:)(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 17) = a2;
  *(result + 18) = a3;
  *(result + 19) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  if (a9)
  {
    v18 = a8;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a9)
  {
    v19 = a9;
  }

  *(result + 40) = a7;
  *(result + 48) = v18;
  *(result + 56) = v19;
  return result;
}

id TagHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TagHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TagHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id NFCPendingCommandsStatus.__allocating_init(isReady:retryInterval:)(char a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = a1;
  v8 = &v7[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval];
  *v8 = a2;
  v8[8] = a3 & 1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NFCPendingCommandsStatus.init(isReady:retryInterval:)(char a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = a1;
  v8 = &v3[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval];
  *v8 = a2;
  v8[8] = a3 & 1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NFCPendingCommandsStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13A80(a1);

  return v4;
}

id NFCPendingCommandsStatus.init(coder:)(void *a1)
{
  v2 = sub_225C13A80(a1);

  return v2;
}

Swift::Void __swiftcall NFCPendingCommandsStatus.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady);
  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  if ((*(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval);
    v6 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];
  }
}

uint64_t NFCPendingCommands.batchId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId);

  return v1;
}

uint64_t NFCPendingCommands.taskId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId);

  return v1;
}

id NFCPendingCommands.__allocating_init(batchId:taskId:commandAPDUs:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = a5;
  v18 = &v15[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id NFCPendingCommands.init(batchId:taskId:commandAPDUs:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = a5;
  v18 = &v7[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v18 = a6;
  v18[8] = a7 & 1;
  v20.receiver = v7;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id NFCPendingCommands.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13BD0(a1);

  return v4;
}

id NFCPendingCommands.init(coder:)(void *a1)
{
  v2 = sub_225C13BD0(a1);

  return v2;
}

Swift::Void __swiftcall NFCPendingCommands.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId + 8))
  {
    v5 = sub_225CCE444();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  type metadata accessor for APDURequest();
  v7 = sub_225CCE7F4();
  v8 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  if ((*(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize + 8) & 1) == 0)
  {
    v9 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize);
    v10 = sub_225CCE444();
    [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];
  }
}

uint64_t APDURequest.messageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName);

  return v1;
}

uint64_t APDURequest.messageId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId);

  return v1;
}

uint64_t APDURequest.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data);

  return v1;
}

uint64_t sub_225C10CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEA00000000006449;
  v4 = 0x617461446BLL;
  if (v2 == 1)
  {
    v4 = 0x6567617373654D6BLL;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6567617373654D6BLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000656D614ELL;
  }

  v7 = 0xEA00000000006449;
  v8 = 0x617461446BLL;
  if (*a2 == 1)
  {
    v8 = 0x6567617373654D6BLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6567617373654D6BLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000656D614ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225C10D90()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C10E2C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225C10EB4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225C10F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_225C13EC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_225C10F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D614ELL;
  v4 = 0xEA00000000006449;
  v5 = 0x6567617373654D6BLL;
  if (v2 != 1)
  {
    v5 = 0x617461446BLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567617373654D6BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225C10FE4()
{
  v1 = 0x617461446BLL;
  if (*v0 == 1)
  {
    v1 = 0x6567617373654D6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373654D6BLL;
  }
}

unint64_t sub_225C11038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225C13EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225C11060(uint64_t a1)
{
  v2 = sub_225C140BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C1109C(uint64_t a1)
{
  v2 = sub_225C140BC();

  return MEMORY[0x2821FE720](a1, v2);
}

id APDURequest.__allocating_init(messageName:messageId:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id APDURequest.init(messageName:messageId:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id APDURequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225C13F10();

  return v4;
}

id APDURequest.init(coder:)(void *a1)
{
  v2 = sub_225C13F10();

  return v2;
}

Swift::Void __swiftcall APDURequest.encode(with:)(NSCoder with)
{
  v2 = sub_225CCE444();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_225CCE444();
  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = sub_225CCE444();
  v7 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

void *APDURequest.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404C8, &qword_225CFAB50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C140BC();
  sub_225CCFCA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    v9 = sub_225CCF684();
    v11 = (v1 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName);
    *v11 = v9;
    v11[1] = v12;
    v24 = 1;
    v13 = sub_225CCF684();
    v14 = (v1 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId);
    *v14 = v13;
    v14[1] = v15;
    v24 = 2;
    v16 = sub_225CCF684();
    v18 = v17;
    v19 = v16;
    (*(v6 + 8))(v8, v5);
    v20 = (v1 + OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data);
    *v20 = v19;
    v20[1] = v18;
    v23.receiver = v1;
    v23.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t APDURequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404D8, &qword_225CFAB58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C140BC();
  sub_225CCFCE4();
  v8[15] = 0;
  sub_225CCF784();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_225CCF784();
  v8[13] = 2;
  sub_225CCF784();
  return (*(v4 + 8))(v6, v3);
}

id APDURequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_225C11A08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = APDURequest.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PassportCommandAPDU.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PassportCommandAPDU.init(instructionClass:instructionCode:p1Parameter:p2Parameter:data:expectedResponseLength:description:)(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = a9;
  *(v9 + 16) = a1;
  *(v9 + 17) = a2;
  *(v9 + 18) = a3;
  *(v9 + 19) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a6;
  if (a9)
  {
    v11 = a8;
  }

  else
  {
    v11 = 0;
  }

  if (!a9)
  {
    v10 = 0xE000000000000000;
  }

  *(v9 + 40) = a7;
  *(v9 + 48) = v11;
  *(v9 + 56) = v10;
  return v9;
}

double sub_225C11AE4()
{
  v0 = sub_2259D8490(&unk_2838FFE90);
  v2 = v1;
  type metadata accessor for PassportCommandAPDU();
  v3 = swift_allocObject();
  *(v3 + 16) = 201630720;
  *(v3 + 24) = v0;
  *(v3 + 32) = v2;
  result = NAN;
  *(v3 + 40) = xmmword_225CFAB30;
  *(v3 + 56) = 0xEE00505041205344;
  off_27D740470 = v3;
  return result;
}

uint64_t static PassportCommandAPDU.selectLDSApp.getter()
{
  if (qword_27D73A0F8 != -1)
  {
    swift_once();
  }
}

void *PassportCommandAPDU.deinit()
{
  sub_2259B97A8(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t PassportCommandAPDU.__deallocating_deinit()
{
  sub_2259B97A8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t PassportResponseAPDU.data.getter()
{
  v1 = *v0;
  sub_2259CB6FC(*v0, *(v0 + 8));
  return v1;
}

BOOL _s13CoreIDVShared19PassportCommandAPDUC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18) || *(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v6 = a1;
      v7 = a2;
      sub_2259CB6FC(*(a1 + 24), v2);
      sub_2259CB6FC(v5, v4);
      v9 = sub_2259D8228(v3, v2, v5, v4);
      sub_2259B97A8(v5, v4);
      sub_2259B97A8(v3, v2);
      if (v9)
      {
        return *(v6 + 40) == *(v7 + 40);
      }

      return 0;
    }

LABEL_10:
    sub_2259CB6FC(*(a1 + 24), v2);
    sub_2259CB6FC(v5, v4);
    sub_2259B97A8(v3, v2);
    sub_2259B97A8(v5, v4);
    return 0;
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_10;
  }

  v6 = a1;
  v7 = a2;
  sub_2259CB6FC(*(a1 + 24), v2);
  sub_2259CB6FC(v5, v4);
  sub_2259B97A8(v3, v2);
  return *(v6 + 40) == *(v7 + 40);
}

char *sub_225C11E24(uint64_t a1, int64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v162 - v7;
  v9 = Data.init(base16Encoded:)(a1, a2);
  if (v10 >> 60 == 15)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v8, 1, v16);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v16)
    {
      v18 = 932;
    }

    else
    {
      v18 = 23;
    }

    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v167);

    v8 = v167;
    v21 = sub_225B29AA0(0, 1, 1, v12);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[56 * v23];
    *(v24 + 4) = 0xD00000000000001ELL;
    *(v24 + 5) = 0x8000000225D25DD0;
    *(v24 + 6) = 0xD00000000000001DLL;
    *(v24 + 7) = 0x8000000225D259F0;
    *(v24 + 8) = 0x293A5F2874696E69;
    *(v24 + 9) = 0xE800000000000000;
    *(v24 + 10) = 258;
    *v15 = v18;
    *(v15 + 8) = v21;
    *(v15 + 16) = 0xD00000000000001ELL;
    *(v15 + 24) = 0x8000000225D25DD0;
    *(v15 + 32) = v8;
    *(v15 + 40) = 0;
    swift_willThrow();
    return v8;
  }

  v25 = v9;
  v26 = v10;
  v27 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_15;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (v31 < 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v27)
    {
      if (BYTE6(v10) >= 4uLL)
      {
        goto LABEL_26;
      }

LABEL_15:
      v165 = v10;
      v166 = v9;
      v32 = MEMORY[0x277D84F90];
      v33 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v2 = v34;
      v35 = sub_225CCE954();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v8, 1, 1, v35);
      LODWORD(v35) = (*(v36 + 48))(v8, 1, v35);
      sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
      if (v35)
      {
        v37 = 933;
      }

      else
      {
        v37 = 23;
      }

      v38 = sub_225B2C374(v32);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v38;
      sub_225B2C4A0(v33, sub_225B2AC40, 0, v39, &v167);

      v8 = v167;
      v40 = sub_225B29AA0(0, 1, 1, v32);
      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[56 * v42];
      *(v43 + 4) = 0xD000000000000037;
      *(v43 + 5) = 0x8000000225D25F80;
      *(v43 + 6) = 0xD00000000000001DLL;
      *(v43 + 7) = 0x8000000225D259F0;
      *(v43 + 8) = 0x293A5F2874696E69;
      *(v43 + 9) = 0xE800000000000000;
      *(v43 + 10) = 261;
      *v2 = v37;
      *(v2 + 8) = v40;
      *(v2 + 16) = 0xD000000000000037;
      *(v2 + 24) = 0x8000000225D25F80;
      goto LABEL_21;
    }

    v31 = (HIDWORD(v9) - v9);
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_195:
      __break(1u);
LABEL_196:
      v11 = sub_225B29AA0((v31 > 1), v26, 1, v11);
LABEL_56:
      *(v11 + 2) = v26;
      v62 = &v11[56 * v3];
      *(v62 + 4) = 0xD00000000000002BLL;
      *(v62 + 5) = v27;
      *(v62 + 6) = 0xD00000000000001DLL;
      *(v62 + 7) = v25;
      *(v62 + 8) = 0x293A5F2874696E69;
      *(v62 + 9) = 0xE800000000000000;
      *(v62 + 10) = 363;
      *v2 = a2;
      *(v2 + 8) = v11;
      *(v2 + 16) = 0xD00000000000002BLL;
      *(v2 + 24) = v27;
      *(v2 + 32) = v8;
      *(v2 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v162, v164);
      goto LABEL_22;
    }

    if (v31 < 4)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  v3 = sub_225CCCF64();
  v45 = sub_225CCCF64();
  v46 = sub_225CCCF64();
  v47 = sub_225CCCF64();
  v2 = v47;
  if (v27 == 2)
  {
    v49 = *(v25 + 16);
    v48 = *(v25 + 24);
    v30 = __OFSUB__(v48, v49);
    v31 = v48 - v49;
    if (!v30)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    v31 = BYTE6(v26);
    goto LABEL_34;
  }

  if (v27 != 1)
  {
    goto LABEL_33;
  }

  v31 = (HIDWORD(v25) - v25);
  if (__OFSUB__(HIDWORD(v25), v25))
  {
    __break(1u);
    goto LABEL_198;
  }

  v31 = v31;
LABEL_34:
  a2 = v31 - 4;
  if (__OFSUB__(v31, 4))
  {
    __break(1u);
    goto LABEL_194;
  }

  if (v31 == 4)
  {
    LODWORD(v165) = v47;
    v163 = v45;
    v51 = v3;
    v3 = 0;
    v164 = 0xF000000000000000;
    a2 = -1;
    v2 = 4;
LABEL_43:
    if (v27 == 2)
    {
      v53 = *(v25 + 16);
      v52 = *(v25 + 24);
      v30 = __OFSUB__(v52, v53);
      v31 = v52 - v53;
      if (!v30)
      {
        if (v2 != v31)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      goto LABEL_199;
    }

    if (v27 != 1)
    {
      if (v2 != BYTE6(v26))
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v31 = (HIDWORD(v25) - v25);
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      if (v2 != v31)
      {
LABEL_52:
        v162 = v3;
        v165 = v26;
        v166 = v25;
        v27 = 0x8000000225D25DF0;
        v25 = 0x8000000225D259F0;
        v55 = MEMORY[0x277D84F90];
        v56 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v2 = v57;
        v58 = sub_225CCE954();
        v59 = *(v58 - 8);
        (*(v59 + 56))(v8, 1, 1, v58);
        LODWORD(v58) = (*(v59 + 48))(v8, 1, v58);
        sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
        if (v58)
        {
          LOWORD(a2) = 930;
        }

        else
        {
          LOWORD(a2) = 23;
        }

        v60 = sub_225B2C374(v55);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v60;
        sub_225B2C4A0(v56, sub_225B2AC40, 0, v61, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v55);
        v3 = *(v11 + 2);
        v31 = *(v11 + 3);
        v26 = v3 + 1;
        if (v3 < v31 >> 1)
        {
          goto LABEL_56;
        }

        goto LABEL_196;
      }

LABEL_50:
      type metadata accessor for PassportCommandAPDU();
      v8 = swift_allocObject();
      v8[16] = v51;
      v8[17] = v163;
      v8[18] = v46;
      v8[19] = v165;
      v54 = v164;
      *(v8 + 3) = v3;
      *(v8 + 4) = v54;
      *(v8 + 5) = a2;
      sub_2259B97A8(v25, v26);
      *(v8 + 6) = 0;
      *(v8 + 7) = 0xE000000000000000;
      return v8;
    }

LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    v11 = sub_225B29AA0((v31 > 1), v26, 1, v11);
LABEL_62:
    *(v11 + 2) = v26;
    v70 = &v11[56 * v3];
    *(v70 + 4) = 0xD000000000000021;
    *(v70 + 5) = v27;
    *(v70 + 6) = 0xD00000000000001DLL;
    *(v70 + 7) = v25;
    *(v70 + 8) = 0x293A5F2874696E69;
    *(v70 + 9) = 0xE800000000000000;
    *(v70 + 10) = 306;
    *v2 = a2;
    *(v2 + 8) = v11;
    *(v2 + 16) = 0xD000000000000021;
    *(v2 + 24) = v27;
LABEL_21:
    *(v2 + 32) = v8;
    *(v2 + 40) = 0;
    swift_willThrow();
LABEL_22:
    sub_2259B97A8(v166, v165);
    return v8;
  }

  if (sub_225CCCF64())
  {
    v50 = sub_225CCCF64();
    LODWORD(v165) = v2;
    if (a2 == 1)
    {
      v163 = v45;
      v51 = v3;
      v3 = 0;
      if (v50)
      {
        a2 = v50;
      }

      else
      {
        a2 = 256;
      }

      v164 = 0xF000000000000000;
      v2 = 5;
      goto LABEL_43;
    }

    if (v27 == 2)
    {
      v74 = *(v25 + 16);
      v73 = *(v25 + 24);
      v30 = __OFSUB__(v73, v74);
      v71 = v73 - v74;
      if (!v30)
      {
        goto LABEL_74;
      }

      __break(1u);
    }

    else if (v27 == 1)
    {
      v71 = (HIDWORD(v25) - v25);
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        v11 = sub_225B29AA0((v71 > 1), v26, 1, v11);
LABEL_111:
        *(v11 + 2) = v26;
        v85 = &v11[56 * v3];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 343;
LABEL_138:
        *(v85 + 10) = v86;
        *v27 = a2;
        *(v27 + 8) = v11;
        *(v27 + 16) = v25;
        *(v27 + 24) = v46;
        *(v27 + 32) = v8;
        *(v27 + 40) = 0;
        swift_willThrow();
        sub_2259B97A8(v166, v165);
        return v8;
      }

      v71 = v71;
LABEL_74:
      a2 = v50;
      v2 = v50 + 5;
      if (v71 < v2)
      {
        v165 = v26;
        v166 = v25;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_225CCF204();
        MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D25E80);
        v169 = a2;
        v75 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v75);

        MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
        v25 = v167;
        v46 = v168;
        v164 = 0x8000000225D259F0;
        v76 = MEMORY[0x277D84F90];
        v77 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v27 = v78;
        v79 = sub_225CCE954();
        v80 = *(v79 - 8);
        (*(v80 + 56))(v8, 1, 1, v79);
        LODWORD(v79) = (*(v80 + 48))(v8, 1, v79);
        sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
        if (v79)
        {
          LOWORD(a2) = 931;
        }

        else
        {
          LOWORD(a2) = 23;
        }

        v81 = sub_225B2C374(v76);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v81;
        sub_225B2C4A0(v77, sub_225B2AC40, 0, v82, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v76);
        v84 = *(v11 + 2);
        v83 = *(v11 + 3);
        if (v84 >= v83 >> 1)
        {
          v11 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v11);
        }

        *(v11 + 2) = v84 + 1;
        v85 = &v11[56 * v84];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 289;
        goto LABEL_138;
      }

      v163 = v45;
      v51 = v3;
      v87 = sub_225CCCFD4();
      v3 = v87;
      v164 = v88;
      if (v27 == 2)
      {
        v91 = *(v25 + 16);
        v90 = *(v25 + 24);
        v30 = __OFSUB__(v90, v91);
        v71 = v90 - v91;
        if (!v30)
        {
LABEL_93:
          if (v2 < v71)
          {
            v166 = v25;
            if (v27 == 2)
            {
              v107 = *(v25 + 16);
              v106 = *(v25 + 24);
              v92 = v106 - v107;
              if (!__OFSUB__(v106, v107))
              {
                goto LABEL_120;
              }

              __break(1u);
            }

            else if (v27 == 1)
            {
              v89 = (HIDWORD(v25) - v25);
              if (!__OFSUB__(HIDWORD(v25), v25))
              {
                v92 = v89;
LABEL_120:
                v162 = v87;
                if (v92 == a2 + 6)
                {
                  v108 = v166;
                  v109 = sub_225CCCF64();
                  v110 = v109 == 0;
                  v111 = 256;
LABEL_169:
                  if (v110)
                  {
                    a2 = v111;
                  }

                  else
                  {
                    a2 = v109;
                  }

                  v2 = v92;
                  v25 = v108;
                  v3 = v162;
                  goto LABEL_43;
                }

                v165 = v26;
                v27 = 0x8000000225D25E20;
                v112 = MEMORY[0x277D84F90];
                v113 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                swift_allocError();
                v2 = v114;
                v115 = sub_225CCE954();
                v116 = *(v115 - 8);
                (*(v116 + 56))(v8, 1, 1, v115);
                LODWORD(v115) = (*(v116 + 48))(v8, 1, v115);
                sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
                if (v115)
                {
                  LOWORD(a2) = 904;
                }

                else
                {
                  LOWORD(a2) = 23;
                }

                v117 = sub_225B2C374(v112);
                v118 = swift_isUniquelyReferenced_nonNull_native();
                v167 = v117;
                sub_225B2C4A0(v113, sub_225B2AC40, 0, v118, &v167);

                v8 = v167;
                v11 = sub_225B29AA0(0, 1, 1, v112);
                v120 = *(v11 + 2);
                v119 = *(v11 + 3);
                if (v120 >= v119 >> 1)
                {
                  v11 = sub_225B29AA0((v119 > 1), v120 + 1, 1, v11);
                }

                *(v11 + 2) = v120 + 1;
                v121 = &v11[56 * v120];
                v122 = 0xD000000000000055;
                *(v121 + 4) = 0xD000000000000055;
                *(v121 + 5) = 0x8000000225D25E20;
                *(v121 + 6) = 0xD00000000000001DLL;
                *(v121 + 7) = 0x8000000225D259F0;
                *(v121 + 8) = 0x293A5F2874696E69;
                *(v121 + 9) = 0xE800000000000000;
                v123 = 296;
LABEL_192:
                *(v121 + 10) = v123;
                *v2 = a2;
                *(v2 + 8) = v11;
                *(v2 + 16) = v122;
                *(v2 + 24) = v27;
                *(v2 + 32) = v8;
                *(v2 + 40) = 0;
                swift_willThrow();
                sub_2259BEF00(v162, v164);
                goto LABEL_22;
              }

              goto LABEL_205;
            }

            v92 = BYTE6(v26);
            goto LABEL_120;
          }

          goto LABEL_152;
        }

        __break(1u);
      }

      else if (v27 == 1)
      {
        v71 = (HIDWORD(v25) - v25);
        if (!__OFSUB__(HIDWORD(v25), v25))
        {
          v71 = v71;
          goto LABEL_93;
        }

        goto LABEL_202;
      }

      v71 = BYTE6(v26);
      goto LABEL_93;
    }

    v71 = BYTE6(v26);
    goto LABEL_74;
  }

  if (a2 < 3)
  {
    v165 = v26;
    v166 = v25;
    v27 = 0x8000000225D25F50;
    v25 = 0x8000000225D259F0;
    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v2 = v65;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    (*(v67 + 56))(v8, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v8, 1, v66);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v66)
    {
      LOWORD(a2) = 934;
    }

    else
    {
      LOWORD(a2) = 23;
    }

    v68 = sub_225B2C374(v63);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v68;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, v69, &v167);

    v8 = v167;
    v11 = sub_225B29AA0(0, 1, 1, v63);
    v3 = *(v11 + 2);
    v31 = *(v11 + 3);
    v26 = v3 + 1;
    if (v3 < v31 >> 1)
    {
      goto LABEL_62;
    }

    goto LABEL_200;
  }

  LODWORD(v165) = v2;
  v2 = sub_225CCCF64();
  v72 = sub_225CCCF64();
  if (v2 | v72)
  {
    if (v27 == 2)
    {
      v95 = *(v25 + 16);
      v94 = *(v25 + 24);
      v30 = __OFSUB__(v94, v95);
      v89 = v94 - v95;
      if (!v30)
      {
        goto LABEL_106;
      }

      __break(1u);
    }

    else if (v27 == 1)
    {
      v89 = (HIDWORD(v25) - v25);
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        v11 = sub_225B29AA0((v89 > 1), v26, 1, v11);
LABEL_137:
        *(v11 + 2) = v26;
        v85 = &v11[56 * v3];
        *(v85 + 4) = v25;
        *(v85 + 5) = v46;
        *(v85 + 6) = 0xD00000000000001DLL;
        *(v85 + 7) = v164;
        *(v85 + 8) = 0x293A5F2874696E69;
        *(v85 + 9) = 0xE800000000000000;
        v86 = 322;
        goto LABEL_138;
      }

      v89 = v89;
LABEL_106:
      a2 = v72 | (v2 << 8);
      v2 = a2 + 7;
      if (v89 < a2 + 7)
      {
        v165 = v26;
        v166 = v25;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_225CCF204();
        MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D25F30);
        v169 = a2;
        v96 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v96);

        MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
        v25 = v167;
        v46 = v168;
        v164 = 0x8000000225D259F0;
        v97 = MEMORY[0x277D84F90];
        v98 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v27 = v99;
        v100 = sub_225CCE954();
        v101 = *(v100 - 8);
        (*(v101 + 56))(v8, 1, 1, v100);
        LODWORD(v100) = (*(v101 + 48))(v8, 1, v100);
        sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
        if (v100)
        {
          LOWORD(a2) = 931;
        }

        else
        {
          LOWORD(a2) = 23;
        }

        v102 = sub_225B2C374(v97);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v102;
        sub_225B2C4A0(v98, sub_225B2AC40, 0, v103, &v167);

        v8 = v167;
        v11 = sub_225B29AA0(0, 1, 1, v97);
        v3 = *(v11 + 2);
        v71 = *(v11 + 3);
        v26 = v3 + 1;
        if (v3 < v71 >> 1)
        {
          goto LABEL_111;
        }

        goto LABEL_203;
      }

      v163 = v45;
      v51 = v3;
      v104 = sub_225CCCFD4();
      v3 = v104;
      v164 = v105;
      if (v27 == 2)
      {
        v137 = *(v25 + 16);
        v136 = *(v25 + 24);
        v30 = __OFSUB__(v136, v137);
        v93 = v136 - v137;
        if (!v30)
        {
          goto LABEL_147;
        }

        __break(1u);
      }

      else if (v27 == 1)
      {
        v93 = (HIDWORD(v25) - v25);
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_208:
          __break(1u);
LABEL_209:
          v11 = sub_225B29AA0((v93 > 1), v26, 1, v11);
LABEL_177:
          *(v11 + 2) = v26;
          v121 = &v11[56 * v3];
          v122 = 0xD000000000000054;
          *(v121 + 4) = 0xD000000000000054;
          *(v121 + 5) = v27;
          *(v121 + 6) = 0xD00000000000001DLL;
          *(v121 + 7) = v25;
          *(v121 + 8) = 0x293A5F2874696E69;
          *(v121 + 9) = 0xE800000000000000;
          v123 = 350;
          goto LABEL_192;
        }

        v93 = v93;
LABEL_147:
        if (v2 >= v93)
        {
LABEL_152:
          a2 = -1;
          goto LABEL_43;
        }

        v166 = v25;
        if (v27 == 2)
        {
          v142 = *(v25 + 16);
          v141 = *(v25 + 24);
          v92 = v141 - v142;
          if (!__OFSUB__(v141, v142))
          {
            goto LABEL_167;
          }

          __break(1u);
        }

        else if (v27 == 1)
        {
          v135 = (HIDWORD(v25) - v25);
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_211;
          }

          v92 = v135;
LABEL_167:
          v162 = v104;
          if (v92 == a2 + 9)
          {
            v108 = v166;
            v143 = sub_225CCCF64();
            v109 = sub_225CCCF64() | (v143 << 8);
            v110 = v109 == 0;
            v111 = 0x10000;
            goto LABEL_169;
          }

          v165 = v26;
          v27 = 0x8000000225D25ED0;
          v25 = 0x8000000225D259F0;
          v144 = MEMORY[0x277D84F90];
          v145 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v2 = v146;
          v147 = sub_225CCE954();
          v148 = *(v147 - 8);
          (*(v148 + 56))(v8, 1, 1, v147);
          LODWORD(v147) = (*(v148 + 48))(v8, 1, v147);
          sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
          if (v147)
          {
            LOWORD(a2) = 904;
          }

          else
          {
            LOWORD(a2) = 23;
          }

          v149 = sub_225B2C374(v144);
          v150 = swift_isUniquelyReferenced_nonNull_native();
          v167 = v149;
          sub_225B2C4A0(v145, sub_225B2AC40, 0, v150, &v167);

          v8 = v167;
          v11 = sub_225B29AA0(0, 1, 1, v144);
          v3 = *(v11 + 2);
          v93 = *(v11 + 3);
          v26 = v3 + 1;
          if (v3 < v93 >> 1)
          {
            goto LABEL_177;
          }

          goto LABEL_209;
        }

        v92 = BYTE6(v26);
        goto LABEL_167;
      }

      v93 = BYTE6(v26);
      goto LABEL_147;
    }

    v89 = BYTE6(v26);
    goto LABEL_106;
  }

  if (a2 == 3)
  {
    v163 = v45;
    v51 = v3;
    v3 = 0;
    v164 = 0xF000000000000000;
    v2 = 7;
    a2 = 0x10000;
    goto LABEL_43;
  }

  if (v27 != 2)
  {
    if (v27 == 1)
    {
      v93 = (HIDWORD(v25) - v25);
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v93 = v93;
        goto LABEL_132;
      }

      __break(1u);
      goto LABEL_208;
    }

    goto LABEL_131;
  }

  v125 = *(v25 + 16);
  v124 = *(v25 + 24);
  v30 = __OFSUB__(v124, v125);
  v93 = v124 - v125;
  if (v30)
  {
    __break(1u);
LABEL_131:
    v93 = BYTE6(v26);
  }

LABEL_132:
  if (v93 < 7)
  {
    v165 = v26;
    v166 = v25;
    v167 = 0;
    v168 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D25F30);
    v169 = 0;
    v126 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v126);

    MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D25EA0);
    v25 = v167;
    v46 = v168;
    v164 = 0x8000000225D259F0;
    v127 = MEMORY[0x277D84F90];
    v128 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v27 = v129;
    v130 = sub_225CCE954();
    v131 = *(v130 - 8);
    (*(v131 + 56))(v8, 1, 1, v130);
    LODWORD(v130) = (*(v131 + 48))(v8, 1, v130);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v130)
    {
      LOWORD(a2) = 931;
    }

    else
    {
      LOWORD(a2) = 23;
    }

    v132 = sub_225B2C374(v127);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v132;
    sub_225B2C4A0(v128, sub_225B2AC40, 0, v133, &v167);

    v8 = v167;
    v11 = sub_225B29AA0(0, 1, 1, v127);
    v3 = *(v11 + 2);
    v89 = *(v11 + 3);
    v26 = v3 + 1;
    if (v3 < v89 >> 1)
    {
      goto LABEL_137;
    }

    goto LABEL_206;
  }

  v163 = v45;
  v51 = v3;
  result = sub_225CCCFD4();
  v3 = result;
  if (v27 != 2)
  {
    if (v27 == 1)
    {
      v135 = (HIDWORD(v25) - v25);
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v135 = v135;
        goto LABEL_157;
      }

      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      v11 = sub_225B29AA0((v135 > 1), v26, 1, v11);
LABEL_191:
      *(v11 + 2) = v26;
      v121 = &v11[56 * v3];
      v122 = 0xD000000000000054;
      *(v121 + 4) = 0xD000000000000054;
      *(v121 + 5) = v27;
      *(v121 + 6) = 0xD00000000000001DLL;
      *(v121 + 7) = v25;
      *(v121 + 8) = 0x293A5F2874696E69;
      *(v121 + 9) = 0xE800000000000000;
      v123 = 329;
      goto LABEL_192;
    }

    goto LABEL_156;
  }

  v139 = *(v25 + 16);
  v138 = *(v25 + 24);
  v30 = __OFSUB__(v138, v139);
  v135 = v138 - v139;
  if (v30)
  {
    __break(1u);
LABEL_156:
    v135 = BYTE6(v26);
  }

LABEL_157:
  v164 = v134;
  if (v135 < 8)
  {
    a2 = -1;
    v2 = 7;
    goto LABEL_43;
  }

  if (v27 == 2)
  {
    v152 = *(v25 + 16);
    v151 = *(v25 + 24);
    v30 = __OFSUB__(v151, v152);
    v140 = v151 - v152;
    if (!v30)
    {
LABEL_182:
      if (v140 == 9)
      {
        v153 = sub_225CCCF64();
        v154 = sub_225CCCF64();
        if (v154 | (v153 << 8))
        {
          a2 = v154 | (v153 << 8);
        }

        else
        {
          a2 = 0x10000;
        }

        v2 = 9;
        goto LABEL_43;
      }

      v162 = result;
      v165 = v26;
      v166 = v25;
      v27 = 0x8000000225D25ED0;
      v25 = 0x8000000225D259F0;
      v155 = MEMORY[0x277D84F90];
      v156 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v2 = v157;
      v158 = sub_225CCE954();
      v159 = *(v158 - 8);
      (*(v159 + 56))(v8, 1, 1, v158);
      LODWORD(v158) = (*(v159 + 48))(v8, 1, v158);
      sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
      if (v158)
      {
        LOWORD(a2) = 904;
      }

      else
      {
        LOWORD(a2) = 23;
      }

      v160 = sub_225B2C374(v155);
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v160;
      sub_225B2C4A0(v156, sub_225B2AC40, 0, v161, &v167);

      v8 = v167;
      v11 = sub_225B29AA0(0, 1, 1, v155);
      v3 = *(v11 + 2);
      v135 = *(v11 + 3);
      v26 = v3 + 1;
      if (v3 < v135 >> 1)
      {
        goto LABEL_191;
      }

      goto LABEL_212;
    }

    __break(1u);
LABEL_181:
    v140 = BYTE6(v26);
    goto LABEL_182;
  }

  if (v27 != 1)
  {
    goto LABEL_181;
  }

  LODWORD(v140) = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v140 = v140;
    goto LABEL_182;
  }

  __break(1u);
  return result;
}

uint64_t _s13CoreIDVShared19PassportCommandAPDUC20externalAuthenticateyAC10Foundation4DataVFZ_0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
LABEL_11:
    type metadata accessor for PassportCommandAPDU();
    v8 = swift_allocObject();
    *(v8 + 16) = 33280;
    *(v8 + 24) = v3;
    *(v8 + 32) = a2;
    *(v8 + 40) = v5;
    *(v8 + 48) = 0xD000000000000015;
    *(v8 + 56) = 0x8000000225D25DB0;
    sub_2259CB710(v3, a2);
    return v8;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = HIDWORD(result) - result;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_225C13A80(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_225CCE444();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady] = v5;
  v6 = sub_225CCE444();
  v7 = [a1 containsValueForKey_];

  if (v7)
  {
    v8 = sub_225CCE444();
    [a1 decodeDoubleForKey_];
    v10 = v9;

    v11 = OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval;
    *&v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] = v10;
  }

  else
  {
    v11 = OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval;
    *&v1[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] = 0;
  }

  v1[v11 + 8] = v7 ^ 1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_225C13BD0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v5 = sub_225CCEF14();
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    v6 = v5;
    sub_225CCE464();
  }

  v7 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_batchId];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v20 = 0;
  v21 = 0;
  v8 = sub_225CCEF14();
  sub_225CCE464();

  v9 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_taskId];
  *v9 = 0;
  *(v9 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_225CD4890;
  *(v10 + 32) = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v10 + 40) = type metadata accessor for APDURequest();
  sub_225CCEF24();

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7404F8, &qword_225CFAF00);
    if (swift_dynamicCast())
    {
      v11 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    sub_2259CB640(&v20, &qword_27D73DD90, &unk_225CD4950);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_8:
  *&v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_commandAPDUs] = v11;
  v12 = sub_225CCE444();
  v13 = [a1 containsValueForKey_];

  if (v13)
  {
    v14 = sub_225CCE444();
    v15 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v15 = 0;
  }

  v16 = &v2[OBJC_IVAR____TtC13CoreIDVShared18NFCPendingCommands_maxReadSize];
  *v16 = v15;
  v16[8] = v13 ^ 1;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

unint64_t sub_225C13EC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCF5D4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_225C13F10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v13 = 0;
    v4 = v3;
    sub_225CCE464();
  }

  v5 = &v0[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = sub_225CCEF14();
  if (v6)
  {
    v13 = 0;
    v7 = v6;
    sub_225CCE464();
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_messageId];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v13 = 0;
    v10 = v9;
    sub_225CCE464();
  }

  v11 = &v1[OBJC_IVAR____TtC13CoreIDVShared11APDURequest_data];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init, v13);
}

unint64_t sub_225C140BC()
{
  result = qword_27D7404D0;
  if (!qword_27D7404D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404D0);
  }

  return result;
}

uint64_t _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a3, a4);
  type metadata accessor for PassportCommandAPDU();
  v8 = swift_allocObject();
  *(v8 + 16) = 201499660;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = -1;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x8000000225D25D90;
  sub_2259CB710(a1, a2);
  return v8;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_225C14384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 18))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_225C143E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_225C14454()
{
  result = qword_27D7404E0;
  if (!qword_27D7404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404E0);
  }

  return result;
}

unint64_t sub_225C144AC()
{
  result = qword_27D7404E8;
  if (!qword_27D7404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404E8);
  }

  return result;
}

unint64_t sub_225C14504()
{
  result = qword_27D7404F0;
  if (!qword_27D7404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7404F0);
  }

  return result;
}

__n128 TagOperations.__allocating_init(tag:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v2[1] = *a1;
  v2[2].n128_u64[0] = 0;
  return result;
}

uint64_t TagOperations.init(tag:)(_OWORD *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 32) = 0;
  return v1;
}

void *TagOperations.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = a1;
  result[2] = 0;
  return result;
}

void *TagOperations.init(with:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = a1;
  v1[2] = 0;
  return v1;
}

uint64_t sub_225C14620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 196) = a6;
  *(v7 + 152) = a5;
  *(v7 + 160) = v6;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;

  return MEMORY[0x2822009F8](sub_225C146BC, 0, 0);
}

uint64_t *sub_225C146BC()
{
  v61 = v0;
  v60[2] = *MEMORY[0x277D85DE8];
  v1 = _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_225C0CC5C(v1);
  v2 = *(v0 + 196);
  v3 = PassportCommandAPDU.asData.getter();
  v5 = v4;

  v6 = sub_225C15D34(v3, v5, v2);
  v8 = v7;

  sub_2259BEF00(v3, v5);
  sub_2259CB710(v6, v8);
  v9 = sub_225C0D8B0(v6, v8);
  sub_2259BEF00(v9, v10);
  sub_2259BEF00(v6, v8);
  type metadata accessor for PassportCommandAPDU();
  inited = swift_initStackObject();
  *(inited + 16) = 45068;
  *(inited + 24) = xmmword_225CD4150;
  *(inited + 40) = xmmword_225CF2CF0;
  *(inited + 56) = 0xE000000000000000;
  sub_225C0CC5C(inited);
  v12 = PassportCommandAPDU.asData.getter();
  v58 = v13;
  v14 = sub_225C15D34(v12, v13, 1);
  v15 = v12;
  v17 = v16;
  sub_2259BEF00(v15, v58);
  sub_2259CB710(v14, v17);
  v59 = v17;
  v18 = v14;
  v19 = sub_225C0D8B0(v14, v17);
  v20 = v14;
  v22 = v21;
  sub_2259BEF00(v20, v59);
  v57 = v22;
  v23 = sub_225CCCF54();
  v24 = MEMORY[0x277CC9318];
  v25 = MEMORY[0x277CC9300];
  *(v0 + 104) = MEMORY[0x277CC9318];
  *(v0 + 112) = v25;
  *(v0 + 80) = v23;
  *(v0 + 88) = v26;
  result = __swift_project_boxed_opaque_existential_1((v0 + 80), v24);
  v28 = *result;
  v29 = result[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      *(v0 + 188) = 0;
      *(v0 + 182) = 0;
      v31 = (v0 + 182);
      v32 = (v0 + 182);
      goto LABEL_19;
    }

    v55 = v19;
    v56 = v18;
    v51 = *(v28 + 24);
    v53 = *(v28 + 16);
    result = sub_225CCCA44();
    if (result)
    {
      v33 = result;
      result = sub_225CCCA74();
      v34 = v53;
      if (__OFSUB__(v53, result))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = v33 + v53 - result;
    }

    else
    {
      v50 = 0;
      v34 = v53;
    }

    v43 = v51 - v34;
    if (!__OFSUB__(v51, v34))
    {
      v44 = sub_225CCCA64();
      if (v44 >= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      v42 = v50;
      v46 = &v50[v45];
      if (v50)
      {
        v41 = v46;
      }

      else
      {
        v41 = 0;
      }

LABEL_28:
      sub_225B3D3E8(v42, v41, v60);

      v19 = v55;
      v18 = v56;
      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v30)
  {
    v55 = v19;
    v56 = v18;
    v35 = v28;
    v36 = v28 >> 32;
    v52 = v35;
    v54 = v36 - v35;
    if (v36 >= v35)
    {
      v37 = sub_225CCCA44();
      if (!v37)
      {
LABEL_12:
        v38 = sub_225CCCA64();
        v39 = v54;
        if (v38 < v54)
        {
          v39 = v38;
        }

        v40 = (v39 + v37);
        if (v37)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = v37;
        goto LABEL_28;
      }

      result = sub_225CCCA74();
      if (!__OFSUB__(v52, result))
      {
        v37 += v52 - result;
        goto LABEL_12;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_33;
  }

  v31 = (v0 + 168);
  *(v0 + 168) = v28;
  *(v0 + 176) = v29;
  *(v0 + 178) = BYTE2(v29);
  *(v0 + 179) = BYTE3(v29);
  *(v0 + 180) = BYTE4(v29);
  *(v0 + 181) = BYTE5(v29);
  v32 = (v0 + 168 + BYTE6(v29));
LABEL_19:
  sub_225B3D3E8(v31, v32, v60);

LABEL_29:
  swift_setDeallocating();
  sub_2259B97A8(*(inited + 24), *(inited + 32));
  sub_2259BEF00(v19, v57);

  sub_2259BEF00(v18, v59);
  sub_2259BEF00(v6, v8);
  v48 = v60[0];
  v47 = v60[1];
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v49 = *(v0 + 8);

  return v49(v48, v47);
}

uint64_t sub_225C14C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 142) = v12;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;

  return MEMORY[0x2822009F8](sub_225C14D3C, 0, 0);
}

uint64_t *sub_225C14D3C()
{
  v98 = v0;
  v97 = *MEMORY[0x277D85DE8];
  v1 = _s13CoreIDVShared19PassportCommandAPDUC15encryptedSelect6fileID0H4NameAC10Foundation4DataV_SStFZ_0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_225C0CC5C(v1);
  v2 = PassportCommandAPDU.asData.getter();
  v4 = v3;

  v5 = sub_225C15D34(v2, v4, 1);
  v7 = v6;

  sub_2259BEF00(v2, v4);
  sub_2259CB710(v5, v7);
  v8 = sub_225C0D8B0(v5, v7);
  v9 = *(v0 + 104);
  sub_2259BEF00(v8, v10);
  v93 = v5;
  sub_2259BEF00(v5, v7);
  v94 = xmmword_225CD4150;
  v11 = v9 >> 60;
  v12 = v9 >> 60 == 15;
  if (v9 >> 60 == 15)
  {
    v92 = v7;
    type metadata accessor for PassportCommandAPDU();
    v13 = swift_allocObject();
    *(v13 + 16) = 45068;
    *(v13 + 24) = xmmword_225CD4150;
    *(v13 + 40) = xmmword_225CF2CB0;
    *(v13 + 56) = 0xE000000000000000;

    sub_225C0CC5C(v14);
    v89 = v9 >> 60 == 15;

    v17 = PassportCommandAPDU.asData.getter();
    v19 = v18;
    v43 = sub_225C15D34(v17, v18, 1);
    v45 = v44;
    sub_2259BEF00(v17, v19);
    sub_2259CB710(v43, v45);
    v47 = sub_225C0D8B0(v43, v45);
    v49 = v48;
    sub_2259BEF00(v43, v45);
    v50 = sub_225CCCF54();
    v52 = v51;
    v88 = v47;
    v91 = sub_225C17210(v50, v51);
    v53 = (v0 + 128);
    v54 = MEMORY[0x277CC9318];
    v55 = MEMORY[0x277CC9300];
    *(v0 + 40) = MEMORY[0x277CC9318];
    *(v0 + 48) = v55;
    *(v0 + 16) = v50;
    *(v0 + 24) = v52;
    result = __swift_project_boxed_opaque_existential_1((v0 + 16), v54);
    v57 = *result;
    v58 = result[1];
    v59 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v59 != 2)
      {
        *(v0 + 134) = 0;
        *v53 = 0;
        v61 = (v0 + 128);
        v60 = (v0 + 128);
        goto LABEL_57;
      }

      v84 = *(v57 + 24);
      v86 = *(v57 + 16);
      result = sub_225CCCA44();
      v83 = v45;
      if (result)
      {
        v62 = result;
        result = sub_225CCCA74();
        if (__OFSUB__(v86, result))
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v63 = v62 + v86 - result;
      }

      else
      {
        v63 = 0;
      }

      if (!__OFSUB__(v84, v86))
      {
        v72 = sub_225CCCA64();
        if (v72 >= v84 - v86)
        {
          v73 = v84 - v86;
        }

        else
        {
          v73 = v72;
        }

        v74 = &v63[v73];
        if (v63)
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }

        sub_225B3D3E8(v63, v75, &v95);

        sub_2259BEF00(v88, v49);
        v70 = v43;
        v71 = v83;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v59)
      {
        *(v0 + 128) = v57;
        *(v0 + 136) = v58;
        *(v0 + 138) = BYTE2(v58);
        *(v0 + 139) = BYTE3(v58);
        *(v0 + 140) = BYTE4(v58);
        *(v0 + 141) = BYTE5(v58);
        v60 = v53 + BYTE6(v58);
        v61 = (v0 + 128);
LABEL_57:
        sub_225B3D3E8(v61, v60, &v95);

        sub_2259BEF00(v88, v49);
        v70 = v43;
        v71 = v45;
LABEL_67:
        sub_2259BEF00(v70, v71);
        v21 = v95;
        v22 = v96;
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        result = sub_2259BEF00(0, 0xC000000000000000);
        *&v94 = v21;
        *(&v94 + 1) = v22;
        v76 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v76 != 2)
          {
            v20 = 8;
            v11 = 15;
            v12 = v89;
            goto LABEL_4;
          }

          v79 = *(v21 + 16);
          v78 = *(v21 + 24);
          v42 = __OFSUB__(v78, v79);
          v77 = v78 - v79;
          if (!v42)
          {
LABEL_76:
            if (v77 >= v91)
            {

              sub_2259BEF00(v93, v7);
              goto LABEL_34;
            }

            if (v76 == 2)
            {
              v82 = *(v21 + 16);
              v81 = *(v21 + 24);
              v42 = __OFSUB__(v81, v82);
              v80 = v81 - v82;
              if (!v42)
              {
LABEL_87:
                v20 = 8;
                v11 = 15;
                v12 = v89;
                v23 = &v91[-v80];
                if (__OFSUB__(v91, v80))
                {
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  __break(1u);
LABEL_92:
                  __break(1u);
LABEL_93:
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                }

                goto LABEL_6;
              }

              __break(1u);
            }

            else if (v76 == 1)
            {
              LODWORD(v80) = HIDWORD(v21) - v21;
              if (!__OFSUB__(HIDWORD(v21), v21))
              {
                v80 = v80;
                goto LABEL_87;
              }

LABEL_101:
              __break(1u);
              return result;
            }

            v80 = BYTE6(v22);
            goto LABEL_87;
          }

          __break(1u);
        }

        else if (!v76)
        {
          v77 = BYTE6(v22);
          goto LABEL_76;
        }

        LODWORD(v77) = HIDWORD(v21) - v21;
        if (!__OFSUB__(HIDWORD(v21), v21))
        {
          v77 = v77;
          goto LABEL_76;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v64 = v57;
      v65 = v57 >> 32;
      v85 = v64;
      v87 = v65 - v64;
      if (v65 >= v64)
      {
        v66 = sub_225CCCA44();
        if (!v66)
        {
LABEL_50:
          v67 = sub_225CCCA64();
          v68 = v87;
          if (v67 < v87)
          {
            v68 = v67;
          }

          v69 = (v68 + v66);
          if (v66)
          {
            v60 = v69;
          }

          else
          {
            v60 = 0;
          }

          v61 = v66;
          goto LABEL_57;
        }

        result = sub_225CCCA74();
        if (!__OFSUB__(v85, result))
        {
          v66 += v85 - result;
          goto LABEL_50;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_98;
  }

  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  sub_2259CB6FC(v16, v15);
  v91 = sub_225C17210(v16, v15);
  v92 = v7;
  sub_2259B97A8(*(v0 + 96), *(v0 + 104));
  v20 = 0;
  v21 = 0;
  v22 = 0xC000000000000000;
LABEL_4:
  if (v91 <= 0)
  {
    goto LABEL_33;
  }

  v23 = v91;
LABEL_6:
  if (v23 >= 1)
  {
    v24 = 160;
    if ((*(v0 + 142) & 1) == 0)
    {
      v24 = *(v0 + 112);
    }

    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    do
    {
      if (v20 >> 8 > 255)
      {
        goto LABEL_90;
      }

      v90 = v23;
      if (v20 >> 8 < 0)
      {
        goto LABEL_91;
      }

      type metadata accessor for PassportCommandAPDU();
      v26 = swift_allocObject();
      *(v26 + 16) = -20468;
      *(v26 + 18) = BYTE1(v20);
      *(v26 + 19) = v20;
      *(v26 + 24) = xmmword_225CD4150;
      *(v26 + 40) = v25;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0xE000000000000000;
      if (v12)
      {
      }

      sub_225C0CC5C(v27);

      v28 = PassportCommandAPDU.asData.getter();
      v30 = v29;
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_225CCF204();

      v95 = 0xD000000000000016;
      v96 = 0x8000000225D25FC0;
      *(v0 + 16) = v25;
      v31 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v31);

      MEMORY[0x22AA6CE70](0x736574796220, 0xE600000000000000);
      v32 = sub_225C15D34(v28, v30, 1);
      v34 = v33;

      sub_2259BEF00(v28, v30);
      sub_2259CB710(v32, v34);
      v35 = sub_225C0D8B0(v32, v34);
      v37 = v36;
      sub_2259BEF00(v32, v34);
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v41 = v35[2];
          v40 = v35[3];
          v39 = v40 - v41;
          if (__OFSUB__(v40, v41))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v39 = 0;
        }
      }

      else if (v38)
      {
        if (__OFSUB__(HIDWORD(v35), v35))
        {
          goto LABEL_95;
        }

        v39 = HIDWORD(v35) - v35;
      }

      else
      {
        v39 = BYTE6(v37);
      }

      sub_225CCCFC4();
      sub_2259BEF00(v32, v34);
      sub_2259BEF00(v35, v37);

      v42 = __OFADD__(v20, v39);
      v20 += v39;
      if (v42)
      {
        goto LABEL_92;
      }

      v23 = v90 - v39;
      if (__OFSUB__(v90, v39))
      {
        goto LABEL_93;
      }

      if (v39 >= v23)
      {
        v25 = v90 - v39;
      }

      else
      {
        v25 = v39;
      }

      v12 = 1;
    }

    while (v23 > 0);

    sub_2259BEF00(v93, v92);
    v22 = *(&v94 + 1);
    v21 = v94;
    sub_2259CB710(v94, *(&v94 + 1));

    goto LABEL_36;
  }

LABEL_33:

  sub_2259BEF00(v93, v92);
  if (v11 < 0xF)
  {
    sub_2259CB710(v21, v22);
    goto LABEL_36;
  }

LABEL_34:
  sub_2259CB710(v21, v22);

LABEL_36:
  sub_2259BEF00(v21, v22);
  v46 = *(v0 + 8);

  return v46(v21, v22);
}

void *TagOperations.deinit()
{
  sub_225C17B38(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t TagOperations.__deallocating_deinit()
{
  sub_225C17B38(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_225C158C0(uint64_t a1, unint64_t a2)
{
  v2 = sub_225CCE704();
  v6 = sub_225C15940(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_225C15940(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_225CCEFE4();
    if (!v9 || (v10 = v9, v11 = sub_225C0060C(v9, 0), v12 = sub_225C15A98(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_225CCE5A4();

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
      return sub_225CCE5A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_225CCF354();
LABEL_4:

  return sub_225CCE5A4();
}

unint64_t sub_225C15A98(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_225C15CB8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_225CCE684();
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
          result = sub_225CCF354();
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

    result = sub_225C15CB8(v12, a6, a7);
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

    result = sub_225CCE664();
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

unint64_t sub_225C15CB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_225CCE6A4();
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
    v5 = MEMORY[0x22AA6CEB0](15, a1 >> 16);
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

void *sub_225C15D34(unint64_t a1, unint64_t a2, int a3)
{
  v5 = v4;
  v203 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v204 = &v190[-v9];
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v190[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v190[-v19];
  v21 = v3[4];
  if (!v21)
  {
    v76 = v3[2];
    if (v76)
    {
      v77 = a3;
      v78 = v3[3];
      v79 = v76;
      v80 = v78;
      if ([v80 connectTag_])
      {
        v81 = sub_225CCCF74();
        v82 = [v80 transceive_];

        if (!v82)
        {
          v202 = 0x8000000225D26040;
          v203 = 0x8000000225D260F0;
          v201 = 0x8000000225D260B0;
          v136 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v138 = v137;
          v139 = sub_225CCE954();
          v140 = *(v139 - 8);
          v141 = v204;
          (*(v140 + 56))(v204, 1, 1, v139);
          LODWORD(v139) = (*(v140 + 48))(v141, 1, v139);
          sub_2259DB318(v141);
          if (v139)
          {
            v58 = 871;
          }

          else
          {
            v58 = 23;
          }

          v142 = MEMORY[0x277D84F90];
          v143 = sub_225B2C374(MEMORY[0x277D84F90]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v143;
          sub_225B2C4A0(v136, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v205);

          v145 = v205;
          v146 = sub_225B29AA0(0, 1, 1, v142);
          v148 = *(v146 + 2);
          v147 = *(v146 + 3);
          if (v148 >= v147 >> 1)
          {
            v146 = sub_225B29AA0((v147 > 1), v148 + 1, 1, v146);
          }

          *(v146 + 2) = v148 + 1;
          v149 = &v146[56 * v148];
          v151 = v202;
          v150 = v203;
          *(v149 + 4) = 0xD00000000000001CLL;
          *(v149 + 5) = v150;
          *(v149 + 6) = 0xD000000000000021;
          *(v149 + 7) = v151;
          *(v149 + 8) = 0xD000000000000034;
          *(v149 + 9) = v201;
          *(v149 + 10) = 50;
          *v138 = v58;
          *(v138 + 8) = v146;
          *(v138 + 16) = 0xD00000000000001CLL;
          *(v138 + 24) = v150;
          *(v138 + 32) = v145;
          *(v138 + 40) = 0;
          swift_willThrow();

          return v58;
        }

        v194 = v11;
        v202 = v10;
        v58 = sub_225CCCFA4();
        v84 = v83;

        if ((v77 & 1) == 0)
        {
          return v58;
        }

        goto LABEL_42;
      }
    }

    v50 = 0x8000000225D26090;
    v202 = 0x8000000225D260B0;
    v203 = 0x8000000225D26040;
    v100 = MEMORY[0x277D84F90];
    v101 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v102;
    v103 = sub_225CCE954();
    v104 = *(v103 - 8);
    v105 = v204;
    (*(v104 + 56))(v204, 1, 1, v103);
    LODWORD(v103) = (*(v104 + 48))(v105, 1, v103);
    sub_2259DB318(v105);
    if (v103)
    {
      v58 = 870;
    }

    else
    {
      v58 = 23;
    }

    v106 = sub_225B2C374(v100);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v106;
    sub_225B2C4A0(v101, sub_225B2AC40, 0, v107, &v205);

    v61 = v205;
    v93 = sub_225B29AA0(0, 1, 1, v100);
    v109 = *(v93 + 2);
    v108 = *(v93 + 3);
    if (v109 >= v108 >> 1)
    {
      v93 = sub_225B29AA0((v108 > 1), v109 + 1, 1, v93);
    }

    *(v93 + 2) = v109 + 1;
    v96 = &v93[56 * v109];
    v97 = 0xD000000000000018;
    *(v96 + 4) = 0xD000000000000018;
    *(v96 + 5) = 0x8000000225D26090;
    v110 = v203;
    *(v96 + 6) = 0xD000000000000021;
    *(v96 + 7) = v110;
    v111 = v202;
    *(v96 + 8) = 0xD000000000000034;
    *(v96 + 9) = v111;
    v99 = 47;
LABEL_38:
    *(v96 + 10) = v99;
    *v54 = v58;
    *(v54 + 8) = v93;
    *(v54 + 16) = v97;
LABEL_39:
    *(v54 + 24) = v50;
    *(v54 + 32) = v61;
    *(v54 + 40) = 0;
    swift_willThrow();
    return v58;
  }

  v199 = a2;
  v192 = v14;
  v193 = v18;
  v195 = v17;
  v191 = a3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  v196 = *(v11 + 16);
  v197 = v23;
  (v196)(v20, &v23[v22], v10);
  v198 = v24;
  os_unfair_lock_unlock((v22 + v24));
  v25 = sub_225CCD934();
  v26 = sub_225CCED34();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v194 = v11;
    v28 = v27;
    *v27 = 0;
    _os_log_impl(&dword_2259A7000, v25, v26, "Static APDU transcript initialized, will lookup apdu", v27, 2u);
    v29 = v28;
    v5 = v4;
    v11 = v194;
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  v30 = *(v11 + 8);
  v201 = (v11 + 8);
  v202 = v10;
  v200 = v30;
  v30(v20, v10);
  v31 = sub_225B34448(v203, v199);
  v203 = v5;
  v205 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  sub_225CCE384();

  v32 = sub_225CCE514();
  v34 = v33;

  if (!*(v21 + 16) || (v35 = sub_2259F18D4(v32, v34), (v36 & 1) == 0))
  {
    v67 = v198;
    os_unfair_lock_lock((v22 + v198));
    v68 = v195;
    v69 = v202;
    (v196)(v195, &v197[v22], v202);
    v70 = v68;
    os_unfair_lock_unlock((v22 + v67));

    v71 = sub_225CCD934();
    v72 = sub_225CCED34();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v205 = v74;
      *v73 = 136315138;
      v75 = sub_2259BE198(v32, v34, &v205);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_2259A7000, v71, v72, "Unable to find rapdu for: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x22AA6F950](v74, -1, -1);
      MEMORY[0x22AA6F950](v73, -1, -1);
    }

    else
    {
    }

    v200(v70, v69);
    v50 = 0x8000000225D26170;
    v202 = 0x8000000225D26040;
    v85 = MEMORY[0x277D84F90];
    v86 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v87;
    v88 = sub_225CCE954();
    v89 = *(v88 - 8);
    v90 = v204;
    (*(v89 + 56))(v204, 1, 1, v88);
    LODWORD(v88) = (*(v89 + 48))(v90, 1, v88);
    sub_2259DB318(v90);
    if (v88)
    {
      v58 = 1001;
    }

    else
    {
      v58 = 23;
    }

    v91 = sub_225B2C374(v85);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v91;
    sub_225B2C4A0(v86, sub_225B2AC40, 0, v92, &v205);

    v61 = v205;
    v93 = sub_225B29AA0(0, 1, 1, v85);
    v95 = *(v93 + 2);
    v94 = *(v93 + 3);
    if (v95 >= v94 >> 1)
    {
      v93 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v93);
    }

    *(v93 + 2) = v95 + 1;
    v96 = &v93[56 * v95];
    v97 = 0xD000000000000025;
    *(v96 + 4) = 0xD000000000000025;
    *(v96 + 5) = 0x8000000225D26170;
    v98 = v202;
    *(v96 + 6) = 0xD000000000000021;
    *(v96 + 7) = v98;
    *(v96 + 8) = 0xD000000000000034;
    *(v96 + 9) = 0x8000000225D260B0;
    v99 = 43;
    goto LABEL_38;
  }

  v37 = v35;
  v194 = v11;

  v38 = (*(v21 + 56) + 16 * v37);
  v40 = *v38;
  v39 = v38[1];

  v41 = v198;
  os_unfair_lock_lock((v22 + v198));
  v42 = v193;
  v43 = v202;
  (v196)(v193, &v197[v22], v202);
  v44 = v42;
  os_unfair_lock_unlock((v22 + v41));
  v45 = sub_225CCD934();
  v46 = sub_225CCED34();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2259A7000, v45, v46, "Found RAPDU", v47, 2u);
    MEMORY[0x22AA6F950](v47, -1, -1);
  }

  v200(v44, v43);
  v48 = Data.init(base16Encoded:)(v40, v39);
  if (v49 >> 60 == 15)
  {
    v50 = 0x8000000225D261A0;
    v202 = 0x8000000225D26040;
    v51 = MEMORY[0x277D84F90];
    v52 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v54 = v53;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    v57 = v204;
    (*(v56 + 56))(v204, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v57, 1, v55);
    sub_2259DB318(v57);
    if (v55)
    {
      v58 = 871;
    }

    else
    {
      v58 = 23;
    }

    v59 = sub_225B2C374(v51);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v59;
    sub_225B2C4A0(v52, sub_225B2AC40, 0, v60, &v205);

    v61 = v205;
    v62 = sub_225B29AA0(0, 1, 1, v51);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[56 * v64];
    *(v65 + 4) = 0xD00000000000001ELL;
    *(v65 + 5) = 0x8000000225D261A0;
    v66 = v202;
    *(v65 + 6) = 0xD000000000000021;
    *(v65 + 7) = v66;
    *(v65 + 8) = 0xD000000000000034;
    *(v65 + 9) = 0x8000000225D260B0;
    *(v65 + 10) = 56;
    *v54 = v58;
    *(v54 + 8) = v62;
    *(v54 + 16) = 0xD00000000000001ELL;
    goto LABEL_39;
  }

  v58 = v48;
  v84 = v49;
  v5 = v203;
  v14 = v192;
  if ((v191 & 1) == 0)
  {
    return v58;
  }

LABEL_42:
  v203 = v5;
  sub_2259CB710(v58, v84);
  v113 = sub_225C0F394(v58, v84);
  v114 = v113[2];
  v115 = v114 - 2;
  if (v114 < 2)
  {

    v116 = 0x8000000225D26140;
    v201 = 0x8000000225D260B0;
    v202 = 0x8000000225D26040;
    v117 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v204;
    (*(v121 + 56))(v204, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259DB318(v122);
    if (v120)
    {
      v123 = 871;
    }

    else
    {
      v123 = 23;
    }

    v124 = MEMORY[0x277D84F90];
    v125 = sub_225B2C374(MEMORY[0x277D84F90]);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v125;
    sub_225B2C4A0(v117, sub_225B2AC40, 0, v126, &v205);

    v127 = v205;
    v128 = sub_225B29AA0(0, 1, 1, v124);
    v130 = *(v128 + 2);
    v129 = *(v128 + 3);
    if (v130 >= v129 >> 1)
    {
      v128 = sub_225B29AA0((v129 > 1), v130 + 1, 1, v128);
    }

    *(v128 + 2) = v130 + 1;
    v131 = &v128[56 * v130];
    v132 = 0xD000000000000025;
    *(v131 + 4) = 0xD000000000000025;
    *(v131 + 5) = 0x8000000225D26140;
    v133 = v202;
    *(v131 + 6) = 0xD000000000000021;
    *(v131 + 7) = v133;
    v134 = v201;
    *(v131 + 8) = 0xD000000000000034;
    *(v131 + 9) = v134;
    v135 = 67;
LABEL_69:
    *(v131 + 10) = v135;
    *v119 = v123;
    *(v119 + 8) = v128;
    *(v119 + 16) = v132;
    *(v119 + 24) = v116;
    *(v119 + 32) = v127;
    *(v119 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v58, v84);
    return v58;
  }

  v201 = v113;
  LODWORD(v200) = *(v113 + v115 + 32);
  v197 = (v113 + 4);
  v198 = v114;
  LODWORD(v199) = *(v113 + v114 + 31);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v152 = off_28105B918;
  v153 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v154 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v154));
  v155 = v194;
  v156 = v202;
  (*(v194 + 16))(v14, &v152[v153], v202);
  os_unfair_lock_unlock(&v152[v154]);
  v157 = sub_225CCD934();
  v158 = sub_225CCED34();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v195 = v159;
    v196 = swift_slowAlloc();
    v205 = v196;
    *v159 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0, &qword_225CEF1C0);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_225CD4890;
    v161 = MEMORY[0x277D84B78];
    v162 = MEMORY[0x277D84BC0];
    *(v160 + 56) = MEMORY[0x277D84B78];
    *(v160 + 64) = v162;
    LODWORD(v159) = v200;
    *(v160 + 32) = v200;
    *(v160 + 96) = v161;
    *(v160 + 104) = v162;
    v202 = v156;
    v163 = v199;
    *(v160 + 72) = v199;
    v164 = sub_225CCE4A4();
    v192 = v14;
    v166 = sub_2259BE198(v164, v165, &v205);
    v193 = v157;
    v167 = v158;
    v168 = v115;
    v169 = v166;

    v170 = v195;
    *(v195 + 1) = v169;
    v115 = v168;
    v171 = v159;
    v172 = v167;
    v173 = v193;
    v174 = v170;
    _os_log_impl(&dword_2259A7000, v193, v172, "TagOperations response sw = 0x%s", v170, 0xCu);
    v175 = v196;
    __swift_destroy_boxed_opaque_existential_0(v196);
    MEMORY[0x22AA6F950](v175, -1, -1);
    MEMORY[0x22AA6F950](v174, -1, -1);

    (*(v155 + 8))(v192, v202);
  }

  else
  {

    (*(v155 + 8))(v14, v156);
    v171 = v200;
    v163 = v199;
  }

  if (sub_225C0EFD4(v163 | (v171 << 8)) != 36)
  {

    v116 = 0x8000000225D26110;
    v201 = 0x8000000225D260B0;
    v202 = 0x8000000225D26040;
    v177 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v119 = v178;
    v179 = sub_225CCE954();
    v180 = *(v179 - 8);
    v181 = v204;
    (*(v180 + 56))(v204, 1, 1, v179);
    LODWORD(v179) = (*(v180 + 48))(v181, 1, v179);
    sub_2259DB318(v181);
    if (v179)
    {
      v123 = 871;
    }

    else
    {
      v123 = 23;
    }

    v182 = MEMORY[0x277D84F90];
    v183 = sub_225B2C374(MEMORY[0x277D84F90]);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v183;
    sub_225B2C4A0(v177, sub_225B2AC40, 0, v184, &v205);

    v127 = v205;
    v128 = sub_225B29AA0(0, 1, 1, v182);
    v186 = *(v128 + 2);
    v185 = *(v128 + 3);
    if (v186 >= v185 >> 1)
    {
      v128 = sub_225B29AA0((v185 > 1), v186 + 1, 1, v128);
    }

    *(v128 + 2) = v186 + 1;
    v131 = &v128[56 * v186];
    v132 = 0xD000000000000026;
    *(v131 + 4) = 0xD000000000000026;
    *(v131 + 5) = 0x8000000225D26110;
    v187 = v202;
    *(v131 + 6) = 0xD000000000000021;
    *(v131 + 7) = v187;
    v188 = v201;
    *(v131 + 8) = 0xD000000000000034;
    *(v131 + 9) = v188;
    v135 = 79;
    goto LABEL_69;
  }

  result = v201;
  if (v198 == 2)
  {

    v176 = 0;
LABEL_72:
    sub_2259BEF00(v58, v84);
    return v176;
  }

  if (v201[2] >= v115)
  {
    sub_2259D2AD0(v201, v197, 0, (2 * v115) | 1);
    v176 = v189;
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_225C17210(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v79 - v10;
  sub_2259CB710(a1, a2);
  v12 = sub_225C0F394(a1, a2);
  v14 = v12[2];
  if (v14 < 2)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v15 = *(v12 + 33);
  if ((*(v12 + 33) & 0x80000000) == 0)
  {

    return (v15 + 2);
  }

  if (v15 != 130)
  {
    if (v15 != 129)
    {

      v5 = 0x8000000225D26020;
      v81 = 0x8000000225D26070;
      v82 = 0x8000000225D26040;
      v34 = MEMORY[0x277D84F90];
      v35 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      a1 = v36;
      v37 = sub_225CCE954();
      v38 = *(v37 - 8);
      (*(v38 + 56))(v11, 1, 1, v37);
      LODWORD(v37) = (*(v38 + 48))(v11, 1, v37);
      sub_2259DB318(v11);
      if (v37)
      {
        v4 = 865;
      }

      else
      {
        v4 = 23;
      }

      v39 = sub_225B2C374(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v39;
      sub_225B2C4A0(v35, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v83);

      v11 = v83[0];
      v13 = sub_225B29AA0(0, 1, 1, v34);
      v3 = *(v13 + 2);
      v14 = *(v13 + 3);
      v6 = v3 + 1;
      if (v3 < v14 >> 1)
      {
        goto LABEL_36;
      }

      goto LABEL_111;
    }

    if (v14 != 2)
    {
      v17 = *(v12 + 34);

      return (v17 + 3);
    }

    goto LABEL_109;
  }

  if (v14 < 4)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    v13 = sub_225B29AA0((v14 > 1), v6, 1, v13);
LABEL_36:
    *(v13 + 2) = v6;
    v41 = &v13[56 * v3];
    *(v41 + 4) = 0xD000000000000011;
    *(v41 + 5) = v5;
    v42 = v82;
    *(v41 + 6) = 0xD000000000000021;
    *(v41 + 7) = v42;
    v43 = v81;
    *(v41 + 8) = 0xD000000000000012;
    *(v41 + 9) = v43;
    *(v41 + 10) = 223;
    *a1 = v4;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0xD000000000000011;
    *(a1 + 24) = v5;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0;
    return swift_willThrow();
  }

  sub_2259D2AD0(v12, v12 + 4, 2, 9);
  v19 = v18;
  v21 = v20;
  v83[0] = sub_225B34448(v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v22 = sub_225CCE384();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  v26 = v22 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v27 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

LABEL_102:
    v81 = v19;
    v82 = v21;
    v79 = 0x8000000225D26070;
    v80 = 0x8000000225D26040;
    v59 = MEMORY[0x277D84F90];
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v62 = v61;
    v63 = sub_225CCE954();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v11, 1, 1, v63);
    LODWORD(v63) = (*(v64 + 48))(v11, 1, v63);
    sub_2259DB318(v11);
    if (v63)
    {
      v65 = 865;
    }

    else
    {
      v65 = 23;
    }

    v66 = sub_225B2C374(v59);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v66;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, v67, v83);

    v68 = v83[0];
    v69 = sub_225B29AA0(0, 1, 1, v59);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
    }

    v73 = v81;
    v72 = v82;
    *(v69 + 2) = v71 + 1;
    v74 = &v69[56 * v71];
    *(v74 + 4) = 0xD000000000000011;
    *(v74 + 5) = 0x8000000225D26020;
    v75 = v80;
    *(v74 + 6) = 0xD000000000000021;
    *(v74 + 7) = v75;
    v76 = v79;
    *(v74 + 8) = 0xD000000000000012;
    *(v74 + 9) = v76;
    *(v74 + 10) = 219;
    *v62 = v65;
    *(v62 + 8) = v69;
    *(v62 + 16) = 0xD000000000000011;
    *(v62 + 24) = 0x8000000225D26020;
    *(v62 + 32) = v68;
    *(v62 + 40) = 0;
    swift_willThrow();
    return sub_2259BEF00(v73, v72);
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v29 = sub_2259F3F08(v22, v24, 16);
    v78 = v77;

    if ((v78 & 1) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_102;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v22 & 0x1000000000000000) == 0)
    {
      goto LABEL_117;
    }

    for (result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_225CCF354())
    {
      v28 = *result;
      if (v28 == 43)
      {
        if (v26 < 1)
        {
          goto LABEL_120;
        }

        v25 = v26 - 1;
        if (v26 != 1)
        {
          if (!result)
          {
            goto LABEL_88;
          }

          v29 = 0;
          v47 = result + 1;
          while (1)
          {
            v48 = *v47;
            v49 = v48 - 48;
            if ((v48 - 48) >= 0xA)
            {
              if ((v48 - 65) < 6)
              {
                v49 = v48 - 55;
              }

              else
              {
                if ((v48 - 97) > 5)
                {
                  break;
                }

                v49 = v48 - 87;
              }
            }

            if ((v29 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v33 = __OFADD__(16 * v29, v49);
            v29 = 16 * v29 + v49;
            if (v33)
            {
              break;
            }

            ++v47;
            if (!--v25)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v28 == 45)
      {
        if (v26 < 1)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v25 = v26 - 1;
        if (v26 != 1)
        {
          if (!result)
          {
            goto LABEL_88;
          }

          v29 = 0;
          v30 = result + 1;
          while (1)
          {
            v31 = *v30;
            v32 = v31 - 48;
            if ((v31 - 48) >= 0xA)
            {
              if ((v31 - 65) < 6)
              {
                v32 = v31 - 55;
              }

              else
              {
                if ((v31 - 97) > 5)
                {
                  break;
                }

                v32 = v31 - 87;
              }
            }

            if ((v29 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v33 = __OFSUB__(16 * v29, v32);
            v29 = 16 * v29 - v32;
            if (v33)
            {
              break;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_101;
            }
          }
        }
      }

      else if (v26)
      {
        if (!result)
        {
LABEL_88:
          v29 = 0;
          LOBYTE(v25) = 0;
          goto LABEL_101;
        }

        v29 = 0;
        while (1)
        {
          v53 = *result;
          v54 = v53 - 48;
          if ((v53 - 48) >= 0xA)
          {
            if ((v53 - 65) < 6)
            {
              v54 = v53 - 55;
            }

            else
            {
              if ((v53 - 97) > 5)
              {
                break;
              }

              v54 = v53 - 87;
            }
          }

          if ((v29 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v33 = __OFADD__(16 * v29, v54);
          v29 = 16 * v29 + v54;
          if (v33)
          {
            break;
          }

          ++result;
          if (!--v26)
          {
            LOBYTE(v25) = 0;
            goto LABEL_101;
          }
        }
      }

LABEL_100:
      v29 = 0;
      LOBYTE(v25) = 1;
LABEL_101:
      v84 = v25;
      v58 = v25;

      if (v58)
      {
        goto LABEL_102;
      }

LABEL_114:
      sub_2259BEF00(v19, v21);
      result = (v29 + 4);
      if (!__OFADD__(v29, 4))
      {
        return result;
      }

      __break(1u);
LABEL_117:
      ;
    }
  }

  v83[0] = v22;
  v83[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v22 != 43)
  {
    if (v22 != 45)
    {
      if (!v25)
      {
        goto LABEL_100;
      }

      v29 = 0;
      v55 = v83;
      while (1)
      {
        v56 = *v55;
        v57 = v56 - 48;
        if ((v56 - 48) >= 0xA)
        {
          if ((v56 - 65) < 6)
          {
            v57 = v56 - 55;
          }

          else
          {
            if ((v56 - 97) > 5)
            {
              goto LABEL_100;
            }

            v57 = v56 - 87;
          }
        }

        if ((v29 - 0x800000000000000) >> 60 != 15)
        {
          goto LABEL_100;
        }

        v33 = __OFADD__(16 * v29, v57);
        v29 = 16 * v29 + v57;
        if (v33)
        {
          goto LABEL_100;
        }

        v55 = (v55 + 1);
        if (!--v25)
        {
          goto LABEL_101;
        }
      }
    }

    if (v25)
    {
      if (!--v25)
      {
        goto LABEL_100;
      }

      v29 = 0;
      v44 = v83 + 1;
      while (1)
      {
        v45 = *v44;
        v46 = v45 - 48;
        if ((v45 - 48) >= 0xA)
        {
          if ((v45 - 65) < 6)
          {
            v46 = v45 - 55;
          }

          else
          {
            if ((v45 - 97) > 5)
            {
              goto LABEL_100;
            }

            v46 = v45 - 87;
          }
        }

        if ((v29 - 0x800000000000000) >> 60 != 15)
        {
          goto LABEL_100;
        }

        v33 = __OFSUB__(16 * v29, v46);
        v29 = 16 * v29 - v46;
        if (v33)
        {
          goto LABEL_100;
        }

        ++v44;
        if (!--v25)
        {
          goto LABEL_101;
        }
      }
    }

    goto LABEL_119;
  }

  if (v25)
  {
    if (!--v25)
    {
      goto LABEL_100;
    }

    v29 = 0;
    v50 = v83 + 1;
    while (1)
    {
      v51 = *v50;
      v52 = v51 - 48;
      if ((v51 - 48) >= 0xA)
      {
        if ((v51 - 65) < 6)
        {
          v52 = v51 - 55;
        }

        else
        {
          if ((v51 - 97) > 5)
          {
            goto LABEL_100;
          }

          v52 = v51 - 87;
        }
      }

      if ((v29 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_100;
      }

      v33 = __OFADD__(16 * v29, v52);
      v29 = 16 * v29 + v52;
      if (v33)
      {
        goto LABEL_100;
      }

      ++v50;
      if (!--v25)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_121:
  __break(1u);
  return result;
}

void sub_225C17B38(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t dispatch thunk of TagOperations.encryptedReadCheckSize(for:with:secureMessaging:shouldCheckStatusWords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 120) + **(*v6 + 120));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_225A02EAC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TagOperations.encryptedRead(for:with:secureMessaging:sizeData:maxReadSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(*v8 + 128) + **(*v8 + 128));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_225A01DDC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t type metadata accessor for AlgorithmIdentifier(uint64_t a1)
{
  result = qword_27D740520;
  if (!qword_27D740520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlgorithmIdentifier.hash(_:)(uint64_t a1, unint64_t a2)
{
  v154 = a1;
  v155 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v122 = &v115 - v3;
  v118 = sub_225CCE184();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_225CCDBC4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_225CCE174();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_225CCDBB4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_225CCE164();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_225CCDBA4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCE264();
  v147 = *(v10 - 8);
  v148 = v10;
  MEMORY[0x28223BE20](v10);
  v146 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE254();
  v150 = *(v12 - 8);
  v151 = v12;
  MEMORY[0x28223BE20](v12);
  v149 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_225CCD6B4();
  v14 = MEMORY[0x28223BE20](v163);
  v124 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v115 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v115 - v19;
  MEMORY[0x28223BE20](v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v136 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v133 = &v115 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v144 = &v115 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v115 - v27;
  v29 = sub_225CCD624();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v135 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v132 = &v115 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v143 = &v115 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v115 - v37;
  v39 = type metadata accessor for AlgorithmIdentifier(0);
  v40 = MEMORY[0x28223BE20](v39);
  v123 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v131 = &v115 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v115 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v115 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v115 - v50;
  sub_225C197E0(v157, &v115 - v50);
  sub_225CCD604();
  sub_225CCD6A4();
  v52 = v156;
  sub_225CCD644();
  v156 = v52;
  if (v52)
  {
    swift_unexpectedError();
    __break(1u);
LABEL_22:
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_23;
  }

  v53 = sub_225CCD654();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v152[1] = v54 + 56;
  v153 = v55;
  v55(v28, 0, 1, v53);
  v152[0] = *(v30 + 32);
  (v152[0])(v49, v38, v29);
  sub_225C0CB18(v28, &v49[*(v39 + 20)]);
  v56 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v49, v51);
  sub_225C0CB88(v49);
  if (v56)
  {
    sub_225C0CB88(v51);
    sub_225C1AA8C(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
    v57 = v146;
    v58 = v148;
    sub_225CCDB94();
    v60 = v154;
    v59 = v155;
    sub_2259CB710(v154, v155);
    sub_2259D7024(v60, v59, v57);
    sub_2259BEF00(v60, v59);
    v61 = v149;
    sub_225CCDB84();
    (*(v147 + 8))(v57, v58);
    v62 = v151;
    v161 = v151;
    v162 = sub_225C1AA8C(&qword_27D740518, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
    v64 = v150;
LABEL_13:
    (*(v64 + 16))(boxed_opaque_existential_1, v61, v62);
    __swift_project_boxed_opaque_existential_1(&v159, v161);
    sub_225CCCB84();
    (*(v64 + 8))(v61, v62);
    v95 = v158;
    __swift_destroy_boxed_opaque_existential_0(&v159);
    return v95;
  }

  v65 = v39;
  v151 = v51;
  v66 = v143;
  sub_225CCD604();
  sub_225CCD6A4();
  v67 = v144;
  v68 = v156;
  sub_225CCD644();
  if (v68)
  {
    goto LABEL_22;
  }

  v153(v67, 0, 1, v53);
  (v152[0])(v46, v66, v29);
  v156 = v65;
  sub_225C0CB18(v67, &v46[*(v65 + 20)]);
  v69 = v151;
  v70 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v46, v151);
  sub_225C0CB88(v46);
  if (v70)
  {
    sub_225C0CB88(v69);
    sub_225C1AA8C(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v71 = v137;
    v72 = v139;
    sub_225CCDB94();
    v74 = v154;
    v73 = v155;
    sub_2259CB710(v154, v155);
    sub_2259DB138(v74, v73, v71);
    sub_2259BEF00(v74, v73);
    v61 = v140;
    sub_225CCDB84();
    (*(v138 + 8))(v71, v72);
    v62 = v142;
    v161 = v142;
    v162 = sub_225C1AA8C(&qword_27D73AE18, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
    v75 = &v164;
LABEL_12:
    v64 = *(v75 - 32);
    goto LABEL_13;
  }

  v76 = v132;
  sub_225CCD604();
  sub_225CCD6A4();
  v77 = v133;
  sub_225CCD644();
  v150 = 0;
  v153(v77, 0, 1, v53);
  v78 = v131;
  (v152[0])(v131, v76, v29);
  sub_225C0CB18(v77, v78 + *(v156 + 20));
  v79 = v151;
  v80 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v78, v151);
  sub_225C0CB88(v78);
  v81 = v136;
  v82 = v135;
  if (v80)
  {
    sub_225C0CB88(v79);
    sub_225C1AA8C(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v83 = v125;
    v84 = v127;
    sub_225CCDB94();
    v86 = v154;
    v85 = v155;
    sub_2259CB710(v154, v155);
    sub_225A9EC88(v86, v85, v83);
    sub_2259BEF00(v86, v85);
    v61 = v128;
    sub_225CCDB84();
    (*(v126 + 8))(v83, v84);
    v62 = v130;
    v161 = v130;
    v162 = sub_225C1AA8C(&qword_27D740510, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
    v75 = &v159;
    goto LABEL_12;
  }

  sub_225CCD604();
  sub_225CCD6A4();
  v87 = v150;
  sub_225CCD644();
  if (!v87)
  {
    v153(v81, 0, 1, v53);
    v88 = v123;
    (v152[0])(v123, v82, v29);
    sub_225C0CB18(v81, v88 + *(v156 + 20));
    v89 = v151;
    v90 = _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(v88, v151);
    sub_225C0CB88(v88);
    sub_225C0CB88(v89);
    if (!v90)
    {
      v159 = 0;
      v160 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D261C0);
      sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
      v97 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v97);

      v99 = v159;
      v98 = v160;
      v163 = 0x8000000225D25840;
      v100 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v102 = v101;
      v103 = sub_225CCE954();
      v104 = *(v103 - 8);
      v105 = v122;
      (*(v104 + 56))(v122, 1, 1, v103);
      LODWORD(v103) = (*(v104 + 48))(v105, 1, v103);
      sub_2259CB640(v105, &unk_27D73B050, &unk_225CD3AD0);
      if (v103)
      {
        v106 = 0;
      }

      else
      {
        v106 = 23;
      }

      v107 = MEMORY[0x277D84F90];
      v108 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159 = v108;
      sub_225B2C4A0(v100, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v159);

      v110 = v159;
      v111 = sub_225B29AA0(0, 1, 1, v107);
      v113 = *(v111 + 2);
      v112 = *(v111 + 3);
      v95 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v111 = sub_225B29AA0((v112 > 1), v113 + 1, 1, v111);
      }

      *(v111 + 2) = v95;
      v114 = &v111[56 * v113];
      *(v114 + 4) = v99;
      *(v114 + 5) = v98;
      *(v114 + 6) = 0xD000000000000027;
      *(v114 + 7) = v163;
      *(v114 + 8) = 0x293A5F2868736168;
      *(v114 + 9) = 0xE800000000000000;
      *(v114 + 10) = 47;
      *v102 = v106;
      *(v102 + 8) = v111;
      *(v102 + 16) = v99;
      *(v102 + 24) = v98;
      *(v102 + 32) = v110;
      *(v102 + 40) = 0;
      swift_willThrow();
      return v95;
    }

    sub_225C1AA8C(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    v91 = v116;
    v92 = v118;
    sub_225CCDB94();
    v94 = v154;
    v93 = v155;
    sub_2259CB710(v154, v155);
    sub_225A9EEAC(v94, v93, v91);
    sub_2259BEF00(v94, v93);
    v61 = v119;
    sub_225CCDB84();
    (*(v117 + 8))(v91, v92);
    v62 = v121;
    v161 = v121;
    v162 = sub_225C1AA8C(&qword_27D740508, MEMORY[0x277CC52E8], MEMORY[0x277CC52D8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
    v75 = v152;
    goto LABEL_12;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t AlgorithmIdentifier.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD624();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlgorithmIdentifier.algorithm.setter(uint64_t a1)
{
  v3 = sub_225CCD624();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlgorithmIdentifier.parameters.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlgorithmIdentifier(0) + 20);

  return sub_225C1A898(a1, v3);
}

uint64_t AlgorithmIdentifier.description.getter()
{
  sub_225CCD624();
  sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);

  return sub_225CCF824();
}

uint64_t sub_225C19510()
{
  sub_225CCD624();
  sub_225C1AA8C(&qword_27D740500, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);

  return sub_225CCF824();
}

uint64_t sub_225C195B8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_225CCD6B4();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_225CCD624();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD604();
  sub_225CCD6A4();
  sub_225CCD644();
  v11 = sub_225CCD654();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  (*(v8 + 32))(a2, v10, v7);
  v12 = type metadata accessor for AlgorithmIdentifier(0);
  return sub_225C0CB18(v6, a2 + *(v12 + 20));
}

uint64_t sub_225C197E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AlgorithmIdentifier.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCD564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlgorithmIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);
  v14 = sub_225CCD654();
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  sub_225CCD544();
  sub_225CCD7F4();
  v15 = sub_225CCD694();
  (*(*(v15 - 8) + 8))(a1, v15);
  (*(v6 + 8))(v8, v5);
  if (v2)
  {
    return sub_2259CB640(a2 + v13, &qword_27D740448, &qword_225CFA9D0);
  }

  sub_2259CB640(a2 + v13, &qword_27D740448, &qword_225CFA9D0);
  return sub_225C1A908(v12, a2);
}

uint64_t sub_225C19AB8@<X0>(uint64_t a2@<X8>)
{
  v36 = a2;
  v2 = sub_225CCD694();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740538, &qword_225CFB048);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_225CCD564();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_225CCD624();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD744();
  v20 = v39;
  result = sub_225CCD754();
  if (!v20)
  {
    v32 = v17;
    v39 = v14;
    v22 = v34;
    sub_225CCD5D4();
    v23 = v35;
    sub_225A0DE54(v11, v35, &qword_27D740538, &qword_225CFB048);
    v24 = v37;
    v25 = 1;
    if ((*(v38 + 48))(v23, 1, v37) != 1)
    {
      v26 = v38;
      (*(v38 + 32))(v22, v23, v24);
      (*(v26 + 16))(v33, v22, v24);
      sub_225CCD634();
      (*(v26 + 8))(v22, v24);
      v25 = 0;
    }

    sub_2259CB640(v11, &qword_27D740538, &qword_225CFB048);
    v27 = sub_225CCD654();
    v28 = v39;
    (*(*(v27 - 8) + 56))(v39, v25, 1, v27);
    v29 = v36;
    (*(v32 + 32))(v36, v19, v16);
    v30 = type metadata accessor for AlgorithmIdentifier(0);
    return sub_225C0CB18(v28, v29 + *(v30 + 20));
  }

  return result;
}

uint64_t sub_225C19ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_225CCD564();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 20);
  v15 = sub_225CCD654();
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  sub_225CCD544();
  sub_225CCD7F4();
  v16 = sub_225CCD694();
  (*(*(v16 - 8) + 8))(a1, v16);
  (*(v8 + 8))(v11, v7);
  if (v3)
  {
    return sub_2259CB640(a3 + v14, &qword_27D740448, &qword_225CFA9D0);
  }

  sub_2259CB640(a3 + v14, &qword_27D740448, &qword_225CFA9D0);
  return sub_225C1A908(v13, a3);
}

uint64_t AlgorithmIdentifier.serialize(into:)()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_225C1A244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_225CCD654();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD624();
  result = sub_225CCD7A4();
  if (!v2)
  {
    v12 = type metadata accessor for AlgorithmIdentifier(0);
    sub_225A0DE54(a2 + *(v12 + 20), v6, &qword_27D740448, &qword_225CFA9D0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_2259CB640(v6, &qword_27D740448, &qword_225CFA9D0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_225CCD7A4();
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_225C1A43C()
{
  v1 = sub_225CCD564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_225CCD544();
  v7 = v0;
  sub_225CCD784();
  return (*(v2 + 8))(v4, v1);
}

BOOL _s13CoreIDVShared19AlgorithmIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD654();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740540, &qword_225CFB050);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_225CCD614() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for AlgorithmIdentifier(0) + 20);
  v15 = *(v11 + 48);
  sub_225A0DE54(a1 + v14, v13, &qword_27D740448, &qword_225CFA9D0);
  sub_225A0DE54(a2 + v14, &v13[v15], &qword_27D740448, &qword_225CFA9D0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_2259CB640(v13, &qword_27D740448, &qword_225CFA9D0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_225A0DE54(v13, v10, &qword_27D740448, &qword_225CFA9D0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_2259CB640(v13, &qword_27D740540, &qword_225CFB050);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_225C1AA8C(&qword_27D740548, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
  v19 = sub_225CCE3C4();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_2259CB640(v13, &qword_27D740448, &qword_225CFA9D0);
  return (v19 & 1) != 0;
}

uint64_t sub_225C1A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C1A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225C1A9B0(uint64_t a1)
{
  sub_225CCD624();
  if (v1 <= 0x3F)
  {
    sub_225C1AA34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225C1AA34(uint64_t a1)
{
  if (!qword_27D740530)
  {
    sub_225CCD654();
    v1 = sub_225CCEFC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D740530);
    }
  }
}

uint64_t sub_225C1AA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225C1AB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HashDigest.digest.getter()
{
  v1 = v0 + *(type metadata accessor for HashDigest(0) + 20);
  v2 = *v1;
  sub_2259CB710(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for HashDigest(uint64_t a1)
{
  result = qword_27D740550;
  if (!qword_27D740550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HashDigest.digest.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HashDigest(0) + 20);
  result = sub_2259BEF00(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t HashDigest.init(derEncoded:)(uint64_t a1)
{
  v2 = sub_225CCD564();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD544();
  type metadata accessor for HashDigest(0);
  sub_225CCD7F4();
  v6 = sub_225CCD694();
  (*(*(v6 - 8) + 8))(a1, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_225C1ADF0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_225CCD564();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_225CCD5B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225C1B644(&qword_27D740568, &protocol conformance descriptor for AlgorithmIdentifier);
  result = sub_225CCD724();
  if (!v2)
  {
    v24 = a2;
    sub_225CCD744();
    sub_225CCD754();
    v13 = v24;
    sub_225C197E0(v11, v24);
    v14 = sub_225CCD5A4();
    sub_2259D2AD0(v14, v15, v16, v17);
    v19 = v18;
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    sub_225C0CB88(v11);
    result = type metadata accessor for HashDigest(0);
    v22 = (v13 + *(result + 20));
    *v22 = v19;
    v22[1] = v21;
  }

  return result;
}