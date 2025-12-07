unint64_t sub_225B873AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v73 = sub_225CCD954();
  v6 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v82 = v1[6];
  v83 = v16;
  v84 = v1[8];
  v85 = *(v1 + 18);
  v17 = v1[3];
  v78 = v1[2];
  v79 = v17;
  v18 = v1[5];
  v80 = v1[4];
  v81 = v18;
  v19 = v1[1];
  v76 = *v1;
  v77 = v19;
  v20 = [a1 results];
  if (v20)
  {
    v21 = v20;
    sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
    v22 = sub_225CCE814();

    v23 = sub_225B9193C(v22);

    if (v23)
    {
      v24 = [v23 faceAttributes];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 facemaskCategory];
        v27 = [v26 label];

        v28 = [v27 identifier];
        v29 = sub_225CCE474();
        v31 = v30;

        if (v29 == sub_225CCE474() && v31 == v32)
        {
        }

        else
        {
          v65 = sub_225CCF934();

          v66 = 0.0;
          if ((v65 & 1) == 0)
          {
LABEL_26:
            v74[6] = v82;
            v74[7] = v83;
            v74[8] = v84;
            v75 = v85;
            v74[2] = v78;
            v74[3] = v79;
            v74[4] = v80;
            v74[5] = v81;
            v74[0] = v76;
            v74[1] = v77;
            (*(v13 + 104))(v15, *MEMORY[0x277D84688], v12);
            v68 = sub_225B804A4(13, v15, v66);

            v64 = HIDWORD(v68) & 1;
            (*(v13 + 8))(v15, v12);
            v63 = v68;
            return v63 | (v64 << 32);
          }
        }

        [v27 confidence];
        v66 = v67;
        goto LABEL_26;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v55 = off_28105B918;
    v56 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v57 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v57));
    v58 = v73;
    (*(v6 + 16))(v11, &v55[v56], v73);
    os_unfair_lock_unlock(&v55[v57]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v59 = sub_225CCD934();
      v60 = sub_225CCED04();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v74[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21520, v74);
        _os_log_impl(&dword_2259A7000, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x22AA6F950](v62, -1, -1);
        MEMORY[0x22AA6F950](v61, -1, -1);
      }
    }

    (*(v6 + 8))(v11, v58);
  }

  else
  {
    v71 = 0x8000000225D21500;
    v72 = 0x8000000225D20DA0;
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v34 = swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v5, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v5, 1, v37);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 350;
    }

    else
    {
      v39 = 23;
    }

    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = v41;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v74);

    v43 = *&v74[0];
    v44 = sub_225B29AA0(0, 1, 1, v40);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    *(v44 + 2) = v46 + 1;
    v47 = &v44[56 * v46];
    *(v47 + 4) = 0xD000000000000037;
    *(v47 + 5) = 0x8000000225D214C0;
    v48 = v72;
    *(v47 + 6) = 0xD000000000000029;
    *(v47 + 7) = v48;
    v49 = v71;
    *(v47 + 8) = 0xD00000000000001DLL;
    *(v47 + 9) = v49;
    *(v47 + 10) = 1008;
    *v36 = v39;
    *(v36 + 8) = v44;
    *(v36 + 16) = 0xD000000000000037;
    *(v36 + 24) = 0x8000000225D214C0;
    *(v36 + 32) = v43;
    *(v36 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v53 = &v50[v51];
    v54 = v73;
    (*(v6 + 16))(v9, v53, v73);
    os_unfair_lock_unlock(&v50[v52]);
    DIPLogError(_:message:log:)(v34, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v34);
    (*(v6 + 8))(v9, v54);
  }

  v63 = 0;
  LOBYTE(v64) = 1;
  return v63 | (v64 << 32);
}

unint64_t sub_225B87C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v73 = sub_225CCD954();
  v6 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v82 = v1[6];
  v83 = v16;
  v84 = v1[8];
  v85 = *(v1 + 18);
  v17 = v1[3];
  v78 = v1[2];
  v79 = v17;
  v18 = v1[5];
  v80 = v1[4];
  v81 = v18;
  v19 = v1[1];
  v76 = *v1;
  v77 = v19;
  v20 = [a1 results];
  if (!v20)
  {
    v71 = 0x8000000225D21640;
    v72 = 0x8000000225D20DA0;
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v35 = swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v5, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v5, 1, v38);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v38)
    {
      v40 = 350;
    }

    else
    {
      v40 = 23;
    }

    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = v42;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v74);

    v44 = *&v74[0];
    v45 = sub_225B29AA0(0, 1, 1, v41);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = 0xD000000000000037;
    *(v48 + 5) = 0x8000000225D21600;
    v49 = v72;
    *(v48 + 6) = 0xD000000000000029;
    *(v48 + 7) = v49;
    v50 = v71;
    *(v48 + 8) = 0xD00000000000001DLL;
    *(v48 + 9) = v50;
    *(v48 + 10) = 1023;
    *v37 = v40;
    *(v37 + 8) = v45;
    *(v37 + 16) = 0xD000000000000037;
    *(v37 + 24) = 0x8000000225D21600;
    *(v37 + 32) = v44;
    *(v37 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v51 = off_28105B918;
    v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v53));
    v54 = &v51[v52];
    v55 = v73;
    (*(v6 + 16))(v9, v54, v73);
    os_unfair_lock_unlock(&v51[v53]);
    DIPLogError(_:message:log:)(v35, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v35);
    (*(v6 + 8))(v9, v55);

    goto LABEL_23;
  }

  v21 = v20;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v22 = sub_225CCE814();

  v23 = sub_225B9193C(v22);

  if (!v23)
  {
LABEL_16:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v56 = off_28105B918;
    v57 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v58 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v58));
    v59 = v73;
    (*(v6 + 16))(v11, &v56[v57], v73);
    os_unfair_lock_unlock(&v56[v58]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v60 = sub_225CCD934();
      v61 = sub_225CCED04();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v74[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_2259BE198(0xD00000000000003ALL, 0x8000000225D21660, v74);
        _os_log_impl(&dword_2259A7000, v60, v61, "%s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x22AA6F950](v63, -1, -1);
        MEMORY[0x22AA6F950](v62, -1, -1);
      }
    }

    (*(v6 + 8))(v11, v59);
LABEL_23:
    v64 = 0;
    LOBYTE(v65) = 1;
    return v64 | (v65 << 32);
  }

  v24 = [v23 faceAttributes];
  if (!v24)
  {

    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v27 = [v26 label];

  v28 = [v27 identifier];
  v29 = sub_225CCE474();
  v31 = v30;

  if (v29 == sub_225CCE474() && v31 == v32)
  {

    v33 = 0.0;
  }

  else
  {
    v66 = sub_225CCF934();

    v33 = 0.0;
    if ((v66 & 1) == 0)
    {
      [v27 confidence];
      v33 = v67;
    }
  }

  v74[6] = v82;
  v74[7] = v83;
  v74[8] = v84;
  v75 = v85;
  v74[2] = v78;
  v74[3] = v79;
  v74[4] = v80;
  v74[5] = v81;
  v74[0] = v76;
  v74[1] = v77;
  (*(v13 + 104))(v15, *MEMORY[0x277D84688], v12);
  v68 = sub_225B804A4(14, v15, v33);

  v65 = HIDWORD(v68) & 1;
  (*(v13 + 8))(v15, v12);
  v64 = v68;
  return v64 | (v65 << 32);
}

uint64_t sub_225B884B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v75 - v3;
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = [a1 results];
  if (!v12)
  {
    v83 = 0x8000000225D215A0;
    v84 = 0x8000000225D20DA0;
    v47 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v48 = swift_allocError();
    v50 = v49;
    v51 = sub_225CCE954();
    v52 = *(v51 - 8);
    (*(v52 + 56))(v4, 1, 1, v51);
    LODWORD(v51) = (*(v52 + 48))(v4, 1, v51);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v51)
    {
      v53 = 350;
    }

    else
    {
      v53 = 23;
    }

    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v55;
    sub_225B2C4A0(v47, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v85);

    v57 = v85;
    v58 = sub_225B29AA0(0, 1, 1, v54);
    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_225B29AA0((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[56 * v60];
    *(v61 + 4) = 0xD000000000000038;
    *(v61 + 5) = 0x8000000225D21560;
    v62 = v84;
    *(v61 + 6) = 0xD000000000000029;
    *(v61 + 7) = v62;
    v63 = v83;
    *(v61 + 8) = 0xD00000000000001ELL;
    *(v61 + 9) = v63;
    *(v61 + 10) = 1041;
    *v50 = v53;
    *(v50 + 8) = v58;
    *(v50 + 16) = 0xD000000000000038;
    *(v50 + 24) = 0x8000000225D21560;
    *(v50 + 32) = v57;
    *(v50 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v64 = off_28105B918;
    v65 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v66 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v66));
    (*(v6 + 16))(v9, &v64[v65], v5);
    os_unfair_lock_unlock(&v64[v66]);
    DIPLogError(_:message:log:)(v48, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v48);
    (*(v6 + 8))(v9, v5);

    return 0;
  }

  v13 = v12;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v14 = sub_225CCE814();

  v15 = sub_225B9193C(v14);

  if (!v15)
  {
LABEL_55:
    if (qword_28105B910 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  v16 = [v15 faceAttributes];
  if (!v16)
  {

    goto LABEL_55;
  }

  v78 = v16;
  v79 = v15;
  v17 = [v16 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
  v18 = [v17 allLabelsWithConfidences];

  sub_2259D8718(0, &qword_27D73E798, 0x277CE2C00);
  v11 = sub_225CCE814();

  v5 = sub_225CCE874();
  *(v5 + 16) = 5;
  *(v5 + 32) = 0;
  v84 = v5 + 32;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  if (v11 >> 62)
  {
    v19 = sub_225CCF144();
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_67:

    return v5;
  }

  v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_67;
  }

LABEL_6:
  v20 = 0;
  v82 = v11 & 0xFFFFFFFFFFFFFF8;
  v83 = v11 & 0xC000000000000001;
  v81 = *MEMORY[0x277CE2E68];
  v80 = *MEMORY[0x277CE3040];
  v77 = *MEMORY[0x277CE2E60];
  v76 = *MEMORY[0x277CE2E70];
  v75 = *MEMORY[0x277CE2E80];
  while (1)
  {
    if (v83)
    {
      v21 = MEMORY[0x22AA6DA80](v20, v11);
    }

    else
    {
      if (v20 >= *(v82 + 16))
      {
        goto LABEL_63;
      }

      v21 = *(v11 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v24 = [v21 identifier];
    v25 = sub_225CCE474();
    v27 = v26;

    v28 = sub_225CCE474();
    v6 = v29;
    if (v28 == v25 && v29 == v27)
    {
      v32 = 0;
      goto LABEL_18;
    }

    v31 = sub_225CCF934();

    if (v31)
    {
      v32 = 0;
      goto LABEL_19;
    }

    v35 = sub_225CCE474();
    v6 = v36;
    if (v35 == v25 && v36 == v27)
    {
      v32 = 1;
      goto LABEL_18;
    }

    v37 = sub_225CCF934();

    if (v37)
    {
      v32 = 1;
      goto LABEL_19;
    }

    v38 = sub_225CCE474();
    v6 = v39;
    if (v38 == v25 && v39 == v27)
    {
      v32 = 2;
      goto LABEL_18;
    }

    v40 = sub_225CCF934();

    if (v40)
    {
      v32 = 2;
      goto LABEL_19;
    }

    v41 = sub_225CCE474();
    v6 = v42;
    if (v41 == v25 && v42 == v27)
    {
      v32 = 3;
      goto LABEL_18;
    }

    v43 = sub_225CCF934();

    if (v43)
    {
      v32 = 3;
      goto LABEL_19;
    }

    v44 = sub_225CCE474();
    v6 = v45;
    if (v44 == v25 && v45 == v27)
    {
      v32 = 4;
LABEL_18:

LABEL_19:

      goto LABEL_20;
    }

    v46 = sub_225CCF934();

    if ((v46 & 1) == 0)
    {

      goto LABEL_22;
    }

    v32 = 4;
LABEL_20:
    [v22 confidence];
    v34 = v33;

    if (v32 >= *(v5 + 16))
    {
      goto LABEL_64;
    }

    *(v84 + 4 * v32) = v34;
LABEL_22:
    ++v20;
    if (v23 == v19)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_56:
  v67 = off_28105B918;
  v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v69));
  (*(v6 + 16))(v11, &v67[v68], v5);
  os_unfair_lock_unlock(&v67[v69]);
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v70 = sub_225CCD934();
    v71 = sub_225CCED04();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v85 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_2259BE198(0xD00000000000003BLL, 0x8000000225D215C0, &v85);
      _os_log_impl(&dword_2259A7000, v70, v71, "%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AA6F950](v73, -1, -1);
      MEMORY[0x22AA6F950](v72, -1, -1);
    }
  }

  (*(v6 + 8))(v11, v5);
  return 0;
}

uint64_t sub_225B88E94(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v92 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v92 - v10;
  v12 = [a1 results];
  if (!v12)
  {
    v95 = v3;
    v96 = v8;
    v97 = v2;
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v27 = swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v11, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v11, 1, v30);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 350;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v33;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v98);

    v35 = v98;
    v36 = sub_225B29AA0(0, 1, 1, v25);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD00000000000002ELL;
    *(v39 + 5) = 0x8000000225D216A0;
    *(v39 + 6) = 0xD000000000000029;
    *(v39 + 7) = 0x8000000225D20DA0;
    *(v39 + 8) = 0xD000000000000013;
    *(v39 + 9) = 0x8000000225D216D0;
    *(v39 + 10) = 1064;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = 0xD00000000000002ELL;
    *(v29 + 24) = 0x8000000225D216A0;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    v40 = v97;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v41 = off_28105B918;
    v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v43));
    v44 = v95;
    v45 = &v41[v42];
    v46 = v96;
    (*(v95 + 16))(v96, v45, v40);
    os_unfair_lock_unlock(&v41[v43]);
    DIPLogError(_:message:log:)(v27, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v27);
    (*(v44 + 8))(v46, v40);
    v47 = v27;
LABEL_15:

    return 0;
  }

  v13 = v12;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v14 = sub_225CCE814();

  v15 = sub_225B9193C(v14);

  if (!v15)
  {
LABEL_17:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    (*(v3 + 16))(v6, &v48[v49], v2);
    os_unfair_lock_unlock(&v48[v50]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v51 = sub_225CCD934();
      v52 = sub_225CCED04();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v98 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_2259BE198(0xD000000000000031, 0x8000000225D216F0, &v98);
        _os_log_impl(&dword_2259A7000, v51, v52, "%s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x22AA6F950](v54, -1, -1);
        MEMORY[0x22AA6F950](v53, -1, -1);
      }
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v16 = [v15 faceAttributes];
  if (!v16)
  {

    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v16 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
  v19 = [v18 label];

  v20 = [v19 identifier];
  v21 = sub_225CCE474();
  v23 = v22;

  if (sub_225CCE474() == v21 && v24 == v23)
  {

    return 1;
  }

  v56 = v3;
  v57 = sub_225CCF934();

  if (v57)
  {

    return 1;
  }

  if (sub_225CCE474() == v21 && v58 == v23)
  {

    return 2;
  }

  v59 = sub_225CCF934();

  if (v59)
  {

    return 2;
  }

  if (sub_225CCE474() == v21 && v60 == v23)
  {

    return 3;
  }

  v61 = sub_225CCF934();

  if (v61)
  {

    return 3;
  }

  if (sub_225CCE474() == v21 && v62 == v23)
  {

    return 4;
  }

  v63 = sub_225CCF934();

  if (v63)
  {

    return 4;
  }

  if (sub_225CCE474() == v21 && v64 == v23)
  {

    return 5;
  }

  v65 = sub_225CCF934();

  if (v65)
  {

    return 5;
  }

  if (sub_225CCE474() != v21 || v66 != v23)
  {
    v96 = v8;
    v97 = v2;
    v67 = sub_225CCF934();

    if (v67)
    {

      return 6;
    }

    v94 = 0x8000000225D20DA0;
    v95 = 0x8000000225D21730;
    v93 = 0x8000000225D216D0;
    v68 = MEMORY[0x277D84F90];
    v69 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v70 = swift_allocError();
    v72 = v71;
    v73 = sub_225CCE954();
    v74 = *(v73 - 8);
    (*(v74 + 56))(v11, 1, 1, v73);
    LODWORD(v73) = (*(v74 + 48))(v11, 1, v73);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v73)
    {
      v75 = 363;
    }

    else
    {
      v75 = 23;
    }

    v76 = sub_225B2C374(v68);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v76;
    sub_225B2C4A0(v69, sub_225B2AC40, 0, v77, &v98);

    v78 = v98;
    v79 = sub_225B29AA0(0, 1, 1, v68);
    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[56 * v81];
    v83 = v95;
    *(v82 + 4) = 0xD000000000000033;
    *(v82 + 5) = v83;
    *(v82 + 6) = 0xD000000000000029;
    *(v82 + 7) = v94;
    *(v82 + 8) = 0xD000000000000013;
    *(v82 + 9) = v93;
    *(v82 + 10) = 1094;
    *v72 = v75;
    *(v72 + 8) = v79;
    *(v72 + 16) = 0xD000000000000033;
    *(v72 + 24) = v83;
    *(v72 + 32) = v78;
    *(v72 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v84 = off_28105B918;
    v85 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v86 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v86));
    v87 = v56;
    v88 = *(v56 + 16);
    v89 = &v84[v85];
    v91 = v96;
    v90 = v97;
    v88(v96, v89, v97);
    os_unfair_lock_unlock(&v84[v86]);
    DIPLogError(_:message:log:)(v70, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v70);

    (*(v87 + 8))(v91, v90);
    v47 = v70;
    goto LABEL_15;
  }

  return 6;
}

void sub_225B89B28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = [a1 results];
  if (!v14)
  {
    *&v54 = 0x8000000225D21770;
    *&v53 = 0x8000000225D20DA0;
    *&v52 = 0x8000000225D217B0;
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v6, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v6, 1, v29);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 350;
    }

    else
    {
      v31 = 23;
    }

    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v33;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v55);

    v35 = v55;
    v36 = sub_225B29AA0(0, 1, 1, v32);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    v40 = v54;
    *(v39 + 4) = 0xD000000000000030;
    *(v39 + 5) = v40;
    *(v39 + 6) = 0xD000000000000029;
    *(v39 + 7) = v53;
    *(v39 + 8) = 0xD000000000000015;
    *(v39 + 9) = v52;
    *(v39 + 10) = 1101;
    *v28 = v31;
    *(v28 + 8) = v36;
    *(v28 + 16) = 0xD000000000000030;
    *(v28 + 24) = v40;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v41 = off_28105B918;
    v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v43));
    (*(v8 + 16))(v11, &v41[v42], v7);
    os_unfair_lock_unlock(&v41[v43]);
    DIPLogError(_:message:log:)(v26, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v26);
    (*(v8 + 8))(v11, v7);

    goto LABEL_19;
  }

  v15 = v14;
  sub_2259D8718(0, &qword_27D73E700, 0x277CE2CD0);
  v16 = sub_225CCE814();

  v17 = sub_225B9193C(v16);

  if (!v17)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v44 = off_28105B918;
    v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v46));
    (*(v8 + 16))(v13, &v44[v45], v7);
    os_unfair_lock_unlock(&v44[v46]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v47 = sub_225CCD934();
      v48 = sub_225CCED04();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_2259BE198(0xD000000000000033, 0x8000000225D217D0, &v55);
        _os_log_impl(&dword_2259A7000, v47, v48, "%s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AA6F950](v50, -1, -1);
        MEMORY[0x22AA6F950](v49, -1, -1);
      }
    }

    (*(v8 + 8))(v13, v7);
LABEL_19:
    v23 = 0uLL;
    v22 = 1;
    v24 = 0uLL;
    goto LABEL_20;
  }

  [v17 boundingBox];
  v52 = v18;
  v53 = v19;
  v51 = v20;
  v54 = v21;

  *&v24 = v51;
  *&v23 = v52;
  v22 = 0;
  *(&v23 + 1) = v53;
  *(&v24 + 1) = v54;
LABEL_20:
  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 32) = v22;
}

BOOL sub_225B8A19C(void *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = [a1 results];
  if (v9)
  {
    v10 = v9;
    sub_2259D8718(0, &qword_27D73E7A0, 0x277CE2BF8);
    v11 = sub_225CCE814();

    if (v11 >> 62)
    {
      v12 = sub_225CCF144();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v12 != 0;
  }

  else
  {
    v35 = 0x8000000225D20DA0;
    v36 = 0x8000000225D21810;
    v34 = 0x8000000225D21850;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v16 = swift_allocError();
    v18 = v17;
    v19 = sub_225CCE954();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v8, 1, 1, v19);
    LODWORD(v19) = (*(v20 + 48))(v8, 1, v19);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v19)
    {
      v21 = 350;
    }

    else
    {
      v21 = 23;
    }

    v22 = sub_225B2C374(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v22;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

    v24 = v37;
    v25 = sub_225B29AA0(0, 1, 1, v14);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[56 * v27];
    v29 = v36;
    *(v28 + 4) = 0xD000000000000033;
    *(v28 + 5) = v29;
    *(v28 + 6) = 0xD000000000000029;
    *(v28 + 7) = v35;
    *(v28 + 8) = 0xD000000000000019;
    *(v28 + 9) = v34;
    *(v28 + 10) = 1116;
    *v18 = v21;
    *(v18 + 8) = v25;
    *(v18 + 16) = 0xD000000000000033;
    *(v18 + 24) = v29;
    *(v18 + 32) = v24;
    *(v18 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v30 = off_28105B918;
    v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v32));
    (*(v3 + 16))(v5, &v30[v31], v2);
    os_unfair_lock_unlock(&v30[v32]);
    DIPLogError(_:message:log:)(v16, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v16);
    (*(v3 + 8))(v5, v2);

    return 0;
  }
}

uint64_t sub_225B8A61C(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v92 - v7;
  v9 = sub_225CCD954();
  v101 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v92 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v92 - v16;
  v18 = [a2 results];
  if (!v18)
  {
    v99 = v9;
    v100 = a1;
    v97 = 0x8000000225D21C70;
    v98 = 0x8000000225D20DA0;
    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v31 = swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v8, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v8, 1, v34);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v34)
    {
      v36 = 350;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120[0] = v37;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v120);

    v39 = v120[0];
    v40 = sub_225B29AA0(0, 1, 1, v29);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD00000000000002FLL;
    *(v43 + 5) = 0x8000000225D21C40;
    v44 = v98;
    *(v43 + 6) = 0xD000000000000029;
    *(v43 + 7) = v44;
    v45 = v97;
    *(v43 + 8) = 0xD00000000000002ALL;
    *(v43 + 9) = v45;
    *(v43 + 10) = 1125;
    *v33 = v36;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD00000000000002FLL;
    *(v33 + 24) = 0x8000000225D21C40;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v46 = off_28105B918;
    v47 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v48 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v48));
    v49 = v101;
    v50 = &v46[v47];
    v51 = v99;
    (*(v101 + 16))(v15, v50, v99);
    os_unfair_lock_unlock(&v46[v48]);
    DIPLogError(_:message:log:)(v31, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v31);
    (*(v49 + 8))(v15, v51);

    sub_225B92B84(v120);
    v52 = v100;
    goto LABEL_37;
  }

  v19 = v18;
  sub_2259D8718(0, &qword_27D73E7A0, 0x277CE2BF8);
  v20 = sub_225CCE814();

  if (v20 >> 62)
  {
    if (!sub_225CCF144())
    {
LABEL_19:

      if (qword_28105B910 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }
  }

  else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x22AA6DA80](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_42:
      swift_once();
LABEL_20:
      v53 = off_28105B918;
      v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v55));
      v56 = v101;
      (*(v101 + 16))(v17, &v53[v54], v9);
      os_unfair_lock_unlock(&v53[v55]);
      if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
      {
        v57 = sub_225CCD934();
        v58 = sub_225CCED04();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v100 = a1;
          v61 = v56;
          v62 = v60;
          v120[0] = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_2259BE198(0xD000000000000047, 0x8000000225D21CA0, v120);
          _os_log_impl(&dword_2259A7000, v57, v58, "%s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x22AA6F950](v62, -1, -1);
          MEMORY[0x22AA6F950](v59, -1, -1);

          (*(v61 + 8))(v17, v9);
          a1 = v100;
LABEL_25:
          sub_225B92B84(v120);
          v52 = a1;
          goto LABEL_37;
        }
      }

      (*(v56 + 8))(v17, v9);
      goto LABEL_25;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;
  v23 = [v21 payloadStringValue];
  if (!v23)
  {

    goto LABEL_19;
  }

  v98 = v22;
  v24 = v23;
  v25 = sub_225CCE474();
  v27 = v26;

  if (a3)
  {
    v28 = a3;
  }

  else
  {
    if (qword_27D739FA0 != -1)
    {
      swift_once();
    }
  }

  v111 = xmmword_225CF1CF0;
  v112 = vdupq_n_s64(2uLL);
  v113 = v112;
  v114 = vdupq_n_s64(4uLL);
  v115 = xmmword_225CF1CB0;
  *&v116 = 19524;
  *(&v116 + 1) = 0xE200000000000000;
  *&v117 = 17481;
  *(&v117 + 1) = 0xE200000000000000;
  v118 = v28;

  v63._countAndFlagsBits = v25;
  v63._object = v27;
  PDF417Parser.parse(payload:)(&v119, v63);
  if (!v64)
  {
    v107 = v115;
    v108 = v116;
    v109 = v117;
    v110 = v118;
    v103 = v111;
    v104 = v112;
    v105 = v113;
    v106 = v114;
    sub_225B93D3C(&v103);

    v86._countAndFlagsBits = 0x3064663432636337;
    v87._countAndFlagsBits = 0x4F20373134464450;
    v86._object = 0xE800000000000000;
    v87._object = 0xE90000000000004BLL;
    logMilestone(tag:description:)(v86, v87);

    memcpy(v102, &v119, sizeof(v102));
    nullsub_1();
    memcpy(v120, v102, 0x360uLL);
    v120[108] = v25;
    v120[109] = v27;
    nullsub_1();
    memcpy(a1, v120, 0x370uLL);
    return 1;
  }

  v95 = v12;
  v96 = v25;
  v97 = v27;
  v99 = v9;
  v100 = a1;
  v107 = v115;
  v108 = v116;
  v109 = v117;
  v110 = v118;
  v103 = v111;
  v104 = v112;
  v105 = v113;
  v106 = v114;
  sub_225B93D3C(&v103);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v65 = off_28105B918;
  v66 = *off_28105B918;
  v93 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v67 = v93;
  v68 = (*(v66 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v68));
  v69 = v101;
  v70 = *(v101 + 16);
  v71 = &v65[v67];
  v72 = v15;
  v73 = v15;
  v74 = v99;
  v70(v72, v71, v99);
  os_unfair_lock_unlock(&v65[v68]);
  DIPLogError(_:message:log:)(v64, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v64);
  v75 = *(v69 + 8);
  v101 = v69 + 8;
  v94 = v75;
  v75(v73, v74);
  os_unfair_lock_lock(&v65[v68]);
  v76 = v95;
  v70(v95, &v65[v93], v74);
  v77 = v76;
  os_unfair_lock_unlock(&v65[v68]);

  v78 = v64;
  v79 = sub_225CCD934();
  v80 = sub_225CCED14();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v120[0] = v82;
    *v81 = 136446210;
    swift_getErrorValue();
    v83 = sub_225CCFB24();
    v85 = sub_2259BE198(v83, v84, v120);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_2259A7000, v79, v80, "PDF417 Barcode was found but was not decodable: %{public}s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x22AA6F950](v82, -1, -1);
    MEMORY[0x22AA6F950](v81, -1, -1);
  }

  else
  {
  }

  v94(v77, v99);
  v89 = v100;
  v91 = v96;
  v90 = v97;
  sub_225B93D90(v102);
  memcpy(v120, v102, 0x360uLL);
  v120[108] = v91;
  v120[109] = v90;
  nullsub_1();
  v52 = v89;
LABEL_37:
  memcpy(v52, v120, 0x370uLL);
  return 0;
}

uint64_t sub_225B8B1B8(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = [a1 results];
  if (!v16)
  {
    v4 = 0x8000000225D21BB0;
    v73 = 0x8000000225D21BE0;
    v74 = 0x8000000225D20DA0;
    v53 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v17 = swift_allocError();
    v1 = v54;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v8, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v8, 1, v55);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v55)
    {
      LOWORD(v8) = 350;
    }

    else
    {
      LOWORD(v8) = 23;
    }

    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v58;
    sub_225B2C4A0(v53, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v79);

    v3 = v79;
    v18 = sub_225B29AA0(0, 1, 1, v57);
    v2 = *(v18 + 2);
    v19 = *(v18 + 3);
    v15 = (v2 + 1);
    if (v2 < v19 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v17 = v16;
  sub_2259D8718(0, &qword_27D73E7A8, 0x277CE2DE8);
  v13 = sub_225CCE814();

  if (v13 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v66 = off_28105B918;
    v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v68));
    (*(v10 + 16))(v15, &v66[v67], v9);
    os_unfair_lock_unlock(&v66[v68]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v69 = sub_225CCD934();
      v70 = sub_225CCED04();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79 = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_2259BE198(0xD000000000000037, 0x8000000225D21C00, &v79);
        _os_log_impl(&dword_2259A7000, v69, v70, "%s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x22AA6F950](v72, -1, -1);
        MEMORY[0x22AA6F950](v71, -1, -1);
      }
    }

    (*(v10 + 8))(v15, v9);
    return MEMORY[0x277D84F90];
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AA6DA80](0, v13);
    goto LABEL_7;
  }

  v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    v20 = *(v13 + 32);
LABEL_7:
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_225CF1D00;
    [v21 topLeft];
    v24 = v23;
    v26 = v25;
    v27 = type metadata accessor for IQPoint();
    v28 = objc_allocWithZone(v27);
    v29 = v24;
    *&v28[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v29;
    v30 = v26;
    *&v28[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v30;
    v78.receiver = v28;
    v78.super_class = v27;
    *(v22 + 32) = objc_msgSendSuper2(&v78, sel_init);
    [v21 topRight];
    v32 = v31;
    v34 = v33;
    v35 = objc_allocWithZone(v27);
    v36 = v32;
    *&v35[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v36;
    v37 = v34;
    *&v35[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v37;
    v77.receiver = v35;
    v77.super_class = v27;
    *(v22 + 40) = objc_msgSendSuper2(&v77, sel_init);
    [v21 bottomRight];
    v39 = v38;
    v41 = v40;
    v42 = objc_allocWithZone(v27);
    v43 = v39;
    *&v42[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v43;
    v44 = v41;
    *&v42[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v44;
    v76.receiver = v42;
    v76.super_class = v27;
    *(v22 + 48) = objc_msgSendSuper2(&v76, sel_init);
    [v21 bottomLeft];
    v46 = v45;
    v48 = v47;
    v49 = objc_allocWithZone(v27);
    v50 = v46;
    *&v49[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v50;
    v51 = v48;
    *&v49[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v51;
    v75.receiver = v49;
    v75.super_class = v27;
    *(v22 + 56) = objc_msgSendSuper2(&v75, sel_init);

    return v22;
  }

  __break(1u);
LABEL_26:
  v18 = sub_225B29AA0((v19 > 1), v15, 1, v18);
LABEL_12:
  *(v18 + 2) = v15;
  v60 = &v18[56 * v2];
  *(v60 + 4) = 0xD00000000000002ELL;
  *(v60 + 5) = v4;
  v61 = v74;
  *(v60 + 6) = 0xD000000000000029;
  *(v60 + 7) = v61;
  v62 = v73;
  *(v60 + 8) = 0xD000000000000016;
  *(v60 + 9) = v62;
  *(v60 + 10) = 1215;
  *v1 = v8;
  *(v1 + 8) = v18;
  *(v1 + 16) = 0xD00000000000002ELL;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v63 = off_28105B918;
  v64 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v65 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v65));
  (*(v10 + 16))(v13, &v63[v64], v9);
  os_unfair_lock_unlock(&v63[v65]);
  DIPLogError(_:message:log:)(v17, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v17);
  (*(v10 + 8))(v13, v9);

  return MEMORY[0x277D84F90];
}

void sub_225B8B9B4(unint64_t a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v111 - v8;
  v10 = *(v1 + 112);
  v124 = *(v1 + 96);
  v125 = v10;
  v126 = *(v1 + 128);
  v127 = *(v1 + 144);
  v11 = *(v1 + 48);
  v120 = *(v1 + 32);
  v121 = v11;
  v12 = *(v1 + 80);
  v122 = *(v1 + 64);
  v123 = v12;
  v13 = *(v1 + 16);
  v119[0] = *v1;
  v119[1] = v13;
  if (a1 >> 62)
  {
    if (sub_225CCF144())
    {
      v14 = sub_225CCF144();
      goto LABEL_3;
    }

LABEL_61:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v103 = off_28105B918;
    v104 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v105 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v105));
    (*(v4 + 16))(v9, &v103[v104], v3);
    os_unfair_lock_unlock(&v103[v105]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v106 = sub_225CCD934();
      v107 = sub_225CCED04();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v118[0] = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_2259BE198(0xD000000000000031, 0x8000000225D21B70, v118);
        _os_log_impl(&dword_2259A7000, v106, v107, "%s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x22AA6F950](v109, -1, -1);
        MEMORY[0x22AA6F950](v108, -1, -1);
      }
    }

    (*(v4 + 8))(v9, v3);
    return;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_61;
  }

LABEL_3:
  v15 = *&v119[0];
  if (v14 == *&v119[0])
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
    inited = swift_initStackObject();
    v18 = inited;
    *(inited + 16) = xmmword_225CF1D00;
    v19 = (inited + 32);
    v20 = *(&v121 + 1);
    v114 = v16;
    v113 = xmmword_225CF1D00;
    if ((a1 & 0xC000000000000001) != 0)
    {
      *(inited + 32) = MEMORY[0x22AA6DA80](*(&v121 + 1), a1);
      v110 = a1;
      a1 = v120;
      *(v18 + 40) = MEMORY[0x22AA6DA80](v120, v110);
      v7 = *(&v120 + 1);
      *(v18 + 48) = MEMORY[0x22AA6DA80](*(&v120 + 1), v110);
      v26 = v121;
      v31 = MEMORY[0x22AA6DA80](v121, v110);
LABEL_11:
      *(v18 + 56) = v31;
      v115 = v18 & 0xC000000000000001;
      v112 = v26;
      if ((v18 & 0xC000000000000001) == 0)
      {
        if ((a1 & 0x8000000000000000) == 0)
        {
          v32 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 < v32)
          {
            if (v7 < v32)
            {
              v33 = v19[v7];
              v34 = v19[a1];
              v35 = v33;
              goto LABEL_16;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_73:
      v34 = MEMORY[0x22AA6DA80](a1, v18);
      v35 = MEMORY[0x22AA6DA80](v7, v18);
LABEL_16:
      v36 = v35;
      v37 = &v34[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v38 = *v37;
      v39 = &v36[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
      swift_beginAccess();
      v40 = *v39;
      v41 = &v34[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v42 = *v41;
      v43 = &v36[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
      swift_beginAccess();
      v44 = *v43;

      v111 = v19;
      if (v115)
      {
        v45 = MEMORY[0x22AA6DA80](a1, v18);
        v46 = MEMORY[0x22AA6DA80](v20, v18);
LABEL_27:
        v55 = v46;
        v56 = sqrtf(((v38 - v40) * (v38 - v40)) + ((v42 - v44) * (v42 - v44)));
        v57 = &v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v58 = *v57;
        v59 = &v55[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v60 = v58 - *v59;
        v61 = &v45[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v62 = *v61;
        v63 = &v55[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v64 = *v63;

        if (v56 >= sqrtf((v60 * v60) + ((v62 - v64) * (v62 - v64))))
        {
          v67 = v18;
LABEL_51:
          v93 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v93)
          {
            v117 = MEMORY[0x277D84F90];
            sub_225CCF394();
            v94 = 0;
            do
            {
              if ((v67 & 0xC000000000000001) != 0)
              {
                v95 = MEMORY[0x22AA6DA80](v94, v67);
              }

              else
              {
                v95 = *(v67 + 8 * v94 + 32);
              }

              v96 = v95;
              ++v94;
              v97 = &v95[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
              swift_beginAccess();
              v98 = *v97;
              v99 = &v96[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
              swift_beginAccess();
              v100 = *v99;
              v101 = type metadata accessor for IQPoint();
              v102 = objc_allocWithZone(v101);
              *&v102[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v98;
              *&v102[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v100;
              v116.receiver = v102;
              v116.super_class = v101;
              objc_msgSendSuper2(&v116, sel_init);

              sub_225CCF364();
              sub_225CCF3A4();
              sub_225CCF3B4();
              sub_225CCF374();
            }

            while (v93 != v94);
          }

          return;
        }

        if (v115)
        {
          v65 = MEMORY[0x22AA6DA80](a1, v18);
          v66 = v111;
        }

        else
        {
          v66 = v111;
          v65 = v111[a1];
        }

        v68 = v112;
        v69 = &v65[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v70 = *v69;

        if (v115)
        {
          v71 = MEMORY[0x22AA6DA80](v7, v18);
        }

        else
        {
          v71 = v66[v7];
        }

        v72 = v71;
        v73 = &v71[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v74 = *v73;

        v75 = swift_allocObject();
        v67 = v75;
        *(v75 + 16) = v113;
        if (v74 >= v70)
        {
          if (v115)
          {
            *(v75 + 32) = MEMORY[0x22AA6DA80](v20, v18);
            *(v67 + 40) = MEMORY[0x22AA6DA80](a1, v18);
            *(v67 + 48) = MEMORY[0x22AA6DA80](v7, v18);
            v76 = v68;
            goto LABEL_43;
          }

          v85 = v66[v20];
          *(v75 + 32) = v85;
          v86 = v66[a1];
          *(v75 + 40) = v86;
          v87 = v66[v7];
          *(v75 + 48) = v87;
          if ((v68 & 0x8000000000000000) == 0)
          {
            if (v68 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v88 = v66[v68];
              v89 = v85;
              v90 = v86;
              v91 = v87;
              v77 = v88;
              goto LABEL_50;
            }

LABEL_83:
            __break(1u);
            return;
          }

          goto LABEL_81;
        }

        if (v115)
        {
          *(v75 + 32) = MEMORY[0x22AA6DA80](v7, v18);
          *(v67 + 40) = MEMORY[0x22AA6DA80](v68, v18);
          *(v67 + 48) = MEMORY[0x22AA6DA80](v20, v18);
          v76 = a1;
LABEL_43:
          v77 = MEMORY[0x22AA6DA80](v76, v18);
LABEL_50:
          v92 = v77;

          *(v67 + 56) = v92;
          goto LABEL_51;
        }

        v78 = v66[v7];
        *(v75 + 32) = v78;
        if ((v68 & 0x8000000000000000) == 0)
        {
          if (v68 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v79 = v66[v68];
            *(v75 + 40) = v79;
            v80 = v66[v20];
            *(v75 + 48) = v80;
            v81 = v66[a1];
            v82 = v78;
            v83 = v79;
            v84 = v80;
            v77 = v81;
            goto LABEL_50;
          }

          goto LABEL_82;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v54 = v19[v20];
          v45 = v19[a1];
          v46 = v54;
          goto LABEL_27;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ((*(&v121 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*(&v121 + 1) < v21)
      {
        v22 = a1 + 32;
        v23 = *(a1 + 32 + 8 * *(&v121 + 1));
        *v19 = v23;
        a1 = v120;
        if (v120 < v21)
        {
          v24 = *(v22 + 8 * v120);
          *(inited + 40) = v24;
          v7 = *(&v120 + 1);
          if (*(&v120 + 1) < v21)
          {
            v25 = *(v22 + 8 * *(&v120 + 1));
            *(inited + 48) = v25;
            v26 = v121;
            if (v121 >= v21)
            {
              __break(1u);
              goto LABEL_75;
            }

            v27 = *(v22 + 8 * v121);
            v28 = v23;
            v29 = v24;
            v30 = v25;
            v31 = v27;
            goto LABEL_11;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v47 = off_28105B918;
  v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v49));
  (*(v4 + 16))(v7, &v47[v48], v3);
  os_unfair_lock_unlock(&v47[v49]);
  sub_225B92D48(v119, v118);

  v50 = sub_225CCD934();
  v51 = sub_225CCED14();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134218240;
    *(v52 + 4) = v15;
    sub_225B92D80(v119);
    *(v52 + 12) = 2048;
    if (a1 >> 62)
    {
      v53 = sub_225CCF144();
    }

    else
    {
      v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v52 + 14) = v53;

    _os_log_impl(&dword_2259A7000, v50, v51, "Could not convert rect corners, expected %ld corners but found %ld", v52, 0x16u);
    MEMORY[0x22AA6F950](v52, -1, -1);
  }

  else
  {

    sub_225B92D80(v119);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_225B8C4EC(unint64_t a1, double a2, double a3)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = *(v3 + 112);
  v50[6] = *(v3 + 96);
  v50[7] = v14;
  v50[8] = *(v3 + 128);
  v51 = *(v3 + 144);
  v15 = *(v3 + 48);
  v50[2] = *(v3 + 32);
  v50[3] = v15;
  v16 = *(v3 + 80);
  v50[4] = *(v3 + 64);
  v50[5] = v16;
  v17 = *(v3 + 16);
  v50[0] = *v3;
  v50[1] = v17;
  if (!(a1 >> 62))
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v39 = off_28105B918;
    v40 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v41 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v41));
    (*(v8 + 16))(v13, &v39[v40], v7);
    os_unfair_lock_unlock(&v39[v41]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v42 = sub_225CCD934();
      v43 = sub_225CCED04();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_2259BE198(0xD00000000000002FLL, 0x8000000225D21B40, v49);
        _os_log_impl(&dword_2259A7000, v42, v43, "%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x22AA6F950](v45, -1, -1);
        MEMORY[0x22AA6F950](v44, -1, -1);
      }
    }

    (*(v8 + 8))(v13, v7);
    return MEMORY[0x277D84F90];
  }

  if (!sub_225CCF144())
  {
    goto LABEL_23;
  }

  v18 = sub_225CCF144();
LABEL_3:
  v19 = *&v50[0];
  if (v18 != *&v50[0])
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v34));
    (*(v8 + 16))(v11, &v32[v33], v7);
    os_unfair_lock_unlock(&v32[v34]);
    sub_225B92D48(v50, v49);

    v35 = sub_225CCD934();
    v36 = sub_225CCED14();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      *(v37 + 4) = v19;
      sub_225B92D80(v50);
      *(v37 + 12) = 2048;
      if (a1 >> 62)
      {
        v38 = sub_225CCF144();
      }

      else
      {
        v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v37 + 14) = v38;

      _os_log_impl(&dword_2259A7000, v35, v36, "Could not scale rect corners, expected %ld corners but found %ld", v37, 0x16u);
      MEMORY[0x22AA6F950](v37, -1, -1);
    }

    else
    {

      sub_225B92D80(v50);
    }

    (*(v8 + 8))(v11, v7);
    return MEMORY[0x277D84F90];
  }

  result = MEMORY[0x277D84F90];
  if (v18)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_225CCF394();
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v21 = 0;
      v22 = a2;
      v23 = a3;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x22AA6DA80](v21, a1);
        }

        else
        {
          v24 = *(a1 + 8 * v21 + 32);
        }

        v25 = v24;
        ++v21;
        v26 = &v24[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
        swift_beginAccess();
        v27 = *v26 * v22;
        v28 = &v25[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
        swift_beginAccess();
        v29 = *v28 * v23;
        v30 = type metadata accessor for IQPoint();
        v31 = objc_allocWithZone(v30);
        *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v27;
        *&v31[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v29;
        v47.receiver = v31;
        v47.super_class = v30;
        objc_msgSendSuper2(&v47, sel_init);

        sub_225CCF364();
        sub_225CCF3A4();
        sub_225CCF3B4();
        sub_225CCF374();
      }

      while (v18 != v21);
      return v48;
    }
  }

  return result;
}

void sub_225B8CAE4(unint64_t a1)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v94 - v8;
  v10 = *(v1 + 112);
  v97[6] = *(v1 + 96);
  v97[7] = v10;
  v97[8] = *(v1 + 128);
  v98 = *(v1 + 144);
  v11 = *(v1 + 48);
  v97[2] = *(v1 + 32);
  v97[3] = v11;
  v12 = *(v1 + 80);
  v97[4] = *(v1 + 64);
  v97[5] = v12;
  v13 = *(v1 + 16);
  v97[0] = *v1;
  v97[1] = v13;
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_91:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v86 = off_28105B918;
    v87 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v88 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v88));
    (*(v4 + 16))(v9, &v86[v87], v3);
    os_unfair_lock_unlock(&v86[v88]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v89 = sub_225CCD934();
      v90 = sub_225CCED04();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = v3;
        v93 = swift_slowAlloc();
        v96[0] = v93;
        *v91 = 136315138;
        *(v91 + 4) = sub_2259BE198(0xD000000000000030, 0x8000000225D21870, v96);
        _os_log_impl(&dword_2259A7000, v89, v90, "%s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x22AA6F950](v93, -1, -1);
        MEMORY[0x22AA6F950](v91, -1, -1);

        (*(v4 + 8))(v9, v92);
LABEL_98:
        v85 = 1;
LABEL_99:
        LOBYTE(v97[0]) = v85;
        return;
      }
    }

    (*(v4 + 8))(v9, v3);
    goto LABEL_98;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_91;
  }

  v14 = sub_225CCF144();
LABEL_3:
  v15 = *&v97[0];
  if (v14 != *&v97[0])
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v20 = off_28105B918;
    v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v22));
    (*(v4 + 16))(v7, &v20[v21], v3);
    os_unfair_lock_unlock(&v20[v22]);
    sub_225B92D48(v97, v96);

    v23 = sub_225CCD934();
    v24 = sub_225CCED14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v3;
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v15;
      sub_225B92D80(v97);
      *(v26 + 12) = 2048;
      if (a1 >> 62)
      {
        v27 = sub_225CCF144();
      }

      else
      {
        v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 14) = v27;

      _os_log_impl(&dword_2259A7000, v23, v24, "Could not calculate quad area, expected %ld corners but found %ld", v26, 0x16u);
      MEMORY[0x22AA6F950](v26, -1, -1);
      v3 = v25;
    }

    else
    {

      sub_225B92D80(v97);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_98;
  }

  v16 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_102;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
  swift_beginAccess();

  if (v16)
  {
    v19 = MEMORY[0x22AA6DA80](1, a1);
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v19 = *(a1 + 40);
LABEL_17:
  v28 = v19;
  swift_beginAccess();

  if (v16)
  {
    v29 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v29 = *(a1 + 40);
  }

  v30 = v29;
  swift_beginAccess();

  if (!v16)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v31 = *(a1 + 56);
      goto LABEL_24;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v31 = MEMORY[0x22AA6DA80](3, a1);
LABEL_24:
  v32 = v31;
  swift_beginAccess();

  if (v16)
  {
    v33 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v33 = *(a1 + 56);
  }

  v34 = v33;
  v35 = &v33[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v36 = *v35;

  if (v16)
  {
    v37 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v37 = *(a1 + 32);
  }

  v38 = v37;
  swift_beginAccess();

  if (v16)
  {
    v39 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v39 = *(a1 + 40);
  }

  v40 = v39;
  swift_beginAccess();

  if (v16)
  {
    v41 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v41 = *(a1 + 32);
  }

  v42 = v41;
  v43 = &v41[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
  swift_beginAccess();
  v95 = *v43;

  if (v16)
  {
    v44 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v44 = *(a1 + 56);
  }

  v45 = v44;
  v46 = &v44[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v94[10] = *v46;

  if (v16)
  {
    v47 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v47 = *(a1 + 40);
  }

  v48 = v47;
  swift_beginAccess();

  if (v16)
  {
    v49 = MEMORY[0x22AA6DA80](0, a1);
  }

  else
  {
    v49 = *(a1 + 32);
  }

  v50 = v49;
  v51 = &v49[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v94[9] = *v51;

  if (v16)
  {
    v52 = MEMORY[0x22AA6DA80](3, a1);
  }

  else
  {
    v52 = *(a1 + 56);
  }

  v53 = v52;
  v54 = &v52[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
  swift_beginAccess();
  v94[7] = *v54;

  if (v16)
  {
    v55 = MEMORY[0x22AA6DA80](1, a1);
  }

  else
  {
    v55 = *(a1 + 40);
  }

  v56 = v55;
  v57 = &v55[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
  swift_beginAccess();
  v94[8] = *v57;

  if (v16)
  {
    v58 = MEMORY[0x22AA6DA80](2, a1);
LABEL_55:
    v59 = v58;
    v60 = &v58[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v94[5] = *v60;

    if (v16)
    {
      v61 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v61 = *(a1 + 48);
    }

    v62 = v61;
    v63 = &v61[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v94[4] = *v63;

    v94[6] = v36;
    if (v16)
    {
      v64 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v64 = *(a1 + 56);
    }

    v65 = v64;
    v66 = &v64[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y];
    swift_beginAccess();
    v94[2] = *v66;

    if (v16)
    {
      v67 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v67 = *(a1 + 56);
    }

    v68 = v67;
    v69 = &v67[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v94[3] = *v69;

    if (v16)
    {
      v70 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v70 = *(a1 + 40);
    }

    v71 = v70;
    swift_beginAccess();

    if (v16)
    {
      v72 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v72 = *(a1 + 48);
    }

    v73 = v72;
    v74 = &v72[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x];
    swift_beginAccess();
    v95 = *v74;

    if (v16)
    {
      v75 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v75 = *(a1 + 40);
    }

    v76 = v75;
    swift_beginAccess();

    if (v16)
    {
      v77 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v77 = *(a1 + 56);
    }

    v78 = v77;
    swift_beginAccess();

    if (v16)
    {
      v79 = MEMORY[0x22AA6DA80](2, a1);
    }

    else
    {
      v79 = *(a1 + 48);
    }

    v80 = v79;
    swift_beginAccess();

    if (v16)
    {
      v81 = MEMORY[0x22AA6DA80](1, a1);
    }

    else
    {
      v81 = *(a1 + 40);
    }

    v82 = v81;
    swift_beginAccess();

    if (v16)
    {
      v83 = MEMORY[0x22AA6DA80](3, a1);
    }

    else
    {
      v83 = *(a1 + 56);
    }

    v84 = v83;
    swift_beginAccess();

    v85 = 0;
    goto LABEL_99;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v58 = *(a1 + 48);
    goto LABEL_55;
  }

LABEL_104:
  __break(1u);
}

uint64_t sub_225B8D758(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = [a1 results];
  if (!v16)
  {
    v4 = 0x8000000225D218D0;
    v73 = 0x8000000225D21900;
    v74 = 0x8000000225D20DA0;
    v53 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v17 = swift_allocError();
    v1 = v54;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v8, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v8, 1, v55);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v55)
    {
      LOWORD(v8) = 350;
    }

    else
    {
      LOWORD(v8) = 23;
    }

    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v58;
    sub_225B2C4A0(v53, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v79);

    v3 = v79;
    v18 = sub_225B29AA0(0, 1, 1, v57);
    v2 = *(v18 + 2);
    v19 = *(v18 + 3);
    v15 = (v2 + 1);
    if (v2 < v19 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v17 = v16;
  sub_2259D8718(0, &qword_27D73E7A8, 0x277CE2DE8);
  v13 = sub_225CCE814();

  if (v13 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v66 = off_28105B918;
    v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v68));
    (*(v10 + 16))(v15, &v66[v67], v9);
    os_unfair_lock_unlock(&v66[v68]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v69 = sub_225CCD934();
      v70 = sub_225CCED04();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79 = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D21920, &v79);
        _os_log_impl(&dword_2259A7000, v69, v70, "%s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x22AA6F950](v72, -1, -1);
        MEMORY[0x22AA6F950](v71, -1, -1);
      }
    }

    (*(v10 + 8))(v15, v9);
    return MEMORY[0x277D84F90];
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AA6DA80](0, v13);
    goto LABEL_7;
  }

  v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    v20 = *(v13 + 32);
LABEL_7:
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_225CF1D00;
    [v21 topLeft];
    v24 = v23;
    v26 = v25;
    v27 = type metadata accessor for IQPoint();
    v28 = objc_allocWithZone(v27);
    v29 = v24;
    *&v28[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v29;
    v30 = v26;
    *&v28[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v30;
    v78.receiver = v28;
    v78.super_class = v27;
    *(v22 + 32) = objc_msgSendSuper2(&v78, sel_init);
    [v21 topRight];
    v32 = v31;
    v34 = v33;
    v35 = objc_allocWithZone(v27);
    v36 = v32;
    *&v35[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v36;
    v37 = v34;
    *&v35[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v37;
    v77.receiver = v35;
    v77.super_class = v27;
    *(v22 + 40) = objc_msgSendSuper2(&v77, sel_init);
    [v21 bottomRight];
    v39 = v38;
    v41 = v40;
    v42 = objc_allocWithZone(v27);
    v43 = v39;
    *&v42[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v43;
    v44 = v41;
    *&v42[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v44;
    v76.receiver = v42;
    v76.super_class = v27;
    *(v22 + 48) = objc_msgSendSuper2(&v76, sel_init);
    [v21 bottomLeft];
    v46 = v45;
    v48 = v47;
    v49 = objc_allocWithZone(v27);
    v50 = v46;
    *&v49[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_x] = v50;
    v51 = v48;
    *&v49[OBJC_IVAR____TtC13CoreIDVShared7IQPoint_y] = v51;
    v75.receiver = v49;
    v75.super_class = v27;
    *(v22 + 56) = objc_msgSendSuper2(&v75, sel_init);

    return v22;
  }

  __break(1u);
LABEL_26:
  v18 = sub_225B29AA0((v19 > 1), v15, 1, v18);
LABEL_12:
  *(v18 + 2) = v15;
  v60 = &v18[56 * v2];
  *(v60 + 4) = 0xD00000000000002DLL;
  *(v60 + 5) = v4;
  v61 = v74;
  *(v60 + 6) = 0xD000000000000029;
  *(v60 + 7) = v61;
  v62 = v73;
  *(v60 + 8) = 0xD000000000000015;
  *(v60 + 9) = v62;
  *(v60 + 10) = 1233;
  *v1 = v8;
  *(v1 + 8) = v18;
  *(v1 + 16) = 0xD00000000000002DLL;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v63 = off_28105B918;
  v64 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v65 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v65));
  (*(v10 + 16))(v13, &v63[v64], v9);
  os_unfair_lock_unlock(&v63[v65]);
  DIPLogError(_:message:log:)(v17, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v17);
  (*(v10 + 8))(v13, v9);

  return MEMORY[0x277D84F90];
}

char *sub_225B8DF54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_225CCD954();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = [a1 results];
  if (v12)
  {
    v13 = v12;
    sub_2259D8718(0, &qword_27D73E7B0, 0x277CE2DE0);
    v14 = sub_225CCE814();

    if (v14 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
    {
      v11 = 0;
      v57 = "collectMRZData(_:)";
      v58 = v14 & 0xC000000000000001;
      v6 = v14 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F90];
      v56 = i;
      while (1)
      {
        if (v58)
        {
          v16 = MEMORY[0x22AA6DA80](v11, v14);
        }

        else
        {
          if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v16 = *(v14 + 8 * v11 + 32);
        }

        v17 = v16;
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v74[0] = v16;
        sub_225B91C60(v74, 0xD000000000000010, v57 | 0x8000000000000000, &v69);

        if (*(&v69 + 1))
        {
          v66 = v71;
          v67 = v72;
          v68 = v73;
          v64 = v69;
          v65 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_225B2A91C(0, *(v5 + 16) + 1, 1, v5);
          }

          v20 = *(v5 + 16);
          v19 = *(v5 + 24);
          if (v20 >= v19 >> 1)
          {
            v5 = sub_225B2A91C((v19 > 1), v20 + 1, 1, v5);
          }

          v62 = v67;
          v63 = v68;
          v60 = v65;
          v61 = v66;
          v21 = v64;
          v59 = v64;
          *(v5 + 16) = v20 + 1;
          v22 = (v5 + 80 * v20);
          v22[2] = v21;
          v23 = v60;
          v24 = v61;
          v25 = v63;
          v22[5] = v62;
          v22[6] = v25;
          v22[3] = v23;
          v22[4] = v24;
          i = v56;
        }

        else
        {
          v66 = v71;
          v67 = v72;
          v68 = v73;
          v64 = v69;
          v65 = v70;
          sub_2259CB640(&v64, &qword_27D73E7B8, &qword_225CF29A8);
        }

        ++v11;
        if (v18 == i)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    (*(v6 + 16))(v11, &v47[v48], v5);
    os_unfair_lock_unlock(&v47[v49]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v50 = sub_225CCD934();
      v51 = sub_225CCED04();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v69 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_2259BE198(0xD000000000000019, 0x8000000225D219D0, &v69);
        _os_log_impl(&dword_2259A7000, v50, v51, "%s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x22AA6F950](v53, -1, -1);
        MEMORY[0x22AA6F950](v52, -1, -1);
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v57 = 0x8000000225D21960;
    v58 = v5;
    v55 = 0x8000000225D21990;
    v56 = 0x8000000225D20DA0;
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v27 = swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v4, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v4, 1, v30);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 350;
    }

    else
    {
      v32 = 23;
    }

    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v34;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v69);

    v36 = v69;
    v37 = sub_225B29AA0(0, 1, 1, v33);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    v41 = v57;
    *(v40 + 4) = 0xD00000000000002CLL;
    *(v40 + 5) = v41;
    *(v40 + 6) = 0xD000000000000029;
    *(v40 + 7) = v56;
    *(v40 + 8) = 0xD000000000000012;
    *(v40 + 9) = v55;
    *(v40 + 10) = 1151;
    *v29 = v32;
    *(v29 + 8) = v37;
    *(v29 + 16) = 0xD00000000000002CLL;
    *(v29 + 24) = v41;
    *(v29 + 32) = v36;
    *(v29 + 40) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v42 = off_28105B918;
    v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v44 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v44));
    v45 = &v42[v43];
    v46 = v58;
    (*(v6 + 16))(v9, v45, v58);
    os_unfair_lock_unlock(&v42[v44]);
    DIPLogError(_:message:log:)(v27, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v27);
    (*(v6 + 8))(v9, v46);
  }

  return MEMORY[0x277D84F90];
}

const char *sub_225B8E74C(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  i = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v48 = *(v1 + 8);
  v15 = [a1 results];
  if (!v15)
  {
    v17 = 0x8000000225D21AC0;
    v47 = 0x8000000225D21AF0;
    v48 = 0x8000000225D20DA0;
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v1 = swift_allocError();
    v14 = v28;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v7, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v7, 1, v29);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      LOWORD(v3) = 350;
    }

    else
    {
      LOWORD(v3) = 23;
    }

    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v32;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v49);

    v2 = v49;
    v18 = sub_225B29AA0(0, 1, 1, v31);
    v16 = *(v18 + 2);
    v19 = *(v18 + 3);
    v7 = (v16 + 1);
    if (v16 < v19 >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

  v16 = v15;
  sub_2259D8718(0, &qword_27D73E7B0, 0x277CE2DE0);
  v17 = sub_225CCE814();

  if (v17 >> 62)
  {
    goto LABEL_33;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_225CCF144())
  {
    if (i < 1)
    {
      goto LABEL_51;
    }

    v14 = 0;
    v7 = (v17 & 0xC000000000000001);
    v8 = MEMORY[0x277D84F90];
    v47 = v17;
    while (1)
    {
      v20 = v7 ? MEMORY[0x22AA6DA80](v14, v17) : *(v17 + 8 * v14 + 32);
      v3 = v20;
      v2 = [v20 topCandidates_];
      sub_2259D8718(0, &qword_27D73E7C0, 0x277CE2DD0);
      v16 = sub_225CCE814();

      if (v16 >> 62)
      {
        break;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

LABEL_6:

LABEL_7:
      if (i == ++v14)
      {

        goto LABEL_41;
      }
    }

    if (!sub_225CCF144())
    {
      goto LABEL_6;
    }

LABEL_13:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x22AA6DA80](0, v16);
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v16 + 32);
LABEL_16:
      v9 = v21;

      v22 = [v9 string];
      v23 = sub_225CCE474();
      v16 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_225B29BC8(0, *(v8 + 16) + 1, 1, v8);
      }

      v1 = *(v8 + 16);
      v25 = *(v8 + 24);
      v2 = (v1 + 1);
      if (v1 >= v25 >> 1)
      {
        v8 = sub_225B29BC8((v25 > 1), v1 + 1, 1, v8);
      }

      *(v8 + 16) = v2;
      v26 = v8 + 16 * v1;
      *(v26 + 32) = v23;
      *(v26 + 40) = v16;
      v17 = v47;
      goto LABEL_7;
    }

    __break(1u);
LABEL_33:
    ;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = 0xD00000000000002CLL;
  v1 = off_28105B918;
  v40 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (v9[2])(v14, v1 + v40, v8);
  os_unfair_lock_unlock((v1 + v16));
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v1 = sub_225CCD934();
    v41 = sub_225CCED04();
    if (os_log_type_enabled(v1, v41))
    {
      v7 = "collectOCRText(_:)";
      v16 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v49 = v2;
      *v16 = 136315138;
      *(v16 + 4) = sub_2259BE198(0xD00000000000002CLL, 0x8000000225D21B10, &v49);
      _os_log_impl(&dword_2259A7000, v1, v41, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v16, -1, -1);
    }
  }

  v42 = v9[1];
  ++v9;
  v42(v14, v8);

  v8 = MEMORY[0x277D84F90];
LABEL_41:
  v49 = MEMORY[0x277D84FA0];
  i = *(v8 + 16);
  if (i)
  {
    v14 = 0;
    v16 = v8 + 40;
    while (1)
    {
      v19 = *(v8 + 16);
      if (v14 >= v19)
      {
        break;
      }

      ++v14;
      v43 = *(v16 - 8);
      v7 = *v16;

      v44 = sub_225B9204C(v43, v7);
      v1 = &v49;
      sub_225B92214(v44);

      v16 += 16;
      if (i == v14)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v18 = sub_225B29AA0((v19 > 1), v7, 1, v18);
LABEL_29:
    *(v18 + 2) = v7;
    v34 = &v18[56 * v16];
    *(v34 + 4) = 0xD00000000000002CLL;
    *(v34 + 5) = v17;
    v35 = v48;
    *(v34 + 6) = 0xD000000000000029;
    *(v34 + 7) = v35;
    v36 = v47;
    *(v34 + 8) = 0xD000000000000012;
    *(v34 + 9) = v36;
    *(v34 + 10) = 1187;
    *v14 = v3;
    *(v14 + 1) = v18;
    *(v14 + 2) = 0xD00000000000002CLL;
    *(v14 + 3) = v17;
    *(v14 + 4) = v2;
    *(v14 + 5) = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v39));
    (v9[2])(i, &v37[v38], v8);
    os_unfair_lock_unlock(&v37[v39]);
    DIPLogError(_:message:log:)(v1, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v1);
    v9[1](i, v8);

    return MEMORY[0x277D84F90];
  }

LABEL_45:

  v45 = v49;
  v8 = v49[2];
  if (v8)
  {
    v7 = sub_225C00680(v49[2], 0);
    v1 = sub_225B929C0(&v49, v7 + 4, v8, v45);
    sub_2259D8710(v49);
    if (v1 == v8)
    {
      return v7;
    }

    goto LABEL_52;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_225B8F024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758, &qword_225CF2990);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  if (!a2)
  {
    return a2;
  }

  v56 = a1;
  v57 = a2;
  v49 = "trimPostalCode(_:)";
  sub_225CCD814();
  v54 = 0;
  v55 = 0xE000000000000000;
  v14 = sub_225B93B9C();
  v15 = sub_225B93BF0();
  v46 = sub_2259D8B24(&qword_27D73E770, &qword_27D73E758, &qword_225CF2990, MEMORY[0x277D85AC0]);
  v47 = v15;
  v48 = v14;
  sub_225CCECB4();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v50 = v13;
  v45 = v17;
  v17(v13, v10);
  v51 = sub_225CCE534();
  v52 = v18;

  v19 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v40 = v9;
    v41 = v7;
    v42 = v6;
    v53 = MEMORY[0x277D84F90];
    sub_2259D5304(0, v19, 0);
    v20 = v53;
    v39 = a3;
    v21 = (a3 + 40);
    v43 = v16;
    v44 = v10;
    do
    {
      v22 = *v21;
      v56 = *(v21 - 1);
      v57 = v22;

      v23 = v50;
      sub_225CCD814();
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_225CCECB4();
      v45(v23, v10);
      sub_225CCE534();

      sub_225CCE5D4();
      sub_225CCE5D4();
      sub_225CCE544();
      sub_225CCE544();

      v24 = LevenshteinDistance();

      v53 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2259D5304((v25 > 1), v26 + 1, 1);
        v20 = v53;
      }

      *(v20 + 16) = v26 + 1;
      *(v20 + 8 * v26 + 32) = v24;
      v21 += 2;
      --v19;
      v10 = v44;
    }

    while (v19);
    v7 = v41;
    v6 = v42;
    a3 = v39;
    v9 = v40;
  }

  v27 = sub_225B7821C(v20);
  a2 = v27;
  v29 = v28;
  v30 = *(v20 + 16);
  if (v30)
  {
    v31 = 0;
    while ((v28 & 1) != 0 || *(v20 + 8 * v31 + 32) != v27)
    {
      if (v30 == ++v31)
      {
        goto LABEL_16;
      }
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v32 = off_28105B918;
    v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v34));
    (*(v7 + 16))(v9, &v32[v33], v6);
    os_unfair_lock_unlock(&v32[v34]);

    sub_225B40E04(v9, v51, v52, a3, v31);

    (*(v7 + 8))(v9, v6);
    goto LABEL_22;
  }

LABEL_16:

  if ((v29 & 1) == 0)
  {

LABEL_22:
    if (a2 >= 3)
    {
      return 3;
    }

    return a2;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v35 = off_28105B918;
  v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v37 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v37));
  (*(v7 + 16))(v9, &v35[v36], v6);
  os_unfair_lock_unlock(&v35[v37]);
  sub_225B40E1C(v9, v51, v52);

  (*(v7 + 8))(v9, v6);
  return a2;
}

unint64_t sub_225B8F68C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v60 = sub_225CCD954();
  v6 = *(v60 - 8);
  v7 = MEMORY[0x28223BE20](v60);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = sub_225CCF8F4();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[7];
  v69 = v1[6];
  v70 = v16;
  v71 = v1[8];
  v72 = *(v1 + 18);
  v17 = v1[3];
  v65 = v1[2];
  v66 = v17;
  v18 = v1[5];
  v67 = v1[4];
  v68 = v18;
  v19 = v1[1];
  v63 = *v1;
  v64 = v19;
  v20 = [a1 results];
  if (!v20)
  {
    v13 = 0x8000000225D219F0;
    v58 = 0x8000000225D21A20;
    v59 = 0x8000000225D20DA0;
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v12 = swift_allocError();
    v15 = v33;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v5, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v5, 1, v34);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v34)
    {
      LOWORD(v5) = 350;
    }

    else
    {
      LOWORD(v5) = 23;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v37;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v61);

    v11 = *&v61[0];
    v23 = sub_225B29AA0(0, 1, 1, v36);
    v21 = *(v23 + 2);
    v24 = *(v23 + 3);
    v22 = v21 + 1;
    if (v21 < v24 >> 1)
    {
LABEL_12:
      *(v23 + 2) = v22;
      v39 = &v23[56 * v21];
      *(v39 + 4) = 0xD00000000000002FLL;
      *(v39 + 5) = v13;
      v40 = v59;
      *(v39 + 6) = 0xD000000000000029;
      *(v39 + 7) = v40;
      v41 = v58;
      *(v39 + 8) = 0xD00000000000001FLL;
      *(v39 + 9) = v41;
      *(v39 + 10) = 1251;
      *v15 = v5;
      *(v15 + 1) = v23;
      *(v15 + 2) = 0xD00000000000002FLL;
      *(v15 + 3) = v13;
      *(v15 + 4) = v11;
      *(v15 + 5) = 0;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v42 = off_28105B918;
      v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v44 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v44));
      v45 = &v42[v43];
      v46 = v60;
      (*(v6 + 16))(v9, v45, v60);
      os_unfair_lock_unlock(&v42[v44]);
      DIPLogError(_:message:log:)(v12, 0, 0xE000000000000000);
      _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v12);
      (*(v6 + 8))(v9, v46);

LABEL_23:
      v31 = 0;
      LOBYTE(v30) = 1;
      goto LABEL_24;
    }

LABEL_27:
    v23 = sub_225B29AA0((v24 > 1), v22, 1, v23);
    goto LABEL_12;
  }

  v21 = v20;
  sub_2259D8718(0, &qword_27D73E7C8, 0x277CE2D60);
  v22 = sub_225CCE814();

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v47 = off_28105B918;
    v48 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v49 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v49));
    v50 = &v47[v48];
    v51 = v60;
    (*(v6 + 16))(v11, v50, v60);
    os_unfair_lock_unlock(&v47[v49]);
    if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
    {
      v52 = sub_225CCD934();
      v53 = sub_225CCED04();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v61[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_2259BE198(0xD000000000000042, 0x8000000225D21A40, v61);
        _os_log_impl(&dword_2259A7000, v52, v53, "%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AA6F950](v55, -1, -1);
        MEMORY[0x22AA6F950](v54, -1, -1);
      }

      (*(v6 + 8))(v11, v60);
    }

    else
    {
      (*(v6 + 8))(v11, v51);
    }

    goto LABEL_23;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x22AA6DA80](0, v22);
    goto LABEL_7;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    __break(1u);
    goto LABEL_27;
  }

  v25 = *(v22 + 32);
LABEL_7:
  v26 = v25;

  v61[6] = v69;
  v61[7] = v70;
  v61[8] = v71;
  v62 = v72;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v61[0] = v63;
  v61[1] = v64;
  [v26 confidence];
  v28 = v27;
  (*(v13 + 104))(v15, *MEMORY[0x277D84688], v12);
  v29 = sub_225B804A4(15, v15, v28);

  v30 = HIDWORD(v29) & 1;
  (*(v13 + 8))(v15, v12);
  v31 = v29;
LABEL_24:
  LOBYTE(v63) = v30;
  return v31 | (v30 << 32);
}

uint64_t sub_225B8FE7C()
{
  v1 = sub_225CCD954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  LODWORD(result) = [*(v0 + 136) luxLevel];
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v31 = 0x8000000225D20DA0;
  v32 = 0x8000000225D21A90;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v30 = swift_allocError();
  v12 = v11;
  v13 = sub_225CCE954();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v7, 1, 1, v13);
  LODWORD(v13) = (*(v14 + 48))(v7, 1, v13);
  sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
  if (v13)
  {
    v15 = 356;
  }

  else
  {
    v15 = 23;
  }

  v16 = sub_225B2C374(v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v16;
  sub_225B2C4A0(v10, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v33);

  v18 = v33;
  v19 = sub_225B29AA0(0, 1, 1, v9);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_225B29AA0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[56 * v21];
  v23 = v32;
  *(v22 + 4) = 0xD00000000000002DLL;
  *(v22 + 5) = v23;
  v24 = v31;
  *(v22 + 6) = 0xD000000000000029;
  *(v22 + 7) = v24;
  strcpy(v22 + 64, "collectLux()");
  v22[77] = 0;
  *(v22 + 39) = -5120;
  *(v22 + 10) = 1268;
  *v12 = v15;
  *(v12 + 8) = v19;
  *(v12 + 16) = 0xD00000000000002DLL;
  *(v12 + 24) = v23;
  *(v12 + 32) = v18;
  *(v12 + 40) = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  (*(v2 + 16))(v4, &v25[v26], v1);
  os_unfair_lock_unlock(&v25[v27]);
  v28 = v30;
  DIPLogError(_:message:log:)(v30, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v28);
  (*(v2 + 8))(v4, v1);

  return 0;
}

void *sub_225B90284(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v10 = result;
  if (a2 & 0x100000000) != 0 || (a4 & 1) != 0 || (a6 & 1) != 0 || a5 > 255 || (a8 & 1) != 0 || (a10)
  {
    v11 = MEMORY[0x277D84F90];
    *&v17[24] = MEMORY[0x277D84F90];
    *&v18[8] = xmmword_225CF1D10;
    LODWORD(v16) = 1097859072;
    *(&v16 + 1) = 10;
    v17[0] = -11;
    *&v17[4] = 1036831949;
    *&v17[8] = xmmword_225CF1D20;
    goto LABEL_10;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v11 = MEMORY[0x277D84F90];
    *&v17[16] = a9;
    *&v17[24] = MEMORY[0x277D84F90];
    *&v18[8] = xmmword_225CF1D10;
    LODWORD(v16) = a2;
    *(&v16 + 1) = a3;
    v17[0] = a5;
    *&v17[4] = 1036831949;
    *&v17[8] = a7;
LABEL_10:
    *v18 = sub_225B2E6E4(v11);
    v29 = v16;
    v30 = *v17;
    v31 = *&v17[16];
    v32 = *v18;
    v33 = *&v18[16];
    v34 = *&v17[24];
    v12 = sub_225BDE26C(v10);
    sub_2259CB640(&v34, &qword_27D73E7D0, &unk_225CF29B8);
    *&v17[24] = v12;
    sub_225BDE590();
    v21 = *&v17[16];
    v22 = *v18;
    v23 = *&v18[16];
    v19 = v16;
    v20 = *v17;
    v26 = *&v17[16];
    v27 = *v18;
    v28 = *&v18[16];
    v24 = v16;
    v25 = *v17;
    sub_225B93C8C(&v19, &v15);
    sub_225B93CE8(&v24);
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v24 = v19;
    v25 = v20;
    sub_225BDDF18();
    v14 = v13;
    sub_225B93CE8(&v19);
    return v14;
  }

  __break(1u);
  return result;
}

id ImageQualityCollector.getFuzzyMatchAssessment(frontID:pdf417Data:)(uint64_t a1, void *a2)
{
  v190 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v148 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v148 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v148 - v15;
  v17 = a2[14];
  v158 = a2[15];
  v159 = v17;
  v18 = a2[16];
  v156 = a2[17];
  v157 = v18;
  v19 = a2[27];
  v149 = a2[26];
  v150 = v19;
  v20 = a2[30];
  v160 = a2[31];
  v161 = v20;
  v21 = a2[33];
  v153 = a2[32];
  v154 = v21;
  v22 = a2[39];
  v152 = a2[38];
  v155 = v22;
  v23 = a2[50];
  v162 = a2[51];
  v163 = v23;
  v24 = *v2;
  v25 = v2[2];
  v26 = v2[3];
  v180 = v2[1];
  v181 = v25;
  v179 = v24;
  v27 = v2[7];
  v185 = v2[6];
  v186 = v27;
  v28 = v2[5];
  v183 = v2[4];
  v184 = v28;
  v182 = v26;
  v29 = *(v2 + 128);
  v30 = *(v2 + 129);
  *(v178 + 15) = *(v2 + 18);
  v178[0] = v30;
  sub_225B2E800(MEMORY[0x277D84F90]);
  v31 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_225B93C44(&qword_27D73A9E8, type metadata accessor for VNImageOption, &unk_225CD3A1C);
  v32 = sub_225CCE2B4();

  v175 = [v31 initWithCIImage:a1 options:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  [v33 setRecognitionLevel_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_225CD30F0;
  v165 = v29;
  *(v34 + 32) = qword_225CF29C8[v29];
  *(v34 + 40) = 0xE300000000000000;
  v35 = sub_225CCE7F4();

  [v33 setRecognitionLanguages_];

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v36 = off_28105B918;
  v37 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v38 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v38));
  v39 = *(v8 + 16);
  v172 = v37;
  v173 = v8 + 16;
  v176 = v7;
  v171 = v39;
  v39(v16, &v36[v37], v7);
  v174 = v38;
  os_unfair_lock_unlock(&v36[v38]);
  v40 = sub_225CCD934();
  v41 = sub_225CCED04();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v175;
  if (v42)
  {
    v44 = v175;
    v45 = v8;
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2259A7000, v40, v41, "Performing fuzzy matching OCR vision request on front ID", v46, 2u);
    v47 = v46;
    v8 = v45;
    v43 = v44;
    MEMORY[0x22AA6F950](v47, -1, -1);
  }

  v50 = *(v8 + 8);
  v48 = v8 + 8;
  v49 = v50;
  v50(v16, v176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_225CD7D40;
  *(v51 + 32) = v33;
  sub_2259D8718(0, &qword_27D73E6F8, 0x277CE2DF0);
  v52 = v33;
  v53 = sub_225CCE7F4();

  *&v187[0] = 0;
  v54 = [v43 performRequests:v53 error:v187];

  v55 = *&v187[0];
  v170 = v50;
  if (!v54)
  {
    v167 = v52;
    v168 = v48;
    v64 = *&v187[0];
    v65 = sub_225CCCCC4();

    swift_willThrow();
    *&v187[0] = 0;
    *(&v187[0] + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D20E20);
    v165 = v65;
    swift_getErrorValue();
    v66 = sub_225CCFB24();
    MEMORY[0x22AA6CE70](v66);

    v67 = v187[0];
    v163 = 0x8000000225D20E60;
    v164 = 0x8000000225D20DA0;
    v68 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v69 = swift_allocError();
    v71 = v70;
    v72 = sub_225CCE954();
    v73 = *(v72 - 8);
    v74 = v166;
    (*(v73 + 56))(v166, 1, 1, v72);
    LODWORD(v72) = (*(v73 + 48))(v74, 1, v72);
    sub_2259CB640(v74, &unk_27D73B050, &unk_225CD3AD0);
    if (v72)
    {
      v75 = 349;
    }

    else
    {
      v75 = 23;
    }

    v76 = MEMORY[0x277D84F90];
    v77 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v187[0] = v77;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v187);

    v79 = *&v187[0];
    v80 = sub_225B29AA0(0, 1, 1, v76);
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    if (v82 >= v81 >> 1)
    {
      v80 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v80);
    }

    *(v80 + 2) = v82 + 1;
    v83 = &v80[56 * v82];
    *(v83 + 2) = v67;
    v84 = v164;
    *(v83 + 6) = 0xD000000000000029;
    *(v83 + 7) = v84;
    v85 = v163;
    *(v83 + 8) = 0xD00000000000002CLL;
    *(v83 + 9) = v85;
    *(v83 + 10) = 778;
    *v71 = v75;
    *(v71 + 8) = v80;
    *(v71 + 16) = v67;
    *(v71 + 32) = v79;
    *(v71 + 40) = 0;
    v86 = v174;
    os_unfair_lock_lock(&v36[v174]);
    v87 = v169;
    v88 = v176;
    v171(v169, &v36[v172], v176);
    os_unfair_lock_unlock(&v36[v86]);
    DIPLogError(_:message:log:)(v69, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v69);

    v170(v87, v88);
    return 0;
  }

  v187[4] = v183;
  v187[5] = v184;
  v187[6] = v185;
  v187[7] = v186;
  v187[0] = v179;
  v187[1] = v180;
  v187[2] = v181;
  v187[3] = v182;
  v188 = v165;
  *&v189[15] = *(v178 + 15);
  *v189 = v178[0];
  v56 = v55;
  v57 = sub_225B8E74C(v52);
  if (!*(v57 + 2))
  {

    v89 = v174;
    os_unfair_lock_lock(&v36[v174]);
    v90 = v151;
    v91 = v176;
    v171(v151, &v36[v172], v176);
    os_unfair_lock_unlock(&v36[v89]);
    v92 = sub_225CCD934();
    v93 = sub_225CCED04();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2259A7000, v92, v93, "OCR could not find any text, returning nil fuzzy match", v94, 2u);
      MEMORY[0x22AA6F950](v94, -1, -1);
    }

    else
    {
    }

    v170(v90, v91);
    return 0;
  }

  v58 = v174;
  os_unfair_lock_lock(&v36[v174]);
  v59 = v169;
  v60 = v176;
  v171(v169, &v36[v172], v176);
  os_unfair_lock_unlock(&v36[v58]);

  sub_225B4105C(v59, v57);

  v49(v59, v60);
  if (v154)
  {
    v61 = v153;
  }

  else
  {
    v61 = 0;
  }

  v62 = 0xE000000000000000;
  if (v154)
  {
    v62 = v154;
  }

  v165 = v62;
  v166 = v61;
  v167 = v52;
  v168 = v48;
  if (!v155)
  {

    goto LABEL_26;
  }

  if (sub_225CCE514() == 29557 && v63 == 0xE200000000000000)
  {

LABEL_16:

    goto LABEL_28;
  }

  v96 = sub_225CCF934();

  if ((v96 & 1) == 0)
  {
    if (sub_225CCE514() == 6386549 && v146 == 0xE300000000000000)
    {
      goto LABEL_16;
    }

    v147 = sub_225CCF934();

    if ((v147 & 1) == 0)
    {
LABEL_26:
      LODWORD(v155) = 0;
      LODWORD(v169) = 0;
      v153 = -1;
      v154 = -1;
      v95 = v165;
      goto LABEL_39;
    }
  }

LABEL_28:
  v98 = sub_225B913C4(v166, v165);
  v100 = v99;

  v166 = v98;
  v95 = v100;
  if (v150)
  {
    v101 = v149;
  }

  else
  {
    v101 = 0;
  }

  if (v150)
  {
    v102 = v150;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v103 = sub_225B917E8(v101, v102);
  v105 = v104;
  v107 = v106;
  v109 = v108;

  v154 = sub_225B8F024(v103, v105, v57);
  LODWORD(v169) = v110;
  swift_bridgeObjectRelease_n();
  v153 = sub_225B8F024(v107, v109, v57);
  LODWORD(v155) = v111;

LABEL_39:
  v112 = sub_225B8F024(v157, v156, v57);
  v114 = v113;
  v115 = sub_225B8F024(v159, v158, v57);
  v117 = v116;
  v118 = sub_225B8F024(v161, v160, v57);
  v120 = v119;
  v165 = sub_225B8F024(v163, v162, v57);
  LODWORD(v163) = v121;
  v166 = sub_225B8F024(v166, v95, v57);
  LODWORD(v162) = v122;

  matched = type metadata accessor for FuzzyMatchAssessment();
  v124 = objc_allocWithZone(matched);
  v125 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_firstName];
  *v125 = v112;
  v125[8] = v114 & 1;
  v126 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_lastName];
  *v126 = v115;
  v126[8] = v117 & 1;
  v127 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_state];
  *v127 = v118;
  v127[8] = v120 & 1;
  v128 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_houseNumber];
  *v128 = v154;
  v128[8] = v169 & 1;
  v129 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_street];
  *v129 = v153;
  v129[8] = v155 & 1;
  v130 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_dob];
  *v130 = v165;
  v130[8] = v163 & 1;
  v131 = &v124[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_postalCode];
  *v131 = v166;
  v131[8] = v162 & 1;
  v177.receiver = v124;
  v177.super_class = matched;
  v132 = objc_msgSendSuper2(&v177, sel_init);
  v133 = v174;
  os_unfair_lock_lock(&v36[v174]);
  v134 = v164;
  v135 = v176;
  v171(v164, &v36[v172], v176);
  os_unfair_lock_unlock(&v36[v133]);

  v136 = v132;
  v137 = sub_225CCD934();
  v138 = sub_225CCED04();
  v139 = v136;

  if (os_log_type_enabled(v137, v138))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v187[0] = v141;
    *v140 = 136315138;
    v142 = FuzzyMatchAssessment.debugDescription.getter();
    v144 = sub_2259BE198(v142, v143, v187);

    *(v140 + 4) = v144;
    _os_log_impl(&dword_2259A7000, v137, v138, "Fuzzy Match Assessment:\n%s", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v141);
    MEMORY[0x22AA6F950](v141, -1, -1);
    MEMORY[0x22AA6F950](v140, -1, -1);

    v145 = v175;
  }

  else
  {

    v145 = v167;
  }

  v170(v134, v135);
  return v139;
}

uint64_t sub_225B913C4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v40[4] = 0;
  v40[5] = 0xE000000000000000;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v40[0] = a1;
  v40[1] = a2;
  v40[2] = 0;
  v40[3] = v7;

  v8 = sub_225CCE644();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      v39[0] = v10;
      v39[1] = v11;
      MEMORY[0x28223BE20](v8);
      *(&v37 - 2) = v39;
      if (sub_225B53D04(sub_225AF3BE4, (&v37 - 4), 0x3736353433323130, 0xEA00000000003938))
      {
        MEMORY[0x22AA6CE60](v10, v11);
      }

      v8 = sub_225CCE644();
      v10 = v8;
      v11 = v12;
    }

    while (v12);
  }

  if (sub_225CCE5D4() >= 5)
  {
    sub_225CCE604();
    sub_225CCE5E4();
    v29 = sub_225CCE704();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v22 = MEMORY[0x22AA6CD90](v29, v31, v33, v35);
  }

  else
  {

    v41 = 0x8000000225D20DA0;
    v38 = 0x8000000225D20EE0;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v16 = v15;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v6, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v6, 1, v17);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v17)
    {
      v19 = 367;
    }

    else
    {
      v19 = 23;
    }

    v20 = sub_225B2C374(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v20;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v40);

    v22 = v40[0];
    v23 = sub_225B29AA0(0, 1, 1, v13);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD00000000000004BLL;
    *(v26 + 5) = 0x8000000225D20E90;
    v27 = v41;
    *(v26 + 6) = 0xD000000000000029;
    *(v26 + 7) = v27;
    v28 = v38;
    *(v26 + 8) = 0xD000000000000012;
    *(v26 + 9) = v28;
    *(v26 + 10) = 1531;
    *v16 = v19;
    *(v16 + 8) = v23;
    *(v16 + 16) = 0xD00000000000004BLL;
    *(v16 + 24) = 0x8000000225D20E90;
    *(v16 + 32) = v22;
    *(v16 + 40) = 0;
    swift_willThrow();
  }

  return v22;
}

char *sub_225B917E8(char *a1, uint64_t a2)
{
  sub_2259D8654();
  result = sub_225CCF034();
  v3 = *(result + 2);
  if (v3)
  {
    v4 = result;
    v5 = *(result + 4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > *(v4 + 3) >> 1)
    {
      sub_225B29BC8(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    }

    sub_225C00FBC(0, 1, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
    sub_225CCE384();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_225B9193C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_23;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x22AA6DA80](0, v1);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v3 = *(v1 + 32);
      }

      v4 = v3;
      if (v2 == 1)
      {
        return v4;
      }

      v6 = 1;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AA6DA80](v6, v1);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v7 = *(v1 + 8 * v6 + 32);
        }

        v5 = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v4 boundingBox];
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;
        v13 = CGRectGetWidth(v21);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v14 = v13 * CGRectGetHeight(v22);
        [v5 boundingBox];
        v15 = v23.origin.x;
        v16 = v23.origin.y;
        v17 = v23.size.width;
        v18 = v23.size.height;
        v19 = CGRectGetWidth(v23);
        v24.origin.x = v15;
        v24.origin.y = v16;
        v24.size.width = v17;
        v24.size.height = v18;
        v20 = v19 * CGRectGetHeight(v24);
        if (v14 < v20)
        {

          v4 = v5;
          ++v6;
          if (v8 == v2)
          {
            return v5;
          }
        }

        else
        {

          ++v6;
          if (v8 == v2)
          {
            return v4;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_225CCF144();
      v2 = result;
    }

    while (result);
  }

  return 0;
}

uint64_t sub_225B91B14(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  strcpy(v7, "Filtered from ");
  HIBYTE(v7[1]) = -18;
  if (a1 >> 62)
  {
    sub_225CCF144();
  }

  v4 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](544175136, 0xE400000000000000);
  if (a2 >> 62)
  {
    sub_225CCF144();
  }

  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](0x736563616620, 0xE600000000000000);
  return v7[0];
}

void sub_225B91C60(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v47 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48, &qword_225CF29B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_225CCCA04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 topCandidates_];
  sub_2259D8718(0, &qword_27D73E7C0, 0x277CE2DD0);
  v15 = sub_225CCE814();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  if (!sub_225CCF144())
  {
    goto LABEL_10;
  }

LABEL_3:
  v45 = v13;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x22AA6DA80](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v46 = v17;
  v18 = [v17 string];
  v19 = sub_225CCE474();
  v21 = v20;

  v50 = v19;
  v51 = v21;
  sub_225CCC9F4();
  sub_2259D8654();
  v22 = sub_225CCF054();
  v24 = v23;
  (*(v10 + 8))(v12, v9);

  v50 = v22;
  v51 = v24;
  v48 = v47;
  v49 = v52;
  v25 = sub_225CCD1C4();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_225CCF074();
  v27 = v26;
  sub_2259CB640(v8, &qword_27D73DB48, &qword_225CF29B0);
  if (v27)
  {

    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    v28 = v45;
    [v45 topLeft];
    v30 = v29;
    v32 = v31;
    [v28 topRight];
    v34 = v33;
    v36 = v35;
    [v28 bottomLeft];
    v38 = v37;
    v40 = v39;
    [v28 bottomRight];
    v42 = v41;
    v44 = v43;

    *a4 = v22;
    *(a4 + 8) = v24;
    *(a4 + 16) = v30;
    *(a4 + 24) = v32;
    *(a4 + 32) = v34;
    *(a4 + 40) = v36;
    *(a4 + 48) = v38;
    *(a4 + 56) = v40;
    *(a4 + 64) = v42;
    *(a4 + 72) = v44;
  }
}

uint64_t sub_225B9204C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v23 = 32;
  v24 = 0xE100000000000000;
  sub_2259D8654();
  result = sub_225CCF034();
  v3 = result;
  v4 = MEMORY[0x277D84FA0];
  v22 = MEMORY[0x277D84FA0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v20 = result;
    v21 = result + 32;
    v7 = (result + 56);
    v8 = -1;
    v19 = *(result + 16);
    while (v6 < *(v3 + 16))
    {
      v9 = (v21 + 16 * v6);
      v10 = v9[1];
      v25 = *v9;
      v11 = v25;
      v26 = v10;
      swift_bridgeObjectRetain_n();
      sub_225B1C618(&v23, v11, v10);

      v12 = *(v3 + 16);
      if (v12 <= v6)
      {
        goto LABEL_14;
      }

      if (++v6 != v12)
      {
        if (v6 >= v12)
        {
          goto LABEL_15;
        }

        v13 = v12 + v8;
        v14 = v7;
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v23 = 32;
          v24 = 0xE100000000000000;

          MEMORY[0x22AA6CE70](v15, v16);

          MEMORY[0x22AA6CE70](v23, v24);

          v18 = v25;
          v17 = v26;

          sub_225B1C618(&v23, v18, v17);

          v14 += 2;
          --v13;
        }

        while (v13);
        v5 = v19;
        v3 = v20;
      }

      --v8;
      v7 += 2;
      if (v6 == v5)
      {
        v4 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:

    return v4;
  }

  return result;
}

uint64_t sub_225B92214(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_225B1C618(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_225B92318(void *a1)
{
  v21 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2838FF708 count:9];
  v2 = sub_225CCE444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = sub_225CCE474();
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  sub_225B2C92C(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &unk_27D73B090, &unk_225CD7610);
  v5 = sub_225CCE2B4();

  v6 = [a1 imageByApplyingFilter:v2 withInputParameters:v5];

  v7 = sub_225CCE444();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_225CD30F0;
  *(v8 + 32) = sub_225CCE474();
  *(v8 + 40) = v9;
  type metadata accessor for CGAffineTransform(0);
  *(v8 + 72) = v10;
  v11 = swift_allocObject();
  *(v8 + 48) = v11;
  v11[2] = 0x3FF0000000000000;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = 0x3FF0000000000000;
  v11[6] = 0;
  v11[7] = 0;
  sub_225B2C92C(v8);
  swift_setDeallocating();
  sub_2259CB640(v8 + 32, &unk_27D73B090, &unk_225CD7610);
  v12 = sub_225CCE2B4();

  v13 = [v6 imageByApplyingFilter:v7 withInputParameters:v12];

  v14 = sub_225CCE444();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_225CD30F0;
  strcpy((v15 + 32), "inputWeights");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  *(v15 + 72) = sub_2259D8718(0, &qword_27D73E790, 0x277CBF788);
  *(v15 + 48) = v21;
  v16 = v21;
  sub_225B2C92C(v15);
  swift_setDeallocating();
  sub_2259CB640(v15 + 32, &unk_27D73B090, &unk_225CD7610);
  v17 = sub_225CCE2B4();

  v18 = [v13 imageByApplyingFilter:v14 withInputParameters:v17];

  [a1 extent];
  v19 = [v18 imageByCroppingToRect_];

  return v19;
}

unint64_t sub_225B926EC(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = sub_225CCF8F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v25 = v1[6];
  v26 = v7;
  v27 = v1[8];
  v28 = *(v1 + 18);
  v8 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v9 = v1[5];
  v23 = v1[4];
  v24 = v9;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  v11 = *(a1 + 16);
  __C = NAN;
  vDSP_meanv((a1 + 32), 1, &__C, v11);
  v12 = __C;
  __C = NAN;
  vDSP_measqv((a1 + 32), 1, &__C, v11);
  v13 = 1.0 - ((logf(__C - (v12 * v12)) + 10.0) / 10.0);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v14 = fminf(v13, 1.0);
  (*(v4 + 104))(v6, *MEMORY[0x277D84688], v3);
  v15 = sub_225B804A4(1, v6, v14);
  (*(v4 + 8))(v6, v3);
  return v15 | ((HIDWORD(v15) & 1) << 32);
}

uint64_t sub_225B928DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a1, a2);
  result = MEMORY[0x22AA6CE70](2108704, 0xE300000000000000);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a4)
  {
    v9 = a3 + 16 * a4;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    MEMORY[0x22AA6CE70](v10, v11);

    return 0xD000000000000012;
  }

  __break(1u);
  return result;
}

void *sub_225B929C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL _s13CoreIDVShared17IQTextObservationV6BoundsV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

uint64_t sub_225B92B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
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

void *sub_225B92BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return a1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v9 = *(i - 1);
    v8 = *i;

    v10 = sub_225B8F024(v9, v8, a4);
    v12 = (v11 & 1) != 0 ? -1 : v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_2259F18D4(v9, v8);
    v16 = a1[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (a1[3] < v19)
    {
      sub_225A435F8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2259F18D4(v9, v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v25 = v14;
    sub_225A45BDC();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      *(a1[7] + 8 * v14) = v12;

      goto LABEL_4;
    }

LABEL_14:
    a1[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (a1[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v8;
    *(a1[7] + 8 * v14) = v12;
    v23 = a1[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    a1[2] = v24;
LABEL_4:
    if (!--v5)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

unint64_t sub_225B92DB4()
{
  result = qword_27D73E708;
  if (!qword_27D73E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E708);
  }

  return result;
}

unint64_t sub_225B92E0C()
{
  result = qword_27D73E710;
  if (!qword_27D73E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E710);
  }

  return result;
}

unint64_t sub_225B92E64()
{
  result = qword_27D73E718;
  if (!qword_27D73E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E718);
  }

  return result;
}

unint64_t sub_225B92EBC()
{
  result = qword_27D73E720;
  if (!qword_27D73E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E720);
  }

  return result;
}

unint64_t sub_225B92F14()
{
  result = qword_27D73E728;
  if (!qword_27D73E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E728);
  }

  return result;
}

unint64_t sub_225B92F6C()
{
  result = qword_27D73E730;
  if (!qword_27D73E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared16PDF417ParsedDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225B92FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 880))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 872);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225B93038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 872) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 880) = 1;
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
      *(result + 872) = (a2 - 1);
      return result;
    }

    *(result + 880) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_225B9318C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_225B931E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_225B93280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_225B932DC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_225B9338C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_225B933E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_225B93474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_225B934BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225B93520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B93540(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared10PDF417DataVSg(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225B935AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 896))
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

uint64_t sub_225B935F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 888) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 896) = 1;
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

    *(result + 896) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetricsFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_225B937BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225B93804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageQualityCollector.BucketKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageQualityCollector.BucketKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225B939EC()
{
  result = qword_27D73E738;
  if (!qword_27D73E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E738);
  }

  return result;
}

unint64_t sub_225B93A44()
{
  result = qword_27D73E740;
  if (!qword_27D73E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E740);
  }

  return result;
}

unint64_t sub_225B93A9C()
{
  result = qword_27D73E748;
  if (!qword_27D73E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E748);
  }

  return result;
}

unint64_t sub_225B93AF4()
{
  result = qword_27D73E750;
  if (!qword_27D73E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E750);
  }

  return result;
}

unint64_t sub_225B93B48(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCFA64();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_225B93B9C()
{
  result = qword_27D73E760;
  if (!qword_27D73E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E760);
  }

  return result;
}

unint64_t sub_225B93BF0()
{
  result = qword_27D73E768;
  if (!qword_27D73E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73E768);
  }

  return result;
}

uint64_t sub_225B93C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Bool __swiftcall IQACode.isPassing()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v6 = 0uLL;
  v7 = 2;
  if (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6))
  {
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v6 = xmmword_225CF29F0;
    v7 = 2;
    v4 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6);
  }

  return v4 & 1;
}

Swift::Bool __swiftcall IQACode.failsPDF417()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v6 = xmmword_225CF2A00;
  v7 = 2;
  if (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1) != 0 || (v8 = v1, v9 = v2, v10 = v3, v6 = xmmword_225CF2A10, v7 = 2, (_s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6)))
  {
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v6 = xmmword_225CF2A20;
    v7 = 2;
    v4 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v8, &v6);
  }

  return v4 & 1;
}

unint64_t sub_225B93EE4(char a1)
{
  result = 1936941424;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656E697272756C62;
      break;
    case 3:
    case 4:
      result = 0x426563616C70616CLL;
      break;
    case 5:
      result = 0x657275736F707865;
      break;
    case 6:
      result = 0x657275736F707865;
      break;
    case 7:
    case 39:
    case 48:
    case 53:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 35:
    case 57:
      result = 0xD000000000000013;
      break;
    case 10:
    case 11:
    case 21:
    case 36:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
    case 14:
      result = 0x6374695064616568;
      break;
    case 15:
      result = 0x6C6C6F5264616568;
      break;
    case 16:
      result = 0x6C6C6F5264616568;
      break;
    case 17:
      result = 0x4C77615964616568;
      break;
    case 18:
      result = 0x4877615964616568;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
    case 26:
    case 28:
    case 32:
      result = 0xD000000000000016;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
    case 29:
      result = 0xD000000000000017;
      break;
    case 24:
    case 30:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 33:
    case 37:
      result = 0x746E656D75636F64;
      break;
    case 34:
    case 38:
    case 41:
    case 49:
    case 55:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6F54746567726174;
      break;
    case 42:
      result = 0x73656361466D756ELL;
      break;
    case 43:
      result = 0x73656361466D756ELL;
      break;
    case 44:
      result = 0x6C6576654C78756CLL;
      break;
    case 45:
      result = 0x6C6576654C78756CLL;
      break;
    case 46:
      result = 0x6F4E373134666470;
      break;
    case 47:
      result = 0x6F46373134666470;
      break;
    case 50:
      result = 0x73694D6574617473;
      break;
    case 51:
      result = 0x7465446572616C67;
      break;
    case 52:
      result = 0x756C636E6F636E69;
      break;
    case 54:
      result = 0x4464657269707865;
      break;
    case 56:
      result = 0x4D7972746E756F63;
      break;
    case 58:
      result = 0x4B676E697373696DLL;
      break;
    case 59:
      result = 0x78656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225B94488(uint64_t a1)
{
  v2 = sub_225BB28D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B944C4(uint64_t a1)
{
  v2 = sub_225BB28D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94500(uint64_t a1)
{
  v2 = sub_225BB2924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9453C(uint64_t a1)
{
  v2 = sub_225BB2924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94578(uint64_t a1)
{
  v2 = sub_225BB2EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B945B4(uint64_t a1)
{
  v2 = sub_225BB2EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B945F0(uint64_t a1)
{
  v2 = sub_225BB2F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9462C(uint64_t a1)
{
  v2 = sub_225BB2F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94668(uint64_t a1)
{
  v2 = sub_225BB2CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B946A4(uint64_t a1)
{
  v2 = sub_225BB2CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B946E0(uint64_t a1)
{
  v2 = sub_225BB2D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9471C(uint64_t a1)
{
  v2 = sub_225BB2D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225BBA360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225B94794(uint64_t a1)
{
  v2 = sub_225BB1BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B947D0(uint64_t a1)
{
  v2 = sub_225BB1BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94818(uint64_t a1)
{
  v2 = sub_225BB1C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94854(uint64_t a1)
{
  v2 = sub_225BB1C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94890(uint64_t a1)
{
  v2 = sub_225BB1D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B948CC(uint64_t a1)
{
  v2 = sub_225BB1D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94908(uint64_t a1)
{
  v2 = sub_225BB23E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94944(uint64_t a1)
{
  v2 = sub_225BB23E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94980(uint64_t a1)
{
  v2 = sub_225BB2390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B949BC(uint64_t a1)
{
  v2 = sub_225BB2390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B949F8(uint64_t a1)
{
  v2 = sub_225BB2438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94A34(uint64_t a1)
{
  v2 = sub_225BB2438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94A70(uint64_t a1)
{
  v2 = sub_225BB248C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94AAC(uint64_t a1)
{
  v2 = sub_225BB248C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94AE8(uint64_t a1)
{
  v2 = sub_225BB233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94B24(uint64_t a1)
{
  v2 = sub_225BB233C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94B60(uint64_t a1)
{
  v2 = sub_225BB1DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94B9C(uint64_t a1)
{
  v2 = sub_225BB1DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94BD8(uint64_t a1)
{
  v2 = sub_225BB2D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94C14(uint64_t a1)
{
  v2 = sub_225BB2D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94C50(uint64_t a1)
{
  v2 = sub_225BB2DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94C8C(uint64_t a1)
{
  v2 = sub_225BB2DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94CC8(uint64_t a1)
{
  v2 = sub_225BB24E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94D04(uint64_t a1)
{
  v2 = sub_225BB24E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94D40(uint64_t a1)
{
  v2 = sub_225BB2534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94D7C(uint64_t a1)
{
  v2 = sub_225BB2534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94DB8(uint64_t a1)
{
  v2 = sub_225BB2B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94DF4(uint64_t a1)
{
  v2 = sub_225BB2B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94E30(uint64_t a1)
{
  v2 = sub_225BB2BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94E6C(uint64_t a1)
{
  v2 = sub_225BB2BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94EA8(uint64_t a1)
{
  v2 = sub_225BB2C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94EE4(uint64_t a1)
{
  v2 = sub_225BB2C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94F20(uint64_t a1)
{
  v2 = sub_225BB2C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94F5C(uint64_t a1)
{
  v2 = sub_225BB2C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B94F98(uint64_t a1)
{
  v2 = sub_225BB26D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B94FD4(uint64_t a1)
{
  v2 = sub_225BB26D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95010(uint64_t a1)
{
  v2 = sub_225BB272C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9504C(uint64_t a1)
{
  v2 = sub_225BB272C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95088(uint64_t a1)
{
  v2 = sub_225BB1EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B950C4(uint64_t a1)
{
  v2 = sub_225BB1EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95100(uint64_t a1)
{
  v2 = sub_225BB2828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9513C(uint64_t a1)
{
  v2 = sub_225BB2828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95178(uint64_t a1)
{
  v2 = sub_225BB287C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B951B4(uint64_t a1)
{
  v2 = sub_225BB287C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B951F0(uint64_t a1)
{
  v2 = sub_225BB2AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9522C(uint64_t a1)
{
  v2 = sub_225BB2AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95268(uint64_t a1)
{
  v2 = sub_225BB2B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B952A4(uint64_t a1)
{
  v2 = sub_225BB2B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B952E0(uint64_t a1)
{
  v2 = sub_225BB2A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9531C(uint64_t a1)
{
  v2 = sub_225BB2A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95358(uint64_t a1)
{
  v2 = sub_225BB2A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95394(uint64_t a1)
{
  v2 = sub_225BB2A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B953D0(uint64_t a1)
{
  v2 = sub_225BB2978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9540C(uint64_t a1)
{
  v2 = sub_225BB2978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95448(uint64_t a1)
{
  v2 = sub_225BB29CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95484(uint64_t a1)
{
  v2 = sub_225BB29CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B954C0(uint64_t a1)
{
  v2 = sub_225BB2630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B954FC(uint64_t a1)
{
  v2 = sub_225BB2630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95538(uint64_t a1)
{
  v2 = sub_225BB2684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95574(uint64_t a1)
{
  v2 = sub_225BB2684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B955B0(uint64_t a1)
{
  v2 = sub_225BB1E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B955EC(uint64_t a1)
{
  v2 = sub_225BB1E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95628(uint64_t a1)
{
  v2 = sub_225BB1F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95664(uint64_t a1)
{
  v2 = sub_225BB1F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B956A0(uint64_t a1)
{
  v2 = sub_225BB2E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B956DC(uint64_t a1)
{
  v2 = sub_225BB2E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95718(uint64_t a1)
{
  v2 = sub_225BB2E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95754(uint64_t a1)
{
  v2 = sub_225BB2E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95790(uint64_t a1)
{
  v2 = sub_225BB2588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B957CC(uint64_t a1)
{
  v2 = sub_225BB2588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95808(uint64_t a1)
{
  v2 = sub_225BB25DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95844(uint64_t a1)
{
  v2 = sub_225BB25DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95880(uint64_t a1)
{
  v2 = sub_225BB209C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B958BC(uint64_t a1)
{
  v2 = sub_225BB209C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B958F8(uint64_t a1)
{
  v2 = sub_225BB20F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95934(uint64_t a1)
{
  v2 = sub_225BB20F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95970(uint64_t a1)
{
  v2 = sub_225BB1C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B959AC(uint64_t a1)
{
  v2 = sub_225BB1C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B959E8(uint64_t a1)
{
  v2 = sub_225BB1FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95A24(uint64_t a1)
{
  v2 = sub_225BB1FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95A60(uint64_t a1)
{
  v2 = sub_225BB2144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95A9C(uint64_t a1)
{
  v2 = sub_225BB2144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95AD8(uint64_t a1)
{
  v2 = sub_225BB2198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95B14(uint64_t a1)
{
  v2 = sub_225BB2198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95B50(uint64_t a1)
{
  v2 = sub_225BB2F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95B8C(uint64_t a1)
{
  v2 = sub_225BB2F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95BC8(uint64_t a1)
{
  v2 = sub_225BB1CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95C04(uint64_t a1)
{
  v2 = sub_225BB1CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95C40(uint64_t a1)
{
  v2 = sub_225BB1FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95C7C(uint64_t a1)
{
  v2 = sub_225BB1FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95CB8(uint64_t a1)
{
  v2 = sub_225BB2048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95CF4(uint64_t a1)
{
  v2 = sub_225BB2048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95D30(uint64_t a1)
{
  v2 = sub_225BB1EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95D6C(uint64_t a1)
{
  v2 = sub_225BB1EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95DA8(uint64_t a1)
{
  v2 = sub_225BB2780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95DE4(uint64_t a1)
{
  v2 = sub_225BB2780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95E20(uint64_t a1)
{
  v2 = sub_225BB27D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95E5C(uint64_t a1)
{
  v2 = sub_225BB27D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95E98(uint64_t a1)
{
  v2 = sub_225BB21EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95ED4(uint64_t a1)
{
  v2 = sub_225BB21EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95F10(uint64_t a1)
{
  v2 = sub_225BB22E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95F4C(uint64_t a1)
{
  v2 = sub_225BB22E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B95F88(uint64_t a1)
{
  v2 = sub_225BB2294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B95FC4(uint64_t a1)
{
  v2 = sub_225BB2294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B96000(uint64_t a1)
{
  v2 = sub_225BB2240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9603C(uint64_t a1)
{
  v2 = sub_225BB2240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B96078(uint64_t a1)
{
  v2 = sub_225BB1D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B960B4(uint64_t a1)
{
  v2 = sub_225BB1D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225B960F0(uint64_t a1)
{
  v2 = sub_225BB1DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225B9612C(uint64_t a1)
{
  v2 = sub_225BB1DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQACode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7D8, &qword_225CF2D10);
  v323 = *(v3 - 8);
  v324 = v3;
  MEMORY[0x28223BE20](v3);
  v322 = &v146 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7E0, &qword_225CF2D18);
  v320 = *(v5 - 8);
  v321 = v5;
  MEMORY[0x28223BE20](v5);
  v319 = &v146 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7E8, &qword_225CF2D20);
  v317 = *(v7 - 8);
  v318 = v7;
  MEMORY[0x28223BE20](v7);
  v316 = &v146 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7F0, &qword_225CF2D28);
  v314 = *(v9 - 8);
  v315 = v9;
  MEMORY[0x28223BE20](v9);
  v313 = &v146 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E7F8, &qword_225CF2D30);
  v311 = *(v11 - 8);
  v312 = v11;
  MEMORY[0x28223BE20](v11);
  v310 = &v146 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E800, &qword_225CF2D38);
  v308 = *(v13 - 8);
  v309 = v13;
  MEMORY[0x28223BE20](v13);
  v307 = &v146 - v14;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E808, &qword_225CF2D40);
  v305 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v304 = &v146 - v15;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E810, &qword_225CF2D48);
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v301 = &v146 - v16;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E818, &qword_225CF2D50);
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v298 = &v146 - v17;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E820, &qword_225CF2D58);
  v296 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v295 = &v146 - v18;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E828, &qword_225CF2D60);
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v292 = &v146 - v19;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E830, &qword_225CF2D68);
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v289 = &v146 - v20;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E838, &qword_225CF2D70);
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v286 = &v146 - v21;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E840, &qword_225CF2D78);
  v284 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v283 = &v146 - v22;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E848, &qword_225CF2D80);
  v281 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v280 = &v146 - v23;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E850, &qword_225CF2D88);
  v278 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v277 = &v146 - v24;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E858, &qword_225CF2D90);
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v274 = &v146 - v25;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E860, &qword_225CF2D98);
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v271 = &v146 - v26;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E868, &qword_225CF2DA0);
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v268 = &v146 - v27;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E870, &qword_225CF2DA8);
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v265 = &v146 - v28;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E878, &qword_225CF2DB0);
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v262 = &v146 - v29;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E880, &qword_225CF2DB8);
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v259 = &v146 - v30;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E888, &qword_225CF2DC0);
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v256 = &v146 - v31;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E890, &qword_225CF2DC8);
  v254 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v253 = &v146 - v32;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E898, &qword_225CF2DD0);
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = &v146 - v33;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8A0, &qword_225CF2DD8);
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v247 = &v146 - v34;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8A8, &qword_225CF2DE0);
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = &v146 - v35;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8B0, &qword_225CF2DE8);
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v241 = &v146 - v36;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8B8, &qword_225CF2DF0);
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v238 = &v146 - v37;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8C0, &qword_225CF2DF8);
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v235 = &v146 - v38;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8C8, &qword_225CF2E00);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v146 - v39;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8D0, &qword_225CF2E08);
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v229 = &v146 - v40;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8D8, &qword_225CF2E10);
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v226 = &v146 - v41;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8E0, &qword_225CF2E18);
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v223 = &v146 - v42;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8E8, &qword_225CF2E20);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v220 = &v146 - v43;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8F0, &qword_225CF2E28);
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v217 = &v146 - v44;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E8F8, &qword_225CF2E30);
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v214 = &v146 - v45;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E900, &qword_225CF2E38);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v146 - v46;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E908, &qword_225CF2E40);
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v208 = &v146 - v47;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E910, &qword_225CF2E48);
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v205 = &v146 - v48;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E918, &qword_225CF2E50);
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = &v146 - v49;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E920, &qword_225CF2E58);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v146 - v50;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E928, &qword_225CF2E60);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v146 - v51;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E930, &qword_225CF2E68);
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v146 - v52;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E938, &qword_225CF2E70);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v190 = &v146 - v53;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E940, &qword_225CF2E78);
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v146 - v54;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E948, &qword_225CF2E80);
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v146 - v55;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E950, &qword_225CF2E88);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v146 - v56;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E958, &qword_225CF2E90);
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v146 - v57;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E960, &qword_225CF2E98);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v146 - v58;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E968, &qword_225CF2EA0);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v146 - v59;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E970, &qword_225CF2EA8);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v146 - v60;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E978, &qword_225CF2EB0);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v146 - v61;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E980, &qword_225CF2EB8);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v146 - v62;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E988, &qword_225CF2EC0);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v146 - v63;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E990, &qword_225CF2EC8);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v146 - v64;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E998, &qword_225CF2ED0);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v146 - v65;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9A0, &qword_225CF2ED8);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v146 - v66;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9A8, &qword_225CF2EE0);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v146 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9B0, &qword_225CF2EE8);
  v147 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v70 = &v146 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E9B8, &qword_225CF2EF0);
  v72 = *(v71 - 8);
  v326 = v71;
  v327 = v72;
  MEMORY[0x28223BE20](v71);
  v74 = &v146 - v73;
  v75 = *v1;
  v76 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BB1BB0();
  v325 = v74;
  sub_225CCFCE4();
  if (!v76)
  {
    v329 = 58;
    sub_225BB1C58();
    v77 = v319;
    v79 = v325;
    v78 = v326;
    sub_225CCF724();
    v80 = v321;
    sub_225CCF784();
    v81 = v320;
    goto LABEL_5;
  }

  if (v76 == 1)
  {
    v329 = 59;
    sub_225BB1C04();
    v77 = v322;
    v79 = v325;
    v78 = v326;
    sub_225CCF724();
    v80 = v324;
    sub_225CCF784();
    v81 = v323;
LABEL_5:
    (*(v81 + 8))(v77, v80);
    return (*(v327 + 8))(v79, v78);
  }

  switch(v75)
  {
    case 1:
      v329 = 1;
      sub_225BB2F0C();
      v119 = v148;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v149 + 8);
      v89 = v119;
      v90 = &v182;
      goto LABEL_66;
    case 2:
      v329 = 2;
      sub_225BB2EB8();
      v115 = v151;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v152 + 8);
      v89 = v115;
      v90 = &v185;
      goto LABEL_66;
    case 3:
      v329 = 3;
      sub_225BB2E64();
      v117 = v154;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v155 + 8);
      v89 = v117;
      v90 = &v188;
      goto LABEL_66;
    case 4:
      v329 = 4;
      sub_225BB2E10();
      v109 = v157;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v158 + 8);
      v89 = v109;
      v90 = &v191;
      goto LABEL_66;
    case 5:
      v329 = 5;
      sub_225BB2DBC();
      v124 = v160;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v161 + 8);
      v89 = v124;
      v90 = &v194;
      goto LABEL_66;
    case 6:
      v329 = 6;
      sub_225BB2D68();
      v127 = v163;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v164 + 8);
      v89 = v127;
      v90 = &v197;
      goto LABEL_66;
    case 7:
      v329 = 7;
      sub_225BB2D14();
      v118 = v166;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v167 + 8);
      v89 = v118;
      v90 = &v200;
      goto LABEL_66;
    case 8:
      v329 = 8;
      sub_225BB2CC0();
      v130 = v169;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v170 + 8);
      v89 = v130;
      v90 = &v203;
      goto LABEL_66;
    case 9:
      v329 = 9;
      sub_225BB2C6C();
      v112 = v172;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v173 + 8);
      v89 = v112;
      v90 = &v206;
      goto LABEL_66;
    case 10:
      v329 = 10;
      sub_225BB2C18();
      v129 = v175;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v176 + 8);
      v89 = v129;
      v90 = &v209;
      goto LABEL_66;
    case 11:
      v329 = 11;
      sub_225BB2BC4();
      v107 = v178;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v179 + 8);
      v89 = v107;
      v90 = &v212;
      goto LABEL_66;
    case 12:
      v329 = 12;
      sub_225BB2B70();
      v111 = v181;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v182 + 8);
      v89 = v111;
      v90 = &v215;
      goto LABEL_66;
    case 13:
      v329 = 13;
      sub_225BB2B1C();
      v126 = v184;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v185 + 8);
      v89 = v126;
      v90 = &v218;
      goto LABEL_66;
    case 14:
      v329 = 14;
      sub_225BB2AC8();
      v104 = v187;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v188 + 8);
      v89 = v104;
      v90 = &v221;
      goto LABEL_66;
    case 15:
      v329 = 15;
      sub_225BB2A74();
      v116 = v190;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v191 + 8);
      v89 = v116;
      v90 = &v224;
      goto LABEL_66;
    case 16:
      v329 = 16;
      sub_225BB2A20();
      v102 = v193;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v194 + 8);
      v89 = v102;
      v90 = &v227;
      goto LABEL_66;
    case 17:
      v329 = 17;
      sub_225BB29CC();
      v121 = v196;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v197 + 8);
      v89 = v121;
      v90 = &v230;
      goto LABEL_66;
    case 18:
      v329 = 18;
      sub_225BB2978();
      v128 = v199;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v200 + 8);
      v89 = v128;
      v90 = &v233;
      goto LABEL_66;
    case 19:
      v329 = 19;
      sub_225BB2924();
      v136 = v202;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v203 + 8);
      v89 = v136;
      v90 = &v236;
      goto LABEL_66;
    case 20:
      v329 = 20;
      sub_225BB28D0();
      v123 = v205;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v206 + 8);
      v89 = v123;
      v90 = &v239;
      goto LABEL_66;
    case 21:
      v329 = 21;
      sub_225BB287C();
      v125 = v208;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v209 + 8);
      v89 = v125;
      v90 = &v242;
      goto LABEL_66;
    case 22:
      v329 = 22;
      sub_225BB2828();
      v134 = v211;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v212 + 8);
      v89 = v134;
      v90 = &v245;
      goto LABEL_66;
    case 23:
      v329 = 23;
      sub_225BB27D4();
      v138 = v214;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v215 + 8);
      v89 = v138;
      v90 = &v248;
      goto LABEL_66;
    case 24:
      v329 = 24;
      sub_225BB2780();
      v114 = v217;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v218 + 8);
      v89 = v114;
      v90 = &v251;
      goto LABEL_66;
    case 25:
      v329 = 25;
      sub_225BB272C();
      v113 = v220;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v221 + 8);
      v89 = v113;
      v90 = &v254;
      goto LABEL_66;
    case 26:
      v329 = 26;
      sub_225BB26D8();
      v142 = v223;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v224 + 8);
      v89 = v142;
      v90 = &v257;
      goto LABEL_66;
    case 27:
      v329 = 27;
      sub_225BB2684();
      v100 = v226;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v227 + 8);
      v89 = v100;
      v90 = &v260;
      goto LABEL_66;
    case 28:
      v329 = 28;
      sub_225BB2630();
      v139 = v229;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v230 + 8);
      v89 = v139;
      v90 = &v263;
      goto LABEL_66;
    case 29:
      v329 = 29;
      sub_225BB25DC();
      v140 = v232;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v233 + 8);
      v89 = v140;
      v90 = &v266;
      goto LABEL_66;
    case 30:
      v329 = 30;
      sub_225BB2588();
      v131 = v235;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v236 + 8);
      v89 = v131;
      v90 = &v269;
      goto LABEL_66;
    case 31:
      v329 = 31;
      sub_225BB2534();
      v120 = v238;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v239 + 8);
      v89 = v120;
      v90 = &v272;
      goto LABEL_66;
    case 32:
      v329 = 32;
      sub_225BB24E0();
      v132 = v241;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v242 + 8);
      v89 = v132;
      v90 = &v275;
      goto LABEL_66;
    case 33:
      v329 = 33;
      sub_225BB248C();
      v105 = v244;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v245 + 8);
      v89 = v105;
      v90 = &v278;
      goto LABEL_66;
    case 34:
      v329 = 34;
      sub_225BB2438();
      v101 = v247;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v248 + 8);
      v89 = v101;
      v90 = &v281;
      goto LABEL_66;
    case 35:
      v329 = 35;
      sub_225BB23E4();
      v98 = v250;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v251 + 8);
      v89 = v98;
      v90 = &v284;
      goto LABEL_66;
    case 36:
      v329 = 36;
      sub_225BB2390();
      v99 = v253;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v254 + 8);
      v89 = v99;
      v90 = &v287;
      goto LABEL_66;
    case 37:
      v329 = 37;
      sub_225BB233C();
      v92 = v256;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v257 + 8);
      v89 = v92;
      v90 = &v290;
      goto LABEL_66;
    case 38:
      v329 = 38;
      sub_225BB22E8();
      v141 = v259;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v260 + 8);
      v89 = v141;
      v90 = &v293;
      goto LABEL_66;
    case 39:
      v329 = 39;
      sub_225BB2294();
      v135 = v262;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v263 + 8);
      v89 = v135;
      v90 = &v296;
      goto LABEL_66;
    case 40:
      v329 = 40;
      sub_225BB2240();
      v110 = v265;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v266 + 8);
      v89 = v110;
      v90 = &v299;
      goto LABEL_66;
    case 41:
      v329 = 41;
      sub_225BB21EC();
      v122 = v268;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v269 + 8);
      v89 = v122;
      v90 = &v302;
      goto LABEL_66;
    case 42:
      v329 = 42;
      sub_225BB2198();
      v137 = v271;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v272 + 8);
      v89 = v137;
      v90 = &v305;
      goto LABEL_66;
    case 43:
      v329 = 43;
      sub_225BB2144();
      v91 = v274;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v275 + 8);
      v89 = v91;
      v90 = &v308;
      goto LABEL_66;
    case 44:
      v329 = 44;
      sub_225BB20F0();
      v103 = v277;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v278 + 8);
      v89 = v103;
      v90 = &v311;
      goto LABEL_66;
    case 45:
      v329 = 45;
      sub_225BB209C();
      v133 = v280;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v281 + 8);
      v89 = v133;
      v90 = &v314;
      goto LABEL_66;
    case 46:
      v329 = 46;
      sub_225BB2048();
      v144 = v283;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v284 + 8);
      v89 = v144;
      v90 = &v317;
      goto LABEL_66;
    case 47:
      v329 = 47;
      sub_225BB1FF4();
      v94 = v286;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v287 + 8);
      v89 = v94;
      v90 = &v320;
      goto LABEL_66;
    case 48:
      v329 = 48;
      sub_225BB1FA0();
      v106 = v289;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v290 + 8);
      v89 = v106;
      v90 = &v323;
      goto LABEL_66;
    case 49:
      v329 = 49;
      sub_225BB1F4C();
      v108 = v292;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v293 + 8);
      v89 = v108;
      v90 = &v326;
      goto LABEL_66;
    case 50:
      v329 = 50;
      sub_225BB1EF8();
      v85 = v295;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v296 + 8);
      v89 = v85;
      v90 = &v328;
      goto LABEL_66;
    case 51:
      v329 = 51;
      sub_225BB1EA4();
      v145 = v298;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v299 + 8);
      v89 = v145;
      v90 = &v330;
      goto LABEL_66;
    case 52:
      v329 = 52;
      sub_225BB1E50();
      v143 = v301;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v302 + 8);
      v89 = v143;
      v90 = &v331;
      goto LABEL_66;
    case 53:
      v329 = 53;
      sub_225BB1DFC();
      v93 = v304;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v88 = *(v305 + 8);
      v89 = v93;
      v90 = &v332;
LABEL_66:
      v88(v89, *(v90 - 32));
      goto LABEL_67;
    case 54:
      v329 = 54;
      sub_225BB1DA8();
      v95 = v307;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v97 = v308;
      v96 = v309;
      goto LABEL_62;
    case 55:
      v329 = 55;
      sub_225BB1D54();
      v95 = v310;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v97 = v311;
      v96 = v312;
      goto LABEL_62;
    case 56:
      v329 = 56;
      sub_225BB1D00();
      v95 = v313;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v97 = v314;
      v96 = v315;
      goto LABEL_62;
    case 57:
      v329 = 57;
      sub_225BB1CAC();
      v95 = v316;
      v87 = v325;
      v86 = v326;
      sub_225CCF724();
      v97 = v317;
      v96 = v318;
LABEL_62:
      (*(v97 + 8))(v95, v96);
LABEL_67:
      result = (*(v327 + 8))(v87, v86);
      break;
    default:
      v329 = 0;
      sub_225BB2F60();
      v83 = v325;
      v84 = v326;
      sub_225CCF724();
      (*(v147 + 8))(v70, v68);
      result = (*(v327 + 8))(v83, v84);
      break;
  }

  return result;
}

uint64_t IQACode.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v2 = 58;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v2 = 59;
LABEL_5:
    MEMORY[0x22AA6E420](v2);

    return sub_225CCE5B4();
  }

  switch(*v1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 0xALL:
      v4 = 10;
      break;
    case 0xBLL:
      v4 = 11;
      break;
    case 0xCLL:
      v4 = 12;
      break;
    case 0xDLL:
      v4 = 13;
      break;
    case 0xELL:
      v4 = 14;
      break;
    case 0xFLL:
      v4 = 15;
      break;
    case 0x10:
      v4 = 16;
      break;
    case 0x11:
      v4 = 17;
      break;
    case 0x12:
      v4 = 18;
      break;
    case 0x13:
      v4 = 19;
      break;
    case 0x14:
      v4 = 20;
      break;
    case 0x15:
      v4 = 21;
      break;
    case 0x16:
      v4 = 22;
      break;
    case 0x17:
      v4 = 23;
      break;
    case 0x18:
      v4 = 24;
      break;
    case 0x19:
      v4 = 25;
      break;
    case 0x1ALL:
      v4 = 26;
      break;
    case 0x1BLL:
      v4 = 27;
      break;
    case 0x1CLL:
      v4 = 28;
      break;
    case 0x1DLL:
      v4 = 29;
      break;
    case 0x1ELL:
      v4 = 30;
      break;
    case 0x1FLL:
      v4 = 31;
      break;
    case 0x20:
      v4 = 32;
      break;
    case 0x21:
      v4 = 33;
      break;
    case 0x22:
      v4 = 34;
      break;
    case 0x23:
      v4 = 35;
      break;
    case 0x24:
      v4 = 36;
      break;
    case 0x25:
      v4 = 37;
      break;
    case 0x26:
      v4 = 38;
      break;
    case 0x27:
      v4 = 39;
      break;
    case 0x28:
      v4 = 40;
      break;
    case 0x29:
      v4 = 41;
      break;
    case 0x2ALL:
      v4 = 42;
      break;
    case 0x2BLL:
      v4 = 43;
      break;
    case 0x2CLL:
      v4 = 44;
      break;
    case 0x2DLL:
      v4 = 45;
      break;
    case 0x2ELL:
      v4 = 46;
      break;
    case 0x2FLL:
      v4 = 47;
      break;
    case 0x30:
      v4 = 48;
      break;
    case 0x31:
      v4 = 49;
      break;
    case 0x32:
      v4 = 50;
      break;
    case 0x33:
      v4 = 51;
      break;
    case 0x34:
      v4 = 52;
      break;
    case 0x35:
      v4 = 53;
      break;
    case 0x36:
      v4 = 54;
      break;
    case 0x37:
      v4 = 55;
      break;
    case 0x38:
      v4 = 56;
      break;
    case 0x39:
      v4 = 57;
      break;
    default:
      v4 = 0;
      break;
  }

  return MEMORY[0x22AA6E420](v4);
}

uint64_t IQACode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v395 = a2;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBA8, &qword_225CF2EF8);
  v335 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v390 = &v213 - v3;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBB0, &qword_225CF2F00);
  v333 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v389 = &v213 - v4;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBB8, &qword_225CF2F08);
  v331 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v388 = &v213 - v5;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBC0, &qword_225CF2F10);
  v329 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v387 = &v213 - v6;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBC8, &qword_225CF2F18);
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v386 = &v213 - v7;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBD0, &qword_225CF2F20);
  v325 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v385 = &v213 - v8;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBD8, &qword_225CF2F28);
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v384 = &v213 - v9;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBE0, &qword_225CF2F30);
  v321 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v383 = &v213 - v10;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBE8, &qword_225CF2F38);
  v319 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v382 = &v213 - v11;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBF0, &qword_225CF2F40);
  v317 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v381 = &v213 - v12;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EBF8, &qword_225CF2F48);
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v380 = &v213 - v13;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC00, &qword_225CF2F50);
  v313 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v379 = &v213 - v14;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC08, &qword_225CF2F58);
  v311 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v378 = &v213 - v15;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC10, &qword_225CF2F60);
  v309 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v377 = &v213 - v16;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC18, &qword_225CF2F68);
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v376 = &v213 - v17;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC20, &qword_225CF2F70);
  v305 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v375 = &v213 - v18;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC28, &qword_225CF2F78);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v374 = &v213 - v19;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC30, &qword_225CF2F80);
  v301 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v373 = &v213 - v20;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC38, &qword_225CF2F88);
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v372 = &v213 - v21;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC40, &qword_225CF2F90);
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v371 = &v213 - v22;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC48, &qword_225CF2F98);
  v295 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v370 = &v213 - v23;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC50, &qword_225CF2FA0);
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v369 = &v213 - v24;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC58, &qword_225CF2FA8);
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v368 = &v213 - v25;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC60, &qword_225CF2FB0);
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v367 = &v213 - v26;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC68, &qword_225CF2FB8);
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v366 = &v213 - v27;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC70, &qword_225CF2FC0);
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v365 = &v213 - v28;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC78, &qword_225CF2FC8);
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v364 = &v213 - v29;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC80, &qword_225CF2FD0);
  v281 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v363 = &v213 - v30;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC88, &qword_225CF2FD8);
  v279 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v362 = &v213 - v31;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC90, &qword_225CF2FE0);
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v361 = &v213 - v32;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73EC98, &qword_225CF2FE8);
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v360 = &v213 - v33;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECA0, &qword_225CF2FF0);
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v359 = &v213 - v34;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECA8, &qword_225CF2FF8);
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v358 = &v213 - v35;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECB0, &qword_225CF3000);
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v357 = &v213 - v36;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECB8, &qword_225CF3008);
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v356 = &v213 - v37;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECC0, &qword_225CF3010);
  v265 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v355 = &v213 - v38;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECC8, &qword_225CF3018);
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v354 = &v213 - v39;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECD0, &qword_225CF3020);
  v261 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v353 = &v213 - v40;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECD8, &qword_225CF3028);
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v352 = &v213 - v41;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECE0, &qword_225CF3030);
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v351 = &v213 - v42;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECE8, &qword_225CF3038);
  v255 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v350 = &v213 - v43;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECF0, &qword_225CF3040);
  v253 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v349 = &v213 - v44;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ECF8, &qword_225CF3048);
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v348 = &v213 - v45;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED00, &qword_225CF3050);
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v347 = &v213 - v46;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED08, &qword_225CF3058);
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v346 = &v213 - v47;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED10, &qword_225CF3060);
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v345 = &v213 - v48;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED18, &qword_225CF3068);
  v243 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v342 = &v213 - v49;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED20, &qword_225CF3070);
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v393 = &v213 - v50;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED28, &qword_225CF3078);
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v392 = &v213 - v51;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED30, &qword_225CF3080);
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v344 = &v213 - v52;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED38, &qword_225CF3088);
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v343 = &v213 - v53;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED40, &qword_225CF3090);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v391 = &v213 - v54;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED48, &qword_225CF3098);
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v341 = &v213 - v55;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED50, &qword_225CF30A0);
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v340 = &v213 - v56;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED58, &qword_225CF30A8);
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v339 = &v213 - v57;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED60, &qword_225CF30B0);
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v338 = &v213 - v58;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED68, &qword_225CF30B8);
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v337 = &v213 - v59;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED70, &qword_225CF30C0);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v336 = &v213 - v60;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED78, &qword_225CF30C8);
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v62 = &v213 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED80, &qword_225CF30D0);
  v218 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v65 = &v213 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ED88, &unk_225CF30D8);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v213 - v68;
  v70 = a1[3];
  v396 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v70);
  sub_225BB1BB0();
  v71 = v397;
  sub_225CCFCA4();
  if (v71)
  {
LABEL_8:
    v87 = v396;
    return __swift_destroy_boxed_opaque_existential_0(v87);
  }

  v215 = v65;
  v214 = v63;
  v216 = v62;
  v72 = v391;
  v73 = v392;
  v74 = v393;
  v217 = 0;
  v76 = v394;
  v75 = v395;
  v397 = v67;
  v77 = sub_225CCF6F4();
  v78 = (2 * *(v77 + 16)) | 1;
  v398 = v77;
  v399 = v77 + 32;
  v400 = 0;
  v401 = v78;
  v79 = sub_225B76738();
  if (v400 != v401 >> 1)
  {
LABEL_6:
    v84 = sub_225CCF2D4();
    swift_allocError();
    v86 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0, &qword_225CF1600);
    *v86 = &type metadata for IQACode;
    sub_225CCF614();
    sub_225CCF294();
    (*(*(v84 - 8) + 104))(v86, *MEMORY[0x277D84160], v84);
    swift_willThrow();
LABEL_7:
    (*(v397 + 8))(v69, v66);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v79)
  {
    case 0:
      v402 = 0;
      sub_225BB2F60();
      v80 = v215;
      v81 = v217;
      sub_225CCF604();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v218 + 8))(v80, v214);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v82 = 0;
      v83 = 0;
      goto LABEL_60;
    case 1:
      v402 = 1;
      sub_225BB2F0C();
      v148 = v216;
      v149 = v217;
      sub_225CCF604();
      if (v149)
      {
        goto LABEL_7;
      }

      (*(v219 + 8))(v148, v220);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 1;
      v87 = v396;
      goto LABEL_130;
    case 2:
      v402 = 2;
      sub_225BB2EB8();
      v140 = v336;
      v141 = v217;
      sub_225CCF604();
      if (v141)
      {
        goto LABEL_7;
      }

      (*(v221 + 8))(v140, v222);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v82 = 2;
LABEL_60:
      v91 = 2;
      v87 = v396;
      goto LABEL_130;
    case 3:
      v402 = 3;
      sub_225BB2E64();
      v144 = v337;
      v145 = v217;
      sub_225CCF604();
      if (v145)
      {
        goto LABEL_7;
      }

      (*(v223 + 8))(v144, v224);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 3;
      v87 = v396;
      goto LABEL_130;
    case 4:
      v402 = 4;
      sub_225BB2E10();
      v129 = v338;
      v130 = v217;
      sub_225CCF604();
      if (v130)
      {
        goto LABEL_7;
      }

      (*(v225 + 8))(v129, v226);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 4;
      v87 = v396;
      goto LABEL_130;
    case 5:
      v402 = 5;
      sub_225BB2DBC();
      v158 = v339;
      v159 = v217;
      sub_225CCF604();
      if (v159)
      {
        goto LABEL_7;
      }

      (*(v227 + 8))(v158, v228);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 5;
      v87 = v396;
      goto LABEL_130;
    case 6:
      v402 = 6;
      sub_225BB2D68();
      v164 = v340;
      v165 = v217;
      sub_225CCF604();
      if (v165)
      {
        goto LABEL_7;
      }

      (*(v229 + 8))(v164, v230);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 6;
      v87 = v396;
      goto LABEL_130;
    case 7:
      v402 = 7;
      sub_225BB2D14();
      v146 = v341;
      v147 = v217;
      sub_225CCF604();
      if (v147)
      {
        goto LABEL_7;
      }

      (*(v231 + 8))(v146, v232);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 7;
      v87 = v396;
      goto LABEL_130;
    case 8:
      v402 = 8;
      sub_225BB2CC0();
      v170 = v217;
      sub_225CCF604();
      if (v170)
      {
        goto LABEL_7;
      }

      (*(v233 + 8))(v72, v234);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 8;
      v87 = v396;
      goto LABEL_130;
    case 9:
      v402 = 9;
      sub_225BB2C6C();
      v134 = v343;
      v135 = v217;
      sub_225CCF604();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v235 + 8))(v134, v236);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 9;
      v87 = v396;
      goto LABEL_130;
    case 10:
      v402 = 10;
      sub_225BB2C18();
      v168 = v344;
      v169 = v217;
      sub_225CCF604();
      if (v169)
      {
        goto LABEL_7;
      }

      (*(v237 + 8))(v168, v238);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 10;
      v87 = v396;
      goto LABEL_130;
    case 11:
      v402 = 11;
      sub_225BB2BC4();
      v126 = v217;
      sub_225CCF604();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v239 + 8))(v73, v240);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 11;
      v87 = v396;
      goto LABEL_130;
    case 12:
      v402 = 12;
      sub_225BB2B70();
      v133 = v217;
      sub_225CCF604();
      if (v133)
      {
        goto LABEL_7;
      }

      (*(v241 + 8))(v74, v242);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 12;
      v87 = v396;
      goto LABEL_130;
    case 13:
      v402 = 13;
      sub_225BB2B1C();
      v162 = v342;
      v163 = v217;
      sub_225CCF604();
      if (v163)
      {
        goto LABEL_7;
      }

      (*(v243 + 8))(v162, v244);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 13;
      v87 = v396;
      goto LABEL_130;
    case 14:
      v402 = 14;
      sub_225BB2AC8();
      v114 = v345;
      v115 = v217;
      sub_225CCF604();
      if (v115)
      {
        goto LABEL_7;
      }

      (*(v245 + 8))(v114, v246);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 14;
      v87 = v396;
      goto LABEL_130;
    case 15:
      v402 = 15;
      sub_225BB2A74();
      v142 = v346;
      v143 = v217;
      sub_225CCF604();
      if (v143)
      {
        goto LABEL_7;
      }

      (*(v247 + 8))(v142, v248);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 15;
      v87 = v396;
      goto LABEL_130;
    case 16:
      v402 = 16;
      sub_225BB2A20();
      v110 = v347;
      v111 = v217;
      sub_225CCF604();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v249 + 8))(v110, v250);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 16;
      v87 = v396;
      goto LABEL_130;
    case 17:
      v402 = 17;
      sub_225BB29CC();
      v152 = v348;
      v153 = v217;
      sub_225CCF604();
      if (v153)
      {
        goto LABEL_7;
      }

      (*(v251 + 8))(v152, v252);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 17;
      v87 = v396;
      goto LABEL_130;
    case 18:
      v402 = 18;
      sub_225BB2978();
      v166 = v349;
      v167 = v217;
      sub_225CCF604();
      if (v167)
      {
        goto LABEL_7;
      }

      (*(v253 + 8))(v166, v254);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 18;
      v87 = v396;
      goto LABEL_130;
    case 19:
      v402 = 19;
      sub_225BB2924();
      v181 = v350;
      v182 = v217;
      sub_225CCF604();
      if (v182)
      {
        goto LABEL_7;
      }

      (*(v255 + 8))(v181, v256);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 19;
      v87 = v396;
      goto LABEL_130;
    case 20:
      v402 = 20;
      sub_225BB28D0();
      v156 = v351;
      v157 = v217;
      sub_225CCF604();
      if (v157)
      {
        goto LABEL_7;
      }

      (*(v257 + 8))(v156, v258);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 20;
      v87 = v396;
      goto LABEL_130;
    case 21:
      v402 = 21;
      sub_225BB287C();
      v160 = v352;
      v161 = v217;
      sub_225CCF604();
      if (v161)
      {
        goto LABEL_7;
      }

      (*(v259 + 8))(v160, v260);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 21;
      v87 = v396;
      goto LABEL_130;
    case 22:
      v402 = 22;
      sub_225BB2828();
      v177 = v353;
      v178 = v217;
      sub_225CCF604();
      if (v178)
      {
        goto LABEL_7;
      }

      (*(v261 + 8))(v177, v262);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 22;
      v87 = v396;
      goto LABEL_130;
    case 23:
      v402 = 23;
      sub_225BB27D4();
      v191 = v354;
      v192 = v217;
      sub_225CCF604();
      if (v192)
      {
        goto LABEL_7;
      }

      (*(v263 + 8))(v191, v264);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 23;
      v87 = v396;
      goto LABEL_130;
    case 24:
      v402 = 24;
      sub_225BB2780();
      v138 = v355;
      v139 = v217;
      sub_225CCF604();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v265 + 8))(v138, v266);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 24;
      v87 = v396;
      goto LABEL_130;
    case 25:
      v402 = 25;
      sub_225BB272C();
      v136 = v356;
      v137 = v217;
      sub_225CCF604();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v267 + 8))(v136, v268);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 25;
      v87 = v396;
      goto LABEL_130;
    case 26:
      v402 = 26;
      sub_225BB26D8();
      v199 = v357;
      v200 = v217;
      sub_225CCF604();
      if (v200)
      {
        goto LABEL_7;
      }

      (*(v269 + 8))(v199, v270);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 26;
      v87 = v396;
      goto LABEL_130;
    case 27:
      v402 = 27;
      sub_225BB2684();
      v106 = v358;
      v107 = v217;
      sub_225CCF604();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v271 + 8))(v106, v272);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 27;
      v87 = v396;
      goto LABEL_130;
    case 28:
      v402 = 28;
      sub_225BB2630();
      v193 = v359;
      v194 = v217;
      sub_225CCF604();
      if (v194)
      {
        goto LABEL_7;
      }

      (*(v273 + 8))(v193, v274);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 28;
      v87 = v396;
      goto LABEL_130;
    case 29:
      v402 = 29;
      sub_225BB25DC();
      v195 = v360;
      v196 = v217;
      sub_225CCF604();
      if (v196)
      {
        goto LABEL_7;
      }

      (*(v275 + 8))(v195, v276);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 29;
      v87 = v396;
      goto LABEL_130;
    case 30:
      v402 = 30;
      sub_225BB2588();
      v171 = v361;
      v172 = v217;
      sub_225CCF604();
      if (v172)
      {
        goto LABEL_7;
      }

      (*(v277 + 8))(v171, v278);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 30;
      v87 = v396;
      goto LABEL_130;
    case 31:
      v402 = 31;
      sub_225BB2534();
      v150 = v362;
      v151 = v217;
      sub_225CCF604();
      if (v151)
      {
        goto LABEL_7;
      }

      (*(v279 + 8))(v150, v280);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 31;
      v87 = v396;
      goto LABEL_130;
    case 32:
      v402 = 32;
      sub_225BB24E0();
      v173 = v363;
      v174 = v217;
      sub_225CCF604();
      if (v174)
      {
        goto LABEL_7;
      }

      (*(v281 + 8))(v173, v282);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 32;
      v87 = v396;
      goto LABEL_130;
    case 33:
      v402 = 33;
      sub_225BB248C();
      v116 = v364;
      v117 = v217;
      sub_225CCF604();
      if (v117)
      {
        goto LABEL_7;
      }

      (*(v283 + 8))(v116, v284);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 33;
      v87 = v396;
      goto LABEL_130;
    case 34:
      v402 = 34;
      sub_225BB2438();
      v108 = v365;
      v109 = v217;
      sub_225CCF604();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v285 + 8))(v108, v286);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 34;
      v87 = v396;
      goto LABEL_130;
    case 35:
      v402 = 35;
      sub_225BB23E4();
      v102 = v366;
      v103 = v217;
      sub_225CCF604();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v287 + 8))(v102, v288);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 35;
      v87 = v396;
      goto LABEL_130;
    case 36:
      v402 = 36;
      sub_225BB2390();
      v104 = v367;
      v105 = v217;
      sub_225CCF604();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v289 + 8))(v104, v290);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 36;
      v87 = v396;
      goto LABEL_130;
    case 37:
      v402 = 37;
      sub_225BB233C();
      v94 = v368;
      v95 = v217;
      sub_225CCF604();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v291 + 8))(v94, v292);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 37;
      v87 = v396;
      goto LABEL_130;
    case 38:
      v402 = 38;
      sub_225BB22E8();
      v197 = v369;
      v198 = v217;
      sub_225CCF604();
      if (v198)
      {
        goto LABEL_7;
      }

      (*(v293 + 8))(v197, v294);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 38;
      v87 = v396;
      goto LABEL_130;
    case 39:
      v402 = 39;
      sub_225BB2294();
      v179 = v370;
      v180 = v217;
      sub_225CCF604();
      if (v180)
      {
        goto LABEL_7;
      }

      (*(v295 + 8))(v179, v296);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 39;
      v87 = v396;
      goto LABEL_130;
    case 40:
      v402 = 40;
      sub_225BB2240();
      v131 = v371;
      v132 = v217;
      sub_225CCF604();
      if (v132)
      {
        goto LABEL_7;
      }

      (*(v297 + 8))(v131, v298);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 40;
      v87 = v396;
      goto LABEL_130;
    case 41:
      v402 = 41;
      sub_225BB21EC();
      v154 = v372;
      v155 = v217;
      sub_225CCF604();
      if (v155)
      {
        goto LABEL_7;
      }

      (*(v299 + 8))(v154, v300);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 41;
      v87 = v396;
      goto LABEL_130;
    case 42:
      v402 = 42;
      sub_225BB2198();
      v185 = v373;
      v186 = v217;
      sub_225CCF604();
      if (v186)
      {
        goto LABEL_7;
      }

      (*(v301 + 8))(v185, v302);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 42;
      v87 = v396;
      goto LABEL_130;
    case 43:
      v402 = 43;
      sub_225BB2144();
      v92 = v374;
      v93 = v217;
      sub_225CCF604();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v303 + 8))(v92, v304);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 43;
      v87 = v396;
      goto LABEL_130;
    case 44:
      v402 = 44;
      sub_225BB20F0();
      v112 = v375;
      v113 = v217;
      sub_225CCF604();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v305 + 8))(v112, v306);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 44;
      v87 = v396;
      goto LABEL_130;
    case 45:
      v402 = 45;
      sub_225BB209C();
      v175 = v376;
      v176 = v217;
      sub_225CCF604();
      if (v176)
      {
        goto LABEL_7;
      }

      (*(v307 + 8))(v175, v308);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 45;
      v87 = v396;
      goto LABEL_130;
    case 46:
      v402 = 46;
      sub_225BB2048();
      v207 = v377;
      v208 = v217;
      sub_225CCF604();
      if (v208)
      {
        goto LABEL_7;
      }

      (*(v309 + 8))(v207, v310);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 46;
      v87 = v396;
      goto LABEL_130;
    case 47:
      v402 = 47;
      sub_225BB1FF4();
      v98 = v378;
      v99 = v217;
      sub_225CCF604();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v311 + 8))(v98, v312);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 47;
      v87 = v396;
      goto LABEL_130;
    case 48:
      v402 = 48;
      sub_225BB1FA0();
      v118 = v379;
      v119 = v217;
      sub_225CCF604();
      if (v119)
      {
        goto LABEL_7;
      }

      (*(v313 + 8))(v118, v314);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 48;
      v87 = v396;
      goto LABEL_130;
    case 49:
      v402 = 49;
      sub_225BB1F4C();
      v127 = v380;
      v128 = v217;
      sub_225CCF604();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v315 + 8))(v127, v316);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 49;
      v87 = v396;
      goto LABEL_130;
    case 50:
      v402 = 50;
      sub_225BB1EF8();
      v89 = v381;
      v90 = v217;
      sub_225CCF604();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v317 + 8))(v89, v318);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 50;
      v87 = v396;
      goto LABEL_130;
    case 51:
      v402 = 51;
      sub_225BB1EA4();
      v209 = v382;
      v210 = v217;
      sub_225CCF604();
      if (v210)
      {
        goto LABEL_7;
      }

      (*(v319 + 8))(v209, v320);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 51;
      v87 = v396;
      goto LABEL_130;
    case 52:
      v402 = 52;
      sub_225BB1E50();
      v205 = v383;
      v206 = v217;
      sub_225CCF604();
      if (v206)
      {
        goto LABEL_7;
      }

      (*(v321 + 8))(v205, v322);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 52;
      v87 = v396;
      goto LABEL_130;
    case 53:
      v402 = 53;
      sub_225BB1DFC();
      v96 = v384;
      v97 = v217;
      sub_225CCF604();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v323 + 8))(v96, v324);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 53;
      v87 = v396;
      goto LABEL_130;
    case 54:
      v402 = 54;
      sub_225BB1DA8();
      v201 = v385;
      v202 = v217;
      sub_225CCF604();
      if (v202)
      {
        goto LABEL_7;
      }

      (*(v325 + 8))(v201, v326);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 54;
      v87 = v396;
      goto LABEL_130;
    case 55:
      v402 = 55;
      sub_225BB1D54();
      v203 = v386;
      v204 = v217;
      sub_225CCF604();
      if (v204)
      {
        goto LABEL_7;
      }

      (*(v327 + 8))(v203, v328);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 55;
      v87 = v396;
      goto LABEL_130;
    case 56:
      v402 = 56;
      sub_225BB1D00();
      v100 = v387;
      v101 = v217;
      sub_225CCF604();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v329 + 8))(v100, v330);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 56;
      v87 = v396;
      goto LABEL_130;
    case 57:
      v402 = 57;
      sub_225BB1CAC();
      v183 = v388;
      v184 = v217;
      sub_225CCF604();
      if (v184)
      {
        goto LABEL_7;
      }

      (*(v331 + 8))(v183, v332);
      (*(v397 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v91 = 2;
      v82 = 57;
      v87 = v396;
      goto LABEL_130;
    case 58:
      v402 = 58;
      sub_225BB1C58();
      v120 = v389;
      v121 = v217;
      sub_225CCF604();
      if (v121)
      {
        goto LABEL_7;
      }

      v122 = v334;
      v82 = sub_225CCF684();
      v123 = v120;
      v124 = v396;
      v125 = v397;
      v83 = v211;
      (*(v333 + 8))(v123, v122);
      (*(v125 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v91 = 0;
      goto LABEL_129;
    case 59:
      v402 = 59;
      sub_225BB1C04();
      v187 = v390;
      v188 = v217;
      sub_225CCF604();
      if (v188)
      {
        goto LABEL_7;
      }

      v82 = sub_225CCF684();
      v189 = v187;
      v124 = v396;
      v190 = v397;
      v83 = v212;
      (*(v335 + 8))(v189, v76);
      (*(v190 + 8))(v69, v66);
      swift_unknownObjectRelease();
      v91 = 1;
LABEL_129:
      v87 = v124;
LABEL_130:
      *v75 = v82;
      *(v75 + 8) = v83;
      *(v75 + 16) = v91;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v87);
}